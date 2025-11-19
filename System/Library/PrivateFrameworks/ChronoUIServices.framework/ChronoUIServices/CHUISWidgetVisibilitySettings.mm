@interface CHUISWidgetVisibilitySettings
- (BOOL)isEqual:(id)a3;
- (CGRect)visibleBounds;
- (CHUISWidgetVisibilitySettings)init;
- (CHUISWidgetVisibilitySettings)initWithXPCDictionary:(id)a3;
- (id)_initWithVisibilitySettings:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CHUISWidgetVisibilitySettings

- (CHUISWidgetVisibilitySettings)init
{
  v4.receiver = self;
  v4.super_class = CHUISWidgetVisibilitySettings;
  result = [(CHUISWidgetVisibilitySettings *)&v4 init];
  if (result)
  {
    *&result->_settled = 0;
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_visibleBounds.origin = *MEMORY[0x1E695F050];
    result->_visibleBounds.size = v3;
  }

  return result;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)succinctDescription
{
  v2 = [(CHUISWidgetVisibilitySettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_settled withName:@"settled"];
  v5 = [v3 appendBool:self->_focal withName:@"focal"];
  v6 = [v3 appendRect:@"visibleBounds" withName:{self->_visibleBounds.origin.x, self->_visibleBounds.origin.y, self->_visibleBounds.size.width, self->_visibleBounds.size.height}];

  return v3;
}

- (id)_initWithVisibilitySettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHUISWidgetVisibilitySettings;
  v5 = [(CHUISWidgetVisibilitySettings *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_settled = v4[8];
    v5->_focal = v4[9];
    v7 = *(v4 + 2);
    v5->_visibleBounds.origin = *(v4 + 1);
    v5->_visibleBounds.size = v7;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = v4;
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

  settled = self->_settled;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __41__CHUISWidgetVisibilitySettings_isEqual___block_invoke;
  v24[3] = &unk_1E8575670;
  v11 = v9;
  v25 = v11;
  v12 = [v5 appendBool:settled counterpart:v24];
  focal = self->_focal;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __41__CHUISWidgetVisibilitySettings_isEqual___block_invoke_2;
  v22[3] = &unk_1E8575670;
  v14 = v11;
  v23 = v14;
  v15 = [v5 appendBool:focal counterpart:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __41__CHUISWidgetVisibilitySettings_isEqual___block_invoke_3;
  v20[3] = &unk_1E8575698;
  v16 = v14;
  v21 = v16;
  v17 = [v5 appendCGRect:v20 counterpart:{self->_visibleBounds.origin.x, self->_visibleBounds.origin.y, self->_visibleBounds.size.width, self->_visibleBounds.size.height}];
  v18 = [v5 isEqual];

  return v18;
}

double __41__CHUISWidgetVisibilitySettings_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendBool:self->_settled];
  v5 = [v3 appendBool:self->_focal];
  v6 = [v3 appendCGRect:{self->_visibleBounds.origin.x, self->_visibleBounds.origin.y, self->_visibleBounds.size.width, self->_visibleBounds.size.height}];
  v7 = [v3 hash];

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHUISWidgetVisibilitySettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CHUISWidgetVisibilitySettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8575520;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

id __71__CHUISWidgetVisibilitySettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"settled"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"focal"];
  return [*(a1 + 32) appendRect:@"visibleBounds" withName:{*(*(a1 + 40) + 16), *(*(a1 + 40) + 24), *(*(a1 + 40) + 32), *(*(a1 + 40) + 40)}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHUISMutableWidgetVisibilitySettings alloc];

  return [(CHUISWidgetVisibilitySettings *)v4 _initWithVisibilitySettings:self];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_BOOL(xdict, "settled", self->_settled);
  xpc_dictionary_set_BOOL(xdict, "focal", self->_focal);
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  BSSerializeCGRectToXPCDictionaryWithKey();
}

- (CHUISWidgetVisibilitySettings)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CHUISWidgetVisibilitySettings *)self init];
  if (v5)
  {
    v5->_settled = xpc_dictionary_get_BOOL(v4, "settled");
    v5->_focal = xpc_dictionary_get_BOOL(v4, "focal");
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    v5->_visibleBounds.origin.x = v6;
    v5->_visibleBounds.origin.y = v7;
    v5->_visibleBounds.size.width = v8;
    v5->_visibleBounds.size.height = v9;
  }

  return v5;
}

@end