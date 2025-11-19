uint64_t _outDoStmt_0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = *(v2 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v4 + 32) = result;
    if (*(v4 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v4 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v4 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v4 + 24) > v6);
    }
  }

  return result;
}

const char *_outRenameStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  v6 = *(a2 + 8);
  if (v6 < 0x32)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(a1 + 28) = v7;
  if (*(a2 + 16))
  {
    v8 = palloc(0x50uLL);
    pg_query__range_var__init(v8);
    _outRangeVar_0(v8, *(a2 + 16));
    *(a1 + 32) = v8;
  }

  if (*(a2 + 24))
  {
    v9 = palloc(0x28uLL);
    node__init = pg_query__node__init(v9);
    *(a1 + 40) = v9;
    _outNode_0(v9, *(a2 + 24), node__init);
  }

  v11 = *(a2 + 32);
  if (v11)
  {
    *(a1 + 48) = pstrdup(v11);
  }

  result = *(a2 + 40);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 56) = result;
  }

  v13 = *(a2 + 48);
  if (v13 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = -1;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 64) = v15;
  *(a1 + 68) = *(a2 + 52);
  return result;
}

const char *_outRuleStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    _outRangeVar_0(v4, *(a2 + 8));
    *(a1 + 24) = v4;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  if (*(a2 + 24))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 24), node__init);
  }

  v8 = *(a2 + 32);
  if (v8 < 7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(a1 + 48) = v9;
  *(a1 + 52) = *(a2 + 36);
  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 56) = v11;
    result = palloc(8 * v11);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(a1 + 64) + 8 * v12) = v14;
        result = _outNode_0(*(*(a1 + 64) + 8 * v12), *(*(*(a2 + 40) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(a1 + 56) > v12);
    }
  }

  *(a1 + 72) = *(a2 + 48);
  return result;
}

const char *_outNotifyStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  return result;
}

const char *_outTransactionStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0xA)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 32) = v7;
    *(a1 + 40) = palloc(8 * v7);
    if (*(a1 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(a1 + 40) + 8 * v8) = v10;
        _outNode_0(*(*(a1 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    *(a1 + 48) = pstrdup(v12);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 56) = result;
  }

  *(a1 + 64) = *(a2 + 32);
  return result;
}

uint64_t _outViewStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 32) = v6;
    result = palloc(8 * v6);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 32) > v7);
    }
  }

  if (*(a2 + 24))
  {
    v11 = palloc(0x28uLL);
    v12 = pg_query__node__init(v11);
    *(v3 + 48) = v11;
    result = _outNode_0(v11, *(a2 + 24), v12);
  }

  *(v3 + 56) = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(v3 + 64) = v14;
    result = palloc(8 * v14);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL);
        v18 = pg_query__node__init(v17);
        *(*(v3 + 72) + 8 * v15) = v17;
        result = _outNode_0(*(*(v3 + 72) + 8 * v15), *(*(*(a2 + 40) + 16) + 8 * v15), v18);
        v15 = v16++;
      }

      while (*(v3 + 64) > v15);
    }
  }

  v19 = *(a2 + 48);
  if (v19 < 3)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = -1;
  }

  *(v3 + 80) = v20;
  return result;
}

uint64_t _outCreateDomainStmt_0(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    v3[4] = result;
    if (v3[3])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[4] + 8 * v6) = v8;
        result = _outNode_0(*(v3[4] + 8 * v6), *(*(a2[1] + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[3] > v6);
    }
  }

  if (a2[2])
  {
    v10 = palloc(0x68uLL);
    pg_query__type_name__init(v10);
    result = _outTypeName_0(v10, a2[2]);
    v3[5] = v10;
  }

  if (a2[3])
  {
    v11 = palloc(0x38uLL);
    pg_query__collate_clause__init(v11);
    result = _outCollateClause_0(v11, a2[3]);
    v3[6] = v11;
  }

  v12 = a2[4];
  if (v12)
  {
    v13 = *(v12 + 4);
    v3[7] = v13;
    result = palloc(8 * v13);
    v3[8] = result;
    if (v3[7])
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(v3[8] + 8 * v14) = v16;
        result = _outNode_0(*(v3[8] + 8 * v14), *(*(a2[4] + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (v3[7] > v14);
    }
  }

  return result;
}

const char *_outDropdbStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 40) = v6;
    result = palloc(8 * v6);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 48) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 48) + 8 * v7), *(*(*(a2 + 24) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 40) > v7);
    }
  }

  return result;
}

uint64_t _outVacuumStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 40) = v11;
    result = palloc(8 * v11);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 48) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 40) > v12);
    }
  }

  *(v3 + 56) = *(a2 + 24);
  return result;
}

uint64_t _outExplainStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    v3[3] = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    v3[4] = v7;
    result = palloc(8 * v7);
    v3[5] = result;
    if (v3[4])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        v11 = pg_query__node__init(v10);
        *(v3[5] + 8 * v8) = v10;
        result = _outNode_0(*(v3[5] + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8), v11);
        v8 = v9++;
      }

      while (v3[4] > v8);
    }
  }

  return result;
}

const char *_outCreateTableAsStmt_0(const char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 3) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL);
    pg_query__into_clause__init(v6);
    result = _outIntoClause_0(v6, *(a2 + 16));
    *(v3 + 4) = v6;
  }

  v7 = *(a2 + 24);
  if (v7 < 0x32)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  *(v3 + 10) = v8;
  *(v3 + 11) = *(a2 + 28);
  *(v3 + 12) = *(a2 + 29);
  return result;
}

uint64_t _outCreateSeqStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 32) = v6;
    result = palloc(8 * v6);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 32) > v7);
    }
  }

  *(v3 + 48) = *(a2 + 24);
  *(v3 + 52) = *(a2 + 28);
  *(v3 + 56) = *(a2 + 29);
  return result;
}

uint64_t _outAlterSeqStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 32) = v6;
    result = palloc(8 * v6);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 32) > v7);
    }
  }

  *(v3 + 48) = *(a2 + 24);
  *(v3 + 52) = *(a2 + 25);
  return result;
}

const char *_outVariableSetStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 6)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  *(a1 + 56) = *(a2 + 24);
  return result;
}

const char *_outCreateTrigStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x50uLL);
    pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    result = palloc(8 * v7);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  *(a1 + 76) = *(a2 + 42);
  *(a1 + 80) = *(a2 + 44);
  v18 = *(a2 + 48);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 88) = v19;
    result = palloc(8 * v19);
    *(a1 + 96) = result;
    if (*(a1 + 88))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL);
        v23 = pg_query__node__init(v22);
        *(*(a1 + 96) + 8 * v20) = v22;
        result = _outNode_0(*(*(a1 + 96) + 8 * v20), *(*(*(a2 + 48) + 16) + 8 * v20), v23);
        v20 = v21++;
      }

      while (*(a1 + 88) > v20);
    }
  }

  if (*(a2 + 56))
  {
    v24 = palloc(0x28uLL);
    v25 = pg_query__node__init(v24);
    *(a1 + 104) = v24;
    result = _outNode_0(v24, *(a2 + 56), v25);
  }

  *(a1 + 112) = *(a2 + 64);
  v26 = *(a2 + 72);
  if (v26)
  {
    v27 = *(v26 + 4);
    *(a1 + 120) = v27;
    result = palloc(8 * v27);
    *(a1 + 128) = result;
    if (*(a1 + 120))
    {
      v28 = 0;
      v29 = 1;
      do
      {
        v30 = palloc(0x28uLL);
        v31 = pg_query__node__init(v30);
        *(*(a1 + 128) + 8 * v28) = v30;
        result = _outNode_0(*(*(a1 + 128) + 8 * v28), *(*(*(a2 + 72) + 16) + 8 * v28), v31);
        v28 = v29++;
      }

      while (*(a1 + 120) > v28);
    }
  }

  *(a1 + 136) = *(a2 + 80);
  *(a1 + 140) = *(a2 + 81);
  if (*(a2 + 88))
  {
    v32 = palloc(0x50uLL);
    pg_query__range_var__init(v32);
    result = _outRangeVar_0(v32, *(a2 + 88));
    *(a1 + 144) = v32;
  }

  return result;
}

const char *_outCreatePLangStmt_0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 40) = v6;
    result = palloc(8 * v6);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 48) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 48) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 40) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 56) = v12;
    result = palloc(8 * v12);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(a1 + 64) + 8 * v13) = v15;
        result = _outNode_0(*(*(a1 + 64) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(a1 + 56) > v13);
    }
  }

  v17 = *(a2 + 32);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(a1 + 72) = v18;
    result = palloc(8 * v18);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL);
        v22 = pg_query__node__init(v21);
        *(*(a1 + 80) + 8 * v19) = v21;
        result = _outNode_0(*(*(a1 + 80) + 8 * v19), *(*(*(a2 + 32) + 16) + 8 * v19), v22);
        v19 = v20++;
      }

      while (*(a1 + 72) > v19);
    }
  }

  *(a1 + 88) = *(a2 + 40);
  return result;
}

const char *_outCreateRoleStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  return result;
}

const char *_outAlterRoleStmt_0(const char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x30uLL);
    pg_query__role_spec__init(v4);
    v5 = *(a2 + 8);
    v6 = *(v5 + 4);
    if (v6 < 4)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = -1;
    }

    *(v4 + 24) = v7;
    result = *(v5 + 8);
    if (result)
    {
      result = pstrdup(result);
      *(v4 + 32) = result;
    }

    *(v4 + 40) = *(v5 + 16);
    *(v3 + 3) = v4;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(v3 + 4) = v9;
    result = palloc(8 * v9);
    *(v3 + 5) = result;
    if (*(v3 + 4))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        node__init = pg_query__node__init(v12);
        *(*(v3 + 5) + 8 * v10) = v12;
        result = _outNode_0(*(*(v3 + 5) + 8 * v10), *(*(*(a2 + 16) + 16) + 8 * v10), node__init);
        v10 = v11++;
      }

      while (*(v3 + 4) > v10);
    }
  }

  *(v3 + 12) = *(a2 + 24);
  return result;
}

uint64_t _outDropRoleStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  *(v3 + 40) = *(a2 + 16);
  return result;
}

uint64_t _outLockStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  return result;
}

const char *_outReindexStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 5)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x50uLL);
    pg_query__range_var__init(v6);
    _outRangeVar_0(v6, *(a2 + 8));
    *(a1 + 32) = v6;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  *(a1 + 52) = *(a2 + 28);
  return result;
}

const char *_outCreateSchemaStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x30uLL);
    pg_query__role_spec__init(v5);
    v6 = *(a2 + 16);
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    result = *(v6 + 8);
    if (result)
    {
      result = pstrdup(result);
      *(v5 + 32) = result;
    }

    *(v5 + 40) = *(v6 + 16);
    *(a1 + 32) = v5;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(a1 + 40) = v10;
    result = palloc(8 * v10);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL);
        node__init = pg_query__node__init(v13);
        *(*(a1 + 48) + 8 * v11) = v13;
        result = _outNode_0(*(*(a1 + 48) + 8 * v11), *(*(*(a2 + 24) + 16) + 8 * v11), node__init);
        v11 = v12++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

const char *_outAlterDatabaseSetStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x40uLL);
    pg_query__variable_set_stmt__init(v5);
    result = _outVariableSetStmt_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  return result;
}

const char *_outAlterRoleSetStmt_0(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = palloc(0x30uLL);
    pg_query__role_spec__init(v4);
    v5 = a2[1];
    v6 = *(v5 + 4);
    if (v6 < 4)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = -1;
    }

    *(v4 + 24) = v7;
    v8 = *(v5 + 8);
    if (v8)
    {
      *(v4 + 32) = pstrdup(v8);
    }

    *(v4 + 40) = *(v5 + 16);
    a1[3] = v4;
  }

  result = a2[2];
  if (result)
  {
    result = pstrdup(result);
    a1[4] = result;
  }

  if (a2[3])
  {
    v10 = palloc(0x40uLL);
    pg_query__variable_set_stmt__init(v10);
    result = _outVariableSetStmt_0(v10, a2[3]);
    a1[5] = v10;
  }

  return result;
}

const char *_outCreateConversionStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    *(a1 + 40) = pstrdup(v10);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outCreateCastStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x68uLL);
    pg_query__type_name__init(v4);
    result = _outTypeName_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x68uLL);
    pg_query__type_name__init(v5);
    result = _outTypeName_0(v5, *(a2 + 16));
    *(v3 + 32) = v5;
  }

  if (*(a2 + 24))
  {
    v6 = palloc(0x40uLL);
    pg_query__object_with_args__init(v6);
    result = _outVacuumStmt_0(v6, *(a2 + 24));
    *(v3 + 40) = v6;
  }

  v7 = *(a2 + 32);
  if (v7 < 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  *(v3 + 48) = v8;
  *(v3 + 52) = *(a2 + 36);
  return result;
}

const char *_outCreateOpClassStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    *(a1 + 48) = palloc(8 * v11);
    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(a1 + 48) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 56) = result;
  }

  if (*(a2 + 32))
  {
    v17 = palloc(0x68uLL);
    pg_query__type_name__init(v17);
    result = _outTypeName_0(v17, *(a2 + 32));
    *(a1 + 64) = v17;
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 72) = v19;
    result = palloc(8 * v19);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL);
        v23 = pg_query__node__init(v22);
        *(*(a1 + 80) + 8 * v20) = v22;
        result = _outNode_0(*(*(a1 + 80) + 8 * v20), *(*(*(a2 + 40) + 16) + 8 * v20), v23);
        v20 = v21++;
      }

      while (*(a1 + 72) > v20);
    }
  }

  *(a1 + 88) = *(a2 + 48);
  return result;
}

const char *_outCreateOpFamilyStmt_0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    a1[3] = v5;
    a1[4] = palloc(8 * v5);
    if (a1[3])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(a1[4] + 8 * v6) = v8;
        _outNode_0(*(a1[4] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (a1[3] > v6);
    }
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    a1[5] = result;
  }

  return result;
}

const char *_outAlterOpFamilyStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 56) = v12;
    result = palloc(8 * v12);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(a1 + 64) + 8 * v13) = v15;
        result = _outNode_0(*(*(a1 + 64) + 8 * v13), *(*(*(a2 + 32) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(a1 + 56) > v13);
    }
  }

  return result;
}

const char *_outPrepareStmt_0(void *a1, void *a2)
{
  result = a2[1];
  if (result)
  {
    result = pstrdup(result);
    a1[3] = result;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = *(v5 + 4);
    a1[4] = v6;
    result = palloc(8 * v6);
    a1[5] = result;
    if (a1[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(a1[5] + 8 * v7) = v9;
        result = _outNode_0(*(a1[5] + 8 * v7), *(*(a2[2] + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (a1[4] > v7);
    }
  }

  if (a2[3])
  {
    v11 = palloc(0x28uLL);
    v12 = pg_query__node__init(v11);
    a1[6] = v11;
    v13 = a2[3];

    return _outNode_0(v11, v13, v12);
  }

  return result;
}

const char *_outDeclareCursorStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  if (*(a2 + 24))
  {
    v5 = palloc(0x28uLL);
    node__init = pg_query__node__init(v5);
    *(a1 + 40) = v5;
    v7 = *(a2 + 24);

    return _outNode_0(v5, v7, node__init);
  }

  return result;
}

const char *_outCreateTableSpaceStmt_0(void *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    a1[3] = pstrdup(v4);
  }

  if (a2[2])
  {
    v5 = palloc(0x30uLL);
    pg_query__role_spec__init(v5);
    v6 = a2[2];
    v7 = *(v6 + 4);
    if (v7 < 4)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = -1;
    }

    *(v5 + 24) = v8;
    v9 = *(v6 + 8);
    if (v9)
    {
      *(v5 + 32) = pstrdup(v9);
    }

    *(v5 + 40) = *(v6 + 16);
    a1[4] = v5;
  }

  result = a2[3];
  if (result)
  {
    result = pstrdup(result);
    a1[5] = result;
  }

  v11 = a2[4];
  if (v11)
  {
    v12 = *(v11 + 4);
    a1[6] = v12;
    result = palloc(8 * v12);
    a1[7] = result;
    if (a1[6])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        node__init = pg_query__node__init(v15);
        *(a1[7] + 8 * v13) = v15;
        result = _outNode_0(*(a1[7] + 8 * v13), *(*(a2[4] + 16) + 8 * v13), node__init);
        v13 = v14++;
      }

      while (a1[6] > v13);
    }
  }

  return result;
}

char *_outAlterObjectDependsStmt_0(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 6) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x50uLL);
    pg_query__range_var__init(v6);
    result = _outRangeVar_0(v6, *(a2 + 8));
    *(v3 + 4) = v6;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    *(v3 + 5) = v7;
    result = _outNode_0(v7, *(a2 + 16), node__init);
  }

  if (*(a2 + 24))
  {
    v9 = palloc(0x28uLL);
    v10 = pg_query__node__init(v9);
    *(v3 + 6) = v9;
    result = _outNode_0(v9, *(a2 + 24), v10);
  }

  *(v3 + 14) = *(a2 + 32);
  return result;
}

const char *_outAlterObjectSchemaStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x50uLL);
    pg_query__range_var__init(v6);
    _outRangeVar_0(v6, *(a2 + 8));
    *(a1 + 32) = v6;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    *(a1 + 40) = v7;
    _outNode_0(v7, *(a2 + 16), node__init);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

void *_outAlterOwnerStmt_0(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 6) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x50uLL);
    pg_query__range_var__init(v6);
    result = _outRangeVar_0(v6, *(a2 + 8));
    v3[4] = v6;
  }

  if (*(a2 + 16))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    v3[5] = v7;
    result = _outNode_0(v7, *(a2 + 16), node__init);
  }

  if (*(a2 + 24))
  {
    v9 = palloc(0x30uLL);
    pg_query__role_spec__init(v9);
    v10 = *(a2 + 24);
    v11 = *(v10 + 4);
    if (v11 < 4)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = -1;
    }

    *(v9 + 24) = v12;
    result = *(v10 + 8);
    if (result)
    {
      result = pstrdup(result);
      *(v9 + 32) = result;
    }

    *(v9 + 40) = *(v10 + 16);
    v3[6] = v9;
  }

  return result;
}

