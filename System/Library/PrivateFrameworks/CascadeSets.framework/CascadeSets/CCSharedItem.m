@interface CCSharedItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharedItem:(id)a3;
- (CCSharedItem)init;
- (CCSharedItem)initWithCoder:(id)a3;
- (CCSharedItem)initWithContent:(id)a3 error:(id *)a4;
- (CCSharedItem)initWithSharedIdentifier:(id)a3 content:(id)a4;
- (NSNumber)sharedIdentifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CCSharedItem

- (NSNumber)sharedIdentifier
{
  sharedIdentifier = self->_sharedIdentifier;
  if (!sharedIdentifier)
  {
    v4 = [(CCItemContent *)self->_content data];
    v5 = CCHash64(v4);
    v6 = self->_sharedIdentifier;
    self->_sharedIdentifier = v5;

    sharedIdentifier = self->_sharedIdentifier;
  }

  return sharedIdentifier;
}

- (CCSharedItem)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSharedItem)initWithContent:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (CCValidateNonNilField(@"content", v7, a4) && (v8 = objc_opt_class(), CCValidateIsInstanceOfExpectedClass(@"content", v7, v8, a4)))
  {
    v13.receiver = self;
    v13.super_class = CCSharedItem;
    v9 = [(CCSharedItem *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_content, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CCSharedItem)initWithSharedIdentifier:(id)a3 content:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CCSharedItem;
  v9 = [(CCSharedItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_content, a4);
    objc_storeStrong(&v10->_sharedIdentifier, a3);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CCSharedItem *)self sharedIdentifier];
  v7 = [(CCSharedItem *)self content];
  v8 = [v3 initWithFormat:@"<%@> sharedIdentifier: %@ content: %@", v5, v6, v7];

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCSharedItem *)self isEqualToSharedItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharedItem:(id)a3
{
  v4 = a3;
  v5 = [(CCSharedItem *)self sharedIdentifier];
  v6 = [v4 sharedIdentifier];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(CCSharedItem *)self sharedIdentifier];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (self->_content)
  {
    [v6 encodeInt32:objc_msgSend(objc_opt_class() forKey:{"itemType"), @"t"}];
    v4 = [(CCItemContent *)self->_content data];
    [v6 encodeObject:v4 forKey:@"c"];
  }

  sharedIdentifier = self->_sharedIdentifier;
  if (sharedIdentifier)
  {
    [v6 encodeObject:sharedIdentifier forKey:@"s"];
  }
}

- (CCSharedItem)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  if (v5)
  {
    v6 = [v4 decodeInt32ForKey:@"t"];
    v21 = 0;
    v7 = [CCItemMessage contentMessageForItemType:v6 data:v5 error:&v21];
    v8 = v21;
    if (!v7)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = CCTypeIdentifierRegistryBridge();
        v19 = [v18 descriptionForTypeIdentifier:v6];
        *buf = 138412802;
        v23 = v5;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v8;
        _os_log_error_impl(&dword_1B6DB2000, v7, OS_LOG_TYPE_ERROR, "Failed to decode content from data: %@ itemType: %@ error: %@", buf, 0x20u);
      }

      v9 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  if (v10)
  {
    self = [(CCSharedItem *)self initWithSharedIdentifier:v10 content:v7];
  }

  else
  {
    v20 = v8;
    v11 = [(CCSharedItem *)self initWithContent:v7 error:&v20];
    v12 = v20;

    v13 = v11;
    self = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(CCSharedItem *)v12 initWithCoder:v15];
      }
    }

    v8 = v12;
  }

  v9 = self;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize sharedItem: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end