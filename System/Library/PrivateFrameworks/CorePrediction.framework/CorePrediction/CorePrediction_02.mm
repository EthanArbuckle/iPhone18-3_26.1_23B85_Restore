void CPMLDBSerialization::CPMLDBSerialization(CPMLDBSerialization *this, sqlite3 *a2)
{
  CPMLSerialization::CPMLSerialization(this, a2);
  *v3 = &unk_285927638;
  *(v3 + 120) = 0;
  *(v3 + 112) = v3 + 120;
  v4 = v3 + 112;
  *(v3 + 128) = 0;
  *(v3 + 96) = -1;
  *(v3 + 104) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  ppStmt[0] = 0;
  v5 = sqlite3_mprintf("SELECT name FROM sqlite_master WHERE type = table");
  v6 = strlen(v5);
  sqlite3_prepare_v2(*(this + 4), v5, v6, ppStmt, 0);
  if (v5)
  {
    sqlite3_free(v5);
  }

  while (1)
  {
    v7 = sqlite3_step(ppStmt[0]);
    if (v7 != 100)
    {
      break;
    }

    v8 = sqlite3_column_text(ppStmt[0], 0);
    v9 = strlen(v8);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v8, v9);
    }

    *(&__p + v10) = 0;
    ppStmt[2] = &__p;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, &__p) + 56) = 1;
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  if (v7 != 101)
  {
    CPMLLog = CPMLLog::getCPMLLog(v7);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLDBSerialization", "Serializer: Error iterating rows\n");
  }

  sqlite3_finalize(ppStmt[0]);
}

void sub_247303484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(v15, *(v14 + 120));
  CPMLSerialization::~CPMLSerialization(v14);
  _Unwind_Resume(a1);
}

void CPMLDBSerialization::~CPMLDBSerialization(CPMLDBSerialization *this)
{
  *this = &unk_285927638;
  v2 = *(this + 24);
  if (v2 != -1)
  {
    close(v2);
    *(this + 24) = -1;
  }

  v3 = *(this + 13);
  if (v3)
  {
    munmap(v3, *(this + 25));
  }

  std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(this + 112, *(this + 15));

  CPMLSerialization::~CPMLSerialization(this);
}

{
  CPMLDBSerialization::~CPMLDBSerialization(this);

  JUMPOUT(0x24C19F910);
}

void std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_247303838(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_247303C3C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x24C19F910](v3, v1);
  _Unwind_Resume(a1);
}

void CPMLGMMAnalysisHandler::CPMLGMMAnalysisHandler(CPMLGMMAnalysisHandler *this, CPMLAlgorithm *a2)
{
  CPMLAnalysisHandler::CPMLAnalysisHandler(this);
  *v3 = &unk_285927538;
  v3[1] = a2;
}

CPMLGMMAnalysisHandler *CPMLDestroyGMMAnalysis(CPMLGMMAnalysisHandler *result)
{
  if (result)
  {
    CPMLGMMAnalysisHandler::~CPMLGMMAnalysisHandler(result);

    JUMPOUT(0x24C19F910);
  }

  return result;
}

void CPMLGMMAnalysisHandler::~CPMLGMMAnalysisHandler(CPMLGMMAnalysisHandler *this)
{
  *this = &unk_285927538;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CPModelClose(this);
}

uint64_t CPMLsql_callbackDBResponse(CPMLLog *a1, int a2, char **a3, char **a4)
{
  CPMLLog = CPMLLog::getCPMLLog(a1);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_callbackDBResponse", "CB response3");
  return 0;
}

uint64_t CPMLsql_stepAndFinalize(sqlite3_stmt *a1)
{
  v2 = sqlite3_step(a1);
  v3 = v2;
  if (v2 != 101)
  {
    CPMLLog = CPMLLog::getCPMLLog(v2);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_stepAndFinalize", "%s %d", "Error step", v3);
    v3 = 0xFFFFFFFFLL;
  }

  sqlite3_finalize(a1);
  return v3;
}

uint64_t CPMLsql_dropTableCommand(sqlite3 *a1, char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(__s1, "DROP TABLE IF EXISTS ");
  strcat(__s1, a2);
  errmsg = 0;
  result = sqlite3_exec(a1, __s1, CPMLsql_callbackDBResponse, a1, &errmsg);
  if (result)
  {
    CPMLLog = CPMLLog::getCPMLLog(result);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_dropTableCommand", "SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPMLsql_getRowCountForTable(sqlite3 *a1, char *a2)
{
  ppStmt = 0;
  v3 = sqlite3_mprintf("select count (*) from %q", a2);
  v4 = strlen(v3);
  v5 = sqlite3_prepare_v2(a1, v3, v4, &ppStmt, 0);
  if (v5)
  {
    v6 = v5;
    CPMLLog = CPMLLog::getCPMLLog(v5);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_getRowCountForTable", "%s %d \n", "prepare fail", v6);
  }

  v8 = sqlite3_step(ppStmt);
  if (v8 != 101)
  {
    v9 = v8;
    if (v8 == 100)
    {
      v10 = sqlite3_column_int(ppStmt, 0);
      goto LABEL_8;
    }

    v11 = CPMLLog::getCPMLLog(v8);
    CPMLLog::log(v11, CPML_LOG_ERR, "CPMLsql_getRowCountForTable", "Error iterating rows %d\n", v9);
  }

  v10 = 0;
LABEL_8:
  sqlite3_finalize(ppStmt);
  if (v3)
  {
    sqlite3_free(v3);
  }

  return v10;
}

uint64_t CPMLsql_createTable(sqlite3 *a1, char *a2, char *__s, char a4)
{
  ppStmt = 0;
  v8 = strlen(__s);
  v9 = strlen(a2);
  if (v9 + v8 < 0x101)
  {
    if ((a4 & 1) == 0)
    {
      v12 = sqlite3_mprintf("DROP TABLE IF EXISTS %q;", a2);
      v13 = strlen(v12);
      v14 = sqlite3_prepare_v2(a1, v12, v13, &ppStmt, 0);
      if (v14)
      {
        v15 = v14;
        CPMLLog = CPMLLog::getCPMLLog(v14);
        CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_createTable", "%s %d \n", "prepare fail", v15);
      }

      CPMLsql_stepAndFinalize(ppStmt);
      if (v12)
      {
        sqlite3_free(v12);
      }
    }

    v17 = sqlite3_mprintf("CREATE TABLE IF NOT EXISTS %q (%q, pKey INTEGER PRIMARY KEY);", a2, __s);
    v18 = strlen(v17);
    v19 = sqlite3_prepare_v2(a1, v17, v18, &ppStmt, 0);
    if (v19)
    {
      v20 = v19;
      v21 = CPMLLog::getCPMLLog(v19);
      CPMLLog::log(v21, CPML_LOG_ERR, "CPMLsql_createTable", "%s %d \n", "prepare fail", v20);
    }

    v22 = CPMLsql_stepAndFinalize(ppStmt);
    if (v22 == 101)
    {
      v11 = 0;
    }

    else
    {
      v11 = v22;
    }

    if (v17)
    {
      sqlite3_free(v17);
    }
  }

  else
  {
    v10 = CPMLLog::getCPMLLog(v9);
    CPMLLog::log(v10, CPML_LOG_ERR, "CPMLsql_createTable", "command too long.");
    return 0xFFFFFFFFLL;
  }

  return v11;
}

uint64_t CPMLsql_insertIntoTable(sqlite3 *a1, char *a2, char *__s, char *a4)
{
  ppStmt = 0;
  v8 = strlen(__s);
  v9 = strlen(a2) + v8;
  v10 = strlen(a4);
  if (v10 + v9 < 0x201)
  {
    v13 = sqlite3_mprintf("INSERT INTO %q (%q) values(%q);", a2, __s, a4);
    v14 = strlen(v13);
    v15 = sqlite3_prepare_v2(a1, v13, v14, &ppStmt, 0);
    if (v15)
    {
      v16 = v15;
      CPMLLog = CPMLLog::getCPMLLog(v15);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_insertIntoTable", "%s %d \n", "prepare fail", v16);
    }

    v12 = CPMLsql_stepAndFinalize(ppStmt);
    if (v13)
    {
      sqlite3_free(v13);
    }
  }

  else
  {
    v11 = CPMLLog::getCPMLLog(v10);
    CPMLLog::log(v11, CPML_LOG_ERR, "CPMLsql_insertIntoTable", "command too long.");
    return 0xFFFFFFFFLL;
  }

  return v12;
}

uint64_t CPMLsql_insertBlobIntoTable(sqlite3 *a1, char *a2, char *a3, char *a4, int a5, void *a6, int a7)
{
  ppStmt = 0;
  v11 = sqlite3_mprintf("INSERT INTO %q (%q) values(%q);", a2, a3, a4);
  v12 = strlen(v11);
  v13 = sqlite3_prepare_v2(a1, v11, v12, &ppStmt, 0);
  if (v13)
  {
    v14 = v13;
    CPMLLog = CPMLLog::getCPMLLog(v13);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_insertBlobIntoTable", "%s %d \n", "prepare fail", v14);
  }

  sqlite3_bind_blob(ppStmt, a5, a6, a7, 0xFFFFFFFFFFFFFFFFLL);
  v16 = CPMLsql_stepAndFinalize(ppStmt);
  if (v11)
  {
    sqlite3_free(v11);
  }

  return v16;
}

uint64_t CPMLsql_cardinalityCount(sqlite3 *a1, char *a2, char *a3)
{
  ppStmt = 0;
  v4 = sqlite3_mprintf("select count (DISTINCT %q) from %q;", a3, a2);
  v5 = strlen(v4);
  v6 = sqlite3_prepare_v2(a1, v4, v5, &ppStmt, 0);
  if (v6)
  {
    v7 = v6;
    CPMLLog = CPMLLog::getCPMLLog(v6);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_cardinalityCount", "%s %d \n", "prepare fail", v7);
  }

  v9 = sqlite3_step(ppStmt);
  if (v9 != 101)
  {
    v10 = v9;
    if (v9 == 100)
    {
      v11 = sqlite3_column_int(ppStmt, 0);
      goto LABEL_8;
    }

    v12 = CPMLLog::getCPMLLog(v9);
    CPMLLog::log(v12, CPML_LOG_ERR, "CPMLsql_cardinalityCount", "Error iterating rows %d\n", v10);
  }

  v11 = 0;
LABEL_8:
  sqlite3_finalize(ppStmt);
  if (v4)
  {
    sqlite3_free(v4);
  }

  return v11;
}

CPMLLog *CPMLsql_beginTransaction(sqlite3 *a1, unsigned int a2)
{
  errmsg = 0;
  if (a2 > 2)
  {
    return 0;
  }

  v2 = sqlite3_exec(a1, off_278E9EFC0[a2], CPMLsql_callbackDBResponse, 0, &errmsg);
  v3 = v2;
  if (v2)
  {
    CPMLLog = CPMLLog::getCPMLLog(v2);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_beginTransaction", "SQL Begin TransactionError %s.", errmsg);
    sqlite3_free(errmsg);
  }

  return v3;
}

CPMLLog *CPMLsql_commitTransaction(sqlite3 *a1)
{
  errmsg = 0;
  v1 = sqlite3_exec(a1, "END TRANSACTION", CPMLsql_callbackDBResponse, 0, &errmsg);
  v2 = v1;
  if (v1)
  {
    CPMLLog = CPMLLog::getCPMLLog(v1);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "CPMLsql_commitTransaction", "SQL End TransactionError %s.", errmsg);
    sqlite3_free(errmsg);
  }

  return v2;
}

id CPMLconvertFV2Array(CPMLFeatureVector *a1)
{
  v2 = objc_opt_new();
  IntVector = CPMLFeatureVector::getIntVector(a1);
  v4 = *IntVector;
  if (IntVector[1] != *IntVector)
  {
    v5 = 0;
    do
    {
      v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*(v4 + 4 * v5)];
      [v2 addObject:v6];

      ++v5;
      v4 = *IntVector;
    }

    while (v5 < (IntVector[1] - *IntVector) >> 2);
  }

  RealVector = CPMLFeatureVector::getRealVector(a1);
  v8 = *RealVector;
  if (RealVector[1] != *RealVector)
  {
    v9 = 0;
    do
    {
      v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*(v8 + 8 * v9)];
      [v2 addObject:v10];

      ++v9;
      v8 = *RealVector;
    }

    while (v9 < (RealVector[1] - *RealVector) >> 3);
  }

  return v2;
}

void sub_24730492C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x24C19F910](v3, v1);
  _Unwind_Resume(a1);
}

void CPMLLINEARSVMAnalysisHandler::CPMLLINEARSVMAnalysisHandler(CPMLLINEARSVMAnalysisHandler *this, CPMLAlgorithm *a2)
{
  CPMLAnalysisHandler::CPMLAnalysisHandler(this);
  *v3 = &unk_285927118;
  v3[1] = a2;
}

CPMLLINEARSVMAnalysisHandler *CPMLDestroyLINEARSVMAnalysis(CPMLLINEARSVMAnalysisHandler *result)
{
  if (result)
  {
    CPMLLINEARSVMAnalysisHandler::~CPMLLINEARSVMAnalysisHandler(result);

    JUMPOUT(0x24C19F910);
  }

  return result;
}

void CPMLLINEARSVMAnalysisHandler::~CPMLLINEARSVMAnalysisHandler(CPMLLINEARSVMAnalysisHandler *this)
{
  *this = &unk_285927118;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CPModelClose(this);
}

void CPMLRemapper::CPMLRemapper(CPMLRemapper *this, sqlite3 *a2, CPMLStatistics *a3, char a4)
{
  *(this + 2) = a4;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *this = 0;
  operator new();
}

void CPMLRemapper::saveRemapper(CPMLRemapper *this)
{
  if (*(*(this + 2) + 124))
  {
    v2 = 0;
    do
    {
      errmsg = 0;
      v3 = sqlite3_mprintf("INDEX%d ", v2);
      v4 = sqlite3_mprintf("create TABLE %q(keyValue TEXT, indexValue INT, pKey INTEGER PRIMARY KEY);", v3);
      CPMLsql_dropTableCommand(*(this + 1), v3);
      v5 = sqlite3_exec(*(this + 1), v4, CPMLsql_callbackDBResponse, this, &errmsg);
      if (v5)
      {
        CPMLLog = CPMLLog::getCPMLLog(v5);
        CPMLLog::log(CPMLLog, CPML_LOG_ERR, "saveRemapper", "SQL error: %s \n", errmsg);
        sqlite3_free(errmsg);
      }

      if (v3)
      {
        sqlite3_free(v3);
      }

      if (v4)
      {
        sqlite3_free(v4);
      }

      ++v2;
    }

    while (v2 < *(*(this + 2) + 124));
  }
}

void CPMLRemapper::~CPMLRemapper(CPMLRemapper *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x24C19F910](v2, 0x10C402FEFCB83);
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x24C19F910](v4, 0x10C402FEFCB83);
  }
}

double CPMLRemapper::normalizeColumn(CPMLRemapper *this, double result, int a3)
{
  v3 = *(this + 2);
  v4 = *(v3[12] + 4 * a3);
  if (*(**(this + 3) + 4 * v4))
  {
    v5 = *(v3[24] + 8 * v4);
    if (v5 <= 0.0)
    {
      v5 = 1.0;
    }

    return (result - *(v3[21] + 8 * v4)) / v5;
  }

  return result;
}

char *CPMLRemapper::unmap(CPMLRemapper *this, int a2, int a3)
{
  v4 = *(*(*(this + 2) + 96) + 4 * a3);
  ppStmt = 0;
  v5 = sqlite3_mprintf("select keyValue from INDEX%d where indexValue = %d; ", v4, a2);
  v6 = strlen(v5);
  v7 = sqlite3_prepare_v2(*(this + 1), v5, v6, &ppStmt, 0);
  if (v7)
  {
    v8 = v7;
    CPMLLog = CPMLLog::getCPMLLog(v7);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "unmap", " getKeyValueWith: DB NOT OK %d\n", v8);
  }

  v10 = sqlite3_step(ppStmt);
  if (v10 != 101)
  {
    v11 = v10;
    if (v10 == 100)
    {
      v12 = sqlite3_column_text(ppStmt, 0);
      goto LABEL_8;
    }

    v13 = CPMLLog::getCPMLLog(v10);
    CPMLLog::log(v13, CPML_LOG_ERR, "unmap", "getKeyValueWith: Error iterating rows %d\n", v11);
  }

  v12 = "error";
LABEL_8:
  v14 = strlen(v12);
  v15 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
  strlcpy(v15, v12, v14 + 1);
  sqlite3_finalize(ppStmt);
  if (v5)
  {
    sqlite3_free(v5);
  }

  return v15;
}

uint64_t CPMLRemapper::remap(CPMLRemapper *this, char *a2, int a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(*(this + 2) + 96) + 4 * a3);
  ppStmt = 0;
  v6 = sqlite3_mprintf("select indexValue from INDEX%d where keyValue='%q'; ", v5, a2);
  v7 = strlen(v6);
  v8 = sqlite3_prepare_v2(*(this + 1), v6, v7, &ppStmt, 0);
  if (v8)
  {
    v9 = v8;
    CPMLLog = CPMLLog::getCPMLLog(v8);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "remap", "getIndexValueWith: DB NOT OK %d\n", v9);
  }

  v11 = sqlite3_step(ppStmt);
  if (v11 != 100)
  {
    v12 = v11;
    if (v11 != 101)
    {
      v13 = CPMLLog::getCPMLLog(v11);
      CPMLLog::log(v13, CPML_LOG_ERR, "remap", "getIndexValueWith: Error iterating rows %d\n", v12);
    }

    sqlite3_finalize(ppStmt);
    v14 = -1.0;
LABEL_9:
    if (*(this + 2) != 1 || *this == 1)
    {
      errmsg = 0;
      v15 = sqlite3_mprintf("INDEX%d ", v5);
      v16 = sqlite3_mprintf("insert into %q (keyValue, indexValue) VALUES('%q', %d);", v15, a2, *(**(this + 4) + 4 * v5));
      v17 = sqlite3_exec(*(this + 1), v16, CPMLsql_callbackDBResponse, this, &errmsg);
      if (v17)
      {
        v18 = CPMLLog::getCPMLLog(v17);
        CPMLLog::log(v18, CPML_LOG_ERR, "remap", "SQL error: %s \n", errmsg);
        sqlite3_free(errmsg);
      }

      v19 = **(this + 4);
      v20 = *(v19 + 4 * v5);
      *(v19 + 4 * v5) = v20 + 1;
      if (v15)
      {
        sqlite3_free(v15);
      }

      if (v16)
      {
        sqlite3_free(v16);
      }

      v14 = v20;
      goto LABEL_18;
    }

LABEL_25:
    if ((*this & 1) == 0 && *(this + 1) == 1)
    {
      errmsg = 0;
      v22 = sqlite3_mprintf("UPDATE cacheString SET keyValue='%q' WHERE indexValue=%d;", a2, (-10 - v5));
      v23 = sqlite3_exec(*(this + 1), v22, CPMLsql_callbackDBResponse, this, &errmsg);
      if (v23)
      {
        v24 = CPMLLog::getCPMLLog(v23);
        CPMLLog::log(v24, CPML_LOG_ERR, "remap", "SQL error: %s \n", errmsg);
        sqlite3_free(errmsg);
      }

      if (v22)
      {
        sqlite3_free(v22);
      }

      v14 = (-10 - v5);
    }

    goto LABEL_18;
  }

  v14 = sqlite3_column_double(ppStmt, 0);
  sqlite3_finalize(ppStmt);
  if (v14 < 0.0)
  {
    goto LABEL_9;
  }

  if (*(this + 2))
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v6)
  {
    sqlite3_free(v6);
  }

  return v14;
}

