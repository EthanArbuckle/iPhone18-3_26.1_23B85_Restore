@interface SUUIJSColor
- (SUUIJSColor)initWithAppContext:(id)a3 color:(id)a4;
@end

@implementation SUUIJSColor

- (SUUIJSColor)initWithAppContext:(id)a3 color:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SUUIJSColor;
  v7 = [(IKJSObject *)&v13 initWithAppContext:a3];
  v8 = v7;
  if (v6 && v7)
  {
    v11 = 0.0;
    v12 = 0.0;
    v10 = 0.0;
    [v6 getRed:&v12 green:&v11 blue:&v10 alpha:&v7->_alpha];
    v8->_red = (v12 * 255.0);
    v8->_green = (v11 * 255.0);
    v8->_blue = (v10 * 255.0);
  }

  return v8;
}

@end