@interface PKPassUpcomingPassInformationImageManifestItem
+ (id)createFromDictionary:(id)a3;
- (BOOL)composeFromDictionary:(id)a3;
- (PKPassUpcomingPassInformationImageManifestItem)initWithCoder:(id)a3;
- (id)_createValidatedImageFromData:(id)a3 error:(id *)a4;
- (id)_initWithURL:(id)a3;
- (id)sessionCachedImageIfExists;
- (void)downloadImageWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationImageManifestItem

+ (id)createFromDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 PKStringForKey:@"URL"];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 scheme];
      if (v8 == @"https")
      {
        goto LABEL_6;
      }

      v9 = v8;
      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(__CFString *)v8 isEqualToString:@"https"];

      if (v10)
      {
LABEL_6:
        v11 = [[PKPassUpcomingPassInformationImageManifestItem alloc] _initWithURL:v7];
        v12 = v11;
        if (v11 && [v11 composeFromDictionary:v4])
        {
          v9 = v12;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_13;
      }
    }

    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (id)_initWithURL:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKPassUpcomingPassInformationImageManifestItem;
    v6 = [(PKPassUpcomingPassInformationImageManifestItem *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_URL, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)composeFromDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 PKStringForKey:@"SHA256"];
  if (!v5)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      v22 = "[PKPassUpcomingPassInformationImageManifestItem] Manifest item is missing sha256 value";
LABEL_19:
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, v22, &v26, 2u);
    }

LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  v6 = [MEMORY[0x1E695DEF0] dataWithHexEncodedString:v5];
  SHA256 = self->_SHA256;
  self->_SHA256 = v6;

  if (!self->_SHA256)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      v22 = "[PKPassUpcomingPassInformationImageManifestItem] Unable to decode sha256 value";
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v8 = [v4 PKNumberForKey:@"size"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 unsignedIntegerValue];
    if (v10 > 0x200000)
    {
      v24 = v10;
      v18 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218240;
        v27 = v24 * 0.000000953674316;
        v28 = 2048;
        v29 = 0x4000000000000000;
        v19 = "[PKPassUpcomingPassInformationImageManifestItem] Size (%g megabytes) is larger than the allowed limit of %g megabytes";
        v20 = v18;
        v21 = 22;
        goto LABEL_22;
      }

LABEL_23:

      goto LABEL_24;
    }

    objc_storeStrong(&self->_size, v9);
  }

  v11 = [v4 PKNumberForKey:@"scale"];
  v12 = v11;
  v13 = &unk_1F23B6EA0;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  [v14 doubleValue];
  v16 = v15;

  if (v16 > 3.0 || v16 < 1.0)
  {
    v18 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134217984;
      v27 = v16;
      v19 = "[PKPassUpcomingPassInformationImageManifestItem] Unrecognized scale (%f)";
      v20 = v18;
      v21 = 12;
LABEL_22:
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, v19, &v26, v21);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  self->_scale = v16;
  v23 = 1;
LABEL_25:

  return v23;
}

- (PKPassUpcomingPassInformationImageManifestItem)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPassUpcomingPassInformationImageManifestItem;
  v5 = [(PKPassUpcomingPassInformationImageManifestItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHA256"];
    SHA256 = v5->_SHA256;
    v5->_SHA256 = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v10;

    [v4 decodeDoubleForKey:@"scale"];
    v5->_scale = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  URL = self->_URL;
  v5 = a3;
  [v5 encodeObject:URL forKey:@"URL"];
  [v5 encodeObject:self->_SHA256 forKey:@"SHA256"];
  [v5 encodeObject:self->_size forKey:@"size"];
  [v5 encodeDouble:@"scale" forKey:self->_scale];
}

- (id)sessionCachedImageIfExists
{
  v3 = +[PKObjectDownloader sharedImageAssetDownloader];
  v4 = [v3 cachedDataForURL:self->_URL];

  if (v4)
  {
    v5 = [(PKPassUpcomingPassInformationImageManifestItem *)self _createValidatedImageFromData:v4 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)downloadImageWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPassUpcomingPassInformationImageManifestItem *)self sessionCachedImageIfExists];
    if (v5)
    {
      v4[2](v4, v5, 0);
    }

    else
    {
      v6 = +[PKObjectDownloader sharedImageAssetDownloader];
      URL = self->_URL;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __78__PKPassUpcomingPassInformationImageManifestItem_downloadImageWithCompletion___block_invoke;
      v8[3] = &unk_1E79CDA40;
      v8[4] = self;
      v9 = v4;
      [v6 downloadFromUrl:URL completionHandler:v8];
    }
  }
}

