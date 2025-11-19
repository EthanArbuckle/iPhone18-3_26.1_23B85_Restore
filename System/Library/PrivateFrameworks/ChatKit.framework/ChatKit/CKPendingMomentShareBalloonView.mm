@interface CKPendingMomentShareBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (void)prepareForDisplay;
@end

@implementation CKPendingMomentShareBalloonView

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  v5 = [CKUIBehavior sharedBehaviors:a4];
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
  v3 = [(CKPendingMomentShareBalloonView *)self layer];
  [v3 setShadowOffset:{0.0, 7.0}];

  v4 = [(CKPendingMomentShareBalloonView *)self layer];
  LODWORD(v5) = 1045220557;
  [v4 setShadowOpacity:v5];

  v6 = [(CKPendingMomentShareBalloonView *)self layer];
  [v6 setShadowRadius:27.0];
}

@end