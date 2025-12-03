@interface FCTopicalNode
- (BOOL)isEqual:(id)equal;
- (double)calculateLeafScoresWithTopicScoreProvider:(double *)provider;
- (double)individualScoreWithTopicScoreProvider:(uint64_t)provider;
- (id)description;
- (id)initWithIdentifier:(void *)identifier displayedElements:(void *)elements allTopicCollections:(double)collections relatednessThreshold:(double)threshold relatednessKWeight:(double)weight topicScoreWeight:(double)scoreWeight highestScoringRelativeScoreMultiplier:;
- (void)calculateNonLeafScoresWithTopicProvider:(uint64_t)provider;
- (void)considerEdge:(void *)edge withNodeScorer:;
- (void)setScore:(uint64_t)score;
@end

@implementation FCTopicalNode

- (id)initWithIdentifier:(void *)identifier displayedElements:(void *)elements allTopicCollections:(double)collections relatednessThreshold:(double)threshold relatednessKWeight:(double)weight topicScoreWeight:(double)scoreWeight highestScoringRelativeScoreMultiplier:
{
  v36 = *MEMORY[0x1E69E9840];
  v16 = a2;
  identifierCopy = identifier;
  elementsCopy = elements;
  if (self)
  {
    if (![v16 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Node initialized with an empty identifiers set"];
      *buf = 136315906;
      v29 = "[FCTopicalNode initWithIdentifier:displayedElements:allTopicCollections:relatednessThreshold:relatednessKWeight:topicScoreWeight:highestScoringRelativeScoreMultiplier:]";
      v30 = 2080;
      v31 = "FCHeadlineClusterOrdering.m";
      v32 = 1024;
      v33 = 149;
      v34 = 2114;
      v35 = v26;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v27.receiver = self;
    v27.super_class = FCTopicalNode;
    v19 = objc_msgSendSuper2(&v27, sel_init);
    self = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 3, a2);
      allObjects = [v16 allObjects];
      v21 = [allObjects sortedArrayUsingComparator:&__block_literal_global_11];
      firstObject = [v21 firstObject];
      v23 = self[4];
      self[4] = firstObject;

      objc_storeStrong(self + 5, identifier);
      objc_storeStrong(self + 6, elements);
      self[1] = 0;
      *(self + 16) = 0;
      *(self + 13) = collections;
      *(self + 14) = threshold;
      *(self + 15) = weight;
      *(self + 16) = scoreWeight;
      self[9] = 0x3FF0000000000000;
      self[10] = 0;
      self[11] = 0;
      self[12] = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!self)
  {
    identifiers = 0;
    if (equalCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_4;
  }

  identifiers = self->_identifiers;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = equalCopy[3];
LABEL_4:
  v8 = identifiers;
  v9 = [(NSSet *)v8 isEqualToSet:v7];

  return v9;
}

- (void)considerEdge:(void *)edge withNodeScorer:
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  edgeCopy = edge;
  if (self)
  {
    if (v5)
    {
      v7 = *(v5 + 2);
      v8 = *(v5 + 3);
      v9 = v8;
      if (v7 == self)
      {
LABEL_8:

        if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "possibleParent"];
          *buf = 136315906;
          v46 = "[FCTopicalNode considerEdge:withNodeScorer:]";
          v47 = 2080;
          v48 = "FCHeadlineClusterOrdering.m";
          v49 = 1024;
          v50 = 196;
          v51 = 2114;
          v52 = v30;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v11 = [(FCTopicalEdge *)v5 independentCountForNode:self];
        if (v5)
        {
          v12 = *(v5 + 5);
        }

        else
        {
          v12 = 0;
        }

        v13 = [(FCTopicalEdge *)v5 independentCountForNode:v9];
        if (v11 | v12)
        {
          if (v12 | v13)
          {
            if (v12)
            {
              if (v11 | v13)
              {
                v16 = v11;
                v17 = v13;
                v18 = v12 / (v11 + v12 + self[14] * sqrt(v13));
                v20 = edgeCopy[2](edgeCopy, v9);
                if (v18 >= self[13])
                {
                  v21 = self[10];
                  v22 = v12 / (v12 + v17);
                  if (v18 > v21 || v18 == v21 && ((v23 = self[11], v22 > v23) || v22 == v23 && ((v24 = self[12], v20 > v24) || v20 == v24 && ((v36 = objc_getProperty(self, v19, 32, 1), !v9) ? (v37 = 0) : (v37 = objc_getProperty(v9, v35, 32, 1)), v38 = [v36 compare:v37], v36, v38 == -1))))
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __45__FCTopicalNode_considerEdge_withNodeScorer___block_invoke;
                    aBlock[3] = &unk_1E7C38138;
                    v25 = v9;
                    v40 = v25;
                    selfCopy = self;
                    v42 = v18;
                    v43 = v22;
                    v44 = v20;
                    v26 = _Block_copy(aBlock);
                    if (v16 < v17 || v16 == v17 && ((v28 = edgeCopy[2](edgeCopy, self), v28 > v20) || v28 == v20 && ((v32 = objc_getProperty(self, v27, 32, 1), !v9) ? (Property = 0) : (Property = objc_getProperty(v25, v31, 32, 1)), v34 = [v32 compare:Property], v32, v34 == -1)))
                    {
                      v26[2](v26);
                    }
                  }
                }

                goto LABEL_37;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Considered an edge that has only shared mentions of %@ and %@, these two nodes should have been merged", self, v9];
                *buf = 136315906;
                v46 = "[FCTopicalNode considerEdge:withNodeScorer:]";
                v47 = 2080;
                v48 = "FCHeadlineClusterOrdering.m";
                v49 = 1024;
                v50 = 226;
                v51 = 2114;
                v52 = v14;
                v15 = MEMORY[0x1E69E9C10];
                goto LABEL_25;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Considered an edge that has no shared mentions of %@ and %@", self, v9];
              *buf = 136315906;
              v46 = "[FCTopicalNode considerEdge:withNodeScorer:]";
              v47 = 2080;
              v48 = "FCHeadlineClusterOrdering.m";
              v49 = 1024;
              v50 = 221;
              v51 = 2114;
              v52 = v14;
              v15 = MEMORY[0x1E69E9C10];
              goto LABEL_25;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Considered an edge that has no independent mentions of %@ or shared mentions with %@", v9, self];
            *buf = 136315906;
            v46 = "[FCTopicalNode considerEdge:withNodeScorer:]";
            v47 = 2080;
            v48 = "FCHeadlineClusterOrdering.m";
            v49 = 1024;
            v50 = 216;
            v51 = 2114;
            v52 = v14;
            v15 = MEMORY[0x1E69E9C10];
            goto LABEL_25;
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Considered an edge that has no independent mentions of %@ or shared mentions with %@", self, v9];
          *buf = 136315906;
          v46 = "[FCTopicalNode considerEdge:withNodeScorer:]";
          v47 = 2080;
          v48 = "FCHeadlineClusterOrdering.m";
          v49 = 1024;
          v50 = 211;
          v51 = 2114;
          v52 = v14;
          v15 = MEMORY[0x1E69E9C10];
LABEL_25:
          _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_37:

        goto LABEL_38;
      }

      if (v8 == self)
      {
        v10 = *(v5 + 2);
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = 0;
LABEL_7:

    v9 = v10;
    goto LABEL_8;
  }

LABEL_38:

  v29 = *MEMORY[0x1E69E9840];
}

void __45__FCTopicalNode_considerEdge_withNodeScorer___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__FCTopicalNode_considerEdge_withNodeScorer___block_invoke_2;
  v8[3] = &unk_1E7C36F68;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = v2;
  v10 = v3;
  if (__45__FCTopicalNode_considerEdge_withNodeScorer___block_invoke_2(v8))
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      objc_storeWeak((v4 + 56), *(a1 + 32));
      v5 = *(a1 + 40);
      if (v5)
      {
        *(v5 + 80) = *(a1 + 48);
        v6 = *(a1 + 40);
        if (v6)
        {
          *(v6 + 88) = *(a1 + 56);
          v7 = *(a1 + 40);
          if (v7)
          {
            *(v7 + 96) = *(a1 + 64);
          }
        }
      }
    }
  }
}

uint64_t __45__FCTopicalNode_considerEdge_withNodeScorer___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  do
  {
    v4 = *(a1 + 40);
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    WeakRetained = objc_loadWeakRetained(v3 + 7);

    v3 = WeakRetained;
  }

  while (WeakRetained);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v5 = self->_identifiers;
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    v7 = WeakRetained == 0;
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_parent);
      v2 = v8;
      if (v8)
      {
        v9 = *(v8 + 3);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      v10 = @"Root";
    }

    children = self->_children;
  }

  else
  {
    v5 = 0;
    WeakRetained = 0;
    children = 0;
    v7 = 1;
    v10 = @"Root";
  }

  v12 = children;
  allObjects = [(NSSet *)v12 allObjects];
  v14 = [allObjects fc_arrayByTransformingWithBlock:&__block_literal_global_49_0];
  v15 = [v3 stringWithFormat:@"Node : %@ with Parent : %@ and Children : %@", v5, v10, v14];

  if (!v7)
  {
  }

  return v15;
}

