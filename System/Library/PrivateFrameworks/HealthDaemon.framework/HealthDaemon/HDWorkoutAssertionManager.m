@interface HDWorkoutAssertionManager
- (id)takeLiveActivityAssertionWithOwnerIdentifier:(id)a3 clientBundleIdentifier:(id)a4 explanation:(id)a5;
- (id)takeRBSAssertionWithOwnerIdentifier:(id)a3 assertionIdentifier:(id)a4 pid:(int)a5 explanation:(id)a6;
- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4;
- (void)handleDidInvalidateLiveActivityAssertion:(id)a3 error:(id)a4;
@end

@implementation HDWorkoutAssertionManager

- (id)takeRBSAssertionWithOwnerIdentifier:(id)a3 assertionIdentifier:(id)a4 pid:(int)a5 explanation:(id)a6
{
  v9 = sub_22911C35C();
  v11 = v10;
  v12 = sub_22911C35C();
  v14 = v13;
  if (a6)
  {
    v15 = sub_22911C35C();
    a6 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = self;
  v18._countAndFlagsBits = v9;
  v18._object = v11;
  v19._countAndFlagsBits = v12;
  v19._object = v14;
  v20.value._countAndFlagsBits = v15;
  v20.value._object = a6;
  HDWorkoutAssertionManager.takeRBSAssertion(ownerIdentifier:assertionIdentifier:pid:explanation:)(v21, v18, v19, a5, v20);
  v23 = v22;

  return v23;
}

- (id)takeLiveActivityAssertionWithOwnerIdentifier:(id)a3 clientBundleIdentifier:(id)a4 explanation:(id)a5
{
  v6 = sub_22911C35C();
  v8 = v7;
  v9 = sub_22911C35C();
  v11 = v10;
  v12 = sub_22911C35C();
  v14 = v13;
  v15 = self;
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

- (void)handleDidInvalidateLiveActivityAssertion:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_2289C4164(v6, a4);
}

- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2289C4C60(v7);
}

@end