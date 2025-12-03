@interface NUTextAndGlyph
- (NUTextAndGlyph)initWithAttributedText:(id)text glyph:(id)glyph;
- (NUTextAndGlyph)initWithAttributedText:(id)text text:(id)a4 glyph:(id)glyph;
@end

@implementation NUTextAndGlyph

- (NUTextAndGlyph)initWithAttributedText:(id)text text:(id)a4 glyph:(id)glyph
{
  textCopy = text;
  v10 = a4;
  glyphCopy = glyph;
  v15.receiver = self;
  v15.super_class = NUTextAndGlyph;
  v12 = [(NUTextAndGlyph *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_attributedText, text);
    objc_storeStrong(&v13->_text, a4);
    objc_storeStrong(&v13->_glyph, glyph);
    v13->_alignment = 0;
  }

  return v13;
}

- (NUTextAndGlyph)initWithAttributedText:(id)text glyph:(id)glyph
{
  glyphCopy = glyph;
  textCopy = text;
  string = [textCopy string];
  v9 = [(NUTextAndGlyph *)self initWithAttributedText:textCopy text:string glyph:glyphCopy];

  return v9;
}

@end