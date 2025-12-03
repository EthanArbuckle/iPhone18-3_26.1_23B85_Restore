@interface JFXDepthCompressor
+ (id)NSDataFromDepthMapInsideAVDepthData:(id)data;
+ (id)NSDataFromFloatDepth32:(__CVBuffer *)depth32;
+ (id)decapsulatePayload:(id)payload;
+ (id)encapsulatePayload:(id)payload;
+ (id)fakeAuxDepthInfoDictionaryForCVPixelBuffer:(__CVBuffer *)buffer;
- (JFXDepthCompressor)initWithDepthCodecType:(int)type;
- (__CVBuffer)copyDepthBufferAsBGRA:(__CVBuffer *)a;
- (id)compressAVDepthData:(id)data timingInfo:(id *)info error:(id *)error;
- (id)compressAVDepthData_BGRA:(id)a timingInfo:(id *)info error:(id *)error;
- (id)compressAVDepthData_HEVC10:(id)c10 timingInfo:(id *)info error:(id *)error;
- (id)compressAVDepthData_LZ:(id)z timingInfo:(id *)info error:(id *)error;
- (id)compressAVDepthData_Photo:(id)photo timingInfo:(id *)info error:(id *)error;
- (id)compressDepthMapCVPixelBuffer:(__CVBuffer *)buffer timingInfo:(id *)info error:(id *)error;
- (id)depthSampleBufferAppendingDepthMetadata:(id)metadata depthSampleBufferFromCodec:(opaqueCMSampleBuffer *)codec;
- (id)depthSampleBufferWithNewHVCCWithDepthMetadata:(id)metadata depthSampleBufferFromCodec:(opaqueCMSampleBuffer *)codec;
- (id)hevcSEIMessageDataWithDepthXMPMetadata:(id)metadata isPrefixSEI:(BOOL)i nuh_layer_id:(int)nuh_layer_id nuh_temporal_id_plus1:(int)nuh_temporal_id_plus1;
- (id)hevcSEIPayload:(id)payload;
- (id)hevcSEIPayloadHeaderForPayloadType:(int)type payloadSize:(unint64_t)size;
- (id)mutableCopyExtensionsDictionaryCopyFromAVDepthData:(id)data;
- (opaqueCMFormatDescription)depthFormatDescriptionForDepthDimensions:(id)dimensions;
- (unsigned)getPayloadTypeOrSize:(id)size offsetPointer:(unint64_t *)pointer;
- (void)dealloc;
@end

@implementation JFXDepthCompressor

- (JFXDepthCompressor)initWithDepthCodecType:(int)type
{
  v5.receiver = self;
  v5.super_class = JFXDepthCompressor;
  result = [(JFXDepthCompressor *)&v5 init];
  if (result)
  {
    result->_depthCodecType = type;
    result->_previousFormatDescription = 0;
  }

  return result;
}

- (void)dealloc
{
  [(JFXVideoEncoderInterface *)self->_videoEncoderInterface closeEncoder];
  videoEncoderInterface = self->_videoEncoderInterface;
  self->_videoEncoderInterface = 0;

  v4.receiver = self;
  v4.super_class = JFXDepthCompressor;
  [(JFXDepthCompressor *)&v4 dealloc];
}

- (opaqueCMFormatDescription)depthFormatDescriptionForDepthDimensions:(id)dimensions
{
  v45[4] = *MEMORY[0x277D85DE8];
  var1 = dimensions.var1;
  pixelBufferOut = 0;
  formatDescriptionOut = 0;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:var1];
  v8 = *MEMORY[0x277CC4DE8];
  v9 = MEMORY[0x277CBEC10];
  v10 = *MEMORY[0x277CC4EC8];
  v44[0] = *MEMORY[0x277CC4DE8];
  v44[1] = v10;
  v45[0] = MEMORY[0x277CBEC10];
  v45[1] = v6;
  v11 = *MEMORY[0x277CC4DD8];
  v12 = *MEMORY[0x277CC4E30];
  v44[2] = *MEMORY[0x277CC4DD8];
  v44[3] = v12;
  v32 = v7;
  v45[2] = v7;
  v45[3] = &unk_28556D5F0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
  v14 = *MEMORY[0x277CBECE8];
  var0 = dimensions.var0;
  v16 = *&dimensions >> 32;
  v31 = v13;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], var0, v16, 0x66646570u, v13, &pixelBufferOut);
  if (pixelBufferOut)
  {
    depthCodecType = self->_depthCodecType;
    if (depthCodecType == 1111970369)
    {
      v42[0] = v8;
      v42[1] = v10;
      v43[0] = v9;
      v23 = v6;
      v42[2] = v11;
      v42[3] = v12;
      v22 = v32;
      v43[1] = v6;
      v43[2] = v32;
      v43[3] = &unk_28556D608;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
      texture[0] = 0;
      CVPixelBufferCreate(v14, var0, v16, 0x42475241u, v18, texture);
      if (!texture[0])
      {
        v30 = JFXLog_DebugDepthCodec();
        v24 = v31;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthFormatDescriptionForDepthDimensions:];
        }

        goto LABEL_24;
      }

      CMVideoFormatDescriptionCreateForImageBuffer(v14, pixelBufferOut, &formatDescriptionOut);
      CVPixelBufferRelease(texture[0]);
    }

    else
    {
      if (depthCodecType == 1212494384 || depthCodecType == 1212493921)
      {
        v18 = [[JFXDepthCompressor alloc] initWithDepthCodecType:self->_depthCodecType];
        *v37 = *(MEMORY[0x277CC0888] + 16);
        v19 = *MEMORY[0x277CC08F0];
        *&v37[24] = *(MEMORY[0x277CC08F0] + 16);
        *&v37[8] = v19;
        v38 = v19;
        v33[2] = *&v37[16];
        v33[3] = v19;
        *texture = *MEMORY[0x277CC0888];
        v39 = *&v37[24];
        v34 = *&v37[24];
        v35 = 0;
        v33[0] = *texture;
        v33[1] = *v37;
        v20 = [(__CFDictionary *)v18 compressDepthMapCVPixelBuffer:pixelBufferOut timingInfo:v33 error:&v35];
        v21 = v35;
        if (v20)
        {
          v22 = v32;
          v23 = v6;
          v24 = v31;
          if ([v20 sampleBufferRef])
          {
            FormatDescription = CMSampleBufferGetFormatDescription([v20 sampleBufferRef]);
            formatDescriptionOut = FormatDescription;
            if (FormatDescription)
            {
              CFRetain(FormatDescription);
            }

            goto LABEL_23;
          }

          v28 = JFXLog_DebugDepthCodec();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [JFXDepthCompressor depthFormatDescriptionForDepthDimensions:];
          }
        }

        else
        {
          v28 = JFXLog_DebugDepthCodec();
          v22 = v32;
          v23 = v6;
          v24 = v31;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [JFXDepthCompressor depthFormatDescriptionForDepthDimensions:];
          }
        }

