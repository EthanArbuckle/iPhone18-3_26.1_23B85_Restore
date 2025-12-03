@interface ICAttachmentImageModel
- (BOOL)canSaveURL;
- (BOOL)hasThumbnailImage;
- (BOOL)needsFullSizePreview;
- (BOOL)shouldCropImage;
- (BOOL)shouldUsePlaceholderBoundsIfNecessary;
- (BOOL)supportsImageClassification;
- (BOOL)supportsOCR;
- (CGAffineTransform)previewImageOrientationTransform;
- (CGSize)sizeByCroppingSize:(CGSize)size;
- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content;
- (id)generateHardLinkURLIfNecessaryForURL:(id)l;
- (id)previewImageTypeUTI;
- (id)previewItemTitle;
- (id)saveURL;
- (int64_t)previewImageOrientation;
- (void)addLocation;
- (void)updateAttachmentSize;
- (void)updateFileBasedAttributes;
@end

@implementation ICAttachmentImageModel

- (BOOL)shouldCropImage
{
  attachment = [(ICAttachmentModel *)self attachment];
  [attachment croppingQuadBottomLeftX];
  if (fabs(v3) >= 0.00999999978 || ([attachment croppingQuadBottomLeftY], fabs(v4) >= 0.00999999978) || (objc_msgSend(attachment, "croppingQuadBottomRightX"), fabs(v5 + -1.0) >= 0.00999999978) || (objc_msgSend(attachment, "croppingQuadBottomRightY"), fabs(v6) >= 0.00999999978) || (objc_msgSend(attachment, "croppingQuadTopLeftX"), fabs(v7) >= 0.00999999978) || (objc_msgSend(attachment, "croppingQuadTopLeftY"), fabs(v8 + -1.0) >= 0.00999999978) || (objc_msgSend(attachment, "croppingQuadTopRightX"), fabs(v9 + -1.0) >= 0.00999999978))
  {
    v11 = 1;
  }

  else
  {
    [attachment croppingQuadTopRightY];
    v11 = fabs(v10 + -1.0) >= 0.00999999978;
  }

  return v11;
}

- (BOOL)needsFullSizePreview
{
  attachment = [(ICAttachmentModel *)self attachment];
  if ([attachment imageFilterType])
  {
    shouldCropImage = 1;
  }

  else
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    markupModelData = [attachment2 markupModelData];
    if ([markupModelData length])
    {
      shouldCropImage = 1;
    }

    else
    {
      attachment3 = [(ICAttachmentModel *)self attachment];
      if ([attachment3 orientation])
      {
        shouldCropImage = 1;
      }

      else
      {
        shouldCropImage = [(ICAttachmentImageModel *)self shouldCropImage];
      }
    }
  }

  return shouldCropImage;
}

- (id)previewImageTypeUTI
{
  attachment = [(ICAttachmentModel *)self attachment];
  isChildOfDocumentGallery = [attachment isChildOfDocumentGallery];

  if (isChildOfDocumentGallery)
  {
    identifier = [*MEMORY[0x277CE1DC0] identifier];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICAttachmentImageModel;
    identifier = [(ICAttachmentModel *)&v7 previewImageTypeUTI];
  }

  return identifier;
}

- (id)previewItemTitle
{
  attachment = [(ICAttachmentModel *)self attachment];
  isChildOfDocumentGallery = [attachment isChildOfDocumentGallery];

  if (isChildOfDocumentGallery)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    parentAttachment = [attachment2 parentAttachment];
    attachmentModel = [parentAttachment attachmentModel];
    attachment3 = [(ICAttachmentModel *)self attachment];
    v9 = [attachmentModel titleForSubAttachment:attachment3];

    if (v9)
    {
      goto LABEL_6;
    }

    previewItemTitle = __ICLocalizedFrameworkString_impl(@"Scan", @"Scan", 0, 1);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ICAttachmentImageModel;
    previewItemTitle = [(ICAttachmentModel *)&v12 previewItemTitle];
  }

  v9 = previewItemTitle;
LABEL_6:

  return v9;
}

