@interface _CNUIUserActionURLItem
- (BOOL)isEqual:(id)equal;
- (_CNUIUserActionURLItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier url:(id)url isSensitive:(BOOL)sensitive group:(int64_t)group options:(unint64_t)options;
- (id)description;
- (id)performActionWithContext:(id)context shouldCurateIfPerformed:(BOOL)performed;
- (unint64_t)hash;
@end

@implementation _CNUIUserActionURLItem

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

  v12 = [(_CNUIUserActionURLItem *)self url];
  v13 = [v3 appendObject:v12 withName:@"url"];

  v14 = [v3 appendName:@"isSensitive" BOOLValue:{-[_CNUIUserActionURLItem isSensitive](self, "isSensitive")}];
  v15 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v16 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  build = [v3 build];

  return build;
}

- (_CNUIUserActionURLItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier url:(id)url isSensitive:(BOOL)sensitive group:(int64_t)group options:(unint64_t)options
{
  urlCopy = url;
  v21.receiver = self;
  v21.super_class = _CNUIUserActionURLItem;
  v17 = [(CNUIUserActionItem *)&v21 initWithType:type contactProperty:property bundleIdentifier:identifier group:group options:options];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_url, url);
    v18->_isSensitive = sensitive;
    v19 = v18;
  }

  return v18;
}

- (id)performActionWithContext:(id)context shouldCurateIfPerformed:(BOOL)performed
{
  performedCopy = performed;
  contextCopy = context;
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
  v12 = contextCopy;
  v19 = v12;
  selfCopy = self;
  v13 = [v9 flatMap:v18];
  if (performedCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75___CNUIUserActionURLItem_performActionWithContext_shouldCurateIfPerformed___block_invoke_3;
    v15[3] = &unk_1E76E83B8;
    v16 = v12;
    selfCopy2 = self;
    [v13 addSuccessBlock:v15];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __34___CNUIUserActionURLItem_isEqual___block_invoke;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v25 = equalCopy;
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
  selfCopy = self;
  v19 = v9;
  v11 = v9;
  v12 = _Block_copy(&v14);
  LOBYTE(self) = [v5 isObject:v11 kindOfClass:v6 andEqualToObject:self withBlocks:{v24, v8, v10, v12, 0, v14, v15, v16, v17, selfCopy}];

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