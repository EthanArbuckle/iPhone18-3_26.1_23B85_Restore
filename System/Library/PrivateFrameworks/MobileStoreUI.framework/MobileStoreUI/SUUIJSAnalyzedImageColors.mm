@interface SUUIJSAnalyzedImageColors
- (SUUIJSAnalyzedImageColors)initWithAppContext:(id)context analyzedImageColors:(id)colors;
@end

@implementation SUUIJSAnalyzedImageColors

- (SUUIJSAnalyzedImageColors)initWithAppContext:(id)context analyzedImageColors:(id)colors
{
  contextCopy = context;
  colorsCopy = colors;
  v22.receiver = self;
  v22.super_class = SUUIJSAnalyzedImageColors;
  v8 = [(IKJSObject *)&v22 initWithAppContext:contextCopy];
  if (v8)
  {
    v9 = [SUUIJSColor alloc];
    backgroundColor = [colorsCopy backgroundColor];
    v11 = [(SUUIJSColor *)v9 initWithAppContext:contextCopy color:backgroundColor];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v11;

    v13 = [SUUIJSColor alloc];
    textPrimaryColor = [colorsCopy textPrimaryColor];
    v15 = [(SUUIJSColor *)v13 initWithAppContext:contextCopy color:textPrimaryColor];
    textPrimaryColor = v8->_textPrimaryColor;
    v8->_textPrimaryColor = v15;

    v17 = [SUUIJSColor alloc];
    textSecondaryColor = [colorsCopy textSecondaryColor];
    v19 = [(SUUIJSColor *)v17 initWithAppContext:contextCopy color:textSecondaryColor];
    textSecondaryColor = v8->_textSecondaryColor;
    v8->_textSecondaryColor = v19;

    v8->_isBackgroundLight = [colorsCopy isBackgroundLight];
  }

  return v8;
}

@end