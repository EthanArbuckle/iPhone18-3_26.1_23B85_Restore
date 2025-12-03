@interface FBSDisplayLayoutElement
- (BOOL)isEqual:(id)equal;
- (CGRect)frame;
- (CGRect)referenceFrame;
- (FBSDisplayLayoutElement)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setOtherSettings:(id)settings;
@end

@implementation FBSDisplayLayoutElement

- (CGRect)referenceFrame
{
  x = self->_referenceFrame.origin.x;
  y = self->_referenceFrame.origin.y;
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:0];
  if (self->_bundleIdentifier && ![(NSString *)self->_identifier isEqualToString:?])
  {
    v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleID"];
  }

  if (!CGRectIsEmpty(self->_frame))
  {
    v6 = [v3 appendRect:@"frame" withName:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
  }

  v7 = [v3 appendInteger:self->_level withName:@"level"];
  if (self->_keyboardFocus)
  {
    [v3 appendString:@"hasKeyboardFocus" withName:0];
  }

  return v3;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (FBSDisplayLayoutElement)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FBSDisplayLayoutElement;
  v5 = [(FBSDisplayLayoutElement *)&v11 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = objc_alloc_init(off_1E76BCA00);
    otherSettings = v5->_otherSettings;
    v5->_otherSettings = v8;

    [(BSMutableSettings *)v5->_otherSettings setDescriptionProvider:v5];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [off_1E76BC9C0 builderWithObject:self ofExpectedClass:objc_opt_class()];
  application = self->_application;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke;
  v48[3] = &unk_1E76BD8B8;
  v7 = equalCopy;
  v49 = v7;
  v8 = [v5 appendBool:application counterpart:v48];
  keyboardFocus = self->_keyboardFocus;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_2;
  v46[3] = &unk_1E76BD8B8;
  v10 = v7;
  v47 = v10;
  v11 = [v5 appendBool:keyboardFocus counterpart:v46];
  fillsDisplayBounds = self->_fillsDisplayBounds;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_3;
  v44[3] = &unk_1E76BD8B8;
  v13 = v10;
  v45 = v13;
  v14 = [v5 appendBool:fillsDisplayBounds counterpart:v44];
  identifier = self->_identifier;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_4;
  v42[3] = &unk_1E76BD8E0;
  v16 = v13;
  v43 = v16;
  v17 = [v5 appendString:identifier counterpart:v42];
  bundleIdentifier = self->_bundleIdentifier;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_5;
  v40[3] = &unk_1E76BD8E0;
  v19 = v16;
  v41 = v19;
  v20 = [v5 appendString:bundleIdentifier counterpart:v40];
  level = self->_level;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_6;
  v38[3] = &unk_1E76BD908;
  v22 = v19;
  v39 = v22;
  v23 = [v5 appendInteger:level counterpart:v38];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_7;
  v36[3] = &unk_1E76BD930;
  v24 = v22;
  v37 = v24;
  v25 = [v5 appendCGRect:v36 counterpart:{self->_referenceFrame.origin.x, self->_referenceFrame.origin.y, self->_referenceFrame.size.width, self->_referenceFrame.size.height}];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_8;
  v34[3] = &unk_1E76BD930;
  v26 = v24;
  v35 = v26;
  v27 = [v5 appendCGRect:v34 counterpart:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
  otherSettings = self->_otherSettings;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __35__FBSDisplayLayoutElement_isEqual___block_invoke_9;
  v32[3] = &unk_1E76BD958;
  v33 = v26;
  v29 = v26;
  v30 = [v5 appendObject:otherSettings counterpart:v32];
  LOBYTE(v26) = [v5 isEqual];

  return v26;
}

- (void)setOtherSettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = self->_otherSettings;
  if (otherSettings != settingsCopy)
  {
    v8 = settingsCopy;
    [(BSMutableSettings *)otherSettings setDescriptionProvider:0];
    if (v8)
    {
      v6 = [(BSMutableSettings *)v8 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(off_1E76BCA00);
    }

    v7 = self->_otherSettings;
    self->_otherSettings = v6;

    otherSettings = [(BSMutableSettings *)self->_otherSettings setDescriptionProvider:self];
    settingsCopy = v8;
  }

  MEMORY[0x1EEE66BB8](otherSettings, settingsCopy);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSDisplayLayoutElement *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSDisplayLayoutElement *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:self->_identifier];
  [v4 setFrame:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
  [v4 setReferenceFrame:{self->_referenceFrame.origin.x, self->_referenceFrame.origin.y, self->_referenceFrame.size.width, self->_referenceFrame.size.height}];
  [v4 setLevel:self->_level];
  [v4 setFillsDisplayBounds:self->_fillsDisplayBounds];
  [v4 setUIApplicationElement:self->_application];
  [v4 setBundleIdentifier:self->_bundleIdentifier];
  [v4 setHasKeyboardFocus:self->_keyboardFocus];
  if (([(BSMutableSettings *)self->_otherSettings isEmpty]& 1) == 0)
  {
    [v4 setOtherSettings:self->_otherSettings];
  }

  return v4;
}

@end