void CPMLDBSerialization::cp_createTable(sqlite3 **this, char *a2, char *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if (this + 15 == std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>((this + 14), __p))
  {
    v8 = __p;
    *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((this + 14), __p) + 56) = 1;
    CPMLsql_createTable(this[4], a2, a3, 0);
  }

  else if (*(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>((this + 14), __p) + 56) != 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s Corrupted match.\n", "cp_createTable");
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247305908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLDBSerialization::cp_write(sqlite3 **this, unsigned int *a2, char *a3, unint64_t a4, char *a5)
{
  errmsg = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a3;
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, v9);
  std::string::basic_string[abi:ne200100]<0>(__p, " INTEGER");
  if ((v22 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v23, v10, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  (*(*this + 33))(this, a3, v12);
  if (a4)
  {
    v13 = 1;
    v14 = a4;
    v15 = 1;
    while (1)
    {
      v16 = *a2++;
      v17 = sqlite3_mprintf("insert into %q (%q) VALUES(%d);", a3, v9, v16);
      v18 = sqlite3_exec(this[4], v17, callbackDBResponse2, this, &errmsg);
      if (v18)
      {
        break;
      }

      if (v17)
      {
        sqlite3_free(v17);
      }

      v15 = v13++ < a4;
      if (!--v14)
      {
        goto LABEL_21;
      }
    }

    CPMLLog = CPMLLog::getCPMLLog(v18);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "cp_writeDefault: SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
    if (v17)
    {
      sqlite3_free(v17);
    }
  }

  else
  {
LABEL_21:
    v15 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return (v15 << 31 >> 31);
}

{
  errmsg = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a3;
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, v9);
  std::string::basic_string[abi:ne200100]<0>(__p, " INTEGER");
  if ((v22 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v23, v10, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  (*(*this + 33))(this, a3, v12);
  if (a4)
  {
    v13 = 1;
    v14 = a4;
    v15 = 1;
    while (1)
    {
      v16 = *a2++;
      v17 = sqlite3_mprintf("insert into %q (%q) VALUES(%u);", a3, v9, v16);
      v18 = sqlite3_exec(this[4], v17, callbackDBResponse2, this, &errmsg);
      if (v18)
      {
        break;
      }

      if (v17)
      {
        sqlite3_free(v17);
      }

      v15 = v13++ < a4;
      if (!--v14)
      {
        goto LABEL_21;
      }
    }

    CPMLLog = CPMLLog::getCPMLLog(v18);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "cp_serialize_uintDefault: SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
    if (v17)
    {
      sqlite3_free(v17);
    }
  }

  else
  {
LABEL_21:
    v15 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return (v15 << 31 >> 31);
}

void sub_247305B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t callbackDBResponse2(CPMLLog *a1, int a2, char **a3, char **a4)
{
  CPMLLog = CPMLLog::getCPMLLog(a1);
  CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "callbackDBResponse2", "CB response2");
  return 0;
}

void sub_247305D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLDBSerialization::cp_write(sqlite3 **this, unint64_t *a2, char *a3, unint64_t a4, char *a5)
{
  errmsg = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a3;
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, v9);
  std::string::basic_string[abi:ne200100]<0>(__p, " INTEGER");
  if ((v22 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v23, v10, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  (*(*this + 33))(this, a3, v12);
  if (a4)
  {
    v13 = 1;
    v14 = a4;
    v15 = 1;
    while (1)
    {
      v16 = *a2++;
      v17 = sqlite3_mprintf("insert into %q (%q) VALUES(%llu);", a3, v9, v16);
      v18 = sqlite3_exec(this[4], v17, callbackDBResponse2, this, &errmsg);
      if (v18)
      {
        break;
      }

      if (v17)
      {
        sqlite3_free(v17);
      }

      v15 = v13++ < a4;
      if (!--v14)
      {
        goto LABEL_21;
      }
    }

    CPMLLog = CPMLLog::getCPMLLog(v18);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "cp_serialize_uint64_tDefault: SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
    if (v17)
    {
      sqlite3_free(v17);
    }
  }

  else
  {
LABEL_21:
    v15 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return (v15 << 31 >> 31);
}

void sub_247305F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLDBSerialization::cp_write(sqlite3 **this, float *a2, char *a3, unint64_t a4, char *a5)
{
  errmsg = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a3;
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, v9);
  std::string::basic_string[abi:ne200100]<0>(__p, " REAL");
  if ((v22 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v23, v10, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  (*(*this + 33))(this, a3, v12);
  if (a4)
  {
    v13 = 1;
    v14 = a4;
    v15 = 1;
    while (1)
    {
      v16 = (*a2 & 0x7FFFFFFFu) < 0x7F800000 ? sqlite3_mprintf("insert into %q (%q) VALUES(%f);", a3, v9, *a2) : sqlite3_mprintf("insert into %q (%q) VALUES(NULL);", a3, v9);
      v17 = v16;
      v18 = sqlite3_exec(this[4], v16, callbackDBResponse2, this, &errmsg);
      if (v18)
      {
        break;
      }

      if (v17)
      {
        sqlite3_free(v17);
      }

      v15 = v13++ < a4;
      ++a2;
      if (!--v14)
      {
        goto LABEL_24;
      }
    }

    CPMLLog = CPMLLog::getCPMLLog(v18);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "cp_writeDefault: SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
    if (v17)
    {
      sqlite3_free(v17);
    }
  }

  else
  {
LABEL_24:
    v15 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return (v15 << 31 >> 31);
}

void sub_247306198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLDBSerialization::cp_write(sqlite3 **this, double *a2, char *a3, unint64_t a4, char *a5)
{
  errmsg = 0;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = a3;
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, v9);
  std::string::basic_string[abi:ne200100]<0>(__p, " REAL");
  if ((v22 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v23, v10, v11);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  (*(*this + 33))(this, a3, v12);
  if (a4)
  {
    v13 = 1;
    v14 = a4;
    v15 = 1;
    while (1)
    {
      v16 = (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 ? sqlite3_mprintf("insert into %q (%q) VALUES(%lf);", a3, v9, *a2) : sqlite3_mprintf("insert into %q (%q) VALUES(NULL);", a3, v9);
      v17 = v16;
      v18 = sqlite3_exec(this[4], v16, callbackDBResponse2, this, &errmsg);
      if (v18)
      {
        break;
      }

      if (v17)
      {
        sqlite3_free(v17);
      }

      v15 = v13++ < a4;
      ++a2;
      if (!--v14)
      {
        goto LABEL_24;
      }
    }

    CPMLLog = CPMLLog::getCPMLLog(v18);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "cp_writeDefault: SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
    if (v17)
    {
      sqlite3_free(v17);
    }
  }

  else
  {
LABEL_24:
    v15 = 0;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return (v15 << 31 >> 31);
}

void sub_2473063D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLDBSerialization::cp_write(sqlite3 **this, char *a2, const char *a3, uint64_t a4, const char *a5)
{
  errmsg[1] = *MEMORY[0x277D85DE8];
  errmsg[0] = 0;
  MEMORY[0x28223BE20](this);
  v12 = v23 - ((v11 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, v13);
  std::string::basic_string[abi:ne200100]<0>(v23, " TEXT");
  if ((v24 & 0x80u) == 0)
  {
    v14 = v23;
  }

  else
  {
    v14 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v23[1];
  }

  std::string::append(&v25, v14, v15);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v25;
  }

  else
  {
    v16 = v25.__r_.__value_.__r.__words[0];
  }

  (*(*this + 33))(this, a3, v16);
  strlcpy(v12, a2, a4 + 1);
  v17 = sqlite3_mprintf("insert into %q (%q) VALUES('%q');", a3, v13, v12);
  v18 = sqlite3_exec(this[4], v17, callbackDBResponse2, this, errmsg);
  if (v18)
  {
    CPMLLog = CPMLLog::getCPMLLog(v18);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "cp_write", "cp_writeDefault: SQL error: %s \n", errmsg[0]);
    sqlite3_free(errmsg[0]);
    if (v17)
    {
      sqlite3_free(v17);
    }

    v20 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v17)
    {
      sqlite3_free(v17);
    }

    v20 = 0;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_247306628(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLDBSerialization::reset(CPMLDBSerialization *this)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "reset", "%s unimplmented function.", "reset");
  return 0xFFFFFFFFLL;
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

void sub_2473074E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object)
{
  MEMORY[0x24C19F910](v16, 0x10A1C405A95AE37);

  _Unwind_Resume(a1);
}

void sub_247309400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x24C19F910](v19, 0x1090C40B6130435);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_247309938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x24C19F910](v10, 0x10A1C4021AD9D2ELL);

  _Unwind_Resume(a1);
}

void sub_247309A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x24C19F910](v10, 0x80C40803F642BLL);

  _Unwind_Resume(a1);
}

void CPMLOnlineSvm::CPMLOnlineSvm(CPMLOnlineSvm *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_2859279D8;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 1;
  *(v5 + 152) = 2;
  *(v5 + 160) = xmmword_247321F70;
  *(v5 + 176) = 0x186A000000001;
  *(v5 + 184) = xmmword_247321F80;
  *(v5 + 232) = 0u;
  *(v5 + 200) = xmmword_247321F90;
  v6 = (v5 + 312);
  v7 = (v5 + 336);
  *(v5 + 248) = 0u;
  *(v5 + 296) = 0;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 344) = 0u;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 0u;
  *(v5 + 448) = 0;
  *(v5 + 416) = 0u;
  *(v5 + 432) = 0u;
  *(v5 + 488) = 0u;
  *(v5 + 504) = 0u;
  *(v5 + 472) = 0u;
  (*(a2->var0 + 13))(a2, v5 + 8, "version", 5, 0);
  v14 = 0;
  (*(a2->var0 + 8))(a2, &v14 + 4, "num_feature", 1, 0);
  (*(a2->var0 + 8))(a2, &v14, "num_sv", 1, 0);
  (*(a2->var0 + 12))(a2, this + 304, "bias_", 1, 0);
  std::vector<double>::resize(v6, v14);
  (*(a2->var0 + 12))(a2, *v6, "alphas_", v14, 0);
  std::vector<std::valarray<double>>::resize(v7, v14);
  if (v14 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      std::valarray<double>::resize(*v7 + v8, SHIDWORD(v14));
      ++v9;
      v8 += 16;
    }

    while (v9 < v14);
    if (v14 >= 1)
    {
      v10 = 0;
      do
      {
        sprintf(v15, "support_vectors_%d", v10);
        if (SHIDWORD(v14) >= 1)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            (*(a2->var0 + 12))(a2, *(*v7 + 16 * v10) + v11, v15, 1, v12++);
            v11 += 8;
          }

          while (v12 < SHIDWORD(v14));
        }

        ++v10;
      }

      while (v10 < v14);
    }
  }

  *(this + 38) = 0;
  *(this + 10) = xmmword_247321F70;
  v13 = *MEMORY[0x277D85DE8];
}

void sub_247309EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  std::valarray<double>::~valarray(v16 + 504);
  std::valarray<double>::~valarray(v16 + 488);
  std::valarray<double>::~valarray(v18);
  v21 = *(v16 + 432);
  if (v21)
  {
    *(v16 + 440) = v21;
    operator delete(v21);
  }

  std::valarray<double>::~valarray(v16 + 416);
  v22 = *(v16 + 384);
  if (v22)
  {
    *(v16 + 392) = v22;
    operator delete(v22);
  }

  v23 = *(v16 + 360);
  if (v23)
  {
    *(v16 + 368) = v23;
    operator delete(v23);
  }

  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v24 = *v17;
  if (*v17)
  {
    *(v16 + 320) = v24;
    operator delete(v24);
  }

  a16 = (v16 + 280);
  std::vector<std::valarray<char>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v16 + 256);
  std::vector<std::valarray<double>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v25 = *v19;
  if (*v19)
  {
    *(v16 + 240) = v25;
    operator delete(v25);
  }

  if (*(v16 + 136))
  {
    if (*a11)
    {
      MEMORY[0x24C19F8F0](*a11, 0x1000C8000313F17);
    }
  }

  CPModelClose(v16);
  _Unwind_Resume(a1);
}

void std::vector<std::valarray<double>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v3 -= 16;
        std::allocator<std::valarray<double>>::destroy[abi:ne200100](a1, v3);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::valarray<double>>::__append(a1, v5);
  }
}

void std::vector<std::valarray<double>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::valarray<double>>>(a1, v10);
    }

    v15 = 0;
    v16 = 16 * v8;
    bzero((16 * v8), 16 * a2);
    v17 = 16 * v8 + 16 * a2;
    v11 = *(a1 + 8);
    v12 = (16 * v8 + *a1 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::valarray<double>>,std::valarray<double>*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<std::valarray<double>>::~__split_buffer(&v15);
  }
}

void sub_24730A158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::valarray<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CPLinearRegressionClassfier::CPLinearRegressionClassfier(CPLinearRegressionClassfier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_2859271B0;
  *(v5 + 104) = *(a2->var0 + 31) - 1;
  *(v5 + 96) = 1;
  CPMLCDB::getIterator();
}

pthread_mutex_t *CPLinearRegressionClassfier::initializeLinearRegressionMemory(CPLinearRegressionClassfier *this)
{
  v2 = *(this + 24);
  v3 = *(this + 26);
  if (v2 < 2)
  {
    v15 = v3 + 1;
    *(this + 25) = v15;
    *(this + 15) = 0;
LABEL_11:
    *(this + 14) = malloc_type_calloc(v15, 8uLL, 0x100004000313F17uLL);
    result = malloc_type_calloc(*(this + 25), 8uLL, 0x100004000313F17uLL);
    *(this + 16) = result;
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3;
  v7 = v2 - 1;
  v8 = v3 + 2;
  do
  {
    v9 = lgamma((v8 + v4));
    v10 = v9 - lgamma((v4 + 3));
    v11 = lgamma(v6);
    v5 += (exp(v10 - v11) + 0.5);
    ++v4;
  }

  while (v7 != v4);
  v12 = *(this + 26);
  *(this + 25) = v5 + v12 + 1;
  v13 = malloc_type_calloc(v12 * v5, 4uLL, 0x100004052888210uLL);
  *(this + 15) = v13;
  if (*(this + 24) >= 2)
  {
    v16 = v13;
    v14 = 0;
    v17 = *(this + 26);
    v18 = 1;
    do
    {
      v13 = fillDegrees(v16, v17, v17, ++v18);
      v17 = *(this + 26);
      v16 += v17 * v13;
      v14 += v13;
    }

    while (v18 < *(this + 24));
  }

  else
  {
    v14 = 0;
  }

  if (v14 == v5)
  {
    v15 = *(this + 25);
    goto LABEL_11;
  }

  CPMLLog = CPMLLog::getCPMLLog(v13);
  v21 = CPML_LOG_ERR;

  return CPMLLog::log(CPMLLog, v21, "initializeLinearRegressionMemory", "PROGRAMMING ERROR. Computation of degree two coefficients has mismatch. Expect a crash.");
}

void CPLinearRegressionClassfier::CPLinearRegressionClassfier(CPLinearRegressionClassfier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_2859271B0;
  (*(a2->var0 + 8))(a2, v5 + 12, "maxDegree", 1, 0);
  (*(a2->var0 + 8))(a2, this + 104, "numberInputFeatures", 1, 0);
  CPLinearRegressionClassfier::initializeLinearRegressionMemory(this);
  (*(a2->var0 + 12))(a2, *(this + 14), "coefficients", *(this + 25), 0);
}

void CPLinearRegressionClassfier::~CPLinearRegressionClassfier(void **this)
{
  *this = &unk_2859271B0;
  free(this[14]);
  free(this[16]);
  v2 = this[15];
  if (v2)
  {
    free(v2);
  }

  CPModelClose(this);
}

{
  CPLinearRegressionClassfier::~CPLinearRegressionClassfier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPLinearRegressionClassfier::serialize(CPLinearRegressionClassfier *this)
{
  (*(**(this + 11) + 16))(*(this + 11), this + 96, "maxDegree", 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), this + 104, "numberInputFeatures", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 14), "coefficients", *(this + 25), 0);
  return 0;
}

uint64_t CPLinearRegressionClassfier::train(CPLinearRegressionClassfier *this)
{
  v2 = *(this + 25);
  v33 = *(this + 26);
  v3 = *(**(this + 6) + 120);
  v4 = malloc_type_calloc(v3 * v2, 8uLL, 0x100004000313F17uLL);
  v31 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  v5 = *(this + 14);
  bzero(v5, 8 * v2);
  v32 = *(this + 25);
  v6 = (*(**(this + 10) + 32))(*(this + 10));
  if (v6)
  {
    v7 = v6;
    v8 = v4;
    do
    {
      RealVector = CPMLFeatureVector::getRealVector(v7);
      *v8 = 1.0;
      v10 = *RealVector;
      v11 = *(RealVector + 8) - *RealVector;
      if (v11)
      {
        v12 = v11 >> 3;
        if (v12 <= 1)
        {
          v12 = 1;
        }

        v13 = 1;
        do
        {
          v14 = *v10++;
          v8[v13++] = v14;
          --v12;
        }

        while (v12);
      }

      expandVector(*(this + 15), v33, v32 + ~v33, v8 + 1, &v8[v33 + 1]);
      if (v2 >= 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = v8[i];
          *&v5[i * 8] = *&v5[i * 8] + v16 * CPMLFeatureVector::getYHat(v7);
        }
      }

      v8 += v2;
      v7 = (*(**(this + 10) + 32))(*(this + 10));
    }

    while (v7);
  }

  v17 = malloc_type_calloc((v2 * v2), 8uLL, 0x100004000313F17uLL);
  v18 = v17;
  if (v2 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = v17;
    do
    {
      v22 = v19 * 8;
      v23 = v20;
      do
      {
        v24 = 0.0;
        if (v3 >= 1)
        {
          v25 = v3;
          v26 = v4;
          do
          {
            v24 = v24 + v26[v19] * *(v26 + v22);
            v26 += v2;
            --v25;
          }

          while (v25);
        }

        *v21++ = v24;
        ++v23;
        v22 += 8;
      }

      while (v23 != v2);
      ++v20;
      ++v19;
    }

    while (v20 != v2);
  }

  __info = 0;
  __ldb = v2;
  __nrhs = 1;
  v27 = dppsv_("L", &__ldb, &__nrhs, v17, v5, &__ldb, &__info);
  if (__info)
  {
    CPMLLog = CPMLLog::getCPMLLog(v27);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "train", "Linear regression training failed.");
    v29 = __info;
  }

  else
  {
    v29 = 0;
  }

  free(v4);
  free(v31);
  free(v18);
  return v29;
}

void expandVector(int *a1, int a2, int a3, long double *a4, double *a5)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 4 * (a2 - 1) + 4;
    v11 = a2;
    do
    {
      v12 = 1.0;
      if (a2 >= 1)
      {
        v13 = v11;
        v14 = a4;
        v15 = a1;
        do
        {
          if (*v15)
          {
            v12 = v12 * pow(*v14, *v15);
          }

          ++v15;
          ++v14;
          --v13;
        }

        while (v13);
        a1 = (a1 + v10);
      }

      *a5++ = v12;
      ++v9;
    }

    while (v9 != a3);
  }
}

