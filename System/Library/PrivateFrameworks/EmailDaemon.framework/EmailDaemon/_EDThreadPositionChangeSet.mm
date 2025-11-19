@interface _EDThreadPositionChangeSet
- (BOOL)_isMovingObjectID:(id)a3;
- (BOOL)addObjectIDToAdd:(id)a3 before:(id)a4;
- (BOOL)addObjectIDToMove:(id)a3 before:(id)a4;
- (BOOL)isAddingObjectID:(id)a3;
- (BOOL)isDeletingObjectID:(id)a3;
- (_EDThreadPositionChangeSet)init;
- (id)description;
- (void)addObjectIDToDelete:(id)a3;
@end

@implementation _EDThreadPositionChangeSet

- (_EDThreadPositionChangeSet)init
{
  v10.receiver = self;
  v10.super_class = _EDThreadPositionChangeSet;
  v2 = [(_EDThreadPositionChangeSet *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objectIDsToAddByBeforeObjectID = v2->_objectIDsToAddByBeforeObjectID;
    v2->_objectIDsToAddByBeforeObjectID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objectIDsToMoveByBeforeObjectID = v2->_objectIDsToMoveByBeforeObjectID;
    v2->_objectIDsToMoveByBeforeObjectID = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objectIDsToDelete = v2->_objectIDsToDelete;
    v2->_objectIDsToDelete = v7;
  }

  return v2;
}

- (id)description
{
  v50 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41___EDThreadPositionChangeSet_description__block_invoke_2;
  aBlock[3] = &unk_1E82560F8;
  v48 = &__block_literal_global_420;
  v22 = _Block_copy(aBlock);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__33;
  v45 = __Block_byref_object_dispose__33;
  v46 = 0;
  v3 = [(_EDThreadPositionChangeSet *)self objectIDsToAddByBeforeObjectID];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __41___EDThreadPositionChangeSet_description__block_invoke_3;
  v37[3] = &unk_1E8256120;
  v4 = v22;
  v38 = v4;
  v39 = &__block_literal_global_420;
  v40 = &v41;
  [v3 enumerateKeysAndObjectsUsingBlock:v37];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__33;
  v35 = __Block_byref_object_dispose__33;
  v36 = 0;
  v5 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __41___EDThreadPositionChangeSet_description__block_invoke_4;
  v27[3] = &unk_1E8256120;
  v6 = v4;
  v28 = v6;
  v29 = &__block_literal_global_420;
  v30 = &v31;
  [v5 enumerateKeysAndObjectsUsingBlock:v27];

  v7 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v49 count:16];
    v12 = v11;
    if (v11)
    {
      v13 = *v24;
      v14 = 1;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          if ((v14 & 1) == 0)
          {
            v11 = [v9 appendString:{@", "}];
          }

          v17 = __41___EDThreadPositionChangeSet_description__block_invoke(v11, v16);
          [v9 appendString:v17];

          v14 = 0;
          ++v15;
        }

        while (v12 != v15);
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v49 count:16];
        v12 = v11;
        v14 = 0;
      }

      while (v11);
    }

    [v9 appendString:@"]"];
  }

  else
  {
    v9 = 0;
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v19 = v18;
  if (v42[5])
  {
    [v18 appendFormat:@"Add:\n%@", v42[5]];
  }

  if (v32[5])
  {
    if ([v19 length])
    {
      [v19 appendString:@"\n"];
    }

    [v19 appendFormat:@"Move:\n%@", v32[5]];
  }

  if (v9)
  {
    if ([v19 length])
    {
      [v19 appendString:@"\n"];
    }

    [v19 appendFormat:@"Delete:\n%@", v9];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v41, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)addObjectIDToAdd:(id)a3 before:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
  v10 = [v9 containsObject:v8];

  if (v10)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"EDPrecomputedThreadQueryHandler.m" lineNumber:1042 description:@"Adding a thread based on position of a thread that was deleted"];
  }

  v11 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (v12 || [(_EDThreadPositionChangeSet *)self _isMovingObjectID:v8]|| [(_EDThreadPositionChangeSet *)self isDeletingObjectID:v7])
  {
    v13 = 0;
  }

  else
  {
    v15 = [(_EDThreadPositionChangeSet *)self objectIDsToAddByBeforeObjectID];
    v16 = [v15 objectForKeyedSubscript:v8];

    if (v16)
    {
      [v16 addObject:v7];
    }

    else
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 1;
      v17 = [(_EDThreadPositionChangeSet *)self objectIDsToAddByBeforeObjectID];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __54___EDThreadPositionChangeSet_addObjectIDToAdd_before___block_invoke;
      v27 = &unk_1E8256148;
      v18 = v8;
      v28 = v18;
      v19 = v7;
      v29 = v19;
      v30 = &v31;
      [v17 enumerateKeysAndObjectsUsingBlock:&v24];

      if (*(v32 + 24) == 1)
      {
        v20 = objc_alloc(MEMORY[0x1E695DFA0]);
        v21 = [v20 initWithObjects:{v19, 0, v24, v25, v26, v27, v28}];
        v22 = [(_EDThreadPositionChangeSet *)self objectIDsToAddByBeforeObjectID];
        [v22 setObject:v21 forKeyedSubscript:v18];
      }

      _Block_object_dispose(&v31, 8);
    }

    v13 = 1;
  }

  return v13;
}

