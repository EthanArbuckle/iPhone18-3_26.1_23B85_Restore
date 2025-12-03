@interface PKPaymentInstructions
- (BOOL)archiveToDirectoryAtURL:(id)l error:(id *)error;
- (CGDataProvider)_createImageDataProviderForImageKey:(id)key;
- (CGImage)imageForKey:(id)key;
- (NSArray)allImageKeys;
- (PKPaymentInstructions)initWithDictionary:(id)dictionary;
- (id)_imageDataForImageWithKey:(id)key format:(id *)format;
- (id)description;
- (void)_pruneDirectoryAtURL:(id)l;
@end

@implementation PKPaymentInstructions

- (PKPaymentInstructions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"version"];
  integerValue = [v5 integerValue];

  v7 = [dictionaryCopy objectForKey:@"instructions"];
  pk_decodeHexadecimal = [v7 pk_decodeHexadecimal];

  v9 = [dictionaryCopy objectForKey:@"signature"];
  pk_decodeHexadecimal2 = [v9 pk_decodeHexadecimal];

  v11 = [dictionaryCopy objectForKey:@"fortifiedInstructions"];
  pk_decodeHexadecimal3 = [v11 pk_decodeHexadecimal];

  v13 = [dictionaryCopy objectForKey:@"fortifiedSignature"];

  pk_decodeHexadecimal4 = [v13 pk_decodeHexadecimal];

  v15 = [MEMORY[0x1E696AE40] propertyListWithData:pk_decodeHexadecimal options:0 format:0 error:0];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass() & (pk_decodeHexadecimal != 0);
  if (!pk_decodeHexadecimal2)
  {
    v16 = 0;
  }

  if (v16 != 1 || integerValue != 2)
  {
    if (!v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    self->_version = integerValue;
    objc_storeStrong(&self->_instructionsDictionary, v15);
    objc_storeStrong(&self->_instructionsData, pk_decodeHexadecimal);
    objc_storeStrong(&self->_signatureData, pk_decodeHexadecimal2);
    objc_storeStrong(&self->_fortifiedInstructionsData, pk_decodeHexadecimal3);
    objc_storeStrong(&self->_fortifiedSignatureData, pk_decodeHexadecimal4);
    goto LABEL_10;
  }

  if (pk_decodeHexadecimal3 && pk_decodeHexadecimal4)
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

  allImageKeys = [(PKPaymentInstructions *)self allImageKeys];
  [v6 appendFormat:@"%tu images: { ", objc_msgSend(allImageKeys, "count")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = allImageKeys;
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
  allKeys = [v2 allKeys];

  return allKeys;
}

- (CGImage)imageForKey:(id)key
{
  result = [(PKPaymentInstructions *)self _createImageDataProviderForImageKey:key];
  if (result)
  {
    v4 = result;
    v5 = CGImageCreateWithPNGDataProvider(result, 0, 0, kCGRenderingIntentDefault);
    CFRelease(v4);
    return v5;
  }

  return result;
}

- (BOOL)archiveToDirectoryAtURL:(id)l error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = MEMORY[0x1E696AEC0];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v10 = [v7 stringWithFormat:@"DFR_%ld", llround(v9)];
  v11 = [lCopy URLByAppendingPathComponent:v10];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v11 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v59 = 0;
    v17 = [defaultManager2 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v59];
    v15 = v59;

    if (!v17)
    {
      v43 = 0;
      if (!error)
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

    instructionsData = [(PKPaymentInstructions *)self instructionsData];
    [v20 setObject:instructionsData forKeyedSubscript:@"instructions"];

    signatureData = [(PKPaymentInstructions *)self signatureData];
    [v20 setObject:signatureData forKeyedSubscript:@"signature"];

    fortifiedInstructionsData = [(PKPaymentInstructions *)self fortifiedInstructionsData];
    [v20 setObject:fortifiedInstructionsData forKeyedSubscript:@"fortifiedInstructions"];

    fortifiedSignatureData = [(PKPaymentInstructions *)self fortifiedSignatureData];
    [v20 setObject:fortifiedSignatureData forKeyedSubscript:@"fortifiedSignature"];

    v57 = 0;
    v26 = [MEMORY[0x1E696AE40] dataWithPropertyList:v20 format:100 options:0 error:&v57];
    v27 = v57;

    if (v26)
    {
      v46 = v26;
      v47 = v20;
      v48 = v11;
      errorCopy = error;
      v50 = lCopy;
      v28 = [v18 addRegularFileWithContents:v26 preferredFilename:@"Instructions.plist"];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      allImageKeys = [(PKPaymentInstructions *)self allImageKeys];
      v30 = [allImageKeys countByEnumeratingWithState:&v53 objects:v64 count:16];
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
              objc_enumerationMutation(allImageKeys);
            }

            v34 = *(*(&v53 + 1) + 8 * i);
            v52 = 0;
            v35 = [(PKPaymentInstructions *)self _imageDataForImageWithKey:v34 format:&v52];
            v36 = v52;
            v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, v36];
            v38 = [v18 addRegularFileWithContents:v35 preferredFilename:v37];
          }

          v31 = [allImageKeys countByEnumeratingWithState:&v53 objects:v64 count:16];
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
        error = errorCopy;
        lCopy = v50;
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
        error = errorCopy;
        lCopy = v50;
      }

      v26 = v46;
      v20 = v47;
    }

    else
    {
      v43 = 0;
      v19 = v27;
    }

    [(PKPaymentInstructions *)self _pruneDirectoryAtURL:lCopy];
  }

  else
  {
    v43 = 0;
  }

  v15 = v19;
  if (error)
  {
LABEL_25:
    v44 = v15;
    *error = v15;
  }

LABEL_26:

  return v43;
}

- (void)_pruneDirectoryAtURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager contentsOfDirectoryAtPath:path error:0];

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
      v13 = [lCopy URLByAppendingPathComponent:v12];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v13 error:0];

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

- (CGDataProvider)_createImageDataProviderForImageKey:(id)key
{
  v7 = 0;
  v3 = [(PKPaymentInstructions *)self _imageDataForImageWithKey:key format:&v7];
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

- (id)_imageDataForImageWithKey:(id)key format:(id *)format
{
  instructionsDictionary = self->_instructionsDictionary;
  keyCopy = key;
  v7 = [(NSDictionary *)instructionsDictionary objectForKey:@"images"];
  v8 = [v7 objectForKey:keyCopy];

  if (format)
  {
    *format = [v8 objectForKey:@"format"];
  }

  v9 = [v8 objectForKey:@"content"];

  return v9;
}

@end