uint64_t sqlite3_exec_busy_retry(sqlite3 *a1, const char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (1)
  {
    result = sqlite3_exec(a1, a2, a3, a4, a5);
    if (result != 5)
    {
      break;
    }

    usleep(0x14u);
    a1 = v9;
    a2 = v8;
    a3 = v7;
    a4 = v6;
    a5 = v5;
  }

  return result;
}

id HDSQLiteEntityDisambiguatedDatabaseTable(void *a1)
{
  if (HDSQLiteEntityDisambiguatedDatabaseTable::onceToken != -1)
  {
    HDSQLiteEntityDisambiguatedDatabaseTable_cold_1();
  }

  os_unfair_lock_lock(&HDSQLiteEntityDisambiguatedDatabaseTable::__databaseTableLock);
  v2 = [HDSQLiteEntityDisambiguatedDatabaseTable::__databaseTableCache objectForKey:a1];
  if (!v2)
  {
    v3 = [a1 databaseName];
    if (v3)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [a1 databaseTable];
      v2 = [v4 stringWithFormat:@"%@.%@", v3, v5];
    }

    else
    {
      v2 = [a1 databaseTable];
    }

    [HDSQLiteEntityDisambiguatedDatabaseTable::__databaseTableCache setObject:v2 forKey:a1];
  }

  os_unfair_lock_unlock(&HDSQLiteEntityDisambiguatedDatabaseTable::__databaseTableLock);

  return v2;
}

void HDSQLiteBindFoundationValueToStatement(sqlite3_stmt *a1, int a2, void *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 UTF8String];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    sqlite3_bind_text(a1, a2, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 timeIntervalSinceReferenceDate];
      sqlite3_bind_double(a1, a2, v9);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 length] >= 0x7FFFFFFF)
        {
          v16 = [MEMORY[0x277CCA890] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDSQLiteBindFoundationValueToStatement(sqlite3_stmt * _Nonnull, int, id  _Nullable __strong)"}];
          [v16 handleFailureInFunction:v17 file:@"HDSQLiteDatabase.mm" lineNumber:1505 description:{@"NSData parameter passed to SQLiteBindFoundationValueToStatement (%lu bytes) is larger than maximum allowed SQLite blob (%lu bytes)", objc_msgSend(v5, "length"), 0x7FFFFFFFLL}];
        }

        v10 = [v5 bytes];
        v11 = [v5 length];
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = "";
        }

        sqlite3_bind_blob(a1, a2, v12, v11, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20[0] = 0;
          v20[1] = 0;
          [v5 getUUIDBytes:v20];
          sqlite3_bind_blob(a1, a2, v20, 16, 0xFFFFFFFFFFFFFFFFLL);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = [MEMORY[0x277CCA890] currentHandler];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void HDSQLiteBindFoundationValueToStatement(sqlite3_stmt * _Nonnull, int, id  _Nullable __strong)"}];
            [v18 handleFailureInFunction:v19 file:@"HDSQLiteDatabase.mm" lineNumber:1514 description:{@"Binding unexpected value class %@", objc_opt_class()}];
          }

          v13 = [v5 objCType];
          v14 = *v13;
          if ((v14 == 102 || v14 == 100) && !v13[1])
          {
            [v5 doubleValue];
            sqlite3_bind_double(a1, a2, v15);
          }

          else
          {
            sqlite3_bind_int64(a1, a2, [v5 longLongValue]);
          }
        }
      }
    }
  }

  else
  {
    sqlite3_bind_null(a1, a2);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void _BindValueToStatement(void *a1, sqlite3_stmt *a2, int *a3)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 objCType];
      v10 = *v9;
      if (v10 != 102 && v10 != 100 || v9[1])
      {
        sqlite3_bind_int64(a2, *a3, [v5 longLongValue]);
        goto LABEL_21;
      }

      v18 = *a3;
      [v5 doubleValue];
LABEL_20:
      sqlite3_bind_double(a2, v18, v19);
      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = *a3;
      v12 = [v5 bytes];
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = "";
      }

      v14 = [v5 length];
      v15 = a2;
      v16 = v11;
      v17 = v13;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = *a3;
        [v5 timeIntervalSinceReferenceDate];
        goto LABEL_20;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v5)
        {
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _BindValueToStatement(__strong id, sqlite3_stmt *, int *)"}];
          [v21 handleFailureInFunction:v22 file:@"HDSQLitePredicate.m" lineNumber:1172 description:{@"Unsupported predicate value: %@", v5}];
        }

        else
        {
          sqlite3_bind_null(a2, *a3);
        }

        goto LABEL_21;
      }

      v23[0] = 0;
      v23[1] = 0;
      [v5 getUUIDBytes:v23];
      v16 = *a3;
      v17 = v23;
      v15 = a2;
      v14 = 16;
    }

    sqlite3_bind_blob(v15, v16, v17, v14, 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_21;
  }

  v6 = *a3;
  v7 = [v5 UTF8String];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = "";
  }

  sqlite3_bind_text(a2, v6, v8, -1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_21:
  ++*a3;

  v20 = *MEMORY[0x277D85DE8];
}

id HDSQLiteEntityDisambiguatedSQLForProperty(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"*"] || (objc_msgSend(a1, "joinClausesForProperty:", v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [a1 disambiguatedDatabaseTable];
    v6 = [v8 stringWithFormat:@"%@.%@", v9, v3];
  }

  return v6;
}

__CFString *HDSQLOperatorForComparisonType(uint64_t a1)
{
  if ((a1 - 1) < 8)
  {
    return off_2796BE170[a1 - 1];
  }

  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *HDSQLOperatorForComparisonType(HDSQLiteComparisonType)"];
  [v3 handleFailureInFunction:v4 file:@"HDSQLitePredicate.m" lineNumber:1111 description:{@"Invalid comparison type: %ld", a1}];

  return 0;
}

id HDSQLiteRow::columnAsNaturalType(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id  _Nullable HDSQLiteRow::columnAsNaturalType(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:177 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id  _Nullable HDSQLiteRow::columnAsNaturalType(int) const"];
    [v9 handleFailureInFunction:v10 file:@"HDSQLiteRow_Internal.h" lineNumber:178 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  v4 = sqlite3_column_type(*(this + 1), *(this + 4) + a2);
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      v5 = HDSQLiteRow::columnAsData(this, a2);
    }

    else if (v4 == 3)
    {
      v5 = HDSQLiteRow::columnAsString(this, a2);
    }
  }

  else if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{sqlite3_column_int64(*(this + 1), *(this + 4) + a2)}];
  }

  else if (v4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{sqlite3_column_double(*(this + 1), *(this + 4) + a2)}];
  }

  return v5;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v14 - 128) = a11;
  *(v13 + 4) = v11;
  return v12;
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return NSRequestConcreteImplementation();
}

id _HDSQLiteValueForDate(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277CCABB0];
    [a1 timeIntervalSinceReferenceDate];
    [v1 numberWithDouble:?];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v2 = ;

  return v2;
}

__CFString *HDSQLiteDatabaseNamePrefix(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.", v1];
  }

  else
  {
    v2 = &stru_28637B800;
  }

  return v2;
}

void OUTLINED_FUNCTION_2_1(uint64_t a1, ...)
{
  va_start(va, a1);

  [(HDAssertionManager *)v1 _lock_enumerateActiveAssertionsWithIdentifier:v2 handler:va];
}

uint64_t *OUTLINED_FUNCTION_2_2@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

sqlite3_int64 HDSQLiteRow::columnAsInt64(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t HDSQLiteRow::columnAsInt64(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:64 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t HDSQLiteRow::columnAsInt64(int) const"];
    [v9 handleFailureInFunction:v10 file:@"HDSQLiteRow_Internal.h" lineNumber:65 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  v4 = *(this + 1);
  v5 = *(this + 4) + a2;

  return sqlite3_column_int64(v4, v5);
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__emplace_unique_key_args<char const*,char const*,int &>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (1025 * (v4 + v3)) ^ ((1025 * (v4 + v3)) >> 6);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 9 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ (v7 >> 11);
  v9 = 32769 * v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = 32769 * v8;
    if (v9 >= *&v10)
    {
      v13 = v9 % *&v10;
    }
  }

  else
  {
    v13 = v9 & (*&v10 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v15[2], v2))
  {
    goto LABEL_22;
  }

  return v15;
}

uint64_t HDSQLiteColumnWithName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);

  return v4;
}

