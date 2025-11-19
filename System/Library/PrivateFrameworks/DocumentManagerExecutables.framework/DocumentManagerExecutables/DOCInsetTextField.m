@interface DOCInsetTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithFrame:(CGRect)a3;
@end

@implementation DOCInsetTextField

- (CGRect)textRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (CGRect)editingRectForBounds:(CGRect)a3
{
  [(DOCInsetTextField *)self textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCInsetTextField();
  return [(DOCInsetTextField *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1217DOCInsetTextField)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCInsetTextField();
  v4 = a3;
  v5 = [(DOCInsetTextField *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end