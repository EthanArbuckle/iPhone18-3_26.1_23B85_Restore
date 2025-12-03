@interface CKLivePhotoBalloonView
- (CKLivePhotoBalloonView)initWithFrame:(CGRect)frame;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)layoutSubviews;
@end

@implementation CKLivePhotoBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  effectCopy = effect;
  orientationCopy = orientation;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CKLivePhotoBalloonView;
  [(CKImageBalloonView *)&v14 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:effectCopy hasInvisibleInkEffect:width];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objectCopy;
    livePhotoView = [(CKLivePhotoBalloonView *)self livePhotoView];
    livePhoto = [v11 livePhoto];

    [livePhotoView setLivePhoto:livePhoto];
  }
}

- (CKLivePhotoBalloonView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CKLivePhotoBalloonView;
  v3 = [(CKImageBalloonView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x193AF5EC0](@"PHLivePhotoView", @"PhotosUI"));
    livePhotoView = v3->_livePhotoView;
    v3->_livePhotoView = v4;

    v6 = v3->_livePhotoView;
    [(CKLivePhotoBalloonView *)v3 bounds];
    [(PHLivePhotoView *)v6 setFrame:?];
    [(CKLivePhotoBalloonView *)v3 addSubview:v3->_livePhotoView];
    livePhotoView = [(CKLivePhotoBalloonView *)v3 livePhotoView];

    if (livePhotoView)
    {
      if (!v3->_livePhotoViewMaskLayer)
      {
        v8 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
        [(CKBalloonView *)v3 balloonDescriptor];
        v9 = [(CKBalloonMaskLayer *)v8 initWithDescriptor:&v15];
        livePhotoViewMaskLayer = v3->_livePhotoViewMaskLayer;
        v3->_livePhotoViewMaskLayer = v9;

        v11 = v3->_livePhotoViewMaskLayer;
        livePhotoView2 = [(CKLivePhotoBalloonView *)v3 livePhotoView];
        layer = [livePhotoView2 layer];
        [layer setMask:v11];
      }
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKLivePhotoBalloonView;
  [(CKImageBalloonView *)&v17 layoutSubviews];
  [(CKLivePhotoBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  livePhotoView = [(CKLivePhotoBalloonView *)self livePhotoView];
  [livePhotoView setFrame:{v4, v6, v8, v10}];

  livePhotoView2 = [(CKLivePhotoBalloonView *)self livePhotoView];

  if (livePhotoView2)
  {
    livePhotoViewMaskLayer = self->_livePhotoViewMaskLayer;
    [(CKBalloonView *)self balloonDescriptor];
    [(CKBalloonMaskLayer *)livePhotoViewMaskLayer updateDescriptor:&v16];
    livePhotoView3 = [(CKLivePhotoBalloonView *)self livePhotoView];
    layer = [livePhotoView3 layer];
    [layer bounds];
    [(CKBalloonMaskLayer *)self->_livePhotoViewMaskLayer setFrame:?];
  }
}

@end