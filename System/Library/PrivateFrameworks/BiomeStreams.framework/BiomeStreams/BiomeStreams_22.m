uint64_t deparseWithClause(_DWORD *a1, uint64_t a2)
{
  result = appendStringInfoString(a1, "WITH ");
  if (*(a2 + 16) == 1)
  {
    result = appendStringInfoString(a1, "RECURSIVE ");
  }

  v5 = *(a2 + 8);
  if (v5 && *(v5 + 4) >= 1)
  {
    for (i = 0; i < *(v5 + 4); ++i)
    {
      v7 = *(v5 + 16) + 8 * i;
      v8 = *v7;
      v9 = quote_identifier(*(*v7 + 8));
      appendStringInfoString(a1, v9);
      v10 = *(v8 + 16);
      if (v10 && *(v10 + 4) >= 1)
      {
        appendStringInfoChar(a1, 40);
        v11 = *(v8 + 16);
        if (v11 && *(v11 + 4) >= 1)
        {
          v12 = 0;
          v13 = 8;
          do
          {
            v14 = *(v11 + 16);
            v15 = quote_identifier(*(*(v14 + 8 * v12) + 8));
            appendStringInfoString(a1, v15);
            v16 = *(v11 + 4);
            if (v14 + v13)
            {
              v17 = v14 + v13 >= (*(v11 + 16) + 8 * v16);
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              appendStringInfoString(a1, ", ");
              v16 = *(v11 + 4);
            }

            ++v12;
            v13 += 8;
          }

          while (v12 < v16);
        }

        appendStringInfoChar(a1, 41);
      }

      appendStringInfoChar(a1, 32);
      appendStringInfoString(a1, "AS ");
      v18 = *(v8 + 24);
      if (v18 == 1)
      {
        v19 = "MATERIALIZED ";
      }

      else
      {
        if (v18 != 2)
        {
          goto LABEL_24;
        }

        v19 = "NOT MATERIALIZED ";
      }

      appendStringInfoString(a1, v19);
LABEL_24:
      appendStringInfoChar(a1, 40);
      v20 = *(v8 + 32);
      v21 = *v20;
      if (*v20 <= 234)
      {
        if (v21 == 233)
        {
          deparseInsertStmt(a1, v20);
        }

        else if (v21 == 234)
        {
          deparseDeleteStmt(a1, v20);
          result = appendStringInfoChar(a1, 41);
          v22 = v7 + 8;
          if (v7 != -8)
          {
            goto LABEL_35;
          }

          continue;
        }

LABEL_34:
        result = appendStringInfoChar(a1, 41);
        v22 = v7 + 8;
        if (v7 != -8)
        {
          goto LABEL_35;
        }

        continue;
      }

      if (v21 != 235)
      {
        if (v21 == 236)
        {
          deparseSelectStmt(a1, v20);
          result = appendStringInfoChar(a1, 41);
          v22 = v7 + 8;
          if (v7 != -8)
          {
            goto LABEL_35;
          }

          continue;
        }

        goto LABEL_34;
      }

      deparseUpdateStmt(a1, v20);
      result = appendStringInfoChar(a1, 41);
      v22 = v7 + 8;
      if (v7 != -8)
      {
LABEL_35:
        if (v22 < *(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4))
        {
          result = appendStringInfoString(a1, ", ");
        }
      }
    }
  }

  v23 = a1[2];
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v25 < 0 == v24)
  {
    v26 = *a1;
    if (*(*a1 + v25) == 32)
    {
      a1[2] = v25;
      *(v26 + v25) = 0;
    }
  }

  return result;
}

uint64_t deparseTargetList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = *(v7 + 24);
      if (!v8)
      {
        deparseTargetList_cold_1();
      }

      if (*v8 == 347)
      {
        v9 = **(*(v8 + 8) + 16);
        if (*v9 == 223)
        {
          v10 = quote_identifier(*(v9 + 8));
          appendStringInfoString(v3, v10);
        }

        else if (*v9 == 351)
        {
          appendStringInfoChar(v3, 42);
        }

        result = deparseOptIndirection(v3, *(v8 + 8), 1);
        if (!*(v7 + 8))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = deparseExpr(v3, *(v7 + 24));
        if (!*(v7 + 8))
        {
          goto LABEL_15;
        }
      }

      appendStringInfoString(v3, " AS ");
      v11 = quote_identifier(*(v7 + 8));
      result = appendStringInfoString(v3, v11);
LABEL_15:
      if (v6 + v5)
      {
        if (v6 + v5 < (*(a2 + 16) + 8 * *(a2 + 4)))
        {
          result = appendStringInfoString(v3, ", ");
        }
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a2 + 4));
  }

  return result;
}

uint64_t deparseAccessPriv(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    if (!strcmp(v4, "select"))
    {
      v5 = "select";
    }

    else if (!strcmp(v4, "references"))
    {
      v5 = "references";
    }

    else if (!strcmp(v4, "create"))
    {
      v5 = "create";
    }

    else
    {
      v5 = quote_identifier(v4);
    }
  }

  else
  {
    v5 = "ALL";
  }

  appendStringInfoString(a1, v5);
  result = appendStringInfoChar(a1, 32);
  v7 = *(a2 + 16);
  if (v7 && *(v7 + 4) >= 1)
  {
    appendStringInfoChar(a1, 40);
    v8 = *(a2 + 16);
    if (v8 && *(v8 + 4) >= 1)
    {
      v9 = 0;
      v10 = 8;
      do
      {
        v11 = *(v8 + 16);
        v12 = quote_identifier(*(*(v11 + 8 * v9) + 8));
        appendStringInfoString(a1, v12);
        v13 = *(v8 + 4);
        if (v11 + v10)
        {
          v14 = v11 + v10 >= (*(v8 + 16) + 8 * v13);
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          appendStringInfoString(a1, ", ");
          v13 = *(v8 + 4);
        }

        ++v9;
        v10 += 8;
      }

      while (v9 < v13);
    }

    result = appendStringInfoChar(a1, 41);
  }

  v15 = *(a1 + 8);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v17 < 0 == v16)
  {
    v18 = *a1;
    if (*(*a1 + v17) == 32)
    {
      *(a1 + 8) = v17;
      *(v18 + v17) = 0;
    }
  }

  return result;
}

uint64_t deparseFunctionWithArgtypesList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      result = deparseFunctionWithArgtypes(v3, *(v6 + 8 * v4));
      v7 = *(a2 + 4);
      if (v6 + v5)
      {
        v8 = v6 + v5 >= (*(a2 + 16) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        result = appendStringInfoString(v3, ", ");
        v7 = *(a2 + 4);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v7);
  }

  return result;
}

unint64_t deparseNumericOnlyList(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = 8;
    do
    {
      v12 = *(a2 + 16);
      v13 = *(v12 + 8 * v10);
      if (*v13 == 222)
      {
        result = appendStringInfoString(v9, *(v13 + 8));
      }

      else if (*v13 == 221)
      {
        result = appendStringInfo(v9, "%d", a3, a4, a5, a6, a7, a8, *(v13 + 8));
      }

      v14 = *(a2 + 4);
      if (v12 + v11)
      {
        v15 = v12 + v11 >= (*(a2 + 16) + 8 * v14);
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        result = appendStringInfoString(v9, ", ");
        v14 = *(a2 + 4);
      }

      ++v10;
      v11 += 8;
    }

    while (v10 < v14);
  }

  return result;
}

uint64_t deparseSetClauseList(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (*(a2 + 4) >= 1)
    {
      v3 = result;
      v4 = 0;
      for (i = 0; i < *(v2 + 4); ++i)
      {
        if (v4 >= 1)
        {
          --v4;
        }

        else
        {
          v6 = *(v2 + 16);
          if (i)
          {
            appendStringInfoString(v3, ", ");
          }

          v7 = (v6 + 8 * i);
          v8 = *v7;
          v28 = *(*v7 + 24);
          if (*v28 == 356)
          {
            v26 = i;
            appendStringInfoString(v3, "(");
            v9 = (v7 - *(v2 + 16)) >> 3;
            if (*(v2 + 4) > v9)
            {
              while (1)
              {
                v10 = *(v2 + 16) + 8 * v9;
                v11 = *v10;
                v12 = quote_identifier(*(*v10 + 8));
                appendStringInfoString(v3, v12);
                v13 = *(v11 + 16);
                if (v13)
                {
                  if (*(v13 + 4) >= 1)
                  {
                    break;
                  }
                }

LABEL_30:
                v2 = a2;
                if (*(v28 + 20) - 1 != v9)
                {
                  v23 = *(a2 + 4);
                  if (v10 != -8 && v10 + 8 < (*(a2 + 16) + 8 * v23))
                  {
                    appendStringInfoString(v3, ", ");
                    LODWORD(v23) = *(a2 + 4);
                  }

                  LODWORD(v9) = v9 + 1;
                  if (v23 > v9)
                  {
                    continue;
                  }
                }

                goto LABEL_11;
              }

              v14 = 0;
              v15 = 0;
              while (2)
              {
                v18 = *(v13 + 16);
                v19 = *(v18 + (v15 >> 29));
                v20 = *v19;
                if (*v19 == 352)
                {
                  appendStringInfoChar(v3, 91);
                  v21 = *(v19 + 1);
                  if (v21)
                  {
                    deparseExpr(v3, v21);
                  }

                  if (*(v19 + 4) == 1)
                  {
                    appendStringInfoChar(v3, 58);
                  }

                  v22 = *(v19 + 2);
                  if (v22)
                  {
                    deparseExpr(v3, v22);
                  }

                  appendStringInfoChar(v3, 93);
                }

                else
                {
                  if (v20 == 351)
                  {
                    v16 = v3;
                    v17 = ".*";
                    goto LABEL_17;
                  }

                  if (v20 == 223)
                  {
                    appendStringInfoChar(v3, 46);
                    v17 = quote_identifier(*(*(v18 + (v15 >> 29)) + 8));
                    v16 = v3;
LABEL_17:
                    appendStringInfoString(v16, v17);
                  }
                }

                v15 += 0x100000000;
                if (*(v13 + 4) <= ++v14)
                {
                  goto LABEL_30;
                }

                continue;
              }
            }

LABEL_11:
            appendStringInfoString(v3, ") = ");
            result = deparseExpr(v3, *(v28 + 8));
            v4 = *(v28 + 20) - 1;
            i = v26;
          }

          else
          {
            v25 = quote_identifier(*(v8 + 8));
            appendStringInfoString(v3, v25);
            deparseOptIndirection(v3, *(v8 + 16), 0);
            appendStringInfoString(v3, " = ");
            result = deparseExpr(v3, *(v8 + 24));
          }
        }
      }
    }
  }

  return result;
}

void *deparseGroupingSet(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      appendStringInfoString(result, "CUBE (");
      v18 = *(a2 + 8);
      if (v18 && *(v18 + 4) >= 1)
      {
        v19 = 0;
        v20 = 8;
        do
        {
          v21 = *(v18 + 16);
          deparseExpr(v3, *(v21 + 8 * v19));
          v22 = *(v18 + 4);
          if (v21 + v20)
          {
            v23 = v21 + v20 >= (*(v18 + 16) + 8 * v22);
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            appendStringInfoString(v3, ", ");
            v22 = *(v18 + 4);
          }

          ++v19;
          v20 += 8;
        }

        while (v19 < v22);
      }
    }

    else
    {
      if (v4 != 4)
      {
        return result;
      }

      appendStringInfoString(result, "GROUPING SETS (");
      v11 = *(a2 + 8);
      if (v11 && *(v11 + 4) >= 1)
      {
        v12 = 0;
        v13 = 8;
        do
        {
          v14 = *(v11 + 16);
          v15 = *(v14 + 8 * v12);
          if (*v15 == 376)
          {
            deparseGroupingSet(v3);
          }

          else
          {
            deparseExpr(v3, v15);
          }

          v16 = *(v11 + 4);
          if (v14 + v13)
          {
            v17 = v14 + v13 >= (*(v11 + 16) + 8 * v16);
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            appendStringInfoString(v3, ", ");
            v16 = *(v11 + 4);
          }

          ++v12;
          v13 += 8;
        }

        while (v12 < v16);
      }
    }

    goto LABEL_40;
  }

  if (v4)
  {
    if (v4 != 2)
    {
      return result;
    }

    appendStringInfoString(result, "ROLLUP (");
    v5 = *(a2 + 8);
    if (v5 && *(v5 + 4) >= 1)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        v8 = *(v5 + 16);
        deparseExpr(v3, *(v8 + 8 * v6));
        v9 = *(v5 + 4);
        if (v8 + v7)
        {
          v10 = v8 + v7 >= (*(v5 + 16) + 8 * v9);
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          appendStringInfoString(v3, ", ");
          v9 = *(v5 + 4);
        }

        ++v6;
        v7 += 8;
      }

      while (v6 < v9);
    }

LABEL_40:

    return appendStringInfoChar(v3, 41);
  }

  return appendStringInfoString(result, "()");
}

uint64_t deparseTransactionModeList(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 4) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 8;
    do
    {
      v6 = *(a2 + 16);
      v7 = *(v6 + 8 * v4);
      v8 = *(v7 + 16);
      if (!strcmp(v8, "transaction_isolation"))
      {
        v11 = *(*(v7 + 24) + 16);
        appendStringInfoString(v3, "ISOLATION LEVEL ");
        if (!strcmp(v11, "read uncommitted"))
        {
          v10 = "READ UNCOMMITTED";
          goto LABEL_24;
        }

        if (!strcmp(v11, "read committed"))
        {
          v10 = "READ COMMITTED";
          goto LABEL_24;
        }

        if (!strcmp(v11, "repeatable read"))
        {
          v10 = "REPEATABLE READ";
          goto LABEL_24;
        }

        result = strcmp(v11, "serializable");
        if (!result)
        {
          v10 = "SERIALIZABLE";
          goto LABEL_24;
        }
      }

      else
      {
        if (!strcmp(v8, "transaction_read_only"))
        {
          v12 = *(*(v7 + 24) + 16);
          if (v12 == 1)
          {
            v10 = "READ ONLY";
            goto LABEL_24;
          }

          if (!v12)
          {
            v10 = "READ WRITE";
            goto LABEL_24;
          }
        }

        result = strcmp(v8, "transaction_deferrable");
        if (!result)
        {
          v9 = *(*(v7 + 24) + 16);
          if (v9 == 1)
          {
            v10 = "DEFERRABLE";
            goto LABEL_24;
          }

          if (!v9)
          {
            v10 = "NOT DEFERRABLE";
LABEL_24:
            result = appendStringInfoString(v3, v10);
          }
        }
      }

      if (v6 + v5)
      {
        if (v6 + v5 < (*(a2 + 16) + 8 * *(a2 + 4)))
        {
          result = appendStringInfoString(v3, ", ");
        }
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a2 + 4));
  }

  return result;
}

void pg_query_deparse_protobuf_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("deparse: unsupported top-level node type: %u", *v0);
  errfinish("src/pg_query_deparse.c", 9904, "deparseStmt");
  __break(1u);
}

void pg_query_deparse_protobuf_cold_2()
{
  errstart(20, 0);
  errmsg_internal("deparse error in deparseRawStmt: RawStmt with empty Stmt");
  errfinish("src/pg_query_deparse.c", 2278, "deparseRawStmt");
  __break(1u);
}

void deparseSelectStmt_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("deparse: unpermitted node type in c_expr: %d", *v0);
  errfinish("src/pg_query_deparse.c", 375, "deparseCExpr");
  __break(1u);
}

void deparseExpr_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("deparse: unpermitted node type in a_expr/b_expr: %d", *v0);
  errfinish("src/pg_query_deparse.c", 325, "deparseExpr");
  __break(1u);
}

void deparseValue_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("deparse: unrecognized value node type: %d", *v0);
  errfinish("src/pg_query_deparse.c", 9432, "deparseValue");
  __break(1u);
}

void deparseTargetList_cold_1()
{
  errstart(20, 0);
  errmsg_internal("deparse: error in deparseTargetList: ResTarget without val");
  errfinish("src/pg_query_deparse.c", 1417, "deparseTargetList");
  __break(1u);
}

uint64_t pg_query_nodes_to_json(uint64_t a1)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  initStringInfo(&v42);
  if (a1)
  {
    appendStringInfoString(&v42, "{");
    appendStringInfo(&v42, "version:%d,", v8, v9, v10, v11, v12, v13, 130003);
    appendStringInfoString(&v42, "stmts:");
    appendStringInfoChar(&v42, 91);
    if (*(a1 + 4) >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = *(a1 + 16);
        appendStringInfoChar(&v42, 123);
        v23 = *(v16 + 8 * v14);
        if (*(v23 + 8))
        {
          appendStringInfo(&v42, "stmt:", v17, v18, v19, v20, v21, v22, v39);
          _outNode(&v42, *(v23 + 8), v24, v25, v26, v27, v28, v29, v40);
          appendStringInfo(&v42, ",", v30, v31, v32, v33, v34, v35, v41);
        }

        if (*(v23 + 16))
        {
          appendStringInfo(&v42, "stmt_location:%d,", v17, v18, v19, v20, v21, v22, *(v23 + 16));
        }

        if (*(v23 + 20))
        {
          appendStringInfo(&v42, "stmt_len:%d,", v17, v18, v19, v20, v21, v22, *(v23 + 20));
        }

        v36 = v43 - 1;
        if (v43 >= 1 && *(v42 + v36) == 44)
        {
          LODWORD(v43) = v43 - 1;
          *(v42 + v36) = 0;
        }

        appendStringInfoChar(&v42, 125);
        v37 = *(a1 + 4);
        if (v16 + v15 && v16 + v15 < (*(a1 + 16) + 8 * v37))
        {
          appendStringInfoString(&v42, ",");
          v37 = *(a1 + 4);
        }

        ++v14;
        v15 += 8;
      }

      while (v14 < v37);
    }

    appendStringInfoChar(&v42, 93);
    appendStringInfoString(&v42, "}");
  }

  else
  {
    appendStringInfo(&v42, "{version:%d,stmts:[]}", v2, v3, v4, v5, v6, v7, 130003);
  }

  return v42;
}

uint64_t _outRawStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "stmt:", a3, a4, a5, a6, a7, a8, v16);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v17);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "stmt_location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v9, "stmt_len:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  return result;
}

