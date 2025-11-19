@interface NSLayoutConstraint
@end

@implementation NSLayoutConstraint

uint64_t __56__NSLayoutConstraint_IC__ic_constraints_affectingViews___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 firstItem];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 secondItem];
    v6 = [v7 containsObject:v8];
  }

  return v6;
}

@end