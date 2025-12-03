@interface BaseSplitCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)shouldDisplayInSplitView;
- (NSDirectionalEdgeInsets)collectionViewFrameInsets;
- (NSDirectionalEdgeInsets)secondaryCollectionViewFrameInsets;
- (UICollectionView)secondaryCollectionView;
- (UICollectionViewCompositionalLayout)secondaryCompositionalLayout;
- (_TtC12GameCenterUI12GradientView)leftPaneBackgroundView;
- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter;
- (double)mainSecondaryCollectionViewSpacing;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration;
- (id)makeSecondaryLayout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)loadView;
- (void)mainSecondaryCollectionViewLayout;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setSecondaryCollectionView:(id)view;
- (void)setSecondaryCompositionalLayout:(id)layout;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BaseSplitCollectionViewController

- (id)collectionView:(void *)view previewForHighlightingContextMenuWithConfiguration:(void *)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = OUTLINED_FUNCTION_2_34();
  v11 = sub_24E178F50(v9, v10);

  return v11;
}

- (UICollectionView)secondaryCollectionView
{
  v2 = sub_24E172184();

  return v2;
}

- (void)setSecondaryCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E1721C4(view);
}

- (_TtC12GameCenterUI12GradientView)leftPaneBackgroundView
{
  v2 = sub_24E175358();

  return v2;
}

- (void)loadView
{
  selfCopy = self;
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
  selfCopy = self;
  sub_24E172BF4();
}

- (double)mainSecondaryCollectionViewSpacing
{
  selfCopy = self;
  v3 = sub_24E1741D8();

  return v3;
}

- (BOOL)shouldDisplayInSplitView
{
  selfCopy = self;
  v3 = sub_24E1742B8();

  return v3 & 1;
}

- (UICollectionViewCompositionalLayout)secondaryCompositionalLayout
{
  v2 = sub_24E17457C();

  return v2;
}

- (void)setSecondaryCompositionalLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_24E1745AC(layout);
}

- (_TtC12GameCenterUI18BaseSplitPresenter)dataPresenter
{
  selfCopy = self;
  v3 = sub_24E175894();

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E1758F4(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E1759A8(coordinator);
  swift_unknownObjectRelease();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24E175CC4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E175DAC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_24E175EC0(disappear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24E175F80(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_24E179568(type metadata accessor for BaseSplitCollectionViewController, &selRef_viewWillLayoutSubviews);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_24E171E14();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_24E176E68(scrollCopy);
}

- (id)makeSecondaryLayout
{
  selfCopy = self;
  sub_24E174668();
  v4 = v3;

  return v4;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24E1779C8();
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24E177EB4();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E347CF8();
  sub_24E343498();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_24E1783A0();

  (*(v10 + 8))(v12, v9);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  sub_24E178AF4();
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

@end