uint64_t _outAlterOperatorStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x40uLL);
    pg_query__object_with_args__init(v4);
    result = _outVacuumStmt_0(v4, *(a2 + 8));
    v3[3] = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    v3[4] = v6;
    result = palloc(8 * v6);
    v3[5] = result;
    if (v3[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(v3[5] + 8 * v7) = v9;
        result = _outNode_0(*(v3[5] + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (v3[4] > v7);
    }
  }

  return result;
}

uint64_t _outAlterTypeStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    v3[4] = result;
    if (v3[3])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[4] + 8 * v6) = v8;
        result = _outNode_0(*(v3[4] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[3] > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    v3[5] = v11;
    result = palloc(8 * v11);
    v3[6] = result;
    if (v3[5])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(v3[6] + 8 * v12) = v14;
        result = _outNode_0(*(v3[6] + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (v3[5] > v12);
    }
  }

  return result;
}

uint64_t _outDropOwnedStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = -1;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  *(v3 + 40) = v12;
  return result;
}

uint64_t _outReassignOwnedStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    v3[4] = result;
    if (v3[3])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[4] + 8 * v6) = v8;
        result = _outNode_0(*(v3[4] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[3] > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x30uLL);
    pg_query__role_spec__init(v10);
    v11 = *(a2 + 16);
    v12 = *(v11 + 4);
    if (v12 < 4)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = -1;
    }

    *(v10 + 24) = v13;
    result = *(v11 + 8);
    if (result)
    {
      result = pstrdup(result);
      *(v10 + 32) = result;
    }

    *(v10 + 40) = *(v11 + 16);
    v3[5] = v10;
  }

  return result;
}

uint64_t _outCompositeTypeStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    v3[3] = v4;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    v3[4] = v6;
    result = palloc(8 * v6);
    v3[5] = result;
    if (v3[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(v3[5] + 8 * v7) = v9;
        result = _outNode_0(*(v3[5] + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (v3[4] > v7);
    }
  }

  return result;
}

const char *_outAlterEnumStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    *(a1 + 40) = pstrdup(v10);
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    *(a1 + 48) = pstrdup(v11);
  }

  result = *(a2 + 32);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 56) = result;
  }

  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 41);
  return result;
}

uint64_t _outAlterTSConfigurationStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 5)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v3 + 48) = v13;
    result = palloc(8 * v13);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(v3 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(v3 + 56) + 8 * v14), *(*(*(a2 + 16) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(v3 + 48) > v14);
    }
  }

  v18 = *(a2 + 24);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(v3 + 64) = v19;
    result = palloc(8 * v19);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL);
        v23 = pg_query__node__init(v22);
        *(*(v3 + 72) + 8 * v20) = v22;
        result = _outNode_0(*(*(v3 + 72) + 8 * v20), *(*(*(a2 + 24) + 16) + 8 * v20), v23);
        v20 = v21++;
      }

      while (*(v3 + 64) > v20);
    }
  }

  *(v3 + 80) = *(a2 + 32);
  *(v3 + 84) = *(a2 + 33);
  *(v3 + 88) = *(a2 + 34);
  return result;
}

const char *_outCreateFdwStmt_0(void *a1, void *a2)
{
  result = a2[1];
  if (result)
  {
    result = pstrdup(result);
    a1[3] = result;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = *(v5 + 4);
    a1[4] = v6;
    result = palloc(8 * v6);
    a1[5] = result;
    if (a1[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(a1[5] + 8 * v7) = v9;
        result = _outNode_0(*(a1[5] + 8 * v7), *(*(a2[2] + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (a1[4] > v7);
    }
  }

  v11 = a2[3];
  if (v11)
  {
    v12 = *(v11 + 4);
    a1[6] = v12;
    result = palloc(8 * v12);
    a1[7] = result;
    if (a1[6])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(a1[7] + 8 * v13) = v15;
        result = _outNode_0(*(a1[7] + 8 * v13), *(*(a2[3] + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (a1[6] > v13);
    }
  }

  return result;
}

const char *_outCreateForeignServerStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    *(a1 + 32) = pstrdup(v5);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    *(a1 + 40) = pstrdup(v6);
  }

  result = *(a2 + 32);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 40);
  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 64) = v9;
    result = palloc(8 * v9);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        node__init = pg_query__node__init(v12);
        *(*(a1 + 72) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 72) + 8 * v10), *(*(*(a2 + 48) + 16) + 8 * v10), node__init);
        v10 = v11++;
      }

      while (*(a1 + 64) > v10);
    }
  }

  return result;
}

const char *_outAlterForeignServerStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    result = palloc(8 * v7);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

const char *_outCreateUserMappingStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x30uLL);
    pg_query__role_spec__init(v4);
    v5 = *(a2 + 8);
    v6 = *(v5 + 4);
    if (v6 < 4)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = -1;
    }

    *(v4 + 24) = v7;
    v8 = *(v5 + 8);
    if (v8)
    {
      *(v4 + 32) = pstrdup(v8);
    }

    *(v4 + 40) = *(v5 + 16);
    *(a1 + 24) = v4;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 48) = v11;
    result = palloc(8 * v11);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        node__init = pg_query__node__init(v14);
        *(*(a1 + 56) + 8 * v12) = v14;
        result = _outNode_0(*(*(a1 + 56) + 8 * v12), *(*(*(a2 + 32) + 16) + 8 * v12), node__init);
        v12 = v13++;
      }

      while (*(a1 + 48) > v12);
    }
  }

  return result;
}

const char *_outAlterUserMappingStmt_0(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = palloc(0x30uLL);
    pg_query__role_spec__init(v4);
    v5 = a2[1];
    v6 = *(v5 + 4);
    if (v6 < 4)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = -1;
    }

    *(v4 + 24) = v7;
    v8 = *(v5 + 8);
    if (v8)
    {
      *(v4 + 32) = pstrdup(v8);
    }

    *(v4 + 40) = *(v5 + 16);
    a1[3] = v4;
  }

  result = a2[2];
  if (result)
  {
    result = pstrdup(result);
    a1[4] = result;
  }

  v10 = a2[3];
  if (v10)
  {
    v11 = *(v10 + 4);
    a1[5] = v11;
    result = palloc(8 * v11);
    a1[6] = result;
    if (a1[5])
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        node__init = pg_query__node__init(v14);
        *(a1[6] + 8 * v12) = v14;
        result = _outNode_0(*(a1[6] + 8 * v12), *(*(a2[3] + 16) + 8 * v12), node__init);
        v12 = v13++;
      }

      while (a1[5] > v12);
    }
  }

  return result;
}

const char *_outDropUserMappingStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x30uLL);
    pg_query__role_spec__init(v4);
    v5 = *(a2 + 8);
    v6 = *(v5 + 4);
    if (v6 < 4)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = -1;
    }

    *(v4 + 24) = v7;
    v8 = *(v5 + 8);
    if (v8)
    {
      *(v4 + 32) = pstrdup(v8);
    }

    *(v4 + 40) = *(v5 + 16);
    *(a1 + 24) = v4;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 24);
  return result;
}

const char *_outAlterTableSpaceOptionsStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    result = palloc(8 * v6);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  *(a1 + 48) = *(a2 + 24);
  return result;
}

const char *_outAlterTableMoveAllStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  v5 = *(a2 + 16);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 32) = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    *(a1 + 48) = palloc(8 * v8);
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  result = *(a2 + 32);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 56) = result;
  }

  *(a1 + 64) = *(a2 + 40);
  return result;
}

const char *_outSecLabelStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0x32)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 32) = v6;
    _outNode_0(v6, *(a2 + 8), node__init);
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    *(a1 + 40) = pstrdup(v8);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  return result;
}

const char *_outCreateForeignTableStmt_0(void *a1, uint64_t a2)
{
  v4 = palloc(0x98uLL);
  pg_query__create_stmt__init(v4);
  _outCreateStmt_0(v4, a2);
  a1[3] = v4;
  result = *(a2 + 104);
  if (result)
  {
    result = pstrdup(result);
    a1[4] = result;
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[5] = v7;
    result = palloc(8 * v7);
    a1[6] = result;
    if (a1[5])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(a1[6] + 8 * v8) = v10;
        result = _outNode_0(*(a1[6] + 8 * v8), *(*(*(a2 + 112) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (a1[5] > v8);
    }
  }

  return result;
}

const char *_outImportForeignSchemaStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    *(a1 + 32) = pstrdup(v5);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  v7 = *(a2 + 32);
  if (v7 < 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = -1;
  }

  *(a1 + 48) = v8;
  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = *(v9 + 4);
    *(a1 + 56) = v10;
    result = palloc(8 * v10);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = palloc(0x28uLL);
        node__init = pg_query__node__init(v13);
        *(*(a1 + 64) + 8 * v11) = v13;
        result = _outNode_0(*(*(a1 + 64) + 8 * v11), *(*(*(a2 + 40) + 16) + 8 * v11), node__init);
        v11 = v12++;
      }

      while (*(a1 + 56) > v11);
    }
  }

  v15 = *(a2 + 48);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(a1 + 72) = v16;
    result = palloc(8 * v16);
    *(a1 + 80) = result;
    if (*(a1 + 72))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL);
        v20 = pg_query__node__init(v19);
        *(*(a1 + 80) + 8 * v17) = v19;
        result = _outNode_0(*(*(a1 + 80) + 8 * v17), *(*(*(a2 + 48) + 16) + 8 * v17), v20);
        v17 = v18++;
      }

      while (*(a1 + 72) > v17);
    }
  }

  return result;
}

const char *_outAlterExtensionContentsStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  v5 = *(a2 + 20);
  if (v5 < 0x32)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 36) = v6;
  if (*(a2 + 24))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    *(a1 + 40) = v7;
    v9 = *(a2 + 24);

    return _outNode_0(v7, v9, node__init);
  }

  return result;
}

const char *_outCreateEventTrigStmt_0(void *a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    a1[3] = pstrdup(v4);
  }

  result = a2[2];
  if (result)
  {
    result = pstrdup(result);
    a1[4] = result;
  }

  v6 = a2[3];
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[5] = v7;
    result = palloc(8 * v7);
    a1[6] = result;
    if (a1[5])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(a1[6] + 8 * v8) = v10;
        result = _outNode_0(*(a1[6] + 8 * v8), *(*(a2[3] + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (a1[5] > v8);
    }
  }

  v12 = a2[4];
  if (v12)
  {
    v13 = *(v12 + 4);
    a1[7] = v13;
    result = palloc(8 * v13);
    a1[8] = result;
    if (a1[7])
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(a1[8] + 8 * v14) = v16;
        result = _outNode_0(*(a1[8] + 8 * v14), *(*(a2[4] + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (a1[7] > v14);
    }
  }

  return result;
}

char *_outAlterEventTrigStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    result = palloc(2uLL);
    *(a1 + 32) = result;
    *result = *(a2 + 16);
    *(*(a1 + 32) + 1) = 0;
  }

  return result;
}

char *_outRefreshMatViewStmt_0(char *result, uint64_t a2)
{
  *(result + 6) = *(a2 + 4);
  *(result + 7) = *(a2 + 5);
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 4) = v4;
  }

  return result;
}

const char *_outReplicaIdentityStmt_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4))
  {
    v4 = palloc(2uLL);
    *(a1 + 24) = v4;
    *v4 = *(a2 + 4);
    *(*(a1 + 24) + 1) = 0;
  }

  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  return result;
}

const char *_outAlterSystemStmt_0(const char *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = palloc(0x40uLL);
    pg_query__variable_set_stmt__init(v4);
    result = _outVariableSetStmt_0(v4, *(a2 + 8));
    *(v3 + 3) = v4;
  }

  return result;
}

const char *_outCreatePolicyStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x50uLL);
    pg_query__range_var__init(v5);
    _outRangeVar_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  *(a1 + 48) = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 56) = v8;
    result = palloc(8 * v8);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(a1 + 64) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 64) + 8 * v9), *(*(*(a2 + 40) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(a1 + 56) > v9);
    }
  }

  if (*(a2 + 48))
  {
    v13 = palloc(0x28uLL);
    v14 = pg_query__node__init(v13);
    *(a1 + 72) = v13;
    result = _outNode_0(v13, *(a2 + 48), v14);
  }

  if (*(a2 + 56))
  {
    v15 = palloc(0x28uLL);
    v16 = pg_query__node__init(v15);
    *(a1 + 80) = v15;
    v17 = *(a2 + 56);

    return _outNode_0(v15, v17, v16);
  }

  return result;
}

const char *_outAlterPolicyStmt_0(void *a1, void *a2)
{
  result = a2[1];
  if (result)
  {
    result = pstrdup(result);
    a1[3] = result;
  }

  if (a2[2])
  {
    v5 = palloc(0x50uLL);
    pg_query__range_var__init(v5);
    result = _outRangeVar_0(v5, a2[2]);
    a1[4] = v5;
  }

  v6 = a2[3];
  if (v6)
  {
    v7 = *(v6 + 4);
    a1[5] = v7;
    result = palloc(8 * v7);
    a1[6] = result;
    if (a1[5])
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(a1[6] + 8 * v8) = v10;
        result = _outNode_0(*(a1[6] + 8 * v8), *(*(a2[3] + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (a1[5] > v8);
    }
  }

  if (a2[4])
  {
    v12 = palloc(0x28uLL);
    v13 = pg_query__node__init(v12);
    a1[7] = v12;
    result = _outNode_0(v12, a2[4], v13);
  }

  if (a2[5])
  {
    v14 = palloc(0x28uLL);
    v15 = pg_query__node__init(v14);
    a1[8] = v14;
    v16 = a2[5];

    return _outNode_0(v14, v16, v15);
  }

  return result;
}

const char *_outCreateTransformStmt_0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v4 = palloc(0x68uLL);
    pg_query__type_name__init(v4);
    _outTypeName_0(v4, *(a2 + 8));
    *(a1 + 32) = v4;
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  if (*(a2 + 24))
  {
    v6 = palloc(0x40uLL);
    pg_query__object_with_args__init(v6);
    result = _outVacuumStmt_0(v6, *(a2 + 24));
    *(a1 + 48) = v6;
  }

  if (*(a2 + 32))
  {
    v7 = palloc(0x40uLL);
    pg_query__object_with_args__init(v7);
    result = _outVacuumStmt_0(v7, *(a2 + 32));
    *(a1 + 56) = v7;
  }

  return result;
}

char *_outCreateAmStmt_0(void *a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    a1[3] = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    a1[4] = v6;
    result = palloc(8 * v6);
    a1[5] = result;
    if (a1[4])
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(a1[5] + 8 * v7) = v9;
        result = _outNode_0(*(a1[5] + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (a1[4] > v7);
    }
  }

  if (*(a2 + 24))
  {
    result = palloc(2uLL);
    a1[6] = result;
    *result = *(a2 + 24);
    *(a1[6] + 1) = 0;
  }

  return result;
}

const char *_outCreatePublicationStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    result = palloc(8 * v6);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 48) = v12;
    result = palloc(8 * v12);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(a1 + 56) + 8 * v13) = v15;
        result = _outNode_0(*(*(a1 + 56) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  *(a1 + 64) = *(a2 + 32);
  return result;
}

const char *_outAlterPublicationStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    result = palloc(8 * v6);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 48) = v12;
    result = palloc(8 * v12);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(a1 + 56) + 8 * v13) = v15;
        result = _outNode_0(*(*(a1 + 56) + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  *(a1 + 64) = *(a2 + 32);
  v17 = *(a2 + 36);
  if (v17 < 4)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = -1;
  }

  *(a1 + 68) = v18;
  return result;
}

const char *_outAlterSubscriptionStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 5)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    *(a1 + 32) = pstrdup(v6);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 48) = v9;
    result = palloc(8 * v9);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        node__init = pg_query__node__init(v12);
        *(*(a1 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 56) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10), node__init);
        v10 = v11++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 64) = v15;
    result = palloc(8 * v15);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(a1 + 72) + 8 * v16) = v18;
        result = _outNode_0(*(*(a1 + 72) + 8 * v16), *(*(*(a2 + 32) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(a1 + 64) > v16);
    }
  }

  return result;
}

const char *_outDropSubscriptionStmt_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  v5 = *(a2 + 20);
  if (v5 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 36) = v7;
  return result;
}

const char *_outCreateStatsStmt_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(a1 + 40) = v11;
    *(a1 + 48) = palloc(8 * v11);
    if (*(a1 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(a1 + 48) + 8 * v12) = v14;
        _outNode_0(*(*(a1 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(a1 + 40) > v12);
    }
  }

  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(a1 + 56) = v17;
    *(a1 + 64) = palloc(8 * v17);
    if (*(a1 + 56))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(a1 + 64) + 8 * v18) = v20;
        _outNode_0(*(*(a1 + 64) + 8 * v18), *(*(*(a2 + 24) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(a1 + 56) > v18);
    }
  }

  v22 = *(a2 + 32);
  if (v22)
  {
    v23 = *(v22 + 4);
    *(a1 + 72) = v23;
    *(a1 + 80) = palloc(8 * v23);
    if (*(a1 + 72))
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = palloc(0x28uLL);
        v27 = pg_query__node__init(v26);
        *(*(a1 + 80) + 8 * v24) = v26;
        _outNode_0(*(*(a1 + 80) + 8 * v24), *(*(*(a2 + 32) + 16) + 8 * v24), v27);
        v24 = v25++;
      }

      while (*(a1 + 72) > v24);
    }
  }

  result = *(a2 + 40);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 88) = result;
  }

  *(a1 + 96) = *(a2 + 48);
  return result;
}

