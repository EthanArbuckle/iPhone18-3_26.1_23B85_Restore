@interface MUImageWriter
+ (id)outputTypesSupportingHDR;
- (BOOL)writeUsingBaseImage:(id)image withAnnotationsFromController:(id)controller asImageOfType:(id)type toConsumer:(CGDataConsumer *)consumer embedSourceImageAndAnnotationsAsMetadata:(BOOL)metadata encryptPrivateMetadata:(BOOL)privateMetadata error:(id *)error;
- (CGImage)_renderImageForBaseImage:(id)image controller:(id)controller wantsHDR:(BOOL)r opaque:(BOOL)opaque;
- (id)encodedModelFromAnnotationsController:(id)controller encrypt:(BOOL)encrypt;
- (void)addGainMapImageToImageDestination:(CGImageDestination *)destination sdrImage:(CGImage *)image hdrImage:(CGImage *)hdrImage imageMetadata:(CGImageMetadata *)metadata imageOptions:(id)options;
@end

@implementation MUImageWriter

+ (id)outputTypesSupportingHDR
{
  v5[1] = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1D90] identifier];
  v5[0] = identifier;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGImage)_renderImageForBaseImage:(id)image controller:(id)controller wantsHDR:(BOOL)r opaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  rCopy = r;
  imageCopy = image;
  modelController = [controller modelController];
  pageModelControllers = [modelController pageModelControllers];

  v12 = imageCopy;
  if (rCopy)
  {
    hdrImage = [imageCopy hdrImage];
    if (hdrImage)
    {
      goto LABEL_5;
    }

    v12 = imageCopy;
  }

  hdrImage = [v12 sdrImage];
  if (!hdrImage)
  {
    v19 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v14 = hdrImage;
  firstObject = [pageModelControllers firstObject];
  annotations = [firstObject annotations];
  if ([annotations count])
  {
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    v21[0] = *MEMORY[0x277CBF2C0];
    v21[1] = v17;
    v21[2] = *(MEMORY[0x277CBF2C0] + 32);
    v18 = [firstObject renderAnnotationsOnImage:v14 wantsHDR:rCopy opaque:opaqueCopy withTransform:v21 shouldApplyCropRect:1 forPreview:0];
  }

  else
  {
    v18 = CGImageRetain(v14);
  }

  v19 = v18;

LABEL_10:
  return v19;
}

