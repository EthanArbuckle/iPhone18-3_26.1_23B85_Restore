@interface MFCardContainerView
- (void)layoutSubviews;
- (void)updateAppearanceForReduceTransparency:(id)transparency;
@end

@implementation MFCardContainerView

- (void)updateAppearanceForReduceTransparency:(id)transparency
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (transparency)
  {
    sub_257ECC7E0();
    v8 = sub_257ECC810();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_257ECC810();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_257E89D88();

  sub_257E8A550(v7);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257E8A064();
}

@end