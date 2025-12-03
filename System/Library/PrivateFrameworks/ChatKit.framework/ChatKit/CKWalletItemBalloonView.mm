@interface CKWalletItemBalloonView
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setPresentationProperties:(id)properties;
@end

@implementation CKWalletItemBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  orientationCopy = orientation;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [objectCopy presentationPropertiesForWidth:orientationCopy orientation:width];
    [(CKWalletItemBalloonView *)self setPresentationProperties:v9];
  }
}

- (void)setPresentationProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_presentationProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->_presentationProperties, properties);
    self->_pendingPropertyChange = 1;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    propertiesCopy = v6;
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
    linkView = [(CKLinkBalloonView *)self linkView];
    [linkView removeFromSuperview];

    [(CKLinkBalloonView *)self setLinkView:0];
    self->_pendingPropertyChange = 0;
  }

  linkView2 = [(CKLinkBalloonView *)self linkView];

  if (!linkView2)
  {
    v5 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithPresentationProperties:self->_presentationProperties URL:0];
    [(CKLinkBalloonView *)self setLinkView:v5];

    tapGestureRecognizer = [(CKBalloonView *)self tapGestureRecognizer];
    [tapGestureRecognizer setCancelsTouchesInView:1];

    objc_initWeak(&location, self);
    linkView3 = [(CKLinkBalloonView *)self linkView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CKWalletItemBalloonView_prepareForDisplay__block_invoke;
    v10[3] = &unk_1E72EC460;
    objc_copyWeak(&v11, &location);
    [linkView3 _setAction:v10 withText:&stru_1F04268F8 buttonType:1];

    linkView4 = [(CKLinkBalloonView *)self linkView];
    [linkView4 setNeedsUpdateConstraints];

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