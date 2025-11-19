@interface FBSProcessExecutableSlice
+ (id)sliceWithType:(int)a3 subtype:(int)a4;
+ (void)initialize;
- (id)description;
- (id)membersForCoder;
@end

@implementation FBSProcessExecutableSlice

+ (id)sliceWithType:(int)a3 subtype:(int)a4
{
  v6 = objc_opt_new();
  v6[2] = a3;
  v6[3] = a4;

  return v6;
}

- (id)description
{
  if (self->_type == 16777228)
  {
    v3 = self->_subtype + 1;
    if (v3 >= 4)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"arm64_(%i)", self->_subtype];
    }

    else
    {
      v4 = off_1E76BF6E0[v3];
    }
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v4 = [v5 stringWithFormat:@"<%@ type: %d; subtype: %d>", v7, self->_type, self->_subtype];;
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BSXPCAutoCodingInitialize();
  }
}

void __39__FBSProcessExecutableSlice_initialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  BSXPCLegacyCoding();
}

- (id)membersForCoder
{
  v2 = NSStringFromSelector(sel_type);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  _BSAutoMember();
}

@end