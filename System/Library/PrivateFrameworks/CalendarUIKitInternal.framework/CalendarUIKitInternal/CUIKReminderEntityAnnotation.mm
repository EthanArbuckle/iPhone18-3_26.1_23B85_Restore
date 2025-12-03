@interface CUIKReminderEntityAnnotation
+ (id)annotationWithReminderIntegrationEvent:(id)event;
+ (id)entityIdentifierForReminderIntegrationEvent:(id)event;
- (CUIKReminderEntityAnnotation)init;
@end

@implementation CUIKReminderEntityAnnotation

+ (id)annotationWithReminderIntegrationEvent:(id)event
{
  swift_getObjCClassMetadata();
  eventCopy = event;
  v5 = sub_2429A5924(eventCopy);

  return v5;
}

+ (id)entityIdentifierForReminderIntegrationEvent:(id)event
{
  swift_getObjCClassMetadata();
  v4 = sub_2429B7270();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7140, &qword_2429B84A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  eventCopy = event;
  sub_2429A5BE4(eventCopy, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {

    sub_2429A234C(v12, &qword_27ECD7140, &qword_2429B84A0);
    v14 = 0;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2429B7260();

    (*(v5 + 8))(v8, v4);
    v15 = sub_2429B7310();

    v14 = v15;
  }

  return v14;
}

- (CUIKReminderEntityAnnotation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReminderEntityAnnotation();
  return [(CUIKReminderEntityAnnotation *)&v3 init];
}

@end