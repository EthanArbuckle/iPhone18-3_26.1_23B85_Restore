@interface MOVStreamIOUtility
+ (BOOL)attachmentsContainTopLeftChromaLocations:(id)locations;
+ (BOOL)attachmentsContainsRec2020orRec2100ColorMatrices:(id)matrices;
+ (BOOL)attachmentsContainsRec2020orRec2100ColorPrimaries:(id)primaries;
+ (BOOL)attachmentsRepresentInterlacedFields:(id)fields;
+ (BOOL)dictionary:(id)dictionary BOOLeanValueForKey:(id)key;
+ (BOOL)formatDescriptionRepresentsVideoRange:(id)range;
+ (BOOL)isEncoderAvailableForEncoderType:(int)type;
+ (BOOL)isEncoderAvailableWithEncoderName:(id)name;
+ (BOOL)isKeyFrame:(opaqueCMSampleBuffer *)frame error:(id *)error;
+ (BOOL)isMOVStreamIOMovMetadataIdentifier:(id)identifier;
+ (BOOL)isSlimXEncodedTrack:(id)track;
+ (BOOL)isValidJSONObject:(id)object path:(id)path;
+ (BOOL)key:(id)key hasUnspecifiedValue:(id)value;
+ (BOOL)pixelFormatIs420Sampled:(unsigned int)sampled;
+ (BOOL)pixelFormatIs422Sampled:(unsigned int)sampled;
+ (BOOL)saveSessionStartTime:(id *)time toMovieAtURL:(id)l error:(id *)error;
+ (BOOL)verifyExactBytesPerRow:(id)row width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
+ (CVSMPTETime)advanceTimeCode:(SEL)code frameQuanta:(CVSMPTETime *)quanta dropFrame:(int64_t)frame;
+ (CVSMPTETime)timeCodeFromString:(SEL)string isDropFrame:(id)frame;
+ (CVSMPTETime)timecode32ForSampleBuffer:(SEL)buffer dropFrame:(opaqueCMSampleBuffer *)frame;
+ (CVSMPTETime)timecodeForFrameNumber32:(SEL)number32 formatDescription:(int)description;
+ (double)bytesPerPixelForFormat:(unsigned int)format;
+ (double)clampedQuality:(double)result;
+ (double)cmQualityFromMIOHEVCQuality:(int64_t)quality;
+ (double)deriveMaxKeyFrameIntervalFromFps:(double)fps;
+ (double)transformAngleFromVideoOrientation:(int)orientation;
+ (id)AVEProfileLevel10BitMonochrome;
+ (id)addEncodingQuality:(double)quality toConfiguration:(id)configuration;
+ (id)addTrackTypeInfo:(unint64_t)info toConfiguration:(id)configuration;
+ (id)addTransform:(CGAffineTransform *)transform toConfiguration:(id)configuration;
+ (id)audioNoneEncoderConfig;
+ (id)color8bitHEVCWithAlphaEncoderConfig;
+ (id)color8bitHEVCWithAlphaEncoderConfigWithBitrate:(unint64_t)bitrate;
+ (id)colorH264EncoderConfig;
+ (id)colorH264EncoderConfigWithBitrate:(unint64_t)bitrate;
+ (id)colorHEVCEncoderConfig;
+ (id)colorHEVCEncoderConfigWithBitrate:(unint64_t)bitrate;
+ (id)colorHEVCEncoderConfigWithQuality:(double)quality;
+ (id)colorHEVCLosslessEncoderConfig;
+ (id)colorRecordingConfigBitDepth:(unint64_t)depth bitrate:(unint64_t)bitrate chromaSampling:(int64_t)sampling error:(id *)error;
+ (id)colorRecordingConfigBitDepth:(unint64_t)depth chromaSampling:(int64_t)sampling error:(id *)error;
+ (id)colorRecordingConfigBitDepth:(unint64_t)depth lossless:(BOOL)lossless chromaSampling:(int64_t)sampling error:(id *)error;
+ (id)colorRecordingConfigBitDepth:(unint64_t)depth quality:(double)quality chromaSampling:(int64_t)sampling error:(id *)error;
+ (id)colorWithAlphaLossless8bitHEVCEncoderConfig;
+ (id)colorimetricWarningsForColorPixelBufferAttachments:(id)attachments pixelFormat:(unsigned int)format;
+ (id)colorimetricWarningsForGrayscalePixelBufferAttachments:(id)attachments pixelFormat:(unsigned int)format;
+ (id)colorimetricWarningsForPixelBufferAttachments:(id)attachments pixelFormat:(unsigned int)format;
+ (id)configWithEncoderType:(int)type;
+ (id)customConfigWithOutputSettings:(id)settings;
+ (id)customEncoderConfig;
+ (id)customEncoderConfigWithEmbeddedConfiguration:(id)configuration;
+ (id)defaultVCPRecordingConfigWithBitrate:(unint64_t)bitrate frameRate:(double)rate;
+ (id)dictionary:(id)dictionary numberValueForKey:(id)key;
+ (id)dictionary:(id)dictionary stringValueForKey:(id)key;
+ (id)getCustomAssociatedMetadataStreamIdFromTrack:(id)track;
+ (id)getJsonFriendlyCopy:(id)copy;
+ (id)getPlistFriendlyCopyOf:(id)of;
+ (id)hevc10bitQuality:(int64_t)quality chromaSampling:(int64_t)sampling;
+ (id)hevc8bitQuality:(int64_t)quality chromaSampling:(int64_t)sampling;
+ (id)jpegEncoderConfig;
+ (id)jpegEncoderConfigWithQuality:(double)quality;
+ (id)jsonFriendlyCopy:(id)copy;
+ (id)monochrome10bitHEVCEncoderConfig;
+ (id)monochrome10bitHEVCEncoderConfigWithBitrate:(unint64_t)bitrate;
+ (id)monochrome10bitHEVCEncoderConfigWithQuality:(double)quality;
+ (id)monochrome10bitHEVCLosslessEncoderConfig;
+ (id)monochrome10bitHEVCLosslessEncoderConfigAllowFrameReordering:(BOOL)reordering;
+ (id)monochrome8bitHEVCEncoderConfig;
+ (id)monochrome8bitHEVCEncoderConfigWithBitrate:(unint64_t)bitrate;
+ (id)monochrome8bitHEVCEncoderConfigWithQuality:(double)quality;
+ (id)monochrome8bitHEVCLosslessEncoderConfig;
+ (id)monochrome8bitHEVCLosslessEncoderConfigAllowFrameReordering:(BOOL)reordering;
+ (id)nonMIOTrackMetadataItemsInMetadataItems:(id)items;
+ (id)noneEncoderConfig;
+ (id)plistDeserializedObject:(id)object error:(id *)error;
+ (id)plistFriendlyCopyOf:(id)of;
+ (id)plistSerializedObject:(id)object error:(id *)error;
+ (id)proRes422EncoderConfig;
+ (id)proRes422EncoderConfigWithQuality:(int64_t)quality;
+ (id)proRes4444EncoderConfig;
+ (id)proRes4444EncoderConfigWithHighQuality;
+ (id)qtTrackNameForAssociatedAttachmentsTrack:(id)track;
+ (id)qtTrackNameForAssociatedTimeCodeTrack:(id)track;
+ (id)reservedMIOTrackMetadataKeys;
+ (id)sampleBufferConfigWithPixelFormat:(unsigned int)format;
+ (id)slimEncoderConfig;
+ (id)slimXEncoderConfig;
+ (id)stereoConfigurationWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format frameRate:(double)rate additionalCompressionProperties:(id)properties;
+ (id)stereoConfigurationWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format frameRate:(double)rate leftAndRightViewIDs:(id)ds additionalCompressionProperties:(id)properties;
+ (id)stringFromTimeCode:(CVSMPTETime *)code dropFrame:(BOOL)frame;
+ (id)stringFromTimeCode:(CVSMPTETime *)code dropFrame:(BOOL)frame addSubframes:(BOOL)subframes;
+ (int)frameNumber32ForTimecode:(CVSMPTETime *)timecode usingFormatDescription:(opaqueCMFormatDescription *)description;
+ (int64_t)chromaSamplingForTrack:(id)track;
+ (int64_t)chromaSamplingFromMediaFormatDescription:(opaqueCMFormatDescription *)description;
+ (int64_t)frameNumber64ForTimecode:(CVSMPTETime *)timecode usingFormatDescription:(opaqueCMFormatDescription *)description;
+ (opaqueCMFormatDescription)createFormatDescriptionFromPixelBuffer:(__CVBuffer *)buffer;
+ (opaqueCMFormatDescription)createL008FormatDescriptionFromCompandedRawBayerFormatDescription:(opaqueCMFormatDescription *)description;
+ (opaqueCMFormatDescription)createL008FormatDescriptionFromNonPlanarFormatDescription:(opaqueCMFormatDescription *)description;
+ (opaqueCMFormatDescription)createL010FormatDescriptionFromL016FormatDescription:(opaqueCMFormatDescription *)description;
+ (opaqueCMFormatDescription)createL010FormatDescriptionFromRawBayerFormatDescription:(opaqueCMFormatDescription *)description;
+ (opaqueCMFormatDescription)createTimeCode32FormatDescriptionWithFrameRate:(double)rate dropFrame:(BOOL)frame error:(id *)error;
+ (opaqueCMFormatDescription)createTimeCode32FormatDescriptionWithFrameRate:(double)rate tcDropFrame:(BOOL)frame error:(id *)error;
+ (opaqueCMFormatDescription)createTimeCode64FormatDescriptionWithFrameRate:(double)rate dropFrame:(BOOL)frame error:(id *)error;
+ (opaqueCMFormatDescription)createTimeCodeFormatDescriptionWithFrameRate:(double)rate error:(id *)error;
+ (opaqueCMFormatDescription)createxf20FormatDescriptionFromRawBayerFormatDescription:(opaqueCMFormatDescription *)description usingFirstPlaneOnly:(BOOL)only;
+ (opaqueCMFormatDescription)formatForPixelBuffer:(__CVBuffer *)buffer;
+ (opaqueCMFormatDescription)newFormatDescriptionFromPixelBuffer:(__CVBuffer *)buffer;
+ (opaqueCMSampleBuffer)createTimecode32SampleBufferWithSMPTETime:(CVSMPTETime *)time formatDescription:(opaqueCMFormatDescription *)description pts:(id *)pts error:(id *)error;
+ (opaqueCMSampleBuffer)createTimecode64SampleBufferWithSMPTETime:(CVSMPTETime *)time formatDescription:(opaqueCMFormatDescription *)description pts:(id *)pts error:(id *)error;
+ (opaqueCMSampleBuffer)createTimecodeSampleBufferWithSMPTETime:(CVSMPTETime *)time formatDescription:(opaqueCMFormatDescription *)description pts:(id *)pts error:(id *)error;
+ (unint64_t)getPreferredBytesPerRowAlignmentSize;
+ (unint64_t)getPreferredPlaneAlignmentSize;
+ (unsigned)detectPixelFormatForAsset:(id)asset videoTrackId:(int)id error:(id *)error;
+ (unsigned)guessPixelFormatForTrack:(id)track;
+ (unsigned)guessPixelFormatFromFormatDescription:(opaqueCMFormatDescription *)description;
@end

@implementation MOVStreamIOUtility

+ (id)stringFromTimeCode:(CVSMPTETime *)code dropFrame:(BOOL)frame
{
  v6 = *code;
  v4 = [MOVStreamIOUtility stringFromTimeCode:&v6 dropFrame:frame addSubframes:0];

  return v4;
}

+ (id)stringFromTimeCode:(CVSMPTETime *)code dropFrame:(BOOL)frame addSubframes:(BOOL)subframes
{
  hours = code->hours;
  minutes = code->minutes;
  seconds = code->seconds;
  if (frame)
  {
    v8 = 59;
  }

  else
  {
    v8 = 58;
  }

  if (subframes)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%02d:%02d:%02d%c%02d.%03d", hours, minutes, seconds, v8, code->frames, code->subframes];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%02d:%02d:%02d%c%02d", hours, minutes, seconds, v8, code->frames, v11];
  }
  v9 = ;

  return v9;
}

