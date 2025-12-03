@interface ICAttachmentImageModel(PreviewGeneration)
- (BOOL)generatePreviewsDuringCloudActivity;
- (BOOL)needToGeneratePreviews;
- (__CFString)classificationsForImage:()PreviewGeneration;
- (id)generateFullSizePreviewWithAttachmentIdentifier:()PreviewGeneration existingPreviewImage:markupModelData:imageOrientation:imageFilterType:mediaDecryptedData:mediaURL:mediaSize:croppingQuad:;
- (id)labelsForClassificationObservations:()PreviewGeneration;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (uint64_t)needToPostProcessAttachment;
- (void)classifyImageInOperation:()PreviewGeneration;
- (void)generateOCRInOperation:()PreviewGeneration;
@end

@implementation ICAttachmentImageModel(PreviewGeneration)

- (BOOL)generatePreviewsDuringCloudActivity
{
  attachment = [self attachment];
  markupModelData = [attachment markupModelData];
  v3 = [markupModelData length] == 0;

  return v3;
}

- (BOOL)needToGeneratePreviews
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = +[ICPreviewDeviceContext sharedContext];
  v5 = 1;
  v6 = [v4 deviceInfoScalable:1];
  v7 = [v6 count];

  needsFullSizePreview = [self needsFullSizePreview];
  v25.receiver = self;
  v25.super_class = &off_1F50595F0;
  if ((objc_msgSendSuper2(&v25, sel_needToGeneratePreviews) & 1) == 0)
  {
    v9 = v7 + needsFullSizePreview;
    attachment = [self attachment];
    previewImages = [attachment previewImages];
    v5 = [previewImages count] < v9;
  }

  v12 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    attachment2 = [self attachment];
    identifier = [attachment2 identifier];
    attachment3 = [self attachment];
    previewImages2 = [attachment3 previewImages];
    v20 = [previewImages2 count];
    v21 = +[ICPreviewDeviceContext sharedContext];
    v22 = [v21 deviceInfoScalable:1];
    v23 = [v22 count];
    *buf = 138413570;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = identifier;
    v32 = 1024;
    v33 = v5;
    v34 = 2048;
    v35 = v20;
    v36 = 2048;
    v37 = v23;
    _os_log_debug_impl(&dword_1D4171000, v12, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewImages.count %lu [[ICPreviewDeviceContext sharedContext] deviceInfoScalable:YES].count %lu", buf, 0x3Au);
  }

  return v5;
}

- (uint64_t)needToPostProcessAttachment
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ICAttachmentImageModel_PreviewGeneration__needToPostProcessAttachment__block_invoke;
  v9[3] = &unk_1E8469E90;
  v6 = attachment;
  v10 = v6;
  selfCopy = self;
  v12 = &v14;
  v13 = a2;
  [managedObjectContext performBlockAndWait:v9];

  v7 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v7;
}