uint64_t CPLinearRegressionClassfier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  v4 = *(a1 + 100);
  v5 = *(a1 + 104);
  IntVector = CPMLFeatureVector::getIntVector(this);
  RealVector = CPMLFeatureVector::getRealVector(this);
  if (IntVector[1] == *IntVector)
  {
    v10 = *RealVector;
    v11 = *(RealVector + 1) - *RealVector;
    if (v5 == v11 >> 3)
    {
      v12 = *(a1 + 128);
      if (v5 >= 1)
      {
        v13 = (v12 + 8);
        v14 = v5;
        do
        {
          v15 = *v10++;
          *v13++ = v15;
          --v14;
        }

        while (v14);
      }

      *v12 = 0x3FF0000000000000;
      expandVector(*(a1 + 120), v5, v4 + ~v5, (v12 + 8), (v12 + 8 + v11));
      if (v4 < 1)
      {
        v17 = 0.0;
      }

      else
      {
        v16 = *(a1 + 112);
        v17 = 0.0;
        do
        {
          v18 = *v16++;
          v19 = v18;
          v20 = *v12;
          v12 += 8;
          v17 = v17 + v19 * v20;
          --v4;
        }

        while (v4);
      }

      CPMLFeatureVector::setYHat(this, v17);
      return 0;
    }

    else
    {
      CPMLLog = CPMLLog::getCPMLLog(RealVector);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "eval", "Feature count mismatch with training data in Linear Regression");
      return 2;
    }
  }

  else
  {
    v8 = CPMLLog::getCPMLLog(RealVector);
    CPMLLog::log(v8, CPML_LOG_ERR, "eval", "Feature vector in Linear Regression predict should not have integer features.");
    return 1;
  }
}

uint64_t fillDegrees(int *a1, int a2, uint64_t a3, int a4)
{
  v4 = a3;
  if (a3)
  {
    v6 = a1;
    v7 = a3 - 1;
    if (a3 == 1)
    {
      *a1 = a4;
    }

    else if (a4 < 0)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      LODWORD(v4) = 0;
      v10 = 4 * a2;
      do
      {
        v11 = fillDegrees(v6 + 1, a2, v7, a4 - v9);
        v12 = v11;
        if (v11 >= 1)
        {
          do
          {
            *v6 = v9;
            v6 = (v6 + v10);
            --v12;
          }

          while (v12);
        }

        v4 = (v11 + v4);
      }

      while (a4 != v9++);
    }
  }

  return v4;
}

void CPMLNaiveBayesClassifierBase::CPMLNaiveBayesClassifierBase(CPMLNaiveBayesClassifierBase *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v7 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_2859270A0;
  *(v5 + 120) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 1065353216;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 240) = 1065353216;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 1065353216;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = 1065353216;
  *(v5 + 328) = 0u;
  *(v5 + 344) = 0u;
  *(v5 + 360) = 1065353216;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 0u;
  *(v5 + 400) = 1065353216;
  *(v5 + 576) = 0u;
  strcpy((v5 + 8), "2.0.0");
  *(v5 + 112) = 0;
  var0 = a2->var0;
  *(v5 + 96) = *(a2->var0 + 31);
  *(v5 + 104) = *(var0 + 33);
  CPMLCDB::getIterator();
}

void sub_24730AFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v12 + 46));
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v15);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v12 + 36));
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v14);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v13);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::~__hash_table(a11);
  v17 = v12[18];
  if (v17)
  {
    v12[19] = v17;
    operator delete(v17);
  }

  v18 = *a12;
  if (*a12)
  {
    v12[16] = v18;
    operator delete(v18);
  }

  CPModelClose(v12);
  _Unwind_Resume(a1);
}

void CPMLNaiveBayesClassifierBase::setTunableData(CPMLNaiveBayesClassifierBase *this, CPMLTunableData *a2)
{
  if (CPMLTunableData::getNumberOfItems(a2) < 2)
  {
    *(this + 64) = 20;
    *(this + 69) = 0x100000020;
    __asm { FMOV            V0.2D, #1.0 }

    *(this + 33) = _Q0;
    *(this + 130) = 1;
    *(this + 68) = 0x3CD203AF9EE75616;
    *(this + 204) = 0;
    *(this + 70) = 0xA0000000ALL;
    strcpy(this + 410, "defaultNBV3b");
  }

  else
  {
    CPMLTunableData::tDataGetInt(a2, "k", this + 128);
    CPMLTunableData::tDataGetInt(a2, "cacheLength", this + 138);
    CPMLTunableData::tDataGetInt(a2, "cacheAssocitivity", this + 139);
    CPMLTunableData::tDataGetDouble(a2, "decayRate", this + 66);
    CPMLTunableData::tDataGetDouble(a2, "smoothRate", this + 67);
    CPMLTunableData::tDataGetInt(a2, "smoothMode", this + 130);
    CPMLTunableData::tDataGetDouble(a2, "epsilonRate", this + 68);
    CPMLTunableData::tDataGetBool(a2, "enableLogging", this + 409);
    CPMLTunableData::tDataGetString(a2, "logFilename", this + 410, 0x64uLL);
    CPMLTunableData::tDataGetBool(a2, "dataCollection", this + 408);
    CPMLTunableData::tDataGetInt(a2, "nbAdatorVersion", this + 129);
    CPMLTunableData::tDataGetInt(a2, "maxAllowedUpdate", this + 140);
    v4 = (this + 564);
    CPMLTunableData::tDataGetInt(a2, "maxAllowedPredict", this + 141);
    if (!*(this + 140))
    {
      *(this + 140) = 10;
    }

    if (!*v4)
    {
      *v4 = 10;
    }

    if (!*(this + 8))
    {
      strcpy(this + 8, "2.0.0");
    }
  }

  operator new();
}

void CPMLNaiveBayesClassifierBase::CPMLNaiveBayesClassifierBase(CPMLNaiveBayesClassifierBase *this, CPMLStatistics *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a3, a4);
  *(v6 + 120) = 0u;
  v7 = v6 + 120;
  *(v6 + 168) = 0u;
  *v6 = &unk_2859270A0;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 1065353216;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 1065353216;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 1065353216;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 1065353216;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 1065353216;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 400) = 1065353216;
  *(v6 + 96) = *(a2 + 31);
  v8 = 0;
  v9 = 0;
  CPMLNaiveBayesClassifierBase::setTunableData(v6, a4);
}

void sub_24730B944(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v2 + 46));
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v6);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v2 + 36));
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v5);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::~__hash_table(v3);
  v8 = v2[18];
  if (v8)
  {
    v2[19] = v8;
    operator delete(v8);
  }

  v9 = **(v1 + 8);
  if (v9)
  {
    v2[16] = v9;
    operator delete(v9);
  }

  CPModelClose(v2);
  _Unwind_Resume(a1);
}

void CPMLNaiveBayesClassifierBase::~CPMLNaiveBayesClassifierBase(CPMLNaiveBayesClassifierBase *this)
{
  *this = &unk_2859270A0;
  v2 = *(this + 71);
  if (v2)
  {
    CPMLLogger::~CPMLLogger(v2);
    MEMORY[0x24C19F910]();
  }

  v3 = *(this + 72);
  if (v3)
  {
    CPMLNaiveBayes::~CPMLNaiveBayes(v3);
    MEMORY[0x24C19F910]();
  }

  v4 = *(this + 73);
  if (v4)
  {
    CPMLNaiveBayesAdaptor::~CPMLNaiveBayesAdaptor(v4);
    MEMORY[0x24C19F910]();
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 368);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 328);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 288);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::~__hash_table(this + 168);
  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  CPModelClose(this);
}

{
  CPMLNaiveBayesClassifierBase::~CPMLNaiveBayesClassifierBase(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPMLNaiveBayesClassifierBase::serialize(CPMLNaiveBayesClassifierBase *this)
{
  (*(**(this + 11) + 32))(*(this + 11), this + 104, "resultCardinality", 1, 0);
  (*(**(this + 11) + 56))(*(this + 11), this + 8, "version", 32, 0);
  return 0;
}

uint64_t CPMLNaiveBayesClassifierBase::train(CPMLNaiveBayesClassifierBase *this)
{
  v88[6] = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 10) + 32))(*(this + 10));
  if (!v2)
  {
LABEL_27:
    CPMLNaiveBayesClassifierBase::updateMean(this);
    (*(**(this + 10) + 40))(*(this + 10));
    v29 = (*(**(this + 10) + 32))();
    v30 = v29;
    if (!v29)
    {
LABEL_52:
      CPMLNaiveBayesClassifierBase::updateVariance(this);
      v63 = sqlite3_mprintf("%lf", *(this + 14));
      (*(**(this + 11) + 136))(*(this + 11), "rowCountY", "rowCountY", v63);
      if (v63)
      {
        sqlite3_free(v63);
      }

      for (i = *(this + 48); i; i = *i)
      {
        v65 = sqlite3_mprintf("%d,%lf", *(i + 4), *(i + 5));
        (*(**(this + 11) + 136))(*(this + 11), "yCount", "yMap,yCount", v65);
        if (v65)
        {
          sqlite3_free(v65);
        }
      }

      for (j = *(this + 23); j; j = *j)
      {
        v88[0] = j[2];
        std::unordered_map<int,int>::unordered_map(&v88[1], (j + 3));
        v67 = v88[0];
        std::unordered_map<int,int>::unordered_map(&__p, &v88[1]);
        sprintf(v87, "xcol%d", v67 > 0x1F);
        for (k = v83; k; k = *k)
        {
          v69 = sqlite3_mprintf("%d,%d,%lf", *(k + 4), v67, *(k + 5));
          (*(**(this + 11) + 136))(*(this + 11), v87, "xMap,yMap,xyCount", v69);
          if (v69)
          {
            sqlite3_free(v69);
          }
        }

        std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&__p);
        std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v88[1]);
      }

      for (m = *(this + 33); m; m = *m)
      {
        v71 = *(m + 2);
        v72 = m[3];
        strcpy(v88, "xcolRealMean");
        v73 = sqlite3_mprintf("%d,%d,%lf", v71 >> 31, v71, v72);
        (*(**(this + 11) + 136))(*(this + 11), v88, "xMap,yMap,xyCount", v73);
        if (v73)
        {
          sqlite3_free(v73);
        }
      }

      for (n = *(this + 43); n; n = *n)
      {
        v75 = *(n + 2);
        v76 = n[3];
        strcpy(v88, "xcolRealVariance");
        v77 = sqlite3_mprintf("%d,%d,%lf", v75 >> 31, v75, v76);
        (*(**(this + 11) + 136))(*(this + 11), v88, "xMap,yMap,xyCount", v77);
        if (v77)
        {
          sqlite3_free(v77);
        }
      }

      result = 0;
      goto LABEL_75;
    }

    while (1)
    {
      memset(v88, 0, 24);
      CPMLNaiveBayesClassifierBase::getResponseValues(v29, v88, v30);
      YVectorVector = CPMLFeatureVector::getYVectorVector(v30);
      if (YVectorVector[1] == *YVectorVector)
      {
        break;
      }

      v32 = v88[0];
      v33 = v88[1];
      v34 = (v88[1] - v88[0]) >> 2;
      if (v34)
      {
        if (v34 == 1)
        {
          v87[0] = *v88[0];
          __p = v87;
          v35 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 46, v87);
          ++*(v35 + 5);
        }

        else
        {
          v48 = *(this + 140);
          if (v34 > v48)
          {
            v49 = ((v88[1] - v88[0]) << 30) - 0x100000000;
            do
            {
              v33 -= 4;
              v34 = v49 >> 32;
              v49 -= 0x100000000;
            }

            while (v34 > v48);
            v88[1] = v33;
          }

          if (v34)
          {
            for (ii = 0; ii != v34; ++ii)
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = *(v88[0] + ii);
              while (1)
              {
                XVectorVector = CPMLFeatureVector::getXVectorVector(v30);
                if (v52 >= (XVectorVector[1] - *XVectorVector) >> 4)
                {
                  break;
                }

                v56 = CPMLFeatureVector::getXVectorVector(v30);
                if (v52 >= (v56[1] - *v56) >> 4)
                {
                  std::vector<VectorClass>::__throw_out_of_range[abi:ne200100]();
                }

                v57 = (*v56 + v51);
                v58 = v53 + (((*v57)[1] - **v57) >> 2);
                v53 = v58 + CPMLNaiveBayesClassifierBase::processDataSetVariance(this, v57[1], v58, v54);
                ++v52;
                v51 += 16;
              }

              IntVector = CPMLFeatureVector::getIntVector(v30);
              v61 = *IntVector;
              v60 = IntVector[1];
              RealVector = CPMLFeatureVector::getRealVector(v30);
              CPMLNaiveBayesClassifierBase::processDataSetVariance(this, RealVector, v53 + ((v60 - v61) >> 2), v54);
            }
          }
        }

LABEL_48:
        v32 = v88[0];
      }

      if (v32)
      {
        v88[1] = v32;
        operator delete(v32);
      }

      v29 = (*(**(this + 10) + 32))(*(this + 10));
      v30 = v29;
      if (!v29)
      {
        goto LABEL_52;
      }
    }

    v87[0] = *v88[0];
    __p = v87;
    v36 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 46, v87);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    ++*(v36 + 5);
    while (1)
    {
      v40 = CPMLFeatureVector::getXVectorVector(v30);
      if (v38 >= (v40[1] - *v40) >> 4)
      {
        break;
      }

      v41 = CPMLFeatureVector::getXVectorVector(v30);
      if (v38 >= (v41[1] - *v41) >> 4)
      {
        std::vector<VectorClass>::__throw_out_of_range[abi:ne200100]();
      }

      v42 = (*v41 + v37);
      v43 = v39 + (((*v42)[1] - **v42) >> 2);
      v39 = v43 + CPMLNaiveBayesClassifierBase::processDataSetVariance(this, v42[1], v43, *v88[0]);
      ++v38;
      v37 += 16;
    }

    v44 = CPMLFeatureVector::getIntVector(v30);
    v46 = *v44;
    v45 = v44[1];
    v47 = CPMLFeatureVector::getRealVector(v30);
    CPMLNaiveBayesClassifierBase::processDataSetVariance(this, v47, v39 + ((v45 - v46) >> 2), *v88[0]);
    goto LABEL_48;
  }

  v3 = v2;
  while (1)
  {
    v4 = CPMLFeatureVector::getXVectorVector(v3);
    if (*(v4 + 1) != *v4)
    {
      break;
    }

    __p = 0;
    v82 = 0;
    v83 = 0;
    CPMLNaiveBayesClassifierBase::getResponseValues(v4, &__p, v3);
    v5 = CPMLFeatureVector::getYVectorVector(v3);
    if (v5[1] == *v5)
    {
      v87[0] = *__p;
      v88[0] = v87;
      v11 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 46, v87);
      ++*(v11 + 5);
      v12 = CPMLFeatureVector::getXVectorVector(v3);
      v13 = CPMLNaiveBayesClassifierBase::processVectorDataSet(this, v12, 0, v87[0]);
      v14 = CPMLFeatureVector::getIntVector(v3);
      v15 = CPMLNaiveBayesClassifierBase::processDiscreteDataSet(this, v14, v13, v87[0], 1);
      v16 = CPMLFeatureVector::getRealVector(v3);
      CPMLNaiveBayesClassifierBase::processContinousDataSet(this, v16, v15, v87[0], 1);
    }

    else
    {
      v6 = __p;
      v7 = v82;
      v8 = (v82 - __p) >> 2;
      if (!v8)
      {
        v10 = 2;
        if (!__p)
        {
          goto LABEL_25;
        }

LABEL_24:
        v82 = v6;
        operator delete(v6);
        goto LABEL_25;
      }

      if (v8 == 1)
      {
        v87[0] = *__p;
        v88[0] = v87;
        v9 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 46, v87);
        ++*(v9 + 5);
        v10 = 2;
        goto LABEL_23;
      }

      v17 = *(this + 140);
      if (v8 > v17)
      {
        v18 = ((v82 - __p) << 30) - 0x100000000;
        do
        {
          v7 -= 4;
          v8 = v18 >> 32;
          v18 -= 0x100000000;
        }

        while (v8 > v17);
        v82 = v7;
      }

      if (v8)
      {
        for (jj = 0; jj != v8; ++jj)
        {
          v86 = *(__p + jj);
          v88[0] = &v86;
          v20 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 46, &v86);
          v21 = 0;
          ++*(v20 + 5);
          do
          {
            v85 = *(__p + v21);
            if (jj != v21)
            {
              v84 = v86;
              *v87 = &v84;
              v22 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 21, &v84);
              std::unordered_map<int,int>::unordered_map(v88, (v22 + 3));
              *v87 = &v85;
              v23 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v88, &v85);
              ++*(v23 + 5);
              std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v88);
            }

            ++v21;
          }

          while (v8 != v21);
          v24 = CPMLFeatureVector::getXVectorVector(v3);
          v25 = CPMLNaiveBayesClassifierBase::processVectorDataSet(this, v24, 0, v86);
          v26 = CPMLFeatureVector::getIntVector(v3);
          v27 = CPMLNaiveBayesClassifierBase::processDiscreteDataSet(this, v26, v25, v86, 1);
          v28 = CPMLFeatureVector::getRealVector(v3);
          CPMLNaiveBayesClassifierBase::processContinousDataSet(this, v28, v27, v86, 1);
        }
      }
    }

    v10 = 0;
    ++*(this + 14);
LABEL_23:
    v6 = __p;
    if (__p)
    {
      goto LABEL_24;
    }

LABEL_25:
    if ((v10 | 2) != 2)
    {
      goto LABEL_74;
    }

    v3 = (*(**(this + 10) + 32))(*(this + 10));
    if (!v3)
    {
      goto LABEL_27;
    }
  }

  CPMLLog = CPMLLog::getCPMLLog(v4);
  CPMLLog::log(CPMLLog, CPML_LOG_ERR, "train", "Does not support x vectors\n");
LABEL_74:
  result = 0xFFFFFFFFLL;
LABEL_75:
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24730C5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMLNaiveBayesClassifierBase::getResponseValues(int a1, const void **a2, CPMLFeatureVector *this)
{
  YVectorVector = CPMLFeatureVector::getYVectorVector(this);
  v6 = *YVectorVector;
  if (*(YVectorVector + 1) == *YVectorVector)
  {
    YHat = CPMLFeatureVector::getYHat(this);
    p_YHat = &YHat;
LABEL_10:
    std::vector<int>::push_back[abi:ne200100](a2, p_YHat);
    return;
  }

  v7 = *v6;
  v8 = (*(*v6 + 8) - **v6) << 30;
  if (!v8)
  {
    CPMLLog = CPMLLog::getCPMLLog(YVectorVector);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "getResponseValues", "No response values in vector\n");
    v15 = 0;
    p_YHat = &v15;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = v8 >> 32;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  do
  {
    v14 = *(*v7 + 4 * v9);
    std::vector<int>::push_back[abi:ne200100](a2, &v14);
    ++v9;
  }

  while (v11 != v9);
}

uint64_t CPMLNaiveBayesClassifierBase::processVectorDataSet(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + v8);
      v11 = v10[1];
      v12 = CPMLNaiveBayesClassifierBase::processDiscreteDataSet(a1, *v10, a3, a4, 0);
      a3 = CPMLNaiveBayesClassifierBase::processContinousDataSet(a1, v11, v12, a4, 0);
      ++v9;
      v4 = *a2;
      v8 += 16;
    }

    while (v9 < (a2[1] - *a2) >> 4);
  }

  return a3;
}

uint64_t CPMLNaiveBayesClassifierBase::processDiscreteDataSet(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  v7 = *a2;
  if (a2[1] == *a2)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v20 = *(v7 + 4 * v11);
      if (a5)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v19 = a4 | ((v12 + a3) << 31);
      v21 = &v19;
      v13 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 168), &v19);
      std::unordered_map<int,int>::unordered_map(v18, (v13 + 3));
      v21 = &v20;
      v14 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v18, &v20);
      ++*(v14 + 5);
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v18);
      ++v11;
      v7 = *a2;
      v15 = (a2[1] - *a2) >> 2;
    }

    while (v15 > v11);
  }

  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  return (v16 + a3);
}

