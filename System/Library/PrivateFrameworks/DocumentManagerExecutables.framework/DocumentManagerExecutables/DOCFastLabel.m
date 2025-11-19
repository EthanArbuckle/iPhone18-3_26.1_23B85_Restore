@interface DOCFastLabel
- (BOOL)_enableMonochromaticTreatment;
- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4;
- (CGSize)doc_effectiveContentSize;
- (NSAttributedString)attributedText;
- (NSString)text;
- (double)contentScaleFactor;
- (void)_setEnableMonochromaticTreatment:(BOOL)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setContentScaleFactor:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DOCFastLabel

- (BOOL)_enableMonochromaticTreatment
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_disableWorkaroundFor160718780) != 1)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCFastLabel();
  return [(DOCFastLabel *)&v5 _enableMonochromaticTreatment];
}

- (void)_setEnableMonochromaticTreatment:(BOOL)a3
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_disableWorkaroundFor160718780) == 1)
  {
    v7 = v3;
    v8 = v4;
    v5 = a3;
    v6.receiver = self;
    v6.super_class = type metadata accessor for DOCFastLabel();
    [(DOCFastLabel *)&v6 _setEnableMonochromaticTreatment:v5];
  }
}

- (NSString)text
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCFastLabel();
  v2 = v10.receiver;
  v3 = [(DOCFastLabel *)&v10 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (NSAttributedString)attributedText
{
  v2 = self;
  v3 = DOCFastLabel.attributedText.getter();

  return v3;
}

- (double)contentScaleFactor
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCFastLabel();
  [(DOCFastLabel *)&v3 contentScaleFactor];
  return result;
}

- (void)setContentScaleFactor:(double)a3
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for DOCFastLabel();
  v4 = v12.receiver;
  [(DOCFastLabel *)&v12 setContentScaleFactor:a3];
  v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer];
  v6 = [v4 layer];
  [v6 contentsScale];
  v8 = v7;

  [v5 setContentsScale_];
  v9 = [v4 layer];
  [v9 rasterizationScale];
  v11 = v10;

  [v5 setRasterizationScale_];
}

- (CGRect)textRectForBounds:(CGRect)a3 limitedToNumberOfLines:(int64_t)a4
{
  v4 = self;
  v5 = specialized DOCFastLabel.textRect(forBounds:limitedToNumberOfLines:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  DOCFastLabel.layoutSubviews()();
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCFastLabel();
  v2 = v4.receiver;
  [(DOCFastLabel *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    DOCFastLabel.FastLabelLayer.traitCollection.setter([v2 traitCollection]);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCFastLabel();
  v4 = a3;
  v5 = v6.receiver;
  [(DOCFastLabel *)&v6 traitCollectionDidChange:v4];
  DOCFastLabel.FastLabelLayer.traitCollection.setter([v5 traitCollection]);
}

- (CGSize)doc_effectiveContentSize
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCFastLabel_textLayer) frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

@end