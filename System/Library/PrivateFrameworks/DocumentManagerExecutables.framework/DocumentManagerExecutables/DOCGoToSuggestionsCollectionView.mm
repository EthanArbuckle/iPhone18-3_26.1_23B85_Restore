@interface DOCGoToSuggestionsCollectionView
- (_TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
@end

@implementation DOCGoToSuggestionsCollectionView

- (_TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewDelegate);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewState;
  type metadata accessor for DOCFocusableCollectionViewState();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForMostRecentlySelectedItem;
  v14 = type metadata accessor for IndexPath();
  v15 = *(*(v14 - 8) + 56);
  v15(v12 + v13, 1, 1, v14);
  v15(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_indexPathForSelectionExtensionStart, 1, 1, v14);
  *(v12 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCFocusableCollectionViewState_hasFocus) = 0;
  *(&self->super.super.super.super.super.isa + v11) = v12;
  v17.receiver = self;
  v17.super_class = type metadata accessor for DOCGoToSuggestionsCollectionView();
  return [(DOCGoToSuggestionsCollectionView *)&v17 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

@end