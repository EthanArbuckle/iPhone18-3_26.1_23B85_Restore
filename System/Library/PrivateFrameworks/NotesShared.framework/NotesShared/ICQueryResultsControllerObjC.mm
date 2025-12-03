@interface ICQueryResultsControllerObjC
- (ICQueryObjC)query;
- (ICQueryResultsControllerObjC)init;
- (ICQueryResultsControllerObjC)initWithManagedObjectContext:(id)context query:(id)query;
- (id)fetchRequest;
- (id)performFetch;
- (void)setQuery:(id)query;
@end

@implementation ICQueryResultsControllerObjC

- (ICQueryObjC)query
{
  v3 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setQuery:(id)query
{
  v5 = OBJC_IVAR___ICQueryResultsControllerObjC_query;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = query;
  queryCopy = query;
}

- (id)fetchRequest
{
  selfCopy = self;
  v3 = ICQueryResultsController.fetchRequest.getter();

  return v3;
}

- (ICQueryResultsControllerObjC)initWithManagedObjectContext:(id)context query:(id)query
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___ICQueryResultsControllerObjC_managedObjectContext) = context;
  *(&self->super.isa + OBJC_IVAR___ICQueryResultsControllerObjC_query) = query;
  v11.receiver = self;
  v11.super_class = ObjectType;
  contextCopy = context;
  queryCopy = query;
  return [(ICQueryResultsControllerObjC *)&v11 init];
}

- (id)performFetch
{
  selfCopy = self;
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