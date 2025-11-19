@interface CADGenerationStampedObjectID
- (BOOL)isEqual:(id)a3;
@end

@implementation CADGenerationStampedObjectID

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v8 = 1;
    goto LABEL_17;
  }

  Class = object_getClass(self);
  v7 = object_getClass(v5);
  if (Class == v7)
  {
    v9 = v5;
    v10 = [(CADGenerationStampedObjectID *)self entityType];
    if (v10 != [(CADGenerationStampedObjectID *)v9 entityType])
    {
      goto LABEL_15;
    }

    v11 = [(CADGenerationStampedObjectID *)self entityID];
    if (v11 != [(CADGenerationStampedObjectID *)v9 entityID])
    {
      goto LABEL_15;
    }

    v12 = [(CADGenerationStampedObjectID *)self isTemporary];
    if (v12 != [(CADGenerationStampedObjectID *)v9 isTemporary])
    {
      goto LABEL_15;
    }

    v13 = [(CADGenerationStampedObjectID *)self databaseID];
    if (v13 != [(CADGenerationStampedObjectID *)v9 databaseID])
    {
      goto LABEL_15;
    }

    v14 = [(CADGenerationStampedObjectID *)self restoreGeneration];
    v15 = [(CADGenerationStampedObjectID *)v9 restoreGeneration];
    goto LABEL_19;
  }

  if (v7 == objc_opt_class())
  {
    v16 = v5;
    v17 = [(CADGenerationStampedObjectID *)self entityType];
    if (v17 != [(CADGenerationStampedObjectID *)v16 entityType]|| (v18 = [(CADGenerationStampedObjectID *)self entityID], v18 != [(CADGenerationStampedObjectID *)v16 entityID]) || (v19 = [(CADGenerationStampedObjectID *)self isTemporary], v19 != [(CADGenerationStampedObjectID *)v16 isTemporary]))
    {
LABEL_15:
      v8 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v14 = [(CADGenerationStampedObjectID *)self databaseID];
    v15 = [(CADGenerationStampedObjectID *)v16 databaseID];
LABEL_19:
    v8 = v14 == v15;
    goto LABEL_16;
  }

LABEL_5:
  v8 = 0;
LABEL_17:

  return v8;
}

@end