@interface CPLResourceTypeSet
- (BOOL)containsResourceType:(unint64_t)a3;
- (id)description;
- (id)intersectionWithSet:(id)a3;
- (id)unionSet:(id)a3;
- (unint64_t)count;
- (void)addResourceType:(unint64_t)a3;
- (void)enumerateResourceTypesWithBlock:(id)a3;
- (void)removeResourceType:(unint64_t)a3;
@end

@implementation CPLResourceTypeSet

- (id)description
{
  if (self->_baseTypesBits || self->_extraTypeBits)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __33__CPLResourceTypeSet_description__block_invoke;
    v12 = &unk_1E861DA58;
    v13 = v3;
    v4 = v3;
    [(CPLResourceTypeSet *)self enumerateResourceTypesWithBlock:&v9];
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v4 componentsJoinedByString:{@", "}];
    v7 = [v5 initWithFormat:@"[%@]", v6, v9, v10, v11, v12];
  }

  else
  {
    v7 = @"[<empty>]";
  }

  return v7;
}

void __33__CPLResourceTypeSet_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CPLResource shortDescriptionForResourceType:a2];
  [v2 addObject:v3];
}

- (id)unionSet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CPLResourceTypeSet);
  v5->_baseTypesBits = v4[1] | self->_baseTypesBits;
  extraTypeBits = self->_extraTypeBits;
  v7 = v4[2];

  v5->_extraTypeBits = v7 | extraTypeBits;

  return v5;
}

- (id)intersectionWithSet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CPLResourceTypeSet);
  v5->_baseTypesBits = v4[1] & self->_baseTypesBits;
  extraTypeBits = self->_extraTypeBits;
  v7 = v4[2];

  v5->_extraTypeBits = v7 & extraTypeBits;

  return v5;
}

- (void)enumerateResourceTypesWithBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CPLResourceTypeSet_enumerateResourceTypesWithBlock___block_invoke;
  v7[3] = &unk_1E861DA30;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  v6 = MEMORY[0x1E128EBA0](v7);
  v6[2](v6, 0, self->_baseTypesBits);
  if ((v11[3] & 1) == 0)
  {
    v6[2](v6, 1000, self->_extraTypeBits);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __54__CPLResourceTypeSet_enumerateResourceTypesWithBlock___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if (v3)
      {
        v6 = *(*(v5 + 40) + 8);
        result = (*(*(v5 + 32) + 16))();
        if (*(*(*(v5 + 40) + 8) + 24))
        {
          break;
        }
      }

      ++a2;
      v7 = v3 > 1;
      v3 >>= 1;
    }

    while (v7);
  }

  return result;
}

- (BOOL)containsResourceType:(unint64_t)a3
{
  if (a3 > 0x1C)
  {
    if (a3 != 1000)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResource.m"];
      [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:755 description:{@"Invalid resource type %ld", a3}];

      abort();
    }

    v3 = self->_extraTypeBits & 1;
  }

  else
  {
    v3 = self->_baseTypesBits & (1 << a3);
  }

  return v3 != 0;
}

- (void)removeResourceType:(unint64_t)a3
{
  if (a3 > 0x1C)
  {
    if (a3 != 1000)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResource.m"];
      [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:745 description:{@"Invalid resource type %ld", a3}];

      abort();
    }

    v3 = -2;
    v4 = 16;
  }

  else
  {
    v3 = ~(1 << a3);
    v4 = 8;
  }

  *(&self->super.isa + v4) = (*(&self->super.isa + v4) & v3);
}

- (void)addResourceType:(unint64_t)a3
{
  if (a3 > 0x1C)
  {
    if (a3 != 1000)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResource.m"];
      [v8 handleFailureInMethod:a2 object:self file:v9 lineNumber:735 description:{@"Invalid resource type %ld", a3}];

      abort();
    }

    v3 = 1;
    v4 = 16;
  }

  else
  {
    v3 = (1 << a3);
    v4 = 8;
  }

  *(&self->super.isa + v4) = (*(&self->super.isa + v4) | v3);
}

- (unint64_t)count
{
  baseTypesBits = self->_baseTypesBits;
  if (baseTypesBits)
  {
    result = 0;
    do
    {
      result += baseTypesBits & 1;
      v5 = baseTypesBits >= 2;
      baseTypesBits >>= 1;
    }

    while (v5);
  }

  else
  {
    result = 0;
  }

  extraTypeBits = self->_extraTypeBits;
  if (extraTypeBits)
  {
    do
    {
      result += extraTypeBits & 1;
      v5 = extraTypeBits >= 2;
      extraTypeBits >>= 1;
    }

    while (v5);
  }

  return result;
}

@end