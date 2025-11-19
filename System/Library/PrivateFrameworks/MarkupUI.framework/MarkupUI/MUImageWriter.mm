@interface MUImageWriter
+ (id)outputTypesSupportingHDR;
- (BOOL)writeUsingBaseImage:(id)a3 withAnnotationsFromController:(id)a4 asImageOfType:(id)a5 toConsumer:(CGDataConsumer *)a6 embedSourceImageAndAnnotationsAsMetadata:(BOOL)a7 encryptPrivateMetadata:(BOOL)a8 error:(id *)a9;
- (CGImage)_renderImageForBaseImage:(id)a3 controller:(id)a4 wantsHDR:(BOOL)a5 opaque:(BOOL)a6;
- (id)encodedModelFromAnnotationsController:(id)a3 encrypt:(BOOL)a4;
- (void)addGainMapImageToImageDestination:(CGImageDestination *)a3 sdrImage:(CGImage *)a4 hdrImage:(CGImage *)a5 imageMetadata:(CGImageMetadata *)a6 imageOptions:(id)a7;
@end

@implementation MUImageWriter

+ (id)outputTypesSupportingHDR
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*MEMORY[0x277CE1D90] identifier];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGImage)_renderImageForBaseImage:(id)a3 controller:(id)a4 wantsHDR:(BOOL)a5 opaque:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v10 = [a4 modelController];
  v11 = [v10 pageModelControllers];

  v12 = v9;
  if (v7)
  {
    v13 = [v9 hdrImage];
    if (v13)
    {
      goto LABEL_5;
    }

    v12 = v9;
  }

  v13 = [v12 sdrImage];
  if (!v13)
  {
    v19 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v14 = v13;
  v15 = [v11 firstObject];
  v16 = [v15 annotations];
  if ([v16 count])
  {
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    v21[0] = *MEMORY[0x277CBF2C0];
    v21[1] = v17;
    v21[2] = *(MEMORY[0x277CBF2C0] + 32);
    v18 = [v15 renderAnnotationsOnImage:v14 wantsHDR:v7 opaque:v6 withTransform:v21 shouldApplyCropRect:1 forPreview:0];
  }

  else
  {
    v18 = CGImageRetain(v14);
  }

  v19 = v18;

LABEL_10:
  return v19;
}

