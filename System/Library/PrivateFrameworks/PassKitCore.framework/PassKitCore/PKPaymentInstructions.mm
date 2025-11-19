@interface PKPaymentInstructions
- (BOOL)archiveToDirectoryAtURL:(id)a3 error:(id *)a4;
- (CGDataProvider)_createImageDataProviderForImageKey:(id)a3;
- (CGImage)imageForKey:(id)a3;
- (NSArray)allImageKeys;
- (PKPaymentInstructions)initWithDictionary:(id)a3;
- (id)_imageDataForImageWithKey:(id)a3 format:(id *)a4;
- (id)description;
- (void)_pruneDirectoryAtURL:(id)a3;
@end

@implementation PKPaymentInstructions

- (PKPaymentInstructions)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"version"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKey:@"instructions"];
  v8 = [v7 pk_decodeHexadecimal];

  v9 = [v4 objectForKey:@"signature"];
  v10 = [v9 pk_decodeHexadecimal];

  v11 = [v4 objectForKey:@"fortifiedInstructions"];
  v12 = [v11 pk_decodeHexadecimal];

  v13 = [v4 objectForKey:@"fortifiedSignature"];

  v14 = [v13 pk_decodeHexadecimal];

  v15 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:0];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass() & (v8 != 0);
  if (!v10)
  {
    v16 = 0;
  }

  if (v16 != 1 || v6 != 2)
  {
    if (!v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    self->_version = v6;
    objc_storeStrong(&self->_instructionsDictionary, v15);
    objc_storeStrong(&self->_instructionsData, v8);
    objc_storeStrong(&self->_signatureData, v10);
    objc_storeStrong(&self->_fortifiedInstructionsData, v12);
    objc_storeStrong(&self->_fortifiedSignatureData, v14);
    goto LABEL_10;
  }

  if (v12 && v14)
  {
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p version: %d; instructions: %tu bytes; signature: %tu bytes; ", v5, self, self->_version, -[NSData length](self->_instructionsData, "length"), -[NSData length](self->_signatureData, "length")];;

  if (self->_version == 2)
  {
    [v6 appendFormat:@"fortifiedInstructions: %tu bytes; fortifiedSignature: %tu bytes; ", -[NSData length](self->_fortifiedInstructionsData, "length"), -[NSData length](self->_fortifiedSignatureData, "length")];
  }

  v7 = [(PKPaymentInstructions *)self allImageKeys];
  [v6 appendFormat:@"%tu images: { ", objc_msgSend(v7, "count")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [(PKPaymentInstructions *)self _imageDataForImageWithKey:v13 format:0];
        [v6 appendFormat:@"%@: %tu bytes, ", v13, objc_msgSend(v14, "length")];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v6 appendString:@"}; >"];
  v15 = [v6 copy];

  return v15;
}

- (NSArray)allImageKeys
{
  v2 = [(NSDictionary *)self->_instructionsDictionary objectForKey:@"images"];
  v3 = [v2 allKeys];

  return v3;
}

- (CGImage)imageForKey:(id)a3
{
  result = [(PKPaymentInstructions *)self _createImageDataProviderForImageKey:a3];
  if (result)
  {
    v4 = result;
    v5 = CGImageCreateWithPNGDataProvider(result, 0, 0, kCGRenderingIntentDefault);
    CFRelease(v4);
    return v5;
  }

  return result;
}

- (BOOL)archiveToDirectoryAtURL:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = [v7 stringWithFormat:@"DFR_%ld", llround(v9)];
  v11 = [v6 URLByAppendingPathComponent:v10];

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v59 = 0;
    v17 = [v16 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v59];
    v15 = v59;

    if (!v17)
    {
      v43 = 0;
      if (!a4)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v58 = v15;
  v18 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v11 options:1 error:&v58];
  v19 = v58;

  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKPaymentInstructions version](self, "version")}];
    [v20 setObject:v21 forKeyedSubscript:@"version"];

    v22 = [(PKPaymentInstructions *)self instructionsData];
    [v20 setObject:v22 forKeyedSubscript:@"instructions"];

    v23 = [(PKPaymentInstructions *)self signatureData];
    [v20 setObject:v23 forKeyedSubscript:@"signature"];

    v24 = [(PKPaymentInstructions *)self fortifiedInstructionsData];
    [v20 setObject:v24 forKeyedSubscript:@"fortifiedInstructions"];

    v25 = [(PKPaymentInstructions *)self fortifiedSignatureData];
    [v20 setObject:v25 forKeyedSubscript:@"fortifiedSignature"];

    v57 = 0;
    v26 = [MEMORY[0x1E696AE40] dataWithPropertyList:v20 format:100 options:0 error:&v57];
    v27 = v57;

    if (v26)
    {
      v46 = v26;
      v47 = v20;
      v48 = v11;
      v49 = a4;
      v50 = v6;
      v28 = [v18 addRegularFileWithContents:v26 preferredFilename:@"Instructions.plist"];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v29 = [(PKPaymentInstructions *)self allImageKeys];
      v30 = [v29 countByEnumeratingWithState:&v53 objects:v64 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v54;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v54 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v53 + 1) + 8 * i);
            v52 = 0;
            v35 = [(PKPaymentInstructions *)self _imageDataForImageWithKey:v34 format:&v52];
            v36 = v52;
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, v36];
            v38 = [v18 addRegularFileWithContents:v35 preferredFilename:v37];
          }

          v31 = [v29 countByEnumeratingWithState:&v53 objects:v64 count:16];
        }

        while (v31);
      }

      v51 = v27;
      v11 = v48;
      v39 = [v18 writeToURL:v48 options:1 originalContentsURL:0 error:&v51];
      v19 = v51;

      if (v39)
      {
        v40 = PKLogFacilityTypeGetObject(8uLL);
        a4 = v49;
        v6 = v50;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543618;
          v61 = v42;
          v62 = 2112;
          v63 = v48;
          _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Archived latest %{public}@ at %@", buf, 0x16u);
        }

        v43 = 1;
      }

      else
      {
        v43 = 0;
        a4 = v49;
        v6 = v50;
      }

      v26 = v46;
      v20 = v47;
    }

    else
    {
      v43 = 0;
      v19 = v27;
    }

    [(PKPaymentInstructions *)self _pruneDirectoryAtURL:v6];
  }

  else
  {
    v43 = 0;
  }

  v15 = v19;
  if (a4)
  {
LABEL_25:
    v44 = v15;
    *a4 = v15;
  }

