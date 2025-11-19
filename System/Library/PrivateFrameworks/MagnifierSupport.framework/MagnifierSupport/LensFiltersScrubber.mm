@interface LensFiltersScrubber
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)didTapScrollView:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation LensFiltersScrubber

- (void)layoutSubviews
{
  v2 = self;
  sub_257C1A51C();
}

- (void)didTapScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C1B058(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C1B65C(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a5->x;
  v9 = self;
  v7 = sub_257C1B528(x);
  if ((v8 & 1) == 0)
  {
    *&a5->x = v7;
  }
}

- (unint64_t)accessibilityTraits
{
  result = *MEMORY[0x277D76538];
  v3 = *MEMORY[0x277D765D0];
  if (!*MEMORY[0x277D76538])
  {
    if (!v3)
    {
      return 0;
    }

LABEL_5:
    result |= v3;
    return result;
  }

  if ((v3 & ~result) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

- (NSString)accessibilityLabel
{
  sub_257C1C4B8();
  if (v2)
  {
    v3 = sub_257ECF4C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)accessibilityHint
{
  v2 = self;
  sub_257C1B980();
  v4 = v3;

  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)accessibilityDecrement
{
  v2 = self;
  sub_257C1BD00();
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_257C1BF5C();
}

@end