@interface CAMPDFConverter
+ (id)_pdfPageOptionsForImageRef:(CGImage *)a3;
+ (void)convertToPDFAndWrite:(id)a3 documentName:(id)a4 completionHandler:(id)a5;
@end

@implementation CAMPDFConverter

+ (void)convertToPDFAndWrite:(id)a3 documentName:(id)a4 completionHandler:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CAMPDFConverter_convertToPDFAndWrite_documentName_completionHandler___block_invoke;
  aBlock[3] = &__block_descriptor_40_e26___PDFPage_16__0__UIImage_8l;
  aBlock[4] = a1;
  v10 = _Block_copy(aBlock);
  v11 = objc_alloc_init(MEMORY[0x1E6978028]);
  v12 = objc_autoreleasePoolPush();
  if ([v8 pageCount])
  {
    v36 = v12;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v14;
      v17 = v13;
      v14 = [v8 imageOfPageAtIndex:v15];

      v13 = v10[2](v10, v14);

      if (v13)
      {
        [v11 insertPage:v13 atIndex:{objc_msgSend(v11, "pageCount")}];
      }

      else
      {
        v18 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v35 = [v8 pageCount];
          v19 = [v14 debugDescription];
          *buf = 134218498;
          v46 = v15;
          v47 = 2048;
          v48 = v35;
          v49 = 2114;
          v50 = v19;
          _os_log_error_impl(&dword_1A3640000, v18, OS_LOG_TYPE_ERROR, "Failed to create PDF page from image (image %lu/%lu of scanned document) with description: %{public}@", buf, 0x20u);
        }
      }

      ++v15;
    }

    while (v15 < [v8 pageCount]);

    v12 = v36;
  }

  objc_autoreleasePoolPop(v12);
  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [v20 temporaryDirectory];
  v22 = [MEMORY[0x1E696AFB0] UUID];
  v23 = [v22 UUIDString];
  v24 = [v21 URLByAppendingPathComponent:v23];

  v25 = [v24 path];
  LOBYTE(v23) = [v20 fileExistsAtPath:v25];

  if (v23)
  {
    v26 = [v24 path];
    v41 = 0;
    [v20 removeItemAtPath:v26 error:&v41];
    v27 = v41;

    if (v27)
    {
      v28 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CAMPDFConverter convertToPDFAndWrite:v24 documentName:v27 completionHandler:v28];
      }

LABEL_17:

      v30 = v39;
      (*(v39 + 2))(v39, 0);
      goto LABEL_22;
    }
  }

  v29 = [v24 path];
  v40 = 0;
  [v20 createDirectoryAtPath:v29 withIntermediateDirectories:1 attributes:0 error:&v40];
  v27 = v40;

  if (v27)
  {
    v28 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CAMPDFConverter convertToPDFAndWrite:v27 documentName:v28 completionHandler:?];
    }

    goto LABEL_17;
  }

  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.pdf", v9];
  v31 = [v24 URLByAppendingPathComponent:v37];
  v43 = *MEMORY[0x1E695F3B0];
  v44 = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v38 = v21;
  v33 = v32 = v9;
  v30 = v39;
  if ([v11 writeToURL:v31 withOptions:v33])
  {
    v34 = v31;
  }

  else
  {
    v34 = 0;
  }

  (*(v39 + 2))(v39, v34);

  v9 = v32;
  v21 = v38;

LABEL_22:
}

id __71__CAMPDFConverter_convertToPDFAndWrite_documentName_completionHandler___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = a2;
  v6 = [v3 _pdfPageOptionsForImageRef:{objc_msgSend(v5, "CGImage")}];
  v7 = [objc_alloc(MEMORY[0x1E6978038]) initWithImage:v5 options:v6];

  return v7;
}

+ (id)_pdfPageOptionsForImageRef:(CGImage *)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  CGImageGetSizeAfterOrientation();
  v5 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v3, v4}];
  v6 = *MEMORY[0x1E6978120];
  v9[0] = *MEMORY[0x1E6978118];
  v9[1] = v6;
  v10[0] = v5;
  v10[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (void)convertToPDFAndWrite:(void *)a1 documentName:(uint64_t)a2 completionHandler:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1A3640000, a3, OS_LOG_TYPE_ERROR, "Failed to remove item (at path %{public}@) prior to storing scanned PDF with error: %{public}@", &v6, 0x16u);
}

+ (void)convertToPDFAndWrite:(uint64_t)a1 documentName:(NSObject *)a2 completionHandler:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "Failed to create directory for scanned PDF with error: %{public}@", &v2, 0xCu);
}

@end