uint64_t HDSQLiteRow::indexOfColumn(sqlite3_stmt **this, const char *a2)
{
  v8 = a2;
  if (!this[6])
  {
    v7 = 0;
    if (*(this + 5) >= 1)
    {
      v3 = 0;
      do
      {
        v6 = sqlite3_column_name(this[1], v3);
        std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__emplace_unique_key_args<char const*,char const*,int &>(this + 3, &v6);
        v3 = v7 + 1;
        v7 = v3;
      }

      while (v3 < *(this + 5));
    }
  }

  v4 = std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::find<char const*>(this + 3, &v8);
  if (v4)
  {
    return (*(v4 + 6) - *(this + 4));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::find<char const*>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (1025 * (v4 + v3)) ^ ((1025 * (v4 + v3)) >> 6);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 9 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = 32769 * (v7 ^ (v7 >> 11));
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = 32769 * (v7 ^ (v7 >> 11));
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = v9 & (*&v8 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (i = *v13; i; i = *i)
  {
    v15 = i[1];
    if (v15 == v9)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= *&v8)
        {
          v15 %= *&v8;
        }
      }

      else
      {
        v15 &= *&v8 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL HDSQLiteRow::columnIsNull(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL HDSQLiteRow::columnIsNull(int) const"];
    [v5 handleFailureInFunction:v6 file:@"HDSQLiteRow_Internal.h" lineNumber:50 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL HDSQLiteRow::columnIsNull(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:51 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  return sqlite3_column_type(*(this + 1), *(this + 4) + a2) == 5;
}

double HDSQLiteColumnWithNameAsDouble(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsDouble(a1, v4);

  return v5;
}

double HDSQLiteRow::columnAsDouble(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double HDSQLiteRow::columnAsDouble(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:71 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double HDSQLiteRow::columnAsDouble(int) const"];
    [v9 handleFailureInFunction:v10 file:@"HDSQLiteRow_Internal.h" lineNumber:72 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  v4 = *(this + 1);
  v5 = *(this + 4) + a2;

  return sqlite3_column_double(v4, v5);
}

id HDSQLiteColumnWithNameAsUUID(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsUUID(a1, v4);

  return v5;
}

id HDSQLiteEntityForProperty(void *a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v14 = 0;
  while (1)
  {
    if (![a1 conformsToProtocol:&unk_28638B0D0])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __HDSQLiteEntityForProperty_block_invoke;
    v7[3] = &unk_2796BE370;
    v8 = v3;
    v9 = &v11;
    v10 = a1;
    _enumerateColumnDefinitions(a1, v7);
    v4 = v12[3];
    if (v4)
    {
      break;
    }

    a1 = [a1 superclass];
  }

  v5 = v4;

LABEL_7:
  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_2515703B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSQLiteRow::columnAsUUID(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSUUID * _Nullable HDSQLiteRow::columnAsUUID(int) const"];
    [v6 handleFailureInFunction:v7 file:@"HDSQLiteRow_Internal.h" lineNumber:124 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSUUID * _Nullable HDSQLiteRow::columnAsUUID(int) const"];
    [v8 handleFailureInFunction:v9 file:@"HDSQLiteRow_Internal.h" lineNumber:125 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  if (HDSQLiteRow::columnIsNull(this, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{sqlite3_column_blob(*(this + 1), *(this + 4) + a2)}];
  }

  return v4;
}

void _enumerateColumnDefinitions(void *a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v6 = 0;
  v4 = [a1 _cachedColumnDefinitionsWithCount:&v7];
  if (v4 && v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v3[2](v3, v4, &v6);
      if (v6)
      {
        break;
      }

      v4 += 24;
    }
  }
}

uint64_t HDSQLiteColumnWithNameAsInt64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = (*(*a1 + 16))(a1, v4);

  return v5;
}

uint64_t __HDSQLiteEntityForProperty_block_invoke(void *a1, id *a2, _BYTE *a3)
{
  result = [*a2 isEqualToString:a1[4]];
  if (result)
  {
    *(*(a1[5] + 8) + 24) = a1[6];
    *a3 = 1;
  }

  return result;
}

BOOL HDSQLiteColumnWithNameIsNull(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  IsNull = HDSQLiteRow::columnIsNull(a1, v4);

  return IsNull;
}

uint64_t sub_251570844()
{
  v1 = swift_conformsToProtocol2();
  v2 = MEMORY[0x277D84F90];
  if (v1 && v0)
  {
    v3 = (*(v1 + 8))(v0, v1);
    v4 = *(v3 + 16);
    if (v4)
    {
      v15 = v2;
      sub_2515BBA2C();
      v5 = (v3 + 48);
      do
      {
        v7 = *(v5 - 2);
        v6 = *(v5 - 1);
        v8 = *v5;
        v5 += 3;

        sub_2515B17CC();
        v9 = sub_2515B19B0();
        v10 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
        v11 = sub_2515BB8DC();
        v12 = sub_2515BB8DC();

        [v10 initWithName:v11 columnType:v12 keyPathType:v9];

        sub_2515BBA0C();
        v13 = *(v15 + 16);
        sub_2515BBA3C();
        sub_2515BBA4C();
        sub_2515BBA1C();
        --v4;
      }

      while (v4);

      return v15;
    }

    else
    {
    }
  }

  return v2;
}

unint64_t sub_2515709F8()
{
  result = qword_280C1B0A8;
  if (!qword_280C1B0A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C1B0A8);
  }

  return result;
}

id HDSQLiteColumnWithNameAsString(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsString(a1, v4);

  return v5;
}

void std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

unsigned __int8 *HDSQLiteRow::columnAsString(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nullable HDSQLiteRow::columnAsString(int) const"];
    [v6 handleFailureInFunction:v7 file:@"HDSQLiteRow_Internal.h" lineNumber:78 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nullable HDSQLiteRow::columnAsString(int) const"];
    [v8 handleFailureInFunction:v9 file:@"HDSQLiteRow_Internal.h" lineNumber:79 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  v4 = sqlite3_column_text(*(this + 1), *(this + 4) + a2);
  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
  }

  return v4;
}

void std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

id HDSQLiteColumnWithNameAsDate(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsDate(a1, v4);

  return v5;
}

id HDSQLiteRow::columnAsDate(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate * _Nullable HDSQLiteRow::columnAsDate(int) const"];
    [v6 handleFailureInFunction:v7 file:@"HDSQLiteRow_Internal.h" lineNumber:135 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate * _Nullable HDSQLiteRow::columnAsDate(int) const"];
    [v8 handleFailureInFunction:v9 file:@"HDSQLiteRow_Internal.h" lineNumber:136 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  if (HDSQLiteRow::columnIsNull(this, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(*(this + 1), *(this + 4) + a2)}];
  }

  return v4;
}

BOOL HDSQLiteColumnWithNameAsBoolean(HDSQLiteRow *a1, void *a2)
{
  v3 = a2;
  v4 = (*(*a1 + 24))(a1, [v3 UTF8String]);
  v5 = HDSQLiteRow::columnAsBoolean(a1, v4);

  return v5;
}

BOOL HDSQLiteRow::columnAsBoolean(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL HDSQLiteRow::columnAsBoolean(int) const"];
    [v5 handleFailureInFunction:v6 file:@"HDSQLiteRow_Internal.h" lineNumber:57 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL HDSQLiteRow::columnAsBoolean(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:58 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  return sqlite3_column_int(*(this + 1), *(this + 4) + a2) != 0;
}

id _HDDateForSQLiteValue(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEAA8];
    [a1 doubleValue];
    a1 = [v2 dateWithTimeIntervalSinceReferenceDate:?];
    v1 = vars8;
  }

  return a1;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_5(os_unfair_lock_s *a1)
{
  v2 = a1 + 30;

  os_unfair_lock_lock(v2);
}

uint64_t HDSQLiteStatementBinder::HDSQLiteStatementBinder(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  v17 = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v13 + 1) + 8 * i) UTF8String];
        std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__emplace_unique_key_args<char const*,char const*,int &>((a1 + 8), &v12);
        ++v17;
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_251571AE0(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v1);

  _Unwind_Resume(a1);
}

void HDSQLiteStatementBinder::bindInt64(HDSQLiteStatementBinder *this, NSString *a2, sqlite3_int64 a3)
{
  v8 = a2;
  v5 = [(NSString *)v8 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v5);
  v6 = *this;
  v7 = HDSQLiteStatementBinder::indexForProperty(this, v5);
  sqlite3_bind_int64(v6, v7, a3);
}

uint64_t **HDSQLiteStatementBinder::_recordBoundProperty(HDSQLiteStatementBinder *this, const char *a2)
{
  v6 = a2;
  if (std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::find<char const*>(this + 6, &v6))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDSQLiteStatementBinder::_recordBoundProperty(const char * _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"HDSQLiteStatementBinder_Internal.h" lineNumber:162 description:{@"Attempt to bind property '%s' twice.", v6}];
  }

  return std::__hash_table<char const*,HDSQLiteStatementBinder::_Hash,HDSQLiteStatementBinder::_Comparison,std::allocator<char const*>>::__emplace_unique_key_args<char const*,char const* const&>(this + 6, &v6);
}

uint64_t **std::__hash_table<char const*,HDSQLiteStatementBinder::_Hash,HDSQLiteStatementBinder::_Comparison,std::allocator<char const*>>::__emplace_unique_key_args<char const*,char const* const&>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (1025 * (v4 + v3)) ^ ((1025 * (v4 + v3)) >> 6);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 9 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ (v7 >> 11);
  v9 = 32769 * v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = 32769 * v8;
    if (v9 >= *&v10)
    {
      v13 = v9 % *&v10;
    }
  }

  else
  {
    v13 = v9 & (*&v10 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v15[2], v2))
  {
    goto LABEL_22;
  }

  return v15;
}

uint64_t HDSQLiteStatementBinder::indexForProperty(HDSQLiteStatementBinder *this, const char *a2)
{
  v6 = a2;
  v2 = std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::find<char const*>(this + 1, &v6);
  if (v2)
  {
    return *(v2 + 6);
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int HDSQLiteStatementBinder::indexForProperty(const char * _Nonnull) const"];
  [v4 handleFailureInFunction:v5 file:@"HDSQLiteStatementBinder_Internal.h" lineNumber:35 description:{@"Property '%s' is not a bindable property on this statement.", v6}];

  return 0xFFFFFFFFLL;
}

void HDSQLiteStatementBinder::bindDouble(HDSQLiteStatementBinder *this, NSString *a2, double a3)
{
  v8 = a2;
  v5 = [(NSString *)v8 UTF8String];
  HDSQLiteStatementBinder::_recordBoundProperty(this, v5);
  v6 = *this;
  v7 = HDSQLiteStatementBinder::indexForProperty(this, v5);
  sqlite3_bind_double(v6, v7, a3);
}

void HDSQLiteStatementBinder::assertAllPropertiesBound(HDSQLiteStatementBinder *this)
{
  for (i = *(this + 3); i; i = *i)
  {
    if (!std::__hash_table<char const*,HDSQLiteStatementBinder::_Hash,HDSQLiteStatementBinder::_Comparison,std::allocator<char const*>>::find<char const*>(this + 6, i + 2))
    {
      v3 = [MEMORY[0x277CCA890] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void HDSQLiteStatementBinder::assertAllPropertiesBound() const"];
      [v3 handleFailureInFunction:v4 file:@"HDSQLiteStatementBinder_Internal.h" lineNumber:156 description:{@"Property '%s' was never bound.", i[2]}];
    }
  }
}

uint64_t **std::__hash_table<char const*,HDSQLiteStatementBinder::_Hash,HDSQLiteStatementBinder::_Comparison,std::allocator<char const*>>::find<char const*>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = (1025 * (v4 + v3)) ^ ((1025 * (v4 + v3)) >> 6);
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = 9 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = 32769 * (v7 ^ (v7 >> 11));
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = 32769 * (v7 ^ (v7 >> 11));
    if (v9 >= *&v8)
    {
      v12 = v9 % *&v8;
    }
  }

  else
  {
    v12 = v9 & (*&v8 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (i = *v13; i; i = *i)
  {
    v15 = i[1];
    if (v9 == v15)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= *&v8)
        {
          v15 %= *&v8;
        }
      }

      else
      {
        v15 &= *&v8 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_2515722E0()
{
  MEMORY[0x25307AFE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251572318()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251572350()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25157238C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2515723E4()
{
  MEMORY[0x25307AFE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_25157241C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 rescheduleWhileRunning];
  *a2 = result;
  return result;
}

id sub_251572464@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 quota];
  *a2 = result;
  return result;
}

uint64_t sub_2515724B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2515724EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251572524()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25157259C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2515725D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25157260C()
{
  MEMORY[0x25307AFE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251572644()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__CFString *HDSQLForForeignKeyDeletionAction(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"NO ACTION";
  }

  else
  {
    return off_2796BD830[a1 - 1];
  }
}

void logActiveStatement(sqlite3_stmt *a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    logActiveStatement_cold_1(a1, v2);
  }
}

void collectStatementStrings(int a1, sqlite3_stmt *pStmt, void *a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_sql(pStmt)];
  [a3 addObject:v4];
}

void __HDAssertionTimeForContextType_block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v7[0] = v0;
  v8[0] = &unk_286385C08;
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v7[1] = v1;
  v8[1] = &unk_286385C20;
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v7[2] = v2;
  v8[2] = &unk_286385C38;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v7[3] = v3;
  v8[3] = &unk_286385C50;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = HDAssertionTimeForContextType_mapping;
  HDAssertionTimeForContextType_mapping = v4;

  v6 = *MEMORY[0x277D85DE8];
}

id _HDXPCPeriodicActivityLastSuccessfulRunUserDefaultsKey(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [[v1 alloc] initWithFormat:@"PeriodicActivity-%@-LastSuccessfulRun", v2];

  return v3;
}

void sub_2515749E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [[v1 alloc] initWithFormat:@"PeriodicActivity-%@-EarliestNextRun", v2];

  return v3;
}

__CFString *HDStringFromXPCPeriodicActivityResult(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v2 = off_2796BD930[a1];
  }

  return v2;
}

id _HDXPCPeriodicActivityErrorCountUserDefaultsKey(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [[v1 alloc] initWithFormat:@"PeriodicActivity-%@-ErrorCount", v2];

  return v3;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 64);
  return result;
}

BOOL OUTLINED_FUNCTION_6()
{
  v2 = *(v0 + 72);

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void sub_251575F40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *HDStringFromContentProtectionState(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2796BDA68[a1];
  }
}

void OUTLINED_FUNCTION_3_0(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  a7 = a2;
  a8 = *(a1 + 40);

  [(HDContentProtectionManager *)a2 _observationQueue_adjustContentProtectionStateWithBlock:?];
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return [v1 appendFormat:v0];
}

id _HDSQLiteValueForString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

id _HDSQLiteValueForData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

id _HDSQLiteValueForUUID(void *a1)
{
  if (a1)
  {
    v1 = [a1 hk_dataForUUIDBytes];
    v2 = _HDSQLiteValueForData(v1);
  }

  else
  {
    v2 = [MEMORY[0x277CBEB68] null];
  }

  return v2;
}

id _HDSQLiteValueForDataType(void *a1)
{
  if (a1)
  {
    [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "code")}];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v1 = ;

  return v1;
}

id _HDSQLiteValueForQuantity(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCABB0];
    [a1 doubleValueForUnit:a2];
    [v2 numberWithDouble:?];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v3 = ;

  return v3;
}

