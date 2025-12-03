@interface OverlappingPlayersPhotoView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (NSArray)playerViews;
- (void)applyWithPlayerAvatars:(id)avatars;
- (void)layoutSubviews;
- (void)setPlayerViews:(id)views;
@end

@implementation OverlappingPlayersPhotoView

- (NSArray)playerViews
{
  sub_24E16CDE0();
  sub_24DF88A8C(0, &qword_27F1E2650);
  v2 = sub_24E347EE8();

  return v2;
}

- (void)setPlayerViews:(id)views
{
  sub_24DF88A8C(0, &qword_27F1E2650);
  v4 = sub_24E347F08();
  selfCopy = self;
  sub_24E16CE70(v4);
}

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
  v6 = sub_24E16D2FC();
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
  sub_24E16D49C();
}

- (void)applyWithPlayerAvatars:(id)avatars
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v4 = sub_24E347F08();
  selfCopy = self;
  sub_24E16D6B0(v4);
}

@end