void *_outNode(int *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a2)
  {
    appendStringInfoChar(a1, 123);
    switch(*a2)
    {
      case 102:
        appendStringInfoString(a1, "Alias:{");
        _outAlias(a1, a2, v11, v12, v13, v14, v15, v16, v1357);
        goto LABEL_218;
      case 103:
        appendStringInfoString(a1, "RangeVar:{");
        _outRangeVar(a1, a2, v30, v31, v32, v33, v34, v35);
        goto LABEL_218;
      case 104:
        appendStringInfoString(a1, "TableFunc:{");
        _outTableFunc(a1, a2, v655, v656, v657, v658, v659, v660);
        goto LABEL_218;
      case 105:
        v564 = "Expr:{";
        goto LABEL_217;
      case 106:
        appendStringInfoString(a1, "Var:{");
        _outVar(a1, a2, v108, v109, v110, v111, v112, v113);
        goto LABEL_218;
      case 108:
        appendStringInfoString(a1, "Param:{");
        _outParam(a1, a2, v24, v25, v26, v27, v28, v29);
        goto LABEL_218;
      case 109:
        appendStringInfoString(a1, "Aggref:{");
        _outAggref(a1, a2, v138, v139, v140, v141, v142, v143);
        goto LABEL_218;
      case 110:
        appendStringInfoString(a1, "GroupingFunc:{");
        _outGroupingFunc(a1, a2, v36, v37, v38, v39, v40, v41);
        goto LABEL_218;
      case 111:
        appendStringInfoString(a1, "WindowFunc:{");
        _outWindowFunc(a1, a2, v1309, v1310, v1311, v1312, v1313, v1314);
        goto LABEL_218;
      case 112:
        appendStringInfoString(a1, "SubscriptingRef:{");
        _outSubscriptingRef(a1, a2, v1345, v1346, v1347, v1348, v1349, v1350, v1357);
        goto LABEL_218;
      case 113:
        appendStringInfoString(a1, "FuncExpr:{");
        _outFuncExpr(a1, a2, v1351, v1352, v1353, v1354, v1355, v1356);
        goto LABEL_218;
      case 114:
        appendStringInfoString(a1, "NamedArgExpr:{");
        _outNamedArgExpr(a1, a2, v673, v674, v675, v676, v677, v678);
        goto LABEL_218;
      case 115:
        appendStringInfoString(a1, "OpExpr:{");
        _outOpExpr(a1, a2, v372, v373, v374, v375, v376, v377);
        goto LABEL_218;
      case 116:
        appendStringInfoString(a1, "DistinctExpr:{");
        _outOpExpr(a1, a2, v871, v872, v873, v874, v875, v876);
        goto LABEL_218;
      case 117:
        appendStringInfoString(a1, "NullIfExpr:{");
        _outOpExpr(a1, a2, v1297, v1298, v1299, v1300, v1301, v1302);
        goto LABEL_218;
      case 118:
        appendStringInfoString(a1, "ScalarArrayOpExpr:{");
        _outScalarArrayOpExpr(a1, a2, v258, v259, v260, v261, v262, v263);
        goto LABEL_218;
      case 119:
        appendStringInfoString(a1, "BoolExpr:{");
        _outBoolExpr(a1, a2, v246, v247, v248, v249, v250, v251);
        goto LABEL_218;
      case 120:
        appendStringInfoString(a1, "SubLink:{");
        _outSubLink(a1, a2, v60, v61, v62, v63, v64, v65);
        goto LABEL_218;
      case 121:
        appendStringInfoString(a1, "SubPlan:{");
        _outSubPlan(a1, a2, v54, v55, v56, v57, v58, v59);
        goto LABEL_218;
      case 122:
        appendStringInfoString(a1, "AlternativeSubPlan:{");
        _outAlternativeSubPlan(a1, a2, v1327, v1328, v1329, v1330, v1331, v1332, v1357);
        goto LABEL_218;
      case 123:
        appendStringInfoString(a1, "FieldSelect:{");
        _outFieldSelect(a1, a2, v66, v67, v68, v69, v70, v71);
        goto LABEL_218;
      case 124:
        appendStringInfoString(a1, "FieldStore:{");
        _outFieldStore(a1, a2, v1135, v1136, v1137, v1138, v1139, v1140);
        goto LABEL_218;
      case 125:
        appendStringInfoString(a1, "RelabelType:{");
        _outRelabelType(a1, a2, v354, v355, v356, v357, v358, v359);
        goto LABEL_218;
      case 126:
        appendStringInfoString(a1, "CoerceViaIO:{");
        _outCoerceViaIO(a1, a2, v571, v572, v573, v574, v575, v576);
        goto LABEL_218;
      case 127:
        appendStringInfoString(a1, "ArrayCoerceExpr:{");
        _outArrayCoerceExpr(a1, a2, v78, v79, v80, v81, v82, v83);
        goto LABEL_218;
      case 128:
        appendStringInfoString(a1, "ConvertRowtypeExpr:{");
        _outConvertRowtypeExpr(a1, a2, v1171, v1172, v1173, v1174, v1175, v1176);
        goto LABEL_218;
      case 129:
        appendStringInfoString(a1, "CollateExpr:{");
        _outCollateExpr(a1, a2, v1159, v1160, v1161, v1162, v1163, v1164);
        goto LABEL_218;
      case 130:
        appendStringInfoString(a1, "CaseExpr:{");
        _outCaseExpr(a1, a2, v1243, v1244, v1245, v1246, v1247, v1248);
        goto LABEL_218;
      case 131:
        appendStringInfoString(a1, "CaseWhen:{");
        _outCaseWhen(a1, a2, v1225, v1226, v1227, v1228, v1229, v1230);
        goto LABEL_218;
      case 132:
        appendStringInfoString(a1, "CaseTestExpr:{");
        _outCaseTestExpr(a1, a2, v1051, v1052, v1053, v1054, v1055, v1056);
        goto LABEL_218;
      case 133:
        appendStringInfoString(a1, "ArrayExpr:{");
        _outArrayExpr(a1, a2, v685, v686, v687, v688, v689, v690);
        goto LABEL_218;
      case 134:
        appendStringInfoString(a1, "RowExpr:{");
        _outRowExpr(a1, a2, v1207, v1208, v1209, v1210, v1211, v1212);
        goto LABEL_218;
      case 135:
        appendStringInfoString(a1, "RowCompareExpr:{");
        _outRowCompareExpr(a1, a2, v1201, v1202, v1203, v1204, v1205, v1206, v1357);
        goto LABEL_218;
      case 136:
        appendStringInfoString(a1, "CoalesceExpr:{");
        _outCoalesceExpr(a1, a2, v84, v85, v86, v87, v88, v89);
        goto LABEL_218;
      case 137:
        appendStringInfoString(a1, "MinMaxExpr:{");
        _outMinMaxExpr(a1, a2, v1285, v1286, v1287, v1288, v1289, v1290);
        goto LABEL_218;
      case 138:
        appendStringInfoString(a1, "SQLValueFunction:{");
        _outSQLValueFunction(a1, a2, v1261, v1262, v1263, v1264, v1265, v1266);
        goto LABEL_218;
      case 139:
        appendStringInfoString(a1, "XmlExpr:{");
        _outXmlExpr(a1, a2, v90, v91, v92, v93, v94, v95);
        goto LABEL_218;
      case 140:
        appendStringInfoString(a1, "NullTest:{");
        _outNullTest(a1, a2, v336, v337, v338, v339, v340, v341);
        goto LABEL_218;
      case 141:
        appendStringInfoString(a1, "BooleanTest:{");
        _outBooleanTest(a1, a2, v42, v43, v44, v45, v46, v47);
        goto LABEL_218;
      case 142:
        appendStringInfoString(a1, "CoerceToDomain:{");
        _outCoerceToDomain(a1, a2, v1279, v1280, v1281, v1282, v1283, v1284);
        goto LABEL_218;
      case 143:
        appendStringInfoString(a1, "CoerceToDomainValue:{");
        _outCoerceToDomainValue(a1, a2, v1291, v1292, v1293, v1294, v1295, v1296);
        goto LABEL_218;
      case 144:
        appendStringInfoString(a1, "SetToDefault:{");
        _outCoerceToDomainValue(a1, a2, v174, v175, v176, v177, v178, v179);
        goto LABEL_218;
      case 145:
        appendStringInfoString(a1, "CurrentOfExpr:{");
        _outCurrentOfExpr(a1, a2, v661, v662, v663, v664, v665, v666);
        goto LABEL_218;
      case 146:
        appendStringInfoString(a1, "NextValueExpr:{");
        _outNextValueExpr(a1, a2, v132, v133, v134, v135, v136, v137);
        goto LABEL_218;
      case 147:
        appendStringInfoString(a1, "InferenceElem:{");
        _outInferenceElem(a1, a2, v198, v199, v200, v201, v202, v203);
        goto LABEL_218;
      case 148:
        appendStringInfoString(a1, "TargetEntry:{");
        _outTargetEntry(a1, a2, v1267, v1268, v1269, v1270, v1271, v1272);
        goto LABEL_218;
      case 149:
        appendStringInfoString(a1, "RangeTblRef:{");
        if (a2[1])
        {
          appendStringInfo(a1, "rtindex:%d,", v17, v18, v19, v20, v21, v22, a2[1]);
        }

        goto LABEL_218;
      case 150:
        appendStringInfoString(a1, "JoinExpr:{");
        _outJoinExpr(a1, a2, v48, v49, v50, v51, v52, v53);
        goto LABEL_218;
      case 151:
        appendStringInfoString(a1, "FromExpr:{");
        _outFromExpr(a1, a2, v144, v145, v146, v147, v148, v149, v1357);
        goto LABEL_218;
      case 152:
        appendStringInfoString(a1, "OnConflictExpr:{");
        _outOnConflictExpr(a1, a2, v1273, v1274, v1275, v1276, v1277, v1278, v1357);
        goto LABEL_218;
      case 153:
        appendStringInfoString(a1, "IntoClause:{");
        _outIntoClause(a1, a2, v342, v343, v344, v345, v346, v347);
        goto LABEL_218;
      case 221:
        appendStringInfoString(a1, "Integer:{");
        appendStringInfo(a1, "ival:%d,", v558, v559, v560, v561, v562, v563, a2[2]);
        goto LABEL_218;
      case 222:
        appendStringInfoString(a1, "Float:{");
        _outFloat(a1, a2, v96, v97, v98, v99, v100, v101, v1357);
        goto LABEL_218;
      case 223:
        appendStringInfoString(a1, "String:{");
        _outFloat(a1, a2, v1057, v1058, v1059, v1060, v1061, v1062, v1357);
        goto LABEL_218;
      case 224:
        appendStringInfoString(a1, "BitString:{");
        _outFloat(a1, a2, v889, v890, v891, v892, v893, v894, v1357);
        goto LABEL_218;
      case 225:
        v564 = "Null:{";
        goto LABEL_217;
      case 226:
        appendStringInfoString(a1, "List:{");
        _outList(a1, a2, v877, v878, v879, v880, v881, v882, v1357);
        goto LABEL_218;
      case 227:
        appendStringInfoString(a1, "IntList:{");
        _outIntList(a1, a2, v384, v385, v386, v387, v388, v389, v1357);
        goto LABEL_218;
      case 228:
        appendStringInfoString(a1, "OidList:{");
        _outOidList(a1, a2, v186, v187, v188, v189, v190, v191, v1357);
        goto LABEL_218;
      case 230:
        appendStringInfoString(a1, "RawStmt:{");
        _outRawStmt(a1, a2, v306, v307, v308, v309, v310, v311);
        goto LABEL_218;
      case 231:
        appendStringInfoString(a1, "Query:{");
        _outQuery(a1, a2, v222, v223, v224, v225, v226, v227);
        goto LABEL_218;
      case 233:
        appendStringInfoString(a1, "InsertStmt:{");
        _outInsertStmt(a1, a2, v72, v73, v74, v75, v76, v77);
        goto LABEL_218;
      case 234:
        appendStringInfoString(a1, "DeleteStmt:{");
        _outDeleteStmt(a1, a2, v1339, v1340, v1341, v1342, v1343, v1344, v1357);
        goto LABEL_218;
      case 235:
        appendStringInfoString(a1, "UpdateStmt:{");
        _outUpdateStmt(a1, a2, v1315, v1316, v1317, v1318, v1319, v1320, v1357);
        goto LABEL_218;
      case 236:
        appendStringInfoString(a1, "SelectStmt:{");
        _outSelectStmt(a1, a2, v1333, v1334, v1335, v1336, v1337, v1338, v1357);
        goto LABEL_218;
      case 237:
        appendStringInfoString(a1, "AlterTableStmt:{");
        _outAlterTableStmt(a1, a2, v1237, v1238, v1239, v1240, v1241, v1242);
        goto LABEL_218;
      case 238:
        appendStringInfoString(a1, "AlterTableCmd:{");
        _outAlterTableCmd(a1, a2, v378, v379, v380, v381, v382, v383);
        goto LABEL_218;
      case 239:
        appendStringInfoString(a1, "AlterDomainStmt:{");
        _outAlterDomainStmt(a1, a2, v204, v205, v206, v207, v208, v209);
        goto LABEL_218;
      case 240:
        appendStringInfoString(a1, "SetOperationStmt:{");
        _outSetOperationStmt(a1, a2, v252, v253, v254, v255, v256, v257, v1357);
        goto LABEL_218;
      case 241:
        appendStringInfoString(a1, "GrantStmt:{");
        _outGrantStmt(a1, a2, v1321, v1322, v1323, v1324, v1325, v1326);
        goto LABEL_218;
      case 242:
        appendStringInfoString(a1, "GrantRoleStmt:{");
        _outGrantRoleStmt(a1, a2, v120, v121, v122, v123, v124, v125);
        goto LABEL_218;
      case 243:
        appendStringInfoString(a1, "AlterDefaultPrivilegesStmt:{");
        _outAlterDefaultPrivilegesStmt(a1, a2, v264, v265, v266, v267, v268, v269, v1357);
        goto LABEL_218;
      case 244:
        appendStringInfoString(a1, "ClosePortalStmt:{");
        _outClosePortalStmt(a1, a2, v300, v301, v302, v303, v304, v305, v1357);
        goto LABEL_218;
      case 245:
        appendStringInfoString(a1, "ClusterStmt:{");
        _outClusterStmt(a1, a2, v1147, v1148, v1149, v1150, v1151, v1152);
        goto LABEL_218;
      case 246:
        appendStringInfoString(a1, "CopyStmt:{");
        _outCopyStmt(a1, a2, v703, v704, v705, v706, v707, v708, v1357);
        goto LABEL_218;
      case 247:
        appendStringInfoString(a1, "CreateStmt:{");
        _outCreateStmt(a1, a2, v318, v319, v320, v321, v322, v323);
        goto LABEL_218;
      case 248:
        appendStringInfoString(a1, "DefineStmt:{");
        _outDefineStmt(a1, a2, v390, v391, v392, v393, v394, v395);
        goto LABEL_218;
      case 249:
        appendStringInfoString(a1, "DropStmt:{");
        _outDropStmt(a1, a2, v709, v710, v711, v712, v713, v714);
        goto LABEL_218;
      case 250:
        appendStringInfoString(a1, "TruncateStmt:{");
        _outTruncateStmt(a1, a2, v150, v151, v152, v153, v154, v155);
        goto LABEL_218;
      case 251:
        appendStringInfoString(a1, "CommentStmt:{");
        _outCommentStmt(a1, a2, v492, v493, v494, v495, v496, v497, v1357);
        goto LABEL_218;
      case 252:
        appendStringInfoString(a1, "FetchStmt:{");
        _outFetchStmt(a1, a2, v156, v157, v158, v159, v160, v161);
        goto LABEL_218;
      case 253:
        appendStringInfoString(a1, "IndexStmt:{");
        _outIndexStmt(a1, a2, v1213, v1214, v1215, v1216, v1217, v1218);
        goto LABEL_218;
      case 254:
        appendStringInfoString(a1, "CreateFunctionStmt:{");
        _outCreateFunctionStmt(a1, a2, v1021, v1022, v1023, v1024, v1025, v1026, v1357);
        goto LABEL_218;
      case 255:
        appendStringInfoString(a1, "AlterFunctionStmt:{");
        _outAlterFunctionStmt(a1, a2, v895, v896, v897, v898, v899, v900, v1357);
        goto LABEL_218;
      case 256:
        appendStringInfoString(a1, "DoStmt:{");
        _outDoStmt(a1, a2, v402, v403, v404, v405, v406, v407, v1357);
        goto LABEL_218;
      case 257:
        appendStringInfoString(a1, "RenameStmt:{");
        _outRenameStmt(a1, a2, v1087, v1088, v1089, v1090, v1091, v1092);
        goto LABEL_218;
      case 258:
        appendStringInfoString(a1, "RuleStmt:{");
        _outRuleStmt(a1, a2, v1195, v1196, v1197, v1198, v1199, v1200);
        goto LABEL_218;
      case 259:
        appendStringInfoString(a1, "NotifyStmt:{");
        _outNotifyStmt(a1, a2, v1303, v1304, v1305, v1306, v1307, v1308, v1357);
        goto LABEL_218;
      case 260:
        appendStringInfoString(a1, "ListenStmt:{");
        _outListenStmt(a1, a2, v486, v487, v488, v489, v490, v491, v1357);
        goto LABEL_218;
      case 261:
        appendStringInfoString(a1, "UnlistenStmt:{");
        _outListenStmt(a1, a2, v168, v169, v170, v171, v172, v173, v1357);
        goto LABEL_218;
      case 262:
        appendStringInfoString(a1, "TransactionStmt:{");
        _outTransactionStmt(a1, a2, v216, v217, v218, v219, v220, v221);
        goto LABEL_218;
      case 263:
        appendStringInfoString(a1, "ViewStmt:{");
        _outViewStmt(a1, a2, v1033, v1034, v1035, v1036, v1037, v1038);
        goto LABEL_218;
      case 264:
        appendStringInfoString(a1, "LoadStmt:{");
        _outLoadStmt(a1, a2, v516, v517, v518, v519, v520, v521, v1357);
        goto LABEL_218;
      case 265:
        appendStringInfoString(a1, "CreateDomainStmt:{");
        _outCreateDomainStmt(a1, a2, v1177, v1178, v1179, v1180, v1181, v1182, v1357);
        goto LABEL_218;
      case 266:
        appendStringInfoString(a1, "CreatedbStmt:{");
        _outCreatedbStmt(a1, a2, v1249, v1250, v1251, v1252, v1253, v1254, v1357);
        goto LABEL_218;
      case 267:
        appendStringInfoString(a1, "DropdbStmt:{");
        _outDropdbStmt(a1, a2, v126, v127, v128, v129, v130, v131, v1357);
        goto LABEL_218;
      case 268:
        appendStringInfoString(a1, "VacuumStmt:{");
        _outVacuumStmt(a1, a2, v102, v103, v104, v105, v106, v107);
        goto LABEL_218;
      case 269:
        appendStringInfoString(a1, "ExplainStmt:{");
        _outExplainStmt(a1, a2, v522, v523, v524, v525, v526, v527, v1357);
        goto LABEL_218;
      case 270:
        appendStringInfoString(a1, "CreateTableAsStmt:{");
        _outCreateTableAsStmt(a1, a2, v583, v584, v585, v586, v587, v588);
        goto LABEL_218;
      case 271:
        appendStringInfoString(a1, "CreateSeqStmt:{");
        _outCreateSeqStmt(a1, a2, v907, v908, v909, v910, v911, v912);
        goto LABEL_218;
      case 272:
        appendStringInfoString(a1, "AlterSeqStmt:{");
        _outAlterSeqStmt(a1, a2, v631, v632, v633, v634, v635, v636);
        goto LABEL_218;
      case 273:
        appendStringInfoString(a1, "VariableSetStmt:{");
        _outVariableSetStmt(a1, a2, v901, v902, v903, v904, v905, v906);
        goto LABEL_218;
      case 274:
        appendStringInfoString(a1, "VariableShowStmt:{");
        _outVariableShowStmt(a1, a2, v721, v722, v723, v724, v725, v726, v1357);
        goto LABEL_218;
      case 275:
        appendStringInfoString(a1, "DiscardStmt:{");
        _outDiscardStmt(a1, a2[1], v1063, v1064, v1065, v1066, v1067, v1068);
        goto LABEL_218;
      case 276:
        appendStringInfoString(a1, "CreateTrigStmt:{");
        _outCreateTrigStmt(a1, a2, v114, v115, v116, v117, v118, v119, v1357);
        goto LABEL_218;
      case 277:
        appendStringInfoString(a1, "CreatePLangStmt:{");
        _outCreatePLangStmt(a1, a2, v180, v181, v182, v183, v184, v185);
        goto LABEL_218;
      case 278:
        appendStringInfoString(a1, "CreateRoleStmt:{");
        _outCreateRoleStmt(a1, a2, v601, v602, v603, v604, v605, v606, v1357);
        goto LABEL_218;
      case 279:
        appendStringInfoString(a1, "AlterRoleStmt:{");
        _outAlterRoleStmt(a1, a2, v276, v277, v278, v279, v280, v281);
        goto LABEL_218;
      case 280:
        appendStringInfoString(a1, "DropRoleStmt:{");
        _outDropRoleStmt(a1, a2, v931, v932, v933, v934, v935, v936);
        goto LABEL_218;
      case 281:
        appendStringInfoString(a1, "LockStmt:{");
        _outLockStmt(a1, a2, v943, v944, v945, v946, v947, v948);
        goto LABEL_218;
      case 282:
        appendStringInfoString(a1, "ConstraintsSetStmt:{");
        _outConstraintsSetStmt(a1, a2, v565, v566, v567, v568, v569, v570);
        goto LABEL_218;
      case 283:
        appendStringInfoString(a1, "ReindexStmt:{");
        _outReindexStmt(a1, a2, v997, v998, v999, v1000, v1001, v1002);
        goto LABEL_218;
      case 284:
        v564 = "CheckPointStmt:{";
        goto LABEL_217;
      case 285:
        appendStringInfoString(a1, "CreateSchemaStmt:{");
        _outCreateSchemaStmt(a1, a2, v396, v397, v398, v399, v400, v401);
        goto LABEL_218;
      case 286:
        appendStringInfoString(a1, "AlterDatabaseStmt:{");
        _outCreatedbStmt(a1, a2, v414, v415, v416, v417, v418, v419, v1357);
        goto LABEL_218;
      case 287:
        appendStringInfoString(a1, "AlterDatabaseSetStmt:{");
        _outAlterDatabaseSetStmt(a1, a2, v937, v938, v939, v940, v941, v942, v1357);
        goto LABEL_218;
      case 288:
        appendStringInfoString(a1, "AlterRoleSetStmt:{");
        _outAlterRoleSetStmt(a1, a2, v1027, v1028, v1029, v1030, v1031, v1032, v1357);
        goto LABEL_218;
      case 289:
        appendStringInfoString(a1, "CreateConversionStmt:{");
        _outCreateConversionStmt(a1, a2, v162, v163, v164, v165, v166, v167);
        goto LABEL_218;
      case 290:
        appendStringInfoString(a1, "CreateCastStmt:{");
        _outCreateCastStmt(a1, a2, v210, v211, v212, v213, v214, v215);
        goto LABEL_218;
      case 291:
        appendStringInfoString(a1, "CreateOpClassStmt:{");
        _outCreateOpClassStmt(a1, a2, v408, v409, v410, v411, v412, v413);
        goto LABEL_218;
      case 292:
        appendStringInfoString(a1, "CreateOpFamilyStmt:{");
        _outCreateOpFamilyStmt(a1, a2, v450, v451, v452, v453, v454, v455, v1357);
        goto LABEL_218;
      case 293:
        appendStringInfoString(a1, "AlterOpFamilyStmt:{");
        _outAlterOpFamilyStmt(a1, a2, v240, v241, v242, v243, v244, v245, v1357);
        goto LABEL_218;
      case 294:
        appendStringInfoString(a1, "PrepareStmt:{");
        _outPrepareStmt(a1, a2, v288, v289, v290, v291, v292, v293, v1357);
        goto LABEL_218;
      case 295:
        appendStringInfoString(a1, "ExecuteStmt:{");
        _outExecuteStmt(a1, a2, v1105, v1106, v1107, v1108, v1109, v1110, v1357);
        goto LABEL_218;
      case 296:
        appendStringInfoString(a1, "DeallocateStmt:{");
        _outVariableShowStmt(a1, a2, v1117, v1118, v1119, v1120, v1121, v1122, v1357);
        goto LABEL_218;
      case 297:
        appendStringInfoString(a1, "DeclareCursorStmt:{");
        _outDeclareCursorStmt(a1, a2, v366, v367, v368, v369, v370, v371, v1357);
        goto LABEL_218;
      case 298:
        appendStringInfoString(a1, "CreateTableSpaceStmt:{");
        _outCreateTableSpaceStmt(a1, a2, v1129, v1130, v1131, v1132, v1133, v1134, v1357);
        goto LABEL_218;
      case 299:
        appendStringInfoString(a1, "DropTableSpaceStmt:{");
        _outDropTableSpaceStmt(a1, a2, v1165, v1166, v1167, v1168, v1169, v1170);
        goto LABEL_218;
      case 300:
        appendStringInfoString(a1, "AlterObjectDependsStmt:{");
        _outAlterObjectDependsStmt(a1, a2, v1255, v1256, v1257, v1258, v1259, v1260);
        goto LABEL_218;
      case 301:
        appendStringInfoString(a1, "AlterObjectSchemaStmt:{");
        _outAlterObjectSchemaStmt(a1, a2, v757, v758, v759, v760, v761, v762);
        goto LABEL_218;
      case 302:
        appendStringInfoString(a1, "AlterOwnerStmt:{");
        _outAlterOwnerStmt(a1, a2, v1219, v1220, v1221, v1222, v1223, v1224, v1357);
        goto LABEL_218;
      case 303:
        appendStringInfoString(a1, "AlterOperatorStmt:{");
        _outAlterOperatorStmt(a1, a2, v282, v283, v284, v285, v286, v287, v1357);
        goto LABEL_218;
      case 304:
        appendStringInfoString(a1, "AlterTypeStmt:{");
        _outAlterTypeStmt(a1, a2, v1153, v1154, v1155, v1156, v1157, v1158, v1357);
        goto LABEL_218;
      case 305:
        appendStringInfoString(a1, "DropOwnedStmt:{");
        _outDropOwnedStmt(a1, a2, v775, v776, v777, v778, v779, v780);
        goto LABEL_218;
      case 306:
        appendStringInfoString(a1, "ReassignOwnedStmt:{");
        _outReassignOwnedStmt(a1, a2, v324, v325, v326, v327, v328, v329, v1357);
        goto LABEL_218;
      case 307:
        appendStringInfoString(a1, "CompositeTypeStmt:{");
        _outCompositeTypeStmt(a1, a2, v751, v752, v753, v754, v755, v756, v1357);
        goto LABEL_218;
      case 308:
        appendStringInfoString(a1, "CreateEnumStmt:{");
        _outCreateEnumStmt(a1, a2, v234, v235, v236, v237, v238, v239, v1357);
        goto LABEL_218;
      case 309:
        appendStringInfoString(a1, "CreateRangeStmt:{");
        _outCreateRangeStmt(a1, a2, v1183, v1184, v1185, v1186, v1187, v1188, v1357);
        goto LABEL_218;
      case 310:
        appendStringInfoString(a1, "AlterEnumStmt:{");
        _outAlterEnumStmt(a1, a2, v1189, v1190, v1191, v1192, v1193, v1194);
        goto LABEL_218;
      case 311:
        appendStringInfoString(a1, "AlterTSDictionaryStmt:{");
        _outAlterTSDictionaryStmt(a1, a2, v348, v349, v350, v351, v352, v353, v1357);
        goto LABEL_218;
      case 312:
        appendStringInfoString(a1, "AlterTSConfigurationStmt:{");
        _outAlterTSConfigurationStmt(a1, a2, v1093, v1094, v1095, v1096, v1097, v1098);
        goto LABEL_218;
      case 313:
        appendStringInfoString(a1, "CreateFdwStmt:{");
        _outCreateFdwStmt(a1, a2, v925, v926, v927, v928, v929, v930, v1357);
        goto LABEL_218;
      case 314:
        appendStringInfoString(a1, "AlterFdwStmt:{");
        _outCreateFdwStmt(a1, a2, v913, v914, v915, v916, v917, v918, v1357);
        goto LABEL_218;
      case 315:
        appendStringInfoString(a1, "CreateForeignServerStmt:{");
        _outCreateForeignServerStmt(a1, a2, v192, v193, v194, v195, v196, v197, v1357);
        goto LABEL_218;
      case 316:
        appendStringInfoString(a1, "AlterForeignServerStmt:{");
        _outAlterForeignServerStmt(a1, a2, v228, v229, v230, v231, v232, v233);
        goto LABEL_218;
      case 317:
        appendStringInfoString(a1, "CreateUserMappingStmt:{");
        _outCreateUserMappingStmt(a1, a2, v589, v590, v591, v592, v593, v594, v1357);
        goto LABEL_218;
      case 318:
        appendStringInfoString(a1, "AlterUserMappingStmt:{");
        _outAlterUserMappingStmt(a1, a2, v607, v608, v609, v610, v611, v612, v1357);
        goto LABEL_218;
      case 319:
        appendStringInfoString(a1, "DropUserMappingStmt:{");
        _outDropUserMappingStmt(a1, a2, v426, v427, v428, v429, v430, v431);
        goto LABEL_218;
      case 320:
        appendStringInfoString(a1, "AlterTableSpaceOptionsStmt:{");
        _outAlterTableSpaceOptionsStmt(a1, a2, v270, v271, v272, v273, v274, v275);
        goto LABEL_218;
      case 321:
        appendStringInfoString(a1, "AlterTableMoveAllStmt:{");
        _outAlterTableMoveAllStmt(a1, a2, v1123, v1124, v1125, v1126, v1127, v1128);
        goto LABEL_218;
      case 322:
        appendStringInfoString(a1, "SecLabelStmt:{");
        _outSecLabelStmt(a1, a2, v312, v313, v314, v315, v316, v317, v1357);
        goto LABEL_218;
      case 323:
        appendStringInfoString(a1, "CreateForeignTableStmt:{");
        _outCreateForeignTableStmt(a1, a2, v787, v788, v789, v790, v791, v792, v1357);
        goto LABEL_218;
      case 324:
        appendStringInfoString(a1, "ImportForeignSchemaStmt:{");
        _outImportForeignSchemaStmt(a1, a2, v468, v469, v470, v471, v472, v473, v1357);
        goto LABEL_218;
      case 325:
        appendStringInfoString(a1, "CreateExtensionStmt:{");
        _outCreateExtensionStmt(a1, a2, v1099, v1100, v1101, v1102, v1103, v1104, v1357);
        goto LABEL_218;
      case 326:
        appendStringInfoString(a1, "AlterExtensionStmt:{");
        _outAlterExtensionStmt(a1, a2, v1081, v1082, v1083, v1084, v1085, v1086, v1357);
        goto LABEL_218;
      case 327:
        appendStringInfoString(a1, "AlterExtensionContentsStmt:{");
        _outAlterExtensionContentsStmt(a1, a2, v1039, v1040, v1041, v1042, v1043, v1044, v1357);
        goto LABEL_218;
      case 328:
        appendStringInfoString(a1, "CreateEventTrigStmt:{");
        _outCreateEventTrigStmt(a1, a2, v432, v433, v434, v435, v436, v437, v1357);
        goto LABEL_218;
      case 329:
        appendStringInfoString(a1, "AlterEventTrigStmt:{");
        _outAlterEventTrigStmt(a1, a2, v294, v295, v296, v297, v298, v299);
        goto LABEL_218;
      case 330:
        appendStringInfoString(a1, "RefreshMatViewStmt:{");
        _outRefreshMatViewStmt(a1, a2, v498, v499, v500, v501, v502, v503, v1357);
        goto LABEL_218;
      case 331:
        appendStringInfoString(a1, "ReplicaIdentityStmt:{");
        _outReplicaIdentityStmt(a1, a2, v1141, v1142, v1143, v1144, v1145, v1146, v1357);
        goto LABEL_218;
      case 332:
        appendStringInfoString(a1, "AlterSystemStmt:{");
        _outAlterSystemStmt(a1, a2, v534, v535, v536, v537, v538, v539, v1357);
        goto LABEL_218;
      case 333:
        appendStringInfoString(a1, "CreatePolicyStmt:{");
        _outCreatePolicyStmt(a1, a2, v420, v421, v422, v423, v424, v425, v1357);
        goto LABEL_218;
      case 334:
        appendStringInfoString(a1, "AlterPolicyStmt:{");
        _outAlterPolicyStmt(a1, a2, v811, v812, v813, v814, v815, v816, v1357);
        goto LABEL_218;
      case 335:
        appendStringInfoString(a1, "CreateTransformStmt:{");
        _outCreateTransformStmt(a1, a2, v643, v644, v645, v646, v647, v648, v1357);
        goto LABEL_218;
      case 336:
        appendStringInfoString(a1, "CreateAmStmt:{");
        _outCreateAmStmt(a1, a2, v727, v728, v729, v730, v731, v732);
        goto LABEL_218;
      case 337:
        appendStringInfoString(a1, "CreatePublicationStmt:{");
        _outCreatePublicationStmt(a1, a2, v817, v818, v819, v820, v821, v822);
        goto LABEL_218;
      case 338:
        appendStringInfoString(a1, "AlterPublicationStmt:{");
        _outAlterPublicationStmt(a1, a2, v799, v800, v801, v802, v803, v804);
        goto LABEL_218;
      case 339:
        appendStringInfoString(a1, "CreateSubscriptionStmt:{");
        _outCreateSubscriptionStmt(a1, a2, v637, v638, v639, v640, v641, v642, v1357);
        goto LABEL_218;
      case 340:
        appendStringInfoString(a1, "AlterSubscriptionStmt:{");
        _outAlterSubscriptionStmt(a1, a2, v973, v974, v975, v976, v977, v978, v1357);
        goto LABEL_218;
      case 341:
        appendStringInfoString(a1, "DropSubscriptionStmt:{");
        _outDropSubscriptionStmt(a1, a2, v577, v578, v579, v580, v581, v582);
        goto LABEL_218;
      case 342:
        appendStringInfoString(a1, "CreateStatsStmt:{");
        _outCreateStatsStmt(a1, a2, v961, v962, v963, v964, v965, v966);
        goto LABEL_218;
      case 343:
        appendStringInfoString(a1, "AlterCollationStmt:{");
        _outAlterCollationStmt(a1, a2, v462, v463, v464, v465, v466, v467, v1357);
        goto LABEL_218;
      case 344:
        appendStringInfoString(a1, "CallStmt:{");
        _outCallStmt(a1, a2, v1045, v1046, v1047, v1048, v1049, v1050, v1357);
        goto LABEL_218;
      case 345:
        appendStringInfoString(a1, "AlterStatsStmt:{");
        _outAlterStatsStmt(a1, a2, v1015, v1016, v1017, v1018, v1019, v1020);
        goto LABEL_218;
      case 346:
        appendStringInfoString(a1, "A_Expr:{");
        _outAExpr(a1, a2, v444, v445, v446, v447, v448, v449);
        goto LABEL_218;
      case 347:
        appendStringInfoString(a1, "ColumnRef:{");
        _outColumnRef(a1, a2, v1069, v1070, v1071, v1072, v1073, v1074);
        goto LABEL_218;
      case 348:
        appendStringInfoString(a1, "ParamRef:{");
        _outParamRef(a1, a2, v1111, v1112, v1113, v1114, v1115, v1116);
        goto LABEL_218;
      case 349:
        appendStringInfoString(a1, "A_Const:{");
        _outAConst(a1, a2, v330, v331, v332, v333, v334, v335);
        goto LABEL_218;
      case 350:
        appendStringInfoString(a1, "FuncCall:{");
        _outFuncCall(a1, a2, v613, v614, v615, v616, v617, v618);
        goto LABEL_218;
      case 351:
        v564 = "A_Star:{";
LABEL_217:
        appendStringInfoString(a1, v564);
        goto LABEL_218;
      case 352:
        appendStringInfoString(a1, "A_Indices:{");
        _outAIndices(a1, a2, v456, v457, v458, v459, v460, v461, v1357);
        goto LABEL_218;
      case 353:
        appendStringInfoString(a1, "A_Indirection:{");
        _outAIndirection(a1, a2, v1075, v1076, v1077, v1078, v1079, v1080, v1357);
        goto LABEL_218;
      case 354:
        appendStringInfoString(a1, "A_ArrayExpr:{");
        _outAArrayExpr(a1, a2, v883, v884, v885, v886, v887, v888);
        goto LABEL_218;
      case 355:
        appendStringInfoString(a1, "ResTarget:{");
        _outResTarget(a1, a2, v540, v541, v542, v543, v544, v545);
        goto LABEL_218;
      case 356:
        appendStringInfoString(a1, "MultiAssignRef:{");
        _outMultiAssignRef(a1, a2, v360, v361, v362, v363, v364, v365);
        goto LABEL_218;
      case 357:
        appendStringInfoString(a1, "TypeCast:{");
        _outTypeCast(a1, a2, v967, v968, v969, v970, v971, v972);
        goto LABEL_218;
      case 358:
        appendStringInfoString(a1, "CollateClause:{");
        _outCollateClause(a1, a2, v781, v782, v783, v784, v785, v786);
        goto LABEL_218;
      case 359:
        appendStringInfoString(a1, "SortBy:{");
        _outSortBy(a1, a2, v625, v626, v627, v628, v629, v630);
        goto LABEL_218;
      case 360:
        appendStringInfoString(a1, "WindowDef:{");
        _outWindowDef(a1, a2, v949, v950, v951, v952, v953, v954);
        goto LABEL_218;
      case 361:
        appendStringInfoString(a1, "RangeSubselect:{");
        _outRangeSubselect(a1, a2, v1003, v1004, v1005, v1006, v1007, v1008, v1357);
        goto LABEL_218;
      case 362:
        appendStringInfoString(a1, "RangeFunction:{");
        _outRangeFunction(a1, a2, v438, v439, v440, v441, v442, v443, v1357);
        goto LABEL_218;
      case 363:
        appendStringInfoString(a1, "RangeTableSample:{");
        _outRangeTableSample(a1, a2, v480, v481, v482, v483, v484, v485);
        goto LABEL_218;
      case 364:
        appendStringInfoString(a1, "RangeTableFunc:{");
        _outRangeTableFunc(a1, a2, v474, v475, v476, v477, v478, v479);
        goto LABEL_218;
      case 365:
        appendStringInfoString(a1, "RangeTableFuncCol:{");
        _outRangeTableFuncCol(a1, a2, v510, v511, v512, v513, v514, v515);
        goto LABEL_218;
      case 366:
        appendStringInfoString(a1, "TypeName:{");
        _outTypeName(a1, a2, v552, v553, v554, v555, v556, v557);
        goto LABEL_218;
      case 367:
        appendStringInfoString(a1, "ColumnDef:{");
        _outColumnDef(a1, a2, v865, v866, v867, v868, v869, v870);
        goto LABEL_218;
      case 368:
        appendStringInfoString(a1, "IndexElem:{");
        _outIndexElem(a1, a2, v763, v764, v765, v766, v767, v768);
        goto LABEL_218;
      case 369:
        appendStringInfoString(a1, "Constraint:{");
        _outConstraint(a1, a2, v859, v860, v861, v862, v863, v864);
        goto LABEL_218;
      case 370:
        appendStringInfoString(a1, "DefElem:{");
        _outDefElem(a1, a2, v991, v992, v993, v994, v995, v996);
        goto LABEL_218;
      case 371:
        appendStringInfoString(a1, "RangeTblEntry:{");
        _outRangeTblEntry(a1, a2, v985, v986, v987, v988, v989, v990, v1357);
        goto LABEL_218;
      case 372:
        appendStringInfoString(a1, "RangeTblFunction:{");
        _outRangeTblFunction(a1, a2, v504, v505, v506, v507, v508, v509, v1357);
        goto LABEL_218;
      case 373:
        appendStringInfoString(a1, "TableSampleClause:{");
        _outTableSampleClause(a1, a2, v1009, v1010, v1011, v1012, v1013, v1014, v1357);
        goto LABEL_218;
      case 374:
        appendStringInfoString(a1, "WithCheckOption:{");
        _outWithCheckOption(a1, a2, v679, v680, v681, v682, v683, v684);
        goto LABEL_218;
      case 375:
        appendStringInfoString(a1, "SortGroupClause:{");
        _outSortGroupClause(a1, a2, v691, v692, v693, v694, v695, v696);
        goto LABEL_218;
      case 376:
        appendStringInfoString(a1, "GroupingSet:{");
        _outGroupingSet(a1, a2, v979, v980, v981, v982, v983, v984);
        goto LABEL_218;
      case 377:
        appendStringInfoString(a1, "WindowClause:{");
        _outWindowClause(a1, a2, v919, v920, v921, v922, v923, v924);
        goto LABEL_218;
      case 378:
        appendStringInfoString(a1, "ObjectWithArgs:{");
        _outObjectWithArgs(a1, a2, v823, v824, v825, v826, v827, v828);
        goto LABEL_218;
      case 379:
        appendStringInfoString(a1, "AccessPriv:{");
        _outAccessPriv(a1, a2, v793, v794, v795, v796, v797, v798, v1357);
        goto LABEL_218;
      case 380:
        appendStringInfoString(a1, "CreateOpClassItem:{");
        _outCreateOpClassItem(a1, a2, v955, v956, v957, v958, v959, v960, v1357);
        goto LABEL_218;
      case 381:
        appendStringInfoString(a1, "TableLikeClause:{");
        _outTableLikeClause(a1, a2, v841, v842, v843, v844, v845, v846);
        goto LABEL_218;
      case 382:
        appendStringInfoString(a1, "FunctionParameter:{");
        _outFunctionParameter(a1, a2, v769, v770, v771, v772, v773, v774, v1357);
        goto LABEL_218;
      case 383:
        appendStringInfoString(a1, "LockingClause:{");
        _outLockingClause(a1, a2, v528, v529, v530, v531, v532, v533);
        goto LABEL_218;
      case 384:
        appendStringInfoString(a1, "RowMarkClause:{");
        _outRowMarkClause(a1, a2, v715, v716, v717, v718, v719, v720);
        goto LABEL_218;
      case 385:
        appendStringInfoString(a1, "XmlSerialize:{");
        _outXmlSerialize(a1, a2, v546, v547, v548, v549, v550, v551);
        goto LABEL_218;
      case 386:
        appendStringInfoString(a1, "WithClause:{");
        _outWithClause(a1, a2, v829, v830, v831, v832, v833, v834);
        goto LABEL_218;
      case 387:
        appendStringInfoString(a1, "InferClause:{");
        _outInferClause(a1, a2, v649, v650, v651, v652, v653, v654);
        goto LABEL_218;
      case 388:
        appendStringInfoString(a1, "OnConflictClause:{");
        _outOnConflictClause(a1, a2, v595, v596, v597, v598, v599, v600);
        goto LABEL_218;
      case 389:
        appendStringInfoString(a1, "CommonTableExpr:{");
        _outCommonTableExpr(a1, a2, v847, v848, v849, v850, v851, v852, v1357);
        goto LABEL_218;
      case 390:
        appendStringInfoString(a1, "RoleSpec:{");
        _outRoleSpec(a1, a2, v667, v668, v669, v670, v671, v672);
        goto LABEL_218;
      case 391:
        appendStringInfoString(a1, "TriggerTransition:{");
        _outTriggerTransition(a1, a2, v853, v854, v855, v856, v857, v858);
        goto LABEL_218;
      case 392:
        appendStringInfoString(a1, "PartitionElem:{");
        _outPartitionElem(a1, a2, v739, v740, v741, v742, v743, v744);
        goto LABEL_218;
      case 393:
        appendStringInfoString(a1, "PartitionSpec:{");
        _outPartitionSpec(a1, a2, v835, v836, v837, v838, v839, v840);
        goto LABEL_218;
      case 394:
        appendStringInfoString(a1, "PartitionBoundSpec:{");
        _outPartitionBoundSpec(a1, a2, v805, v806, v807, v808, v809, v810);
        goto LABEL_218;
      case 395:
        appendStringInfoString(a1, "PartitionRangeDatum:{");
        _outPartitionRangeDatum(a1, a2, v619, v620, v621, v622, v623, v624);
        goto LABEL_218;
      case 396:
        appendStringInfoString(a1, "PartitionCmd:{");
        _outPartitionCmd(a1, a2, v733, v734, v735, v736, v737, v738, v1357);
        goto LABEL_218;
      case 397:
        appendStringInfoString(a1, "VacuumRelation:{");
        _outVacuumRelation(a1, a2, v697, v698, v699, v700, v701, v702, v1357);
        goto LABEL_218;
      case 410:
        appendStringInfoString(a1, "InlineCodeBlock:{");
        _outInlineCodeBlock(a1, a2, v745, v746, v747, v748, v749, v750);
        goto LABEL_218;
      case 416:
        appendStringInfoString(a1, "CallContext:{");
        if (*(a2 + 4) == 1)
        {
          appendStringInfo(a1, "atomic:%s,", v17, v18, v19, v20, v21, v22, "true");
        }

LABEL_218:
        v1231 = a1[2];
        v1232 = __OFSUB__(v1231, 1);
        v1233 = v1231 - 1;
        if (v1233 < 0 == v1232)
        {
          v1234 = *a1;
          if (*(*a1 + v1233) == 44)
          {
            a1[2] = v1233;
            *(v1234 + v1233) = 0;
          }
        }

        v1235 = "}}";
        v1236 = a1;

        break;
      default:
        if (errstart(19, 0))
        {
          errmsg_internal("could not dump unrecognized node type: %d", *a2);
          errfinish("src/pg_query_outfuncs_json.c", 252, "_outNode");
        }

        v1235 = "}";
        v1236 = a1;

        break;
    }

    return appendStringInfo(v1236, v1235, v17, v18, v19, v20, v21, v22, a9);
  }

  else
  {

    return appendStringInfoString(a1, "null");
  }
}

