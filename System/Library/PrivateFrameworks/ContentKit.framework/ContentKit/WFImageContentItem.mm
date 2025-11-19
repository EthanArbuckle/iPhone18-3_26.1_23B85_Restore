@interface WFImageContentItem
+ (id)imageTypes;
+ (id)itemWithFile:(id)a3 preferredFileType:(id)a4;
+ (id)itemWithImage:(id)a3 named:(id)a4 preferredFileType:(id)a5;
+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedPasteboardTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)initialize;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (BOOL)imageIsAnimated;
- (BOOL)isObjectBacked;
- (BOOL)isScreenshot;
- (CGSize)size;
- (CLLocation)location;
- (WFFileType)preferredFileType;
- (WFImage)image;
- (WFImageContentItem)initWithCoder:(id)a3;
- (id)dateTaken;
- (id)generateImageFileForType:(id)a3 includingMetadata:(BOOL)a4 compressionQuality:(id)a5 error:(id *)a6;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)height;
- (id)imageFile;
- (id)make;
- (id)metadata;
- (id)model;
- (id)orientation;
- (id)width;
- (void)encodeWithCoder:(id)a3;
- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5;
@end

@implementation WFImageContentItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = MEMORY[0x277CBEB70];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = [v2 orderedSetWithObjects:{v3, v4, objc_opt_class(), 0}];
    [WFCoercionOptions registerDefaultDisallowedCoercionPath:v5];

    v6 = MEMORY[0x277CBEB70];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 orderedSetWithObjects:{v7, v8, objc_opt_class(), 0}];
    [WFCoercionOptions registerDefaultDisallowedCoercionPath:v9];
  }
}

- (WFFileType)preferredFileType
{
  preferredFileType = self->_preferredFileType;
  if (preferredFileType)
  {
    v3 = preferredFileType;
  }

  else if ([(WFImageContentItem *)self imageIsAnimated])
  {
    v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFImageContentItem;
    v3 = [(WFContentItem *)&v6 preferredFileType];
  }

  return v3;
}

