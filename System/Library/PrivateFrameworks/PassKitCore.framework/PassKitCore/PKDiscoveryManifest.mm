@interface PKDiscoveryManifest
+ (id)manifestFromURL:(id)l;
- (PKDiscoveryManifest)initWithCoder:(id)coder;
- (PKDiscoveryManifest)initWithDictionary:(id)dictionary;
- (PKDiscoveryManifest)initWithVersion:(int64_t)version rules:(id)rules discoveryItems:(id)items engagementMessagesMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDiscoveryManifest

+ (id)manifestFromURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:1 error:&v15];
  v4 = v15;
  if (!v4)
  {
    v14 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v14];
    v8 = v14;
    if (v8)
    {
      v5 = v8;
      v9 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create unarchiver from data for Discovery Manifest with error: %@", buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v11 = objc_opt_class();
      v12 = *MEMORY[0x1E696A508];
      v13 = 0;
      v7 = [v6 decodeTopLevelObjectOfClass:v11 forKey:v12 error:&v13];
      v5 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }

      v9 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to decode archived Discovery Manifest with error: %@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to read archive data for Discovery Manifest with error: %@", buf, 0xCu);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (PKDiscoveryManifest)initWithDictionary:(id)dictionary
{
  v71 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = PKDiscoveryManifest;
  v5 = [(PKDiscoveryManifest *)&v64 init];
  if (!v5)
  {
    goto LABEL_45;
  }

  v5->_version = [dictionaryCopy PKIntegerForKey:@"version"];
  v5->_miniCardsAllowed = [dictionaryCopy PKBoolForKey:@"miniCardsAllowed"];
  v6 = [dictionaryCopy objectForKey:@"rules"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543618;
      v68 = v30;
      v69 = 2114;
      v70 = v32;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected array and received %{public}@", buf, 0x16u);

LABEL_29:
    }

    goto LABEL_36;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = v6;
  v8 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v61;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v60 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = PKLogFacilityTypeGetObject(0x11uLL);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *buf = 138543618;
            v68 = v35;
            v69 = 2114;
            v70 = v37;
            _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
          }

          goto LABEL_36;
        }

        v13 = [[PKRule alloc] initWithDictionary:v12];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v7 copy];
  rules = v5->_rules;
  v5->_rules = v14;

  v16 = [dictionaryCopy objectForKey:@"discoveryItems"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138543618;
      v68 = v40;
      v69 = 2114;
      v70 = v42;
      _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected array and received %{public}@", buf, 0x16u);
    }

LABEL_36:
    goto LABEL_37;
  }

  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v57;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v56 + 1) + 8 * v20);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v44 = PKLogFacilityTypeGetObject(0x11uLL);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = objc_opt_class();
            v46 = NSStringFromClass(v45);
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            *buf = 138543618;
            v68 = v46;
            v69 = 2114;
            v70 = v48;
            _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
          }

          v30 = obj;
          goto LABEL_29;
        }

        v22 = [[PKDiscoveryItem alloc] initWithDictionary:v21];
        if (v22)
        {
          [v55 addObject:v22];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = [v55 copy];
  discoveryItems = v5->_discoveryItems;
  v5->_discoveryItems = v23;

  v25 = [dictionaryCopy objectForKey:@"engagementMessagesMetadata"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (!v25)
    {
      goto LABEL_44;
    }

    v27 = [[PKDiscoveryMessagesMetadata alloc] initWithDictionary:v25];
    p_super = &v5->_messagesMetadata->super;
    v5->_messagesMetadata = v27;
  }

  else
  {
    p_super = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138543618;
      v68 = v50;
      v69 = 2114;
      v70 = v52;
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
    }
  }

LABEL_44:
  if (isKindOfClass)
  {
LABEL_45:
    v43 = v5;
    goto LABEL_46;
  }

LABEL_37:
  v43 = 0;
LABEL_46:

  return v43;
}

- (PKDiscoveryManifest)initWithVersion:(int64_t)version rules:(id)rules discoveryItems:(id)items engagementMessagesMetadata:(id)metadata
{
  rulesCopy = rules;
  itemsCopy = items;
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = PKDiscoveryManifest;
  v14 = [(PKDiscoveryManifest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_version = version;
    objc_storeStrong(&v14->_rules, rules);
    objc_storeStrong(&v15->_discoveryItems, items);
    objc_storeStrong(&v15->_messagesMetadata, metadata);
  }

  return v15;
}

- (PKDiscoveryManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKDiscoveryManifest;
  v5 = [(PKDiscoveryManifest *)&v19 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v5->_miniCardsAllowed = [coderCopy decodeBoolForKey:@"miniCardsAllowed"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"discoveryItems"];
    discoveryItems = v5->_discoveryItems;
    v5->_discoveryItems = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"rules"];
    rules = v5->_rules;
    v5->_rules = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engagementMessagesMetadata"];
    messagesMetadata = v5->_messagesMetadata;
    v5->_messagesMetadata = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeBool:self->_miniCardsAllowed forKey:@"miniCardsAllowed"];
  [coderCopy encodeObject:self->_discoveryItems forKey:@"discoveryItems"];
  [coderCopy encodeObject:self->_rules forKey:@"rules"];
  [coderCopy encodeObject:self->_messagesMetadata forKey:@"engagementMessagesMetadata"];
}

@end