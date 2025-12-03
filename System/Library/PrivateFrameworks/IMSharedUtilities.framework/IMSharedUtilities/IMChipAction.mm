@interface IMChipAction
+ (id)actionWithType:(int64_t)type dictionary:(id)dictionary;
- (IMChipAction)init;
- (IMChipAction)initWithSuggestion:(id)suggestion type:(int64_t)type action:(id)action;
- (IMChipActionProtocol)action;
- (id)dictionaryRepresentation;
- (id)suggestedActionBody;
@end

@implementation IMChipAction

- (IMChipActionProtocol)action
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (IMChipAction)initWithSuggestion:(id)suggestion type:(int64_t)type action:(id)action
{
  *(&self->super.isa + OBJC_IVAR___IMChipAction_suggestion) = suggestion;
  *(&self->super.isa + OBJC_IVAR___IMChipAction_type) = type;
  *(&self->super.isa + OBJC_IVAR___IMChipAction_action) = action;
  v7.receiver = self;
  v7.super_class = IMChipAction;
  suggestionCopy = suggestion;
  swift_unknownObjectRetain();
  return [(IMChipAction *)&v7 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A874FECC();

  v3 = sub_1A88C8188();

  return v3;
}

+ (id)actionWithType:(int64_t)type dictionary:(id)dictionary
{
  if (dictionary)
  {
    v5 = sub_1A88C81A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A87505AC(type, v5);

  return v6;
}

- (id)suggestedActionBody
{
  selfCopy = self;
  v3 = sub_1A8750200();

  return v3;
}

- (IMChipAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end