id _HDSQLiteValueForNumber(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

id _HDUUIDForSQLiteValue(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CCAD78] hk_UUIDWithData:a1];
    v1 = vars8;
  }

  return a1;
}

id _HDQuantityForSQLiteValue(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = MEMORY[0x277CCD7E8];
    v4 = a2;
    [v2 doubleValue];
    v2 = [v3 quantityWithUnit:v4 doubleValue:?];
  }

  return v2;
}

void sub_251578260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _LogOrAppend(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      _LogOrAppend_cold_1(v5, v8);
    }
  }

  else
  {
    [v6 appendString:v5];
    [v7 appendString:@"\n"];
  }
}

id HDSQLiteSchemaDiff(void *a1, void *a2)
{
  v246 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CBEB98];
  v159 = v3;
  v7 = [v3 allKeys];
  v8 = [v6 setWithArray:v7];

  v9 = MEMORY[0x277CBEB98];
  v158 = v4;
  v10 = [v4 allKeys];
  v161 = [v9 setWithArray:v10];

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  obj = v8;
  v11 = 0x277CCA000uLL;
  v162 = v5;
  v163 = [obj countByEnumeratingWithState:&v192 objects:v233 count:16];
  if (v163)
  {
    v160 = *v193;
    do
    {
      for (i = 0; i != v163; ++i)
      {
        if (*v193 != v160)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v192 + 1) + 8 * i);
        v14 = [v161 member:v13];

        if (v14)
        {
          v164 = i;
          v15 = [v159 objectForKeyedSubscript:v13];
          v16 = [v158 objectForKeyedSubscript:v13];
          v17 = v5;
          v174 = v13;
          v18 = v15;
          v168 = v16;
          v19 = [MEMORY[0x277CBEB58] set];
          v176 = [MEMORY[0x277CBEB58] set];
          v204 = 0u;
          v205 = 0u;
          v206 = 0u;
          v207 = 0u;
          v20 = [v18 tables];
          v21 = [v20 countByEnumeratingWithState:&v204 objects:v236 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v205;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v205 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                [v19 addObject:*(*(&v204 + 1) + 8 * j)];
              }

              v22 = [v20 countByEnumeratingWithState:&v204 objects:v236 count:16];
            }

            while (v22);
          }

          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v25 = [v168 tables];
          v26 = [v25 countByEnumeratingWithState:&v200 objects:v235 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v201;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v201 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [v176 addObject:*(*(&v200 + 1) + 8 * k)];
              }

              v27 = [v25 countByEnumeratingWithState:&v200 objects:v235 count:16];
            }

            while (v27);
          }

          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v175 = v19;
          v170 = [v175 countByEnumeratingWithState:&v196 objects:v234 count:16];
          if (v170)
          {
            v169 = *v197;
            v166 = v17;
            v167 = v18;
            do
            {
              for (m = 0; m != v170; ++m)
              {
                if (*v197 != v169)
                {
                  objc_enumerationMutation(v175);
                }

                v31 = *(*(&v196 + 1) + 8 * m);
                v32 = [v176 member:v31];

                v33 = *(v11 + 3240);
                if (!v32)
                {
                  v37 = [v33 stringWithFormat:@"LHS: %@: extra table '%@'", v174, v31];
                  [v17 addObject:v37];
                  goto LABEL_111;
                }

                v173 = m;
                v34 = [v33 stringWithFormat:@"%@: %@", v174, v31];
                v172 = [v18 tables];
                v35 = [v172 objectForKeyedSubscript:v31];
                v171 = [v168 tables];
                v36 = [v171 objectForKeyedSubscript:v31];
                v187 = v17;
                v37 = v34;
                v38 = v35;
                v39 = MEMORY[0x277CBEB98];
                v185 = v38;
                v40 = [v38 columns];
                v41 = [v40 allKeys];
                v42 = [v39 setWithArray:v41];

                v43 = MEMORY[0x277CBEB98];
                v186 = v36;
                v44 = [v36 columns];
                v45 = [v44 allKeys];
                v181 = [v43 setWithArray:v45];

                v230 = 0u;
                v231 = 0u;
                v228 = 0u;
                v229 = 0u;
                v46 = v42;
                v177 = v46;
                v182 = [v46 countByEnumeratingWithState:&v228 objects:v245 count:16];
                if (!v182)
                {
                  goto LABEL_59;
                }

                v180 = *v229;
                v183 = v37;
                do
                {
                  for (n = 0; n != v182; ++n)
                  {
                    if (*v229 != v180)
                    {
                      objc_enumerationMutation(v177);
                    }

                    v48 = *(*(&v228 + 1) + 8 * n);
                    v49 = [v181 member:v48];

                    if (!v49)
                    {
                      v51 = [*(v11 + 3240) stringWithFormat:@"LHS: %@: extra column '%@'", v37, v48];
                      [v187 addObject:v51];
                      goto LABEL_57;
                    }

                    v50 = [v185 columns];
                    v51 = [v50 objectForKeyedSubscript:v48];

                    v52 = [v186 columns];
                    v53 = [v52 objectForKeyedSubscript:v48];

                    v54 = [v51 type];
                    v55 = [v53 type];
                    v56 = [v54 isEqualToString:v55];

                    if ((v56 & 1) == 0)
                    {
                      v57 = *(v11 + 3240);
                      v58 = [v51 type];
                      v59 = [v53 type];
                      v60 = [v57 stringWithFormat:@"%@: Column %@ types differ: %@ vs %@", v37, v48, v58, v59];
                      [v187 addObject:v60];
                    }

                    v61 = [v51 defaultValue];
                    v62 = [v53 defaultValue];
                    v184 = v48;
                    if (v61 == v62)
                    {
                      goto LABEL_42;
                    }

                    v63 = [v53 defaultValue];
                    if (!v63)
                    {

LABEL_41:
                      v68 = *(v11 + 3240);
                      v61 = [v51 defaultValue];
                      v62 = [v53 defaultValue];
                      v69 = [v68 stringWithFormat:@"%@: Column %@ default values differ: %@ vs %@", v37, v184, v61, v62];
                      [v187 addObject:v69];

LABEL_42:
                      goto LABEL_43;
                    }

                    v64 = v63;
                    v65 = [v51 defaultValue];
                    v66 = [v53 defaultValue];
                    v67 = [v65 isEqualToString:v66];

                    v37 = v183;
                    if ((v67 & 1) == 0)
                    {
                      goto LABEL_41;
                    }

LABEL_43:
                    v70 = [v51 isNullable];
                    if (v70 != [v53 isNullable])
                    {
                      v71 = [*(v11 + 3240) stringWithFormat:@"%@: Column %@ nullability differs: %d vs %d", v37, v184, objc_msgSend(v51, "isNullable"), objc_msgSend(v53, "isNullable")];
                      [v187 addObject:v71];
                    }

                    v72 = [v51 isPrimaryKey];
                    if (v72 != [v53 isPrimaryKey])
                    {
                      v73 = [*(v11 + 3240) stringWithFormat:@"%@: Column %@ pk status differs: %d vs %d", v37, v184, objc_msgSend(v51, "isPrimaryKey"), objc_msgSend(v53, "isPrimaryKey")];
                      [v187 addObject:v73];
                    }

                    v74 = [v51 isAutoincrement];
                    if (v74 != [v53 isAutoincrement])
                    {
                      v75 = [*(v11 + 3240) stringWithFormat:@"%@: Column %@ nullability differs: %d vs %d", v37, v184, objc_msgSend(v51, "isAutoincrement"), objc_msgSend(v53, "isAutoincrement")];
                      [v187 addObject:v75];
                    }

                    v76 = [v51 foreignKeyTargetTable];
                    v77 = [v53 foreignKeyTargetTable];
                    if (v76 != v77)
                    {
                      v78 = [v53 foreignKeyTargetTable];
                      if (v78)
                      {
                        v79 = v78;
                        v80 = [v51 foreignKeyTargetTable];
                        v81 = [v53 foreignKeyTargetTable];
                        v82 = [v80 isEqualToString:v81];

                        if (v82)
                        {
                          goto LABEL_56;
                        }
                      }

                      else
                      {
                      }

                      v179 = *(v11 + 3240);
                      v76 = [v51 foreignKeyTargetTable];
                      v77 = [v51 foreignKeyTargetColumn];
                      v178 = HDSQLForForeignKeyDeletionAction([v51 deletionAction]);
                      v83 = [v53 foreignKeyTargetTable];
                      v84 = [v53 foreignKeyTargetColumn];
                      HDSQLForForeignKeyDeletionAction([v53 deletionAction]);
                      v86 = v85 = v11;
                      v87 = [v179 stringWithFormat:@"%@: Column %@ foreign key differs: %@(%@) %@ vs %@(%@) %@", v183, v184, v76, v77, v178, v83, v84, v86];
                      [v187 addObject:v87];

                      v11 = v85;
                    }

LABEL_56:
                    v37 = v183;
LABEL_57:
                  }

                  v46 = v177;
                  v182 = [v177 countByEnumeratingWithState:&v228 objects:v245 count:16];
                }

                while (v182);
LABEL_59:

                v226 = 0u;
                v227 = 0u;
                v224 = 0u;
                v225 = 0u;
                v88 = v181;
                v89 = [v88 countByEnumeratingWithState:&v224 objects:&v241 count:16];
                if (v89)
                {
                  v90 = v89;
                  v91 = *v225;
                  do
                  {
                    for (ii = 0; ii != v90; ++ii)
                    {
                      if (*v225 != v91)
                      {
                        objc_enumerationMutation(v88);
                      }

                      v93 = *(*(&v224 + 1) + 8 * ii);
                      v94 = [v46 member:v93];

                      if (!v94)
                      {
                        v95 = [*(v11 + 3240) stringWithFormat:@"RHS: %@: extra column '%@'", v37, v93];
                        [v187 addObject:v95];
                      }
                    }

                    v90 = [v88 countByEnumeratingWithState:&v224 objects:&v241 count:16];
                  }

                  while (v90);
                }

                v222 = 0u;
                v223 = 0u;
                v220 = 0u;
                v221 = 0u;
                v96 = [v185 indices];
                v97 = [v96 countByEnumeratingWithState:&v220 objects:v240 count:16];
                if (v97)
                {
                  v98 = v97;
                  v99 = *v221;
                  do
                  {
                    for (jj = 0; jj != v98; ++jj)
                    {
                      if (*v221 != v99)
                      {
                        objc_enumerationMutation(v96);
                      }

                      v101 = *(*(&v220 + 1) + 8 * jj);
                      v102 = [v186 indices];
                      v103 = [v102 containsObject:v101];

                      if ((v103 & 1) == 0)
                      {
                        v104 = [*(v11 + 3240) stringWithFormat:@"LHS: %@: extra index '%@'", v37, v101];
                        [v187 addObject:v104];
                      }
                    }

                    v98 = [v96 countByEnumeratingWithState:&v220 objects:v240 count:16];
                  }

                  while (v98);
                }

                v218 = 0u;
                v219 = 0u;
                v216 = 0u;
                v217 = 0u;
                v105 = [v186 indices];
                v106 = [v105 countByEnumeratingWithState:&v216 objects:v239 count:16];
                if (v106)
                {
                  v107 = v106;
                  v108 = *v217;
                  do
                  {
                    for (kk = 0; kk != v107; ++kk)
                    {
                      if (*v217 != v108)
                      {
                        objc_enumerationMutation(v105);
                      }

                      v110 = *(*(&v216 + 1) + 8 * kk);
                      v111 = [v185 indices];
                      v112 = [v111 containsObject:v110];

                      if ((v112 & 1) == 0)
                      {
                        v113 = [*(v11 + 3240) stringWithFormat:@"RHS: %@: extra index '%@'", v37, v110];
                        [v187 addObject:v113];
                      }
                    }

                    v107 = [v105 countByEnumeratingWithState:&v216 objects:v239 count:16];
                  }

                  while (v107);
                }

                v214 = 0u;
                v215 = 0u;
                v212 = 0u;
                v213 = 0u;
                v114 = [v185 triggers];
                v115 = [v114 countByEnumeratingWithState:&v212 objects:v238 count:16];
                if (v115)
                {
                  v116 = v115;
                  v117 = *v213;
                  do
                  {
                    for (mm = 0; mm != v116; ++mm)
                    {
                      if (*v213 != v117)
                      {
                        objc_enumerationMutation(v114);
                      }

                      v119 = *(*(&v212 + 1) + 8 * mm);
                      v120 = [v186 triggers];
                      v121 = [v120 containsObject:v119];

                      if ((v121 & 1) == 0)
                      {
                        v122 = [*(v11 + 3240) stringWithFormat:@"LHS: %@: extra trigger '%@'", v37, v119];
                        [v187 addObject:v122];
                      }
                    }

                    v116 = [v114 countByEnumeratingWithState:&v212 objects:v238 count:16];
                  }

                  while (v116);
                }

                v210 = 0u;
                v211 = 0u;
                v208 = 0u;
                v209 = 0u;
                v123 = [v186 triggers];
                v124 = [v123 countByEnumeratingWithState:&v208 objects:v237 count:16];
                if (v124)
                {
                  v125 = v124;
                  v126 = *v209;
                  do
                  {
                    for (nn = 0; nn != v125; ++nn)
                    {
                      if (*v209 != v126)
                      {
                        objc_enumerationMutation(v123);
                      }

                      v128 = *(*(&v208 + 1) + 8 * nn);
                      v129 = [v185 triggers];
                      v130 = [v129 containsObject:v128];

                      if ((v130 & 1) == 0)
                      {
                        v131 = [*(v11 + 3240) stringWithFormat:@"RHS: %@: extra trigger '%@'", v37, v128];
                        [v187 addObject:v131];
                      }
                    }

                    v125 = [v123 countByEnumeratingWithState:&v208 objects:v237 count:16];
                  }

                  while (v125);
                }

                v132 = [v185 createTableSchema];
                v133 = [v132 containsString:@"WITHOUT ROWID"];

                v134 = [v186 createTableSchema];
                v135 = [v134 containsString:@"WITHOUT ROWID"];

                if (!v133)
                {
                  v136 = @"RHS table constructed WITHOUT ROWID, but LHS table is not";
                  v17 = v166;
                  v18 = v167;
                  v137 = v172;
                  m = v173;
                  v138 = v171;
                  if (!v135)
                  {
                    goto LABEL_110;
                  }

LABEL_109:
                  [v187 addObject:v136];
                  goto LABEL_110;
                }

                v136 = @"LHS table constructed WITHOUT ROWID, but RHS table is not";
                v17 = v166;
                v18 = v167;
                v137 = v172;
                m = v173;
                v138 = v171;
                if ((v135 & 1) == 0)
                {
                  goto LABEL_109;
                }

LABEL_110:

LABEL_111:
              }

              v170 = [v175 countByEnumeratingWithState:&v196 objects:v234 count:16];
            }

            while (v170);
          }

          v244 = 0u;
          v243 = 0u;
          v242 = 0u;
          v241 = 0u;
          v139 = v176;
          v140 = [v139 countByEnumeratingWithState:&v241 objects:v245 count:16];
          if (v140)
          {
            v141 = v140;
            v142 = *v242;
            do
            {
              for (i1 = 0; i1 != v141; ++i1)
              {
                if (*v242 != v142)
                {
                  objc_enumerationMutation(v139);
                }

                v144 = *(*(&v241 + 1) + 8 * i1);
                v145 = [v175 member:v144];

                if (!v145)
                {
                  v146 = [*(v11 + 3240) stringWithFormat:@"RHS: %@: extra table '%@'", v174, v144];
                  [v17 addObject:v146];
                }
              }

              v141 = [v139 countByEnumeratingWithState:&v241 objects:v245 count:16];
            }

            while (v141);
          }

          v5 = v162;
          i = v164;
        }

        else
        {
          v18 = [*(v11 + 3240) stringWithFormat:@"LHS has extra database '%@'", v13];
          [v5 addObject:v18];
        }
      }

      v163 = [obj countByEnumeratingWithState:&v192 objects:v233 count:16];
    }

    while (v163);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v147 = v161;
  v148 = [v147 countByEnumeratingWithState:&v188 objects:v232 count:16];
  if (v148)
  {
    v149 = v148;
    v150 = *v189;
    do
    {
      for (i2 = 0; i2 != v149; ++i2)
      {
        if (*v189 != v150)
        {
          objc_enumerationMutation(v147);
        }

        v152 = *(*(&v188 + 1) + 8 * i2);
        v153 = [obj member:v152];

        if (!v153)
        {
          v154 = [*(v11 + 3240) stringWithFormat:@"RHS has extra database '%@'", v152];
          [v162 addObject:v154];
        }
      }

      v149 = [v147 countByEnumeratingWithState:&v188 objects:v232 count:16];
    }

    while (v149);
  }

  v155 = v162;
  v156 = *MEMORY[0x277D85DE8];
  return v162;
}

