@interface JFXDepthDecompressor
+ (id)NSDataWithCMBlockBuffer:(OpaqueCMBlockBuffer *)a3 range:(_NSRange)a4;
+ (id)dataWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3;
+ (id)trackOptionsForDepthCodecType:(int)a3 error:(id *)a4;
+ (int)bitDepthOf:(opaqueCMFormatDescription *)a3;
- (JFXDepthDecompressor)init;
- (id)decompressAVDepthData:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (id)decompressAVDepthData_BGRA:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (id)decompressAVDepthData_HEVC10:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (id)decompressAVDepthData_LZ:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (id)decompressAVDepthData_Photo:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (id)incompleteImageSourceAuxDataInfoDict:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation JFXDepthDecompressor

- (JFXDepthDecompressor)init
{
  v3.receiver = self;
  v3.super_class = JFXDepthDecompressor;
  result = [(JFXDepthDecompressor *)&v3 init];
  if (result)
  {
    result->_depthCodecType = 0;
    result->_previousFormatDescription = 0;
  }

  return result;
}

- (void)dealloc
{
  videoDecoderInterface = self->_videoDecoderInterface;
  self->_videoDecoderInterface = 0;

  v4.receiver = self;
  v4.super_class = JFXDepthDecompressor;
  [(JFXDepthDecompressor *)&v4 dealloc];
}

+ (int)bitDepthOf:(opaqueCMFormatDescription *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CMFormatDescriptionGetExtension(a3, @"SampleDescriptionExtensionAtoms");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"hvcC"];
    v6 = v5;
    if (v5)
    {
      [v5 getBytes:v9 length:18];
      if ((v9[16] & 3) != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = v9[17] & 7 | 8;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)decompressAVDepthData:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  if (a4)
  {
    *a4 = 0;
  }

  if (MediaSubType == 1111970369)
  {
    self->_depthCodecType = 1111970369;
    v10 = [(JFXDepthDecompressor *)self decompressAVDepthData_BGRA:a3 error:a4];
    goto LABEL_17;
  }

  if (ImageBuffer)
  {
    goto LABEL_6;
  }

  if (MediaSubType <= 1280994656)
  {
    if ((MediaSubType - 1280992882) >= 2)
    {
      if (MediaSubType == 1212494384)
      {
        self->_depthCodecType = 1212494384;
        v10 = [(JFXDepthDecompressor *)self decompressAVDepthData_Photo:a3 error:a4];
        goto LABEL_17;
      }

LABEL_6:
      v10 = 0;
      self->_depthCodecType = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (MediaSubType == 1280994657 || MediaSubType == 1280997986)
  {
LABEL_16:
    self->_depthCodecType = MediaSubType;
    v10 = [(JFXDepthDecompressor *)self decompressAVDepthData_LZ:a3 error:a4];
    goto LABEL_17;
  }

  if (MediaSubType != 1752589105 || [objc_opt_class() bitDepthOf:FormatDescription] != 10)
  {
    goto LABEL_6;
  }

  self->_depthCodecType = 1212493921;
  v10 = [(JFXDepthDecompressor *)self decompressAVDepthData_HEVC10:a3 error:a4];
LABEL_17:

  return v10;
}

+ (id)dataWithCMSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v4 = DataBuffer;
  if (DataBuffer)
  {
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    blockBufferOut = 0;
    v6 = CMBlockBufferCreateContiguous(*MEMORY[0x277CBECE8], v4, *MEMORY[0x277CBECE8], 0, 0, DataLength, 2u, &blockBufferOut);
    v4 = 0;
    if (!v6 && blockBufferOut != 0)
    {
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      v9 = 0;
      v4 = 0;
      if (!CMBlockBufferGetDataPointer(blockBufferOut, 0, &lengthAtOffsetOut, &v9, &dataPointerOut) && dataPointerOut)
      {
        v4 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      }

      CFRelease(blockBufferOut);
    }
  }

  return v4;
}

+ (id)NSDataWithCMBlockBuffer:(OpaqueCMBlockBuffer *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  DataLength = CMBlockBufferGetDataLength(a3);
  v8 = 0;
  if (location < DataLength && location + length <= DataLength)
  {
    v8 = malloc_type_malloc(length, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      if (CMBlockBufferCopyDataBytes(a3, location, length, v8))
      {
        v8 = 0;
      }

      else
      {
        v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:DataLength freeWhenDone:1];
      }
    }
  }

  return v8;
}

