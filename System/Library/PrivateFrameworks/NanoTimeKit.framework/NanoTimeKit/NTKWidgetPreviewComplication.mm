@interface NTKWidgetPreviewComplication
+ (id)complicationWithViewController:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation NTKWidgetPreviewComplication

+ (id)complicationWithViewController:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithComplicationType:56];
  v6 = v5[4];
  v5[4] = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CHUISWidgetPreviewHosting *)self->_viewController isEqual:v4[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end