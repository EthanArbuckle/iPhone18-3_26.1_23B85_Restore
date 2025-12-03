@interface NTKWidgetPreviewComplication
+ (id)complicationWithViewController:(id)controller;
- (BOOL)isEqual:(id)equal;
@end

@implementation NTKWidgetPreviewComplication

+ (id)complicationWithViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [[self alloc] initWithComplicationType:56];
  v6 = v5[4];
  v5[4] = controllerCopy;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CHUISWidgetPreviewHosting *)self->_viewController isEqual:equalCopy[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end