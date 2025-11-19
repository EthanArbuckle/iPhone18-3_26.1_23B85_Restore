@interface HypertensionNotificationInteractionEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HypertensionNotificationInteractionEvent

- (NSString)eventName
{
  v2 = sub_22896CC84();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_22896A234(MEMORY[0x277D84F90]);
  v4 = sub_22896CC74();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  HypertensionNotificationInteractionEvent.makeIHAGatedEventPayload(with:)(v4);

  v5 = sub_22896CC74();

  return v5;
}

@end