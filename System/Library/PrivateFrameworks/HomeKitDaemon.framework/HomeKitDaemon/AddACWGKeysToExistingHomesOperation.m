@interface AddACWGKeysToExistingHomesOperation
+ (NSPredicate)predicate;
- (BOOL)mainWithError:(id *)a3;
- (HMFFlow)flow;
- (_TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation)initWithUUID:(id)a3 userData:(id)a4 backGroundOpsManager:(id)a5 scheduledDate:(id)a6 expirationDate:(id)a7 dataSource:(id)a8 dependentOperations:(id)a9;
- (void)setFlow:(id)a3;
@end

@implementation AddACWGKeysToExistingHomesOperation

+ (NSPredicate)predicate
{
  v2 = [objc_opt_self() predicateWithValue_];

  return v2;
}

- (BOOL)mainWithError:(id *)a3
{
  v4 = self;
  AddACWGKeysToExistingHomesOperation.main()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_22A4DB3DC();

      v7 = v6;
      *a3 = v6;
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

- (void)setFlow:(id)a3
{
  v5 = OBJC_IVAR____TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation_flow;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC13HomeKitDaemon35AddACWGKeysToExistingHomesOperation)initWithUUID:(id)a3 userData:(id)a4 backGroundOpsManager:(id)a5 scheduledDate:(id)a6 expirationDate:(id)a7 dataSource:(id)a8 dependentOperations:(id)a9
{
  v27[1] = self;
  v11 = a9;
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
  if (a9)
  {
    v11 = sub_22A4DDB6C();
  }

  v24 = a5;
  swift_unknownObjectRetain();
  v25 = sub_229586134(v22, v23, v24, v18, v16, a8, v11);

  swift_unknownObjectRelease();
  return v25;
}

@end