LABEL_23:
        goto LABEL_24;
      }

      v18 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor depthFormatDescriptionForDepthDimensions:];
      }

      v22 = v32;
      v23 = v6;
    }

    v24 = v31;
LABEL_24:

    CVPixelBufferRelease(pixelBufferOut);
    v27 = formatDescriptionOut;
    goto LABEL_25;
  }

  v26 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [JFXDepthCompressor depthFormatDescriptionForDepthDimensions:];
  }

  v27 = 0;
  v22 = v32;
  v23 = v6;
  v24 = v31;
LABEL_25:

  return v27;
}

- (id)compressAVDepthData:(id)data timingInfo:(id *)info error:(id *)error
{
  dataCopy = data;
  depthCodecType = self->_depthCodecType;
  if (depthCodecType <= 1280992881)
  {
    if (depthCodecType == 1111970369)
    {
      v19 = *&info->var2.var0;
      v25 = *&info->var1.var1;
      v26 = v19;
      var3 = info->var2.var3;
      v20 = *&info->var0.var3;
      v23 = *&info->var0.var0;
      v24 = v20;
      v14 = [(JFXDepthCompressor *)self compressAVDepthData_BGRA:dataCopy timingInfo:&v23 error:error];
      goto LABEL_11;
    }

    if (depthCodecType == 1212494384)
    {
      v17 = *&info->var2.var0;
      v25 = *&info->var1.var1;
      v26 = v17;
      var3 = info->var2.var3;
      v18 = *&info->var0.var3;
      v23 = *&info->var0.var0;
      v24 = v18;
      v14 = [(JFXDepthCompressor *)self compressAVDepthData_Photo:dataCopy timingInfo:&v23 error:error];
      goto LABEL_11;
    }
  }

  else if ((depthCodecType - 1280992882) < 2 || depthCodecType == 1280994657 || depthCodecType == 1280997986)
  {
    v12 = *&info->var2.var0;
    v25 = *&info->var1.var1;
    v26 = v12;
    var3 = info->var2.var3;
    v13 = *&info->var0.var3;
    v23 = *&info->var0.var0;
    v24 = v13;
    v14 = [(JFXDepthCompressor *)self compressAVDepthData_LZ:dataCopy timingInfo:&v23 error:error];
    goto LABEL_11;
  }

  v21 = *&info->var2.var0;
  v25 = *&info->var1.var1;
  v26 = v21;
  var3 = info->var2.var3;
  v22 = *&info->var0.var3;
  v23 = *&info->var0.var0;
  v24 = v22;
  v14 = [(JFXDepthCompressor *)self compressAVDepthData_HEVC10:dataCopy timingInfo:&v23 error:error];
LABEL_11:
  v15 = v14;

  return v15;
}

+ (id)encapsulatePayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy length];
  bytes = [payloadCopy bytes];
  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v7 = v6;
  v8 = 0;
  if (v4)
  {
    v9 = 0;
    do
    {
      v11 = *bytes++;
      v10 = v11;
      if (v9 == 2)
      {
        v9 = 0;
        if (v10 <= 3)
        {
          *(v6 + v8++) = 3;
        }
      }

      if (v10)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      *(v6 + v8++) = v10;
      --v4;
    }

    while (v4);
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v8];
  free(v7);

  return v12;
}

+ (id)decapsulatePayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy length];
  bytes = [payloadCopy bytes];
  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v7 = v6;
  v8 = 0;
  if (v4)
  {
    v9 = 0;
    do
    {
      v11 = *bytes++;
      v10 = v11;
      if (v9 == 2 && v10 == 3)
      {
        v9 = 0;
      }

      else
      {
        if (v10)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        *(v6 + v8++) = v10;
      }

      --v4;
    }

    while (v4);
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v8];
  free(v7);

  return v12;
}

- (unsigned)getPayloadTypeOrSize:(id)size offsetPointer:(unint64_t *)pointer
{
  sizeCopy = size;
  v6 = [sizeCopy length];
  if (pointer)
  {
    v7 = *pointer;
    v13 = 0;
    v8 = v6;
    if (v6)
    {
      [sizeCopy getBytes:&v13 range:{v7, 1}];
      v9 = 0;
      v10 = v13;
      if (v13 == 255 && v7 < v8)
      {
        v9 = 0;
        do
        {
          v9 += 255;
          [sizeCopy getBytes:&v13 range:{v7++, 1}];
          v10 = v13;
        }

        while (v13 == 255 && v7 < v8);
      }

      LODWORD(v8) = v9 + v10;
    }

    *pointer = v7;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  return v8;
}

- (id)hevcSEIPayload:(id)payload
{
  v19 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v16 = 0;
  v5 = [payloadCopy length];
  v6 = v5 - 4;
  if (v5 >= 4)
  {
    [payloadCopy getBytes:&v16 range:{0, 4}];
    v7 = bswap32(v16);
    v16 = v7;
    if (v7 > v5)
    {
      v8 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(JFXDepthCompressor *)&v16 hevcSEIPayload:payloadCopy];
      }

      v16 = v6;
      v7 = v6;
    }

    if (v7 >= 6)
    {
      [payloadCopy getBytes:v15 range:{4, 1}];
      if (((v15[0] >> 1) & 0x3Fu) - 39 <= 1)
      {
        v9 = [objc_opt_class() decapsulatePayload:payloadCopy];
        v16 = [v9 length];
        if (v16)
        {
          v14 = 0;
          if ([(JFXDepthCompressor *)self getPayloadTypeOrSize:v9 offsetPointer:&v14]== 4)
          {
            [(JFXDepthCompressor *)self getPayloadTypeOrSize:v9 offsetPointer:&v14];
            v17 = 0;
            v18 = 0;
            [payloadCopy getBytes:&v17 range:{v14, 16}];
            if (v17 == 0x6C7070612E6D6F63 && v18 == 0x7370696C432E65)
            {
              v14 += 16;
              data = [v9 subdataWithRange:?];

              goto LABEL_21;
            }
          }

          else
          {
            v12 = JFXLog_DebugDepthCodec();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              [JFXDepthCompressor hevcSEIPayload:];
            }
          }
        }
      }
    }
  }

  data = [MEMORY[0x277CBEA90] data];
