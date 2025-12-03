@interface HearingAidTuningValuesSliderCell
- (CGPoint)accessibilityActivationPoint;
- (NSArray)automationElements;
- (NSString)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HearingAidTuningValuesSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_251FFFFD0(specifier);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_252001678(type metadata accessor for HearingAidTuningValuesSliderCell);
}

- (NSString)accessibilityLabel
{
  sub_251FFEBAC(*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidTuningValuesSliderCell_sliderType));
  v2 = sub_2520046B0();

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x80);
  selfCopy = self;
  v4 = v2();
  accessibilityTraits = [v4 accessibilityTraits];

  return accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x80);
  selfCopy = self;
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
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x80);
  selfCopy = self;
  v6 = v4();
  *(v3 + 56) = sub_251FD6770(0, &qword_27F4C7258, 0x277D75A30);
  *(v3 + 32) = v6;

  v7 = sub_2520047A0();

  return v7;
}

@end