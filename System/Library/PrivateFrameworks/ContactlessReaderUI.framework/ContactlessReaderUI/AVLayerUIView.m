@interface AVLayerUIView
+ (Class)layerClass;
- (_TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView)initWithCoder:(id)a3;
- (_TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView)initWithFrame:(CGRect)a3;
@end

@implementation AVLayerUIView

+ (Class)layerClass
{
  sub_243FC9000();

  return swift_getObjCClassFromMetadata();
}

- (_TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_looper) = 0;
  v8 = OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_url;
  v9 = sub_2440D05F0();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for AVLayerUIView(0);
  return [(AVLayerUIView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_looper) = 0;
  v5 = OBJC_IVAR____TtC19ContactlessReaderUIP33_E63B02286265C8C01E0EDA7D0DF4AC0413AVLayerUIView_url;
  v6 = sub_2440D05F0();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for AVLayerUIView(0);
  v7 = a3;
  v8 = [(AVLayerUIView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end