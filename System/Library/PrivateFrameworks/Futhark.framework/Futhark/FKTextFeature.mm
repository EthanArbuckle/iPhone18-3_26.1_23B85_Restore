@interface FKTextFeature
+ (id)featureFromConcompIndex:(int)index session:(FKSession *)session scaling:(id *)scaling type:(int64_t)type createDiacriticFeatures:(BOOL)features featureID:(int64_t *)d;
- (CGRect)boundingBox;
- (NSArray)candidates;
- (void)dealloc;
@end

@implementation FKTextFeature

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FKTextFeature;
  [(FKTextFeature *)&v3 dealloc];
}

+ (id)featureFromConcompIndex:(int)index session:(FKSession *)session scaling:(id *)scaling type:(int64_t)type createDiacriticFeatures:(BOOL)features featureID:(int64_t *)d
{
  typeCopy = type;
  v15 = 0;
  var2 = scaling->var2;
  v17 = 0.5;
  if (!var2)
  {
    v17 = 0.0;
  }

  v18 = session->var22 + 100 * index;
  v19 = (1 << var2);
  LOWORD(v8) = *(v18 + 40);
  x = scaling->var1.x;
  y = scaling->var1.y;
  v22 = x + v19 * (v8 - v17);
  LOWORD(v9) = *(v18 + 41);
  *&v23 = v17 + v9;
  v24 = x + v19 * *&v23;
  LOWORD(v23) = *(v18 + 42);
  v25 = y + v19 * (v23 - v17);
  LOWORD(v10) = *(v18 + 43);
  v26 = y + v19 * (v17 + v10);
  width = scaling->var0.width;
  height = scaling->var0.height;
  v29 = v22 / width;
  v30 = v25 / height;
  v31 = (v24 - v22 + 1.0) / width;
  v32 = (v26 - v25 + 1.0) / height;
  v50 = v22 / width;
  v51 = v25 / height;
  v52 = v31;
  v53 = v32;
  v33 = (*d)++;
  if (type == 1 && features)
  {
    v35 = *(v18 + 16);
    v34 = v18 + 64;
    if (v35 == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v37 = 0;
      v38 = 1;
      do
      {
        v39 = *&v34[4 * v37];
        if (v39 == -1)
        {
          break;
        }

        v40 = v38;
        v41 = [FKTextFeature featureFromConcompIndex:v39 session:session scaling:scaling type:2 createDiacriticFeatures:0 featureID:d];
        [v15 addObject:v41];
        [v41 boundingBox];
        v56.origin.x = v42;
        v56.origin.y = v43;
        v56.size.width = v44;
        v56.size.height = v45;
        v54.origin.x = v29;
        v54.origin.y = v30;
        v54.size.width = v31;
        v54.size.height = v32;
        v55 = CGRectUnion(v54, v56);
        v29 = v55.origin.x;
        v30 = v55.origin.y;
        v31 = v55.size.width;
        v32 = v55.size.height;
        v38 = 0;
        v37 = 1;
      }

      while ((v40 & 1) != 0);
      v50 = v29;
      v51 = v30;
      v52 = v31;
      v53 = v32;
      typeCopy = 1;
    }
  }

  v46 = [FKTextFeature alloc];
  LODWORD(v49) = scaling->var2;
  v47 = [(FKTextFeature *)v46 initWithType:typeCopy boundingBox:&v50 corners:0 featureID:v33 session:session backingIndex:index scale:v49];
  [(FKTextFeature *)v47 setSubFeatures:v15];
  return v47;
}

- (NSArray)candidates
{
  v16 = *MEMORY[0x1E69E9840];
  candidates = self->_candidates;
  if (!candidates)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    FKRecognizeGetCandidates(self->_session->var22 + 100 * self->_backingIndex.seqInd, v14, v12);
    candidates = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 56; i += 4)
    {
      if (!*(v14 + i))
      {
        break;
      }

      v5 = [FKTextCandidate alloc];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12 + i];
      *&v7 = *(v14 + i) / 100.0;
      v8 = [(FKTextCandidate *)v5 initWithText:v6 confidence:v7];
      v9 = v8;
      [(NSArray *)candidates addObject:v8];
    }

    self->_candidates = candidates;
  }

  v10 = *MEMORY[0x1E69E9840];
  return candidates;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end