+ (CVSMPTETime)timeCodeFromString:(SEL)string isDropFrame:(id)frame
{
  frameCopy = frame;
  if (a5)
  {
    *a5 = 0;
  }

  *&retstr->subframes = 0;
  *&retstr->type = 0;
  *&retstr->hours = 0;
  v26 = frameCopy;
  v8 = [frameCopy componentsSeparatedByString:@":"];
  if ([v8 count] >= 3)
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    retstr->hours = [v9 integerValue];

    v10 = [v8 objectAtIndexedSubscript:1];
    retstr->minutes = [v10 integerValue];

    if ([v8 count] == 4)
    {
      v11 = [v8 objectAtIndexedSubscript:2];
      retstr->seconds = [v11 integerValue];

      v12 = [v8 objectAtIndexedSubscript:3];
      v13 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
      v14 = [v12 componentsSeparatedByCharactersInSet:v13];

      if ([v14 count] == 2)
      {
        v15 = [v14 objectAtIndexedSubscript:0];
        retstr->frames = [v15 integerValue];

        v16 = [v14 objectAtIndexedSubscript:1];
        retstr->subframes = [v16 integerValue];
      }

      else
      {
        retstr->frames = [v12 intValue];
      }
    }

    else
    {
      v12 = [v8 objectAtIndexedSubscript:2];
      v17 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];;
      v18 = [v12 componentsSeparatedByCharactersInSet:v17];

      if ([v18 count] == 2)
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        retstr->seconds = [v19 integerValue];

        v20 = [v18 objectAtIndexedSubscript:1];
        v21 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
        v14 = [v20 componentsSeparatedByCharactersInSet:v21];

        if ([v14 count] == 2)
        {
          v22 = [v14 objectAtIndexedSubscript:0];
          retstr->frames = [v22 integerValue];

          v23 = [v14 objectAtIndexedSubscript:1];
          retstr->subframes = [v23 integerValue];
        }

        else
        {
          retstr->frames = [v20 intValue];
        }

        v24 = [v12 rangeOfString:@";"];
        if (a5 && v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *a5 = 1;
        }
      }

      else
      {
        v14 = v18;
      }
    }

    v8 = v14;
  }

  return result;
}

+ (double)transformAngleFromVideoOrientation:(int)orientation
{
  result = 0.0;
  if (orientation <= 4)
  {
    return dbl_25792B440[orientation];
  }

  return result;
}

+ (id)jsonFriendlyCopy:(id)copy
{
  v3 = [self getJsonFriendlyCopy:copy];

  return v3;
}

+ (id)plistFriendlyCopyOf:(id)of
{
  v3 = [self getPlistFriendlyCopyOf:of];

  return v3;
}

+ (opaqueCMFormatDescription)formatForPixelBuffer:(__CVBuffer *)buffer
{
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], buffer, &formatDescriptionOut);
  return formatDescriptionOut;
}

+ (opaqueCMFormatDescription)createFormatDescriptionFromPixelBuffer:(__CVBuffer *)buffer
{
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], buffer, &formatDescriptionOut);
  return formatDescriptionOut;
}

+ (opaqueCMFormatDescription)newFormatDescriptionFromPixelBuffer:(__CVBuffer *)buffer
{
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], buffer, &formatDescriptionOut);
  return formatDescriptionOut;
}

+ (unint64_t)getPreferredPlaneAlignmentSize
{
  v3 = 8;
  v4 = 0;
  sysctlbyname("hw.pagesize", &v4, &v3, 0, 0);
  return v4;
}

+ (unint64_t)getPreferredBytesPerRowAlignmentSize
{
  v3 = 8;
  v4 = 0;
  sysctlbyname("hw.cachelinesize", &v4, &v3, 0, 0);
  return v4;
}

+ (BOOL)pixelFormatIs420Sampled:(unsigned int)sampled
{
  result = 1;
  if (sampled <= 1563981359)
  {
    if (sampled > 762865199)
    {
      if (sampled > 875704437)
      {
        if (sampled > 1534359087)
        {
          if (sampled > 1534621231)
          {
            if (sampled == 1534621232)
            {
              return result;
            }

            v4 = 1563977264;
          }

          else
          {
            if (sampled == 1534359088)
            {
              return result;
            }

            v4 = 1534617136;
          }
        }

        else if (sampled > 1530426927)
        {
          if (sampled == 1530426928)
          {
            return result;
          }

          v4 = 1534354992;
        }

        else
        {
          if (sampled == 875704438)
          {
            return result;
          }

          v4 = 1530422832;
        }
      }

      else if (sampled > 795371055)
      {
        if (sampled > 796423727)
        {
          if (sampled == 796423728)
          {
            return result;
          }

          v4 = 875704422;
        }

        else
        {
          if (sampled == 795371056)
          {
            return result;
          }

          v4 = 796419632;
        }
      }

      else if (sampled > 792225327)
      {
        if (sampled == 792225328)
        {
          return result;
        }

        v4 = 792229424;
      }

      else
      {
        if (sampled == 762865200)
        {
          return result;
        }

        v4 = 762869296;
      }
    }

    else if (sampled > 645166639)
    {
      if (sampled > 645429039)
      {
        if (sampled > 758674991)
        {
          if (sampled == 758674992)
          {
            return result;
          }

          v4 = 761816624;
        }

        else
        {
          if (sampled == 645429040)
          {
            return result;
          }

          v4 = 758670896;
        }
      }

      else if (sampled > 645424687)
      {
        if (sampled == 645424688)
        {
          return result;
        }

        v4 = 645428784;
      }

      else
      {
        if (sampled == 645166640)
        {
          return result;
        }

        v4 = 645279800;
      }
    }

    else if (sampled > 644376111)
    {
      if (sampled > 645101103)
      {
        if (sampled == 645101104)
        {
          return result;
        }

        v4 = 645162544;
      }

      else
      {
        if (sampled == 644376112)
        {
          return result;
        }

        v4 = 645097008;
      }
    }

    else if (sampled > 641230383)
    {
      if (sampled == 641230384)
      {
        return result;
      }

      v4 = 641234480;
    }

    else
    {
      if (sampled == 590898736)
      {
        return result;
      }

      v4 = 590902832;
    }

    goto LABEL_98;
  }

  if (sampled > 1982882103)
  {
    if (sampled > 2087216687)
    {
      if (sampled > 2100852271)
      {
        if (sampled > 2105046575)
        {
          if (sampled == 2105046576)
          {
            return result;
          }

          v6 = 30512;
        }

        else
        {
          if (sampled == 2100852272)
          {
            return result;
          }

          v6 = 26160;
        }

        v4 = v6 | 0x7D780000;
      }

      else if (sampled > 2088269359)
      {
        if (sampled == 2088269360)
        {
          return result;
        }

        v4 = 2100848176;
      }

      else
      {
        if (sampled == 2087216688)
        {
          return result;
        }

        v4 = 2088265264;
      }
    }

    else if (sampled > 2021077551)
    {
      if (sampled > 2084070959)
      {
        if (sampled == 2084070960)
        {
          return result;
        }

        v4 = 2084075056;
      }

      else
      {
        if (sampled == 2021077552)
        {
          return result;
        }

        v4 = 2033463856;
      }
    }

    else if (sampled > 2016686639)
    {
      if (sampled == 2016686640)
      {
        return result;
      }

      v4 = 2019963440;
    }

    else
    {
      if (sampled == 1982882104)
      {
        return result;
      }

      v4 = 1983013176;
    }
  }

  else
  {
    if (sampled > 1886680623)
    {
      if (sampled > 1937125935)
      {
        if (sampled > 1953903151)
        {
          if (sampled == 1953903152)
          {
            return result;
          }

          v4 = 1953968688;
        }

        else
        {
          if (sampled == 1937125936)
          {
            return result;
          }

          v4 = 1952854576;
        }

        goto LABEL_98;
      }

      if (sampled > 1886859823)
      {
        if (sampled == 1886859824)
        {
          return result;
        }

        v4 = 1936077360;
        goto LABEL_98;
      }

      if (sampled == 1886680624)
      {
        return result;
      }

      v5 = 30512;
    }

    else
    {
      if (sampled <= 1751527983)
      {
        if (sampled > 1568175663)
        {
          if (sampled == 1568175664)
          {
            return result;
          }

          v4 = 1714696752;
        }

        else
        {
          if (sampled == 1563981360)
          {
            return result;
          }

          v4 = 1568171568;
        }

        goto LABEL_98;
      }

      if (sampled <= 1885745711)
      {
        if (sampled == 1751527984)
        {
          return result;
        }

        v4 = 1882468912;
        goto LABEL_98;
      }

      if (sampled == 1885745712)
      {
        return result;
      }

      v5 = 26160;
    }

    v4 = v5 | 0x70740000;
  }

LABEL_98:
  if (sampled != v4)
  {
    return 0;
  }

  return result;
}

+ (BOOL)pixelFormatIs422Sampled:(unsigned int)sampled
{
  result = 1;
  if (sampled <= 1568175665)
  {
    if (sampled <= 762865201)
    {
      if (sampled > 645166641)
      {
        if (sampled > 645428785)
        {
          if (sampled > 645494117)
          {
            if (sampled == 645494118)
            {
              return result;
            }

            v5 = 645494131;
            goto LABEL_103;
          }

          if (sampled == 645428786)
          {
            return result;
          }

          v8 = 30514;
        }

        else
        {
          if (sampled <= 645411442)
          {
            if (sampled == 645166642)
            {
              return result;
            }

            v5 = 645280312;
            goto LABEL_103;
          }

          if (sampled == 645411443)
          {
            return result;
          }

          v8 = 26162;
        }

        v5 = v8 | 0x26780000;
      }

      else
      {
        if (sampled > 645097009)
        {
          if (sampled > 645149298)
          {
            if (sampled == 645149299)
            {
              return result;
            }

            v5 = 645162546;
            goto LABEL_103;
          }

          if (sampled == 645097010)
          {
            return result;
          }

          v7 = 30258;
        }

        else
        {
          if (sampled <= 644376113)
          {
            if (sampled == 641230386)
            {
              return result;
            }

            v5 = 641234482;
            goto LABEL_103;
          }

          if (sampled == 644376114)
          {
            return result;
          }

          v7 = 12915;
        }

        v5 = v7 | 0x26730000;
      }

LABEL_103:
      if (sampled != v5)
      {
        return 0;
      }

      return result;
    }

    if (sampled <= 1530422833)
    {
      if (sampled > 846624101)
      {
        if (sampled > 875704933)
        {
          if (sampled == 875704934)
          {
            return result;
          }

          v5 = 875704950;
        }

        else
        {
          if (sampled == 846624102)
          {
            return result;
          }

          v5 = 846624121;
        }
      }

      else if (sampled > 796419633)
      {
        if (sampled == 796419634)
        {
          return result;
        }

        v5 = 796423730;
      }

      else
      {
        if (sampled == 762865202)
        {
          return result;
        }

        v5 = 762869298;
      }

      goto LABEL_103;
    }

    if (sampled <= 1534617137)
    {
      if (sampled > 1534354993)
      {
        if (sampled == 1534354994)
        {
          return result;
        }

        v5 = 1534359090;
      }

      else
      {
        if (sampled == 1530422834)
        {
          return result;
        }

        v5 = 1530426930;
      }

      goto LABEL_103;
    }

    if (sampled <= 1563977265)
    {
      if (sampled == 1534617138)
      {
        return result;
      }

      v5 = 1534621234;
      goto LABEL_103;
    }

    if (sampled != 1563977266 && sampled != 1563981362)
    {
      v5 = 1568171570;
      goto LABEL_103;
    }
  }

  else if (sampled > 1983000885)
  {
    if (sampled <= 2037741157)
    {
      if (sampled > 2016686641)
      {
        if (sampled > 2019963503)
        {
          if (sampled == 2019963504)
          {
            return result;
          }

          v5 = 2021077554;
        }

        else
        {
          if (sampled == 2016686642)
          {
            return result;
          }

          v5 = 2019963442;
        }

        goto LABEL_103;
      }

      if (sampled > 2016555631)
      {
        if (sampled == 2016555632)
        {
          return result;
        }

        v5 = 2016567667;
        goto LABEL_103;
      }

      if (sampled == 1983000886)
      {
        return result;
      }

      v4 = 24888;
      goto LABEL_39;
    }

    if (sampled <= 2100848177)
    {
      if (sampled > 2088265265)
      {
        if (sampled == 2088265266)
        {
          return result;
        }

        v5 = 2088269362;
      }

      else
      {
        if (sampled == 2037741158)
        {
          return result;
        }

        v5 = 2037741171;
      }

      goto LABEL_103;
    }

    if (sampled <= 2105042481)
    {
      if (sampled == 2100848178)
      {
        return result;
      }

      v5 = 2100852274;
      goto LABEL_103;
    }

    if (sampled != 2105042482 && sampled != 2105046578)
    {
      v5 = 2105046834;
      goto LABEL_103;
    }
  }

  else
  {
    if (sampled <= 1886859825)
    {
      if (sampled > 1885745713)
      {
        if (sampled > 1886680625)
        {
          if (sampled == 1886680626)
          {
            return result;
          }

          v6 = 30514;
        }

        else
        {
          if (sampled == 1885745714)
          {
            return result;
          }

          v6 = 26162;
        }

        v5 = v6 | 0x70740000;
      }

      else if (sampled > 1751527985)
      {
        if (sampled == 1751527986)
        {
          return result;
        }

        v5 = 1882468914;
      }

      else
      {
        if (sampled == 1568175666)
        {
          return result;
        }

        v5 = 1630697081;
      }

      goto LABEL_103;
    }

    if (sampled <= 1949458802)
    {
      if (sampled > 1936077361)
      {
        if (sampled == 1936077362)
        {
          return result;
        }

        v5 = 1937125938;
      }

      else
      {
        if (sampled == 1886859826)
        {
          return result;
        }

        v5 = 1932681587;
      }

      goto LABEL_103;
    }

    if (sampled <= 1953903153)
    {
      if (sampled == 1949458803)
      {
        return result;
      }

      v5 = 1952854578;
      goto LABEL_103;
    }

    if (sampled != 1953903154 && sampled != 1953968690)
    {
      v4 = 12592;
LABEL_39:
      v5 = v4 | 0x76320000;
      goto LABEL_103;
    }
  }

  return result;
}