- (BOOL)imageIsAnimated
{
  if ([(WFImageContentItem *)self isObjectBacked])
  {
    v3 = [(WFImageContentItem *)self image];
    if (![v3 allowsAnimated])
    {
      IsAnimatedGIF = 0;
      goto LABEL_8;
    }

    v4 = [v3 data];
  }

  else
  {
    v5 = [(WFContentItem *)self internalRepresentationType];
    v6 = *MEMORY[0x277CE1D88];
    v7 = [v5 conformsToUTType:*MEMORY[0x277CE1D88]];

    if (!v7)
    {
      return 0;
    }

    v8 = [MEMORY[0x277D79F68] typeWithUTType:v6];
    v3 = [(WFContentItem *)self fileRepresentationForType:v8];

    v4 = [v3 mappedData];
  }

  v9 = v4;
  IsAnimatedGIF = WFImageDataIsAnimatedGIF(v4);

LABEL_8:
  return IsAnimatedGIF;
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D79F68] typeWithString:@"com.ilm.openexr-image"];
  v6 = [v4 conformsToType:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFImageContentItem;
    v7 = [(WFGenericFileContentItem *)&v9 canGenerateRepresentationForType:v4];
  }

  return v7;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [WFObjectType typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2];
  v10 = [v9 isEqualToClass:a3];

  if (v10)
  {
    v11 = [(WFImageContentItem *)self image];
    v12 = [v11 platformImage];
LABEL_3:
    v13 = [(WFContentItem *)self name];
    v14 = [WFObjectRepresentation object:v12 named:v13];

LABEL_4:
    goto LABEL_5;
  }

  if (objc_opt_class() != a3)
  {
    if (objc_opt_class() == a3)
    {
      v20 = [(WFImageContentItem *)self preferredFileType];
      v21 = [(WFContentItem *)self getRepresentationsForType:v20 error:a5];
      v22 = [v21 firstObject];

      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v23 = getNSTextAttachmentClass_softClass;
      v47 = getNSTextAttachmentClass_softClass;
      if (!getNSTextAttachmentClass_softClass)
      {
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __getNSTextAttachmentClass_block_invoke;
        v43[3] = &unk_27834A178;
        v43[4] = &v44;
        __getNSTextAttachmentClass_block_invoke(v43);
        v23 = v45[3];
      }

      v24 = v23;
      _Block_object_dispose(&v44, 8);
      v25 = [v23 alloc];
      v26 = [v22 data];
      v27 = [v22 wfType];
      v28 = [v27 string];
      v29 = [v25 initWithData:v26 ofType:v28];

      v30 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v29];
      v31 = [v22 wfName];
      v14 = [WFObjectRepresentation object:v30 named:v31];
    }

    else
    {
      v16 = NSStringFromClass(a3);
      v17 = [@"CLLocation" isEqualToString:v16];

      if (v17)
      {
        v11 = [(WFImageContentItem *)self location];
        if (v11)
        {
          v18 = [(WFContentItem *)self name];
          v14 = [WFObjectRepresentation object:v11 named:v18];
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_4;
      }

      if (objc_opt_class() != a3)
      {
        v14 = 0;
        goto LABEL_5;
      }

      if ([(WFImageContentItem *)self isObjectBacked])
      {
        v38 = [(WFImageContentItem *)self image];
        v39 = [v38 PNGRepresentation];
        v14 = CGImageSourceCreateWithData(v39, 0);
      }

      else
      {
        v38 = [(WFImageContentItem *)self imageFile];
        v14 = WFImageSourceCreateFromFile(v38, 0);
      }

      if (!v14)
      {
        goto LABEL_5;
      }

      v22 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
      CFRelease(v14);
      if (v22)
      {
        v41 = WFLocalizedContentPropertyNameMarker(@"Metadata");
        v14 = [WFObjectRepresentation object:v22 named:v41];
      }

      else
      {
        v14 = 0;
      }
    }

    goto LABEL_5;
  }

  if ([(WFImageContentItem *)self isObjectBacked])
  {
    v19 = [WFObjectType typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2];
    v11 = -[WFContentItem objectForClass:](self, "objectForClass:", [v19 objectClass]);

    v12 = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:v11];
    goto LABEL_3;
  }

  v32 = [(WFImageContentItem *)self imageFile];
  v42 = 0;
  v33 = [v32 mappedDataWithError:&v42];
  v34 = v42;
  v35 = v34;
  if (v33)
  {
    v36 = [MEMORY[0x277D79FC8] imageWithData:v33];
    if (v36)
    {
      v37 = [(WFContentItem *)self name];
      v14 = [WFObjectRepresentation object:v36 named:v37];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v40 = v34;
    v14 = 0;
    *a5 = v35;
  }

LABEL_5:

  return v14;
}

- (void)generateObjectRepresentation:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v10 = NSStringFromClass(a5);
  v11 = [@"UIPrintFormatter" isEqualToString:v10];

  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__WFImageContentItem_generateObjectRepresentation_options_forClass___block_invoke;
    v14[3] = &unk_278349FC8;
    v17 = v8;
    v15 = v9;
    v16 = self;
    v12 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
    [(WFContentItem *)self getFileRepresentation:v14 forType:v12];
  }

  else
  {
    v13 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
    (*(v8 + 2))(v8, 0, 0, v13);
  }
}

void __68__WFImageContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [WFWebResource webResourceWithFile:a2];
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__WFImageContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
    v7[3] = &unk_2783481A8;
    v5 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v5;
    [WFWKWebViewCapturer loadWebResource:v3 withSize:0 configuration:v4 coercionOptions:v7 completionHandler:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __68__WFImageContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = [a2 viewPrintFormatter];
  v4 = [*(a1 + 32) name];
  (*(v3 + 16))(v3, v5, v4, 0);
}

- (void)generateFileRepresentation:(id)a3 options:(id)a4 forType:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v8 conformsToUTType:*MEMORY[0x277CE1DF0]])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__WFImageContentItem_generateFileRepresentation_options_forType___block_invoke;
    v11[3] = &unk_278349F78;
    v12 = v7;
    v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
    [(WFContentItem *)self getFileRepresentation:v11 forType:v9];
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForType:v8];
    (*(v7 + 2))(v7, 0, v10);
  }
}

void __65__WFImageContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 wfName];
  v4 = WFGenerateVideoFromGIF(v5, v3, 1, *(a1 + 32));
}