id __28__FCTopicalNode_description__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 24);
  }

  else
  {
    return 0;
  }
}

- (void)setScore:(uint64_t)score
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(score + 16) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Asked to score a node that has already been scored"];
    v6 = 136315906;
    v7 = "[FCTopicalNode setScore:]";
    v8 = 2080;
    v9 = "FCHeadlineClusterOrdering.m";
    v10 = 1024;
    v11 = 336;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  *(score + 8) = a2;
  *(score + 16) = 1;
  v4 = *MEMORY[0x1E69E9840];
}

- (double)individualScoreWithTopicScoreProvider:(uint64_t)provider
{
  if (!provider)
  {
    return 0.0;
  }

  v3 = *(provider + 120);
  v4 = (*(a2 + 16))(a2, *(provider + 24));
  v5 = *(provider + 40);
  if ([v5 count])
  {
    v6 = *(provider + 40);
    allObjects = [v6 allObjects];
    [allObjects fc_reduceArrayWithDouble:&__block_literal_global_58_0 block:0.0];
    v9 = v8 / [*(provider + 40) count];
  }

  else
  {
    v9 = 0.0;
  }

  return (1.0 - v3) * v9 + v3 * v4;
}

double __55__FCTopicalNode_individualScoreWithTopicScoreProvider___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 24);
  }

  else
  {
    v3 = 0.0;
  }

  return v3 + a1;
}

