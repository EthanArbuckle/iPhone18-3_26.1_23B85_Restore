@interface SFBookmarksCollectionViewController.HistoryItemCell
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
@end

@implementation SFBookmarksCollectionViewController.HistoryItemCell

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_address);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon) = 0;
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_title);
  *v4 = 0;
  v4[1] = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _s15HistoryItemCellCMa();
  v2 = v4.receiver;
  [(SFBookmarksCollectionViewController.HistoryItemCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon];
  *&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon] = 0;
  if (v3)
  {
    [v2 setNeedsUpdateConfiguration];

    v2 = v3;
  }
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  v8 = self;
  sub_18BB92A90();

  (*(v5 + 8))(v7, v4);
}

@end