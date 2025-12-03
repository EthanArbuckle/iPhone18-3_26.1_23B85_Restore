@interface ISBundleIcon
- (ISBundleIcon)initWithBundleURL:(id)l type:(id)type tag:(id)tag tagClass:(id)class;
- (ISBundleIcon)initWithCoder:(id)coder;
- (id)_makeAppResourceProvider;
- (id)_makeDocumentResourceProvider;
- (id)description;
- (id)makeResourceProvider;
- (void)_makeAppResourceProvider;
- (void)_makeDocumentResourceProvider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISBundleIcon

- (ISBundleIcon)initWithBundleURL:(id)l type:(id)type tag:(id)tag tagClass:(id)class
{
  v46[2] = *MEMORY[0x1E69E9840];
  obj = l;
  lCopy = l;
  typeCopy = type;
  tagCopy = tag;
  classCopy = class;
  classCopy2 = class;
  absoluteString = [lCopy absoluteString];
  v14 = absoluteString;
  if (typeCopy)
  {
    v15 = [absoluteString stringByAppendingString:{typeCopy, obj, class}];

    v14 = v15;
  }

  if (tagCopy)
  {
    v16 = [v14 stringByAppendingString:tagCopy];

    v14 = v16;
  }

  v44 = typeCopy;
  if (classCopy2)
  {
    v17 = [v14 stringByAppendingString:classCopy2];

    v14 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:lCopy allowPlaceholder:1 error:0];
  if (!v18)
  {
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([bundleRecordForCurrentProcess URL], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", lCopy), v20, v21))
    {
      v18 = bundleRecordForCurrentProcess;
    }

    else
    {
      v18 = 0;
    }
  }

  alternateIconName = [v18 alternateIconName];
  v43 = classCopy2;
  if (alternateIconName)
  {
    v23 = [v14 stringByAppendingString:alternateIconName];

    v14 = v23;
  }

  __is__contentModifiedDate = [lCopy __is__contentModifiedDate];
  v25 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v14];
  v26 = MEMORY[0x1E696AFB0];
  [__is__contentModifiedDate timeIntervalSinceReferenceDate];
  v27 = [v26 _IF_UUIDWithDouble:?];
  v28 = MEMORY[0x1E696AFB0];
  v46[0] = v25;
  v46[1] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v30 = [v28 _IF_UUIDByXORingUUIDs:v29];

  v45.receiver = self;
  v45.super_class = ISBundleIcon;
  v31 = [(ISConcreteIcon *)&v45 initWithDigest:v30];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_url, obja);
    v33 = [tagCopy copy];
    tag = v32->_tag;
    v32->_tag = v33;

    objc_storeStrong(&v32->_tagClass, classCopy);
    v35 = [v44 copy];
    type = v32->_type;
    v32->_type = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v32;
}

- (ISBundleIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ISBundleIcon;
  v5 = [(ISConcreteIcon *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURLString"];
    url = v5->_url;
    v5->_url = v6;
    v8 = v6;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tagClass"];
    tagClass = v5->_tagClass;
    v5->_tagClass = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISBundleIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"bundleURLString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_tag forKey:@"tag"];
  [coderCopy encodeObject:self->_tagClass forKey:@"tagClass"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
}

- (id)_makeDocumentResourceProvider
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6963798];
  if ([(NSURL *)self->_url __is_isApplication])
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    url = self->_url;
    v24 = 0;
    containingBundleRecord = [v4 initWithURL:url allowPlaceholder:1 error:&v24];
    v7 = v24;
    if (containingBundleRecord)
    {
LABEL_16:
      v8 = containingBundleRecord;
      goto LABEL_17;
    }

    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_url;
      *buf = 138412546;
      v27 = v9;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_1A77B8000, v8, OS_LOG_TYPE_DEFAULT, "Application record not found for URL %@ with error: %@", buf, 0x16u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (![(NSURL *)self->_url __is_isAppExtension])
  {
    v12 = _ISDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ISBundleIcon *)&self->_url _makeDocumentResourceProvider];
    }

    v8 = 0;
    v13 = 0;
    goto LABEL_22;
  }

  v10 = objc_alloc(MEMORY[0x1E69635D0]);
  v11 = self->_url;
  v23 = 0;
  v8 = [v10 initWithURL:v11 error:&v23];
  v7 = v23;
  if (!v8)
  {
    v8 = _ISDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_url;
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_1A77B8000, v8, OS_LOG_TYPE_DEFAULT, "ApplicationExtension record not found for URL %@ with error: %@", buf, 0x16u);
    }

    containingBundleRecord = 0;
    goto LABEL_15;
  }

  if (([v8 _is_canProvideIconResources]& 1) == 0)
  {
    containingBundleRecord = [v8 containingBundleRecord];
    goto LABEL_15;
  }

