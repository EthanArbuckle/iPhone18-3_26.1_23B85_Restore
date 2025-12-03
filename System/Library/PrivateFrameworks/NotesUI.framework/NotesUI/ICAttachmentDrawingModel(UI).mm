@interface ICAttachmentDrawingModel(UI)
- (ICAttachmentDrawingActivityItemSource)activityItem;
- (id)activityItems;
- (id)attributesForSharingHTMLWithTagName:()UI textContent:;
- (id)dataForTypeIdentifier:()UI;
- (id)fileURLForTypeIdentifier:()UI;
- (id)imageForActivityItem;
- (id)providerDataTypes;
- (id)providerFileTypes;
- (void)drawPreviewInRect:()UI;
- (void)saveDrawing:()UI withImage:forImageDrawing:;
@end

@implementation ICAttachmentDrawingModel(UI)

- (void)saveDrawing:()UI withImage:forImageDrawing:
{
  v131 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  attachment = [self attachment];
  [attachment setBounds:{v12, v14, v16, v18}];

  LOWORD(attachment) = [v8 orientation];
  attachment2 = [self attachment];
  [attachment2 setOrientation:attachment];

  attachment3 = [self attachment];
  managedObjectContext = [attachment3 managedObjectContext];
  [managedObjectContext save:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICAttachmentDrawingModel_UI__saveDrawing_withImage_forImageDrawing___block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  drawing = [self drawing];
  v24 = [drawing mergeWithDrawing:v8];

  if (v24 == 2)
  {
    [self setMergeableDataDirty:1];
    attachment4 = [self attachment];
    [attachment4 attachmentDidChange];
  }

  v116 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-10.0];
  drawing2 = [self drawing];
  visibleCommands = [drawing2 visibleCommands];
  visibleCommands2 = [v8 visibleCommands];
  v29 = [visibleCommands isEqualToOrderedSet:visibleCommands2];

  v30 = os_log_create("com.apple.notes", "Sketching");
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  if (v29)
  {
    if (v31)
    {
      [ICAttachmentDrawingModel(UI) saveDrawing:v30 withImage:? forImageDrawing:?];
    }

    attachment5 = [self attachment];
    modificationDate = [attachment5 modificationDate];
    attachment6 = [self attachment];
    [attachment6 setPreviewUpdateDate:modificationDate];
  }

  else
  {
    if (v31)
    {
      [ICAttachmentDrawingModel(UI) saveDrawing:v30 withImage:? forImageDrawing:?];
    }

    attachment5 = +[ICAttachmentPreviewGenerator sharedGenerator];
    modificationDate = [self attachment];
    [attachment5 generatePreviewIfNeededForAttachment:modificationDate];
  }

  attachment7 = [self attachment];
  v36 = attachment7;
  if (v9)
  {
    v37 = [v10 serializeWithPathData:0];
    v38 = [v36 updateAttachmentPreviewImageWithImage:v9 scale:1 scaleWhenDrawing:v37 metadata:0 sendNotification:1.0];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    LODWORD(v37) = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69B7490]];

    if (v37)
    {
      attachment8 = [self attachment];
      orientation = [attachment8 orientation];

      attachment9 = [self attachment];
      [attachment9 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v51 = MEMORY[0x1E69B7748];
      [MEMORY[0x1E69B7748] defaultSize];
      [v51 fullSize:orientation forOrientation:?];
      v53 = v52;
      v55 = v54;
      [v9 size];
      v57 = v56;
      v59 = v58;
      memset(&v127, 0, sizeof(v127));
      drawing3 = [self drawing];
      v61 = drawing3;
      if (drawing3)
      {
        [drawing3 orientationTransform];
      }

      else
      {
        memset(&v127, 0, sizeof(v127));
      }

      [MEMORY[0x1E69B7748] fullSize:orientation forOrientation:{v57, v59}];
      v63 = v62;
      v65 = v64;
      v125 = v127;
      CGAffineTransformInvert(&v126, &v125);
      v132.origin.x = v44;
      v132.origin.y = v46;
      v132.size.width = v48;
      v132.size.height = v50;
      v133 = CGRectApplyAffineTransform(v132, &v126);
      v66 = [v9 ic_imageFromRect:{v63 / v53 * v133.origin.x, v65 / v55 * v133.origin.y, v63 / v53 * v133.size.width, v65 / v55 * v133.size.height}];
      v67 = [v66 ic_JPEGDataWithOrientation:orientation];
      attachment10 = [self attachment];
      [attachment10 writeFallbackImageData:v67];
    }

    if (!v38)
    {
      attachment18 = +[ICAttachmentPreviewGenerator sharedGenerator];
      attachment11 = [self attachment];
      [attachment18 generatePreviewIfNeededForAttachment:attachment11];
      goto LABEL_42;
    }

    v111 = v10;
    v112 = v8;
    v69 = v9;
    [v38 setVersion:{objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion")}];
    drawingDocument = [self drawingDocument];
    maxDocumentVersion = [drawingDocument maxDocumentVersion];
    [v38 setVersionOutOfDate:{maxDocumentVersion > objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion")}];

    memset(&v127, 0, sizeof(v127));
    [self previewImageOrientationTransform];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v72 = +[ICPreviewDeviceContext sharedContext];
    v73 = [v72 deviceInfoScalable:1];

    v74 = [v73 countByEnumeratingWithState:&v121 objects:v130 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v122;
      v114 = *(MEMORY[0x1E695EFD0] + 16);
      v115 = *MEMORY[0x1E695EFD0];
      v113 = *(MEMORY[0x1E695EFD0] + 32);
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v122 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v121 + 1) + 8 * i);
          [v78 imageSize];
          v80 = v79;
          [v78 scale];
          v82 = [v69 ic_scaledImageMinDimension:v80 scale:v81];
          *&v126.a = v115;
          *&v126.c = v114;
          *&v126.tx = v113;
          v125 = v127;
          v83 = [MEMORY[0x1E69B76B8] orientedImage:v82 withTransform:&v126 background:2 backgroundTransform:&v125];

          if (v83)
          {
            attachment12 = [self attachment];
            [v78 scale];
            v85 = [attachment12 updateAttachmentPreviewImageWithImage:v83 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:?];
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v121 objects:v130 count:16];
      }

      while (v75);
    }

    [v69 size];
    v86 = *MEMORY[0x1E69B7988];
    if (v87 > *MEMORY[0x1E69B7988] || ([v69 size], v88 > v86))
    {
      v89 = [v69 ic_scaledImageMaxDimension:v86 scale:1.0];
      attachment13 = [self attachment];
      v91 = [attachment13 updateAttachmentPreviewImageWithImage:v89 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:1.0];
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    attachment14 = [self attachment];
    previewImages = [attachment14 previewImages];
    v94 = [previewImages copy];

    v95 = [v94 countByEnumeratingWithState:&v117 objects:v129 count:16];
    v10 = v111;
    if (v95)
    {
      v96 = v95;
      v97 = *v118;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v118 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v99 = *(*(&v117 + 1) + 8 * j);
          modifiedDate = [v99 modifiedDate];
          v101 = [modifiedDate compare:v116];

          if (v101 == -1)
          {
            attachment15 = [self attachment];
            [attachment15 removePreviewImagesObject:v99];

            attachment16 = [self attachment];
            managedObjectContext2 = [attachment16 managedObjectContext];
            [managedObjectContext2 deleteObject:v99];
          }
        }

        v96 = [v94 countByEnumeratingWithState:&v117 objects:v129 count:16];
      }

      while (v96);
    }

    attachment17 = [self attachment];
    v106 = [attachment17 ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x1E69B7420]];

    v8 = v112;
    v9 = v69;
  }

  else
  {
    [attachment7 deleteAttachmentPreviewImages];
  }

  attachment18 = [self attachment];
  attachment11 = [attachment18 managedObjectContext];
  attachment19 = [self attachment];
  shortLoggingDescription = [attachment19 shortLoggingDescription];
  [attachment11 ic_saveWithLogDescription:{@"Saving drawing preview images for %@", shortLoggingDescription}];