+ (id)dictionary:(id)dictionary numberValueForKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)dictionary:(id)dictionary stringValueForKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)dictionary:(id)dictionary BOOLeanValueForKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  if (keyCopy)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)formatDescriptionRepresentsVideoRange:(id)range
{
  v3 = [self dictionary:range stringValueForKey:*MEMORY[0x277CC4EF8]];
  v4 = [v3 isEqualToString:*MEMORY[0x277CC4F08]];

  return v4;
}

+ (BOOL)attachmentsContainsRec2020orRec2100ColorPrimaries:(id)primaries
{
  v3 = [self dictionary:primaries stringValueForKey:*MEMORY[0x277CC4C00]];
  v4 = [v3 isEqualToString:*MEMORY[0x277CC4C18]];

  return v4;
}

+ (BOOL)attachmentsContainsRec2020orRec2100ColorMatrices:(id)matrices
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [self dictionary:matrices stringValueForKey:*MEMORY[0x277CC4D10]];
  if (v3 && (v12 = 0u, v13 = 0u, v10 = 0u, v11 = 0u, (v4 = [&unk_2868E3BB8 countByEnumeratingWithState:&v10 objects:v14 count:16]) != 0))
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_2868E3BB8);
        }

        v7 = CVYCbCrMatrixGetStringForIntegerCodePoint([*(*(&v10 + 1) + 8 * i) intValue]);
        if (v7 && ([v3 isEqualToString:v7] & 1) != 0)
        {

          v8 = 1;
          goto LABEL_14;
        }
      }

      v4 = [&unk_2868E3BB8 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:

  return v8;
}

+ (BOOL)attachmentsRepresentInterlacedFields:(id)fields
{
  v3 = [fields objectForKeyedSubscript:*MEMORY[0x277CC4C40]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)attachmentsContainTopLeftChromaLocations:(id)locations
{
  v20 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *MEMORY[0x277CC4B80];
  v18[0] = *MEMORY[0x277CC4B88];
  v18[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:{2, 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = *v15;
    v8 = *MEMORY[0x277CC4BC0];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [locationsCopy objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        v11 = v10;
        if (v10 && ([v10 isEqualToString:v8] & 1) == 0)
        {

          v12 = 0;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

+ (id)colorimetricWarningsForPixelBufferAttachments:(id)attachments pixelFormat:(unsigned int)format
{
  v4 = *&format;
  attachmentsCopy = attachments;
  if (+[MOVStreamIOUtility colorimetricWarningsForPixelBufferAttachments:pixelFormat:]::once != -1)
  {
    +[MOVStreamIOUtility colorimetricWarningsForPixelBufferAttachments:pixelFormat:];
  }

  v6 = +[MOVStreamIOUtility colorimetricWarningsForPixelBufferAttachments:pixelFormat:]::s_PixelFormatInfoDictionary;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    goto LABEL_7;
  }

  v13 = 0;
  v12 = 0x100000000;
  [v8 getValue:&v12];
  if (!HIDWORD(v12))
  {
    v9 = [MOVStreamIOUtility colorimetricWarningsForGrayscalePixelBufferAttachments:attachmentsCopy pixelFormat:v4];
    goto LABEL_9;
  }

  if (HIDWORD(v12) != 1)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = [MOVStreamIOUtility colorimetricWarningsForColorPixelBufferAttachments:attachmentsCopy pixelFormat:v4];
LABEL_9:
  v10 = v9;
LABEL_10:

  return v10;
}

void __80__MOVStreamIOUtility_colorimetricWarningsForPixelBufferAttachments_pixelFormat___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:18];
  for (i = 0; i != 216; i += 12)
  {
    v2 = *(&unk_25792B340 + i);
    v9 = v2;
    v3 = *(&unk_25792B340 + i + 8);
    v10 = v3;
    if (v3)
    {
      v4 = v2 == v3;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      __assert_rtn("+[MOVStreamIOUtility colorimetricWarningsForPixelBufferAttachments:pixelFormat:]_block_invoke", "MOVStreamIOUtility.mm", 548, "!info.pixelFormatAlt || (info.pixelFormat == info.pixelFormatAlt)");
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v9 objCType:"{?=IiI}"];
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      [v0 setObject:v5 forKeyedSubscript:v6];
    }
  }

  v7 = [v0 copy];
  v8 = +[MOVStreamIOUtility colorimetricWarningsForPixelBufferAttachments:pixelFormat:]::s_PixelFormatInfoDictionary;
  +[MOVStreamIOUtility colorimetricWarningsForPixelBufferAttachments:pixelFormat:]::s_PixelFormatInfoDictionary = v7;
}

+ (id)colorimetricWarningsForColorPixelBufferAttachments:(id)attachments pixelFormat:(unsigned int)format
{
  v121[1] = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  formatCopy = format;
  v78 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, format);
  v77 = *MEMORY[0x277CC0370];
  v6 = [attachmentsCopy objectForKey:?];

  v7 = 0;
  if (attachmentsCopy && v78)
  {
    v72 = *MEMORY[0x277CC4C00];
    if (v6)
    {
      v121[0] = *MEMORY[0x277CC4C00];
      v8 = v121;
      v9 = 1;
    }

    else
    {
      v10 = *MEMORY[0x277CC4CC0];
      v120[0] = *MEMORY[0x277CC4C00];
      v120[1] = v10;
      v8 = v120;
      v9 = 2;
    }

    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:v9];
    v71 = *MEMORY[0x277CC4D10];
    v119 = *MEMORY[0x277CC4D10];
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
    v80 = *MEMORY[0x277CC4B88];
    v118 = *MEMORY[0x277CC4B88];
    v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
    v117 = *MEMORY[0x277CC4BC8];
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
    v84 = objc_opt_new();
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v105 objects:v116 count:16];
    if (v12)
    {
      v13 = *v106;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v106 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v105 + 1) + 8 * i);
          v16 = [attachmentsCopy objectForKeyedSubscript:v15];
          v17 = v16 == 0;

          if (v17)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is required for all color pixel formats", v15];
            [v84 setObject:v18 forKeyedSubscript:v15];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v105 objects:v116 count:16];
      }

      while (v12);
    }

    if ([self formatDescriptionRepresentsYCbCr:v78])
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v19 = v75;
      v20 = [v19 countByEnumeratingWithState:&v101 objects:v115 count:16];
      if (v20)
      {
        v21 = *v102;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v102 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v101 + 1) + 8 * j);
            v24 = [attachmentsCopy objectForKeyedSubscript:v23];
            v25 = v24 == 0;

            if (v25)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is required for all pixel formats with YCbCr sampling", v23];
              [v84 setObject:v26 forKeyedSubscript:v23];
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v101 objects:v115 count:16];
        }

        while (v20);
      }
    }

    v83 = [objc_opt_class() pixelFormatIs420Sampled:formatCopy];
    if (v83 && ([self formatDescriptionRepresentsYCbCr:v78] & 1) == 0)
    {
      __assert_rtn("+[MOVStreamIOUtility colorimetricWarningsForColorPixelBufferAttachments:pixelFormat:]", "MOVStreamIOUtility.mm", 643, "false");
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v81 = v74;
    v27 = [v81 countByEnumeratingWithState:&v97 objects:v114 count:16];
    v28 = MEMORY[0x277CC4B80];
    if (v27)
    {
      v29 = *v98;
      v30 = *MEMORY[0x277CC4B80];
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v98 != v29)
          {
            objc_enumerationMutation(v81);
          }

          v32 = *(*(&v97 + 1) + 8 * k);
          v33 = [attachmentsCopy objectForKeyedSubscript:v32];
          v34 = v33;
          if (v83)
          {
            if (v33)
            {
              goto LABEL_41;
            }

            v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is required for all pixel formats with 4:2:0 subsampling", v32];
            [v84 setObject:v35 forKeyedSubscript:v32];
            goto LABEL_40;
          }

          if (v33)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is unexpectedly present for a pixel format without 4:2:0 subsampling", v32];
            [v84 setObject:v36 forKeyedSubscript:v32];

            if ([v32 isEqualToString:v80])
            {
              v37 = [attachmentsCopy objectForKeyedSubscript:v30];
              v38 = v37 == 0;

              if (!v38)
              {
                v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is unexpectedly present for a pixel format without 4:2:0 subsampling", v30];
                [v84 setObject:v35 forKeyedSubscript:v30];
LABEL_40:
              }
            }
          }

LABEL_41:
        }

        v27 = [v81 countByEnumeratingWithState:&v97 objects:v114 count:16];
      }

      while (v27);
    }

    v39 = [objc_opt_class() attachmentsRepresentInterlacedFields:attachmentsCopy];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v70 = *v28;
    v112 = *v28;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
    v41 = [v40 countByEnumeratingWithState:&v93 objects:v113 count:16];
    if (v41)
    {
      v42 = *v94;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v94 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = *(*(&v93 + 1) + 8 * m);
          v45 = [attachmentsCopy objectForKeyedSubscript:v44];
          if (v45)
          {
            v46 = 0;
          }

          else
          {
            v46 = v39;
          }

          if (v46 == 1)
          {
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is unexpectedly missing for a pixel format using interlaced scanning", v44];
            [v84 setObject:v47 forKeyedSubscript:v44];
          }
        }

        v41 = [v40 countByEnumeratingWithState:&v93 objects:v113 count:16];
      }

      while (v41);
    }

    v48 = [objc_opt_class() pixelFormatIs422Sampled:formatCopy];
    if (v48 && ([self formatDescriptionRepresentsYCbCr:v78] & 1) == 0)
    {
      __assert_rtn("+[MOVStreamIOUtility colorimetricWarningsForColorPixelBufferAttachments:pixelFormat:]", "MOVStreamIOUtility.mm", 706, "false");
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v49 = v73;
    v50 = [v49 countByEnumeratingWithState:&v89 objects:v111 count:16];
    if (v50)
    {
      v51 = *v90;
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v90 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v89 + 1) + 8 * n);
          v54 = [attachmentsCopy objectForKeyedSubscript:v53];
          if (v54)
          {
            v55 = v48;
          }

          else
          {
            v55 = 1;
          }

          if ((v55 & 1) == 0)
          {
            v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is unexpectedly present for a pixel format without 4:2:2 subsampling", v53];
            [v84 setObject:v56 forKeyedSubscript:v53];
          }
        }

        v50 = [v49 countByEnumeratingWithState:&v89 objects:v111 count:16];
      }

      while (v50);
    }

    if ([self attachmentsContainsRec2020orRec2100ColorPrimaries:attachmentsCopy])
    {
      if (([self formatDescriptionRepresentsVideoRange:v78] & 1) == 0)
      {
        v57 = [v84 objectForKeyedSubscript:v72];
        v58 = v57 == 0;

        if (v58)
        {
          [v84 setObject:@"Images with Rec 2020 or Rec 2100 color primaries are only defined for video range pixel formats." forKeyedSubscript:v72];
        }
      }

      if (([self attachmentsContainsRec2020orRec2100ColorMatrices:attachmentsCopy] & 1) == 0)
      {
        v59 = [v84 objectForKeyedSubscript:v71];
        v60 = v59 == 0;

        if (v60)
        {
          [v84 setObject:@"Images with Rec 2020 or Rec 2100 color primaries are only defined for attachments containing Rec 2020 or Rec 2100 YCbCr matrices." forKeyedSubscript:v71];
        }
      }

      if (v83 && ([self attachmentsContainTopLeftChromaLocations:attachmentsCopy] & 1) == 0)
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v109[0] = v80;
        v109[1] = v70;
        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
        v62 = [v61 countByEnumeratingWithState:&v85 objects:v110 count:16];
        if (v62)
        {
          v63 = *v86;
          do
          {
            for (ii = 0; ii != v62; ++ii)
            {
              if (*v86 != v63)
              {
                objc_enumerationMutation(v61);
              }

              v65 = *(*(&v85 + 1) + 8 * ii);
              v66 = [v84 objectForKeyedSubscript:v65];
              if (v66)
              {
              }

              else
              {
                v67 = [attachmentsCopy objectForKeyedSubscript:v65];
                v68 = v67 == 0;

                if (!v68)
                {
                  [v84 setObject:@"Images with Rec 2020 or Rec 2100 color primaries and 4:2:0 subsampling are only defined for attachments containing topLeft chroma locations." forKeyedSubscript:v65];
                }
              }
            }

            v62 = [v61 countByEnumeratingWithState:&v85 objects:v110 count:16];
          }

          while (v62);
        }
      }
    }

    v7 = [v84 copy];
  }

  return v7;
}

