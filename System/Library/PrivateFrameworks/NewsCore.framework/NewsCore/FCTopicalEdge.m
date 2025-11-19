@interface FCTopicalEdge
- (BOOL)isEqual:(id)a3;
- (id)description;
- (uint64_t)independentCountForNode:(uint64_t)a1;
- (unint64_t)hash;
- (void)calculateRelatedness;
@end

@implementation FCTopicalEdge

- (uint64_t)independentCountForNode:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5 != v3 && *(a1 + 24) != v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Asked for independent count for node %@ but node not part of edge %@", v4, a1];
      *buf = 136315906;
      v11 = "[FCTopicalEdge independentCountForNode:]";
      v12 = 2080;
      v13 = "FCHeadlineClusterOrdering.m";
      v14 = 1024;
      v15 = 510;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      v5 = *(a1 + 16);
    }

    v6 = 48;
    if (v5 == v4)
    {
      v6 = 32;
    }

    a1 = *(a1 + v6);
  }

  v7 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t __38__FCTopicalEdge_initWithNode_andNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = objc_getProperty(a2, v4, 32, 1);
    if (v5)
    {
      Property = objc_getProperty(v5, v6, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = [v7 compare:Property];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)calculateRelatedness
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a1 relatednessCalculated] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Asking to calculate relatedness when it already calculated : %@", a1];
      *buf = 136315906;
      v12 = "[FCTopicalEdge calculateRelatedness]";
      v13 = 2080;
      v14 = "FCHeadlineClusterOrdering.m";
      v15 = 1024;
      v16 = 456;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v2 = a1[2];
    if (v2)
    {
      v2 = v2[6];
    }

    v3 = v2;
    v4 = a1[3];
    if (v4)
    {
      v4 = v4[6];
    }

    v5 = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__FCTopicalEdge_calculateRelatedness__block_invoke_3;
    v10[3] = &unk_1E7C38238;
    v10[4] = a1;
    a1[4] = __37__FCTopicalEdge_calculateRelatedness__block_invoke(v3, v10);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__FCTopicalEdge_calculateRelatedness__block_invoke_4;
    v9[3] = &unk_1E7C38238;
    v9[4] = a1;
    a1[5] = __37__FCTopicalEdge_calculateRelatedness__block_invoke(v3, v9);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__FCTopicalEdge_calculateRelatedness__block_invoke_5;
    v8[3] = &unk_1E7C38238;
    v8[4] = a1;
    a1[6] = __37__FCTopicalEdge_calculateRelatedness__block_invoke(v5, v8);
    [a1 setRelatednessCalculated:1];
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __37__FCTopicalEdge_calculateRelatedness__block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__FCTopicalEdge_calculateRelatedness__block_invoke_2;
  v9[3] = &unk_1E7C38210;
  v12 = &v13;
  v5 = v4;
  v11 = v5;
  v6 = v3;
  v10 = v6;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __37__FCTopicalEdge_calculateRelatedness__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v3 = [*(a1 + 32) countForObject:v4];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) += v3;
}

uint64_t __37__FCTopicalEdge_calculateRelatedness__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 24);
  v7 = v5;
  if (!v5)
  {
LABEL_6:
    Property = 0;
    goto LABEL_4;
  }

  Property = objc_getProperty(v5, v6, 32, 1);
LABEL_4:
  v9 = [v3 containsObject:Property];

  return v9 ^ 1u;
}

uint64_t __37__FCTopicalEdge_calculateRelatedness__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 24);
  v7 = v5;
  if (!v5)
  {
LABEL_6:
    Property = 0;
    goto LABEL_4;
  }

  Property = objc_getProperty(v5, v6, 32, 1);
LABEL_4:
  v9 = [v3 containsObject:Property];

  return v9;
}

uint64_t __37__FCTopicalEdge_calculateRelatedness__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 16);
  v7 = v5;
  if (!v5)
  {
LABEL_6:
    Property = 0;
    goto LABEL_4;
  }

  Property = objc_getProperty(v5, v6, 32, 1);
LABEL_4:
  v9 = [v3 containsObject:Property];

  return v9 ^ 1u;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self)
  {
    a = self->_a;
  }

  else
  {
    a = 0;
  }

  v6 = a;
  v7 = v6;
  if (v4)
  {
    v8 = v4[2];
  }

  else
  {
    v8 = 0;
  }

  if (v6 == v8)
  {
    if (self)
    {
      b = self->_b;
      if (v4)
      {
LABEL_9:
        v11 = v4[3];
LABEL_10:
        v9 = b == v11;

        goto LABEL_11;
      }
    }

    else
    {
      b = 0;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  v2 = self;
  if (self)
  {
    v3 = self->_a;
    v4 = v3;
    if (v3)
    {
      identifiers = v3->_identifiers;
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 0;
  }

  identifiers = 0;
LABEL_4:
  v6 = identifiers;
  v7 = [(NSSet *)v6 hash];
  if (v2)
  {
    v8 = v2->_b;
    v2 = v8;
    if (v8)
    {
      v8 = v8->_identifiers;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FCTopicalNode *)v8 hash];

  return v9 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = self->_a;
    v5 = v4;
    if (v4)
    {
      identifiers = v4->_identifiers;
    }

    else
    {
      identifiers = 0;
    }

    v7 = identifiers;
    v8 = self->_b;
    v9 = v8;
    if (v8)
    {
      v10 = v8->_identifiers;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    containsAButNotB = self->_containsAButNotB;
  }

  else
  {
    v11 = 0;
    v7 = 0;
    v5 = 0;
    v9 = 0;
    containsAButNotB = 0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:containsAButNotB];
  if (self)
  {
    containsAAndB = self->_containsAAndB;
  }

  else
  {
    containsAAndB = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:containsAAndB];
  if (self)
  {
    containsBButNotA = self->_containsBButNotA;
  }

  else
  {
    containsBButNotA = 0;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:containsBButNotA];
  v18 = [v3 stringWithFormat:@"Edge from %@ to %@ with { %@ -- %@ -- %@ }", v7, v11, v13, v15, v17];

  return v18;
}

@end