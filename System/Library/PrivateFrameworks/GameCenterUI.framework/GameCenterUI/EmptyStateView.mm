@interface EmptyStateView
+ (_TtC12GameCenterUI14EmptyStateView)addAdditionalFriendsEmptyStateView;
+ (_TtC12GameCenterUI14EmptyStateView)addFriendsEmptyStateView;
+ (_TtC12GameCenterUI14EmptyStateView)addFriendsEmptyStateViewTVOS;
+ (_TtC12GameCenterUI14EmptyStateView)addFriendsWithButtonEmptyStateView;
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (id)buttonActionBlock;
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
- (void)setButtonActionBlock:(id)block;
@end

@implementation EmptyStateView

+ (_TtC12GameCenterUI14EmptyStateView)addFriendsEmptyStateView
{
  swift_getObjCClassMetadata();
  v2 = static EmptyStateView.addFriendsEmptyStateView.getter();

  return v2;
}

+ (_TtC12GameCenterUI14EmptyStateView)addFriendsWithButtonEmptyStateView
{
  swift_getObjCClassMetadata();
  v2 = static EmptyStateView.addFriendsWithButtonEmptyStateView.getter();

  return v2;
}

+ (_TtC12GameCenterUI14EmptyStateView)addFriendsEmptyStateViewTVOS
{
  swift_getObjCClassMetadata();
  v2 = static EmptyStateView.addFriendsEmptyStateViewTVOS.getter();

  return v2;
}

+ (_TtC12GameCenterUI14EmptyStateView)addAdditionalFriendsEmptyStateView
{
  swift_getObjCClassMetadata();
  v2 = static EmptyStateView.addAdditionalFriendsEmptyStateView.getter();

  return v2;
}

- (id)buttonActionBlock
{
  v2 = EmptyStateView.buttonActionBlock.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_97;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setButtonActionBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24E2DE3C4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  EmptyStateView.buttonActionBlock.setter(v4, v5);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E2DE0F8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  EmptyStateView.layoutSubviews()();
}

- (void)didTapButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24E2DCCB4();

  sub_24DF8C95C(v6, &qword_27F1E0370);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = EmptyStateView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

@end