@interface PKContent
+ (id)createWithFileURL:(id)a3 dataTypeIdentifier:(id)a4;
- (PKBarcode)barcode;
- (PKContent)initWithCoder:(id)a3;
- (PKContent)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKContent

- (PKBarcode)barcode
{
  v2 = [(PKContent *)self barcodes];
  v3 = [v2 firstObject];

  return v3;
}

+ (id)createWithFileURL:(id)a3 dataTypeIdentifier:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = PKDataTypeIdentifier(v5);
  }

  v7 = PKObjectDictionary(v5);
  v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v5];
  v9 = MEMORY[0x1E696AAE8];
  v11 = PKPassPrivateDirectoryURLWithPassURL(v5, v10);
  v12 = [v9 bundleWithURL:v11];

  if (!v7 || !v8)
  {
    if (v7)
    {
      if (v8)
      {
LABEL_22:
        v16 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = 138543362;
        v22 = v5;
        _os_log_error_impl(&dword_1AD337000, v18, OS_LOG_TYPE_ERROR, "Failed to load object dictionary from %{public}@", &v21, 0xCu);
      }

      if (v8)
      {
        goto LABEL_22;
      }
    }

    v17 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

      goto LABEL_22;
    }

    v21 = 138543362;
    v22 = v5;
    v19 = "Failed to load bundle from %{public}@";
LABEL_25:
    _os_log_error_impl(&dword_1AD337000, v17, OS_LOG_TYPE_ERROR, v19, &v21, 0xCu);
    goto LABEL_21;
  }

  if (![v6 isEqual:@"com.apple.pkpass"])
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v5;
      _os_log_error_impl(&dword_1AD337000, v17, OS_LOG_TYPE_ERROR, "Unexpected data type identifier '%{public}@' from %{public}@", &v21, 0x16u);
    }

    goto LABEL_20;
  }

  v13 = [v7 PKStringForKey:@"passTypeIdentifier"];
  v14 = PKPassTypeForPassTypeIdentifier(v13);
  v15 = objc_opt_class();

  if (!v15)
  {
    v17 = PKLogFacilityTypeGetObject(0);
LABEL_20:
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v21 = 138543362;
    v22 = v5;
    v19 = "Failed to instantiate content, content class unavailable for object at %{public}@";
    goto LABEL_25;
  }

  v16 = [[v15 alloc] initWithDictionary:v7 bundle:v8 privateBundle:v12 passType:v14 == 1];
LABEL_23:

  return v16;
}

- (PKContent)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = PKContent;
  v12 = [(PKContent *)&v25 init];
  if (v12)
  {
    v13 = [v9 PKStringForKey:@"description"];
    v14 = PKLocalizedPassStringForPassBundle(v13, v10, v11);
    [(PKContent *)v12 setLocalizedDescription:v14];

    v15 = [v9 objectForKey:@"associatedStoreIdentifiers"];
    [(PKContent *)v12 setStoreIdentifiers:v15];

    v16 = [v9 objectForKey:@"associatedStoreIdentifiers"];
    [(PKContent *)v12 setStoreIdentifiers:v16];

    v17 = [v9 objectForKey:@"auxiliaryStoreIdentifiers"];
    [(PKContent *)v12 setAuxiliaryStoreIdentifiers:v17];

    v18 = [v9 objectForKey:@"systemAppBundleIdentifiers"];
    [(PKContent *)v12 setSystemAppBundleIdentifiers:v18];

    v19 = MEMORY[0x1E695DFF8];
    v20 = [v9 PKStringForKey:@"appLaunchURL"];
    v21 = [v19 URLWithString:v20];
    [(PKContent *)v12 setAppLaunchURL:v21];

    v22 = [PKBarcode barcodesWithPassDictionary:v9 bundle:v10];
    barcodes = v12->_barcodes;
    v12->_barcodes = v22;
  }

  return v12;
}

- (PKContent)initWithCoder:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v32.receiver = self;
  v32.super_class = PKContent;
  v6 = [(PKContent *)&v32 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"barcodes"];
    barcodes = v6->_barcodes;
    v6->_barcodes = v10;

    if (!v6->_barcodes)
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcode"];
      v13 = v12;
      if (v12)
      {
        v33[0] = v12;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      }

      v14 = v6->_barcodes;
      v6->_barcodes = v12;
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    localizedDescription = v6->_localizedDescription;
    v6->_localizedDescription = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"storeIDs"];
    storeIdentifiers = v6->_storeIdentifiers;
    v6->_storeIdentifiers = v20;

    v22 = [v4 decodeObjectOfClasses:v19 forKey:@"auxiliaryStoreIDs"];
    auxiliaryStoreIdentifiers = v6->_auxiliaryStoreIdentifiers;
    v6->_auxiliaryStoreIdentifiers = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"systemAppBundleIdentifiers"];
    systemAppBundleIdentifiers = v6->_systemAppBundleIdentifiers;
    v6->_systemAppBundleIdentifiers = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v6->_appLaunchURL;
    v6->_appLaunchURL = v29;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  barcodes = self->_barcodes;
  v6 = a3;
  [v6 encodeObject:barcodes forKey:@"barcodes"];
  v5 = [(PKContent *)self barcode];
  [v6 encodeObject:v5 forKey:@"barcode"];

  [v6 encodeObject:self->_storeIdentifiers forKey:@"storeIDs"];
  [v6 encodeObject:self->_auxiliaryStoreIdentifiers forKey:@"auxiliaryStoreIDs"];
  [v6 encodeObject:self->_systemAppBundleIdentifiers forKey:@"systemAppBundleIdentifiers"];
  [v6 encodeObject:self->_appLaunchURL forKey:@"appLaunchURL"];
  [v6 encodeObject:self->_localizedDescription forKey:@"description"];
}

@end