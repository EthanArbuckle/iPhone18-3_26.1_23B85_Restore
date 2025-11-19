@interface CCItemInstance
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToItemInstance:(id)a3;
- (CCItemInstance)init;
- (CCItemInstance)initWithCoder:(id)a3;
- (CCItemInstance)initWithContent:(id)a3 metaContent:(id)a4 error:(id *)a5;
- (CCItemInstance)initWithSharedIdentifier:(id)a3 instanceIdentifier:(id)a4 content:(id)a5 metaContent:(id)a6;
- (NSNumber)instanceIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCItemInstance

- (NSNumber)instanceIdentifier
{
  instanceIdentifier = self->_instanceIdentifier;
  if (!instanceIdentifier)
  {
    v4 = [(CCSharedItem *)self content];
    v5 = [v4 data];

    v6 = [(CCItemInstance *)self metaContent];
    v7 = [v6 data];

    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(v7, "length") + objc_msgSend(v5, "length")}];
    [v8 appendData:v5];
    [v8 appendData:v7];
    v9 = CCHash64(v8);
    v10 = self->_instanceIdentifier;
    self->_instanceIdentifier = v9;

    instanceIdentifier = self->_instanceIdentifier;
  }

  return instanceIdentifier;
}

- (unint64_t)hash
{
  v2 = [(CCItemInstance *)self instanceIdentifier];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (CCItemInstance)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCItemInstance)initWithContent:(id)a3 metaContent:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (CCValidateNonNilField(@"metaContent", v9, a5) && (v10 = objc_opt_class(), CCValidateIsInstanceOfExpectedClass(@"metaContent", v9, v10, a5)))
  {
    v15.receiver = self;
    v15.super_class = CCItemInstance;
    v11 = [(CCSharedItem *)&v15 initWithContent:v8 error:a5];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_metaContent, a4);
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CCItemInstance)initWithSharedIdentifier:(id)a3 instanceIdentifier:(id)a4 content:(id)a5 metaContent:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CCItemInstance;
  v13 = [(CCSharedItem *)&v16 initWithSharedIdentifier:a3 content:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_metaContent, a6);
    objc_storeStrong(&v14->_instanceIdentifier, a4);
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = CCItemInstance;
  v4 = [(CCSharedItem *)&v9 description];
  v5 = [(CCItemInstance *)self instanceIdentifier];
  v6 = [(CCItemInstance *)self metaContent];
  v7 = [v3 initWithFormat:@"%@ instanceIdentifier: %@ metaContent: %@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCItemInstance *)self isEqualToItemInstance:v5];
  }

  return v6;
}

- (BOOL)isEqualToItemInstance:(id)a3
{
  v4 = a3;
  v5 = [(CCItemInstance *)self instanceIdentifier];
  v6 = [v4 instanceIdentifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CCItemInstance;
  [(CCSharedItem *)&v8 encodeWithCoder:v4];
  metaContent = self->_metaContent;
  if (metaContent)
  {
    v6 = [(CCItemMetaContent *)metaContent data];
    [v4 encodeObject:v6 forKey:@"m"];
  }

  instanceIdentifier = self->_instanceIdentifier;
  if (instanceIdentifier)
  {
    [v4 encodeObject:instanceIdentifier forKey:@"i"];
  }
}

- (CCItemInstance)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CCItemInstance;
  v5 = [(CCSharedItem *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
    if (v6)
    {
      v7 = [(CCSharedItem *)v5 content];

      if (v7)
      {
        v8 = [(CCSharedItem *)v5 content];
        v9 = [objc_opt_class() itemType];

        v21 = 0;
        v10 = [CCItemMessage metaContentMessageForItemType:v9 data:v6 error:&v21];
        v11 = v21;
        metaContent = v5->_metaContent;
        v5->_metaContent = v10;

        if (!v5->_metaContent)
        {
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = CCTypeIdentifierRegistryBridge();
            v20 = [v19 descriptionForTypeIdentifier:v9];
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

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
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