- (BOOL)addObjectIDToMove:(id)a3 before:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"EDPrecomputedThreadQueryHandler.m" lineNumber:1080 description:@"Moving a thread that was deleted"];
  }

  v11 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
  v12 = [v11 containsObject:v8];

  if (v12)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"EDPrecomputedThreadQueryHandler.m" lineNumber:1081 description:@"Moving a thread based on position of a thread that was deleted"];
  }

  v13 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
  v14 = [v13 objectForKeyedSubscript:v7];

  if (!v14)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__33;
    v47 = __Block_byref_object_dispose__33;
    v48 = 0;
    v15 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __55___EDThreadPositionChangeSet_addObjectIDToMove_before___block_invoke;
    v40[3] = &unk_1E8256170;
    v16 = v7;
    v41 = v16;
    v42 = &v43;
    [v15 enumerateKeysAndObjectsUsingBlock:v40];

    if (v44[5])
    {
      v17 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
      [v17 setObject:0 forKeyedSubscript:v44[5]];
    }

    v18 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
    v19 = [v18 objectForKeyedSubscript:v8];

    if (v19)
    {
      [v19 addObject:v16];
    }

    else
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 1;
      v20 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __55___EDThreadPositionChangeSet_addObjectIDToMove_before___block_invoke_2;
      v32 = &unk_1E8256148;
      v21 = v8;
      v33 = v21;
      v22 = v16;
      v34 = v22;
      v35 = &v36;
      [v20 enumerateKeysAndObjectsUsingBlock:&v29];

      if (*(v37 + 24) == 1)
      {
        v23 = objc_alloc(MEMORY[0x1E695DFA0]);
        v24 = [v23 initWithObjects:{v22, 0, v29, v30, v31, v32, v33}];
        v25 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
        [v25 setObject:v24 forKeyedSubscript:v21];
      }

      _Block_object_dispose(&v36, 8);
    }

    _Block_object_dispose(&v43, 8);
  }

  return v14 == 0;
}

- (void)addObjectIDToDelete:(id)a3
{
  v5 = a3;
  v4 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
  [v4 addObject:v5];
}

- (BOOL)isAddingObjectID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(_EDThreadPositionChangeSet *)self objectIDsToAddByBeforeObjectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___EDThreadPositionChangeSet_isAddingObjectID___block_invoke;
  v8[3] = &unk_1E8256170;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (BOOL)_isMovingObjectID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(_EDThreadPositionChangeSet *)self objectIDsToMoveByBeforeObjectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___EDThreadPositionChangeSet__isMovingObjectID___block_invoke;
  v8[3] = &unk_1E8256170;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (BOOL)isDeletingObjectID:(id)a3
{
  v4 = a3;
  v5 = [(_EDThreadPositionChangeSet *)self objectIDsToDelete];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end