void sub_25157C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25157C630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25157E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_25157EE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromGatedActivityResult(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_2796BDE08[a1];
  }

  return v2;
}

void sub_251581118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = HDSQLiteDatabase;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _SqliteEventTrace(int a1, sqlite3 *a2, sqlite3_stmt *pStmt, char *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    if (_ShouldProfileSQL(a4))
    {
      v30 = sqlite3_expanded_sql(pStmt);
      _HKInitializeLogging();
      v31 = *MEMORY[0x277CCC2A0];
      v32 = os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO);
      if (v30)
      {
        if (v32)
        {
          *buf = 136315138;
          *v42 = v30;
          _os_log_impl(&dword_25156C000, v31, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
        }

        free(v30);
      }

      else if (v32)
      {
        *buf = 136315138;
        *v42 = a4;
        _os_log_impl(&dword_25156C000, v31, OS_LOG_TYPE_INFO, "(unexpanded) %s", buf, 0xCu);
      }
    }
  }

  else if (a1 == 2)
  {
    v7 = *a4;
    v8 = sqlite3_sql(pStmt);
    if (_ShouldProfileSQL(v8))
    {
      v9 = [MEMORY[0x277CCDD30] sharedBehavior];
      v10 = [v9 features];
      v11 = [v10 databasePerfTrace];
      v12 = v7 > 9999999 ? 1 : v11;

      if (v12)
      {
        _HKInitializeLogging();
        v13 = MEMORY[0x277CCC2A0];
        v14 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          *v42 = v7 / 1000000;
          *&v42[8] = 2080;
          v43 = v8;
          _os_log_impl(&dword_25156C000, v14, OS_LOG_TYPE_INFO, "[TIME: %llu ms] :: %s", buf, 0x16u);
        }

        if (v7 >= 751000000)
        {
          ppStmt[0] = 0;
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"EXPLAIN QUERY PLAN %s", v8];
          _HKInitializeLogging();
          v16 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v42 = v15;
            _os_log_impl(&dword_25156C000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }

          v17 = v15;
          if (!sqlite3_prepare_v2(a2, [v15 UTF8String], -1, ppStmt, 0))
          {
            do
            {
              v18 = sqlite3_step(ppStmt[0]);
              if ((v18 & 0xFFFFFFFE) != 0x64)
              {
                break;
              }

              v19 = sqlite3_column_int(ppStmt[0], 0);
              v20 = sqlite3_column_int(ppStmt[0], 1);
              v21 = sqlite3_column_int(ppStmt[0], 2);
              v22 = sqlite3_column_text(ppStmt[0], 3);
              _HKInitializeLogging();
              v23 = *v13;
              if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
              {
                *buf = 67109890;
                *v42 = v19;
                *&v42[4] = 1024;
                *&v42[6] = v20;
                LOWORD(v43) = 1024;
                *(&v43 + 2) = v21;
                HIWORD(v43) = 2080;
                v44 = v22;
                _os_log_impl(&dword_25156C000, v23, OS_LOG_TYPE_INFO, "    %d %d %d %s", buf, 0x1Eu);
              }
            }

            while (v18 == 100);
            sqlite3_finalize(ppStmt[0]);
          }

          *ppStmt = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v24 = [MEMORY[0x277CCACC8] callStackSymbols];
          v25 = [v24 countByEnumeratingWithState:ppStmt objects:buf count:16];
          if (v25)
          {
            v26 = *v36;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v36 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(ppStmt[1] + i);
                _HKInitializeLogging();
                v29 = *v13;
                if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
                {
                  *v39 = 138412290;
                  v40 = v28;
                  _os_log_impl(&dword_25156C000, v29, OS_LOG_TYPE_INFO, "    %@", v39, 0xCu);
                }
              }

              v25 = [v24 countByEnumeratingWithState:ppStmt objects:buf count:16];
            }

            while (v25);
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return 0;
}