LABEL_21:

  return data;
}

- (id)hevcSEIPayloadHeaderForPayloadType:(int)type payloadSize:(unint64_t)size
{
  sizeCopy = size;
  v12 = -1;
  data = [MEMORY[0x277CBEB28] data];
  if (type >= 255)
  {
    v7 = type / 255;
    do
    {
      [data appendBytes:&v12 length:1];
      --v7;
    }

    while (v7);
  }

  v11 = type + type / 255;
  [data appendBytes:&v11 length:1];
  if (sizeCopy >= 255)
  {
    v8 = sizeCopy / 255;
    do
    {
      [data appendBytes:&v12 length:1];
      --v8;
    }

    while (v8);
  }

  v10 = sizeCopy + sizeCopy / 255;
  [data appendBytes:&v10 length:1];

  return data;
}

- (id)hevcSEIMessageDataWithDepthXMPMetadata:(id)metadata isPrefixSEI:(BOOL)i nuh_layer_id:(int)nuh_layer_id nuh_temporal_id_plus1:(int)nuh_temporal_id_plus1
{
  if (i)
  {
    v7 = 78;
  }

  else
  {
    v7 = 80;
  }

  v15[0] = v7 & 0xFE | ((nuh_layer_id & 0x20) != 0);
  v15[1] = nuh_temporal_id_plus1 | (8 * nuh_layer_id);
  v8 = MEMORY[0x277CBEB28];
  metadataCopy = metadata;
  data = [v8 data];
  [data appendBytes:v15 length:2];
  data2 = [MEMORY[0x277CBEB28] data];
  [data2 appendBytes:"com.apple.Clips" length:16];
  [data2 appendData:metadataCopy];

  v12 = -[JFXDepthCompressor hevcSEIPayloadHeaderForPayloadType:payloadSize:](self, "hevcSEIPayloadHeaderForPayloadType:payloadSize:", 4, [data2 length]);
  [data appendData:v12];
  [data appendData:data2];
  [data appendBytes:&trailingByte length:1];
  v13 = [objc_opt_class() encapsulatePayload:data];

  return v13;
}

- (id)depthSampleBufferAppendingDepthMetadata:(id)metadata depthSampleBufferFromCodec:(opaqueCMSampleBuffer *)codec
{
  v29 = 0;
  *&timingInfoOut.duration.value = *MEMORY[0x277CC0898];
  timingInfoOut.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  metadataCopy = metadata;
  CMSampleBufferGetSampleTimingInfo(codec, 0, &timingInfoOut);
  DataBuffer = CMSampleBufferGetDataBuffer(codec);
  FormatDescription = CMSampleBufferGetFormatDescription(codec);
  theBuffer = 0;
  LODWORD(codec) = createReadonlyCMBlockBufferFromNSData(&theBuffer, metadataCopy);

  if (codec)
  {
    v8 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
    }
  }

  else
  {
    v26 = bswap32(CMBlockBufferGetDataLength(theBuffer));
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v26 length:4];
    v25 = 0;
    if (createReadonlyCMBlockBufferFromNSData(&v25, v11))
    {
      v12 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
      }
    }

    else
    {
      v13 = v25;
      DataLength = CMBlockBufferGetDataLength(v25);
      if (CMBlockBufferAppendBufferReference(DataBuffer, v13, 0, DataLength, 1u))
      {
        v15 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
        }
      }

      else
      {
        v16 = theBuffer;
        v17 = CMBlockBufferGetDataLength(theBuffer);
        appended = CMBlockBufferAppendBufferReference(DataBuffer, v16, 0, v17, 1u);
        v19 = JFXLog_DebugDepthCodec();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
        if (appended)
        {
          if (v20)
          {
            [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
          }
        }

        else
        {
          if (v20)
          {
            [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:? depthSampleBufferFromCodec:?];
          }

          sampleSizeArray = CMBlockBufferGetDataLength(DataBuffer);
          if (CMSampleBufferCreate(*MEMORY[0x277CBECE8], DataBuffer, 1u, 0, 0, FormatDescription, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &v29))
          {
            v21 = JFXLog_DebugDepthCodec();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
            }
          }
        }
      }

      CFRelease(v25);
    }

    CFRelease(theBuffer);

    if (v29)
    {
      v22 = objc_alloc(MEMORY[0x277D415D8]);
      v10 = [v22 initWithSampleBuffer:v29];
      CFRelease(v29);
      goto LABEL_29;
    }
  }

  v9 = JFXLog_depthCodec();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (id)depthSampleBufferWithNewHVCCWithDepthMetadata:(id)metadata depthSampleBufferFromCodec:(opaqueCMSampleBuffer *)codec
{
  v73 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  formatDescriptionOut = 0;
  v67 = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(codec);
  *&timingInfoOut.duration.value = *MEMORY[0x277CC0898];
  timingInfoOut.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  CMSampleBufferGetSampleTimingInfo(codec, 0, &timingInfoOut);
  FormatDescription = CMSampleBufferGetFormatDescription(codec);
  parameterSetCountOut = 0;
  NALUnitHeaderLengthOut = 0;
  if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut) || !parameterSetCountOut)
  {
    v15 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
    }
  }

  else
  {
    theBuffer = DataBuffer;
    v8 = malloc_type_malloc(8 * parameterSetCountOut + 8, 0x10040436913F5uLL);
    v9 = malloc_type_malloc(8 * parameterSetCountOut + 8, 0x100004000313F17uLL);
    v10 = v9;
    if (parameterSetCountOut)
    {
      v11 = -1;
      v12 = v8;
      v13 = v9;
      while (!CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, v11 + 1, v12, v13, &parameterSetCountOut, 0))
      {
        v14 = v11 + 2;
        ++v13;
        ++v12;
        ++v11;
        if (v14 >= parameterSetCountOut)
        {
          goto LABEL_13;
        }
      }

      v16 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
      }

      parameterSetCountOut = v11;
    }