- (id)generateImageFileForType:(id)a3 includingMetadata:(BOOL)a4 compressionQuality:(id)a5 error:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  if (!v10 || (v12 = *MEMORY[0x277CE1DB0], ([v10 isEqualToUTType:*MEMORY[0x277CE1DB0]] & 1) != 0) || (objc_msgSend(v10, "utType"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "conformsToType:", v13), v13, v14))
  {
    v15 = [(WFImageContentItem *)self preferredFileType];

    v10 = v15;
  }

  if (-[WFImageContentItem isObjectBacked](self, "isObjectBacked") && (v16 = *MEMORY[0x277CE1D88], [v10 conformsToUTType:*MEMORY[0x277CE1D88]]) && -[WFImageContentItem imageIsAnimated](self, "imageIsAnimated"))
  {
    v17 = [(WFImageContentItem *)self image];
    v18 = [v17 UIImage];
    v19 = WFUIImageAnimatedGIFRepresentationAndOptions(v18, 0, a6, 0.0);

    v20 = [MEMORY[0x277D79F68] typeWithUTType:v16];
    v21 = [(WFContentItem *)self name];
    v22 = [WFFileRepresentation fileWithData:v19 ofType:v20 proposedFilename:v21];
  }

  else
  {
    v23 = [objc_opt_class() imageTypes];
    v24 = [v23 containsObject:v10];

    if (!v24)
    {
      v22 = 0;
      goto LABEL_25;
    }

    v25 = [(WFContentItem *)self name];
    v19 = [WFFileRepresentation proposedFilenameForFile:v25 ofType:v10];

    v20 = [WFTemporaryFileManager createTemporaryFileWithFilename:v19];
    v26 = [(WFContentItem *)self name];
    v21 = [WFFileRepresentation fileWithURL:v20 options:1 ofType:v10 proposedFilename:v26];

    v27 = [v10 utType];
    v28 = [v27 identifier];
    v29 = CGImageDestinationCreateWithURL(v20, v28, 1uLL, 0);

    if (v29)
    {
      v30 = [(WFImageContentItem *)self isObjectBacked];
      v31 = objc_opt_new();
      v32 = v31;
      if (v8)
      {
        v33 = [(WFImageContentItem *)self metadata];
        [v32 addEntriesFromDictionary:v33];
      }

      else if (!v30)
      {
        v34 = *MEMORY[0x277CBEEE8];
        [v31 setObject:*MEMORY[0x277CBEEE8] forKey:*MEMORY[0x277CD3490]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD31C8]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD33A8]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD3038]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD3438]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD3380]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD3258]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD3468]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD2E10]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD33B8]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD33C8]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD2DA8]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD2ED0]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD2F50]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD3408]];
        [v32 setObject:v34 forKey:*MEMORY[0x277CD33B0]];
      }

      if (v11)
      {
        [v32 setObject:v11 forKey:*MEMORY[0x277CD2D48]];
      }

      if (v30)
      {
        v35 = [(WFImageContentItem *)self image];
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v35, "orientation")}];
        [v32 setObject:v36 forKey:*MEMORY[0x277CD3410]];

        CGImageDestinationAddImage(v29, [v35 CGImage], v32);
      }

      else
      {
        v37 = [(WFImageContentItem *)self imageFile];
        v38 = WFImageSourceCreateFromFile(v37, 0);

        if (v38)
        {
          CGImageDestinationAddImageFromSource(v29, v38, 0, v32);
          CFRelease(v38);
        }
      }

      CGImageDestinationFinalize(v29);
      CFRelease(v29);
      v21 = v21;

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

LABEL_25:

  return v22;
}

- (id)imageFile
{
  v3 = [(WFContentItem *)self internalRepresentationType];
  v4 = [(WFContentItem *)self fileRepresentationForType:v3];

  return v4;
}

- (WFImage)image
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

