@interface HDWorkoutAssertionManager
- (id)takeLiveActivityAssertionWithOwnerIdentifier:(id)identifier clientBundleIdentifier:(id)bundleIdentifier explanation:(id)explanation;
- (id)takeRBSAssertionWithOwnerIdentifier:(id)identifier assertionIdentifier:(id)assertionIdentifier pid:(int)pid explanation:(id)explanation;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)handleDidInvalidateLiveActivityAssertion:(id)assertion error:(id)error;
@end

@implementation HDWorkoutAssertionManager

- (id)takeRBSAssertionWithOwnerIdentifier:(id)identifier assertionIdentifier:(id)assertionIdentifier pid:(int)pid explanation:(id)explanation
{
  v9 = sub_22911C35C();
  v11 = v10;
  v12 = sub_22911C35C();
  v14 = v13;
  if (explanation)
  {
    v15 = sub_22911C35C();
    explanation = v16;
  }

  else
  {
    v15 = 0;
  }

  selfCopy = self;
  v18._countAndFlagsBits = v9;
  v18._object = v11;
  v19._countAndFlagsBits = v12;
  v19._object = v14;
  v20.value._countAndFlagsBits = v15;
  v20.value._object = explanation;
  HDWorkoutAssertionManager.takeRBSAssertion(ownerIdentifier:assertionIdentifier:pid:explanation:)(v21, v18, v19, pid, v20);
  v23 = v22;

  return v23;
}

- (id)takeLiveActivityAssertionWithOwnerIdentifier:(id)identifier clientBundleIdentifier:(id)bundleIdentifier explanation:(id)explanation
{
  v6 = sub_22911C35C();
  v8 = v7;
  v9 = sub_22911C35C();
  v11 = v10;
  v12 = sub_22911C35C();
  v14 = v13;
  selfCopy = self;
  v16._countAndFlagsBits = v6;
  v16._object = v8;
  v17._countAndFlagsBits = v9;
  v17._object = v11;
  v18._countAndFlagsBits = v12;
  v18._object = v14;
  HDWorkoutAssertionManager.takeLiveActivityAssertion(ownerIdentifier:clientBundleIdentifier:explanation:)(v19, v16, v17, v18);
  v21 = v20;

  return v21;
}

- (void)handleDidInvalidateLiveActivityAssertion:(id)assertion error:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  sub_2289C4164(assertionCopy, error);
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  managerCopy = manager;
  invalidatedCopy = invalidated;
  selfCopy = self;
  sub_2289C4C60(invalidatedCopy);
}

@end