- (id)generateFullSizePreviewWithAttachmentIdentifier:()PreviewGeneration existingPreviewImage:markupModelData:imageOrientation:imageFilterType:mediaDecryptedData:mediaURL:mediaSize:croppingQuad:
{
  v55 = a5;
  v54 = a6;
  v19 = a7;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  if ([v19 length])
  {
    v23 = a8;
  }

  else
  {
    v23 = 0;
  }

  if (v21)
  {
    [MEMORY[0x1E69DCAB8] ic_imageWithContentsOfURL:v21];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] ic_imageWithData:v20];
  }
  v24 = ;
  v25 = v24;
  if (v22 && v24)
  {
    v26 = [MEMORY[0x1E699A320] perspectiveCorrectedImageFromImage:v24 normalizedImageQuad:v22];

    if (!v26)
    {
LABEL_37:
      v25 = 0;
      goto LABEL_38;
    }

    [v26 size];
    if (((1 << a8) & 0xCC) != 0)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }

    if (((1 << a8) & 0xCC) != 0)
    {
      v30 = v28;
    }

    else
    {
      v30 = v27;
    }

    if (a8 <= 7)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    if (a8 <= 7)
    {
      v32 = v30;
    }

    else
    {
      v32 = v27;
    }

    if (v32 != a2 || v31 != a3)
    {
      attachment = [self attachment];
      managedObjectContext = [attachment managedObjectContext];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __214__ICAttachmentImageModel_PreviewGeneration__generateFullSizePreviewWithAttachmentIdentifier_existingPreviewImage_markupModelData_imageOrientation_imageFilterType_mediaDecryptedData_mediaURL_mediaSize_croppingQuad___block_invoke;
      v60[3] = &unk_1E8469EB8;
      v60[4] = self;
      *&v60[5] = v32;
      *&v60[6] = v31;
      [managedObjectContext performBlockAndWait:v60];
    }

    v25 = v26;
  }

  else if (!v24)
  {
LABEL_38:
    v36 = v23 != 0;
    v37 = v25;
    goto LABEL_39;
  }

  v36 = v23 != 0;
  if (!a9 && !v23)
  {
    goto LABEL_38;
  }

  v37 = [MEMORY[0x1E699A320] filteredImage:v25 orientation:0 imageFilterType:a9];

  if (!v37)
  {
    goto LABEL_37;
  }

  if ([v19 length])
  {
    v38 = [MEMORY[0x1E699A320] imageWithRGBColorspaceFromImage:v37];

    v37 = v38;
  }

  if (v37 && v23)
  {
    v39 = [MEMORY[0x1E69DCAB8] ic_orientedImageFromImage:v37 toOrientation:v23];

    v36 = 1;
    v37 = v39;
  }

LABEL_39:
  ic_JPEGData = [v37 ic_JPEGData];

  if ([v19 length])
  {
    v41 = v54;
    if (ic_JPEGData)
    {
      v42 = [MEMORY[0x1E69B77D8] imageDataWithMarkupModelData:v19 sourceImageData:ic_JPEGData];

      ic_JPEGData = v42;
    }

    else
    {
      ic_JPEGData = [MEMORY[0x1E69B77D8] imageDataWithMarkupModelData:v19 sourceImageURL:0];
    }

    if (ic_JPEGData != 0 && v36)
    {
      v45 = [MEMORY[0x1E69DCAB8] ic_imageWithData:ic_JPEGData];
      v46 = [MEMORY[0x1E69DCAB8] ic_orientedImageFromImage:v45 fromOrientation:v23];

      ic_JPEGData2 = [v46 ic_JPEGData];

      ic_JPEGData = ic_JPEGData2;
    }

    v43 = v55;
    if (ic_JPEGData)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v41 = v54;
    v43 = v55;
    if (ic_JPEGData)
    {
LABEL_50:
      v48 = CGImageSourceCreateWithData(ic_JPEGData, 0);
      if (v48)
      {
        v49 = v48;
        if (a2 >= a3)
        {
          a3 = a2;
        }

        attachment2 = [self attachment];
        managedObjectContext2 = [attachment2 managedObjectContext];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __214__ICAttachmentImageModel_PreviewGeneration__generateFullSizePreviewWithAttachmentIdentifier_existingPreviewImage_markupModelData_imageOrientation_imageFilterType_mediaDecryptedData_mediaURL_mediaSize_croppingQuad___block_invoke_170;
        v56[3] = &unk_1E8469EE0;
        v56[4] = self;
        v58 = v49;
        v59 = a3;
        v57 = v41;
        [managedObjectContext2 performBlockAndWait:v56];

        CFRelease(v49);
      }

      goto LABEL_54;
    }
  }

  v44 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    [ICAttachmentImageModel(PreviewGeneration) generateFullSizePreviewWithAttachmentIdentifier:existingPreviewImage:markupModelData:imageOrientation:imageFilterType:mediaDecryptedData:mediaURL:mediaSize:croppingQuad:];
  }

