@interface CPLByClassExtractionStep
- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error;
- (CPLByClassExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier description:(id)description class:(Class)class maximumCount:(unint64_t)count query:(void *)query;
@end

@implementation CPLByClassExtractionStep

- (BOOL)extractToBatch:(id)batch maximumCount:(unint64_t)count maximumResourceSize:(unint64_t)size error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  storage = [(CPLBatchExtractionStep *)self storage];
  if (self->_maximumCount >= count)
  {
    maximumCount = count;
  }

  else
  {
    maximumCount = self->_maximumCount;
  }

  (self->_query)(self);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v43 = 0u;
  v38 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v38)
  {
    errorCopy = error;
    v14 = 0;
    v15 = 0;
    v16 = *v41;
    v33 = batchCopy;
    v34 = v13;
    v36 = storage;
    sizeCopy = size;
    while (2)
    {
      v17 = 0;
      v18 = v14 + 1;
      v32 = v14 + v38;
      v19 = v15;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v40 + 1) + 8 * v17);
        if ([v20 supportsResources] && objc_msgSend(v20, "hasChangeType:", 8))
        {
          v21 = [v20 effectiveResourceSizeToUploadUsingStorage:storage];
          if (v21 > sizeCopy)
          {
            batch = [batchCopy batch];
            v35 = [batch count];

            batchCopy = v33;
            v13 = v34;
            if (v35)
            {
              v15 = v19;
              storage = v36;
LABEL_27:
              [batchCopy setFull:1];
              goto LABEL_28;
            }
          }

          v23 = sizeCopy - v21;
          if (sizeCopy < v21)
          {
            v23 = 0;
          }

          sizeCopy = v23;
          storage = v36;
        }

        [batchCopy addChange:v20 fromStorage:storage];
        v39 = v19;
        v24 = [storage removeChange:v20 error:&v39];
        v15 = v39;

        if (!v24)
        {

          if (errorCopy)
          {
            v26 = v15;
            v27 = 0;
            *errorCopy = v15;
          }

          else
          {
            v27 = 0;
          }

          v28 = v34;
          goto LABEL_29;
        }

        if (v18 >= maximumCount)
        {
          goto LABEL_27;
        }

        ++v17;
        ++v18;
        v19 = v15;
      }

      while (v38 != v17);
      v25 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
      v14 = v32;
      v38 = v25;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_28:

  v28 = v13;
  v27 = 1;
LABEL_29:

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (CPLByClassExtractionStep)initWithStorage:(id)storage scopeIdentifier:(id)identifier description:(id)description class:(Class)class maximumCount:(unint64_t)count query:(void *)query
{
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = CPLByClassExtractionStep;
  v15 = [(CPLBatchExtractionStep *)&v19 initWithStorage:storage scopeIdentifier:identifier];
  if (v15)
  {
    v16 = [descriptionCopy copy];
    queryDescription = v15->_queryDescription;
    v15->_queryDescription = v16;

    v15->_extractionClass = class;
    v15->_maximumCount = count;
    v15->_query = query;
  }

  return v15;
}

@end