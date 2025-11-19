@interface CKHandwritingBalloonView
- (CGRect)maskFrame;
- (CKBalloonDescriptor_t)balloonDescriptor;
@end

@implementation CKHandwritingBalloonView

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
  v5.super_class = CKHandwritingBalloonView;
  result = [(CKBalloonDescriptor_t *)&v5 balloonDescriptor];
  retstr->var1 = 0;
  return result;
}

- (CGRect)maskFrame
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [(CKHandwritingBalloonView *)self balloonDescriptor];
  [v3 extensionBalloonContentInsetsForOrientation:2 * (v21 != 0)];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v20.receiver = self;
  v20.super_class = CKHandwritingBalloonView;
  [(CKTranscriptPluginBalloonView *)&v20 maskFrame];
  v13 = v7 + v12;
  v15 = v5 + v14;
  v17 = v16 - (v7 + v11);
  v19 = v18 - (v5 + v9);
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v13;
  return result;
}

@end