LABEL_13:
    v17 = [CMFormatDescriptionGetExtension(FormatDescription @"SampleDescriptionExtensionAtoms")];
    v15 = v17;
    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:@"hvcC"];
      v19 = [v18 mutableCopy];

      if (v19)
      {
        v20 = metadataCopy;
        v21 = [v19 length];
        v56 = v20;
        v55 = v21 + [v20 length];
        v62 = malloc_type_malloc(v55 + 5, 0x100004077774924uLL);
        [v19 getBytes:v62 length:[v19 length]];
        v22 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
        }

        v23 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
        }

        v60 = v10;

        v24 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
        }

        v25 = v62[22];
        v26 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(JFXDepthCompressor *)v25 depthSampleBufferWithNewHVCCWithDepthMetadata:v26 depthSampleBufferFromCodec:?];
        }

        v57 = v15;
        v58 = metadataCopy;
        v61 = v8;

        if (v25)
        {
          v27 = 0;
          v28 = 23;
          while (1)
          {
            v29 = &v62[v28];
            if (__rev16(*(v29 + 1)) != 1)
            {
              break;
            }

            v30 = v28 + 5;
            if ([v19 length]<= v30)
            {
              v38 = JFXLog_DebugDepthCodec();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
              }

              goto LABEL_42;
            }

            v31 = *v29;
            v32 = v61[v27][1];
            v33 = *(v29 + 3);
            v34 = v60[v27];
            v35 = JFXLog_DebugDepthCodec();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109632;
              *&buf[4] = v27;
              v69 = 2048;
              v70 = v31 & 0x1F;
              v71 = 2048;
              v72 = v32 >> 3;
              _os_log_debug_impl(&dword_242A3B000, v35, OS_LOG_TYPE_DEBUG, "param_set[%d] nal_unit_type=%lu (expect nal_unit_type=%lu)", buf, 0x1Cu);
            }

            v36 = __rev16(v33);

            v37 = JFXLog_DebugDepthCodec();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109632;
              *&buf[4] = v27;
              v69 = 2048;
              v70 = v36;
              v71 = 2048;
              v72 = v34;
              _os_log_debug_impl(&dword_242A3B000, v37, OS_LOG_TYPE_DEBUG, "param_set[%d] nal_unit_length=%lu (expect nal_unit_length=%lu)", buf, 0x1Cu);
            }

            v28 = v30 + v36;
            if ([v19 length]<= v28)
            {
              v38 = JFXLog_DebugDepthCodec();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
              }

              goto LABEL_42;
            }

            if (v25 == ++v27)
            {
              goto LABEL_43;
            }
          }

          v38 = JFXLog_DebugDepthCodec();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
          }

LABEL_42:
        }

LABEL_43:
        ++v62[22];
        v39 = (*[v56 bytes] >> 1) & 0x3F | 0x80;
        v40 = [v56 length] >> 8;
        v41 = [v56 length];
        v42 = &v62[[v19 length]];
        v43 = &v62[[v19 length]];
        *v42 = v39;
        *(v42 + 1) = 256;
        v42[3] = v40;
        v42[4] = v41;
        [v56 getBytes:v43 + 5 length:{objc_msgSend(v56, "length")}];
        v44 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v62 length:v55 + 5 freeWhenDone:1];
        v15 = v57;
        [v57 setObject:v44 forKeyedSubscript:@"hvcC"];

        metadataCopy = v58;
        v10 = v60;
        v8 = v61;
      }

      v45 = CMFormatDescriptionGetExtensions(FormatDescription);
      v46 = v45;
      if (v45)
      {
        dictionary = [v45 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v48 = dictionary;
      [dictionary setObject:v15 forKeyedSubscript:@"SampleDescriptionExtensionAtoms"];
      v49 = *MEMORY[0x277CBECE8];
      if (CMVideoFormatDescriptionCreateFromHEVCParameterSets(*MEMORY[0x277CBECE8], parameterSetCountOut, v8, v10, NALUnitHeaderLengthOut, v48, &formatDescriptionOut))
      {
        v50 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
        }
      }

      else
      {
        *buf = CMBlockBufferGetDataLength(theBuffer);
        v51 = CMSampleBufferCreate(v49, theBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &timingInfoOut, 1, buf, &v67);
        if (formatDescriptionOut)
        {
          CFRelease(formatDescriptionOut);
          formatDescriptionOut = 0;
        }

        if (!v51 && v67)
        {
          v52 = objc_alloc(MEMORY[0x277D415D8]);
          v53 = [v52 initWithSampleBuffer:v67];
          free(v8);
          free(v10);
          CFRelease(v67);

          goto LABEL_60;
        }

        v50 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:];
        }
      }
    }

    else
    {
      v19 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
      }
    }

    free(v8);
    free(v10);
  }

  v53 = 0;
LABEL_60:

  return v53;
}

- (id)compressAVDepthData_HEVC10:(id)c10 timingInfo:(id *)info error:(id *)error
{
  v45[1] = *MEMORY[0x277D85DE8];
  c10Copy = c10;
  depthDataMap = [c10Copy depthDataMap];
  Width = CVPixelBufferGetWidth(depthDataMap);
  Height = CVPixelBufferGetHeight(depthDataMap);
  if (!self->_videoEncoderInterface)
  {
    v12 = Height;
    v13 = [[JFXVideoEncoderInterface alloc] initWithExpectedFrameRate:30.0];
    videoEncoderInterface = self->_videoEncoderInterface;
    self->_videoEncoderInterface = v13;

    [(JFXVideoEncoderInterface *)self->_videoEncoderInterface setupEncoderWithWidth:Width andHeight:v12 imageFormat:9 andFramerate:30.0];
    if (!self->_videoEncoderInterface)
    {
      v26 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor compressAVDepthData_HEVC10:timingInfo:error:];
      }

LABEL_24:

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
        *error = v29 = 0;
        goto LABEL_33;
      }

      goto LABEL_26;
    }
  }

  v15 = copyFloatDepthBufferToL010(depthDataMap, 0);
  if (!v15)
  {
    v26 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_HEVC10:timingInfo:error:];
    }

    goto LABEL_24;
  }

  v16 = v15;
  v44 = *MEMORY[0x277CE27C0];
  v45[0] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v18 = self->_videoEncoderInterface;
  *parameterSetCountOut = *&info->var1.var0;
  var3 = info->var1.var3;
  v19 = [(JFXVideoEncoderInterface *)v18 encodeFrame:v16 presentationTime:parameterSetCountOut frameProperties:v17];
  CVPixelBufferRelease(v16);
  if (!v19)
  {
    v27 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_HEVC10:timingInfo:error:];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }

    goto LABEL_21;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(v19);
  parameterSetCountOut[0] = 0;
  NALUnitHeaderLengthOut = 0;
  if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, 0, 0, 0, parameterSetCountOut, &NALUnitHeaderLengthOut) || !parameterSetCountOut[0])
  {
    CFRelease(v19);
    v28 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_HEVC10:timingInfo:error:];
    }

