@interface TracklessSlider
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithCoder:(id)coder;
- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithFrame:(CGRect)frame;
@end

@implementation TracklessSlider

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  v10 = sub_20D0841A4(x, y, width, height, value);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TracklessSlider();
  return [(TracklessSlider *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TracklessSlider();
  coderCopy = coder;
  v5 = [(TracklessSlider *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end