@interface MUVendorLinkMenuItemViewModel
- (MUVendorLinkMenuItemViewModel)initWithTitle:(id)a3 image:(id)a4 vendorLinkViewModel:(id)a5;
- (MUVendorLinkMenuItemViewModelUpdateDelegate)updateDelegate;
- (NSString)identifier;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MUVendorLinkMenuItemViewModel

- (MUVendorLinkMenuItemViewModelUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  p_image = &self->_image;
  if (self->_image != v5)
  {
    v8 = v5;
    objc_storeStrong(p_image, a3);
    v7 = [(MUVendorLinkMenuItemViewModel *)self updateDelegate];
    [v7 vendorLinkMenuItemViewModelDidUpdate:self];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_image, v5);
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  p_title = &self->_title;
  if (self->_title != v5)
  {
    v8 = v5;
    objc_storeStrong(p_title, a3);
    v7 = [(MUVendorLinkMenuItemViewModel *)self updateDelegate];
    [v7 vendorLinkMenuItemViewModelDidUpdate:self];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_title, v5);
}

- (NSString)identifier
{
  v2 = [(MUVendorLinkMenuItemViewModel *)self vendorLinkViewModel];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (MUVendorLinkMenuItemViewModel)initWithTitle:(id)a3 image:(id)a4 vendorLinkViewModel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MUVendorLinkMenuItemViewModel;
  v12 = [(MUVendorLinkMenuItemViewModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_image, a4);
    objc_storeStrong(&v13->_vendorLinkViewModel, a5);
  }

  return v13;
}

@end