@interface DOCInsetTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithFrame:(CGRect)frame;
@end

@implementation DOCInsetTextField

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  v8 = DOCInsetTextField.textRect(forBounds:)(x, y, width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  [(DOCInsetTextField *)self textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCInsetTextField();
  return [(DOCInsetTextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCInsetTextField();
  coderCopy = coder;
  v5 = [(DOCInsetTextField *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end