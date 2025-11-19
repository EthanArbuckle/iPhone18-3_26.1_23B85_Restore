@interface SFBookmarksCollectionViewController.ContentUnavailableCell
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController22ContentUnavailableCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation SFBookmarksCollectionViewController.ContentUnavailableCell

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController22ContentUnavailableCell)initWithCoder:(id)a3
{
  v4 = sub_18BC1FCD8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController22ContentUnavailableCell_contentUnavailableView;
  sub_18BBE50D4();
  sub_18BC1FC98();
  *(&self->super.super.super.super.super.super.isa + v5) = sub_18BC21488();
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _s22ContentUnavailableCellCMa();
  v2 = v4.receiver;
  [(SFBookmarksCollectionViewController.ContentUnavailableCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController22ContentUnavailableCell_contentUnavailableView];
  [v2 bounds];
  [v3 setFrame_];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v19.receiver = self;
  v19.super_class = _s22ContentUnavailableCellCMa();
  v4 = a3;
  v5 = v19.receiver;
  v6 = [(SFBookmarksCollectionViewController.ContentUnavailableCell *)&v19 preferredLayoutAttributesFittingAttributes:v4];
  [v6 size];
  v8 = v7;
  v9 = [objc_opt_self() mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  [v6 setSize_];

  return v6;
}

@end