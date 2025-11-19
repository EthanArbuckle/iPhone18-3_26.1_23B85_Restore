@interface CKStandardButton
- (CKStandardButton)init;
- (void)tintColorDidChange;
@end

@implementation CKStandardButton

- (CKStandardButton)init
{
  v3 = [CKStandardButton buttonWithType:0];

  if (v3)
  {
    [(CKStandardButton *)v3 tintColorDidChange];
  }

  return v3;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = CKStandardButton;
  [(CKStandardButton *)&v4 tintColorDidChange];
  v3 = [(CKStandardButton *)self tintColor];
  [(CKStandardButton *)self setTitleColor:v3 forState:0];
}

@end