LABEL_21:
LABEL_26:
    v29 = 0;
    goto LABEL_33;
  }

  v39 = v17;
  v21 = malloc_type_malloc(8 * parameterSetCountOut[0] + 8, 0x10040436913F5uLL);
  parameterSetSizeOut = malloc_type_malloc(8 * parameterSetCountOut[0] + 8, 0x100004000313F17uLL);
  if (parameterSetCountOut[0])
  {
    v22 = -1;
    v23 = v21;
    v24 = parameterSetSizeOut;
    while (!CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, v22 + 1, v23, v24, parameterSetCountOut, 0))
    {
      v25 = v22 + 2;
      ++v24;
      ++v23;
      ++v22;
      if (v25 >= parameterSetCountOut[0])
      {
        goto LABEL_30;
      }
    }

    v30 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:];
    }

    parameterSetCountOut[0] = v22;
  }

LABEL_30:
  v31 = [(JFXDepthCompressor *)self mutableCopyExtensionsDictionaryCopyFromAVDepthData:c10Copy];
  v32 = (*v21)[1];
  v33 = (v32 >> 3) & 0xFFFFFFDF | (32 * (**v21 & 1));
  free(v21);
  free(parameterSetSizeOut);
  v34 = [v31 objectForKeyedSubscript:kJFXCGImageAuxiliaryDataInfoMetadataAsXMPKey];
  v35 = [(JFXDepthCompressor *)self hevcSEIMessageDataWithDepthXMPMetadata:v34 isPrefixSEI:0 nuh_layer_id:v33 nuh_temporal_id_plus1:v32 & 7];
  DataBuffer = CMSampleBufferGetDataBuffer(v19);
  v37 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [JFXDepthCompressor compressAVDepthData_HEVC10:? timingInfo:? error:?];
  }

  v29 = [(JFXDepthCompressor *)self depthSampleBufferAppendingDepthMetadata:v35 depthSampleBufferFromCodec:v19];
  CFRelease(v19);

LABEL_33:

  return v29;
}

- (__CVBuffer)copyDepthBufferAsBGRA:(__CVBuffer *)a
{
  pixelBufferOut = 0;
  if (a)
  {
    v4 = *MEMORY[0x277CBECE8];
    Width = CVPixelBufferGetWidth(a);
    Height = CVPixelBufferGetHeight(a);
    v7 = CVPixelBufferCreate(v4, Width, Height, 0x42475241u, 0, &pixelBufferOut) || pixelBufferOut == 0;
    if (!v7 && CVPixelBufferGetPixelFormatType(pixelBufferOut) == 1111970369)
    {
      v8 = CVPixelBufferGetWidth(a);
      v9 = CVPixelBufferGetHeight(a);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a);
      v11 = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      CVPixelBufferLockBaseAddress(a, 1uLL);
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a);
      v13 = CVPixelBufferGetBaseAddress(pixelBufferOut);
      if (v9)
      {
        v14 = v13;
        v15 = 4 * v8;
        do
        {
          memcpy(v14, BaseAddress, v15);
          BaseAddress += BytesPerRow;
          v14 += v11;
          --v9;
        }

        while (v9);
      }

      CVPixelBufferUnlockBaseAddress(a, 1uLL);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    }
  }

  return pixelBufferOut;
}

- (id)compressAVDepthData_BGRA:(id)a timingInfo:(id *)info error:(id *)error
{
  Float32DepthImageForAVDepthData = createFloat32DepthImageForAVDepthData(a);
  if (Float32DepthImageForAVDepthData)
  {
    v9 = Float32DepthImageForAVDepthData;
    v10 = [(JFXDepthCompressor *)self copyDepthBufferAsBGRA:Float32DepthImageForAVDepthData];
    CVPixelBufferRelease(v9);
    if (v10)
    {
      formatDescriptionOut = 0;
      v11 = *MEMORY[0x277CBECE8];
      CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v10, &formatDescriptionOut);
      v12 = objc_opt_new();
      [v12 addEntriesFromDictionary:CMFormatDescriptionGetExtensions(formatDescriptionOut)];
      formatDescription = 0;
      Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescriptionOut);
      v14 = Dimensions;
      v15 = HIDWORD(Dimensions);
      MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescriptionOut);
      CMVideoFormatDescriptionCreate(v11, MediaSubType, v14, v15, v12, &formatDescription);
      if (formatDescription)
      {
        sampleBufferOut = 0;
        CMSampleBufferCreateReadyWithImageBuffer(v11, v10, formatDescription, info, &sampleBufferOut);
        if (sampleBufferOut)
        {
          v17 = objc_alloc(MEMORY[0x277D415D8]);
          v18 = [v17 initWithSampleBuffer:sampleBufferOut];
          CFRelease(sampleBufferOut);
          CVPixelBufferRelease(v10);
          CFRelease(formatDescriptionOut);
          CFRelease(formatDescription);

          goto LABEL_17;
        }

        CVPixelBufferRelease(v10);
        CFRelease(formatDescriptionOut);
        CFRelease(formatDescription);
        v20 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor compressAVDepthData_BGRA:timingInfo:error:];
        }
      }

      else
      {
        v20 = JFXLog_DebugDepthCodec();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [JFXDepthCompressor compressAVDepthData_BGRA:timingInfo:error:];
        }
      }

      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      }
    }
  }

  else
  {
    CVPixelBufferRelease(0);
    v19 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_BGRA:timingInfo:error:];
    }
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (id)compressAVDepthData_Photo:(id)photo timingInfo:(id *)info error:(id *)error
{
  v71[3] = *MEMORY[0x277D85DE8];
  photoCopy = photo;
  ContiguousFloat32DepthImageForAVDepthData = createContiguousFloat32DepthImageForAVDepthData(photoCopy);
  if (!ContiguousFloat32DepthImageForAVDepthData)
  {
    v18 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    goto LABEL_38;
  }

  v10 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  if (!v10)
  {
LABEL_36:
    v18 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

LABEL_38:

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }

    goto LABEL_68;
  }

  v11 = v10;
  memset(v10, 128, 0x40000uLL);
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:0x40000];
  v13 = v12;
  if (v12)
  {
    v14 = CGDataProviderCreateWithCFData(v12);
    if (v14)
    {
      v15 = v14;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v17 = CGImageCreate(0x100uLL, 0x100uLL, 8uLL, 0x20uLL, 0x400uLL, DeviceRGB, 0x2004u, v15, 0, 0, kCGRenderingIntentDefault);
      CGDataProviderRelease(v15);
      CGColorSpaceRelease(DeviceRGB);
      goto LABEL_13;
    }

    v19 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }
  }

  else
  {
    v19 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }
  }

  v17 = 0;
