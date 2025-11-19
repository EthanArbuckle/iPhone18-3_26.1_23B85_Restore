@interface HearingAidTuningAmplificationSliderCell
- (CGPoint)accessibilityActivationPoint;
- (NSArray)automationElements;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HearingAidTuningAmplificationSliderCell

- (void)prepareForReuse
{
  v2 = self;
  sub_252001678(type metadata accessor for HearingAidTuningAmplificationSliderCell);
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_251FFD2D0(a3);
}

- (NSString)accessibilityLabel
{
  v3 = sub_2520046A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = self;
  v9 = self;
  sub_252004620();
  type metadata accessor for HearingAidTuningAmplificationSliderCell();
  sub_251FEAB30(v8);
  (*(v4 + 8))(v8, v3);

  v10 = sub_2520046B0();

  return v10;
}

- (unint64_t)accessibilityTraits
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70);
  v3 = self;
  v4 = v2();
  v5 = [v4 accessibilityTraits];

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70);
  v3 = self;
  v4 = v2();
  [v4 accessibilityActivationPoint];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (NSArray)automationElements
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_252007360;
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x70);
  v5 = self;
  v6 = v4();
  *(v3 + 56) = sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
  *(v3 + 32) = v6;

  v7 = sub_2520047A0();

  return v7;
}

@end