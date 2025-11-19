@interface CKWalletItemBalloonView
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setPresentationProperties:(id)a3;
@end

@implementation CKWalletItemBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a5;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v10 presentationPropertiesForWidth:v6 orientation:a4];
    [(CKWalletItemBalloonView *)self setPresentationProperties:v9];
  }
}

- (void)setPresentationProperties:(id)a3
{
  v5 = a3;
  if (self->_presentationProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_presentationProperties, a3);
    self->_pendingPropertyChange = 1;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    v5 = v6;
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKWalletItemBalloonView;
  [(CKLinkBalloonView *)&v4 prepareForReuse];
  presentationProperties = self->_presentationProperties;
  self->_presentationProperties = 0;

  self->_pendingPropertyChange = 0;
}

- (void)prepareForDisplay
{
  if (self->_pendingPropertyChange)
  {
    v3 = [(CKLinkBalloonView *)self linkView];
    [v3 removeFromSuperview];

    [(CKLinkBalloonView *)self setLinkView:0];
    self->_pendingPropertyChange = 0;
  }

  v4 = [(CKLinkBalloonView *)self linkView];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithPresentationProperties:self->_presentationProperties URL:0];
    [(CKLinkBalloonView *)self setLinkView:v5];

    v6 = [(CKBalloonView *)self tapGestureRecognizer];
    [v6 setCancelsTouchesInView:1];

    objc_initWeak(&location, self);
    v7 = [(CKLinkBalloonView *)self linkView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CKWalletItemBalloonView_prepareForDisplay__block_invoke;
    v10[3] = &unk_1E72EC460;
    objc_copyWeak(&v11, &location);
    [v7 _setAction:v10 withText:&stru_1F04268F8 buttonType:1];

    v8 = [(CKLinkBalloonView *)self linkView];
    [v8 setNeedsUpdateConstraints];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v9.receiver = self;
  v9.super_class = CKWalletItemBalloonView;
  [(CKLinkBalloonView *)&v9 prepareForDisplay];
}

void __44__CKWalletItemBalloonView_prepareForDisplay__block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 tapGestureRecognizer];
  [v2 tapGestureRecognized:v1];
}

@end