LABEL_13:
  free(v11);

  if (!v17)
  {
    goto LABEL_36;
  }

  v20 = *MEMORY[0x277CD2D80];
  v70[0] = *MEMORY[0x277CD2D48];
  v70[1] = v20;
  v71[0] = &unk_28556D818;
  v71[1] = MEMORY[0x277CBEC38];
  v70[2] = *MEMORY[0x277CD2D88];
  v71[2] = MEMORY[0x277CBEC38];
  properties = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  BytesPerRow = CVPixelBufferGetBytesPerRow(ContiguousFloat32DepthImageForAVDepthData);
  Height = CVPixelBufferGetHeight(ContiguousFloat32DepthImageForAVDepthData);
  v23 = CGImageGetBytesPerRow(v17);
  v24 = CGImageGetHeight(v17);
  Mutable = CFDataCreateMutable(0, Height * BytesPerRow + 2 * v23 * v24);
  if (!Mutable)
  {
    v44 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }

    goto LABEL_67;
  }

  v26 = Mutable;
  v27 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x277CE5D80], 1uLL, 0);
  if (!v27)
  {
    v45 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }

    goto LABEL_66;
  }

  v28 = v27;
  CGImageDestinationAddImage(v27, v17, properties);
  v65 = 0;
  v61 = [photoCopy dictionaryRepresentationForAuxiliaryDataType:&v65];
  v62 = v65;
  if (([(__CFString *)v62 isEqualToString:*MEMORY[0x277CD2C88]]& 1) == 0)
  {
    v29 = v26;
    v30 = v28;
    v31 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    v28 = v30;
    v26 = v29;
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }
  }

  CGImageDestinationAddAuxiliaryDataInfo(v28, v62, v61);
  v60 = v28;
  if (!CGImageDestinationFinalize(v28))
  {
    v46 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    v47 = v60;
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }

    goto LABEL_65;
  }

  width = CVPixelBufferGetWidth(ContiguousFloat32DepthImageForAVDepthData);
  v32 = v26;
  v33 = MEMORY[0x277CBEAC0];
  v34 = [(JFXDepthCompressor *)self mutableCopyExtensionsDictionaryCopyFromAVDepthData:photoCopy];
  v35 = [v33 dictionaryWithDictionary:v34];

  v59 = v35;
  if (!v35)
  {
    v48 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    goto LABEL_54;
  }

  v36 = *&info->var2.var0;
  *&sampleTimingArray.presentationTimeStamp.timescale = *&info->var1.var1;
  *&sampleTimingArray.decodeTimeStamp.value = v36;
  sampleTimingArray.decodeTimeStamp.epoch = info->var2.var3;
  v37 = *&info->var0.var3;
  *&sampleTimingArray.duration.value = *&info->var0.var0;
  *&sampleTimingArray.duration.epoch = v37;
  v38 = v32;
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  v39 = *MEMORY[0x277CBECE8];
  ReadonlyCMBlockBufferFromNSData = CMVideoFormatDescriptionCreate(*MEMORY[0x277CBECE8], 0x48453230u, width, Height, v35, &formatDescriptionOut);
  if (ReadonlyCMBlockBufferFromNSData || !formatDescriptionOut)
  {
    v52 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    goto LABEL_59;
  }

  cf = 0;
  ReadonlyCMBlockBufferFromNSData = createReadonlyCMBlockBufferFromNSData(&cf, v38);
  if (ReadonlyCMBlockBufferFromNSData || !cf)
  {
    v56 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    v41 = 0;
  }

  else
  {
    sampleSizeArray = [(__CFData *)v38 length];
    ReadonlyCMBlockBufferFromNSData = CMSampleBufferCreateReady(v39, cf, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sampleBufferOut);
    v41 = sampleBufferOut;
    if (!sampleBufferOut)
    {
      v42 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
      }
    }

    if (ReadonlyCMBlockBufferFromNSData)
    {
      v43 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
      }
    }

    CFRelease(cf);
  }

  CFRelease(formatDescriptionOut);

  if (!v41 || ReadonlyCMBlockBufferFromNSData)
  {
LABEL_59:
    v53 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

    v47 = v60;
    if (!error)
    {
      goto LABEL_64;
    }

    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA590];
    v51 = ReadonlyCMBlockBufferFromNSData;
    goto LABEL_63;
  }

  v57 = [objc_alloc(MEMORY[0x277D415D8]) initWithSampleBuffer:v41];
  if (!v57)
  {
    v48 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor compressAVDepthData_Photo:timingInfo:error:];
    }

