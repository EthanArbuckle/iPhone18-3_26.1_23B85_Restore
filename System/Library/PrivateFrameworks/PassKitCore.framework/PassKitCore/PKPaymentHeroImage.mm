@interface PKPaymentHeroImage
- (BOOL)hasCachedImageWithScale:(double)a3;
- (BOOL)isSupportedByDevice:(id)a3;
- (PKPaymentHeroImage)imageWithScale:(double)a3;
- (PKPaymentHeroImage)initWithDictionary:(id)a3;
- (PKPaymentHeroImage)initWithIdentifier:(id)a3 imageData:(id)a4 credentialType:(int64_t)a5;
- (PKPaymentHeroImage)initWithLegacyDictionary:(id)a3 identifier:(id)a4;
- (id)URLForImageWithScale:(double)a3;
- (id)imageFilePathForImageModel:(id)a3;
- (id)imageFilePathOnDiskForPreferredLanguages:(id)a3 scale:(double)a4;
- (id)imageForPreferredLanguages:(id)a3 scale:(double)a4;
- (void)downloadImageForPreferredLanguages:(id)a3 scale:(double)a4 fileDownloader:(id)a5 completion:(id)a6;
- (void)downloadImageWithScale:(double)a3 fileDownloader:(id)a4 completion:(id)a5;
@end

@implementation PKPaymentHeroImage

- (PKPaymentHeroImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentHeroImage *)self init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 PKStringForKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  if (!v5->_identifier)
  {
    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v21 = "Invalid hero image identifier";
      v22 = &v25;
LABEL_9:
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
    }

LABEL_10:

LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v8 = [PKOSVersionRequirementRange alloc];
  v9 = [v4 PKDictionaryForKey:@"deviceVersionRequirement"];
  v10 = [(PKOSVersionRequirementRange *)v8 initWithDictionary:v9];
  versionRequirement = v5->_versionRequirement;
  v5->_versionRequirement = v10;

  v12 = [v4 PKArrayContaining:objc_opt_class() forKey:@"requiredDeviceFeatures"];
  requiredDeviceFeatures = v5->_requiredDeviceFeatures;
  v5->_requiredDeviceFeatures = v12;

  v5->_credentialType = [v4 PKIntegerForKey:@"credentialType"];
  v14 = [v4 PKStringForKey:@"cardType"];
  v5->_cardType = PKWebServicesPaymentCardTypeFromString(v14);

  v5->_isBeta = [v4 PKIntegerForKey:@"isBeta"] > 0;
  v15 = [PKPaymentHeroImageSet alloc];
  v16 = [v4 PKDictionaryForKey:@"images"];
  v17 = [(PKPaymentHeroImageSet *)v15 initWithDictionary:v16];
  images = v5->_images;
  v5->_images = v17;

  if (!v5->_images)
  {
    v20 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v21 = "Invalid hero image list";
      v22 = &v24;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v19 = v5;
LABEL_12:

  return v19;
}

- (PKPaymentHeroImage)initWithLegacyDictionary:(id)a3 identifier:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentHeroImage *)self init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v10 = [v9 numberFromString:v7];
    v11 = [v10 integerValue];

    v12 = PKPaymentNetworkNameForPaymentCredentialType(v11);
    identifier = v8->_identifier;
    v8->_identifier = v12;

    v8->_credentialType = v11;
    if (v11)
    {
      v14 = [[PKPaymentHeroImageSet alloc] initWithDictionary:v6];
      images = v8->_images;
      v8->_images = v14;

      if (v8->_images)
      {
        v16 = [v6 PKDictionaryForKey:@"requirements"];
        v17 = [v16 PKArrayContaining:objc_opt_class() forKey:@"hardware"];

        if ([v17 containsObject:@"typef"])
        {
          v25[0] = @"type_f";
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
          requiredDeviceFeatures = v8->_requiredDeviceFeatures;
          v8->_requiredDeviceFeatures = v18;
        }

        goto LABEL_7;
      }

      v21 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        v22 = "Invalid hero image list";
        goto LABEL_12;
      }
    }

    else
    {
      v21 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        v22 = "Invalid hero image identifier";
LABEL_12:
        _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, v22, v24, 2u);
      }
    }

    v20 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v20 = v8;
LABEL_14:

  return v20;
}

- (PKPaymentHeroImage)initWithIdentifier:(id)a3 imageData:(id)a4 credentialType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(PKPaymentHeroImage *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_imageData, a4);
    v12->_credentialType = a5;
  }

  return v12;
}