uint64_t CPMLNaiveBayesClassifierBase::processContinousDataSet(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  v7 = *a2;
  if (a2[1] == *a2)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *(v7 + 8 * v11);
      if (a5)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v18[0] = a4 | ((v13 + a3) << 31);
      v18[2] = v18;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 208), v18);
      v14[3] = v12 + v14[3];
      ++v11;
      v7 = *a2;
      v15 = (a2[1] - *a2) >> 3;
    }

    while (v15 > v11);
  }

  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  return (v16 + a3);
}

void *CPMLNaiveBayesClassifierBase::updateMean(void *this)
{
  v1 = this[28];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1[3];
      v6 = *(v1 + 2);
      v5 = v6;
      v7 = &v5;
      v4 = *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v2 + 46, &v5) + 5) / v3;
      v7 = &v6;
      this = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v2 + 31, &v6);
      *(this + 3) = v4;
      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

uint64_t CPMLNaiveBayesClassifierBase::processDataSetVariance(uint64_t a1, void *a2, int a3, int a4)
{
  if (a2[1] == *a2)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v8 = 0;
    v9 = a3 << 31;
    do
    {
      v14 = v9 | a4;
      v15 = &v14;
      v10 = *(*a2 + 8 * v8) - *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 248), &v14) + 3);
      v15 = &v14;
      v11 = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 288), &v14);
      v11[3] = v11[3] + v10 * v10;
      ++v8;
      v12 = (a2[1] - *a2) >> 3;
      v9 += 0x80000000;
    }

    while (v12 > v8);
  }

  return (v12 + a3);
}

void *CPMLNaiveBayesClassifierBase::updateVariance(void *this)
{
  v1 = this[38];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1[3];
      v6 = *(v1 + 2);
      v5 = v6;
      v7 = &v5;
      v4 = v3 / (*(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v2 + 46, &v5) + 5) + -1.0);
      v7 = &v6;
      this = std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v2 + 41, &v6);
      *(this + 3) = v4;
      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

uint64_t CPMLNaiveBayesClassifierBase::eval(uint64_t a1, CPMLFeatureVector *a2, uint64_t *a3)
{
  if (!*(a1 + 104))
  {
    return 0xFFFFFFFFLL;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (!a3 || (v5 = *a3, a3[1] == *a3))
  {
    if (&v61 != (a1 + 144))
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v61, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 2);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](&v61, (v5 + v6));
      ++v7;
      v5 = *a3;
      v6 += 4;
    }

    while (v7 < (a3[1] - *a3) >> 2);
  }

  memset(v60, 0, sizeof(v60));
  LODWORD(__p[0]) = -1;
  std::vector<int>::vector[abi:ne200100](v59, 1uLL);
  XVectorVector = CPMLFeatureVector::getXVectorVector(a2);
  v9 = *XVectorVector;
  if (XVectorVector[1] != *XVectorVector)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v9 + v10;
      v13 = *(v12 + 8);
      std::vector<std::vector<int>>::push_back[abi:ne200100](v60, *v12);
      if (v13[1] != *v13)
      {
        std::vector<std::vector<int>>::push_back[abi:ne200100](v60, v59);
      }

      ++v11;
      v9 = *XVectorVector;
      v10 += 16;
    }

    while (v11 < (XVectorVector[1] - *XVectorVector) >> 4);
  }

  IntVector = CPMLFeatureVector::getIntVector(a2);
  if (IntVector[1] != *IntVector)
  {
    v15 = 0;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v57 = 0;
      LODWORD(v54) = *(*IntVector + 4 * v15);
      std::vector<int>::push_back[abi:ne200100](__p, &v54);
      std::vector<std::vector<int>>::push_back[abi:ne200100](v60, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v15;
    }

    while (v15 < (IntVector[1] - *IntVector) >> 2);
  }

  v50 = IntVector;
  RealVector = CPMLFeatureVector::getRealVector(a2);
  if (RealVector[1] != *RealVector)
  {
    std::vector<std::vector<int>>::push_back[abi:ne200100](v60, v59);
  }

  CPMLNaiveBayes::predict(*(a1 + 576), v60, &v61, *(a1 + 512), a1 + 120);
  *__p = 0u;
  v57 = 0u;
  v58 = 1065353216;
  v17 = v61;
  if (v62 != v61)
  {
    v18 = 0;
    v51 = RealVector;
    do
    {
      v55 = v17[v18];
      *&v54 = &v55;
      v19 = *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 368), &v55) + 5);
      v20 = CPMLFeatureVector::getXVectorVector(a2);
      v53 = v18;
      v21 = v19;
      v23 = *v20;
      v22 = v20[1];
      if (v22 == *v20)
      {
        v25 = 0;
      }

      else
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = (v23 + 16 * v24);
          v27 = v26[1];
          v25 += (*(*v26 + 8) - **v26) >> 2;
          v28 = *v27;
          if (v27[1] != *v27)
          {
            v29 = 0;
            v30 = v25 << 31;
            do
            {
              v64[0] = v55 | v30;
              v31 = *(v28 + 8 * v29);
              *&v54 = v64;
              v32 = *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 248), v64) + 3);
              *&v54 = v64;
              v33 = *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 328), v64) + 3);
              v34 = 1.0;
              if (v33 != 0.0)
              {
                v34 = exp(-((v31 - v32) * (v31 - v32)) / (v33 + v33)) / sqrt(v33 * 6.28318531);
              }

              v21 = v21 * v34;
              ++v29;
              v28 = *v27;
              v30 += 0x80000000;
            }

            while (v29 < (v27[1] - *v27) >> 3);
            v23 = *v20;
            v22 = v20[1];
            v25 += v29;
          }

          ++v24;
        }

        while (v24 < (v22 - v23) >> 4);
      }

      v35 = *v51;
      if (v51[1] != *v51)
      {
        v36 = 0;
        v37 = (v25 + ((v50[2] - *v50) >> 2)) << 31;
        do
        {
          v64[0] = (v55 | v37);
          v38 = *(v35 + 8 * v36);
          *&v54 = v64;
          v39 = *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 248), v64) + 3);
          *&v54 = v64;
          v40 = *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 328), v64) + 3);
          v41 = 1.0;
          if (v40 != 0.0)
          {
            v41 = exp(-((v38 - v39) * (v38 - v39)) / (v40 + v40)) / sqrt(v40 * 6.28318531);
          }

          v21 = v21 * v41;
          ++v36;
          v35 = *v51;
          v37 += 0x80000000;
        }

        while (v36 < (v51[1] - *v51) >> 3);
      }

      *&v54 = &v55;
      *(std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(__p, &v55) + 3) = v21;
      v18 = v53 + 1;
      v17 = v61;
    }

    while (v53 + 1 < ((v62 - v61) >> 2));
  }

  v42 = *(a1 + 120);
  v43 = *(a1 + 128);
  if (v43 == v42)
  {
    v46 = (v43 - v42) >> 4;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v54 = *&v42[v44];
      v64[0] = &v54 + 8;
      std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(__p, &v54 + 2);
      ++v45;
      v42 = *(a1 + 120);
      v43 = *(a1 + 128);
      v46 = (v43 - v42) >> 4;
      v44 += 2;
    }

    while (v46 > v45);
  }

  *&v54 = sortProbIndex;
  v48 = 126 - 2 * __clz(v46);
  if (v43 == v42)
  {
    v49 = 0;
  }

  else
  {
    v49 = v48;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,false>(v42, v43, &v54, v49, 1);
  CPMLFeatureVector::setYHatProbList(a2, (a1 + 120));
  *(a1 + 128) = *(a1 + 120);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(__p);
  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  __p[0] = v60;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return 0;
}

void sub_24730D1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMLNaiveBayesClassifierBase::normalDistribution(CPMLNaiveBayesClassifierBase *this, double a2, double a3, double a4)
{
  if (a3 != 0.0)
  {
    exp(-((a4 - a2) * (a4 - a2)) / (a3 + a3));
  }
}