uint64_t _outCallStmt_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x70uLL);
    pg_query__func_call__init(v4);
    result = _outFuncCall_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x58uLL);
    pg_query__func_expr__init(v5);
    result = _outFuncExpr_0(v5, *(a2 + 16));
    *(v3 + 32) = v5;
  }

  return result;
}

uint64_t _outAExpr_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 0x10)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  if (*(a2 + 16))
  {
    v12 = palloc(0x28uLL);
    v13 = pg_query__node__init(v12);
    *(v3 + 48) = v12;
    result = _outNode_0(v12, *(a2 + 16), v13);
  }

  if (*(a2 + 24))
  {
    v14 = palloc(0x28uLL);
    v15 = pg_query__node__init(v14);
    *(v3 + 56) = v14;
    result = _outNode_0(v14, *(a2 + 24), v15);
  }

  *(v3 + 64) = *(a2 + 32);
  return result;
}

uint64_t _outColumnRef_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  *(v3 + 40) = *(a2 + 16);
  return result;
}

uint64_t _outAConst_0(uint64_t a1, uint64_t a2)
{
  v4 = palloc(0x28uLL);
  node__init = pg_query__node__init(v4);
  *(a1 + 24) = v4;
  result = _outNode_0(v4, a2 + 8, node__init);
  *(a1 + 32) = *(a2 + 24);
  return result;
}

uint64_t _outFuncCall_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 40) = v11;
    result = palloc(8 * v11);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 48) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 48) + 8 * v12), *(*(*(a2 + 16) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 40) > v12);
    }
  }

  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(v3 + 56) = v17;
    result = palloc(8 * v17);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(v3 + 64) + 8 * v18) = v20;
        result = _outNode_0(*(*(v3 + 64) + 8 * v18), *(*(*(a2 + 24) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(v3 + 56) > v18);
    }
  }

  if (*(a2 + 32))
  {
    v22 = palloc(0x28uLL);
    v23 = pg_query__node__init(v22);
    *(v3 + 72) = v22;
    result = _outNode_0(v22, *(a2 + 32), v23);
  }

  *(v3 + 80) = *(a2 + 40);
  *(v3 + 84) = *(a2 + 41);
  *(v3 + 88) = *(a2 + 42);
  *(v3 + 92) = *(a2 + 43);
  if (*(a2 + 48))
  {
    v24 = palloc(0x68uLL);
    pg_query__window_def__init(v24);
    result = _outWindowDef_0(v24, *(a2 + 48));
    *(v3 + 96) = v24;
  }

  *(v3 + 104) = *(a2 + 56);
  return result;
}

uint64_t _outAIndices_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    v7 = pg_query__node__init(v6);
    *(v3 + 40) = v6;
    v8 = *(a2 + 16);

    return _outNode_0(v6, v8, v7);
  }

  return result;
}

const char *_outResTarget_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    result = palloc(8 * v6);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  if (*(a2 + 24))
  {
    v11 = palloc(0x28uLL);
    v12 = pg_query__node__init(v11);
    *(a1 + 48) = v11;
    result = _outNode_0(v11, *(a2 + 24), v12);
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outTypeCast_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 24) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x68uLL);
    pg_query__type_name__init(v6);
    result = _outTypeName_0(v6, *(a2 + 16));
    *(v3 + 32) = v6;
  }

  *(v3 + 40) = *(a2 + 24);
  return result;
}

uint64_t _outCollateClause_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 24) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v3 + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        v11 = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8), v11);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  *(v3 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outSortBy_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 24) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6 < 4)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = -1;
  }

  *(v3 + 32) = v7;
  v8 = *(a2 + 20);
  if (v8 < 3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(v3 + 36) = v9;
  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 40) = v11;
    result = palloc(8 * v11);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 48) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 48) + 8 * v12), *(*(*(a2 + 24) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 40) > v12);
    }
  }

  *(v3 + 56) = *(a2 + 32);
  return result;
}

const char *_outWindowDef_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    result = palloc(8 * v7);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  if (*(a2 + 48))
  {
    v18 = palloc(0x28uLL);
    v19 = pg_query__node__init(v18);
    *(a1 + 80) = v18;
    result = _outNode_0(v18, *(a2 + 48), v19);
  }

  if (*(a2 + 56))
  {
    v20 = palloc(0x28uLL);
    v21 = pg_query__node__init(v20);
    *(a1 + 88) = v20;
    result = _outNode_0(v20, *(a2 + 56), v21);
  }

  *(a1 + 96) = *(a2 + 64);
  return result;
}

const char *_outRangeSubselect_0(const char *result, uint64_t a2)
{
  v3 = result;
  *(result + 6) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 4) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x30uLL);
    pg_query__alias__init(v6);
    result = _outAlias_0(v6, *(a2 + 16));
    *(v3 + 5) = v6;
  }

  return result;
}

uint64_t _outRangeFunction_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  *(result + 28) = *(a2 + 5);
  *(result + 32) = *(a2 + 6);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 40) = v5;
    result = palloc(8 * v5);
    v3[6] = result;
    if (v3[5])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[6] + 8 * v6) = v8;
        result = _outNode_0(*(v3[6] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[5] > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x30uLL);
    pg_query__alias__init(v10);
    result = _outAlias_0(v10, *(a2 + 16));
    v3[7] = v10;
  }

  v11 = *(a2 + 24);
  if (v11)
  {
    v12 = *(v11 + 4);
    v3[8] = v12;
    result = palloc(8 * v12);
    v3[9] = result;
    if (v3[8])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(v3[9] + 8 * v13) = v15;
        result = _outNode_0(*(v3[9] + 8 * v13), *(*(*(a2 + 24) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (v3[8] > v13);
    }
  }

  return result;
}

uint64_t _outRangeTableSample_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 24) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(v3 + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        v11 = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 16) + 16) + 8 * v8), v11);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(v3 + 48) = v13;
    result = palloc(8 * v13);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(v3 + 56) + 8 * v14) = v16;
        result = _outNode_0(*(*(v3 + 56) + 8 * v14), *(*(*(a2 + 24) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(v3 + 48) > v14);
    }
  }

  if (*(a2 + 32))
  {
    v18 = palloc(0x28uLL);
    v19 = pg_query__node__init(v18);
    *(v3 + 64) = v18;
    result = _outNode_0(v18, *(a2 + 32), v19);
  }

  *(v3 + 72) = *(a2 + 40);
  return result;
}

uint64_t _outRangeTableFunc_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(v3 + 32) = v4;
    result = _outNode_0(v4, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v6 = palloc(0x28uLL);
    v7 = pg_query__node__init(v6);
    *(v3 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 16), v7);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(v3 + 48) = v9;
    result = palloc(8 * v9);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        v13 = pg_query__node__init(v12);
        *(*(v3 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(v3 + 56) + 8 * v10), *(*(*(a2 + 24) + 16) + 8 * v10), v13);
        v10 = v11++;
      }

      while (*(v3 + 48) > v10);
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(v3 + 64) = v15;
    result = palloc(8 * v15);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(v3 + 72) + 8 * v16) = v18;
        result = _outNode_0(*(*(v3 + 72) + 8 * v16), *(*(*(a2 + 32) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(v3 + 64) > v16);
    }
  }

  if (*(a2 + 40))
  {
    v20 = palloc(0x30uLL);
    pg_query__alias__init(v20);
    result = _outAlias_0(v20, *(a2 + 40));
    *(v3 + 80) = v20;
  }

  *(v3 + 88) = *(a2 + 48);
  return result;
}

const char *_outRangeTableFuncCol_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x68uLL);
    pg_query__type_name__init(v5);
    result = _outTypeName_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  *(a1 + 40) = *(a2 + 24);
  *(a1 + 44) = *(a2 + 25);
  if (*(a2 + 32))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 48) = v6;
    result = _outNode_0(v6, *(a2 + 32), node__init);
  }

  if (*(a2 + 40))
  {
    v8 = palloc(0x28uLL);
    v9 = pg_query__node__init(v8);
    *(a1 + 56) = v8;
    result = _outNode_0(v8, *(a2 + 40), v9);
  }

  *(a1 + 64) = *(a2 + 48);
  return result;
}

uint64_t _outTypeName_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  *(v3 + 48) = *(a2 + 21);
  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 56) = v11;
    result = palloc(8 * v11);
    *(v3 + 64) = result;
    if (*(v3 + 56))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 64) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 64) + 8 * v12), *(*(*(a2 + 24) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 56) > v12);
    }
  }

  *(v3 + 72) = *(a2 + 32);
  v16 = *(a2 + 40);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(v3 + 80) = v17;
    result = palloc(8 * v17);
    *(v3 + 88) = result;
    if (*(v3 + 80))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(v3 + 88) + 8 * v18) = v20;
        result = _outNode_0(*(*(v3 + 88) + 8 * v18), *(*(*(a2 + 40) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(v3 + 80) > v18);
    }
  }

  *(v3 + 96) = *(a2 + 48);
  return result;
}

char *_outColumnDef_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x68uLL);
    pg_query__type_name__init(v5);
    result = _outTypeName_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  *(a1 + 40) = *(a2 + 24);
  *(a1 + 44) = *(a2 + 28);
  *(a1 + 48) = *(a2 + 29);
  *(a1 + 52) = *(a2 + 30);
  if (*(a2 + 31))
  {
    result = palloc(2uLL);
    *(a1 + 56) = result;
    *result = *(a2 + 31);
    *(*(a1 + 56) + 1) = 0;
  }

  if (*(a2 + 32))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 64) = v6;
    result = _outNode_0(v6, *(a2 + 32), node__init);
  }

  if (*(a2 + 40))
  {
    v8 = palloc(0x28uLL);
    v9 = pg_query__node__init(v8);
    *(a1 + 72) = v8;
    result = _outNode_0(v8, *(a2 + 40), v9);
  }

  if (*(a2 + 48))
  {
    result = palloc(2uLL);
    *(a1 + 80) = result;
    *result = *(a2 + 48);
    *(*(a1 + 80) + 1) = 0;
  }

  if (*(a2 + 56))
  {
    v10 = palloc(0x50uLL);
    pg_query__range_var__init(v10);
    result = _outRangeVar_0(v10, *(a2 + 56));
    *(a1 + 88) = v10;
  }

  if (*(a2 + 64))
  {
    result = palloc(2uLL);
    *(a1 + 96) = result;
    *result = *(a2 + 64);
    *(*(a1 + 96) + 1) = 0;
  }

  if (*(a2 + 72))
  {
    v11 = palloc(0x38uLL);
    pg_query__collate_clause__init(v11);
    result = _outCollateClause_0(v11, *(a2 + 72));
    *(a1 + 104) = v11;
  }

  *(a1 + 112) = *(a2 + 80);
  v12 = *(a2 + 88);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 120) = v13;
    result = palloc(8 * v13);
    *(a1 + 128) = result;
    if (*(a1 + 120))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 128) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 128) + 8 * v14), *(*(*(a2 + 88) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 120) > v14);
    }
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 136) = v19;
    result = palloc(8 * v19);
    *(a1 + 144) = result;
    if (*(a1 + 136))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL);
        v23 = pg_query__node__init(v22);
        *(*(a1 + 144) + 8 * v20) = v22;
        result = _outNode_0(*(*(a1 + 144) + 8 * v20), *(*(*(a2 + 96) + 16) + 8 * v20), v23);
        v20 = v21++;
      }

      while (*(a1 + 136) > v20);
    }
  }

  *(a1 + 152) = *(a2 + 104);
  return result;
}

const char *_outIndexElem_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x28uLL);
    node__init = pg_query__node__init(v5);
    *(a1 + 32) = v5;
    _outNode_0(v5, *(a2 + 16), node__init);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = *(v8 + 4);
    *(a1 + 48) = v9;
    result = palloc(8 * v9);
    *(a1 + 56) = result;
    if (*(a1 + 48))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = palloc(0x28uLL);
        v13 = pg_query__node__init(v12);
        *(*(a1 + 56) + 8 * v10) = v12;
        result = _outNode_0(*(*(a1 + 56) + 8 * v10), *(*(*(a2 + 32) + 16) + 8 * v10), v13);
        v10 = v11++;
      }

      while (*(a1 + 48) > v10);
    }
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    v15 = *(v14 + 4);
    *(a1 + 64) = v15;
    result = palloc(8 * v15);
    *(a1 + 72) = result;
    if (*(a1 + 64))
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = palloc(0x28uLL);
        v19 = pg_query__node__init(v18);
        *(*(a1 + 72) + 8 * v16) = v18;
        result = _outNode_0(*(*(a1 + 72) + 8 * v16), *(*(*(a2 + 40) + 16) + 8 * v16), v19);
        v16 = v17++;
      }

      while (*(a1 + 64) > v16);
    }
  }

  v20 = *(a2 + 48);
  if (v20)
  {
    v21 = *(v20 + 4);
    *(a1 + 80) = v21;
    result = palloc(8 * v21);
    *(a1 + 88) = result;
    if (*(a1 + 80))
    {
      v22 = 0;
      v23 = 1;
      do
      {
        v24 = palloc(0x28uLL);
        v25 = pg_query__node__init(v24);
        *(*(a1 + 88) + 8 * v22) = v24;
        result = _outNode_0(*(*(a1 + 88) + 8 * v22), *(*(*(a2 + 48) + 16) + 8 * v22), v25);
        v22 = v23++;
      }

      while (*(a1 + 80) > v22);
    }
  }

  v26 = *(a2 + 56);
  if (v26 < 4)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = -1;
  }

  *(a1 + 96) = v27;
  v28 = *(a2 + 60);
  if (v28 < 3)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = -1;
  }

  *(a1 + 100) = v29;
  return result;
}

char *_outConstraint_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 0xE)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    *(a1 + 32) = pstrdup(v6);
  }

  *(a1 + 40) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 17);
  *(a1 + 48) = *(a2 + 20);
  *(a1 + 52) = *(a2 + 24);
  if (*(a2 + 32))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    *(a1 + 56) = v7;
    _outNode_0(v7, *(a2 + 32), node__init);
  }

  v9 = *(a2 + 40);
  if (v9)
  {
    *(a1 + 64) = pstrdup(v9);
  }

  if (*(a2 + 48))
  {
    v10 = palloc(2uLL);
    *(a1 + 72) = v10;
    *v10 = *(a2 + 48);
    *(*(a1 + 72) + 1) = 0;
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 80) = v12;
    *(a1 + 88) = palloc(8 * v12);
    if (*(a1 + 80))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(a1 + 88) + 8 * v13) = v15;
        _outNode_0(*(*(a1 + 88) + 8 * v13), *(*(*(a2 + 56) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(a1 + 80) > v13);
    }
  }

  v17 = *(a2 + 64);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(a1 + 96) = v18;
    *(a1 + 104) = palloc(8 * v18);
    if (*(a1 + 96))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL);
        v22 = pg_query__node__init(v21);
        *(*(a1 + 104) + 8 * v19) = v21;
        _outNode_0(*(*(a1 + 104) + 8 * v19), *(*(*(a2 + 64) + 16) + 8 * v19), v22);
        v19 = v20++;
      }

      while (*(a1 + 96) > v19);
    }
  }

  v23 = *(a2 + 72);
  if (v23)
  {
    v24 = *(v23 + 4);
    *(a1 + 112) = v24;
    *(a1 + 120) = palloc(8 * v24);
    if (*(a1 + 112))
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = palloc(0x28uLL);
        v28 = pg_query__node__init(v27);
        *(*(a1 + 120) + 8 * v25) = v27;
        _outNode_0(*(*(a1 + 120) + 8 * v25), *(*(*(a2 + 72) + 16) + 8 * v25), v28);
        v25 = v26++;
      }

      while (*(a1 + 112) > v25);
    }
  }

  v29 = *(a2 + 80);
  if (v29)
  {
    v30 = *(v29 + 4);
    *(a1 + 128) = v30;
    *(a1 + 136) = palloc(8 * v30);
    if (*(a1 + 128))
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = palloc(0x28uLL);
        v34 = pg_query__node__init(v33);
        *(*(a1 + 136) + 8 * v31) = v33;
        _outNode_0(*(*(a1 + 136) + 8 * v31), *(*(*(a2 + 80) + 16) + 8 * v31), v34);
        v31 = v32++;
      }

      while (*(a1 + 128) > v31);
    }
  }

  v35 = *(a2 + 88);
  if (v35)
  {
    *(a1 + 144) = pstrdup(v35);
  }

  v36 = *(a2 + 96);
  if (v36)
  {
    *(a1 + 152) = pstrdup(v36);
  }

  *(a1 + 160) = *(a2 + 104);
  result = *(a2 + 112);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 168) = result;
  }

  if (*(a2 + 120))
  {
    v38 = palloc(0x28uLL);
    v39 = pg_query__node__init(v38);
    *(a1 + 176) = v38;
    result = _outNode_0(v38, *(a2 + 120), v39);
  }

  if (*(a2 + 128))
  {
    v40 = palloc(0x50uLL);
    pg_query__range_var__init(v40);
    result = _outRangeVar_0(v40, *(a2 + 128));
    *(a1 + 184) = v40;
  }

  v41 = *(a2 + 136);
  if (v41)
  {
    v42 = *(v41 + 4);
    *(a1 + 192) = v42;
    result = palloc(8 * v42);
    *(a1 + 200) = result;
    if (*(a1 + 192))
    {
      v43 = 0;
      v44 = 1;
      do
      {
        v45 = palloc(0x28uLL);
        v46 = pg_query__node__init(v45);
        *(*(a1 + 200) + 8 * v43) = v45;
        result = _outNode_0(*(*(a1 + 200) + 8 * v43), *(*(*(a2 + 136) + 16) + 8 * v43), v46);
        v43 = v44++;
      }

      while (*(a1 + 192) > v43);
    }
  }

  v47 = *(a2 + 144);
  if (v47)
  {
    v48 = *(v47 + 4);
    *(a1 + 208) = v48;
    result = palloc(8 * v48);
    *(a1 + 216) = result;
    if (*(a1 + 208))
    {
      v49 = 0;
      v50 = 1;
      do
      {
        v51 = palloc(0x28uLL);
        v52 = pg_query__node__init(v51);
        *(*(a1 + 216) + 8 * v49) = v51;
        result = _outNode_0(*(*(a1 + 216) + 8 * v49), *(*(*(a2 + 144) + 16) + 8 * v49), v52);
        v49 = v50++;
      }

      while (*(a1 + 208) > v49);
    }
  }

  if (*(a2 + 152))
  {
    result = palloc(2uLL);
    *(a1 + 224) = result;
    *result = *(a2 + 152);
    *(*(a1 + 224) + 1) = 0;
  }

  if (*(a2 + 153))
  {
    result = palloc(2uLL);
    *(a1 + 232) = result;
    *result = *(a2 + 153);
    *(*(a1 + 232) + 1) = 0;
  }

  if (*(a2 + 154))
  {
    result = palloc(2uLL);
    *(a1 + 240) = result;
    *result = *(a2 + 154);
    *(*(a1 + 240) + 1) = 0;
  }

  v53 = *(a2 + 160);
  if (v53)
  {
    v54 = *(v53 + 4);
    *(a1 + 248) = v54;
    result = palloc(8 * v54);
    *(a1 + 256) = result;
    if (*(a1 + 248))
    {
      v55 = 0;
      v56 = 1;
      do
      {
        v57 = palloc(0x28uLL);
        v58 = pg_query__node__init(v57);
        *(*(a1 + 256) + 8 * v55) = v57;
        result = _outNode_0(*(*(a1 + 256) + 8 * v55), *(*(*(a2 + 160) + 16) + 8 * v55), v58);
        v55 = v56++;
      }

      while (*(a1 + 248) > v55);
    }
  }

  *(a1 + 264) = *(a2 + 168);
  *(a1 + 268) = *(a2 + 172);
  *(a1 + 272) = *(a2 + 173);
  return result;
}

