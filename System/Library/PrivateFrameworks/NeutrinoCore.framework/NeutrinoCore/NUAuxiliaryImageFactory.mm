@interface NUAuxiliaryImageFactory
+ (id)auxiliaryImageFromCoreGraphicsInfoDictionary:(id)a3 forCGAuxiliaryImageTypeString:(id)a4 error:(id *)a5;
+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 auxiliaryImageType:(int64_t)a4 identifier:(id)a5 metadata:(CGImageMetadata *)a6;
+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 auxiliaryImageType:(int64_t)a4 identifier:(id)a5 originalProperties:(id)a6 error:(id *)a7;
@end

@implementation NUAuxiliaryImageFactory

+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 auxiliaryImageType:(int64_t)a4 identifier:(id)a5 originalProperties:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (a4 == 2)
  {
    v15 = [v13 auxiliaryImage:a7];

    if (v15)
    {
      v16 = [v15 auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:a3 error:a7];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = [a1 auxiliaryImageWithPixelBuffer:a3 auxiliaryImageType:a4 identifier:v12 metadata:{objc_msgSend(v13, "auxiliaryDataInfoMetadata")}];
    v17 = [v14 colorSpace];
    [v16 setColorSpace:v17];

    v18 = [v14 compatibilityMetadata];
    [v16 setCompatibilityMetadata:v18];
  }

  return v16;
}

+ (id)auxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 auxiliaryImageType:(int64_t)a4 identifier:(id)a5 metadata:(CGImageMetadata *)a6
{
  v9 = a5;
  v10 = [[NUAuxiliaryImageRawBuffer alloc] initWithPixelBuffer:a3 auxiliaryImageType:a4 identifier:v9];

  [(NUAuxiliaryImageRawBuffer *)v10 setMetadata:a6];

  return v10;
}

