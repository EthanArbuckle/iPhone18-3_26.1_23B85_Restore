@interface MFThreadFuzzyMatcher
- (id)matchMessageReferenceContext:(id)context withCandidateMessageReferenceContexts:(id)contexts;
@end

@implementation MFThreadFuzzyMatcher

- (id)matchMessageReferenceContext:(id)context withCandidateMessageReferenceContexts:(id)contexts
{
  contextCopy = context;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__MFThreadFuzzyMatcher_matchMessageReferenceContext_withCandidateMessageReferenceContexts___block_invoke;
  v17[3] = &unk_1E7AA7978;
  v6 = contextCopy;
  v18 = v6;
  v7 = [contexts ef_filter:v17];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __91__MFThreadFuzzyMatcher_matchMessageReferenceContext_withCandidateMessageReferenceContexts___block_invoke_2;
  v15 = &unk_1E7AA79A0;
  v8 = v6;
  v16 = v8;
  v9 = [v7 sortedArrayUsingComparator:&v12];
  firstObject = [v9 firstObject];

  return firstObject;
}

uint64_t __91__MFThreadFuzzyMatcher_matchMessageReferenceContext_withCandidateMessageReferenceContexts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 subject];
  v5 = [*(a1 + 32) subject];
  v6 = [v4 isEqualToSubjectIgnoringPrefix:v5];

  v7 = [v3 participants];
  v8 = [*(a1 + 32) participants];
  LODWORD(v5) = [v7 intersectsSet:v8];

  return v6 & v5;
}

uint64_t __91__MFThreadFuzzyMatcher_matchMessageReferenceContext_withCandidateMessageReferenceContexts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DFA8];
  v8 = [*(a1 + 32) participants];
  v9 = [v7 setWithSet:v8];

  v10 = [v5 participants];
  [v9 intersectSet:v10];

  v11 = MEMORY[0x1E695DFA8];
  v12 = [*(a1 + 32) participants];
  v13 = [v11 setWithSet:v12];

  v14 = [v6 participants];
  [v13 intersectSet:v14];

  v15 = [v9 count];
  if (v15 <= [v13 count])
  {
    v17 = [v9 count];
    if (v17 >= [v13 count])
    {
      [*(a1 + 32) dateSentInterval];
      v19 = v18;
      [v5 dateSentInterval];
      v21 = v20;
      [*(a1 + 32) dateSentInterval];
      v23 = v22;
      [v6 dateSentInterval];
      v24 = vabdd_f64(v19, v21);
      v26 = vabdd_f64(v23, v25);
      v27 = vabdd_f64(v24, v26);
      v28 = -1;
      if (v24 >= v26)
      {
        v28 = 1;
      }

      if (v27 >= 0.01)
      {
        v16 = v28;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

@end