- (BOOL)writeUsingBaseImage:(id)image withAnnotationsFromController:(id)controller asImageOfType:(id)type toConsumer:(CGDataConsumer *)consumer embedSourceImageAndAnnotationsAsMetadata:(BOOL)metadata encryptPrivateMetadata:(BOOL)privateMetadata error:(id *)error
{
  privateMetadataCopy = privateMetadata;
  metadataCopy = metadata;
  imageCopy = image;
  controllerCopy = controller;
  typeCopy = type;
  v17 = @"base_image";
  if (privateMetadataCopy)
  {
    v17 = @"enc_base_image";
    v18 = @"enc_model";
  }

  else
  {
    v18 = @"model";
  }

  v88 = v17;
  name = v18;
  modelController = [controllerCopy modelController];
  pageModelControllers = [modelController pageModelControllers];

  v91 = pageModelControllers;
  firstObject = [pageModelControllers firstObject];
  annotations = [firstObject annotations];
  v21 = +[MUImageWriter outputTypesSupportingHDR];
  v22 = [v21 containsObject:typeCopy];

  v23 = [[_MUBaseImage alloc] initWithBaseImage:imageCopy allowHDR:v22];
  [(_MUBaseImage *)v23 headroom];
  if (v24 <= 1.0)
  {
    hdrImage = 0;
  }

  else
  {
    hdrImage = [(_MUBaseImage *)v23 hdrImage];
  }

  image = [(_MUBaseImage *)v23 sdrImage];
  modelController2 = [controllerCopy modelController];
  [modelController2 annotationHeadroom];
  v28 = v27;

  if (v22)
  {
    [(_MUBaseImage *)v23 headroom];
    v30 = fmax(v29, v28) > 1.0;
  }

  else
  {
    v30 = 0;
  }

  if (!(image | hdrImage))
  {
    NSLog(&cfstr_SFailedToCreat_0.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]", imageCopy);
    LOBYTE(v31) = 0;
    v32 = name;
    goto LABEL_93;
  }

  v81 = v30;
  v79 = privateMetadataCopy;
  if ([(_MUBaseImage *)v23 imageOptions])
  {
    muDeepMutableCopy = [(__CFDictionary *)[(_MUBaseImage *)v23 imageOptions] muDeepMutableCopy];
  }

  else
  {
    muDeepMutableCopy = [MEMORY[0x277CBEB38] dictionary];
  }

  options = muDeepMutableCopy;
  v34 = typeCopy;
  imageSourceRef = [(_MUBaseImage *)v23 imageSourceRef];
  [controllerCopy commitEditing];
  if ([(_MUBaseImage *)v23 imageMetadata])
  {
    MutableCopy = CGImageMetadataCreateMutableCopy([(_MUBaseImage *)v23 imageMetadata]);
  }

  else
  {
    MutableCopy = CGImageMetadataCreateMutable();
  }

  v36 = MutableCopy;
  err = 0;
  CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, kMetadataNamespaceAnnotationKit, kMetadataPrefixAnnotationKit, &err);
  if ([(_MUBaseImage *)v23 imageMetadata])
  {
    name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, name];
    CGImageMetadataRemoveTagWithPath(v36, 0, name);
  }

  v82 = v36;
  if ([v91 count] >= 2)
  {
    NSLog(&cfstr_Pagemodelcontr_0.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]");
  }

  typeCopy = v34;
  cf = CGImageDestinationCreateWithDataConsumer(consumer, v34, 1uLL, 0);
  v38 = v82;
  if (cf)
  {
    if (!metadataCopy)
    {
LABEL_54:
      modifiedImageDescription = [controllerCopy modifiedImageDescription];
      if (modifiedImageDescription)
      {
        v92 = 0;
        v95 = 0;
        v96 = &v95;
        v97 = 0x2020000000;
        v64 = getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr;
        v98 = getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr;
        if (!getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr)
        {
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke;
          v94[3] = &unk_27986E268;
          v94[4] = &v95;
          __getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke(v94);
          v64 = v96[3];
        }

        _Block_object_dispose(&v95, 8);
        if (!v64)
        {
          v73 = +[MUImageReader imageDescriptionFromSourceContent:];
          _Block_object_dispose(&v95, 8);
          _Unwind_Resume(v73);
        }

        if ((v64(v38, modifiedImageDescription, &v92) & 1) == 0)
        {
          if (v92)
          {
            v65 = CFErrorCopyDescription(v92);
            CFRelease(v92);
          }

          else
          {
            v65 = 0;
          }

          if ([(__CFString *)v65 length])
          {
            NSLog(&cfstr_S.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]", v65);
          }

          else
          {
            NSLog(&cfstr_SErrorSettingI.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]", v74);
          }
        }
      }

      v66 = ([(__CFString *)typeCopy isEqualToString:@"public.jpeg"]& 1) != 0 || [(_MUBaseImage *)v23 opaque];
      if (image)
      {
        v67 = [(MUImageWriter *)self _renderImageForBaseImage:v23 controller:controllerCopy wantsHDR:0 opaque:v66];
      }

      else
      {
        v67 = 0;
      }

      if (v81 && (v68 = [(MUImageWriter *)self _renderImageForBaseImage:v23 controller:controllerCopy wantsHDR:1 opaque:v66]) != 0)
      {
        v69 = v68;
        [(MUImageWriter *)self addGainMapImageToImageDestination:cf sdrImage:v67 hdrImage:v68 imageMetadata:v38 imageOptions:options];
        v70 = 1;
      }

      else
      {
        if (v67)
        {
          CGImageDestinationAddImageAndMetadata(cf, v67, v38, options);
        }

        v70 = 0;
        v69 = 0;
      }

      v31 = CGImageDestinationFinalize(cf) & ((v67 != 0) | v70);
      if (!v31)
      {
        NSLog(&cfstr_SCgimagedestin.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]");
      }

      if (v67)
      {
        CGImageRelease(v67);
      }

      if (v70)
      {
        CGImageRelease(v69);
      }

      CFRelease(cf);

      goto LABEL_85;
    }

    v77 = imageCopy;
    context = objc_autoreleasePoolPush();
    v39 = [(MUImageWriter *)self encodedModelFromAnnotationsController:controllerCopy encrypt:v79];
    v40 = [v39 base64EncodedStringWithOptions:0];
    v41 = CGImageMetadataTagCreate(kMetadataNamespaceAnnotationKit, kMetadataPrefixAnnotationKit, name, kCGImageMetadataTypeString, v40);
    if (v41)
    {
      v42 = v41;
      name2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, name];
      CGImageMetadataSetTagWithPath(v82, 0, name2, v42);
      CFRelease(v42);
    }

    objc_autoreleasePoolPop(context);
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, v88];
    v45 = CGImageMetadataCopyTagWithPath(v82, 0, v44);
    v38 = v82;
    if (v45)
    {
      CFRelease(v45);
      imageCopy = v77;
      typeCopy = v34;
LABEL_53:

      goto LABEL_54;
    }

    data = [MEMORY[0x277CBEB28] data];
    v47 = data;
    imageCopy = v77;
    typeCopy = v34;
    if (imageSourceRef)
    {
      Type = CGImageSourceGetType(imageSourceRef);
      v49 = CGImageDestinationCreateWithData(v47, Type, 1uLL, 0);
      v50 = v79;
      if (v49)
      {
        v51 = v49;
        v94[0] = 0;
        if (CGImageDestinationCopyImageSource(v49, imageSourceRef, 0, v94))
        {
          CFRelease(v51);
LABEL_42:
          v55 = objc_autoreleasePoolPush();
          if (v50)
          {
            v56 = +[MUPayloadEncryption sharedInstance];
            v57 = [v56 encryptData:v47];
          }

          else
          {
            v57 = v47;
          }

          if (v57)
          {
            v58 = [(__CFData *)v57 base64EncodedStringWithOptions:0];
            v80 = v55;
            v59 = v47;
            v60 = CGImageMetadataTagCreate(kMetadataNamespaceAnnotationKit, kMetadataPrefixAnnotationKit, v88, kCGImageMetadataTypeString, v58);
            v38 = v82;
            v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, v88];

            CGImageMetadataSetTagWithPath(v82, 0, v61, v60);
            v62 = v60;
            imageCopy = v77;
            CFRelease(v62);

            v44 = v61;
            v47 = v59;
            v55 = v80;
          }

          objc_autoreleasePoolPop(v55);
          goto LABEL_52;
        }

        NSLog(&cfstr_Cgimagedestina.isa, v94[0]);
        CFRelease(v51);
      }

      else
      {
        NSLog(&cfstr_Cgimagedestina_0.isa);
      }

