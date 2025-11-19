@interface FBWorkspaceRegistration
+ (id)registrationWithIdentifier:(void *)a3 options:;
- (id)description;
- (uint64_t)acceptsClientScenes;
@end

@implementation FBWorkspaceRegistration

+ (id)registrationWithIdentifier:(void *)a3 options:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_opt_class();
  v11 = v5;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v9)
  {
    v14 = objc_opt_new();
    if (v14)
    {
      v15 = [v9 copy];
      v16 = *(v14 + 16);
      *(v14 + 16) = v15;

      *(v14 + 8) = [v13 bs_BOOLForKey:@"AcceptClientScenes"];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:0];
  v5 = [v3 appendBool:self->_acceptsClientScenes withName:@"acceptsClientScenes" ifEqualTo:1];
  v6 = [v3 build];

  return v6;
}

- (uint64_t)acceptsClientScenes
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end