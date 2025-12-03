@interface RESharedTexturePayload
- (BOOL)hasSameUnderlyingIOSurface:(id)surface;
- (RESharedTexturePayload)initWithCoder:(id)coder;
- (RESharedTexturePayload)initWithTexture:(id)texture isLimitedRenderAsset:(BOOL)asset semantic:(unint64_t)semantic colorSpace:(id)space;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RESharedTexturePayload

- (RESharedTexturePayload)initWithTexture:(id)texture isLimitedRenderAsset:(BOOL)asset semantic:(unint64_t)semantic colorSpace:(id)space
{
  v22 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  spaceCopy = space;
  v19.receiver = self;
  v19.super_class = RESharedTexturePayload;
  v12 = [(RESharedResourcePayload *)&v19 init];
  if (v12 && (v13 = [textureCopy newSharedTextureHandle], handle = v12->_handle, v12->_handle = v13, handle, v12->_isLimitedRenderAsset = asset, v12->_semantic = semantic, objc_storeStrong(&v12->_colorSpace, space), !v12->_handle))
  {
    v17 = *re::assetTypesLogObjects(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v21 = textureCopy;
      _os_log_fault_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_FAULT, "Failed to create shared texture handle for %@", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

- (RESharedTexturePayload)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = RESharedTexturePayload;
  v5 = [(RESharedResourcePayload *)&v14 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"], v6 = objc_claimAutoreleasedReturnValue(), handle = v5->_handle, v5->_handle = v6, handle, v5->_isLimitedRenderAsset = objc_msgSend(coderCopy, "decodeBoolForKey:", @"isLimitedRenderAsset"), v5->_semantic = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"semantic"), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"colorSpace"), v8 = objc_claimAutoreleasedReturnValue(), colorSpace = v5->_colorSpace, v5->_colorSpace = v8, colorSpace, !v5->_handle))
  {
    v12 = *re::assetTypesLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_fault_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_FAULT, "Failed to decode shared texture handle for %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeBool:self->_isLimitedRenderAsset forKey:@"isLimitedRenderAsset"];
  [coderCopy encodeInteger:self->_semantic forKey:@"semantic"];
  [coderCopy encodeObject:self->_colorSpace forKey:@"colorSpace"];
}

- (BOOL)hasSameUnderlyingIOSurface:(id)surface
{
  surfaceCopy = surface;
  p_isa = &surfaceCopy->super.super.isa;
  if (surfaceCopy)
  {
    v7 = self == surfaceCopy || (handle = self->_handle, handle == p_isa[3]) || CFEqual(-[MTLSharedTextureHandle ioSurface](handle, "ioSurface"), [p_isa[3] ioSurface]) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  ID = IOSurfaceGetID([(MTLSharedTextureHandle *)self->_handle ioSurface]);
  label = [(MTLSharedTextureHandle *)self->_handle label];
  v6 = [v3 stringWithFormat:@"<RESharedTexturePayload: %p, IOSurface id: %u, label: '%@'>", self, ID, label];

  return v6;
}

@end