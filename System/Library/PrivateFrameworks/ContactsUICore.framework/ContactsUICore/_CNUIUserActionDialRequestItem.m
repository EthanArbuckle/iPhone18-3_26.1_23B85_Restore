@interface _CNUIUserActionDialRequestItem
- (BOOL)isEqual:(id)a3;
- (_CNUIUserActionDialRequestItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 dialRequest:(id)a6 group:(int64_t)a7 options:(unint64_t)a8;
- (id)description;
- (id)performActionWithContext:(id)a3;
- (unint64_t)hash;
@end

@implementation _CNUIUserActionDialRequestItem

- (_CNUIUserActionDialRequestItem)initWithType:(id)a3 contactProperty:(id)a4 bundleIdentifier:(id)a5 dialRequest:(id)a6 group:(int64_t)a7 options:(unint64_t)a8
{
  v15 = a6;
  v20.receiver = self;
  v20.super_class = _CNUIUserActionDialRequestItem;
  v16 = [(CNUIUserActionItem *)&v20 initWithType:a3 contactProperty:a4 bundleIdentifier:a5 group:a7 options:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dialRequest, a6);
    v18 = v17;
  }

  return v17;
}

- (id)performActionWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(_CNUIUserActionDialRequestItem *)v5 dialRequest];
  v7 = [v6 provider];
  if ([v7 isTelephonyProvider])
  {
    v8 = *MEMORY[0x1E6996568];
    v9 = [v4 channelIdentifier];
    LOBYTE(v8) = (*(v8 + 16))(v8, v9);

    if (v8)
    {
      goto LABEL_5;
    }

    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v4 channelIdentifier];
    v11 = [v10 initWithUUIDString:v7];
    [v6 setLocalSenderIdentityAccountUUID:v11];
  }

LABEL_5:
  if ([(CNUIUserActionItem *)v5 shouldCurateIfPerformed])
  {
    v12 = [v4 actionCurator];
    v13 = [v12 curateUserAction:v5];

    v5 = v13;
  }

  v14 = [v4 dialRequestOpener];
  v15 = [MEMORY[0x1E6996818] globalAsyncScheduler];
  v16 = [v14 openDialRequest:v6 withScheduler:v15];

  if (v5)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59___CNUIUserActionDialRequestItem_performActionWithContext___block_invoke;
    v18[3] = &unk_1E76E83B8;
    v19 = v4;
    v20 = v5;
    [v16 addSuccessBlock:v18];
  }

  return v16;
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

  v12 = [(_CNUIUserActionDialRequestItem *)self dialRequest];
  v13 = [v3 appendObject:v12 withName:@"dialRequest"];

  v14 = [v3 appendName:@"group" integerValue:{-[CNUIUserActionItem group](self, "group")}];
  v15 = [v3 appendName:@"options" unsignedInteger:{-[CNUIUserActionItem options](self, "options")}];
  v16 = [v3 build];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v21 = MEMORY[0x1E69966F0];
  v5 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __42___CNUIUserActionDialRequestItem_isEqual___block_invoke;
  v36[3] = &unk_1E76E7A88;
  v36[4] = self;
  v37 = v4;
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