- (id)incompleteImageSourceAuxDataInfoDict:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v36[4] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:"com.apple.Clips" length:16];
  parameterSetCountOut = 0;
  NALUnitHeaderLengthOut = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  v7 = FormatDescription;
  if (!FormatDescription || CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut) || parameterSetCountOut < 4 || (parameterSetSizeOut = 0, parameterSetPointerOut = 0, CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(v7, 3uLL, &parameterSetPointerOut, &parameterSetSizeOut, &parameterSetCountOut, 0)) || ([MEMORY[0x277CBEA90] dataWithBytes:parameterSetPointerOut length:parameterSetSizeOut], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a3);
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    v10 = [objc_opt_class() NSDataWithCMBlockBuffer:DataBuffer range:{0, DataLength}];
  }

  v11 = [v10 rangeOfData:v5 options:1 range:{0, objc_msgSend(v10, "length")}];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthDecompressor incompleteImageSourceAuxDataInfoDict:error:];
    }

    v13 = +[JFXDepthCompressor fakeXMPDataIfNotFound];
  }

  else
  {
    v14 = [v5 length] + v11;
    v13 = [v10 subdataWithRange:{v14, objc_msgSend(v10, "length") + ~v14}];
  }

  v15 = v13;
  v16 = CGImageMetadataCreateFromXMPData(v13);
  if (v7)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(v7);
    v18 = HIDWORD(Dimensions);
    v19 = (4 * Dimensions);
    v35[0] = @"Width";
    v20 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v36[0] = v20;
    v35[1] = @"Height";
    v21 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    v36[1] = v21;
    v35[2] = @"PixelFormat";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1717855600];
    v36[2] = v22;
    v35[3] = @"BytesPerRow";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    v36[3] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];

    v25 = *MEMORY[0x277CD2C70];
    v33[0] = *MEMORY[0x277CD2C68];
    v33[1] = v25;
    v34[0] = v24;
    v34[1] = v16;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  }

  else
  {
    v27 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthDecompressor incompleteImageSourceAuxDataInfoDict:error:];
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v26 = 0;
  }

  return v26;
}

- (id)decompressAVDepthData_LZ:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  depthCodecType = self->_depthCodecType;
  switch(depthCodecType)
  {
    case 1280992882:
      v8 = 1;
      break;
    case 1280992883:
      v8 = 0;
      break;
    case 1280994657:
      v8 = 2;
      break;
    default:
      v8 = 3;
      break;
  }

  v9 = [objc_opt_class() dataWithCMSampleBuffer:a3];
  v10 = v9;
  if (v9)
  {
    v25 = 0;
    v11 = [v9 decompressedDataUsingAlgorithm:v8 error:&v25];
    v12 = v25;
    v13 = v12;
    if (!v11 || v12)
    {
      v21 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_LZ:error:];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
        *a4 = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_38;
    }

    v14 = [(JFXDepthDecompressor *)self incompleteImageSourceAuxDataInfoDict:a3 error:a4];
    v15 = v14;
    if (!v14)
    {
      v22 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_LZ:error:];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
        v17 = 0;
        *a4 = v13 = 0;
      }

      else
      {
        v17 = 0;
        v13 = 0;
      }

      goto LABEL_37;
    }

    v16 = [v14 mutableCopy];
    [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD2C60]];
    v24 = 0;
    v17 = [MEMORY[0x277CE5B70] depthDataFromDictionaryRepresentation:v16 error:&v24];
    v13 = v24;
    if (!v17)
    {
      v18 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_LZ:error:];
      }

      if (v13)
      {
        if (a4)
        {
          v19 = v13;
LABEL_35:
          *a4 = v19;
        }
      }

      else if (a4)
      {
        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
        goto LABEL_35;
      }
    }

