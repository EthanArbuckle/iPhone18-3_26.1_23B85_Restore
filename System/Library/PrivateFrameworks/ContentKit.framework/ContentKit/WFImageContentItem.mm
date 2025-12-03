@interface WFImageContentItem
+ (id)imageTypes;
+ (id)itemWithFile:(id)file preferredFileType:(id)type;
+ (id)itemWithImage:(id)image named:(id)named preferredFileType:(id)type;
+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedPasteboardTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
+ (void)initialize;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (BOOL)imageIsAnimated;
- (BOOL)isObjectBacked;
- (BOOL)isScreenshot;
- (CGSize)size;
- (CLLocation)location;
- (WFFileType)preferredFileType;
- (WFImage)image;
- (WFImageContentItem)initWithCoder:(id)coder;
- (id)dateTaken;
- (id)generateImageFileForType:(id)type includingMetadata:(BOOL)metadata compressionQuality:(id)quality error:(id *)error;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)height;
- (id)imageFile;
- (id)make;
- (id)metadata;
- (id)model;
- (id)orientation;
- (id)width;
- (void)encodeWithCoder:(id)coder;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class;
@end

@implementation WFImageContentItem

+ (void)initialize
{
  if (objc_opt_class() == self)
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
    preferredFileType = preferredFileType;
  }

  else if ([(WFImageContentItem *)self imageIsAnimated])
  {
    preferredFileType = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFImageContentItem;
    preferredFileType = [(WFContentItem *)&v6 preferredFileType];
  }

  return preferredFileType;
}

- (BOOL)imageIsAnimated
{
  if ([(WFImageContentItem *)self isObjectBacked])
  {
    image = [(WFImageContentItem *)self image];
    if (![image allowsAnimated])
    {
      IsAnimatedGIF = 0;
      goto LABEL_8;
    }

    data = [image data];
  }

  else
  {
    internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
    v6 = *MEMORY[0x277CE1D88];
    v7 = [internalRepresentationType conformsToUTType:*MEMORY[0x277CE1D88]];

    if (!v7)
    {
      return 0;
    }

    v8 = [MEMORY[0x277D79F68] typeWithUTType:v6];
    image = [(WFContentItem *)self fileRepresentationForType:v8];

    data = [image mappedData];
  }

  v9 = data;
  IsAnimatedGIF = WFImageDataIsAnimatedGIF(data);

LABEL_8:
  return IsAnimatedGIF;
}

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  v5 = [MEMORY[0x277D79F68] typeWithString:@"com.ilm.openexr-image"];
  v6 = [typeCopy conformsToType:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFImageContentItem;
    v7 = [(WFGenericFileContentItem *)&v9 canGenerateRepresentationForType:typeCopy];
  }

  return v7;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  optionsCopy = options;
  v9 = [WFObjectType typeWithClassName:@"UIImage" frameworkName:@"UIKit" location:2];
  v10 = [v9 isEqualToClass:class];

  if (v10)
  {
    image = [(WFImageContentItem *)self image];
    platformImage = [image platformImage];
LABEL_3:
    name = [(WFContentItem *)self name];
    v14 = [WFObjectRepresentation object:platformImage named:name];

LABEL_4:
    goto LABEL_5;
  }

  if (objc_opt_class() != class)
  {
    if (objc_opt_class() == class)
    {
      preferredFileType = [(WFImageContentItem *)self preferredFileType];
      v21 = [(WFContentItem *)self getRepresentationsForType:preferredFileType error:error];
      firstObject = [v21 firstObject];

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
      data = [firstObject data];
      wfType = [firstObject wfType];
      string = [wfType string];
      v29 = [v25 initWithData:data ofType:string];

      v30 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v29];
      wfName = [firstObject wfName];
      v14 = [WFObjectRepresentation object:v30 named:wfName];
    }

    else
    {
      v16 = NSStringFromClass(class);
      v17 = [@"CLLocation" isEqualToString:v16];

      if (v17)
      {
        image = [(WFImageContentItem *)self location];
        if (image)
        {
          name2 = [(WFContentItem *)self name];
          v14 = [WFObjectRepresentation object:image named:name2];
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_4;
      }

      if (objc_opt_class() != class)
      {
        v14 = 0;
        goto LABEL_5;
      }

      if ([(WFImageContentItem *)self isObjectBacked])
      {
        image2 = [(WFImageContentItem *)self image];
        pNGRepresentation = [image2 PNGRepresentation];
        v14 = CGImageSourceCreateWithData(pNGRepresentation, 0);
      }

      else
      {
        image2 = [(WFImageContentItem *)self imageFile];
        v14 = WFImageSourceCreateFromFile(image2, 0);
      }

      if (!v14)
      {
        goto LABEL_5;
      }

      firstObject = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
      CFRelease(v14);
      if (firstObject)
      {
        v41 = WFLocalizedContentPropertyNameMarker(@"Metadata");
        v14 = [WFObjectRepresentation object:firstObject named:v41];
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
    image = -[WFContentItem objectForClass:](self, "objectForClass:", [v19 objectClass]);

    platformImage = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:image];
    goto LABEL_3;
  }

  imageFile = [(WFImageContentItem *)self imageFile];
  v42 = 0;
  v33 = [imageFile mappedDataWithError:&v42];
  v34 = v42;
  v35 = v34;
  if (v33)
  {
    v36 = [MEMORY[0x277D79FC8] imageWithData:v33];
    if (v36)
    {
      name3 = [(WFContentItem *)self name];
      v14 = [WFObjectRepresentation object:v36 named:name3];
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
    *error = v35;
  }

LABEL_5:

  return v14;
}

- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class
{
  representationCopy = representation;
  optionsCopy = options;
  v10 = NSStringFromClass(class);
  v11 = [@"UIPrintFormatter" isEqualToString:v10];

  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__WFImageContentItem_generateObjectRepresentation_options_forClass___block_invoke;
    v14[3] = &unk_278349FC8;
    v17 = representationCopy;
    v15 = optionsCopy;
    selfCopy = self;
    v12 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
    [(WFContentItem *)self getFileRepresentation:v14 forType:v12];
  }

  else
  {
    v13 = [objc_opt_class() badCoercionErrorForObjectClass:class];
    (*(representationCopy + 2))(representationCopy, 0, 0, v13);
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

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  representationCopy = representation;
  typeCopy = type;
  if ([typeCopy conformsToUTType:*MEMORY[0x277CE1DF0]])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__WFImageContentItem_generateFileRepresentation_options_forType___block_invoke;
    v11[3] = &unk_278349F78;
    v12 = representationCopy;
    v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D88]];
    [(WFContentItem *)self getFileRepresentation:v11 forType:v9];
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForType:typeCopy];
    (*(representationCopy + 2))(representationCopy, 0, v10);
  }
}