id HDSQLiteErrorFromDatabase(sqlite3 *a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v6 = sqlite3_extended_errcode(a1);
  v7 = [MEMORY[0x277CCACA8] stringWithCString:sqlite3_errmsg(a1) encoding:4];
  if (a2)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithCString:sqlite3_sql(a2) encoding:4];
  }

  else
  {
    v8 = 0;
  }

  v9 = HDSQLiteErrorWithExtendedCode(v6, v7, v8, v5);

  return v9;
}

id HDSQLiteDatabaseErrorFromSQLiteError(void *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *MEMORY[0x277CCA450];
  v10[0] = *MEMORY[0x277CCA7E8];
  v10[1] = v2;
  v11[0] = v1;
  v3 = MEMORY[0x277CCACA8];
  v4 = [v1 localizedDescription];
  v5 = [v3 stringWithFormat:@"SQLite error: %@", v4];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.healthd.SQLite" code:2 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_251581880(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_251582DCC()
{
  objc_end_catch();

  JUMPOUT(0x251582E0CLL);
}

void sub_251582DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a13)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_251582E2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__CFString *HDSQLiteTransactionTypeString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown transaction type (%ld)", a1];
  }

  else
  {
    v2 = off_2796BE0A0[a1];
  }

  return v2;
}

void HDSQLiteRow::~HDSQLiteRow(HDSQLiteRow *this)
{
  *this = &unk_286379B38;
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(this + 24);
}

{
  *this = &unk_286379B38;
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(this + 24);

  JUMPOUT(0x25307A210);
}

void sub_251584060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251584908(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_251585DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSQLiteErrorWithExtendedCode(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v18[0] = @"extended_error_code";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v18[1] = @"error_message";
  v19[0] = v10;
  v19[1] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v12 = [v11 mutableCopy];

  v13 = &stru_28637B800;
  if (v7)
  {
    v13 = v7;
  }

  v14 = [MEMORY[0x277CCAB68] stringWithFormat:@"A SQLite error occurred: (%d) %@", a1, v13];
  if (v8)
  {
    [v12 setObject:v8 forKey:@"sql_statement"];
    [v14 appendFormat:@" (failing statement: %@", v8];
  }

  if (v9)
  {
    [v12 setObject:v9 forKey:@"context"];
    [v14 appendFormat:@" <%@>", v9];
  }

  [v12 setObject:v14 forKey:*MEMORY[0x277CCA450]];
  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SQLite" code:a1 userInfo:v12];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_251586F48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_251587170(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t HDSQLiteBindFoundationValuesToStatement(sqlite3_stmt *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        HDSQLiteBindFoundationValueToStatement(a1, a2, *(*(&v11 + 1) + 8 * v8));
        a2 = (a2 + 1);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

void HDSQLiteBindStringToStatement(sqlite3_stmt *a1, int a2, void *a3)
{
  v7 = a3;
  v5 = [v7 UTF8String];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = "";
  }

  sqlite3_bind_text(a1, a2, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
}

id HDSQLiteFoundationValueForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  if (v4 > 2)
  {
    if (v4 != 5)
    {
      if (v4 == 3)
      {
        v5 = HDSQLiteStringValueForStatementColumn(a1, a2);
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v5 = 0;
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{sqlite3_column_double(a1, a2)}];
        goto LABEL_11;
      }

LABEL_8:
      v6 = sqlite3_column_blob(a1, a2);
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v6 length:{sqlite3_column_bytes(a1, a2)}];
      goto LABEL_11;
    }

    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{sqlite3_column_int64(a1, a2)}];
  }

LABEL_11:

  return v5;
}

id HDSQLiteStringValueForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{sqlite3_column_text(a1, a2)}];

  return v2;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v4, OS_LOG_TYPE_FAULT, a4, v5, 0xCu);
}

uint64_t __HDXPCProcessNameFromAuditToken_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x277D861D8];
  result = sandbox_check();
  HDXPCProcessNameFromAuditToken_pidInfoAllowed = result == 0;
  return result;
}

void sub_25158881C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25158A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _StringEscapingSpecialCharactersForLikePredicate(void *a1)
{
  v1 = MEMORY[0x277CCAB68];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___StringEscapingSpecialCharactersForLikePredicate_block_invoke;
  v7[3] = &unk_2796BE128;
  v5 = v3;
  v8 = v5;
  [v2 enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v7}];

  return v5;
}

uint64_t HDSQLiteComparisonTypeForPredicateOperator(unint64_t a1)
{
  if (a1 < 0xB && ((0x4BFu >> a1) & 1) != 0)
  {
    return qword_2515C04B0[a1];
  }

  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    HDSQLiteComparisonTypeForPredicateOperator_cold_1(a1, v3);
  }

  return 0;
}

void _HDCFNotificationCallback(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_pendingNotificationsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _pendingNotifications;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      if ([v9 notification] == a1)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (!v10)
    {
      goto LABEL_14;
    }

    [_pendingNotifications removeObject:v10];
    if (![_pendingNotifications count])
    {
      v11 = _pendingNotifications;
      _pendingNotifications = 0;
    }

    os_unfair_lock_unlock(&_pendingNotificationsLock);
    [v10 _handleResponse:a2];
  }

  else
  {
LABEL_9:

LABEL_14:
    os_unfair_lock_unlock(&_pendingNotificationsLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

__CFString *HDUserNotificationResponseButtonToString(uint64_t a1)
{
  v1 = @"default";
  if (a1 == 2)
  {
    v1 = @"other";
  }

  if (a1 == 1)
  {
    return @"cancel";
  }

  else
  {
    return v1;
  }
}

void hd_xpc_dispatch_event(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x25307B1F0]() == MEMORY[0x277D86468])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
    os_unfair_lock_lock(&_eventStreamLock);
    v5 = [_eventStreamLock_handlers objectForKeyedSubscript:v4];
    v6 = [v5 copy];

    os_unfair_lock_unlock(&_eventStreamLock);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __hd_xpc_dispatch_event_block_invoke;
    v7[3] = &unk_2796BE1E0;
    v8 = v3;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

void __hd_xpc_dispatch_event_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = [v3 object];
  if (v13[5])
  {
    v4 = [v3 queue];

    if (v4)
    {
      v5 = [v3 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __hd_xpc_dispatch_event_block_invoke_319;
      block[3] = &unk_2796BE1B8;
      v9 = v3;
      v10 = *(a1 + 32);
      v11 = &v12;
      dispatch_async(v5, block);

      v6 = v9;
    }

    else
    {
      v7 = [v3 handler];
      v7[2](v7, *(a1 + 32));

      v6 = v13[5];
      v13[5] = 0;
    }
  }

  _Block_object_dispose(&v12, 8);
}

void sub_25158F174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __hd_xpc_dispatch_event_block_invoke_319(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void hd_xpc_set_event_stream_handler(void *a1, const char *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (HKIsUnitTesting())
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:4];
    os_unfair_lock_lock(&_eventStreamLock);
    v11 = _eventStreamLock_handlers;
    if (!_eventStreamLock_handlers)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = _eventStreamLock_handlers;
      _eventStreamLock_handlers = v12;

      v11 = _eventStreamLock_handlers;
    }

    v14 = [v11 objectForKeyedSubscript:v10];
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [_eventStreamLock_handlers setObject:v14 forKeyedSubscript:v10];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __hd_xpc_set_event_stream_handler_block_invoke;
      handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
      handler[4] = a2;
      xpc_set_event_stream_handler(a2, 0, handler);
    }

    v15 = [[XPCEventStreamTab alloc] initWithStream:v10 object:v7 queue:v8 handler:v9];
    [v14 addObject:v15];

    os_unfair_lock_unlock(&_eventStreamLock);
  }

  else
  {
    xpc_set_event_stream_handler(a2, v8, v9);
  }
}