const char *_outDefElem_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  if (*(a2 + 24))
  {
    v6 = palloc(0x28uLL);
    node__init = pg_query__node__init(v6);
    *(a1 + 40) = v6;
    result = _outNode_0(v6, *(a2 + 24), node__init);
  }

  v8 = *(a2 + 32);
  if (v8 < 4)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -1;
  }

  *(a1 + 48) = v9;
  *(a1 + 52) = *(a2 + 36);
  return result;
}

uint64_t _outRangeTblEntry_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 9)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  *(a1 + 28) = *(a2 + 8);
  if (*(a2 + 12))
  {
    v6 = palloc(2uLL);
    *(a1 + 32) = v6;
    *v6 = *(a2 + 12);
    *(*(a1 + 32) + 1) = 0;
  }

  *(a1 + 40) = *(a2 + 16);
  if (*(a2 + 24))
  {
    v7 = palloc(0x38uLL);
    pg_query__table_sample_clause__init(v7);
    _outTableSampleClause_0(v7, *(a2 + 24));
    *(a1 + 48) = v7;
  }

  if (*(a2 + 32))
  {
    v8 = palloc(0x160uLL);
    pg_query__query__init(v8);
    _outQuery_0(v8, *(a2 + 32));
    *(a1 + 56) = v8;
  }

  *(a1 + 64) = *(a2 + 40);
  v9 = *(a2 + 44);
  if (v9 < 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = -1;
  }

  *(a1 + 68) = v10;
  *(a1 + 72) = *(a2 + 48);
  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(a1 + 80) = v12;
    *(a1 + 88) = palloc(8 * v12);
    if (*(a1 + 80))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        node__init = pg_query__node__init(v15);
        *(*(a1 + 88) + 8 * v13) = v15;
        _outNode_0(*(*(a1 + 88) + 8 * v13), *(*(*(a2 + 56) + 16) + 8 * v13), node__init);
        v13 = v14++;
      }

      while (*(a1 + 80) > v13);
    }
  }

  v17 = *(a2 + 64);
  if (v17)
  {
    v18 = *(v17 + 4);
    *(a1 + 96) = v18;
    *(a1 + 104) = palloc(8 * v18);
    if (*(a1 + 96))
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = palloc(0x28uLL);
        v22 = pg_query__node__init(v21);
        *(*(a1 + 104) + 8 * v19) = v21;
        _outNode_0(*(*(a1 + 104) + 8 * v19), *(*(*(a2 + 64) + 16) + 8 * v19), v22);
        v19 = v20++;
      }

      while (*(a1 + 96) > v19);
    }
  }

  v23 = *(a2 + 72);
  if (v23)
  {
    v24 = *(v23 + 4);
    *(a1 + 112) = v24;
    *(a1 + 120) = palloc(8 * v24);
    if (*(a1 + 112))
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = palloc(0x28uLL);
        v28 = pg_query__node__init(v27);
        *(*(a1 + 120) + 8 * v25) = v27;
        _outNode_0(*(*(a1 + 120) + 8 * v25), *(*(*(a2 + 72) + 16) + 8 * v25), v28);
        v25 = v26++;
      }

      while (*(a1 + 112) > v25);
    }
  }

  v29 = *(a2 + 80);
  if (v29)
  {
    v30 = *(v29 + 4);
    *(a1 + 128) = v30;
    *(a1 + 136) = palloc(8 * v30);
    if (*(a1 + 128))
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = palloc(0x28uLL);
        v34 = pg_query__node__init(v33);
        *(*(a1 + 136) + 8 * v31) = v33;
        _outNode_0(*(*(a1 + 136) + 8 * v31), *(*(*(a2 + 80) + 16) + 8 * v31), v34);
        v31 = v32++;
      }

      while (*(a1 + 128) > v31);
    }
  }

  *(a1 + 144) = *(a2 + 88);
  if (*(a2 + 96))
  {
    v35 = palloc(0xC0uLL);
    pg_query__table_func__init(v35);
    _outTableFunc_0(v35, *(a2 + 96));
    *(a1 + 152) = v35;
  }

  v36 = *(a2 + 104);
  if (v36)
  {
    v37 = *(v36 + 4);
    *(a1 + 160) = v37;
    *(a1 + 168) = palloc(8 * v37);
    if (*(a1 + 160))
    {
      v38 = 0;
      v39 = 1;
      do
      {
        v40 = palloc(0x28uLL);
        v41 = pg_query__node__init(v40);
        *(*(a1 + 168) + 8 * v38) = v40;
        _outNode_0(*(*(a1 + 168) + 8 * v38), *(*(*(a2 + 104) + 16) + 8 * v38), v41);
        v38 = v39++;
      }

      while (*(a1 + 160) > v38);
    }
  }

  v42 = *(a2 + 112);
  if (v42)
  {
    *(a1 + 176) = pstrdup(v42);
  }

  *(a1 + 184) = *(a2 + 120);
  *(a1 + 188) = *(a2 + 124);
  v43 = *(a2 + 128);
  if (v43)
  {
    v44 = *(v43 + 4);
    *(a1 + 192) = v44;
    *(a1 + 200) = palloc(8 * v44);
    if (*(a1 + 192))
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = palloc(0x28uLL);
        v48 = pg_query__node__init(v47);
        *(*(a1 + 200) + 8 * v45) = v47;
        _outNode_0(*(*(a1 + 200) + 8 * v45), *(*(*(a2 + 128) + 16) + 8 * v45), v48);
        v45 = v46++;
      }

      while (*(a1 + 192) > v45);
    }
  }

  v49 = *(a2 + 136);
  if (v49)
  {
    v50 = *(v49 + 4);
    *(a1 + 208) = v50;
    *(a1 + 216) = palloc(8 * v50);
    if (*(a1 + 208))
    {
      v51 = 0;
      v52 = 1;
      do
      {
        v53 = palloc(0x28uLL);
        v54 = pg_query__node__init(v53);
        *(*(a1 + 216) + 8 * v51) = v53;
        _outNode_0(*(*(a1 + 216) + 8 * v51), *(*(*(a2 + 136) + 16) + 8 * v51), v54);
        v51 = v52++;
      }

      while (*(a1 + 208) > v51);
    }
  }

  v55 = *(a2 + 144);
  if (v55)
  {
    v56 = *(v55 + 4);
    *(a1 + 224) = v56;
    *(a1 + 232) = palloc(8 * v56);
    if (*(a1 + 224))
    {
      v57 = 0;
      v58 = 1;
      do
      {
        v59 = palloc(0x28uLL);
        v60 = pg_query__node__init(v59);
        *(*(a1 + 232) + 8 * v57) = v59;
        _outNode_0(*(*(a1 + 232) + 8 * v57), *(*(*(a2 + 144) + 16) + 8 * v57), v60);
        v57 = v58++;
      }

      while (*(a1 + 224) > v57);
    }
  }

  v61 = *(a2 + 152);
  if (v61)
  {
    *(a1 + 240) = pstrdup(v61);
  }

  *(a1 + 248) = *(a2 + 160);
  if (*(a2 + 168))
  {
    v62 = palloc(0x30uLL);
    pg_query__alias__init(v62);
    _outAlias_0(v62, *(a2 + 168));
    *(a1 + 256) = v62;
  }

  if (*(a2 + 176))
  {
    v63 = palloc(0x30uLL);
    pg_query__alias__init(v63);
    _outAlias_0(v63, *(a2 + 176));
    *(a1 + 264) = v63;
  }

  *(a1 + 272) = *(a2 + 184);
  *(a1 + 276) = *(a2 + 185);
  *(a1 + 280) = *(a2 + 186);
  *(a1 + 284) = *(a2 + 188);
  *(a1 + 288) = *(a2 + 192);
  if ((bms_is_empty(*(a2 + 200)) & 1) == 0)
  {
    v64 = bms_num_members(*(a2 + 200));
    *(a1 + 296) = v64;
    *(a1 + 304) = palloc(8 * v64);
    member = bms_first_member(*(a2 + 200));
    if ((member & 0x80000000) == 0)
    {
      v66 = 0;
      do
      {
        v67 = v66 + 1;
        *(*(a1 + 304) + 8 * v66) = member;
        member = bms_first_member(*(a2 + 200));
        v66 = v67;
      }

      while ((member & 0x80000000) == 0);
    }
  }

  if ((bms_is_empty(*(a2 + 208)) & 1) == 0)
  {
    v68 = bms_num_members(*(a2 + 208));
    *(a1 + 312) = v68;
    *(a1 + 320) = palloc(8 * v68);
    v69 = bms_first_member(*(a2 + 208));
    if ((v69 & 0x80000000) == 0)
    {
      v70 = 0;
      do
      {
        v71 = v70 + 1;
        *(*(a1 + 320) + 8 * v70) = v69;
        v69 = bms_first_member(*(a2 + 208));
        v70 = v71;
      }

      while ((v69 & 0x80000000) == 0);
    }
  }

  if ((bms_is_empty(*(a2 + 216)) & 1) == 0)
  {
    v72 = bms_num_members(*(a2 + 216));
    *(a1 + 328) = v72;
    *(a1 + 336) = palloc(8 * v72);
    v73 = bms_first_member(*(a2 + 216));
    if ((v73 & 0x80000000) == 0)
    {
      v74 = 0;
      do
      {
        v75 = v74 + 1;
        *(*(a1 + 336) + 8 * v74) = v73;
        v73 = bms_first_member(*(a2 + 216));
        v74 = v75;
      }

      while ((v73 & 0x80000000) == 0);
    }
  }

  result = bms_is_empty(*(a2 + 224));
  if ((result & 1) == 0)
  {
    v77 = bms_num_members(*(a2 + 224));
    *(a1 + 344) = v77;
    *(a1 + 352) = palloc(8 * v77);
    result = bms_first_member(*(a2 + 224));
    if ((result & 0x80000000) == 0)
    {
      v78 = 0;
      do
      {
        v79 = v78 + 1;
        *(*(a1 + 352) + 8 * v78) = result;
        result = bms_first_member(*(a2 + 224));
        v78 = v79;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  v80 = *(a2 + 232);
  if (v80)
  {
    v81 = *(v80 + 4);
    *(a1 + 360) = v81;
    result = palloc(8 * v81);
    *(a1 + 368) = result;
    if (*(a1 + 360))
    {
      v82 = 0;
      v83 = 1;
      do
      {
        v84 = palloc(0x28uLL);
        v85 = pg_query__node__init(v84);
        *(*(a1 + 368) + 8 * v82) = v84;
        result = _outNode_0(*(*(a1 + 368) + 8 * v82), *(*(*(a2 + 232) + 16) + 8 * v82), v85);
        v82 = v83++;
      }

      while (*(a1 + 360) > v82);
    }
  }

  return result;
}

uint64_t _outRangeTblFunction_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = palloc(0x28uLL);
    node__init = pg_query__node__init(v4);
    *(a1 + 24) = v4;
    _outNode_0(v4, *(a2 + 8), node__init);
  }

  *(a1 + 32) = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    *(a1 + 48) = palloc(8 * v7);
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        v11 = pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8), v11);
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    *(a1 + 64) = palloc(8 * v13);
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = *(v18 + 4);
    *(a1 + 72) = v19;
    *(a1 + 80) = palloc(8 * v19);
    if (*(a1 + 72))
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = palloc(0x28uLL);
        v23 = pg_query__node__init(v22);
        *(*(a1 + 80) + 8 * v20) = v22;
        _outNode_0(*(*(a1 + 80) + 8 * v20), *(*(*(a2 + 40) + 16) + 8 * v20), v23);
        v20 = v21++;
      }

      while (*(a1 + 72) > v20);
    }
  }

  v24 = *(a2 + 48);
  if (v24)
  {
    v25 = *(v24 + 4);
    *(a1 + 88) = v25;
    *(a1 + 96) = palloc(8 * v25);
    if (*(a1 + 88))
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = palloc(0x28uLL);
        v29 = pg_query__node__init(v28);
        *(*(a1 + 96) + 8 * v26) = v28;
        _outNode_0(*(*(a1 + 96) + 8 * v26), *(*(*(a2 + 48) + 16) + 8 * v26), v29);
        v26 = v27++;
      }

      while (*(a1 + 88) > v26);
    }
  }

  result = bms_is_empty(*(a2 + 56));
  if ((result & 1) == 0)
  {
    v31 = bms_num_members(*(a2 + 56));
    *(a1 + 104) = v31;
    *(a1 + 112) = palloc(8 * v31);
    result = bms_first_member(*(a2 + 56));
    if ((result & 0x80000000) == 0)
    {
      v32 = 0;
      do
      {
        v33 = v32 + 1;
        *(*(a1 + 112) + 8 * v32) = result;
        result = bms_first_member(*(a2 + 56));
        v32 = v33;
      }

      while ((result & 0x80000000) == 0);
    }
  }

  return result;
}

uint64_t _outTableSampleClause_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 32) = v5;
    result = palloc(8 * v5);
    v3[5] = result;
    if (v3[4])
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(v3[5] + 8 * v6) = v8;
        result = _outNode_0(*(v3[5] + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (v3[4] > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x28uLL);
    v11 = pg_query__node__init(v10);
    v3[6] = v10;
    v12 = *(a2 + 16);

    return _outNode_0(v10, v12, v11);
  }

  return result;
}

const char *_outWithCheckOption_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    *(a1 + 32) = pstrdup(v6);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 40) = result;
  }

  if (*(a2 + 24))
  {
    v8 = palloc(0x28uLL);
    node__init = pg_query__node__init(v8);
    *(a1 + 48) = v8;
    result = _outNode_0(v8, *(a2 + 24), node__init);
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outGroupingSet_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 5)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(result + 32) = v7;
    result = palloc(8 * v7);
    *(v3 + 40) = result;
    if (*(v3 + 32))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(v3 + 40) + 8 * v8) = v10;
        result = _outNode_0(*(*(v3 + 40) + 8 * v8), *(*(*(a2 + 8) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(v3 + 32) > v8);
    }
  }

  *(v3 + 48) = *(a2 + 16);
  return result;
}

const char *_outWindowClause_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *(a1 + 24) = pstrdup(v4);
  }

  result = *(a2 + 16);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(v6 + 4);
    *(a1 + 40) = v7;
    result = palloc(8 * v7);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = palloc(0x28uLL);
        node__init = pg_query__node__init(v10);
        *(*(a1 + 48) + 8 * v8) = v10;
        result = _outNode_0(*(*(a1 + 48) + 8 * v8), *(*(*(a2 + 24) + 16) + 8 * v8), node__init);
        v8 = v9++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  v12 = *(a2 + 32);
  if (v12)
  {
    v13 = *(v12 + 4);
    *(a1 + 56) = v13;
    result = palloc(8 * v13);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = palloc(0x28uLL);
        v17 = pg_query__node__init(v16);
        *(*(a1 + 64) + 8 * v14) = v16;
        result = _outNode_0(*(*(a1 + 64) + 8 * v14), *(*(*(a2 + 32) + 16) + 8 * v14), v17);
        v14 = v15++;
      }

      while (*(a1 + 56) > v14);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  if (*(a2 + 48))
  {
    v18 = palloc(0x28uLL);
    v19 = pg_query__node__init(v18);
    *(a1 + 80) = v18;
    result = _outNode_0(v18, *(a2 + 48), v19);
  }

  if (*(a2 + 56))
  {
    v20 = palloc(0x28uLL);
    v21 = pg_query__node__init(v20);
    *(a1 + 88) = v20;
    result = _outNode_0(v20, *(a2 + 56), v21);
  }

  *(a1 + 96) = *(a2 + 64);
  *(a1 + 100) = *(a2 + 68);
  *(a1 + 104) = *(a2 + 72);
  *(a1 + 108) = *(a2 + 76);
  *(a1 + 112) = *(a2 + 77);
  *(a1 + 116) = *(a2 + 80);
  *(a1 + 120) = *(a2 + 84);
  return result;
}

