@interface CKPendingMomentShareBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (void)prepareForDisplay;
@end

@implementation CKPendingMomentShareBalloonView

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  v5 = [CKUIBehavior sharedBehaviors:insets];
  [v5 attachmentBalloonSize];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
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
  v5.super_class = CKPendingMomentShareBalloonView;
  result = [(CKBalloonDescriptor_t *)&v5 balloonDescriptor];
  retstr->var4 = -1;
  retstr->var1 = 0;
  return result;
}

- (void)prepareForDisplay
{
  v7.receiver = self;
  v7.super_class = CKPendingMomentShareBalloonView;
  [(CKAttachmentBalloonView *)&v7 prepareForDisplay];
  layer = [(CKPendingMomentShareBalloonView *)self layer];
  [layer setShadowOffset:{0.0, 7.0}];

  layer2 = [(CKPendingMomentShareBalloonView *)self layer];
  LODWORD(v5) = 1045220557;
  [layer2 setShadowOpacity:v5];

  layer3 = [(CKPendingMomentShareBalloonView *)self layer];
  [layer3 setShadowRadius:27.0];
}

@end