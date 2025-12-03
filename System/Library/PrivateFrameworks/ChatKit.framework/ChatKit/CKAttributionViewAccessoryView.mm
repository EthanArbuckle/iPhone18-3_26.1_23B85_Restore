@interface CKAttributionViewAccessoryView
- (CKAttributionViewAccessoryView)initWithFrame:(CGRect)frame chatItem:(id)item layoutBounds:(CGRect)bounds windowSize:(CGSize)size saveStickerHandler:(id)handler;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)tapbackAttributionView:(id)view didTapToSaveSticker:(id)sticker;
@end

@implementation CKAttributionViewAccessoryView

- (CKAttributionViewAccessoryView)initWithFrame:(CGRect)frame chatItem:(id)item layoutBounds:(CGRect)bounds windowSize:(CGSize)size saveStickerHandler:(id)handler
{
  width = size.width;
  height = bounds.size.height;
  v9 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v30 = frame.origin.y;
  v31 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.x;
  itemCopy = item;
  v16 = *&width;
  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 attributionViewAdditionalTopOffset];
  v19 = v18;

  v20 = +[CKUIBehavior sharedBehaviors];
  attributionViewShouldCenterInTranscript = [v20 attributionViewShouldCenterInTranscript];

  v22 = 0.0;
  if (attributionViewShouldCenterInTranscript && v41 > 0.0)
  {
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = v9;
    v42.size.height = height;
    v22 = v9 * 0.5 + CGRectGetMinX(v42) - v41 * 0.5;
  }

  v40.receiver = self;
  v40.super_class = CKAttributionViewAccessoryView;
  v32 = xmmword_190DD06F0;
  v33 = 1;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = v22;
  v38 = v19;
  v39 = 0;
  v23 = v31;
  v24 = [(_UIContextMenuAccessoryView *)&v40 initWithFrame:&v32 configuration:v13, v30, v12, v31, *&v30, *&v31];
  if (v24)
  {
    v25 = _Block_copy(v16);
    saveStickerHandler = v24->_saveStickerHandler;
    v24->_saveStickerHandler = v25;

    v27 = [[_TtC7ChatKit24CKTapbackAttributionView alloc] initWithMessagePartChatItem:itemCopy];
    [(CKTapbackAttributionView *)v27 setFrame:0.0, 0.0, v12, v23];
    [(CKTapbackAttributionView *)v27 setDelegate:v24];
    [(CKAttributionViewAccessoryView *)v24 addSubview:v27];
    attributionView = v24->_attributionView;
    v24->_attributionView = v27;
  }

  return v24;
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  visibleCopy = visible;
  if ([(CKAttributionViewAccessoryView *)self isContentVisible:visible]!= visible)
  {
    [(CKAttributionViewAccessoryView *)self setIsContentVisible:visibleCopy];
    attributionView = [(CKAttributionViewAccessoryView *)self attributionView];
    v7 = attributionView;
    if (visibleCopy)
    {
      [attributionView present];
    }

    else
    {
      [attributionView dismiss];
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  attributionView = [(CKAttributionViewAccessoryView *)self attributionView];
  v9 = [attributionView hitTest:eventCopy withEvent:{x, y}];

  return v9;
}

- (void)tapbackAttributionView:(id)view didTapToSaveSticker:(id)sticker
{
  stickerCopy = sticker;
  saveStickerHandler = [(CKAttributionViewAccessoryView *)self saveStickerHandler];

  if (saveStickerHandler)
  {
    saveStickerHandler2 = [(CKAttributionViewAccessoryView *)self saveStickerHandler];
    (saveStickerHandler2)[2](saveStickerHandler2, stickerCopy);
  }
}

@end