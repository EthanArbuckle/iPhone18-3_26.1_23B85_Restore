@interface MUVendorLinkMenuItemViewModel
- (MUVendorLinkMenuItemViewModel)initWithTitle:(id)title image:(id)image vendorLinkViewModel:(id)model;
- (MUVendorLinkMenuItemViewModelUpdateDelegate)updateDelegate;
- (NSString)identifier;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
@end

@implementation MUVendorLinkMenuItemViewModel

- (MUVendorLinkMenuItemViewModelUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  p_image = &self->_image;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(p_image, image);
    updateDelegate = [(MUVendorLinkMenuItemViewModel *)self updateDelegate];
    [updateDelegate vendorLinkMenuItemViewModelDidUpdate:self];

    imageCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_image, imageCopy);
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  p_title = &self->_title;
  if (self->_title != titleCopy)
  {
    v8 = titleCopy;
    objc_storeStrong(p_title, title);
    updateDelegate = [(MUVendorLinkMenuItemViewModel *)self updateDelegate];
    [updateDelegate vendorLinkMenuItemViewModelDidUpdate:self];

    titleCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_title, titleCopy);
}

- (NSString)identifier
{
  vendorLinkViewModel = [(MUVendorLinkMenuItemViewModel *)self vendorLinkViewModel];
  uniqueIdentifier = [vendorLinkViewModel uniqueIdentifier];

  return uniqueIdentifier;
}

- (MUVendorLinkMenuItemViewModel)initWithTitle:(id)title image:(id)image vendorLinkViewModel:(id)model
{
  titleCopy = title;
  imageCopy = image;
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = MUVendorLinkMenuItemViewModel;
  v12 = [(MUVendorLinkMenuItemViewModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_image, image);
    objc_storeStrong(&v13->_vendorLinkViewModel, model);
  }

  return v13;
}

@end