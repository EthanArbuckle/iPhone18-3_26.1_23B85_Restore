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
  v19 = [a1 attachment];
  [v19 setBounds:{v12, v14, v16, v18}];

  LOWORD(v19) = [v8 orientation];
  v20 = [a1 attachment];
  [v20 setOrientation:v19];

  v21 = [a1 attachment];
  v22 = [v21 managedObjectContext];
  [v22 save:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ICAttachmentDrawingModel_UI__saveDrawing_withImage_forImageDrawing___block_invoke;
  block[3] = &unk_1E8468BA0;
  block[4] = a1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v23 = [a1 drawing];
  v24 = [v23 mergeWithDrawing:v8];

  if (v24 == 2)
  {
    [a1 setMergeableDataDirty:1];
    v25 = [a1 attachment];
    [v25 attachmentDidChange];
  }

  v116 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-10.0];
  v26 = [a1 drawing];
  v27 = [v26 visibleCommands];
  v28 = [v8 visibleCommands];
  v29 = [v27 isEqualToOrderedSet:v28];

  v30 = os_log_create("com.apple.notes", "Sketching");
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  if (v29)
  {
    if (v31)
    {
      [ICAttachmentDrawingModel(UI) saveDrawing:v30 withImage:? forImageDrawing:?];
    }

    v32 = [a1 attachment];
    v33 = [v32 modificationDate];
    v34 = [a1 attachment];
    [v34 setPreviewUpdateDate:v33];
  }

  else
  {
    if (v31)
    {
      [ICAttachmentDrawingModel(UI) saveDrawing:v30 withImage:? forImageDrawing:?];
    }

    v32 = +[ICAttachmentPreviewGenerator sharedGenerator];
    v33 = [a1 attachment];
    [v32 generatePreviewIfNeededForAttachment:v33];
  }

  v35 = [a1 attachment];
  v36 = v35;
  if (v9)
  {
    v37 = [v10 serializeWithPathData:0];
    v38 = [v36 updateAttachmentPreviewImageWithImage:v9 scale:1 scaleWhenDrawing:v37 metadata:0 sendNotification:1.0];

    v39 = [MEMORY[0x1E695E000] standardUserDefaults];
    LODWORD(v37) = [v39 BOOLForKey:*MEMORY[0x1E69B7490]];

    if (v37)
    {
      v40 = [a1 attachment];
      v41 = [v40 orientation];

      v42 = [a1 attachment];
      [v42 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v51 = MEMORY[0x1E69B7748];
      [MEMORY[0x1E69B7748] defaultSize];
      [v51 fullSize:v41 forOrientation:?];
      v53 = v52;
      v55 = v54;
      [v9 size];
      v57 = v56;
      v59 = v58;
      memset(&v127, 0, sizeof(v127));
      v60 = [a1 drawing];
      v61 = v60;
      if (v60)
      {
        [v60 orientationTransform];
      }

      else
      {
        memset(&v127, 0, sizeof(v127));
      }

      [MEMORY[0x1E69B7748] fullSize:v41 forOrientation:{v57, v59}];
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
      v67 = [v66 ic_JPEGDataWithOrientation:v41];
      v68 = [a1 attachment];
      [v68 writeFallbackImageData:v67];
    }

    if (!v38)
    {
      v107 = +[ICAttachmentPreviewGenerator sharedGenerator];
      v108 = [a1 attachment];
      [v107 generatePreviewIfNeededForAttachment:v108];
      goto LABEL_42;
    }

    v111 = v10;
    v112 = v8;
    v69 = v9;
    [v38 setVersion:{objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion")}];
    v70 = [a1 drawingDocument];
    v71 = [v70 maxDocumentVersion];
    [v38 setVersionOutOfDate:{v71 > objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion")}];

    memset(&v127, 0, sizeof(v127));
    [a1 previewImageOrientationTransform];
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
            v84 = [a1 attachment];
            [v78 scale];
            v85 = [v84 updateAttachmentPreviewImageWithImage:v83 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:?];
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
      v90 = [a1 attachment];
      v91 = [v90 updateAttachmentPreviewImageWithImage:v89 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:1.0];
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v92 = [a1 attachment];
    v93 = [v92 previewImages];
    v94 = [v93 copy];

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
          v100 = [v99 modifiedDate];
          v101 = [v100 compare:v116];

          if (v101 == -1)
          {
            v102 = [a1 attachment];
            [v102 removePreviewImagesObject:v99];

            v103 = [a1 attachment];
            v104 = [v103 managedObjectContext];
            [v104 deleteObject:v99];
          }
        }

        v96 = [v94 countByEnumeratingWithState:&v117 objects:v129 count:16];
      }

      while (v96);
    }

    v105 = [a1 attachment];
    v106 = [v105 ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x1E69B7420]];

    v8 = v112;
    v9 = v69;
  }

  else
  {
    [v35 deleteAttachmentPreviewImages];
  }

  v107 = [a1 attachment];
  v108 = [v107 managedObjectContext];
  v109 = [a1 attachment];
  v110 = [v109 shortLoggingDescription];
  [v108 ic_saveWithLogDescription:{@"Saving drawing preview images for %@", v110}];

LABEL_42:
}

