@interface _CNUIUserActionUserActivityItem
- (BOOL)_isIntent:(id)a3 equalToOther:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_CNUIUserActionUserActivityItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 userActivity:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
- (id)_personFromIntent:(id)a3;
- (id)description;
- (id)performActionWithContext:(id)a3;
- (unint64_t)_hashForIntent:(id)a3;
- (unint64_t)hash;
@end

@implementation _CNUIUserActionUserActivityItem

- (_CNUIUserActionUserActivityItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 userActivity:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v15 = a6;
  v20.receiver = self;
  v20.super_class = _CNUIUserActionUserActivityItem;
  v16 = [(CNUIUserActionItem *)&v20 initWithType:a3 contactProperty:a4 bundleIdentifier:a5 group:a7 options:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_userActivity, a6);
    v18 = v17;
  }

  return v17;
}

- (id)performActionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(_CNUIUserActionUserActivityItem *)v5 userActivity];
  v7 = [(CNUIUserActionItem *)v5 bundleIdentifier];
  if ([(CNUIUserActionItem *)v5 shouldCurateIfPerformed])
  {
    v8 = [v4 actionCurator];
    v9 = [v8 curateUserAction:v5];

    v5 = v9;
  }

  v10 = [v4 userActivityOpener];
  v11 = [MEMORY[0x1E6996818] globalAsyncScheduler];
  v12 = [v10 openUserActivity:v6 usingBundleIdentifier:v7 withScheduler:v11];

  if (v5)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60___CNUIUserActionUserActivityItem_performActionWithContext___block_invoke;
    v14[3] = &unk_1E76E83B8;
    v15 = v4;
    v16 = v5;
    [v12 addSuccessBlock:v14];
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUIUserActionItem *)self type];
  v5 = [v3 appendObject:v4 withName:@"type"];

  v6 = [(CNUIUserActionItem *)self label];
  v7 = [v3 appendObject:v6 withName:@"label"];

  v8 = [(CNUIUserActionItem *)self targetHandle];
  v9 = [v3 appendObject:v8 withName:@"targetHandle"];

  v10 = [(CNUIUserActionItem *)self bundleIdentifier];
  v11 = [v3 appendObject:v10 withName:@"bundleIdentifier"];

  v12 = [(_CNUIUserActionUserActivityItem *)self userActivity];
  v13 = [v3 appendObject:v12 withName:@"userActivity"];

  v14 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v15 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  v16 = [v3 build];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __43___CNUIUserActionUserActivityItem_isEqual___block_invoke;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v25 = v4;
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

- (BOOL)_isIntent:(id)a3 equalToOther:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(_CNUIUserActionUserActivityItem *)self _personFromIntent:v6];
    v9 = [(_CNUIUserActionUserActivityItem *)self _personFromIntent:v7];
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

- (unint64_t)_hashForIntent:(id)a3
{
  v3 = [(_CNUIUserActionUserActivityItem *)self _personFromIntent:a3];
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

- (id)_personFromIntent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 contacts];
LABEL_5:
    v5 = v4;
    v6 = [v4 firstObject];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recipients];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

@end