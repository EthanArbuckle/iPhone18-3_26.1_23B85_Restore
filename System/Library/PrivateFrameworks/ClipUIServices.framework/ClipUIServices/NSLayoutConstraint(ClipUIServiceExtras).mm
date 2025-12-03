@interface NSLayoutConstraint(ClipUIServiceExtras)
+ (void)cps_if:()ClipUIServiceExtras thenActivate:elseActivate:;
+ (void)cps_if:()ClipUIServiceExtras thenActivateConstraints:elseActivateConstraints:;
@end

@implementation NSLayoutConstraint(ClipUIServiceExtras)

+ (void)cps_if:()ClipUIServiceExtras thenActivate:elseActivate:
{
  v7 = a5;
  [a4 setActive:a3];
  [v7 setActive:a3 ^ 1];
}

+ (void)cps_if:()ClipUIServiceExtras thenActivateConstraints:elseActivateConstraints:
{
  v9 = a5;
  v10 = a4;
  v13 = v10;
  if (a3)
  {
    v11 = a5;
  }

  else
  {
    v11 = a4;
  }

  if (a3)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  [self deactivateConstraints:v11];
  [self activateConstraints:v12];
}

@end