uint64_t _outCreateOpClassItem_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 24) = *(a2 + 4);
  if (*(a2 + 8))
  {
    v4 = palloc(0x40uLL);
    pg_query__object_with_args__init(v4);
    result = _outVacuumStmt_0(v4, *(a2 + 8));
    *(v3 + 32) = v4;
  }

  *(v3 + 40) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 48) = v6;
    result = palloc(8 * v6);
    *(v3 + 56) = result;
    if (*(v3 + 48))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 56) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 56) + 8 * v7), *(*(*(a2 + 24) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 48) > v7);
    }
  }

  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = *(v11 + 4);
    *(v3 + 64) = v12;
    result = palloc(8 * v12);
    *(v3 + 72) = result;
    if (*(v3 + 64))
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = palloc(0x28uLL);
        v16 = pg_query__node__init(v15);
        *(*(v3 + 72) + 8 * v13) = v15;
        result = _outNode_0(*(*(v3 + 72) + 8 * v13), *(*(*(a2 + 32) + 16) + 8 * v13), v16);
        v13 = v14++;
      }

      while (*(v3 + 64) > v13);
    }
  }

  if (*(a2 + 40))
  {
    v17 = palloc(0x68uLL);
    pg_query__type_name__init(v17);
    result = _outTypeName_0(v17, *(a2 + 40));
    *(v3 + 80) = v17;
  }

  return result;
}

char *_outTableLikeClause_0(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 3) = v4;
  }

  *(v3 + 8) = *(a2 + 16);
  *(v3 + 9) = *(a2 + 20);
  return result;
}

const char *_outFunctionParameter_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x68uLL);
    pg_query__type_name__init(v5);
    result = _outTypeName_0(v5, *(a2 + 16));
    *(a1 + 32) = v5;
  }

  v6 = *(a2 + 24);
  if (v6 > 110)
  {
    switch(v6)
    {
      case 'v':
        *(a1 + 40) = 4;
        if (!*(a2 + 32))
        {
          return result;
        }

        goto LABEL_20;
      case 't':
        *(a1 + 40) = 5;
        if (!*(a2 + 32))
        {
          return result;
        }

        goto LABEL_20;
      case 'o':
        *(a1 + 40) = 2;
        if (!*(a2 + 32))
        {
          return result;
        }

        goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v6 != 98)
  {
    if (v6 == 105)
    {
      *(a1 + 40) = 1;
      if (!*(a2 + 32))
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_23:
    *(a1 + 40) = -1;
    if (!*(a2 + 32))
    {
      return result;
    }

    goto LABEL_20;
  }

  *(a1 + 40) = 3;
  if (!*(a2 + 32))
  {
    return result;
  }

LABEL_20:
  v7 = palloc(0x28uLL);
  node__init = pg_query__node__init(v7);
  *(a1 + 48) = v7;
  v9 = *(a2 + 32);

  return _outNode_0(v7, v9, node__init);
}

uint64_t _outLockingClause_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  v10 = *(a2 + 16);
  if (v10 < 5)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = -1;
  }

  *(v3 + 40) = v11;
  v12 = *(a2 + 20);
  if (v12 < 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = -1;
  }

  *(v3 + 44) = v13;
  return result;
}

_DWORD *_outRowMarkClause_0(_DWORD *result, uint64_t a2)
{
  result[6] = *(a2 + 4);
  v2 = *(a2 + 8);
  if (v2 < 5)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = -1;
  }

  result[7] = v3;
  v4 = *(a2 + 12);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  result[8] = v5;
  result[9] = *(a2 + 16);
  return result;
}

uint64_t _outXmlSerialize_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  *(result + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    *(v3 + 32) = v7;
    result = _outNode_0(v7, *(a2 + 8), node__init);
  }

  if (*(a2 + 16))
  {
    v9 = palloc(0x68uLL);
    pg_query__type_name__init(v9);
    result = _outTypeName_0(v9, *(a2 + 16));
    *(v3 + 40) = v9;
  }

  *(v3 + 48) = *(a2 + 24);
  return result;
}

uint64_t _outWithClause_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(result + 24) = v5;
    result = palloc(8 * v5);
    *(v3 + 32) = result;
    if (*(v3 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 32) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 24) > v6);
    }
  }

  *(v3 + 40) = *(a2 + 16);
  *(v3 + 44) = *(a2 + 20);
  return result;
}

const char *_outInferClause_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(a1 + 24) = v5;
    *(a1 + 32) = palloc(8 * v5);
    if (*(a1 + 24))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(a1 + 32) + 8 * v6) = v8;
        _outNode_0(*(*(a1 + 32) + 8 * v6), *(*(*(a2 + 8) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(a1 + 24) > v6);
    }
  }

  if (*(a2 + 16))
  {
    v10 = palloc(0x28uLL);
    v11 = pg_query__node__init(v10);
    *(a1 + 40) = v10;
    _outNode_0(v10, *(a2 + 16), v11);
  }

  result = *(a2 + 24);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 48) = result;
  }

  *(a1 + 56) = *(a2 + 32);
  return result;
}

uint64_t _outOnConflictClause_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(result + 24) = v5;
  if (*(a2 + 8))
  {
    v6 = palloc(0x40uLL);
    pg_query__infer_clause__init(v6);
    result = _outInferClause_0(v6, *(a2 + 8));
    *(v3 + 32) = v6;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(v3 + 40) = v8;
    result = palloc(8 * v8);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        node__init = pg_query__node__init(v11);
        *(*(v3 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(v3 + 48) + 8 * v9), *(*(*(a2 + 16) + 16) + 8 * v9), node__init);
        v9 = v10++;
      }

      while (*(v3 + 40) > v9);
    }
  }

  if (*(a2 + 24))
  {
    v13 = palloc(0x28uLL);
    v14 = pg_query__node__init(v13);
    *(v3 + 56) = v13;
    result = _outNode_0(v13, *(a2 + 24), v14);
  }

  *(v3 + 64) = *(a2 + 32);
  return result;
}

const char *_outCommonTableExpr_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    result = palloc(8 * v6);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  v11 = *(a2 + 24);
  if (v11 < 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = -1;
  }

  *(a1 + 48) = v12;
  if (*(a2 + 32))
  {
    v13 = palloc(0x28uLL);
    v14 = pg_query__node__init(v13);
    *(a1 + 56) = v13;
    result = _outNode_0(v13, *(a2 + 32), v14);
  }

  *(a1 + 64) = *(a2 + 40);
  *(a1 + 68) = *(a2 + 44);
  *(a1 + 72) = *(a2 + 48);
  v15 = *(a2 + 56);
  if (v15)
  {
    v16 = *(v15 + 4);
    *(a1 + 80) = v16;
    result = palloc(8 * v16);
    *(a1 + 88) = result;
    if (*(a1 + 80))
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = palloc(0x28uLL);
        v20 = pg_query__node__init(v19);
        *(*(a1 + 88) + 8 * v17) = v19;
        result = _outNode_0(*(*(a1 + 88) + 8 * v17), *(*(*(a2 + 56) + 16) + 8 * v17), v20);
        v17 = v18++;
      }

      while (*(a1 + 80) > v17);
    }
  }

  v21 = *(a2 + 64);
  if (v21)
  {
    v22 = *(v21 + 4);
    *(a1 + 96) = v22;
    result = palloc(8 * v22);
    *(a1 + 104) = result;
    if (*(a1 + 96))
    {
      v23 = 0;
      v24 = 1;
      do
      {
        v25 = palloc(0x28uLL);
        v26 = pg_query__node__init(v25);
        *(*(a1 + 104) + 8 * v23) = v25;
        result = _outNode_0(*(*(a1 + 104) + 8 * v23), *(*(*(a2 + 64) + 16) + 8 * v23), v26);
        v23 = v24++;
      }

      while (*(a1 + 96) > v23);
    }
  }

  v27 = *(a2 + 72);
  if (v27)
  {
    v28 = *(v27 + 4);
    *(a1 + 112) = v28;
    result = palloc(8 * v28);
    *(a1 + 120) = result;
    if (*(a1 + 112))
    {
      v29 = 0;
      v30 = 1;
      do
      {
        v31 = palloc(0x28uLL);
        v32 = pg_query__node__init(v31);
        *(*(a1 + 120) + 8 * v29) = v31;
        result = _outNode_0(*(*(a1 + 120) + 8 * v29), *(*(*(a2 + 72) + 16) + 8 * v29), v32);
        v29 = v30++;
      }

      while (*(a1 + 112) > v29);
    }
  }

  v33 = *(a2 + 80);
  if (v33)
  {
    v34 = *(v33 + 4);
    *(a1 + 128) = v34;
    result = palloc(8 * v34);
    *(a1 + 136) = result;
    if (*(a1 + 128))
    {
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = palloc(0x28uLL);
        v38 = pg_query__node__init(v37);
        *(*(a1 + 136) + 8 * v35) = v37;
        result = _outNode_0(*(*(a1 + 136) + 8 * v35), *(*(*(a2 + 80) + 16) + 8 * v35), v38);
        v35 = v36++;
      }

      while (*(a1 + 128) > v35);
    }
  }

  return result;
}

const char *_outRoleSpec_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4 < 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = -1;
  }

  *(a1 + 24) = v5;
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 32) = result;
  }

  *(a1 + 40) = *(a2 + 16);
  return result;
}

const char *_outPartitionElem_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x28uLL);
    node__init = pg_query__node__init(v5);
    *(a1 + 32) = v5;
    result = _outNode_0(v5, *(a2 + 16), node__init);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 4);
    *(a1 + 40) = v8;
    result = palloc(8 * v8);
    *(a1 + 48) = result;
    if (*(a1 + 40))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = palloc(0x28uLL);
        v12 = pg_query__node__init(v11);
        *(*(a1 + 48) + 8 * v9) = v11;
        result = _outNode_0(*(*(a1 + 48) + 8 * v9), *(*(*(a2 + 24) + 16) + 8 * v9), v12);
        v9 = v10++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 4);
    *(a1 + 56) = v14;
    result = palloc(8 * v14);
    *(a1 + 64) = result;
    if (*(a1 + 56))
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = palloc(0x28uLL);
        v18 = pg_query__node__init(v17);
        *(*(a1 + 64) + 8 * v15) = v17;
        result = _outNode_0(*(*(a1 + 64) + 8 * v15), *(*(*(a2 + 32) + 16) + 8 * v15), v18);
        v15 = v16++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  *(a1 + 72) = *(a2 + 40);
  return result;
}

const char *_outPartitionSpec_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(a1 + 32) = v6;
    result = palloc(8 * v6);
    *(a1 + 40) = result;
    if (*(a1 + 32))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(a1 + 40) + 8 * v7) = v9;
        result = _outNode_0(*(*(a1 + 40) + 8 * v7), *(*(*(a2 + 16) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(a1 + 32) > v7);
    }
  }

  *(a1 + 48) = *(a2 + 24);
  return result;
}

_BYTE *_outPartitionBoundSpec_0(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 4))
  {
    result = palloc(2uLL);
    *(v3 + 3) = result;
    *result = *(a2 + 4);
    *(*(v3 + 3) + 1) = 0;
  }

  *(v3 + 8) = *(a2 + 5);
  *(v3 + 9) = *(a2 + 8);
  *(v3 + 10) = *(a2 + 12);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(v4 + 4);
    *(v3 + 6) = v5;
    result = palloc(8 * v5);
    *(v3 + 7) = result;
    if (*(v3 + 6))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = palloc(0x28uLL);
        node__init = pg_query__node__init(v8);
        *(*(v3 + 7) + 8 * v6) = v8;
        result = _outNode_0(*(*(v3 + 7) + 8 * v6), *(*(*(a2 + 16) + 16) + 8 * v6), node__init);
        v6 = v7++;
      }

      while (*(v3 + 6) > v6);
    }
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v11 = *(v10 + 4);
    *(v3 + 8) = v11;
    result = palloc(8 * v11);
    *(v3 + 9) = result;
    if (*(v3 + 8))
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = palloc(0x28uLL);
        v15 = pg_query__node__init(v14);
        *(*(v3 + 9) + 8 * v12) = v14;
        result = _outNode_0(*(*(v3 + 9) + 8 * v12), *(*(*(a2 + 24) + 16) + 8 * v12), v15);
        v12 = v13++;
      }

      while (*(v3 + 8) > v12);
    }
  }

  v16 = *(a2 + 32);
  if (v16)
  {
    v17 = *(v16 + 4);
    *(v3 + 10) = v17;
    result = palloc(8 * v17);
    *(v3 + 11) = result;
    if (*(v3 + 10))
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = palloc(0x28uLL);
        v21 = pg_query__node__init(v20);
        *(*(v3 + 11) + 8 * v18) = v20;
        result = _outNode_0(*(*(v3 + 11) + 8 * v18), *(*(*(a2 + 32) + 16) + 8 * v18), v21);
        v18 = v19++;
      }

      while (*(v3 + 10) > v18);
    }
  }

  *(v3 + 24) = *(a2 + 40);
  return result;
}

uint64_t _outPartitionRangeDatum_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  v5 = v4 + 1;
  v6 = v4 + 2;
  if (v5 >= 3)
  {
    v6 = -1;
  }

  *(result + 24) = v6;
  if (*(a2 + 8))
  {
    v7 = palloc(0x28uLL);
    node__init = pg_query__node__init(v7);
    *(v3 + 32) = v7;
    result = _outNode_0(v7, *(a2 + 8), node__init);
  }

  *(v3 + 40) = *(a2 + 16);
  return result;
}

char *_outPartitionCmd_0(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 3) = v4;
  }

  if (*(a2 + 16))
  {
    v5 = palloc(0x68uLL);
    pg_query__partition_bound_spec__init(v5);
    result = _outPartitionBoundSpec_0(v5, *(a2 + 16));
    *(v3 + 4) = v5;
  }

  return result;
}

uint64_t _outVacuumRelation_0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = palloc(0x50uLL);
    pg_query__range_var__init(v4);
    result = _outRangeVar_0(v4, *(a2 + 8));
    *(v3 + 24) = v4;
  }

  *(v3 + 32) = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v5 + 4);
    *(v3 + 40) = v6;
    result = palloc(8 * v6);
    *(v3 + 48) = result;
    if (*(v3 + 40))
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = palloc(0x28uLL);
        node__init = pg_query__node__init(v9);
        *(*(v3 + 48) + 8 * v7) = v9;
        result = _outNode_0(*(*(v3 + 48) + 8 * v7), *(*(*(a2 + 24) + 16) + 8 * v7), node__init);
        v7 = v8++;
      }

      while (*(v3 + 40) > v7);
    }
  }

  return result;
}

const char *_outInlineCodeBlock_0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = pstrdup(result);
    *(a1 + 24) = result;
  }

  *(a1 + 32) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 20);
  *(a1 + 40) = *(a2 + 21);
  return result;
}

uint64_t pg_query_raw_parse(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v20 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v5 = CurrentMemoryContext(v4);
  v6 = *v5;
  bzero(__s1, 0x1001uLL);
  v7 = PG_exception_stack();
  v8 = *v7;
  v9 = v7;
  v10 = error_context_stack();
  v11 = *v10;
  v12 = v10;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (sigsetjmp(v17, 0))
  {
    *v9 = v8;
    *v12 = v11;
    *v5 = v6;
    v13 = CopyErrorData();
    v14 = malloc_type_malloc(0x28uLL, 0x1010040E871EB1AuLL);
    *v14 = strdup(*(v13 + 64));
    v14[2] = strdup(*(v13 + 16));
    v14[1] = strdup(*(v13 + 32));
    v14[4] = 0;
    *(v14 + 6) = *(v13 + 24);
    *(v14 + 7) = *(v13 + 160);
    v3[2] = v14;
    result = FlushErrorState();
  }

  else
  {
    *v9 = v17;
    *v3 = raw_parser(v1);
    result = strdup(__s1);
    v3[1] = result;
  }

  *v9 = v8;
  *v12 = v11;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t pg_query_parse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pg_query_enter_memory_context();
  pg_query_raw_parse(a1);
  *(a2 + 8) = v7;
  nodes_to_json = pg_query_nodes_to_json(v6);
  *a2 = strdup(nodes_to_json);
  pfree(nodes_to_json);

  return pg_query_exit_memory_context();
}

uint64_t pg_query_parse_protobuf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  pg_query_enter_memory_context();
  pg_query_raw_parse(a1);
  *(a2 + 16) = v7;
  *a2 = pg_query_nodes_to_protobuf(v6);
  *(a2 + 8) = v4;

  return pg_query_exit_memory_context();
}

void pg_query_free_parse_result(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*a1);
  v3 = *(a1 + 8);

  free(v3);
}

void pg_query_free_protobuf_parse_result(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    pg_query_free_error(v2);
  }

  free(*(a1 + 8));
  v3 = *(a1 + 16);

  free(v3);
}

uint64_t pg_query_protobuf_to_nodes(unsigned int a1, unsigned __int8 *a2)
{
  parse_result__unpack = pg_query__parse_result__unpack(0, a1, a2);
  v3 = parse_result__unpack;
  if (*(parse_result__unpack + 4))
  {
    v4 = **(parse_result__unpack + 5);
    v5 = CurrentMemoryContext();
    v6 = MemoryContextAllocZeroAligned(*v5, 0x18uLL);
    *v6 = 230;
    v7 = *(v4 + 24);
    if (v7)
    {
      *(v6 + 8) = _readNode(v7);
    }

    *(v6 + 16) = *(v4 + 32);
    *(v6 + 20) = *(v4 + 36);
    list_make1_impl(226, v6);
    v9 = v8;
    if (*(v3 + 4) >= 2uLL)
    {
      v10 = 1;
      do
      {
        v11 = *(*(v3 + 5) + 8 * v10);
        v12 = MemoryContextAllocZeroAligned(*v5, 0x18uLL);
        *v12 = 230;
        v13 = *(v11 + 24);
        if (v13)
        {
          *(v12 + 8) = _readNode(v13);
        }

        *(v12 + 16) = *(v11 + 32);
        *(v12 + 20) = *(v11 + 36);
        v9 = lappend(v9, v12);
        ++v10;
      }

      while (v10 < *(v3 + 4));
    }
  }

  else
  {
    v9 = 0;
  }

  pg_query__parse_result__free_unpacked(v3, 0);
  return v9;
}