LABEL_54:

    v47 = v60;
    if (!error)
    {
LABEL_64:

LABEL_65:
      CFRelease(v47);

LABEL_66:
      CFRelease(v26);
LABEL_67:
      CGImageRelease(v17);

LABEL_68:
      CVPixelBufferRelease(ContiguousFloat32DepthImageForAVDepthData);
      v54 = 0;
      goto LABEL_69;
    }

    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA590];
    v51 = -50;
LABEL_63:
    *error = [v49 errorWithDomain:v50 code:v51 userInfo:0];
    goto LABEL_64;
  }

  v54 = v57;
  CVPixelBufferRelease(ContiguousFloat32DepthImageForAVDepthData);
  CGImageRelease(v17);
  CFRelease(v38);
  CFRelease(v60);
  CFRelease(v41);

LABEL_69:

  return v54;
}

+ (id)NSDataFromFloatDepth32:(__CVBuffer *)depth32
{
  if (depth32)
  {
    DataSize = CVPixelBufferGetDataSize(depth32);
    Width = CVPixelBufferGetWidth(depth32);
    if (DataSize == 4 * Width * CVPixelBufferGetHeight(depth32))
    {
      CVPixelBufferLockBaseAddress(depth32, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(depth32);
      if (BaseAddress)
      {
        v7 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:DataSize];
      }

      else
      {
        v7 = 0;
      }

      CVPixelBufferUnlockBaseAddress(depth32, 1uLL);
      goto LABEL_11;
    }

    v8 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[JFXDepthCompressor NSDataFromFloatDepth32:];
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (id)NSDataFromDepthMapInsideAVDepthData:(id)data
{
  ContiguousFloat32DepthImageForAVDepthData = createContiguousFloat32DepthImageForAVDepthData(data);
  v4 = [objc_opt_class() NSDataFromFloatDepth32:ContiguousFloat32DepthImageForAVDepthData];
  CVPixelBufferRelease(ContiguousFloat32DepthImageForAVDepthData);

  return v4;
}

- (id)mutableCopyExtensionsDictionaryCopyFromAVDepthData:(id)data
{
  v24[7] = *MEMORY[0x277D85DE8];
  v3 = [data depthDataByConvertingToDepthDataType:1717855600];
  v4 = [v3 dictionaryRepresentationForAuxiliaryDataType:0];
  v5 = [v4 mutableCopy];

  v6 = *MEMORY[0x277CD2C70];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD2C70]];

  if (v7)
  {
    MutableCopy = CGImageMetadataCreateMutableCopy(v7);
  }

  else
  {
    MutableCopy = CGImageMetadataCreateMutable();
  }

  v9 = MutableCopy;
  if (MutableCopy)
  {
    err = 0;
    if (CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, @"http://ns.apple.com/pixeldatainfo/1.0/", @"apdi", &err))
    {
      depthDataType = [v3 depthDataType];
      v11 = depthDataType;
      v12 = depthDataType == 1751410032 || depthDataType == 1717855600;
      v13 = @"disparity";
      if (v12)
      {
        v13 = @"depth";
      }

      v24[0] = v13;
      v23[0] = @"AuxiliaryImageType";
      v23[1] = @"NativeFormat";
      v14 = MEMORY[0x277CCABB0];
      v15 = v13;
      v16 = [v14 numberWithUnsignedInt:v11];
      v24[1] = v16;
      v24[2] = &unk_28556D9F0;
      v23[2] = @"FloatMinValue";
      v23[3] = @"FloatMaxValue";
      v24[3] = &unk_28556DA00;
      v24[4] = &unk_28556D620;
      v23[4] = @"StoredFormat";
      v23[5] = @"IntMinValue";
      v23[6] = @"IntMaxValue";
      v24[5] = &unk_28556D638;
      v24[6] = &unk_28556D650;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke;
      v21[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
      v21[4] = v9;
      [v17 enumerateKeysAndObjectsUsingBlock:v21];
      XMPData = CGImageMetadataCreateXMPData(v9, 0);
      [v5 setObject:XMPData forKeyedSubscript:kJFXCGImageAuxiliaryDataInfoMetadataAsXMPKey];

      [v5 removeObjectForKey:v6];
      [v5 removeObjectForKey:*MEMORY[0x277CD2C60]];
    }

    else
    {
      v17 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor mutableCopyExtensionsDictionaryCopyFromAVDepthData:];
      }
    }

    CFRelease(v9);
  }

  else
  {
    v19 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthCompressor mutableCopyExtensionsDictionaryCopyFromAVDepthData:];
    }
  }

  return v5;
}

void __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke(uint64_t a1, void *a2, const void *a3)
{
  v5 = a2;
  v6 = CGImageMetadataTagCreate(@"http://ns.apple.com/pixeldatainfo/1.0/", @"apdi", v5, kCGImageMetadataTypeDefault, a3);
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"apdi", v5];
    if (v8)
    {
      if (CGImageMetadataSetTagWithPath(*(a1 + 32), 0, v8, v7))
      {
LABEL_11:
        CFRelease(v7);
        goto LABEL_12;
      }

      v9 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke_cold_1();
      }
    }

    else
    {
      v9 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke_cold_2();
      }
    }

    goto LABEL_11;
  }

  v8 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke_cold_3();
  }

LABEL_12:
}