LABEL_51:
      NSLog(&cfstr_DidnTWriteBase.isa);
LABEL_52:

      goto LABEL_53;
    }

    v50 = v79;
    contexta = data;
    if (hdrImage)
    {
      identifier = [*MEMORY[0x277CE1D90] identifier];
      v53 = CGImageDestinationCreateWithData(v47, identifier, 1uLL, 0);

      if (v53)
      {
        [(MUImageWriter *)self addGainMapImageToImageDestination:v53 sdrImage:image hdrImage:hdrImage imageMetadata:0 imageOptions:0];
LABEL_40:
        if (CGImageDestinationFinalize(v53))
        {
          CFRelease(v53);
          v47 = contexta;
          goto LABEL_42;
        }

        NSLog(&cfstr_Cgimagedestina_1.isa);
        CFRelease(v53);
        goto LABEL_50;
      }
    }

    else
    {
      identifier2 = [*MEMORY[0x277CE1DC0] identifier];
      v53 = CGImageDestinationCreateWithData(v47, identifier2, 1uLL, 0);

      if (v53)
      {
        CGImageDestinationAddImage(v53, image, 0);
        goto LABEL_40;
      }
    }

    NSLog(&cfstr_Cgimagedestina_2.isa);
LABEL_50:
    v47 = contexta;
    goto LABEL_51;
  }

  NSLog(&cfstr_SFailedToCreat_1.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]");
  LOBYTE(v31) = 0;
LABEL_85:
  v32 = name;
  if (v38)
  {
    CFRelease(v38);
  }

  if (error)
  {
    v71 = v31;
  }

  else
  {
    v71 = 1;
  }

  if ((v71 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
  }

LABEL_93:
  return v31;
}

- (void)addGainMapImageToImageDestination:(CGImageDestination *)destination sdrImage:(CGImage *)image hdrImage:(CGImage *)hdrImage imageMetadata:(CGImageMetadata *)metadata imageOptions:(id)options
{
  if (options)
  {
    dictionary = [options mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  options = dictionary;
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v13 = MEMORY[0x277CBEC38];
  [dictionary2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D10]];
  [dictionary2 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2C40]];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2019963956];
  [dictionary2 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2CF0]];

  [dictionary2 setObject:*MEMORY[0x277CBF3E0] forKeyedSubscript:*MEMORY[0x277CD2CE8]];
  v15 = *MEMORY[0x277CD2D48];
  [dictionary2 setObject:&unk_2869693E8 forKeyedSubscript:*MEMORY[0x277CD2D48]];
  v16 = *MEMORY[0x277CD2D20];
  [(__CFDictionary *)options setObject:dictionary2 forKeyedSubscript:*MEMORY[0x277CD2D20]];
  if (image)
  {
    hdrImageCopy = image;
  }

  else
  {
    hdrImageCopy = hdrImage;
  }

  CGImageDestinationAddImageAndMetadata(destination, hdrImageCopy, metadata, options);
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [dictionary3 setObject:*MEMORY[0x277CD2D28] forKeyedSubscript:*MEMORY[0x277CD2D18]];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2019963956];
  [dictionary4 setObject:v20 forKeyedSubscript:*MEMORY[0x277CD2CF8]];

  [dictionary4 setObject:&unk_2869693D0 forKeyedSubscript:*MEMORY[0x277CD2D00]];
  [dictionary4 setObject:*MEMORY[0x277CBF3F0] forKeyedSubscript:*MEMORY[0x277CD2CE0]];
  [dictionary4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D08]];
  [dictionary4 setObject:&unk_2869693E8 forKeyedSubscript:v15];
  [dictionary3 setObject:dictionary4 forKeyedSubscript:v16];
  CGImageDestinationAddImage(destination, hdrImage, dictionary3);
}

- (id)encodedModelFromAnnotationsController:(id)controller encrypt:(BOOL)encrypt
{
  encryptCopy = encrypt;
  controllerCopy = controller;
  [controllerCopy commitEditing];
  modelController = [controllerCopy modelController];

  archivedPageModelControllers = [modelController archivedPageModelControllers];

  if (encryptCopy)
  {
    v8 = +[MUPayloadEncryption sharedInstance];
    v9 = [v8 encryptData:archivedPageModelControllers];

    archivedPageModelControllers = v9;
  }

  return archivedPageModelControllers;
}

@end