void hd_xpc_remove_event_stream_handlers(void *a1)
{
  v1 = a1;
  if (HKIsUnitTesting())
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
    os_unfair_lock_lock(&_eventStreamLock);
    v3 = _eventStreamLock_handlers;
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __hd_xpc_remove_event_stream_handlers_block_invoke;
    v8 = &unk_2796BE250;
    v9 = v1;
    v10 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:&v5];
    os_unfair_lock_unlock(&_eventStreamLock);
    [v4 removeAllObjects];
  }
}

void __hd_xpc_remove_event_stream_handlers_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 copy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __hd_xpc_remove_event_stream_handlers_block_invoke_2;
  v7[3] = &unk_2796BE228;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __hd_xpc_remove_event_stream_handlers_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 object];
  if (!v3 || (v4 = v3, v5 = *(a1 + 32), [v7 object], v6 = objc_claimAutoreleasedReturnValue(), v6, v4, v5 == v6))
  {
    [*(a1 + 40) addObject:v7];
    [*(a1 + 48) removeObject:v7];
  }
}

void sub_25158F8CC(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

id HDSQLiteEntityCreateTableSQL(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, char a8)
{
  v61 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a4;
  v42 = a5;
  v41 = a6;
  v39 = a7;
  v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend(v17, "appendFormat:", @"CREATE TABLE IF NOT EXISTS %@ ("), v15, v15, v16, v17;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v54 = 1;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v49 = __HDSQLiteEntityCreateTableSQL_block_invoke;
  v50 = &unk_2796BE3C0;
  v52 = v53;
  v18 = v17;
  v51 = v18;
  v43 = v16;
  v40 = v15;
  v19 = v48;
  v55 = 0;
  if (a3)
  {
    v20 = a3 - 1;
    v21 = (a2 + 16);
    do
    {
      v22 = *(v21 - 2);
      v23 = [v43 objectForKeyedSubscript:v22];
      HasForeignKey = HDKeyPathTypeHasForeignKey(*v21);
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = HasForeignKey;
      }

      if (v25)
      {
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v58 = v22;
          v59 = 2112;
          v60 = v40;
          _os_log_fault_impl(&dword_25156C000, v26, OS_LOG_TYPE_FAULT, "Expected foreign key for column %@ of table %@ and none found", buf, 0x16u);
        }
      }

      v27 = [[_HDSQLiteEntityColumn alloc] initWithName:v22 columnType:*(v21 - 1) keyPathType:*v21 foreignKey:v23];
      (v49)(v19, v27, &v55);
      v28 = v55;

      v29 = v20-- == 0;
      v21 += 24;
    }

    while (((v28 | v29) & 1) == 0);
  }

  if (v42)
  {
    if ([v42 count] <= 1)
    {
      __assert_rtn("HDSQLiteEntityCreateTableSQL", "HDSQLiteEntity.mm", 682, "primaryKeyColumns.count >= 2");
    }

    v30 = [v42 componentsJoinedByString:{@", "}];
    [v18 appendFormat:@", PRIMARY KEY(%@)", v30];
  }

  if ([v41 count])
  {
    v31 = [v41 componentsJoinedByString:{@", "}];
    [v18 appendFormat:@", UNIQUE(%@)", v31];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = v39;
  v33 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v33)
  {
    v34 = *v45;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = [*(*(&v44 + 1) + 8 * i) SQLCheckConstraint];
        [v18 appendFormat:@", CHECK(%@)", v36];
      }

      v33 = [v32 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v33);
  }

  [v18 appendString:@""]);
  if ((a8 & 1) == 0)
  {
    [v18 appendString:@" WITHOUT ROWID"];
  }

  _Block_object_dispose(v53, 8);
  v37 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_25158FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);

  _Unwind_Resume(a1);
}

uint64_t HDSQLiteEntityHasColumnWithName(void *a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v4 = [a1 _cachedColumnDefinitionsWithCount:&v8];
  v5 = 0;
  if (v4 && v8)
  {
    for (i = 0; i < v8; ++i)
    {
      v5 = [v3 isEqualToString:*v4];
      if (v5)
      {
        break;
      }

      v4 += 3;
    }
  }

  return v5;
}

void HDSQLiteEntityEnumerateColumns(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  if ([a1 _cachedColumnDefinitionsWithCount:&v10])
  {
    v4 = [a1 foreignKeys];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __HDSQLiteEntityEnumerateColumns_block_invoke;
    v6[3] = &unk_2796BE398;
    v7 = v4;
    v9 = a1;
    v8 = v3;
    v5 = v4;
    _enumerateColumnDefinitions(a1, v6);
  }
}

id HDSQLiteEntityAllDatabaseColumnNames(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while ([a1 conformsToProtocol:&unk_28638B0D0])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __HDSQLiteEntityAllDatabaseColumnNames_block_invoke;
    v4[3] = &unk_2796BE3E8;
    v5 = v2;
    [a1 enumerateColumnsWithBlock:v4];
    a1 = [a1 superclass];
  }

  return v2;
}

void sub_2515905C0(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_251590778(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_251590C48(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v1 + 48);
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_251590D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_251590FE4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v1 + 48);
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_25159120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(va1);
  std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_2515915B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_251591BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char a45)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

void sub_251591D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **HDSQLiteRow::setColumnNames(uint64_t **result, const char ***a2)
{
  v5 = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = std::__hash_table<std::__hash_value_type<char const*,int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Hash,HDSQLiteRow::_Comparison,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,int>,HDSQLiteRow::_Comparison,HDSQLiteRow::_Hash,true>,std::allocator<std::__hash_value_type<char const*,int>>>::__emplace_unique_key_args<char const*,char const*,int &>(v4 + 3, v2);
      ++v5;
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_56c43_ZTSNSt3__16vectorIPKcNS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<char const*>::__init_with_size[abi:ne200100]<char const**,char const**>(v2, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
}

void __destroy_helper_block_ea8_56c43_ZTSNSt3__16vectorIPKcNS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void sub_251591FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2515921A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251592380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_251592580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id HDSQLiteRow::columnAsNumber(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNumber * _Nullable HDSQLiteRow::columnAsNumber(int) const"];
    [v7 handleFailureInFunction:v8 file:@"HDSQLiteRow_Internal.h" lineNumber:146 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSNumber * _Nullable HDSQLiteRow::columnAsNumber(int) const"];
    [v9 handleFailureInFunction:v10 file:@"HDSQLiteRow_Internal.h" lineNumber:147 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  v4 = sqlite3_column_type(*(this + 1), *(this + 4) + a2);
  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{sqlite3_column_int64(*(this + 1), *(this + 4) + a2)}];
  }

  else if (v4 == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:{sqlite3_column_double(*(this + 1), *(this + 4) + a2)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_25159293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_251592B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __HDSQLiteEntityDisambiguatedDatabaseTable_block_invoke()
{
  HDSQLiteEntityDisambiguatedDatabaseTable::__databaseTableCache = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:16];

  return MEMORY[0x2821F96F8]();
}

void __HDSQLiteEntityEnumerateColumns_block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  HasForeignKey = HDKeyPathTypeHasForeignKey(*(a2 + 16));
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = HasForeignKey;
  }

  if (v7)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [*(a1 + 48) databaseTable];
      __HDSQLiteEntityEnumerateColumns_block_invoke_cold_1(v4, v9, v12, v8);
    }
  }

  v10 = [[_HDSQLiteEntityColumn alloc] initWithName:v4 columnType:*(a2 + 8) keyPathType:*(a2 + 16) foreignKey:v5];
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __HDSQLiteEntityCreateTableSQL_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v3 = *(a1 + 32);
  v4 = [v5 creationSQL];
  [v3 appendString:v4];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __HDSQLiteEntityAllDatabaseColumnNames_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 name];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [v8 name];
    [v6 addObject:v7];
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2796BD828, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<char const*>::__init_with_size[abi:ne200100]<char const**,char const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2515931B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

id HDSQLiteRow::columnAsData(HDSQLiteRow *this, int a2)
{
  if (a2 < 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSData * _Nullable HDSQLiteRow::columnAsData(int) const"];
    [v8 handleFailureInFunction:v9 file:@"HDSQLiteRow_Internal.h" lineNumber:111 description:@"Column must be greater than or equal to 0."];
  }

  if (*(this + 5) <= a2)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSData * _Nullable HDSQLiteRow::columnAsData(int) const"];
    [v10 handleFailureInFunction:v11 file:@"HDSQLiteRow_Internal.h" lineNumber:112 description:{@"Column must be less than the number of requested columns (%d).", (*(this + 5) - *(this + 4))}];
  }

  if (HDSQLiteRow::columnIsNull(this, a2))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(this + 4);
    v6 = sqlite3_column_blob(*(this + 1), v5 + a2);
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v6 length:{sqlite3_column_bytes(*(this + 1), v5 + a2)}];
  }

  return v4;
}

void sub_251593E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2515954A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25159564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_251595AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_251596A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

void sub_2515973CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a32)
  {
    operator delete(a32);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v33 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void _HDSQLiteCompareBuildVersions(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 2)
  {
    if (sqlite3_value_type(*a3) != 5 && sqlite3_value_type(a3[1]) != 5)
    {
      sqlite3_value_text(*a3);
      sqlite3_value_text(a3[1]);
      HDCompareBuildVersionStrings();
    }

    sqlite3_result_null(a1);
  }

  else
  {

    sqlite3_result_error(a1, "Improper number of arguments.", 1);
  }
}