unint64_t _outFloat(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  appendStringInfo(a1, "str:", a3, a4, a5, a6, a7, a8, v24);
  _outToken(a1, *(a2 + 8), v11, v12, v13, v14, v15, v16);

  return appendStringInfo(a1, ",", v17, v18, v19, v20, v21, v22, a9);
}

unint64_t _outList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  appendStringInfo(a1, "items:", a3, a4, a5, a6, a7, a8, v24);
  appendStringInfoChar(a1, 91);
  if (*(a2 + 4) >= 1)
  {
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(a2 + 16);
      v14 = *(v13 + 8 * v11);
      if (v14)
      {
        _outNode(a1, v14);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      v15 = *(a2 + 4);
      if (v13 + v12)
      {
        v16 = v13 + v12 >= (*(a2 + 16) + 8 * v15);
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        appendStringInfoString(a1, ",");
        v15 = *(a2 + 4);
      }

      ++v11;
      v12 += 8;
    }

    while (v11 < v15);
  }

  appendStringInfoChar(a1, 93);

  return appendStringInfo(a1, ",", v17, v18, v19, v20, v21, v22, a9);
}

unint64_t _outIntList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  appendStringInfo(a1, "items:", a3, a4, a5, a6, a7, a8, v31);
  appendStringInfoChar(a1, 91);
  if (*(a2 + 4) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (*(a2 + 16) + v17);
      v21 = *v19;
      v20 = (v19 + 2);
      appendStringInfo(a1, "%d", v11, v12, v13, v14, v15, v16, v21);
      v22 = *(a2 + 4);
      if (v20)
      {
        v23 = v20 >= *(a2 + 16) + 8 * v22;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        appendStringInfoString(a1, ",");
        v22 = *(a2 + 4);
      }

      ++v18;
      v17 += 8;
    }

    while (v18 < v22);
  }

  appendStringInfoChar(a1, 93);

  return appendStringInfo(a1, ",", v24, v25, v26, v27, v28, v29, a9);
}

unint64_t _outOidList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  appendStringInfo(a1, "items:", a3, a4, a5, a6, a7, a8, v31);
  appendStringInfoChar(a1, 91);
  if (*(a2 + 4) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (*(a2 + 16) + v17);
      v21 = *v19;
      v20 = (v19 + 2);
      appendStringInfo(a1, "%u", v11, v12, v13, v14, v15, v16, v21);
      v22 = *(a2 + 4);
      if (v20)
      {
        v23 = v20 >= *(a2 + 16) + 8 * v22;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        appendStringInfoString(a1, ",");
        v22 = *(a2 + 4);
      }

      ++v18;
      v17 += 8;
    }

    while (v18 < v22);
  }

  appendStringInfoChar(a1, 93);

  return appendStringInfo(a1, ",", v24, v25, v26, v27, v28, v29, a9);
}

uint64_t _outAlias(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "aliasname:", a3, a4, a5, a6, a7, a8, v35);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    result = appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, v36);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "colnames:", a3, a4, a5, a6, a7, a8, v35);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 16);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    return appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

uint64_t _outRangeVar(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "catalogname:", a3, a4, a5, a6, a7, a8, v62);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v63);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "schemaname:", a3, a4, a5, a6, a7, a8, v62);
    _outToken(v9, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v64);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "relname:", a3, a4, a5, a6, a7, a8, v62);
    _outToken(v9, *(a2 + 24), v34, v35, v36, v37, v38, v39);
    result = appendStringInfo(v9, ",", v40, v41, v42, v43, v44, v45, v65);
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(v9, "inh:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 33))
  {
    result = appendStringInfo(v9, "relpersistence:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 33));
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v9, "alias:{", a3, a4, a5, a6, a7, a8, v62);
    _outAlias(v9, *(a2 + 40), v46, v47, v48, v49, v50, v51, v66);
    v58 = v9[2];
    v59 = __OFSUB__(v58, 1);
    v60 = v58 - 1;
    if (v60 < 0 == v59)
    {
      v61 = *v9;
      if (*(*v9 + v60) == 44)
      {
        v9[2] = v60;
        *(v61 + v60) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v52, v53, v54, v55, v56, v57, v67);
  }

  if (*(a2 + 48))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 48));
  }

  return result;
}

