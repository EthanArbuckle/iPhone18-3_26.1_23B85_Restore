@interface BaseSplitCollectionViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)shouldDisplayInSplitView;
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (NSDirectionalEdgeInsets)secondaryCollectionViewFrameInsets;
- (UICollectionView)secondaryCollectionView;
- (UICollectionViewCompositionalLayout)secondaryCompositionalLayout;
- (_TtC12GameCenterUI12GradientView)leftPaneBackgroundView;
- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter;
- (double)mainSecondaryCollectionViewSpacing;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(void *)a3 previewForHighlightingContextMenuWithConfiguration:(void *)a4;
- (id)makeSecondaryLayout;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)loadView;
- (void)mainSecondaryCollectionViewLayout;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setSecondaryCollectionView:(id)a3;
- (void)setSecondaryCompositionalLayout:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BaseSplitCollectionViewController

- (id)collectionView:(void *)a3 previewForHighlightingContextMenuWithConfiguration:(void *)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = OUTLINED_FUNCTION_2_34();
  v11 = sub_24E178F50(v9, v10);

  return v11;
}

- (UICollectionView)secondaryCollectionView
{
  v2 = sub_24E172184();

  return v2;
}

- (void)setSecondaryCollectionView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1721C4(a3);
}

- (_TtC12GameCenterUI12GradientView)leftPaneBackgroundView
{
  v2 = sub_24E175358();

  return v2;
}

- (void)loadView
{
  v2 = self;
  sub_24E175368();
}

- (NSDirectionalEdgeInsets)collectionViewFrameInsets
{
  sub_24E17566C(self, a2, sub_24E171FBC);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)secondaryCollectionViewFrameInsets
{
  sub_24E17566C(self, a2, sub_24E17226C);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)mainSecondaryCollectionViewLayout
{
  v2 = self;
  sub_24E172BF4();
}

- (double)mainSecondaryCollectionViewSpacing
{
  v2 = self;
  v3 = sub_24E1741D8();

  return v3;
}

- (BOOL)shouldDisplayInSplitView
{
  v2 = self;
  v3 = sub_24E1742B8();

  return v3 & 1;
}

- (UICollectionViewCompositionalLayout)secondaryCompositionalLayout
{
  v2 = sub_24E17457C();

  return v2;
}

- (void)setSecondaryCompositionalLayout:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1745AC(a3);
}

- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter
{
  v2 = self;
  v3 = sub_24E175894();

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1758F4(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_24E1759A8(a4);
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24E175CC4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24E175DAC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_24E175EC0(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24E175F80(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_24E179568(type metadata accessor for BaseSplitCollectionViewController, &selRef_viewWillLayoutSubviews);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E171E14();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E176E68(v4);
}

- (id)makeSecondaryLayout
{
  v2 = self;
  sub_24E174668();
  v4 = v3;

  return v4;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24E1779C8();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  sub_24E177EB4();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347CF8();
  sub_24E343498();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_24E1783A0();

  (*(v10 + 8))(v12, v9);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v11 = a3;
  v12 = self;
  sub_24E178AF4();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

@end