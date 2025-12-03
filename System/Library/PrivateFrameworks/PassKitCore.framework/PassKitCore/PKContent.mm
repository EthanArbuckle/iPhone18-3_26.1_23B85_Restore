@interface PKContent
+ (id)createWithFileURL:(id)l dataTypeIdentifier:(id)identifier;
- (PKBarcode)barcode;
- (PKContent)initWithCoder:(id)coder;
- (PKContent)initWithDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKContent

- (PKBarcode)barcode
{
  barcodes = [(PKContent *)self barcodes];
  firstObject = [barcodes firstObject];

  return firstObject;
}

+ (id)createWithFileURL:(id)l dataTypeIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    identifierCopy = PKDataTypeIdentifier(lCopy);
  }

  v7 = PKObjectDictionary(lCopy);
  v8 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
  v9 = MEMORY[0x1E696AAE8];
  v11 = PKPassPrivateDirectoryURLWithPassURL(lCopy, v10);
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
        v22 = lCopy;
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
    v22 = lCopy;
    v19 = "Failed to load bundle from %{public}@";
LABEL_25:
    _os_log_error_impl(&dword_1AD337000, v17, OS_LOG_TYPE_ERROR, v19, &v21, 0xCu);
    goto LABEL_21;
  }

  if (![identifierCopy isEqual:@"com.apple.pkpass"])
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543618;
      v22 = identifierCopy;
      v23 = 2114;
      v24 = lCopy;
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
    v22 = lCopy;
    v19 = "Failed to instantiate content, content class unavailable for object at %{public}@";
    goto LABEL_25;
  }

  v16 = [[v15 alloc] initWithDictionary:v7 bundle:v8 privateBundle:v12 passType:v14 == 1];
LABEL_23:

  return v16;
}

- (PKContent)initWithDictionary:(id)dictionary bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  privateBundleCopy = privateBundle;
  v25.receiver = self;
  v25.super_class = PKContent;
  v12 = [(PKContent *)&v25 init];
  if (v12)
  {
    v13 = [dictionaryCopy PKStringForKey:@"description"];
    v14 = PKLocalizedPassStringForPassBundle(v13, bundleCopy, privateBundleCopy);
    [(PKContent *)v12 setLocalizedDescription:v14];

    v15 = [dictionaryCopy objectForKey:@"associatedStoreIdentifiers"];
    [(PKContent *)v12 setStoreIdentifiers:v15];

    v16 = [dictionaryCopy objectForKey:@"associatedStoreIdentifiers"];
    [(PKContent *)v12 setStoreIdentifiers:v16];

    v17 = [dictionaryCopy objectForKey:@"auxiliaryStoreIdentifiers"];
    [(PKContent *)v12 setAuxiliaryStoreIdentifiers:v17];

    v18 = [dictionaryCopy objectForKey:@"systemAppBundleIdentifiers"];
    [(PKContent *)v12 setSystemAppBundleIdentifiers:v18];

    v19 = MEMORY[0x1E695DFF8];
    v20 = [dictionaryCopy PKStringForKey:@"appLaunchURL"];
    v21 = [v19 URLWithString:v20];
    [(PKContent *)v12 setAppLaunchURL:v21];

    v22 = [PKBarcode barcodesWithPassDictionary:dictionaryCopy bundle:bundleCopy];
    barcodes = v12->_barcodes;
    v12->_barcodes = v22;
  }

  return v12;
}

- (PKContent)initWithCoder:(id)coder
{
  v33[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v32.receiver = self;
  v32.super_class = PKContent;
  v6 = [(PKContent *)&v32 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"barcodes"];
    barcodes = v6->_barcodes;
    v6->_barcodes = v10;

    if (!v6->_barcodes)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcode"];
      v13 = v12;
      if (v12)
      {
        v33[0] = v12;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      }

      v14 = v6->_barcodes;
      v6->_barcodes = v12;
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    localizedDescription = v6->_localizedDescription;
    v6->_localizedDescription = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"storeIDs"];
    storeIdentifiers = v6->_storeIdentifiers;
    v6->_storeIdentifiers = v20;

    v22 = [coderCopy decodeObjectOfClasses:v19 forKey:@"auxiliaryStoreIDs"];
    auxiliaryStoreIdentifiers = v6->_auxiliaryStoreIdentifiers;
    v6->_auxiliaryStoreIdentifiers = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"systemAppBundleIdentifiers"];
    systemAppBundleIdentifiers = v6->_systemAppBundleIdentifiers;
    v6->_systemAppBundleIdentifiers = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appLaunchURL"];
    appLaunchURL = v6->_appLaunchURL;
    v6->_appLaunchURL = v29;
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  barcodes = self->_barcodes;
  coderCopy = coder;
  [coderCopy encodeObject:barcodes forKey:@"barcodes"];
  barcode = [(PKContent *)self barcode];
  [coderCopy encodeObject:barcode forKey:@"barcode"];

  [coderCopy encodeObject:self->_storeIdentifiers forKey:@"storeIDs"];
  [coderCopy encodeObject:self->_auxiliaryStoreIdentifiers forKey:@"auxiliaryStoreIDs"];
  [coderCopy encodeObject:self->_systemAppBundleIdentifiers forKey:@"systemAppBundleIdentifiers"];
  [coderCopy encodeObject:self->_appLaunchURL forKey:@"appLaunchURL"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"description"];
}

@end