- (id)imageForActivityItem
{
  v2 = [a1 attachment];
  v3 = [v2 image];

  if (!v3)
  {
    v4 = [a1 attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v5 = [v4 attachmentPreviewImageWithMinSize:? scale:?];

    v3 = [v5 orientedImageWithBackground:1];
  }

  return v3;
}

- (ICAttachmentDrawingActivityItemSource)activityItem
{
  v2 = [ICAttachmentDrawingActivityItemSource alloc];
  v3 = [a1 attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:v3];

  return v4;
}

- (id)activityItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 activityItem];
  v3 = v2;
  if (v2)
  {
    v10[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = [ICAttachmentActivityItemSource alloc];
  v6 = [a1 attachment];
  v7 = [(ICAttachmentActivityItemSource *)v5 initWithAttachment:v6];
  v8 = [v4 arrayByAddingObject:v7];

  return v8;
}

- (id)providerDataTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 previewImageTypeUTI];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)providerFileTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 previewImageTypeUTI];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)fileURLForTypeIdentifier:()UI
{
  v4 = a3;
  v5 = [a1 previewImageTypeUTI];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [a1 attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v8 = [v7 attachmentPreviewImageWithMinSize:? scale:?];

    v9 = [v8 orientedPreviewImageURL];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataForTypeIdentifier:()UI
{
  v4 = a3;
  v5 = [a1 previewImageTypeUTI];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [a1 attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v8 = [v7 attachmentPreviewImageWithMinSize:? scale:?];

    v9 = [a1 attachment];
    v10 = [v9 isPasswordProtected];

    if (v10)
    {
      v11 = [a1 attachment];
      v12 = [v11 isAuthenticated];

      if (v12)
      {
        v13 = [v8 decryptedImageData];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v14 = MEMORY[0x1E695DEF0];
      v15 = [v8 orientedPreviewImageURL];
      v13 = [v14 dataWithContentsOfURL:v15];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)attributesForSharingHTMLWithTagName:()UI textContent:
{
  *a3 = @"img";
  v3 = [a1 attachment];
  [MEMORY[0x1E69B7748] defaultPixelSize];
  v4 = [v3 attachmentPreviewImageWithMinSize:? scale:?];

  v5 = [v4 orientedImageWithBackground:2];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 ic_JPEGData];
    v8 = [v7 base64EncodedStringWithOptions:0];
    v9 = MEMORY[0x1E69B7680];
    v10 = [*MEMORY[0x1E6982E58] identifier];
    v11 = [v9 mimeTypeFromUTI:v10];

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
  v10 = [a1 attachment];
  [MEMORY[0x1E69B7748] defaultPixelSize];
  v30 = [v10 attachmentPreviewImageWithMinSize:? scale:?];

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
        v19 = [a1 drawing];
        [v19 bounds];
        v21 = v20;
        v22 = [a1 drawing];
        [v22 fullBounds];
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