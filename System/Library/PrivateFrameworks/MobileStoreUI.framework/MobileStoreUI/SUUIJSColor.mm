@interface SUUIJSColor
- (SUUIJSColor)initWithAppContext:(id)context color:(id)color;
@end

@implementation SUUIJSColor

- (SUUIJSColor)initWithAppContext:(id)context color:(id)color
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = SUUIJSColor;
  v7 = [(IKJSObject *)&v13 initWithAppContext:context];
  v8 = v7;
  if (colorCopy && v7)
  {
    v11 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    [colorCopy getRed:&v12 green:&v11 blue:&v10 alpha:&v7->_alpha];
    v8->_red = (v12 * 255.0);
    v8->_green = (v11 * 255.0);
    v8->_blue = (v10 * 255.0);
  }

  return v8;
}

@end