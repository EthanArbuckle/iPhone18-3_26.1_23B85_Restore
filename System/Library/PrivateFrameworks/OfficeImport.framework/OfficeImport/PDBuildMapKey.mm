@interface PDBuildMapKey
- (BOOL)isEqual:(id)a3;
- (PDBuildMapKey)init;
- (PDBuildMapKey)initWithDrawable:(id)a3 groupId:(id)a4;
- (id)description;
- (void)setDrawable:(id)a3;
@end

@implementation PDBuildMapKey

- (PDBuildMapKey)init
{
  v3.receiver = self;
  v3.super_class = PDBuildMapKey;
  return [(PDBuildMapKey *)&v3 init];
}

- (PDBuildMapKey)initWithDrawable:(id)a3 groupId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PDBuildMapKey;
  v8 = [(PDBuildMapKey *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];
    mDrawableValue = v8->mDrawableValue;
    v8->mDrawableValue = v9;

    objc_storeStrong(&v8->mGroupId, a4);
  }

  return v8;
}

- (void)setDrawable:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:?];
  mDrawableValue = self->mDrawableValue;
  self->mDrawableValue = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PDBuildMapKey *)self drawable];
    v7 = [v5 drawable];

    if (v6 != v7)
    {
LABEL_3:
      v8 = 0;
LABEL_11:

      goto LABEL_12;
    }

    if (self->mGroupId)
    {
      v9 = [v5 groupId];

      mGroupId = self->mGroupId;
      if (v9)
      {
        v11 = [v5 groupId];
        v8 = [(NSString *)mGroupId isEqualToString:v11];
LABEL_10:

        goto LABEL_11;
      }

      if (mGroupId)
      {
        goto LABEL_3;
      }
    }

    v11 = [v5 groupId];
    v8 = v11 == 0;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDBuildMapKey;
  v2 = [(PDBuildMapKey *)&v4 description];

  return v2;
}

@end