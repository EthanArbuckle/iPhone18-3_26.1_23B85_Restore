@interface SUUIJSAnalyzedImageColors
- (SUUIJSAnalyzedImageColors)initWithAppContext:(id)a3 analyzedImageColors:(id)a4;
@end

@implementation SUUIJSAnalyzedImageColors

- (SUUIJSAnalyzedImageColors)initWithAppContext:(id)a3 analyzedImageColors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = SUUIJSAnalyzedImageColors;
  v8 = [(IKJSObject *)&v22 initWithAppContext:v6];
  if (v8)
  {
    v9 = [SUUIJSColor alloc];
    v10 = [v7 backgroundColor];
    v11 = [(SUUIJSColor *)v9 initWithAppContext:v6 color:v10];
    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v11;

    v13 = [SUUIJSColor alloc];
    v14 = [v7 textPrimaryColor];
    v15 = [(SUUIJSColor *)v13 initWithAppContext:v6 color:v14];
    textPrimaryColor = v8->_textPrimaryColor;
    v8->_textPrimaryColor = v15;

    v17 = [SUUIJSColor alloc];
    v18 = [v7 textSecondaryColor];
    v19 = [(SUUIJSColor *)v17 initWithAppContext:v6 color:v18];
    textSecondaryColor = v8->_textSecondaryColor;
    v8->_textSecondaryColor = v19;

    v8->_isBackgroundLight = [v7 isBackgroundLight];
  }

  return v8;
}

@end