unint64_t _outTableFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "ns_uris:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v138);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "ns_names:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(a1, v32);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(a1, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    appendStringInfo(a1, "],", v22, v23, v24, v25, v26, v27, v139);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "docexpr:", a3, a4, a5, a6, a7, a8, v137);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v34, v35, v36, v37, v38, v39, v140);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "rowexpr:", a3, a4, a5, a6, a7, a8, v137);
    _outNode(a1, *(a2 + 32));
    appendStringInfo(a1, ",", v40, v41, v42, v43, v44, v45, v141);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "colnames:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v52 = *(a2 + 40);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(a1, v56);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(a1, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    appendStringInfo(a1, "],", v46, v47, v48, v49, v50, v51, v142);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "coltypes:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v64 = *(a2 + 48);
    if (v64 && *(v64 + 4) >= 1)
    {
      v65 = 0;
      v66 = 8;
      do
      {
        v67 = *(v64 + 16);
        v68 = *(v67 + 8 * v65);
        if (v68)
        {
          _outNode(a1, v68);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v67 + v66)
        {
          v69 = v67 + v66 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v69 = 1;
        }

        if (!v69)
        {
          appendStringInfoString(a1, ",");
        }

        ++v65;
        v66 += 8;
      }

      while (v65 < *(v64 + 4));
    }

    appendStringInfo(a1, "],", v58, v59, v60, v61, v62, v63, v143);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "coltypmods:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v76 = *(a2 + 56);
    if (v76 && *(v76 + 4) >= 1)
    {
      v77 = 0;
      v78 = 8;
      do
      {
        v79 = *(v76 + 16);
        v80 = *(v79 + 8 * v77);
        if (v80)
        {
          _outNode(a1, v80);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v79 + v78)
        {
          v81 = v79 + v78 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v81 = 1;
        }

        if (!v81)
        {
          appendStringInfoString(a1, ",");
        }

        ++v77;
        v78 += 8;
      }

      while (v77 < *(v76 + 4));
    }

    appendStringInfo(a1, "],", v70, v71, v72, v73, v74, v75, v144);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "colcollations:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v88 = *(a2 + 64);
    if (v88 && *(v88 + 4) >= 1)
    {
      v89 = 0;
      v90 = 8;
      do
      {
        v91 = *(v88 + 16);
        v92 = *(v91 + 8 * v89);
        if (v92)
        {
          _outNode(a1, v92);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v91 + v90)
        {
          v93 = v91 + v90 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v93 = 1;
        }

        if (!v93)
        {
          appendStringInfoString(a1, ",");
        }

        ++v89;
        v90 += 8;
      }

      while (v89 < *(v88 + 4));
    }

    appendStringInfo(a1, "],", v82, v83, v84, v85, v86, v87, v145);
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "colexprs:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v100 = *(a2 + 72);
    if (v100 && *(v100 + 4) >= 1)
    {
      v101 = 0;
      v102 = 8;
      do
      {
        v103 = *(v100 + 16);
        v104 = *(v103 + 8 * v101);
        if (v104)
        {
          _outNode(a1, v104);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v103 + v102)
        {
          v105 = v103 + v102 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v105 = 1;
        }

        if (!v105)
        {
          appendStringInfoString(a1, ",");
        }

        ++v101;
        v102 += 8;
      }

      while (v101 < *(v100 + 4));
    }

    appendStringInfo(a1, "],", v94, v95, v96, v97, v98, v99, v146);
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "coldefexprs:", a3, a4, a5, a6, a7, a8, v137);
    appendStringInfoChar(a1, 91);
    v112 = *(a2 + 80);
    if (v112 && *(v112 + 4) >= 1)
    {
      v113 = 0;
      v114 = 8;
      do
      {
        v115 = *(v112 + 16);
        v116 = *(v115 + 8 * v113);
        if (v116)
        {
          _outNode(a1, v116);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v115 + v114)
        {
          v117 = v115 + v114 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v117 = 1;
        }

        if (!v117)
        {
          appendStringInfoString(a1, ",");
        }

        ++v113;
        v114 += 8;
      }

      while (v113 < *(v112 + 4));
    }

    appendStringInfo(a1, "],", v106, v107, v108, v109, v110, v111, v147);
  }

  result = bms_is_empty(*(a2 + 88));
  if ((result & 1) == 0)
  {
    appendStringInfo(a1, "notnulls:[", v119, v120, v121, v122, v123, v124, v137);
    member = bms_next_member(*(a2 + 88), 0);
    if ((member & 0x80000000) == 0)
    {
      v132 = member;
      do
      {
        appendStringInfo(a1, "%d,", v126, v127, v128, v129, v130, v131, v132);
        v132 = bms_next_member(*(a2 + 88), v132);
      }

      while ((v132 & 0x80000000) == 0);
    }

    v133 = *(a1 + 8);
    v134 = __OFSUB__(v133, 1);
    v135 = v133 - 1;
    if (v135 < 0 == v134)
    {
      v136 = *a1;
      if (*(*a1 + v135) == 44)
      {
        *(a1 + 8) = v135;
        *(v136 + v135) = 0;
      }
    }

    result = appendStringInfo(a1, "],", v126, v127, v128, v129, v130, v131, v148);
  }

  if (*(a2 + 96))
  {
    result = appendStringInfo(a1, "ordinalitycol:%d,", v119, v120, v121, v122, v123, v124, *(a2 + 96));
  }

  if (*(a2 + 100))
  {
    return appendStringInfo(a1, "location:%d,", v119, v120, v121, v122, v123, v124, *(a2 + 100));
  }

  return result;
}

uint64_t _outVar(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "varno:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "varattno:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v9, "vartype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "vartypmod:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(v9, "varcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v9, "varlevelsup:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    result = appendStringInfo(v9, "varnosyn:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 28));
  }

  if (*(a2 + 32))
  {
    result = appendStringInfo(v9, "varattnosyn:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  if (*(a2 + 36))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 36));
  }

  return result;
}

unint64_t _outParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 3)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E54F48)[v10];
  }

  result = appendStringInfo(a1, "paramkind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    result = appendStringInfo(a1, "paramid:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(a1, "paramtype:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(a1, "paramtypmod:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(a1, "paramcollid:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 24));
  }

  return result;
}

unint64_t _outAggref(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "aggfnoid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "aggtype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    appendStringInfo(a1, "aggcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "inputcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "aggtranstype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "aggargtypes:", a3, a4, a5, a6, a7, a8, v86);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 24);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v87);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "aggdirectargs:", a3, a4, a5, a6, a7, a8, v86);
    appendStringInfoChar(a1, 91);
    v28 = *(a2 + 32);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(a1, v32);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(a1, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    appendStringInfo(a1, "],", v22, v23, v24, v25, v26, v27, v88);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "args:", a3, a4, a5, a6, a7, a8, v86);
    appendStringInfoChar(a1, 91);
    v40 = *(a2 + 40);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(a1, v44);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(a1, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    appendStringInfo(a1, "],", v34, v35, v36, v37, v38, v39, v89);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "aggorder:", a3, a4, a5, a6, a7, a8, v86);
    appendStringInfoChar(a1, 91);
    v52 = *(a2 + 48);
    if (v52 && *(v52 + 4) >= 1)
    {
      v53 = 0;
      v54 = 8;
      do
      {
        v55 = *(v52 + 16);
        v56 = *(v55 + 8 * v53);
        if (v56)
        {
          _outNode(a1, v56);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v55 + v54)
        {
          v57 = v55 + v54 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          appendStringInfoString(a1, ",");
        }

        ++v53;
        v54 += 8;
      }

      while (v53 < *(v52 + 4));
    }

    appendStringInfo(a1, "],", v46, v47, v48, v49, v50, v51, v90);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "aggdistinct:", a3, a4, a5, a6, a7, a8, v86);
    appendStringInfoChar(a1, 91);
    v64 = *(a2 + 56);
    if (v64 && *(v64 + 4) >= 1)
    {
      v65 = 0;
      v66 = 8;
      do
      {
        v67 = *(v64 + 16);
        v68 = *(v67 + 8 * v65);
        if (v68)
        {
          _outNode(a1, v68);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v67 + v66)
        {
          v69 = v67 + v66 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v69 = 1;
        }

        if (!v69)
        {
          appendStringInfoString(a1, ",");
        }

        ++v65;
        v66 += 8;
      }

      while (v65 < *(v64 + 4));
    }

    appendStringInfo(a1, "],", v58, v59, v60, v61, v62, v63, v91);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "aggfilter:", a3, a4, a5, a6, a7, a8, v86);
    _outNode(a1, *(a2 + 64));
    appendStringInfo(a1, ",", v70, v71, v72, v73, v74, v75, v92);
  }

  if (*(a2 + 72) == 1)
  {
    appendStringInfo(a1, "aggstar:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 73) != 1)
    {
LABEL_85:
      v76 = *(a2 + 74);
      if (!*(a2 + 74))
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  else if (*(a2 + 73) != 1)
  {
    goto LABEL_85;
  }

  appendStringInfo(a1, "aggvariadic:%s,", a3, a4, a5, a6, a7, a8, "true");
  v76 = *(a2 + 74);
  if (*(a2 + 74))
  {
LABEL_86:
    appendStringInfo(a1, "aggkind:%c,", a3, a4, a5, a6, a7, a8, v76);
  }

LABEL_87:
  if (*(a2 + 76))
  {
    appendStringInfo(a1, "agglevelsup:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 76));
  }

  v77 = *(a2 + 80);
  if (v77)
  {
    if (v77 == 9)
    {
      v78 = "AGGSPLIT_FINAL_DESERIAL";
    }

    else if (v77 == 6)
    {
      v78 = "AGGSPLIT_INITIAL_SERIAL";
    }

    else
    {
      LODWORD(v78) = 0;
    }
  }

  else
  {
    v78 = "AGGSPLIT_SIMPLE";
  }

  result = appendStringInfo(a1, "aggsplit:%s,", a3, a4, a5, a6, a7, a8, v78);
  if (*(a2 + 84))
  {
    return appendStringInfo(a1, "location:%d,", v80, v81, v82, v83, v84, v85, *(a2 + 84));
  }

  return result;
}

uint64_t _outGroupingFunc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "args:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v47);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "refs:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(v9, v32);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(v9, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    result = appendStringInfo(v9, "],", v22, v23, v24, v25, v26, v27, v48);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "cols:", a3, a4, a5, a6, a7, a8, v46);
    appendStringInfoChar(v9, 91);
    v40 = *(a2 + 24);
    if (v40 && *(v40 + 4) >= 1)
    {
      v41 = 0;
      v42 = 8;
      do
      {
        v43 = *(v40 + 16);
        v44 = *(v43 + 8 * v41);
        if (v44)
        {
          _outNode(v9, v44);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v43 + v42)
        {
          v45 = v43 + v42 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          appendStringInfoString(v9, ",");
        }

        ++v41;
        v42 += 8;
      }

      while (v41 < *(v40 + 4));
    }

    result = appendStringInfo(v9, "],", v34, v35, v36, v37, v38, v39, v49);
  }

  if (*(a2 + 32))
  {
    result = appendStringInfo(v9, "agglevelsup:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  if (*(a2 + 36))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 36));
  }

  return result;
}

uint64_t _outWindowFunc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "winfnoid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "wintype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v9, "wincollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "inputcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v29);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 24);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v30);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "aggfilter:", a3, a4, a5, a6, a7, a8, v29);
    _outNode(v9, *(a2 + 32));
    result = appendStringInfo(v9, ",", v22, v23, v24, v25, v26, v27, v31);
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v9, "winref:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  if (*(a2 + 44) == 1)
  {
    result = appendStringInfo(v9, "winstar:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 45) != 1)
    {
LABEL_29:
      v28 = *(a2 + 48);
      if (!v28)
      {
        return result;
      }

      return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, v28);
    }
  }

  else if (*(a2 + 45) != 1)
  {
    goto LABEL_29;
  }

  result = appendStringInfo(v9, "winagg:%s,", a3, a4, a5, a6, a7, a8, "true");
  v28 = *(a2 + 48);
  if (!v28)
  {
    return result;
  }

  return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, v28);
}

uint64_t _outSubscriptingRef(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "refcontainertype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v10, "refelemtype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v10, "reftypmod:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v10, "refcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "refupperindexpr:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 24);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v48);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v10, "reflowerindexpr:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(v10, 91);
    v29 = *(a2 + 32);
    if (v29 && *(v29 + 4) >= 1)
    {
      v30 = 0;
      v31 = 8;
      do
      {
        v32 = *(v29 + 16);
        v33 = *(v32 + 8 * v30);
        if (v33)
        {
          _outNode(v10, v33);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v32 + v31)
        {
          v34 = v32 + v31 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          appendStringInfoString(v10, ",");
        }

        ++v30;
        v31 += 8;
      }

      while (v30 < *(v29 + 4));
    }

    result = appendStringInfo(v10, "],", v23, v24, v25, v26, v27, v28, v49);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(v10, "refexpr:", a3, a4, a5, a6, a7, a8, v47);
    _outNode(v10, *(a2 + 40));
    result = appendStringInfo(v10, ",", v35, v36, v37, v38, v39, v40, v50);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(v10, "refassgnexpr:", a3, a4, a5, a6, a7, a8, v47);
    _outNode(v10, *(a2 + 48));

    return appendStringInfo(v10, ",", v41, v42, v43, v44, v45, v46, a9);
  }

  return result;
}

unint64_t _outFuncExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "funcid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "funcresulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12) != 1)
  {
    if (*(a2 + 13) != 1)
    {
      goto LABEL_7;
    }

LABEL_10:
    appendStringInfo(a1, "funcvariadic:%s,", a3, a4, a5, a6, a7, a8, "true");
    v10 = *(a2 + 16);
    if (v10 <= 2)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  appendStringInfo(a1, "funcretset:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 13) == 1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = *(a2 + 16);
  if (v10 <= 2)
  {
LABEL_8:
    v11 = (&off_1E6E550D8)[v10];
    goto LABEL_12;
  }

LABEL_11:
  LODWORD(v11) = 0;
LABEL_12:
  result = appendStringInfo(a1, "funcformat:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 20))
  {
    result = appendStringInfo(a1, "funccollid:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(a1, "inputcollid:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "args:", v13, v14, v15, v16, v17, v18, v31);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 32);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v32);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 40));
  }

  return result;
}

uint64_t _outNamedArgExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v28);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v29);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "name:", a3, a4, a5, a6, a7, a8, v28);
    _outToken(v9, *(a2 + 16), v16, v17, v18, v19, v20, v21);
    result = appendStringInfo(v9, ",", v22, v23, v24, v25, v26, v27, v30);
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v9, "argnumber:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 28));
  }

  return result;
}

uint64_t _outOpExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "opno:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "opfuncid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v9, "opresulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16) == 1)
  {
    result = appendStringInfo(v9, "opretset:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(v9, "opcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v9, "inputcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 32);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  return result;
}

uint64_t _outScalarArrayOpExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "opno:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "opfuncid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12) == 1)
  {
    result = appendStringInfo(v9, "useOr:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "inputcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 24);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  return result;
}

unint64_t _outBoolExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 2)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E54F68)[v10];
  }

  result = appendStringInfo(a1, "BOOLop:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "args:", v13, v14, v15, v16, v17, v18, v31);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 8);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v32);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  return result;
}

unint64_t _outSubLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 7)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E54F80)[v10];
  }

  result = appendStringInfo(a1, "subLinkType:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    result = appendStringInfo(a1, "subLinkId:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "testexpr:", v13, v14, v15, v16, v17, v18, v43);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v19, v20, v21, v22, v23, v24, v44);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "operName:", v13, v14, v15, v16, v17, v18, v43);
    appendStringInfoChar(a1, 91);
    v31 = *(a2 + 24);
    if (v31 && *(v31 + 4) >= 1)
    {
      v32 = 0;
      v33 = 8;
      do
      {
        v34 = *(v31 + 16);
        v35 = *(v34 + 8 * v32);
        if (v35)
        {
          _outNode(a1, v35);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v34 + v33)
        {
          v36 = v34 + v33 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v36 = 1;
        }

        if (!v36)
        {
          appendStringInfoString(a1, ",");
        }

        ++v32;
        v33 += 8;
      }

      while (v32 < *(v31 + 4));
    }

    result = appendStringInfo(a1, "],", v25, v26, v27, v28, v29, v30, v45);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "subselect:", v13, v14, v15, v16, v17, v18, v43);
    _outNode(a1, *(a2 + 32));
    result = appendStringInfo(a1, ",", v37, v38, v39, v40, v41, v42, v46);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 40));
  }

  return result;
}

unint64_t _outSubPlan(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 7)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E54F80)[v10];
  }

  appendStringInfo(a1, "subLinkType:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "testexpr:", v12, v13, v14, v15, v16, v17, v91);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v18, v19, v20, v21, v22, v23, v92);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "paramIds:", v12, v13, v14, v15, v16, v17, v91);
    appendStringInfoChar(a1, 91);
    v30 = *(a2 + 16);
    if (v30 && *(v30 + 4) >= 1)
    {
      v31 = 0;
      v32 = 8;
      do
      {
        v33 = *(v30 + 16);
        v34 = *(v33 + 8 * v31);
        if (v34)
        {
          _outNode(a1, v34);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v33 + v32)
        {
          v35 = v33 + v32 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          appendStringInfoString(a1, ",");
        }

        ++v31;
        v32 += 8;
      }

      while (v31 < *(v30 + 4));
    }

    appendStringInfo(a1, "],", v24, v25, v26, v27, v28, v29, v93);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "plan_id:%d,", v12, v13, v14, v15, v16, v17, *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "plan_name:", v12, v13, v14, v15, v16, v17, v91);
    _outToken(a1, *(a2 + 32), v36, v37, v38, v39, v40, v41);
    appendStringInfo(a1, ",", v42, v43, v44, v45, v46, v47, v94);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "firstColType:%u,", v12, v13, v14, v15, v16, v17, *(a2 + 40));
  }

  if (*(a2 + 44))
  {
    appendStringInfo(a1, "firstColTypmod:%d,", v12, v13, v14, v15, v16, v17, *(a2 + 44));
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "firstColCollation:%u,", v12, v13, v14, v15, v16, v17, *(a2 + 48));
  }

  if (*(a2 + 52) == 1)
  {
    appendStringInfo(a1, "useHashTable:%s,", v12, v13, v14, v15, v16, v17, "true");
    if (*(a2 + 53) != 1)
    {
LABEL_32:
      if (*(a2 + 54) != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }
  }

  else if (*(a2 + 53) != 1)
  {
    goto LABEL_32;
  }

  appendStringInfo(a1, "unknownEqFalse:%s,", v12, v13, v14, v15, v16, v17, "true");
  if (*(a2 + 54) != 1)
  {
LABEL_33:
    if (!*(a2 + 56))
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

LABEL_39:
  appendStringInfo(a1, "parallel_safe:%s,", v12, v13, v14, v15, v16, v17, "true");
  if (!*(a2 + 56))
  {
LABEL_34:
    if (!*(a2 + 64))
    {
      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_40:
  appendStringInfo(a1, "setParam:", v12, v13, v14, v15, v16, v17, v91);
  appendStringInfoChar(a1, 91);
  v54 = *(a2 + 56);
  if (v54 && *(v54 + 4) >= 1)
  {
    v55 = 0;
    v56 = 8;
    do
    {
      v57 = *(v54 + 16);
      v58 = *(v57 + 8 * v55);
      if (v58)
      {
        _outNode(a1, v58);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v57 + v56)
      {
        v59 = v57 + v56 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
      }

      else
      {
        v59 = 1;
      }

      if (!v59)
      {
        appendStringInfoString(a1, ",");
      }

      ++v55;
      v56 += 8;
    }

    while (v55 < *(v54 + 4));
  }

  appendStringInfo(a1, "],", v48, v49, v50, v51, v52, v53, v95);
  if (!*(a2 + 64))
  {
LABEL_35:
    if (!*(a2 + 72))
    {
      goto LABEL_79;
    }

    goto LABEL_66;
  }

LABEL_53:
  appendStringInfo(a1, "parParam:", v12, v13, v14, v15, v16, v17, v91);
  appendStringInfoChar(a1, 91);
  v66 = *(a2 + 64);
  if (v66 && *(v66 + 4) >= 1)
  {
    v67 = 0;
    v68 = 8;
    do
    {
      v69 = *(v66 + 16);
      v70 = *(v69 + 8 * v67);
      if (v70)
      {
        _outNode(a1, v70);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v69 + v68)
      {
        v71 = v69 + v68 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
      }

      else
      {
        v71 = 1;
      }

      if (!v71)
      {
        appendStringInfoString(a1, ",");
      }

      ++v67;
      v68 += 8;
    }

    while (v67 < *(v66 + 4));
  }

  appendStringInfo(a1, "],", v60, v61, v62, v63, v64, v65, v96);
  if (*(a2 + 72))
  {
LABEL_66:
    appendStringInfo(a1, "args:", v12, v13, v14, v15, v16, v17, v91);
    appendStringInfoChar(a1, 91);
    v78 = *(a2 + 72);
    if (v78 && *(v78 + 4) >= 1)
    {
      v79 = 0;
      v80 = 8;
      do
      {
        v81 = *(v78 + 16);
        v82 = *(v81 + 8 * v79);
        if (v82)
        {
          _outNode(a1, v82);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v81 + v80)
        {
          v83 = v81 + v80 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v83 = 1;
        }

        if (!v83)
        {
          appendStringInfoString(a1, ",");
        }

        ++v79;
        v80 += 8;
      }

      while (v79 < *(v78 + 4));
    }

    appendStringInfo(a1, "],", v72, v73, v74, v75, v76, v77, v97);
  }

LABEL_79:
  appendStringInfo(a1, "startup_cost:%f,", v12, v13, v14, v15, v16, v17, *(a2 + 80));
  return appendStringInfo(a1, "per_call_cost:%f,", v84, v85, v86, v87, v88, v89, *(a2 + 88));
}

unint64_t _outAlternativeSubPlan(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "subplans:", a3, a4, a5, a6, a7, a8, v23);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    return appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, a9);
  }

  return result;
}

uint64_t _outFieldSelect(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v16);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v17);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "fieldnum:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    result = appendStringInfo(v9, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(v9, "resulttypmod:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    return appendStringInfo(v9, "resultcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 28));
  }

  return result;
}