void __78__PKPassUpcomingPassInformationImageManifestItem_downloadImageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v39 = 0;
  if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [v8 statusCode];
    v10 = [v9 localizedDescription];
    v12 = [v8 URL];
    v13 = [v12 absoluteString];
    PKValidationErrorWithReason(@"Couldn't download remote asset. HTTP Status: %ld, Error: %@ URL: %@", v14, v15, v16, v17, v18, v19, v20, v11);
  }

  else
  {
    v10 = v8;
    if ([v10 statusCode] == 200)
    {
      if (v7)
      {

LABEL_9:
        v22 = [*(a1 + 32) _createValidatedImageFromData:v7 error:&v39];
        (*(*(a1 + 40) + 16))();

        v21 = v39;
        goto LABEL_10;
      }

      v31 = [v10 statusCode];
      v12 = [v10 URL];
      v13 = [v12 absoluteString];
      PKValidationErrorWithReason(@"Empty data received. HTTP Status: %ld URL: %@", v32, v33, v34, v35, v36, v37, v38, v31);
    }

    else
    {
      v23 = [v10 statusCode];
      v12 = [v10 URL];
      v13 = [v12 absoluteString];
      PKValidationErrorWithReason(@"Couldn't download remote asset. HTTP Status: %ld URL: %@", v24, v25, v26, v27, v28, v29, v30, v23);
    }
  }
  v21 = ;
  v39 = v21;

  if (!v21)
  {
    goto LABEL_9;
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

- (id)_createValidatedImageFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PKPassUpcomingPassInformationImageManifestItem__createValidatedImageFromData_error___block_invoke;
  aBlock[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
  aBlock[4] = a4;
  v7 = _Block_copy(aBlock);
  v15 = [v6 length];
  size = self->_size;
  if (size)
  {
    if ([(NSNumber *)size unsignedIntegerValue]!= v15)
    {
      PKValidationErrorWithReason(@"Size Invalid: Downloaded size (%lu) from %@ doesn't match image's listed size (%lu).", v17, v18, v19, v20, v21, v22, v23, v15);
      v24 = LABEL_6:;
      goto LABEL_8;
    }
  }

  else if (v15 > 0x200000)
  {
    PKValidationErrorWithReason(@"Size Invalid: Downloaded size (%g megabytes) is larger than the allowed limit of %g megabytes", v8, v9, v10, v11, v12, v13, v14, COERCE__INT64(vcvtd_n_f64_u64(v15, 0x14uLL)));
    goto LABEL_6;
  }

  v24 = 0;
LABEL_8:
  if (!v7[2](v7, v24))
  {
    v51 = 0;
    goto LABEL_29;
  }

  v25 = [v6 SHA256Hash];
  if (![(NSData *)self->_SHA256 isEqualToData:v25])
  {
    v33 = PKValidationErrorWithReason(@"SHA256 Hash Mismatch: Computed hash (%@) for image from %@ doesn't match listed SHA256 hash (%@).", v26, v27, v28, v29, v30, v31, v32, self->_SHA256);

    v24 = v33;
  }

  if (v7[2](v7, v24))
  {
    if (qword_1ED6D20C8 != -1)
    {
      dispatch_once(&qword_1ED6D20C8, &__block_literal_global_200);
    }

    v41 = CGImageSourceCreateWithData(v6, _MergedGlobals_268);
    if (!v41)
    {
      v42 = PKValidationErrorWithReason(@"File Invalid: Image from %@ is not a png.", v34, v35, v36, v37, v38, v39, v40, self->_URL);

      v24 = v42;
    }

    if (v7[2](v7, v24))
    {
      if (CGImageSourceGetCount(v41))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v41, 0, 0);
        CFRelease(v41);
        if (ImageAtIndex)
        {
LABEL_24:
          if (v7[2](v7, v24))
          {
            v51 = [[PKImage alloc] initWithCGImage:ImageAtIndex scale:1 orientation:self->_scale];
          }

          else
          {
            v51 = 0;
          }

          CGImageRelease(ImageAtIndex);
          goto LABEL_28;
        }
      }

      else
      {
        CFRelease(v41);
      }

      v52 = PKValidationErrorWithReason(@"File Invalid: Image from %@ is not a png.", v44, v45, v46, v47, v48, v49, v50, self->_URL);

      ImageAtIndex = 0;
      v24 = v52;
      goto LABEL_24;
    }
  }

  v51 = 0;
LABEL_28:

LABEL_29:

  return v51;
}

BOOL __86__PKPassUpcomingPassInformationImageManifestItem__createValidatedImageFromData_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_storeStrong(v5, a2);
    }
  }

  return v4 == 0;
}

@end