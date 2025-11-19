@interface JTAnimation
+ (void)performAnimation:(id)a3 curve:(int64_t)a4 duration:(double)a5 completion:(id)a6 delay:(double)a7 userInteractionEnabled:(BOOL)a8;
+ (void)performAnimation:(id)a3 timingParameters:(id)a4 duration:(double)a5 completion:(id)a6 delay:(double)a7 userInteractionEnabled:(BOOL)a8;
+ (void)performWithAnimator:(id)a3 animation:(id)a4 duration:(double)a5 completion:(id)a6 delay:(double)a7 userInteractionEnabled:(BOOL)a8;
@end

@implementation JTAnimation

+ (void)performAnimation:(id)a3 curve:(int64_t)a4 duration:(double)a5 completion:(id)a6 delay:(double)a7 userInteractionEnabled:(BOOL)a8
{
  v8 = a8;
  v13 = MEMORY[0x277D75D40];
  v14 = a6;
  v15 = a3;
  v16 = [[v13 alloc] initWithDuration:a4 curve:v15 animations:a5];
  [JTAnimation performWithAnimator:v16 animation:v15 duration:v14 completion:v8 delay:a5 userInteractionEnabled:a7];
}

+ (void)performAnimation:(id)a3 timingParameters:(id)a4 duration:(double)a5 completion:(id)a6 delay:(double)a7 userInteractionEnabled:(BOOL)a8
{
  v8 = a8;
  v13 = MEMORY[0x277D75D40];
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [[v13 alloc] initWithDuration:v15 timingParameters:a5];

  [JTAnimation performWithAnimator:v17 animation:v16 duration:v14 completion:v8 delay:a5 userInteractionEnabled:a7];
}

+ (void)performWithAnimator:(id)a3 animation:(id)a4 duration:(double)a5 completion:(id)a6 delay:(double)a7 userInteractionEnabled:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v12 = a4;
  v13 = a6;
  if (v12)
  {
    [v14 addAnimations:v12];
  }

  if (v13)
  {
    [v14 addCompletion:v13];
  }

  [v14 setUserInteractionEnabled:v8];
  [v14 startAnimationAfterDelay:a7];
}

@end