void _HDSQLiteGenerateUUID(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v6[0] = 0;
  v6[1] = 0;
  [v4 getUUIDBytes:v6];
  sqlite3_result_blob(a1, v6, 16, 0xFFFFFFFFFFFFFFFFLL);

  v5 = *MEMORY[0x277D85DE8];
}

void _HDSQLiteConvertUUIDString(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    if (sqlite3_value_type(*a3) == 5)
    {
      v5 = *MEMORY[0x277D85DE8];

      sqlite3_result_null(a1);
    }

    else
    {
      v7 = sqlite3_value_text(*a3);
      v8 = strlen(v7);
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:v8 encoding:1];
      v11 = [v9 initWithUUIDString:v10];

      v13[0] = 0;
      v13[1] = 0;
      [v11 getUUIDBytes:v13];
      sqlite3_result_blob(a1, v13, 16, 0xFFFFFFFFFFFFFFFFLL);

      v12 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85DE8];

    sqlite3_result_error(a1, "Improper number of arguments.", 1);
  }
}

void _HDSQLiteConvertBlobToUUIDString(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    if (sqlite3_value_type(*a3) == 4 && sqlite3_value_bytes(*a3) == 16)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:sqlite3_value_blob(*a3)];
      v9 = v5;
      if (v5)
      {
        v6 = [v5 UUIDString];
        v7 = [v6 UTF8String];

        v8 = strlen(v7);
        sqlite3_result_text(a1, v7, v8, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_null(a1);
      }
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }

  else
  {

    sqlite3_result_error(a1, "Improper number of arguments.", 1);
  }
}

void _HDSQLiteCompareQuantityMetadataValues(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 4)
  {
    if (sqlite3_value_type(*a3) == 5 || sqlite3_value_type(a3[1]) == 5 || sqlite3_value_type(a3[2]) == 5 || sqlite3_value_type(a3[3]) == 5)
    {

      sqlite3_result_null(a1);
    }

    else
    {
      v5 = sqlite3_value_double(*a3);
      v6 = sqlite3_value_text(a3[1]);
      v7 = sqlite3_value_double(a3[2]);
      v8 = sqlite3_value_text(a3[3]);
      v9 = MEMORY[0x277CCD7E8];
      v10 = MEMORY[0x277CCDAB0];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      v12 = [v10 unitFromString:v11];
      v20 = [v9 quantityWithUnit:v12 doubleValue:v5];

      v13 = MEMORY[0x277CCD7E8];
      v14 = MEMORY[0x277CCDAB0];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      v16 = [v14 unitFromString:v15];
      v17 = [v13 quantityWithUnit:v16 doubleValue:v7];

      v18 = [v17 _unit];
      LOBYTE(v13) = [v20 isCompatibleWithUnit:v18];

      if (v13)
      {
        v19 = [v20 compare:v17];
      }

      else
      {
        v19 = 2;
      }

      sqlite3_result_int(a1, v19);
    }
  }

  else
  {

    sqlite3_result_error(a1, "Improper number of arguments.", 1);
  }
}

void _HDSQLiteMD5(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    if (sqlite3_value_type(*a3) == 5)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = sqlite3_value_blob(*a3);
      v6 = sqlite3_value_bytes(*a3);
    }

    CC_MD5(v5, v6, md);
    sqlite3_result_blob(a1, md, 16, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    sqlite3_result_error(a1, "Improper number of arguments.", 1);
  }
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_2515980A0(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x25307A1D0]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_251598A44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25307A210);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x25307A210);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_286379ED8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_286379ED8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_286379F20;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_286379F20;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_286379F20;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x25307A210);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_25159A140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_25159A528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_25159AAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 1);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v8 = v6[10];
      *(a4 + 85) = *(v6 + 85);
      *(a4 + 80) = v8;
      v6 += 12;
      a4 += 96;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v5);
      v5 += 12;
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::__state<char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25159AFF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25159B068(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 13;
          goto LABEL_91;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_73;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v18 = 9;
          goto LABEL_91;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_99;
        }

        v9 = a2[1];
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
        {
          goto LABEL_99;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_99;
        }

        v10 = *v4;
        v11 = -48;
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38)
        {
          v10 |= 0x20u;
          if ((v10 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v11 = -87;
        }

        v6 = 16 * (v11 + v10);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_99;
        }

        v12 = v4[1];
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_99;
          }

          v13 = -87;
        }

        if (v4 + 2 != a3)
        {
          v14 = v4[2];
          v15 = -48;
          if ((v14 & 0xF8) == 0x30 || (v14 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v14 |= 0x20u;
          if ((v14 - 97) < 6)
          {
            v15 = -87;
LABEL_55:
            v16 = v15 + v14 + 16 * (v13 + v6 + v12);
            if (a4)
            {
              if (*(a4 + 23) < 0)
              {
                a4[1] = 1;
                a4 = *a4;
              }

              else
              {
                *(a4 + 23) = 1;
              }

              *a4 = v16;
              *(a4 + 1) = 0;
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v16);
            }

            v4 += 3;
            return v4;
          }
        }

LABEL_99:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_73:
        v17 = v5;
        if ((v5 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_99;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          *(a4 + 1) = 0;
          return ++v4;
        }

        goto LABEL_78;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 11;
LABEL_91:
        *a4 = v18;
        return ++v4;
      }

      v17 = 11;
    }

LABEL_78:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 12;
        goto LABEL_91;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_73;
      }

      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v18 = 10;
        goto LABEL_91;
      }

      v17 = 10;
    }

    goto LABEL_78;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v17 = 0;
    goto LABEL_78;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_99;
    }

    goto LABEL_73;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_99;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_99;
  }

  v8 = v7 & 0x1F;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v8;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286379FB0;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_25159BF00(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_286379FB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_286379FB0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_286379FF8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_286379FF8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28637A088;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_28637A088;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28637A0D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_28637A0D0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25307A210);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x25307A210);
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_25159CC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x25307A210);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v18 = 0;
    negate = this->__negate_;
    goto LABEL_54;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_31;
  }

  v72 = *current;
  v6 = current[1];
  v73 = current[1];
  if (this->__icase_)
  {
    v72 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v73 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v72, &v74, &__p);
  if ((v71 & 0x80000000) == 0)
  {
    if (v71)
    {
      goto LABEL_8;
    }

LABEL_31:
    negate = 0;
    v18 = 1;
    goto LABEL_32;
  }

  v20 = v70;
  operator delete(__p);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v72 != *(p_second - 1) || v73 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_148;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v74);
    v12 = this->__ranges_.__begin_;
    if (this->__ranges_.__end_ == v12)
    {
LABEL_24:
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12[v13].first.__r_.__value_.__r.__words, &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v13].second.__r_.__value_.__l.__data_) >= 1)
      {
        ++v14;
        v12 = this->__ranges_.__begin_;
        ++v13;
        if (v14 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v12) >> 4))
        {
          goto LABEL_24;
        }
      }

      v16 = 5;
      v15 = 1;
    }

    if (v71 < 0)
    {
      operator delete(__p);
    }

    if (v15)
    {
      v17 = 1;
      goto LABEL_128;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v17 = 0;
    goto LABEL_130;
  }

  p_p = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v74, &__p);
  v36 = this->__equivalences_.__begin_;
  v37 = v71;
  v38 = this->__equivalences_.__end_ - v36;
  if (v38)
  {
    v39 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    if (v71 >= 0)
    {
      v40 = v71;
    }

    else
    {
      v40 = v70;
    }

    if (v71 < 0)
    {
      p_p = __p;
    }

    if (v39 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = 0xAAAAAAAAAAAAAAABLL * (v38 >> 3);
    }

    v42 = 1;
    v43 = 1;
    while (1)
    {
      size = HIBYTE(v36->__r_.__value_.__r.__words[2]);
      v45 = size;
      if ((size & 0x80u) != 0)
      {
        size = v36->__r_.__value_.__l.__size_;
      }

      if (v40 == size)
      {
        v46 = v45 >= 0 ? v36 : v36->__r_.__value_.__r.__words[0];
        if (!memcmp(p_p, v46, v40))
        {
          break;
        }
      }

      v43 = v42++ < v39;
      ++v36;
      if (!--v41)
      {
        goto LABEL_125;
      }
    }

    v17 = 1;
    v16 = 5;
    if (v37 < 0)
    {
LABEL_126:
      operator delete(__p);
    }
  }

  else
  {
    v43 = 0;
LABEL_125:
    v16 = 0;
    v17 = 0;
    if (v37 < 0)
    {
      goto LABEL_126;
    }
  }

  if (!v43)
  {
LABEL_130:
    if (v72 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v65 = tab[v72];
      if (((v65 & mask) != 0 || v72 == 95 && (mask & 0x80) != 0) && (v73 & 0x8000000000000000) == 0 && ((tab[v73] & mask) != 0 || (mask & 0x80) != 0 && v73 == 95))
      {
        goto LABEL_148;
      }

      neg_mask = this->__neg_mask_;
      if ((v65 & neg_mask) != 0 || v72 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_147:
        negate = v17;
LABEL_149:
        v18 = 2;
        goto LABEL_54;
      }
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v73] & neg_mask) == 0)
      {
        negate = 1;
        if (v73 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_147;
    }

LABEL_148:
    negate = 1;
    goto LABEL_149;
  }

LABEL_128:
  v18 = 2;
  negate = v17;
  if (v16)
  {
    goto LABEL_54;
  }

