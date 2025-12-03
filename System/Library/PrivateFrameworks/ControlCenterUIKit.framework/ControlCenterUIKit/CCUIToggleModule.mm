@interface CCUIToggleModule
- (NSString)title;
- (UIImageView)glyphImageView;
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIToggleModule

- (NSString)title
{
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = [MEMORY[0x1E696AAE8] ccui_bundleForModuleInstance:self];
    ccui_displayName = [v4 ccui_displayName];
    v6 = self->_displayName;
    self->_displayName = ccui_displayName;

    displayName = self->_displayName;
  }

  return displayName;
}

- (id)contentViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(CCUIToggleViewController);
  [(CCUIToggleViewController *)v4 setModule:self];
  objc_storeStrong(&self->_contentViewController, v4);

  return v4;
}

- (UIImageView)glyphImageView
{
  buttonView = [(CCUIButtonModuleViewController *)self->_contentViewController buttonView];
  glyphImageView = [buttonView glyphImageView];

  return glyphImageView;
}

@end