_DWORD *_readRawStmt(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 230;
  if (*(a1 + 24))
  {
    v4 = result;
    Node = _readNode(*(a1 + 24));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 32);
  result[5] = *(a1 + 36);
  return result;
}

_DWORD *_readNode(uint64_t a1)
{
  v1 = 0;
  switch(*(a1 + 24))
  {
    case 0:
      goto LABEL_499;
    case 1:
      v2 = *(a1 + 32);

      return _readAlias(v2);
    case 2:
      v24 = *(a1 + 32);

      return _readRangeVar(v24);
    case 3:
      v7 = *(a1 + 32);

      return _readTableFunc(v7);
    case 4:
      v4 = CurrentMemoryContext();
      v5 = MemoryContextAllocZero(*v4, 4uLL);
      v1 = v5;
      v6 = 105;
      goto LABEL_498;
    case 5:
      v26 = *(a1 + 32);

      return _readVar(v26);
    case 6:
      v8 = *(a1 + 32);

      return _readParam(v8);
    case 7:
      v227 = *(a1 + 32);

      return _readAggref(v227);
    case 8:
      v233 = *(a1 + 32);

      return _readGroupingFunc(v233);
    case 9:
      v234 = *(a1 + 32);

      return _readWindowFunc(v234);
    case 0xA:
      v116 = *(a1 + 32);

      return _readSubscriptingRef(v116);
    case 0xB:
      v66 = *(a1 + 32);

      return _readFuncExpr(v66);
    case 0xC:
      v151 = *(a1 + 32);

      return _readNamedArgExpr(v151);
    case 0xD:
      v225 = *(a1 + 32);

      return _readOpExpr(v225);
    case 0xE:
      v47 = *(a1 + 32);

      return _readDistinctExpr(v47);
    case 0xF:
      v45 = *(a1 + 32);

      return _readNullIfExpr(v45);
    case 0x10:
      v12 = *(a1 + 32);

      return _readScalarArrayOpExpr(v12);
    case 0x11:
      v11 = *(a1 + 32);

      return _readBoolExpr(v11);
    case 0x12:
      v230 = *(a1 + 32);

      return _readSubLink(v230);
    case 0x13:
      v13 = *(a1 + 32);

      return _readSubPlan(v13);
    case 0x14:
      v197 = *(a1 + 32);

      return _readAlternativeSubPlan(v197);
    case 0x15:
      v63 = *(a1 + 32);

      return _readFieldSelect(v63);
    case 0x16:
      v100 = *(a1 + 32);

      return _readFieldStore(v100);
    case 0x17:
      v15 = *(a1 + 32);

      return _readRelabelType(v15);
    case 0x18:
      v203 = *(a1 + 32);

      return _readCoerceViaIO(v203);
    case 0x19:
      v201 = *(a1 + 32);

      return _readArrayCoerceExpr(v201);
    case 0x1A:
      v215 = *(a1 + 32);

      return _readConvertRowtypeExpr(v215);
    case 0x1B:
      v212 = *(a1 + 32);

      return _readCollateExpr(v212);
    case 0x1C:
      v183 = *(a1 + 32);

      return _readCaseExpr(v183);
    case 0x1D:
      v118 = *(a1 + 32);

      return _readCaseWhen(v118);
    case 0x1E:
      v209 = *(a1 + 32);

      return _readCaseTestExpr(v209);
    case 0x1F:
      v208 = *(a1 + 32);

      return _readArrayExpr(v208);
    case 0x20:
      v16 = *(a1 + 32);

      return _readRowExpr(v16);
    case 0x21:
      v223 = *(a1 + 32);

      return _readRowCompareExpr(v223);
    case 0x22:
      v218 = *(a1 + 32);

      return _readCoalesceExpr(v218);
    case 0x23:
      v17 = *(a1 + 32);

      return _readMinMaxExpr(v17);
    case 0x24:
      v60 = *(a1 + 32);

      return _readSQLValueFunction(v60);
    case 0x25:
      v9 = *(a1 + 32);

      return _readXmlExpr(v9);
    case 0x26:
      v222 = *(a1 + 32);

      return _readNullTest(v222);
    case 0x27:
      v224 = *(a1 + 32);

      return _readBooleanTest(v224);
    case 0x28:
      v33 = *(a1 + 32);

      return _readCoerceToDomain(v33);
    case 0x29:
      v114 = *(a1 + 32);

      return _readCoerceToDomainValue(v114);
    case 0x2A:
      v25 = *(a1 + 32);

      return _readSetToDefault(v25);
    case 0x2B:
      v37 = *(a1 + 32);

      return _readCurrentOfExpr(v37);
    case 0x2C:
      v219 = *(a1 + 32);
      v220 = CurrentMemoryContext();
      result = MemoryContextAllocZero(*v220, 0xCuLL);
      *result = 146;
      result[1] = *(v219 + 32);
      result[2] = *(v219 + 36);
      return result;
    case 0x2D:
      v21 = *(a1 + 32);

      return _readInferenceElem(v21);
    case 0x2E:
      v10 = *(a1 + 32);

      return _readTargetEntry(v10);
    case 0x2F:
      v27 = *(a1 + 32);
      v28 = CurrentMemoryContext();
      result = MemoryContextAllocZeroAligned(*v28, 8uLL);
      *result = 149;
      result[1] = *(v27 + 24);
      return result;
    case 0x30:
      v221 = *(a1 + 32);

      return _readJoinExpr(v221);
    case 0x31:
      v61 = *(a1 + 32);

      return _readFromExpr(v61);
    case 0x32:
      v97 = *(a1 + 32);

      return _readOnConflictExpr(v97);
    case 0x33:
      v18 = *(a1 + 32);

      return _readIntoClause(v18);
    case 0x34:
      v184 = *(a1 + 32);

      return _readRawStmt(v184);
    case 0x35:
      v154 = *(a1 + 32);

      return _readQuery(v154);
    case 0x36:
      v213 = *(a1 + 32);

      return _readInsertStmt(v213);
    case 0x37:
      v152 = *(a1 + 32);

      return _readDeleteStmt(v152);
    case 0x38:
      v68 = *(a1 + 32);

      return _readUpdateStmt(v68);
    case 0x39:
      v35 = *(a1 + 32);

      return _readSelectStmt(v35);
    case 0x3A:
      v55 = *(a1 + 32);

      return _readAlterTableStmt(v55);
    case 0x3B:
      v41 = *(a1 + 32);

      return _readAlterTableCmd(v41);
    case 0x3C:
      v14 = *(a1 + 32);

      return _readAlterDomainStmt(v14);
    case 0x3D:
      v232 = *(a1 + 32);

      return _readSetOperationStmt(v232);
    case 0x3E:
      v228 = *(a1 + 32);

      return _readGrantStmt(v228);
    case 0x3F:
      v231 = *(a1 + 32);

      return _readGrantRoleStmt(v231);
    case 0x40:
      v214 = *(a1 + 32);

      return _readAlterDefaultPrivilegesStmt(v214);
    case 0x41:
      v67 = *(a1 + 32);

      return _readClosePortalStmt(v67);
    case 0x42:
      v38 = *(a1 + 32);

      return _readClusterStmt(v38);
    case 0x43:
      v46 = *(a1 + 32);

      return _readCopyStmt(v46);
    case 0x44:
      v229 = *(a1 + 32);

      return _readCreateStmt(v229);
    case 0x45:
      v22 = *(a1 + 32);

      return _readDefineStmt(v22);
    case 0x46:
      v48 = *(a1 + 32);

      return _readDropStmt(v48);
    case 0x47:
      v54 = *(a1 + 32);

      return _readTruncateStmt(v54);
    case 0x48:
      v199 = *(a1 + 32);

      return _readCommentStmt(v199);
    case 0x49:
      v121 = *(a1 + 32);

      return _readFetchStmt(v121);
    case 0x4A:
      v57 = *(a1 + 32);

      return _readIndexStmt(v57);
    case 0x4B:
      v69 = *(a1 + 32);

      return _readCreateFunctionStmt(v69);
    case 0x4C:
      v122 = *(a1 + 32);

      return _readAlterFunctionStmt(v122);
    case 0x4D:
      v29 = *(a1 + 32);

      return _readDoStmt(v29);
    case 0x4E:
      v86 = *(a1 + 32);

      return _readRenameStmt(v86);
    case 0x4F:
      v30 = *(a1 + 32);

      return _readRuleStmt(v30);
    case 0x50:
      v210 = *(a1 + 32);

      return _readNotifyStmt(v210);
    case 0x51:
      v178 = *(a1 + 32);

      return _readListenStmt(v178);
    case 0x52:
      v155 = *(a1 + 32);

      return _readUnlistenStmt(v155);
    case 0x53:
      v71 = *(a1 + 32);

      return _readTransactionStmt(v71);
    case 0x54:
      v189 = *(a1 + 32);

      return _readViewStmt(v189);
    case 0x55:
      v207 = *(a1 + 32);

      return _readLoadStmt(v207);
    case 0x56:
      v226 = *(a1 + 32);

      return _readCreateDomainStmt(v226);
    case 0x57:
      v85 = *(a1 + 32);

      return _readCreatedbStmt(v85);
    case 0x58:
      v32 = *(a1 + 32);

      return _readDropdbStmt(v32);
    case 0x59:
      v40 = *(a1 + 32);

      return _readVacuumStmt(v40);
    case 0x5A:
      v180 = *(a1 + 32);

      return _readExplainStmt(v180);
    case 0x5B:
      v90 = *(a1 + 32);

      return _readCreateTableAsStmt(v90);
    case 0x5C:
      v204 = *(a1 + 32);

      return _readCreateSeqStmt(v204);
    case 0x5D:
      v216 = *(a1 + 32);

      return _readAlterSeqStmt(v216);
    case 0x5E:
      v23 = *(a1 + 32);

      return _readVariableSetStmt(v23);
    case 0x5F:
      v19 = *(a1 + 32);

      return _readVariableShowStmt(v19);
    case 0x60:
      v91 = *(a1 + 32);

      return _readDiscardStmt(v91);
    case 0x61:
      v102 = *(a1 + 32);

      return _readCreateTrigStmt(v102);
    case 0x62:
      v157 = *(a1 + 32);

      return _readCreatePLangStmt(v157);
    case 0x63:
      v110 = *(a1 + 32);

      return _readCreateRoleStmt(v110);
    case 0x64:
      v156 = *(a1 + 32);

      return _readAlterRoleStmt(v156);
    case 0x65:
      v124 = *(a1 + 32);

      return _readDropRoleStmt(v124);
    case 0x66:
      v185 = *(a1 + 32);

      return _readLockStmt(v185);
    case 0x67:
      v20 = *(a1 + 32);

      return _readConstraintsSetStmt(v20);
    case 0x68:
      v34 = *(a1 + 32);

      return _readReindexStmt(v34);
    case 0x69:
      v105 = CurrentMemoryContext();
      v5 = MemoryContextAllocZero(*v105, 4uLL);
      v1 = v5;
      v6 = 284;
      goto LABEL_498;
    case 0x6A:
      v50 = *(a1 + 32);

      return _readCreateSchemaStmt(v50);
    case 0x6B:
      v162 = *(a1 + 32);

      return _readAlterDatabaseStmt(v162);
    case 0x6C:
      v164 = *(a1 + 32);

      return _readAlterDatabaseSetStmt(v164);
    case 0x6D:
      v99 = *(a1 + 32);

      return _readAlterRoleSetStmt(v99);
    case 0x6E:
      v174 = *(a1 + 32);

      return _readCreateConversionStmt(v174);
    case 0x6F:
      v161 = *(a1 + 32);

      return _readCreateCastStmt(v161);
    case 0x70:
      v70 = *(a1 + 32);

      return _readCreateOpClassStmt(v70);
    case 0x71:
      v73 = *(a1 + 32);

      return _readCreateOpFamilyStmt(v73);
    case 0x72:
      v163 = *(a1 + 32);

      return _readAlterOpFamilyStmt(v163);
    case 0x73:
      v179 = *(a1 + 32);

      return _readPrepareStmt(v179);
    case 0x74:
      v31 = *(a1 + 32);

      return _readExecuteStmt(v31);
    case 0x75:
      v39 = *(a1 + 32);

      return _readDeallocateStmt(v39);
    case 0x76:
      v72 = *(a1 + 32);

      return _readDeclareCursorStmt(v72);
    case 0x77:
      v79 = *(a1 + 32);

      return _readCreateTableSpaceStmt(v79);
    case 0x78:
      v44 = *(a1 + 32);

      return _readDropTableSpaceStmt(v44);
    case 0x79:
      v52 = *(a1 + 32);

      return _readAlterObjectDependsStmt(v52);
    case 0x7A:
      v192 = *(a1 + 32);

      return _readAlterObjectSchemaStmt(v192);
    case 0x7B:
      v194 = *(a1 + 32);

      return _readAlterOwnerStmt(v194);
    case 0x7C:
      v65 = *(a1 + 32);

      return _readAlterOperatorStmt(v65);
    case 0x7D:
      v196 = *(a1 + 32);

      return _readAlterTypeStmt(v196);
    case 0x7E:
      v202 = *(a1 + 32);

      return _readDropOwnedStmt(v202);
    case 0x7F:
      v217 = *(a1 + 32);

      return _readReassignOwnedStmt(v217);
    case 0x80:
      v131 = *(a1 + 32);

      return _readCompositeTypeStmt(v131);
    case 0x81:
      v211 = *(a1 + 32);

      return _readCreateEnumStmt(v211);
    case 0x82:
      v51 = *(a1 + 32);

      return _readCreateRangeStmt(v51);
    case 0x83:
      v200 = *(a1 + 32);

      return _readAlterEnumStmt(v200);
    case 0x84:
      v134 = *(a1 + 32);

      return _readAlterTSDictionaryStmt(v134);
    case 0x85:
      v58 = *(a1 + 32);

      return _readAlterTSConfigurationStmt(v58);
    case 0x86:
      v130 = *(a1 + 32);

      return _readCreateFdwStmt(v130);
    case 0x87:
      v43 = *(a1 + 32);

      return _readAlterFdwStmt(v43);
    case 0x88:
      v205 = *(a1 + 32);

      return _readCreateForeignServerStmt(v205);
    case 0x89:
      v206 = *(a1 + 32);

      return _readAlterForeignServerStmt(v206);
    case 0x8A:
      v62 = *(a1 + 32);

      return _readCreateUserMappingStmt(v62);
    case 0x8B:
      v190 = *(a1 + 32);

      return _readAlterUserMappingStmt(v190);
    case 0x8C:
      v160 = *(a1 + 32);

      return _readDropUserMappingStmt(v160);
    case 0x8D:
      v158 = *(a1 + 32);

      return _readAlterTableSpaceOptionsStmt(v158);
    case 0x8E:
      v36 = *(a1 + 32);

      return _readAlterTableMoveAllStmt(v36);
    case 0x8F:
      v42 = *(a1 + 32);

      return _readSecLabelStmt(v42);
    case 0x90:
      v103 = *(a1 + 32);

      return _readCreateForeignTableStmt(v103);
    case 0x91:
      v106 = *(a1 + 32);

      return _readImportForeignSchemaStmt(v106);
    case 0x92:
      v75 = *(a1 + 32);

      return _readCreateExtensionStmt(v75);
    case 0x93:
      v49 = *(a1 + 32);

      return _readAlterExtensionStmt(v49);
    case 0x94:
      v195 = *(a1 + 32);

      return _readAlterExtensionContentsStmt(v195);
    case 0x95:
      v56 = *(a1 + 32);

      return _readCreateEventTrigStmt(v56);
    case 0x96:
      v136 = *(a1 + 32);

      return _readAlterEventTrigStmt(v136);
    case 0x97:
      v82 = *(a1 + 32);

      return _readRefreshMatViewStmt(v82);
    case 0x98:
      v191 = *(a1 + 32);

      return _readReplicaIdentityStmt(v191);
    case 0x99:
      v188 = *(a1 + 32);

      return _readAlterSystemStmt(v188);
    case 0x9A:
      v181 = *(a1 + 32);

      return _readCreatePolicyStmt(v181);
    case 0x9B:
      v76 = *(a1 + 32);

      return _readAlterPolicyStmt(v76);
    case 0x9C:
      v53 = *(a1 + 32);

      return _readCreateTransformStmt(v53);
    case 0x9D:
      v87 = *(a1 + 32);

      return _readCreateAmStmt(v87);
    case 0x9E:
      v198 = *(a1 + 32);

      return _readCreatePublicationStmt(v198);
    case 0x9F:
      v93 = *(a1 + 32);

      return _readAlterPublicationStmt(v93);
    case 0xA0:
      v74 = *(a1 + 32);

      return _readCreateSubscriptionStmt(v74);
    case 0xA1:
      v140 = *(a1 + 32);

      return _readAlterSubscriptionStmt(v140);
    case 0xA2:
      v112 = *(a1 + 32);

      return _readDropSubscriptionStmt(v112);
    case 0xA3:
      v125 = *(a1 + 32);

      return _readCreateStatsStmt(v125);
    case 0xA4:
      v141 = *(a1 + 32);

      return _readAlterCollationStmt(v141);
    case 0xA5:
      v138 = *(a1 + 32);

      return _readCallStmt(v138);
    case 0xA6:
      v111 = *(a1 + 32);

      return _readAlterStatsStmt(v111);
    case 0xA7:
      v170 = *(a1 + 32);

      return _readAExpr(v170);
    case 0xA8:
      v101 = *(a1 + 32);

      return _readColumnRef(v101);
    case 0xA9:
      v167 = *(a1 + 32);
      v168 = CurrentMemoryContext();
      result = MemoryContextAllocZero(*v168, 0xCuLL);
      *result = 348;
      result[1] = *(v167 + 24);
      result[2] = *(v167 + 28);
      return result;
    case 0xAA:
      v81 = *(a1 + 32);

      return _readAConst(v81);
    case 0xAB:
      v182 = *(a1 + 32);

      return _readFuncCall(v182);
    case 0xAC:
      v177 = CurrentMemoryContext();
      v5 = MemoryContextAllocZero(*v177, 4uLL);
      v1 = v5;
      v6 = 351;
      goto LABEL_498;
    case 0xAD:
      v78 = *(a1 + 32);

      return _readAIndices(v78);
    case 0xAE:
      v186 = *(a1 + 32);

      return _readAIndirection(v186);
    case 0xAF:
      v193 = *(a1 + 32);

      return _readAArrayExpr(v193);
    case 0xB0:
      v59 = *(a1 + 32);

      return _readResTarget(v59);
    case 0xB1:
      v107 = *(a1 + 32);

      return _readMultiAssignRef(v107);
    case 0xB2:
      v98 = *(a1 + 32);

      return _readTypeCast(v98);
    case 0xB3:
      v80 = *(a1 + 32);

      return _readCollateClause(v80);
    case 0xB4:
      v187 = *(a1 + 32);

      return _readSortBy(v187);
    case 0xB5:
      v153 = *(a1 + 32);

      return _readWindowDef(v153);
    case 0xB6:
      v94 = *(a1 + 32);

      return _readRangeSubselect(v94);
    case 0xB7:
      v64 = *(a1 + 32);

      return _readRangeFunction(v64);
    case 0xB8:
      v169 = *(a1 + 32);

      return _readRangeTableSample(v169);
    case 0xB9:
      v135 = *(a1 + 32);

      return _readRangeTableFunc(v135);
    case 0xBA:
      v109 = *(a1 + 32);

      return _readRangeTableFuncCol(v109);
    case 0xBB:
      v165 = *(a1 + 32);

      return _readTypeName(v165);
    case 0xBC:
      v175 = *(a1 + 32);

      return _readColumnDef(v175);
    case 0xBD:
      v77 = *(a1 + 32);

      return _readIndexElem(v77);
    case 0xBE:
      v84 = *(a1 + 32);

      return _readConstraint(v84);
    case 0xBF:
      v83 = *(a1 + 32);

      return _readDefElem(v83);
    case 0xC0:
      v89 = *(a1 + 32);

      return _readRangeTblEntry(v89);
    case 0xC1:
      v96 = *(a1 + 32);

      return _readRangeTblFunction(v96);
    case 0xC2:
      v150 = *(a1 + 32);

      return _readTableSampleClause(v150);
    case 0xC3:
      v132 = *(a1 + 32);

      return _readWithCheckOption(v132);
    case 0xC4:
      v149 = *(a1 + 32);

      return _readSortGroupClause(v149);
    case 0xC5:
      v173 = *(a1 + 32);

      return _readGroupingSet(v173);
    case 0xC6:
      v172 = *(a1 + 32);

      return _readWindowClause(v172);
    case 0xC7:
      v88 = *(a1 + 32);

      return _readObjectWithArgs(v88);
    case 0xC8:
      v176 = *(a1 + 32);

      return _readAccessPriv(v176);
    case 0xC9:
      v117 = *(a1 + 32);

      return _readCreateOpClassItem(v117);
    case 0xCA:
      v119 = *(a1 + 32);

      return _readTableLikeClause(v119);
    case 0xCB:
      v171 = *(a1 + 32);

      return _readFunctionParameter(v171);
    case 0xCC:
      v159 = *(a1 + 32);

      return _readLockingClause(v159);
    case 0xCD:
      v142 = *(a1 + 32);

      return _readRowMarkClause(v142);
    case 0xCE:
      v137 = *(a1 + 32);

      return _readXmlSerialize(v137);
    case 0xCF:
      v166 = *(a1 + 32);

      return _readWithClause(v166);
    case 0xD0:
      v146 = *(a1 + 32);

      return _readInferClause(v146);
    case 0xD1:
      v133 = *(a1 + 32);

      return _readOnConflictClause(v133);
    case 0xD2:
      v92 = *(a1 + 32);

      return _readCommonTableExpr(v92);
    case 0xD3:
      v123 = *(a1 + 32);

      return _readRoleSpec(v123);
    case 0xD4:
      v95 = *(a1 + 32);

      return _readTriggerTransition(v95);
    case 0xD5:
      v143 = *(a1 + 32);

      return _readPartitionElem(v143);
    case 0xD6:
      v113 = *(a1 + 32);

      return _readPartitionSpec(v113);
    case 0xD7:
      v104 = *(a1 + 32);

      return _readPartitionBoundSpec(v104);
    case 0xD8:
      v147 = *(a1 + 32);

      return _readPartitionRangeDatum(v147);
    case 0xD9:
      v115 = *(a1 + 32);

      return _readPartitionCmd(v115);
    case 0xDA:
      v148 = *(a1 + 32);

      return _readVacuumRelation(v148);
    case 0xDB:
      v127 = *(a1 + 32);

      return _readInlineCodeBlock(v127);
    case 0xDC:
      v144 = *(a1 + 32);
      v145 = CurrentMemoryContext();
      result = MemoryContextAllocZeroAligned(*v145, 8uLL);
      *result = 416;
      *(result + 4) = *(v144 + 24) != 0;
      return result;
    case 0xDD:
      v139 = *(*(a1 + 32) + 24);

      return makeInteger(v139);
    case 0xDE:
      v108 = pstrdup(*(*(a1 + 32) + 24));

      return makeFloat(v108);
    case 0xDF:
      v126 = pstrdup(*(*(a1 + 32) + 24));

      return makeString(v126);
    case 0xE0:
      v120 = pstrdup(*(*(a1 + 32) + 24));

      return makeBitString(v120);
    case 0xE1:
      v128 = CurrentMemoryContext();
      v5 = MemoryContextAllocZeroAligned(*v128, 0x10uLL);
      v1 = v5;
      v6 = 225;
LABEL_498:
      *v5 = v6;
LABEL_499:
      result = v1;
      break;
    case 0xE2:
      v129 = *(a1 + 32);

      result = _readList(v129);
      break;
    default:
      _readNode_cold_1((a1 + 24));
  }

  return result;
}

