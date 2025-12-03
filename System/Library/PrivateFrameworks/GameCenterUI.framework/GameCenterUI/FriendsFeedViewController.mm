@interface FriendsFeedViewController
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration;
- (id)makeLayout;
- (void)loadMoreWithContinuationToken:(id)token;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation FriendsFeedViewController

- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_24E1EAD0C(viewCopy, configurationCopy);

  return v9;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E1E9454();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E1E953C(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_24E1E95D8();
}

- (NSDirectionalEdgeInsets)collectionViewFrameInsets
{
  selfCopy = self;
  sub_24E1E9658();
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
  sub_24E1E9ED8();
  v4 = v3;

  return v4;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_24E1EA9A8(viewCopy);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)loadMoreWithContinuationToken:(id)token
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24E1EB104();
}

@end