- (BOOL)isObjectBacked
{
  v2 = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isScreenshot
{
  if (self->_isScreenshot)
  {
    return 1;
  }

  v4 = MEMORY[0x277D79FC8];
  [(WFImageContentItem *)self size];

  return [v4 imageSizeIndicatesScreenshot:?];
}

- (id)orientation
{
  if ([(WFImageContentItem *)self isObjectBacked])
  {
    v3 = [(WFImageContentItem *)self image];
    v4 = [v3 orientation];
  }

  else
  {
    v3 = [(WFImageContentItem *)self metadata];
    v4 = WFImageOrientationFromMetadata(v3);
  }

  v5 = v4;

  v6 = WFImageStringFromOrientation(v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_282F53518;
  }

  v9 = v8;

  return v8;
}

- (CLLocation)location
{
  v2 = [(WFImageContentItem *)self metadata];
  v3 = WFImageLocationTakenFromMetadata(v2);

  return v3;
}

- (id)height
{
  v2 = MEMORY[0x277CCABB0];
  [(WFImageContentItem *)self size];

  return [v2 numberWithDouble:v3];
}

- (id)width
{
  v2 = MEMORY[0x277CCABB0];
  [(WFImageContentItem *)self size];

  return [v2 numberWithDouble:?];
}

- (id)model
{
  v2 = [(WFImageContentItem *)self metadata];
  v3 = WFImageModelFromMetadata(v2);

  return v3;
}

- (id)make
{
  v2 = [(WFImageContentItem *)self metadata];
  v3 = WFImageMakeFromMetadata(v2);

  return v3;
}

- (id)dateTaken
{
  v2 = [(WFImageContentItem *)self metadata];
  v3 = WFImageDateTakenFromMetadata(v2);

  return v3;
}

- (CGSize)size
{
  if ([(WFImageContentItem *)self isObjectBacked])
  {
    v3 = [(WFImageContentItem *)self image];
    [v3 sizeInPixels];
  }

  else
  {
    v3 = [(WFImageContentItem *)self metadata];
    WFImageSizeFromMetadata(v3);
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)metadata
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WFImageContentItem;
  [(WFContentItem *)&v7 encodeWithCoder:v4];
  v5 = [@"WFImageContentItem" stringByAppendingString:@"preferredFileType"];
  [v4 encodeObject:self->_preferredFileType forKey:v5];
  if (self->_isScreenshot)
  {
    v6 = [@"WFImageContentItem" stringByAppendingString:@"isScreenshot"];
    [v4 encodeBool:1 forKey:v6];
  }
}

- (WFImageContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFImageContentItem;
  v5 = [(WFContentItem *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [@"WFImageContentItem" stringByAppendingString:@"preferredFileType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v6];
    preferredFileType = v5->_preferredFileType;
    v5->_preferredFileType = v7;

    v9 = [@"WFImageContentItem" stringByAppendingString:@"isScreenshot"];
    v5->_isScreenshot = [v4 decodeBoolForKey:v9];
    v10 = v5;
  }

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Images", @"Images");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Image (singular)", @"Image");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"UIPrintFormatter" frameworkName:@"UIKit" location:2];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

+ (id)ownedPasteboardTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A420]];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v3 = MEMORY[0x277CBEB40];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v3 orderedSetWithObject:v4];

  v6 = [WFObjectType typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2];
  [v5 addObject:v6];

  v7 = [a1 imageTypes];
  [v5 unionOrderedSet:v7];

  v8 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DB0]];
  [v5 addObject:v8];

  v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  [v5 removeObject:v9];

  return v5;
}

