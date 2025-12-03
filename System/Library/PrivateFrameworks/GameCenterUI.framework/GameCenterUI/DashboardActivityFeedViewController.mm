@interface DashboardActivityFeedViewController
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration;
- (id)makeLayout;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)loadMoreWithContinuationToken:(id)token;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DashboardActivityFeedViewController

- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = OUTLINED_FUNCTION_2_34();
  v11 = sub_24E1B3088(v9, v10);

  return v11;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E1B01C4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_24E1B02E4();
}

- (NSDirectionalEdgeInsets)collectionViewFrameInsets
{
  selfCopy = self;
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
  selfCopy = self;
  sub_24E1B0C5C();
  v4 = v3;

  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E1B1A84();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_24E1B2684();

  (*(v9 + 8))(v11, v8);
}

- (void)loadMoreWithContinuationToken:(id)token
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24E1B347C();
}

@end