@interface GDEntityResolutionTextClientInner
- (BOOL)cooldownSyncAndReturnError:(id *)a3;
- (BOOL)recordDirectFeedbackWithEngagedIds:(id)a3 rejectedIds:(id)a4 ignoredIds:(id)a5 neverPresentedIds:(id)a6 error:(id *)a7;
- (BOOL)warmupSyncFor:(int64_t)a3 error:(id *)a4;
- (id)generateMentionsForQuery:(id)a3 error:(id *)a4;
- (id)resolveAddressToContactForRequest:(id)a3 error:(id *)a4;
- (id)resolveEntitiesSyncForBatchRequests:(id)a3 error:(id *)a4;
- (id)resolveEntitiesSyncForRequest:(id)a3 error:(id *)a4;
- (void)cooldownWithCompletionHandler:(id)a3;
- (void)warmupFor:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation GDEntityResolutionTextClientInner

- (void)warmupFor:(int64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = self;

  sub_1ABAAFF38(&unk_1ABF47B20, v7);
}

- (BOOL)warmupSyncFor:(int64_t)a3 error:(id *)a4
{
  v4 = self;
  sub_1ABBDBAE8();

  return 1;
}

- (void)cooldownWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1ABAAFF38(&unk_1ABF47B10, v5);
}

- (BOOL)cooldownSyncAndReturnError:(id *)a3
{
  v3 = self;
  sub_1ABBDC49C();

  return 1;
}

- (id)resolveEntitiesSyncForRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1ABBDCF64();
  v8 = v7;

  return v8;
}

- (id)resolveEntitiesSyncForBatchRequests:(id)a3 error:(id *)a4
{
  sub_1ABAFF390(0, &qword_1EB4D4CC8, off_1E795FEB0);
  sub_1ABF240D4();
  v5 = self;
  sub_1ABBDDA9C();

  sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
  v6 = sub_1ABF240C4();

  return v6;
}

- (id)generateMentionsForQuery:(id)a3 error:(id *)a4
{
  sub_1ABF23C04();
  v5 = self;
  sub_1ABBDDF34();
  v7 = v6;

  return v7;
}

- (id)resolveAddressToContactForRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1ABBDF420(v5);

  return v7;
}

- (BOOL)recordDirectFeedbackWithEngagedIds:(id)a3 rejectedIds:(id)a4 ignoredIds:(id)a5 neverPresentedIds:(id)a6 error:(id *)a7
{
  v8 = sub_1ABF24394();
  v9 = sub_1ABF24394();
  v10 = sub_1ABF24394();
  v11 = sub_1ABF24394();
  v12 = self;
  sub_1ABBDFA84(v8, v9, v10, v11);

  return 1;
}

@end