+ (id)imageTypes
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E10]];
  [v2 addObject:v3];

  v4 = MEMORY[0x277D79F68];
  v5 = CGImageDestinationCopyTypeIdentifiers();
  v6 = [v4 typesFromStrings:v5];
  [v2 addObjectsFromArray:v6];

  return v2;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v87[17] = *MEMORY[0x277D85DE8];
  v81 = WFLocalizedContentPropertyNameMarkerWithContext(@"Album", @"Image Content Item");
  v80 = [WFContentPropertyBuilder block:&__block_literal_global_864 name:v81 class:objc_opt_class()];
  v79 = [v80 multipleValues:1];
  v78 = [v79 filterable:0];
  v77 = [v78 sortable:0];
  v87[0] = v77;
  v76 = WFLocalizedContentPropertyNameMarker(@"Width");
  v75 = [WFContentPropertyBuilder keyPath:@"width" name:v76 class:objc_opt_class()];
  v87[1] = v75;
  v74 = WFLocalizedContentPropertyNameMarker(@"Height");
  v73 = [WFContentPropertyBuilder keyPath:@"height" name:v74 class:objc_opt_class()];
  v87[2] = v73;
  v72 = WFLocalizedContentPropertyNameMarker(@"Date Taken");
  v71 = [WFContentPropertyBuilder keyPath:@"dateTaken" name:v72 class:objc_opt_class()];
  v70 = [v71 tense:1];
  v69 = [v70 timeUnits:8220];
  v68 = [v69 comparableUnits:8220];
  v87[3] = v68;
  v67 = WFLocalizedContentPropertyNameMarker(@"Time Taken");
  v66 = [WFContentPropertyBuilder keyPath:@"dateTaken" name:v67 class:objc_opt_class()];
  v65 = [v66 tense:1];
  v64 = [v65 timeUnits:224];
  v63 = [v64 comparableUnits:224];
  v62 = [v63 gettable:0];
  v87[4] = v62;
  v61 = WFLocalizedContentPropertyNameMarker(@"Media Type");
  v60 = [WFContentPropertyBuilder block:&__block_literal_global_99 name:v61 class:objc_opt_class()];
  v59 = WFPhotoLibraryPossibleMediaTypes();
  v58 = [v60 possibleValues:v59];
  v57 = [v58 sortable:0];
  v87[5] = v57;
  v56 = WFLocalizedContentPropertyNameMarker(@"Photo Type");
  v55 = [WFContentPropertyBuilder block:&__block_literal_global_101 name:v56 class:objc_opt_class()];
  v54 = WFPhotoLibraryPossiblePhotoTypes();
  v53 = [v55 possibleValues:v54];
  v52 = [v53 multipleValues:1];
  v51 = [v52 sortable:0];
  v87[6] = v51;
  v50 = WFLocalizedContentPropertyNameMarker(@"Is a Screenshot");
  v49 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v48 = [WFContentPropertyBuilder keyPath:@"isScreenshot" name:v50 class:objc_opt_class()];
  v47 = WFLocalizedContentPropertyNameMarker(@"Is Not a Screenshot");
  v46 = [v48 negativeName:v47];
  v45 = WFLocalizedStringWithKey(@"Image (item name)", @"Image");
  v44 = [v46 singularItemName:v45];
  v87[7] = v44;
  v43 = WFLocalizedContentPropertyNameMarker(@"Is a Screen Recording");
  v42 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v41 = [WFContentPropertyBuilder block:&__block_literal_global_115 name:v43 class:objc_opt_class()];
  v40 = WFLocalizedContentPropertyNameMarker(@"Is Not a Screen Recording");
  v39 = [v41 negativeName:v40];
  v38 = WFLocalizedStringWithKey(@"Image (item name)", @"Image");
  v37 = [v39 singularItemName:v38];
  v87[8] = v37;
  v36 = WFLocalizedContentPropertyNameMarker(@"Location");
  v83 = 0;
  v84 = &v83;
  v85 = 0x2050000000;
  v2 = getCLLocationClass_softClass_868;
  v86 = getCLLocationClass_softClass_868;
  if (!getCLLocationClass_softClass_868)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __getCLLocationClass_block_invoke_869;
    v82[3] = &unk_27834A178;
    v82[4] = &v83;
    __getCLLocationClass_block_invoke_869(v82);
    v2 = v84[3];
  }

  v3 = v2;
  _Block_object_dispose(&v83, 8);
  v35 = [WFContentPropertyBuilder keyPath:@"location" name:v36 class:v2];
  v87[9] = v35;
  v34 = WFLocalizedContentPropertyNameMarker(@"Duration");
  v33 = [WFContentPropertyBuilder block:&__block_literal_global_123 name:v34 class:objc_opt_class()];
  v32 = [v33 timeUnits:224];
  v87[10] = v32;
  v31 = WFLocalizedContentPropertyNameMarker(@"Frame Rate");
  v30 = [WFContentPropertyBuilder block:&__block_literal_global_129 name:v31 class:objc_opt_class()];
  v29 = [v30 irrational:1];
  v87[11] = v29;
  v28 = WFLocalizedContentPropertyNameMarker(@"Orientation");
  v27 = [WFContentPropertyBuilder keyPath:@"orientation" name:v28 class:objc_opt_class()];
  v26 = WFImagePossibleOrientationStrings();
  v25 = [v27 possibleValues:v26];
  v87[12] = v25;
  v24 = WFLocalizedContentPropertyNameMarker(@"Camera Make");
  v23 = [WFContentPropertyBuilder keyPath:@"make" name:v24 class:objc_opt_class()];
  v22 = [v23 sortable:0];
  v21 = [v22 filterable:0];
  v87[13] = v21;
  v20 = WFLocalizedContentPropertyNameMarker(@"Camera Model");
  v19 = [WFContentPropertyBuilder keyPath:@"model" name:v20 class:objc_opt_class()];
  v18 = [v19 sortable:0];
  v17 = [v18 filterable:0];
  v87[14] = v17;
  v16 = WFLocalizedContentPropertyNameMarker(@"Metadata Dictionary");
  v4 = [WFContentPropertyBuilder keyPath:@"metadata" name:v16 class:objc_opt_class()];
  v5 = [v4 sortable:0];
  v6 = [v5 filterable:0];
  v87[15] = v6;
  v7 = WFLocalizedContentPropertyNameMarker(@"Is Favorite");
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9 = [WFContentPropertyBuilder block:&__block_literal_global_147 name:v7 class:objc_opt_class()];
  v10 = WFLocalizedContentPropertyNameMarker(@"Is Not Favorite");
  v11 = [v9 negativeName:v10];
  v12 = WFLocalizedStringWithKey(@"Image (item name)", @"Image");
  v13 = [v11 singularItemName:v12];
  v87[16] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:17];

  return v15;
}