void __65__WFImageContentItem_generateFileRepresentation_options_forType___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 wfName];
  v4 = WFGenerateVideoFromGIF(v5, v3, 1, *(a1 + 32));
}

- (id)generateImageFileForType:(id)type includingMetadata:(BOOL)metadata compressionQuality:(id)quality error:(id *)error
{
  metadataCopy = metadata;
  typeCopy = type;
  qualityCopy = quality;
  if (!typeCopy || (v12 = *MEMORY[0x277CE1DB0], ([typeCopy isEqualToUTType:*MEMORY[0x277CE1DB0]] & 1) != 0) || (objc_msgSend(typeCopy, "utType"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "conformsToType:", v13), v13, v14))
  {
    preferredFileType = [(WFImageContentItem *)self preferredFileType];

    typeCopy = preferredFileType;
  }

  if (-[WFImageContentItem isObjectBacked](self, "isObjectBacked") && (v16 = *MEMORY[0x277CE1D88], [typeCopy conformsToUTType:*MEMORY[0x277CE1D88]]) && -[WFImageContentItem imageIsAnimated](self, "imageIsAnimated"))
  {
    image = [(WFImageContentItem *)self image];
    uIImage = [image UIImage];
    v19 = WFUIImageAnimatedGIFRepresentationAndOptions(uIImage, 0, error, 0.0);

    v20 = [MEMORY[0x277D79F68] typeWithUTType:v16];
    name = [(WFContentItem *)self name];
    v22 = [WFFileRepresentation fileWithData:v19 ofType:v20 proposedFilename:name];
  }

  else
  {
    imageTypes = [objc_opt_class() imageTypes];
    v24 = [imageTypes containsObject:typeCopy];

    if (!v24)
    {
      v22 = 0;
      goto LABEL_25;
    }

    name2 = [(WFContentItem *)self name];
    v19 = [WFFileRepresentation proposedFilenameForFile:name2 ofType:typeCopy];

    v20 = [WFTemporaryFileManager createTemporaryFileWithFilename:v19];
    name3 = [(WFContentItem *)self name];
    name = [WFFileRepresentation fileWithURL:v20 options:1 ofType:typeCopy proposedFilename:name3];

    utType = [typeCopy utType];
    identifier = [utType identifier];
    v29 = CGImageDestinationCreateWithURL(v20, identifier, 1uLL, 0);

    if (v29)
    {
      isObjectBacked = [(WFImageContentItem *)self isObjectBacked];
      v31 = objc_opt_new();
      v32 = v31;
      if (metadataCopy)
      {
        metadata = [(WFImageContentItem *)self metadata];
        [v32 addEntriesFromDictionary:metadata];
      }

      else if (!isObjectBacked)
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

      if (qualityCopy)
      {
        [v32 setObject:qualityCopy forKey:*MEMORY[0x277CD2D48]];
      }

      if (isObjectBacked)
      {
        image2 = [(WFImageContentItem *)self image];
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(image2, "orientation")}];
        [v32 setObject:v36 forKey:*MEMORY[0x277CD3410]];

        CGImageDestinationAddImage(v29, [image2 CGImage], v32);
      }

      else
      {
        imageFile = [(WFImageContentItem *)self imageFile];
        v38 = WFImageSourceCreateFromFile(imageFile, 0);

        if (v38)
        {
          CGImageDestinationAddImageFromSource(v29, v38, 0, v32);
          CFRelease(v38);
        }
      }

      CGImageDestinationFinalize(v29);
      CFRelease(v29);
      name = name;

      v22 = name;
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
  internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
  v4 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType];

  return v4;
}