LABEL_26:

  return v43;
}

- (void)_pruneDirectoryAtURL:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:0];

  v7 = [v6 count];
  if (v7 >= 0xB)
  {
    v8 = v7;
    v18 = v6;
    v9 = [v6 sortedArrayUsingSelector:sel_compare_];
    v10 = 0;
    v11 = v8 - 10;
    do
    {
      v12 = [v9 objectAtIndex:v10];
      v13 = [v3 URLByAppendingPathComponent:v12];
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      [v14 removeItemAtURL:v13 error:0];

      v15 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Deleted excess %{public}@ at %@", buf, 0x16u);
      }

      ++v10;
    }

    while (v11 != v10);

    v6 = v18;
  }
}

- (CGDataProvider)_createImageDataProviderForImageKey:(id)a3
{
  v7 = 0;
  v3 = [(PKPaymentInstructions *)self _imageDataForImageWithKey:a3 format:&v7];
  v4 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v4 caseInsensitiveCompare:@"PNG"])
  {
    v5 = CGDataProviderCreateWithCFData(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_imageDataForImageWithKey:(id)a3 format:(id *)a4
{
  instructionsDictionary = self->_instructionsDictionary;
  v6 = a3;
  v7 = [(NSDictionary *)instructionsDictionary objectForKey:@"images"];
  v8 = [v7 objectForKey:v6];

  if (a4)
  {
    *a4 = [v8 objectForKey:@"format"];
  }

  v9 = [v8 objectForKey:@"content"];

  return v9;
}

@end