@interface PBUIFakeBlurConfiguration
- (BOOL)isEqual:(id)equal;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)initWithVariant:(uint64_t)variant style:(void *)style traitCollection:;
@end

@implementation PBUIFakeBlurConfiguration

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_variant];
  v5 = [builder appendInteger:self->_requestedStyle];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  variant = self->_variant;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__PBUIFakeBlurConfiguration_isEqual___block_invoke;
  v20[3] = &unk_278362E88;
  v8 = v6;
  v21 = v8;
  v9 = [v5 appendInteger:variant counterpart:v20];
  requestedStyle = self->_requestedStyle;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__PBUIFakeBlurConfiguration_isEqual___block_invoke_2;
  v18[3] = &unk_278362E88;
  v11 = v8;
  v19 = v11;
  v12 = [v5 appendInteger:requestedStyle counterpart:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__PBUIFakeBlurConfiguration_isEqual___block_invoke_3;
  v16[3] = &unk_278362EB0;
  v16[4] = self;
  v17 = v11;
  v13 = v11;
  v14 = [v5 appendEqualsBlocks:{v16, 0}];
  LOBYTE(requestedStyle) = [v5 isEqual];

  return requestedStyle;
}

uint64_t __37__PBUIFakeBlurConfiguration_isEqual___block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) containsTraitsInCollection:*(*(a1 + 40) + 24)])
  {
    return 1;
  }

  v3 = *(*(a1 + 40) + 24);
  v4 = *(*(a1 + 32) + 24);

  return [v3 containsTraitsInCollection:v4];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIFakeBlurConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIStringForWallpaperVariant(self->_variant);
  [v4 appendString:v5 withName:@"variant"];

  v6 = PBUIWallpaperStyleDescription(self->_requestedStyle);
  [v4 appendString:v6 withName:@"requestedStyle"];

  v7 = _UIUserInterfaceStyleDescription([(UITraitCollection *)self->_traitCollection userInterfaceStyle]);
  v8 = [v4 appendObject:v7 withName:@"traitCollection.userInterfaceStyle"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIFakeBlurConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)initWithVariant:(uint64_t)variant style:(void *)style traitCollection:
{
  styleCopy = style;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = PBUIFakeBlurConfiguration;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      v8[1] = a2;
      v8[2] = variant;
      v9 = [styleCopy copy];
      v10 = self[3];
      self[3] = v9;
    }
  }

  return self;
}

@end