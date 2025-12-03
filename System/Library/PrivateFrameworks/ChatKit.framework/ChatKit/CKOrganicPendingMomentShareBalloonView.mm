@interface CKOrganicPendingMomentShareBalloonView
- (void)prepareForDisplay;
- (void)prepareForReuse;
@end

@implementation CKOrganicPendingMomentShareBalloonView

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CKOrganicPendingMomentShareBalloonView;
  [(CKAttachmentBalloonView *)&v5 prepareForReuse];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(CKOrganicPendingMomentShareBalloonView *)self setTransform:v4];
}

- (void)prepareForDisplay
{
  v9.receiver = self;
  v9.super_class = CKOrganicPendingMomentShareBalloonView;
  [(CKPendingMomentShareBalloonView *)&v9 prepareForDisplay];
  layoutRecipe = [(CKOrganicPendingMomentShareBalloonView *)self layoutRecipe];
  [layoutRecipe rotation];
  v5 = v4;

  memset(&v8, 0, sizeof(v8));
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&v7.a = *MEMORY[0x1E695EFD0];
  *&v7.c = v6;
  *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformRotate(&v8, &v7, v5 * 3.14159265 / 180.0);
  v7 = v8;
  [(CKOrganicPendingMomentShareBalloonView *)self setTransform:&v7];
}

@end