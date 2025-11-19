@interface ICPaperDocumentTextAttachmentView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)bounds;
- (ICPaperDocumentTextAttachmentView)initWithFrame:(CGRect)a3;
- (NSArray)accessibilityElements;
- (NSArray)supportedRotorTypes;
- (NSString)accessibilityLabel;
- (NSTextAttachment)textAttachment;
- (_NSRange)_icaxRangeInTextStorage;
- (double)additionalXOffsetForTextDragPreviewInTextView:(id)a3;
- (id)_icaxEnclosingTextView;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)paperDocumentEngagementData;
- (id)tiledViewAttachmentViews;
- (id)viewForTextDragPreview;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)imageForTextPreviewUsingFindingResult:(id)a3 inTextView:(id)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)openAttachment;
- (void)pinch:(id)a3;
- (void)quickLook:(id)a3;
- (void)resetPaperDocumentEngagementData;
- (void)setBounds:(CGRect)a3;
- (void)setEngagementData:(id)a3;
- (void)setTextAttachment:(id)a3;
- (void)updateHeaderConfiguration;
- (void)willMoveToWindow:(id)a3;
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
  v3 = [(ICPaperDocumentTextAttachmentView *)self _icaxEnclosingTextView];
  v4 = [v3 textStorage];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_21552D17E;
  v16 = xmmword_2154BBE70;
  v5 = [v4 length];
  v6 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ICPaperDocumentTextAttachmentView_Accessibility___icaxRangeInTextStorage__block_invoke;
  v11[3] = &unk_2781AC9B8;
  v11[4] = self;
  v11[5] = &v12;
  [v4 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v11}];
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
  v2 = [(ICPaperDocumentTextAttachmentView *)self superview];
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

- (id)paperDocumentEngagementData
{
  v2 = self;
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

- (void)setEngagementData:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
  *(&self->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData) = a3;
  v3 = a3;
}

- (NSArray)accessibilityElements
{
  v2 = self;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for PaperDocumentTextAttachmentView();
  v23.receiver = self;
  v23.super_class = v8;
  v9 = self;
  [(ICPaperDocumentTextAttachmentView *)&v23 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = v9;
  v22.super_class = v8;
  [(ICPaperDocumentTextAttachmentView *)&v22 setBounds:x, y, width, height];
  [(ICPaperDocumentTextAttachmentView *)v9 bounds];
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

- (void)setTextAttachment:(id)a3
{
  v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2152F3C10(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_2152F59F8();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PaperDocumentTextAttachmentView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(ICPaperDocumentTextAttachmentView *)&v13 hitTest:v8 withEvent:x, y];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2152FC8AC(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2152FCC68(v6, v7);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2152FCF98(v6, v7);
  v10 = v9;

  return v10 & 1;
}

- (void)pinch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2152FD42C(v4);
}

- (void)updateHeaderConfiguration
{
  v2 = self;
  sub_2152FE858();
}

- (void)quickLook:(id)a3
{
  v3 = self;
  sub_21530127C(0);
}

- (void)dealloc
{
  v2 = self;
  v3 = [(ICPaperDocumentTextAttachmentView *)v2 undoManager];
  if (v3)
  {
    v4 = v3;
    [v3 removeAllActionsWithTarget_];
  }

  v5.receiver = v2;
  v5.super_class = type metadata accessor for PaperDocumentTextAttachmentView();
  [(ICPaperDocumentTextAttachmentView *)&v5 dealloc];
}

- (void)openAttachment
{
  v3 = self;
  v2 = [(ICPaperDocumentTextAttachmentView *)v3 window];
  if (v2)
  {

    sub_21530127C(0);
  }

  else
  {
    *(&v3->super.super.super.isa + OBJC_IVAR___ICPaperDocumentTextAttachmentView_openAttachmentWhenVisible) = 1;
  }
}

- (id)tiledViewAttachmentViews
{
  sub_2151A6C9C(0, &qword_27CA5A4F8);
  v2 = sub_2154A1F3C();

  return v2;
}

- (ICPaperDocumentTextAttachmentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imageForTextPreviewUsingFindingResult:(id)a3 inTextView:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_2153218A4(a3, v11, v8);
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

- (double)additionalXOffsetForTextDragPreviewInTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperDocumentTextAttachmentView.additionalXOffsetForTextDragPreview(in:)(v4);
  v7 = v6;

  return v7;
}

- (void)layoutSubviews
{
  v2 = self;
  PaperDocumentTextAttachmentView.layoutSubviews()();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = _s11NotesEditor31PaperDocumentTextAttachmentViewC22contextMenuInteraction_016configurationForI10AtLocationSo09UIContextI13ConfigurationCSgSo0oiJ0C_So7CGPointVtF_0();

  return v7;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s11NotesEditor31PaperDocumentTextAttachmentViewC22contextMenuInteraction_022previewForHighlightingI17WithConfigurationSo17UITargetedPreviewCSgSo09UIContextiJ0C_So0riO0CtF_0();

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_215322540(a5);

  swift_unknownObjectRelease();
}

- (NSString)accessibilityLabel
{
  v2 = self;
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