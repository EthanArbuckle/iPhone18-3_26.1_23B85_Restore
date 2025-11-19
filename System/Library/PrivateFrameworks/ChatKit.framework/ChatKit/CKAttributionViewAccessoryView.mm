@interface CKAttributionViewAccessoryView
- (CKAttributionViewAccessoryView)initWithFrame:(CGRect)a3 chatItem:(id)a4 layoutBounds:(CGRect)a5 windowSize:(CGSize)a6 saveStickerHandler:(id)a7;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)tapbackAttributionView:(id)a3 didTapToSaveSticker:(id)a4;
@end

@implementation CKAttributionViewAccessoryView

- (CKAttributionViewAccessoryView)initWithFrame:(CGRect)a3 chatItem:(id)a4 layoutBounds:(CGRect)a5 windowSize:(CGSize)a6 saveStickerHandler:(id)a7
{
  width = a6.width;
  height = a5.size.height;
  v9 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v30 = a3.origin.y;
  v31 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.x;
  v15 = a4;
  v16 = *&width;
  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 attributionViewAdditionalTopOffset];
  v19 = v18;

  v20 = +[CKUIBehavior sharedBehaviors];
  v21 = [v20 attributionViewShouldCenterInTranscript];

  v22 = 0.0;
  if (v21 && v41 > 0.0)
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

    v27 = [[_TtC7ChatKit24CKTapbackAttributionView alloc] initWithMessagePartChatItem:v15];
    [(CKTapbackAttributionView *)v27 setFrame:0.0, 0.0, v12, v23];
    [(CKTapbackAttributionView *)v27 setDelegate:v24];
    [(CKAttributionViewAccessoryView *)v24 addSubview:v27];
    attributionView = v24->_attributionView;
    v24->_attributionView = v27;
  }

  return v24;
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if ([(CKAttributionViewAccessoryView *)self isContentVisible:a3]!= a3)
  {
    [(CKAttributionViewAccessoryView *)self setIsContentVisible:v4];
    v6 = [(CKAttributionViewAccessoryView *)self attributionView];
    v7 = v6;
    if (v4)
    {
      [v6 present];
    }

    else
    {
      [v6 dismiss];
    }
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CKAttributionViewAccessoryView *)self attributionView];
  v9 = [v8 hitTest:v7 withEvent:{x, y}];

  return v9;
}

- (void)tapbackAttributionView:(id)a3 didTapToSaveSticker:(id)a4
{
  v7 = a4;
  v5 = [(CKAttributionViewAccessoryView *)self saveStickerHandler];

  if (v5)
  {
    v6 = [(CKAttributionViewAccessoryView *)self saveStickerHandler];
    (v6)[2](v6, v7);
  }
}

@end