@interface EventAccessoryItemModule
- (_TtC6HomeUI24EventAccessoryItemModule)initWithContext:(id)a3 in:(id)a4 itemUpdater:(id)a5;
- (id)buildItemProviders;
@end

@implementation EventAccessoryItemModule

- (id)buildItemProviders
{
  v2 = self;
  sub_20D097A0C();
  v4 = v3;

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20D099B18(&qword_28111FFB0, &qword_27C81AF70);
    v5 = sub_20D567CD8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC6HomeUI24EventAccessoryItemModule)initWithContext:(id)a3 in:(id)a4 itemUpdater:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  return EventAccessoryItemModule.init(context:in:itemUpdater:)(v7, v8, a5);
}

@end