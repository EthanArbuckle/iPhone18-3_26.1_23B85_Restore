@interface _CNUIUserActionDialRequestItem
- (BOOL)isEqual:(id)equal;
- (_CNUIUserActionDialRequestItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier dialRequest:(id)request group:(int64_t)group options:(unint64_t)options;
- (id)description;
- (id)performActionWithContext:(id)context;
- (unint64_t)hash;
@end

@implementation _CNUIUserActionDialRequestItem

- (_CNUIUserActionDialRequestItem)initWithType:(id)type contactProperty:(id)property bundleIdentifier:(id)identifier dialRequest:(id)request group:(int64_t)group options:(unint64_t)options
{
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = _CNUIUserActionDialRequestItem;
  v16 = [(CNUIUserActionItem *)&v20 initWithType:type contactProperty:property bundleIdentifier:identifier group:group options:options];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dialRequest, request);
    v18 = v17;
  }

  return v17;
}

- (id)performActionWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  dialRequest = [(_CNUIUserActionDialRequestItem *)selfCopy dialRequest];
  provider = [dialRequest provider];
  if ([provider isTelephonyProvider])
  {
    v8 = *MEMORY[0x1E6996568];
    channelIdentifier = [contextCopy channelIdentifier];
    LOBYTE(v8) = (*(v8 + 16))(v8, channelIdentifier);

    if (v8)
    {
      goto LABEL_5;
    }

    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    provider = [contextCopy channelIdentifier];
    v11 = [v10 initWithUUIDString:provider];
    [dialRequest setLocalSenderIdentityAccountUUID:v11];
  }

LABEL_5:
  if ([(CNUIUserActionItem *)selfCopy shouldCurateIfPerformed])
  {
    actionCurator = [contextCopy actionCurator];
    v13 = [actionCurator curateUserAction:selfCopy];

    selfCopy = v13;
  }

  dialRequestOpener = [contextCopy dialRequestOpener];
  globalAsyncScheduler = [MEMORY[0x1E6996818] globalAsyncScheduler];
  v16 = [dialRequestOpener openDialRequest:dialRequest withScheduler:globalAsyncScheduler];

  if (selfCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59___CNUIUserActionDialRequestItem_performActionWithContext___block_invoke;
    v18[3] = &unk_1E76E83B8;
    v19 = contextCopy;
    v20 = selfCopy;
    [v16 addSuccessBlock:v18];
  }

  return v16;
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

  dialRequest = [(_CNUIUserActionDialRequestItem *)self dialRequest];
  v13 = [v3 appendObject:dialRequest withName:@"dialRequest"];

  v14 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v15 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v21 = MEMORY[0x1E69966F0];
  v5 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke;
  v36[3] = &unk_1E76E7A88;
  v36[4] = self;
  v37 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E76E7A88;
  aBlock[4] = self;
  v6 = v37;
  v35 = v6;
  v7 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_3;
  v32[3] = &unk_1E76E7A88;
  v32[4] = self;
  v8 = v6;
  v33 = v8;
  v9 = _Block_copy(v32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_4;
  v30[3] = &unk_1E76E7A88;
  v30[4] = self;
  v10 = v8;
  v31 = v10;
  v11 = _Block_copy(v30);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_5;
  v28[3] = &unk_1E76E7A88;
  v28[4] = self;
  v12 = v10;
  v29 = v12;
  v13 = _Block_copy(v28);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_6;
  v26[3] = &unk_1E76E7A88;
  v26[4] = self;
  v14 = v12;
  v27 = v14;
  v15 = _Block_copy(v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_7;
  v24[3] = &unk_1E76E7A88;
  v24[4] = self;
  v16 = v14;
  v25 = v16;
  v17 = _Block_copy(v24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke_8;
  v22[3] = &unk_1E76E7A88;
  v22[4] = self;
  v23 = v16;
  v18 = v16;
  v19 = _Block_copy(v22);
  LOBYTE(self) = [v21 isObject:v18 kindOfClass:v5 andEqualToObject:self withBlocks:{v36, v7, v9, v11, v13, v15, v17, v19, 0}];

  return self;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke;
  v18[3] = &unk_1E76E7AB0;
  v18[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke_2;
  aBlock[3] = &unk_1E76E7AB0;
  v4 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke_3;
  v16[3] = &unk_1E76E7AB0;
  v16[4] = self;
  v5 = _Block_copy(v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke_4;
  v15[3] = &unk_1E76E7AB0;
  v15[4] = self;
  v6 = _Block_copy(v15);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke_5;
  v14[3] = &unk_1E76E7AB0;
  v14[4] = self;
  v7 = _Block_copy(v14);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke_6;
  v13[3] = &unk_1E76E7AB0;
  v13[4] = self;
  v8 = _Block_copy(v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38___CNUIUserActionDialRequestItem_hash__block_invoke_7;
  v12[3] = &unk_1E76E7AB0;
  v12[4] = self;
  v9 = _Block_copy(v12);
  v10 = [v3 hashWithBlocks:{v18, v4, v5, v6, v7, v8, v9, 0}];

  return v10;
}

@end