LABEL_32:
  v21 = *a2->__current_;
  v72 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v21) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v21);
    v72 = v21;
  }

  v22 = this->__chars_.__begin_;
  v23 = this->__chars_.__end_ - v22;
  if (v23)
  {
    if (v23 <= 1)
    {
      v23 = 1;
    }

    do
    {
      v24 = *v22++;
      if (v24 == v21)
      {
        goto LABEL_53;
      }
    }

    while (--v23);
  }

  v25 = this->__neg_mask_;
  if (v25 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v21 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v21] & v25) == 0)
    {
      v26 = (v21 == 95) & (v25 >> 7);
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    end = this->__neg_chars_.__end_;
    v28 = memchr(this->__neg_chars_.__begin_, v21, end - this->__neg_chars_.__begin_);
    v29 = !v28 || v28 == end;
    v30 = !v29;
    if ((v26 & 1) == 0 && !v30)
    {
LABEL_53:
      negate = 1;
      goto LABEL_54;
    }
  }

  v33 = this->__ranges_.__begin_;
  v34 = this->__ranges_.__end_;
  if (v33 == v34)
  {
    goto LABEL_91;
  }

  if (this->__collate_)
  {
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v72, &v73);
    v33 = this->__ranges_.__begin_;
    v34 = this->__ranges_.__end_;
  }

  else
  {
    v71 = 1;
    LOWORD(__p) = v21;
  }

  if (v34 == v33)
  {
LABEL_87:
    v49 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    while (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v33[v47].first.__r_.__value_.__r.__words, &__p) > 0 || std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &this->__ranges_.__begin_[v47].second.__r_.__value_.__l.__data_) >= 1)
    {
      ++v48;
      v33 = this->__ranges_.__begin_;
      ++v47;
      if (v48 >= 0xAAAAAAAAAAAAAAABLL * ((this->__ranges_.__end_ - v33) >> 4))
      {
        goto LABEL_87;
      }
    }

    v49 = 1;
    negate = 1;
  }

  if (v71 < 0)
  {
    operator delete(__p);
  }

  if ((v49 & 1) == 0)
  {
LABEL_91:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
LABEL_119:
      v61 = this->__mask_;
      if ((v72 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v72] & v61) != 0)
      {
        goto LABEL_53;
      }

      v62 = (v61 >> 7) & 1;
      if (v72 != 95)
      {
        LOBYTE(v62) = 0;
      }

      negate |= v62;
      goto LABEL_54;
    }

    v50 = &__p;
    std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v72, &v73, &__p);
    v51 = this->__equivalences_.__begin_;
    v52 = this->__equivalences_.__end_ - v51;
    if (v52)
    {
      v67 = v71;
      v68 = v18;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      if (v71 >= 0)
      {
        v54 = v71;
      }

      else
      {
        v54 = v70;
      }

      if (v71 < 0)
      {
        v50 = __p;
      }

      if (v53 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
      }

      v56 = 1;
      v57 = 1;
      while (1)
      {
        v58 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
        v59 = v58;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v51->__r_.__value_.__l.__size_;
        }

        if (v54 == v58)
        {
          v60 = v59 >= 0 ? v51 : v51->__r_.__value_.__r.__words[0];
          if (!memcmp(v50, v60, v54))
          {
            break;
          }
        }

        v57 = v56++ < v53;
        ++v51;
        if (!--v55)
        {
          goto LABEL_116;
        }
      }

      negate = 1;
LABEL_116:
      v18 = v68;
      if ((v67 & 0x80) == 0)
      {
LABEL_118:
        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v57 = 0;
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p);
    goto LABEL_118;
  }

LABEL_54:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v32 = -993;
  }

  else
  {
    a2->__current_ += v18;
    first = this->__first_;
    v32 = -995;
  }

  a2->__do_ = v32;
  a2->__node_ = first;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25159D730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_25159D8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25159D9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  v9 = 0;
  v10 = 0;
  v30 = 0uLL;
  v31 = 0;
  if (a2 + 1 != a3 && v5 == 91)
  {
    v11 = a2[1];
    switch(v11)
    {
      case '.':
        v4 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, a2 + 2, a3, &v30);
        v9 = HIBYTE(v31);
        v10 = *(&v30 + 1);
        break;
      case ':':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(a1, a2 + 2, a3, a4);
        goto LABEL_10;
      case '=':
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(a1, a2 + 2, a3, a4);
LABEL_10:
        v6 = v12;
        v13 = 0;
        goto LABEL_48;
      default:
        v10 = 0;
        v9 = 0;
        break;
    }
  }

  v14 = *(a1 + 24) & 0x1F0;
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v15 = v4;
    goto LABEL_28;
  }

  if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
  {
    v16 = *v4;
    if (v16 == 92)
    {
      if (v14)
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4 + 1, a3, &v30);
      }

      else
      {
        v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v4 + 1, a3, &v30, v6);
      }

      v15 = v17;
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v16) = *v4;
  }

  if ((v9 & 0x80) != 0)
  {
    v18 = v30;
    *(&v30 + 1) = 1;
  }

  else
  {
    HIBYTE(v31) = 1;
    v18 = &v30;
  }

  *v18 = v16;
  *(v18 + 1) = 0;
  v15 = v4 + 1;
LABEL_28:
  if (v15 == a3 || (v19 = *v15, v19 == 93) || (v21 = v15 + 1, v15 + 1 == a3) || v19 != 45 || *v21 == 93)
  {
    if (SHIBYTE(v31) < 0)
    {
      if (*(&v30 + 1))
      {
        if (*(&v30 + 1) != 1)
        {
          v20 = v30;
LABEL_46:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v6, *v20, *(v20 + 1));
          goto LABEL_47;
        }

        v20 = v30;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v31))
    {
      v20 = &v30;
      if (HIBYTE(v31) != 1)
      {
        goto LABEL_46;
      }

LABEL_37:
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, *v20);
    }

LABEL_47:
    v13 = 1;
    v4 = v15;
    goto LABEL_48;
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v4 = v15 + 2;
  if (v15 + 2 != a3 && *v21 == 91 && *v4 == 46)
  {
    v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v15 + 3, a3, v28);
LABEL_60:
    v4 = v22;
    goto LABEL_61;
  }

  if ((v14 | 0x40) == 0x40)
  {
    LODWORD(v21) = *v21;
    if (v21 == 92)
    {
      if (v14)
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v15 + 2, a3, v28);
      }

      else
      {
        v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v15 + 2, a3, v28, v6);
      }

      goto LABEL_60;
    }
  }

  else
  {
    LOBYTE(v21) = *v21;
  }

  HIBYTE(v29) = 1;
  LOWORD(v28[0]) = v21;
LABEL_61:
  *v26 = v30;
  v27 = v31;
  v31 = 0;
  v30 = 0uLL;
  *__p = *v28;
  v25 = v29;
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](v6, v26, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v13 = 1;
LABEL_48:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v13)
  {
    return v4;
  }

  return v6;
}

void sub_25159DEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  std::regex_traits<char>::__transform_primary<char *>(a1, v11, &v11[v10], __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    std::vector<std::string>::push_back[abi:ne200100](a4 + 136, __p);
  }

  else
  {
    v13 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v13 = v20;
    }

    if (v13 == 2)
    {
      v15 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v15 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v15, v15[1]);
    }

    else
    {
      if (v13 != 1)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v14 = &v19;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v19;
      }

      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v14);
    }
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_25159E0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = std::regex_traits<char>::__lookup_classname<char const*>(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char *>(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v6 == 68)
    {
      v7 = *(a5 + 164) | 0x400;
LABEL_22:
      *(a5 + 164) = v7;
      return a2 + 1;
    }

    goto LABEL_25;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) == 1)
  {
    if (*(a1 + 169))
    {
      for (i = 0; ; ++i)
      {
        v7 = v4[23];
        v8 = v7 < 0 ? *(v4 + 1) : v4[23];
        if (i >= v8)
        {
          break;
        }

        v9 = v4;
        if ((v7 & 0x80000000) != 0)
        {
          v9 = *v4;
        }

        v10 = (*(**(a1 + 24) + 40))(*(a1 + 24), v9[i]);
        v11 = v4;
        if (v4[23] < 0)
        {
          v11 = *v4;
        }

        v11[i] = v10;
      }

      for (j = 0; ; ++j)
      {
        v20 = v3[23];
        v21 = v20 < 0 ? *(v3 + 1) : v3[23];
        if (j >= v21)
        {
          break;
        }

        v22 = v3;
        if ((v20 & 0x80000000) != 0)
        {
          v22 = *v3;
        }

        v23 = (*(**(a1 + 24) + 40))(*(a1 + 24), v22[j]);
        v24 = v3;
        if (v3[23] < 0)
        {
          v24 = *v3;
        }

        v24[j] = v23;
      }
    }

    else
    {
      for (k = 0; ; ++k)
      {
        v15 = a2[23];
        v16 = v15 < 0 ? *(a2 + 1) : a2[23];
        if (k >= v16)
        {
          break;
        }

        v17 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v17 = *a2;
        }

        v18 = a2;
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *a2;
        }

        v18[k] = v17[k];
      }

      for (m = 0; ; ++m)
      {
        v26 = a3[23];
        v27 = v26 < 0 ? *(a3 + 1) : a3[23];
        if (m >= v27)
        {
          break;
        }

        v28 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v28 = *a3;
        }

        v29 = a3;
        if ((v26 & 0x80000000) != 0)
        {
          v29 = *a3;
        }

        v29[m] = v28[m];
      }
    }

    v30 = v4[23];
    if (v30 < 0)
    {
      v31 = v4;
      v4 = *v4;
      v30 = *(v31 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v4, &v4[v30]);
    v32 = v3[23];
    if (v32 < 0)
    {
      v33 = v3;
      v3 = *v3;
      v32 = *(v33 + 1);
    }

    std::regex_traits<char>::transform<char *>(a1 + 16, v3, &v3[v32]);
    *v45 = v43;
    v46 = v44;
    *__p = *v41;
    v48 = v42;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }

  else
  {
    v12 = a2[23];
    if (v12 < 0)
    {
      v13 = *(a2 + 1);
    }

    else
    {
      v13 = a2[23];
    }

    if (v13 != 1)
    {
      goto LABEL_74;
    }

    v34 = a3[23];
    if (v34 < 0)
    {
      v34 = *(a3 + 1);
    }

    if (v34 != 1)
    {
LABEL_74:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
    }

    if (*(a1 + 169) == 1)
    {
      v35 = a2;
      if ((v12 & 0x80000000) != 0)
      {
        v35 = *a2;
      }

      v36 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v35);
      v37 = v4;
      if (v4[23] < 0)
      {
        v37 = *v4;
      }

      *v37 = v36;
      v38 = v3;
      if (v3[23] < 0)
      {
        v38 = *v3;
      }

      v39 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v38);
      v40 = v3;
      if (v3[23] < 0)
      {
        v40 = *v3;
      }

      *v40 = v39;
    }

    *v45 = *v4;
    v46 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    *__p = *v3;
    v48 = *(v3 + 2);
    *v3 = 0;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](a1 + 88, v45);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<char const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25307A150](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::regex_traits<char>::__lookup_classname<char const*>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v7, v7 + v6);
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  classname = std::__get_classname(v8, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return classname;
}

void sub_25159F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 64;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 64;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 64, &v7);
}