+ (id)colorimetricWarningsForGrayscalePixelBufferAttachments:(id)attachments pixelFormat:(unsigned int)format
{
  v39[1] = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  if (attachmentsCopy)
  {
    v39[0] = *MEMORY[0x277CC4CC0];
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v6 = *MEMORY[0x277CC4D10];
    v38[0] = *MEMORY[0x277CC4C00];
    v38[1] = v6;
    v7 = *MEMORY[0x277CC4B80];
    v38[2] = *MEMORY[0x277CC4B88];
    v38[3] = v7;
    v38[4] = *MEMORY[0x277CC4BC8];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:5];
    v8 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v26;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [attachmentsCopy objectForKeyedSubscript:v12];
          v14 = v13 == 0;

          if (v14)
          {
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is required for all grayscale pixel formats", v12, v25];
            [v8 setObject:v15 forKeyedSubscript:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v25;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v17)
    {
      v18 = *v29;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v28 + 1) + 8 * j);
          v21 = [attachmentsCopy objectForKeyedSubscript:v20];
          if (v21 && ([self key:v20 hasUnspecifiedValue:v21] & 1) == 0)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ attachment is unexpectedly present for a grayscale pixel format", v20];
            [v8 setObject:v22 forKeyedSubscript:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    v23 = [v8 copy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (BOOL)key:(id)key hasUnspecifiedValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v7 = [keyCopy length];
  v8 = 1;
  if (valueCopy && v7)
  {
    if ([keyCopy isEqualToString:*MEMORY[0x277CC4C00]])
    {
      v9 = CVColorPrimariesGetStringForIntegerCodePoint(2);
    }

    else if ([keyCopy isEqualToString:*MEMORY[0x277CC4CC0]])
    {
      v9 = CVTransferFunctionGetStringForIntegerCodePoint(2);
    }

    else
    {
      if (![keyCopy isEqualToString:*MEMORY[0x277CC4D10]])
      {
        v10 = 0;
        goto LABEL_10;
      }

      v9 = CVYCbCrMatrixGetStringForIntegerCodePoint(2);
    }

    v10 = v9;
LABEL_10:
    v8 = [v10 isEqualToString:valueCopy];
  }

  return v8;
}

+ (BOOL)isEncoderAvailableForEncoderType:(int)type
{
  if (type <= 8)
  {
    if (!type)
    {
      return 0;
    }

    if (type == 3)
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      v6 = xmmword_25792B428;
      v7 = 0;
      v4 = [processInfo isOperatingSystemAtLeastVersion:&v6];

      return v4;
    }

    return 1;
  }

  if (type != 9 && type != 12)
  {
    return 1;
  }

  return [MOVStreamIOUtility isEncoderAvailableWithEncoderName:@"hvc1"];
}

+ (BOOL)isEncoderAvailableWithEncoderName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  listOfVideoEncodersOut = 0;
  v4 = VTCopyVideoEncoderList(0, &listOfVideoEncodersOut);
  if (v4)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot retrieve available video encoder list, error %d", v4];
    v15 = [v13 exceptionWithName:*MEMORY[0x277CBE648] reason:v14 userInfo:0];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = listOfVideoEncodersOut;
  v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    v8 = *MEMORY[0x277CE2B80];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) objectForKey:v8];
        if ([v10 isEqualToString:nameCopy])
        {
          CFRelease(listOfVideoEncodersOut);

          v11 = 1;
          goto LABEL_12;
        }
      }

      v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  CFRelease(listOfVideoEncodersOut);
  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)addTransform:(CGAffineTransform *)transform toConfiguration:(id)configuration
{
  v5 = [configuration mutableCopy];
  v6 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v6;
  v10[2] = *&transform->tx;
  v7 = [MOVStreamIOUtility valueWithCGAffineTransform:v10];
  [v5 setObject:v7 forKey:@"VideoTransform"];

  v8 = [v5 copy];

  return v8;
}

+ (id)addTrackTypeInfo:(unint64_t)info toConfiguration:(id)configuration
{
  v5 = [configuration mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:info];
  [v5 setObject:v6 forKey:@"VideoTrackTypeInfo"];

  v7 = [v5 copy];

  return v7;
}

+ (id)addEncodingQuality:(double)quality toConfiguration:(id)configuration
{
  v5 = [configuration mutableCopy];
  v6 = MEMORY[0x277CCABB0];
  [MOVStreamIOUtility clampedQuality:quality];
  v7 = [v6 numberWithDouble:?];
  [v5 setObject:v7 forKey:@"EncodingQuality"];

  v8 = [v5 copy];

  return v8;
}

+ (id)monochrome10bitHEVCLosslessEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3438;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)monochrome10bitHEVCLosslessEncoderConfigAllowFrameReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  monochrome10bitHEVCLosslessEncoderConfig = [objc_opt_class() monochrome10bitHEVCLosslessEncoderConfig];
  v5 = [monochrome10bitHEVCLosslessEncoderConfig mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:reorderingCopy];
  [v5 setObject:v6 forKey:@"AllowFrameReordering"];

  v7 = [v5 copy];

  return v7;
}

+ (id)monochrome8bitHEVCLosslessEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3450;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)monochrome8bitHEVCLosslessEncoderConfigAllowFrameReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  monochrome8bitHEVCLosslessEncoderConfig = [objc_opt_class() monochrome8bitHEVCLosslessEncoderConfig];
  v5 = [monochrome8bitHEVCLosslessEncoderConfig mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:reorderingCopy];
  [v5 setObject:v6 forKey:@"AllowFrameReordering"];

  v7 = [v5 copy];

  return v7;
}

+ (id)monochrome8bitHEVCEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3468;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)monochrome8bitHEVCEncoderConfigWithBitrate:(unint64_t)bitrate
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"ColorStreamBitrate";
  v7[0] = &unk_2868E3468;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)monochrome10bitHEVCEncoderConfigWithQuality:(double)quality
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"EncodingQuality";
  v7[0] = &unk_2868E3480;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)monochrome8bitHEVCEncoderConfigWithQuality:(double)quality
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"EncodingQuality";
  v7[0] = &unk_2868E3468;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)colorHEVCEncoderConfigWithQuality:(double)quality
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"EncodingQuality";
  v7[0] = &unk_2868E3498;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)color8bitHEVCWithAlphaEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E34B0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)color8bitHEVCWithAlphaEncoderConfigWithBitrate:(unint64_t)bitrate
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"ColorStreamBitrate";
  v7[0] = &unk_2868E34B0;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)colorHEVCLosslessEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E34C8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)colorHEVCEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3498;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)colorWithAlphaLossless8bitHEVCEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E34E0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)colorH264EncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E34F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)colorHEVCEncoderConfigWithBitrate:(unint64_t)bitrate
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"ColorStreamBitrate";
  v7[0] = &unk_2868E3498;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)colorH264EncoderConfigWithBitrate:(unint64_t)bitrate
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"ColorStreamBitrate";
  v7[0] = &unk_2868E34F8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)slimEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3510;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)slimXEncoderConfig
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"StreamEncoderType";
  v4[1] = @"UseSlimXCompression";
  v5[0] = &unk_2868E3510;
  v5[1] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (id)jpegEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3528;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)jpegEncoderConfigWithQuality:(double)quality
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"EncodingQuality";
  v7[0] = &unk_2868E3528;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)configWithEncoderType:(int)type
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"StreamEncoderType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&type];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

+ (id)noneEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3540;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)sampleBufferConfigWithPixelFormat:(unsigned int)format
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"PixelFormat";
  v7[0] = &unk_2868E3540;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&format];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)audioNoneEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3558;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)customEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3570;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)customConfigWithOutputSettings:(id)settings
{
  v9[2] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v4 = settingsCopy;
  if (!settingsCopy)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"outputSettings must not be nil." userInfo:0];
    objc_exception_throw(v7);
  }

  v8[0] = @"StreamEncoderType";
  v8[1] = @"CustomOutputSettings";
  v9[0] = &unk_2868E3588;
  v9[1] = settingsCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v5;
}

+ (id)customEncoderConfigWithEmbeddedConfiguration:(id)configuration
{
  v9[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = configurationCopy;
  if (!configurationCopy)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Embedded configuration must not be nil." userInfo:0];
    objc_exception_throw(v7);
  }

  v8[0] = @"StreamEncoderType";
  v8[1] = @"CustomEncoderConfig";
  v9[0] = &unk_2868E3570;
  v9[1] = configurationCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v5;
}

+ (id)stereoConfigurationWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format frameRate:(double)rate additionalCompressionProperties:(id)properties
{
  v7 = [MOVStreamIOUtility stereoConfigurationWidth:width height:height pixelFormat:*&format frameRate:0 leftAndRightViewIDs:properties additionalCompressionProperties:rate];

  return v7;
}

+ (id)stereoConfigurationWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format frameRate:(double)rate leftAndRightViewIDs:(id)ds additionalCompressionProperties:(id)properties
{
  v10 = *&format;
  v39[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  propertiesCopy = properties;
  v14 = objc_alloc(MEMORY[0x277CBEB38]);
  v15 = *MEMORY[0x277CE2548];
  v38[0] = *MEMORY[0x277CE2580];
  v38[1] = v15;
  v39[0] = &unk_2868E3BD0;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v39[1] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v18 = [v14 initWithDictionary:v17];

  if (dsCopy && [dsCopy count] == 2)
  {
    [v18 setObject:&unk_2868E3BD0 forKey:*MEMORY[0x277CE2588]];
    [v18 setObject:dsCopy forKey:*MEMORY[0x277CE2578]];
  }

  v19 = MEMORY[0x277CBEC10];
  if (!propertiesCopy)
  {
    propertiesCopy = MEMORY[0x277CBEC10];
  }

  v20 = *MEMORY[0x277CE62C8];
  v37[0] = *MEMORY[0x277CE6300];
  v21 = *MEMORY[0x277CE63C0];
  v36[0] = v20;
  v36[1] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
  v37[1] = v22;
  v36[2] = *MEMORY[0x277CE6360];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
  v36[3] = *MEMORY[0x277CE6330];
  v37[2] = v23;
  v37[3] = v18;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

  v34[0] = *MEMORY[0x277CC4E30];
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v35[0] = v25;
  v34[1] = *MEMORY[0x277CC4EC8];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
  v35[1] = v26;
  v34[2] = *MEMORY[0x277CC4DD8];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
  v34[3] = *MEMORY[0x277CC4DE8];
  v35[2] = v27;
  v35[3] = v19;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];

  v32[0] = @"StreamEncoderType";
  v32[1] = @"CustomOutputSettings";
  v33[0] = &unk_2868E3588;
  v33[1] = v24;
  v32[2] = @"AdditionalCompressionProperties";
  v32[3] = @"TaggedPixelBufferGroupAdaptorPixelBufferAttributes";
  v33[2] = propertiesCopy;
  v33[3] = v28;
  v32[4] = @"StereoVideoEncoding";
  v33[4] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:5];

  return v29;
}

