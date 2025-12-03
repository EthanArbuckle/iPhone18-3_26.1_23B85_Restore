@interface CPLCloudKitDownloadResourcesOperationContext
- (CPLCloudKitDownloadResourcesOperationContext)initWithResourceType:(unint64_t)type;
- (id)extendedStatusDescriptionStrings;
- (id)operationDescription;
- (void)addResource:(id)resource;
- (void)recordCompletionForResource:(id)resource withError:(id)error;
- (void)updateProgress:(double)progress forResource:(id)resource;
@end

@implementation CPLCloudKitDownloadResourcesOperationContext

- (CPLCloudKitDownloadResourcesOperationContext)initWithResourceType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = CPLCloudKitDownloadResourcesOperationContext;
  result = [(CPLCloudKitDownloadResourcesOperationContext *)&v5 init];
  if (result)
  {
    result->_resourceType = type;
  }

  return result;
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  resourceToProgressMap = self->_resourceToProgressMap;
  v8 = resourceCopy;
  if (!resourceToProgressMap)
  {
    v6 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:6];
    v7 = self->_resourceToProgressMap;
    self->_resourceToProgressMap = v6;

    resourceCopy = v8;
    resourceToProgressMap = self->_resourceToProgressMap;
  }

  [(NSMapTable *)resourceToProgressMap setObject:&off_10028EC80 forKey:resourceCopy];
}

- (void)updateProgress:(double)progress forResource:(id)resource
{
  v5 = (progress * 100.0);
  resourceCopy = resource;
  v7 = [NSNumber numberWithInteger:v5];
  [(NSMapTable *)self->_resourceToProgressMap setObject:v7 forKey:resourceCopy];
}

- (void)recordCompletionForResource:(id)resource withError:(id)error
{
  resourceToProgressMap = self->_resourceToProgressMap;
  if (error)
  {
    v6 = &off_10028EC98;
  }

  else
  {
    v6 = &off_10028ECB0;
  }

  [(NSMapTable *)resourceToProgressMap setObject:v6 forKey:resource];
}

- (id)operationDescription
{
  v2 = [CPLResource shortDescriptionForResourceType:self->_resourceType];
  v3 = [@"for " stringByAppendingString:v2];

  return v3;
}

- (id)extendedStatusDescriptionStrings
{
  v41 = objc_alloc_init(NSMutableArray);
  v3 = 72;
  selfCopy = self;
  v4 = [(NSMapTable *)self->_resourceToProgressMap count];
  v5 = +[NSUserDefaults standardUserDefaults];
  v47 = [v5 BOOLForKey:@"CPLUseCompactCloudKitStatus"];

  if (v4)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v6 = selfCopy->_resourceToProgressMap;
    v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v48 = 0;
      v50 = *v53;
      v46 = v6;
      do
      {
        v12 = 0;
        v49 = v8;
        do
        {
          if (*v53 != v50)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v52 + 1) + 8 * v12);
          v14 = [*(&selfCopy->super.super.isa + v3) objectForKey:v13];
          integerValue = [v14 integerValue];
          if (integerValue < 100)
          {
            v16 = integerValue;
            v17 = v10;
            v18 = v3;
            identity = [v13 identity];
            fileSize = [identity fileSize];
            if ((v47 & 1) == 0)
            {
              v44 = v11;
              v45 = v9;
              if (v14)
              {
                v21 = &stru_10027C2F0;
                if (v16 < 0)
                {
                  v21 = @" [error]";
                }

                v42 = v21;
                v43 = v16 & ~(v16 >> 63);
                v22 = [NSString alloc];
                itemScopedIdentifier = [v13 itemScopedIdentifier];
                fileUTI = [identity fileUTI];
                v25 = [NSByteCountFormatter stringFromByteCount:fileSize countStyle:3];
                v26 = [v22 initWithFormat:@"\t%@ (%@, %@) [%ld%%]%@", itemScopedIdentifier, fileUTI, v25, v43, v42];
              }

              else
              {
                v27 = [NSString alloc];
                itemScopedIdentifier = [v13 itemScopedIdentifier];
                fileUTI = [identity fileUTI];
                v25 = [NSByteCountFormatter stringFromByteCount:fileSize countStyle:3];
                v26 = [v27 initWithFormat:@"\t%@ (%@, %@) [waiting]", itemScopedIdentifier, fileUTI, v25, v39, v40];
              }

              v28 = v26;

              [v41 addObject:v28];
              v48 = v28;
              v11 = v44;
              v9 = v45;
            }

            v11 += fileSize;
            ++v9;

            v3 = v18;
            v10 = v17;
            v6 = v46;
            v8 = v49;
          }

          else
          {
            ++v10;
          }

          v12 = v12 + 1;
        }

        while (v8 != v12);
        v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v8);

      if (v10)
      {
        v29 = [NSString alloc];
        v30 = [CPLResource shortDescriptionForResourceType:selfCopy->_resourceType];
        v31 = v11;
        v32 = v30;
        v33 = [NSByteCountFormatter stringFromByteCount:v31 countStyle:3];
        v34 = [v29 initWithFormat:@"\t\t%lu (+ %lu downloaded) x %@ in batch (%@)", v9, v10, v32, v33];
LABEL_24:
        v37 = v34;

        [v41 addObject:v37];
        goto LABEL_25;
      }

      v35 = v11;
    }

    else
    {

      v48 = 0;
      v35 = 0;
      v9 = 0;
    }

    v36 = [NSString alloc];
    v32 = [CPLResource shortDescriptionForResourceType:selfCopy->_resourceType];
    v33 = [NSByteCountFormatter stringFromByteCount:v35 countStyle:3];
    v34 = [v36 initWithFormat:@"\t\t%lu x %@ in batch (%@)", v9, v32, v33, v39];
    goto LABEL_24;
  }

LABEL_25:

  return v41;
}

@end