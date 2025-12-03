@interface PDBuildMapKey
- (BOOL)isEqual:(id)equal;
- (PDBuildMapKey)init;
- (PDBuildMapKey)initWithDrawable:(id)drawable groupId:(id)id;
- (id)description;
- (void)setDrawable:(id)drawable;
@end

@implementation PDBuildMapKey

- (PDBuildMapKey)init
{
  v3.receiver = self;
  v3.super_class = PDBuildMapKey;
  return [(PDBuildMapKey *)&v3 init];
}

- (PDBuildMapKey)initWithDrawable:(id)drawable groupId:(id)id
{
  drawableCopy = drawable;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = PDBuildMapKey;
  v8 = [(PDBuildMapKey *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:drawableCopy];
    mDrawableValue = v8->mDrawableValue;
    v8->mDrawableValue = v9;

    objc_storeStrong(&v8->mGroupId, id);
  }

  return v8;
}

- (void)setDrawable:(id)drawable
{
  drawableCopy = drawable;
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:?];
  mDrawableValue = self->mDrawableValue;
  self->mDrawableValue = v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    drawable = [(PDBuildMapKey *)self drawable];
    drawable2 = [v5 drawable];

    if (drawable != drawable2)
    {
LABEL_3:
      v8 = 0;
LABEL_11:

      goto LABEL_12;
    }

    if (self->mGroupId)
    {
      groupId = [v5 groupId];

      mGroupId = self->mGroupId;
      if (groupId)
      {
        groupId2 = [v5 groupId];
        v8 = [(NSString *)mGroupId isEqualToString:groupId2];
LABEL_10:

        goto LABEL_11;
      }

      if (mGroupId)
      {
        goto LABEL_3;
      }
    }

    groupId2 = [v5 groupId];
    v8 = groupId2 == 0;
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