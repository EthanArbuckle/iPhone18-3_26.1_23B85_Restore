@interface OAXMovieContext
- (BOOL)loadDelayedNode:(id)node;
- (id)dataRep;
@end

@implementation OAXMovieContext

- (BOOL)loadDelayedNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = nodeCopy;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = nodeCopy;
  }

  else
  {
    v6 = 0;
  }

  if (!self->super.mTargetLocation || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v12 = [(OCPPackage *)self->super.mPackage partForLocation:self->super.mTargetLocation];
      v10 = v12;
      v11 = v12 != 0;
      if (v12)
      {
        data = [v12 data];
        [v5 setData:data];
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_21;
      }

      v14 = [(OCPPackage *)self->super.mPackage partForLocation:self->super.mTargetLocation];
      v10 = v14;
      v11 = v14 != 0;
      if (v14)
      {
        data2 = [v14 data];
        [v6 setSoundData:data2];
      }
    }

    [(OCPPackage *)self->super.mPackage resetPartForLocation:self->super.mTargetLocation];
    goto LABEL_16;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->super.mTargetLocation path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (!v9)
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->super.mTargetLocation];
  [v5 setData:v10];
  v11 = 1;
LABEL_16:

LABEL_22:
  return v11;
}

- (id)dataRep
{
  mPackage = self->super.mPackage;
  mTargetLocation = self->super.mTargetLocation;
  if (mPackage)
  {
    path2 = [(OCPPackage *)mPackage partForLocation:mTargetLocation];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      zipEntry = [path2 zipEntry];
    }

    else
    {
      zipEntry = 0;
    }

    [(OCPPackage *)self->super.mPackage resetPartForLocation:self->super.mTargetLocation];
    goto LABEL_9;
  }

  if (mTargetLocation)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)self->super.mTargetLocation path];
    v9 = [defaultManager fileExistsAtPath:path];

    if (v9)
    {
      v10 = [OISFUFileDataRepresentation alloc];
      path2 = [(NSURL *)self->super.mTargetLocation path];
      zipEntry = [(OISFUFileDataRepresentation *)v10 initWithPath:path2];
LABEL_9:

      goto LABEL_11;
    }
  }

  zipEntry = 0;
LABEL_11:

  return zipEntry;
}

@end