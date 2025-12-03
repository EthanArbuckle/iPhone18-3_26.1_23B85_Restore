@interface CADGenerationStampedObjectID
- (BOOL)isEqual:(id)equal;
@end

@implementation CADGenerationStampedObjectID

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_17;
  }

  Class = object_getClass(self);
  v7 = object_getClass(v5);
  if (Class == v7)
  {
    v9 = v5;
    entityType = [(CADGenerationStampedObjectID *)self entityType];
    if (entityType != [(CADGenerationStampedObjectID *)v9 entityType])
    {
      goto LABEL_15;
    }

    entityID = [(CADGenerationStampedObjectID *)self entityID];
    if (entityID != [(CADGenerationStampedObjectID *)v9 entityID])
    {
      goto LABEL_15;
    }

    isTemporary = [(CADGenerationStampedObjectID *)self isTemporary];
    if (isTemporary != [(CADGenerationStampedObjectID *)v9 isTemporary])
    {
      goto LABEL_15;
    }

    databaseID = [(CADGenerationStampedObjectID *)self databaseID];
    if (databaseID != [(CADGenerationStampedObjectID *)v9 databaseID])
    {
      goto LABEL_15;
    }

    restoreGeneration = [(CADGenerationStampedObjectID *)self restoreGeneration];
    restoreGeneration2 = [(CADGenerationStampedObjectID *)v9 restoreGeneration];
    goto LABEL_19;
  }

  if (v7 == objc_opt_class())
  {
    v16 = v5;
    entityType2 = [(CADGenerationStampedObjectID *)self entityType];
    if (entityType2 != [(CADGenerationStampedObjectID *)v16 entityType]|| (v18 = [(CADGenerationStampedObjectID *)self entityID], v18 != [(CADGenerationStampedObjectID *)v16 entityID]) || (v19 = [(CADGenerationStampedObjectID *)self isTemporary], v19 != [(CADGenerationStampedObjectID *)v16 isTemporary]))
    {
LABEL_15:
      v8 = 0;
LABEL_16:

      goto LABEL_17;
    }

    restoreGeneration = [(CADGenerationStampedObjectID *)self databaseID];
    restoreGeneration2 = [(CADGenerationStampedObjectID *)v16 databaseID];
LABEL_19:
    v8 = restoreGeneration == restoreGeneration2;
    goto LABEL_16;
  }

LABEL_5:
  v8 = 0;
LABEL_17:

  return v8;
}

@end