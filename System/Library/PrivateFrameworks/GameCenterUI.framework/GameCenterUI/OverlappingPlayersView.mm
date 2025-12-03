@interface OverlappingPlayersView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (void)applyWithPlayerAvatars:(id)avatars playerSize:(CGSize)size;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation OverlappingPlayersView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24DFB64A4();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
  sub_24E07AFB8();
}

- (void)applyWithPlayerAvatars:(id)avatars playerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sub_24DF88A8C(0, &qword_280BE0110);
  v7 = sub_24E347F08();
  selfCopy = self;
  sub_24E07B19C(v7, width, height);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E07B400();
}

@end