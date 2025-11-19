@interface CCUIToggleModule
- (NSString)title;
- (UIImageView)glyphImageView;
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation CCUIToggleModule

- (NSString)title
{
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = [MEMORY[0x1E696AAE8] ccui_bundleForModuleInstance:self];
    v5 = [v4 ccui_displayName];
    v6 = self->_displayName;
    self->_displayName = v5;

    displayName = self->_displayName;
  }

  return displayName;
}

- (id)contentViewControllerForContext:(id)a3
{
  v4 = objc_alloc_init(CCUIToggleViewController);
  [(CCUIToggleViewController *)v4 setModule:self];
  objc_storeStrong(&self->_contentViewController, v4);

  return v4;
}

- (UIImageView)glyphImageView
{
  v2 = [(CCUIButtonModuleViewController *)self->_contentViewController buttonView];
  v3 = [v2 glyphImageView];

  return v3;
}

@end