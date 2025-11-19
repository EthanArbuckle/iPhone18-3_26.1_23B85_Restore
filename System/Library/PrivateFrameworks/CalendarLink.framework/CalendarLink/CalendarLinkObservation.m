@interface CalendarLinkObservation
+ (void)notifyObservers;
- (void)dealloc;
@end

@implementation CalendarLinkObservation

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___CalendarLinkObservation_observationTask))
  {
    v3 = self;
    sub_2428B2F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E50, &qword_2428C53E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4B10, &qword_2428C53F0);
    sub_2428B4788();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CalendarLinkObservation();
  [(CalendarLinkObservation *)&v5 dealloc];
}

+ (void)notifyObservers
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E58, &qword_2428C53F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = sub_2428B4778();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = ObjCClassMetadata;
  sub_2428AAB30(0, 0, v5, &unk_2428C5420, v8);
}

@end