- (BOOL)hasThumbnailImage
{
  v9.receiver = self;
  v9.super_class = ICAttachmentImageModel;
  if (![(ICAttachmentModel *)&v9 hasThumbnailImage])
  {
    return 0;
  }

  attachment = [(ICAttachmentModel *)self attachment];
  [attachment sizeWidth];
  if (v4 >= 50.0)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    [attachment2 sizeHeight];
    v5 = v7 >= 50.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)saveURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__54;
  v12 = __Block_byref_object_dispose__54;
  v13 = 0;
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ICAttachmentImageModel_saveURL__block_invoke;
  v7[3] = &unk_278194D68;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__ICAttachmentImageModel_saveURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 isChildOfDocumentGallery];

  if (v3)
  {
    v4 = [*(a1 + 32) attachment];
    [v4 sizeWidth];
    v6 = v5;
    v7 = [*(a1 + 32) attachment];
    [v7 sizeHeight];
    v9 = v8;

    v10 = [*(a1 + 32) attachment];
    v17 = [v10 attachmentPreviewImageWithMinSize:v6 scale:{v9, 1.0}];

    v11 = [v17 orientedPreviewImageURL];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v18.receiver = *(a1 + 32);
    v18.super_class = ICAttachmentImageModel;
    v14 = objc_msgSendSuper2(&v18, sel_saveURL);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (BOOL)canSaveURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ICAttachmentImageModel_canSaveURL__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  LOBYTE(attachment) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return attachment;
}

void __36__ICAttachmentImageModel_canSaveURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 isChildOfDocumentGallery];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v4.receiver = *(a1 + 32);
    v4.super_class = ICAttachmentImageModel;
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSendSuper2(&v4, sel_canSaveURL);
  }
}

- (id)generateHardLinkURLIfNecessaryForURL:(id)l
{
  lCopy = l;
  attachment = [(ICAttachmentModel *)self attachment];
  isChildOfDocumentGallery = [attachment isChildOfDocumentGallery];

  if (isChildOfDocumentGallery)
  {
    previewItemTitle = [(ICAttachmentImageModel *)self previewItemTitle];
    if (previewItemTitle)
    {
      v10.receiver = self;
      v10.super_class = ICAttachmentImageModel;
      v8 = [(ICAttachmentModel *)&v10 generateHardLinkURLIfNecessaryForURL:lCopy withFileName:previewItemTitle];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICAttachmentImageModel;
    v8 = [(ICAttachmentModel *)&v11 generateHardLinkURLIfNecessaryForURL:lCopy];
  }

  return v8;
}

- (BOOL)supportsOCR
{
  attachment = [(ICAttachmentModel *)self attachment];
  isPasswordProtected = [attachment isPasswordProtected];

  return isPasswordProtected ^ 1;
}

- (BOOL)supportsImageClassification
{
  attachment = [(ICAttachmentModel *)self attachment];
  if ([attachment isPasswordProtected])
  {
    v4 = 0;
  }

  else
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    v4 = [attachment2 attachmentType] == 3;
  }

  return v4;
}

- (void)updateFileBasedAttributes
{
  v3.receiver = self;
  v3.super_class = ICAttachmentImageModel;
  [(ICAttachmentModel *)&v3 updateFileBasedAttributes];
  [(ICAttachmentImageModel *)self updateAttachmentSize];
}

- (void)addLocation
{
  attachment = [(ICAttachmentModel *)self attachment];
  media = [attachment media];
  isValid = [media isValid];

  if (isValid)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    media2 = [attachment2 media];
    mediaURL = [media2 mediaURL];
    v9 = CGImageSourceCreateWithURL(mediaURL, 0);

    if (v9)
    {
      v23 = CGImageSourceCopyPropertiesAtIndex(v9, 0, 0);
      v10 = [(__CFDictionary *)v23 objectForKey:*MEMORY[0x277CD3258]];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD3278]];
        v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD3288]];
        v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD3280]];
        v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD3290]];
        v16 = v15;
        if (v12 && v13 && v14 && v15)
        {
          [v12 doubleValue];
          v18 = v17;
          [v13 doubleValue];
          v20 = v19;
          if (![v14 compare:@"S" options:1 range:{0, 1}])
          {
            v18 = -v18;
          }

          if (![v16 compare:@"W" options:1 range:{0, 1}])
          {
            v20 = -v20;
          }

          attachment3 = [(ICAttachmentModel *)self attachment];
          v22 = [attachment3 addLocationWithLatitude:v18 longitude:v20];
        }
      }

      CFRelease(v9);
    }
  }
}

