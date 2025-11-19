@interface MIOSEITrackReader
- (BOOL)parseSEIInData:(char *)a3 length:(unsigned int)a4 output:(char *)a5 outputSize:(unsigned int *)a6;
- (MIOSEITrackReader)initWithVideoTrack:(id)a3 assetReader:(id)a4;
- (OpaqueCMBlockBuffer)readNextValidBlockBufferPts:(id *)a3;
- (id)copyNextSEIPts:(id *)a3 deserialize:(BOOL)a4 error:(id *)a5;
- (id)extractDebugSEIFromBuffer:(OpaqueCMBlockBuffer *)a3 codecType:(unsigned int)a4;
- (id)findNALUInData:(char *)a3 length:(unint64_t)a4 isHEVC:(BOOL)a5;
- (id)popFrontPts:(id *)a3;
- (id)readNextSEIPts:(id *)a3 deserialize:(BOOL)a4 error:(id *)a5;
- (unsigned)removeEPBFrom:(char *)a3 length:(unsigned int)a4 outBuffer:(char *)a5;
@end

@implementation MIOSEITrackReader

- (MIOSEITrackReader)initWithVideoTrack:(id)a3 assetReader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MIOSEITrackReader;
  v8 = [(MIOSEITrackReader *)&v15 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v6 outputSettings:0];
    [(MIOSEITrackReader *)v8 setTrackOutput:v9];

    v10 = [(MIOSEITrackReader *)v8 trackOutput];
    [v7 addOutput:v10];

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    [(MIOSEITrackReader *)v8 setSeiItemsBuffer:v11];

    v13 = *MEMORY[0x277CC0890];
    v14 = *(MEMORY[0x277CC0890] + 16);
    [(MIOSEITrackReader *)v8 setMaxCurrentPts:&v13];
    [(MIOSEITrackReader *)v8 setDrainBeforeRead:0];
  }

  return v8;
}

