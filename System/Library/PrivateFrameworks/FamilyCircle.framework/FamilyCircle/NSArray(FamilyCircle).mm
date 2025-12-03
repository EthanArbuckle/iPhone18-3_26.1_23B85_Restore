@interface NSArray(FamilyCircle)
- (id)fa_firstObjectMatching:()FamilyCircle;
- (id)fa_map:()FamilyCircle;
@end

@implementation NSArray(FamilyCircle)

- (id)fa_map:()FamilyCircle
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __32__NSArray_FamilyCircle__fa_map___block_invoke;
  v13 = &unk_1E7CA5800;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)fa_firstObjectMatching:()FamilyCircle
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__NSArray_FamilyCircle__fa_firstObjectMatching___block_invoke;
  v8[3] = &unk_1E7CA5828;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end