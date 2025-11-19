@interface ICAttachmentInlineDrawingModel(PreviewGeneration)
+ (id)generateImageForAttachment:()PreviewGeneration fromDrawing:fullResolution:appearanceInfo:;
+ (id)previewImageFromDrawing:()PreviewGeneration fullImage:scale:;
+ (void)generatePreviewsForAttachment:()PreviewGeneration fromDrawing:;
- (BOOL)needToGeneratePreviews;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
@end

@implementation ICAttachmentInlineDrawingModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = [a1 attachment];
  v7 = [v6 previewImages];
  v8 = [v7 count];
  if (v8 < 2)
  {
    v10 = 0;
  }

  else
  {
    v2 = [a1 attachment];
    v3 = [v2 previewUpdateDate];
    if (v3)
    {
      v4 = [a1 attachment];
      if ([v4 hasFallbackImage])
      {

        v9 = 0;
        goto LABEL_12;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = [a1 attachment];
  v12 = [v11 mergeableData];
  v9 = v12 != 0;

  if (!v10)
  {
    if (v8 < 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 > 1)
  {
LABEL_12:
  }

LABEL_13:

  v13 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    v18 = [a1 attachment];
    v19 = [v18 identifier];
    v20 = [a1 attachment];
    v21 = [v20 previewImages];
    *buf = 138413314;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v19;
    v29 = 1024;
    v30 = v9;
    v31 = 2048;
    v32 = [v21 count];
    _os_log_debug_impl(&dword_1D4171000, v13, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewImages.count %lu", buf, 0x30u);
  }

  return v9;
}

+ (id)previewImageFromDrawing:()PreviewGeneration fullImage:scale:
{
  v6 = a4;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = safeCanvasBoundsForDrawing(v6);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v61.origin.x = v8;
  v61.origin.y = v10;
  v61.size.width = v12;
  v61.size.height = v14;
  v74.origin.x = v15;
  v74.origin.y = v17;
  r2 = v19;
  v74.size.width = v19;
  v74.size.height = v21;
  v62 = CGRectIntersection(v61, v74);
  v63 = CGRectOffset(v62, -v15, -v17);
  y = v63.origin.y;
  width = v63.size.width;
  if (v63.size.width == *MEMORY[0x1E695F060] && v63.size.height == *(MEMORY[0x1E695F060] + 8))
  {
    y = 0.0;
    height = 100.0;
    width = 100.0;
    x = 0.0;
  }

  else
  {
    height = v63.size.height;
    if (v63.size.width < 50.0 || v63.size.height < 50.0)
    {
      if ((50.0 - v63.size.width) * -0.5 <= 0.0)
      {
        v27 = (50.0 - v63.size.width) * -0.5;
      }

      else
      {
        v27 = 0.0;
      }

      if ((50.0 - v63.size.height) * -0.5 <= 0.0)
      {
        v28 = (50.0 - v63.size.height) * -0.5;
      }

      else
      {
        v28 = 0.0;
      }

      v64 = CGRectInset(v63, v27, v28);
      v75.origin.x = v15;
      v75.origin.y = v17;
      v75.size.width = r2;
      v75.size.height = v21;
      v65 = CGRectIntersection(v64, v75);
      x = v65.origin.x;
      y = v65.origin.y;
      width = v65.size.width;
      height = v65.size.height;
    }

    else
    {
      x = v63.origin.x;
    }
  }

  v30 = TSUCreateRGBABitmapContext();
  if (v30)
  {
    v31 = v30;
    CGContextTranslateCTM(v30, 30.72, 30.72);
    v32 = 322.56;
    v33 = 322.56 / height;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    rect_24 = v21 - CGRectGetMaxY(v66);
    rect = x;
    if (width <= height * 4.0)
    {
      v40 = 322.56 / width;
      if (height <= width * 4.0)
      {
        if (width <= height)
        {
          v35 = width * v33;
          rect_8 = (322.56 - width * v33) * 0.5;
          rect_16 = 0.0;
        }

        else
        {
          v35 = 322.56;
          v32 = height * v40;
          rect_8 = 0.0;
          rect_16 = (322.56 - height * v40) * 0.5;
        }

        v37 = x;
        v38 = height;
        v34 = width;
        v36 = rect_24;
      }

      else
      {
        v38 = width + 30.72 / v40;
        v68.origin.x = x;
        v68.origin.y = rect_24;
        v68.size.width = width;
        v68.size.height = height;
        v36 = CGRectGetMaxY(v68) - v38;
        rect_8 = 0.0;
        v32 = 353.28;
        v35 = 322.56;
        rect_16 = -30.72;
        v37 = x;
        v34 = width;
      }
    }

    else
    {
      v34 = height + 30.72 / v33;
      rect_16 = 0.0;
      v35 = 353.28;
      if ([MEMORY[0x1E69DB7D0] ic_isRTL])
      {
        v67.origin.x = rect;
        v36 = rect_24;
        v67.origin.y = rect_24;
        v67.size.width = width;
        v67.size.height = height;
        v37 = CGRectGetMaxX(v67) - v34;
        rect_8 = -30.72;
        v38 = height;
      }

      else
      {
        v37 = rect;
        v38 = height;
        v36 = rect_24;
        rect_8 = 0.0;
      }
    }

    v41 = CGImageGetWidth(a5);
    CGAffineTransformMakeScale(&v59, v41 / (r2 * a1) * a1, v41 / (r2 * a1) * a1);
    v69.origin.x = v37;
    v69.origin.y = v36;
    v69.size.width = v34;
    v69.size.height = v38;
    v70 = CGRectApplyAffineTransform(v69, &v59);
    v42 = v70.origin.x;
    v43 = v70.origin.y;
    v44 = v70.size.width;
    if (v70.size.width / v70.size.height != v35 / v32 && vabdd_f64(v70.size.width / v70.size.height, v35 / v32) >= fabs(v35 / v32 * 0.000000999999997))
    {
      v45 = MEMORY[0x1E69B7A38];
      v46 = NSStringFromCGRect(v70);
      v71.origin.x = rect_8;
      v71.origin.y = rect_16;
      v71.size.width = v35;
      v71.size.height = v32;
      v47 = NSStringFromCGRect(v71);
      v72.origin.x = rect;
      v72.origin.y = rect_24;
      v72.size.width = width;
      v72.size.height = height;
      v48 = NSStringFromCGRect(v72);
      [v45 handleFailedAssertWithCondition:"TSUEqualFloats(scaledReadRect.size.width / scaledReadRect.size.height functionName:drawRect.size.width / drawRect.size.height)" simulateCrash:"+[ICAttachmentInlineDrawingModel(PreviewGeneration) previewImageFromDrawing:fullImage:scale:]" showAlert:1 format:{0, @"The aspect ratio of the rect for reading %@ should be the same as the aspect ratio for drawing %@, with strokebounds %@", v46, v47, v48}];
    }

    v49 = v35 / v44 * CGImageGetWidth(a5);
    v73.size.height = v35 / v44 * CGImageGetHeight(a5);
    v73.origin.x = rect_8 - v42 * (v35 / v44);
    v73.origin.y = rect_16 - v43 * (v35 / v44);
    v73.size.width = v49;
    CGContextDrawImage(v31, v73, a5);
    Image = CGBitmapContextCreateImage(v31);
    if (Image)
    {
      v51 = Image;
      v39 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:Image];
      CFRelease(v51);
    }

    else
    {
      v39 = 0;
    }

    CGContextRelease(v31);
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

+ (id)generateImageForAttachment:()PreviewGeneration fromDrawing:fullResolution:appearanceInfo:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__81;
  v26 = __Block_byref_object_dispose__81;
  v27 = 0;
  v12 = [v9 managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __122__ICAttachmentInlineDrawingModel_PreviewGeneration__generateImageForAttachment_fromDrawing_fullResolution_appearanceInfo___block_invoke;
  v17[3] = &unk_1E846E5E0;
  v13 = v10;
  v18 = v13;
  v21 = a5;
  v14 = v11;
  v19 = v14;
  v20 = &v22;
  [v12 performBlockAndWait:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

+ (void)generatePreviewsForAttachment:()PreviewGeneration fromDrawing:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsForAttachment_fromDrawing___block_invoke;
  v11[3] = &unk_1E84699C8;
  v12 = v7;
  v13 = v6;
  v14 = a1;
  v9 = v6;
  v10 = v7;
  [v8 performBlockAndWait:v11];
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__81;
  v15 = __Block_byref_object_dispose__81;
  v16 = 0;
  v5 = [a1 attachment];
  v6 = [v5 managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v10[3] = &unk_1E8468FA8;
  v10[4] = a1;
  v10[5] = &v11;
  [v6 performBlockAndWait:v10];

  v7 = objc_opt_class();
  v8 = [a1 attachment];
  [v7 generatePreviewsForAttachment:v8 fromDrawing:v12[5]];

  _Block_object_dispose(&v11, 8);
  return 1;
}

@end