void sub_24730D5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char *__p, char *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t CPMLNaiveBayesClassifierBase::setDelegateEngine(CPMLNaiveBayesClassifierBase *this, CPMLDelegateEngine *a2)
{
  CPMLNaiveBayes::set_engine(*(this + 72), a2);
  v3 = *(**(this + 73) + 56);

  return v3();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E9EBD0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_24730DA40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_map<int,int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unordered_map<int,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_24730DF80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,ProbIndex*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,BOOL (*&)(ProbIndex,ProbIndex)>(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,BOOL (*&)(ProbIndex,ProbIndex)>(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(a1, v39, a3);
    v9 = v39 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,false>(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,BOOL (*&)(ProbIndex,ProbIndex)>(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,BOOL (*&)(ProbIndex,ProbIndex)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*,ProbIndex*>(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ProbIndex,ProbIndex),ProbIndex*>(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

void CPGMMClassfier::CPGMMClassfier(CPGMMClassfier *this, CPMLCDB *a2, CPMLSerialization *a3, CPMLTunableData *a4)
{
  CPMLAlgorithm::CPMLAlgorithm(this, a2, a3, a4);
  *v5 = &unk_285927960;
  *(v5 + 184) = 0;
  v6 = *(a2->var0 + 33);
  *(v5 + 96) = *(a2->var0 + 31) - 1;
  *(v5 + 100) = v6;
  *(v5 + 104) = 2;
  CPMLCDB::getIterator();
}

void *CPGMMClassfier::initializeGMMMemory(CPGMMClassfier *this)
{
  *(this + 15) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
  *(this + 16) = malloc_type_calloc((*(this + 24) * *(this + 24)), 8uLL, 0x100004000313F17uLL);
  *(this + 17) = malloc_type_calloc(*(this + 25) * *(this + 24) * *(this + 26), 8uLL, 0x100004000313F17uLL);
  *(this + 18) = malloc_type_calloc(*(this + 24) * *(this + 24) * *(this + 25) * *(this + 26), 8uLL, 0x100004000313F17uLL);
  *(this + 19) = malloc_type_calloc(*(this + 26) * *(this + 25), 8uLL, 0x100004000313F17uLL);
  *(this + 20) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
  *(this + 21) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
  result = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
  *(this + 22) = result;
  return result;
}

void CPGMMClassfier::CPGMMClassfier(CPGMMClassfier *this, CPMLSerialization *a2, CPMLTunableData *a3)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, a2, a3);
  *v5 = &unk_285927960;
  *(v5 + 184) = 0;
  (*(a2->var0 + 8))(a2, v5 + 96, "featureVectorSpace", 1, 0);
  (*(a2->var0 + 8))(a2, this + 100, "resultCardinality", 1, 0);
  (*(a2->var0 + 8))(a2, this + 104, "numberClusters", 1, 0);
  CPGMMClassfier::initializeGMMMemory(this);
  (*(a2->var0 + 12))(a2, *(this + 15), "preMean", *(this + 24), 0);
  (*(a2->var0 + 12))(a2, *(this + 16), "preWhiten", (*(this + 24) * *(this + 24)), 0);
  (*(a2->var0 + 12))(a2, *(this + 17), "means", *(this + 25) * *(this + 24) * *(this + 26), 0);
  (*(a2->var0 + 12))(a2, *(this + 18), "inverseCovariances", *(this + 24) * *(this + 24) * *(this + 25) * *(this + 26), 0);
  (*(a2->var0 + 12))(a2, *(this + 19), "weights", *(this + 26) * *(this + 25), 0);
}

void CPGMMClassfier::CPGMMClassfier(CPGMMClassfier *this, int a2, int a3, int *a4, double *a5, double *a6, double *a7, double *a8, double *a9, CPMLTunableData *a10)
{
  CPMLAlgorithm::CPMLAlgorithm(this, 0, 0, a10);
  *v18 = &unk_285927960;
  *(v18 + 96) = a2;
  *(v18 + 100) = a3;
  *(v18 + 104) = -1;
  *(v18 + 112) = a4;
  *(v18 + 120) = a5;
  *(v18 + 128) = a6;
  *(v18 + 136) = a7;
  *(v18 + 144) = a8;
  *(v18 + 152) = a9;
  *(this + 184) = 1;
  *(this + 20) = malloc_type_calloc(a2, 8uLL, 0x100004000313F17uLL);
  *(this + 21) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
  *(this + 22) = malloc_type_calloc(*(this + 24), 8uLL, 0x100004000313F17uLL);
}

{
  CPGMMClassfier::CPGMMClassfier(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void CPGMMClassfier::~CPGMMClassfier(void **this)
{
  *this = &unk_285927960;
  if ((this[23] & 1) == 0)
  {
    free(this[15]);
    free(this[16]);
    free(this[17]);
    free(this[18]);
    free(this[19]);
  }

  free(this[20]);
  free(this[21]);
  free(this[22]);

  CPModelClose(this);
}

{
  CPGMMClassfier::~CPGMMClassfier(this);

  JUMPOUT(0x24C19F910);
}

uint64_t CPGMMClassfier::serialize(CPGMMClassfier *this)
{
  (*(**(this + 11) + 16))(*(this + 11), this + 96, "featureVectorSpace", 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), this + 100, "resultCardinality", 1, 0);
  (*(**(this + 11) + 16))(*(this + 11), this + 104, "numberClusters", 1, 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 15), "preMean", *(this + 24), 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 16), "preWhiten", (*(this + 24) * *(this + 24)), 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 17), "means", *(this + 25) * *(this + 24) * *(this + 26), 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 18), "inverseCovariances", *(this + 24) * *(this + 24) * *(this + 25) * *(this + 26), 0);
  (*(**(this + 11) + 48))(*(this + 11), *(this + 19), "weights", *(this + 26) * *(this + 25), 0);
  return 0;
}

uint64_t CPGMMClassfier::train(void **this)
{
  v1 = this;
  bzero(this[15], 8 * *(this + 24));
  bzero(v1[16], 8 * *(v1 + 24) * *(v1 + 24));
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = v2;
  v5 = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
  bzero(v5, 4 * *(v1 + 25));
  v6 = (*(*v1[10] + 32))(v1[10]);
  if (!v6)
  {
    v8 = 0;
LABEL_14:
    if (v3 >= 1)
    {
      v20 = 0;
      while (v5[v20])
      {
        if (v3 == ++v20)
        {
          goto LABEL_18;
        }
      }

      CPMLLog = CPMLLog::getCPMLLog(0);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "train", "You must specify an exmaple for all classes: %d not found.\n", v20);
      free(v5);
      return 3;
    }

LABEL_18:
    v21 = 3 * v2 - 1;
    v247 = v2 * v2;
    if (v2 * v2 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = (v2 * v2);
    }

    if (!v8)
    {
      v23 = CPMLLog::getCPMLLog(0);
      CPMLLog::log(v23, CPML_LOG_ERR, "train", "dataCount 0 \n");
      v8 = 1;
    }

    v245 = malloc_type_calloc(v22, 8uLL, 0x100004000313F17uLL);
    v24 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
    v249 = malloc_type_malloc(4 * (v2 + 1), 0x100004052888210uLL);
    v238 = malloc_type_calloc(*(v1 + 24) * v8, 8uLL, 0x100004000313F17uLL);
    v232 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
    v25 = malloc_type_calloc(*(v1 + 25), 4uLL, 0x100004052888210uLL);
    v26 = v25;
    *v25 = 0;
    if (*(v1 + 25) > 1)
    {
      v27 = 0;
      v28 = 1;
      v29 = v5;
      do
      {
        v30 = *v29++;
        v27 += v30;
        v25[v28++] = v27;
      }

      while (v28 < *(v1 + 25));
    }

    (*(*v1[10] + 40))(v1[10]);
    if (v2 >= 1)
    {
      v31 = v8;
      v32 = v1[15];
      v33 = v2;
      do
      {
        *v32 = *v32 / v31;
        ++v32;
        --v33;
      }

      while (v33);
      v34 = 0;
      v36 = v1[15];
      v35 = v1[16];
      do
      {
        v37 = v2;
        v38 = v36;
        v39 = v35;
        do
        {
          v40 = *v38++;
          *v39 = (*v39 + -(v36[v34] * v40) * v31) / v31;
          ++v39;
          --v37;
        }

        while (v37);
        ++v34;
        v35 += v2;
      }

      while (v34 != v2);
    }

    v233 = v26;
    v41 = v1[16];
    __info = 0;
    __lwork[0] = 3 * v2 - 1;
    __lda = v2;
    dsyev_("V", "U", &__lda, v41, &__lda, v24, v245, __lwork, &__info);
    memcpy(v245, v41, 8 * v247);
    bzero(v41, 8 * v247);
    v42 = v232;
    if (v2 >= 1)
    {
      v43 = 0;
      v44 = v245;
      do
      {
        v45 = v24[v43];
        if (v45 > 0.0)
        {
          v46 = 0;
          LODWORD(v47) = 0;
          v48 = 1.0 / sqrt(v45);
          do
          {
            v47 = v47;
            v49 = v44;
            v50 = v2;
            do
            {
              v51 = *v49++;
              v41[v47] = v41[v47] + v245[v43 * v2 + v46] * v51 * v48;
              ++v47;
              --v50;
            }

            while (v50);
            ++v46;
          }

          while (v46 != v2);
        }

        ++v43;
        v44 += v2;
      }

      while (v43 != v2);
    }

    v52 = (*(*v1[10] + 32))(v1[10]);
    if (v52)
    {
      v53 = v52;
      do
      {
        RealVector = CPMLFeatureVector::getRealVector(v53);
        YHat = CPMLFeatureVector::getYHat(v53);
        v56 = v233[YHat];
        v57 = *(v1 + 24);
        v58 = *RealVector;
        v59 = *(RealVector + 8) - *RealVector;
        if (v59)
        {
          v60 = v59 >> 3;
          v61 = v1[15];
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v62 = v24;
          do
          {
            v63 = *v58++;
            v64 = v63;
            v65 = *v61++;
            *v62++ = v64 - v65;
            --v60;
          }

          while (v60);
        }

        if (v2 >= 1)
        {
          v66 = 0;
          v67 = 0;
          v68 = &v238[8 * v57 * v56];
          v69 = v1[16];
          do
          {
            v70 = &v69[8 * v67];
            v71 = 0.0;
            v72 = v24;
            v73 = v2;
            do
            {
              v74 = *v70++;
              v75 = v74;
              v76 = *v72++;
              v71 = v71 + v75 * v76;
              --v73;
            }

            while (v73);
            *&v68[8 * v66] = v71;
            v67 += v2;
            ++v66;
          }

          while (v66 != v2);
        }

        *&v232[8 * v56] = YHat;
        v233[YHat] = v56 + 1;
        v53 = (*(*v1[10] + 32))(v1[10]);
      }

      while (v53);
    }

    v225 = v24;
    *v233 = 0;
    if (*(v1 + 25) > 1)
    {
      v77 = 0;
      v78 = 1;
      v79 = v5;
      do
      {
        v80 = *v79++;
        v77 += v80;
        v233[v78++] = v77;
      }

      while (v78 < *(v1 + 25));
    }

    v240 = *(v1 + 26);
    v234 = malloc_type_calloc(v240, 8uLL, 0x100004000313F17uLL);
    if (*(v1 + 25) < 1)
    {
LABEL_196:
      free(v234);
      free(v245);
      free(v225);
      free(v238);
      free(v249);
      free(v42);
      free(v233);
      free(v5);
      return 0;
    }

    v81 = v2 * v240;
    v237 = 8 * v2 * v240;
    v230 = 8 * v2;
    v229 = v230 * v81;
    v248 = 8 * v2;
    v82 = pow(6.28318531, v2);
    v239 = 0;
    v83 = 0;
    v84 = 0;
    v228 = 8 * v81;
    v231 = v1;
    v226 = v5;
    while (1)
    {
      v85 = v1;
      v86 = v4;
      v241 = v85[17];
      v87 = &v241[8 * v84 * v4 * v240];
      v235 = v85[18];
      v88 = &v235[8 * v240 * v2 * v84 * v4];
      v89 = v85[19] + 8 * v84 * v240;
      v243 = v87;
      v90 = v84;
      bzero(v87, v237);
      v246 = v88;
      bzero(v88, v229);
      bzero(v89, 8 * v240);
      v91 = v233[v90];
      v92 = v91 * v2;
      v93 = &v238[8 * v91 * v2];
      v244 = &v42[8 * v91];
      v236 = v90;
      v94 = v5[v90];
      v242 = v93;
      if (v94 <= v240)
      {
        v112 = 8 * v2;
        v113 = v86;
        v114 = v241;
        if (v94 >= 1)
        {
          v115 = 0;
          v116 = vdupq_n_s64(v94 - 1);
          v117 = &v232[8 * v91 + 8];
          v118 = xmmword_247321D00;
          do
          {
            v119 = vmovn_s64(vcgeq_u64(v116, v118));
            if (v119.i8[0])
            {
              *(v117 - 1) = v115;
            }

            if (v119.i8[4])
            {
              *v117 = (v115 + 1);
            }

            v115 += 2;
            v118 = vaddq_s64(v118, vdupq_n_s64(2uLL));
            v117 += 2;
          }

          while (((v94 + 1) & 0xFFFFFFFE) != v115);
        }

        if (v240 >= 1)
        {
          v120 = 0;
          v121 = &v241[v83];
          do
          {
            *(v234 + v120) = 0;
            if (v2 >= 1)
            {
              if (v120 >= v94)
              {
                v122 = v94 - 1;
              }

              else
              {
                v122 = v120;
              }

              v123 = &v93[8 * v122 * v2];
              v124 = v121;
              v125 = v2;
              do
              {
                v126 = *v123;
                v123 += 8;
                *v124 = v126;
                v124 += 8;
                --v125;
              }

              while (v125);
            }

            ++v120;
            v121 += v230;
          }

          while (v120 != v240);
        }
      }

      else
      {
        v227 = v91 * v2;
        v95 = malloc_type_malloc(4 * v240, 0x100004052888210uLL);
        v96 = v240;
        v97 = v95;
        if (v240 >= 1)
        {
          v98 = 0;
          v99 = v95;
          v100 = v234;
          v101 = v240;
          do
          {
            *v99 = 0;
            *v100 = 0;
            if (v2 >= 1)
            {
              bzero(&v243[8 * v98], v248);
              v96 = v240;
            }

            v98 += v2;
            ++v100;
            v99 = (v99 + 4);
            --v101;
          }

          while (v101);
        }

        if (v94 < 1)
        {
          v103 = 0;
          v105 = v244;
        }

        else
        {
          v102 = 0;
          v103 = 0;
          v104 = v242;
          v105 = v244;
          do
          {
            v106 = v102 % v240;
            *&v105[8 * v102] = (v102 % v240);
            if ((v96 & 0x80000000) != 0)
            {
              v111 = CPMLLog::getCPMLLog(v95);
              v95 = CPMLLog::log(v111, CPML_LOG_ERR, "kmeans", "Data point assigned to nonexistant cluster: %d.\n", v102 % v240);
              v105 = v244;
              v96 = v240;
              v103 = 1;
            }

            else
            {
              ++*(v97 + v106);
              if (v2 >= 1)
              {
                v107 = &v241[8 * v106 * v2];
                v108 = v104;
                v109 = v2;
                do
                {
                  v110 = *v108++;
                  *&v107[v83] = v110 + *&v107[v83];
                  v107 += 8;
                  --v109;
                }

                while (v109);
              }
            }

            ++v102;
            v104 = (v104 + v248);
          }

          while (v102 != v94);
        }

        if (v96 < 1)
        {
          v5 = v226;
          v113 = v2;
        }

        else
        {
          v127 = 0;
          v128 = v241;
          v5 = v226;
          v113 = v2;
          do
          {
            v129 = *(v97 + v127);
            if (v129)
            {
              if (v2 >= 1)
              {
                v130 = 1.0 / v129;
                v131 = v128;
                v132 = v2;
                do
                {
                  *&v131[v83] = v130 * *&v131[v83];
                  v131 += 8;
                  --v132;
                }

                while (v132);
              }
            }

            else
            {
              v133 = CPMLLog::getCPMLLog(v95);
              v95 = CPMLLog::log(v133, CPML_LOG_ERR, "kmeans", "Initialized cluster is empty.");
              v105 = v244;
              v96 = v240;
              v103 = 1;
            }

            ++v127;
            v128 += v248;
          }

          while (v127 != v96);
        }

        v112 = 8 * v2;
        v114 = v241;
        if (!v103 && v94 >= 1)
        {
          v134 = 0;
          v135 = v242;
          do
          {
            v136 = *&v105[8 * v134];
            if (v2 < 1)
            {
              v138 = 0.0;
            }

            else
            {
              v137 = &v241[8 * v2 * v136];
              v138 = 0.0;
              v139 = v135;
              v140 = v2;
              do
              {
                v141 = *v139++;
                v138 = v138 + (*&v137[v83] - v141) * (*&v137[v83] - v141);
                v137 += 8;
                --v140;
              }

              while (v140);
            }

            *(v234 + v136) = v138 + *(v234 + v136);
            ++v134;
            v135 = (v135 + v230);
          }

          while (v134 != v94);
          v142 = 0;
          v143 = 0;
          v144 = 0;
          v145 = 0;
          do
          {
            v146 = *&v105[8 * v143];
            v147 = *(v97 + v146);
            if (v147 >= 2)
            {
              if (v2 < 1)
              {
                v150 = 0.0;
              }

              else
              {
                v148 = &v242[v143 * v2];
                v149 = &v241[8 * v2 * v146];
                v150 = 0.0;
                v151 = v2;
                do
                {
                  v152 = *v148++;
                  v150 = v150 + (*&v149[v83] - v152) * (*&v149[v83] - v152);
                  v149 += 8;
                  --v151;
                }

                while (v151);
              }

              if (v240 < 1)
              {
                v154 = 1.79769313e308;
              }

              else
              {
                v153 = 0;
                v154 = 1.79769313e308;
                v155 = v241;
                do
                {
                  if (v153 != v146)
                  {
                    v156 = 0.0;
                    if (v2 >= 1)
                    {
                      v157 = v155;
                      v158 = &v242[v143 * v2];
                      v159 = v2;
                      do
                      {
                        v160 = *v158++;
                        v156 = v156 + (*&v157[v83] - v160) * (*&v157[v83] - v160);
                        v157 += 8;
                        --v159;
                      }

                      while (v159);
                    }

                    v161 = *(v97 + v153) / (*(v97 + v153) + 1.0) * v156;
                    if (v161 <= v154)
                    {
                      v145 = v153;
                      v144 = *(v97 + v153);
                      v154 = v161;
                    }
                  }

                  ++v153;
                  v155 += v230;
                }

                while (v153 != v96);
              }

              v162 = v147 / (v147 + -1.0) * v150;
              if (v154 >= v162)
              {
                ++v142;
              }

              else
              {
                *(v234 + v146) = *(v234 + v146) - v162;
                *(v234 + v145) = v154 + *(v234 + v145);
                v163 = v147 - 1;
                if (v2 >= 1)
                {
                  v164 = v147;
                  v165 = &v242[v143 * v2];
                  v166 = &v241[8 * v145 * v2];
                  v167 = &v241[8 * v2 * v146];
                  v168 = v2;
                  do
                  {
                    v169 = *v165++;
                    *&v167[v83] = 1.0 / v163 * -(v169 - v164 * *&v167[v83]);
                    *&v166[v83] = 1.0 / (v144 + 1.0) * (v169 + v144 * *&v166[v83]);
                    v166 += 8;
                    v167 += 8;
                    --v168;
                  }

                  while (v168);
                }

                v142 = 0;
                *&v105[8 * v143] = v145;
                *(v97 + v146) = v163;
                ++*(v97 + v145);
              }
            }

            if (v143 < v94 - 1)
            {
              ++v143;
            }

            else
            {
              v143 = 0;
            }
          }

          while (v142 < v94);
        }

        free(v97);
        v92 = v227;
      }

      v170 = v92;
      bzero(v243, v237);
      v171 = &v238[8 * v170];
      if (v94 >= 1)
      {
        v172 = 0;
        v173 = 0;
        do
        {
          v174 = *&v244[8 * v172];
          *&v89[8 * v174] = *&v89[8 * v174] + 1.0;
          if (v2 >= 1)
          {
            v175 = v2 * v174;
            v176 = &v171[8 * v173];
            v177 = &v114[8 * v175];
            v173 += v2;
            v178 = v2;
            do
            {
              v179 = *v176++;
              *&v177[v83] = v179 + *&v177[v83];
              v177 += 8;
              --v178;
            }

            while (v178);
          }

          ++v172;
        }

        while (v172 != v94);
      }

      if (v240 >= 1)
      {
        v180 = 0;
        v181 = 0;
        do
        {
          if (v2 >= 1)
          {
            v182 = &v114[8 * v180];
            v183 = v2;
            do
            {
              v184 = *&v89[8 * v181];
              if (v184 > 0.0)
              {
                *&v182[v83] = *&v182[v83] / v184;
              }

              v182 += 8;
              --v183;
            }

            while (v183);
          }

          ++v181;
          v180 += v2;
        }

        while (v181 != v240);
      }

      v185 = 8 * v239;
      if (v94 >= 1)
      {
        v186 = 0;
        v187 = 0;
        v188 = v242;
        do
        {
          v189 = *&v244[8 * v187];
          *&v89[8 * v189] = *&v89[8 * v189] + 1.0;
          if (v2 >= 1)
          {
            v190 = v2 * v189;
            v191 = v190 * v2;
            v192 = &v114[8 * v190];
            v193 = v2;
            v194 = v188;
            do
            {
              *v194 = *v194 - *&v192[v83];
              ++v194;
              v192 += 8;
              --v193;
            }

            while (v193);
            v195 = 0;
            v196 = &v235[8 * v191 + v185];
            do
            {
              v193 = v193;
              v197 = v2;
              v198 = &v171[8 * v186];
              do
              {
                v199 = *v198++;
                *(v196 + 8 * v193) = *(v196 + 8 * v193) + v242[(v187 * v113) + v195] * v199;
                ++v193;
                --v197;
              }

              while (v197);
              ++v195;
            }

            while (v195 != v2);
          }

          ++v187;
          v188 = (v188 + v112);
          v186 += v2;
        }

        while (v187 != v94);
      }

      v200 = v2 * v2;
      if (v240 >= 1)
      {
        break;
      }

LABEL_195:
      v84 = v236 + 1;
      v1 = v231;
      v42 = v232;
      v83 += v228;
      v239 += v240 * v247;
      v4 = v2;
      if (v236 + 1 >= *(v231 + 25))
      {
        goto LABEL_196;
      }
    }

    v201 = 0;
    v202 = 0;
    v203 = &v235[v185];
    while (1)
    {
      v204 = 8 * v201;
      v205 = &v246[v200 * v202];
      if (*&v89[8 * v202] <= v2)
      {
        if (v2 >= 1)
        {
          v209 = 0;
          LODWORD(v210) = 0;
          do
          {
            v211 = 0;
            v210 = v210;
            do
            {
              if (v209 == v211)
              {
                v212 = 1.0;
              }

              else
              {
                v212 = 0.0;
              }

              *&v203[8 * v201 + 8 * v210++] = v212;
              ++v211;
            }

            while (v2 != v211);
            ++v209;
          }

          while (v209 != v2);
          goto LABEL_183;
        }
      }

      else if (v2 >= 1)
      {
        v206 = 0;
        v207 = 0;
        do
        {
          v208 = 0;
          do
          {
            *&v203[8 * v206 + 8 * v208 + v204] = *&v203[8 * v206 + 8 * v208 + v204] / *&v89[8 * v202];
            ++v208;
          }

          while (v2 != v208);
          ++v207;
          v206 += v2;
        }

        while (v207 != v2);
LABEL_183:
        __info = v200;
        __lwork[0] = 0;
        __lda = v2;
        dgetrf_(&__lda, &__lda, v205, &__lda, v249, __lwork);
        v213 = 0;
        v214 = 1.0;
        v215 = v2;
        do
        {
          v214 = v214 * v205[v213];
          v213 += v2 + 1;
          --v215;
        }

        while (v215);
        goto LABEL_187;
      }

      __info = v200;
      __lwork[0] = 0;
      __lda = v2;
      dgetrf_(&__lda, &__lda, &v246[v200 * v202], &__lda, v249, __lwork);
      v214 = 1.0;
LABEL_187:
      v216 = dgetri_(&__lda, v205, &__lda, v249, v245, &__info, __lwork);
      if (v214 == 0.0)
      {
        v217 = CPMLLog::getCPMLLog(v216);
        CPMLLog::log(v217, CPML_LOG_ERR, "train", "Covariance matrix has determinant zero.");
      }

      *&v89[8 * v202] = *&v89[8 * v202] / v5[v202] / sqrt(v82 * fabs(v214));
      v200 = v2 * v2;
      if (v2 >= 1)
      {
        v218 = 0;
        v219 = 0;
        do
        {
          v220 = 0;
          do
          {
            *&v203[8 * v218 + 8 * v220 + v204] = *&v203[8 * v218 + 8 * v220 + v204] * 0.5;
            ++v220;
          }

          while (v2 != v220);
          ++v219;
          v218 += v2;
        }

        while (v219 != v2);
      }

      ++v202;
      v201 += v247;
      if (v202 == v240)
      {
        goto LABEL_195;
      }
    }
  }

  v7 = v6;
  v8 = 0;
  while (1)
  {
    v9 = CPMLFeatureVector::getRealVector(v7);
    v11 = CPMLFeatureVector::getYHat(v7);
    if (v11 < 0 || v3 <= v11)
    {
      v222 = CPMLLog::getCPMLLog(v10);
      CPMLLog::log(v222, CPML_LOG_ERR, "train", "ERROR: Result cardinality does not match the response class number: !(0 <= %d < %d)", v11, v3);
      free(v5);
      return 1;
    }

    v12 = *v9;
    if (v2 != v9[1] - *v9)
    {
      break;
    }

    if (v2 >= 1)
    {
      v13 = 0;
      LODWORD(v14) = 0;
      v15 = v1[15];
      v16 = v1[16];
      do
      {
        v15[v13] = v12[v13] + v15[v13];
        v14 = v14;
        v17 = v2;
        v18 = v12;
        do
        {
          v19 = *v18++;
          v16[v14] = v16[v14] + v12[v13] * v19;
          ++v14;
          --v17;
        }

        while (v17);
        ++v13;
      }

      while (v13 != v2);
    }

    ++v5[v11];
    ++v8;
    v7 = (*(*v1[10] + 32))(v1[10]);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v223 = CPMLLog::getCPMLLog(v10);
  CPMLLog::log(v223, CPML_LOG_ERR, "train", "ERROR: Model dimension and feature dimension mismatch: %d != %d\n", (v9[1] - *v9) >> 3, v2);
  free(v5);
  return 2;
}

uint64_t CPGMMClassfier::eval(uint64_t a1, CPMLFeatureVector *this)
{
  v2 = this;
  v3 = a1;
  v4 = *(a1 + 96);
  v5 = *(a1 + 100);
  v6 = *(a1 + 104);
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v9 = *(a1 + 152);
  IntVector = CPMLFeatureVector::getIntVector(this);
  RealVector = CPMLFeatureVector::getRealVector(v2);
  if (IntVector[1] == *IntVector)
  {
    v14 = *RealVector;
    v15 = *(RealVector + 1);
    v16 = v15 - *RealVector;
    if (v15 == *RealVector)
    {
      v20 = v3[21];
    }

    else
    {
      v17 = 0;
      v18 = v16 >> 3;
      v19 = v3[15];
      v20 = v3[21];
      if (v18 <= 1)
      {
        v18 = 1;
      }

      do
      {
        v20[v17] = *(v14 + 8 * v17) - *(v19 + 8 * v17);
        ++v17;
      }

      while (v18 != v17);
    }

    v21 = v3[20];
    if (v4 >= 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = v3[16];
      do
      {
        v25 = (v24 + 8 * v23);
        v26 = 0.0;
        v27 = v20;
        v28 = v4;
        do
        {
          v29 = *v25++;
          v30 = v29;
          v31 = *v27++;
          v26 = v26 + v30 * v31;
          --v28;
        }

        while (v28);
        *(v21 + 8 * v22) = v26;
        v23 += v4;
        ++v22;
      }

      while (v22 != v4);
    }

    if (v5 < 1)
    {
      v59 = -1.0;
    }

    else
    {
      v60 = v2;
      v61 = v5;
      v32 = 0;
      v33 = 0.0;
      v34 = -1;
      v35 = v6;
      v36 = v9;
      v62 = v3;
      do
      {
        v37 = v35;
        if (v35 <= 0 && (v37 = *(v3[14] + 4 * v32), v37 < 1))
        {
          v40 = 0.0;
        }

        else
        {
          v64 = v34;
          v65 = v32;
          v66 = v36;
          v38 = 0;
          v39 = v3[22];
          v63 = (v37 - 1);
          v40 = 0.0;
          v67 = v37;
          do
          {
            v41 = 0.0;
            if (v4 >= 1)
            {
              for (i = 0; i != v4; ++i)
              {
                v20[i] = *(v21 + i * 8) - *(v7 + i * 8);
              }

              v43 = 0;
              v44 = 0;
              do
              {
                v45 = 8 * v44;
                v46 = 0.0;
                v47 = v20;
                v48 = v4;
                do
                {
                  v49 = *v47++;
                  v46 = v46 + *(v8 + v45) * v49;
                  v45 += 8;
                  --v48;
                }

                while (v48);
                v39[v43] = v46;
                v44 += v4;
                ++v43;
              }

              while (v43 != v4);
              v41 = 0.0;
              v50 = v4;
              v51 = v20;
              v52 = v39;
              do
              {
                v53 = *v51++;
                v54 = v53;
                v55 = *v52++;
                v41 = v41 - v54 * v55;
                --v50;
              }

              while (v50);
            }

            v56 = *v36++;
            v40 = v40 + v56 * exp(v41);
            v7 += 8 * v4;
            v8 += 8 * (v4 * v4);
            ++v38;
          }

          while (v38 != v67);
          v32 = v65;
          v36 = &v66[v63 + 1];
          v5 = v61;
          v3 = v62;
          v35 = v6;
          v34 = v64;
        }

        if (v40 > v33 || v34 < 0)
        {
          v33 = v40;
          v34 = v32;
        }

        ++v32;
      }

      while (v32 != v5);
      v59 = v34;
      v2 = v60;
    }

    CPMLFeatureVector::setYHat(v2, v59);
    return 0;
  }

  else
  {
    CPMLLog = CPMLLog::getCPMLLog(RealVector);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "eval", "Feature vector in Gaussian mixture model predict should not have integer features.");
    return 1;
  }
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessGetCountAndYCardinality(id *this, double *a2, double *a3)
{
  v6 = this[1];
  v7 = *this;
  v8 = (objc_opt_respondsToSelector() & 1) != 0 && [v7 preProcessGetCountAndYCardinality:v6 count:a2 withCardY:a3] == 1;

  return v8;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessGetCountY(id *this, double *a2, int a3)
{
  v6 = this[1];
  v7 = *this;
  v8 = (objc_opt_respondsToSelector() & 1) != 0 && [v7 preProcessGetCountY:v6 count:a2 withY:a3] == 1;

  return v8;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessGetCountXGivenYAndSetXCardinality(id *this, double *a2, int a3, int a4, int a5, double *a6)
{
  v12 = this[1];
  v13 = *this;
  v14 = (objc_opt_respondsToSelector() & 1) != 0 && [v13 preProcessGetCountXGivenYAndSetXCardinality:v12 count:a2 withXCol:a3 withX:a4 withY:a5 withCardinalityX:a6] == 1;

  return v14;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessSetCount(id *this, double a2)
{
  v4 = this[1];
  v5 = *this;
  v6 = (objc_opt_respondsToSelector() & 1) != 0 && [v5 preProcessSetCount:v4 withNumberY:a2] == 1;

  return v6;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessSetCountY(id *this, int a2, double a3)
{
  v6 = this[1];
  v7 = *this;
  v8 = (objc_opt_respondsToSelector() & 1) != 0 && [v7 preProcessSetCountY:v6 withY:a2 withCount:a3] == 1;

  return v8;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessSetCountXGivenY(id *this, int a2, int a3, int a4, double a5)
{
  v10 = this[1];
  v11 = *this;
  v12 = (objc_opt_respondsToSelector() & 1) != 0 && [v11 preProcessSetCountXGivenY:v10 withXCol:a2 withX:a3 withY:a4 withValue:a5] == 1;

  return v12;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessSetCardinalityXGivenY(id *this, int a2, int a3, double a4)
{
  v8 = this[1];
  v9 = *this;
  v10 = (objc_opt_respondsToSelector() & 1) != 0 && [v9 preProcessSetCardinalityXGivenY:v8 withXCol:a2 withY:a3 cardinalityValue:a4] == 1;

  return v10;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessUpdateNaiveBayes(id *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = *a1;
  if (objc_opt_respondsToSelector())
  {
    v17 = a3;
    v18 = v7;
    v8 = objc_opt_new();
    v9 = *a2;
    if (a2[1] != *a2)
    {
      v10 = 0;
      do
      {
        __p = 0;
        v20 = 0;
        v21 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v9 + 24 * v10), *(v9 + 24 * v10 + 8), (*(v9 + 24 * v10 + 8) - *(v9 + 24 * v10)) >> 2);
        v11 = objc_opt_new();
        if (v20 != __p)
        {
          v12 = 0;
          do
          {
            v13 = objc_alloc(MEMORY[0x277CCABB0]);
            v14 = [v13 initWithInt:*(__p + v10)];
            [v11 addObject:v14];

            ++v12;
          }

          while (v12 < (v20 - __p) >> 2);
        }

        [v8 addObject:{v11, v17}];

        if (__p)
        {
          v20 = __p;
          operator delete(__p);
        }

        ++v10;
        v9 = *a2;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v10);
    }

    v15 = [v18 preProcessUpdateNaiveBayes:v6 withRow:v8 withY:{v17, v17}] == 1;

    v7 = v18;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

BOOL CPMLDelegateEngineNaiveBayes::preProcessPredictSorted(id *a1, uint64_t *a2, void *a3)
{
  v30 = a1[1];
  v29 = *a1;
  if (objc_opt_respondsToSelector())
  {
    v32 = objc_opt_new();
    v5 = *a2;
    if (a2[1] != *a2)
    {
      v6 = 0;
      do
      {
        __p = 0;
        v34 = 0;
        v35 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v5 + 24 * v6), *(v5 + 24 * v6 + 8), (*(v5 + 24 * v6 + 8) - *(v5 + 24 * v6)) >> 2);
        v7 = objc_opt_new();
        if (v34 != __p)
        {
          v8 = 0;
          do
          {
            v9 = objc_alloc(MEMORY[0x277CCABB0]);
            v10 = [v9 initWithInt:*(__p + v6)];
            [v7 addObject:v10];

            ++v8;
          }

          while (v8 < (v34 - __p) >> 2);
        }

        [v32 addObject:v7];

        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        ++v6;
        v5 = *a2;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v6);
    }

    v28 = [v29 preProcessPredictSorted:v30 withRow:v32];
    for (i = 0; i < [v32 count]; ++i)
    {
      v12 = (*a3 + 24 * i);
      v34 = 0;
      v35 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v12, v12[1], (v12[1] - *v12) >> 2);
      v13 = [v32 objectAtIndexedSubscript:i];
      for (j = 0; j < [v13 count]; ++j)
      {
        v15 = [v13 objectAtIndexedSubscript:i];
        v16 = [v15 integerValue];
        v17 = v34;
        if (v34 >= v35)
        {
          v19 = __p;
          v20 = v34 - __p;
          v21 = (v34 - __p) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v23 = v35 - __p;
          if ((v35 - __p) >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__p, v24);
          }

          *(4 * v21) = v16;
          v18 = 4 * v21 + 4;
          memcpy(0, v19, v20);
          v25 = __p;
          __p = 0;
          v34 = v18;
          v35 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v34 = v16;
          v18 = (v17 + 4);
        }

        v34 = v18;
      }

      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }
    }

    v26 = v28 == 1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void CPMLFeatureVector::~CPMLFeatureVector(CPMLFeatureVector *this)
{
  *(this + 6) = 0x7FEFFFFFFFFFFFFFLL;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x24C19F910](v2, 0x10C402FEFCB83);
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x24C19F910](v4, 0x80C40D6874129);
  }

  v6 = *(this + 3);
  if (*(this + 4) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v6 + v7);
      if (v9)
      {
        v10 = *v9;
        if (*v9)
        {
          *(v9 + 8) = v10;
          operator delete(v10);
        }

        MEMORY[0x24C19F910](v9, 0x10C402FEFCB83);
      }

      v11 = *(v6 + v7 + 8);
      if (v11)
      {
        v12 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v12;
          operator delete(v12);
        }

        MEMORY[0x24C19F910](v11, 0x80C40D6874129);
      }

      ++v8;
      v6 = *(this + 3);
      v7 += 16;
    }

    while (v8 < (*(this + 4) - v6) >> 4);
  }

  v13 = *(this + 7);
  if (*(this + 8) != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *&v13[v14];
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          *(v16 + 8) = v17;
          operator delete(v17);
        }

        MEMORY[0x24C19F910](v16, 0x10C402FEFCB83);
      }

      v18 = *&v13[v14 + 8];
      if (v18)
      {
        v19 = *v18;
        if (*v18)
        {
          *(v18 + 8) = v19;
          operator delete(v19);
        }

        MEMORY[0x24C19F910](v18, 0x80C40D6874129);
      }

      ++v15;
      v13 = *(this + 7);
      v14 += 16;
    }

    while (v15 < (*(this + 8) - v13) >> 4);
  }

  v20 = *(this + 10);
  if (v20)
  {
    *(this + 11) = v20;
    operator delete(v20);
    v13 = *(this + 7);
  }

  if (v13)
  {
    *(this + 8) = v13;
    operator delete(v13);
  }

  v21 = *(this + 3);
  if (v21)
  {
    *(this + 4) = v21;
    operator delete(v21);
  }
}

