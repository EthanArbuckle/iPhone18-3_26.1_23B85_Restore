@interface UIView
+ (void)safari_animate:(char)a3 withDuration:(void *)a4 animations:;
+ (void)safari_animate:(uint64_t)a3 withDuration:(char)a4 delay:(uint64_t)a5 options:(void *)a6 animations:(void *)a7 completion:;
@end

@implementation UIView

+ (void)safari_animate:(char)a3 withDuration:(void *)a4 animations:
{
  v7 = a4;
  v6 = objc_opt_self();
  [(UIView *)a1 safari_animate:v6 withDuration:a3 delay:0 options:v7 animations:0 completion:?];
}

+ (void)safari_animate:(uint64_t)a3 withDuration:(char)a4 delay:(uint64_t)a5 options:(void *)a6 animations:(void *)a7 completion:
{
  v15 = a6;
  v12 = a7;
  v13 = objc_opt_self();
  v14 = _Block_copy(v12);

  if (a4)
  {
    [v13 animateWithDuration:a5 delay:v15 options:v14 animations:a1 completion:a2];
  }

  else
  {
    if (v15)
    {
      v15[2](v15);
    }

    if (v12)
    {
      v14[2](v14, 1);
    }
  }
}

@end