LABEL_54:

  return ic_JPEGData;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v114 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__14;
  v109 = __Block_byref_object_dispose__14;
  v110 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__14;
  v103 = __Block_byref_object_dispose__14;
  v104 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__14;
  v97 = __Block_byref_object_dispose__14;
  v98 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__14;
  v91[4] = __Block_byref_object_dispose__14;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__14;
  v89 = __Block_byref_object_dispose__14;
  v90 = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__14;
  v75 = __Block_byref_object_dispose__14;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__14;
  v69 = __Block_byref_object_dispose__14;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3010000000;
  v59 = &unk_1D449C2A9;
  v60 = *MEMORY[0x1E695F060];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__14;
  v54 = __Block_byref_object_dispose__14;
  v55 = 0;
  selfCopy = self;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __73__ICAttachmentImageModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v49[3] = &unk_1E8469F08;
  v49[4] = selfCopy;
  v49[5] = &v105;
  v49[6] = &v71;
  v49[7] = &v81;
  v49[8] = &v77;
  v49[9] = v91;
  v49[10] = &v99;
  v49[11] = &v93;
  v49[12] = &v85;
  v49[13] = &v65;
  v49[14] = &v61;
  v49[15] = &v56;
  v49[16] = &v50;
  [managedObjectContext performBlockAndWait:v49];

  if (([v32 isCancelled] & 1) != 0 || !v94[5] && !v100[5])
  {
    v7 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = v106[5];
      *buf = 138412802;
      *&buf[4] = v29;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      *&buf[22] = 2112;
      v113 = v31;
      _os_log_debug_impl(&dword_1D4171000, v7, OS_LOG_TYPE_DEBUG, "%@ %@ %@ early return", buf, 0x20u);
    }

    goto LABEL_26;
  }

  if (*(v62 + 24) == 1)
  {
    v8 = [selfCopy generateFullSizePreviewWithAttachmentIdentifier:v106[5] existingPreviewImage:v86[5] markupModelData:v66[5] imageOrientation:v78[3] imageFilterType:*(v82 + 12) mediaDecryptedData:v100[5] mediaURL:v57[4] mediaSize:v57[5] croppingQuad:{v94[5], v51[5]}];
    v9 = v100[5];
    v100[5] = v8;

    v10 = v94[5];
    v94[5] = 0;
  }

  if ([v32 isCancelled])
  {
    goto LABEL_26;
  }

  v11 = v94[5];
  if (v11)
  {
    cf = CGImageSourceCreateWithURL(v11, 0);
    goto LABEL_14;
  }

  v12 = v100[5];
  if (!v12)
  {
LABEL_26:
    v26 = 0;
    goto LABEL_27;
  }

  cf = CGImageSourceCreateWithData(v12, 0);
LABEL_14:
  if (!cf)
  {
    goto LABEL_26;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v113) = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = +[ICPreviewDeviceContext sharedContext];
  obj = [v13 deviceInfoScalable:1];

  v14 = [obj countByEnumeratingWithState:&v41 objects:v111 count:16];
  if (v14)
  {
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        [v17 imageSize];
        v19 = v18;
        attachment2 = [selfCopy attachment];
        managedObjectContext2 = [attachment2 managedObjectContext];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __73__ICAttachmentImageModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_171;
        v40[3] = &unk_1E8469F30;
        v40[4] = v17;
        v40[5] = selfCopy;
        v40[9] = &v105;
        v40[10] = cf;
        v40[11] = v19;
        v40[6] = buf;
        v40[7] = &v85;
        v40[8] = &v45;
        v40[12] = a2;
        [managedObjectContext2 performBlockAndWait:v40];
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v111 count:16];
    }

    while (v14);
  }

  attachment3 = [selfCopy attachment];
  managedObjectContext3 = [attachment3 managedObjectContext];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __73__ICAttachmentImageModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_172;
  v36[3] = &unk_1E8469F58;
  v38 = &v85;
  v36[4] = selfCopy;
  v39 = buf;
  v24 = v32;
  v37 = v24;
  [managedObjectContext3 performBlockAndWait:v36];

  CFRelease(cf);
  if (([v24 isCancelled] & 1) == 0 && objc_msgSend(v72[5], "shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:", v106[5]))
  {
    [v72[5] generatePreviewsInOperation:v24];
  }

  v25 = *(v46 + 24);

  v26 = v25 ^ 1;
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(buf, 8);
LABEL_27:
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);

  _Block_object_dispose(v91, 8);
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v105, 8);

  return v26 & 1;
}