+ (id)monochrome10bitHEVCEncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E3480;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)monochrome10bitHEVCEncoderConfigWithBitrate:(unint64_t)bitrate
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"ColorStreamBitrate";
  v7[0] = &unk_2868E3480;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)proRes4444EncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E35D0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)proRes422EncoderConfig
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"StreamEncoderType";
  v5[0] = &unk_2868E35E8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)proRes422EncoderConfigWithQuality:(int64_t)quality
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"StreamEncoderType";
  v6[1] = @"ProResEncodingQuality";
  v7[0] = &unk_2868E35E8;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:quality];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)proRes4444EncoderConfigWithHighQuality
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"StreamEncoderType";
  v4[1] = @"ProResEncodingQuality";
  v5[0] = &unk_2868E35D0;
  v5[1] = &unk_2868E3600;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (id)defaultVCPRecordingConfigWithBitrate:(unint64_t)bitrate frameRate:(double)rate
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277CE25F0];
  v16[1] = @"NumberOfTiles";
  v17[0] = MEMORY[0x277CBEC38];
  v17[1] = &unk_2868E3618;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14[0] = *MEMORY[0x277CE2518];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  v15[0] = v7;
  v14[1] = *MEMORY[0x277CE2548];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v15[1] = v8;
  v15[2] = &unk_2868E3630;
  v14[2] = @"EncoderUsage";
  v14[3] = @"TNGMode";
  v15[3] = &unk_2868E3648;
  v15[4] = &unk_2868E3660;
  v14[4] = @"TNGDimensionReductionMode";
  v14[5] = @"TNGDimensionReductionLevel";
  v15[5] = &unk_2868E3660;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];

  v12[0] = @"StreamEncoderType";
  v12[1] = @"AdditionalCompressionProperties";
  v13[0] = &unk_2868E3678;
  v13[1] = v9;
  v12[2] = @"VCPEncodingEncoderSpec";
  v13[2] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)colorRecordingConfigBitDepth:(unint64_t)depth lossless:(BOOL)lossless chromaSampling:(int64_t)sampling error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  if ((depth & 0xFFFFFFFFFFFFFFFDLL) == 8)
  {
    if (sampling == 2)
    {
      if (depth == 8)
      {
        if (lossless)
        {
          v16 = @"StreamEncoderType";
          v17 = &unk_2868E3720;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:{1, error}];
        }

        else
        {
          v14 = @"StreamEncoderType";
          v15 = &unk_2868E3738;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:{1, error}];
        }
      }

      else if (lossless)
      {
        v12 = @"StreamEncoderType";
        v13 = &unk_2868E3750;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:{1, error}];
      }

      else
      {
        v10 = @"StreamEncoderType";
        v11 = &unk_2868E3768;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:{1, error}];
      }
    }

    else if (sampling == 1)
    {
      if (depth == 8)
      {
        if (lossless)
        {
          v24 = @"StreamEncoderType";
          v25 = &unk_2868E36C0;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:{1, error}];
        }

        else
        {
          v22 = @"StreamEncoderType";
          v23 = &unk_2868E36D8;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:{1, error}];
        }
      }

      else if (lossless)
      {
        v20 = @"StreamEncoderType";
        v21 = &unk_2868E36F0;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, error}];
      }

      else
      {
        v18 = @"StreamEncoderType";
        v19 = &unk_2868E3708;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:{1, error}];
      }
    }

    else
    {
      if (sampling)
      {
        +[MOVStreamIOUtility colorRecordingConfigBitDepth:lossless:chromaSampling:error:];
      }

      if (depth == 8)
      {
        if (lossless)
        {
          v32 = @"StreamEncoderType";
          v33[0] = &unk_2868E34C8;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:{1, error}];
        }

        else
        {
          v30 = @"StreamEncoderType";
          v31 = &unk_2868E3498;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:{1, error}];
        }
      }

      else if (lossless)
      {
        v28 = @"StreamEncoderType";
        v29 = &unk_2868E3690;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:{1, error}];
      }

      else
      {
        v26 = @"StreamEncoderType";
        v27 = &unk_2868E36A8;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:{1, error}];
      }
    }
  }

  else
  {
    depth = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported bit depth (%zu).", lossless, sampling, depth];
    [MEMORY[0x277CCA9B8] populateStreamError:error message:depth code:28];

    v6 = 0;
  }

  return v6;
}

+ (id)colorRecordingConfigBitDepth:(unint64_t)depth bitrate:(unint64_t)bitrate chromaSampling:(int64_t)sampling error:(id *)error
{
  v7 = [objc_opt_class() colorRecordingConfigBitDepth:depth lossless:0 chromaSampling:sampling error:error];
  v8 = [v7 mutableCopy];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:bitrate];
  [v8 setObject:v9 forKey:@"ColorStreamBitrate"];

  return v8;
}

+ (id)colorRecordingConfigBitDepth:(unint64_t)depth quality:(double)quality chromaSampling:(int64_t)sampling error:(id *)error
{
  v7 = [objc_opt_class() colorRecordingConfigBitDepth:depth lossless:0 chromaSampling:sampling error:error];
  v8 = [v7 mutableCopy];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:quality];
  [v8 setObject:v9 forKey:@"EncodingQuality"];

  return v8;
}

+ (id)colorRecordingConfigBitDepth:(unint64_t)depth chromaSampling:(int64_t)sampling error:(id *)error
{
  v8 = objc_opt_class();

  return [v8 colorRecordingConfigBitDepth:depth lossless:0 chromaSampling:sampling error:error];
}

+ (double)cmQualityFromMIOHEVCQuality:(int64_t)quality
{
  result = 1.0;
  if ((quality - 1) <= 3)
  {
    return dbl_25792B468[quality - 1];
  }

  return result;
}

+ (id)hevc10bitQuality:(int64_t)quality chromaSampling:(int64_t)sampling
{
  v12[1] = *MEMORY[0x277D85DE8];
  [objc_opt_class() cmQualityFromMIOHEVCQuality:quality];
  if (sampling == 3)
  {
    [MOVStreamIOUtility monochrome10bitHEVCEncoderConfigWithQuality:?];
  }

  else
  {
    [MOVStreamIOUtility colorRecordingConfigBitDepth:10 quality:sampling chromaSampling:0 error:?];
  }
  v6 = ;
  v7 = [v6 mutableCopy];

  if (quality)
  {
    v11 = *MEMORY[0x277CE6368];
    v12[0] = &unk_2868E3618;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 setObject:v8 forKey:@"AdditionalCompressionProperties"];
  }

  v9 = [v7 copy];

  return v9;
}

+ (id)hevc8bitQuality:(int64_t)quality chromaSampling:(int64_t)sampling
{
  v12[1] = *MEMORY[0x277D85DE8];
  [objc_opt_class() cmQualityFromMIOHEVCQuality:quality];
  if (sampling == 3)
  {
    [MOVStreamIOUtility monochrome8bitHEVCEncoderConfigWithQuality:?];
  }

  else
  {
    [MOVStreamIOUtility colorRecordingConfigBitDepth:8 quality:sampling chromaSampling:0 error:?];
  }
  v6 = ;
  v7 = [v6 mutableCopy];

  if (quality)
  {
    v11 = *MEMORY[0x277CE6368];
    v12[0] = &unk_2868E3618;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 setObject:v8 forKey:@"AdditionalCompressionProperties"];
  }

  v9 = [v7 copy];

  return v9;
}

+ (BOOL)isKeyFrame:(opaqueCMSampleBuffer *)frame error:(id *)error
{
  if (CMSampleBufferGetImageBuffer(frame))
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = @"decoding is set up for this sample buffer. Cannot tell whether it's a key frame or not";
LABEL_3:
    [v6 populateStreamError:error message:v7 code:0];
    return 0;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(frame, 1u);
  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
  value = 0;
  if (!ValueAtIndex)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = @"This sample buffer doesn't have any attachment. Cannot tell whether it's a key frame or not";
    goto LABEL_3;
  }

  return !CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x277CC0698], &value) || value == *MEMORY[0x277CBED10];
}

+ (BOOL)isSlimXEncodedTrack:(id)track
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  formatDescriptions = [track formatDescriptions];
  v4 = [formatDescriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = *MEMORY[0x277CC03B8];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(formatDescriptions);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (CMFormatDescriptionGetMediaSubType(v8) == 1936484717)
        {
          Extension = CMFormatDescriptionGetExtension(v8, v6);
          if (Extension)
          {
            if (CFDictionaryGetValue(Extension, @"slmC"))
            {
              v10 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v4 = [formatDescriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

+ (int64_t)chromaSamplingFromMediaFormatDescription:(opaqueCMFormatDescription *)description
{
  if (CMFormatDescriptionGetMediaSubType(description) == 1752589105 && (Extension = CMFormatDescriptionGetExtension(description, *MEMORY[0x277CC03B8])) != 0 && CFDictionaryGetValue(Extension, @"hvcC") && !FigHEVCBridge_GetHEVCParameterSetAtIndex() && !FigHEVCBridge_GetSPSChromaFormatAndBitDepths())
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

+ (int64_t)chromaSamplingForTrack:(id)track
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  formatDescriptions = [track formatDescriptions];
  v4 = [formatDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(formatDescriptions);
      }

      v7 = [objc_opt_class() chromaSamplingFromMediaFormatDescription:*(*(&v9 + 1) + 8 * v6)];
      if (v7 != 4)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [formatDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 4;
  }

  return v7;
}

+ (opaqueCMFormatDescription)createTimeCode64FormatDescriptionWithFrameRate:(double)rate dropFrame:(BOOL)frame error:(id *)error
{
  frameCopy = frame;
  formatDescriptionOut = 0;
  if (frame)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = *MEMORY[0x277CBECE8];
  CMTimeMake(&frameDuration, 100, (rate * 100.0));
  v10 = CMTimeCodeFormatDescriptionCreate(v9, 0x74633634u, &frameDuration, vcvtpd_u64_f64(rate), v8, 0, &formatDescriptionOut);
  if (!v10)
  {
    return formatDescriptionOut;
  }

  if (error)
  {
    v11 = @"NO";
    if (frameCopy)
    {
      v11 = @"YES";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create TimeCode64 FormatDescription with fps %f drop frame %@. Error: %d", *&rate, v11, v10];
    *error = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v12 code:8];
  }

  return 0;
}

+ (opaqueCMFormatDescription)createTimeCode32FormatDescriptionWithFrameRate:(double)rate dropFrame:(BOOL)frame error:(id *)error
{
  frameCopy = frame;
  formatDescriptionOut = 0;
  if (frame)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = *MEMORY[0x277CBECE8];
  CMTimeMake(&frameDuration, 100, (rate * 100.0));
  v10 = CMTimeCodeFormatDescriptionCreate(v9, 0x746D6364u, &frameDuration, vcvtpd_u64_f64(rate), v8, 0, &formatDescriptionOut);
  if (!v10)
  {
    return formatDescriptionOut;
  }

  if (error)
  {
    v11 = @"NO";
    if (frameCopy)
    {
      v11 = @"YES";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create TimeCode32 FormatDescription with fps %f drop frame %@. Error: %d", *&rate, v11, v10];
    *error = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v12 code:8];
  }

  return 0;
}

+ (opaqueCMSampleBuffer)createTimecodeSampleBufferWithSMPTETime:(CVSMPTETime *)time formatDescription:(opaqueCMFormatDescription *)description pts:(id *)pts error:(id *)error
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(description);
  if (MediaSubType == 1952658996)
  {
    v15 = *&time->subframes;
    v16 = *&time->hours;
    v13 = *&pts->var0;
    var3 = pts->var3;
    return [MOVStreamIOUtility createTimecode64SampleBufferWithSMPTETime:&v15 formatDescription:description pts:&v13 error:error];
  }

  else if (MediaSubType == 1953325924)
  {
    v15 = *&time->subframes;
    v16 = *&time->hours;
    v13 = *&pts->var0;
    var3 = pts->var3;
    return [MOVStreamIOUtility createTimecode32SampleBufferWithSMPTETime:&v15 formatDescription:description pts:&v13 error:error];
  }

  else
  {
    mediaSubType = [MEMORY[0x277CCACA8] stringWithFormat:@"TimeCode format (%d) not supported.", MediaSubType];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:mediaSubType code:12];

    return 0;
  }
}

+ (opaqueCMSampleBuffer)createTimecode32SampleBufferWithSMPTETime:(CVSMPTETime *)time formatDescription:(opaqueCMFormatDescription *)description pts:(id *)pts error:(id *)error
{
  blockBufferOut = 0;
  v22 = 0;
  v19.duration = *time;
  sourceBytes = [MOVStreamIOUtility frameNumber32ForTimecode:&v19 usingFormatDescription:description, pts, error];
  v8 = *MEMORY[0x277CBECE8];
  v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, 4uLL, *MEMORY[0x277CBECE8], 0, 0, 4uLL, 1u, &blockBufferOut);
  v10 = blockBufferOut;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = blockBufferOut == 0;
  }

  if (v11)
  {
    NSLog(&cfstr_CouldNotCreate.isa);
    v10 = blockBufferOut;
  }

  if (CMBlockBufferReplaceDataBytes(&sourceBytes, v10, 0, 4uLL))
  {
    NSLog(&cfstr_CouldNotWriteI.isa);
  }

  v12 = *(MEMORY[0x277CC0920] + 48);
  *&v19.presentationTimeStamp.timescale = *(MEMORY[0x277CC0920] + 32);
  *&v19.decodeTimeStamp.value = v12;
  v13 = *(MEMORY[0x277CC0920] + 64);
  v14 = *(MEMORY[0x277CC0920] + 16);
  *&v19.duration.value = *MEMORY[0x277CC0920];
  *&v19.duration.epoch = v14;
  *&v19.presentationTimeStamp.value = *&pts->var0;
  var3 = pts->var3;
  v19.decodeTimeStamp.epoch = v13;
  v19.presentationTimeStamp.epoch = var3;
  FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(description);
  CMTimeMake(&v19.duration, (1.0 / FrameQuanta * pts->var1), pts->var1);
  sampleSizeArray = 4;
  if (CMSampleBufferCreate(v8, blockBufferOut, 1u, 0, 0, description, 1, 1, &v19, 1, &sampleSizeArray, &v22) || !v22)
  {
    NSLog(&cfstr_CouldNotCreate.isa);
  }

  CFRelease(blockBufferOut);
  return v22;
}

+ (opaqueCMSampleBuffer)createTimecode64SampleBufferWithSMPTETime:(CVSMPTETime *)time formatDescription:(opaqueCMFormatDescription *)description pts:(id *)pts error:(id *)error
{
  blockBufferOut = 0;
  v22 = 0;
  v19.duration = *time;
  sourceBytes = [MOVStreamIOUtility frameNumber64ForTimecode:&v19 usingFormatDescription:description, pts, error];
  v8 = *MEMORY[0x277CBECE8];
  v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, 8uLL, *MEMORY[0x277CBECE8], 0, 0, 8uLL, 1u, &blockBufferOut);
  v10 = blockBufferOut;
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = blockBufferOut == 0;
  }

  if (v11)
  {
    NSLog(&cfstr_CouldNotCreate.isa);
    v10 = blockBufferOut;
  }

  if (CMBlockBufferReplaceDataBytes(&sourceBytes, v10, 0, 8uLL))
  {
    NSLog(&cfstr_CouldNotWriteI.isa);
  }

  v12 = *(MEMORY[0x277CC0920] + 48);
  *&v19.presentationTimeStamp.timescale = *(MEMORY[0x277CC0920] + 32);
  *&v19.decodeTimeStamp.value = v12;
  v13 = *(MEMORY[0x277CC0920] + 64);
  v14 = *(MEMORY[0x277CC0920] + 16);
  *&v19.duration.value = *MEMORY[0x277CC0920];
  *&v19.duration.epoch = v14;
  *&v19.presentationTimeStamp.value = *&pts->var0;
  var3 = pts->var3;
  v19.decodeTimeStamp.epoch = v13;
  v19.presentationTimeStamp.epoch = var3;
  FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(description);
  CMTimeMake(&v19.duration, (1.0 / FrameQuanta * pts->var1), pts->var1);
  sampleSizeArray = 8;
  if (CMSampleBufferCreate(v8, blockBufferOut, 1u, 0, 0, description, 1, 1, &v19, 1, &sampleSizeArray, &v22) || !v22)
  {
    NSLog(&cfstr_CouldNotCreate.isa);
  }

  CFRelease(blockBufferOut);
  return v22;
}