uint64_t _outFieldStore(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v40);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v41);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "newvals:", a3, a4, a5, a6, a7, a8, v40);
    appendStringInfoChar(v9, 91);
    v22 = *(a2 + 16);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(v9, v26);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(v9, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    result = appendStringInfo(v9, "],", v16, v17, v18, v19, v20, v21, v42);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "fieldnums:", a3, a4, a5, a6, a7, a8, v40);
    appendStringInfoChar(v9, 91);
    v34 = *(a2 + 24);
    if (v34 && *(v34 + 4) >= 1)
    {
      v35 = 0;
      v36 = 8;
      do
      {
        v37 = *(v34 + 16);
        v38 = *(v37 + 8 * v35);
        if (v38)
        {
          _outNode(v9, v38);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v37 + v36)
        {
          v39 = v37 + v36 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v39 = 1;
        }

        if (!v39)
        {
          appendStringInfoString(v9, ",");
        }

        ++v35;
        v36 += 8;
      }

      while (v35 < *(v34 + 4));
    }

    result = appendStringInfo(v9, "],", v28, v29, v30, v31, v32, v33, v43);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(v9, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  return result;
}

unint64_t _outRelabelType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v25);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v26);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "resulttypmod:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "resultcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  v16 = *(a2 + 28);
  if (v16 > 2)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (&off_1E6E550D8)[v16];
  }

  result = appendStringInfo(a1, "relabelformat:%s,", a3, a4, a5, a6, a7, a8, v17);
  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v19, v20, v21, v22, v23, v24, *(a2 + 32));
  }

  return result;
}

unint64_t _outCoerceViaIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v25);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v26);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "resultcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  v16 = *(a2 + 24);
  if (v16 > 2)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (&off_1E6E550D8)[v16];
  }

  result = appendStringInfo(a1, "coerceformat:%s,", a3, a4, a5, a6, a7, a8, v17);
  if (*(a2 + 28))
  {
    return appendStringInfo(a1, "location:%d,", v19, v20, v21, v22, v23, v24, *(a2 + 28));
  }

  return result;
}

unint64_t _outArrayCoerceExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v31);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v32);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "elemexpr:", a3, a4, a5, a6, a7, a8, v31);
    _outNode(a1, *(a2 + 16));
    appendStringInfo(a1, ",", v16, v17, v18, v19, v20, v21, v33);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  if (*(a2 + 28))
  {
    appendStringInfo(a1, "resulttypmod:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 28));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "resultcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  v22 = *(a2 + 36);
  if (v22 > 2)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = (&off_1E6E550D8)[v22];
  }

  result = appendStringInfo(a1, "coerceformat:%s,", a3, a4, a5, a6, a7, a8, v23);
  if (*(a2 + 40))
  {
    return appendStringInfo(a1, "location:%d,", v25, v26, v27, v28, v29, v30, *(a2 + 40));
  }

  return result;
}

unint64_t _outConvertRowtypeExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v25);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v26);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  v16 = *(a2 + 20);
  if (v16 > 2)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (&off_1E6E550D8)[v16];
  }

  result = appendStringInfo(a1, "convertformat:%s,", a3, a4, a5, a6, a7, a8, v17);
  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", v19, v20, v21, v22, v23, v24, *(a2 + 24));
  }

  return result;
}

uint64_t _outCollateExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "arg:", a3, a4, a5, a6, a7, a8, v16);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v17);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "collOid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  return result;
}

uint64_t _outCaseExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "casetype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "casecollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "arg:", a3, a4, a5, a6, a7, a8, v34);
    _outNode(v9, *(a2 + 16));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v35);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v34);
    appendStringInfoChar(v9, 91);
    v22 = *(a2 + 24);
    if (v22 && *(v22 + 4) >= 1)
    {
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = *(v22 + 16);
        v26 = *(v25 + 8 * v23);
        if (v26)
        {
          _outNode(v9, v26);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v25 + v24)
        {
          v27 = v25 + v24 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          appendStringInfoString(v9, ",");
        }

        ++v23;
        v24 += 8;
      }

      while (v23 < *(v22 + 4));
    }

    result = appendStringInfo(v9, "],", v16, v17, v18, v19, v20, v21, v36);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(v9, "defresult:", a3, a4, a5, a6, a7, a8, v34);
    _outNode(v9, *(a2 + 32));
    result = appendStringInfo(v9, ",", v28, v29, v30, v31, v32, v33, v37);
  }

  if (*(a2 + 40))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  return result;
}

uint64_t _outCaseWhen(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "expr:", a3, a4, a5, a6, a7, a8, v22);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "result:", a3, a4, a5, a6, a7, a8, v22);
    _outNode(v9, *(a2 + 16));
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v24);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

uint64_t _outCaseTestExpr(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a2[1])
  {
    result = appendStringInfo(result, "typeId:%u,", a3, a4, a5, a6, a7, a8, a2[1]);
  }

  if (a2[2])
  {
    result = appendStringInfo(v9, "typeMod:%d,", a3, a4, a5, a6, a7, a8, a2[2]);
  }

  if (a2[3])
  {
    return appendStringInfo(v9, "collation:%u,", a3, a4, a5, a6, a7, a8, a2[3]);
  }

  return result;
}

uint64_t _outArrayExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "array_typeid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "array_collid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(v9, "element_typeid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "elements:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 16);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(v9, "multidims:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  if (*(a2 + 28))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 28));
  }

  return result;
}

unint64_t _outRowExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "args:", a3, a4, a5, a6, a7, a8, v43);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v44);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "row_typeid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  v22 = *(a2 + 20);
  if (v22 > 2)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = (&off_1E6E550D8)[v22];
  }

  result = appendStringInfo(a1, "row_format:%s,", a3, a4, a5, a6, a7, a8, v23);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "colnames:", v25, v26, v27, v28, v29, v30, v45);
    appendStringInfoChar(a1, 91);
    v37 = *(a2 + 24);
    if (v37 && *(v37 + 4) >= 1)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v37 + 16);
        v41 = *(v40 + 8 * v38);
        if (v41)
        {
          _outNode(a1, v41);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v40 + v39)
        {
          v42 = v40 + v39 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          appendStringInfoString(a1, ",");
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v37 + 4));
    }

    result = appendStringInfo(a1, "],", v31, v32, v33, v34, v35, v36, v46);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v25, v26, v27, v28, v29, v30, *(a2 + 32));
  }

  return result;
}

unint64_t _outRowCompareExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4) - 1;
  if (v11 > 5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_1E6E54FC0)[v11];
  }

  result = appendStringInfo(a1, "rctype:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "opnos:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v26 = *(a2 + 8);
    if (v26 && *(v26 + 4) >= 1)
    {
      v27 = 0;
      v28 = 8;
      do
      {
        v29 = *(v26 + 16);
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          _outNode(a1, v30);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(a1, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    result = appendStringInfo(a1, "],", v20, v21, v22, v23, v24, v25, v81);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "opfamilies:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v38 = *(a2 + 16);
    if (v38 && *(v38 + 4) >= 1)
    {
      v39 = 0;
      v40 = 8;
      do
      {
        v41 = *(v38 + 16);
        v42 = *(v41 + 8 * v39);
        if (v42)
        {
          _outNode(a1, v42);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v41 + v40)
        {
          v43 = v41 + v40 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          appendStringInfoString(a1, ",");
        }

        ++v39;
        v40 += 8;
      }

      while (v39 < *(v38 + 4));
    }

    result = appendStringInfo(a1, "],", v32, v33, v34, v35, v36, v37, v82);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "inputcollids:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v50 = *(a2 + 24);
    if (v50 && *(v50 + 4) >= 1)
    {
      v51 = 0;
      v52 = 8;
      do
      {
        v53 = *(v50 + 16);
        v54 = *(v53 + 8 * v51);
        if (v54)
        {
          _outNode(a1, v54);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v53 + v52)
        {
          v55 = v53 + v52 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          appendStringInfoString(a1, ",");
        }

        ++v51;
        v52 += 8;
      }

      while (v51 < *(v50 + 4));
    }

    result = appendStringInfo(a1, "],", v44, v45, v46, v47, v48, v49, v83);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "largs:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v62 = *(a2 + 32);
    if (v62 && *(v62 + 4) >= 1)
    {
      v63 = 0;
      v64 = 8;
      do
      {
        v65 = *(v62 + 16);
        v66 = *(v65 + 8 * v63);
        if (v66)
        {
          _outNode(a1, v66);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v65 + v64)
        {
          v67 = v65 + v64 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          appendStringInfoString(a1, ",");
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < *(v62 + 4));
    }

    result = appendStringInfo(a1, "],", v56, v57, v58, v59, v60, v61, v84);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "rargs:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v74 = *(a2 + 40);
    if (v74 && *(v74 + 4) >= 1)
    {
      v75 = 0;
      v76 = 8;
      do
      {
        v77 = *(v74 + 16);
        v78 = *(v77 + 8 * v75);
        if (v78)
        {
          _outNode(a1, v78);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v77 + v76)
        {
          v79 = v77 + v76 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          appendStringInfoString(a1, ",");
        }

        ++v75;
        v76 += 8;
      }

      while (v75 < *(v74 + 4));
    }

    return appendStringInfo(a1, "],", v68, v69, v70, v71, v72, v73, a9);
  }

  return result;
}

uint64_t _outCoalesceExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "coalescetype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    result = appendStringInfo(v9, "coalescecollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "args:", a3, a4, a5, a6, a7, a8, v22);
    appendStringInfoChar(v9, 91);
    v16 = *(a2 + 16);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(v9, v20);
        }

        else
        {
          appendStringInfoString(v9, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(v9, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    result = appendStringInfo(v9, "],", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

unint64_t _outMinMaxExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "minmaxtype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "minmaxcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    appendStringInfo(a1, "inputcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 12));
  }

  v10 = *(a2 + 16);
  v11 = "IS_LEAST";
  if (v10 != 1)
  {
    LODWORD(v11) = 0;
  }

  if (v10)
  {
    LODWORD(v12) = v11;
  }

  else
  {
    v12 = "IS_GREATEST";
  }

  result = appendStringInfo(a1, "op:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 24))
  {
    appendStringInfo(a1, "args:", v14, v15, v16, v17, v18, v19, v32);
    appendStringInfoChar(a1, 91);
    v26 = *(a2 + 24);
    if (v26 && *(v26 + 4) >= 1)
    {
      v27 = 0;
      v28 = 8;
      do
      {
        v29 = *(v26 + 16);
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          _outNode(a1, v30);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(a1, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    result = appendStringInfo(a1, "],", v20, v21, v22, v23, v24, v25, v33);
  }

  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v14, v15, v16, v17, v18, v19, *(a2 + 32));
  }

  return result;
}

unint64_t _outSQLValueFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0xE)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E54FF0)[v10];
  }

  result = appendStringInfo(a1, "op:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    result = appendStringInfo(a1, "type:%u,", v13, v14, v15, v16, v17, v18, *(a2 + 8));
  }

  if (*(a2 + 12))
  {
    result = appendStringInfo(a1, "typmod:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(a1, "location:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 16));
  }

  return result;
}

unint64_t _outXmlExpr(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 7)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55068)[v10];
  }

  appendStringInfo(a1, "op:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:", v12, v13, v14, v15, v16, v17, v76);
    _outToken(a1, *(a2 + 8), v18, v19, v20, v21, v22, v23);
    appendStringInfo(a1, ",", v24, v25, v26, v27, v28, v29, v77);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "named_args:", v12, v13, v14, v15, v16, v17, v76);
    appendStringInfoChar(a1, 91);
    v36 = *(a2 + 16);
    if (v36 && *(v36 + 4) >= 1)
    {
      v37 = 0;
      v38 = 8;
      do
      {
        v39 = *(v36 + 16);
        v40 = *(v39 + 8 * v37);
        if (v40)
        {
          _outNode(a1, v40);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v39 + v38)
        {
          v41 = v39 + v38 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v41 = 1;
        }

        if (!v41)
        {
          appendStringInfoString(a1, ",");
        }

        ++v37;
        v38 += 8;
      }

      while (v37 < *(v36 + 4));
    }

    appendStringInfo(a1, "],", v30, v31, v32, v33, v34, v35, v78);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "arg_names:", v12, v13, v14, v15, v16, v17, v76);
    appendStringInfoChar(a1, 91);
    v48 = *(a2 + 24);
    if (v48 && *(v48 + 4) >= 1)
    {
      v49 = 0;
      v50 = 8;
      do
      {
        v51 = *(v48 + 16);
        v52 = *(v51 + 8 * v49);
        if (v52)
        {
          _outNode(a1, v52);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v51 + v50)
        {
          v53 = v51 + v50 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v53 = 1;
        }

        if (!v53)
        {
          appendStringInfoString(a1, ",");
        }

        ++v49;
        v50 += 8;
      }

      while (v49 < *(v48 + 4));
    }

    appendStringInfo(a1, "],", v42, v43, v44, v45, v46, v47, v79);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "args:", v12, v13, v14, v15, v16, v17, v76);
    appendStringInfoChar(a1, 91);
    v60 = *(a2 + 32);
    if (v60 && *(v60 + 4) >= 1)
    {
      v61 = 0;
      v62 = 8;
      do
      {
        v63 = *(v60 + 16);
        v64 = *(v63 + 8 * v61);
        if (v64)
        {
          _outNode(a1, v64);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v63 + v62)
        {
          v65 = v63 + v62 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v65 = 1;
        }

        if (!v65)
        {
          appendStringInfoString(a1, ",");
        }

        ++v61;
        v62 += 8;
      }

      while (v61 < *(v60 + 4));
    }

    appendStringInfo(a1, "],", v54, v55, v56, v57, v58, v59, v80);
  }

  v66 = *(a2 + 40);
  v67 = "XMLOPTION_CONTENT";
  if (v66 != 1)
  {
    LODWORD(v67) = 0;
  }

  if (v66)
  {
    LODWORD(v68) = v67;
  }

  else
  {
    v68 = "XMLOPTION_DOCUMENT";
  }

  result = appendStringInfo(a1, "xmloption:%s,", v12, v13, v14, v15, v16, v17, v68);
  if (*(a2 + 44))
  {
    result = appendStringInfo(a1, "type:%u,", v70, v71, v72, v73, v74, v75, *(a2 + 44));
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "typmod:%d,", v70, v71, v72, v73, v74, v75, *(a2 + 48));
  }

  if (*(a2 + 52))
  {
    return appendStringInfo(a1, "location:%d,", v70, v71, v72, v73, v74, v75, *(a2 + 52));
  }

  return result;
}

unint64_t _outNullTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v26);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v27);
  }

  v16 = *(a2 + 16);
  v17 = "IS_NOT_NULL";
  if (v16 != 1)
  {
    LODWORD(v17) = 0;
  }

  if (v16)
  {
    LODWORD(v18) = v17;
  }

  else
  {
    v18 = "IS_NULL";
  }

  result = appendStringInfo(a1, "nulltesttype:%s,", a3, a4, a5, a6, a7, a8, v18);
  if (*(a2 + 20) == 1)
  {
    result = appendStringInfo(a1, "argisrow:%s,", v20, v21, v22, v23, v24, v25, "true");
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(a1, "location:%d,", v20, v21, v22, v23, v24, v25, *(a2 + 24));
  }

  return result;
}

unint64_t _outBooleanTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v25);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v26);
  }

  v16 = *(a2 + 16);
  if (v16 > 5)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (&off_1E6E550A8)[v16];
  }

  result = appendStringInfo(a1, "BOOLtesttype:%s,", a3, a4, a5, a6, a7, a8, v17);
  if (*(a2 + 20))
  {
    return appendStringInfo(a1, "location:%d,", v19, v20, v21, v22, v23, v24, *(a2 + 20));
  }

  return result;
}

unint64_t _outCoerceToDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arg:", a3, a4, a5, a6, a7, a8, v25);
    _outNode(a1, *(a2 + 8));
    appendStringInfo(a1, ",", v10, v11, v12, v13, v14, v15, v26);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "resulttype:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    appendStringInfo(a1, "resulttypmod:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "resultcollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  v16 = *(a2 + 28);
  if (v16 > 2)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = (&off_1E6E550D8)[v16];
  }

  result = appendStringInfo(a1, "coercionformat:%s,", a3, a4, a5, a6, a7, a8, v17);
  if (*(a2 + 32))
  {
    return appendStringInfo(a1, "location:%d,", v19, v20, v21, v22, v23, v24, *(a2 + 32));
  }

  return result;
}

uint64_t _outCoerceToDomainValue(uint64_t result, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a2[1])
  {
    result = appendStringInfo(result, "typeId:%u,", a3, a4, a5, a6, a7, a8, a2[1]);
  }

  if (a2[2])
  {
    result = appendStringInfo(v9, "typeMod:%d,", a3, a4, a5, a6, a7, a8, a2[2]);
  }

  if (a2[3])
  {
    result = appendStringInfo(v9, "collation:%u,", a3, a4, a5, a6, a7, a8, a2[3]);
  }

  if (a2[4])
  {
    return appendStringInfo(v9, "location:%d,", a3, a4, a5, a6, a7, a8, a2[4]);
  }

  return result;
}

uint64_t _outCurrentOfExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "cvarno:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(v9, "cursor_name:", a3, a4, a5, a6, a7, a8, v22);
    _outToken(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    result = appendStringInfo(v9, ",", v16, v17, v18, v19, v20, v21, v23);
  }

  if (*(a2 + 16))
  {
    return appendStringInfo(v9, "cursor_param:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  return result;
}

uint64_t _outNextValueExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 4))
  {
    result = appendStringInfo(result, "seqid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    return appendStringInfo(v9, "typeId:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 8));
  }

  return result;
}

uint64_t _outInferenceElem(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "expr:", a3, a4, a5, a6, a7, a8, v16);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v17);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "infercollid:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 20))
  {
    return appendStringInfo(v9, "inferopclass:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 20));
  }

  return result;
}

uint64_t _outTargetEntry(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "expr:", a3, a4, a5, a6, a7, a8, v28);
    _outNode(v9, *(a2 + 8));
    result = appendStringInfo(v9, ",", v10, v11, v12, v13, v14, v15, v29);
  }

  if (*(a2 + 16))
  {
    result = appendStringInfo(v9, "resno:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v9, "resname:", a3, a4, a5, a6, a7, a8, v28);
    _outToken(v9, *(a2 + 24), v16, v17, v18, v19, v20, v21);
    result = appendStringInfo(v9, ",", v22, v23, v24, v25, v26, v27, v30);
  }

  if (*(a2 + 32))
  {
    result = appendStringInfo(v9, "ressortgroupref:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 32));
  }

  if (*(a2 + 36))
  {
    result = appendStringInfo(v9, "resorigtbl:%u,", a3, a4, a5, a6, a7, a8, *(a2 + 36));
  }

  if (*(a2 + 40))
  {
    result = appendStringInfo(v9, "resorigcol:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 40));
  }

  if (*(a2 + 42) == 1)
  {
    return appendStringInfo(v9, "resjunk:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  return result;
}

unint64_t _outJoinExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 7)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E558A8)[v10];
  }

  result = appendStringInfo(a1, "jointype:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8) == 1)
  {
    result = appendStringInfo(a1, "isNatural:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "larg:", v13, v14, v15, v16, v17, v18, v65);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v19, v20, v21, v22, v23, v24, v66);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "rarg:", v13, v14, v15, v16, v17, v18, v65);
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",", v25, v26, v27, v28, v29, v30, v67);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "usingClause:", v13, v14, v15, v16, v17, v18, v65);
    appendStringInfoChar(a1, 91);
    v37 = *(a2 + 32);
    if (v37 && *(v37 + 4) >= 1)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v37 + 16);
        v41 = *(v40 + 8 * v38);
        if (v41)
        {
          _outNode(a1, v41);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v40 + v39)
        {
          v42 = v40 + v39 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          appendStringInfoString(a1, ",");
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v37 + 4));
    }

    result = appendStringInfo(a1, "],", v31, v32, v33, v34, v35, v36, v68);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "quals:", v13, v14, v15, v16, v17, v18, v65);
    _outNode(a1, *(a2 + 40));
    result = appendStringInfo(a1, ",", v43, v44, v45, v46, v47, v48, v69);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "alias:{", v13, v14, v15, v16, v17, v18, v65);
    _outAlias(a1, *(a2 + 48), v49, v50, v51, v52, v53, v54, v70);
    v61 = *(a1 + 8);
    v62 = __OFSUB__(v61, 1);
    v63 = v61 - 1;
    if (v63 < 0 == v62)
    {
      v64 = *a1;
      if (*(*a1 + v63) == 44)
      {
        *(a1 + 8) = v63;
        *(v64 + v63) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v55, v56, v57, v58, v59, v60, v71);
  }

  if (*(a2 + 56))
  {
    return appendStringInfo(a1, "rtindex:%d,", v13, v14, v15, v16, v17, v18, *(a2 + 56));
  }

  return result;
}

uint64_t _outFromExpr(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "fromlist:", a3, a4, a5, a6, a7, a8, v29);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v30);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "quals:", a3, a4, a5, a6, a7, a8, v29);
    _outNode(v10, *(a2 + 16));

    return appendStringInfo(v10, ",", v23, v24, v25, v26, v27, v28, a9);
  }

  return result;
}

unint64_t _outOnConflictExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 2)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_1E6E55970)[v11];
  }

  result = appendStringInfo(a1, "action:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "arbiterElems:", v14, v15, v16, v17, v18, v19, v68);
    appendStringInfoChar(a1, 91);
    v26 = *(a2 + 8);
    if (v26 && *(v26 + 4) >= 1)
    {
      v27 = 0;
      v28 = 8;
      do
      {
        v29 = *(v26 + 16);
        v30 = *(v29 + 8 * v27);
        if (v30)
        {
          _outNode(a1, v30);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v29 + v28)
        {
          v31 = v29 + v28 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          appendStringInfoString(a1, ",");
        }

        ++v27;
        v28 += 8;
      }

      while (v27 < *(v26 + 4));
    }

    result = appendStringInfo(a1, "],", v20, v21, v22, v23, v24, v25, v69);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "arbiterWhere:", v14, v15, v16, v17, v18, v19, v68);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v32, v33, v34, v35, v36, v37, v70);
  }

  if (*(a2 + 24))
  {
    result = appendStringInfo(a1, "constraint:%u,", v14, v15, v16, v17, v18, v19, *(a2 + 24));
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "onConflictSet:", v14, v15, v16, v17, v18, v19, v68);
    appendStringInfoChar(a1, 91);
    v44 = *(a2 + 32);
    if (v44 && *(v44 + 4) >= 1)
    {
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = *(v44 + 16);
        v48 = *(v47 + 8 * v45);
        if (v48)
        {
          _outNode(a1, v48);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v47 + v46)
        {
          v49 = v47 + v46 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          appendStringInfoString(a1, ",");
        }

        ++v45;
        v46 += 8;
      }

      while (v45 < *(v44 + 4));
    }

    result = appendStringInfo(a1, "],", v38, v39, v40, v41, v42, v43, v71);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "onConflictWhere:", v14, v15, v16, v17, v18, v19, v68);
    _outNode(a1, *(a2 + 40));
    result = appendStringInfo(a1, ",", v50, v51, v52, v53, v54, v55, v72);
  }

  if (*(a2 + 48))
  {
    result = appendStringInfo(a1, "exclRelIndex:%d,", v14, v15, v16, v17, v18, v19, *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "exclRelTlist:", v14, v15, v16, v17, v18, v19, v68);
    appendStringInfoChar(a1, 91);
    v62 = *(a2 + 56);
    if (v62 && *(v62 + 4) >= 1)
    {
      v63 = 0;
      v64 = 8;
      do
      {
        v65 = *(v62 + 16);
        v66 = *(v65 + 8 * v63);
        if (v66)
        {
          _outNode(a1, v66);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v65 + v64)
        {
          v67 = v65 + v64 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          appendStringInfoString(a1, ",");
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < *(v62 + 4));
    }

    return appendStringInfo(a1, "],", v56, v57, v58, v59, v60, v61, a9);
  }

  return result;
}

