@interface MUImageReader
+ (BOOL)hasPrivateImageMetadata:(id)a3;
+ (id)cleanImageMetadataFromData:(id)a3;
+ (id)imageDescriptionFromSourceContent:(id)a3;
- (BOOL)readAnnotationsFromArchivedModelData:(id)a3 toController:(id)a4;
- (id)_readAnnotationsFromDataProvider:(CGDataProvider *)a3;
- (id)_readBaseImageFromDataProvider:(CGDataProvider *)a3 providerSource:(id)a4 baseWasValid:(BOOL *)a5;
- (id)_readDataFromTagAtPath:(id)a3 inMetadata:(CGImageMetadata *)a4;
- (id)readArchivedModelDataFromImageData:(id)a3;
- (id)readArchivedModelDataFromImageURL:(id)a3;
- (id)readBaseImageFromData:(id)a3 baseWasValid:(BOOL *)a4;
- (id)readBaseImageFromImageAtURL:(id)a3 baseWasValid:(BOOL *)a4;
@end

@implementation MUImageReader

- (id)readArchivedModelDataFromImageData:(id)a3
{
  v4 = CGDataProviderCreateWithCFData(a3);
  if (v4)
  {
    v5 = v4;
    v6 = [(MUImageReader *)self _readAnnotationsFromDataProvider:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readArchivedModelDataFromImageURL:(id)a3
{
  v4 = CGDataProviderCreateWithURL(a3);
  if (v4)
  {
    v5 = v4;
    v6 = [(MUImageReader *)self _readAnnotationsFromDataProvider:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)readAnnotationsFromArchivedModelData:(id)a3 toController:(id)a4
{
  v5 = a3;
  v6 = [a4 modelController];
  v7 = [v6 populateFromArchivedPageModelControllers:v5];

  return v7;
}

- (id)_readAnnotationsFromDataProvider:(CGDataProvider *)a3
{
  v4 = CGImageSourceCreateWithDataProvider(a3, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CGImageSourceCopyMetadataAtIndex(v4, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:enc_model", kMetadataPrefixAnnotationKit];
      v9 = [(MUImageReader *)self _readDataFromTagAtPath:v8 inMetadata:v7];
      v10 = +[MUPayloadEncryption sharedInstance];
      v11 = [v10 decryptData:v9];

      if (!v11)
      {
        NSLog(&cfstr_DidNotFindEncM.isa);
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:model", kMetadataPrefixAnnotationKit];
        v11 = [(MUImageReader *)self _readDataFromTagAtPath:v12 inMetadata:v7];
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)readBaseImageFromData:(id)a3 baseWasValid:(BOOL *)a4
{
  v6 = a3;
  v7 = CGDataProviderCreateWithCFData(v6);
  if (v7)
  {
    v8 = v7;
    v9 = [(MUImageReader *)self _readBaseImageFromDataProvider:v7 providerSource:v6 baseWasValid:a4];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)readBaseImageFromImageAtURL:(id)a3 baseWasValid:(BOOL *)a4
{
  v6 = a3;
  v7 = CGDataProviderCreateWithURL(v6);
  if (v7)
  {
    v8 = v7;
    v9 = [(MUImageReader *)self _readBaseImageFromDataProvider:v7 providerSource:v6 baseWasValid:a4];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_readBaseImageFromDataProvider:(CGDataProvider *)a3 providerSource:(id)a4 baseWasValid:(BOOL *)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v8 = CGImageSourceCreateWithDataProvider(a3, 0);
  v9 = v8;
  if (v8)
  {
    v10 = CGImageSourceCopyMetadataAtIndex(v8, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:enc_base_image", kMetadataPrefixAnnotationKit];
      v13 = [(MUImageReader *)self _readDataFromTagAtPath:v12 inMetadata:v11];
      v14 = +[MUPayloadEncryption sharedInstance];
      v15 = [v14 decryptData:v13];

      if (!v15)
      {
        NSLog(&cfstr_DidNotFindEncB.isa);
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:base_image", kMetadataPrefixAnnotationKit];
        v15 = [(MUImageReader *)self _readDataFromTagAtPath:v16 inMetadata:v11];
      }

      CFRelease(v11);

      if (v15)
      {
        v17 = CGImageSourceCreateWithData(v15, 0);
        if (v17)
        {
          v18 = v17;
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);
          if (ImageAtIndex)
          {
            CFRelease(ImageAtIndex);
            CFRelease(v18);
            NSLog(&cfstr_SFoundValidBas.isa, "[MUImageReader _readBaseImageFromDataProvider:providerSource:baseWasValid:]");
            if (a5)
            {
              *a5 = 1;
            }

            goto LABEL_23;
          }

          CFRelease(v18);
        }

        if (a5)
        {
          *a5 = 0;
        }

        v20 = [MEMORY[0x277CBEB28] data];
        Type = CGImageSourceGetType(v9);
        v22 = CGImageDestinationCreateWithData(v20, Type, 1uLL, 0);
        v23 = CGImageSourceCopyMetadataAtIndex(v9, 0, 0);
        if (v23)
        {
          v24 = v23;
          NSLog(&cfstr_SBaseImageMeta.isa, "[MUImageReader _readBaseImageFromDataProvider:providerSource:baseWasValid:]");
          MutableCopy = CGImageMetadataCreateMutableCopy(v24);
          CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, kMetadataNamespaceAnnotationKit, kMetadataPrefixAnnotationKit, 0);
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:enc_model", kMetadataPrefixAnnotationKit];
          CGImageMetadataRemoveTagWithPath(MutableCopy, 0, v26);
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:model", kMetadataPrefixAnnotationKit];

          CGImageMetadataRemoveTagWithPath(MutableCopy, 0, v27);
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:enc_base_image", kMetadataPrefixAnnotationKit];

          CGImageMetadataRemoveTagWithPath(MutableCopy, 0, v28);
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:base_image", kMetadataPrefixAnnotationKit];

          CGImageMetadataRemoveTagWithPath(MutableCopy, 0, v29);
          v34 = *MEMORY[0x277CD2D58];
          v35[0] = MutableCopy;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
          CGImageDestinationCopyImageSource(v22, v9, v30, 0);
          v31 = v20;

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          CFRelease(v24);
          v15 = v31;
          if (!v22)
          {
            goto LABEL_22;
          }
        }

        else
        {
          NSLog(&cfstr_SBaseImageMeta_0.isa, "[MUImageReader _readBaseImageFromDataProvider:providerSource:baseWasValid:]");
          v33 = CGDataProviderCopyData(a3);

          v15 = v33;
          if (!v22)
          {
            goto LABEL_22;
          }
        }

        CFRelease(v22);
LABEL_22:

LABEL_23:
        CFRelease(v9);
        goto LABEL_24;
      }
    }
  }

  NSLog(&cfstr_SBaseImageDoes.isa, "[MUImageReader _readBaseImageFromDataProvider:providerSource:baseWasValid:]");
  v15 = CGDataProviderCopyData(a3);
  if (a5)
  {
    *a5 = 0;
  }

  if (v9)
  {
    goto LABEL_23;
  }

LABEL_24:

  return v15;
}

+ (BOOL)hasPrivateImageMetadata:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ([(__CFData *)v4 length])
  {
    v5 = CGImageSourceCreateWithData(v4, 0);
    v6 = v5;
    if (v5)
    {
      v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
      if (v7)
      {
        v8 = [a1 _privateImageMetadataDescriptors];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __41__MUImageReader_hasPrivateImageMetadata___block_invoke;
        v12[3] = &unk_27986E218;
        v9 = v8;
        v13 = v9;
        v14 = &v15;
        CGImageMetadataEnumerateTagsUsingBlock(v7, 0, 0, v12);
        CFRelease(v7);
      }

      CFRelease(v6);
    }
  }

  v10 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v10;
}

uint64_t __41__MUImageReader_hasPrivateImageMetadata___block_invoke(uint64_t a1, int a2, CGImageMetadataTagRef tag)
{
  v5 = CGImageMetadataTagCopyPrefix(tag);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7 && (v8 = CGImageMetadataTagCopyName(tag)) != 0)
  {
    v9 = v8;
    v10 = [v7 containsObject:v8];
    if (v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v11 = v10 ^ 1u;
    CFRelease(v9);
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v6);

  return v11;
}

+ (id)cleanImageMetadataFromData:(id)a3
{
  keys[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = CGImageSourceCreateWithData(v4, 0);
    v7 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = CGImageSourceCopyMetadataAtIndex(v6, 0, 0);
      v7 = v5;
      if (v9)
      {
        v10 = v9;
        v11 = [a1 _privateImageMetadataDescriptors];
        MutableCopy = CGImageMetadataCreateMutableCopy(v10);
        v7 = v5;
        if (MutableCopy)
        {
          v13 = MutableCopy;
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0;
          v21 = MEMORY[0x277D85DD0];
          v22 = 3221225472;
          v23 = __44__MUImageReader_cleanImageMetadataFromData___block_invoke;
          v24 = &unk_27986E240;
          v26 = &v28;
          v27 = MutableCopy;
          v25 = v11;
          CGImageMetadataEnumerateTagsUsingBlock(v10, 0, 0, &v21);
          v7 = v5;
          if (*(v29 + 24) == 1)
          {
            v14 = [MEMORY[0x277CBEB28] data];
            Type = CGImageSourceGetType(v8);
            Count = CGImageSourceGetCount(v8);
            v17 = CGImageDestinationCreateWithData(v14, Type, Count, 0);
            v7 = v5;
            if (v17)
            {
              v18 = *MEMORY[0x277CD2D58];
              values = v13;
              keys[0] = v18;
              v19 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
              v7 = v5;
              if (v19)
              {
                v7 = v5;
                if (CGImageDestinationCopyImageSource(v17, v8, v19, 0))
                {
                  v7 = v14;
                }

                CFRelease(v19);
              }

              CFRelease(v17);
            }
          }

          CFRelease(v13);

          _Block_object_dispose(&v28, 8);
        }

        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __44__MUImageReader_cleanImageMetadataFromData___block_invoke(uint64_t a1, const __CFString *a2, CGImageMetadataTagRef tag)
{
  v6 = CGImageMetadataTagCopyPrefix(tag);
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v8)
    {
      v9 = CGImageMetadataTagCopyName(tag);
      if (v9)
      {
        v10 = v9;
        if ([v8 containsObject:v9])
        {
          CGImageMetadataRemoveTagWithPath(*(a1 + 48), 0, a2);
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        CFRelease(v10);
      }
    }

    CFRelease(v7);
  }

  return 1;
}

- (id)_readDataFromTagAtPath:(id)a3 inMetadata:(CGImageMetadata *)a4
{
  v4 = CGImageMetadataCopyTagWithPath(a4, 0, a3);
  if (v4)
  {
    v5 = v4;
    v6 = CGImageMetadataTagCopyValue(v4);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID())
      {
        v9 = MEMORY[0x277CBEA90];
        v10 = v7;
        v11 = [[v9 alloc] initWithBase64EncodedString:v10 options:0];
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)imageDescriptionFromSourceContent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CGDataProviderCreateWithURL(v3);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      v9 = 0;
      goto LABEL_19;
    }

    v4 = CGDataProviderCreateWithCFData(v3);
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = CGImageSourceCreateWithDataProvider(v4, 0);
  if (v6)
  {
    v7 = v6;
    err = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v8 = getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr;
    v18 = getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr;
    if (!getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke;
      v14[3] = &unk_27986E268;
      v14[4] = &v15;
      __getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke(v14);
      v8 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v8)
    {
      v12 = +[MUImageReader imageDescriptionFromSourceContent:];
      _Block_object_dispose(&v15, 8);
      _Unwind_Resume(v12);
    }

    v9 = v8(v7, &err);
    if (err)
    {
      v10 = CFErrorCopyDescription(err);
      if ([(__CFString *)v10 length])
      {
        NSLog(&cfstr_S.isa, "+[MUImageReader imageDescriptionFromSourceContent:]", v10);
      }

      else
      {
        NSLog(&cfstr_SErrorReadingI.isa, "+[MUImageReader imageDescriptionFromSourceContent:]");
      }

      CFRelease(err);
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v5);
LABEL_19:

  return v9;
}

+ (uint64_t)imageDescriptionFromSourceContent:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [(MUQuickLookContentEditorViewController *)v0 sharedSerialPagesEditionQueue];
}

@end