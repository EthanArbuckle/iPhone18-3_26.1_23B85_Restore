@interface TracklessSlider
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithCoder:(id)a3;
- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithFrame:(CGRect)a3;
@end

@implementation TracklessSlider

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = self;
  v10 = sub_20D0841A4(x, y, width, height, a5);
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

- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TracklessSlider();
  return [(TracklessSlider *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6HomeUIP33_924B9BACA428215473DADD2D3F844A0415TracklessSlider)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TracklessSlider();
  v4 = a3;
  v5 = [(TracklessSlider *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end