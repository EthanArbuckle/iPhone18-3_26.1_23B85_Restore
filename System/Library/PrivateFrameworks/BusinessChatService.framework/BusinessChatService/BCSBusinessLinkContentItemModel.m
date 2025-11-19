@interface BCSBusinessLinkContentItemModel
- (BCSBusinessLinkContentItemModel)initWithBusinessLinkContent:(id)a3;
- (BCSBusinessLinkContentItemModel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithTitle:(void *)a3 subtitle:(void *)a4 language:(char)a5 isDefault:;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSBusinessLinkContentItemModel

- (BCSBusinessLinkContentItemModel)initWithBusinessLinkContent:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 subtitle];
  v7 = [v4 language];
  v8 = [v4 isDefault];

  v9 = [(BCSBusinessLinkContentItemModel *)self initWithTitle:v5 subtitle:v6 language:v7 isDefault:v8];
  return v9;
}

- (id)initWithTitle:(void *)a3 subtitle:(void *)a4 language:(char)a5 isDefault:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = BCSBusinessLinkContentItemModel;
    a1 = objc_msgSendSuper2(&v19, sel_init);
    if (a1)
    {
      v12 = [v9 copy];
      v13 = *(a1 + 1);
      *(a1 + 1) = v12;

      v14 = [v10 copy];
      v15 = *(a1 + 2);
      *(a1 + 2) = v14;

      v16 = [v11 copy];
      v17 = *(a1 + 3);
      *(a1 + 3) = v16;

      *(a1 + 32) = a5;
    }
  }

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"BCSBusinessLinkContentItemModelTitleKey"];
  [v5 encodeObject:self->_subtitle forKey:@"BCSBusinessLinkContentItemModelSubtitleKey"];
  [v5 encodeObject:self->_language forKey:@"BCSBusinessLinkContentItemModelLangaugeKey"];
  [v5 encodeBool:self->_isDefault forKey:@"BCSBusinessLinkContentItemModelIsDefaultKey"];
}

- (BCSBusinessLinkContentItemModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSBusinessLinkContentItemModelTitleKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSBusinessLinkContentItemModelSubtitleKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSBusinessLinkContentItemModelLangaugeKey"];
  v8 = [v4 decodeBoolForKey:@"BCSBusinessLinkContentItemModelIsDefaultKey"];

  v9 = [(BCSBusinessLinkContentItemModel *)self initWithTitle:v5 subtitle:v6 language:v7 isDefault:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSBusinessLinkContentItemModel *)self title];
    v7 = [v6 copyWithZone:a3];
    v8 = *(v5 + 8);
    *(v5 + 8) = v7;

    v9 = [(BCSBusinessLinkContentItemModel *)self subtitle];
    v10 = [v9 copyWithZone:a3];
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;

    v12 = [(BCSBusinessLinkContentItemModel *)self language];
    v13 = [v12 copyWithZone:a3];
    v14 = *(v5 + 24);
    *(v5 + 24) = v13;

    if (self)
    {
      isDefault = self->_isDefault;
    }

    else
    {
      isDefault = 0;
    }

    *(v5 + 32) = isDefault;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(BCSBusinessLinkContentItemModel *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_title withName:@"title"];
  v5 = [v3 appendObject:self->_subtitle withName:@"subtitle"];
  v6 = [v3 appendObject:self->_language withName:@"language"];
  v7 = [v3 appendBool:self->_isDefault withName:@"isDefault" ifEqualTo:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BCSBusinessLinkContentItemModel *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end