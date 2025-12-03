@interface CKLinkReplyContextPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKLinkReplyContextPreviewBalloonView)initWithFrame:(CGRect)frame;
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)resize;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setLinkView:(id)view;
@end

@implementation CKLinkReplyContextPreviewBalloonView

- (CKLinkReplyContextPreviewBalloonView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKLinkReplyContextPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setLinkView:(id)view
{
  viewCopy = view;
  linkView = self->_linkView;
  if (linkView != viewCopy)
  {
    v9 = viewCopy;
    if (linkView)
    {
      [(LPLinkView *)linkView removeFromSuperview];
    }

    objc_storeStrong(&self->_linkView, view);
    viewCopy = v9;
    if (v9)
    {
      [(LPLinkView *)v9 setDelegate:self];
      [(LPLinkView *)v9 _setDisableTapGesture:1];
      [(LPLinkView *)v9 _setApplyCornerRadius:0];
      [(CKLinkReplyContextPreviewBalloonView *)self addSubview:v9];
      layer = [(LPLinkView *)v9 layer];
      linkViewMaskLayer = [(CKLinkReplyContextPreviewBalloonView *)self linkViewMaskLayer];
      [layer setMask:linkViewMaskLayer];

      viewCopy = v9;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  linkView = self->_linkView;
  if (linkView)
  {

    [(LPLinkView *)linkView sizeThatFits:insets, tailInsets];
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
    [(CKBalloonView *)&v14 sizeThatFits:insets textAlignmentInsets:tailInsets tailInsets:width, height];
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
  linkView = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
  [linkView setFrame:{v4, v6, v8, v10}];

  linkViewMaskLayer = [(CKLinkReplyContextPreviewBalloonView *)self linkViewMaskLayer];
  [(CKColoredBalloonView *)self balloonDescriptor];
  [linkViewMaskLayer updateDescriptor:&v23];

  linkView2 = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
  [linkView2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  linkViewMaskLayer2 = [(CKLinkReplyContextPreviewBalloonView *)self linkViewMaskLayer];
  [linkViewMaskLayer2 setFrame:{v15, v17, v19, v21}];
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
  linkView = [(CKLinkReplyContextPreviewBalloonView *)self linkView];
  [linkView setContentInset:{v6, v8, v10, v12}];

  [(LPLinkView *)self->_linkView setNeedsLayout];
}

- (void)linkViewNeedsResize:(id)resize
{
  linkView = self->_linkView;
  if (linkView == resize)
  {
    [(LPLinkView *)linkView setNeedsLayout];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  linkView = self->_linkView;
  if (linkView == complete)
  {
    [(LPLinkView *)linkView setNeedsLayout];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

@end