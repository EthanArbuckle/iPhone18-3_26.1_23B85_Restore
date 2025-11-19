@interface ICQueryResultsControllerObjC
- (ICQueryObjC)query;
- (ICQueryResultsControllerObjC)init;
- (ICQueryResultsControllerObjC)initWithManagedObjectContext:(id)a3 query:(id)a4;
- (id)fetchRequest;
- (id)performFetch;
- (void)setQuery:(id)a3;
@end

@implementation ICQueryResultsControllerObjC

- (ICQueryObjC)query
{
  v3 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setQuery:(id)a3
{
  v5 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (id)fetchRequest
{
  v2 = self;
  v3 = ICQueryResultsController.fetchRequest.getter();

  return v3;
}

- (ICQueryResultsControllerObjC)initWithManagedObjectContext:(id)a3 query:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICQueryResultsControllerObjC_managedObjectContext) = a3;
  *(&self->super.isa + OBJC_IVAR___ICQueryResultsControllerObjC_query) = a4;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = a4;
  return [(ICQueryResultsControllerObjC *)&v11 init];
}

- (id)performFetch
{
  v2 = self;
  ICQueryResultsController.performFetch()();

  sub_214D55670(0, &qword_27CA44A80);
  sub_214FC7854();
  v3 = sub_2150A52D0();

  return v3;
}

- (ICQueryResultsControllerObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end