- (BOOL)parseSEIInData:(char *)a3 length:(unsigned int)a4 output:(char *)a5 outputSize:(unsigned int *)a6
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
    if (a4)
    {
      v7 = 0;
      v8 = 5;
      while (a3[v7] == 255)
      {
        ++v7;
        v8 -= 255;
        if (a4 == v7)
        {
          return 0;
        }
      }

      if (v7 + 1 < a4)
      {
        v9 = &a3[v7 + 1];
        v10 = a3[v7];
        v11 = a4 - 1 - v7;
        v12 = v7 + 2;
        v13 = &a3[(v7 + 2)];
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
        while (v19 - i < a4)
        {
          *(v22 + v19) = v13[v19];
          if (++v19 == 16)
          {
            if (v22[0] == 0x5646C3E2DC8DF223 && v22[1] == 0xDE4FDE1CA55751BCLL)
            {
              v21 = v16 - v14;
              memcpy(a5, &a3[(16 - i)], (v16 - v14));
              *a6 = v21;
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

- (unsigned)removeEPBFrom:(char *)a3 length:(unsigned int)a4 outBuffer:(char *)a5
{
  result = 0;
  if (a4 >= 3 && a3 && a5)
  {
    v6 = 0;
    v7 = a5;
    do
    {
      v8 = *a3;
      v6 = v8 | (v6 << 8);
      if ((v6 & 0xFFFFFF) != 3)
      {
        *v7++ = v8;
      }

      ++a3;
      --a4;
    }

    while (a4);
    return v7 - a5;
  }

  return result;
}

- (id)findNALUInData:(char *)a3 length:(unint64_t)a4 isHEVC:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a4 >= 1)
  {
    v10 = &a3[a4];
    do
    {
      v11 = bswap32(*a3);
      v14 = a3[4];
      v13 = a3 + 4;
      v12 = v14;
      if (v5)
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

      a3 = &v13[v11];
    }

    while (a3 < v10);
  }

  return v9;
}

- (id)extractDebugSEIFromBuffer:(OpaqueCMBlockBuffer *)a3 codecType:(unsigned int)a4
{
  if (a4 == 1752589105 || a4 == 1635148593)
  {
    dataPointerOut[3] = v4;
    v14 = v5;
    lengthAtOffsetOut = 0;
    dataPointerOut[0] = 0;
    v8 = a4 == 1752589105;
    totalLengthOut = 0;
    CMBlockBufferGetDataPointer(a3, 0, &lengthAtOffsetOut, &totalLengthOut, dataPointerOut);
    v9 = [(MIOSEITrackReader *)self findNALUInData:dataPointerOut[0] length:totalLengthOut isHEVC:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (OpaqueCMBlockBuffer)readNextValidBlockBufferPts:(id *)a3
{
  for (i = self; ; self = i)
  {
    v5 = [(MIOSEITrackReader *)self trackOutput];
    v6 = [v5 copyNextSampleBuffer];

    if (!v6)
    {
      return 0;
    }

    DataBuffer = CMSampleBufferGetDataBuffer(v6);
    if (DataBuffer)
    {
      break;
    }

    CFRelease(v6);
  }

  v8 = DataBuffer;
  if (a3)
  {
    CMSampleBufferGetPresentationTimeStamp(&v11, v6);
    *a3 = v11;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(v6);
  [(MIOSEITrackReader *)i setCodec:CMFormatDescriptionGetMediaSubType(FormatDescription)];
  CFRetain(v8);
  CFRelease(v6);
  return v8;
}

- (id)popFrontPts:(id *)a3
{
  v5 = [(MIOSEITrackReader *)self seiItemsBuffer];
  v6 = [v5 firstObject];
  v7 = [v6 objectForKey:@"SEI"];

  v8 = [(MIOSEITrackReader *)self seiItemsBuffer];
  v9 = [v8 firstObject];
  v10 = [v9 objectForKey:@"PTSDICT"];

  v11 = [(MIOSEITrackReader *)self seiItemsBuffer];
  [v11 removeObjectAtIndex:0];

  if (a3)
  {
    CMTimeMakeFromDictionary(&v13, v10);
    *a3 = v13;
  }

  return v7;
}

- (id)copyNextSEIPts:(id *)a3 deserialize:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v36[3] = *MEMORY[0x277D85DE8];
  if (![(MIOSEITrackReader *)self drainBeforeRead])
  {
LABEL_5:
    memset(&v34, 0, sizeof(v34));
    v12 = [(MIOSEITrackReader *)self readNextSEIPts:&v34 deserialize:v6 error:a5];
    v13 = v12;
    if (*a5)
    {
      goto LABEL_6;
    }

    if (!v12)
    {
      v26 = [(MIOSEITrackReader *)self seiItemsBuffer];
      v27 = [v26 count];

      if (v27)
      {
        v11 = [(MIOSEITrackReader *)self popFrontPts:a3];
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

    v18 = [(MIOSEITrackReader *)self seiItemsBuffer];
    [v18 addObject:v17];

    v19 = [(MIOSEITrackReader *)self seiItemsBuffer];
    v20 = MEMORY[0x277CBEA60];
    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"PTS" ascending:1];
    v22 = [v20 arrayWithObjects:{v21, 0}];
    [v19 sortUsingDescriptors:v22];

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
          v25 = [(MIOSEITrackReader *)self popFrontPts:a3];
LABEL_17:
          v11 = v25;

          goto LABEL_18;
        }

LABEL_16:
        v25 = [(MIOSEITrackReader *)self copyNextSEIPts:a3 deserialize:v6 error:a5];
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

  v9 = [(MIOSEITrackReader *)self seiItemsBuffer];
  v10 = [v9 count];

  if (v10 < 2)
  {
    [(MIOSEITrackReader *)self setDrainBeforeRead:0];
    goto LABEL_5;
  }

  [(MIOSEITrackReader *)self popFrontPts:a3];
  return objc_claimAutoreleasedReturnValue();
}

- (id)readNextSEIPts:(id *)a3 deserialize:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v8 = [(MIOSEITrackReader *)self readNextValidBlockBufferPts:a3];
  if (!v8)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [(MIOSEITrackReader *)self extractDebugSEIFromBuffer:v8 codecType:[(MIOSEITrackReader *)self codec]];
  CFRelease(v9);
  if (v6)
  {
    if ([v10 count] == 1)
    {
      v24 = 0;
      v11 = MEMORY[0x277CCAC58];
      v12 = [v10 firstObject];
      v13 = [v11 propertyListWithData:v12 options:0 format:&v24 error:a5];
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
      v12 = v10;
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
              objc_enumerationMutation(v12);
            }

            v18 = [MEMORY[0x277CCAC58] propertyListWithData:*(*(&v20 + 1) + 8 * i) options:0 format:&v24 error:{a5, v20}];
            [v13 addObject:v18];
          }

          v15 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
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