LABEL_42:
}

- (id)imageForActivityItem
{
  attachment = [self attachment];
  image = [attachment image];

  if (!image)
  {
    attachment2 = [self attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v5 = [attachment2 attachmentPreviewImageWithMinSize:? scale:?];

    image = [v5 orientedImageWithBackground:1];
  }

  return image;
}

- (ICAttachmentDrawingActivityItemSource)activityItem
{
  v2 = [ICAttachmentDrawingActivityItemSource alloc];
  attachment = [self attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:attachment];

  return v4;
}

- (id)activityItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  activityItem = [self activityItem];
  v3 = activityItem;
  if (activityItem)
  {
    v10[0] = activityItem;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = [ICAttachmentActivityItemSource alloc];
  attachment = [self attachment];
  v7 = [(ICAttachmentActivityItemSource *)v5 initWithAttachment:attachment];
  v8 = [v4 arrayByAddingObject:v7];

  return v8;
}

- (id)providerDataTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  previewImageTypeUTI = [self previewImageTypeUTI];
  v4[0] = previewImageTypeUTI;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)providerFileTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  previewImageTypeUTI = [self previewImageTypeUTI];
  v4[0] = previewImageTypeUTI;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)fileURLForTypeIdentifier:()UI
{
  v4 = a3;
  previewImageTypeUTI = [self previewImageTypeUTI];
  v6 = [v4 isEqualToString:previewImageTypeUTI];

  if (v6)
  {
    attachment = [self attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v8 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

    orientedPreviewImageURL = [v8 orientedPreviewImageURL];
  }

  else
  {
    orientedPreviewImageURL = 0;
  }

  return orientedPreviewImageURL;
}

- (id)dataForTypeIdentifier:()UI
{
  v4 = a3;
  previewImageTypeUTI = [self previewImageTypeUTI];
  v6 = [v4 isEqualToString:previewImageTypeUTI];

  if (v6)
  {
    attachment = [self attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v8 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

    attachment2 = [self attachment];
    isPasswordProtected = [attachment2 isPasswordProtected];

    if (isPasswordProtected)
    {
      attachment3 = [self attachment];
      isAuthenticated = [attachment3 isAuthenticated];

      if (isAuthenticated)
      {
        decryptedImageData = [v8 decryptedImageData];
      }

      else
      {
        decryptedImageData = 0;
      }
    }

    else
    {
      v14 = MEMORY[0x1E695DEF0];
      orientedPreviewImageURL = [v8 orientedPreviewImageURL];
      decryptedImageData = [v14 dataWithContentsOfURL:orientedPreviewImageURL];
    }
  }

  else
  {
    decryptedImageData = 0;
  }

  return decryptedImageData;
}

- (id)attributesForSharingHTMLWithTagName:()UI textContent:
{
  *a3 = @"img";
  attachment = [self attachment];
  [MEMORY[0x1E69B7748] defaultPixelSize];
  v4 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

  v5 = [v4 orientedImageWithBackground:2];
  v6 = v5;
  if (v5)
  {
    ic_JPEGData = [v5 ic_JPEGData];
    v8 = [ic_JPEGData base64EncodedStringWithOptions:0];
    v9 = MEMORY[0x1E69B7680];
    identifier = [*MEMORY[0x1E6982E58] identifier];
    v11 = [v9 mimeTypeFromUTI:identifier];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"style=max-width: 100%% max-height: 100%%; src=data:%@;base64, %@", v11, v8];;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)drawPreviewInRect:()UI
{
  attachment = [self attachment];
  [MEMORY[0x1E69B7748] defaultPixelSize];
  v30 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

  v11 = [v30 orientedImageWithBackground:0];
  v12 = v11;
  if (v11)
  {
    [v11 size];
    if (v13 > 0.0)
    {
      [v12 size];
      if (v14 > 0.0 && a4 > 0.0 && a5 > 0.0)
      {
        [v12 size];
        v16 = v15;
        [v12 size];
        v18 = a4 / (v16 / v17);
        drawing = [self drawing];
        [drawing bounds];
        v21 = v20;
        drawing2 = [self drawing];
        [drawing2 fullBounds];
        v24 = v21 * (a4 / v23);

        v32.origin.x = 0.0;
        v32.origin.y = 0.0;
        v32.size.width = a4;
        v32.size.height = v18;
        v33 = CGRectOffset(v32, a2, a3 - v24);
        x = v33.origin.x;
        y = v33.origin.y;
        width = v33.size.width;
        height = v33.size.height;
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(CurrentContext);
        v34.origin.x = a2;
        v34.origin.y = a3;
        v34.size.width = a4;
        v34.size.height = a5;
        CGContextClipToRect(CurrentContext, v34);
        [v12 drawInRect:{x, y, width, height}];
        CGContextRestoreGState(CurrentContext);
      }
    }
  }
}

@end