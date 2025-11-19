@interface PKApplicationMessageNode
+ (id)_createForType:(uint64_t)a1;
+ (id)createForMessages:(id)a3;
+ (id)messageKeysForNode:(id)a3 localKeys:(id *)a4;
- (NSArray)children;
- (NSObject)key;
- (PKApplicationMessageNode)parent;
- (PKApplicationMessageNode)root;
- (id)_ancestorPassingTest:(id *)a1;
- (unint64_t)numberOfChildren;
- (void)_visitPostOrder:(uint64_t)a1;
- (void)_visitPreOrder:(uint64_t)a1;
@end

@implementation PKApplicationMessageNode

+ (id)createForMessages:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v34 = 0;
    goto LABEL_48;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v48 = v4;
  v6 = v4;
  v7 = off_1E79BF000;
  v51 = [v6 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (!v51)
  {
    goto LABEL_33;
  }

  v8 = *v55;
  v49 = v6;
  v50 = *v55;
  do
  {
    v9 = 0;
    do
    {
      if (*v55 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v54 + 1) + 8 * v9);
      if (v10)
      {
        v11 = v10[2];
        v12 = v11;
        if (v11)
        {
          v13 = v11[2];
          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = 0;
LABEL_11:

      v14 = v10;
      objc_opt_self();
      if (v10)
      {
        v15 = [(PKApplicationMessageNode *)v7[154] _createForType:?];
        objc_storeStrong(v15 + 5, v10);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v5 objectForKeyedSubscript:v13];
      if (!v16)
      {
        v19 = v15;
        objc_opt_self();
        if (v19)
        {
          v20 = v5;
          v21 = v7;
          v17 = [(PKApplicationMessageNode *)v7[154] _createForType:?];
          v22 = v19[5];
          if (v22)
          {
            v23 = v22[2];
            v24 = v22;
            if (v23)
            {
              v25 = v23[2];
              goto LABEL_22;
            }

            v26 = 0;
          }

          else
          {
            v25 = 0;
            v23 = 0;
LABEL_22:
            v26 = v25;
          }

          v27 = *(v17 + 48);
          *(v17 + 48) = v26;

          v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v19, 0}];
          v29 = *(v17 + 40);
          *(v17 + 40) = v28;

          objc_storeWeak(v19 + 3, v17);
          v7 = v21;
          v5 = v20;
          v6 = v49;
          v8 = v50;
        }

        else
        {
          v17 = 0;
        }

        [v5 setObject:v17 forKeyedSubscript:v13];
        goto LABEL_26;
      }

      v17 = v16;
      v18 = v15;
      [*(v17 + 40) addObject:v18];
      if (v18)
      {
        objc_storeWeak(v18 + 3, v17);
      }

LABEL_26:
      ++v9;
    }

    while (v51 != v9);
    v30 = [v6 countByEnumeratingWithState:&v54 objects:v62 count:16];
    v51 = v30;
  }

  while (v30);
LABEL_33:

  v31 = [v5 allValues];
  v32 = @"summary";
  v33 = v31;
  objc_opt_self();
  if (v33 && [v33 count])
  {
    v34 = [(PKApplicationMessageNode *)v7[154] _createForType:?];
    v35 = [@"summary" copy];
    v36 = v34[6];
    v34[6] = v35;

    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v33];
    v38 = v34[5];
    v34[5] = v37;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = v33;
    v40 = [v39 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v59;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v59 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v58 + 1) + 8 * i);
          if (v44)
          {
            objc_storeWeak((v44 + 24), v34);
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v41);
    }
  }

  else
  {
    v34 = 0;
  }

  v45 = [MEMORY[0x1E695DF00] now];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __46__PKApplicationMessageNode_createForMessages___block_invoke;
  v52[3] = &unk_1E79D5A88;
  v53 = v45;
  v46 = v45;
  [(PKApplicationMessageNode *)v34 _visitPostOrder:v52];

  v4 = v48;
LABEL_48:

  return v34;
}

void __46__PKApplicationMessageNode_createForMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[2];
  if (v4 == 2)
  {
    v10 = v3;
    v5 = *(a1 + 32);
    v6 = v10[5];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v7 = __61__PKApplicationMessageNodeMultipleGroupBranch__sortWithDate___block_invoke;
    v8 = &unk_1E79D5B48;
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v10 = v3;
    v5 = *(a1 + 32);
    v6 = v10[5];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v7 = __53__PKApplicationMessageNodeGroupBranch__sortWithDate___block_invoke;
    v8 = &unk_1E79D5B20;
  }

  v13 = v7;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [v6 sortUsingComparator:&v11];

  v3 = v10;
LABEL_6:
}

- (void)_visitPostOrder:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_14;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  if (![v5 count])
  {
    goto LABEL_13;
  }

  while (1)
  {
    v6 = [v5 lastObject];
    v7 = v6;
    if (*(v6 + 8))
    {
      break;
    }

    *(v6 + 8) = 1;
    v8 = *(v6 + 16);
    if (v8 == 1)
    {
      v9 = &OBJC_IVAR___PKApplicationMessageNodeGroupBranch__children;
LABEL_10:
      v10 = [*(v6 + *v9) copy];
      if (v10)
      {
        v11 = v10;
        [v5 addObjectsFromArray:v10];
      }

      goto LABEL_12;
    }

    if (v8 == 2)
    {
      v9 = &OBJC_IVAR___PKApplicationMessageNodeMultipleGroupBranch__children;
      goto LABEL_10;
    }

LABEL_12:

    if (![v5 count])
    {
      goto LABEL_13;
    }
  }

  [v5 removeLastObject];
  v12 = 0;
  v3[2](v3, v7, &v12);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(PKApplicationMessageNode *)a1 _visitPreOrder:?];

  objc_autoreleasePoolPop(v4);