- (double)calculateLeafScoresWithTopicScoreProvider:(double *)provider
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (provider)
  {
    if (![*(provider + 8) count])
    {
      v17 = [(FCTopicalNode *)provider individualScoreWithTopicScoreProvider:v3];
      [(FCTopicalNode *)provider setScore:v17];
      provider = [[FCTopicalLeafNode alloc] initWithNode:provider score:provider[1] * provider[9]];
      goto LABEL_21;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(provider + 8);
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v5)
    {
      v7 = 0;
      v9 = 0.0;
      goto LABEL_20;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v21;
    v9 = 0.0;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(FCTopicalNode *)*(*(&v20 + 1) + 8 * v10) calculateLeafScoresWithTopicScoreProvider:v3];
        v12 = v11;
        if (v11)
        {
          v13 = *(v11 + 8);
          v14 = v12[2];
          if (v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v13 = 0;
          v14 = 0.0;
          if (v7)
          {
LABEL_10:
            if (v14 <= v9)
            {
              goto LABEL_12;
            }
          }
        }

        v15 = v13;

        v9 = v14;
        v7 = v15;
LABEL_12:

        ++v10;
      }

      while (v6 != v10);
      v16 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v16;
      if (!v16)
      {
LABEL_20:

        provider = [[FCTopicalLeafNode alloc] initWithNode:v7 score:v9];
        break;
      }
    }
  }

LABEL_21:

  v18 = *MEMORY[0x1E69E9840];

  return provider;
}

- (void)calculateNonLeafScoresWithTopicProvider:(uint64_t)provider
{
  v3 = a2;
  if (provider && [*(provider + 64) count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v4 = *(provider + 64);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __57__FCTopicalNode_calculateNonLeafScoresWithTopicProvider___block_invoke;
    v12 = &unk_1E7C381C8;
    v5 = v3;
    v13 = v5;
    v14 = &v15;
    [v4 enumerateObjectsUsingBlock:&v9];

    v6 = v16[3];
    v7 = v6 + [(FCTopicalNode *)provider individualScoreWithTopicScoreProvider:v5];
    v16[3] = v7;
    v8 = *(provider + 64);
    -[FCTopicalNode setScore:](provider, v7 / ([v8 count] + 1.0));

    _Block_object_dispose(&v15, 8);
  }
}

void __57__FCTopicalNode_calculateNonLeafScoresWithTopicProvider___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  [FCTopicalNode calculateNonLeafScoresWithTopicProvider:];
  if (v3 && v3[16] == 1)
  {
    v5 = *(*(a1 + 40) + 8);
    v7 = *(v5 + 24);
    v6 = (v5 + 24);
    v8 = v7;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Scoring node that has an unscored child"];
      v14 = 136315906;
      v15 = "[FCTopicalNode calculateNonLeafScoresWithTopicProvider:]_block_invoke";
      v16 = 2080;
      v17 = "FCHeadlineClusterOrdering.m";
      v18 = 1024;
      v19 = 390;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v14, 0x26u);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 24);
    v6 = (v9 + 24);
    v8 = v10;
    if (!v3)
    {
      v11 = 0.0;
      goto LABEL_8;
    }
  }

  v11 = *(v3 + 1) * *(v3 + 9);
LABEL_8:
  *v6 = v8 + v11;

  v12 = *MEMORY[0x1E69E9840];
}

@end