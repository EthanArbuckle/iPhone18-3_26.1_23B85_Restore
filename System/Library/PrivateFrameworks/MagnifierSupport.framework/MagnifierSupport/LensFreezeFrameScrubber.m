@interface LensFreezeFrameScrubber
- (NSString)accessibilityLabel;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)didTapAddButton:(id)a3;
- (void)didTapScrollView:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation LensFreezeFrameScrubber

- (void)layoutSubviews
{
  v2 = self;
  sub_257EBB1F0();
}

- (void)didTapScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257EBB9A0(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257EBBFA4(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a5->x;
  v9 = self;
  v7 = sub_257EBBE70(x);
  if ((v8 & 1) == 0)
  {
    *&a5->x = v7;
  }
}

- (void)didTapAddButton:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  sub_257BE4084(v3, &unk_27F8F62F0);
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
  sub_257EBCB50();
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

- (void)accessibilityDecrement
{
  v2 = self;
  sub_257EBC344();
}

- (void)accessibilityIncrement
{
  v2 = self;
  sub_257EBC45C();
}

- (id)_accessibilitySupplementaryFooterViews
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_257ED6D30;
  v4 = self;
  v5 = sub_257EB85FC();
  *(v3 + 56) = sub_257BD2C2C(0, &unk_281543D80);
  *(v3 + 32) = v5;

  v6 = sub_257ECF7F0();

  return v6;
}

@end