+ (CVSMPTETime)timecode32ForSampleBuffer:(SEL)buffer dropFrame:(opaqueCMSampleBuffer *)frame
{
  DataBuffer = CMSampleBufferGetDataBuffer(frame);
  result = CMSampleBufferGetFormatDescription(frame);
  if (!DataBuffer)
  {
    goto LABEL_8;
  }

  v10 = result;
  if (!result)
  {
    goto LABEL_8;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  if (CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
  {
    NSLog(&cfstr_CouldNotGetDat.isa);
LABEL_8:
    *&retstr->subframes = 0;
    *&retstr->type = 0;
    *&retstr->hours = 0;
    return result;
  }

  result = CMFormatDescriptionGetMediaSubType(v10);
  if (result != 1953325924)
  {
    goto LABEL_8;
  }

  v11 = dataPointerOut;
  *&retstr->type = 0;
  *&retstr->hours = 0;
  *&retstr->subframes = 0;
  [MOVStreamIOUtility timecodeForFrameNumber32:*v11 formatDescription:v10];
  result = CMTimeCodeFormatDescriptionGetTimeCodeFlags(v10);
  if (a5)
  {
    *a5 = result & 1;
  }

  return result;
}

+ (id)qtTrackNameForAssociatedAttachmentsTrack:(id)track
{
  v3 = [track stringByAppendingString:@"-attachments"];

  return v3;
}

+ (id)qtTrackNameForAssociatedTimeCodeTrack:(id)track
{
  v3 = [track stringByAppendingString:@"-timecode"];

  return v3;
}

+ (opaqueCMFormatDescription)createL010FormatDescriptionFromL016FormatDescription:(opaqueCMFormatDescription *)description
{
  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  v5 = CMFormatDescriptionGetExtensions(description);
  v6 = [v5 objectForKey:@"CVBytesPerRow"];
  v7 = +[MIOPixelBufferUtility createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:](MIOPixelBufferUtility, "createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:", Dimensions, HIDWORD(*&Dimensions), 0, ([v6 intValue] / 2 - Dimensions.width), 1278226736, 1, 1);
  CVBufferSetAttachment(v7, *MEMORY[0x277CC4CC0], [v5 objectForKey:*MEMORY[0x277CC4CC0]], kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(v7, *MEMORY[0x277CC4D10], [v5 objectForKey:*MEMORY[0x277CC4D10]], kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(v7, *MEMORY[0x277CC4C00], [v5 objectForKey:*MEMORY[0x277CC4C00]], kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(v7, *MEMORY[0x277CC4B80], [v5 objectForKey:*MEMORY[0x277CC4B80]], kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(v7, *MEMORY[0x277CC4B88], [v5 objectForKey:*MEMORY[0x277CC4B88]], kCVAttachmentMode_ShouldPropagate);
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v7, &formatDescriptionOut);
  CVPixelBufferRelease(v7);
  v8 = formatDescriptionOut;

  return v8;
}

+ (opaqueCMFormatDescription)createL010FormatDescriptionFromRawBayerFormatDescription:(opaqueCMFormatDescription *)description
{
  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  v5 = CMFormatDescriptionGetExtensions(description);
  v6 = [v5 objectForKey:@"CVBytesPerRow"];
  v7 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v8 = +[MIOPixelBufferUtility createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:](MIOPixelBufferUtility, "createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:", Dimensions, HIDWORD(*&Dimensions), 0, ([v6 intValue] % v7) >> 1, 1278226736, v7, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize](MOVStreamIOUtility, "getPreferredPlaneAlignmentSize"));
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v8, &formatDescriptionOut);
  CVPixelBufferRelease(v8);
  v9 = formatDescriptionOut;

  return v9;
}

+ (opaqueCMFormatDescription)createxf20FormatDescriptionFromRawBayerFormatDescription:(opaqueCMFormatDescription *)description usingFirstPlaneOnly:(BOOL)only
{
  onlyCopy = only;
  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  if (onlyCopy)
  {
    height = Dimensions.height;
  }

  else
  {
    height = (Dimensions.height / 2);
  }

  v8 = CMFormatDescriptionGetExtensions(description);
  v9 = [v8 objectForKey:@"CVBytesPerRow"];
  v10 = +[MOVStreamIOUtility getPreferredBytesPerRowAlignmentSize];
  v11 = +[MIOPixelBufferUtility createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:](MIOPixelBufferUtility, "createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:", Dimensions, height, 0, ([v9 intValue] % v10) >> 1, 2019963440, v10, +[MOVStreamIOUtility getPreferredPlaneAlignmentSize](MOVStreamIOUtility, "getPreferredPlaneAlignmentSize"));
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v11, &formatDescriptionOut);
  CVPixelBufferRelease(v11);
  v12 = formatDescriptionOut;

  return v12;
}

+ (double)bytesPerPixelForFormat:(unsigned int)format
{
  v11[1] = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v10 = *MEMORY[0x277CC4DE8];
  v11[0] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], 0x400uLL, 0x300uLL, format, v4, &pixelBufferOut);
  if (CVPixelBufferIsPlanar(pixelBufferOut))
  {
    v5 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_257883000, v5, OS_LOG_TYPE_ERROR, "bytesPerPixelForFormat requires non-planar buffer.", v8, 2u);
    }

    BytesPerPixel = 0.0;
    CVPixelBufferRelease(pixelBufferOut);
  }

  else
  {
    BytesPerPixel = MIOCVPixelBufferGetBytesPerPixel(pixelBufferOut);
    CVPixelBufferRelease(pixelBufferOut);
  }

  return BytesPerPixel;
}

+ (opaqueCMFormatDescription)createL008FormatDescriptionFromNonPlanarFormatDescription:(opaqueCMFormatDescription *)description
{
  v16[1] = *MEMORY[0x277D85DE8];
  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  MediaSubType = CMFormatDescriptionGetMediaSubType(description);
  BytesPerPixelOfPlaneForFormat = MIOCVPixelBufferGetBytesPerPixelOfPlaneForFormat(MediaSubType, 0);
  pixelBufferOut = 0;
  v15 = *MEMORY[0x277CC4DE8];
  v16[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = *&Dimensions >> 32;
  v9 = Dimensions.width * BytesPerPixelOfPlaneForFormat;
  v10 = *MEMORY[0x277CBECE8];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303038u, v7, &pixelBufferOut);
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(v10, pixelBufferOut, &formatDescriptionOut);
  CVPixelBufferRelease(pixelBufferOut);
  v11 = formatDescriptionOut;

  return v11;
}

+ (opaqueCMFormatDescription)createL008FormatDescriptionFromCompandedRawBayerFormatDescription:(opaqueCMFormatDescription *)description
{
  Dimensions = CMVideoFormatDescriptionGetDimensions(description);
  v5 = CMFormatDescriptionGetExtensions(description);
  v6 = [v5 objectForKey:@"CVBytesPerRow"];
  v7 = +[MIOPixelBufferUtility createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:](MIOPixelBufferUtility, "createRawPixelBufferWithWidth:height:extendedRows:extendedPixelsPerRow:pixelFormat:bytesPerRowAlignment:planeAlignment:bufferCacheMode:", Dimensions, HIDWORD(*&Dimensions), 0, 0, 1278226488, [v6 integerValue], 1);
  formatDescriptionOut = 0;
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v7, &formatDescriptionOut);
  CVPixelBufferRelease(v7);
  v8 = formatDescriptionOut;

  return v8;
}

+ (id)getJsonFriendlyCopy:(id)copy
{
  v24 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = copyCopy;
    v4 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v18;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v10 = [v5 objectForKeyedSubscript:v9];
          v11 = [MOVStreamIOUtility getJsonFriendlyCopy:v10];

          if (v11)
          {
            [v4 setValue:v11 forKey:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = copyCopy;
      v12 = [MEMORY[0x277CCAAA0] isValidJSONObject:v5];
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v5;
      }

      if (v12)
      {
        v4 = v5;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [copyCopy doubleValue];
        v15 = fabs(v14);
        if (v15 == INFINITY)
        {
          v5 = copyCopy;
        }

        else
        {
          v5 = 0;
        }

        if (v15 == INFINITY)
        {
          v4 = 0;
        }

        else
        {
          v4 = copyCopy;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = 0;
          v4 = copyCopy;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v5 = 0;
          }

          else
          {
            v5 = copyCopy;
          }

          if (isKindOfClass)
          {
            v4 = copyCopy;
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  return v4;
}

+ (BOOL)isValidJSONObject:(id)object path:(id)path
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = objectCopy;
    if (([MEMORY[0x277CCAAA0] isValidJSONObject:?] & 1) == 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = v22;
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v7)
      {
        v8 = *v25;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v24 + 1) + 8 * i);
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", pathCopy, v10];
            v12 = [v6 objectForKeyedSubscript:v10];
            v13 = [MOVStreamIOUtility isValidJSONObject:v12 path:v11];

            if (!v13)
            {

              goto LABEL_26;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objectCopy;
    if (([MEMORY[0x277CCAAA0] isValidJSONObject:v14] & 1) == 0)
    {
      v16 = 0;
      while ([v14 count] > v16)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%d]", pathCopy, v16];
        v18 = [v14 objectAtIndexedSubscript:v16];
        v19 = [MOVStreamIOUtility isValidJSONObject:v18 path:v17];

        ++v16;
        if (!v19)
        {

          goto LABEL_26;
        }
      }
    }

    goto LABEL_17;
  }

  if ([MEMORY[0x277CCAAA0] isValidJSONObject:objectCopy])
  {
LABEL_17:
    v15 = 1;
    goto LABEL_27;
  }

  v20 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = pathCopy;
    _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_ERROR, "Can't serialize object as JSON: %{public}@", buf, 0xCu);
  }

LABEL_26:
  v15 = 0;
LABEL_27:

  return v15;
}