void __38__WFImageContentItem_propertyBuilders__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v5 = a4;
  v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Image");
  (a4)[2](v5, v6);
}

+ (id)itemWithFile:(id)a3 preferredFileType:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFImageContentItem.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"fileRepresentation"}];
  }

  v9 = [a1 itemWithFile:v7];
  v10 = v9[7];
  v9[7] = v8;

  return v9;
}

+ (id)itemWithImage:(id)a3 named:(id)a4 preferredFileType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"WFImageContentItem.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v12 = [a1 itemWithObject:v9 named:v10];
  v13 = v12[7];
  v12[7] = v11;

  return v12;
}

+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = objc_alloc(MEMORY[0x277CBEB40]);
  v51 = v10;
  v15 = [v10 allKeys];
  v16 = [v14 initWithArray:v15];

  v17 = *MEMORY[0x277CE1DA8];
  v18 = [*MEMORY[0x277CE1DA8] identifier];
  v19 = [v16 containsObject:v18];

  if (v19)
  {
    v20 = [v17 identifier];
    [v16 removeObject:v20];

    v21 = [v17 identifier];
    [v16 addObject:v21];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v16;
  v22 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v22)
  {
    goto LABEL_30;
  }

  v47 = v11;
  v48 = v13;
  v46 = v12;
  v23 = *v53;
  v24 = a1;
  while (2)
  {
    for (i = 0; i != v22; i = (i + 1))
    {
      if (*v53 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v52 + 1) + 8 * i);
      v27 = [MEMORY[0x277D79F68] typeWithString:{v26, v46}];
      v28 = [v24 ownedTypes];
      if ([v28 containsObject:v27])
      {
      }

      else
      {
        v29 = [v24 ownedPasteboardTypes];
        v30 = [v29 containsObject:v27];

        if (!v30)
        {
          goto LABEL_14;
        }
      }

      v31 = [v51 objectForKey:v26];
      v32 = [WFObjectType typeWithClass:objc_opt_class()];
      v33 = [WFObjectType typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2];
      v34 = [v32 conformsToType:v33];

      if (v34)
      {
        v12 = v46;
        v11 = v47;
        v22 = [a1 itemWithObject:v31 named:v47 attributionSet:v46 cachingIdentifier:v13];
        v35 = *MEMORY[0x277CE1DB0];
        if (![v27 conformsToUTType:*MEMORY[0x277CE1DB0]])
        {
          goto LABEL_29;
        }

        if ([v27 isEqualToUTType:v35])
        {
          goto LABEL_29;
        }

        v36 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*MEMORY[0x277D7A420]];
        v37 = [v27 isEqualToUTType:v36];

        if (v37)
        {
          goto LABEL_29;
        }

        v27 = v27;
        v38 = v22[7];
        v22[7] = v27;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [v51 objectForKey:v26];
        v39 = +[WFApplicationContext sharedContext];
        v40 = [v39 provider];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v11 = v47;
          v42 = [WFFileRepresentation proposedFilenameForFile:v47 ofType:v27];
          v43 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v42];
          v12 = v46;
          if ([v38 writeToURL:v43 atomically:0])
          {
            v44 = [WFFileRepresentation fileWithURL:v43 options:1];
            v22 = [a1 itemWithFile:v44 attributionSet:v46 cachingIdentifier:v48];
          }

          else
          {
            v22 = 0;
          }

          v13 = v48;
        }

        else
        {
          v11 = v47;
          v42 = [WFFileRepresentation fileWithData:v38 ofType:v27 proposedFilename:v47];
          v12 = v46;
          v22 = [a1 itemWithFile:v42 attributionSet:v46 cachingIdentifier:v13];
        }

        goto LABEL_28;
      }

      v24 = a1;
