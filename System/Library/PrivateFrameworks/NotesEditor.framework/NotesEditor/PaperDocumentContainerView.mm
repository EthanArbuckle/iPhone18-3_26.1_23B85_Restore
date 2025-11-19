@interface PaperDocumentContainerView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isLocked;
- (BOOL)isZoomed;
- (CGPoint)contentOffset;
- (CGRect)frameInContainingScrollView;
- (CGRect)scrollBounds;
- (CGSize)contentSize;
- (UIEdgeInsets)adjustedContentInset;
- (UIScrollView)scrollView;
- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView)initWithFrame:(CGRect)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)pdfViewMightHaveZoomed:(id)a3;
- (void)pdfViewSelectedPageThumbnail:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContentOffset:(CGPoint)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
- (void)updateConstraints;
- (void)updatePaletteVisibility;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PaperDocumentContainerView

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater);
  if (!v7)
  {
    v15 = a3;
    v16 = a4;
    v17 = self;
    goto LABEL_5;
  }

  sub_2151A6C9C(0, &qword_27CA59E48);
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = v7;
  v12 = sub_2154A291C();

  if ((v12 & 1) == 0)
  {
LABEL_5:
    type metadata accessor for PanEaterGestureRecognizer();
    swift_dynamicCastClass();

    v14 = 1;
    goto LABEL_6;
  }

  v13 = sub_2153104E8();

  v14 = !v13;
LABEL_6:

  return v14 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_215310850(v6, v7);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2153227A8(v7);

  return v9 & 1;
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_215310C90(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_215310F28();
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v4 = objc_opt_self();
  v5 = self;
  [v4 cancelPreviousPerformRequestsWithTarget:v5 selector:sel_updatePaletteVisibility object:0];
  [(PaperDocumentContainerView *)v5 performSelector:sel_updatePaletteVisibility withObject:0 afterDelay:0.0];
}

- (void)updateConstraints
{
  v2 = self;
  sub_2153113D8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_215311694();
}

- (void)pdfViewMightHaveZoomed:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153122DC();

  (*(v5 + 8))(v7, v4);
}

- (void)pdfViewSelectedPageThumbnail:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153127FC();

  (*(v5 + 8))(v7, v4);
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215312A0C(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  sub_215312F24(v9, &a5->x, x, y);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_215313E04(a3);
}

- (void)updatePaletteVisibility
{
  v2 = self;
  sub_21531110C();
}

- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIScrollView)scrollView
{
  v2 = self;
  result = sub_2154A12FC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v5 = sub_2154A126C();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v5 documentScrollView];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return v6;
}

- (BOOL)isZoomed
{
  v2 = self;
  sub_215314598(sub_2153083DC);
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isLocked
{
  v2 = self;
  sub_215314598(sub_2153104E8);
  v4 = v3;

  return v4 & 1;
}

- (CGRect)frameInContainingScrollView
{
  v2 = sub_215314A84(self, a2, sub_215314698);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)contentOffset
{
  v2 = self;
  sub_2153149C0(&selRef_contentOffset);
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_2153148B8(x, y);
}

- (CGSize)contentSize
{
  v2 = self;
  sub_2153149C0(&selRef_contentSize);
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)scrollBounds
{
  v2 = sub_215314A84(self, a2, sub_215314AE8);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)adjustedContentInset
{
  v2 = self;
  sub_215314BFC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

@end