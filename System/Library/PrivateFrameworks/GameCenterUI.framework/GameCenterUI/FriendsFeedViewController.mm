@interface FriendsFeedViewController
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(void *)a3 previewForHighlightingContextMenuWithConfiguration:(void *)a4;
- (id)makeLayout;
- (void)loadMoreWithContinuationToken:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FriendsFeedViewController

- (id)collectionView:(void *)a3 previewForHighlightingContextMenuWithConfiguration:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_24E1EAD0C(v6, v7);

  return v9;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E1E9454();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24E1E953C(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_24E1E95D8();
}

- (NSDirectionalEdgeInsets)collectionViewFrameInsets
{
  v2 = self;
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
  v2 = self;
  sub_24E1E9ED8();
  v4 = v3;

  return v4;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v11 = a3;
  v12 = self;
  v13 = sub_24E1EA9A8(v11);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)loadMoreWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E1EB104();
}

@end