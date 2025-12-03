@interface FAParentalControlsPushHandler
- (BOOL)shouldProcess:(id)process;
- (FAParentalControlsPushHandler)init;
- (void)process:(id)process;
@end

@implementation FAParentalControlsPushHandler

- (FAParentalControlsPushHandler)init
{
  *(&self->super.isa + OBJC_IVAR___FAParentalControlsPushHandler_parentalControlsOperation) = [objc_allocWithZone(type metadata accessor for FAParentalControlsOperation()) init];
  v3 = [objc_allocWithZone(FAAgeRangeController) init];
  *(&self->super.isa + OBJC_IVAR___FAParentalControlsPushHandler_ageRangeController) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ParentalControlsPushHandler();
  return [(FAParentalControlsPushHandler *)&v5 init];
}

- (BOOL)shouldProcess:(id)process
{
  if (process)
  {
    processCopy = process;
    event = [processCopy event];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == 0xD000000000000016 && 0x8000000100089260 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    LOBYTE(self) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)process:(id)process
{
  processCopy = process;
  selfCopy = self;
  ParentalControlsPushHandler.process(_:)(process);
}

@end