@interface BlastDoorBasicTypingIndicator
- (BlastDoorBasicTypingIndicator)init;
- (NSArray)participantDestinationIdentifiers;
- (NSString)description;
@end

@implementation BlastDoorBasicTypingIndicator

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator);
  v5 = *&self->basicTypingIndicator[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSArray)participantDestinationIdentifiers
{
  if (*&self->basicTypingIndicator[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator])
  {
    v2 = *&self->basicTypingIndicator[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorBasicTypingIndicator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end