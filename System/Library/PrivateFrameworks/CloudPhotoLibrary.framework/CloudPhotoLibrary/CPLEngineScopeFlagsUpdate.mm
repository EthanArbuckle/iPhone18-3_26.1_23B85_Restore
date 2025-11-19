@interface CPLEngineScopeFlagsUpdate
+ (id)_arrayDescriptionForFlags:(int64_t)a3 remainingFlags:(int64_t *)a4;
+ (id)descriptionForFlags:(int64_t)a3;
+ (id)flagsDescriptionMapping;
- (CPLEngineScopeFlagsUpdate)init;
- (CPLEngineScopeFlagsUpdate)initWithFlags:(int64_t)a3;
- (NSArray)arrayDescription;
- (id)description;
- (void)setValue:(BOOL)a3 forFlag:(int64_t)a4;
- (void)updateFlags:(id)a3;
- (void)updateFlags:(int64_t)a3 withFlagsValue:(int64_t)a4;
@end

@implementation CPLEngineScopeFlagsUpdate

- (NSArray)arrayDescription
{
  v8 = 0;
  v2 = [objc_opt_class() _arrayDescriptionForFlags:self->_flags remainingFlags:&v8];
  v3 = v2;
  if (v8)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [v4 initWithFormat:@"???(0x%lx)", v8];
    v6 = [v3 arrayByAddingObject:v5];
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

- (id)description
{
  if (self->_updatedFlagsMask)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [objc_opt_class() flagsDescriptionMapping];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__CPLEngineScopeFlagsUpdate_description__block_invoke;
    v16[3] = &unk_1E861C1C0;
    v16[4] = self;
    v5 = v3;
    v17 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v16];

    v6 = [v5 count];
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [objc_opt_class() descriptionForFlags:self->_flags];
    v9 = v8;
    flags = self->_flags;
    if (v6)
    {
      v11 = [v5 componentsJoinedByString:{@", "}];
      v12 = [v7 initWithFormat:@"%@ (0x%lx %@)", v9, flags, v11];
    }

    else
    {
      v12 = [v7 initWithFormat:@"%@ (0x%lx)", v8, flags];
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [objc_opt_class() descriptionForFlags:self->_flags];
    v12 = [v13 initWithFormat:@"%@ (0x%lx)", v14, self->_flags];
  }

  return v12;
}

void __40__CPLEngineScopeFlagsUpdate_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = [a2 integerValue];
  v6 = *(a1 + 32);
  if ((v5 & ~*(v6 + 16)) == 0)
  {
    v7 = v5;
    v8 = *(v6 + 8);
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    if ((v7 & ~v8) != 0)
    {
      v10 = @"-%@";
    }

    else
    {
      v10 = @"+%@";
    }

    v11 = [v9 initWithFormat:v10, v12];
    [*(a1 + 40) addObject:v11];
  }
}

- (void)updateFlags:(id)a3
{
  v4 = a3;
  v5 = [v4 updatedFlagsMask];
  v6 = [v4 flags];

  [(CPLEngineScopeFlagsUpdate *)self updateFlags:v5 withFlagsValue:v6];
}

- (void)updateFlags:(int64_t)a3 withFlagsValue:(int64_t)a4
{
  v4 = self->_updatedFlagsMask | a3;
  self->_flags = self->_flags & ~a3 | a4 & a3;
  self->_updatedFlagsMask = v4;
}

- (void)setValue:(BOOL)a3 forFlag:(int64_t)a4
{
  flags = self->_flags;
  if (a3)
  {
    v5 = flags | a4;
    if ((flags | a4) == flags)
    {
      return;
    }

    flags = ~flags;
  }

  else
  {
    v5 = flags & ~a4;
    if (v5 == flags)
    {
      return;
    }
  }

  v6 = self->_updatedFlagsMask | flags & a4;
  self->_flags = v5;
  self->_updatedFlagsMask = v6;
}

- (CPLEngineScopeFlagsUpdate)initWithFlags:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CPLEngineScopeFlagsUpdate;
  result = [(CPLEngineScopeFlagsUpdate *)&v5 init];
  if (result)
  {
    result->_flags = a3;
  }

  return result;
}

- (CPLEngineScopeFlagsUpdate)init
{
  v3.receiver = self;
  v3.super_class = CPLEngineScopeFlagsUpdate;
  return [(CPLEngineScopeFlagsUpdate *)&v3 init];
}

+ (id)descriptionForFlags:(int64_t)a3
{
  if (a3)
  {
    v9 = 0;
    v3 = [a1 _arrayDescriptionForFlags:a3 remainingFlags:&v9];
    v4 = v3;
    if (v9)
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v6 = [v4 componentsJoinedByString:@"|"];
      v7 = [v5 initWithFormat:@"%@|???(0x%lx)", v6, v9];
    }

    else
    {
      v7 = [v3 componentsJoinedByString:@"|"];
    }
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

+ (id)_arrayDescriptionForFlags:(int64_t)a3 remainingFlags:(int64_t *)a4
{
  if (a3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = a3;
    v8 = [a1 flagsDescriptionMapping];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CPLEngineScopeFlagsUpdate__arrayDescriptionForFlags_remainingFlags___block_invoke;
    v11[3] = &unk_1E861C198;
    v13 = &v15;
    v14 = a3;
    v9 = v7;
    v12 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];

    *a4 = v16[3];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    *a4 = 0;
    v9 = &unk_1F57EF878;
  }

  return v9;
}

void __70__CPLEngineScopeFlagsUpdate__arrayDescriptionForFlags_remainingFlags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 integerValue];
  if (v5 && (v5 & ~*(a1 + 48)) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) &= ~v5;
    [*(a1 + 32) addObject:v6];
  }
}

+ (id)flagsDescriptionMapping
{
  if (flagsDescriptionMapping_onceToken != -1)
  {
    dispatch_once(&flagsDescriptionMapping_onceToken, &__block_literal_global_5626);
  }

  v3 = flagsDescriptionMapping_descriptions;

  return v3;
}

void __52__CPLEngineScopeFlagsUpdate_flagsDescriptionMapping__block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F57EF3E0;
  v3[1] = &unk_1F57EF3F8;
  v4[0] = @"none";
  v4[1] = @"readonly";
  v3[2] = &unk_1F57EF410;
  v3[3] = &unk_1F57EF428;
  v4[2] = @"over-quota";
  v4[3] = @"deleted";
  v3[4] = &unk_1F57EF440;
  v3[5] = &unk_1F57EF458;
  v4[4] = @"disabled";
  v4[5] = @"inactive";
  v3[6] = &unk_1F57EF470;
  v3[7] = &unk_1F57EF488;
  v4[6] = @"scheduled-for-delete";
  v4[7] = @"staged";
  v3[8] = &unk_1F57EF4A0;
  v3[9] = &unk_1F57EF4B8;
  v4[8] = @"client-sync";
  v4[9] = @"push-high-priority";
  v3[10] = &unk_1F57EF4D0;
  v4[10] = @"feature-disabled";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:11];
  v1 = flagsDescriptionMapping_descriptions;
  flagsDescriptionMapping_descriptions = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end