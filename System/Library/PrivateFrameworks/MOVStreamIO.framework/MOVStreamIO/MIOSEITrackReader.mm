@interface MIOSEITrackReader
- (BOOL)parseSEIInData:(char *)data length:(unsigned int)length output:(char *)output outputSize:(unsigned int *)size;
- (MIOSEITrackReader)initWithVideoTrack:(id)track assetReader:(id)reader;
- (OpaqueCMBlockBuffer)readNextValidBlockBufferPts:(id *)pts;
- (id)copyNextSEIPts:(id *)pts deserialize:(BOOL)deserialize error:(id *)error;
- (id)extractDebugSEIFromBuffer:(OpaqueCMBlockBuffer *)buffer codecType:(unsigned int)type;
- (id)findNALUInData:(char *)data length:(unint64_t)length isHEVC:(BOOL)c;
- (id)popFrontPts:(id *)pts;
- (id)readNextSEIPts:(id *)pts deserialize:(BOOL)deserialize error:(id *)error;
- (unsigned)removeEPBFrom:(char *)from length:(unsigned int)length outBuffer:(char *)buffer;
@end

@implementation MIOSEITrackReader

- (MIOSEITrackReader)initWithVideoTrack:(id)track assetReader:(id)reader
{
  trackCopy = track;
  readerCopy = reader;
  v15.receiver = self;
  v15.super_class = MIOSEITrackReader;
  v8 = [(MIOSEITrackReader *)&v15 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:trackCopy outputSettings:0];
    [(MIOSEITrackReader *)v8 setTrackOutput:v9];

    trackOutput = [(MIOSEITrackReader *)v8 trackOutput];
    [readerCopy addOutput:trackOutput];

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    [(MIOSEITrackReader *)v8 setSeiItemsBuffer:v11];

    v13 = *MEMORY[0x277CC0890];
    v14 = *(MEMORY[0x277CC0890] + 16);
    [(MIOSEITrackReader *)v8 setMaxCurrentPts:&v13];
    [(MIOSEITrackReader *)v8 setDrainBeforeRead:0];
  }

  return v8;
}

- (BOOL)parseSEIInData:(char *)data length:(unsigned int)length output:(char *)output outputSize:(unsigned int *)size
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (size)
  {
    *size = 0;
    if (length)
    {
      v7 = 0;
      v8 = 5;
      while (data[v7] == 255)
      {
        ++v7;
        v8 -= 255;
        if (length == v7)
        {
          return 0;
        }
      }

      if (v7 + 1 < length)
      {
        v9 = &data[v7 + 1];
        v10 = data[v7];
        v11 = length - 1 - v7;
        v12 = v7 + 2;
        v13 = &data[(v7 + 2)];
        v14 = 16;
        for (i = -v12; ; --i)
        {
          v17 = *v9++;
          v16 = v17;
          if (v17 != 255)
          {
            break;
          }

          ++v13;
          v14 -= 255;
          if (!--v11)
          {
            return 0;
          }
        }

        if (v10 != v8)
        {
          return 1;
        }

        v19 = 0;
        while (v19 - i < length)
        {
          *(v22 + v19) = v13[v19];
          if (++v19 == 16)
          {
            if (v22[0] == 0x5646C3E2DC8DF223 && v22[1] == 0xDE4FDE1CA55751BCLL)
            {
              v21 = v16 - v14;
              memcpy(output, &data[(16 - i)], (v16 - v14));
              *size = v21;
              return 1;
            }

            return 0;
          }
        }
      }
    }
  }

  return 0;
}

- (unsigned)removeEPBFrom:(char *)from length:(unsigned int)length outBuffer:(char *)buffer
{
  result = 0;
  if (length >= 3 && from && buffer)
  {
    v6 = 0;
    bufferCopy = buffer;
    do
    {
      v8 = *from;
      v6 = v8 | (v6 << 8);
      if ((v6 & 0xFFFFFF) != 3)
      {
        *bufferCopy++ = v8;
      }

      ++from;
      --length;
    }

    while (length);
    return bufferCopy - buffer;
  }

  return result;
}