LABEL_14:
}

+ (id)messageKeysForNode:(id)a3 localKeys:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PKApplicationMessageNode_messageKeysForNode_localKeys___block_invoke;
    aBlock[3] = &unk_1E79D5AB0;
    v8 = v7;
    v20 = v8;
    v9 = v6;
    v21 = v9;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    v12 = v5[2];
    if ((v12 - 1) >= 2)
    {
      if (!v12)
      {
        (*(v10 + 2))(v10, v5[5]);
      }
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__PKApplicationMessageNode_messageKeysForNode_localKeys___block_invoke_2;
      v17[3] = &unk_1E79D5AD8;
      v18 = v10;
      [(PKApplicationMessageNode *)v5 _visitPreOrder:v17];
    }

    if (a4 && [v8 count])
    {
      v14 = [v8 copy];
      v15 = *a4;
      *a4 = v14;
    }

    if ([v9 count])
    {
      v13 = [v9 copy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __57__PKApplicationMessageNode_messageKeysForNode_localKeys___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(a2 + 8);
  if (!v3)
  {
    v5 = 0;
LABEL_8:
    v6 = 32;
    goto LABEL_9;
  }

  v4 = *(v3 + 16);
  v5 = v4;
  if (!v4 || !v4[1])
  {
    goto LABEL_8;
  }

  v6 = 40;
LABEL_9:
  v7 = v5;
  [*(a1 + v6) addObject:v5];
}

uint64_t __57__PKApplicationMessageNode_messageKeysForNode_localKeys___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_visitPreOrder:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_18;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  if (![v5 count])
  {
    goto LABEL_17;
  }

  while (1)
  {
    v6 = [v5 lastObject];
    [v5 removeLastObject];
    v13 = 1;
    v12 = 0;
    v3[2](v3, v6, &v13, &v12);
    if (v12 == 1)
    {
      break;
    }

    if (v13 != 1 || v6 == 0)
    {
      goto LABEL_14;
    }

    v8 = v6[2];
    if (v8 == 1)
    {
      v9 = &OBJC_IVAR___PKApplicationMessageNodeGroupBranch__children;
LABEL_12:
      v10 = [*(v6 + *v9) copy];
      if (v10)
      {
        v11 = v10;
        [v5 addObjectsFromArray:v10];
      }

      goto LABEL_14;
    }

    if (v8 == 2)
    {
      v9 = &OBJC_IVAR___PKApplicationMessageNodeMultipleGroupBranch__children;
      goto LABEL_12;
    }

LABEL_14:

    if (![v5 count])
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  objc_autoreleasePoolPop(v4);
LABEL_18:
}

+ (id)_createForType:(uint64_t)a1
{
  objc_opt_self();
  v3 = objc_alloc(*off_1E79D5B68[a2]);
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = PKApplicationMessageNode;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    v6 = v5;
    if (v5)
    {
      *(v5 + 2) = a2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSObject)key
{
  if (!self)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_12;
  }

  type = self->_type;
  if (type != 2 && type != 1)
  {
    if (!type)
    {
      isa = self[1].super.isa;
      if (isa)
      {
        v4 = isa[1];
        v5 = isa;
        if (!v4)
        {
          v7 = 0;
          goto LABEL_9;
        }

        v6 = v4[2];
      }

      else
      {
        v6 = 0;
        v4 = 0;
      }

      v7 = v6;
LABEL_9:

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v7 = *&self[1]._visited;
LABEL_12:

  return v7;
}

- (NSArray)children
{
  if (!self)
  {
LABEL_7:

    return self;
  }

  type = self->_type;
  if (type == 1)
  {
    v5 = &OBJC_IVAR___PKApplicationMessageNodeGroupBranch__children;
    goto LABEL_6;
  }

  if (type == 2)
  {
    v5 = &OBJC_IVAR___PKApplicationMessageNodeMultipleGroupBranch__children;
LABEL_6:
    self = [*(&self->super.isa + *v5) copy];
    goto LABEL_7;
  }

  self = 0;

  return self;
}

- (unint64_t)numberOfChildren
{
  if (self)
  {
    type = self->_type;
    if (type == 1)
    {
      v3 = &OBJC_IVAR___PKApplicationMessageNodeGroupBranch__children;
      goto LABEL_7;
    }

    if (type == 2)
    {
      v3 = &OBJC_IVAR___PKApplicationMessageNodeMultipleGroupBranch__children;
LABEL_7:
      v4 = [*(&self->super.isa + *v3) copy];
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  v5 = [v4 count];

  return v5;
}

- (PKApplicationMessageNode)root
{
  if (self)
  {
    self = [(PKApplicationMessageNode *)&self->super.isa _ancestorPassingTest:?];
    v2 = vars8;
  }

  return self;
}

- (id)_ancestorPassingTest:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    a1 = 0;
    while (1)
    {
      v8 = 0;
      if (!v3 || v3[2](v3, v4, &v8))
      {
        v5 = v4;

        a1 = v5;
      }

      if (v8 == 1)
      {
        break;
      }

      WeakRetained = objc_loadWeakRetained(v4 + 3);

      v4 = WeakRetained;
      if (!WeakRetained)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:

  return a1;
}

- (PKApplicationMessageNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end