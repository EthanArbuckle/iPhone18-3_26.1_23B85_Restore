@interface DDResultTracker
- (BOOL)addResultIfAppropriate:(__DDResult *)a3 referenceDate:(id)a4 referenceTimeZone:(id)a5;
- (DDResultTracker)initWithReferenceResult:(__DDResult *)a3;
- (id)results;
- (void)dealloc;
@end

@implementation DDResultTracker

- (DDResultTracker)initWithReferenceResult:(__DDResult *)a3
{
  v13.receiver = self;
  v13.super_class = DDResultTracker;
  v4 = [(DDResultTracker *)&v13 init];
  if (v4)
  {
    *(v4 + 12) = CFRetain(a3);
    *(v4 + 6) = DDResultGetRange();
    v5 = *(v4 + 12);
    Category = DDResultGetCategory();
    *(v4 + 8) = xmmword_21ABCD8B0;
    *(v4 + 24) = xmmword_21ABCD8C0;
    if (Category == 4)
    {
      *(v4 + 6) = 2;
      v4[44] = 1;
      v7 = 8;
    }

    else
    {
      --*&v4[4 * Category + 8];
      v7 = vaddvq_s32(vaddq_s32(*(v4 + 8), *(v4 + 24)));
    }

    *(v4 + 10) = v7;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = *(v4 + 10);
    *(v4 + 10) = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = *(v4 + 11);
    *(v4 + 11) = v10;

    *(v4 + 9) = 0;
  }

  return v4;
}

- (void)dealloc
{
  referenceResult = self->referenceResult;
  if (referenceResult)
  {
    CFRelease(referenceResult);
  }

  v4.receiver = self;
  v4.super_class = DDResultTracker;
  [(DDResultTracker *)&v4 dealloc];
}

- (BOOL)addResultIfAppropriate:(__DDResult *)a3 referenceDate:(id)a4 referenceTimeZone:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (!self->totalCountRemaining)
  {
    goto LABEL_14;
  }

  Category = DDResultGetCategory();
  referenceResultLocation = self->referenceResultLocation;
  v12 = referenceResultLocation - DDResultGetRange();
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  if (Category == 1)
  {
    if (v13 <= self->maximumDistanceForEmails)
    {
      if (v13 <= self->maximumDistance)
      {
        v14 = self->countRemainingByCategory[1];
LABEL_39:
        if (!v14)
        {
          goto LABEL_47;
        }

LABEL_44:
        --self->countRemainingByCategory[Category];
        --self->totalCountRemaining;
        if (v12 < 1)
        {
          [(NSMutableArray *)self->resultsAfter addObject:a3];
        }

        else
        {
          [(NSMutableArray *)self->resultsBefore insertObject:a3 atIndex:0];
        }

        goto LABEL_47;
      }

      goto LABEL_14;
    }

LABEL_47:
    v16 = 1;
    goto LABEL_48;
  }

  maximumDistance = self->maximumDistance;
  if (v13 <= maximumDistance)
  {
    if (Category == 3)
    {
      if (!self->existingAddressResult)
      {
        self->existingAddressResult = a3;
        goto LABEL_44;
      }

      if (DDAddressResultCanBeMergedWith())
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    }

    goto LABEL_19;
  }

  v16 = 0;
  if (Category == 4 && v13 <= 2 * maximumDistance)
  {
    v17 = *MEMORY[0x277D040A8];
    if (!DDResultHasType() || DDResultIsPastDate())
    {
LABEL_14:
      v16 = 0;
      goto LABEL_48;
    }

LABEL_19:
    v14 = self->countRemainingByCategory[Category];
    if (v14 && Category == 4)
    {
      v38 = v12;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      referenceResult = self->referenceResult;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&referenceResult count:1];
      resultsBefore = self->resultsBefore;
      resultsAfter = self->resultsAfter;
      v53[0] = v18;
      v53[1] = resultsBefore;
      v53[2] = resultsAfter;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];

      v39 = [v21 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v39)
      {
        v37 = v8;
        v22 = *v48;
        v23 = *MEMORY[0x277D04198];
        v41 = v21;
        v42 = v9;
        v36 = *v48;
        while (2)
        {
          v24 = 0;
          do
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(v21);
            }

            v40 = v24;
            v25 = *(*(&v47 + 1) + 8 * v24);
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v26 = v25;
            v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v44;
LABEL_29:
              v30 = 0;
              while (1)
              {
                if (*v44 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v43 + 1) + 8 * v30);
                Type = DDResultGetType();
                if (MEMORY[0x21CEDEBB0](Type, v23))
                {
                  v33 = DDResultGetType();
                  if (MEMORY[0x21CEDEBB0](Type, v33))
                  {
                    break;
                  }
                }

                if (v28 == ++v30)
                {
                  v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
                  if (!v28)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_29;
                }
              }

              v16 = 1;
              v8 = v37;
              v9 = v42;
              goto LABEL_48;
            }

LABEL_36:

            v24 = v40 + 1;
            v21 = v41;
            v9 = v42;
            v22 = v36;
          }

          while (v40 + 1 != v39);
          v39 = [v41 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }

        v8 = v37;
      }

      else
      {
      }

      v12 = v38;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_48:

  v34 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)results
{
  v3 = [(NSMutableArray *)self->resultsBefore arrayByAddingObject:self->referenceResult];
  v4 = [v3 arrayByAddingObjectsFromArray:self->resultsAfter];

  if (self->sortByProximity)
  {
    v5 = [v4 sortedArrayUsingFunction:MEMORY[0x277D041E0] context:self->referenceResult];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

@end