@interface CKLivePhotoBalloonView
- (CKLivePhotoBalloonView)initWithFrame:(CGRect)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)layoutSubviews;
@end

@implementation CKLivePhotoBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = CKLivePhotoBalloonView;
  [(CKImageBalloonView *)&v14 configureForMediaObject:v10 previewWidth:v7 orientation:v6 hasInvisibleInkEffect:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [(CKLivePhotoBalloonView *)self livePhotoView];
    v13 = [v11 livePhoto];

    [v12 setLivePhoto:v13];
  }
}

- (CKLivePhotoBalloonView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = CKLivePhotoBalloonView;
  v3 = [(CKImageBalloonView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x193AF5EC0](@"PHLivePhotoView", @"PhotosUI"));
    livePhotoView = v3->_livePhotoView;
    v3->_livePhotoView = v4;

    v6 = v3->_livePhotoView;
    [(CKLivePhotoBalloonView *)v3 bounds];
    [(PHLivePhotoView *)v6 setFrame:?];
    [(CKLivePhotoBalloonView *)v3 addSubview:v3->_livePhotoView];
    v7 = [(CKLivePhotoBalloonView *)v3 livePhotoView];

    if (v7)
    {
      if (!v3->_livePhotoViewMaskLayer)
      {
        v8 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
        [(CKBalloonView *)v3 balloonDescriptor];
        v9 = [(CKBalloonMaskLayer *)v8 initWithDescriptor:&v15];
        livePhotoViewMaskLayer = v3->_livePhotoViewMaskLayer;
        v3->_livePhotoViewMaskLayer = v9;

        v11 = v3->_livePhotoViewMaskLayer;
        v12 = [(CKLivePhotoBalloonView *)v3 livePhotoView];
        v13 = [v12 layer];
        [v13 setMask:v11];
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
  v11 = [(CKLivePhotoBalloonView *)self livePhotoView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKLivePhotoBalloonView *)self livePhotoView];

  if (v12)
  {
    livePhotoViewMaskLayer = self->_livePhotoViewMaskLayer;
    [(CKBalloonView *)self balloonDescriptor];
    [(CKBalloonMaskLayer *)livePhotoViewMaskLayer updateDescriptor:&v16];
    v14 = [(CKLivePhotoBalloonView *)self livePhotoView];
    v15 = [v14 layer];
    [v15 bounds];
    [(CKBalloonMaskLayer *)self->_livePhotoViewMaskLayer setFrame:?];
  }
}

@end