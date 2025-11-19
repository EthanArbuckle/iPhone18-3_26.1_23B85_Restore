@interface OCFont
+ (id)fontWithSubfamily:(id)a3 bold:(BOOL)a4 italic:(BOOL)a5;
- (OCFont)initWithSubfamily:(id)a3 bold:(BOOL)a4 italic:(BOOL)a5;
@end

@implementation OCFont

- (OCFont)initWithSubfamily:(id)a3 bold:(BOOL)a4 italic:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = OCFont;
  v10 = [(OCFont *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_subfamily, a3);
    v11->_bold = a4;
    v11->_italic = a5;
  }

  return v11;
}

+ (id)fontWithSubfamily:(id)a3 bold:(BOOL)a4 italic:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [[OCFont alloc] initWithSubfamily:v7 bold:v6 italic:v5];

  return v8;
}

@end