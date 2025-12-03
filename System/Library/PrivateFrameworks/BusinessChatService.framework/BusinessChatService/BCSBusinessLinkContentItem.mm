@interface BCSBusinessLinkContentItem
- (BOOL)isDefault;
- (NSString)description;
- (NSString)language;
- (NSString)subtitle;
- (NSString)title;
- (id)initWithBusinessLinkContentItemModel:(id *)model;
@end

@implementation BCSBusinessLinkContentItem

- (id)initWithBusinessLinkContentItemModel:(id *)model
{
  v4 = a2;
  if (model)
  {
    v7.receiver = model;
    v7.super_class = BCSBusinessLinkContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    model = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return model;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self)
  {
    businessLinkContentItemModel = self->_businessLinkContentItemModel;
  }

  else
  {
    businessLinkContentItemModel = 0;
  }

  v6 = [v3 appendObject:businessLinkContentItemModel withName:@"businessLinkContentItemModel"];
  build = [v4 build];

  return build;
}

- (BOOL)isDefault
{
  if (self)
  {
    businessLinkContentItemModel = self->_businessLinkContentItemModel;
    if (businessLinkContentItemModel)
    {
      LOBYTE(businessLinkContentItemModel) = businessLinkContentItemModel->_isDefault;
    }
  }

  else
  {
    LOBYTE(businessLinkContentItemModel) = 0;
  }

  return businessLinkContentItemModel & 1;
}

- (NSString)title
{
  if (self)
  {
    self = self->_businessLinkContentItemModel;
  }

  return [(BCSBusinessLinkContentItem *)self title];
}

- (NSString)subtitle
{
  if (self)
  {
    self = self->_businessLinkContentItemModel;
  }

  return [(BCSBusinessLinkContentItem *)self subtitle];
}

- (NSString)language
{
  if (self)
  {
    self = self->_businessLinkContentItemModel;
  }

  return [(BCSBusinessLinkContentItem *)self language];
}

@end