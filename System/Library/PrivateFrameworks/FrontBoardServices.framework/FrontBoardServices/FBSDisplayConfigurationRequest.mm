@interface FBSDisplayConfigurationRequest
- (BOOL)isEqual:(id)equal;
- (CGSize)logicalScale;
- (CGSize)nativePixelSize;
- (FBSDisplayConfigurationRequest)init;
- (FBSDisplayConfigurationRequest)initWithCoder:(id)coder;
- (FBSDisplayConfigurationRequest)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation FBSDisplayConfigurationRequest

- (FBSDisplayConfigurationRequest)init
{
  v3.receiver = self;
  v3.super_class = FBSDisplayConfigurationRequest;
  result = [(FBSDisplayConfigurationRequest *)&v3 init];
  if (result)
  {
    result->_overscanCompensation = -1;
    result->_hdrMode = -1;
  }

  return result;
}

- (unint64_t)hash
{
  builder = [off_1E76BC9C8 builder];
  v4 = [builder appendInteger:self->_overscanCompensation];
  v5 = [builder appendCGSize:{self->_nativePixelSize.width, self->_nativePixelSize.height}];
  v6 = [builder appendCGFloat:self->_pointScale];
  v7 = [builder appendDouble:self->_refreshRate];
  v8 = [builder appendBool:self->_disableFrameDoubling];
  v9 = [builder appendInteger:self->_hdrMode];
  v10 = [builder appendCGSize:{self->_logicalScale.width, self->_logicalScale.height}];
  v11 = [builder hash];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [off_1E76BC9C0 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  overscanCompensation = self->_overscanCompensation;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke;
  v40[3] = &unk_1E76BD908;
  v7 = equalCopy;
  v41 = v7;
  v8 = [v5 appendInteger:overscanCompensation counterpart:v40];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke_2;
  v38[3] = &unk_1E76BE0B0;
  v9 = v7;
  v39 = v9;
  v10 = [v5 appendCGSize:v38 counterpart:{self->_nativePixelSize.width, self->_nativePixelSize.height}];
  pointScale = self->_pointScale;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke_3;
  v36[3] = &unk_1E76BE0D8;
  v12 = v9;
  v37 = v12;
  v13 = [v5 appendCGFloat:v36 counterpart:pointScale];
  refreshRate = self->_refreshRate;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke_4;
  v34[3] = &unk_1E76BE0D8;
  v15 = v12;
  v35 = v15;
  v16 = [v5 appendDouble:v34 counterpart:refreshRate];
  disableFrameDoubling = self->_disableFrameDoubling;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke_5;
  v32[3] = &unk_1E76BD8B8;
  v18 = v15;
  v33 = v18;
  v19 = [v5 appendBool:disableFrameDoubling counterpart:v32];
  hdrMode = self->_hdrMode;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke_6;
  v30[3] = &unk_1E76BD908;
  v21 = v18;
  v31 = v21;
  v22 = [v5 appendInteger:hdrMode counterpart:v30];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __42__FBSDisplayConfigurationRequest_isEqual___block_invoke_7;
  v28[3] = &unk_1E76BE0B0;
  v29 = v21;
  width = self->_logicalScale.width;
  height = self->_logicalScale.height;
  v25 = v21;
  v26 = [v5 appendCGSize:v28 counterpart:{width, height}];
  LOBYTE(v21) = [v5 isEqual];

  return v21;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = [(FBSDisplayConfigurationRequest *)[FBSMutableDisplayConfigurationRequest allocWithZone:?]];
  *(result + 7) = self->_overscanCompensation;
  *(result + 8) = self->_nativePixelSize;
  *(result + 5) = *&self->_pointScale;
  *(result + 6) = *&self->_refreshRate;
  *(result + 72) = self->_disableFrameDoubling;
  *(result + 8) = self->_hdrMode;
  *(result + 24) = self->_logicalScale;
  return result;
}

- (FBSDisplayConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FBSDisplayConfigurationRequest *)self init];
  if (v5)
  {
    v5->_overscanCompensation = [coderCopy decodeInt64ForKey:@"overscanCompensation"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nativePixelSize"];
    v7 = v6;
    if (v6)
    {
      v5->_nativePixelSize.width = MEMORY[0x1A58E7870](v6);
      v5->_nativePixelSize.height = v8;
    }

    else
    {
      v5->_nativePixelSize = *MEMORY[0x1E695F060];
    }

    [coderCopy decodeFloatForKey:@"pointScale"];
    v5->_pointScale = v9;
    [coderCopy decodeDoubleForKey:@"refreshRate"];
    v5->_refreshRate = v10;
    v5->_disableFrameDoubling = [coderCopy decodeBoolForKey:@"disableFrameDoubling"];
    v5->_hdrMode = [coderCopy decodeInt64ForKey:@"hdrMode"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logicalScale"];
    v12 = v11;
    if (v11)
    {
      v5->_logicalScale.width = MEMORY[0x1A58E7870](v11);
      v5->_logicalScale.height = v13;
    }

    else
    {
      v5->_logicalScale = *MEMORY[0x1E695F060];
    }
  }

  return v5;
}

- (FBSDisplayConfigurationRequest)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(FBSDisplayConfigurationRequest *)self init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(dictionaryCopy, [@"overscanCompensation" UTF8String]);
    v7 = v6;
    v8 = MEMORY[0x1E69E9EB0];
    if (v6)
    {
      if (object_getClass(v6) == v8)
      {
        v5->_overscanCompensation = xpc_int64_get_value(v7);
      }
    }

    [@"nativePixelSize" UTF8String];
    BSDeserializeCGSizeFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  if (xdict)
  {
    if (self->_overscanCompensation != -1)
    {
      xpc_dictionary_set_int64(xdict, [@"overscanCompensation" UTF8String], self->_overscanCompensation);
    }

    BSFloatIsZero();
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSDisplayConfigurationRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSDisplayConfigurationRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSDisplayConfigurationRequest *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__FBSDisplayConfigurationRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E76BCD60;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __72__FBSDisplayConfigurationRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2 != -1)
  {
    v3 = *(a1 + 40);
    v4 = FBSDisplayOverscanCompensationDescription(v2);
    [v3 appendString:v4 withName:@"overscanCompensation"];
  }

  BSFloatIsZero();
}

- (CGSize)nativePixelSize
{
  width = self->_nativePixelSize.width;
  height = self->_nativePixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)logicalScale
{
  width = self->_logicalScale.width;
  height = self->_logicalScale.height;
  result.height = height;
  result.width = width;
  return result;
}

@end