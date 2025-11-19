@interface CPLByClassExtractionStep
- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6;
- (CPLByClassExtractionStep)initWithStorage:(id)a3 scopeIdentifier:(id)a4 description:(id)a5 class:(Class)a6 maximumCount:(unint64_t)a7 query:(void *)a8;
@end

@implementation CPLByClassExtractionStep

- (BOOL)extractToBatch:(id)a3 maximumCount:(unint64_t)a4 maximumResourceSize:(unint64_t)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(CPLBatchExtractionStep *)self storage];
  if (self->_maximumCount >= a4)
  {
    maximumCount = a4;
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
    v31 = a6;
    v14 = 0;
    v15 = 0;
    v16 = *v41;
    v33 = v10;
    v34 = v13;
    v36 = v11;
    v37 = a5;
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
          v21 = [v20 effectiveResourceSizeToUploadUsingStorage:v11];
          if (v21 > v37)
          {
            v22 = [v10 batch];
            v35 = [v22 count];

            v10 = v33;
            v13 = v34;
            if (v35)
            {
              v15 = v19;
              v11 = v36;
LABEL_27:
              [v10 setFull:1];
              goto LABEL_28;
            }
          }

          v23 = v37 - v21;
          if (v37 < v21)
          {
            v23 = 0;
          }

          v37 = v23;
          v11 = v36;
        }

        [v10 addChange:v20 fromStorage:v11];
        v39 = v19;
        v24 = [v11 removeChange:v20 error:&v39];
        v15 = v39;

        if (!v24)
        {

          if (v31)
          {
            v26 = v15;
            v27 = 0;
            *v31 = v15;
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

- (CPLByClassExtractionStep)initWithStorage:(id)a3 scopeIdentifier:(id)a4 description:(id)a5 class:(Class)a6 maximumCount:(unint64_t)a7 query:(void *)a8
{
  v14 = a5;
  v19.receiver = self;
  v19.super_class = CPLByClassExtractionStep;
  v15 = [(CPLBatchExtractionStep *)&v19 initWithStorage:a3 scopeIdentifier:a4];
  if (v15)
  {
    v16 = [v14 copy];
    queryDescription = v15->_queryDescription;
    v15->_queryDescription = v16;

    v15->_extractionClass = a6;
    v15->_maximumCount = a7;
    v15->_query = a8;
  }

  return v15;
}

@end