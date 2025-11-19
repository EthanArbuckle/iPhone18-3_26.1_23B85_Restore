@interface CKLinkReplyContextPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKLinkReplyContextPreviewBalloonView)initWithFrame:(CGRect)a3;
- (void)_linkViewMetadataDidBecomeComplete:(id)a3;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)a3;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setLinkView:(id)a3;
@end

@implementation CKLinkReplyContextPreviewBalloonView

- (CKLinkReplyContextPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKLinkReplyContextPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
    [(CKColoredBalloonView *)v3 balloonDescriptor];
    v5 = [(CKBalloonMaskLayer *)v4 initWithDescriptor:&v8];
    linkViewMaskLayer = v3->_linkViewMaskLayer;
    v3->_linkViewMaskLayer = v5;
  }

  return v3;
}

- (void)setLinkView:(id)a3
{
  v5 = a3;
  linkView = self->_linkView;
  if (linkView != v5)
  {
    v9 = v5;
    if (linkView)
    {
      [(LPLinkView *)linkView removeFromSuperview];
    }

    objc_storeStrong(&self->_linkView, a3);
    v5 = v9;
    if (v9)
    {
      [(LPLinkView *)v9 setDelegate:self];
      [(LPLinkView *)v9 _setDisableTapGesture:1];
      [(LPLinkView *)v9 _setApplyCornerRadius:0];
      [(CKLinkReplyContextPreviewBalloonView *)self addSubview:v9];
      v7 = [(LPLinkView *)v9 layer];
      v8 = [(CKLinkReplyContextPreviewBalloonView *)self linkViewMaskLayer];
      [v7 setMask:v8];

      v5 = v9;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  linkView = self->_linkView;
  if (linkView)
  {

    [(LPLinkView *)linkView sizeThatFits:a4, a5];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(47);
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "Calling sizeThatFits when LPLinkView has not been configured yet.", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v14.receiver = self;
    v14.super_class = CKLinkReplyContextPreviewBalloonView;
    [(CKBalloonView *)&v14 sizeThatFits:a4 textAlignmentInsets:a5 tailInsets:width, height];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKLinkReplyContextPreviewBalloonView;
  [(CKColoredBalloonView *)&v5 prepareForReuse];
  linkView = self->_linkView;
  if (linkView)
  {
    [(LPLinkView *)linkView removeFromSuperview];
    v4 = self->_linkView;
    self->_linkView = 0;
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CKLinkReplyContextPreviewBalloonView;
  [(CKColoredBalloonView *)&v24 layoutSubviews];
  [(CKLinkReplyContextPreviewBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKLinkReplyContextPreviewBalloonView *)self linkViewMaskLayer];
  [(CKColoredBalloonView *)self balloonDescriptor];
  [v12 updateDescriptor:&v23];

  v13 = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(CKLinkReplyContextPreviewBalloonView *)self linkViewMaskLayer];
  [v22 setFrame:{v15, v17, v19, v21}];
}

- (void)prepareForDisplay
{
  v14.receiver = self;
  v14.super_class = CKLinkReplyContextPreviewBalloonView;
  [(CKColoredBalloonView *)&v14 prepareForDisplay];
  v3 = [(CKBalloonView *)self orientation]== 1;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 pluginBalloonInsetsForMessageFromMe:v3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
  [v13 setContentInset:{v6, v8, v10, v12}];

  [(LPLinkView *)self->_linkView setNeedsLayout];
}

- (void)linkViewNeedsResize:(id)a3
{
  linkView = self->_linkView;
  if (linkView == a3)
  {
    [(LPLinkView *)linkView setNeedsLayout];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)_linkViewMetadataDidBecomeComplete:(id)a3
{
  linkView = self->_linkView;
  if (linkView == a3)
  {
    [(LPLinkView *)linkView setNeedsLayout];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

@end