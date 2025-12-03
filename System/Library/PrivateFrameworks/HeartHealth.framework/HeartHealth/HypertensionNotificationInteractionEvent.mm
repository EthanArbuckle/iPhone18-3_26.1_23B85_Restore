@interface HypertensionNotificationInteractionEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HypertensionNotificationInteractionEvent

- (NSString)eventName
{
  v2 = sub_22896CC84();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_22896A234(MEMORY[0x277D84F90]);
  v4 = sub_22896CC74();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  HypertensionNotificationInteractionEvent.makeIHAGatedEventPayload(with:)(sourceCopy);

  v5 = sub_22896CC74();

  return v5;
}

@end