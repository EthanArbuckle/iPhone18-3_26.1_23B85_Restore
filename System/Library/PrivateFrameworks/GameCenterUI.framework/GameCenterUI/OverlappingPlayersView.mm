@interface OverlappingPlayersView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (void)applyWithPlayerAvatars:(id)a3 playerSize:(CGSize)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation OverlappingPlayersView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_24E07AE2C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E07AFB8();
}

- (void)applyWithPlayerAvatars:(id)a3 playerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  sub_24DF88A8C(0, &qword_280BE0110);
  v7 = sub_24E347F08();
  v8 = self;
  sub_24E07B19C(v7, width, height);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24E07B400();
}

@end