LABEL_37:
LABEL_38:

    goto LABEL_39;
  }

  v20 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [JFXDepthDecompressor decompressAVDepthData_LZ:error:];
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    v17 = 0;
    *a4 = v13 = 0;
  }

  else
  {
    v17 = 0;
    v13 = 0;
  }

LABEL_39:

  return v17;
}

- (id)decompressAVDepthData_BGRA:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (ImageBuffer)
  {
    v6 = copyBGRAToFloatDepthBuffer(ImageBuffer, 0);
    v7 = [JFXDepthCompressor fakeAuxDepthInfoDictionaryForCVPixelBuffer:v6];
    v8 = [MEMORY[0x277CE5B70] depthDataFromDictionaryRepresentation:v7 error:a4];
    v9 = [v8 depthDataByReplacingDepthDataMapWithPixelBuffer:v6 error:a4];
    CVPixelBufferRelease(v6);
  }

  else
  {
    v10 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthDecompressor decompressAVDepthData_BGRA:error:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)decompressAVDepthData_HEVC10:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  parameterSetCountOut = 0;
  NALUnitHeaderLengthOut = 0;
  v43 = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut) || !parameterSetCountOut)
  {
    goto LABEL_13;
  }

  v8 = malloc_type_malloc(8 * parameterSetCountOut, 0x10040436913F5uLL);
  v9 = malloc_type_malloc(8 * parameterSetCountOut, 0x100004000313F17uLL);
  if (parameterSetCountOut)
  {
    v10 = 0;
    for (i = 0; i < parameterSetCountOut; ++i)
    {
      CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(FormatDescription, i, &v8[v10], &v9[v10], &parameterSetCountOut, 0);
      v12 = parameterSetCountOut;
      ++v10;
    }

    if (parameterSetCountOut > 3)
    {
      formatDescriptionOut = 0;
      --parameterSetCountOut;
      v13 = *MEMORY[0x277CBECE8];
      if (!CMVideoFormatDescriptionCreateFromHEVCParameterSets(*MEMORY[0x277CBECE8], v12 - 1, v8, v9, NALUnitHeaderLengthOut, 0, &formatDescriptionOut))
      {
        memset(&timingInfoOut, 0, sizeof(timingInfoOut));
        CMSampleBufferGetSampleTimingInfo(a3, 0, &timingInfoOut);
        sampleSizeArray = CMSampleBufferGetSampleSize(a3, 0);
        DataBuffer = CMSampleBufferGetDataBuffer(a3);
        if (CMSampleBufferCreate(v13, DataBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &v43))
        {
          v15 = JFXLog_DebugDepthCodec();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [JFXDepthDecompressor decompressAVDepthData_HEVC10:error:];
          }
        }
      }
    }
  }

  free(v8);
  free(v9);
  v16 = v43;
  if (!v43)
  {
LABEL_13:
    v43 = a3;
    v16 = a3;
  }

  v17 = CMSampleBufferGetFormatDescription(v16);
  v18 = CMFormatDescriptionEqual(self->_previousFormatDescription, v17);
  videoDecoderInterface = self->_videoDecoderInterface;
  if (!videoDecoderInterface || !v18)
  {
    v20 = [[JFXVideoDecoderInterface alloc] initWithFormatDescription:v17];
    v21 = self->_videoDecoderInterface;
    self->_videoDecoderInterface = v20;

    previousFormatDescription = self->_previousFormatDescription;
    if (previousFormatDescription)
    {
      CFRelease(previousFormatDescription);
    }

    self->_previousFormatDescription = CFRetain(v17);
    videoDecoderInterface = self->_videoDecoderInterface;
  }

  v23 = [(JFXVideoDecoderInterface *)videoDecoderInterface decodeFrame:v43];
  if (v23)
  {
    v24 = v23;
    v25 = copyL010ToFloatDepthBuffer(v23, 0);
    if (!v25)
    {
      v27 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_HEVC10:error:];
      }

      v29 = 0;
      goto LABEL_43;
    }

    v26 = v25;
    v27 = [(JFXDepthDecompressor *)self incompleteImageSourceAuxDataInfoDict:a3 error:a4];
    if (a4 && *a4)
    {
      v28 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_HEVC10:error:];
      }

      v29 = 0;
      goto LABEL_42;
    }

    v31 = [JFXDepthCompressor NSDataFromFloatDepth32:v26];
    v32 = [v27 mutableCopy];
    [v32 setObject:v31 forKeyedSubscript:*MEMORY[0x277CD2C60]];
    v39 = 0;
    v29 = [MEMORY[0x277CE5B70] depthDataFromDictionaryRepresentation:v32 error:&v39];
    v33 = v39;
    v28 = v33;
    if (v33)
    {
      if (a4)
      {
        v34 = v33;
        *a4 = v28;
      }

      v35 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_LZ:error:];
      }
    }

    else
    {
      v36 = [v29 depthDataMap];
      if (!v36)
      {
LABEL_41:

LABEL_42:
        CVPixelBufferRelease(v26);
LABEL_43:

        CVPixelBufferRelease(v24);
        goto LABEL_44;
      }

      v37 = v36;
      v35 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_HEVC10:v37 error:?];
      }
    }

    goto LABEL_41;
  }

  v30 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [JFXDepthDecompressor decompressAVDepthData_HEVC10:error:];
  }

  v29 = 0;
