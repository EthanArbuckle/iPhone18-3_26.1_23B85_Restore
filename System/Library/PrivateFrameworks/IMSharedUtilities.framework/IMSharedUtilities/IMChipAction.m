@interface IMChipAction
+ (id)actionWithType:(int64_t)a3 dictionary:(id)a4;
- (IMChipAction)init;
- (IMChipAction)initWithSuggestion:(id)a3 type:(int64_t)a4 action:(id)a5;
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

- (IMChipAction)initWithSuggestion:(id)a3 type:(int64_t)a4 action:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___IMChipAction_suggestion) = a3;
  *(&self->super.isa + OBJC_IVAR___IMChipAction_type) = a4;
  *(&self->super.isa + OBJC_IVAR___IMChipAction_action) = a5;
  v7.receiver = self;
  v7.super_class = IMChipAction;
  v5 = a3;
  swift_unknownObjectRetain();
  return [(IMChipAction *)&v7 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A874FECC();

  v3 = sub_1A88C8188();

  return v3;
}

+ (id)actionWithType:(int64_t)a3 dictionary:(id)a4
{
  if (a4)
  {
    v5 = sub_1A88C81A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A87505AC(a3, v5);

  return v6;
}

- (id)suggestedActionBody
{
  v2 = self;
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