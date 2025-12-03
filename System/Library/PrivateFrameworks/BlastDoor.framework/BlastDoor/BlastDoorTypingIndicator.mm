@interface BlastDoorTypingIndicator
- (BlastDoorTypingIndicator)init;
- (BlastDoorTypingIndicator_Icon)icon;
- (NSArray)participantDestinationIdentifiers;
- (NSString)balloonPluginBundleID;
- (NSString)description;
@end

@implementation BlastDoorTypingIndicator

- (NSString)description
{
  sub_214593100(self + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator, v4);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorTypingIndicator_Icon)icon
{
  selfCopy = self;
  v3 = sub_21457C2AC();

  return v3;
}

- (NSString)balloonPluginBundleID
{
  sub_214593100(self + OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator, v6);
  v2 = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v7;

    sub_214307C44(v6);
    if (v2)
    {
      v4 = sub_2146D9588();
      sub_213FDC6D0(v3, v2);
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  return result;
}

- (NSArray)participantDestinationIdentifiers
{
  if (*&self->typingIndicator[OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator + 520])
  {
    v2 = *&self->typingIndicator[OBJC_IVAR___BlastDoorTypingIndicator_typingIndicator + 520];

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorTypingIndicator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end