unint64_t _readAlias(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *v3 = 102;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 32) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 40) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 32) > v9);
    }
  }

  return v3;
}

unint64_t _readRangeVar(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 103;
  v4 = *(a1 + 24);
  if (v4 && *v4)
  {
    *(v3 + 8) = pstrdup(v4);
  }

  v5 = *(a1 + 32);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  v6 = *(a1 + 40);
  if (v6 && *v6)
  {
    *(v3 + 24) = pstrdup(v6);
  }

  *(v3 + 32) = *(a1 + 48) != 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *v7;
    if (v8)
    {
      *(v3 + 33) = v8;
    }
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    *(v3 + 40) = _readAlias(v9);
  }

  *(v3 + 48) = *(a1 + 72);
  return v3;
}

unint64_t _readTableFunc(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x68uLL);
  *v3 = 104;
  if (*(a1 + 24))
  {
    Node = _readNode(**(a1 + 32));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 24) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 32) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 24) > v8);
    }
  }

  if (*(a1 + 40))
  {
    v10 = _readNode(**(a1 + 48));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 40) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 48) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 40) > v14);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    *(v3 + 24) = _readNode(v16);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    *(v3 + 32) = _readNode(v17);
  }

  if (*(a1 + 72))
  {
    v18 = _readNode(**(a1 + 80));
    list_make1_impl(226, v18);
    *(v3 + 40) = v19;
    if (*(a1 + 72) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 80) + 8 * v22));
        v20 = lappend(v20, v23);
        *(v3 + 40) = v20;
        v22 = v21++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  if (*(a1 + 88))
  {
    v24 = _readNode(**(a1 + 96));
    list_make1_impl(226, v24);
    *(v3 + 48) = v25;
    if (*(a1 + 88) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 96) + 8 * v28));
        v26 = lappend(v26, v29);
        *(v3 + 48) = v26;
        v28 = v27++;
      }

      while (*(a1 + 88) > v28);
    }
  }

  if (*(a1 + 104))
  {
    v30 = _readNode(**(a1 + 112));
    list_make1_impl(226, v30);
    *(v3 + 56) = v31;
    if (*(a1 + 104) >= 2uLL)
    {
      v32 = v31;
      v33 = 2;
      v34 = 1;
      do
      {
        v35 = _readNode(*(*(a1 + 112) + 8 * v34));
        v32 = lappend(v32, v35);
        *(v3 + 56) = v32;
        v34 = v33++;
      }

      while (*(a1 + 104) > v34);
    }
  }

  if (*(a1 + 120))
  {
    v36 = _readNode(**(a1 + 128));
    list_make1_impl(226, v36);
    *(v3 + 64) = v37;
    if (*(a1 + 120) >= 2uLL)
    {
      v38 = v37;
      v39 = 2;
      v40 = 1;
      do
      {
        v41 = _readNode(*(*(a1 + 128) + 8 * v40));
        v38 = lappend(v38, v41);
        *(v3 + 64) = v38;
        v40 = v39++;
      }

      while (*(a1 + 120) > v40);
    }
  }

  if (*(a1 + 136))
  {
    v42 = _readNode(**(a1 + 144));
    list_make1_impl(226, v42);
    *(v3 + 72) = v43;
    if (*(a1 + 136) >= 2uLL)
    {
      v44 = v43;
      v45 = 2;
      v46 = 1;
      do
      {
        v47 = _readNode(*(*(a1 + 144) + 8 * v46));
        v44 = lappend(v44, v47);
        *(v3 + 72) = v44;
        v46 = v45++;
      }

      while (*(a1 + 136) > v46);
    }
  }

  if (*(a1 + 152))
  {
    v48 = _readNode(**(a1 + 160));
    list_make1_impl(226, v48);
    *(v3 + 80) = v49;
    if (*(a1 + 152) >= 2uLL)
    {
      v50 = v49;
      v51 = 2;
      v52 = 1;
      do
      {
        v53 = _readNode(*(*(a1 + 160) + 8 * v52));
        v50 = lappend(v50, v53);
        *(v3 + 80) = v50;
        v52 = v51++;
      }

      while (*(a1 + 152) > v52);
    }
  }

  *(v3 + 96) = *(a1 + 184);
  *(v3 + 100) = *(a1 + 188);
  return v3;
}

unint64_t _readVar(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *result = 106;
  *(result + 4) = a1[8];
  *(result + 8) = a1[9];
  *(result + 12) = a1[10];
  *(result + 16) = a1[11];
  *(result + 20) = a1[12];
  *(result + 24) = a1[13];
  *(result + 28) = a1[14];
  *(result + 32) = a1[15];
  *(result + 36) = a1[16];
  return result;
}

_DWORD *_readParam(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZero(*v2, 0x1CuLL);
  *result = 108;
  v4 = a1[8];
  v5 = v4 - 2;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    v6 = 0;
  }

  result[1] = v6;
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  result[5] = a1[12];
  result[6] = a1[13];
  return result;
}

unint64_t _readAggref(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x58uLL);
  *v3 = 109;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44);
  *(v3 + 20) = *(a1 + 48);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 24) = v5;
    if (*(a1 + 56) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 64) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 24) = v6;
        v8 = v7++;
      }

      while (*(a1 + 56) > v8);
    }
  }

  if (*(a1 + 72))
  {
    v10 = _readNode(**(a1 + 80));
    list_make1_impl(226, v10);
    *(v3 + 32) = v11;
    if (*(a1 + 72) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 80) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 32) = v12;
        v14 = v13++;
      }

      while (*(a1 + 72) > v14);
    }
  }

  if (*(a1 + 88))
  {
    v16 = _readNode(**(a1 + 96));
    list_make1_impl(226, v16);
    *(v3 + 40) = v17;
    if (*(a1 + 88) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 96) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v3 + 40) = v18;
        v20 = v19++;
      }

      while (*(a1 + 88) > v20);
    }
  }

  if (*(a1 + 104))
  {
    v22 = _readNode(**(a1 + 112));
    list_make1_impl(226, v22);
    *(v3 + 48) = v23;
    if (*(a1 + 104) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 112) + 8 * v26));
        v24 = lappend(v24, v27);
        *(v3 + 48) = v24;
        v26 = v25++;
      }

      while (*(a1 + 104) > v26);
    }
  }

  if (*(a1 + 120))
  {
    v28 = _readNode(**(a1 + 128));
    list_make1_impl(226, v28);
    *(v3 + 56) = v29;
    if (*(a1 + 120) >= 2uLL)
    {
      v30 = v29;
      v31 = 2;
      v32 = 1;
      do
      {
        v33 = _readNode(*(*(a1 + 128) + 8 * v32));
        v30 = lappend(v30, v33);
        *(v3 + 56) = v30;
        v32 = v31++;
      }

      while (*(a1 + 120) > v32);
    }
  }

  v34 = *(a1 + 136);
  if (v34)
  {
    *(v3 + 64) = _readNode(v34);
  }

  *(v3 + 72) = *(a1 + 144) != 0;
  *(v3 + 73) = *(a1 + 148) != 0;
  v35 = *(a1 + 152);
  if (v35)
  {
    v36 = *v35;
    if (v36)
    {
      *(v3 + 74) = v36;
    }
  }

  *(v3 + 76) = *(a1 + 160);
  v37 = *(a1 + 164);
  if (v37 == 2)
  {
    v38 = 6;
  }

  else
  {
    v38 = 0;
  }

  if (v37 == 3)
  {
    v39 = 9;
  }

  else
  {
    v39 = v38;
  }

  *(v3 + 80) = v39;
  *(v3 + 84) = *(a1 + 168);
  return v3;
}

unint64_t _readGroupingFunc(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 110;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 32) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 40) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  if (*(a1 + 48))
  {
    v10 = _readNode(**(a1 + 56));
    list_make1_impl(226, v10);
    *(v3 + 16) = v11;
    if (*(a1 + 48) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 56) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 16) = v12;
        v14 = v13++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  if (*(a1 + 64))
  {
    v16 = _readNode(**(a1 + 72));
    list_make1_impl(226, v16);
    *(v3 + 24) = v17;
    if (*(a1 + 64) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 72) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v3 + 24) = v18;
        v20 = v19++;
      }

      while (*(a1 + 64) > v20);
    }
  }

  *(v3 + 32) = *(a1 + 80);
  *(v3 + 36) = *(a1 + 84);
  return v3;
}

unint64_t _readWindowFunc(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 111;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v5;
    if (*(a1 + 48) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 56) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 24) = v6;
        v8 = v7++;
      }

      while (*(a1 + 48) > v8);
    }
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    *(v3 + 32) = _readNode(v10);
  }

  *(v3 + 40) = *(a1 + 72);
  *(v3 + 44) = *(a1 + 76) != 0;
  *(v3 + 45) = *(a1 + 80) != 0;
  *(v3 + 48) = *(a1 + 84);
  return v3;
}

unint64_t _readSubscriptingRef(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  *v3 = 112;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v5;
    if (*(a1 + 48) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 56) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 24) = v6;
        v8 = v7++;
      }

      while (*(a1 + 48) > v8);
    }
  }

  if (*(a1 + 64))
  {
    v10 = _readNode(**(a1 + 72));
    list_make1_impl(226, v10);
    *(v3 + 32) = v11;
    if (*(a1 + 64) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 72) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v3 + 32) = v12;
        v14 = v13++;
      }

      while (*(a1 + 64) > v14);
    }
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    *(v3 + 40) = _readNode(v16);
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    *(v3 + 48) = _readNode(v17);
  }

  return v3;
}

unint64_t _readFuncExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 113;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40) != 0;
  *(v3 + 13) = *(a1 + 44) != 0;
  v5 = *(a1 + 48);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 2;
  }

  *(v3 + 16) = v6;
  *(v3 + 20) = *(a1 + 52);
  *(v3 + 24) = *(a1 + 56);
  if (*(a1 + 64))
  {
    Node = _readNode(**(a1 + 72));
    list_make1_impl(226, Node);
    *(v4 + 32) = v8;
    if (*(a1 + 64) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 72) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v4 + 32) = v9;
        v11 = v10++;
      }

      while (*(a1 + 64) > v11);
    }
  }

  *(v4 + 40) = *(a1 + 80);
  return v4;
}

unint64_t _readNamedArgExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 114;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && *v5)
  {
    *(v3 + 16) = pstrdup(v5);
  }

  *(v3 + 24) = *(a1 + 48);
  *(v3 + 28) = *(a1 + 52);
  return v3;
}

unint64_t _readOpExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 115;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44) != 0;
  *(v3 + 20) = *(a1 + 48);
  *(v3 + 24) = *(a1 + 52);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 32) = v5;
    if (*(a1 + 56) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 64) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 32) = v6;
        v8 = v7++;
      }

      while (*(a1 + 56) > v8);
    }
  }

  *(v3 + 40) = *(a1 + 72);
  return v3;
}

unint64_t _readDistinctExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 116;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44) != 0;
  *(v3 + 20) = *(a1 + 48);
  *(v3 + 24) = *(a1 + 52);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 32) = v5;
    if (*(a1 + 56) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 64) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 32) = v6;
        v8 = v7++;
      }

      while (*(a1 + 56) > v8);
    }
  }

  *(v3 + 40) = *(a1 + 72);
  return v3;
}

unint64_t _readNullIfExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 117;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44) != 0;
  *(v3 + 20) = *(a1 + 48);
  *(v3 + 24) = *(a1 + 52);
  if (*(a1 + 56))
  {
    Node = _readNode(**(a1 + 64));
    list_make1_impl(226, Node);
    *(v3 + 32) = v5;
    if (*(a1 + 56) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 64) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 32) = v6;
        v8 = v7++;
      }

      while (*(a1 + 56) > v8);
    }
  }

  *(v3 + 40) = *(a1 + 72);
  return v3;
}

unint64_t _readScalarArrayOpExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 118;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40) != 0;
  *(v3 + 16) = *(a1 + 44);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v5;
    if (*(a1 + 48) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 56) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 24) = v6;
        v8 = v7++;
      }

      while (*(a1 + 48) > v8);
    }
  }

  *(v3 + 32) = *(a1 + 64);
  return v3;
}