uint64_t CPMLFeatureVector::insertRealVClass(uint64_t this, double a2, int a3)
{
  v3 = **(this + 16);
  if (a3 >= ((*(*(this + 16) + 8) - v3) >> 3))
  {
    std::vector<VectorClass>::__throw_out_of_range[abi:ne200100]();
  }

  *(v3 + 8 * a3) = a2;
  return this;
}

void CPMLFeatureVector::insertIntToLastVVClass(CPMLFeatureVector *this, int a2)
{
  v3 = a2;
  v2 = *(this + 4);
  if (v2 == *(this + 3))
  {
    operator new();
  }

  std::vector<int>::push_back[abi:ne200100](*(v2 - 16), &v3);
}

void std::vector<VectorClass>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VectorClass>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void CPMLFeatureVector::insertRealToLastVVClass(CPMLFeatureVector *this, double a2)
{
  v3 = a2;
  v2 = *(this + 4);
  if (v2 == *(this + 3))
  {
    operator new();
  }

  std::vector<double>::push_back[abi:ne200100](*(v2 - 8), &v3);
}

void CPMLFeatureVector::insertYIntVClass(CPMLFeatureVector *this, int a2)
{
  v3 = a2;
  v2 = *(this + 8);
  if (v2 == *(this + 7))
  {
    operator new();
  }

  std::vector<int>::push_back[abi:ne200100](*(v2 - 16), &v3);
}

void CPMLFeatureVector::insertYRealVClass(CPMLFeatureVector *this, double a2)
{
  v3 = a2;
  v2 = *(this + 8);
  if (v2 == *(this + 7))
  {
    operator new();
  }

  std::vector<double>::push_back[abi:ne200100](*(v2 - 8), &v3);
}

char **CPMLFeatureVector::setYHatProbList(uint64_t a1, char **a2)
{
  v3 = *(a1 + 80);
  result = (a1 + 80);
  result[1] = v3;
  if (result != a2)
  {
    return std::vector<ProbIndex>::__assign_with_size[abi:ne200100]<ProbIndex*,ProbIndex*>(result, *a2, a2[1], (a2[1] - *a2) >> 4);
  }

  return result;
}

void CPMLFeatureVector::resetAll(CPMLFeatureVector *this)
{
  v2 = *(this + 2);
  *(*(this + 1) + 8) = **(this + 1);
  v2[1] = *v2;
  *(this + 4) = *(this + 3);
  *(this + 6) = nan("");
  *(this + 8) = *(this + 7);
}

pthread_mutex_t *CPMLFeatureVector::dumpVectorClass(CPMLLog *a1, void **a2)
{
  CPMLLog = CPMLLog::getCPMLLog(a1);
  v4 = CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "dumpVectorClass", "INT: ");
  if ((*a2)[1] != **a2)
  {
    v5 = 0;
    do
    {
      v6 = CPMLLog::getCPMLLog(v4);
      v4 = CPMLLog::log(v6, CPML_LOG_DEBUG, "dumpVectorClass", "%d ", *(**a2 + 4 * v5++));
    }

    while (v5 < ((*a2)[1] - **a2) >> 2);
  }

  v7 = CPMLLog::getCPMLLog(v4);
  v8 = CPMLLog::log(v7, CPML_LOG_DEBUG, "dumpVectorClass", "\n ");
  v9 = CPMLLog::getCPMLLog(v8);
  v10 = CPMLLog::log(v9, CPML_LOG_DEBUG, "dumpVectorClass", "REAL: ");
  if (a2[1][1] != *a2[1])
  {
    v11 = 0;
    do
    {
      v12 = CPMLLog::getCPMLLog(v10);
      v10 = CPMLLog::log(v12, CPML_LOG_DEBUG, "dumpVectorClass", "%f \n", *(*a2[1] + 8 * v11++));
    }

    while (v11 < (a2[1][1] - *a2[1]) >> 3);
  }

  v13 = CPMLLog::getCPMLLog(v10);
  v14 = CPML_LOG_DEBUG;

  return CPMLLog::log(v13, v14, "dumpVectorClass", "\n ");
}

CPMLLog *CPMLFeatureVector::dumpAll(CPMLFeatureVector *this)
{
  CPMLLog = CPMLLog::getCPMLLog(this);
  v3 = CPMLLog::log(CPMLLog, CPML_LOG_DEBUG, "dumpAll", "-- DUMPALL--\n");
  v4 = CPMLFeatureVector::dumpVectorClass(v3, this + 1);
  v5 = CPMLLog::getCPMLLog(v4);
  v6 = CPMLLog::log(v5, CPML_LOG_DEBUG, "dumpAll", "yHat %lf \n", *(this + 6));
  v7 = CPMLLog::getCPMLLog(v6);
  v8 = CPMLLog::log(v7, CPML_LOG_DEBUG, "dumpAll", "-- DUMP X VECTOR--\n");
  v9 = *(this + 3);
  if (*(this + 4) != v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = CPMLFeatureVector::dumpVectorClass(v8, (v9 + v10));
      v13 = CPMLLog::getCPMLLog(v12);
      v8 = CPMLLog::log(v13, CPML_LOG_DEBUG, "dumpAll", "\n");
      ++v11;
      v9 = *(this + 3);
      v10 += 16;
    }

    while (v11 < (*(this + 4) - v9) >> 4);
  }

  v14 = CPMLLog::getCPMLLog(v8);
  result = CPMLLog::log(v14, CPML_LOG_DEBUG, "dumpAll", "-- DUMP Y VECTOR--");
  v16 = *(this + 7);
  if (*(this + 8) != v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = CPMLFeatureVector::dumpVectorClass(result, (v16 + v17));
      v20 = CPMLLog::getCPMLLog(v19);
      result = CPMLLog::log(v20, CPML_LOG_DEBUG, "dumpAll", "\n");
      ++v18;
      v16 = *(this + 7);
      v17 += 16;
    }

    while (v18 < (*(this + 8) - v16) >> 4);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<VectorClass>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<ProbIndex>::__assign_with_size[abi:ne200100]<ProbIndex*,ProbIndex*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ProbIndex>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<ProbIndex>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ProbIndex>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void CPMLNaiveBayesAdaptor::CPMLNaiveBayesAdaptor(CPMLNaiveBayesAdaptor *this, CPMLSerialization *a2)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 1065353216;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 1065353216;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 1065353216;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *this = &unk_285927558;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void CPMLNaiveBayesAdaptor::~CPMLNaiveBayesAdaptor(CPMLNaiveBayesAdaptor *this)
{
  *this = &unk_2859273E8;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 112);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 72);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 32);
}

double CPMLNaiveBayesAdaptor::get_count(CPMLNaiveBayesAdaptor *this, double *a2)
{
  v4 = *(this + 19);
  if (v4)
  {
    v9 = -1.0;
    if (CPMLDelegateEngineNaiveBayes::preProcessGetCountAndYCardinality(v4, &v9, a2))
    {
      return v9;
    }
  }

  if (*(this + 2) <= 0.0 || (v6 = *(this + 3), v6 <= 0.0))
  {
    v7 = sqlite3_mprintf("select rowCountY from rowCountY;");
    (*(**(this + 1) + 224))(*(this + 1), this + 16, v7);
    if (v7)
    {
      sqlite3_free(v7);
    }

    v8 = sqlite3_mprintf("select count (DISTINCT yMap) from yCount;");
    (*(**(this + 1) + 224))(*(this + 1), this + 24, v8);
    if (v8)
    {
      sqlite3_free(v8);
    }

    v6 = *(this + 3);
  }

  *a2 = v6;
  return *(this + 2);
}

void CPMLNaiveBayesAdaptor::get_cy(CPMLNaiveBayesAdaptor *this, int a2)
{
  v9 = a2;
  v8 = 0xBFF0000000000000;
  v3 = *(this + 19);
  if (!v3 || !CPMLDelegateEngineNaiveBayes::preProcessGetCountY(v3, &v8, a2))
  {
    if (std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::find<int>(this + 4, &v9))
    {
      v10 = &v9;
      v4 = std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 4, &v9)[3];
    }

    else
    {
      v5 = sqlite3_mprintf("select yCount from yCount where yMap=%d;", v9);
      v6 = (*(**(this + 1) + 224))(*(this + 1), &v8, v5);
      if (v5)
      {
        sqlite3_free(v5);
      }

      v7 = v8;
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v10 = &v9;
        std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 4, &v9)[3] = v7;
        if (v6 != 101)
        {
          std::vector<int>::push_back[abi:ne200100](this + 20, &v9);
        }
      }
    }
  }
}

double CPMLNaiveBayesAdaptor::get_cx_given_y(CPMLNaiveBayesAdaptor *this, int a2, int a3, int a4, double *a5)
{
  v14 = 0xBFF0000000000000;
  v15 = -1.0;
  v10 = *(this + 19);
  if (v10 && CPMLDelegateEngineNaiveBayes::preProcessGetCountXGivenYAndSetXCardinality(v10, &v15, a2, a3, a4, a5))
  {
    return v15;
  }

  v12 = sqlite3_mprintf("select xCardinality from xCardinality%d where yMap=%d;", a2, a4);
  (*(**(this + 1) + 224))(*(this + 1), &v14, v12);
  if (v12)
  {
    sqlite3_free(v12);
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  *a5 = v14;
  v13 = sqlite3_mprintf("select xyCount from xcol%d where (xMap==%d and yMap==%d);", a2, a3, a4);
  (*(**(this + 1) + 224))(*(this + 1), &v15, v13);
  if (v13)
  {
    sqlite3_free(v13);
  }

  result = v15;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
LABEL_10:
    *a5 = 0.0;
    return -2.0;
  }

  return result;
}

void CPMLNaiveBayesAdaptor::set_count(CPMLNaiveBayesAdaptor *this, double a2)
{
  v4 = *(this + 19);
  if (!v4 || !CPMLDelegateEngineNaiveBayes::preProcessSetCount(v4, a2))
  {
    v8 = 1.0;
    v5 = sqlite3_mprintf("select count(*) from rowCountY;");
    (*(**(this + 1) + 224))(*(this + 1), &v8, v5);
    if (v5)
    {
      sqlite3_free(v5);
    }

    if (v8 == 0.0)
    {
      v6 = sqlite3_mprintf("insert into rowCountY (rowCountY) VALUES(0.0);", v8);
      (*(**(this + 1) + 224))(*(this + 1), &v8, v6);
      if (v6)
      {
        sqlite3_free(v6);
      }
    }

    v7 = sqlite3_mprintf("update rowCountY set rowCountY=%lf;", a2);
    (*(**(this + 1) + 224))(*(this + 1), &v8, v7);
    if (v7)
    {
      sqlite3_free(v7);
    }

    *(this + 2) = a2;
  }
}

void CPMLNaiveBayesAdaptor::set_cy(CPMLNaiveBayesAdaptor *this, int a2, double a3)
{
  v13 = a2;
  v6 = *(this + 19);
  if (!v6 || !CPMLDelegateEngineNaiveBayes::preProcessSetCountY(v6, a2, a3))
  {
    v12 = 1.0;
    v7 = sqlite3_mprintf("select count(*) from yCount where yMap=%d;", a2);
    (*(**(this + 1) + 224))(*(this + 1), &v12, v7);
    if (v7)
    {
      sqlite3_free(v7);
    }

    v8 = v12;
    if (v12 == 0.0)
    {
      v9 = sqlite3_mprintf("insert into yCount (yMap, yCount) VALUES(%d, 0.0);", a2);
      (*(**(this + 1) + 224))(*(this + 1), &v12, v9);
      if (v9)
      {
        sqlite3_free(v9);
      }

      *(this + 3) = *(this + 3) + 1.0;
      std::vector<int>::push_back[abi:ne200100](this + 20, &v13);
    }

    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v10 = sqlite3_mprintf("update yCount set yCount=%lf where yMap=%d;", v8);
    }

    else
    {
      v10 = sqlite3_mprintf("update yCount set yCount=NULL where yMap=%d;", v8);
    }

    v11 = v10;
    v14 = &v13;
    *(std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 4, &v13) + 3) = a3;
    (*(**(this + 1) + 224))(*(this + 1), &v12, v11);
    if (v11)
    {
      sqlite3_free(v11);
    }
  }
}