+ (id)getPlistFriendlyCopyOf:(id)of
{
  v30 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = ofCopy;
    v4 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v19;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [v5 objectForKeyedSubscript:v9];
          v11 = [MOVStreamIOUtility getPlistFriendlyCopyOf:v10];

          if (v11)
          {
            [v4 setValue:v11 forKey:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v6);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = ofCopy;
      v4 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = v12;
      v13 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        v14 = *v21;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v5);
            }

            v16 = [MOVStreamIOUtility getPlistFriendlyCopyOf:*(*(&v20 + 1) + 8 * j)];
            if (v16)
            {
              [v4 addObject:v16];
            }
          }

          v13 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v13);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v5 = 0;
        v4 = ofCopy;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v5 = 0;
        }

        else
        {
          v5 = ofCopy;
        }

        if (isKindOfClass)
        {
          v4 = ofCopy;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

+ (BOOL)verifyExactBytesPerRow:(id)row width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v6 = *&format;
  v34[1] = *MEMORY[0x277D85DE8];
  rowCopy = row;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34[0] = rowCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = rowCopy;
LABEL_5:
    v11 = v10;
    *pixelBufferOut = 0;
    v31 = *MEMORY[0x277CC4DE8];
    v32 = MEMORY[0x277CBEC10];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v13 = *MEMORY[0x277CBECE8];
    v30 = v12;
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, v6, v12, pixelBufferOut);
    PlaneCount = CVPixelBufferGetPlaneCount(*pixelBufferOut);
    if (PlaneCount)
    {
      if ([v11 count]< PlaneCount)
      {
        v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:PlaneCount];
        for (i = 0; i != PlaneCount; ++i)
        {
          v17 = [v11 objectAtIndexedSubscript:i % [v11 count]];
          [v15 addObject:v17];
        }

        v18 = [v15 copy];

        v11 = v18;
        v12 = v30;
      }

      v19 = [MIOPixelBufferUtility createPixelBufferAttributesWithWidth:width height:height pixelFormat:v6 bytesPerRows:v11];
      CVPixelBufferRelease(*pixelBufferOut);
      CVPixelBufferCreate(v13, width, height, v6, v19, pixelBufferOut);
      CFRelease(v19);
      if (*pixelBufferOut)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*pixelBufferOut, v20);
          v23 = [v11 objectAtIndexedSubscript:v20];
          v24 = BytesPerRowOfPlane == [v23 unsignedLongValue];

          if (!v24)
          {
            break;
          }

          v21 = PlaneCount <= ++v20;
        }

        while (PlaneCount != v20);
        v12 = v30;
        CVPixelBufferRelease(*pixelBufferOut);
        goto LABEL_18;
      }
    }

    else
    {
      CVPixelBufferRelease(*pixelBufferOut);
      v25 = [v11 objectAtIndexedSubscript:0];
      unsignedLongValue = [v25 unsignedLongValue];

      v27 = [MIOPixelBufferUtility createRawPixelBufferWithWidth:width height:height pixelFormat:v6 bytesPerRow:unsignedLongValue];
      *pixelBufferOut = v27;
      if (v27)
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(v27);
        CVPixelBufferRelease(*pixelBufferOut);
        v21 = BytesPerRow == unsignedLongValue;
LABEL_18:

        goto LABEL_22;
      }
    }

    v21 = 0;
    goto LABEL_18;
  }

  v11 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *pixelBufferOut = 138543362;
    *&pixelBufferOut[4] = rowCopy;
    _os_log_impl(&dword_257883000, v11, OS_LOG_TYPE_ERROR, "Invalid ExactBytesPerRow value type: %{public}@", pixelBufferOut, 0xCu);
  }

  v21 = 0;
LABEL_22:

  return v21;
}

+ (id)plistSerializedObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = [objc_opt_class() plistFriendlyCopyOf:objectCopy];
  if (v6)
  {
    error = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:error];
  }

  else if (error)
  {
    objectCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported data type, cannot serialize object %@.", objectCopy];
    *error = [MEMORY[0x277CCA9B8] internalErrorWithMessage:objectCopy code:8];

    error = 0;
  }

  return error;
}

+ (id)plistDeserializedObject:(id)object error:(id *)error
{
  objectCopy = object;
  if ([MEMORY[0x277CCAC58] propertyList:objectCopy isValidForFormat:200])
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:objectCopy options:0 format:&v8 error:error];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] internalErrorWithMessage:@"Unsupported raw data format code:{cannot deserialize object.", 8}];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unsigned)guessPixelFormatForTrack:(id)track
{
  trackCopy = track;
  v4 = 0;
  while (1)
  {
    formatDescriptions = [trackCopy formatDescriptions];
    v6 = [formatDescriptions count];

    if (v6 <= v4)
    {
      break;
    }

    formatDescriptions2 = [trackCopy formatDescriptions];
    v8 = [formatDescriptions2 objectAtIndexedSubscript:v4];
    v9 = [MOVStreamIOUtility guessPixelFormatFromFormatDescription:v8];

    ++v4;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (unsigned)guessPixelFormatFromFormatDescription:(opaqueCMFormatDescription *)description
{
  descriptionCopy = description;
  if (description)
  {
    v4 = CMFormatDescriptionGetExtensions(description);
    if ([v4 count])
    {
      v5 = [MOVStreamIOUtility chromaSamplingFromMediaFormatDescription:descriptionCopy];
      v6 = [v4 objectForKey:@"BitsPerComponent"];
      integerValue = [v6 integerValue];

      v8 = [v4 objectForKey:@"FullRangeVideo"];
      integerValue2 = [v8 integerValue];
      LODWORD(descriptionCopy) = 875704438;

      if (v5 > 1)
      {
        if (v5 != 2)
        {
          if (v5 == 3)
          {
            v10 = 1278226488;
            v12 = 1278226736;
            v11 = integerValue == 10;
LABEL_19:
            if (v11)
            {
              LODWORD(descriptionCopy) = v12;
            }

            else
            {
              LODWORD(descriptionCopy) = v10;
            }

            goto LABEL_30;
          }

          if (v5 != 4)
          {
            goto LABEL_30;
          }

          goto LABEL_13;
        }

        if (integerValue == 10)
        {
          v10 = 2016687156;
          v12 = 2019963956;
LABEL_17:
          v11 = integerValue2 == 1;
          goto LABEL_19;
        }

        v13 = 875836518;
        v14 = 875836534;
LABEL_27:
        if (integerValue2 == 1)
        {
          LODWORD(descriptionCopy) = v13;
        }

        else
        {
          LODWORD(descriptionCopy) = v14;
        }

        goto LABEL_30;
      }

      if (!v5)
      {
LABEL_13:
        if (integerValue != 10)
        {
          if (integerValue2 == 1)
          {
            LODWORD(descriptionCopy) = 875704422;
          }

          else
          {
            LODWORD(descriptionCopy) = 875704438;
          }

          goto LABEL_30;
        }

        v10 = 2016686640;
        v12 = 2019963440;
        goto LABEL_17;
      }

      if (v5 == 1)
      {
        if (integerValue == 10)
        {
          v10 = 2016686642;
          v11 = integerValue2 == 1;
          v12 = 2019963442;
          goto LABEL_19;
        }

        v13 = 875704934;
        v14 = 875704950;
        goto LABEL_27;
      }
    }

    else
    {
      LODWORD(descriptionCopy) = 0;
    }

LABEL_30:
  }

  return descriptionCopy;
}

+ (unsigned)detectPixelFormatForAsset:(id)asset videoTrackId:(int)id error:(id *)error
{
  v6 = *&id;
  v37[2] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v8 = [assetCopy trackWithTrackID:v6];
  v9 = v8;
  if (v8)
  {
    formatDescriptions = [v8 formatDescriptions];
    v11 = [formatDescriptions count];

    if (v11)
    {
      formatDescriptions2 = [v9 formatDescriptions];
      v13 = [formatDescriptions2 objectAtIndexedSubscript:0];

      Dimensions = CMVideoFormatDescriptionGetDimensions(v13);
      v36[0] = *MEMORY[0x277CC4EC8];
      v15 = [MEMORY[0x277CCABB0] numberWithInt:Dimensions];
      v37[0] = v15;
      v36[1] = *MEMORY[0x277CC4DD8];
      v16 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(*&Dimensions)];
      v37[1] = v16;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

      v17 = [MEMORY[0x277CE6430] assetReaderTrackOutputWithTrack:v9 outputSettings:v33];
      v18 = [MEMORY[0x277CE6410] assetReaderWithAsset:assetCopy error:error];
      v19 = v18;
      if (!v18)
      {
        LODWORD(PixelFormatType) = 0;
LABEL_22:

        goto LABEL_23;
      }

      if ([v18 canAddOutput:v17])
      {
        [v19 addOutput:v17];
        if ([v19 startReading])
        {
          copyNextSampleBuffer = [v17 copyNextSampleBuffer];
          v21 = copyNextSampleBuffer;
          if (copyNextSampleBuffer)
          {
            ImageBuffer = CMSampleBufferGetImageBuffer(copyNextSampleBuffer);
            v23 = ImageBuffer;
            if (ImageBuffer)
            {
              CVPixelBufferRetain(ImageBuffer);
              CFRelease(v21);
              PixelFormatType = CVPixelBufferGetPixelFormatType(v23);
              CVPixelBufferRelease(v23);

              {
                v34[0] = &unk_2868E3840;
                v34[1] = &unk_2868E3870;
                v35[0] = &unk_2868E3858;
                v35[1] = &unk_2868E3888;
                v34[2] = &unk_2868E38A0;
                v34[3] = &unk_2868E38B8;
                v35[2] = &unk_2868E3858;
                v35[3] = &unk_2868E38D0;
                v34[4] = &unk_2868E38E8;
                v34[5] = &unk_2868E3918;
                v35[4] = &unk_2868E3900;
                v35[5] = &unk_2868E38D0;
                v34[6] = &unk_2868E3930;
                v34[7] = &unk_2868E3960;
                v35[6] = &unk_2868E3948;
                v35[7] = &unk_2868E3978;
                +[MOVStreamIOUtility(Private) detectPixelFormatForAsset:videoTrackId:error:]::formatMappingTable = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];
              }

              v25 = +[MOVStreamIOUtility(Private) detectPixelFormatForAsset:videoTrackId:error:]::formatMappingTable;
              v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PixelFormatType];
              v19 = [v25 objectForKey:v26];

              if (v19)
              {
                LODWORD(PixelFormatType) = [v19 intValue];
              }

              v17 = 0;
              goto LABEL_21;
            }

            CFRelease(v21);
            assetCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No pixel buffer in track (%d) in '%@'.", v6, assetCopy];
            [MEMORY[0x277CCA9B8] populateReaderError:error message:assetCopy code:26];
          }

          else
          {
            assetCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No sample buffer in track (%d) in '%@'.", v6, assetCopy];
            [MEMORY[0x277CCA9B8] populateReaderError:error message:assetCopy2 code:26];
          }
        }

        else
        {
          assetCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot read from track (%d) in '%@'.", v6, assetCopy];
          [MEMORY[0x277CCA9B8] populateReaderError:error message:assetCopy3 code:26];
        }
      }

      else
      {
        assetCopy4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot add output to track (%d) in '%@'.", v6, assetCopy];
        [MEMORY[0x277CCA9B8] populateReaderError:error message:assetCopy4 code:26];
      }

      LODWORD(PixelFormatType) = 0;
LABEL_21:

      goto LABEL_22;
    }

    assetCopy5 = [MEMORY[0x277CCACA8] stringWithFormat:@"No format description for track (%d) in '%@'.", v6, assetCopy];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:assetCopy5 code:26];
  }

  else
  {
    assetCopy5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find track (%d) in '%@'.", v6, assetCopy];
    [MEMORY[0x277CCA9B8] populateReaderError:error message:assetCopy5 code:26];
  }

  LODWORD(PixelFormatType) = 0;
LABEL_23:

  return PixelFormatType;
}

+ (id)AVEProfileLevel10BitMonochrome
{
  v2 = +[MOVStreamEncoderConfig supportedProfileLevelsForHEVC];
  if ([v2 containsObject:@"HEVC_Monochrome12_AutoLevel"] && (objc_msgSend(v2, "containsObject:", @"HEVC_Monochrome10_AutoLevel") & 1) == 0)
  {
    v3 = @"HEVC_Monochrome12_AutoLevel";
  }

  else
  {
    v3 = @"HEVC_Monochrome10_AutoLevel";
  }

  return v3;
}

