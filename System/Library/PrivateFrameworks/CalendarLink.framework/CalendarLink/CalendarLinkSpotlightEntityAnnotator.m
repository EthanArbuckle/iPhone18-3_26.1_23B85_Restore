@interface CalendarLinkSpotlightEntityAnnotator
+ (void)associateEventEntityWithIdentifier:(id)a3 occurrenceDate:(id)a4 with:(id)a5;
- (CalendarLinkSpotlightEntityAnnotator)init;
@end

@implementation CalendarLinkSpotlightEntityAnnotator

+ (void)associateEventEntityWithIdentifier:(id)a3 occurrenceDate:(id)a4 with:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_2428B4618();
  v13 = v12;
  if (a4)
  {
    sub_2428B3678();
    v14 = sub_2428B3688();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = sub_2428B3688();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  v16 = a5;
  sub_242857420(v11, v13, v10, v16);

  sub_242830FC0(v10);
}

- (CalendarLinkSpotlightEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CalendarLinkSpotlightEntityAnnotator();
  return [(CalendarLinkSpotlightEntityAnnotator *)&v3 init];
}

@end