void CPMLNaiveBayesAdaptor::set_cx_given_y(CPMLNaiveBayesAdaptor *this, int a2, uint64_t a3, unsigned int a4, double a5)
{
  v10 = *(this + 19);
  if (!v10 || !CPMLDelegateEngineNaiveBayes::preProcessSetCountXGivenY(v10, a2, a3, a4, a5))
  {
    v16 = a4 | (a3 << 32);
    v17[0] = 1.0;
    v11 = sqlite3_mprintf("select count(*) from xcol%d where (xMap=%d and yMap=%d);", a2, a3, a4);
    (*(**(this + 1) + 224))(*(this + 1), v17, v11);
    if (v11)
    {
      sqlite3_free(v11);
    }

    if (v17[0] == 0.0)
    {
      if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v12 = sqlite3_mprintf("insert into xcol%d (xMap, yMap, xyCount) VALUES(%d, %d, %lf);", v17[0]);
      }

      else
      {
        v12 = sqlite3_mprintf("insert into xcol%d (xMap, yMap, xyCount) VALUES(%d, %d, NULL);", v17[0]);
      }

      v14 = v12;
      (*(**(this + 1) + 224))(*(this + 1), v17, v12);
      if (v14)
      {
        sqlite3_free(v14);
      }
    }

    else
    {
      if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v13 = sqlite3_mprintf("update xcol%d set xyCount=%lf where (xMap=%d and yMap=%d);", v17[0]);
      }

      else
      {
        v13 = sqlite3_mprintf("update xcol%d set xyCount=NULL where (xMap=%d and yMap=%d);", v17[0]);
      }

      v15 = v13;
      (*(**(this + 1) + 224))(*(this + 1), v17, v13);
      if (v15)
      {
        sqlite3_free(v15);
      }

      *&v17[2] = &v16;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 9, &v16) + 3) = a5;
    }
  }
}

void CPMLNaiveBayesAdaptor::set_cardinalityx_given_y(CPMLNaiveBayesAdaptor *this, int a2, int a3, double a4)
{
  v8 = *(this + 19);
  if (!v8 || !CPMLDelegateEngineNaiveBayes::preProcessSetCardinalityXGivenY(v8, a2, a3, a4))
  {
    v14[0] = 1.0;
    v9 = sqlite3_mprintf("select count(*) from xcol%d where yMap=%d;", a2, a3);
    (*(**(this + 1) + 224))(*(this + 1), v14, v9);
    if (v9)
    {
      sqlite3_free(v9);
    }

    if (v14[0] == 0.0)
    {
      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v10 = sqlite3_mprintf("insert into xCardinality%d (yMap, xCardinality) VALUES(%d, %lf);", v14[0]);
      }

      else
      {
        v10 = sqlite3_mprintf("insert into xCardinality%d (yMap, xCardinality) VALUES(%d, NULL);", v14[0]);
      }

      v12 = v10;
      (*(**(this + 1) + 224))(*(this + 1), v14, v10);
      if (v12)
      {
LABEL_12:
        sqlite3_free(v12);
      }
    }

    else
    {
      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v11 = sqlite3_mprintf("update xCardinality%d set xCardinality=%lf where yMap=%d;", v14[0]);
      }

      else
      {
        v11 = sqlite3_mprintf("update xCardinality%d set xCardinality=NULL where yMap=%d;", v14[0]);
      }

      v12 = v11;
      (*(**(this + 1) + 224))(*(this + 1), v14, v11);
      v13 = a3;
      *&v14[2] = &v13;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 14, &v13) + 3) = a4;
      if (v12)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,double>,std::__unordered_map_hasher<int,std::__hash_value_type<int,double>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,double>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,double>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,double>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,double>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,double>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void CPMLNaiveBayes::CPMLNaiveBayes(CPMLNaiveBayes *this)
{
  *this = &unk_2859278D0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  *(this + 24) = xmmword_247322720;
}

uint64_t CPMLNaiveBayes::set_decay_rate(uint64_t this, double a2)
{
  if (a2 <= 0.0)
  {
    CPMLNaiveBayes::set_decay_rate();
  }

  if (a2 > 1.0)
  {
    CPMLNaiveBayes::set_decay_rate();
  }

  *(this + 8) = a2;
  *(this + 16) = 1.0 / a2;
  return this;
}

uint64_t CPMLNaiveBayes::set_epsilon_rate(uint64_t this, double a2)
{
  if (a2 < 0.0)
  {
    CPMLNaiveBayes::set_epsilon_rate();
  }

  *(this + 24) = a2;
  return this;
}

uint64_t CPMLNaiveBayes::set_smooth_rate(uint64_t this, double a2)
{
  if (a2 < 0.0)
  {
    CPMLNaiveBayes::set_smooth_rate();
  }

  *(this + 32) = a2;
  return this;
}

void CPMLNaiveBayes::CPMLNaiveBayes(CPMLNaiveBayes *this, CPMLNaiveBayesDBAdaptor *a2)
{
  *this = &unk_2859278D0;
  if (!a2)
  {
    CPMLNaiveBayes::CPMLNaiveBayes();
  }

  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  *(this + 24) = xmmword_247322720;
  *(this + 10) = 0;
}

void CPMLNaiveBayes::~CPMLNaiveBayes(CPMLNaiveBayes *this)
{
  *this = &unk_2859278D0;
  v1 = *(this + 6);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    MEMORY[0x24C19F910](v1, 0x20C40960023A9);
  }
}

double CPMLNaiveBayes::get_nb_probability(CPMLNaiveBayes *a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  if (a4 >= a6)
  {
    v6 = a4;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    if (v8 < 1)
    {
      return v6;
    }

    v13 = 0;
    v14 = v8 & 0x7FFFFFFF;
    while (1)
    {
      v15 = (*a2 + 24 * v13);
      v23 = 0;
      v24 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v15, v15[1], (v15[1] - *v15) >> 2);
      v16 = __p;
      if (v23 == __p)
      {
        v20 = 0;
        if (!__p)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v17 = 0;
        do
        {
          v18 = *&v16[4 * v17];
          if (v18 != -1)
          {
            CPMLNaiveBayes::get_px_given_y(a1, v13, v18, a3, a5);
            v6 = v6 * v19;
            v16 = __p;
          }

          v20 = v6 < a6;
          if (v6 < a6)
          {
            break;
          }

          ++v17;
        }

        while (v17 < (v23 - v16) >> 2);
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v23 = v16;
      operator delete(v16);
LABEL_13:
      if (v20)
      {
        return 0.0;
      }

      if (++v13 == v14)
      {
        return v6;
      }
    }
  }

  return 0.0;
}

void sub_247315148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CPMLNaiveBayes::get_px_given_y(CPMLNaiveBayes *this, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = 0.0;
  result = (*(**(this + 7) + 16))(*(this + 7), a2, a3, a4, &v11);
  if (!*(this + 10))
  {
    v9 = v11;
    if (v8 == 0.0)
    {
      v9 = v11 + 1.0;
    }

    v10 = (v8 + *(this + 4)) / (a5 + (*(this + 4) + *(this + 3)) * v9);
  }

  return result;
}

void CPMLNaiveBayes::sort_candidates(uint64_t a1, unsigned int **a2, __n128 **a3)
{
  std::vector<ProbIndex>::resize(a3, 0);
  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    v9 = *v7++;
    v13 = 0uLL;
    *&v13 = (*(**(a1 + 56) + 8))(*(a1 + 56), v9);
    DWORD2(v13) = v9;
    std::vector<ProbIndex>::push_back[abi:ne200100](a3, &v13);
  }

  v10 = a3[1];
  v11 = 126 - 2 * __clz(v10 - *a3);
  if (v10 == *a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,false>(*a3, v10, &v13, v12, 1, v6);
}

void std::vector<ProbIndex>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<ProbIndex>::__append(a1, a2 - v2);
  }
}

void std::vector<ProbIndex>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ProbIndex>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void CPMLNaiveBayes::set_candidates(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    operator new();
  }

  CPMLNaiveBayes::sort_candidates(a1, a2, v2);
}

void CPMLNaiveBayes::predict(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    (**a1)(a1, a2, v6, a3, a4);
  }

  else
  {
    std::vector<ProbIndex>::resize(a4, 0);
  }
}

void CPMLNaiveBayes::predict(void (***a1)(void, uint64_t, void **, uint64_t, uint64_t), uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  CPMLNaiveBayes::sort_candidates(a1, a3, &__p);
  (**a1)(a1, a2, &__p, a4, a5);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_247315534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMLNaiveBayes::predict_sorted(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, void *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v9 = *(a1 + 64);
  if (v9)
  {
    if (CPMLDelegateEngineNaiveBayes::preProcessPredictSorted(v9, a2, v36))
    {
      goto LABEL_35;
    }
  }

  else if (v36 != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v36, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }

  __p = 0;
  v40 = 0;
  v41 = 0;
  v35 = 0.0;
  (***(a1 + 56))();
  v12 = *a3;
  v11 = a3[1];
  if (v12 != v11)
  {
    v13 = v10;
    v14 = a4;
    v15 = 0.0;
    do
    {
      v16 = *v12;
      if (*(a1 + 40))
      {
        v17 = 0.001;
        if (v16 != 0.0)
        {
          v17 = v16 / v13;
        }
      }

      else
      {
        v18 = v35;
        if (v16 == 0.0)
        {
          v18 = v35 + 1.0;
        }

        v17 = (v16 + *(a1 + 32)) / (v13 + (*(a1 + 32) + *(a1 + 24)) * v18);
      }

      v34 = 0uLL;
      nb_probability = CPMLNaiveBayes::get_nb_probability(a1, v36, *(v12 + 8), v17, v16, v15);
      *&v34 = nb_probability;
      DWORD2(v34) = *(v12 + 8);
      v20 = __p;
      v21 = v40;
      v22 = (v40 - __p) >> 4;
      if (v22 >= v14)
      {
        v15 = *__p;
        if (nb_probability > *__p)
        {
          if (v22 >= 2)
          {
            v38 = *__p;
            std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(__p, &v37, v22);
            v24 = v21 - 16;
            if (v21 - 16 == v23)
            {
              *v23 = v38;
            }

            else
            {
              *v23 = *v24;
              *v24 = v38;
              std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(v20, (v23 + 16), &v37, (v23 + 16 - v20) >> 4);
            }

            v21 = v40;
          }

          v40 = v21 - 16;
          std::vector<ProbIndex>::push_back[abi:ne200100](&__p, &v34);
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(__p, v40, &v38, (v40 - __p) >> 4);
          v15 = *&v34;
        }
      }

      else if (nb_probability > *(a1 + 24))
      {
        std::vector<ProbIndex>::push_back[abi:ne200100](&__p, &v34);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(__p, v40, &v38, (v40 - __p) >> 4);
      }

      v12 += 16;
    }

    while (v12 != v11);
  }

  v25 = v40 - __p;
  std::vector<ProbIndex>::resize(a5, ((v40 - __p) >> 4));
  if ((v25 >> 4) >= 1)
  {
    v26 = (v25 >> 4) & 0x7FFFFFFF;
    v27 = 16 * v26 - 16;
    do
    {
      *(*a5 + v27) = *__p;
      v28 = __p;
      v29 = v40;
      v30 = (v40 - __p) >> 4;
      if (v30 >= 2)
      {
        v38 = *__p;
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(__p, &v34, v30);
        v32 = v29 - 16;
        if (v29 - 16 == v31)
        {
          *v31 = v38;
        }

        else
        {
          *v31 = *v32;
          *v32 = v38;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexAscending &,std::__wrap_iter<ProbIndex *>>(v28, (v31 + 16), &v34, (v31 + 16 - v28) >> 4);
        }

        v29 = v40;
      }

      v40 = v29 - 16;
      v27 -= 16;
      --v26;
    }

    while (v26);
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

LABEL_35:
  __p = v36;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v33 = *MEMORY[0x277D85DE8];
}

void sub_2473158C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *__p, uint64_t a21)
{
  __p = &a13;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t CPMLNaiveBayes::update(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  if (!v6 || (result = CPMLDelegateEngineNaiveBayes::preProcessUpdateNaiveBayes(v6, a2, a3), (result & 1) == 0))
  {
    v8 = *a2;
    if (a2[1] != *a2)
    {
      v9 = 0;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v18, *(v8 + 24 * v9), *(v8 + 24 * v9 + 8), (*(v8 + 24 * v9 + 8) - *(v8 + 24 * v9)) >> 2);
        v10 = v18;
        if (v19 != v18)
        {
          v11 = 0;
          do
          {
            v17 = 0.0;
            v12 = (*(**(a1 + 56) + 16))(*(a1 + 56), v9, *&v10[4 * v11], a3, &v17);
            if (v12 == 0.0)
            {
              (*(**(a1 + 56) + 48))(*(a1 + 56), v9, a3, v17 + 1.0);
            }

            (*(**(a1 + 56) + 40))(*(a1 + 56), v9, v18[v11++], a3, v12 + *(a1 + 16));
            v10 = v18;
          }

          while (v11 < (v19 - v18) >> 2);
        }

        if (v10)
        {
          v19 = v10;
          operator delete(v10);
        }

        ++v9;
        v8 = *a2;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v9);
    }

    v13 = *(a1 + 56);
    v14 = (*(*v13 + 8))(v13, a3);
    (*(*v13 + 32))(v13, a3, v14 + *(a1 + 16));
    v18 = 0;
    v15 = *(a1 + 56);
    v16 = (**v15)(v15, &v18);
    return (*(*v15 + 24))(v15, v16 + *(a1 + 16));
  }

  return result;
}

void sub_247315BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ProbIndex>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ProbIndex>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v43 = a2 - 1;
      v44 = a2[-1].n128_f64[0];
      if (v44 <= v12->n128_f64[0])
      {
        if (v44 == v12->n128_f64[0])
        {
          v45 = a2[-1].n128_i32[2];
          goto LABEL_125;
        }

        return;
      }

LABEL_165:
      v82 = *v12;
      *v12 = *v43;
      *v43 = v82;
      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(v12->n128_f64, a2->n128_f64);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(v12->n128_f64, a2->n128_f64);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,ProbIndex *>(v12, a2, a2, a3);
      }

      return;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] > v12->n128_f64[0] || v16->n128_f64[0] == v12->n128_f64[0] && v16->n128_u32[2] < v12->n128_u32[2])
      {
        if (v9->n128_f64[0] > v18 || v9->n128_f64[0] == v18 && a2[-1].n128_u32[2] < v16->n128_u32[2])
        {
          v63 = *v12;
          *v12 = *v9;
          goto LABEL_45;
        }

        v69 = *v12;
        *v12 = *v16;
        *v16 = v69;
        if (v9->n128_f64[0] > v16->n128_f64[0] || v9->n128_f64[0] == v16->n128_f64[0] && a2[-1].n128_u32[2] < v16->n128_u32[2])
        {
          v63 = *v16;
          *v16 = *v9;
LABEL_45:
          *v9 = v63;
        }
      }

      else if (v9->n128_f64[0] > v18 || v9->n128_f64[0] == v18 && a2[-1].n128_u32[2] < v16->n128_u32[2])
      {
        v65 = *v16;
        *v16 = *v9;
        *v9 = v65;
        if (v16->n128_f64[0] > v12->n128_f64[0] || v16->n128_f64[0] == v12->n128_f64[0] && v16->n128_u32[2] < v12->n128_u32[2])
        {
          v66 = *v12;
          *v12 = *v16;
          *v16 = v66;
        }
      }

      v20 = v12 + 1;
      v21 = v12[1].n128_f64[0];
      v22 = v16 - 1;
      v23 = v16[-1].n128_f64[0];
      if (v23 > v21 || v23 == v21 && v16[-1].n128_u32[2] < v12[1].n128_u32[2])
      {
        if (v10->n128_f64[0] > v23 || v10->n128_f64[0] == v23 && a2[-2].n128_u32[2] < v16[-1].n128_u32[2])
        {
          v24 = *v20;
          *v20 = *v10;
          goto LABEL_69;
        }

        v26 = *v20;
        *v20 = *v22;
        *v22 = v26;
        if (v10->n128_f64[0] > v22->n128_f64[0] || v10->n128_f64[0] == v22->n128_f64[0] && a2[-2].n128_u32[2] < v16[-1].n128_u32[2])
        {
          v72 = *v22;
          *v22 = *v10;
          v24 = v72;
LABEL_69:
          *v10 = v24;
        }
      }

      else if (v10->n128_f64[0] > v23 || v10->n128_f64[0] == v23 && a2[-2].n128_u32[2] < v16[-1].n128_u32[2])
      {
        v70 = *v22;
        *v22 = *v10;
        *v10 = v70;
        if (v22->n128_f64[0] > v20->n128_f64[0] || v22->n128_f64[0] == v20->n128_f64[0] && v16[-1].n128_u32[2] < v12[1].n128_u32[2])
        {
          v25 = *v20;
          *v20 = *v22;
          *v22 = v25;
        }
      }

      v27 = v12 + 2;
      v28 = v12[2].n128_f64[0];
      v30 = v16[1].n128_f64[0];
      v29 = v16 + 1;
      v31 = v30;
      v32 = v30 == v28;
      if (v30 > v28 || v32 && v29->n128_u32[2] < v12[2].n128_u32[2])
      {
        if (v11->n128_f64[0] > v31 || v11->n128_f64[0] == v31 && a2[-3].n128_u32[2] < v29->n128_u32[2])
        {
          v33 = *v27;
          *v27 = *v11;
          goto LABEL_89;
        }

        v35 = *v27;
        *v27 = *v29;
        *v29 = v35;
        if (v11->n128_f64[0] > v29->n128_f64[0] || v11->n128_f64[0] == v29->n128_f64[0] && a2[-3].n128_u32[2] < v29->n128_u32[2])
        {
          v74 = *v29;
          *v29 = *v11;
          v33 = v74;
LABEL_89:
          *v11 = v33;
        }
      }

      else if (v11->n128_f64[0] > v31 || v11->n128_f64[0] == v31 && a2[-3].n128_u32[2] < v29->n128_u32[2])
      {
        v73 = *v29;
        *v29 = *v11;
        *v11 = v73;
        if (v29->n128_f64[0] > v27->n128_f64[0] || v29->n128_f64[0] == v27->n128_f64[0] && v29->n128_u32[2] < v12[2].n128_u32[2])
        {
          v34 = *v27;
          *v27 = *v29;
          *v29 = v34;
        }
      }

      v36 = v17->n128_f64[0];
      if (v17->n128_f64[0] > v22->n128_f64[0] || v17->n128_f64[0] == v22->n128_f64[0] && v17->n128_u32[2] < v22->n128_u32[2])
      {
        if (v29->n128_f64[0] > v36 || v29->n128_f64[0] == v36 && v29->n128_u32[2] < v17->n128_u32[2])
        {
          v75 = *v22;
          *v22 = *v29;
          goto LABEL_108;
        }

        v78 = *v22;
        *v22 = *v17;
        *v17 = v78;
        if (v29->n128_f64[0] > v17->n128_f64[0] || v29->n128_f64[0] == v17->n128_f64[0] && v29->n128_u32[2] < v17->n128_u32[2])
        {
          v75 = *v17;
          *v17 = *v29;
LABEL_108:
          *v29 = v75;
        }
      }

      else if (v29->n128_f64[0] > v36 || v29->n128_f64[0] == v36 && v29->n128_u32[2] < v17->n128_u32[2])
      {
        v76 = *v17;
        *v17 = *v29;
        *v29 = v76;
        if (v17->n128_f64[0] > v22->n128_f64[0] || v17->n128_f64[0] == v22->n128_f64[0] && v17->n128_u32[2] < v22->n128_u32[2])
        {
          v77 = *v22;
          *v22 = *v17;
          *v17 = v77;
        }
      }

      v79 = *v12;
      *v12 = *v17;
      *v17 = v79;
      goto LABEL_110;
    }

    v19 = v12->n128_f64[0];
    if (v12->n128_f64[0] > v16->n128_f64[0] || v12->n128_f64[0] == v16->n128_f64[0] && v12->n128_u32[2] < v16->n128_u32[2])
    {
      if (v9->n128_f64[0] > v19 || v9->n128_f64[0] == v19 && a2[-1].n128_u32[2] < v12->n128_u32[2])
      {
        v64 = *v16;
        *v16 = *v9;
LABEL_64:
        *v9 = v64;
        goto LABEL_110;
      }

      v71 = *v16;
      *v16 = *v12;
      *v12 = v71;
      if (v9->n128_f64[0] > v12->n128_f64[0] || v9->n128_f64[0] == v12->n128_f64[0] && a2[-1].n128_u32[2] < v12->n128_u32[2])
      {
        v64 = *v12;
        *v12 = *v9;
        goto LABEL_64;
      }
    }

    else if (v9->n128_f64[0] > v19 || v9->n128_f64[0] == v19 && a2[-1].n128_u32[2] < v12->n128_u32[2])
    {
      v67 = *v12;
      *v12 = *v9;
      *v9 = v67;
      if (v12->n128_f64[0] > v16->n128_f64[0] || v12->n128_f64[0] == v16->n128_f64[0] && v12->n128_u32[2] < v16->n128_u32[2])
      {
        v68 = *v16;
        *v16 = *v12;
        *v12 = v68;
      }
    }