- (BOOL)hasCachedImageWithScale:(double)a3
{
  if (self->_imageData)
  {
    return 1;
  }

  v6 = [MEMORY[0x1E695DF58] preferredLanguages];
  v7 = [(PKPaymentHeroImage *)self imageFilePathOnDiskForPreferredLanguages:v6 scale:a3];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  return v10;
}

- (PKPaymentHeroImage)imageWithScale:(double)a3
{
  v5 = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [(PKPaymentHeroImage *)self imageForPreferredLanguages:v5 scale:a3];

  return v6;
}

- (id)URLForImageWithScale:(double)a3
{
  images = self->_images;
  v5 = [MEMORY[0x1E695DF58] preferredLanguages];
  v6 = [(PKPaymentHeroImageSet *)images imageForPreferredLanguages:v5 scale:a3];

  v7 = [v6 url];

  return v7;
}

- (id)imageForPreferredLanguages:(id)a3 scale:(double)a4
{
  imageData = self->_imageData;
  if (imageData)
  {
    v5 = imageData;
  }

  else
  {
    v6 = [(PKPaymentHeroImage *)self imageFilePathOnDiskForPreferredLanguages:a3 scale:a4];
    v7 = MEMORY[0x1E695DEF0];
    v8 = [v6 path];
    v5 = [v7 dataWithContentsOfFile:v8];
  }

  return v5;
}

- (void)downloadImageWithScale:(double)a3 fileDownloader:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E695DF58];
  v9 = a5;
  v10 = a4;
  v11 = [v8 preferredLanguages];
  [(PKPaymentHeroImage *)self downloadImageForPreferredLanguages:v11 scale:v10 fileDownloader:v9 completion:a3];
}

- (void)downloadImageForPreferredLanguages:(id)a3 scale:(double)a4 fileDownloader:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (self->_imageData)
  {
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    v14 = [(PKPaymentHeroImageSet *)self->_images imageForPreferredLanguages:v10 scale:a4];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 url];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __89__PKPaymentHeroImage_downloadImageForPreferredLanguages_scale_fileDownloader_completion___block_invoke;
      v18[3] = &unk_1E79CD770;
      v19 = v15;
      v20 = v13;
      [v11 downloadFromUrl:v16 completionHandler:v18];
    }

    else if (v13)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:-1 userInfo:0];
      (v13)[2](v13, v17, 0);
    }
  }
}

void __89__PKPaymentHeroImage_downloadImageForPreferredLanguages_scale_fileDownloader_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) imageSha];
  if (v7)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Downloading hero image %@ failed: %@", &v18, 0x16u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v7, 0);
    }
  }

  else
  {
    v11 = [v6 SHA1Hash];
    v12 = [v11 hexEncoding];

    if ([v12 isEqualToString:v8])
    {
      PKCacheFile(v6, v12);
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Downloaded hero image %@", &v18, 0xCu);
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        (*(v14 + 16))(v14, 0, v6);
      }
    }

    else
    {
      v15 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v8;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Downloaded hero image with conflicting sha %@", &v18, 0xCu);
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
        (*(v16 + 16))(v16, v17, 0);
      }
    }
  }
}

- (id)imageFilePathOnDiskForPreferredLanguages:(id)a3 scale:(double)a4
{
  v5 = [(PKPaymentHeroImageSet *)self->_images imageForPreferredLanguages:a3 scale:a4];
  v6 = [(PKPaymentHeroImage *)self imageFilePathForImageModel:v5];

  return v6;
}

- (id)imageFilePathForImageModel:(id)a3
{
  v3 = a3;
  v4 = [v3 imageSha];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = 0;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__PKPaymentHeroImage_imageFilePathForImageModel___block_invoke;
    v8[3] = &unk_1E79C88C0;
    v8[4] = &v9;
    PKPassAssetDownloadCacheCreateFileURLReadOnly(0, v4, v8);
    v5 = v10[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)isSupportedByDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceClass];
  v6 = [v4 deviceVersion];
  versionRequirement = self->_versionRequirement;
  if (versionRequirement)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 || -[PKOSVersionRequirementRange versionMeetsRequirements:deviceClass:](versionRequirement, "versionMeetsRequirements:deviceClass:", v6, v5)) && (!-[NSArray containsObject:](self->_requiredDeviceFeatures, "containsObject:", @"type_f") || [v4 felicaSecureElementIsAvailable]))
  {
    v9 = [v4 supportsCredentialType:{-[PKPaymentHeroImage credentialType](self, "credentialType")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end