@interface PXConcretePhotosLensControlItem
- (BOOL)isEqual:(id)a3;
- (PXConcretePhotosLensControlItem)initWithIdentifier:(id)a3 title:(id)a4 symbolName:(id)a5;
- (void)setCustomTitle:(id)a3;
@end

@implementation PXConcretePhotosLensControlItem

- (void)setCustomTitle:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v6 copy];
    title = self->_title;
    self->_title = v4;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = [(NSString *)identifier isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXConcretePhotosLensControlItem)initWithIdentifier:(id)a3 title:(id)a4 symbolName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXConcretePhotosLensControlItem;
  v12 = [(PXConcretePhotosLensControlItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_title, a4);
    objc_storeStrong(&v13->_symbolName, a5);
  }

  return v13;
}

@end