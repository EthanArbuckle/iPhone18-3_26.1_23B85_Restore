@interface TranscriptButton
- (NSString)accessibilityLabel;
- (_TtC16MagnifierSupport16TranscriptButton)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport16TranscriptButton)initWithFrame:(CGRect)a3;
@end

@implementation TranscriptButton

- (_TtC16MagnifierSupport16TranscriptButton)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TranscriptButton();
  v4 = a3;
  v5 = [(TranscriptButton *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_257D2E134();
  }

  return v6;
}

- (_TtC16MagnifierSupport16TranscriptButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TranscriptButton();
  v7 = [(TranscriptButton *)&v10 initWithFrame:x, y, width, height];
  sub_257D2E134();
  [(TranscriptButton *)v7 setShowsLargeContentViewer:1];
  [(TranscriptButton *)v7 setScalesLargeContentImage:1];
  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [(TranscriptButton *)v7 addInteraction:v8];

  return v7;
}

- (NSString)accessibilityLabel
{
  sub_257D2EABC();
  if (v2)
  {
    v3 = sub_257ECF4C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end