- (BOOL)writeUsingBaseImage:(id)a3 withAnnotationsFromController:(id)a4 asImageOfType:(id)a5 toConsumer:(CGDataConsumer *)a6 embedSourceImageAndAnnotationsAsMetadata:(BOOL)a7 encryptPrivateMetadata:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v10 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = @"base_image";
  if (v9)
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
  v19 = [v15 modelController];
  v20 = [v19 pageModelControllers];

  v91 = v20;
  v87 = [v20 firstObject];
  v86 = [v87 annotations];
  v21 = +[MUImageWriter outputTypesSupportingHDR];
  v22 = [v21 containsObject:v16];

  v23 = [[_MUBaseImage alloc] initWithBaseImage:v14 allowHDR:v22];
  [(_MUBaseImage *)v23 headroom];
  if (v24 <= 1.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = [(_MUBaseImage *)v23 hdrImage];
  }

  image = [(_MUBaseImage *)v23 sdrImage];
  v26 = [v15 modelController];
  [v26 annotationHeadroom];
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

  if (!(image | v25))
  {
    NSLog(&cfstr_SFailedToCreat_0.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]", v14);
    LOBYTE(v31) = 0;
    v32 = name;
    goto LABEL_93;
  }

  v81 = v30;
  v79 = v9;
  if ([(_MUBaseImage *)v23 imageOptions])
  {
    v33 = [(__CFDictionary *)[(_MUBaseImage *)v23 imageOptions] muDeepMutableCopy];
  }

  else
  {
    v33 = [MEMORY[0x277CBEB38] dictionary];
  }

  options = v33;
  v34 = v16;
  v78 = [(_MUBaseImage *)v23 imageSourceRef];
  [v15 commitEditing];
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
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, name];
    CGImageMetadataRemoveTagWithPath(v36, 0, v37);
  }

  v82 = v36;
  if ([v91 count] >= 2)
  {
    NSLog(&cfstr_Pagemodelcontr_0.isa, "[MUImageWriter writeUsingBaseImage:withAnnotationsFromController:asImageOfType:toConsumer:embedSourceImageAndAnnotationsAsMetadata:encryptPrivateMetadata:error:]");
  }

  v16 = v34;
  cf = CGImageDestinationCreateWithDataConsumer(a6, v34, 1uLL, 0);
  v38 = v82;
  if (cf)
  {
    if (!v10)
    {
LABEL_54:
      v63 = [v15 modifiedImageDescription];
      if (v63)
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

        if ((v64(v38, v63, &v92) & 1) == 0)
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

      v66 = ([(__CFString *)v16 isEqualToString:@"public.jpeg"]& 1) != 0 || [(_MUBaseImage *)v23 opaque];
      if (image)
      {
        v67 = [(MUImageWriter *)self _renderImageForBaseImage:v23 controller:v15 wantsHDR:0 opaque:v66];
      }

      else
      {
        v67 = 0;
      }

      if (v81 && (v68 = [(MUImageWriter *)self _renderImageForBaseImage:v23 controller:v15 wantsHDR:1 opaque:v66]) != 0)
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

    v77 = v14;
    context = objc_autoreleasePoolPush();
    v39 = [(MUImageWriter *)self encodedModelFromAnnotationsController:v15 encrypt:v79];
    v40 = [v39 base64EncodedStringWithOptions:0];
    v41 = CGImageMetadataTagCreate(kMetadataNamespaceAnnotationKit, kMetadataPrefixAnnotationKit, name, kCGImageMetadataTypeString, v40);
    if (v41)
    {
      v42 = v41;
      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, name];
      CGImageMetadataSetTagWithPath(v82, 0, v43, v42);
      CFRelease(v42);
    }

    objc_autoreleasePoolPop(context);
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", kMetadataPrefixAnnotationKit, v88];
    v45 = CGImageMetadataCopyTagWithPath(v82, 0, v44);
    v38 = v82;
    if (v45)
    {
      CFRelease(v45);
      v14 = v77;
      v16 = v34;
LABEL_53:

      goto LABEL_54;
    }

    v46 = [MEMORY[0x277CBEB28] data];
    v47 = v46;
    v14 = v77;
    v16 = v34;
    if (v78)
    {
      Type = CGImageSourceGetType(v78);
      v49 = CGImageDestinationCreateWithData(v47, Type, 1uLL, 0);
      v50 = v79;
      if (v49)
      {
        v51 = v49;
        v94[0] = 0;
        if (CGImageDestinationCopyImageSource(v49, v78, 0, v94))
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
            v14 = v77;
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
    contexta = v46;
    if (v25)
    {
      v52 = [*MEMORY[0x277CE1D90] identifier];
      v53 = CGImageDestinationCreateWithData(v47, v52, 1uLL, 0);

      if (v53)
      {
        [(MUImageWriter *)self addGainMapImageToImageDestination:v53 sdrImage:image hdrImage:v25 imageMetadata:0 imageOptions:0];
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
      v54 = [*MEMORY[0x277CE1DC0] identifier];
      v53 = CGImageDestinationCreateWithData(v47, v54, 1uLL, 0);

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

  if (a9)
  {
    v71 = v31;
  }

  else
  {
    v71 = 1;
  }

  if ((v71 & 1) == 0)
  {
    *a9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
  }

LABEL_93:
  return v31;
}

- (void)addGainMapImageToImageDestination:(CGImageDestination *)a3 sdrImage:(CGImage *)a4 hdrImage:(CGImage *)a5 imageMetadata:(CGImageMetadata *)a6 imageOptions:(id)a7
{
  if (a7)
  {
    v11 = [a7 mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  options = v11;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = MEMORY[0x277CBEC38];
  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D10]];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2C40]];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2019963956];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD2CF0]];

  [v12 setObject:*MEMORY[0x277CBF3E0] forKeyedSubscript:*MEMORY[0x277CD2CE8]];
  v15 = *MEMORY[0x277CD2D48];
  [v12 setObject:&unk_2869693E8 forKeyedSubscript:*MEMORY[0x277CD2D48]];
  v16 = *MEMORY[0x277CD2D20];
  [(__CFDictionary *)options setObject:v12 forKeyedSubscript:*MEMORY[0x277CD2D20]];
  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = a5;
  }

  CGImageDestinationAddImageAndMetadata(a3, v17, a6, options);
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = [MEMORY[0x277CBEB38] dictionary];
  [v18 setObject:*MEMORY[0x277CD2D28] forKeyedSubscript:*MEMORY[0x277CD2D18]];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2019963956];
  [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277CD2CF8]];

  [v19 setObject:&unk_2869693D0 forKeyedSubscript:*MEMORY[0x277CD2D00]];
  [v19 setObject:*MEMORY[0x277CBF3F0] forKeyedSubscript:*MEMORY[0x277CD2CE0]];
  [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2D08]];
  [v19 setObject:&unk_2869693E8 forKeyedSubscript:v15];
  [v18 setObject:v19 forKeyedSubscript:v16];
  CGImageDestinationAddImage(a3, a5, v18);
}

- (id)encodedModelFromAnnotationsController:(id)a3 encrypt:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [v5 commitEditing];
  v6 = [v5 modelController];

  v7 = [v6 archivedPageModelControllers];

  if (v4)
  {
    v8 = +[MUPayloadEncryption sharedInstance];
    v9 = [v8 encryptData:v7];

    v7 = v9;
  }

  return v7;
}

@end