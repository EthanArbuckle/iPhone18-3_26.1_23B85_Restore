@interface CPLCloudKitDownloadResourcesOperationContext
- (CPLCloudKitDownloadResourcesOperationContext)initWithResourceType:(unint64_t)a3;
- (id)extendedStatusDescriptionStrings;
- (id)operationDescription;
- (void)addResource:(id)a3;
- (void)recordCompletionForResource:(id)a3 withError:(id)a4;
- (void)updateProgress:(double)a3 forResource:(id)a4;
@end

@implementation CPLCloudKitDownloadResourcesOperationContext

- (CPLCloudKitDownloadResourcesOperationContext)initWithResourceType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CPLCloudKitDownloadResourcesOperationContext;
  result = [(CPLCloudKitDownloadResourcesOperationContext *)&v5 init];
  if (result)
  {
    result->_resourceType = a3;
  }

  return result;
}

- (void)addResource:(id)a3
{
  v4 = a3;
  resourceToProgressMap = self->_resourceToProgressMap;
  v8 = v4;
  if (!resourceToProgressMap)
  {
    v6 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:6];
    v7 = self->_resourceToProgressMap;
    self->_resourceToProgressMap = v6;

    v4 = v8;
    resourceToProgressMap = self->_resourceToProgressMap;
  }

  [(NSMapTable *)resourceToProgressMap setObject:&off_10028EC80 forKey:v4];
}

- (void)updateProgress:(double)a3 forResource:(id)a4
{
  v5 = (a3 * 100.0);
  v6 = a4;
  v7 = [NSNumber numberWithInteger:v5];
  [(NSMapTable *)self->_resourceToProgressMap setObject:v7 forKey:v6];
}

- (void)recordCompletionForResource:(id)a3 withError:(id)a4
{
  resourceToProgressMap = self->_resourceToProgressMap;
  if (a4)
  {
    v6 = &off_10028EC98;
  }

  else
  {
    v6 = &off_10028ECB0;
  }

  [(NSMapTable *)resourceToProgressMap setObject:v6 forKey:a3];
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
  v51 = self;
  v4 = [(NSMapTable *)self->_resourceToProgressMap count];
  v5 = +[NSUserDefaults standardUserDefaults];
  v47 = [v5 BOOLForKey:@"CPLUseCompactCloudKitStatus"];

  if (v4)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v6 = v51->_resourceToProgressMap;
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
          v14 = [*(&v51->super.super.isa + v3) objectForKey:v13];
          v15 = [v14 integerValue];
          if (v15 < 100)
          {
            v16 = v15;
            v17 = v10;
            v18 = v3;
            v19 = [v13 identity];
            v20 = [v19 fileSize];
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
                v23 = [v13 itemScopedIdentifier];
                v24 = [v19 fileUTI];
                v25 = [NSByteCountFormatter stringFromByteCount:v20 countStyle:3];
                v26 = [v22 initWithFormat:@"\t%@ (%@, %@) [%ld%%]%@", v23, v24, v25, v43, v42];
              }

              else
              {
                v27 = [NSString alloc];
                v23 = [v13 itemScopedIdentifier];
                v24 = [v19 fileUTI];
                v25 = [NSByteCountFormatter stringFromByteCount:v20 countStyle:3];
                v26 = [v27 initWithFormat:@"\t%@ (%@, %@) [waiting]", v23, v24, v25, v39, v40];
              }

              v28 = v26;

              [v41 addObject:v28];
              v48 = v28;
              v11 = v44;
              v9 = v45;
            }

            v11 += v20;
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
        v30 = [CPLResource shortDescriptionForResourceType:v51->_resourceType];
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
    v32 = [CPLResource shortDescriptionForResourceType:v51->_resourceType];
    v33 = [NSByteCountFormatter stringFromByteCount:v35 countStyle:3];
    v34 = [v36 initWithFormat:@"\t\t%lu x %@ in batch (%@)", v9, v32, v33, v39];
    goto LABEL_24;
  }

LABEL_25:

  return v41;
}

@end