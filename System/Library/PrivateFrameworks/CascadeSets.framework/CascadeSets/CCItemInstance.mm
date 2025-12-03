@interface CCItemInstance
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItemInstance:(id)instance;
- (CCItemInstance)init;
- (CCItemInstance)initWithCoder:(id)coder;
- (CCItemInstance)initWithContent:(id)content metaContent:(id)metaContent error:(id *)error;
- (CCItemInstance)initWithSharedIdentifier:(id)identifier instanceIdentifier:(id)instanceIdentifier content:(id)content metaContent:(id)metaContent;
- (NSNumber)instanceIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CCItemInstance

- (NSNumber)instanceIdentifier
{
  instanceIdentifier = self->_instanceIdentifier;
  if (!instanceIdentifier)
  {
    content = [(CCSharedItem *)self content];
    data = [content data];

    metaContent = [(CCItemInstance *)self metaContent];
    data2 = [metaContent data];

    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(data2, "length") + objc_msgSend(data, "length")}];
    [v8 appendData:data];
    [v8 appendData:data2];
    v9 = CCHash64(v8);
    v10 = self->_instanceIdentifier;
    self->_instanceIdentifier = v9;

    instanceIdentifier = self->_instanceIdentifier;
  }

  return instanceIdentifier;
}

- (unint64_t)hash
{
  instanceIdentifier = [(CCItemInstance *)self instanceIdentifier];
  unsignedLongLongValue = [instanceIdentifier unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (CCItemInstance)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCItemInstance)initWithContent:(id)content metaContent:(id)metaContent error:(id *)error
{
  contentCopy = content;
  metaContentCopy = metaContent;
  if (CCValidateNonNilField(@"metaContent", metaContentCopy, error) && (v10 = objc_opt_class(), CCValidateIsInstanceOfExpectedClass(@"metaContent", metaContentCopy, v10, error)))
  {
    v15.receiver = self;
    v15.super_class = CCItemInstance;
    v11 = [(CCSharedItem *)&v15 initWithContent:contentCopy error:error];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_metaContent, metaContent);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CCItemInstance)initWithSharedIdentifier:(id)identifier instanceIdentifier:(id)instanceIdentifier content:(id)content metaContent:(id)metaContent
{
  instanceIdentifierCopy = instanceIdentifier;
  metaContentCopy = metaContent;
  v16.receiver = self;
  v16.super_class = CCItemInstance;
  v13 = [(CCSharedItem *)&v16 initWithSharedIdentifier:identifier content:content];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_metaContent, metaContent);
    objc_storeStrong(&v14->_instanceIdentifier, instanceIdentifier);
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = CCItemInstance;
  v4 = [(CCSharedItem *)&v9 description];
  instanceIdentifier = [(CCItemInstance *)self instanceIdentifier];
  metaContent = [(CCItemInstance *)self metaContent];
  v7 = [v3 initWithFormat:@"%@ instanceIdentifier: %@ metaContent: %@", v4, instanceIdentifier, metaContent];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCItemInstance *)self isEqualToItemInstance:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemInstance:(id)instance
{
  instanceCopy = instance;
  instanceIdentifier = [(CCItemInstance *)self instanceIdentifier];
  instanceIdentifier2 = [instanceCopy instanceIdentifier];

  LOBYTE(instanceCopy) = [instanceIdentifier isEqual:instanceIdentifier2];
  return instanceCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CCItemInstance;
  [(CCSharedItem *)&v8 encodeWithCoder:coderCopy];
  metaContent = self->_metaContent;
  if (metaContent)
  {
    data = [(CCItemMetaContent *)metaContent data];
    [coderCopy encodeObject:data forKey:@"m"];
  }

  instanceIdentifier = self->_instanceIdentifier;
  if (instanceIdentifier)
  {
    [coderCopy encodeObject:instanceIdentifier forKey:@"i"];
  }
}

- (CCItemInstance)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CCItemInstance;
  v5 = [(CCSharedItem *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    if (v6)
    {
      content = [(CCSharedItem *)v5 content];

      if (content)
      {
        content2 = [(CCSharedItem *)v5 content];
        itemType = [objc_opt_class() itemType];

        v21 = 0;
        v10 = [CCItemMessage metaContentMessageForItemType:itemType data:v6 error:&v21];
        v11 = v21;
        metaContent = v5->_metaContent;
        v5->_metaContent = v10;

        if (!v5->_metaContent)
        {
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = CCTypeIdentifierRegistryBridge();
            v20 = [v19 descriptionForTypeIdentifier:itemType];
            *buf = 138412802;
            v24 = v6;
            v25 = 2112;
            v26 = v20;
            v27 = 2112;
            v28 = v11;
            _os_log_error_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_ERROR, "Failed to decode metacontent from data: %@ itemType: %@ error: %@", buf, 0x20u);
          }

          goto LABEL_15;
        }
      }
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    instanceIdentifier = v5->_instanceIdentifier;
    v5->_instanceIdentifier = v13;

    if (v5->_metaContent || v5->_instanceIdentifier)
    {
      v15 = v5;
LABEL_16:

      goto LABEL_17;
    }

    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCItemInstance initWithCoder:v11];
    }

LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

@end