- (id)findNALUInData:(char *)data length:(unint64_t)length isHEVC:(BOOL)c
{
  cCopy = c;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (length >= 1)
  {
    v10 = &data[length];
    do
    {
      v11 = bswap32(*data);
      v14 = data[4];
      v13 = data + 4;
      v12 = v14;
      if (cCopy)
      {
        if ((v12 & 0x7E) == 0x4E)
        {
          v15 = 2;
          goto LABEL_8;
        }
      }

      else if ((v12 & 0x1F) == 6)
      {
        v15 = 1;
LABEL_8:
        v16 = malloc_type_malloc(v11, 0x100004077774924uLL);
        v17 = [(MIOSEITrackReader *)self removeEPBFrom:&v13[v15] length:v11 outBuffer:v16];
        v21 = 0;
        v18 = malloc_type_malloc(v11, 0x100004077774924uLL);
        [(MIOSEITrackReader *)self parseSEIInData:v16 length:v17 output:v18 outputSize:&v21];
        if (v21 >= 4 && *v18 == 109 && v18[1] == 101 && v18[2] == 116 && v18[3] == 97)
        {
          v19 = [MEMORY[0x277CBEA90] dataWithBytes:v18 + 4 length:v21 - 4];
          [v9 addObject:v19];
        }

        free(v16);
        free(v18);
      }

      data = &v13[v11];
    }

    while (data < v10);
  }

  return v9;
}

