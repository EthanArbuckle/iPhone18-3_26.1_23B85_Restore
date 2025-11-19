@interface InterstitialListViewCell
- (void)prepareForReuse;
@end

@implementation InterstitialListViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InterstitialListViewCell();
  v2 = v5.receiver;
  [(InterstitialCollectionViewCell *)&v5 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView];
  *&v2[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_headerView] = 0;

  v4 = *&v2[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView];
  *&v2[OBJC_IVAR____TtC9MomentsUI24InterstitialListViewCell_selectableAssetView] = 0;
}

@end