unint64_t _outIntoClause(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "rel:{", a3, a4, a5, a6, a7, a8, v89);
    _outRangeVar(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = a1[2];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        a1[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v90);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "colNames:", a3, a4, a5, a6, a7, a8, v89);
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],", v26, v27, v28, v29, v30, v31, v91);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "accessMethod:", a3, a4, a5, a6, a7, a8, v89);
    _outToken(a1, *(a2 + 24), v38, v39, v40, v41, v42, v43);
    appendStringInfo(a1, ",", v44, v45, v46, v47, v48, v49, v92);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "options:", a3, a4, a5, a6, a7, a8, v89);
    appendStringInfoChar(a1, 91);
    v56 = *(a2 + 32);
    if (v56 && *(v56 + 4) >= 1)
    {
      v57 = 0;
      v58 = 8;
      do
      {
        v59 = *(v56 + 16);
        v60 = *(v59 + 8 * v57);
        if (v60)
        {
          _outNode(a1, v60);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v59 + v58)
        {
          v61 = v59 + v58 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          appendStringInfoString(a1, ",");
        }

        ++v57;
        v58 += 8;
      }

      while (v57 < *(v56 + 4));
    }

    appendStringInfo(a1, "],", v50, v51, v52, v53, v54, v55, v93);
  }

  v62 = *(a2 + 40);
  if (v62 > 3)
  {
    LODWORD(v63) = 0;
  }

  else
  {
    v63 = (&off_1E6E55398)[v62];
  }

  result = appendStringInfo(a1, "onCommit:%s,", a3, a4, a5, a6, a7, a8, v63);
  if (*(a2 + 48))
  {
    appendStringInfo(a1, "tableSpaceName:", v65, v66, v67, v68, v69, v70, v94);
    _outToken(a1, *(a2 + 48), v71, v72, v73, v74, v75, v76);
    result = appendStringInfo(a1, ",", v77, v78, v79, v80, v81, v82, v95);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "viewQuery:", v65, v66, v67, v68, v69, v70, v94);
    _outNode(a1, *(a2 + 56));
    result = appendStringInfo(a1, ",", v83, v84, v85, v86, v87, v88, v96);
  }

  if (*(a2 + 64) == 1)
  {
    return appendStringInfo(a1, "skipData:%s,", v65, v66, v67, v68, v69, v70, "true");
  }

  return result;
}

