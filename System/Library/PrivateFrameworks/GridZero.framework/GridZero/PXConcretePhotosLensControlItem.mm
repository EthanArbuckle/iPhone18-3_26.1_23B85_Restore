@interface PXConcretePhotosLensControlItem
- (BOOL)isEqual:(id)equal;
- (PXConcretePhotosLensControlItem)initWithIdentifier:(id)identifier title:(id)title symbolName:(id)name;
- (void)setCustomTitle:(id)title;
@end

@implementation PXConcretePhotosLensControlItem

- (void)setCustomTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = [(NSString *)identifier isEqualToString:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXConcretePhotosLensControlItem)initWithIdentifier:(id)identifier title:(id)title symbolName:(id)name
{
  identifierCopy = identifier;
  titleCopy = title;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PXConcretePhotosLensControlItem;
  v12 = [(PXConcretePhotosLensControlItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_symbolName, name);
  }

  return v13;
}

@end