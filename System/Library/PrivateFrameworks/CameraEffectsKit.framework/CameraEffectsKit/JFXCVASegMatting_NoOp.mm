@interface JFXCVASegMatting_NoOp
- (id)initForFrameSet:(id)set;
@end

@implementation JFXCVASegMatting_NoOp

- (id)initForFrameSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = JFXCVASegMatting_NoOp;
  v5 = [(JFXMatting *)&v9 initForFrameSet:setCopy];
  v6 = v5;
  if (v5)
  {
    v8.receiver = v5;
    v8.super_class = JFXCVASegMatting_NoOp;
    [(JFXMatting *)&v8 setReady:1];
  }

  return v6;
}

@end