LABEL_110:
    if ((a5 & 1) == 0)
    {
      v37 = v12[-1].n128_f64[0];
      if (v37 <= v12->n128_f64[0] && (v37 != v12->n128_f64[0] || v12[-1].n128_u32[2] >= v12->n128_u32[2]))
      {
        v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,CPMLNBCompareProbIndexDescending &>(v12, a2);
        goto LABEL_119;
      }
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,CPMLNBCompareProbIndexDescending &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_117;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(v12, v38, v39);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(v38 + 1, a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_117:
      std::__introsort<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = v38 + 1;
LABEL_119:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,0>(v12, v12 + 1, v12 + 2, a2 - 1, a6);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a6);
      v48 = a2 - 1;
      v49 = a2[-1].n128_f64[0];
      v50 = v12[3].n128_f64[0];
      if (v49 > v50 || v49 == v50 && a2[-1].n128_u32[2] < v12[3].n128_u32[2])
      {
        v51 = v12[3];
        v12[3] = *v48;
        *v48 = v51;
        v52 = v12[3].n128_f64[0];
        v53 = v12[2].n128_f64[0];
        if (v52 > v53 || v52 == v53 && v12[3].n128_u32[2] < v12[2].n128_u32[2])
        {
          v54 = v12[2];
          v12[2] = v12[3];
          v12[3] = v54;
          v55 = v12[2].n128_f64[0];
          v56 = v12[1].n128_f64[0];
          if (v55 > v56 || v55 == v56 && v12[2].n128_u32[2] < v12[1].n128_u32[2])
          {
            v57 = v12[1];
            v12[1] = v12[2];
            v12[2] = v57;
            v58 = v12[1].n128_f64[0];
            if (v58 > v12->n128_f64[0] || v58 == v12->n128_f64[0] && v12[1].n128_u32[2] < v12->n128_u32[2])
            {
              v81 = *v12;
              *v12 = v12[1];
              v12[1] = v81;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v43 = v12 + 1;
  v46 = v12[1].n128_f64[0];
  if (v46 > v12->n128_f64[0] || v46 == v12->n128_f64[0] && v12[1].n128_u32[2] < v12->n128_u32[2])
  {
    if (v9->n128_f64[0] > v46 || v9->n128_f64[0] == v46 && a2[-1].n128_u32[2] < v12[1].n128_u32[2])
    {
      v80 = *v12;
      *v12 = *v9;
      v47 = v80;
    }

    else
    {
      v83 = *v12;
      *v12 = *v43;
      *v43 = v83;
      v61 = v12[1].n128_f64[0];
      if (v9->n128_f64[0] <= v61 && (v9->n128_f64[0] != v61 || a2[-1].n128_u32[2] >= v12[1].n128_u32[2]))
      {
        return;
      }

      v47 = *v43;
      *v43 = *v9;
    }

    *v9 = v47;
    return;
  }

  if (v9->n128_f64[0] > v46 || v9->n128_f64[0] == v46 && a2[-1].n128_u32[2] < v12[1].n128_u32[2])
  {
    v59 = *v43;
    *v43 = *v9;
    *v9 = v59;
    v60 = v12[1].n128_f64[0];
    if (v60 > v12->n128_f64[0])
    {
      goto LABEL_165;
    }

    if (v60 == v12->n128_f64[0])
    {
      v45 = v12[1].n128_i32[2];
LABEL_125:
      if (v45 < v12->n128_u32[2])
      {
        goto LABEL_165;
      }
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_f64[0];
  if (a2->n128_f64[0] > a1->n128_f64[0] || a2->n128_f64[0] == a1->n128_f64[0] && a2->n128_u32[2] < a1->n128_u32[2])
  {
    if (a3->n128_f64[0] > v5 || a3->n128_f64[0] == v5 && a3->n128_u32[2] < a2->n128_u32[2])
    {
      result = *a1;
      *a1 = *a3;
    }

    else
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
      if (a3->n128_f64[0] <= a2->n128_f64[0] && (a3->n128_f64[0] != a2->n128_f64[0] || a3->n128_u32[2] >= a2->n128_u32[2]))
      {
        goto LABEL_20;
      }

      result = *a2;
      *a2 = *a3;
    }

    *a3 = result;
  }

  else if (a3->n128_f64[0] > v5 || a3->n128_f64[0] == v5 && a3->n128_u32[2] < a2->n128_u32[2])
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    if (a2->n128_f64[0] > a1->n128_f64[0] || a2->n128_f64[0] == a1->n128_f64[0] && a2->n128_u32[2] < a1->n128_u32[2])
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_20:
  result.n128_u64[0] = a4->n128_u64[0];
  if (a4->n128_f64[0] > a3->n128_f64[0] || a4->n128_f64[0] == a3->n128_f64[0] && a4->n128_u32[2] < a3->n128_u32[2])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    result.n128_u64[0] = a3->n128_u64[0];
    if (a3->n128_f64[0] > a2->n128_f64[0] || a3->n128_f64[0] == a2->n128_f64[0] && a3->n128_u32[2] < a2->n128_u32[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      result.n128_u64[0] = a2->n128_u64[0];
      if (a2->n128_f64[0] > a1->n128_f64[0] || a2->n128_f64[0] == a1->n128_f64[0] && a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

double *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(double *result, double *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        if (v6 > *v5)
        {
          break;
        }

        if (v6 == *v5)
        {
          v7 = *(v5 + 6);
          if (v7 < *(v5 + 2))
          {
            goto LABEL_8;
          }
        }

LABEL_17:
        v2 = v4 + 2;
        v3 += 16;
        if (v4 + 2 == a2)
        {
          return result;
        }
      }

      v7 = *(v5 + 6);
LABEL_8:
      v8 = *(v5 + 7);
      *v4 = *v5;
      v9 = result;
      if (v5 != result)
      {
        v10 = v3;
        do
        {
          v11 = *(result + v10 - 16);
          if (v6 <= v11)
          {
            if (v6 != v11)
            {
              v9 = v5;
              goto LABEL_16;
            }

            v9 = (result + v10);
            if (v7 >= *(result + v10 - 8))
            {
              goto LABEL_16;
            }
          }

          v5 -= 2;
          *(result + v10) = *(result + v10 - 16);
          v10 -= 16;
        }

        while (v10);
        v9 = result;
      }

LABEL_16:
      *v9 = v6;
      *(v9 + 2) = v7;
      *(v9 + 3) = v8;
      goto LABEL_17;
    }
  }

  return result;
}

double *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(double *result, double *a2)
{
  if (result != a2)
  {
    while (1)
    {
      if (result + 2 == a2)
      {
        return result;
      }

      v2 = result;
      result += 2;
      v3 = v2[2];
      if (v3 <= *v2)
      {
        if (v3 == *v2)
        {
          v4 = *(v2 + 6);
          if (v4 < *(v2 + 2))
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v4 = *(v2 + 6);
LABEL_7:
        v5 = *(v2 + 7);
        for (i = result; ; i -= 2)
        {
          *i = *(i - 1);
          v7 = *(i - 4);
          if (v3 <= v7 && (v3 != v7 || v4 >= *(i - 6)))
          {
            break;
          }
        }

        *(i - 2) = v3;
        *(i - 2) = v4;
        *(i - 1) = v5;
      }
    }
  }

  return result;
}

double *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,CPMLNBCompareProbIndexDescending &>(uint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (*a1 > v4 || *a1 == v4 && v3 < *(a2 - 8))
  {
    v5 = (a1 + 16);
    v6 = *(a1 + 16);
    if (v2 <= v6)
    {
      do
      {
        if (v2 == v6 && v3 < *(v5 + 2))
        {
          break;
        }

        v7 = v5[2];
        v5 += 2;
        v6 = v7;
      }

      while (v2 <= v7);
    }
  }

  else
  {
    v5 = (a1 + 16);
    if (a1 + 16 < a2)
    {
      do
      {
        if (v2 > *v5 || v2 == *v5 && v3 < *(v5 + 2))
        {
          break;
        }

        v5 += 2;
      }

      while (v5 < a2);
    }
  }

  if (v5 < a2)
  {
    for (a2 -= 16; v2 > v4 || v2 == v4 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
      v4 = v8;
    }
  }

  while (v5 < a2)
  {
    v14 = *v5;
    *v5 = *a2;
    *a2 = v14;
    do
    {
      v9 = v5[2];
      v5 += 2;
      v10 = v9;
    }

    while (v2 <= v9 && (v2 != v10 || v3 >= *(v5 + 2)));
    do
    {
      do
      {
        v11 = *(a2 - 16);
        a2 -= 16;
        v12 = v2 == v11;
      }

      while (v2 > v11);
    }

    while (v12 && v3 < *(a2 + 8));
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 2) = v2;
  *(v5 - 1) = v3;
  return v5;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ProbIndex *,CPMLNBCompareProbIndexDescending &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v5 <= v3 && (v5 != v3 || *(a1 + v2 + 24) >= v4))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v7 <= v3 && (v8 != v3 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v9 > v3)
        {
          break;
        }

        if (v10 != v3)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  v12 = a1 + v2 + 16;
  if (v6 < a2)
  {
    v13 = a2;
    do
    {
      v19 = *v12;
      *v12 = *v13;
      *v13 = v19;
      do
      {
        do
        {
          v14 = *(v12 + 16);
          v12 += 16;
          v15 = v14 == v3;
        }

        while (v14 > v3);
      }

      while (v15 && *(v12 + 8) < v4);
      do
      {
        v16 = *(v13 - 16);
        v13 -= 16;
        v17 = v16;
      }

      while (v16 <= v3 && (v17 != v3 || *(v13 + 8) >= v4));
    }

    while (v12 < v13);
  }

  if (v12 - 16 != a1)
  {
    *a1 = *(v12 - 16);
  }

  *(v12 - 16) = v3;
  *(v12 - 8) = v4;
  return v12 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = a1 + 1;
        v21 = a1[1].n128_f64[0];
        v22 = a2 - 1;
        if (v21 > a1->n128_f64[0] || v21 == a1->n128_f64[0] && a1[1].n128_u32[2] < a1->n128_u32[2])
        {
          if (v22->n128_f64[0] > v21 || v22->n128_f64[0] == v21 && a2[-1].n128_u32[2] < a1[1].n128_u32[2])
          {
            v23 = *a1;
            *a1 = *v22;
          }

          else
          {
            v35 = *a1;
            *a1 = *v6;
            *v6 = v35;
            v36 = a1[1].n128_f64[0];
            if (v22->n128_f64[0] <= v36 && (v22->n128_f64[0] != v36 || a2[-1].n128_u32[2] >= a1[1].n128_u32[2]))
            {
              return 1;
            }

            v23 = *v6;
            *v6 = *v22;
          }

          *v22 = v23;
          return 1;
        }

        if (v22->n128_f64[0] <= v21 && (v22->n128_f64[0] != v21 || a2[-1].n128_u32[2] >= a1[1].n128_u32[2]))
        {
          return 1;
        }

        v30 = *v6;
        *v6 = *v22;
        *v22 = v30;
        v31 = a1[1].n128_f64[0];
        if (v31 <= a1->n128_f64[0])
        {
          if (v31 != a1->n128_f64[0])
          {
            return 1;
          }

          v8 = a1[1].n128_i32[2];
          goto LABEL_7;
        }

LABEL_44:
        v32 = *a1;
        *a1 = *v6;
        *v6 = v32;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = a2 - 1;
        v10 = a2[-1].n128_f64[0];
        v11 = a1[3].n128_f64[0];
        if (v10 > v11 || v10 == v11 && a2[-1].n128_u32[2] < a1[3].n128_u32[2])
        {
          v12 = a1[3];
          a1[3] = *v9;
          *v9 = v12;
          v13 = a1[3].n128_f64[0];
          v14 = a1[2].n128_f64[0];
          if (v13 > v14 || v13 == v14 && a1[3].n128_u32[2] < a1[2].n128_u32[2])
          {
            v15 = a1[2];
            a1[2] = a1[3];
            a1[3] = v15;
            v16 = a1[2].n128_f64[0];
            v17 = a1[1].n128_f64[0];
            if (v16 > v17 || v16 == v17 && a1[2].n128_u32[2] < a1[1].n128_u32[2])
            {
              v18 = a1[1];
              a1[1] = a1[2];
              a1[2] = v18;
              v19 = a1[1].n128_f64[0];
              if (v19 > a1->n128_f64[0] || v19 == a1->n128_f64[0] && a1[1].n128_u32[2] < a1->n128_u32[2])
              {
                v20 = *a1;
                *a1 = a1[1];
                a1[1] = v20;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = a2 - 1;
      v7 = a2[-1].n128_f64[0];
      if (v7 <= a1->n128_f64[0])
      {
        if (v7 == a1->n128_f64[0])
        {
          v8 = a2[-1].n128_i32[2];
LABEL_7:
          if (v8 >= a1->n128_u32[2])
          {
            return 1;
          }

          goto LABEL_44;
        }

        return 1;
      }

      goto LABEL_44;
    }
  }

  v24 = &a1[2];
  v25 = a1->n128_f64[0];
  v26 = a1 + 1;
  v27 = a1[1].n128_f64[0];
  if (v27 <= a1->n128_f64[0] && (v27 != a1->n128_f64[0] || a1[1].n128_u32[2] >= a1->n128_u32[2]))
  {
    if (*v24 > v27 || *v24 == v27 && a1[2].n128_u32[2] < a1[1].n128_u32[2])
    {
      v33 = *v26;
      *v26 = *v24;
      *v24 = v33;
      if (v26->n128_f64[0] > v25 || v26->n128_f64[0] == v25 && a1[1].n128_u32[2] < a1->n128_u32[2])
      {
        v34 = *a1;
        *a1 = *v26;
        *v26 = v34;
      }
    }

    goto LABEL_62;
  }

  v28 = *v24;
  if (*v24 > v27 || *v24 == v27 && a1[2].n128_u32[2] < a1[1].n128_u32[2])
  {
    v29 = *a1;
    *a1 = *v24;
  }

  else
  {
    v37 = *a1;
    *a1 = *v26;
    *v26 = v37;
    v38 = a1[1].n128_f64[0];
    if (v28 <= v38 && (v28 != v38 || a1[2].n128_u32[2] >= a1[1].n128_u32[2]))
    {
      goto LABEL_62;
    }

    v29 = *v26;
    *v26 = *v24;
  }

  *v24 = v29;
LABEL_62:
  v39 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = v39->n128_f64[0];
    if (v39->n128_f64[0] > *v24)
    {
      break;
    }

    if (v39->n128_f64[0] == *v24)
    {
      v43 = v39->n128_i32[2];
      if (v43 < *(v24 + 8))
      {
        goto LABEL_68;
      }
    }

LABEL_76:
    v24 = v39;
    v40 += 16;
    if (++v39 == a2)
    {
      return 1;
    }
  }

  v43 = v39->n128_i32[2];
LABEL_68:
  v44 = v39->n128_u32[3];
  *v39 = *v24;
  v45 = v40;
  do
  {
    v46 = *(a1[1].n128_f64 + v45);
    if (v42 <= v46)
    {
      if (v42 != v46)
      {
        v24 = &a1[2] + v45;
        goto LABEL_75;
      }

      if (v43 >= *(&a1[1].n128_u32[2] + v45))
      {
        goto LABEL_75;
      }
    }

    v24 -= 16;
    *(a1 + v45 + 32) = *(a1 + v45 + 16);
    v45 -= 16;
  }

  while (v45 != -32);
  v24 = a1;
LABEL_75:
  *v24 = v42;
  *(v24 + 8) = v43;
  *(v24 + 12) = v44;
  if (++v41 != 8)
  {
    goto LABEL_76;
  }

  return &v39[1] == a2;
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *,ProbIndex *>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (v12->n128_f64[0] > a1->n128_f64[0] || v12->n128_f64[0] == a1->n128_f64[0] && v12->n128_u32[2] < a1->n128_u32[2])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v18 = *a1;
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(a1, &v15[1], a4, &v15[1] - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 > v10 || *v8 == v10 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (*v8 <= *a4)
      {
        if (*v8 == *a4)
        {
          v12 = *(a4 + 8);
          if (*(v8 + 8) < v12)
          {
            return result;
          }
        }

        else
        {
          v12 = *(a4 + 8);
        }

        v13 = *(a4 + 12);
        *a4 = *v8;
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = result + 16 * v7;
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = *(v14 + 16);
              if (*v14 > v17 || *v14 == v17 && *(v14 + 8) < *(v14 + 24))
              {
                v14 += 16;
                v7 = v16;
              }
            }

            if (*v14 > v11 || *v14 == v11 && *(v14 + 8) < v12)
            {
              break;
            }

            *v8 = *v14;
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_15;
            }
          }
        }

        v14 = v8;
LABEL_15:
        *v14 = v11;
        *(v14 + 8) = v12;
        *(v14 + 12) = v13;
      }
    }
  }

  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = &a1[v3];
    a1 = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[2].n128_f64[0];
      v9 = v5[1].n128_f64[0];
      if (v9 > v8 || v9 == v8 && v5[1].n128_u32[2] < v5[2].n128_u32[2])
      {
        a1 = v5 + 2;
        v3 = v7;
      }
    }

    result = *a1;
    *v4 = *a1;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,CPMLNBCompareProbIndexDescending &,ProbIndex *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *(a2 - 16);
    if (*v6 <= v7)
    {
      if (*v6 != v7)
      {
        return result;
      }

      v8 = *(a2 - 8);
      if (*(v6 + 8) >= v8)
      {
        return result;
      }
    }

    else
    {
      v8 = *(a2 - 8);
    }

    v9 = *(a2 - 4);
    *(a2 - 16) = *v6;
    if (v4 >= 2)
    {
      while (1)
      {
        v11 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v10 = result + 16 * v5;
        if (*v10 <= v7 && (*v10 != v7 || *(v10 + 8) >= v8))
        {
          break;
        }

        *v6 = *v10;
        v6 = result + 16 * v5;
        if (v11 <= 1)
        {
          goto LABEL_12;
        }
      }
    }

    v10 = v6;
LABEL_12:
    *v10 = v7;
    *(v10 + 8) = v8;
    *(v10 + 12) = v9;
  }

  return result;
}

void std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(a1, (a2 + v11), a3, a1[1]);
  }
}