@interface REDirectTexturePayload
- (REDirectTexturePayload)initWithCoder:(id)coder;
- (REDirectTexturePayload)initWithDirectTexture:(id)texture;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REDirectTexturePayload

- (REDirectTexturePayload)initWithDirectTexture:(id)texture
{
  textureCopy = texture;
  v9.receiver = self;
  v9.super_class = REDirectTexturePayload;
  v5 = [(RESharedResourcePayload *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(REDirectTexturePayload *)v5 setDirectTexture:textureCopy];
    v7 = DRTextureAsResource();
    DRResourceGetIdentifier();
  }

  return v6;
}

- (REDirectTexturePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = REDirectTexturePayload;
  v5 = [(RESharedResourcePayload *)&v14 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
    v11 = {;
    [coderCopy failWithError:v11];

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v9 = v7;
  if (!v7)
    v12 = {;
    [coderCopy failWithError:v12];

    goto LABEL_8;
  }

  [v7 getUUIDBytes:v5->_identifier];

LABEL_5:
  v10 = v5;
LABEL_9:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifier];
    [coderCopy encodeObject:v6 forKey:@"identifier"];
  }

  else
  {
    v7 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "REDirectTexturePayload requires an NSXPCCoder", v8, 2u);
    }
  }
}

@end