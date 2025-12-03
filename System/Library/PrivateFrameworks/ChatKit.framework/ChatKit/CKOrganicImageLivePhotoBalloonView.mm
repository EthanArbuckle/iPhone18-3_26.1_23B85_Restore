@interface CKOrganicImageLivePhotoBalloonView
- (CKBalloonDescriptor_t)balloonDescriptor;
- (void)prepareForReuse;
- (void)setFrame:(CGRect)frame;
@end

@implementation CKOrganicImageLivePhotoBalloonView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CKOrganicImageLivePhotoBalloonView *)self frame];
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v10;
  v22.size.height = v11;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (!CGRectEqualToRect(v21, v22))
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(CKOrganicImageLivePhotoBalloonView *)self transform];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    v15 = *MEMORY[0x1E695EFD0];
    v16 = v12;
    v17 = *(MEMORY[0x1E695EFD0] + 32);
    [(CKOrganicImageLivePhotoBalloonView *)self setTransform:&v15];
    v14.receiver = self;
    v14.super_class = CKOrganicImageLivePhotoBalloonView;
    [(CKBalloonImageView *)&v14 setFrame:x, y, width, height];
    livePhotoView = [(CKLivePhotoBalloonView *)self livePhotoView];
    [(CKOrganicImageLivePhotoBalloonView *)self bounds];
    [livePhotoView setFrame:?];

    v15 = v18;
    v16 = v19;
    v17 = v20;
    [(CKOrganicImageLivePhotoBalloonView *)self setTransform:&v15];
  }
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v5.receiver = self;
  v5.super_class = CKOrganicImageLivePhotoBalloonView;
  result = [(CKBalloonDescriptor_t *)&v5 balloonDescriptor];
  retstr->var4 = -1;
  retstr->var1 = 0;
  return result;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKOrganicImageLivePhotoBalloonView;
  [(CKImageBalloonView *)&v5 prepareForReuse];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(CKOrganicImageLivePhotoBalloonView *)self setTransform:v4];
}

@end