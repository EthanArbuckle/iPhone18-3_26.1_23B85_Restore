@interface HKCDAPDFPrintPageRenderer
- (CGRect)paperRect;
- (CGRect)printableRect;
- (HKCDAPDFPrintPageRenderer)initWithPaperRect:(CGRect)a3 horizontalMargin:(double)a4 verticalMargin:(double)a5;
- (void)drawFooterForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
@end

@implementation HKCDAPDFPrintPageRenderer

- (HKCDAPDFPrintPageRenderer)initWithPaperRect:(CGRect)a3 horizontalMargin:(double)a4 verticalMargin:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = HKCDAPDFPrintPageRenderer;
  v11 = [(HKCDAPDFPrintPageRenderer *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_paperRectOverride.origin.x = x;
    v11->_paperRectOverride.origin.y = y;
    v11->_paperRectOverride.size.width = width;
    v11->_paperRectOverride.size.height = height;
    p_x = &v11->_printableRectOverride.origin.x;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v17 = CGRectInset(v16, a4, a5);
    *p_x = v17.origin.x;
    v12->_printableRectOverride.origin.y = v17.origin.y;
    v12->_printableRectOverride.size.width = v17.size.width;
    v12->_printableRectOverride.size.height = v17.size.height + a5;
    [(UIPrintPageRenderer *)v12 setFooterHeight:a5];
  }

  return v12;
}

- (CGRect)paperRect
{
  x = self->_paperRectOverride.origin.x;
  y = self->_paperRectOverride.origin.y;
  width = self->_paperRectOverride.size.width;
  height = self->_paperRectOverride.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)printableRect
{
  x = self->_printableRectOverride.origin.x;
  y = self->_printableRectOverride.origin.y;
  width = self->_printableRectOverride.size.width;
  height = self->_printableRectOverride.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)drawFooterForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16[3] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:{a3, 8.0}];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"CLINICAL_DOCUMENT_CDA_DISCLOSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  v11 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v11 setAlignment:0];
  v12 = *MEMORY[0x1E69DB688];
  v15[0] = *MEMORY[0x1E69DB648];
  v15[1] = v12;
  v16[0] = v8;
  v16[1] = v11;
  v15[2] = *MEMORY[0x1E69DB650];
  v13 = [MEMORY[0x1E69DC888] grayColor];
  v16[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  [v10 boundingRectWithSize:1 options:v14 attributes:0 context:{width + -20.0, height}];
  [v10 drawInRect:v14 withAttributes:{x + 20.0, y + 10.0}];
}

@end