@interface CHSWidgetRenderScheme
- (BOOL)isEqual:(id)equal;
- (CHSWidgetRenderScheme)initWithBSXPCCoder:(id)coder;
- (CHSWidgetRenderScheme)initWithCoder:(id)coder;
- (CHSWidgetRenderScheme)initWithRenderingMode:(unint64_t)mode backgroundViewPolicy:(unint64_t)policy;
- (CHSWidgetRenderScheme)initWithRenderingModes:(unint64_t)modes backgroundViewPolicy:(unint64_t)policy;
- (NSString)description;
- (id)_compatibilityRenderSchemesFromDeprecatedRenderingModes;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithWidgetRenderScheme:(void *)scheme;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetRenderScheme

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = NSStringFromCHSWidgetRenderingMode(self->_renderingMode);
  [v3 appendString:v4 withName:@"renderingMode"];

  renderingModes = self->_renderingModes;
  if (renderingModes)
  {
    v6 = NSStringFromCHSWidgetRenderingModes(renderingModes);
    [v3 appendString:v6 withName:@"renderingModes"];
  }

  v7 = NSStringFromCHSWidgetBackgroundViewPolicy(self->_backgroundViewPolicy);
  [v3 appendString:v7 withName:@"backgroundViewPolicy"];

  build = [v3 build];

  return build;
}

- (CHSWidgetRenderScheme)initWithRenderingMode:(unint64_t)mode backgroundViewPolicy:(unint64_t)policy
{
  v7.receiver = self;
  v7.super_class = CHSWidgetRenderScheme;
  result = [(CHSWidgetRenderScheme *)&v7 init];
  if (result)
  {
    result->_renderingMode = mode;
    result->_backgroundViewPolicy = policy;
  }

  return result;
}

- (CHSWidgetRenderScheme)initWithRenderingModes:(unint64_t)modes backgroundViewPolicy:(unint64_t)policy
{
  v7.receiver = self;
  v7.super_class = CHSWidgetRenderScheme;
  result = [(CHSWidgetRenderScheme *)&v7 init];
  if (result)
  {
    result->_backgroundViewPolicy = policy;
    result->_renderingModes = modes;
  }

  return result;
}

- (void)_initWithWidgetRenderScheme:(void *)scheme
{
  v3 = a2;
  if (scheme)
  {
    v6.receiver = scheme;
    v6.super_class = CHSWidgetRenderScheme;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    scheme = v4;
    if (v4)
    {
      v4[1] = v3[1];
      v4[3] = v3[3];
      v4[2] = v3[2];
    }
  }

  return scheme;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWidgetRenderScheme allocWithZone:zone];

  return [(CHSWidgetRenderScheme *)v4 _initWithWidgetRenderScheme:?];
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:self->_renderingMode];
  v5 = [builder appendUnsignedInteger:self->_renderingModes];
  v6 = [builder appendUnsignedInteger:self->_backgroundViewPolicy];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  renderingMode = self->_renderingMode;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __33__CHSWidgetRenderScheme_isEqual___block_invoke;
  v24[3] = &unk_1E7453318;
  v11 = v9;
  v25 = v11;
  v12 = [v5 appendUnsignedInteger:renderingMode counterpart:v24];
  renderingModes = self->_renderingModes;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __33__CHSWidgetRenderScheme_isEqual___block_invoke_2;
  v22[3] = &unk_1E7453318;
  v14 = v11;
  v23 = v14;
  v15 = [v5 appendUnsignedInteger:renderingModes counterpart:v22];
  backgroundViewPolicy = self->_backgroundViewPolicy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __33__CHSWidgetRenderScheme_isEqual___block_invoke_3;
  v20[3] = &unk_1E7453318;
  v17 = v14;
  v21 = v17;
  v18 = [v5 appendUnsignedInteger:backgroundViewPolicy counterpart:v20];
  LOBYTE(v14) = [v5 isEqual];

  return v14;
}

- (id)_compatibilityRenderSchemesFromDeprecatedRenderingModes
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  renderingModes = self->_renderingModes;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __80__CHSWidgetRenderScheme__compatibilityRenderSchemesFromDeprecatedRenderingModes__block_invoke;
  v11 = &unk_1E7453920;
  selfCopy = self;
  v13 = &v14;
  v3 = v9;
  if (renderingModes)
  {
    v4 = 0;
    v20 = 0;
    v5 = vcnt_s8(renderingModes);
    v5.i16[0] = vaddlv_u8(v5);
    v6 = v5.i32[0];
    do
    {
      if (((1 << v4) & renderingModes) != 0)
      {
        (v10)(v3);
        if (v20)
        {
          break;
        }

        --v6;
      }

      if (v4 > 0x3E)
      {
        break;
      }

      ++v4;
    }

    while (v6 > 0);
  }

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __80__CHSWidgetRenderScheme__compatibilityRenderSchemesFromDeprecatedRenderingModes__block_invoke(uint64_t a1, unint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = (a2 >> 1) & 2;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = [[CHSWidgetRenderScheme alloc] initWithRenderingMode:v3 backgroundViewPolicy:*(*(a1 + 32) + 16)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:LODWORD(self->_renderingMode) forKey:@"renderingMode"];
  [coderCopy encodeInt32:LODWORD(self->_backgroundViewPolicy) forKey:@"backgroundViewPolicy"];
}

- (CHSWidgetRenderScheme)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CHSWidgetRenderScheme;
  v5 = [(CHSWidgetRenderScheme *)&v19 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"renderingModes"])
    {
      v6 = [coderCopy decodeInt32ForKey:@"renderingModes"];
      v7 = v6;
      v5->_renderingModes = v6;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __39__CHSWidgetRenderScheme_initWithCoder___block_invoke;
      v17 = &unk_1E74537F0;
      v18 = v5;
      v8 = &v14;
      if (v6)
      {
        v9 = 0;
        v20 = 0;
        v10 = vcnt_s8(v7);
        v10.i16[0] = vaddlv_u8(v10);
        v11 = v10.i32[0];
        do
        {
          if (((1 << v9) & *&v7) != 0)
          {
            v16(v8);
            if (v20)
            {
              break;
            }

            --v11;
          }

          if (v9 > 0x3E)
          {
            break;
          }

          ++v9;
        }

        while (v11 > 0);
      }
    }

    if ([coderCopy containsValueForKey:{@"renderingMode", v14, v15}])
    {
      v5->_renderingMode = [coderCopy decodeInt32ForKey:@"renderingMode"];
    }

    if ([coderCopy containsValueForKey:@"backgroundViewPolicy"])
    {
      v12 = [coderCopy decodeInt32ForKey:@"backgroundViewPolicy"];
    }

    else
    {
      v12 = [coderCopy decodeBoolForKey:@"opaque"] ^ 1;
    }

    v5->_backgroundViewPolicy = v12;
  }

  return v5;
}

uint64_t __39__CHSWidgetRenderScheme_initWithCoder___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(result + 32) + 8) = a2;
    *a4 = 1;
  }

  return result;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeUInt64:self->_renderingMode forKey:@"renderingMode"];
  [coderCopy encodeUInt64:self->_backgroundViewPolicy forKey:@"backgroundViewPolicy"];
}

- (CHSWidgetRenderScheme)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CHSWidgetRenderScheme initWithRenderingMode:backgroundViewPolicy:](self, "initWithRenderingMode:backgroundViewPolicy:", [coderCopy decodeUInt64ForKey:@"renderingMode"], objc_msgSend(coderCopy, "decodeUInt64ForKey:", @"backgroundViewPolicy"));

  return v5;
}

@end