_DWORD *_readBoolExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  v4 = v3;
  *v3 = 119;
  v5 = *(a1 + 32);
  if (v5 == 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 2;
  }

  v3[1] = v6;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v4 + 1) = v8;
    if (*(a1 + 40) >= 2uLL)
    {
      v9 = v8;
      v10 = 2;
      v11 = 1;
      do
      {
        v12 = _readNode(*(*(a1 + 48) + 8 * v11));
        v9 = lappend(v9, v12);
        *(v4 + 1) = v9;
        v11 = v10++;
      }

      while (*(a1 + 40) > v11);
    }
  }

  v4[4] = *(a1 + 56);
  return v4;
}

_DWORD *_readSubLink(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 120;
  v5 = *(a1 + 32);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 7)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v3[2] = *(a1 + 36);
  v8 = *(a1 + 40);
  if (v8)
  {
    *(v4 + 2) = _readNode(v8);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v4 + 3) = v10;
    if (*(a1 + 48) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 56) + 8 * v13));
        v11 = lappend(v11, v14);
        *(v4 + 3) = v11;
        v13 = v12++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    *(v4 + 4) = _readNode(v15);
  }

  v4[10] = *(a1 + 72);
  return v4;
}

_DWORD *_readSubPlan(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x60uLL);
  v4 = v3;
  *v3 = 121;
  v5 = *(a1 + 32);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 7)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 40);
  if (v8)
  {
    *(v4 + 1) = _readNode(v8);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v4 + 2) = v10;
    if (*(a1 + 48) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 56) + 8 * v13));
        v11 = lappend(v11, v14);
        *(v4 + 2) = v11;
        v13 = v12++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  v4[6] = *(a1 + 64);
  v15 = *(a1 + 72);
  if (v15 && *v15)
  {
    *(v4 + 4) = pstrdup(v15);
  }

  v4[10] = *(a1 + 80);
  v4[11] = *(a1 + 84);
  v4[12] = *(a1 + 88);
  *(v4 + 52) = *(a1 + 92) != 0;
  *(v4 + 53) = *(a1 + 96) != 0;
  *(v4 + 54) = *(a1 + 100) != 0;
  if (*(a1 + 104))
  {
    v16 = _readNode(**(a1 + 112));
    list_make1_impl(226, v16);
    *(v4 + 7) = v17;
    if (*(a1 + 104) >= 2uLL)
    {
      v18 = v17;
      v19 = 2;
      v20 = 1;
      do
      {
        v21 = _readNode(*(*(a1 + 112) + 8 * v20));
        v18 = lappend(v18, v21);
        *(v4 + 7) = v18;
        v20 = v19++;
      }

      while (*(a1 + 104) > v20);
    }
  }

  if (*(a1 + 120))
  {
    v22 = _readNode(**(a1 + 128));
    list_make1_impl(226, v22);
    *(v4 + 8) = v23;
    if (*(a1 + 120) >= 2uLL)
    {
      v24 = v23;
      v25 = 2;
      v26 = 1;
      do
      {
        v27 = _readNode(*(*(a1 + 128) + 8 * v26));
        v24 = lappend(v24, v27);
        *(v4 + 8) = v24;
        v26 = v25++;
      }

      while (*(a1 + 120) > v26);
    }
  }

  if (*(a1 + 136))
  {
    v28 = _readNode(**(a1 + 144));
    list_make1_impl(226, v28);
    *(v4 + 9) = v29;
    if (*(a1 + 136) >= 2uLL)
    {
      v30 = v29;
      v31 = 2;
      v32 = 1;
      do
      {
        v33 = _readNode(*(*(a1 + 144) + 8 * v32));
        v30 = lappend(v30, v33);
        *(v4 + 9) = v30;
        v32 = v31++;
      }

      while (*(a1 + 136) > v32);
    }
  }

  *(v4 + 10) = *(a1 + 152);
  *(v4 + 11) = *(a1 + 160);
  return v4;
}

unint64_t _readAlternativeSubPlan(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *v3 = 122;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 32) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 40) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  return v3;
}

unint64_t _readFieldSelect(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *result = 123;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 8) = Node;
  }

  *(result + 16) = *(a1 + 40);
  *(result + 20) = *(a1 + 44);
  *(result + 24) = *(a1 + 48);
  *(result + 28) = *(a1 + 52);
  return result;
}

unint64_t _readFieldStore(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 124;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 16) = v6;
    if (*(a1 + 40) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 48) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 16) = v7;
        v9 = v8++;
      }

      while (*(a1 + 40) > v9);
    }
  }

  if (*(a1 + 56))
  {
    v11 = _readNode(**(a1 + 64));
    list_make1_impl(226, v11);
    *(v3 + 24) = v12;
    if (*(a1 + 56) >= 2uLL)
    {
      v13 = v12;
      v14 = 2;
      v15 = 1;
      do
      {
        v16 = _readNode(*(*(a1 + 64) + 8 * v15));
        v13 = lappend(v13, v16);
        *(v3 + 24) = v13;
        v15 = v14++;
      }

      while (*(a1 + 56) > v15);
    }
  }

  *(v3 + 32) = *(a1 + 72);
  return v3;
}

_DWORD *_readRelabelType(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *result = 125;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  result[6] = *(a1 + 48);
  v6 = *(a1 + 52);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  result[7] = v7;
  result[8] = *(a1 + 56);
  return result;
}

_DWORD *_readCoerceViaIO(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *result = 126;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  v6 = *(a1 + 48);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  result[6] = v7;
  result[7] = *(a1 + 52);
  return result;
}

unint64_t _readArrayCoerceExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 127;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  *(v3 + 24) = *(a1 + 48);
  *(v3 + 28) = *(a1 + 52);
  *(v3 + 32) = *(a1 + 56);
  v6 = *(a1 + 60);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  *(v3 + 36) = v7;
  *(v3 + 40) = *(a1 + 64);
  return v3;
}

_DWORD *_readConvertRowtypeExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *result = 128;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  v6 = *(a1 + 44);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  result[5] = v7;
  result[6] = *(a1 + 48);
  return result;
}

_DWORD *_readCollateExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 129;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  return result;
}

unint64_t _readCaseExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 130;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  v4 = *(a1 + 40);
  if (v4)
  {
    *(v3 + 16) = _readNode(v4);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v6;
    if (*(a1 + 48) >= 2uLL)
    {
      v7 = v6;
      v8 = 2;
      v9 = 1;
      do
      {
        v10 = _readNode(*(*(a1 + 56) + 8 * v9));
        v7 = lappend(v7, v10);
        *(v3 + 24) = v7;
        v9 = v8++;
      }

      while (*(a1 + 48) > v9);
    }
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    *(v3 + 32) = _readNode(v11);
  }

  *(v3 + 40) = *(a1 + 72);
  return v3;
}

unint64_t _readCaseWhen(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 131;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(v3 + 16) = _readNode(v5);
  }

  *(v3 + 24) = *(a1 + 48);
  return v3;
}

_DWORD *_readCaseTestExpr(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x10uLL);
  *result = 132;
  result[1] = a1[8];
  result[2] = a1[9];
  result[3] = a1[10];
  return result;
}

unint64_t _readArrayExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 133;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 16) = v5;
    if (*(a1 + 48) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 56) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 16) = v6;
        v8 = v7++;
      }

      while (*(a1 + 48) > v8);
    }
  }

  *(v3 + 24) = *(a1 + 64) != 0;
  *(v3 + 28) = *(a1 + 68);
  return v3;
}

unint64_t _readRowExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 134;
  if (*(a1 + 32))
  {
    Node = _readNode(**(a1 + 40));
    list_make1_impl(226, Node);
    *(v3 + 8) = v5;
    if (*(a1 + 32) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 40) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 8) = v6;
        v8 = v7++;
      }

      while (*(a1 + 32) > v8);
    }
  }

  *(v3 + 16) = *(a1 + 48);
  v10 = *(a1 + 52);
  if (v10 == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = v10 == 2;
  }

  *(v3 + 20) = v11;
  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    *(v3 + 24) = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        *(v3 + 24) = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  *(v3 + 32) = *(a1 + 72);
  return v3;
}

void *_readRowCompareExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  v4 = v3;
  *v3 = 135;
  v5 = *(a1 + 32);
  if ((v5 - 2) >= 5)
  {
    v5 = 1;
  }

  v3[1] = v5;
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    v4[1] = v7;
    if (*(a1 + 40) >= 2uLL)
    {
      v8 = v7;
      v9 = 2;
      v10 = 1;
      do
      {
        v11 = _readNode(*(*(a1 + 48) + 8 * v10));
        v8 = lappend(v8, v11);
        v4[1] = v8;
        v10 = v9++;
      }

      while (*(a1 + 40) > v10);
    }
  }

  if (*(a1 + 56))
  {
    v12 = _readNode(**(a1 + 64));
    list_make1_impl(226, v12);
    v4[2] = v13;
    if (*(a1 + 56) >= 2uLL)
    {
      v14 = v13;
      v15 = 2;
      v16 = 1;
      do
      {
        v17 = _readNode(*(*(a1 + 64) + 8 * v16));
        v14 = lappend(v14, v17);
        v4[2] = v14;
        v16 = v15++;
      }

      while (*(a1 + 56) > v16);
    }
  }

  if (*(a1 + 72))
  {
    v18 = _readNode(**(a1 + 80));
    list_make1_impl(226, v18);
    v4[3] = v19;
    if (*(a1 + 72) >= 2uLL)
    {
      v20 = v19;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = _readNode(*(*(a1 + 80) + 8 * v22));
        v20 = lappend(v20, v23);
        v4[3] = v20;
        v22 = v21++;
      }

      while (*(a1 + 72) > v22);
    }
  }

  if (*(a1 + 88))
  {
    v24 = _readNode(**(a1 + 96));
    list_make1_impl(226, v24);
    v4[4] = v25;
    if (*(a1 + 88) >= 2uLL)
    {
      v26 = v25;
      v27 = 2;
      v28 = 1;
      do
      {
        v29 = _readNode(*(*(a1 + 96) + 8 * v28));
        v26 = lappend(v26, v29);
        v4[4] = v26;
        v28 = v27++;
      }

      while (*(a1 + 88) > v28);
    }
  }

  if (*(a1 + 104))
  {
    v30 = _readNode(**(a1 + 112));
    list_make1_impl(226, v30);
    v4[5] = v31;
    if (*(a1 + 104) >= 2uLL)
    {
      v32 = v31;
      v33 = 2;
      v34 = 1;
      do
      {
        v35 = _readNode(*(*(a1 + 112) + 8 * v34));
        v32 = lappend(v32, v35);
        v4[5] = v32;
        v34 = v33++;
      }

      while (*(a1 + 104) > v34);
    }
  }

  return v4;
}

unint64_t _readCoalesceExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *v3 = 136;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  if (*(a1 + 40))
  {
    Node = _readNode(**(a1 + 48));
    list_make1_impl(226, Node);
    *(v3 + 16) = v5;
    if (*(a1 + 40) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 48) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 16) = v6;
        v8 = v7++;
      }

      while (*(a1 + 40) > v8);
    }
  }

  *(v3 + 24) = *(a1 + 56);
  return v3;
}

unint64_t _readMinMaxExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *v3 = 137;
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 8) = *(a1 + 36);
  *(v3 + 12) = *(a1 + 40);
  *(v3 + 16) = *(a1 + 44) == 2;
  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v3 + 24) = v5;
    if (*(a1 + 48) >= 2uLL)
    {
      v6 = v5;
      v7 = 2;
      v8 = 1;
      do
      {
        v9 = _readNode(*(*(a1 + 56) + 8 * v8));
        v6 = lappend(v6, v9);
        *(v3 + 24) = v6;
        v8 = v7++;
      }

      while (*(a1 + 48) > v8);
    }
  }

  *(v3 + 32) = *(a1 + 64);
  return v3;
}

_DWORD *_readSQLValueFunction(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZero(*v2, 0x14uLL);
  *result = 138;
  v4 = a1[8];
  v5 = v4 - 2;
  v6 = v4 - 1;
  if (v5 >= 0xE)
  {
    v6 = 0;
  }

  result[1] = v6;
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  return result;
}

_DWORD *_readXmlExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x38uLL);
  v4 = v3;
  *v3 = 139;
  v5 = *(a1 + 32);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 7)
  {
    v7 = 0;
  }

  v3[1] = v7;
  v8 = *(a1 + 40);
  if (v8 && *v8)
  {
    *(v4 + 1) = pstrdup(v8);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v4 + 2) = v10;
    if (*(a1 + 48) >= 2uLL)
    {
      v11 = v10;
      v12 = 2;
      v13 = 1;
      do
      {
        v14 = _readNode(*(*(a1 + 56) + 8 * v13));
        v11 = lappend(v11, v14);
        *(v4 + 2) = v11;
        v13 = v12++;
      }

      while (*(a1 + 48) > v13);
    }
  }

  if (*(a1 + 64))
  {
    v15 = _readNode(**(a1 + 72));
    list_make1_impl(226, v15);
    *(v4 + 3) = v16;
    if (*(a1 + 64) >= 2uLL)
    {
      v17 = v16;
      v18 = 2;
      v19 = 1;
      do
      {
        v20 = _readNode(*(*(a1 + 72) + 8 * v19));
        v17 = lappend(v17, v20);
        *(v4 + 3) = v17;
        v19 = v18++;
      }

      while (*(a1 + 64) > v19);
    }
  }

  if (*(a1 + 80))
  {
    v21 = _readNode(**(a1 + 88));
    list_make1_impl(226, v21);
    *(v4 + 4) = v22;
    if (*(a1 + 80) >= 2uLL)
    {
      v23 = v22;
      v24 = 2;
      v25 = 1;
      do
      {
        v26 = _readNode(*(*(a1 + 88) + 8 * v25));
        v23 = lappend(v23, v26);
        *(v4 + 4) = v23;
        v25 = v24++;
      }

      while (*(a1 + 80) > v25);
    }
  }

  v4[10] = *(a1 + 96) == 2;
  v4[11] = *(a1 + 100);
  v4[12] = *(a1 + 104);
  v4[13] = *(a1 + 108);
  return v4;
}

unint64_t _readNullTest(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x20uLL);
  *result = 140;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 8) = Node;
  }

  *(result + 16) = *(a1 + 40) == 2;
  *(result + 20) = *(a1 + 44) != 0;
  *(result + 24) = *(a1 + 48);
  return result;
}

_DWORD *_readBooleanTest(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 141;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  v6 = *(a1 + 40);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 5)
  {
    v8 = 0;
  }

  result[4] = v8;
  result[5] = *(a1 + 44);
  return result;
}

_DWORD *_readCoerceToDomain(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x28uLL);
  *result = 142;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  result[6] = *(a1 + 48);
  v6 = *(a1 + 52);
  if (v6 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 2;
  }

  result[7] = v7;
  result[8] = *(a1 + 56);
  return result;
}

_DWORD *_readCoerceToDomainValue(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZero(*v2, 0x14uLL);
  *result = 143;
  result[1] = a1[8];
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  return result;
}

_DWORD *_readSetToDefault(_DWORD *a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZero(*v2, 0x14uLL);
  *result = 144;
  result[1] = a1[8];
  result[2] = a1[9];
  result[3] = a1[10];
  result[4] = a1[11];
  return result;
}

_DWORD *_readCurrentOfExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 145;
  result[1] = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 && *v4)
  {
    v5 = result;
    v6 = pstrdup(*(a1 + 40));
    result = v5;
    *(v5 + 1) = v6;
  }

  result[4] = *(a1 + 48);
  return result;
}

_DWORD *_readInferenceElem(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  result = MemoryContextAllocZeroAligned(*v2, 0x18uLL);
  *result = 147;
  if (*(a1 + 32))
  {
    v4 = result;
    Node = _readNode(*(a1 + 32));
    result = v4;
    *(v4 + 1) = Node;
  }

  result[4] = *(a1 + 40);
  result[5] = *(a1 + 44);
  return result;
}

unint64_t _readTargetEntry(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x30uLL);
  *v3 = 148;
  v4 = *(a1 + 32);
  if (v4)
  {
    *(v3 + 8) = _readNode(v4);
  }

  *(v3 + 16) = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v5 && *v5)
  {
    *(v3 + 24) = pstrdup(v5);
  }

  *(v3 + 32) = *(a1 + 56);
  *(v3 + 36) = *(a1 + 60);
  *(v3 + 40) = *(a1 + 64);
  *(v3 + 42) = *(a1 + 68) != 0;
  return v3;
}

unint64_t _readJoinExpr(uint64_t a1)
{
  v2 = CurrentMemoryContext();
  v3 = MemoryContextAllocZeroAligned(*v2, 0x40uLL);
  v4 = v3;
  *v3 = 150;
  v5 = *(a1 + 24);
  v6 = v5 - 2;
  v7 = v5 - 1;
  if (v6 >= 7)
  {
    v7 = 0;
  }

  *(v3 + 4) = v7;
  *(v3 + 8) = *(a1 + 28) != 0;
  v8 = *(a1 + 32);
  if (v8)
  {
    *(v4 + 16) = _readNode(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *(v4 + 24) = _readNode(v9);
  }

  if (*(a1 + 48))
  {
    Node = _readNode(**(a1 + 56));
    list_make1_impl(226, Node);
    *(v4 + 32) = v11;
    if (*(a1 + 48) >= 2uLL)
    {
      v12 = v11;
      v13 = 2;
      v14 = 1;
      do
      {
        v15 = _readNode(*(*(a1 + 56) + 8 * v14));
        v12 = lappend(v12, v15);
        *(v4 + 32) = v12;
        v14 = v13++;
      }

      while (*(a1 + 48) > v14);
    }
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    *(v4 + 40) = _readNode(v16);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    *(v4 + 48) = _readAlias(v17);
  }

  *(v4 + 56) = *(a1 + 80);
  return v4;
}