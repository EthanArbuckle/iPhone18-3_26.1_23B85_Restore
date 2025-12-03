@interface PaperDocumentContainerView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isLocked;
- (BOOL)isZoomed;
- (CGPoint)contentOffset;
- (CGRect)frameInContainingScrollView;
- (CGRect)scrollBounds;
- (CGSize)contentSize;
- (UIEdgeInsets)adjustedContentInset;
- (UIScrollView)scrollView;
- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView)initWithFrame:(CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)pdfViewMightHaveZoomed:(id)zoomed;
- (void)pdfViewSelectedPageThumbnail:(id)thumbnail;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setContentOffset:(CGPoint)offset;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)updateConstraints;
- (void)updatePaletteVisibility;
- (void)willMoveToWindow:(id)window;
@end

@implementation PaperDocumentContainerView

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater);
  if (!v7)
  {
    recognizerCopy = recognizer;
    touchCopy = touch;
    selfCopy = self;
    goto LABEL_5;
  }

  sub_2151A6C9C(0, &qword_27CA59E48);
  recognizerCopy2 = recognizer;
  touchCopy2 = touch;
  selfCopy2 = self;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  sub_215310850(recognizerCopy, gestureRecognizerCopy);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_2153227A8(gestureRecognizerCopy);

  return v9 & 1;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_215310C90(window);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_215310F28();
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  v4 = objc_opt_self();
  selfCopy = self;
  [v4 cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel_updatePaletteVisibility object:0];
  [(PaperDocumentContainerView *)selfCopy performSelector:sel_updatePaletteVisibility withObject:0 afterDelay:0.0];
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_2153113D8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_215311694();
}

- (void)pdfViewMightHaveZoomed:(id)zoomed
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2153122DC();

  (*(v5 + 8))(v7, v4);
}

- (void)pdfViewSelectedPageThumbnail:(id)thumbnail
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2153127FC();

  (*(v5 + 8))(v7, v4);
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  sub_215312A0C(zoomCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_215312F24(draggingCopy, &offset->x, x, y);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_215313E04(scroll);
}

- (void)updatePaletteVisibility
{
  selfCopy = self;
  sub_21531110C();
}

- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIScrollView)scrollView
{
  selfCopy = self;
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

  documentScrollView = [v5 documentScrollView];

  if (!documentScrollView)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return documentScrollView;
}

- (BOOL)isZoomed
{
  selfCopy = self;
  sub_215314598(sub_2153083DC);
  v4 = v3;

  return v4 & 1;
}

- (BOOL)isLocked
{
  selfCopy = self;
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
  selfCopy = self;
  sub_2153149C0(&selRef_contentOffset);
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  sub_2153148B8(x, y);
}

- (CGSize)contentSize
{
  selfCopy = self;
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
  selfCopy = self;
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