- (WFImage)image
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  firstObject = [v4 firstObject];
  object = [firstObject object];

  return object;
}

- (BOOL)isObjectBacked
{
  internalRepresentation = [(WFContentItem *)self internalRepresentation];
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
    image = [(WFImageContentItem *)self image];
    orientation = [image orientation];
  }

  else
  {
    image = [(WFImageContentItem *)self metadata];
    orientation = WFImageOrientationFromMetadata(image);
  }

  v5 = orientation;

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
  metadata = [(WFImageContentItem *)self metadata];
  v3 = WFImageLocationTakenFromMetadata(metadata);

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
  metadata = [(WFImageContentItem *)self metadata];
  v3 = WFImageModelFromMetadata(metadata);

  return v3;
}

- (id)make
{
  metadata = [(WFImageContentItem *)self metadata];
  v3 = WFImageMakeFromMetadata(metadata);

  return v3;
}

- (id)dateTaken
{
  metadata = [(WFImageContentItem *)self metadata];
  v3 = WFImageDateTakenFromMetadata(metadata);

  return v3;
}

- (CGSize)size
{
  if ([(WFImageContentItem *)self isObjectBacked])
  {
    image = [(WFImageContentItem *)self image];
    [image sizeInPixels];
  }

  else
  {
    image = [(WFImageContentItem *)self metadata];
    WFImageSizeFromMetadata(image);
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
  firstObject = [v4 firstObject];
  object = [firstObject object];

  return object;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = WFImageContentItem;
  [(WFContentItem *)&v7 encodeWithCoder:coderCopy];
  v5 = [@"WFImageContentItem" stringByAppendingString:@"preferredFileType"];
  [coderCopy encodeObject:self->_preferredFileType forKey:v5];
  if (self->_isScreenshot)
  {
    v6 = [@"WFImageContentItem" stringByAppendingString:@"isScreenshot"];
    [coderCopy encodeBool:1 forKey:v6];
  }
}

- (WFImageContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFImageContentItem;
  v5 = [(WFContentItem *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [@"WFImageContentItem" stringByAppendingString:@"preferredFileType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v6];
    preferredFileType = v5->_preferredFileType;
    v5->_preferredFileType = v7;

    v9 = [@"WFImageContentItem" stringByAppendingString:@"isScreenshot"];
    v5->_isScreenshot = [coderCopy decodeBoolForKey:v9];
    v10 = v5;
  }

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Images", @"Images");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Image (singular)", @"Image");
  v5 = [contextCopy localize:v4];

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

  imageTypes = [self imageTypes];
  [v5 unionOrderedSet:imageTypes];

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
  v2 = [self propertyForName:@"Name"];
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

+ (id)itemWithFile:(id)file preferredFileType:(id)type
{
  fileCopy = file;
  typeCopy = type;
  if (!fileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFImageContentItem.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"fileRepresentation"}];
  }

  v9 = [self itemWithFile:fileCopy];
  v10 = v9[7];
  v9[7] = typeCopy;

  return v9;
}

+ (id)itemWithImage:(id)image named:(id)named preferredFileType:(id)type
{
  imageCopy = image;
  namedCopy = named;
  typeCopy = type;
  if (!imageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFImageContentItem.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  v12 = [self itemWithObject:imageCopy named:namedCopy];
  v13 = v12[7];
  v12[7] = typeCopy;

  return v12;
}

+ (id)itemWithSerializedItem:(id)item forType:(id)type named:(id)named attributionSet:(id)set cachingIdentifier:(id)identifier
{
  v57 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  namedCopy = named;
  setCopy = set;
  identifierCopy = identifier;
  v14 = objc_alloc(MEMORY[0x277CBEB40]);
  v51 = itemCopy;
  allKeys = [itemCopy allKeys];
  v16 = [v14 initWithArray:allKeys];

  v17 = *MEMORY[0x277CE1DA8];
  identifier = [*MEMORY[0x277CE1DA8] identifier];
  v19 = [v16 containsObject:identifier];

  if (v19)
  {
    identifier2 = [v17 identifier];
    [v16 removeObject:identifier2];

    identifier3 = [v17 identifier];
    [v16 addObject:identifier3];
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

  v47 = namedCopy;
  v48 = identifierCopy;
  v46 = setCopy;
  v23 = *v53;
  selfCopy2 = self;
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
      ownedTypes = [selfCopy2 ownedTypes];
      if ([ownedTypes containsObject:v27])
      {
      }

      else
      {
        ownedPasteboardTypes = [selfCopy2 ownedPasteboardTypes];
        v30 = [ownedPasteboardTypes containsObject:v27];

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
        setCopy = v46;
        namedCopy = v47;
        v22 = [self itemWithObject:v31 named:v47 attributionSet:v46 cachingIdentifier:identifierCopy];
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
        provider = [v39 provider];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          namedCopy = v47;
          v42 = [WFFileRepresentation proposedFilenameForFile:v47 ofType:v27];
          v43 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v42];
          setCopy = v46;
          if ([v38 writeToURL:v43 atomically:0])
          {
            v44 = [WFFileRepresentation fileWithURL:v43 options:1];
            v22 = [self itemWithFile:v44 attributionSet:v46 cachingIdentifier:v48];
          }

          else
          {
            v22 = 0;
          }

          identifierCopy = v48;
        }

        else
        {
          namedCopy = v47;
          v42 = [WFFileRepresentation fileWithData:v38 ofType:v27 proposedFilename:v47];
          setCopy = v46;
          v22 = [self itemWithFile:v42 attributionSet:v46 cachingIdentifier:identifierCopy];
        }

        goto LABEL_28;
      }

      selfCopy2 = self;
LABEL_14:
    }

    v22 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

  setCopy = v46;
  namedCopy = v47;
LABEL_30:

  return v22;
}

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__WFImageContentItem_ChooseFromList__getListAltText___block_invoke;
    v7[3] = &unk_278349780;
    v8 = textCopy;
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

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (subtitleCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__WFImageContentItem_ChooseFromList__getListSubtitle___block_invoke;
    v7[3] = &unk_278349F78;
    v8 = subtitleCopy;
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

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  v8 = thumbnailCopy;
  if (thumbnailCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__WFImageContentItem_ChooseFromList__getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_278347B10;
    v11 = thumbnailCopy;
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