unint64_t _outQuery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 6)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E553D8)[v10];
  }

  appendStringInfo(a1, "commandType:%s,", a3, a4, a5, a6, a7, a8, v11);
  v18 = *(a2 + 8);
  if (v18 > 4)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = (&off_1E6E550F0)[v18];
  }

  appendStringInfo(a1, "querySource:%s,", v12, v13, v14, v15, v16, v17, v19);
  if (*(a2 + 24) == 1)
  {
    appendStringInfo(a1, "canSetTag:%s,", v20, v21, v22, v23, v24, v25, "true");
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "utilityStmt:", v20, v21, v22, v23, v24, v25, v248);
    _outNode(a1, *(a2 + 32));
    appendStringInfo(a1, ",", v26, v27, v28, v29, v30, v31, v249);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "resultRelation:%d,", v20, v21, v22, v23, v24, v25, *(a2 + 40));
  }

  if (*(a2 + 44) == 1)
  {
    appendStringInfo(a1, "hasAggs:%s,", v20, v21, v22, v23, v24, v25, "true");
    if (*(a2 + 45) != 1)
    {
LABEL_15:
      if (*(a2 + 46) != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if (*(a2 + 45) != 1)
  {
    goto LABEL_15;
  }

  appendStringInfo(a1, "hasWindowFuncs:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 46) != 1)
  {
LABEL_16:
    if (*(a2 + 47) != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  appendStringInfo(a1, "hasTargetSRFs:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 47) != 1)
  {
LABEL_17:
    if (*(a2 + 48) != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  appendStringInfo(a1, "hasSubLinks:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 48) != 1)
  {
LABEL_18:
    if (*(a2 + 49) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  appendStringInfo(a1, "hasDistinctOn:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 49) != 1)
  {
LABEL_19:
    if (*(a2 + 50) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  appendStringInfo(a1, "hasRecursive:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 50) != 1)
  {
LABEL_20:
    if (*(a2 + 51) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  appendStringInfo(a1, "hasModifyingCTE:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 51) != 1)
  {
LABEL_21:
    if (*(a2 + 52) != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  appendStringInfo(a1, "hasForUpdate:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (*(a2 + 52) != 1)
  {
LABEL_22:
    if (!*(a2 + 56))
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  appendStringInfo(a1, "hasRowSecurity:%s,", v20, v21, v22, v23, v24, v25, "true");
  if (!*(a2 + 56))
  {
LABEL_23:
    if (!*(a2 + 64))
    {
      goto LABEL_24;
    }

    goto LABEL_50;
  }

LABEL_37:
  appendStringInfo(a1, "cteList:", v20, v21, v22, v23, v24, v25, v248);
  appendStringInfoChar(a1, 91);
  v40 = *(a2 + 56);
  if (v40 && *(v40 + 4) >= 1)
  {
    v41 = 0;
    v42 = 8;
    do
    {
      v43 = *(v40 + 16);
      v44 = *(v43 + 8 * v41);
      if (v44)
      {
        _outNode(a1, v44);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v43 + v42)
      {
        v45 = v43 + v42 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
      }

      else
      {
        v45 = 1;
      }

      if (!v45)
      {
        appendStringInfoString(a1, ",");
      }

      ++v41;
      v42 += 8;
    }

    while (v41 < *(v40 + 4));
  }

  appendStringInfo(a1, "],", v34, v35, v36, v37, v38, v39, v250);
  if (!*(a2 + 64))
  {
LABEL_24:
    if (!*(a2 + 72))
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_50:
  appendStringInfo(a1, "rtable:", v20, v21, v22, v23, v24, v25, v248);
  appendStringInfoChar(a1, 91);
  v52 = *(a2 + 64);
  if (v52 && *(v52 + 4) >= 1)
  {
    v53 = 0;
    v54 = 8;
    do
    {
      v55 = *(v52 + 16);
      v56 = *(v55 + 8 * v53);
      if (v56)
      {
        _outNode(a1, v56);
      }

      else
      {
        appendStringInfoString(a1, "{}");
      }

      if (v55 + v54)
      {
        v57 = v55 + v54 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
      }

      else
      {
        v57 = 1;
      }

      if (!v57)
      {
        appendStringInfoString(a1, ",");
      }

      ++v53;
      v54 += 8;
    }

    while (v53 < *(v52 + 4));
  }

  appendStringInfo(a1, "],", v46, v47, v48, v49, v50, v51, v251);
  if (!*(a2 + 72))
  {
LABEL_25:
    if (!*(a2 + 80))
    {
      goto LABEL_26;
    }

LABEL_67:
    appendStringInfo(a1, "targetList:", v20, v21, v22, v23, v24, v25, v248);
    appendStringInfoChar(a1, 91);
    v80 = *(a2 + 80);
    if (v80 && *(v80 + 4) >= 1)
    {
      v81 = 0;
      v82 = 8;
      do
      {
        v83 = *(v80 + 16);
        v84 = *(v83 + 8 * v81);
        if (v84)
        {
          _outNode(a1, v84);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v83 + v82)
        {
          v85 = v83 + v82 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v85 = 1;
        }

        if (!v85)
        {
          appendStringInfoString(a1, ",");
        }

        ++v81;
        v82 += 8;
      }

      while (v81 < *(v80 + 4));
    }

    appendStringInfo(a1, "],", v74, v75, v76, v77, v78, v79, v254);
    v32 = *(a2 + 88);
    if (v32 <= 2)
    {
      goto LABEL_27;
    }

    goto LABEL_80;
  }

LABEL_63:
  appendStringInfo(a1, "jointree:{", v20, v21, v22, v23, v24, v25, v248);
  _outFromExpr(a1, *(a2 + 72), v58, v59, v60, v61, v62, v63, v252);
  v70 = *(a1 + 8);
  v71 = __OFSUB__(v70, 1);
  v72 = v70 - 1;
  if (v72 < 0 == v71)
  {
    v73 = *a1;
    if (*(*a1 + v72) == 44)
    {
      *(a1 + 8) = v72;
      *(v73 + v72) = 0;
    }
  }

  appendStringInfo(a1, "},", v64, v65, v66, v67, v68, v69, v253);
  if (*(a2 + 80))
  {
    goto LABEL_67;
  }

LABEL_26:
  v32 = *(a2 + 88);
  if (v32 <= 2)
  {
LABEL_27:
    v33 = (&off_1E6E55118)[v32];
    goto LABEL_81;
  }

LABEL_80:
  LODWORD(v33) = 0;
LABEL_81:
  appendStringInfo(a1, "override:%s,", v20, v21, v22, v23, v24, v25, v33);
  if (*(a2 + 96))
  {
    appendStringInfo(a1, "onConflict:{", v86, v87, v88, v89, v90, v91, v255);
    _outOnConflictExpr(a1, *(a2 + 96), v92, v93, v94, v95, v96, v97, v256);
    v104 = *(a1 + 8);
    v71 = __OFSUB__(v104, 1);
    v105 = v104 - 1;
    if (v105 < 0 == v71)
    {
      v106 = *a1;
      if (*(*a1 + v105) == 44)
      {
        *(a1 + 8) = v105;
        *(v106 + v105) = 0;
      }
    }

    appendStringInfo(a1, "},", v98, v99, v100, v101, v102, v103, v257);
  }

  if (*(a2 + 104))
  {
    appendStringInfo(a1, "returningList:", v86, v87, v88, v89, v90, v91, v255);
    appendStringInfoChar(a1, 91);
    v113 = *(a2 + 104);
    if (v113 && *(v113 + 4) >= 1)
    {
      v114 = 0;
      v115 = 8;
      do
      {
        v116 = *(v113 + 16);
        v117 = *(v116 + 8 * v114);
        if (v117)
        {
          _outNode(a1, v117);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v116 + v115)
        {
          v118 = v116 + v115 >= (*(*(a2 + 104) + 16) + 8 * *(*(a2 + 104) + 4));
        }

        else
        {
          v118 = 1;
        }

        if (!v118)
        {
          appendStringInfoString(a1, ",");
        }

        ++v114;
        v115 += 8;
      }

      while (v114 < *(v113 + 4));
    }

    appendStringInfo(a1, "],", v107, v108, v109, v110, v111, v112, v258);
  }

  if (*(a2 + 112))
  {
    appendStringInfo(a1, "groupClause:", v86, v87, v88, v89, v90, v91, v255);
    appendStringInfoChar(a1, 91);
    v125 = *(a2 + 112);
    if (v125 && *(v125 + 4) >= 1)
    {
      v126 = 0;
      v127 = 8;
      do
      {
        v128 = *(v125 + 16);
        v129 = *(v128 + 8 * v126);
        if (v129)
        {
          _outNode(a1, v129);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v128 + v127)
        {
          v130 = v128 + v127 >= (*(*(a2 + 112) + 16) + 8 * *(*(a2 + 112) + 4));
        }

        else
        {
          v130 = 1;
        }

        if (!v130)
        {
          appendStringInfoString(a1, ",");
        }

        ++v126;
        v127 += 8;
      }

      while (v126 < *(v125 + 4));
    }

    appendStringInfo(a1, "],", v119, v120, v121, v122, v123, v124, v259);
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "groupingSets:", v86, v87, v88, v89, v90, v91, v255);
    appendStringInfoChar(a1, 91);
    v137 = *(a2 + 120);
    if (v137 && *(v137 + 4) >= 1)
    {
      v138 = 0;
      v139 = 8;
      do
      {
        v140 = *(v137 + 16);
        v141 = *(v140 + 8 * v138);
        if (v141)
        {
          _outNode(a1, v141);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v140 + v139)
        {
          v142 = v140 + v139 >= (*(*(a2 + 120) + 16) + 8 * *(*(a2 + 120) + 4));
        }

        else
        {
          v142 = 1;
        }

        if (!v142)
        {
          appendStringInfoString(a1, ",");
        }

        ++v138;
        v139 += 8;
      }

      while (v138 < *(v137 + 4));
    }

    appendStringInfo(a1, "],", v131, v132, v133, v134, v135, v136, v260);
  }

  if (*(a2 + 128))
  {
    appendStringInfo(a1, "havingQual:", v86, v87, v88, v89, v90, v91, v255);
    _outNode(a1, *(a2 + 128));
    appendStringInfo(a1, ",", v143, v144, v145, v146, v147, v148, v261);
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "windowClause:", v86, v87, v88, v89, v90, v91, v255);
    appendStringInfoChar(a1, 91);
    v155 = *(a2 + 136);
    if (v155 && *(v155 + 4) >= 1)
    {
      v156 = 0;
      v157 = 8;
      do
      {
        v158 = *(v155 + 16);
        v159 = *(v158 + 8 * v156);
        if (v159)
        {
          _outNode(a1, v159);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v158 + v157)
        {
          v160 = v158 + v157 >= (*(*(a2 + 136) + 16) + 8 * *(*(a2 + 136) + 4));
        }

        else
        {
          v160 = 1;
        }

        if (!v160)
        {
          appendStringInfoString(a1, ",");
        }

        ++v156;
        v157 += 8;
      }

      while (v156 < *(v155 + 4));
    }

    appendStringInfo(a1, "],", v149, v150, v151, v152, v153, v154, v262);
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "distinctClause:", v86, v87, v88, v89, v90, v91, v255);
    appendStringInfoChar(a1, 91);
    v167 = *(a2 + 144);
    if (v167 && *(v167 + 4) >= 1)
    {
      v168 = 0;
      v169 = 8;
      do
      {
        v170 = *(v167 + 16);
        v171 = *(v170 + 8 * v168);
        if (v171)
        {
          _outNode(a1, v171);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v170 + v169)
        {
          v172 = v170 + v169 >= (*(*(a2 + 144) + 16) + 8 * *(*(a2 + 144) + 4));
        }

        else
        {
          v172 = 1;
        }

        if (!v172)
        {
          appendStringInfoString(a1, ",");
        }

        ++v168;
        v169 += 8;
      }

      while (v168 < *(v167 + 4));
    }

    appendStringInfo(a1, "],", v161, v162, v163, v164, v165, v166, v263);
  }

  if (*(a2 + 152))
  {
    appendStringInfo(a1, "sortClause:", v86, v87, v88, v89, v90, v91, v255);
    appendStringInfoChar(a1, 91);
    v179 = *(a2 + 152);
    if (v179 && *(v179 + 4) >= 1)
    {
      v180 = 0;
      v181 = 8;
      do
      {
        v182 = *(v179 + 16);
        v183 = *(v182 + 8 * v180);
        if (v183)
        {
          _outNode(a1, v183);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v182 + v181)
        {
          v184 = v182 + v181 >= (*(*(a2 + 152) + 16) + 8 * *(*(a2 + 152) + 4));
        }

        else
        {
          v184 = 1;
        }

        if (!v184)
        {
          appendStringInfoString(a1, ",");
        }

        ++v180;
        v181 += 8;
      }

      while (v180 < *(v179 + 4));
    }

    appendStringInfo(a1, "],", v173, v174, v175, v176, v177, v178, v264);
  }

  if (*(a2 + 160))
  {
    appendStringInfo(a1, "limitOffset:", v86, v87, v88, v89, v90, v91, v255);
    _outNode(a1, *(a2 + 160));
    appendStringInfo(a1, ",", v185, v186, v187, v188, v189, v190, v265);
  }

  if (*(a2 + 168))
  {
    appendStringInfo(a1, "limitCount:", v86, v87, v88, v89, v90, v91, v255);
    _outNode(a1, *(a2 + 168));
    appendStringInfo(a1, ",", v191, v192, v193, v194, v195, v196, v266);
  }

  v197 = *(a2 + 176);
  if (v197 > 2)
  {
    LODWORD(v198) = 0;
  }

  else
  {
    v198 = (&off_1E6E55130)[v197];
  }

  result = appendStringInfo(a1, "limitOption:%s,", v86, v87, v88, v89, v90, v91, v198);
  if (*(a2 + 184))
  {
    appendStringInfo(a1, "rowMarks:", v200, v201, v202, v203, v204, v205, v267);
    appendStringInfoChar(a1, 91);
    v212 = *(a2 + 184);
    if (v212 && *(v212 + 4) >= 1)
    {
      v213 = 0;
      v214 = 8;
      do
      {
        v215 = *(v212 + 16);
        v216 = *(v215 + 8 * v213);
        if (v216)
        {
          _outNode(a1, v216);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v215 + v214)
        {
          v217 = v215 + v214 >= (*(*(a2 + 184) + 16) + 8 * *(*(a2 + 184) + 4));
        }

        else
        {
          v217 = 1;
        }

        if (!v217)
        {
          appendStringInfoString(a1, ",");
        }

        ++v213;
        v214 += 8;
      }

      while (v213 < *(v212 + 4));
    }

    result = appendStringInfo(a1, "],", v206, v207, v208, v209, v210, v211, v268);
  }

  if (*(a2 + 192))
  {
    appendStringInfo(a1, "setOperations:", v200, v201, v202, v203, v204, v205, v267);
    _outNode(a1, *(a2 + 192));
    result = appendStringInfo(a1, ",", v218, v219, v220, v221, v222, v223, v269);
  }

  if (*(a2 + 200))
  {
    appendStringInfo(a1, "constraintDeps:", v200, v201, v202, v203, v204, v205, v267);
    appendStringInfoChar(a1, 91);
    v230 = *(a2 + 200);
    if (v230 && *(v230 + 4) >= 1)
    {
      v231 = 0;
      v232 = 8;
      do
      {
        v233 = *(v230 + 16);
        v234 = *(v233 + 8 * v231);
        if (v234)
        {
          _outNode(a1, v234);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v233 + v232)
        {
          v235 = v233 + v232 >= (*(*(a2 + 200) + 16) + 8 * *(*(a2 + 200) + 4));
        }

        else
        {
          v235 = 1;
        }

        if (!v235)
        {
          appendStringInfoString(a1, ",");
        }

        ++v231;
        v232 += 8;
      }

      while (v231 < *(v230 + 4));
    }

    result = appendStringInfo(a1, "],", v224, v225, v226, v227, v228, v229, v270);
  }

  if (*(a2 + 208))
  {
    appendStringInfo(a1, "withCheckOptions:", v200, v201, v202, v203, v204, v205, v267);
    appendStringInfoChar(a1, 91);
    v242 = *(a2 + 208);
    if (v242 && *(v242 + 4) >= 1)
    {
      v243 = 0;
      v244 = 8;
      do
      {
        v245 = *(v242 + 16);
        v246 = *(v245 + 8 * v243);
        if (v246)
        {
          _outNode(a1, v246);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v245 + v244)
        {
          v247 = v245 + v244 >= (*(*(a2 + 208) + 16) + 8 * *(*(a2 + 208) + 4));
        }

        else
        {
          v247 = 1;
        }

        if (!v247)
        {
          appendStringInfoString(a1, ",");
        }

        ++v243;
        v244 += 8;
      }

      while (v243 < *(v242 + 4));
    }

    result = appendStringInfo(a1, "],", v236, v237, v238, v239, v240, v241, v271);
  }

  if (*(a2 + 216))
  {
    result = appendStringInfo(a1, "stmt_location:%d,", v200, v201, v202, v203, v204, v205, *(a2 + 216));
  }

  if (*(a2 + 220))
  {
    return appendStringInfo(a1, "stmt_len:%d,", v200, v201, v202, v203, v204, v205, *(a2 + 220));
  }

  return result;
}

unint64_t _outInsertStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", a3, a4, a5, a6, a7, a8, v89);
    _outRangeVar(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(a1 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        *(a1 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v90);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "cols:", a3, a4, a5, a6, a7, a8, v89);
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],", v26, v27, v28, v29, v30, v31, v91);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "selectStmt:", a3, a4, a5, a6, a7, a8, v89);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v38, v39, v40, v41, v42, v43, v92);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "onConflictClause:{", a3, a4, a5, a6, a7, a8, v89);
    _outOnConflictClause(a1, *(a2 + 32), v44, v45, v46, v47, v48, v49);
    v56 = *(a1 + 8);
    v23 = __OFSUB__(v56, 1);
    v57 = v56 - 1;
    if (v57 < 0 == v23)
    {
      v58 = *a1;
      if (*(*a1 + v57) == 44)
      {
        *(a1 + 8) = v57;
        *(v58 + v57) = 0;
      }
    }

    appendStringInfo(a1, "},", v50, v51, v52, v53, v54, v55, v93);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "returningList:", a3, a4, a5, a6, a7, a8, v89);
    appendStringInfoChar(a1, 91);
    v65 = *(a2 + 40);
    if (v65 && *(v65 + 4) >= 1)
    {
      v66 = 0;
      v67 = 8;
      do
      {
        v68 = *(v65 + 16);
        v69 = *(v68 + 8 * v66);
        if (v69)
        {
          _outNode(a1, v69);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v68 + v67)
        {
          v70 = v68 + v67 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v70 = 1;
        }

        if (!v70)
        {
          appendStringInfoString(a1, ",");
        }

        ++v66;
        v67 += 8;
      }

      while (v66 < *(v65 + 4));
    }

    appendStringInfo(a1, "],", v59, v60, v61, v62, v63, v64, v94);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "withClause:{", a3, a4, a5, a6, a7, a8, v89);
    _outWithClause(a1, *(a2 + 48), v71, v72, v73, v74, v75, v76);
    v83 = *(a1 + 8);
    v23 = __OFSUB__(v83, 1);
    v84 = v83 - 1;
    if (v84 < 0 == v23)
    {
      v85 = *a1;
      if (*(*a1 + v84) == 44)
      {
        *(a1 + 8) = v84;
        *(v85 + v84) = 0;
      }
    }

    appendStringInfo(a1, "},", v77, v78, v79, v80, v81, v82, v95);
  }

  v86 = *(a2 + 56);
  if (v86 > 2)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = (&off_1E6E55118)[v86];
  }

  return appendStringInfo(a1, "override:%s,", a3, a4, a5, a6, a7, a8, v87);
}

uint64_t _outDeleteStmt(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (a2[1])
  {
    appendStringInfo(result, "relation:{", a3, a4, a5, a6, a7, a8, v72);
    _outRangeVar(v10, a2[1], v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v73);
  }

  if (a2[2])
  {
    appendStringInfo(v10, "usingClause:", a3, a4, a5, a6, a7, a8, v72);
    appendStringInfoChar(v10, 91);
    v33 = a2[2];
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(v10, v37);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(a2[2] + 16) + 8 * *(a2[2] + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(v10, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    result = appendStringInfo(v10, "],", v27, v28, v29, v30, v31, v32, v74);
  }

  if (a2[3])
  {
    appendStringInfo(v10, "whereClause:", a3, a4, a5, a6, a7, a8, v72);
    _outNode(v10, a2[3]);
    result = appendStringInfo(v10, ",", v39, v40, v41, v42, v43, v44, v75);
  }

  if (a2[4])
  {
    appendStringInfo(v10, "returningList:", a3, a4, a5, a6, a7, a8, v72);
    appendStringInfoChar(v10, 91);
    v51 = a2[4];
    if (v51 && *(v51 + 4) >= 1)
    {
      v52 = 0;
      v53 = 8;
      do
      {
        v54 = *(v51 + 16);
        v55 = *(v54 + 8 * v52);
        if (v55)
        {
          _outNode(v10, v55);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v54 + v53)
        {
          v56 = v54 + v53 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          appendStringInfoString(v10, ",");
        }

        ++v52;
        v53 += 8;
      }

      while (v52 < *(v51 + 4));
    }

    result = appendStringInfo(v10, "],", v45, v46, v47, v48, v49, v50, v76);
  }

  if (a2[5])
  {
    appendStringInfo(v10, "withClause:{", a3, a4, a5, a6, a7, a8, v72);
    _outWithClause(v10, a2[5], v57, v58, v59, v60, v61, v62);
    v69 = *(v10 + 8);
    v24 = __OFSUB__(v69, 1);
    v70 = v69 - 1;
    if (v70 < 0 == v24)
    {
      v71 = *v10;
      if (*(*v10 + v70) == 44)
      {
        *(v10 + 8) = v70;
        *(v71 + v70) = 0;
      }
    }

    return appendStringInfo(v10, "},", v63, v64, v65, v66, v67, v68, a9);
  }

  return result;
}

uint64_t _outUpdateStmt(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (a2[1])
  {
    appendStringInfo(result, "relation:{", a3, a4, a5, a6, a7, a8, v84);
    _outRangeVar(v10, a2[1], v11, v12, v13, v14, v15, v16);
    v23 = *(v10 + 8);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        *(v10 + 8) = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v85);
  }

  if (a2[2])
  {
    appendStringInfo(v10, "targetList:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(v10, 91);
    v33 = a2[2];
    if (v33 && *(v33 + 4) >= 1)
    {
      v34 = 0;
      v35 = 8;
      do
      {
        v36 = *(v33 + 16);
        v37 = *(v36 + 8 * v34);
        if (v37)
        {
          _outNode(v10, v37);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v36 + v35)
        {
          v38 = v36 + v35 >= (*(a2[2] + 16) + 8 * *(a2[2] + 4));
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          appendStringInfoString(v10, ",");
        }

        ++v34;
        v35 += 8;
      }

      while (v34 < *(v33 + 4));
    }

    result = appendStringInfo(v10, "],", v27, v28, v29, v30, v31, v32, v86);
  }

  if (a2[3])
  {
    appendStringInfo(v10, "whereClause:", a3, a4, a5, a6, a7, a8, v84);
    _outNode(v10, a2[3]);
    result = appendStringInfo(v10, ",", v39, v40, v41, v42, v43, v44, v87);
  }

  if (a2[4])
  {
    appendStringInfo(v10, "fromClause:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(v10, 91);
    v51 = a2[4];
    if (v51 && *(v51 + 4) >= 1)
    {
      v52 = 0;
      v53 = 8;
      do
      {
        v54 = *(v51 + 16);
        v55 = *(v54 + 8 * v52);
        if (v55)
        {
          _outNode(v10, v55);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v54 + v53)
        {
          v56 = v54 + v53 >= (*(a2[4] + 16) + 8 * *(a2[4] + 4));
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          appendStringInfoString(v10, ",");
        }

        ++v52;
        v53 += 8;
      }

      while (v52 < *(v51 + 4));
    }

    result = appendStringInfo(v10, "],", v45, v46, v47, v48, v49, v50, v88);
  }

  if (a2[5])
  {
    appendStringInfo(v10, "returningList:", a3, a4, a5, a6, a7, a8, v84);
    appendStringInfoChar(v10, 91);
    v63 = a2[5];
    if (v63 && *(v63 + 4) >= 1)
    {
      v64 = 0;
      v65 = 8;
      do
      {
        v66 = *(v63 + 16);
        v67 = *(v66 + 8 * v64);
        if (v67)
        {
          _outNode(v10, v67);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v66 + v65)
        {
          v68 = v66 + v65 >= (*(a2[5] + 16) + 8 * *(a2[5] + 4));
        }

        else
        {
          v68 = 1;
        }

        if (!v68)
        {
          appendStringInfoString(v10, ",");
        }

        ++v64;
        v65 += 8;
      }

      while (v64 < *(v63 + 4));
    }

    result = appendStringInfo(v10, "],", v57, v58, v59, v60, v61, v62, v89);
  }

  if (a2[6])
  {
    appendStringInfo(v10, "withClause:{", a3, a4, a5, a6, a7, a8, v84);
    _outWithClause(v10, a2[6], v69, v70, v71, v72, v73, v74);
    v81 = *(v10 + 8);
    v24 = __OFSUB__(v81, 1);
    v82 = v81 - 1;
    if (v82 < 0 == v24)
    {
      v83 = *v10;
      if (*(*v10 + v82) == 44)
      {
        *(v10 + 8) = v82;
        *(v83 + v82) = 0;
      }
    }

    return appendStringInfo(v10, "},", v75, v76, v77, v78, v79, v80, a9);
  }

  return result;
}

unint64_t _outSelectStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "distinctClause:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(a1, v21);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(a1, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    appendStringInfo(a1, "],", v11, v12, v13, v14, v15, v16, v198);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "intoClause:{", a3, a4, a5, a6, a7, a8, v197);
    _outIntoClause(a1, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = a1[2];
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *a1;
      if (*(*a1 + v37) == 44)
      {
        a1[2] = v37;
        *(v38 + v37) = 0;
      }
    }

    appendStringInfo(a1, "},", v29, v30, v31, v32, v33, v34, v199);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "targetList:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v45 = *(a2 + 24);
    if (v45 && *(v45 + 4) >= 1)
    {
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v45 + 16);
        v49 = *(v48 + 8 * v46);
        if (v49)
        {
          _outNode(a1, v49);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v48 + v47)
        {
          v50 = v48 + v47 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v50 = 1;
        }

        if (!v50)
        {
          appendStringInfoString(a1, ",");
        }

        ++v46;
        v47 += 8;
      }

      while (v46 < *(v45 + 4));
    }

    appendStringInfo(a1, "],", v39, v40, v41, v42, v43, v44, v200);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "fromClause:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v57 = *(a2 + 32);
    if (v57 && *(v57 + 4) >= 1)
    {
      v58 = 0;
      v59 = 8;
      do
      {
        v60 = *(v57 + 16);
        v61 = *(v60 + 8 * v58);
        if (v61)
        {
          _outNode(a1, v61);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v60 + v59)
        {
          v62 = v60 + v59 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          appendStringInfoString(a1, ",");
        }

        ++v58;
        v59 += 8;
      }

      while (v58 < *(v57 + 4));
    }

    appendStringInfo(a1, "],", v51, v52, v53, v54, v55, v56, v201);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "whereClause:", a3, a4, a5, a6, a7, a8, v197);
    _outNode(a1, *(a2 + 40));
    appendStringInfo(a1, ",", v63, v64, v65, v66, v67, v68, v202);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "groupClause:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v75 = *(a2 + 48);
    if (v75 && *(v75 + 4) >= 1)
    {
      v76 = 0;
      v77 = 8;
      do
      {
        v78 = *(v75 + 16);
        v79 = *(v78 + 8 * v76);
        if (v79)
        {
          _outNode(a1, v79);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v78 + v77)
        {
          v80 = v78 + v77 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v80 = 1;
        }

        if (!v80)
        {
          appendStringInfoString(a1, ",");
        }

        ++v76;
        v77 += 8;
      }

      while (v76 < *(v75 + 4));
    }

    appendStringInfo(a1, "],", v69, v70, v71, v72, v73, v74, v203);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "havingClause:", a3, a4, a5, a6, a7, a8, v197);
    _outNode(a1, *(a2 + 56));
    appendStringInfo(a1, ",", v81, v82, v83, v84, v85, v86, v204);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "windowClause:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v93 = *(a2 + 64);
    if (v93 && *(v93 + 4) >= 1)
    {
      v94 = 0;
      v95 = 8;
      do
      {
        v96 = *(v93 + 16);
        v97 = *(v96 + 8 * v94);
        if (v97)
        {
          _outNode(a1, v97);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v96 + v95)
        {
          v98 = v96 + v95 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v98 = 1;
        }

        if (!v98)
        {
          appendStringInfoString(a1, ",");
        }

        ++v94;
        v95 += 8;
      }

      while (v94 < *(v93 + 4));
    }

    appendStringInfo(a1, "],", v87, v88, v89, v90, v91, v92, v205);
  }

  if (*(a2 + 72))
  {
    appendStringInfo(a1, "valuesLists:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v105 = *(a2 + 72);
    if (v105 && *(v105 + 4) >= 1)
    {
      v106 = 0;
      v107 = 8;
      do
      {
        v108 = *(v105 + 16);
        v109 = *(v108 + 8 * v106);
        if (v109)
        {
          _outNode(a1, v109);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v108 + v107)
        {
          v110 = v108 + v107 >= (*(*(a2 + 72) + 16) + 8 * *(*(a2 + 72) + 4));
        }

        else
        {
          v110 = 1;
        }

        if (!v110)
        {
          appendStringInfoString(a1, ",");
        }

        ++v106;
        v107 += 8;
      }

      while (v106 < *(v105 + 4));
    }

    appendStringInfo(a1, "],", v99, v100, v101, v102, v103, v104, v206);
  }

  if (*(a2 + 80))
  {
    appendStringInfo(a1, "sortClause:", a3, a4, a5, a6, a7, a8, v197);
    appendStringInfoChar(a1, 91);
    v117 = *(a2 + 80);
    if (v117 && *(v117 + 4) >= 1)
    {
      v118 = 0;
      v119 = 8;
      do
      {
        v120 = *(v117 + 16);
        v121 = *(v120 + 8 * v118);
        if (v121)
        {
          _outNode(a1, v121);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v120 + v119)
        {
          v122 = v120 + v119 >= (*(*(a2 + 80) + 16) + 8 * *(*(a2 + 80) + 4));
        }

        else
        {
          v122 = 1;
        }

        if (!v122)
        {
          appendStringInfoString(a1, ",");
        }

        ++v118;
        v119 += 8;
      }

      while (v118 < *(v117 + 4));
    }

    appendStringInfo(a1, "],", v111, v112, v113, v114, v115, v116, v207);
  }

  if (*(a2 + 88))
  {
    appendStringInfo(a1, "limitOffset:", a3, a4, a5, a6, a7, a8, v197);
    _outNode(a1, *(a2 + 88));
    appendStringInfo(a1, ",", v123, v124, v125, v126, v127, v128, v208);
  }

  if (*(a2 + 96))
  {
    appendStringInfo(a1, "limitCount:", a3, a4, a5, a6, a7, a8, v197);
    _outNode(a1, *(a2 + 96));
    appendStringInfo(a1, ",", v129, v130, v131, v132, v133, v134, v209);
  }

  v135 = *(a2 + 104);
  if (v135 > 2)
  {
    LODWORD(v136) = 0;
  }

  else
  {
    v136 = (&off_1E6E55130)[v135];
  }

  appendStringInfo(a1, "limitOption:%s,", a3, a4, a5, a6, a7, a8, v136);
  if (*(a2 + 112))
  {
    appendStringInfo(a1, "lockingClause:", v137, v138, v139, v140, v141, v142, v210);
    appendStringInfoChar(a1, 91);
    v149 = *(a2 + 112);
    if (v149 && *(v149 + 4) >= 1)
    {
      v150 = 0;
      v151 = 8;
      do
      {
        v152 = *(v149 + 16);
        v153 = *(v152 + 8 * v150);
        if (v153)
        {
          _outNode(a1, v153);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v152 + v151)
        {
          v154 = v152 + v151 >= (*(*(a2 + 112) + 16) + 8 * *(*(a2 + 112) + 4));
        }

        else
        {
          v154 = 1;
        }

        if (!v154)
        {
          appendStringInfoString(a1, ",");
        }

        ++v150;
        v151 += 8;
      }

      while (v150 < *(v149 + 4));
    }

    appendStringInfo(a1, "],", v143, v144, v145, v146, v147, v148, v211);
  }

  if (*(a2 + 120))
  {
    appendStringInfo(a1, "withClause:{", v137, v138, v139, v140, v141, v142, v210);
    _outWithClause(a1, *(a2 + 120), v155, v156, v157, v158, v159, v160);
    v167 = a1[2];
    v36 = __OFSUB__(v167, 1);
    v168 = v167 - 1;
    if (v168 < 0 == v36)
    {
      v169 = *a1;
      if (*(*a1 + v168) == 44)
      {
        a1[2] = v168;
        *(v169 + v168) = 0;
      }
    }

    appendStringInfo(a1, "},", v161, v162, v163, v164, v165, v166, v212);
  }

  v170 = *(a2 + 128);
  if (v170 > 3)
  {
    LODWORD(v171) = 0;
  }

  else
  {
    v171 = (&off_1E6E55360)[v170];
  }

  result = appendStringInfo(a1, "op:%s,", v137, v138, v139, v140, v141, v142, v171);
  if (*(a2 + 132) == 1)
  {
    result = appendStringInfo(a1, "all:%s,", v173, v174, v175, v176, v177, v178, "true");
  }

  if (*(a2 + 136))
  {
    appendStringInfo(a1, "larg:{", v173, v174, v175, v176, v177, v178, v213);
    _outSelectStmt(a1, *(a2 + 136));
    v185 = a1[2];
    v36 = __OFSUB__(v185, 1);
    v186 = v185 - 1;
    if (v186 < 0 == v36)
    {
      v187 = *a1;
      if (*(*a1 + v186) == 44)
      {
        a1[2] = v186;
        *(v187 + v186) = 0;
      }
    }

    result = appendStringInfo(a1, "},", v179, v180, v181, v182, v183, v184, v214);
  }

  if (*(a2 + 144))
  {
    appendStringInfo(a1, "rarg:{", v173, v174, v175, v176, v177, v178, v213);
    _outSelectStmt(a1, *(a2 + 144));
    v194 = a1[2];
    v36 = __OFSUB__(v194, 1);
    v195 = v194 - 1;
    if (v195 < 0 == v36)
    {
      v196 = *a1;
      if (*(*a1 + v195) == 44)
      {
        a1[2] = v195;
        *(v196 + v195) = 0;
      }
    }

    return appendStringInfo(a1, "},", v188, v189, v190, v191, v192, v193, a9);
  }

  return result;
}

unint64_t _outAlterTableStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", a3, a4, a5, a6, a7, a8, v47);
    _outRangeVar(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = *(a1 + 8);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        *(a1 + 8) = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v48);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "cmds:", a3, a4, a5, a6, a7, a8, v47);
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],", v26, v27, v28, v29, v30, v31, v49);
  }

  v38 = *(a2 + 24);
  if (v38 > 0x31)
  {
    LODWORD(v39) = 0;
  }

  else
  {
    v39 = (&off_1E6E55560)[v38];
  }

  result = appendStringInfo(a1, "relkind:%s,", a3, a4, a5, a6, a7, a8, v39);
  if (*(a2 + 28) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", v41, v42, v43, v44, v45, v46, "true");
  }

  return result;
}

unint64_t _outAlterTableCmd(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0x42)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55148)[v10];
  }

  appendStringInfo(a1, "subtype:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "name:", v12, v13, v14, v15, v16, v17, v62);
    _outToken(a1, *(a2 + 8), v18, v19, v20, v21, v22, v23);
    appendStringInfo(a1, ",", v24, v25, v26, v27, v28, v29, v63);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "num:%d,", v12, v13, v14, v15, v16, v17, *(a2 + 16));
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "newowner:{", v12, v13, v14, v15, v16, v17, v62);
    _outRoleSpec(a1, *(a2 + 24), v30, v31, v32, v33, v34, v35);
    v42 = a1[2];
    v43 = __OFSUB__(v42, 1);
    v44 = v42 - 1;
    if (v44 < 0 == v43)
    {
      v45 = *a1;
      if (*(*a1 + v44) == 44)
      {
        a1[2] = v44;
        *(v45 + v44) = 0;
      }
    }

    appendStringInfo(a1, "},", v36, v37, v38, v39, v40, v41, v64);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "def:", v12, v13, v14, v15, v16, v17, v62);
    _outNode(a1, *(a2 + 32));
    appendStringInfo(a1, ",", v46, v47, v48, v49, v50, v51, v65);
  }

  v52 = *(a2 + 40);
  v53 = "DROP_CASCADE";
  if (v52 != 1)
  {
    LODWORD(v53) = 0;
  }

  if (v52)
  {
    LODWORD(v54) = v53;
  }

  else
  {
    v54 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", v12, v13, v14, v15, v16, v17, v54);
  if (*(a2 + 44) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", v56, v57, v58, v59, v60, v61, "true");
  }

  return result;
}

unint64_t _outAlterDomainStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4))
  {
    appendStringInfo(a1, "subtype:%c,", a3, a4, a5, a6, a7, a8, *(a2 + 4));
  }

  if (*(a2 + 8))
  {
    appendStringInfo(a1, "typeName:", a3, a4, a5, a6, a7, a8, v50);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v51);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "name:", a3, a4, a5, a6, a7, a8, v50);
    _outToken(a1, *(a2 + 16), v22, v23, v24, v25, v26, v27);
    appendStringInfo(a1, ",", v28, v29, v30, v31, v32, v33, v52);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "def:", a3, a4, a5, a6, a7, a8, v50);
    _outNode(a1, *(a2 + 24));
    appendStringInfo(a1, ",", v34, v35, v36, v37, v38, v39, v53);
  }

  v40 = *(a2 + 32);
  v41 = "DROP_CASCADE";
  if (v40 != 1)
  {
    LODWORD(v41) = 0;
  }

  if (v40)
  {
    LODWORD(v42) = v41;
  }

  else
  {
    v42 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", a3, a4, a5, a6, a7, a8, v42);
  if (*(a2 + 36) == 1)
  {
    return appendStringInfo(a1, "missing_ok:%s,", v44, v45, v46, v47, v48, v49, "true");
  }

  return result;
}

unint64_t _outSetOperationStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = *(a2 + 4);
  if (v11 > 3)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = (&off_1E6E55360)[v11];
  }

  result = appendStringInfo(a1, "op:%s,", a3, a4, a5, a6, a7, a8, v12);
  if (*(a2 + 8) == 1)
  {
    result = appendStringInfo(a1, "all:%s,", v14, v15, v16, v17, v18, v19, "true");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "larg:", v14, v15, v16, v17, v18, v19, v80);
    _outNode(a1, *(a2 + 16));
    result = appendStringInfo(a1, ",", v20, v21, v22, v23, v24, v25, v81);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "rarg:", v14, v15, v16, v17, v18, v19, v80);
    _outNode(a1, *(a2 + 24));
    result = appendStringInfo(a1, ",", v26, v27, v28, v29, v30, v31, v82);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "colTypes:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v38 = *(a2 + 32);
    if (v38 && *(v38 + 4) >= 1)
    {
      v39 = 0;
      v40 = 8;
      do
      {
        v41 = *(v38 + 16);
        v42 = *(v41 + 8 * v39);
        if (v42)
        {
          _outNode(a1, v42);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v41 + v40)
        {
          v43 = v41 + v40 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          appendStringInfoString(a1, ",");
        }

        ++v39;
        v40 += 8;
      }

      while (v39 < *(v38 + 4));
    }

    result = appendStringInfo(a1, "],", v32, v33, v34, v35, v36, v37, v83);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "colTypmods:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v50 = *(a2 + 40);
    if (v50 && *(v50 + 4) >= 1)
    {
      v51 = 0;
      v52 = 8;
      do
      {
        v53 = *(v50 + 16);
        v54 = *(v53 + 8 * v51);
        if (v54)
        {
          _outNode(a1, v54);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v53 + v52)
        {
          v55 = v53 + v52 >= (*(*(a2 + 40) + 16) + 8 * *(*(a2 + 40) + 4));
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          appendStringInfoString(a1, ",");
        }

        ++v51;
        v52 += 8;
      }

      while (v51 < *(v50 + 4));
    }

    result = appendStringInfo(a1, "],", v44, v45, v46, v47, v48, v49, v84);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "colCollations:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v62 = *(a2 + 48);
    if (v62 && *(v62 + 4) >= 1)
    {
      v63 = 0;
      v64 = 8;
      do
      {
        v65 = *(v62 + 16);
        v66 = *(v65 + 8 * v63);
        if (v66)
        {
          _outNode(a1, v66);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v65 + v64)
        {
          v67 = v65 + v64 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v67 = 1;
        }

        if (!v67)
        {
          appendStringInfoString(a1, ",");
        }

        ++v63;
        v64 += 8;
      }

      while (v63 < *(v62 + 4));
    }

    result = appendStringInfo(a1, "],", v56, v57, v58, v59, v60, v61, v85);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "groupClauses:", v14, v15, v16, v17, v18, v19, v80);
    appendStringInfoChar(a1, 91);
    v74 = *(a2 + 56);
    if (v74 && *(v74 + 4) >= 1)
    {
      v75 = 0;
      v76 = 8;
      do
      {
        v77 = *(v74 + 16);
        v78 = *(v77 + 8 * v75);
        if (v78)
        {
          _outNode(a1, v78);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v77 + v76)
        {
          v79 = v77 + v76 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v79 = 1;
        }

        if (!v79)
        {
          appendStringInfoString(a1, ",");
        }

        ++v75;
        v76 += 8;
      }

      while (v75 < *(v74 + 4));
    }

    return appendStringInfo(a1, "],", v68, v69, v70, v71, v72, v73, a9);
  }

  return result;
}