+ (id)auxiliaryImageFromCoreGraphicsInfoDictionary:(id)a3 forCGAuxiliaryImageTypeString:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:*MEMORY[0x1E696D260]])
  {
    v10 = [MEMORY[0x1E6987198] depthDataFromDictionaryRepresentation:v8 error:a5];
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

  if ([v9 isEqualToString:*MEMORY[0x1E696D288]])
  {
    v10 = [MEMORY[0x1E6987208] portraitEffectsMatteFromDictionaryRepresentation:v8 error:a5];
    if (v10)
    {
      v11 = [[NUAuxiliaryImageAVPortraitEffectsMatte alloc] initAuxiliaryImageFromAVPortraitEffectMatte:v10];
      goto LABEL_13;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (([v9 isEqualToString:*MEMORY[0x1E696D2A0]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E696D2B0]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E696D298]) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E696D290]))
  {
    v10 = [MEMORY[0x1E6987210] semanticSegmentationMatteFromImageSourceAuxiliaryDataType:v9 dictionaryRepresentation:v8 error:a5];
    if (v10)
    {
      v11 = [[NUAuxiliaryImageAVSemanticSegmentationMatte alloc] initAuxiliaryImageFromAVSemanticSegmentationMatte:v10];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([v9 isEqualToString:*MEMORY[0x1E696D2A8]])
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D220]];
    v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D430]];
    v15 = [v14 unsignedLongValue];

    v16 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
    v17 = [v16 unsignedLongValue];

    v18 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
    v19 = [v18 unsignedLongValue];

    v20 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
    v21 = [v20 unsignedIntValue];

    pixelBuffer = 0;
    v22 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D218]];
    v23 = *MEMORY[0x1E695E480];
    v24 = [v22 bytes];
    v25 = v22;
    CVPixelBufferCreateWithBytes(v23, v17, v19, v21, v24, v15, _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback, v25, 0, &pixelBuffer);
    v26 = pixelBuffer;
    v27 = *MEMORY[0x1E6965CE8];
    v28 = +[NUColorSpace genericGrayColorSpace];
    CVBufferSetAttachment(v26, v27, [v28 CGColorSpace], kCVAttachmentMode_ShouldPropagate);

    v29 = [NUAuxiliaryImageRawBuffer alloc];
    v12 = [(NUAuxiliaryImageRawBuffer *)v29 initWithPixelBuffer:pixelBuffer auxiliaryImageType:9 identifier:v9];
    v30 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    [(NUAuxiliaryImageRawBuffer *)v12 setMetadata:v30];
    goto LABEL_39;
  }

  v31 = *MEMORY[0x1E696D270];
  v32 = [v9 isEqualToString:*MEMORY[0x1E696D270]];
  v33 = MEMORY[0x1E696D280];
  if ((v32 & 1) != 0 || [v9 isEqualToString:*MEMORY[0x1E696D280]])
  {
    pixelBuffer = 0;
    if (!ImageIOLibraryCore_16784() || !getkCGImageAuxiliaryDataInfoPixelBufferSymbolLoc() || (getkCGImageAuxiliaryDataInfoPixelBuffer(), [v8 objectForKeyedSubscript:v34], (pixelBuffer = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v68 = v31;
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D220]];
      v35 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D430]];
      bytesPerRow = [v35 unsignedLongValue];

      v36 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
      v37 = [v36 unsignedLongValue];

      v38 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
      v39 = [v38 unsignedLongValue];

      v40 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
      v41 = [v40 unsignedIntValue];

      v42 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D218]];
      v43 = *MEMORY[0x1E695E480];
      v44 = [v42 bytes];
      v25 = v42;
      CVPixelBufferCreateWithBytes(v43, v37, v39, v41, v44, bytesPerRow, _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback, v25, 0, &pixelBuffer);
      if (!pixelBuffer)
      {
        [NUError failureError:@"Failed to create pixel buffer from auxiliary info" object:v8];
        *a5 = v12 = 0;
        goto LABEL_41;
      }

      v33 = MEMORY[0x1E696D280];
      v31 = v68;
    }

    v10 = +[NUColorSpace linearGrayColorSpace];
    if ([v9 isEqualToString:v31] && !+[NUGlobalSettings forceMeteorPlusLinear](NUGlobalSettings, "forceMeteorPlusLinear"))
    {
      v45 = +[NUColorSpace genericGrayGamma2_2ColorSpace];

      v10 = v45;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v25 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
    v47 = [(__CFDictionary *)v25 objectForKeyedSubscript:*MEMORY[0x1E69662A8]];
    v48 = [v47 BOOLValue];

    v49 = [(__CFDictionary *)v25 objectForKeyedSubscript:*MEMORY[0x1E69662B8]];
    v50 = [v49 BOOLValue];

    if ((v48 & 1) != 0 || v50)
    {
      CVBufferRemoveAttachment(pixelBuffer, *MEMORY[0x1E6965CE8]);
    }

    else
    {
      CVBufferSetAttachment(pixelBuffer, *MEMORY[0x1E6965CE8], [v10 CGColorSpace], kCVAttachmentMode_ShouldPropagate);
    }

    v51 = [NUAuxiliaryImageRawBuffer alloc];
    v12 = [(NUAuxiliaryImageRawBuffer *)v51 initWithPixelBuffer:pixelBuffer auxiliaryImageType:7 identifier:v9];
    v52 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    [(NUAuxiliaryImageRawBuffer *)v12 setMetadata:v52];

    v53 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D210]];

    if (v53)
    {
      v54 = [[NUColorSpace alloc] initWithCGColorSpace:v53];
      [(NUAuxiliaryImageRawBuffer *)v12 setColorSpace:v54];
    }

    if (![v9 isEqualToString:*v33])
    {
LABEL_40:
      CVPixelBufferRelease(pixelBuffer);
LABEL_41:

      goto LABEL_15;
    }

    v30 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D230]];
    [(NUAuxiliaryImageRawBuffer *)v12 setCompatibilityMetadata:v30];
LABEL_39:

    goto LABEL_40;
  }

  if (([v9 isEqualToString:{@"tag:apple.com, 2023:photo:aux:linearthumbnail"}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"tag:apple.com,2023:photo:aux:styledeltamap"))
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D220]];
    v55 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696D430]];
    bytesPerRowa = [v55 unsignedLongValue];

    v56 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DFB8]];
    v57 = [v56 unsignedLongValue];

    v58 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DD58]];
    v59 = [v58 unsignedLongValue];

    v60 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696DEC0]];
    v61 = [v60 unsignedIntValue];

    pixelBuffer = 0;
    v62 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696D218]];
    v63 = *MEMORY[0x1E695E480];
    v64 = [v62 bytes];
    v65 = v62;
    CVPixelBufferCreateWithBytes(v63, v57, v59, v61, v64, bytesPerRowa, _NUAuxiliaryImageCVPixelBufferReleaseBytesCallback, v65, 0, &pixelBuffer);
    if ([v9 isEqualToString:{@"tag:apple.com, 2023:photo:aux:styledeltamap"}])
    {
      v66 = 11;
    }

    else
    {
      v66 = 10;
    }

    v67 = [NUAuxiliaryImageRawBuffer alloc];
    v12 = [(NUAuxiliaryImageRawBuffer *)v67 initWithPixelBuffer:pixelBuffer auxiliaryImageType:v66 identifier:v9];
    CVPixelBufferRelease(pixelBuffer);

    goto LABEL_15;
  }

  [NUError errorWithCode:7 reason:@"Unable to convert auxiliary data to NUAuxiliaryImage" object:a1 underlyingError:*a5];
  *a5 = v12 = 0;
LABEL_16:

  return v12;
}

@end