+ (double)deriveMaxKeyFrameIntervalFromFps:(double)fps
{
  result = round(fps);
  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

+ (double)clampedQuality:(double)result
{
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

+ (id)reservedMIOTrackMetadataKeys
{
  if (+[MOVStreamIOUtility(Private) reservedMIOTrackMetadataKeys]::onceToken != -1)
  {
    +[MOVStreamIOUtility(Private) reservedMIOTrackMetadataKeys];
  }

  v3 = +[MOVStreamIOUtility(Private) reservedMIOTrackMetadataKeys]::reservedList;

  return v3;
}

void __59__MOVStreamIOUtility_Private__reservedMIOTrackMetadataKeys__block_invoke()
{
  v5[32] = *MEMORY[0x277D85DE8];
  v5[0] = @"mdta/com.apple.track_kind";
  v5[1] = @"mdta/com.apple.trackStreamType";
  v5[2] = @"mdta/com.apple.metadataTrackType";
  v5[3] = @"mdta/com.apple.framework.state.MOVStreamIO";
  v5[4] = @"mdta/com.apple.MOVStreamIO.stateMetadataIdentifier";
  v5[5] = @"version";
  v5[6] = @"mdta/com.apple.MOVStreamIO.versionKey";
  v5[7] = @"default_options";
  v5[8] = @"mdta/com.apple.MOVStreamIO.defaultOptions";
  v5[9] = @"mdta/com.apple.stream_sample_format";
  v5[10] = @"mdta/com.apple.trackStreamPixelFormat";
  v5[11] = @"mdta/com.apple.stream_encoded_sample_format";
  v5[12] = @"mdta/com.apple.trackStreamEncodedPixelFormat";
  v5[13] = @"mdta/com.apple.stream_sample_attachments_serialization_mode";
  v5[14] = @"mdta/com.apple.trackStreamAttachmentsSerializationMode";
  v5[15] = @"mdta/com.apple.stream_type_info";
  v5[16] = @"mdta/com.apple.trackTypeInfo";
  v5[17] = @"mdta/com.apple.stream_related_to_stream";
  v5[18] = @"mdta/com.apple.trackStreamRelatedToStream";
  v5[19] = @"mdta/com.apple.stream_relation_specifier";
  v5[20] = @"mdta/com.apple.trackStreamRelationSpecifier";
  v5[21] = @"mdta/com.apple.stream_sample_exact_bytes_per_row";
  v5[22] = @"mdta/com.apple.exactBytesPerRow";
  v5[23] = @"mdta/com.apple.stream_raw_bayer_rearrange_type";
  v5[24] = @"mdta/com.apple.RawBayerRearrangeType";
  v5[25] = @"mdta/com.apple.stream_sample_attachments";
  v5[26] = @"mdta/com.apple.rawSampleBufferAttachmentDict";
  v5[27] = @"mdta/com.apple.metadata_stream_item";
  v5[28] = @"mdta/com.apple.metadataDict";
  v0 = *MEMORY[0x277CE5FB0];
  v1 = [*MEMORY[0x277CE5FB0] stringByAppendingPathComponent:*MEMORY[0x277CE5FF0]];
  v5[29] = v1;
  v2 = [v0 stringByAppendingPathComponent:*MEMORY[0x277CE5FF8]];
  v5[30] = v2;
  v5[31] = @"mdta/com.apple.writer_encoder_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:32];
  v4 = +[MOVStreamIOUtility(Private) reservedMIOTrackMetadataKeys]::reservedList;
  +[MOVStreamIOUtility(Private) reservedMIOTrackMetadataKeys]::reservedList = v3;
}

+ (id)nonMIOTrackMetadataItemsInMetadataItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = itemsCopy;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        identifier = [v8 identifier];
        v10 = +[MOVStreamIOUtility reservedMIOTrackMetadataKeys];
        v11 = [v10 containsObject:identifier];

        if ((v11 & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (CVSMPTETime)timecodeForFrameNumber32:(SEL)number32 formatDescription:(int)description
{
  *&retstr->subframes = 0;
  *&retstr->type = 0;
  *&retstr->hours = 0;
  result = CMFormatDescriptionGetMediaSubType(a5);
  if (result != 1953325924)
  {
    return result;
  }

  v9 = bswap32(description);
  FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(a5);
  if (v9 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = -v9;
  }

  TimeCodeFlags = CMTimeCodeFormatDescriptionGetTimeCodeFlags(a5);
  v13 = FrameQuanta;
  if (TimeCodeFlags)
  {
    v14 = 600 * FrameQuanta - 18;
    v15 = 18 * (v11 / v14);
    v16 = v11 % v14;
    v17 = __OFSUB__(v16, 60 * FrameQuanta);
    v18 = v16 - 60 * FrameQuanta;
    if (v18 < 0 == v17)
    {
      v15 += 2 * (v18 / (60 * FrameQuanta - 2)) + 2;
    }

    v11 += v15;
  }

  retstr->frames = v11 % FrameQuanta;
  retstr->seconds = v11 / FrameQuanta % 60;
  v19 = v11 / FrameQuanta / 60 % 60;
  retstr->minutes = v19;
  v20 = v11 / v13 / 3600;
  if ((CMTimeCodeFormatDescriptionGetTimeCodeFlags(a5) & 2) != 0)
  {
    v21 = v20 % 24;
    if (v9 < 0)
    {
      v22 = CMTimeCodeFormatDescriptionGetTimeCodeFlags(a5);
      v23 = 23 - v21;
      if ((v22 & 4) != 0)
      {
        v23 = v21;
      }

      retstr->hours = v23;
      if ((v22 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    retstr->hours = v21;
  }

  else
  {
    retstr->hours = v20;
    if (v9 < 0)
    {
LABEL_17:
      retstr->minutes = v19 | 0x80;
    }
  }

LABEL_18:
  retstr->flags = 1;
  result = CMTimeCodeFormatDescriptionGetFrameQuanta(a5);
  if (result > 29)
  {
    if (result == 30)
    {
      v24 = 3;
    }

    else
    {
      if (result != 60)
      {
        return result;
      }

      v24 = 6;
    }
  }

  else if (result == 24)
  {
    v24 = 0;
  }

  else
  {
    if (result != 25)
    {
      return result;
    }

    v24 = 1;
  }

  retstr->type = v24;
  return result;
}

+ (int64_t)frameNumber64ForTimecode:(CVSMPTETime *)timecode usingFormatDescription:(opaqueCMFormatDescription *)description
{
  if (CMFormatDescriptionGetMediaSubType(description) == 1952658996)
  {
    FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(description);
    v7 = 60 * FrameQuanta;
    v8 = timecode->frames + timecode->seconds * FrameQuanta + (60 * FrameQuanta * (timecode->minutes & 0xFFFFFF7F)) + 3600 * FrameQuanta * timecode->hours;
    if (CMTimeCodeFormatDescriptionGetTimeCodeFlags(description))
    {
      v9 = 600 * FrameQuanta;
      v10 = -18 * (v8 / v9);
      v11 = v8 % v9;
      v12 = v11 / v7;
      if (v11 >= 2 && v12 >= 1)
      {
        v16 = v10 - (2 * v12) + 2;
        v17 = v11 % v7;
        if (v17 < 2)
        {
          v10 = v16 + ~v17;
        }

        else
        {
          v10 = v16 - 2;
        }
      }

      v8 += v10;
    }

    if ((timecode->minutes & 0x80) != 0)
    {
      v14 = -v8;
    }

    else
    {
      v14 = v8;
    }
  }

  else
  {
    v14 = 0;
  }

  return bswap64(v14);
}

+ (int)frameNumber32ForTimecode:(CVSMPTETime *)timecode usingFormatDescription:(opaqueCMFormatDescription *)description
{
  if (CMFormatDescriptionGetMediaSubType(description) == 1953325924)
  {
    FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(description);
    v7 = timecode->frames + (timecode->seconds + 60 * (timecode->minutes & 0xFFFFFF7F) + 3600 * timecode->hours) * FrameQuanta;
    if (CMTimeCodeFormatDescriptionGetTimeCodeFlags(description))
    {
      v8 = -18 * (v7 / (600 * FrameQuanta));
      v9 = v7 % (600 * FrameQuanta);
      v10 = v9 / (60 * FrameQuanta);
      if (v9 >= 2 && v10 >= 1)
      {
        v14 = v8 - 2 * v10 + 2;
        v15 = v9 % (60 * FrameQuanta);
        if (v15 < 2)
        {
          v8 = v14 + ~v15;
        }

        else
        {
          v8 = v14 - 2;
        }
      }

      v7 += v8;
    }

    if ((timecode->minutes & 0x80) != 0)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }
  }

  else
  {
    v12 = 0;
  }

  return bswap32(v12);
}

+ (CVSMPTETime)advanceTimeCode:(SEL)code frameQuanta:(CVSMPTETime *)quanta dropFrame:(int64_t)frame
{
  *&retstr->subframes = *&quanta->subframes;
  *&retstr->counter = *&quanta->counter;
  retstr->flags = quanta->flags;
  hours = quanta->hours;
  retstr->hours = hours;
  minutes = quanta->minutes;
  retstr->minutes = minutes;
  seconds = quanta->seconds;
  retstr->seconds = seconds;
  v9 = quanta->frames + 1;
  retstr->frames = v9;
  if (!(v9 % frame))
  {
    v10 = seconds + 1;
    *&retstr->seconds = v10;
    if (v10 == 60)
    {
      v11 = minutes + 1;
      *&retstr->minutes = v11;
      if (a6 && v11 % 10)
      {
        retstr->frames = 2;
      }

      if (v11 == 60)
      {
        *&retstr->hours = (hours + 1);
      }
    }
  }

  return result;
}

+ (opaqueCMFormatDescription)createTimeCodeFormatDescriptionWithFrameRate:(double)rate error:(id *)error
{
  formatDescriptionOut = 0;
  v6 = vcvtpd_u64_f64(rate);
  v7 = *MEMORY[0x277CBECE8];
  CMTimeMake(&frameDuration, 100, (rate * 100.0));
  v8 = CMTimeCodeFormatDescriptionCreate(v7, 0x74633634u, &frameDuration, v6, 3u, 0, &formatDescriptionOut);
  if (!v8)
  {
    return formatDescriptionOut;
  }

  if (error)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create TimeCode32 FormatDescription with fps %f. Error: %d", *&rate, v8];
    *error = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v9 code:8];
  }

  return 0;
}

+ (opaqueCMFormatDescription)createTimeCode32FormatDescriptionWithFrameRate:(double)rate tcDropFrame:(BOOL)frame error:(id *)error
{
  formatDescriptionOut = 0;
  if (frame)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = *MEMORY[0x277CBECE8];
  CMTimeMake(&frameDuration, 100, (rate * 100.0));
  v9 = CMTimeCodeFormatDescriptionCreate(v8, 0x746D6364u, &frameDuration, vcvtpd_u64_f64(rate), v7, 0, &formatDescriptionOut);
  if (!v9)
  {
    return formatDescriptionOut;
  }

  if (error)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create TimeCode32 FormatDescription with fps %f. Error: %d", *&rate, v9];
    *error = [MEMORY[0x277CCA9B8] internalErrorWithMessage:v10 code:8];
  }

  return 0;
}

+ (BOOL)isMOVStreamIOMovMetadataIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [MIOVersion allVersionedKeysForKey:@"mdta/com.apple.framework.state.MOVStreamIO" modifier:0, 0];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([identifierCopy isEqualToString:*(*(&v10 + 1) + 8 * i)])
        {

          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([identifierCopy isEqualToString:@"mdta/com.apple.framework.mio.session.starttime"])
  {
LABEL_12:
    v8 = 1;
  }

  else
  {
    v8 = [identifierCopy isEqualToString:@"mdta/com.apple.framework.mio.timeRangeMetadataKeyHint"];
  }

  return v8;
}

+ (BOOL)saveSessionStartTime:(id *)time toMovieAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v13 = *time;
  v8 = [MEMORY[0x277CE6520] movMetadataItemWithSessionStartTime:&v13 error:error];
  if (v8)
  {
    v9 = [[MIOMovieMetadataUtility alloc] initWithURL:lCopy error:error];
    v10 = v9;
    v11 = v9 && [(MIOMovieMetadataUtility *)v9 addMovieMetadataItem:v8]&& [(MIOMovieMetadataUtility *)v10 applyChangesError:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)getCustomAssociatedMetadataStreamIdFromTrack:(id)track
{
  formatDescriptions = [track formatDescriptions];
  v4 = [formatDescriptions objectAtIndexedSubscript:0];

  v5 = [(__CFDictionary *)CMFormatDescriptionGetExtensions(v4) objectForKeyedSubscript:@"MetadataKeyTable"];
  v6 = [v5 objectForKey:@"2"];
  if (!v6)
  {
    v6 = [v5 objectForKey:@"1"];
  }

  v7 = [v6 objectForKeyedSubscript:@"MetadataKeyValue"];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];

  return v8;
}

@end