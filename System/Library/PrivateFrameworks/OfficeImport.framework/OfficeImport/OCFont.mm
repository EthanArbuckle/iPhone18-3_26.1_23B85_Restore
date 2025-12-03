@interface OCFont
+ (id)fontWithSubfamily:(id)subfamily bold:(BOOL)bold italic:(BOOL)italic;
- (OCFont)initWithSubfamily:(id)subfamily bold:(BOOL)bold italic:(BOOL)italic;
@end

@implementation OCFont

- (OCFont)initWithSubfamily:(id)subfamily bold:(BOOL)bold italic:(BOOL)italic
{
  subfamilyCopy = subfamily;
  v13.receiver = self;
  v13.super_class = OCFont;
  v10 = [(OCFont *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_subfamily, subfamily);
    v11->_bold = bold;
    v11->_italic = italic;
  }

  return v11;
}

+ (id)fontWithSubfamily:(id)subfamily bold:(BOOL)bold italic:(BOOL)italic
{
  italicCopy = italic;
  boldCopy = bold;
  subfamilyCopy = subfamily;
  v8 = [[OCFont alloc] initWithSubfamily:subfamilyCopy bold:boldCopy italic:italicCopy];

  return v8;
}

@end