- (void)updateAttachmentSize
{
  attachment = [(ICAttachmentModel *)self attachment];
  isPasswordProtected = [attachment isPasswordProtected];

  attachment2 = [(ICAttachmentModel *)self attachment];
  media = [attachment2 media];
  v7 = media;
  if (isPasswordProtected)
  {
    isAuthenticated = [media isAuthenticated];

    if (!isAuthenticated)
    {
      return;
    }

    attachment3 = [(ICAttachmentModel *)self attachment];
    media2 = [attachment3 media];
    decryptedData = [media2 decryptedData];

    if (decryptedData)
    {
      v12 = CGImageSourceCreateWithData(decryptedData, 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    mediaURL = [media mediaURL];

    if (!mediaURL)
    {
      return;
    }

    decryptedData = [(ICAttachmentModel *)self attachment];
    media3 = [(__CFData *)decryptedData media];
    mediaURL2 = [media3 mediaURL];
    v12 = CGImageSourceCreateWithURL(mediaURL2, 0);
  }

  if (v12)
  {
    v16 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
    v49 = v16;
    if (!v16)
    {
LABEL_41:
      CFRelease(v12);

      return;
    }

    v17 = [(__CFDictionary *)v16 objectForKeyedSubscript:*MEMORY[0x277CD3450]];
    v18 = [(__CFDictionary *)v49 objectForKeyedSubscript:*MEMORY[0x277CD3448]];
    v19 = [(__CFDictionary *)v49 objectForKeyedSubscript:*MEMORY[0x277CD2F30]];
    v20 = [(__CFDictionary *)v49 objectForKeyedSubscript:*MEMORY[0x277CD2F28]];
    if (!v17 || !v18)
    {
LABEL_40:

      goto LABEL_41;
    }

    [v17 doubleValue];
    v22 = v21;
    [v18 doubleValue];
    v24 = v23;
    if (v19)
    {
      [v19 doubleValue];
      if (v25 > 72.0)
      {
        [v19 doubleValue];
        if (v26 < 300.0)
        {
          [v19 doubleValue];
          v22 = round(v22 * 72.0 / v27);
        }
      }
    }

    if (v20)
    {
      [v20 doubleValue];
      if (v28 > 72.0)
      {
        [v20 doubleValue];
        if (v29 < 300.0)
        {
          [v20 doubleValue];
          v24 = round(v24 * 72.0 / v30);
        }
      }
    }

    if ([(ICAttachmentImageModel *)self shouldCropImage])
    {
      [(ICAttachmentImageModel *)self sizeByCroppingSize:v22, v24];
      v22 = v31;
      v24 = v32;
    }

    v33 = [(__CFDictionary *)v49 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
    v34 = v33;
    if (v33)
    {
      integerValue = [v33 integerValue];
      if (integerValue <= 4)
      {
        v36 = v24;
      }

      else
      {
        v36 = v22;
      }

      if (integerValue > 4)
      {
        v22 = v24;
      }

      v24 = v36;
    }

    attachment4 = [(ICAttachmentModel *)self attachment];
    orientation = [attachment4 orientation];

    if (orientation <= 7 && ((1 << orientation) & 0xCC) != 0)
    {
      v39 = v22;
    }

    else
    {
      v39 = v24;
      v24 = v22;
    }

    attachment5 = [(ICAttachmentModel *)self attachment];
    [attachment5 sizeWidth];
    v42 = v41;

    if (v42 != v24)
    {
      attachment6 = [(ICAttachmentModel *)self attachment];
      [attachment6 setSizeWidth:v24];
    }

    attachment7 = [(ICAttachmentModel *)self attachment];
    [attachment7 sizeHeight];
    v46 = v45;

    if (v46 == v39)
    {
      if (v42 == v24)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      attachment8 = [(ICAttachmentModel *)self attachment];
      [attachment8 setSizeHeight:v39];
    }

    attachment9 = [(ICAttachmentModel *)self attachment];
    [attachment9 updateChangeCountWithReason:@"Updated attachment size"];

    goto LABEL_39;
  }
}

- (CGSize)sizeByCroppingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  attachment = [(ICAttachmentModel *)self attachment];
  [attachment croppingQuadBottomLeftX];
  v8 = width * v7;

  attachment2 = [(ICAttachmentModel *)self attachment];
  [attachment2 croppingQuadBottomLeftY];
  v11 = height * v10;

  attachment3 = [(ICAttachmentModel *)self attachment];
  [attachment3 croppingQuadBottomRightX];
  v14 = width * v13;

  attachment4 = [(ICAttachmentModel *)self attachment];
  [attachment4 croppingQuadBottomRightY];
  v17 = height * v16;

  attachment5 = [(ICAttachmentModel *)self attachment];
  [attachment5 croppingQuadTopLeftX];
  v20 = width * v19;

  attachment6 = [(ICAttachmentModel *)self attachment];
  [attachment6 croppingQuadTopLeftY];
  v23 = height * v22;

  attachment7 = [(ICAttachmentModel *)self attachment];
  [attachment7 croppingQuadTopRightX];
  v26 = width * v25;

  attachment8 = [(ICAttachmentModel *)self attachment];
  [attachment8 croppingQuadTopRightY];
  v29 = height * v28;

  v30 = sqrt((v23 - v29) * (v23 - v29) + (v20 - v26) * (v20 - v26));
  v31 = sqrt((v17 - v11) * (v17 - v11) + (v14 - v8) * (v14 - v8));
  v32 = sqrt((v23 - v11) * (v23 - v11) + (v20 - v8) * (v20 - v8));
  v33 = sqrt((v17 - v29) * (v17 - v29) + (v14 - v26) * (v14 - v26));
  v34 = v30 / v31;
  v35 = v32 / v33;
  if (v34 <= 1.0)
  {
    v34 = 1.0 / v34;
  }

  if (v35 <= 1.0)
  {
    v35 = 1.0 / v35;
  }

  if (v35 >= v34)
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  if (v36 > 2.0)
  {
    v37 = 2.0 / v36;
    v35 = v37 * v35;
    v34 = v37 * v34;
  }

  if (v32 < v33)
  {
    v32 = v33;
  }

  if (v30 < v31)
  {
    v30 = v31;
  }

  v38 = ceil(v30 * v35) + -2.0;
  v39 = ceil(v32 * v34) + -2.0;
  result.height = v39;
  result.width = v38;
  return result;
}

- (CGAffineTransform)previewImageOrientationTransform
{
  memset(&v14, 0, sizeof(v14));
  attachment = [(ICAttachmentModel *)self attachment];
  orientation = [attachment orientation];
  attachment2 = [(ICAttachmentModel *)self attachment];
  [attachment2 sizeWidth];
  v9 = v8;
  attachment3 = [(ICAttachmentModel *)self attachment];
  [attachment3 sizeHeight];
  ICTransformFromImageOrientation(orientation, &v14, v9, v11);

  v13 = v14;
  return CGAffineTransformInvert(retstr, &v13);
}

- (int64_t)previewImageOrientation
{
  attachment = [(ICAttachmentModel *)self attachment];
  orientation = [attachment orientation];

  return orientation;
}

- (BOOL)shouldUsePlaceholderBoundsIfNecessary
{
  attachment = [(ICAttachmentModel *)self attachment];
  if ([attachment fileSize])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    typeUTI = [attachment2 typeUTI];
    v4 = [typeUTI isEqual:@"public.image"] ^ 1;
  }

  return v4;
}

- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content
{
  *name = @"img";
  attachment = [(ICAttachmentModel *)self attachment];
  media = [attachment media];
  data = [media data];

  v8 = [data base64EncodedStringWithOptions:0];
  attachment2 = [(ICAttachmentModel *)self attachment];
  typeUTI = [attachment2 typeUTI];
  v11 = [ICAttachment mimeTypeFromUTI:typeUTI];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"style=max-width: 100%% max-height: 100%%; src=data:%@;base64, %@", v11, v8];;

  return v12;
}

@end