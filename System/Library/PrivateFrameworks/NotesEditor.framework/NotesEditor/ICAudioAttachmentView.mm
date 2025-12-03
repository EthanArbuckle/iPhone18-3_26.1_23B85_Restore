@interface ICAudioAttachmentView
- (ICAudioAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
- (ICAudioAttachmentView)initWithTextAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
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
- (void)setAttachment:(id)attachment;
- (void)setHighlightColor:(id)color;
@end

@implementation ICAudioAttachmentView

- (id)accessibilityLabel
{
  _playerViewAccessibilityElement = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  accessibilityLabel = [_playerViewAccessibilityElement accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _playerViewAccessibilityElement = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  accessibilityValue = [_playerViewAccessibilityElement accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityUserInputLabels
{
  _playerViewAccessibilityElement = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  accessibilityUserInputLabels = [_playerViewAccessibilityElement accessibilityUserInputLabels];

  return accessibilityUserInputLabels;
}

- (unint64_t)accessibilityTraits
{
  _playerViewAccessibilityElement = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  accessibilityTraits = [_playerViewAccessibilityElement accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x277CBEB18] array];
  v8.receiver = self;
  v8.super_class = ICAudioAttachmentView;
  accessibilityCustomActions = [(ICAttachmentView *)&v8 accessibilityCustomActions];
  [array ic_addObjectsFromNonNilArray:accessibilityCustomActions];

  _playerViewAccessibilityElement = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  accessibilityCustomActions2 = [_playerViewAccessibilityElement accessibilityCustomActions];
  [array ic_addObjectsFromNonNilArray:accessibilityCustomActions2];

  return array;
}

- (id)accessibilityCustomContent
{
  _playerViewAccessibilityElement = [(ICAudioAttachmentView *)self _playerViewAccessibilityElement];
  accessibilityCustomContent = [_playerViewAccessibilityElement accessibilityCustomContent];

  return accessibilityCustomContent;
}

- (id)_playerViewAccessibilityElement
{
  icaxAudioPlayerViewAccessibilityElement = [(ICAudioAttachmentView *)self icaxAudioPlayerViewAccessibilityElement];
  NSClassFromString(&cfstr_SwiftuiAccessi.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[swiftUIAccessibilityElement isKindOfClass:NSClassFromString(@SwiftUI.AccessibilityNode)]" functionName:"-[ICAudioAttachmentView(ICAccessibility_iOS) _playerViewAccessibilityElement]" simulateCrash:1 showAlert:0 format:@"Unexpected accessibility element type for SwiftUI representation"];
  }

  if (!icaxAudioPlayerViewAccessibilityElement)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((swiftUIAccessibilityElement) != nil)" functionName:"-[ICAudioAttachmentView(ICAccessibility_iOS) _playerViewAccessibilityElement]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "swiftUIAccessibilityElement"}];
  }

  return icaxAudioPlayerViewAccessibilityElement;
}

- (void)didChangeMedia
{
  selfCopy = self;
  sub_21543D614();
}

- (void)setAttachment:(id)attachment
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AudioAttachmentView();
  attachmentCopy = attachment;
  v5 = v6.receiver;
  [(ICAudioAttachmentView *)&v6 setAttachment:attachmentCopy];
  sub_21543D9C0();
}

- (void)setHighlightColor:(id)color
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioAttachmentView();
  v4 = v7.receiver;
  colorCopy = color;
  [(ICAudioAttachmentView *)&v7 setHighlightColor:colorCopy];
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
  layer = [v2 layer];
  [layer setCornerRadius_];

  layer2 = [v2 layer];
  [layer2 setCornerCurve_];
}

- (UIViewController)contextMenuPreviewController
{
  selfCopy = self;
  v3 = sub_21543E8F8();

  return v3;
}

- (NSObject)icaxAudioPlayerViewAccessibilityElement
{
  selfCopy = self;
  v3 = sub_21543EFFC();

  return v3;
}

- (ICAudioAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attachmentCopy = attachment;
  containerCopy = container;
  v15 = sub_21544C5BC(attachment, container, rendering, x, y, width, height);

  return v15;
}

- (ICAudioAttachmentView)initWithTextAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  attachmentCopy = attachment;
  containerCopy = container;
  v10 = sub_21544C700(attachment, container, rendering);

  return v10;
}

@end