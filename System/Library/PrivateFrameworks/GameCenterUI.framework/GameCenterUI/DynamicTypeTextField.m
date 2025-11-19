@interface DynamicTypeTextField
- (BOOL)jet_isTextExtraTall;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (UIEdgeInsets)jet_languageAwareOutsets;
- (UIFont)font;
- (int64_t)jet_textLength;
- (int64_t)textAlignment;
- (void)setFont:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DynamicTypeTextField

- (BOOL)jet_isTextExtraTall
{
  v2 = self;
  v3 = sub_24E01C398();

  return v3 & 1;
}

- (UIEdgeInsets)jet_languageAwareOutsets
{
  v2 = self;
  sub_24E01C51C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (int64_t)jet_textLength
{
  v2 = self;
  v3 = sub_24E01C5DC();

  return v3;
}

- (UIFont)font
{
  v2 = self;
  v3 = sub_24E2D2410();

  return v3;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E2D24B8(a3);
}

- (int64_t)textAlignment
{
  v2 = self;
  v3 = sub_24E2D25BC();

  return v3;
}

- (void)setTextAlignment:(int64_t)a3
{
  v4 = self;
  sub_24E2D2648(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E2D27B8(a3);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_24E2D2AF0(a4, width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  v3 = sub_24E2D2D48();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v3 = sub_24E2D2D48();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end