- (void)generateOCRInOperation:()PreviewGeneration
{
  v4 = a3;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke;
  v9[3] = &unk_1E8468D98;
  v9[4] = self;
  v10 = attachment;
  v11 = v4;
  v7 = v4;
  v8 = attachment;
  [managedObjectContext performBlockAndWait:v9];
}

- (void)classifyImageInOperation:()PreviewGeneration
{
  v4 = a3;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke;
  v9[3] = &unk_1E8468D98;
  v9[4] = self;
  v10 = attachment;
  v11 = v4;
  v7 = v4;
  v8 = attachment;
  [managedObjectContext performBlockAndWait:v9];
}

- (__CFString)classificationsForImage:()PreviewGeneration
{
  v24[1] = *MEMORY[0x1E69E9840];
  gotLoadHelper_x8__OBJC_CLASS___VNSession(a2);
  v4 = *(v3 + 1672);
  v6 = v5;
  v7 = objc_alloc_init(v4);
  gotLoadHelper_x8__OBJC_CLASS___VNImageRequestHandler(v8);
  v10 = objc_alloc(*(v9 + 1464));
  ic_CGImage = [v6 ic_CGImage];

  v12 = [v10 initWithCGImage:ic_CGImage options:MEMORY[0x1E695E0F8] session:v7];
  gotLoadHelper_x8__OBJC_CLASS___VNSceneClassificationRequest(v13);
  v15 = objc_alloc_init(*(v14 + 1640));
  v24[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v23 = 0;
  v17 = [v12 performRequests:v16 error:&v23];
  v18 = v23;

  if (!v17)
  {
    v20 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentImageModel(PreviewGeneration) classificationsForImage:];
    }

    goto LABEL_7;
  }

  results = [v15 results];
  v20 = [self labelsForClassificationObservations:results];

  if (!v20)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  if ([v20 count])
  {
    v21 = [v20 componentsJoinedByString:@" "];
  }

  else
  {
    v21 = &stru_1F4F94F00;
  }

LABEL_8:

  return v21;
}

- (id)labelsForClassificationObservations:()PreviewGeneration
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v5 = objc_alloc_init(MEMORY[0x1E69C0850]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [v5 nodeRefForName:identifier];

        if (v13)
        {
          [v11 confidence];
          v15 = v14;
          PFSceneTaxonomyNodeSearchThreshold();
          if (v16 < v15)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __81__ICAttachmentImageModel_PreviewGeneration__labelsForClassificationObservations___block_invoke;
            aBlock[3] = &unk_1E8469F80;
            v23 = v20;
            v24 = v4;
            v25 = v5;
            v17 = _Block_copy(aBlock);
            memset(v21, 0, sizeof(v21));
            PFSceneTaxonomyFillNodeData();
            v17[2](v17, v13, v21);
            PFSceneTaxonomyNodeVisitParents();
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v18 = [v4 copy];

  return v18;
}

- (void)generateFullSizePreviewWithAttachmentIdentifier:()PreviewGeneration existingPreviewImage:markupModelData:imageOrientation:imageFilterType:mediaDecryptedData:mediaURL:mediaSize:croppingQuad:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4171000, v0, OS_LOG_TYPE_ERROR, "No media decrypted data for: %@", v1, 0xCu);
}

- (void)classificationsForImage:()PreviewGeneration .cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4171000, v0, OS_LOG_TYPE_ERROR, "Error classifying image: %@", v1, 0xCu);
}

@end