- (id)extractDebugSEIFromBuffer:(OpaqueCMBlockBuffer *)buffer codecType:(unsigned int)type
{
  if (type == 1752589105 || type == 1635148593)
  {
    dataPointerOut[3] = v4;
    v14 = v5;
    lengthAtOffsetOut = 0;
    dataPointerOut[0] = 0;
    v8 = type == 1752589105;
    totalLengthOut = 0;
    CMBlockBufferGetDataPointer(buffer, 0, &lengthAtOffsetOut, &totalLengthOut, dataPointerOut);
    v9 = [(MIOSEITrackReader *)self findNALUInData:dataPointerOut[0] length:totalLengthOut isHEVC:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (OpaqueCMBlockBuffer)readNextValidBlockBufferPts:(id *)pts
{
  for (i = self; ; self = i)
  {
    trackOutput = [(MIOSEITrackReader *)self trackOutput];
    copyNextSampleBuffer = [trackOutput copyNextSampleBuffer];

    if (!copyNextSampleBuffer)
    {
      return 0;
    }

    DataBuffer = CMSampleBufferGetDataBuffer(copyNextSampleBuffer);
    if (DataBuffer)
    {
      break;
    }

    CFRelease(copyNextSampleBuffer);
  }

  v8 = DataBuffer;
  if (pts)
  {
    CMSampleBufferGetPresentationTimeStamp(&v11, copyNextSampleBuffer);
    *pts = v11;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(copyNextSampleBuffer);
  [(MIOSEITrackReader *)i setCodec:CMFormatDescriptionGetMediaSubType(FormatDescription)];
  CFRetain(v8);
  CFRelease(copyNextSampleBuffer);
  return v8;
}

- (id)popFrontPts:(id *)pts
{
  seiItemsBuffer = [(MIOSEITrackReader *)self seiItemsBuffer];
  firstObject = [seiItemsBuffer firstObject];
  v7 = [firstObject objectForKey:@"SEI"];

  seiItemsBuffer2 = [(MIOSEITrackReader *)self seiItemsBuffer];
  firstObject2 = [seiItemsBuffer2 firstObject];
  v10 = [firstObject2 objectForKey:@"PTSDICT"];

  seiItemsBuffer3 = [(MIOSEITrackReader *)self seiItemsBuffer];
  [seiItemsBuffer3 removeObjectAtIndex:0];

  if (pts)
  {
    CMTimeMakeFromDictionary(&v13, v10);
    *pts = v13;
  }

  return v7;
}

- (id)copyNextSEIPts:(id *)pts deserialize:(BOOL)deserialize error:(id *)error
{
  deserializeCopy = deserialize;
  v36[3] = *MEMORY[0x277D85DE8];
  if (![(MIOSEITrackReader *)self drainBeforeRead])
  {
LABEL_5:
    memset(&v34, 0, sizeof(v34));
    v12 = [(MIOSEITrackReader *)self readNextSEIPts:&v34 deserialize:deserializeCopy error:error];
    v13 = v12;
    if (*error)
    {
      goto LABEL_6;
    }

    if (!v12)
    {
      seiItemsBuffer = [(MIOSEITrackReader *)self seiItemsBuffer];
      v27 = [seiItemsBuffer count];

      if (v27)
      {
        v11 = [(MIOSEITrackReader *)self popFrontPts:pts];
        goto LABEL_18;
      }

LABEL_6:
      v11 = 0;
LABEL_18:

      return v11;
    }

    v35[0] = @"PTS";
    time = v34;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
    v36[0] = v14;
    v35[1] = @"PTSDICT";
    v15 = *MEMORY[0x277CBECE8];
    time = v34;
    v16 = CMTimeCopyAsDictionary(&time, v15);
    v35[2] = @"SEI";
    v36[1] = v16;
    v36[2] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

    seiItemsBuffer2 = [(MIOSEITrackReader *)self seiItemsBuffer];
    [seiItemsBuffer2 addObject:v17];

    seiItemsBuffer3 = [(MIOSEITrackReader *)self seiItemsBuffer];
    v20 = MEMORY[0x277CBEA60];
    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"PTS" ascending:1];
    v22 = [v20 arrayWithObjects:{v21, 0}];
    [seiItemsBuffer3 sortUsingDescriptors:v22];

    v23 = objc_opt_self();
    v24 = v23;
    if (v23)
    {
      [v23 maxCurrentPts];

      if ((v31 & 0x100000000) != 0)
      {
        [(MIOSEITrackReader *)self maxCurrentPts];
        time1 = v34;
        if (CMTimeCompare(&time1, &time) == 1)
        {
          time = v34;
          [(MIOSEITrackReader *)self setMaxCurrentPts:&time];
          [(MIOSEITrackReader *)self setDrainBeforeRead:1];
          v25 = [(MIOSEITrackReader *)self popFrontPts:pts];
LABEL_17:
          v11 = v25;

          goto LABEL_18;
        }

LABEL_16:
        v25 = [(MIOSEITrackReader *)self copyNextSEIPts:pts deserialize:deserializeCopy error:error];
        goto LABEL_17;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }

    time = v34;
    [(MIOSEITrackReader *)self setMaxCurrentPts:&time];
    goto LABEL_16;
  }

  seiItemsBuffer4 = [(MIOSEITrackReader *)self seiItemsBuffer];
  v10 = [seiItemsBuffer4 count];

  if (v10 < 2)
  {
    [(MIOSEITrackReader *)self setDrainBeforeRead:0];
    goto LABEL_5;
  }

  [(MIOSEITrackReader *)self popFrontPts:pts];
  return objc_claimAutoreleasedReturnValue();
}

- (id)readNextSEIPts:(id *)pts deserialize:(BOOL)deserialize error:(id *)error
{
  deserializeCopy = deserialize;
  v26 = *MEMORY[0x277D85DE8];
  v8 = [(MIOSEITrackReader *)self readNextValidBlockBufferPts:pts];
  if (!v8)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [(MIOSEITrackReader *)self extractDebugSEIFromBuffer:v8 codecType:[(MIOSEITrackReader *)self codec]];
  CFRelease(v9);
  if (deserializeCopy)
  {
    if ([v10 count] == 1)
    {
      v24 = 0;
      v11 = MEMORY[0x277CCAC58];
      firstObject = [v10 firstObject];
      v13 = [v11 propertyListWithData:firstObject options:0 format:&v24 error:error];
    }

    else
    {
      if ([v10 count] < 2)
      {
        v13 = 0;
        goto LABEL_17;
      }

      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
      v24 = 0;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      firstObject = v10;
      v14 = [firstObject countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(firstObject);
            }

            v18 = [MEMORY[0x277CCAC58] propertyListWithData:*(*(&v20 + 1) + 8 * i) options:0 format:&v24 error:{error, v20}];
            [v13 addObject:v18];
          }

          v15 = [firstObject countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }

  else
  {
    v13 = v10;
  }

LABEL_17:

LABEL_18:

  return v13;
}

@end