- (id)compressAVDepthData_LZ:(id)z timingInfo:(id *)info error:(id *)error
{
  depthCodecType = self->_depthCodecType;
  switch(depthCodecType)
  {
    case 0x4C5A6672u:
      v8 = 1;
      break;
    case 0x4C5A6673u:
      v8 = 0;
      break;
    case 0x4C5A6D61u:
      v8 = 2;
      break;
    default:
      v8 = 3;
      break;
  }

  v9 = [z depthDataByConvertingToDepthDataType:1717855600];
  v10 = [v9 dictionaryRepresentationForAuxiliaryDataType:0];
  v11 = [v10 mutableCopy];

  v12 = *MEMORY[0x277CD2C70];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD2C70]];

  XMPData = CGImageMetadataCreateXMPData(v13, 0);
  [v11 setObject:XMPData forKeyedSubscript:kJFXCGImageAuxiliaryDataInfoMetadataAsXMPKey];
  v15 = [objc_opt_class() NSDataFromDepthMapInsideAVDepthData:v9];
  v16 = v15;
  if (v15)
  {
    v42 = 0;
    v17 = [v15 compressedDataUsingAlgorithm:v8 error:&v42];
    v18 = v42;
    v19 = v18;
    if (!v17 || v18)
    {
      v29 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor compressAVDepthData_LZ:timingInfo:error:];
      }

      if (v19)
      {
        if (error)
        {
          v30 = v19;
          *error = v19;
        }

        goto LABEL_46;
      }
    }

    else
    {
      theBuffer = 0;
      createReadonlyCMBlockBufferFromNSData(&theBuffer, v17);
      if (theBuffer)
      {
        sampleTimingArray = info;
        errorCopy = error;
        formatDescriptionOut = 0;
        sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
        [v11 removeObjectForKey:v12];
        [v11 removeObjectForKey:*MEMORY[0x277CD2C60]];
        depthDataMap = [v9 depthDataMap];
        v21 = *MEMORY[0x277CBECE8];
        Width = CVPixelBufferGetWidth(depthDataMap);
        Height = CVPixelBufferGetHeight(depthDataMap);
        if (CMVideoFormatDescriptionCreate(v21, depthCodecType, Width, Height, v11, &formatDescriptionOut) || !formatDescriptionOut)
        {
          v32 = JFXLog_DebugDepthCodec();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [JFXDepthCompressor compressAVDepthData_LZ:timingInfo:error:];
          }
        }

        else
        {
          sampleBufferOut = 0;
          v24 = CMSampleBufferCreateReady(v21, theBuffer, formatDescriptionOut, 1, 1, sampleTimingArray, 1, &sampleSizeArray, &sampleBufferOut);
          if (v24 || !sampleBufferOut)
          {
            v33 = JFXLog_DebugDepthCodec();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [JFXDepthCompressor compressAVDepthData_LZ:timingInfo:error:];
            }

            if (errorCopy)
            {
              *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v24 userInfo:0];
            }
          }

          else
          {
            v25 = objc_alloc(MEMORY[0x277D415D8]);
            v26 = [v25 initWithSampleBuffer:sampleBufferOut];
            if (v26)
            {
              v27 = v26;
              CFRelease(sampleBufferOut);
              CFRelease(formatDescriptionOut);
              CFRelease(theBuffer);

              goto LABEL_48;
            }

            v34 = JFXLog_DebugDepthCodec();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [JFXDepthCompressor compressAVDepthData_LZ:timingInfo:error:];
            }

            if (errorCopy)
            {
              *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:0 userInfo:0];
            }

            CFRelease(sampleBufferOut);
          }

          CFRelease(formatDescriptionOut);
        }

        CFRelease(theBuffer);
        goto LABEL_46;
      }

      v31 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthCompressor compressAVDepthData_LZ:timingInfo:error:];
      }
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    }

LABEL_46:

    goto LABEL_47;
  }

  v28 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [JFXDepthCompressor compressAVDepthData_LZ:timingInfo:error:];
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    *error = v27 = 0;
    goto LABEL_48;
  }

LABEL_47:
  v27 = 0;
LABEL_48:

  return v27;
}

+ (id)fakeAuxDepthInfoDictionaryForCVPixelBuffer:(__CVBuffer *)buffer
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = +[JFXDepthCompressor fakeXMPDataIfNotFound];
  v5 = CGImageMetadataCreateFromXMPData(v4);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v23[0] = @"Width";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:Width];
  v24[0] = v10;
  v23[1] = @"Height";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:Height];
  v24[1] = v11;
  v23[2] = @"PixelFormat";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PixelFormatType];
  v24[2] = v12;
  v23[3] = @"BytesPerRow";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:BytesPerRow];
  v24[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  v15 = MEMORY[0x277CBEA90];
  BaseAddress = CVPixelBufferGetBaseAddress(buffer);
  v17 = [v15 dataWithBytes:BaseAddress length:CVPixelBufferGetDataSize(buffer)];
  v18 = *MEMORY[0x277CD2C68];
  v21[0] = *MEMORY[0x277CD2C60];
  v21[1] = v18;
  v22[0] = v17;
  v22[1] = v14;
  v21[2] = *MEMORY[0x277CD2C70];
  v22[2] = v5;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);

  return v19;
}

- (id)compressDepthMapCVPixelBuffer:(__CVBuffer *)buffer timingInfo:(id *)info error:(id *)error
{
  v9 = [JFXDepthCompressor fakeAuxDepthInfoDictionaryForCVPixelBuffer:?];
  v10 = [MEMORY[0x277CE5B70] depthDataFromDictionaryRepresentation:v9 error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 depthDataByReplacingDepthDataMapWithPixelBuffer:buffer error:error];
    v13 = *&info->var2.var0;
    v17[2] = *&info->var1.var1;
    v17[3] = v13;
    var3 = info->var2.var3;
    v14 = *&info->var0.var3;
    v17[0] = *&info->var0.var0;
    v17[1] = v14;
    v15 = [(JFXDepthCompressor *)self compressAVDepthData:v12 timingInfo:v17 error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)depthFormatDescriptionForDepthDimensions:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)hevcSEIPayload:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [a2 length];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)hevcSEIPayload:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferAppendingDepthMetadata:(OpaqueCMBlockBuffer *)a1 depthSampleBufferFromCodec:.cold.5(OpaqueCMBlockBuffer *a1)
{
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)depthSampleBufferAppendingDepthMetadata:depthSampleBufferFromCodec:.cold.6()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)depthSampleBufferWithNewHVCCWithDepthMetadata:(os_log_t)log depthSampleBufferFromCodec:.cold.6(unsigned __int8 a1, uint64_t *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 2048;
  v6 = v3;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "numOfArrays=%d (should be same as paramSetCount %lu)", v4, 0x12u);
}

- (void)depthSampleBufferWithNewHVCCWithDepthMetadata:depthSampleBufferFromCodec:.cold.10()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)compressAVDepthData_HEVC10:(OpaqueCMBlockBuffer *)a1 timingInfo:error:.cold.2(OpaqueCMBlockBuffer *a1)
{
  CMBlockBufferGetDataLength(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)compressAVDepthData_HEVC10:timingInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)compressAVDepthData_Photo:timingInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)compressAVDepthData_Photo:timingInfo:error:.cold.8()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __73__JFXDepthCompressor_mutableCopyExtensionsDictionaryCopyFromAVDepthData___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end