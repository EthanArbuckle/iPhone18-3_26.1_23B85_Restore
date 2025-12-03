@interface _CNUIUserActionUserActivityItem
- (BOOL)_isIntent:(id)intent equalToOther:(id)other;
- (BOOL)isEqual:(id)equal;
- (_CNUIUserActionUserActivityItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier userActivity:(id)activity group:(int64_t)group options:(unint64_t)options;
- (id)_personFromIntent:(id)intent;
- (id)description;
- (id)performActionWithContext:(id)context;
- (unint64_t)_hashForIntent:(id)intent;
- (unint64_t)hash;
@end

@implementation _CNUIUserActionUserActivityItem

- (_CNUIUserActionUserActivityItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier userActivity:(id)activity group:(int64_t)group options:(unint64_t)options
{
  activityCopy = activity;
  v20.receiver = self;
  v20.super_class = _CNUIUserActionUserActivityItem;
  v16 = [(CNUIUserActionItem *)&v20 initWithType:type contactProperty:property bundleIdentifier:identifier group:group options:options];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_userActivity, activity);
    v18 = v17;
  }

  return v17;
}

- (id)performActionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  userActivity = [(_CNUIUserActionUserActivityItem *)selfCopy userActivity];
  bundleIdentifier = [(CNUIUserActionItem *)selfCopy bundleIdentifier];
  if ([(CNUIUserActionItem *)selfCopy shouldCurateIfPerformed])
  {
    actionCurator = [contextCopy actionCurator];
    v9 = [actionCurator curateUserAction:selfCopy];

    selfCopy = v9;
  }

  userActivityOpener = [contextCopy userActivityOpener];
  globalAsyncScheduler = [MEMORY[0x1E6996818] globalAsyncScheduler];
  v12 = [userActivityOpener openUserActivity:userActivity usingBundleIdentifier:bundleIdentifier withScheduler:globalAsyncScheduler];

  if (selfCopy)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60___CNUIUserActionUserActivityItem_performActionWithContext___block_invoke;
    v14[3] = &unk_1E76E83B8;
    v15 = contextCopy;
    v16 = selfCopy;
    [v12 addSuccessBlock:v14];
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  type = [(CNUIUserActionItem *)self type];
  v5 = [v3 appendObject:type withName:@"type"];

  label = [(CNUIUserActionItem *)self label];
  v7 = [v3 appendObject:label withName:@"label"];

  targetHandle = [(CNUIUserActionItem *)self targetHandle];
  v9 = [v3 appendObject:targetHandle withName:@"targetHandle"];

  bundleIdentifier = [(CNUIUserActionItem *)self bundleIdentifier];
  v11 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  userActivity = [(_CNUIUserActionUserActivityItem *)self userActivity];
  v13 = [v3 appendObject:userActivity withName:@"userActivity"];

  v14 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v15 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __43___CNUIUserActionUserActivityItem_isEqual___block_invoke;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v25 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E76E7A88;
  aBlock[4] = self;
  v7 = v25;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_3;
  v20[3] = &unk_1E76E7A88;
  v20[4] = self;
  v9 = v7;
  v21 = v9;
  v10 = _Block_copy(v20);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_4;
  v18[3] = &unk_1E76E7A88;
  v18[4] = self;
  v11 = v9;
  v19 = v11;
  v12 = _Block_copy(v18);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43___CNUIUserActionUserActivityItem_isEqual___block_invoke_5;
  v16[3] = &unk_1E76E7A88;
  v16[4] = self;
  v17 = v11;
  v13 = v11;
  v14 = _Block_copy(v16);
  LOBYTE(self) = [v5 isObject:v13 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, v14, 0}];

  return self;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39___CNUIUserActionUserActivityItem_hash__block_invoke;
  v14[3] = &unk_1E76E7AB0;
  v14[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___CNUIUserActionUserActivityItem_hash__block_invoke_2;
  aBlock[3] = &unk_1E76E7AB0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39___CNUIUserActionUserActivityItem_hash__block_invoke_3;
  v12[3] = &unk_1E76E7AB0;
  v12[4] = self;
  v5 = _Block_copy(v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39___CNUIUserActionUserActivityItem_hash__block_invoke_4;
  v11[3] = &unk_1E76E7AB0;
  v11[4] = self;
  v6 = _Block_copy(v11);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39___CNUIUserActionUserActivityItem_hash__block_invoke_5;
  v10[3] = &unk_1E76E7AB0;
  v10[4] = self;
  v7 = _Block_copy(v10);
  v8 = [v3 hashWithBlocks:{v14, v4, v5, v6, v7, 0}];

  return v8;
}

- (BOOL)_isIntent:(id)intent equalToOther:(id)other
{
  intentCopy = intent;
  otherCopy = other;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_CNUIUserActionUserActivityItem *)self _personFromIntent:intentCopy];
    v9 = [(_CNUIUserActionUserActivityItem *)self _personFromIntent:otherCopy];
    v10 = MEMORY[0x1E69966F0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58___CNUIUserActionUserActivityItem__isIntent_equalToOther___block_invoke;
    v22[3] = &unk_1E76E7A88;
    v23 = v8;
    v24 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __58___CNUIUserActionUserActivityItem__isIntent_equalToOther___block_invoke_2;
    v19 = &unk_1E76E7A88;
    v20 = v23;
    v21 = v24;
    v11 = v24;
    v12 = v23;
    v13 = _Block_copy(&aBlock);
    v14 = [v10 isObject:v12 equalToOther:v11 withBlocks:{v22, v13, 0, aBlock, v17, v18, v19}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)_hashForIntent:(id)intent
{
  v3 = [(_CNUIUserActionUserActivityItem *)self _personFromIntent:intent];
  v4 = MEMORY[0x1E6996730];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50___CNUIUserActionUserActivityItem__hashForIntent___block_invoke;
  v14[3] = &unk_1E76E7AB0;
  v15 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __50___CNUIUserActionUserActivityItem__hashForIntent___block_invoke_2;
  v12 = &unk_1E76E7AB0;
  v13 = v15;
  v5 = v15;
  v6 = _Block_copy(&aBlock);
  v7 = [v4 hashWithBlocks:{v14, v6, 0, aBlock, v10, v11, v12}];

  return v7;
}

- (id)_personFromIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    contacts = [intentCopy contacts];
LABEL_5:
    v5 = contacts;
    firstObject = [contacts firstObject];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contacts = [intentCopy recipients];
    goto LABEL_5;
  }

  firstObject = 0;
LABEL_6:

  return firstObject;
}

@end