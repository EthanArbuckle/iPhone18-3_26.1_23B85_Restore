@interface DashboardActivityFeedViewController
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (id)collectionView:(void *)a3 previewForHighlightingContextMenuWithConfiguration:(void *)a4;
- (id)makeLayout;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)loadMoreWithContinuationToken:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DashboardActivityFeedViewController

- (id)collectionView:(void *)a3 previewForHighlightingContextMenuWithConfiguration:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = OUTLINED_FUNCTION_2_34();
  v11 = sub_24E1B3088(v9, v10);

  return v11;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E1B01C4();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_24E1B02E4();
}

- (NSDirectionalEdgeInsets)collectionViewFrameInsets
{
  v2 = self;
  sub_24E1B0364();
  v4 = v3;
  v6 = v5;

  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  v10 = v6;
  result.trailing = v10;
  result.bottom = v8;
  result.leading = v9;
  result.top = v7;
  return result;
}

- (id)makeLayout
{
  v2 = self;
  sub_24E1B0C5C();
  v4 = v3;

  return v4;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_24E1B1A84();
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_24E1B2684();

  (*(v9 + 8))(v11, v8);
}

- (void)loadMoreWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E1B347C();
}

@end