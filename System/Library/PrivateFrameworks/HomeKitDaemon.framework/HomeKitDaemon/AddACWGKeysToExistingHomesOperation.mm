@interface AddACWGKeysToExistingHomesOperation
+ (NSPredicate)predicate;
- (BOOL)mainWithError:(id *)error;
- (HMFFlow)flow;
- (_TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation)initWithUUID:(id)d userData:(id)data backGroundOpsManager:(id)manager scheduledDate:(id)date expirationDate:(id)expirationDate dataSource:(id)source dependentOperations:(id)operations;
- (void)setFlow:(id)flow;
@end

@implementation AddACWGKeysToExistingHomesOperation

+ (NSPredicate)predicate
{
  predicateWithValue_ = [objc_opt_self() predicateWithValue_];

  return predicateWithValue_;
}

- (BOOL)mainWithError:(id *)error
{
  selfCopy = self;
  AddACWGKeysToExistingHomesOperation.main()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_22A4DB3DC();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (HMFFlow)flow
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setFlow:(id)flow
{
  v5 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = flow;
  flowCopy = flow;
}

- (_TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation)initWithUUID:(id)d userData:(id)data backGroundOpsManager:(id)manager scheduledDate:(id)date expirationDate:(id)expirationDate dataSource:(id)source dependentOperations:(id)operations
{
  v27[1] = self;
  operationsCopy = operations;
  v12 = sub_22A4DB74C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  v19 = sub_22A4DB7DC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v23 = sub_22A4DD49C();
  sub_22A4DB70C();
  sub_22A4DB70C();
  if (operations)
  {
    operationsCopy = sub_22A4DDB6C();
  }

  managerCopy = manager;
  swift_unknownObjectRetain();
  v25 = sub_229586134(v22, v23, managerCopy, v18, v16, source, operationsCopy);

  swift_unknownObjectRelease();
  return v25;
}

@end