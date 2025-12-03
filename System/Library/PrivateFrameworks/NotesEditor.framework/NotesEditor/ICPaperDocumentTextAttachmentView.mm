@interface ICPaperDocumentTextAttachmentView
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)bounds;
- (ICPaperDocumentTextAttachmentView)initWithFrame:(CGRect)frame;
- (NSArray)accessibilityElements;
- (NSArray)supportedRotorTypes;
- (NSString)accessibilityLabel;
- (NSTextAttachment)textAttachment;
- (_NSRange)_icaxRangeInTextStorage;
- (double)additionalXOffsetForTextDragPreviewInTextView:(id)view;
- (id)_icaxEnclosingTextView;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)paperDocumentEngagementData;
- (id)tiledViewAttachmentViews;
- (id)viewForTextDragPreview;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)imageForTextPreviewUsingFindingResult:(id)result inTextView:(id)view completion:(id)completion;
- (void)layoutSubviews;
- (void)openAttachment;
- (void)pinch:(id)pinch;
- (void)quickLook:(id)look;
- (void)resetPaperDocumentEngagementData;
- (void)setBounds:(CGRect)bounds;
- (void)setEngagementData:(id)data;
- (void)setTextAttachment:(id)attachment;
- (void)updateHeaderConfiguration;
- (void)willMoveToWindow:(id)window;
@end

@implementation ICPaperDocumentTextAttachmentView

- (NSArray)supportedRotorTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"ICAccessibilityRotorTypeAttachments";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (_NSRange)_icaxRangeInTextStorage
{
  _icaxEnclosingTextView = [(ICPaperDocumentTextAttachmentView *)self _icaxEnclosingTextView];
  textStorage = [_icaxEnclosingTextView textStorage];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_21552D17E;
  v16 = xmmword_2154BBE70;
  v5 = [textStorage length];
  v6 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ICPaperDocumentTextAttachmentView_Accessibility___icaxRangeInTextStorage__block_invoke;
  v11[3] = &unk_2781AC9B8;
  v11[4] = self;
  v11[5] = &v12;
  [textStorage enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v11}];
  v7 = v13[4];
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

void __75__ICPaperDocumentTextAttachmentView_Accessibility___icaxRangeInTextStorage__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 textAttachment];

  if (v11 == v10)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a5 = 1;
  }
}

- (id)_icaxEnclosingTextView
{
  superview = [(ICPaperDocumentTextAttachmentView *)self superview];
  if (superview)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
      if (!v2Superview)
      {
        goto LABEL_6;
      }
    }

    superview = superview;
  }

LABEL_6:

  return superview;
}

- (id)paperDocumentEngagementData
{
  selfCopy = self;
  v3 = sub_21531E718();
  swift_unknownObjectRetain();

  return v3;
}

- (void)resetPaperDocumentEngagementData
{
  if (*(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData))
  {
    sub_21548F5BC();
  }
}

- (void)setEngagementData:(id)data
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
  *(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData) = data;
  dataCopy = data;
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_2152F01DC();

  if (v3)
  {
    v4 = sub_2154A1F3C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PaperDocumentTextAttachmentView();
  [(ICPaperDocumentTextAttachmentView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = type metadata accessor for PaperDocumentTextAttachmentView();
  v23.receiver = self;
  v23.super_class = v8;
  selfCopy = self;
  [(ICPaperDocumentTextAttachmentView *)&v23 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = selfCopy;
  v22.super_class = v8;
  [(ICPaperDocumentTextAttachmentView *)&v22 setBounds:x, y, width, height];
  [(ICPaperDocumentTextAttachmentView *)selfCopy bounds];
  v25.origin.x = v18;
  v25.origin.y = v19;
  v25.size.width = v20;
  v25.size.height = v21;
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (!CGRectEqualToRect(v24, v25))
  {
    sub_2152FE67C(1, 0);
  }
}

- (NSTextAttachment)textAttachment
{
  v3 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTextAttachment:(id)attachment
{
  v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = attachment;
  attachmentCopy = attachment;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_2152F3C10(window);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_2152F59F8();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PaperDocumentTextAttachmentView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(ICPaperDocumentTextAttachmentView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_2151A6C9C(0, &qword_2811994D0);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_2154A291C();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_2152FC8AC(beginCopy);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  sub_2152FCC68(recognizerCopy, gestureRecognizerCopy);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  sub_2152FCF98(recognizerCopy, gestureRecognizerCopy);
  v10 = v9;

  return v10 & 1;
}

- (void)pinch:(id)pinch
{
  pinchCopy = pinch;
  selfCopy = self;
  sub_2152FD42C(pinchCopy);
}

- (void)updateHeaderConfiguration
{
  selfCopy = self;
  sub_2152FE858();
}

- (void)quickLook:(id)look
{
  selfCopy = self;
  sub_21530127C(0);
}

- (void)dealloc
{
  selfCopy = self;
  undoManager = [(ICPaperDocumentTextAttachmentView *)selfCopy undoManager];
  if (undoManager)
  {
    v4 = undoManager;
    [undoManager removeAllActionsWithTarget_];
  }

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for PaperDocumentTextAttachmentView();
  [(ICPaperDocumentTextAttachmentView *)&v5 dealloc];
}

- (void)openAttachment
{
  selfCopy = self;
  window = [(ICPaperDocumentTextAttachmentView *)selfCopy window];
  if (window)
  {

    sub_21530127C(0);
  }

  else
  {
    *(&selfCopy->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_openAttachmentWhenVisible) = 1;
  }
}

- (id)tiledViewAttachmentViews
{
  sub_2151A6C9C(0, &qword_27CA5A4F8);
  v2 = sub_2154A1F3C();

  return v2;
}

- (ICPaperDocumentTextAttachmentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageForTextPreviewUsingFindingResult:(id)result inTextView:(id)view completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  resultCopy = result;
  viewCopy = view;
  selfCopy = self;
  sub_2153218A4(result, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (id)viewForTextDragPreview
{
  if (*(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode) && *(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView))
  {
    self = *(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView);
  }

  return self;
}

- (double)additionalXOffsetForTextDragPreviewInTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  PaperDocumentTextAttachmentView.additionalXOffsetForTextDragPreview(in:)(viewCopy);
  v7 = v6;

  return v7;
}

- (void)layoutSubviews
{
  selfCopy = self;
  PaperDocumentTextAttachmentView.layoutSubviews()();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = _s11NotesEditor31PaperDocumentTextAttachmentViewC22contextMenuInteraction_016configurationForI10AtLocationSo09UIContextI13ConfigurationCSgSo0oiJ0C_So7CGPointVtF_0();

  return v7;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = _s11NotesEditor31PaperDocumentTextAttachmentViewC22contextMenuInteraction_022previewForHighlightingI17WithConfigurationSo17UITargetedPreviewCSgSo09UIContextiJ0C_So0riO0CtF_0();

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_215322540(animator);

  swift_unknownObjectRelease();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  PaperDocumentTextAttachmentView.accessibilityLabel.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_2154A1D2C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end