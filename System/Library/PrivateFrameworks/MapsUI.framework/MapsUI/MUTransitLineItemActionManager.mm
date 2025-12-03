@interface MUTransitLineItemActionManager
- (MUTransitLineItemActionManager)init;
- (MUTransitLineItemActionManager)initWithDelegate:(id)delegate analyticsDelegate:(id)analyticsDelegate;
- (id)createFooterActions;
- (id)createRowActionsWithStyle:(unint64_t)style;
- (void)performAction:(id)action options:(id)options completion:(id)completion;
@end

@implementation MUTransitLineItemActionManager

- (MUTransitLineItemActionManager)initWithDelegate:(id)delegate analyticsDelegate:(id)analyticsDelegate
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MUTransitLineItemActionManager *)&v7 init];
}

- (MUTransitLineItemActionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)createRowActionsWithStyle:(unint64_t)style
{
  if (_s6MapsUI28TransitLineItemActionManagerC19createFooterActionsSaySo011MKPlaceCardfE0CGSgyF_0())
  {
    sub_1C577AFF8();
    v3 = sub_1C584F750();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)performAction:(id)action options:(id)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (options)
  {
    options = sub_1C584F5D0();
  }

  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_1C5742978;
  }

  actionCopy = action;
  selfCopy = self;
  TransitLineItemActionManager.performAction(_:options:completion:)(action, options, v8);
  sub_1C5632FA8(v8);
}

- (id)createFooterActions
{
  if (_s6MapsUI28TransitLineItemActionManagerC19createFooterActionsSaySo011MKPlaceCardfE0CGSgyF_0())
  {
    sub_1C577AFF8();
    v2 = sub_1C584F750();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end