@interface BCSBusinessLinkContentItemModel
- (BCSBusinessLinkContentItemModel)initWithBusinessLinkContent:(id)content;
- (BCSBusinessLinkContentItemModel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithTitle:(void *)title subtitle:(void *)subtitle language:(char)language isDefault:;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSBusinessLinkContentItemModel

- (BCSBusinessLinkContentItemModel)initWithBusinessLinkContent:(id)content
{
  contentCopy = content;
  title = [contentCopy title];
  subtitle = [contentCopy subtitle];
  language = [contentCopy language];
  isDefault = [contentCopy isDefault];

  v9 = [(BCSBusinessLinkContentItemModel *)self initWithTitle:title subtitle:subtitle language:language isDefault:isDefault];
  return v9;
}

- (id)initWithTitle:(void *)title subtitle:(void *)subtitle language:(char)language isDefault:
{
  v9 = a2;
  titleCopy = title;
  subtitleCopy = subtitle;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = BCSBusinessLinkContentItemModel;
    self = objc_msgSendSuper2(&v19, sel_init);
    if (self)
    {
      v12 = [v9 copy];
      v13 = *(self + 1);
      *(self + 1) = v12;

      v14 = [titleCopy copy];
      v15 = *(self + 2);
      *(self + 2) = v14;

      v16 = [subtitleCopy copy];
      v17 = *(self + 3);
      *(self + 3) = v16;

      *(self + 32) = language;
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"BCSBusinessLinkContentItemModelTitleKey"];
  [coderCopy encodeObject:self->_subtitle forKey:@"BCSBusinessLinkContentItemModelSubtitleKey"];
  [coderCopy encodeObject:self->_language forKey:@"BCSBusinessLinkContentItemModelLangaugeKey"];
  [coderCopy encodeBool:self->_isDefault forKey:@"BCSBusinessLinkContentItemModelIsDefaultKey"];
}

- (BCSBusinessLinkContentItemModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSBusinessLinkContentItemModelTitleKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSBusinessLinkContentItemModelSubtitleKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSBusinessLinkContentItemModelLangaugeKey"];
  v8 = [coderCopy decodeBoolForKey:@"BCSBusinessLinkContentItemModelIsDefaultKey"];

  v9 = [(BCSBusinessLinkContentItemModel *)self initWithTitle:v5 subtitle:v6 language:v7 isDefault:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    title = [(BCSBusinessLinkContentItemModel *)self title];
    v7 = [title copyWithZone:zone];
    v8 = *(v5 + 8);
    *(v5 + 8) = v7;

    subtitle = [(BCSBusinessLinkContentItemModel *)self subtitle];
    v10 = [subtitle copyWithZone:zone];
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;

    language = [(BCSBusinessLinkContentItemModel *)self language];
    v13 = [language copyWithZone:zone];
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
  succinctDescriptionBuilder = [(BCSBusinessLinkContentItemModel *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCSBusinessLinkContentItemModel *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end