LABEL_44:

  return v29;
}

- (id)decompressAVDepthData_Photo:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  v5 = [objc_opt_class() dataWithCMSampleBuffer:a3];
  v6 = v5;
  if (!v5)
  {
    v18 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthDecompressor decompressAVDepthData_Photo:error:];
    }

    goto LABEL_15;
  }

  v7 = CGImageSourceCreateWithData(v5, 0);
  if (!v7)
  {
    v18 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthDecompressor decompressAVDepthData_Photo:error:];
    }

LABEL_15:

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_24;
  }

  v8 = v7;
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v7);
  v10 = CGImageSourceCopyPropertiesAtIndex(v8, PrimaryImageIndex, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v8, PrimaryImageIndex, *MEMORY[0x277CD2C88]);
    v21 = 0;
    v13 = [MEMORY[0x277CE5B70] depthDataFromDictionaryRepresentation:v12 error:&v21];
    v14 = v21;
    v15 = v14;
    if (v14)
    {
      if (a4)
      {
        v16 = v14;
        *a4 = v15;
      }

      v17 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [JFXDepthDecompressor decompressAVDepthData_LZ:error:];
      }
    }
  }

  else
  {
    v19 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [JFXDepthDecompressor decompressAVDepthData_Photo:error:];
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  CFRelease(v8);
LABEL_24:

  return v13;
}

+ (id)trackOptionsForDepthCodecType:(int)a3 error:(id *)a4
{
  if (a3 <= 1280994656)
  {
    if (a3 > 1280992881)
    {
      if ((a3 - 1280992882) < 2)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    if (a3 != 1111970369 && a3 != 1212493921)
    {
      v5 = 1212494384;
      goto LABEL_14;
    }

LABEL_15:
    v6 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_17;
  }

  if (a3 <= 1499082807)
  {
    if (a3 == 1280994657)
    {
      goto LABEL_15;
    }

    v5 = 1280997986;
  }

  else
  {
    if (a3 == 1499082808 || a3 == 1499083056)
    {
      goto LABEL_15;
    }

    v5 = 1499082849;
  }

LABEL_14:
  if (a3 == v5)
  {
    goto LABEL_15;
  }

LABEL_20:
  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
  }

  v6 = [MEMORY[0x277CBEAC0] dictionary];
LABEL_17:

  return v6;
}

- (void)decompressAVDepthData_HEVC10:(__CVBuffer *)a1 error:.cold.4(__CVBuffer *a1)
{
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

@end