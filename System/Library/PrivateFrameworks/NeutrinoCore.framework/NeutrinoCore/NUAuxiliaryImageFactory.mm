@interface NUAuxiliaryImageFactory
+ (id)auxiliaryImageFromCoreGraphicsInfoDictionary:(id)dictionary forCGAuxiliaryImageTypeString:(id)string error:(id *)error;
+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer auxiliaryImageType:(int64_t)type identifier:(id)identifier metadata:(CGImageMetadata *)metadata;
+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer auxiliaryImageType:(int64_t)type identifier:(id)identifier originalProperties:(id)properties error:(id *)error;
@end

@implementation NUAuxiliaryImageFactory

+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer auxiliaryImageType:(int64_t)type identifier:(id)identifier originalProperties:(id)properties error:(id *)error
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v14 = propertiesCopy;
  if (type == 2)
  {
    v15 = [propertiesCopy auxiliaryImage:error];

    if (v15)
    {
      v16 = [v15 auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:buffer error:error];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = [self auxiliaryImageWithPixelBuffer:buffer auxiliaryImageType:type identifier:identifierCopy metadata:{objc_msgSend(propertiesCopy, "auxiliaryDataInfoMetadata")}];
    colorSpace = [v14 colorSpace];
    [v16 setColorSpace:colorSpace];

    compatibilityMetadata = [v14 compatibilityMetadata];
    [v16 setCompatibilityMetadata:compatibilityMetadata];
  }

  return v16;
}

+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer auxiliaryImageType:(int64_t)type identifier:(id)identifier metadata:(CGImageMetadata *)metadata
{
  identifierCopy = identifier;
  v10 = [[NUAuxiliaryImageRawBuffer alloc] initWithPixelBuffer:buffer auxiliaryImageType:type identifier:identifierCopy];

  [(NUAuxiliaryImageRawBuffer *)v10 setMetadata:metadata];

  return v10;
}

