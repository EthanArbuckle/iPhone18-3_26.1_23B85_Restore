@interface GDEntityResolutionTextClientInner
- (BOOL)cooldownSyncAndReturnError:(id *)error;
- (BOOL)recordDirectFeedbackWithEngagedIds:(id)ids rejectedIds:(id)rejectedIds ignoredIds:(id)ignoredIds neverPresentedIds:(id)presentedIds error:(id *)error;
- (BOOL)warmupSyncFor:(int64_t)for error:(id *)error;
- (id)generateMentionsForQuery:(id)query error:(id *)error;
- (id)resolveAddressToContactForRequest:(id)request error:(id *)error;
- (id)resolveEntitiesSyncForBatchRequests:(id)requests error:(id *)error;
- (id)resolveEntitiesSyncForRequest:(id)request error:(id *)error;
- (void)cooldownWithCompletionHandler:(id)handler;
- (void)warmupFor:(int64_t)for completionHandler:(id)handler;
@end

@implementation GDEntityResolutionTextClientInner

- (void)warmupFor:(int64_t)for completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = for;
  v7[3] = v6;
  v7[4] = self;
  selfCopy = self;

  sub_1ABAAFF38(&unk_1ABF47B20, v7);
}

- (BOOL)warmupSyncFor:(int64_t)for error:(id *)error
{
  selfCopy = self;
  sub_1ABBDBAE8();

  return 1;
}

- (void)cooldownWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1ABAAFF38(&unk_1ABF47B10, v5);
}

- (BOOL)cooldownSyncAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1ABBDC49C();

  return 1;
}

- (id)resolveEntitiesSyncForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;
  sub_1ABBDCF64();
  v8 = v7;

  return v8;
}

- (id)resolveEntitiesSyncForBatchRequests:(id)requests error:(id *)error
{
  sub_1ABAFF390(0, &qword_1EB4D4CC8, off_1E795FEB0);
  sub_1ABF240D4();
  selfCopy = self;
  sub_1ABBDDA9C();

  sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
  v6 = sub_1ABF240C4();

  return v6;
}

- (id)generateMentionsForQuery:(id)query error:(id *)error
{
  sub_1ABF23C04();
  selfCopy = self;
  sub_1ABBDDF34();
  v7 = v6;

  return v7;
}

- (id)resolveAddressToContactForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;
  v7 = sub_1ABBDF420(requestCopy);

  return v7;
}

- (BOOL)recordDirectFeedbackWithEngagedIds:(id)ids rejectedIds:(id)rejectedIds ignoredIds:(id)ignoredIds neverPresentedIds:(id)presentedIds error:(id *)error
{
  v8 = sub_1ABF24394();
  v9 = sub_1ABF24394();
  v10 = sub_1ABF24394();
  v11 = sub_1ABF24394();
  selfCopy = self;
  sub_1ABBDFA84(v8, v9, v10, v11);

  return 1;
}

@end