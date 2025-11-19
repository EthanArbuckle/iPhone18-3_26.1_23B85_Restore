@interface _CNUIUserActionURLItem
- (BOOL)isEqual:(id)a3;
- (_CNUIUserActionURLItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 url:(id)a6 isSensitive:(BOOL)a7 group:(int64_t)a8 options:(unint64_t)a9;
- (id)description;
- (id)performActionWithContext:(id)a3 shouldCurateIfPerformed:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation _CNUIUserActionURLItem

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

  v12 = [(_CNUIUserActionURLItem *)self url];
  v13 = [v3 appendObject:v12 withName:@"url"];

  v14 = [v3 appendName:@"isSensitive" BOOLValue:{-[_CNUIUserActionURLItem isSensitive](self, "isSensitive")}];
  v15 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v16 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  v17 = [v3 build];

  return v17;
}

- (_CNUIUserActionURLItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 url:(id)a6 isSensitive:(BOOL)a7 group:(int64_t)a8 options:(unint64_t)a9
{
  v16 = a6;
  v21.receiver = self;
  v21.super_class = _CNUIUserActionURLItem;
  v17 = [(CNUIUserActionItem *)&v21 initWithType:a3 contactProperty:a4 bundleIdentifier:a5 group:a8 options:a9];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_url, a6);
    v18->_isSensitive = a7;
    v19 = v18;
  }

  return v18;
}

- (id)performActionWithContext:(id)a3 shouldCurateIfPerformed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_CNUIUserActionURLItem *)self url];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E6996720];
    v11 = [CNContactsUIError errorWithCode:201];
    v9 = [v10 futureWithError:v11];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75___CNUIUserActionURLItem_performActionWithContext_shouldCurateIfPerformed___block_invoke;
  v18[3] = &unk_1E76E8390;
  v12 = v6;
  v19 = v12;
  v20 = self;
  v13 = [v9 flatMap:v18];
  if (v4)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75___CNUIUserActionURLItem_performActionWithContext_shouldCurateIfPerformed___block_invoke_3;
    v15[3] = &unk_1E76E83B8;
    v16 = v12;
    v17 = self;
    [v13 addSuccessBlock:v15];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __34___CNUIUserActionURLItem_isEqual___block_invoke;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v25 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34___CNUIUserActionURLItem_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E76E7A88;
  aBlock[4] = self;
  v7 = v25;
  v23 = v7;
  v8 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __34___CNUIUserActionURLItem_isEqual___block_invoke_3;
  v20[3] = &unk_1E76E7A88;
  v20[4] = self;
  v9 = v7;
  v21 = v9;
  v10 = _Block_copy(v20);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __34___CNUIUserActionURLItem_isEqual___block_invoke_4;
  v17 = &unk_1E76E7A88;
  v18 = self;
  v19 = v9;
  v11 = v9;
  v12 = _Block_copy(&v14);
  LOBYTE(self) = [v5 isObject:v11 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, 0, v14, v15, v16, v17, v18}];

  return self;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __30___CNUIUserActionURLItem_hash__block_invoke;
  v12[3] = &unk_1E76E7AB0;
  v12[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30___CNUIUserActionURLItem_hash__block_invoke_2;
  aBlock[3] = &unk_1E76E7AB0;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30___CNUIUserActionURLItem_hash__block_invoke_3;
  v10[3] = &unk_1E76E7AB0;
  v10[4] = self;
  v5 = _Block_copy(v10);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30___CNUIUserActionURLItem_hash__block_invoke_4;
  v9[3] = &unk_1E76E7AB0;
  v9[4] = self;
  v6 = _Block_copy(v9);
  v7 = [v3 hashWithBlocks:{v12, v4, v5, v6, 0}];

  return v7;
}

@end