@interface MediaSuggestionsView
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation MediaSuggestionsView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1A21220AC();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for MediaSuggestionsView();
  v23.receiver = self;
  v23.super_class = v8;
  selfCopy = self;
  [(MediaSuggestionsView *)&v23 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = selfCopy;
  v22.super_class = v8;
  [(MediaSuggestionsView *)&v22 setFrame:x, y, width, height];
  [(MediaSuggestionsView *)selfCopy frame];
  v25.origin.x = v18;
  v25.origin.y = v19;
  v25.size.width = v20;
  v25.size.height = v21;
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (!CGRectEqualToRect(v24, v25))
  {
    sub_1A22B12D4();
  }
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for MediaSuggestionsView();
  [(MediaSuggestionsView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)dealloc
{
  v2 = *(**(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_cache) + 128);
  selfCopy = self;

  v2(selfCopy, &off_1F1442798);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for MediaSuggestionsView();
  [(MediaSuggestionsView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MediaSuggestionsView();
  v2 = v4.receiver;
  [(MediaSuggestionsView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls20MediaSuggestionsView_collectionView];
  [v2 bounds];
  [v3 setFrame_];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = sub_1A22E56B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5698();
  viewCopy = view;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  if (indexPathsForSelectedItems)
  {
    v11 = indexPathsForSelectedItems;
    v12 = sub_1A22E6748();

    (*(v6 + 8))(v8, v5);
    v13 = *(v12 + 16);

    return v13 == 0;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return 1;
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1A22E56B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A22E5698();
  viewCopy = view;
  selfCopy = self;
  sub_1A22B2224(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end