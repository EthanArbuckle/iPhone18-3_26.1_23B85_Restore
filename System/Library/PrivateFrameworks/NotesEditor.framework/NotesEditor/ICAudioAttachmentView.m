@interface ICAudioAttachmentView
- (ICAudioAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6;
- (ICAudioAttachmentView)initWithTextAttachment:(id)a3 textContainer:(id)a4 forManualRendering:(BOOL)a5;
- (NSObject)icaxAudioPlayerViewAccessibilityElement;
- (UIViewController)contextMenuPreviewController;
- (id)_playerViewAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)didChangeMedia;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAttachment:(id)a3;
- (void)setHighlightColor:(id)a3;
@end

@implementation ICAudioAttachmentView

- (id)accessibilityLabel
{
  v2 = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  v3 = [v2 accessibilityUserInputLabels];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v8.receiver = self;
  v8.super_class = ICAudioAttachmentView;
  v4 = [(ICAttachmentView *)&v8 accessibilityCustomActions];
  [v3 ic_addObjectsFromNonNilArray:v4];

  v5 = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  v6 = [v5 accessibilityCustomActions];
  [v3 ic_addObjectsFromNonNilArray:v6];

  return v3;
}

- (id)accessibilityCustomContent
{
  v2 = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  v3 = [v2 accessibilityCustomContent];

  return v3;
}

- (id)_playerViewAccessibilityElement
{
  v2 = [(ICAudioAttachmentView *)self icaxAudioPlayerViewAccessibilityElement];
  NSClassFromString(&cfstr_SwiftuiAccessi.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[swiftUIAccessibilityElement isKindOfClass:NSClassFromString(@SwiftUI.AccessibilityNode)]" functionName:"-[ICAudioAttachmentView(ICAccessibility_iOS) _playerViewAccessibilityElement]" simulateCrash:1 showAlert:0 format:@"Unexpected accessibility element type for SwiftUI representation"];
  }

  if (!v2)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((swiftUIAccessibilityElement) != nil)" functionName:"-[ICAudioAttachmentView(ICAccessibility_iOS) _playerViewAccessibilityElement]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "swiftUIAccessibilityElement"}];
  }

  return v2;
}

- (void)didChangeMedia
{
  v2 = self;
  sub_21543D614();
}

- (void)setAttachment:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudioAttachmentView();
  v4 = a3;
  v5 = v6.receiver;
  [(ICAudioAttachmentView *)&v6 setAttachment:v4];
  sub_21543D9C0();
}

- (void)setHighlightColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioAttachmentView();
  v4 = v7.receiver;
  v5 = a3;
  [(ICAudioAttachmentView *)&v7 setHighlightColor:v5];
  if ([v4 highlightColor])
  {
    v6 = sub_2154A0C8C();
  }

  else
  {
    v6 = sub_2154A0D1C();
  }

  sub_21543FC04(v6);
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AudioAttachmentView();
  v2 = v4.receiver;
  [(ICAttachmentView *)&v4 didMoveToWindow];
  v3 = OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow;
  if (v2[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] == 1)
  {
    sub_21543EDE8();
  }

  v2[v3] = 0;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioAttachmentView();
  v2 = v3.receiver;
  [(ICAudioAttachmentView *)&v3 didMoveToSuperview];
  sub_21543F6AC([v2 textView]);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioAttachmentView();
  v2 = v5.receiver;
  [(ICAudioAttachmentView *)&v5 layoutSubviews];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [v2 layer];
  [v4 setCornerCurve_];
}

- (UIViewController)contextMenuPreviewController
{
  v2 = self;
  v3 = sub_21543E8F8();

  return v3;
}

- (NSObject)icaxAudioPlayerViewAccessibilityElement
{
  v2 = self;
  v3 = sub_21543EFFC();

  return v3;
}

- (ICAudioAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = sub_21544C5BC(a4, a5, a6, x, y, width, height);

  return v15;
}

- (ICAudioAttachmentView)initWithTextAttachment:(id)a3 textContainer:(id)a4 forManualRendering:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_21544C700(a3, a4, a5);

  return v10;
}

@end