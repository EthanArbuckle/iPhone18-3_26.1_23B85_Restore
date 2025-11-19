@interface SFBookmarksCollectionViewController.SelectableHeader
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader)initWithCoder:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)handleTap;
@end

@implementation SFBookmarksCollectionViewController.SelectableHeader

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_isEditing) = 0;
  v3 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_leadingSymbolName);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_title);
  *v5 = 0;
  v5[1] = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)handleTap
{
  v2 = self;
  sub_18BAA92E4();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  v8 = self;
  sub_18BAA93A4(v7);

  (*(v5 + 8))(v7, v4);
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = _s16SelectableHeaderCMa();
  v2 = v6.receiver;
  v3 = *MEMORY[0x1E69DD9C8] | [(SFBookmarksCollectionViewController.SelectableHeader *)&v6 accessibilityTraits];
  if (*&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler])
  {
    v4 = *MEMORY[0x1E69DD9B8];

    v3 |= v4;
  }

  else
  {
  }

  return v3;
}

@end