@interface CPLFaceAnalysisReference
- (NSArray)faces;
- (void)addFace:(id)a3;
- (void)setFaces:(id)a3;
@end

@implementation CPLFaceAnalysisReference

- (NSArray)faces
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(CPLFaceAnalysis *)self faceInstances];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(CPLFaceAnalysis *)self faceInstances];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(CPLFaceAnalysis *)self petFaceInstances];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(CPLFaceAnalysis *)self petFaceInstances];
    [v3 addObjectsFromArray:v9];
  }

  v10 = [(CPLFaceAnalysis *)self torsoFaceInstances];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(CPLFaceAnalysis *)self torsoFaceInstances];
    [v3 addObjectsFromArray:v12];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)addFace:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isPetDetectionType])
    {
      v6 = [(CPLFaceAnalysis *)self petFaceInstances];
    }

    else
    {
      if ([v5 isTorsoOnly])
      {
        [(CPLFaceAnalysis *)self torsoFaceInstances];
      }

      else
      {
        [(CPLFaceAnalysis *)self faceInstances];
      }
      v6 = ;
    }

    v7 = v6;
    if (v6)
    {
      [v6 insertObject:v5 atIndex:{objc_msgSend(v6, "indexOfObject:inSortedRange:options:usingComparator:", v5, 0, objc_msgSend(v6, "count"), 1024, &__block_literal_global_50_7367)}];
    }

    else if ([v5 isPetDetectionType])
    {
      [(CPLFaceAnalysis *)&v10 addPetFaceInstances:v5, v8.receiver, v8.super_class, v9.receiver, v9.super_class, self, CPLFaceAnalysisReference];
    }

    else if ([v5 isTorsoOnly])
    {
      [(CPLFaceAnalysis *)&v9 addTorsoFaceInstances:v5, v8.receiver, v8.super_class, self, CPLFaceAnalysisReference, v10.receiver, v10.super_class];
    }

    else
    {
      [(CPLFaceAnalysis *)&v8 addFaceInstances:v5, self, CPLFaceAnalysisReference, v9.receiver, v9.super_class, v10.receiver, v10.super_class];
    }
  }
}

- (void)setFaces:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 sortUsingSelector:sel_compare_];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_7375];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_33_7376];
  v8 = [v4 filteredArrayUsingPredicate:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_35];
  v10 = [v4 filteredArrayUsingPredicate:v9];

  v11 = [v6 count];
  if (v11)
  {
    v12 = [v6 mutableCopy];
  }

  else
  {
    v12 = 0;
  }

  v19.receiver = self;
  v19.super_class = CPLFaceAnalysisReference;
  [(CPLFaceAnalysis *)&v19 setFaceInstances:v12];
  if (v11)
  {
  }

  v13 = [v8 count];
  if (v13)
  {
    v14 = [v8 mutableCopy];
  }

  else
  {
    v14 = 0;
  }

  v18.receiver = self;
  v18.super_class = CPLFaceAnalysisReference;
  [(CPLFaceAnalysis *)&v18 setPetFaceInstances:v14];
  if (v13)
  {
  }

  v15 = [v10 count];
  if (v15)
  {
    v16 = [v10 mutableCopy];
  }

  else
  {
    v16 = 0;
  }

  v17.receiver = self;
  v17.super_class = CPLFaceAnalysisReference;
  [(CPLFaceAnalysis *)&v17 setTorsoFaceInstances:v16];
  if (v15)
  {
  }
}

uint64_t __37__CPLFaceAnalysisReference_setFaces___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPetDetectionType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isTorsoOnly];
  }

  return v3;
}

uint64_t __37__CPLFaceAnalysisReference_setFaces___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPetDetectionType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isTorsoOnly] ^ 1;
  }

  return v3;
}

@end