unint64_t _outGrantStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4) == 1)
  {
    appendStringInfo(a1, "is_grant:%s,", a3, a4, a5, a6, a7, a8, "true");
  }

  v10 = *(a2 + 8);
  if (v10 > 2)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55380)[v10];
  }

  appendStringInfo(a1, "targtype:%s,", a3, a4, a5, a6, a7, a8, v11);
  v18 = *(a2 + 12);
  if (v18 > 0x31)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = (&off_1E6E55560)[v18];
  }

  appendStringInfo(a1, "objtype:%s,", v12, v13, v14, v15, v16, v17, v19);
  if (*(a2 + 16))
  {
    appendStringInfo(a1, "objects:", v20, v21, v22, v23, v24, v25, v66);
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],", v26, v27, v28, v29, v30, v31, v67);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "privileges:", v20, v21, v22, v23, v24, v25, v66);
    appendStringInfoChar(a1, 91);
    v44 = *(a2 + 24);
    if (v44 && *(v44 + 4) >= 1)
    {
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = *(v44 + 16);
        v48 = *(v47 + 8 * v45);
        if (v48)
        {
          _outNode(a1, v48);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v47 + v46)
        {
          v49 = v47 + v46 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          appendStringInfoString(a1, ",");
        }

        ++v45;
        v46 += 8;
      }

      while (v45 < *(v44 + 4));
    }

    appendStringInfo(a1, "],", v38, v39, v40, v41, v42, v43, v68);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "grantees:", v20, v21, v22, v23, v24, v25, v66);
    appendStringInfoChar(a1, 91);
    v56 = *(a2 + 32);
    if (v56 && *(v56 + 4) >= 1)
    {
      v57 = 0;
      v58 = 8;
      do
      {
        v59 = *(v56 + 16);
        v60 = *(v59 + 8 * v57);
        if (v60)
        {
          _outNode(a1, v60);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v59 + v58)
        {
          v61 = v59 + v58 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          appendStringInfoString(a1, ",");
        }

        ++v57;
        v58 += 8;
      }

      while (v57 < *(v56 + 4));
    }

    appendStringInfo(a1, "],", v50, v51, v52, v53, v54, v55, v69);
  }

  if (*(a2 + 40) == 1)
  {
    appendStringInfo(a1, "grant_option:%s,", v20, v21, v22, v23, v24, v25, "true");
  }

  v62 = *(a2 + 44);
  v63 = "DROP_CASCADE";
  if (v62 != 1)
  {
    LODWORD(v63) = 0;
  }

  if (v62)
  {
    LODWORD(v64) = v63;
  }

  else
  {
    v64 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", v20, v21, v22, v23, v24, v25, v64);
}

unint64_t _outGrantRoleStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "granted_roles:", a3, a4, a5, a6, a7, a8, v54);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v55);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "grantee_roles:", a3, a4, a5, a6, a7, a8, v54);
    appendStringInfoChar(a1, 91);
    v28 = *(a2 + 16);
    if (v28 && *(v28 + 4) >= 1)
    {
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v28 + 16);
        v32 = *(v31 + 8 * v29);
        if (v32)
        {
          _outNode(a1, v32);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v31 + v30)
        {
          v33 = v31 + v30 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          appendStringInfoString(a1, ",");
        }

        ++v29;
        v30 += 8;
      }

      while (v29 < *(v28 + 4));
    }

    appendStringInfo(a1, "],", v22, v23, v24, v25, v26, v27, v56);
  }

  if (*(a2 + 24) == 1)
  {
    appendStringInfo(a1, "is_grant:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 25) != 1)
    {
LABEL_31:
      if (!*(a2 + 32))
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }
  }

  else if (*(a2 + 25) != 1)
  {
    goto LABEL_31;
  }

  appendStringInfo(a1, "admin_opt:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (!*(a2 + 32))
  {
    goto LABEL_39;
  }

LABEL_35:
  appendStringInfo(a1, "grantor:{", a3, a4, a5, a6, a7, a8, v54);
  _outRoleSpec(a1, *(a2 + 32), v34, v35, v36, v37, v38, v39);
  v46 = a1[2];
  v47 = __OFSUB__(v46, 1);
  v48 = v46 - 1;
  if (v48 < 0 == v47)
  {
    v49 = *a1;
    if (*(*a1 + v48) == 44)
    {
      a1[2] = v48;
      *(v49 + v48) = 0;
    }
  }

  appendStringInfo(a1, "},", v40, v41, v42, v43, v44, v45, v57);
LABEL_39:
  v50 = *(a2 + 40);
  v51 = "DROP_CASCADE";
  if (v50 != 1)
  {
    LODWORD(v51) = 0;
  }

  if (v50)
  {
    LODWORD(v52) = v51;
  }

  else
  {
    v52 = "DROP_RESTRICT";
  }

  return appendStringInfo(a1, "behavior:%s,", a3, a4, a5, a6, a7, a8, v52);
}

uint64_t _outAlterDefaultPrivilegesStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "options:", a3, a4, a5, a6, a7, a8, v39);
    appendStringInfoChar(v10, 91);
    v17 = *(a2 + 8);
    if (v17 && *(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(v17 + 16);
        v21 = *(v20 + 8 * v18);
        if (v21)
        {
          _outNode(v10, v21);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v20 + v19)
        {
          v22 = v20 + v19 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v22 = 1;
        }

        if (!v22)
        {
          appendStringInfoString(v10, ",");
        }

        ++v18;
        v19 += 8;
      }

      while (v18 < *(v17 + 4));
    }

    result = appendStringInfo(v10, "],", v11, v12, v13, v14, v15, v16, v40);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "action:{", a3, a4, a5, a6, a7, a8, v39);
    _outGrantStmt(v10, *(a2 + 16), v23, v24, v25, v26, v27, v28);
    v35 = *(v10 + 8);
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v37 < 0 == v36)
    {
      v38 = *v10;
      if (*(*v10 + v37) == 44)
      {
        *(v10 + 8) = v37;
        *(v38 + v37) = 0;
      }
    }

    return appendStringInfo(v10, "},", v29, v30, v31, v32, v33, v34, a9);
  }

  return result;
}

unint64_t _outClosePortalStmt(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (*(a2 + 8))
  {
    v10 = result;
    appendStringInfo(result, "portalname:", a3, a4, a5, a6, a7, a8, v23);
    _outToken(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);

    return appendStringInfo(v10, ",", v17, v18, v19, v20, v21, v22, a9);
  }

  return result;
}

uint64_t _outClusterStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{", a3, a4, a5, a6, a7, a8, v38);
    _outRangeVar(v9, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = v9[2];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *v9;
      if (*(*v9 + v24) == 44)
      {
        v9[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    result = appendStringInfo(v9, "},", v16, v17, v18, v19, v20, v21, v39);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v9, "indexname:", a3, a4, a5, a6, a7, a8, v38);
    _outToken(v9, *(a2 + 16), v26, v27, v28, v29, v30, v31);
    result = appendStringInfo(v9, ",", v32, v33, v34, v35, v36, v37, v40);
  }

  if (*(a2 + 24))
  {
    return appendStringInfo(v9, "options:%d,", a3, a4, a5, a6, a7, a8, *(a2 + 24));
  }

  return result;
}

uint64_t _outCopyStmt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = result;
  if (*(a2 + 8))
  {
    appendStringInfo(result, "relation:{", a3, a4, a5, a6, a7, a8, v75);
    _outRangeVar(v10, *(a2 + 8), v11, v12, v13, v14, v15, v16);
    v23 = v10[2];
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      v26 = *v10;
      if (*(*v10 + v25) == 44)
      {
        v10[2] = v25;
        *(v26 + v25) = 0;
      }
    }

    result = appendStringInfo(v10, "},", v17, v18, v19, v20, v21, v22, v76);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(v10, "query:", a3, a4, a5, a6, a7, a8, v75);
    _outNode(v10, *(a2 + 16));
    result = appendStringInfo(v10, ",", v27, v28, v29, v30, v31, v32, v77);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(v10, "attlist:", a3, a4, a5, a6, a7, a8, v75);
    appendStringInfoChar(v10, 91);
    v39 = *(a2 + 24);
    if (v39 && *(v39 + 4) >= 1)
    {
      v40 = 0;
      v41 = 8;
      do
      {
        v42 = *(v39 + 16);
        v43 = *(v42 + 8 * v40);
        if (v43)
        {
          _outNode(v10, v43);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v42 + v41)
        {
          v44 = v42 + v41 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v44 = 1;
        }

        if (!v44)
        {
          appendStringInfoString(v10, ",");
        }

        ++v40;
        v41 += 8;
      }

      while (v40 < *(v39 + 4));
    }

    result = appendStringInfo(v10, "],", v33, v34, v35, v36, v37, v38, v78);
  }

  if (*(a2 + 32) == 1)
  {
    result = appendStringInfo(v10, "is_from:%s,", a3, a4, a5, a6, a7, a8, "true");
    if (*(a2 + 33) != 1)
    {
LABEL_24:
      if (!*(a2 + 40))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if (*(a2 + 33) != 1)
  {
    goto LABEL_24;
  }

  result = appendStringInfo(v10, "is_program:%s,", a3, a4, a5, a6, a7, a8, "true");
  if (*(a2 + 40))
  {
LABEL_25:
    appendStringInfo(v10, "filename:", a3, a4, a5, a6, a7, a8, v75);
    _outToken(v10, *(a2 + 40), v45, v46, v47, v48, v49, v50);
    result = appendStringInfo(v10, ",", v51, v52, v53, v54, v55, v56, v79);
  }

LABEL_26:
  if (*(a2 + 48))
  {
    appendStringInfo(v10, "options:", a3, a4, a5, a6, a7, a8, v75);
    appendStringInfoChar(v10, 91);
    v63 = *(a2 + 48);
    if (v63 && *(v63 + 4) >= 1)
    {
      v64 = 0;
      v65 = 8;
      do
      {
        v66 = *(v63 + 16);
        v67 = *(v66 + 8 * v64);
        if (v67)
        {
          _outNode(v10, v67);
        }

        else
        {
          appendStringInfoString(v10, "{}");
        }

        if (v66 + v65)
        {
          v68 = v66 + v65 >= (*(*(a2 + 48) + 16) + 8 * *(*(a2 + 48) + 4));
        }

        else
        {
          v68 = 1;
        }

        if (!v68)
        {
          appendStringInfoString(v10, ",");
        }

        ++v64;
        v65 += 8;
      }

      while (v64 < *(v63 + 4));
    }

    result = appendStringInfo(v10, "],", v57, v58, v59, v60, v61, v62, v80);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(v10, "whereClause:", a3, a4, a5, a6, a7, a8, v75);
    _outNode(v10, *(a2 + 56));

    return appendStringInfo(v10, ",", v69, v70, v71, v72, v73, v74, a9);
  }

  return result;
}

unint64_t _outCreateStmt(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "relation:{", a3, a4, a5, a6, a7, a8, v152);
    _outRangeVar(a1, *(a2 + 8), v10, v11, v12, v13, v14, v15);
    v22 = a1[2];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      v25 = *a1;
      if (*(*a1 + v24) == 44)
      {
        a1[2] = v24;
        *(v25 + v24) = 0;
      }
    }

    appendStringInfo(a1, "},", v16, v17, v18, v19, v20, v21, v153);
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "tableElts:", a3, a4, a5, a6, a7, a8, v152);
    appendStringInfoChar(a1, 91);
    v32 = *(a2 + 16);
    if (v32 && *(v32 + 4) >= 1)
    {
      v33 = 0;
      v34 = 8;
      do
      {
        v35 = *(v32 + 16);
        v36 = *(v35 + 8 * v33);
        if (v36)
        {
          _outNode(a1, v36);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v35 + v34)
        {
          v37 = v35 + v34 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          appendStringInfoString(a1, ",");
        }

        ++v33;
        v34 += 8;
      }

      while (v33 < *(v32 + 4));
    }

    appendStringInfo(a1, "],", v26, v27, v28, v29, v30, v31, v154);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "inhRelations:", a3, a4, a5, a6, a7, a8, v152);
    appendStringInfoChar(a1, 91);
    v44 = *(a2 + 24);
    if (v44 && *(v44 + 4) >= 1)
    {
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = *(v44 + 16);
        v48 = *(v47 + 8 * v45);
        if (v48)
        {
          _outNode(a1, v48);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v47 + v46)
        {
          v49 = v47 + v46 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          appendStringInfoString(a1, ",");
        }

        ++v45;
        v46 += 8;
      }

      while (v45 < *(v44 + 4));
    }

    appendStringInfo(a1, "],", v38, v39, v40, v41, v42, v43, v155);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "partbound:{", a3, a4, a5, a6, a7, a8, v152);
    _outPartitionBoundSpec(a1, *(a2 + 32), v50, v51, v52, v53, v54, v55);
    v62 = a1[2];
    v23 = __OFSUB__(v62, 1);
    v63 = v62 - 1;
    if (v63 < 0 == v23)
    {
      v64 = *a1;
      if (*(*a1 + v63) == 44)
      {
        a1[2] = v63;
        *(v64 + v63) = 0;
      }
    }

    appendStringInfo(a1, "},", v56, v57, v58, v59, v60, v61, v156);
  }

  if (*(a2 + 40))
  {
    appendStringInfo(a1, "partspec:{", a3, a4, a5, a6, a7, a8, v152);
    _outPartitionSpec(a1, *(a2 + 40), v65, v66, v67, v68, v69, v70);
    v77 = a1[2];
    v23 = __OFSUB__(v77, 1);
    v78 = v77 - 1;
    if (v78 < 0 == v23)
    {
      v79 = *a1;
      if (*(*a1 + v78) == 44)
      {
        a1[2] = v78;
        *(v79 + v78) = 0;
      }
    }

    appendStringInfo(a1, "},", v71, v72, v73, v74, v75, v76, v157);
  }

  if (*(a2 + 48))
  {
    appendStringInfo(a1, "ofTypename:{", a3, a4, a5, a6, a7, a8, v152);
    _outTypeName(a1, *(a2 + 48), v80, v81, v82, v83, v84, v85);
    v92 = a1[2];
    v23 = __OFSUB__(v92, 1);
    v93 = v92 - 1;
    if (v93 < 0 == v23)
    {
      v94 = *a1;
      if (*(*a1 + v93) == 44)
      {
        a1[2] = v93;
        *(v94 + v93) = 0;
      }
    }

    appendStringInfo(a1, "},", v86, v87, v88, v89, v90, v91, v158);
  }

  if (*(a2 + 56))
  {
    appendStringInfo(a1, "constraints:", a3, a4, a5, a6, a7, a8, v152);
    appendStringInfoChar(a1, 91);
    v101 = *(a2 + 56);
    if (v101 && *(v101 + 4) >= 1)
    {
      v102 = 0;
      v103 = 8;
      do
      {
        v104 = *(v101 + 16);
        v105 = *(v104 + 8 * v102);
        if (v105)
        {
          _outNode(a1, v105);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v104 + v103)
        {
          v106 = v104 + v103 >= (*(*(a2 + 56) + 16) + 8 * *(*(a2 + 56) + 4));
        }

        else
        {
          v106 = 1;
        }

        if (!v106)
        {
          appendStringInfoString(a1, ",");
        }

        ++v102;
        v103 += 8;
      }

      while (v102 < *(v101 + 4));
    }

    appendStringInfo(a1, "],", v95, v96, v97, v98, v99, v100, v159);
  }

  if (*(a2 + 64))
  {
    appendStringInfo(a1, "options:", a3, a4, a5, a6, a7, a8, v152);
    appendStringInfoChar(a1, 91);
    v113 = *(a2 + 64);
    if (v113 && *(v113 + 4) >= 1)
    {
      v114 = 0;
      v115 = 8;
      do
      {
        v116 = *(v113 + 16);
        v117 = *(v116 + 8 * v114);
        if (v117)
        {
          _outNode(a1, v117);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v116 + v115)
        {
          v118 = v116 + v115 >= (*(*(a2 + 64) + 16) + 8 * *(*(a2 + 64) + 4));
        }

        else
        {
          v118 = 1;
        }

        if (!v118)
        {
          appendStringInfoString(a1, ",");
        }

        ++v114;
        v115 += 8;
      }

      while (v114 < *(v113 + 4));
    }

    appendStringInfo(a1, "],", v107, v108, v109, v110, v111, v112, v160);
  }

  v119 = *(a2 + 72);
  if (v119 > 3)
  {
    LODWORD(v120) = 0;
  }

  else
  {
    v120 = (&off_1E6E55398)[v119];
  }

  result = appendStringInfo(a1, "oncommit:%s,", a3, a4, a5, a6, a7, a8, v120);
  if (*(a2 + 80))
  {
    appendStringInfo(a1, "tablespacename:", v122, v123, v124, v125, v126, v127, v161);
    _outToken(a1, *(a2 + 80), v128, v129, v130, v131, v132, v133);
    result = appendStringInfo(a1, ",", v134, v135, v136, v137, v138, v139, v162);
  }

  if (*(a2 + 88))
  {
    appendStringInfo(a1, "accessMethod:", v122, v123, v124, v125, v126, v127, v161);
    _outToken(a1, *(a2 + 88), v140, v141, v142, v143, v144, v145);
    result = appendStringInfo(a1, ",", v146, v147, v148, v149, v150, v151, v163);
  }

  if (*(a2 + 96) == 1)
  {
    return appendStringInfo(a1, "if_not_exists:%s,", v122, v123, v124, v125, v126, v127, "true");
  }

  return result;
}

unint64_t _outDefineStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 4);
  if (v10 > 0x31)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = (&off_1E6E55560)[v10];
  }

  result = appendStringInfo(a1, "kind:%s,", a3, a4, a5, a6, a7, a8, v11);
  if (*(a2 + 8) == 1)
  {
    result = appendStringInfo(a1, "oldstyle:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  if (*(a2 + 16))
  {
    appendStringInfo(a1, "defnames:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v25 = *(a2 + 16);
    if (v25 && *(v25 + 4) >= 1)
    {
      v26 = 0;
      v27 = 8;
      do
      {
        v28 = *(v25 + 16);
        v29 = *(v28 + 8 * v26);
        if (v29)
        {
          _outNode(a1, v29);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v28 + v27)
        {
          v30 = v28 + v27 >= (*(*(a2 + 16) + 16) + 8 * *(*(a2 + 16) + 4));
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          appendStringInfoString(a1, ",");
        }

        ++v26;
        v27 += 8;
      }

      while (v26 < *(v25 + 4));
    }

    result = appendStringInfo(a1, "],", v19, v20, v21, v22, v23, v24, v56);
  }

  if (*(a2 + 24))
  {
    appendStringInfo(a1, "args:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v37 = *(a2 + 24);
    if (v37 && *(v37 + 4) >= 1)
    {
      v38 = 0;
      v39 = 8;
      do
      {
        v40 = *(v37 + 16);
        v41 = *(v40 + 8 * v38);
        if (v41)
        {
          _outNode(a1, v41);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v40 + v39)
        {
          v42 = v40 + v39 >= (*(*(a2 + 24) + 16) + 8 * *(*(a2 + 24) + 4));
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          appendStringInfoString(a1, ",");
        }

        ++v38;
        v39 += 8;
      }

      while (v38 < *(v37 + 4));
    }

    result = appendStringInfo(a1, "],", v31, v32, v33, v34, v35, v36, v57);
  }

  if (*(a2 + 32))
  {
    appendStringInfo(a1, "definition:", v13, v14, v15, v16, v17, v18, v55);
    appendStringInfoChar(a1, 91);
    v49 = *(a2 + 32);
    if (v49 && *(v49 + 4) >= 1)
    {
      v50 = 0;
      v51 = 8;
      do
      {
        v52 = *(v49 + 16);
        v53 = *(v52 + 8 * v50);
        if (v53)
        {
          _outNode(a1, v53);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v52 + v51)
        {
          v54 = v52 + v51 >= (*(*(a2 + 32) + 16) + 8 * *(*(a2 + 32) + 4));
        }

        else
        {
          v54 = 1;
        }

        if (!v54)
        {
          appendStringInfoString(a1, ",");
        }

        ++v50;
        v51 += 8;
      }

      while (v50 < *(v49 + 4));
    }

    result = appendStringInfo(a1, "],", v43, v44, v45, v46, v47, v48, v58);
  }

  if (*(a2 + 40) == 1)
  {
    result = appendStringInfo(a1, "if_not_exists:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  if (*(a2 + 41) == 1)
  {
    return appendStringInfo(a1, "replace:%s,", v13, v14, v15, v16, v17, v18, "true");
  }

  return result;
}

unint64_t _outDropStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    appendStringInfo(a1, "objects:", a3, a4, a5, a6, a7, a8, v40);
    appendStringInfoChar(a1, 91);
    v16 = *(a2 + 8);
    if (v16 && *(v16 + 4) >= 1)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        v19 = *(v16 + 16);
        v20 = *(v19 + 8 * v17);
        if (v20)
        {
          _outNode(a1, v20);
        }

        else
        {
          appendStringInfoString(a1, "{}");
        }

        if (v19 + v18)
        {
          v21 = v19 + v18 >= (*(*(a2 + 8) + 16) + 8 * *(*(a2 + 8) + 4));
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          appendStringInfoString(a1, ",");
        }

        ++v17;
        v18 += 8;
      }

      while (v17 < *(v16 + 4));
    }

    appendStringInfo(a1, "],", v10, v11, v12, v13, v14, v15, v41);
  }

  v22 = *(a2 + 16);
  if (v22 > 0x31)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v23 = (&off_1E6E55560)[v22];
  }

  appendStringInfo(a1, "removeType:%s,", a3, a4, a5, a6, a7, a8, v23);
  v30 = *(a2 + 20);
  v31 = "DROP_CASCADE";
  if (v30 != 1)
  {
    LODWORD(v31) = 0;
  }

  if (v30)
  {
    LODWORD(v32) = v31;
  }

  else
  {
    v32 = "DROP_RESTRICT";
  }

  result = appendStringInfo(a1, "behavior:%s,", v24, v25, v26, v27, v28, v29, v32);
  if (*(a2 + 24) == 1)
  {
    result = appendStringInfo(a1, "missing_ok:%s,", v34, v35, v36, v37, v38, v39, "true");
  }

  if (*(a2 + 25) == 1)
  {
    return appendStringInfo(a1, "concurrent:%s,", v34, v35, v36, v37, v38, v39, "true");
  }

  return result;
}