LABEL_17:

  if (!v8)
  {
    goto LABEL_26;
  }

  if (self->_type)
  {
    v15 = [v8 _IS_iconDictionaryForType:?];
  }

  else
  {
    if (!self->_tag || !self->_tagClass)
    {
      goto LABEL_26;
    }

    v15 = [NSObject _IS_iconDictionaryForTag:v8 tagClass:"_IS_iconDictionaryForTag:tagClass:"];
  }

  v12 = v15;
  if (!v15)
  {
LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  v25[0] = 0x1F1A4DBE0;
  v25[1] = 0x1F1A4F2E0;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v17 = [v12 _IF_stringForKeys:v16];

  v13 = [[ISBundleResourceProvider alloc] initWithBundleURL:self->_url iconDictionary:v12 options:v17 != 0];
LABEL_22:

LABEL_27:
  if (![(ISResourceProvider *)v13 options])
  {
    iconResource = [(ISBundleResourceProvider *)v13 iconResource];

    if (!iconResource)
    {
      v19 = _ISDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(ISBundleIcon *)&self->_url _makeDocumentResourceProvider];
      }

      v20 = +[ISResourceProvider defaultAppIconResourceProvider];

      v13 = v20;
    }
  }

  [(ISResourceProvider *)v13 setResourceType:2];

  v21 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_makeAppResourceProvider
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(NSURL *)self->_url __is_isApplication])
  {
    v3 = objc_alloc(MEMORY[0x1E69635F8]);
    url = self->_url;
    v30 = 0;
    v5 = [v3 initWithURL:url allowPlaceholder:1 error:&v30];
    v6 = v30;
    if (!v5)
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_url;
        *buf = 138412546;
        v32 = v16;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEFAULT, "Application record not found for URL %@ with error: %@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    v7 = +[ISDefaults sharedInstance];
    if ([v7 enableAppIconOverides])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_16:
        v17 = v5;
LABEL_17:
        v7 = 0;
        containingBundleRecord = v5;
        goto LABEL_18;
      }

      v7 = v5;
      v9 = +[ISCustomIconManager sharedInstance];
      bundleIdentifier = [v7 bundleIdentifier];
      v11 = [v9 overrideResourceForBundleIdentifier:bundleIdentifier];

      if (v11)
      {
        v12 = [[ISResourceProvider alloc] initWithResource:v11 templateResource:0];

        goto LABEL_36;
      }
    }

    goto LABEL_16;
  }

  if (![(NSURL *)self->_url __is_isAppExtension])
  {
    v7 = 0;
    v6 = 0;
LABEL_21:
    v20 = [MEMORY[0x1E69A8960] bundleWithURL:self->_url];
    if (v20)
    {
      v12 = [[ISBundleResourceProvider alloc] initWithBundle:v20 options:0];
    }

    else
    {
      v21 = _ISDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(ISBundleIcon *)&self->_url _makeAppResourceProvider];
      }

      v12 = 0;
    }

    goto LABEL_27;
  }

  v13 = objc_alloc(MEMORY[0x1E69635D0]);
  v14 = self->_url;
  v29 = 0;
  v5 = [v13 initWithURL:v14 error:&v29];
  v6 = v29;
  if (v5)
  {
    if ([v5 _IS_isMessagesExtension])
    {
      v7 = objc_opt_new();
    }

    else
    {
      v7 = 0;
    }

    if (([v5 _is_canProvideIconResources]& 1) != 0)
    {
      v19 = v6;
      v6 = v5;
      goto LABEL_19;
    }

    containingBundleRecord = [v5 containingBundleRecord];
  }

  else
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_url;
      *buf = 138412546;
      v32 = v28;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_DEFAULT, "ApplicationExtension record not found for URL %@ with error: %@", buf, 0x16u);
    }

    v7 = 0;
    containingBundleRecord = 0;
  }

LABEL_18:

  v19 = v6;
  v6 = containingBundleRecord;
LABEL_19:

  if (!v6)
  {
    goto LABEL_21;
  }

  v12 = [[ISRecordResourceProvider alloc] initWithRecord:v6 options:0];
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_27:
  iconResource = [(ISBundleResourceProvider *)v12 iconResource];
  if (iconResource)
  {
  }

  else
  {
    customRecipe = [(ISResourceProvider *)v12 customRecipe];

    if (!customRecipe)
    {
      v24 = _ISDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ISBundleIcon *)&self->_url _makeAppResourceProvider];
      }

      v25 = +[ISResourceProvider defaultAppIconResourceProvider];

      [(ISResourceProvider *)v25 setPlaceholder:1];
      v12 = v25;
    }
  }

  if (v7)
  {
    [(ISResourceProvider *)v12 setSuggestedRecipe:v7];
  }

  [(ISResourceProvider *)v12 setResourceType:1];
LABEL_36:

  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)makeResourceProvider
{
  if (self->_tag && self->_tagClass || self->_type)
  {
    _makeDocumentResourceProvider = [(ISBundleIcon *)self _makeDocumentResourceProvider];
  }

  else
  {
    _makeDocumentResourceProvider = [(ISBundleIcon *)self _makeAppResourceProvider];
  }

  return _makeDocumentResourceProvider;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  url = self->_url;
  type = self->_type;
  tag = self->_tag;
  tagClass = self->_tagClass;
  digest = [(ISConcreteIcon *)self digest];
  v11 = [v3 initWithFormat:@"<%s %p> Bundle URL: %@ type: %@ tag: %@ tag class: %@ digest:%@", Name, self, url, type, tag, tagClass, digest];

  return v11;
}

- (void)_makeDocumentResourceProvider
{
  v10 = *MEMORY[0x1E69E9840];
  path = [*self path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_1A77B8000, v2, v3, "Failed to find document icon resources for %@ - %@. Creating placeholder provider", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_makeAppResourceProvider
{
  v10 = *MEMORY[0x1E69E9840];
  path = [*self path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_1A77B8000, v2, v3, "Failed to find icon resources for %@ - %@. Creating placeholder provider", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end