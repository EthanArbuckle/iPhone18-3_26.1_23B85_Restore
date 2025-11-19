@interface NUTextAndGlyph
- (NUTextAndGlyph)initWithAttributedText:(id)a3 glyph:(id)a4;
- (NUTextAndGlyph)initWithAttributedText:(id)a3 text:(id)a4 glyph:(id)a5;
@end

@implementation NUTextAndGlyph

- (NUTextAndGlyph)initWithAttributedText:(id)a3 text:(id)a4 glyph:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NUTextAndGlyph;
  v12 = [(NUTextAndGlyph *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_attributedText, a3);
    objc_storeStrong(&v13->_text, a4);
    objc_storeStrong(&v13->_glyph, a5);
    v13->_alignment = 0;
  }

  return v13;
}

- (NUTextAndGlyph)initWithAttributedText:(id)a3 glyph:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 string];
  v9 = [(NUTextAndGlyph *)self initWithAttributedText:v7 text:v8 glyph:v6];

  return v9;
}

@end