+ (id)auxiliaryImageFromCoreGraphicsInfoDictionary:(id)dictionary forCGAuxiliaryImageTypeString:(id)string error:(id *)error
{
  dictionaryCopy = dictionary;
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E696D260]])
  {
    v10 = [MEMORY[0x1E6987198] depthDataFromDictionaryRepresentation:dictionaryCopy error:error];
    if (v10)
    {
      v11 = [[NUAuxiliaryImageAVDepthData alloc] initAuxiliaryImageFromAVDepthData:v10];
LABEL_13:
      v12 = v11;
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696D288]])
  {
    v10 = [MEMORY[0x1E6987208] portraitEffectsMatteFromDictionaryRepresentation:dictionaryCopy error:error];
    if (v10)
    {
      v11 = [[NUAuxiliaryImageAVPortraitEffectsMatte alloc] initAuxiliaryImageFromAVPortraitEffectMatte:v10];
      goto LABEL_13;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (([stringCopy isEqualToString:*MEMORY[0x1E696D2A0]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", *MEMORY[0x1E696D2B0]) & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", *MEMORY[0x1E696D298]) & 1) != 0 || objc_msgSend(stringCopy, "isEqualToString:", *MEMORY[0x1E696D290]))
  {
    v10 = [MEMORY[0x1E6987210] semanticSegmentationMatteFromImageSourceAuxiliaryDataType:stringCopy dictionaryRepresentation:dictionaryCopy error:error];
    if (v10)
    {
      v11 = [[NUAuxiliaryImageAVSemanticSegmentationMatte alloc] initAuxiliaryImageFromAVSemanticSegmentationMatte:v10];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E696D2A8]])
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D220]];
    v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D430]];
    unsignedLongValue = [v14 unsignedLongValue];

    v16 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
    unsignedLongValue2 = [v16 unsignedLongValue];

    v18 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
    unsignedLongValue3 = [v18 unsignedLongValue];

    v20 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
    unsignedIntValue = [v20 unsignedIntValue];

    pixelBuffer = 0;
    v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D218]];
    v23 = *MEMORY[0x1E695E480];
    bytes = [v22 bytes];
    v25 = v22;
    CVPixelBufferCreateWithBytes(v23, unsignedLongValue2, unsignedLongValue3, unsignedIntValue, bytes, unsignedLongValue, _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback, v25, 0, &pixelBuffer);
    v26 = pixelBuffer;
    v27 = *MEMORY[0x1E6965CE8];
    v28 = +[NUColorSpace genericGrayColorSpace];
    CVBufferSetAttachment(v26, v27, [v28 CGColorSpace], kCVAttachmentMode_ShouldPropagate);

    v29 = [NUAuxiliaryImageRawBuffer alloc];
    v12 = [(NUAuxiliaryImageRawBuffer *)v29 initWithPixelBuffer:pixelBuffer auxiliaryImageType:9 identifier:stringCopy];
    v30 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    [(NUAuxiliaryImageRawBuffer *)v12 setMetadata:v30];
    goto LABEL_39;
  }

  v31 = *MEMORY[0x1E696D270];
  v32 = [stringCopy isEqualToString:*MEMORY[0x1E696D270]];
  v33 = MEMORY[0x1E696D280];
  if ((v32 & 1) != 0 || [stringCopy isEqualToString:*MEMORY[0x1E696D280]])
  {
    pixelBuffer = 0;
    if (!ImageIOLibraryCore_16784() || !getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc() || (getkCGImageAuxiliaryDataInfoPixelBuffer(), [dictionaryCopy objectForKeyedSubscript:v34], (pixelBuffer = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v68 = v31;
      v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D220]];
      v35 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D430]];
      bytesPerRow = [v35 unsignedLongValue];

      v36 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
      unsignedLongValue4 = [v36 unsignedLongValue];

      v38 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
      unsignedLongValue5 = [v38 unsignedLongValue];

      v40 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
      unsignedIntValue2 = [v40 unsignedIntValue];

      v42 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D218]];
      v43 = *MEMORY[0x1E695E480];
      bytes2 = [v42 bytes];
      v25 = v42;
      CVPixelBufferCreateWithBytes(v43, unsignedLongValue4, unsignedLongValue5, unsignedIntValue2, bytes2, bytesPerRow, _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback, v25, 0, &pixelBuffer);
      if (!pixelBuffer)
      {
        [NUError failureError:@"Failed to create pixel buffer from auxiliary info" object:dictionaryCopy];
        *error = v12 = 0;
        goto LABEL_41;
      }

      v33 = MEMORY[0x1E696D280];
      v31 = v68;
    }

    v10 = +[NUColorSpace linearGrayColorSpace];
    if ([stringCopy isEqualToString:v31] && !+[NUGlobalSettings forceMeteorPlusLinear](NUGlobalSettings, "forceMeteorPlusLinear"))
    {
      v45 = +[NUColorSpace genericGrayGamma2_2ColorSpace];

      v10 = v45;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v25 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
    v47 = [(__CFDictionary *)v25 objectForKeyedSubscript:*MEMORY[0x1E69662A8]];
    bOOLValue = [v47 BOOLValue];

    v49 = [(__CFDictionary *)v25 objectForKeyedSubscript:*MEMORY[0x1E69662B8]];
    bOOLValue2 = [v49 BOOLValue];

    if ((bOOLValue & 1) != 0 || bOOLValue2)
    {
      CVBufferRemoveAttachment(pixelBuffer, *MEMORY[0x1E6965CE8]);
    }

    else
    {
      CVBufferSetAttachment(pixelBuffer, *MEMORY[0x1E6965CE8], [v10 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
    }

    v51 = [NUAuxiliaryImageRawBuffer alloc];
    v12 = [(NUAuxiliaryImageRawBuffer *)v51 initWithPixelBuffer:pixelBuffer auxiliaryImageType:7 identifier:stringCopy];
    v52 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    [(NUAuxiliaryImageRawBuffer *)v12 setMetadata:v52];

    v53 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D210]];

    if (v53)
    {
      v54 = [[NUColorSpace alloc] initWithCGColorSpace:v53];
      [(NUAuxiliaryImageRawBuffer *)v12 setColorSpace:v54];
    }

    if (![stringCopy isEqualToString:*v33])
    {
LABEL_40:
      CVPixelBufferRelease(pixelBuffer);
LABEL_41:

      goto LABEL_15;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D230]];
    [(NUAuxiliaryImageRawBuffer *)v12 setCompatibilityMetadata:v30];
LABEL_39:

    goto LABEL_40;
  }

  if (([stringCopy isEqualToString:{@"tag:apple.com, 2023:photo:aux:linearthumbnail"}] & 1) != 0 || objc_msgSend(stringCopy, "isEqualToString:", @"tag:apple.com,2023:photo:aux:styledeltamap"))
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D220]];
    v55 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D430]];
    bytesPerRowa = [v55 unsignedLongValue];

    v56 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
    unsignedLongValue6 = [v56 unsignedLongValue];

    v58 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
    unsignedLongValue7 = [v58 unsignedLongValue];

    v60 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
    unsignedIntValue3 = [v60 unsignedIntValue];

    pixelBuffer = 0;
    v62 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E696D218]];
    v63 = *MEMORY[0x1E695E480];
    bytes3 = [v62 bytes];
    v65 = v62;
    CVPixelBufferCreateWithBytes(v63, unsignedLongValue6, unsignedLongValue7, unsignedIntValue3, bytes3, bytesPerRowa, _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback, v65, 0, &pixelBuffer);
    if ([stringCopy isEqualToString:{@"tag:apple.com, 2023:photo:aux:styledeltamap"}])
    {
      v66 = 11;
    }

    else
    {
      v66 = 10;
    }

    v67 = [NUAuxiliaryImageRawBuffer alloc];
    v12 = [(NUAuxiliaryImageRawBuffer *)v67 initWithPixelBuffer:pixelBuffer auxiliaryImageType:v66 identifier:stringCopy];
    CVPixelBufferRelease(pixelBuffer);

    goto LABEL_15;
  }

  [NUError errorWithCode:7 reason:@"Unable to convert auxiliary data to NUAuxiliaryImage" object:self underlyingError:*error];
  *error = v12 = 0;
LABEL_16:

  return v12;
}

@end