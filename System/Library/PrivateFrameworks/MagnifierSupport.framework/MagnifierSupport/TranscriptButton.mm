@interface TranscriptButton
- (NSString)accessibilityLabel;
- (_TtC16MagnifierSupport16TranscriptButton)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport16TranscriptButton)initWithFrame:(CGRect)frame;
@end

@implementation TranscriptButton

- (_TtC16MagnifierSupport16TranscriptButton)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TranscriptButton();
  coderCopy = coder;
  v5 = [(TranscriptButton *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_257D2E134();
  }

  return v6;
}

- (_TtC16MagnifierSupport16TranscriptButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TranscriptButton();
  height = [(TranscriptButton *)&v10 initWithFrame:x, y, width, height];
  sub_257D2E134();
  [(TranscriptButton *)height setShowsLargeContentViewer:1];
  [(TranscriptButton *)height setScalesLargeContentImage:1];
  v8 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [(TranscriptButton *)height addInteraction:v8];

  return height;
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