LABEL_14:
    }

    v22 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

  v12 = v46;
  v11 = v47;
LABEL_30:

  return v22;
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__WFImageContentItem_ChooseFromList__getListAltText___block_invoke;
    v7[3] = &unk_278349780;
    v8 = v4;
    [(WFContentItem *)self getPreferredFileSize:v7];
  }

  return 1;
}

void __53__WFImageContentItem_ChooseFromList__getListAltText___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCA8E8] stringFromByteCount:a2 countStyle:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__WFImageContentItem_ChooseFromList__getListAltText___block_invoke_2;
  v6[3] = &unk_278347B38;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__WFImageContentItem_ChooseFromList__getListSubtitle___block_invoke;
    v7[3] = &unk_278349F78;
    v8 = v4;
    [(WFContentItem *)self getFileRepresentation:v7 forType:0];
  }

  return 1;
}

void __54__WFImageContentItem_ChooseFromList__getListSubtitle___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 wfType];
    v4 = [v3 fileExtension];

    v5 = MEMORY[0x277CCACA8];
    v6 = WFLocalizedString(@"%@ Image");
    v7 = [v4 localizedUppercaseString];
    v8 = [v5 stringWithFormat:v6, v7];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__WFImageContentItem_ChooseFromList__getListSubtitle___block_invoke_2;
    block[3] = &unk_278347B38;
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v10 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11 = *(*(a1 + 32) + 16);

    v11();
  }
}

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_278347B10;
    v11 = v7;
    v12 = width;
    v13 = height;
    [(WFContentItem *)self getFileRepresentation:v10 forType:0];
  }

  return 1;
}

void __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = WFImageSizeFromFile(v5, 0);
    v9 = v8;
    v10 = [MEMORY[0x277D79F18] currentDevice];
    [v10 screenScale];
    v12 = v11;

    CGAffineTransformMakeScale(&v31, v12, v12);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = v14 * v31.c + v31.a * v13;
    v16 = v14 * v31.d + v31.b * v13;
    if (v7 <= v15 && v9 <= v16)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke_4;
      block[3] = &unk_278347AC0;
      v26 = *(a1 + 32);
      v25 = v5;
      v27 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v23 = v26;
    }

    else
    {
      v18 = v7 <= v9;
      v19 = round(v7 / v9 * v16);
      v20 = round(v9 / v7 * v15);
      if (v7 > v9)
      {
        v21 = v15;
      }

      else
      {
        v21 = v19;
      }

      if (v18)
      {
        v22 = v16;
      }

      else
      {
        v22 = v20;
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke_2;
      v28[3] = &unk_278347AE8;
      v29 = *(a1 + 32);
      v30 = v12;
      WFAsyncTransformedImageFromImage(v5, 0, 0, v28, v21, v22);
      v23 = v29;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke_3;
  block[3] = &unk_278347AC0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D79FC8];
  v3 = *(a1 + 40);
  v5 = [*(a1 + 32) mappedData];
  v4 = [v2 imageWithData:v5 scale:*(a1 + 48)];
  (*(v3 + 16))(v3, v4, 0);
}

void __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke_3(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v2)
  {
    v5 = MEMORY[0x277D79FC8];
    v8 = [v2 mappedData];
    v6 = [v5 imageWithData:v8 scale:*(a1 + 48)];
    (*(v3 + 16))(v3, v6, 0);
  }

  else
  {
    v7 = *(v3 + 16);

    v7(v3, 0, 0);
  }
}

@end