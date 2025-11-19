void sub_255939434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringRangeIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable37readByStringRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_48_4829;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 64) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable37readByStringRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("+stringValue", *(a1 + 40));
  if ((v9 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " and elementId in identifierBitmap(?4) order by elementId", 57);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255939788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readAllStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_49_4831;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select mergeLiteralBitmap(elementId) from ", 42);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " order by elementId", 19);
  operator new();
}

void sub_255939A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByIdentifier(degas::AggregateValueTable *this, sqlite3_int64 a2)
{
  v3 = degas::AggregateValueTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByAttrIdIdentifier(degas::AggregateValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::AggregateValueTable::readByAttrIdIdentifierStatement(this);
  degas::Statement::bindInteger(*v5, 1, a3);
  degas::Statement::bindInteger(*v5, 2, a2);
  return v5;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByBitmap(degas::AggregateValueTable *this, Bitmap *a2)
{
  v3 = degas::AggregateValueTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4)
{
  v6 = degas::AggregateValueTable::readByIntValueStatement(a1, a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindInteger(*v6, 2, a3);
  return v6;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, int a3, double a4)
{
  v6 = degas::AggregateValueTable::readByRealValueStatement(a1, a3);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindDouble(*v6, 2, a4);
  return v6;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4)
{
  v6 = degas::AggregateValueTable::readByStringValueStatement(a1, a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindString(*v6, 2, a3);
  return v6;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValues(uint64_t a1, sqlite3_int64 a2, void *a3, int a4, int a5)
{
  v8 = degas::AggregateValueTable::readByIntValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

{
  v8 = degas::AggregateValueTable::readByRealValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

{
  v8 = degas::AggregateValueTable::readByStringValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5)
{
  v8 = degas::AggregateValueTable::readByIntValueIdentifiersStatement(a1, a4);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindInteger(*v8, 3, a3);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, int a3, Bitmap *a4, double a5)
{
  v8 = degas::AggregateValueTable::readByRealValueIdentifiersStatement(a1, a3);
  degas::Statement::bindBitmapPointer(*v8, 1, a4);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindDouble(*v8, 3, a5);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4, Bitmap *a5)
{
  v8 = degas::AggregateValueTable::readByStringValueIdentifiersStatement(a1, a4);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindString(*v8, 3, a3);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(uint64_t a1, sqlite3_int64 a2, void *a3, int a4, int a5, Bitmap *a6)
{
  v10 = degas::AggregateValueTable::readByIntValuesIdentifiersStatement(a1, a5);
  degas::Statement::bindBitmapPointer(*v10, 1, a6);
  degas::Statement::bindInteger(*v10, 2, a2);
  degas::Statement::bindArrayPointer(*v10, 3, a3);
  degas::Statement::bindInteger(*v10, 4, a4);
  return v10;
}

{
  v10 = degas::AggregateValueTable::readByRealValuesIdentifiersStatement(a1, a5);
  degas::Statement::bindBitmapPointer(*v10, 1, a6);
  degas::Statement::bindInteger(*v10, 2, a2);
  degas::Statement::bindArrayPointer(*v10, 3, a3);
  degas::Statement::bindInteger(*v10, 4, a4);
  return v10;
}

{
  v10 = degas::AggregateValueTable::readByStringValuesIdentifiersStatement(a1, a5);
  degas::Statement::bindBitmapPointer(*v10, 1, a6);
  degas::Statement::bindInteger(*v10, 2, a2);
  degas::Statement::bindArrayPointer(*v10, 3, a3);
  degas::Statement::bindInteger(*v10, 4, a4);
  return v10;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5)
{
  v8 = degas::AggregateValueTable::readByIntRangeStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindInteger(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, int a3, double a4, double a5)
{
  v8 = degas::AggregateValueTable::readByRealRangeStatement(a1, a3);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindDouble(*v8, 2, a4);
  degas::Statement::bindDouble(*v8, 3, a5);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v8 = degas::AggregateValueTable::readByStringRangeStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindString(*v8, 2, a3);
  degas::Statement::bindString(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, Bitmap *a6)
{
  v10 = degas::AggregateValueTable::readByIntRangeIdentifiersStatement(a1, a5);
  degas::Statement::bindInteger(*v10, 1, a2);
  degas::Statement::bindInteger(*v10, 2, a3);
  degas::Statement::bindInteger(*v10, 3, a4);
  degas::Statement::bindBitmapPointer(*v10, 4, a6);
  return v10;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(uint64_t a1, sqlite3_int64 a2, int a3, Bitmap *a4, double a5, double a6)
{
  v10 = degas::AggregateValueTable::readByRealRangeIdentifiersStatement(a1, a3);
  degas::Statement::bindInteger(*v10, 1, a2);
  degas::Statement::bindDouble(*v10, 2, a5);
  degas::Statement::bindDouble(*v10, 3, a6);
  degas::Statement::bindBitmapPointer(*v10, 4, a4);
  return v10;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, Bitmap *a6)
{
  v10 = degas::AggregateValueTable::readByStringRangeIdentifiersStatement(a1, a5);
  degas::Statement::bindInteger(*v10, 1, a2);
  degas::Statement::bindString(*v10, 2, a3);
  degas::Statement::bindString(*v10, 3, a4);
  degas::Statement::bindBitmapPointer(*v10, 4, a6);
  return v10;
}

void *degas::AggregateValueCursor::AggregateValueCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, const degas::AggregateValueTable *a2)
{
  AllStatement = degas::AggregateValueTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  AllStatement = degas::AggregateValueTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, sqlite3_int64 a2, const degas::AggregateValueTable *a3)
{
  v5 = degas::AggregateValueTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, sqlite3_int64 a2, sqlite3_int64 a3, const degas::AggregateValueTable *a4)
{
  v5 = degas::AggregateValueTable::prepareStatementToReadByAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v5 = degas::AggregateValueTable::prepareStatementToReadByAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, Bitmap *a2, const degas::AggregateValueTable *a3)
{
  v5 = degas::AggregateValueTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

void degas::AggregateValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, uint64_t a5)
{
  v6 = degas::AggregateValueTable::prepareStatementToReadByValue(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AggregateValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, uint64_t a4, double a5)
{
  v6 = degas::AggregateValueTable::prepareStatementToReadByValue(a4, a2, a3, a5);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AggregateValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, int a4, uint64_t a5)
{
  v6 = degas::AggregateValueTable::prepareStatementToReadByValue(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AggregateValueCursor::setForValues(sqlite3_stmt ***a1, sqlite3_int64 a2, void *a3, int a4, int a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, Bitmap *a4, uint64_t a5, double a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(a5, a2, a3, a4, a6);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, int a4, Bitmap *a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValues(sqlite3_stmt ***a1, sqlite3_int64 a2, void *a3, int a4, int a5, Bitmap *a6, uint64_t a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  v8 = degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  v8 = degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void degas::AggregateValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByRange(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, uint64_t a4, double a5, double a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByRange(a4, a2, a3, a5, a6);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByRange(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, Bitmap *a6, uint64_t a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void degas::AggregateValueCursor::setToFilterForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, Bitmap *a4, uint64_t a5, double a6, double a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(a5, a2, a3, a4, a6, a7);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void degas::AggregateValueCursor::setToFilterForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, Bitmap *a6, uint64_t a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

uint64_t degas::NodeTable::deleteEntry(sqlite3 **this, sqlite3_int64 a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = degas::NodeTable::deleteStatement(this);
  degas::Statement::bindInteger(*v4, 1, a2);
  v5 = degas::Statement::update(*v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = sqlite3_errmsg(this[4]);
    v9 = 136315138;
    v10 = v8;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "node delete failed: %s", &v9, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

degas::Statement **degas::NodeTable::deleteStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8_4943;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable15deleteStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "delete from ", 12);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where identifier=?1", 20);
  operator new();
}

void sub_25593C634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::NodeTable::createTable(degas::NodeTable *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "create table ", 13);
  v2 = *(this + 31);
  if (v2 >= 0)
  {
    v3 = this + 8;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 31);
  }

  else
  {
    v4 = *(this + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " (identifier integer primary key autoincrement, labels blob, edgesIn blob, edgesOut blob)", 89);
  v5 = *(this + 4);
  std::stringbuf::str();
  degas::Statement::Statement(ppStmt, v5, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v15);
  return v6;
}

void sub_25593C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  degas::Statement::~Statement(&a16);
  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void degas::NodeTable::~NodeTable(degas::NodeTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::NodeTable::NodeTable(void *a1, uint64_t a2, __int128 *a3, char a4, char a5, uint64_t a6)
{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9DA0;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9DA0;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

degas::Statement **degas::NodeTable::insertStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4950;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable15insertStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "insert into ", 12);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " (identifier, labels, edgesIn, edgesOut) values(?1, ?2, ?3, ?4)", 63);
  operator new();
}

void sub_25593CCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::updateStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x400;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable15updateStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_5_4953;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable15updateStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "update ", 7);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " set edgesIn=?2, edgesOut=?3 where identifier=?1", 48);
  operator new();
}

void sub_25593CFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByIdentifierStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_4956;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where identifier=?1", 20);
  operator new();
}

void sub_25593D274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByBitmapStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_13;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " n, identifierBitmap(?) b where n.identifier = b.value", 54);
  operator new();
}

void sub_25593D53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByLabelStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable20readByLabelStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_15;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable20readByLabelStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where bitmapContainsIdentifier(labels, ?1)", 43);
  operator new();
}

void sub_25593D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAllLabelsStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x802;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable24readByAllLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_17_4961;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable24readByAllLabelsStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where bitmapContainsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_25593DACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAllLabelsAndIdentifiersStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x803;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_19_4963;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " n, identifierBitmap(?1) b where n.identifier = b.value and bitmapContainsBitmap(n.labels, ?2)", 94);
  operator new();
}

void sub_25593DD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAnyLabelsStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x804;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable24readByAnyLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_21;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable24readByAnyLabelsStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where bitmapOverlapsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_25593E05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAnyLabelsAndIdentifiersStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x805;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_23_4966;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " n, identifierBitmap(?1) b where n.identifier = b.value and bitmapOverlapsBitmap(n.labels, ?2)", 94);
  operator new();
}

void sub_25593E324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readAllStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_25_4968;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " order by identifier", 20);
  operator new();
}

void sub_25593E5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readWhereNoEdgesStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x806;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable25readWhereNoEdgesStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_27_4970;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable25readWhereNoEdgesStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " n where not exists (select * from Edge e where e.sourceNodeId = n.identifier or e.targetNodeId = n.identifier)", 111);
  operator new();
}

void sub_25593E8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readWhereNoInEdgesStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x807;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable27readWhereNoInEdgesStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_29_4972;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable27readWhereNoInEdgesStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " n where not exists (select * from Edge e where e.targetNodeId = n.identifier)", 78);
  operator new();
}

void sub_25593EB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readWhereNoOutEdgesStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x808;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable28readWhereNoOutEdgesStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_31_4974;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable28readWhereNoOutEdgesStatementEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v2 = *(v1 + 31);
  if (v2 >= 0)
  {
    v3 = v1 + 8;
  }

  else
  {
    v3 = *(v1 + 8);
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 31);
  }

  else
  {
    v4 = *(v1 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " n where not exists (select * from Edge e where e.sourceNodeId = n.identifier)", 78);
  operator new();
}

void sub_25593EE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::NodeTable::insert(sqlite3 **this, sqlite3_int64 *a2, const degas::Bitmap *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  inserted = degas::NodeTable::insertStatement(this);
  v7 = *inserted;
  if (*a2)
  {
    degas::Statement::bindInteger(v7, 1, *a2);
  }

  else
  {
    degas::Statement::bindNull(v7, 1);
  }

  degas::Statement::bindBitmap(*inserted, 2, a3);
  v12 = 0u;
  memset(v13, 0, 25);
  degas::Statement::bindBitmap(*inserted, 3, &v12);
  degas::Statement::bindBitmap(*inserted, 4, &v12);
  v8 = degas::Statement::update(*inserted);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(this[4]);
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "node insert failed: %s", buf, 0xCu);
    }
  }

  else if (!*a2)
  {
    *a2 = sqlite3_last_insert_rowid(this[4]);
  }

  *buf = v13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_25593EFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

sqlite3_stmt ***degas::NodeTable::prepareStatementToReadByIdentifier(degas::NodeTable *this, sqlite3_int64 a2)
{
  v3 = degas::NodeTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::NodeTable::prepareStatementToReadByBitmap(degas::NodeTable *this, Bitmap *a2)
{
  v3 = degas::NodeTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::NodeTable::prepareStatementToReadByLabel(degas::NodeTable *this, sqlite3_int64 a2)
{
  v3 = degas::NodeTable::readByLabelStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

degas::Statement **degas::NodeTable::prepareStatementToReadByAllLabels(degas::NodeTable *this, const degas::Bitmap *a2)
{
  v3 = degas::NodeTable::readByAllLabelsStatement(this);
  degas::Statement::bindBitmap(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::NodeTable::prepareStatementToReadByAllLabelsAndIdentifiers(degas::NodeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  v5 = degas::NodeTable::readByAllLabelsAndIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a3);
  degas::Statement::bindBitmap(*v5, 2, a2);
  return v5;
}

degas::Statement **degas::NodeTable::prepareStatementToReadByAnyLabels(degas::NodeTable *this, const degas::Bitmap *a2)
{
  v3 = degas::NodeTable::readByAnyLabelsStatement(this);
  degas::Statement::bindBitmap(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::NodeTable::prepareStatementToReadByAnyLabelsAndIdentifiers(degas::NodeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  v5 = degas::NodeTable::readByAnyLabelsAndIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a3);
  degas::Statement::bindBitmap(*v5, 2, a2);
  return v5;
}

uint64_t degas::NodeTable::update(sqlite3 **this, sqlite3_int64 a2, const degas::Bitmap *a3, const degas::Bitmap *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  updated = degas::NodeTable::updateStatement(this);
  degas::Statement::bindInteger(*updated, 1, a2);
  degas::Statement::bindBitmap(*updated, 2, a3);
  degas::Statement::bindBitmap(*updated, 3, a4);
  v9 = degas::Statement::update(*updated);
  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = sqlite3_errmsg(this[4]);
    v13 = 136315138;
    v14 = v12;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "node update failed: %s", &v13, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t degas::NodeTable::update(sqlite3 **this, sqlite3_int64 a2, const degas::LiteralBitmap *a3, const degas::LiteralBitmap *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  updated = degas::NodeTable::updateStatement(this);
  degas::Statement::bindInteger(*updated, 1, a2);
  degas::Statement::bindLiteralBitmap(*updated, 2, a3);
  degas::Statement::bindLiteralBitmap(*updated, 3, a4);
  v9 = degas::Statement::update(*updated);
  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = sqlite3_errmsg(this[4]);
    v13 = 136315138;
    v14 = v12;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "node update failed: %s", &v13, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *degas::NodeCursor::NodeCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void degas::NodeCursor::setForSelectAll(degas::NodeCursor *this, const degas::NodeTable *a2)
{
  AllStatement = degas::NodeTable::readAllStatement(a2);
  v5 = *AllStatement;
  v4 = AllStatement[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 1);
  *this = v5;
  *(this + 1) = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void degas::NodeCursor::setForIdentifier(degas::NodeCursor *this, sqlite3_int64 a2, const degas::NodeTable *a3)
{
  v5 = degas::NodeTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForIdentifiers(degas::NodeCursor *this, Bitmap *a2, const degas::NodeTable *a3)
{
  v5 = degas::NodeTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForLabel(degas::NodeCursor *this, sqlite3_int64 a2, const degas::NodeTable *a3)
{
  v5 = degas::NodeTable::readByLabelStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForAllLabels(degas::NodeCursor *this, const degas::Bitmap *a2, const degas::NodeTable *a3)
{
  v5 = degas::NodeTable::readByAllLabelsStatement(a3);
  degas::Statement::bindBitmap(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForAllLabelsAndIdentifiers(degas::NodeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::NodeTable *a4)
{
  v5 = degas::NodeTable::prepareStatementToReadByAllLabelsAndIdentifiers(a4, a2, a3);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForAnyLabels(degas::NodeCursor *this, const degas::Bitmap *a2, const degas::NodeTable *a3)
{
  v5 = degas::NodeTable::readByAnyLabelsStatement(a3);
  degas::Statement::bindBitmap(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForAnyLabelsAndIdentifiers(degas::NodeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::NodeTable *a4)
{
  v5 = degas::NodeTable::prepareStatementToReadByAnyLabelsAndIdentifiers(a4, a2, a3);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::NodeCursor::setForNoEdges(degas::NodeCursor *this, const degas::NodeTable *a2)
{
  WhereNoEdgesStatement = degas::NodeTable::readWhereNoEdgesStatement(a2);
  v5 = *WhereNoEdgesStatement;
  v4 = WhereNoEdgesStatement[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 1);
  *this = v5;
  *(this + 1) = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void degas::NodeCursor::setForNoInEdges(degas::NodeCursor *this, const degas::NodeTable *a2)
{
  WhereNoInEdgesStatement = degas::NodeTable::readWhereNoInEdgesStatement(a2);
  v5 = *WhereNoInEdgesStatement;
  v4 = WhereNoInEdgesStatement[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 1);
  *this = v5;
  *(this + 1) = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void degas::NodeCursor::setForNoOutEdges(degas::NodeCursor *this, const degas::NodeTable *a2)
{
  WhereNoOutEdgesStatement = degas::NodeTable::readWhereNoOutEdgesStatement(a2);
  v5 = *WhereNoOutEdgesStatement;
  v4 = WhereNoOutEdgesStatement[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 1);
  *this = v5;
  *(this + 1) = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

BOOL degas::callstackFrames(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  v2 = backtrace(v15, 30);
  v3 = v2;
  if (v2 >= 2)
  {
    v4 = 8 * v2;
    for (i = 8; v4 != i; i += 8)
    {
      if (dladdr(v15[i / 8], &v14))
      {
        dli_sname = v14.dli_sname;
        if (!v14.dli_sname)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "redacted");
          std::vector<std::string>::push_back[abi:ne200100](a1, __p);
          goto LABEL_12;
        }

        status = 0;
        v7 = __cxa_demangle(v14.dli_sname, 0, 0, &status);
        if (status || (v8 = v7) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, dli_sname);
          std::vector<std::string>::push_back[abi:ne200100](a1, __p);
LABEL_12:
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }

          continue;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v7);
        std::vector<std::string>::push_back[abi:ne200100](a1, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        free(v8);
      }
    }
  }

  result = v3 > 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255942910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

BOOL degas::callstack(uint64_t a1)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  degas::callstackFrames(&v22);
  v2 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
  if (v2 >= 2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
    v3 = v22;
    if (0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3) >= 2)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = v3 + v4;
        v9 = *(v6 + 24);
        v7 = v6 + 24;
        v8 = v9;
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v8;
        }

        if (v10 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = *(v7 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v11, v12);
        LOBYTE(v15[0].__locale_) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v15, 1);
        ++v5;
        v3 = v22;
        v4 += 24;
      }

      while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
    }

    std::ios_base::getloc((&v17 + *(v17 - 3)));
    v13 = std::locale::use_facet(v15, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v15);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = *&v15[0].__locale_;
    *(a1 + 16) = v16;
    v17 = *MEMORY[0x277D82828];
    *(&v17 + *(v17 - 3)) = *(MEMORY[0x277D82828] + 24);
    v18 = MEMORY[0x277D82878] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v19);
    std::ostream::~ostream();
    MEMORY[0x259C43E80](&v21);
  }

  v17 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v2 > 1;
}

void sub_255942D28(_Unwind_Exception *a1, uint64_t a2, std::locale a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  std::ostringstream::~ostringstream(&a6);
  MEMORY[0x259C43E80](va);
  a6 = v19 - 88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a6);
  _Unwind_Resume(a1);
}

uint64_t degas::DegasLoggingConnection(degas *this)
{
  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  return degas::DegasLoggingConnection(void)::log;
}

os_log_t ___ZN5degas22DegasLoggingConnectionEv_block_invoke()
{
  result = os_log_create("com.apple.photos.graph", "KnowledgeGraphDatabase");
  degas::DegasLoggingConnection(void)::log = result;
  return result;
}

_DWORD *degas::LocalLogFile::LocalLogFile(_DWORD *a1, __int128 *a2)
{
  *a1 = -1;
  v3 = (a1 + 2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

{
  *a1 = -1;
  v3 = (a1 + 2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void degas::LocalLogFile::open(degas::LocalLogFile *this)
{
  v22 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__temp_directory_path(&v19, 0);
  if (*(this + 31) < 0)
  {
    if (!*(this + 2))
    {
      goto LABEL_9;
    }

    v2 = *(this + 1);
  }

  else
  {
    v2 = this + 8;
    if (!*(this + 31))
    {
      goto LABEL_9;
    }
  }

  if (*v2 == 47)
  {
    if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      *v19.__pn_.__r_.__value_.__l.__data_ = 0;
      v19.__pn_.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v19.__pn_.__r_.__value_.__s.__data_[0] = 0;
      *(&v19.__pn_.__r_.__value_.__s + 23) = 0;
    }

    goto LABEL_12;
  }

LABEL_9:
  if (std::__fs::filesystem::path::__filename(&v19).__size_)
  {
    std::string::push_back(&v19.__pn_, 47);
  }

LABEL_12:
  v3 = *(this + 31);
  if (v3 >= 0)
  {
    v4 = (this + 8);
  }

  else
  {
    v4 = *(this + 1);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 31);
  }

  else
  {
    v5 = *(this + 2);
  }

  size = SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!v5)
    {
      goto LABEL_46;
    }

    size = v19.__pn_.__r_.__value_.__l.__size_;
    v8 = (v19.__pn_.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v7 = v19.__pn_.__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_44;
    }

    v7 = &v19;
    v8 = 22;
    v9 = HIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]);
  }

  if (v7 > v4 || (&v7->__pn_.__r_.__value_.__l.__data_ + size + 1) <= v4)
  {
    if (v8 - size < v5)
    {
      std::string::__grow_by(&v19.__pn_, v8, size - v8 + v5, size, size, 0, 0);
      v19.__pn_.__r_.__value_.__l.__size_ = size;
      v9 = HIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]);
    }

    v10 = v9 < 0;
    v11 = &v19;
    if (v10)
    {
      v11 = v19.__pn_.__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, v4, v5);
    v12[v5] = 0;
    if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v19.__pn_.__r_.__value_.__l.__size_ = v5 + size;
      goto LABEL_46;
    }

    *(&v19.__pn_.__r_.__value_.__s + 23) = (v5 + size) & 0x7F;
LABEL_44:
    v15 = &v19;
    goto LABEL_47;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v21 = v5;
  memmove(&__dst, v4, v5);
  *(&__dst + v5) = 0;
  if ((v21 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v21 & 0x80u) == 0)
  {
    v14 = v21;
  }

  else
  {
    v14 = *(&__dst + 1);
  }

  std::string::append(&v19.__pn_, p_dst, v14);
  if (v21 < 0)
  {
    operator delete(__dst);
  }

  if ((SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v15 = v19.__pn_.__r_.__value_.__r.__words[0];
LABEL_47:
  *this = open(v15, 513, 438);
  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v16 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    v17 = &v19;
    if ((v19.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v19.__pn_.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst) = 136315138;
    *(&__dst + 4) = v17;
    _os_log_impl(&dword_255870000, v16, OS_LOG_TYPE_INFO, "local log file open at %s\n", &__dst, 0xCu);
  }

  if (SHIBYTE(v19.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__pn_.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2559431C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::LocalLogFile::writeText(degas::LocalLogFile *this, const void **a2)
{
  v4 = *this;
  if (v4 <= 0)
  {
    degas::LocalLogFile::open(this);
    v4 = *this;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  write(v4, v6, v7);
  v8 = *this;

  return fsync(v8);
}

uint64_t degas::LocalLogFile::close(degas::LocalLogFile *this)
{
  result = *this;
  if (result >= 1)
  {
    result = close(result);
    *this = -1;
  }

  return result;
}

void degas::YesNodePredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::YesNodePredicate::elements(degas::YesNodePredicate *this, degas::Bitmap *a2)
{
  v2 = *(this + 1);
  v4[0] = (v2 + 192);
  v4[1] = v2;
  return degas::NodeLabelQuery::allNodes(v4, a2);
}

void degas::YesEdgePredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::YesEdgePredicate::elements(degas::YesEdgePredicate *this, degas::Bitmap *a2)
{
  v2 = *(this + 1);
  v4[0] = (v2 + 248);
  v4[1] = v2;
  return degas::EdgeLabelQuery::allEdges(v4, a2);
}

void degas::NoPredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t degas::NoPredicate::filterElements(degas::NoPredicate *this, const Bitmap *a2, Bitmap *a3)
{
  a3->_bitCount = 0;
  a3->_lastOffsetFoundAt = 0;
  begin = a3->_bitSets.__begin_;
  for (i = a3->_bitSets.__end_; i != begin; i = (i - 16))
  {
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 1) = 0;
  }

  a3->_bitSets.__end_ = begin;
  return 0;
}

uint64_t degas::NoPredicate::elements(degas::NoPredicate *this, Bitmap *a2)
{
  a2->_bitCount = 0;
  a2->_lastOffsetFoundAt = 0;
  begin = a2->_bitSets.__begin_;
  for (i = a2->_bitSets.__end_; i != begin; i = (i - 16))
  {
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 1) = 0;
  }

  a2->_bitSets.__end_ = begin;
  return 0;
}

uint64_t degas::AllLabelsNodePredicate::debugDescription(degas::AllLabelsNodePredicate *this, const degas::Database *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "all these labels:(", 18);
  degas::Bitmap::begin(this + 1, &v14);
  v3 = *(this + 4);
  for (i = 1; ; i = 0)
  {
    v5 = v15;
    v6 = v14 == (this + 8) && v15 == -1;
    if (v6 && v16 == v3)
    {
      break;
    }

    if ((i & 1) == 0)
    {
      LOBYTE(__p) = 44;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    degas::Database::getLabelName(*(this + 8), v5, &__p);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = v12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v9);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    degas::Bitmap::iterator::operator++(&v14);
  }

  LOBYTE(v14) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v14, 1);
  std::stringbuf::str();
  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v21);
}

void degas::AllLabelsNodePredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[2] = 0;
  a2[3] = 0;
}

void degas::AllLabelsNodePredicate::~AllLabelsNodePredicate(degas::AllLabelsNodePredicate *this)
{
  *this = &unk_2867A9F10;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9F10;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::AnyLabelsNodePredicate::debugDescription(degas::AnyLabelsNodePredicate *this, const degas::Database *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "any of these labels:(", 21);
  degas::Bitmap::begin(this + 1, &v14);
  v3 = *(this + 4);
  for (i = 1; ; i = 0)
  {
    v5 = v15;
    v6 = v14 == (this + 8) && v15 == -1;
    if (v6 && v16 == v3)
    {
      break;
    }

    if ((i & 1) == 0)
    {
      LOBYTE(__p) = 44;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    degas::Database::getLabelName(*(this + 8), v5, &__p);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = v12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v9);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    degas::Bitmap::iterator::operator++(&v14);
  }

  LOBYTE(v14) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v14, 1);
  std::stringbuf::str();
  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v21);
}

void degas::AnyLabelsNodePredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void degas::AnyLabelsNodePredicate::~AnyLabelsNodePredicate(degas::AnyLabelsNodePredicate *this)
{
  *this = &unk_2867A9F68;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9F68;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::AllLabelsEdgePredicate::debugDescription(degas::AllLabelsEdgePredicate *this, const degas::Database *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "all these labels:(", 18);
  degas::Bitmap::begin(this + 1, &v14);
  v3 = *(this + 4);
  for (i = 1; ; i = 0)
  {
    v5 = v15;
    v6 = v14 == (this + 8) && v15 == -1;
    if (v6 && v16 == v3)
    {
      break;
    }

    if ((i & 1) == 0)
    {
      LOBYTE(__p) = 44;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    degas::Database::getLabelName(*(this + 8), v5, &__p);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = v12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v9);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    degas::Bitmap::iterator::operator++(&v14);
  }

  LOBYTE(v14) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v14, 1);
  std::stringbuf::str();
  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v21);
}

void degas::AllLabelsEdgePredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[2] = 0;
  a2[3] = 0;
}

void degas::AllLabelsEdgePredicate::~AllLabelsEdgePredicate(degas::AllLabelsEdgePredicate *this)
{
  *this = &unk_2867A9FC0;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9FC0;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::AnyLabelsEdgePredicate::debugDescription(degas::AnyLabelsEdgePredicate *this, const degas::Database *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "any of these labels:(", 21);
  degas::Bitmap::begin(this + 1, &v14);
  v3 = *(this + 4);
  for (i = 1; ; i = 0)
  {
    v5 = v15;
    v6 = v14 == (this + 8) && v15 == -1;
    if (v6 && v16 == v3)
    {
      break;
    }

    if ((i & 1) == 0)
    {
      LOBYTE(__p) = 44;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &__p, 1);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    degas::Database::getLabelName(*(this + 8), v5, &__p);
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v13 >= 0)
    {
      v9 = HIBYTE(v13);
    }

    else
    {
      v9 = v12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v9);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    degas::Bitmap::iterator::operator++(&v14);
  }

  LOBYTE(v14) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v14, 1);
  std::stringbuf::str();
  v17 = *MEMORY[0x277D82828];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x277D82828] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v21);
}

void degas::AnyLabelsEdgePredicate::decomposeLabelsPredicate(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a1[1];
  a2[2] = *a1;
  a2[3] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void degas::AnyLabelsEdgePredicate::~AnyLabelsEdgePredicate(degas::AnyLabelsEdgePredicate *this)
{
  *this = &unk_2867AA018;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA018;
  v1 = (this + 24);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::IntersectPredicate::debugDescription(degas::IntersectPredicate *this, const degas::Database *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  LOBYTE(__p[0]) = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 1;
    while (1)
    {
      v8 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " and ", 5);
      }

      (*(*v8 + 64))(__p, v8, a2);
      v9 = (v13 & 0x80u) == 0 ? __p : __p[0];
      v10 = (v13 & 0x80u) == 0 ? v13 : __p[1];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v9, v10);
      if (v13 < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_15;
      }

LABEL_16:
      v6 = 0;
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_20;
      }
    }

    operator delete(__p[0]);
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_16;
  }

LABEL_20:
  LOBYTE(__p[0]) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
  std::stringbuf::str();
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v18);
}

uint64_t degas::IntersectPredicate::isTrivialNo(degas::IntersectPredicate *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v4 = v1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 56))(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v1 += 2;
    if (v1 == v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }
  }

  while (v6 != 1);
  return v5;
}

void sub_255944804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::IntersectPredicate::isTrivialYes(degas::IntersectPredicate *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    v3 = *v1;
    v4 = v1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 48))(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v1 += 2;
    if (v1 == v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  while ((v6 & 1) != 0);
  return v5;
}

void sub_2559448B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void degas::IntersectPredicate::decomposeLabelsPredicate(uint64_t a1@<X0>, std::__shared_weak_count **a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  v30 = 0;
  v31 = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
    v11 = a2[1];
    a3[2] = *a2;
    a3[3] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v28 = *v5;
      v29 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v8 + 4))(&v24);
      v10 = v24;
      if (v24)
      {
        break;
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      v5 += 16;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    v12 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v26;
    v13 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v14;
    v31 = v13;
    v16 = v28;
    v15 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (v17 == v18)
    {
      v28 = 0;
      v29 = 0;
    }

    else
    {
      do
      {
        v19 = *v17;
        v20 = v17[1];
        v28 = *v17;
        v29 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v19 != v16 || v14 != 0)
        {
          if (v19 == v16)
          {
            v22 = &v30;
          }

          else
          {
            v22 = &v28;
          }

          std::vector<std::shared_ptr<degas::Predicate>>::push_back[abi:ne200100](&v24, v22);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v17 += 2;
      }

      while (v17 != v18);
      v28 = 0;
      v29 = 0;
      if (v25 != v24)
      {
        operator new();
      }
    }

    *a3 = v10;
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v29;
    a3[2] = v28;
    a3[3] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v28 = &v24;
    std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v28);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_255944B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  MEMORY[0x259C43EB0](v17, 0xA1C4030951706);
  a17 = &a13;
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<degas::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::Predicate>*,std::shared_ptr<degas::Predicate>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(a4);
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }
}

const degas::Bitmap *degas::IntersectPredicate::filterElements(degas::IntersectPredicate *this, const degas::Bitmap *a2, degas::Bitmap *a3)
{
  v3 = a2;
  v22 = *a2;
  v23 = 0u;
  v24 = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v23 + 8, *(a2 + 2), *(v3 + 3), (*(v3 + 3) - *(a2 + 2)) >> 4);
  v25 = *(v3 + 40);
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v10 = 0;
    goto LABEL_26;
  }

  while (1)
  {
    v7 = *v5;
    v8 = v5[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 24))(v7, &v22, &v22);
    v10 = v9;
    if (v9)
    {
      v11 = 0;
      v12 = 0;
      v3 = v9;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_6:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      goto LABEL_7;
    }

    v13 = v22;
    if (v22 == 0xFFFFFFFFLL)
    {
      v14 = *(&v23 + 1);
      v15 = v24;
      if (*(&v23 + 1) == v24)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v16 = *v14;
          v17 = *(*v14 + 4);
          if (v17 == -1)
          {
            v18 = 0;
            v19 = 0uLL;
            do
            {
              do
              {
                v19 = vpadalq_u16(v19, vpaddlq_u8(vcntq_s8(*(v16 + 16 + 4 * v18))));
                v18 += 4;
              }

              while (v18 != 32);
              v18 = 0;
              v17 = vaddvq_s32(v19);
              v19 = 0uLL;
            }

            while (v17 == -1);
            *(v16 + 4) = v17;
          }

          v13 += v17;
          v14 += 2;
        }

        while (v14 != v15);
      }

      v22 = v13;
    }

    v11 = v13 != 0;
    v12 = v13 == 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (!v11)
    {
      break;
    }

    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_26;
    }
  }

  if (v12)
  {
LABEL_26:
    degas::Bitmap::operator=(a3, &v22);
    v3 = v10;
  }

  v26 = &v23 + 1;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v26);
  return v3;
}

void sub_255944EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t degas::IntersectPredicate::elements(degas::IntersectPredicate *this, degas::Bitmap *a2)
{
  v22 = 0u;
  memset(v23, 0, 25);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v11 = 0;
    goto LABEL_30;
  }

  v6 = 1;
  while (1)
  {
    v7 = *v4;
    v8 = *(v4 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *v7;
    if (v6)
    {
      v10 = (*(v9 + 16))();
    }

    else
    {
      v10 = (*(v9 + 24))();
    }

    v11 = v10;
    if (v10)
    {
      v12 = 0;
      v13 = 0;
      v2 = v10;
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_10:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      goto LABEL_11;
    }

    v14 = v22;
    if (v22 == 0xFFFFFFFFLL)
    {
      v15 = v23[0];
      v16 = v23[1];
      if (v23[0] == v23[1])
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          v17 = *v15;
          v18 = *(*v15 + 4);
          if (v18 == -1)
          {
            v19 = 0;
            v20 = 0uLL;
            do
            {
              do
              {
                v20 = vpadalq_u16(v20, vpaddlq_u8(vcntq_s8(*(v17 + 16 + 4 * v19))));
                v19 += 4;
              }

              while (v19 != 32);
              v19 = 0;
              v18 = vaddvq_s32(v20);
              v20 = 0uLL;
            }

            while (v18 == -1);
            *(v17 + 4) = v18;
          }

          v14 += v18;
          v15 += 2;
        }

        while (v15 != v16);
      }

      *&v22 = v14;
    }

    v12 = v14 != 0;
    v13 = v14 == 0;
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (!v12)
    {
      break;
    }

    v6 = 0;
    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_30;
    }
  }

  if (v13)
  {
LABEL_30:
    degas::Bitmap::operator=(a2, &v22);
    v2 = v11;
  }

  v24 = v23;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v24);
  return v2;
}

void sub_2559450BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void degas::IntersectPredicate::~IntersectPredicate(degas::IntersectPredicate *this)
{
  *this = &unk_2867AA070;
  v1 = (this + 8);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA070;
  v1 = (this + 8);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::UnionPredicate::debugDescription(degas::UnionPredicate *this, const degas::Database *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  LOBYTE(__p[0]) = 40;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 1;
    while (1)
    {
      v8 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " or ", 4);
      }

      (*(*v8 + 64))(__p, v8, a2);
      v9 = (v13 & 0x80u) == 0 ? __p : __p[0];
      v10 = (v13 & 0x80u) == 0 ? v13 : __p[1];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v9, v10);
      if (v13 < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_15;
      }

LABEL_16:
      v6 = 0;
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_20;
      }
    }

    operator delete(__p[0]);
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_16;
  }

LABEL_20:
  LOBYTE(__p[0]) = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, __p, 1);
  std::stringbuf::str();
  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v18);
}

uint64_t degas::UnionPredicate::isTrivialNo(degas::UnionPredicate *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    v3 = *v1;
    v4 = v1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 56))(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v1 += 2;
    if (v1 == v2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  while ((v6 & 1) != 0);
  return v5;
}

void sub_255945500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::UnionPredicate::isTrivialYes(degas::UnionPredicate *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  do
  {
    v3 = *v1;
    v4 = v1[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 48))(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v1 += 2;
    if (v1 == v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }
  }

  while (v6 != 1);
  return v5;
}

void sub_2559455B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::UnionPredicate::decomposeLabelsPredicate@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 8);
  if (*(result + 16) - v4 == 16)
  {
    return (*(**v4 + 32))();
  }

  *a3 = 0;
  a3[1] = 0;
  v6 = *a2;
  v5 = a2[1];
  a3[2] = v6;
  a3[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t degas::UnionPredicate::filterElements(degas::UnionPredicate *this, const degas::Bitmap *a2, degas::Bitmap *a3)
{
  v16 = 0u;
  memset(v17, 0, 25);
  v5 = *(this + 1);
  v6 = *(this + 2);
  if (v5 == v6)
  {
LABEL_10:
    degas::Bitmap::operator=(a3, &v16);
    v12 = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      v9 = v5[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = 0u;
      memset(v15, 0, 25);
      v10 = (*(*v8 + 24))(v8, a2, &v14);
      v11 = v10;
      v12 = v10;
      if (!v10)
      {
        degas::Bitmap::unionWith<degas::Bitmap>(&v16, &v14);
        v12 = v3;
      }

      v18 = v15;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if (v11)
      {
        break;
      }

      v5 += 2;
      v3 = v12;
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  *&v14 = v17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v12;
}

void sub_25594575C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t degas::UnionPredicate::elements(degas::UnionPredicate *this, degas::Bitmap *a2)
{
  v14 = 0u;
  memset(v15, 0, 25);
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
LABEL_10:
    degas::Bitmap::operator=(a2, &v14);
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = 0u;
      memset(v13, 0, 25);
      v8 = (*(*v6 + 16))(v6, &v12);
      v9 = v8;
      v10 = v8;
      if (!v8)
      {
        degas::Bitmap::unionWith<degas::Bitmap>(&v14, &v12);
        v10 = v2;
      }

      v16 = v13;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v9)
      {
        break;
      }

      v4 += 2;
      v2 = v10;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  *&v12 = v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v10;
}

void sub_2559458BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::UnionPredicate::~UnionPredicate(degas::UnionPredicate *this)
{
  *this = &unk_2867AA0C8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA0C8;
  v1 = (this + 8);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void *degas::Predicate::nullPtr(degas::Predicate *this)
{
  {
    __cxa_atexit(std::shared_ptr<degas::Predicate>::~shared_ptr[abi:ne200100], &degas::Predicate::nullPtr(void)::nullPtr, &dword_255870000);
  }

  return &degas::Predicate::nullPtr(void)::nullPtr;
}

uint64_t std::shared_ptr<degas::Predicate>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *degas::YesNodePredicate::YesNodePredicate(void *result, uint64_t a2)
{
  *result = &unk_2867A9E08;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2867A9E08;
  result[1] = a2;
  return result;
}

void *degas::YesEdgePredicate::YesEdgePredicate(void *result, uint64_t a2)
{
  *result = &unk_2867A9E60;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2867A9E60;
  result[1] = a2;
  return result;
}

void *degas::NoPredicate::NoPredicate(void *this)
{
  *this = &unk_2867A9EB8;
  return this;
}

{
  *this = &unk_2867A9EB8;
  return this;
}

degas::AllLabelsNodePredicate *degas::AllLabelsNodePredicate::AllLabelsNodePredicate(degas::AllLabelsNodePredicate *this, const degas::Bitmap *a2, const degas::NodeTable *a3, const degas::Database *a4)
{
  v8 = *a2;
  *this = &unk_2867A9F10;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

{
  v8 = *a2;
  *this = &unk_2867A9F10;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

degas::AnyLabelsNodePredicate *degas::AnyLabelsNodePredicate::AnyLabelsNodePredicate(degas::AnyLabelsNodePredicate *this, const degas::Bitmap *a2, const degas::NodeTable *a3, const degas::Database *a4)
{
  v8 = *a2;
  *this = &unk_2867A9F68;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

{
  v8 = *a2;
  *this = &unk_2867A9F68;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

degas::AllLabelsEdgePredicate *degas::AllLabelsEdgePredicate::AllLabelsEdgePredicate(degas::AllLabelsEdgePredicate *this, const degas::Bitmap *a2, const degas::EdgeTable *a3, const degas::Database *a4)
{
  v8 = *a2;
  *this = &unk_2867A9FC0;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

{
  v8 = *a2;
  *this = &unk_2867A9FC0;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

degas::AnyLabelsEdgePredicate *degas::AnyLabelsEdgePredicate::AnyLabelsEdgePredicate(degas::AnyLabelsEdgePredicate *this, const degas::Bitmap *a2, const degas::EdgeTable *a3, const degas::Database *a4)
{
  v8 = *a2;
  *this = &unk_2867AA018;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

{
  v8 = *a2;
  *this = &unk_2867AA018;
  *(this + 1) = v8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 24, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 48) = *(a2 + 40);
  *(this + 7) = a3;
  *(this + 8) = a4;
  return this;
}

void *degas::IntersectPredicate::IntersectPredicate(void *a1, uint64_t *a2)
{
  *a1 = &unk_2867AA070;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<degas::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::Predicate>*,std::shared_ptr<degas::Predicate>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

{
  *a1 = &unk_2867AA070;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<degas::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::Predicate>*,std::shared_ptr<degas::Predicate>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void *degas::UnionPredicate::UnionPredicate(void *a1, uint64_t *a2)
{
  *a1 = &unk_2867AA0C8;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<degas::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::Predicate>*,std::shared_ptr<degas::Predicate>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

{
  *a1 = &unk_2867AA0C8;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<degas::Predicate>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::Predicate>*,std::shared_ptr<degas::Predicate>*>((a1 + 1), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void sub_255946C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *degas::NodeLabelQuery::NodeLabelQuery(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

void *degas::EdgeLabelQuery::EdgeLabelQuery(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t degas::implAllElementsFromLabels(degas::LabelTable *a1, degas::Bitmap *a2, uint64_t a3)
{
  AllStatement = degas::LabelTable::readAllStatement(a1);
  v6 = *AllStatement;
  v7 = AllStatement[1];
  v14[0] = v6;
  v14[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    v8 = degas::Statement::next(v6);
    if (v8 != 1)
    {
      break;
    }

    v12 = 0u;
    memset(v13, 0, 25);
    v9 = *(a3 + 24);
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9, v14, &v12);
    degas::Bitmap::unionWith<degas::Bitmap>(a2, &v12);
    v15 = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
    v6 = v14[0];
  }

  if (v8 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  degas::Cursor::~Cursor(v14);
  return v10;
}

void sub_255947E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v9 - 40) = v8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t degas::NodeLabelQuery::allNodes(const degas::NodeTable **this, degas::Bitmap *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*(*this + 49) == 1)
  {
    v4 = this[1];
    v11[0] = &unk_2867AA258;
    v11[3] = v11;
    v5 = degas::implAllElementsFromLabels((v4 + 80), a2, v11);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    degas::NodeCursor::NodeCursor(v10);
    degas::NodeCursor::setForSelectAll(v10, v3);
    while (1)
    {
      v6 = degas::Statement::next(v10[0]);
      if (v6 != 1)
      {
        break;
      }

      v7 = sqlite3_column_int64(*v10[0], 0);
      degas::Bitmap::setBit(a2, v7);
    }

    if (v6 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }

    degas::Cursor::~Cursor(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_255947FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<degas::NodeLabelQuery::allNodes(degas::Bitmap &)::$_0,std::allocator<degas::NodeLabelQuery::allNodes(degas::Bitmap &)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14NodeLabelQuery8allNodesERNS_6BitmapEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeLabelQuery::allEdges(const degas::EdgeTable **this, degas::Bitmap *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*(*this + 49) == 1)
  {
    v4 = this[1];
    v11[0] = &unk_2867AA2E8;
    v11[3] = v11;
    v5 = degas::implAllElementsFromLabels((v4 + 80), a2, v11);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v11);
  }

  else
  {
    degas::EdgeCursor::EdgeCursor(v10);
    degas::EdgeCursor::setForSelectAll(v10, v3);
    while (1)
    {
      v6 = degas::Statement::next(v10[0]);
      if (v6 != 1)
      {
        break;
      }

      v7 = sqlite3_column_int64(*v10[0], 0);
      degas::Bitmap::setBit(a2, v7);
    }

    if (v6 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }

    degas::Cursor::~Cursor(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_255948248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::EdgeLabelQuery::allEdges(degas::Bitmap &)::$_0,std::allocator<degas::EdgeLabelQuery::allEdges(degas::Bitmap &)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14EdgeLabelQuery8allEdgesERNS_6BitmapEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::implElementsForLabelFromLabels(degas::LabelTable *a1, sqlite3_int64 a2, degas::Bitmap *a3, uint64_t a4)
{
  degas::LabelCursor::LabelCursor(v12, a2, a1);
  while (1)
  {
    v6 = degas::Statement::next(v12[0]);
    if (v6 != 1)
    {
      break;
    }

    v10 = 0u;
    memset(v11, 0, 25);
    v7 = *(a4 + 24);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, v12, &v10);
    degas::Bitmap::unionWith<degas::Bitmap>(a3, &v10);
    v13 = v11;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  degas::Cursor::~Cursor(v12);
  return v8;
}

void sub_25594841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v9 - 40) = v8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t degas::NodeLabelQuery::nodesForLabel(const degas::NodeTable **this, sqlite3_int64 a2, degas::Bitmap *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*(*this + 49) == 1)
  {
    v6 = this[1];
    v13[0] = &unk_2867AA368;
    v13[3] = v13;
    v7 = degas::implElementsForLabelFromLabels((v6 + 80), a2, a3, v13);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    degas::NodeCursor::NodeCursor(v12);
    degas::NodeCursor::setForLabel(v12, a2, v5);
    while (1)
    {
      v8 = degas::Statement::next(v12[0]);
      if (v8 != 1)
      {
        break;
      }

      v9 = sqlite3_column_int64(*v12[0], 0);
      degas::Bitmap::setBit(a3, v9);
    }

    if (v8 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    degas::Cursor::~Cursor(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_255948560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::NodeLabelQuery::nodesForLabel(unsigned long long,degas::Bitmap &)::$_0,std::allocator<degas::NodeLabelQuery::nodesForLabel(unsigned long long,degas::Bitmap &)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14NodeLabelQuery13nodesForLabelEyRNS_6BitmapEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeLabelQuery::edgesForLabel(const degas::EdgeTable **this, sqlite3_int64 a2, degas::Bitmap *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*(*this + 49) == 1)
  {
    v6 = this[1];
    v13[0] = &unk_2867AA3E8;
    v13[3] = v13;
    v7 = degas::implElementsForLabelFromLabels((v6 + 80), a2, a3, v13);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    degas::EdgeCursor::EdgeCursor(v12);
    degas::EdgeCursor::setForLabel(v12, a2, v5);
    while (1)
    {
      v8 = degas::Statement::next(v12[0]);
      if (v8 != 1)
      {
        break;
      }

      v9 = sqlite3_column_int64(*v12[0], 0);
      degas::Bitmap::setBit(a3, v9);
    }

    if (v8 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    degas::Cursor::~Cursor(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_25594877C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::EdgeLabelQuery::edgesForLabel(unsigned long long,degas::Bitmap &)::$_0,std::allocator<degas::EdgeLabelQuery::edgesForLabel(unsigned long long,degas::Bitmap &)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14EdgeLabelQuery13edgesForLabelEyRNS_6BitmapEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::implElementsForAllLabelsFromLabels(degas::LabelTable *a1, Bitmap *a2, degas::Bitmap *a3, uint64_t a4)
{
  degas::LabelCursor::LabelCursor(v13, a2, a1);
  for (i = 1; ; i = 0)
  {
    v7 = degas::Statement::next(v13[0]);
    if (v7 != 1)
    {
      break;
    }

    v11 = 0u;
    memset(v12, 0, 25);
    v8 = *(a4 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, v13, &v11);
    if (i)
    {
      degas::Bitmap::operator=(a3, &v11);
    }

    else
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(a3, &v11);
    }

    v14 = v12;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  if (v7 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  degas::Cursor::~Cursor(v13);
  return v9;
}

void sub_25594896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v9 - 40) = v8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t degas::NodeLabelQuery::nodesForAllLabels(const degas::NodeTable **this, const degas::Bitmap *a2, degas::Bitmap *a3, char a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v6 = *this;
  if (*(*this + 49) != 1 || (a4 & 1) != 0)
  {
    degas::NodeCursor::NodeCursor(v13);
    degas::NodeCursor::setForAllLabels(v13, a2, v6);
    while (1)
    {
      v9 = degas::Statement::next(v13[0]);
      if (v9 != 1)
      {
        break;
      }

      v10 = sqlite3_column_int64(*v13[0], 0);
      degas::Bitmap::setBit(a3, v10);
    }

    if (v9 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v9;
    }

    degas::Cursor::~Cursor(v13);
  }

  else
  {
    v7 = this[1];
    v14[0] = &unk_2867AA468;
    v14[3] = v14;
    v8 = degas::implElementsForAllLabelsFromLabels((v7 + 80), a2, a3, v14);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_255948AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::NodeLabelQuery::nodesForAllLabels(degas::Bitmap const&,degas::Bitmap&,BOOL)::$_0,std::allocator<degas::NodeLabelQuery::nodesForAllLabels(degas::Bitmap const&,degas::Bitmap&,BOOL)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14NodeLabelQuery17nodesForAllLabelsERKNS_6BitmapERS1_bE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::NodeLabelQuery::filterNodesForAllLabels(const degas::NodeTable **this, Bitmap *a2, const degas::Bitmap *a3, degas::Bitmap *a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*(*this + 49) == 1)
  {
    *v14 = 0u;
    memset(v15, 0, 25);
    v8 = this[1];
    v17[0] = &unk_2867AA4E8;
    v17[3] = v17;
    v9 = degas::implElementsForAllLabelsFromLabels((v8 + 80), a2, v14, v17);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v17);
    if (!v9)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(v14, a3);
      degas::Bitmap::operator=(a4, v14);
    }

    v16 = v15;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  else
  {
    degas::NodeCursor::NodeCursor(v14);
    degas::NodeCursor::setForAllLabelsAndIdentifiers(v14, a2, a3, v7);
    while (1)
    {
      v10 = degas::Statement::next(v14[0]);
      if (v10 != 1)
      {
        break;
      }

      v11 = sqlite3_column_int64(*v14[0], 0);
      degas::Bitmap::setBit(a4, v11);
    }

    if (v10 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v10;
    }

    degas::Cursor::~Cursor(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_255948D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::NodeLabelQuery::filterNodesForAllLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0,std::allocator<degas::NodeLabelQuery::filterNodesForAllLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14NodeLabelQuery23filterNodesForAllLabelsERKNS_6BitmapES3_RS1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeLabelQuery::edgesForAllLabels(const degas::EdgeTable **this, const degas::Bitmap *a2, degas::Bitmap *a3, char a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v6 = *this;
  if (*(*this + 49) != 1 || (a4 & 1) != 0)
  {
    degas::EdgeCursor::EdgeCursor(v13);
    degas::EdgeCursor::setForAllLabels(v13, a2, v6);
    while (1)
    {
      v9 = degas::Statement::next(v13[0]);
      if (v9 != 1)
      {
        break;
      }

      v10 = sqlite3_column_int64(*v13[0], 0);
      degas::Bitmap::setBit(a3, v10);
    }

    if (v9 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v9;
    }

    degas::Cursor::~Cursor(v13);
  }

  else
  {
    v7 = this[1];
    v14[0] = &unk_2867AA568;
    v14[3] = v14;
    v8 = degas::implElementsForAllLabelsFromLabels((v7 + 80), a2, a3, v14);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_255948F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::EdgeLabelQuery::edgesForAllLabels(degas::Bitmap const&,degas::Bitmap&,BOOL)::$_0,std::allocator<degas::EdgeLabelQuery::edgesForAllLabels(degas::Bitmap const&,degas::Bitmap&,BOOL)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14EdgeLabelQuery17edgesForAllLabelsERKNS_6BitmapERS1_bE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeLabelQuery::filterEdgesForAllLabels(const degas::EdgeTable **this, Bitmap *a2, const degas::Bitmap *a3, degas::Bitmap *a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*(*this + 49) == 1)
  {
    *v14 = 0u;
    memset(v15, 0, 25);
    v8 = this[1];
    v17[0] = &unk_2867AA5E8;
    v17[3] = v17;
    v9 = degas::implElementsForAllLabelsFromLabels((v8 + 80), a2, v14, v17);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v17);
    if (!v9)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(v14, a3);
      degas::Bitmap::operator=(a4, v14);
    }

    v16 = v15;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  else
  {
    degas::EdgeCursor::EdgeCursor(v14);
    degas::EdgeCursor::setForAllLabelsAndIdentifiers(v14, a2, a3, v7);
    while (1)
    {
      v10 = degas::Statement::next(v14[0]);
      if (v10 != 1)
      {
        break;
      }

      v11 = sqlite3_column_int64(*v14[0], 0);
      degas::Bitmap::setBit(a4, v11);
    }

    if (v10 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v10;
    }

    degas::Cursor::~Cursor(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2559491B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::EdgeLabelQuery::filterEdgesForAllLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0,std::allocator<degas::EdgeLabelQuery::filterEdgesForAllLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14EdgeLabelQuery23filterEdgesForAllLabelsERKNS_6BitmapES3_RS1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::implElementsForAnyLabelsFromLabels(degas::LabelTable *a1, Bitmap *a2, degas::Bitmap *a3, uint64_t a4)
{
  degas::LabelCursor::LabelCursor(v13, a2, a1);
  for (i = 1; ; i = 0)
  {
    v7 = degas::Statement::next(v13[0]);
    if (v7 != 1)
    {
      break;
    }

    v11 = 0u;
    memset(v12, 0, 25);
    v8 = *(a4 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v8 + 48))(v8, v13, &v11);
    if (i)
    {
      degas::Bitmap::operator=(a3, &v11);
    }

    else
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a3, &v11);
    }

    v14 = v12;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  if (v7 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  degas::Cursor::~Cursor(v13);
  return v9;
}

void sub_2559493BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v9 - 40) = v8;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t degas::NodeLabelQuery::nodesForAnyLabels(const degas::NodeTable **this, Bitmap *a2, degas::Bitmap *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*(*this + 49) == 1)
  {
    v6 = this[1];
    v13[0] = &unk_2867AA668;
    v13[3] = v13;
    v7 = degas::implElementsForAnyLabelsFromLabels((v6 + 80), a2, a3, v13);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    degas::NodeCursor::NodeCursor(v12);
    degas::NodeCursor::setForAnyLabels(v12, a2, v5);
    while (1)
    {
      v8 = degas::Statement::next(v12[0]);
      if (v8 != 1)
      {
        break;
      }

      v9 = sqlite3_column_int64(*v12[0], 0);
      degas::Bitmap::setBit(a3, v9);
    }

    if (v8 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    degas::Cursor::~Cursor(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_255949500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::NodeLabelQuery::nodesForAnyLabels(degas::Bitmap const&,degas::Bitmap&)::$_0,std::allocator<degas::NodeLabelQuery::nodesForAnyLabels(degas::Bitmap const&,degas::Bitmap&)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14NodeLabelQuery17nodesForAnyLabelsERKNS_6BitmapERS1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::NodeLabelQuery::filterNodesForAnyLabels(const degas::NodeTable **this, Bitmap *a2, const degas::Bitmap *a3, degas::Bitmap *a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*(*this + 49) == 1)
  {
    *v14 = 0u;
    memset(v15, 0, 25);
    v8 = this[1];
    v17[0] = &unk_2867AA6E8;
    v17[3] = v17;
    v9 = degas::implElementsForAnyLabelsFromLabels((v8 + 80), a2, v14, v17);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v17);
    if (!v9)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(v14, a3);
      degas::Bitmap::operator=(a4, v14);
    }

    v16 = v15;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  else
  {
    degas::NodeCursor::NodeCursor(v14);
    degas::NodeCursor::setForAnyLabelsAndIdentifiers(v14, a2, a3, v7);
    while (1)
    {
      v10 = degas::Statement::next(v14[0]);
      if (v10 != 1)
      {
        break;
      }

      v11 = sqlite3_column_int64(*v14[0], 0);
      degas::Bitmap::setBit(a4, v11);
    }

    if (v10 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v10;
    }

    degas::Cursor::~Cursor(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_255949760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::NodeLabelQuery::filterNodesForAnyLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0,std::allocator<degas::NodeLabelQuery::filterNodesForAnyLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14NodeLabelQuery23filterNodesForAnyLabelsERKNS_6BitmapES3_RS1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeLabelQuery::edgesForAnyLabels(const degas::EdgeTable **this, Bitmap *a2, degas::Bitmap *a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*(*this + 49) == 1)
  {
    v6 = this[1];
    v13[0] = &unk_2867AA768;
    v13[3] = v13;
    v7 = degas::implElementsForAnyLabelsFromLabels((v6 + 80), a2, a3, v13);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v13);
  }

  else
  {
    degas::EdgeCursor::EdgeCursor(v12);
    degas::EdgeCursor::setForAnyLabels(v12, a2, v5);
    while (1)
    {
      v8 = degas::Statement::next(v12[0]);
      if (v8 != 1)
      {
        break;
      }

      v9 = sqlite3_column_int64(*v12[0], 0);
      degas::Bitmap::setBit(a3, v9);
    }

    if (v8 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    degas::Cursor::~Cursor(v12);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_255949998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::EdgeLabelQuery::edgesForAnyLabels(degas::Bitmap const&,degas::Bitmap&)::$_0,std::allocator<degas::EdgeLabelQuery::edgesForAnyLabels(degas::Bitmap const&,degas::Bitmap&)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14EdgeLabelQuery17edgesForAnyLabelsERKNS_6BitmapERS1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeLabelQuery::filterEdgesForAnyLabels(const degas::EdgeTable **this, Bitmap *a2, const degas::Bitmap *a3, degas::Bitmap *a4)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v7 = *this;
  if (*(*this + 49) == 1)
  {
    *v14 = 0u;
    memset(v15, 0, 25);
    v8 = this[1];
    v17[0] = &unk_2867AA7E8;
    v17[3] = v17;
    v9 = degas::implElementsForAnyLabelsFromLabels((v8 + 80), a2, v14, v17);
    std::__function::__value_func<void ()(degas::LabelCursor &,degas::Bitmap &)>::~__value_func[abi:ne200100](v17);
    if (!v9)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(v14, a3);
      degas::Bitmap::operator=(a4, v14);
    }

    v16 = v15;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  else
  {
    degas::EdgeCursor::EdgeCursor(v14);
    degas::EdgeCursor::setForAnyLabelsAndIdentifiers(v14, a2, a3, v7);
    while (1)
    {
      v10 = degas::Statement::next(v14[0]);
      if (v10 != 1)
      {
        break;
      }

      v11 = sqlite3_column_int64(*v14[0], 0);
      degas::Bitmap::setBit(a4, v11);
    }

    if (v10 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v10;
    }

    degas::Cursor::~Cursor(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_255949BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<degas::EdgeLabelQuery::filterEdgesForAnyLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0,std::allocator<degas::EdgeLabelQuery::filterEdgesForAnyLabels(degas::Bitmap const&,degas::Bitmap const&,degas::Bitmap&)::$_0>,void ()(degas::LabelCursor &,degas::Bitmap&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN5degas14EdgeLabelQuery23filterEdgesForAnyLabelsERKNS_6BitmapES3_RS1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t degas::EdgeFilter_Labels::resolveEdges(degas::EdgeFilter_Labels *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v7[0] = (v4 + 248);
  v7[1] = v4;
  if (degas::Bitmap::count((this + 16)) != 1)
  {
    return degas::EdgeLabelQuery::edgesForAllLabels(v7, (this + 16), a2, 0);
  }

  Bit = degas::Bitmap::firstBit((this + 16));
  return degas::EdgeLabelQuery::edgesForLabel(v7, Bit, a2);
}

void degas::EdgeFilter_Labels::~EdgeFilter_Labels(degas::EdgeFilter_Labels *this)
{
  *this = &unk_2867AA890;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA890;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867AA890;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::EdgeFilter_Attribute::resolveEdges(degas::EdgeFilter_Attribute *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v7[0] = v4 + 528;
  v7[1] = degas::Database::edgeCount(v4);
  v5 = *(this + 4);
  switch(v5)
  {
    case 3:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), this + 48, 1, a2);
    case 2:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), 1, a2, *(this + 5));
    case 1:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), *(this + 4), 1, a2);
  }

  return 3;
}

void degas::EdgeFilter_Attribute::~EdgeFilter_Attribute(void **this)
{
  *this = &unk_2867AA8B8;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA8B8;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = &unk_2867AA8B8;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

uint64_t degas::EdgeFilter_Or::resolveEdges(degas::EdgeFilter_Or *this, degas::Bitmap *a2)
{
  v14 = 0u;
  memset(v15, 0, 25);
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v4 == v5)
  {
LABEL_10:
    degas::Bitmap::operator=(a2, &v14);
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = 0u;
      memset(v13, 0, 25);
      v8 = (*(*v6 + 16))(v6, &v12);
      v9 = v8;
      v10 = v8;
      if (!v8)
      {
        degas::Bitmap::unionWith<degas::Bitmap>(&v14, &v12);
        v10 = v2;
      }

      v16 = v13;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v9)
      {
        break;
      }

      v4 += 2;
      v2 = v10;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  *&v12 = v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v10;
}

void sub_25594A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::EdgeFilter_Or::~EdgeFilter_Or(degas::EdgeFilter_Or *this)
{
  *this = &unk_2867AA8E0;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA8E0;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867AA8E0;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::EdgeFilter_And::resolveEdges(degas::EdgeFilter_And *this, degas::Bitmap *a2)
{
  v10 = 0u;
  memset(v11, 0, 25);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
LABEL_8:
    degas::Bitmap::operator=(a2, &v10);
    v6 = 0;
  }

  else
  {
    v5 = 1;
    while (1)
    {
      v8 = 0u;
      memset(v9, 0, 25);
      v6 = (*(**v3 + 16))(*v3, &v8);
      if (v6)
      {
        break;
      }

      if (v5)
      {
        degas::Bitmap::operator=(&v10, &v8);
      }

      else
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v10, &v8);
      }

      v12 = v9;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 = 0;
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    v12 = v9;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  *&v8 = v11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v8);
  return v6;
}

void sub_25594A628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::EdgeFilter_And::~EdgeFilter_And(degas::EdgeFilter_And *this)
{
  *this = &unk_2867AA908;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867AA908;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867AA908;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void *degas::EdgeFilter::EdgeFilter(void *result, uint64_t a2)
{
  *result = &unk_2867AA868;
  result[1] = a2;
  return result;
}

degas::EdgeFilter_Labels *degas::EdgeFilter_Labels::EdgeFilter_Labels(degas::EdgeFilter_Labels *this, degas::Database *a2, const degas::Bitmap *a3)
{
  *this = &unk_2867AA890;
  *(this + 1) = a2;
  *(this + 2) = *a3;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 32, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 4);
  *(this + 56) = *(a3 + 40);
  return this;
}

{
  *this = &unk_2867AA890;
  *(this + 1) = a2;
  *(this + 2) = *a3;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 32, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 4);
  *(this + 56) = *(a3 + 40);
  return this;
}

degas::EdgeFilter_Labels *degas::EdgeFilter_Labels::EdgeFilter_Labels(degas::EdgeFilter_Labels *this, degas::Database *a2, unint64_t a3)
{
  *this = &unk_2867AA890;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 41) = 0u;
  *(this + 1) = 0u;
  degas::Bitmap::setBit((this + 16), a3);
  return this;
}

void sub_25594A898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double degas::EdgeFilter_Attribute::EdgeFilter_Attribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2867AA8B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

{
  *a1 = &unk_2867AA8B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t degas::EdgeFilter_Attribute::EdgeFilter_Attribute(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  *result = &unk_2867AA8B8;
  *(result + 8) = a2;
  *(result + 16) = 2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

{
  *result = &unk_2867AA8B8;
  *(result + 8) = a2;
  *(result + 16) = 2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t degas::EdgeFilter_Attribute::EdgeFilter_Attribute(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_2867AA8B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v5;
  }

  return a1;
}

void *degas::EdgeFilter_Or::EdgeFilter_Or(void *result, uint64_t a2)
{
  *result = &unk_2867AA8E0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2867AA8E0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *degas::EdgeFilter_Or::EdgeFilter_Or(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2867AA8E0;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::EdgeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::EdgeFilter>*,std::shared_ptr<degas::EdgeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

{
  *a1 = &unk_2867AA8E0;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::EdgeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::EdgeFilter>*,std::shared_ptr<degas::EdgeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void std::vector<std::shared_ptr<degas::EdgeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::EdgeFilter>*,std::shared_ptr<degas::EdgeFilter>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(a4);
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }
}

void *degas::EdgeFilter_And::EdgeFilter_And(void *result, uint64_t a2)
{
  *result = &unk_2867AA908;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2867AA908;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *degas::EdgeFilter_And::EdgeFilter_And(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_2867AA908;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::EdgeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::EdgeFilter>*,std::shared_ptr<degas::EdgeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

{
  *a1 = &unk_2867AA908;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::EdgeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::EdgeFilter>*,std::shared_ptr<degas::EdgeFilter>*>((a1 + 2), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

uint64_t degas::returnCodeFromSqlite(int a1, unsigned int a2)
{
  if (a1 == 101)
  {
    v2 = 2;
  }

  else
  {
    v2 = a2;
  }

  if (a1 == 100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 17)
  {
    v4 = 4;
  }

  else
  {
    v4 = a2;
  }

  if (!a1)
  {
    v4 = 0;
  }

  if (a1 <= 99)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t degas::sqliteFlagFromDataProtectionClass(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0x100000;
  }

  else
  {
    return dword_255973D10[a1 - 1];
  }
}

degas::Database *degas::Database::Database(degas::Database *this)
{
  *(this + 3) = 0u;
  *(this + 5) = this + 48;
  v2 = (this + 40);
  *(this + 16) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0x2800000000;
  *(this + 9) = 0;
  degas::LabelTable::LabelTable((this + 80), 0, (this + 40));
  degas::MetadataTable::MetadataTable((this + 136), 0, v2);
  std::string::basic_string[abi:ne200100]<0>(&v26, "Node");
  *(this + 24) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 200), v26, *(&v26 + 1));
    v3 = v27 < 0;
  }

  else
  {
    v3 = 0;
    *(this + 200) = v26;
    *(this + 27) = v27;
  }

  *(this + 28) = 0;
  *(this + 29) = v2;
  *(this + 24) = &unk_2867A9DA0;
  *(this + 120) = 262;
  if (v3)
  {
    operator delete(v26);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "Edge");
  *(this + 31) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 256), v26, *(&v26 + 1));
    v4 = v27 < 0;
  }

  else
  {
    v4 = 0;
    *(this + 16) = v26;
    *(this + 34) = v27;
  }

  *(this + 35) = 0;
  *(this + 36) = v2;
  *(this + 31) = &unk_2867A9B68;
  *(this + 148) = 258;
  if (v4)
  {
    operator delete(v26);
  }

  degas::AttributeTable::AttributeTable((this + 304), 0, v2);
  std::string::basic_string[abi:ne200100]<0>(&v26, "NodeValue");
  *(this + 45) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 368), v26, *(&v26 + 1));
    v5 = SHIBYTE(v27);
    *(this + 49) = 0;
    *(this + 50) = v2;
    *(this + 45) = &unk_2867A9040;
    *(this + 408) = 7;
    if (v5 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 23) = v26;
    *(this + 48) = v27;
    *(this + 49) = 0;
    *(this + 50) = v2;
    *(this + 45) = &unk_2867A9040;
    *(this + 408) = 7;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "EdgeValue");
  *(this + 52) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 424), v26, *(&v26 + 1));
    v6 = SHIBYTE(v27);
    *(this + 56) = 0;
    *(this + 57) = v2;
    *(this + 52) = &unk_2867A9040;
    *(this + 464) = 3;
    if (v6 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 424) = v26;
    *(this + 55) = v27;
    *(this + 56) = 0;
    *(this + 57) = v2;
    *(this + 52) = &unk_2867A9040;
    *(this + 464) = 3;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "NodeValue");
  *(this + 59) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(this + 20, v26, *(&v26 + 1));
    v7 = SHIBYTE(v27);
    *(this + 63) = 0;
    *(this + 64) = v2;
    *(this + 59) = &unk_2867A9D58;
    *(this + 520) = 9;
    if (v7 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 30) = v26;
    *(this + 62) = v27;
    *(this + 63) = 0;
    *(this + 64) = v2;
    *(this + 59) = &unk_2867A9D58;
    *(this + 520) = 9;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "EdgeValue");
  *(this + 66) = &unk_2867A9A50;
  v8 = (this + 536);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v8, v26, *(&v26 + 1));
    v9 = SHIBYTE(v27);
    *(this + 70) = 0;
    *(this + 71) = v2;
    *(this + 66) = &unk_2867A9D58;
    *(this + 576) = 10;
    if (v9 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = v26;
    *(this + 69) = v27;
    *(this + 70) = 0;
    *(this + 71) = v2;
    *(this + 66) = &unk_2867A9D58;
    *(this + 576) = 10;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "NodeValue");
  *(this + 73) = &unk_2867A9A50;
  v10 = (this + 592);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v26, *(&v26 + 1));
    v11 = SHIBYTE(v27);
    *(this + 77) = 0;
    *(this + 78) = v2;
    *(this + 73) = &unk_2867A8B90;
    *(this + 632) = 11;
    if (v11 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = v26;
    *(this + 76) = v27;
    *(this + 77) = 0;
    *(this + 78) = v2;
    *(this + 73) = &unk_2867A8B90;
    *(this + 632) = 11;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "EdgeValue");
  *(this + 80) = &unk_2867A9A50;
  v12 = (this + 648);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v12, v26, *(&v26 + 1));
    v13 = SHIBYTE(v27);
    *(this + 84) = 0;
    *(this + 85) = v2;
    *(this + 80) = &unk_2867A8B90;
    *(this + 688) = 12;
    if (v13 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *&v12->__r_.__value_.__l.__data_ = v26;
    *(this + 83) = v27;
    *(this + 84) = 0;
    *(this + 85) = v2;
    *(this + 80) = &unk_2867A8B90;
    *(this + 688) = 12;
  }

  degas::TransactionLogTable::TransactionLogTable((this + 696), 0, v2);
  degas::ClientLogTable::ClientLogTable((this + 752), 0, v2);
  std::string::basic_string[abi:ne200100]<0>(&v26, "TombstoneNode");
  *(this + 101) = &unk_2867A9A50;
  v14 = (this + 816);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v14, v26, *(&v26 + 1));
    v15 = v27 < 0;
  }

  else
  {
    v15 = 0;
    *&v14->__r_.__value_.__l.__data_ = v26;
    *(this + 104) = v27;
  }

  *(this + 105) = 0;
  *(this + 106) = v2;
  *(this + 101) = &unk_2867A9DA0;
  *(this + 428) = 15;
  if (v15)
  {
    operator delete(v26);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "TombstoneEdge");
  *(this + 108) = &unk_2867A9A50;
  v16 = (this + 872);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v16, v26, *(&v26 + 1));
    v17 = v27 < 0;
  }

  else
  {
    v17 = 0;
    *&v16->__r_.__value_.__l.__data_ = v26;
    *(this + 111) = v27;
  }

  *(this + 112) = 0;
  *(this + 113) = v2;
  *(this + 108) = &unk_2867A9B68;
  *(this + 456) = 16;
  if (v17)
  {
    operator delete(v26);
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "TombstoneNodeValue");
  *(this + 115) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 928), v26, *(&v26 + 1));
    v18 = SHIBYTE(v27);
    *(this + 119) = 0;
    *(this + 120) = v2;
    *(this + 115) = &unk_2867A9040;
    *(this + 968) = 17;
    if (v18 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 58) = v26;
    *(this + 118) = v27;
    *(this + 119) = 0;
    *(this + 120) = v2;
    *(this + 115) = &unk_2867A9040;
    *(this + 968) = 17;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "TombstoneEdgeValue");
  *(this + 122) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(this + 41, v26, *(&v26 + 1));
    v19 = SHIBYTE(v27);
    *(this + 126) = 0;
    *(this + 127) = v2;
    *(this + 122) = &unk_2867A9040;
    *(this + 1024) = 18;
    if (v19 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 984) = v26;
    *(this + 125) = v27;
    *(this + 126) = 0;
    *(this + 127) = v2;
    *(this + 122) = &unk_2867A9040;
    *(this + 1024) = 18;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "TombstoneNodeValue");
  *(this + 129) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1040), v26, *(&v26 + 1));
    v20 = SHIBYTE(v27);
    *(this + 133) = 0;
    *(this + 134) = v2;
    *(this + 129) = &unk_2867A9D58;
    *(this + 1080) = 19;
    if (v20 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 65) = v26;
    *(this + 132) = v27;
    *(this + 133) = 0;
    *(this + 134) = v2;
    *(this + 129) = &unk_2867A9D58;
    *(this + 1080) = 19;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "TombstoneEdgeValue");
  *(this + 136) = &unk_2867A9A50;
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1096), v26, *(&v26 + 1));
    v21 = SHIBYTE(v27);
    *(this + 140) = 0;
    *(this + 141) = v2;
    *(this + 136) = &unk_2867A9D58;
    *(this + 1136) = 20;
    if (v21 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 1096) = v26;
    *(this + 139) = v27;
    *(this + 140) = 0;
    *(this + 141) = v2;
    *(this + 136) = &unk_2867A9D58;
    *(this + 1136) = 20;
  }

  degas::LabelledEdgeTable::LabelledEdgeTable(this + 1144, 0, v2);
  *(this + 75) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v26, "identifierBitmap");
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((this + 1216), v26, *(&v26 + 1));
    v22 = SHIBYTE(v27);
    *(this + 155) = 0;
    if (v22 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *(this + 76) = v26;
    *(this + 154) = v27;
    *(this + 155) = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v26, "valueArray");
  v23 = (this + 1248);
  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v23, v26, *(&v26 + 1));
    v24 = SHIBYTE(v27);
    *(this + 159) = 0;
    if (v24 < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    *&v23->__r_.__value_.__l.__data_ = v26;
    *(this + 158) = v27;
    *(this + 159) = 0;
  }

  *(this + 161) = -1;
  *(this + 160) = -1;
  *(this + 324) = 0;
  *(this + 167) = 0;
  *(this + 1304) = 0u;
  *(this + 1320) = 0u;
  *(this + 336) = 3;
  *(this + 674) = 0;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 1377) = 0u;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 1425) = 0u;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 1473) = 0u;
  *(this + 1496) = 0u;
  *(this + 1512) = 0u;
  *(this + 1521) = 0u;
  *(this + 1569) = 0u;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 1617) = 0u;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 1665) = 0u;
  return this;
}

void sub_25594BB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, uint64_t a12, void **a13, uint64_t a14, void **a15, uint64_t a16, void **a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  if (*(v28 + 1239) < 0)
  {
    operator delete(*v33);
  }

  *(v28 + 1144) = &unk_2867A9A50;
  *(v28 + 1176) = 0;
  if (*(v28 + 1175) < 0)
  {
    operator delete(*(v28 + 1152));
  }

  *(v28 + 1088) = v30;
  *(v28 + 1120) = 0;
  if (*(v28 + 1119) < 0)
  {
    operator delete(*v32);
  }

  *(v28 + 1032) = v29;
  *(v28 + 1064) = 0;
  if (*(v28 + 1063) < 0)
  {
    operator delete(*v34);
  }

  *(v28 + 976) = v35;
  *(v28 + 1008) = 0;
  if (*(v28 + 1007) < 0)
  {
    operator delete(*v31);
  }

  *(v28 + 920) = a12;
  *(v28 + 952) = 0;
  if (*(v28 + 951) < 0)
  {
    operator delete(*v36);
  }

  *(v28 + 864) = a14;
  *(v28 + 896) = 0;
  if (*(v28 + 895) < 0)
  {
    operator delete(*a11);
  }

  *(v28 + 808) = a16;
  *(v28 + 840) = 0;
  if (*(v28 + 839) < 0)
  {
    operator delete(*a13);
  }

  *(v28 + 752) = &unk_2867A9A50;
  *(v28 + 784) = 0;
  if (*(v28 + 783) < 0)
  {
    operator delete(*(v28 + 760));
  }

  *(v28 + 696) = &unk_2867A9A50;
  *(v28 + 728) = 0;
  if (*(v28 + 727) < 0)
  {
    operator delete(*(v28 + 704));
  }

  *(v28 + 640) = a21;
  *(v28 + 672) = 0;
  if (*(v28 + 671) < 0)
  {
    operator delete(*a15);
  }

  *(v28 + 584) = a23;
  *(v28 + 616) = 0;
  if (*(v28 + 615) < 0)
  {
    operator delete(*a17);
  }

  *(v28 + 528) = a24;
  *(v28 + 560) = 0;
  if (*(v28 + 559) < 0)
  {
    operator delete(*a19);
  }

  *(v28 + 472) = a25;
  *(v28 + 504) = 0;
  if (*(v28 + 503) < 0)
  {
    operator delete(*(v28 + 480));
  }

  *(v28 + 416) = a26;
  *(v28 + 448) = 0;
  if (*(v28 + 447) < 0)
  {
    operator delete(*a22);
  }

  *(v28 + 360) = a27;
  *(v28 + 392) = 0;
  if (*(v28 + 391) < 0)
  {
    operator delete(*(v28 + 368));
  }

  *(v28 + 304) = &unk_2867A9A50;
  *(v28 + 336) = 0;
  if (*(v28 + 335) < 0)
  {
    operator delete(*(v28 + 312));
  }

  *(v28 + 248) = *(v37 - 144);
  *(v28 + 280) = 0;
  if (*(v28 + 279) < 0)
  {
    operator delete(*(v28 + 256));
  }

  *(v28 + 192) = *(v37 - 136);
  *(v28 + 224) = 0;
  if (*(v28 + 223) < 0)
  {
    operator delete(*(v28 + 200));
  }

  v38 = *(v37 - 128) & 0xFFFFFFFFFFFFLL | 0xC200000000000000;
  *(v28 + 136) = &unk_2867A9A50;
  *(v28 + 168) = 0;
  if (*(v28 + 167) < 0)
  {
    operator delete(*(v28 + 144));
  }

  v39 = *(v37 - 120) & 0xFFFFFFFFFFFFLL | 0xC200000000000000;
  *(v28 + 80) = &unk_2867A9A50;
  *(v28 + 112) = 0;
  if (*(v28 + 111) < 0)
  {
    operator delete(*(v28 + 88));
  }

  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(*(v28 + 48));
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(a1);
}

void degas::Database::TransactionChanges::~TransactionChanges(degas::Database::TransactionChanges *this)
{
  v2 = (this + 256);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 208);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 160);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 112);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 64);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void degas::Database::~Database(void **this)
{
  degas::Database::close(this);
  v3 = this + 207;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 201;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 195;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 189;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 183;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 177;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 171;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[167];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 1327) < 0)
  {
    operator delete(this[163]);
  }

  if (*(this + 1271) < 0)
  {
    operator delete(this[156]);
  }

  if (*(this + 1239) < 0)
  {
    operator delete(this[152]);
  }

  this[143] = &unk_2867A9A50;
  this[147] = 0;
  if (*(this + 1175) < 0)
  {
    operator delete(this[144]);
  }

  this[136] = &unk_2867A9A50;
  this[140] = 0;
  if (*(this + 1119) < 0)
  {
    operator delete(this[137]);
  }

  this[129] = &unk_2867A9A50;
  this[133] = 0;
  if (*(this + 1063) < 0)
  {
    operator delete(this[130]);
  }

  this[122] = &unk_2867A9A50;
  this[126] = 0;
  if (*(this + 1007) < 0)
  {
    operator delete(this[123]);
  }

  this[115] = &unk_2867A9A50;
  this[119] = 0;
  if (*(this + 951) < 0)
  {
    operator delete(this[116]);
  }

  this[108] = &unk_2867A9A50;
  this[112] = 0;
  if (*(this + 895) < 0)
  {
    operator delete(this[109]);
  }

  this[101] = &unk_2867A9A50;
  this[105] = 0;
  if (*(this + 839) < 0)
  {
    operator delete(this[102]);
  }

  this[94] = &unk_2867A9A50;
  this[98] = 0;
  if (*(this + 783) < 0)
  {
    operator delete(this[95]);
  }

  this[87] = &unk_2867A9A50;
  this[91] = 0;
  if (*(this + 727) < 0)
  {
    operator delete(this[88]);
  }

  this[80] = &unk_2867A9A50;
  this[84] = 0;
  if (*(this + 671) < 0)
  {
    operator delete(this[81]);
  }

  this[73] = &unk_2867A9A50;
  this[77] = 0;
  if (*(this + 615) < 0)
  {
    operator delete(this[74]);
  }

  this[66] = &unk_2867A9A50;
  this[70] = 0;
  if (*(this + 559) < 0)
  {
    operator delete(this[67]);
  }

  this[59] = &unk_2867A9A50;
  this[63] = 0;
  if (*(this + 503) < 0)
  {
    operator delete(this[60]);
  }

  this[52] = &unk_2867A9A50;
  this[56] = 0;
  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  this[45] = &unk_2867A9A50;
  this[49] = 0;
  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  this[38] = &unk_2867A9A50;
  this[42] = 0;
  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  this[31] = &unk_2867A9A50;
  this[35] = 0;
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  this[24] = &unk_2867A9A50;
  this[28] = 0;
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  this[17] = &unk_2867A9A50;
  this[21] = 0;
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  this[10] = &unk_2867A9A50;
  this[14] = 0;
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(this[6]);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t degas::Database::close(degas::Database *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(this + 150);
  if (v2)
  {
    degas::Statement::~Statement(v2);
    MEMORY[0x259C43EB0]();
    *(this + 150) = 0;
  }

  v3 = *(this + 151);
  if (v3)
  {
    degas::Statement::~Statement(v3);
    MEMORY[0x259C43EB0]();
    *(this + 151) = 0;
  }

  degas::StatementCache::purgeAllStatements(this + 10);
  v4 = *(this + 167);
  *(this + 83) = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    if ((*(this + 32) & 1) == 0)
    {
      *pnCkpt = 0;
      sqlite3_wal_checkpoint_v2(v5, 0, 0, &pnCkpt[1], pnCkpt);
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v6 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v13 = pnCkpt[1];
        v14 = 1024;
        v15 = pnCkpt[0];
        _os_log_debug_impl(&dword_255870000, v6, OS_LOG_TYPE_DEBUG, "[KGDB] checkpoint on closing, total wal pages %d, checkpointed %d", buf, 0xEu);
      }

      sqlite3_exec(*(this + 3), "pragma incremental_vacuum(3)", 0, 0, 0);
      v5 = *(this + 3);
    }

    v7 = sqlite3_close(v5);
    if (*(this + 32))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    degas::databaseMap(v7);
    degas::DatabaseMap::deregisterDatabase(&degas::databaseMap(void)::databaseMap, this, this, v8);
    *(this + 3) = 0;
    degas::Database::updateTableInstances(this);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void degas::databaseMap(degas *this)
{
  {
    degas::DatabaseMap::DatabaseMap(&degas::databaseMap(void)::databaseMap);
    __cxa_atexit(degas::DatabaseMap::~DatabaseMap, &degas::databaseMap(void)::databaseMap, &dword_255870000);
  }
}

void *degas::Database::updateTableInstances(void *this)
{
  v1 = this[3];
  this[14] = v1;
  this[21] = v1;
  this[28] = v1;
  this[35] = v1;
  this[42] = v1;
  this[49] = v1;
  this[56] = v1;
  this[63] = v1;
  this[70] = v1;
  this[77] = v1;
  this[84] = v1;
  this[105] = v1;
  this[112] = v1;
  this[119] = v1;
  this[126] = v1;
  this[133] = v1;
  this[140] = v1;
  this[91] = v1;
  this[98] = v1;
  this[155] = v1;
  this[159] = v1;
  this[147] = v1;
  return this;
}

uint64_t degas::Database::setTraceCallback(uint64_t this)
{
  if ((degas::sQueryProfiling & 1) != 0 || degas::sQueryLogging)
  {
    if (degas::sQueryProfiling)
    {
      v1 = degas::sQueryLogging | 2;
    }

    else
    {
      v1 = degas::sQueryLogging;
    }

    return sqlite3_trace_v2(*(this + 24), v1, degas::degasTraceHandler, 0);
  }

  return this;
}

uint64_t degas::degasTraceHandler(degas *this, unsigned int a2, sqlite3_stmt *pStmt, uint64_t *a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (this == 2)
  {
    v7 = *a4;
    v8 = sqlite3_expanded_sql(pStmt);
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v9 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
    {
      v12 = 134218242;
      v13 = v7 * 0.000000001;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&dword_255870000, v9, OS_LOG_TYPE_INFO, "timing:%lfs  sql:%s", &v12, 0x16u);
    }

    sqlite3_free(v8);
  }

  else if (this == 1)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v6 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = *&a4;
      _os_log_impl(&dword_255870000, v6, OS_LOG_TYPE_INFO, "sql:%s", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void degas::Database::setDataProtectionClass(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v4 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_255870000, v4, OS_LOG_TYPE_ERROR, "trying to set data protection class after database is open - that isn't going to work", v5, 2u);
    }
  }

  *(a1 + 1344) = a2;
}

uint64_t degas::Database::openReadOnly(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  __p[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1344);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = kgWaitForProtectedAccess(v4, a2);
  if (v5 == 1)
  {
    v6 = *(a1 + 1344) - 1;
    if (v6 <= 2)
    {
      v7 = dword_255973D1C[v6];
    }

    degas::databaseMap(v5);
    degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, v2, a1, 1);
  }

  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v8 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to get data protected access to graph database file", __p, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 3;
}

void sub_25594D164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::Database::beginTransaction(sqlite3 **this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = degas::Database::beginStatement(this);
  v3 = degas::Statement::update(v2);
  if (v3)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v4 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(this[3]);
      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_255870000, v4, OS_LOG_TYPE_ERROR, "begin failed: %s", &v9, 0xCu);
    }
  }

  v5 = this[166];
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL degas::Database::checkSchema(degas::Database *this, int a2)
{
  if (*(this + 32) == 1 && (a2 & 1) != 0)
  {
    return 0;
  }

  v5 = a2 ^ 1;
  v6 = degas::Table::checkTableExists((this + 80));
  if ((v6 | v5))
  {
    v7 = v6;
    v8 = 0;
    v9 = !v6;
  }

  else
  {
    v8 = degas::LabelTable::createTable((this + 80)) != 0;
    v7 = 1;
    v9 = 1;
  }

  result = 0;
  if (!v8 && v7)
  {
    v10 = degas::Table::checkTableExists((this + 136));
    if ((v10 | v5))
    {
      v11 = 0;
      v7 &= v10;
      v12 = v9 | !v10;
    }

    else
    {
      v11 = degas::MetadataTable::createTable((this + 136)) != 0;
      v12 = 1;
    }

    result = 0;
    if (!v11)
    {
      if (v7)
      {
        if ((*(this + 674) & 8) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "simulated failure");
          degas::Database::setDatabaseFatalProblem(this, __p);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          return 0;
        }

        if (degas::Table::checkTableExists((this + 192)))
        {
          v13 = (this + 248);
          if (degas::Table::checkTableExists((this + 248)))
          {
            goto LABEL_32;
          }

          if (!a2)
          {
            return 0;
          }
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v14 = degas::NodeTable::createTable((this + 192)) ? 0 : v7;
          if ((v14 & 1) == 0)
          {
            return 0;
          }

          v13 = (this + 248);
          if (degas::Table::checkTableExists((this + 248)))
          {
            goto LABEL_31;
          }
        }

        Table = degas::EdgeTable::createTable(v13);
        v16 = v7 ^ 1;
        if (Table)
        {
          v16 = 1;
        }

        if (v16)
        {
          return 0;
        }

LABEL_31:
        v12 = 1;
LABEL_32:
        if (degas::Table::checkTableExists((this + 304)))
        {
          v17 = (this + 360);
          if (degas::Table::checkTableExists((this + 360)))
          {
LABEL_34:
            v18 = 0;
            goto LABEL_47;
          }

          if (!a2)
          {
            return 0;
          }
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v19 = degas::AttributeTable::createTable((this + 304)) ? 0 : v7;
          if ((v19 & 1) == 0)
          {
            return 0;
          }

          v17 = (this + 360);
          v12 = 1;
          if (degas::Table::checkTableExists((this + 360)))
          {
            goto LABEL_34;
          }
        }

        v20 = degas::AttributeValueTable::createTable(v17);
        v21 = v7 ^ 1;
        if (v20)
        {
          v21 = 1;
        }

        if (v21)
        {
          return 0;
        }

        v18 = 1;
LABEL_47:
        if (degas::Table::checkTableExists((this + 416)))
        {
          v22 = (this + 696);
          if (degas::Table::checkTableExists((this + 696)))
          {
            goto LABEL_60;
          }

          if (!a2)
          {
            return 0;
          }
        }

        else
        {
          if (!a2)
          {
            return 0;
          }

          v23 = degas::AttributeValueTable::createTable((this + 416)) ? 0 : v7;
          if ((v23 & 1) == 0)
          {
            return 0;
          }

          v22 = (this + 696);
          v18 = 1;
          if (degas::Table::checkTableExists((this + 696)))
          {
LABEL_60:
            if (degas::Table::checkTableExists((this + 752)))
            {
              v26 = (this + 808);
              if (degas::Table::checkTableExists((this + 808)))
              {
LABEL_73:
                if (!degas::Table::checkTableExists((this + 864)))
                {
                  if (!a2)
                  {
                    return 0;
                  }

                  v31 = degas::EdgeTable::createTable((this + 864)) ? 0 : v7;
                  if ((v31 & 1) == 0)
                  {
                    return 0;
                  }

                  v30 = (this + 920);
                  if (degas::Table::checkTableExists((this + 920)))
                  {
LABEL_86:
                    if (degas::Table::checkTableExists((this + 976)))
                    {
                      goto LABEL_101;
                    }

                    if (a2)
                    {
                      v35 = degas::AttributeValueTable::createTable((this + 976));
                      v36 = v7 ^ 1;
                      if (v35)
                      {
                        v36 = 1;
                      }

                      if ((v36 & 1) == 0)
                      {
LABEL_101:
                        v34 = v18 ? 1 : 2;
                        if (v12)
                        {
                          v34 = 0;
                        }

                        *(this + 324) = v34;
                        if (!degas::BitmapTable::createTable((this + 1216)))
                        {
                          return degas::ArrayTable::createTable((this + 1248)) == 0;
                        }
                      }
                    }

                    return 0;
                  }

LABEL_83:
                  v32 = degas::AttributeValueTable::createTable(v30);
                  v33 = v7 ^ 1;
                  if (v32)
                  {
                    v33 = 1;
                  }

                  if (v33)
                  {
                    return 0;
                  }

                  goto LABEL_86;
                }

                v30 = (this + 920);
                if (degas::Table::checkTableExists((this + 920)))
                {
                  goto LABEL_86;
                }

                if (a2)
                {
                  goto LABEL_83;
                }

                return 0;
              }

              if (!a2)
              {
                return 0;
              }
            }

            else
            {
              if (!a2)
              {
                return 0;
              }

              v27 = degas::ClientLogTable::createTable((this + 752)) ? 0 : v7;
              if ((v27 & 1) == 0)
              {
                return 0;
              }

              v26 = (this + 808);
              if (degas::Table::checkTableExists((this + 808)))
              {
                goto LABEL_73;
              }
            }

            v28 = degas::NodeTable::createTable(v26);
            v29 = v7 ^ 1;
            if (v28)
            {
              v29 = 1;
            }

            if (v29)
            {
              return 0;
            }

            goto LABEL_73;
          }
        }

        v24 = degas::TransactionLogTable::createTable(v22);
        v25 = v7 ^ 1;
        if (v24)
        {
          v25 = 1;
        }

        if (v25)
        {
          return 0;
        }

        goto LABEL_60;
      }
    }
  }

  return result;
}

void sub_25594D66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::Database::metadataValue(degas::Database *this, sqlite3_int64 a2, sqlite3_int64 *a3)
{
  degas::MetadataCursor::MetadataCursor(v7, a2, (this + 136));
  if (degas::Statement::next(v7[0]) == 1)
  {
    v4 = sqlite3_column_int64(*v7[0], 1);
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 2;
  }

  *a3 = v4;
  degas::Cursor::~Cursor(v7);
  return v5;
}

uint64_t degas::Database::getDatabaseHealth(degas::Database *a1, BOOL *a2, uint64_t a3)
{
  v9 = 0;
  v6 = degas::Database::metadataValue(a1, 4, &v9);
  if (v6 == 2)
  {
    result = 0;
    *a2 = 0;
  }

  else if (v6)
  {
    return 1;
  }

  else
  {
    v7 = v9 == 1;
    *a2 = v9 == 1;
    if (v7)
    {

      return degas::Database::metadataValue(a1, 5, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t degas::Database::createAggregateFunctions(sqlite3 **this)
{
  result = sqlite3_create_function(this[3], "literalBitmapUnion", 1, 1, 0, 0, degas::literalBitmapUnionStep, degas::literalBitmapUnionFinal);
  if (!result)
  {
    result = sqlite3_create_function(this[3], "literalBitmapIntersection", 1, 1, 0, 0, degas::literalBitmapIntersectionStep, degas::literalBitmapIntersectionFinal);
    if (!result)
    {
      result = sqlite3_create_function(this[3], "mergeLiteralBitmap", 1, 1, 0, 0, degas::mergeLiteralBitmapStep, degas::mergeLiteralBitmapFinal);
      if (!result)
      {
        v4 = this[3];

        return degas::createBitmapFunctions(v4, v3);
      }
    }
  }

  return result;
}

uint64_t degas::Database::commitTransaction(degas::Database *this)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(this + 674) & 0x10) != 0 && (*(this + 171) != *(this + 172) || *(this + 177) != *(this + 178) || *(this + 183) != *(this + 184) || *(this + 195) != *(this + 196) || *(this + 201) != *(this + 202) || *(this + 189) != *(this + 190)))
  {
    if (degas::TransactionLogTable::insert(this + 87, v26, (this + 1352), (this + 1400), (this + 1448), (this + 1496), (this + 1544), (this + 1592)))
    {
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v2 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
      {
        v18 = sqlite3_errmsg(*(this + 3));
        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_error_impl(&dword_255870000, v2, OS_LOG_TYPE_ERROR, "logging of changes failed: %s", buf, 0xCu);
      }
    }

    degas::Database::TransactionChanges::clear((this + 1352));
  }

  v3 = *(this + 166);
  if (v3)
  {
    (*(*v3 + 56))(v3);
  }

  if (degas::sDatabaseInsertLabelTracking == 1 && degas::Bitmap::count((this + 1640)))
  {
    *buf = 0u;
    memset(v30, 0, 25);
    degas::LabelCursor::LabelCursor(v23, (this + 1640), (this + 80));
    while (1)
    {
      v4 = degas::Statement::next(v23[0]);
      if (v4 != 1)
      {
        break;
      }

      v5 = sqlite3_column_int64(*v23[0], 0);
      degas::Bitmap::setBit(buf, v5);
    }

    if (v4 != 2)
    {
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v7 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
      {
        v19 = sqlite3_errmsg(*(this + 3));
        *v26 = 136315138;
        *&v26[4] = v19;
        _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "checking for missing labels failed: %s", v26, 0xCu);
      }
    }

    v8 = degas::Bitmap::operator==(buf, this + 1640);
    if ((v8 & 1) == 0)
    {
      *v26 = *(this + 205);
      *&v26[8] = 0u;
      v27 = 0u;
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v26[16], *(this + 207), *(this + 208), (*(this + 208) - *(this + 207)) >> 4);
      v28 = *(this + 1680);
      degas::Bitmap::diffWith<degas::Bitmap>(v26, buf);
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v9 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
      {
        degas::Bitmap::description(__p, v26);
        v20 = v22 >= 0 ? __p : __p[0];
        *v24 = 136315138;
        v25 = v20;
        _os_log_fault_impl(&dword_255870000, v9, OS_LOG_TYPE_FAULT, "missing labels on insert commit:%s", v24, 0xCu);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v26[16];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    *(this + 205) = 0;
    *(this + 206) = 0;
    v10 = *(this + 208);
    for (i = *(this + 207); v10 != i; v10 -= 16)
    {
      degas::BitsetPtr::releaseBitset((v10 - 16));
      *(v10 - 8) = 0;
    }

    *(this + 208) = i;
    v6 = v8 ^ 1;
    degas::Cursor::~Cursor(v23);
    *v26 = v30;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
  }

  else
  {
    v6 = 0;
  }

  v12 = degas::Database::commitStatement(this);
  v13 = degas::Statement::update(v12);
  if (v13)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v14 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v17 = sqlite3_errmsg(*(this + 3));
      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_255870000, v14, OS_LOG_TYPE_ERROR, "commit failed: %s", buf, 0xCu);
    }
  }

  if ((v6 & (v13 == 0)) != 0)
  {
    result = 3;
  }

  else
  {
    result = v13;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25594DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, degas::Statement *a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  degas::Cursor::~Cursor(&a13);
  a17 = &a25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_25594DE64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Immediate *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Immediate>,std::allocator<degas::LabelIndex_Immediate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255973BA1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Immediate *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Immediate>,std::allocator<degas::LabelIndex_Immediate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::LabelIndex_Immediate *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Immediate>,std::allocator<degas::LabelIndex_Immediate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Snapshot *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Snapshot>,std::allocator<degas::LabelIndex_Snapshot>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255973A9FLL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Snapshot *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Snapshot>,std::allocator<degas::LabelIndex_Snapshot>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::LabelIndex_Snapshot *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Snapshot>,std::allocator<degas::LabelIndex_Snapshot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

void degas::Database::TransactionChanges::clear(degas::Database::TransactionChanges *this)
{
  *this = 0;
  *(this + 1) = 0;
  v2 = *(this + 2);
  for (i = *(this + 3); i != v2; i -= 16)
  {
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 8) = 0;
  }

  *(this + 3) = v2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v4 = *(this + 8);
  for (j = *(this + 9); j != v4; j -= 16)
  {
    degas::BitsetPtr::releaseBitset((j - 16));
    *(j - 8) = 0;
  }

  *(this + 9) = v4;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v6 = *(this + 14);
  for (k = *(this + 15); k != v6; k -= 16)
  {
    degas::BitsetPtr::releaseBitset((k - 16));
    *(k - 8) = 0;
  }

  *(this + 15) = v6;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v8 = *(this + 20);
  for (m = *(this + 21); m != v8; m -= 16)
  {
    degas::BitsetPtr::releaseBitset((m - 16));
    *(m - 8) = 0;
  }

  *(this + 21) = v8;
  *(this + 24) = 0;
  *(this + 25) = 0;
  v10 = *(this + 26);
  for (n = *(this + 27); n != v10; n -= 16)
  {
    degas::BitsetPtr::releaseBitset((n - 16));
    *(n - 8) = 0;
  }

  *(this + 27) = v10;
  *(this + 30) = 0;
  *(this + 31) = 0;
  v12 = *(this + 32);
  for (ii = *(this + 33); ii != v12; ii -= 16)
  {
    degas::BitsetPtr::releaseBitset((ii - 16));
    *(ii - 8) = 0;
  }

  *(this + 33) = v12;
}

uint64_t degas::Database::commitStatement(degas::Database *this)
{
  v2 = *(this + 151);
  if (!v2)
  {
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return *(this + 151);
}

void sub_25594E1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C43EB0](v15, v16);
  _Unwind_Resume(a1);
}

CFComparisonResult degas::noCaseNoDiacriticsCollation(degas *this, void *a2, UInt8 *bytes, const void *a4, const UInt8 *a5, const void *a6)
{
  v7 = a4;
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], bytes, a2, 0x8000100u, 0);
  v10 = CFStringCreateWithBytes(v8, a5, v7, 0x8000100u, 0);
  v11 = CFStringCompare(v9, v10, 0x191uLL);
  CFRelease(v9);
  CFRelease(v10);
  return v11;
}

uint64_t degas::Database::metadataValue(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  degas::MetadataCursor::MetadataCursor(v6, a2, (a1 + 136));
  if (degas::Statement::next(v6[0]) == 1)
  {
    degas::Statement::stringColumnValue(v6[0], 1, a3);
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  degas::Cursor::~Cursor(v6);
  return v4;
}

uint64_t degas::Database::setDatabaseFatalProblem(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32))
  {
    return 8;
  }

  result = degas::MetadataTable::insertOrUpdate((a1 + 136), 4, 1);
  if (!result)
  {
    if (*(a1 + 32))
    {
      return 8;
    }

    return degas::MetadataTable::insertOrUpdate((a1 + 136), 5, a2);
  }

  return result;
}

uint64_t degas::Database::beginStatement(degas::Database *this)
{
  v2 = *(this + 150);
  if (!v2)
  {
    operator new();
  }

  degas::Statement::prepareForUse(v2);
  return *(this + 150);
}

void sub_25594E454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C43EB0](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t degas::busyHandler(degas *this, void *a2)
{
  if (a2 > 19)
  {
    return 0;
  }

  v2 = 1;
  usleep(a2 + (1 << a2) + 1);
  return v2;
}

uint64_t degas::Database::databaseFormatVersion(degas::Database *a1, _DWORD *a2)
{
  v4 = 0;
  result = degas::Database::metadataValue(a1, 3, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t degas::Database::openWrite(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1344);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = kgWaitForProtectedAccess(v4, a2);
  if (v5 == 1)
  {
    v6 = *(a1 + 1344) - 1;
    if (v6 <= 2)
    {
      v7 = dword_255973D28[v6];
    }

    degas::databaseMap(v5);
    degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, v2, a1, 2);
  }

  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v8 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to get data protected access to graph database file", buf, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 3;
}

void sub_25594EBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25594EC90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Transaction *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Transaction>,std::allocator<degas::LabelIndex_Transaction>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255973CA6))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Transaction *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Transaction>,std::allocator<degas::LabelIndex_Transaction>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::LabelIndex_Transaction *,std::shared_ptr<degas::LabelIndex>::__shared_ptr_default_delete<degas::LabelIndex,degas::LabelIndex_Transaction>,std::allocator<degas::LabelIndex_Transaction>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::Database::setDatabaseFormatVersion(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 32))
  {
    return 8;
  }

  else
  {
    return degas::MetadataTable::insertOrUpdate((a1 + 136), 3, a2);
  }
}

uint64_t degas::Database::openCreate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1344);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = kgWaitForProtectedAccess(v4, a2);
  if (v5 == 1)
  {
    v6 = *(a1 + 1344) - 1;
    if (v6 <= 2)
    {
      v7 = dword_255973D34[v6];
    }

    degas::databaseMap(v5);
    degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, v2, a1, 2);
  }

  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v8 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "failed to get data protected access to graph database file", buf, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 3;
}

void sub_25594F574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::Database::truncateDatabase(degas::Database *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(this + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  degas::databaseMap(this);
  if ((degas::DatabaseMap::changeMode(&degas::databaseMap(void)::databaseMap, this, this, v2, 3) & 1) == 0)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v3 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9 = this;
      if (*(this + 23) < 0)
      {
        v9 = *this;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_255870000, v3, OS_LOG_TYPE_ERROR, "risky re-open of database due to existing database client at path %s", &v10, 0xCu);
    }
  }

  if (*(this + 32))
  {
    result = 8;
  }

  else
  {
    v5 = *(this + 166);
    if (v5)
    {
      (*(*v5 + 72))(v5);
    }

    v10 = 129;
    v6 = sqlite3_file_control(*(this + 3), 0, 101, &v10);
    v7 = v6;
    degas::databaseMap(v6);
    degas::DatabaseMap::changeMode(&degas::databaseMap(void)::databaseMap, this, this, 3, v2);
    if (v7)
    {
      result = 3;
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void degas::Database::backupDatabase(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = degas::Database::Database(v4);
  degas::databaseMap(v3);
  degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, a2, v4, 3);
}

void sub_25594FA2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::Database::~Database(va);
  _Unwind_Resume(a1);
}

void degas::Database::setOtherCachesInvalidAtPath(degas *a1, const void **a2)
{
  degas::databaseMap(a1);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN5degas8Database27setOtherCachesInvalidAtPathERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  v4[3] = &__block_descriptor_tmp_5693;
  v4[4] = a1;
  degas::DatabaseMap::iterateDatabasesForPath(&degas::databaseMap(void)::databaseMap, a2, v4);
}

uint64_t ___ZN5degas8Database27setOtherCachesInvalidAtPathERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    *(a2 + 33) = 1;
  }

  return result;
}

void degas::Database::copyDatabase(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = degas::Database::Database(v4);
  degas::databaseMap(v3);
  degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, a2, v4, 3);
}

void degas::Database::copyDatabaseFromTo(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  degas::Database::Database(v4);
  v2 = degas::Database::Database(&v3);
  degas::databaseMap(v2);
  degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, a1, v4, 1);
}

void degas::Database::truncateDatabaseAtPath(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = degas::Database::Database(v3);
  degas::databaseMap(v2);
  degas::DatabaseMap::registerDatabase(&degas::databaseMap(void)::databaseMap, a1, v3, 3);
}

uint64_t degas::Database::isEmptyDatabaseAtPath(const char *a1)
{
  ppDb = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (sqlite3_open_v2(a1, &ppDb, 1, 0))
  {
    return 3;
  }

  v2 = ppDb;
  std::string::basic_string[abi:ne200100]<0>(__p, "select * from sqlite_master where type = 'table'");
  degas::Statement::Statement(ppStmt, v2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v1 = degas::Statement::next(ppStmt);
  if (v1 == 1)
  {
    degas::Statement::finishStatementCursor(ppStmt);
  }

  degas::Statement::~Statement(ppStmt);
  sqlite3_close(ppDb);
  return v1;
}

void sub_2559502E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::Database::rollbackTransaction(degas::Database *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 166);
  if (v2)
  {
    (*(*v2 + 64))(v2);
  }

  degas::Database::TransactionChanges::clear((this + 1352));
  *(this + 1640) = 0u;
  v3 = *(this + 208);
  for (i = *(this + 207); v3 != i; v3 -= 16)
  {
    degas::BitsetPtr::releaseBitset((v3 - 16));
    *(v3 - 8) = 0;
  }

  *(this + 208) = i;
  v5 = *(this + 3);
  std::string::basic_string[abi:ne200100]<0>(__p, "rollback");
  degas::Statement::Statement(ppStmt, v5, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v6 = degas::Statement::update(ppStmt);
  if (v6)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v7 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v10 = sqlite3_errmsg(*(this + 3));
      *__p = 136315138;
      *&__p[4] = v10;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "rollback failed: %s", __p, 0xCu);
    }
  }

  degas::Statement::~Statement(ppStmt);
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t degas::Database::addLabel(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = 8;
  }

  else
  {
    degas::LabelCursor::LabelCursor(v14, a3, (a1 + 80));
    v7 = 0;
    for (i = 0; ; i = 1)
    {
      v9 = degas::Statement::next(v14[0]);
      v3 = v9;
      if (v9 != 1)
      {
        break;
      }

      v7 = sqlite3_column_int64(*v14[0], 0);
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v10 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 23) >= 0)
        {
          v11 = a3;
        }

        else
        {
          v11 = *a3;
        }

        *buf = 136446466;
        v17 = v11;
        v18 = 2050;
        v19 = v7;
        _os_log_error_impl(&dword_255870000, v10, OS_LOG_TYPE_ERROR, "adding a label %{public}s that already exists in database with identifier %{public}llu", buf, 0x16u);
      }
    }

    v15 = v7;
    if (i)
    {
      v3 = 5;
    }

    else if (v9 == 2)
    {
      v3 = degas::LabelTable::insert((a1 + 80), &v15, a3);
      if (!v3)
      {
        *a2 = v15;
      }
    }

    degas::Cursor::~Cursor(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_255950698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::getLabelName(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  degas::LabelCursor::LabelCursor(v6, a2, (a1 + 80));
  v4 = 2;
  while (degas::Statement::next(v6[0]) == 1)
  {
    degas::Statement::stringColumnValue(v6[0], 1, a3);
    v4 = 0;
  }

  degas::Cursor::~Cursor(v6);
  return v4;
}

uint64_t degas::Database::setMetadataValue(uint64_t a1, sqlite3_int64 a2, uint64_t *a3)
{
  if (*(a1 + 32))
  {
    return 8;
  }

  else
  {
    return degas::MetadataTable::insertOrUpdate((a1 + 136), a2, a3);
  }
}

uint64_t degas::Database::setMetadataValue(degas::Database *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  if (*(this + 32))
  {
    return 8;
  }

  else
  {
    return degas::MetadataTable::insertOrUpdate((this + 136), a2, a3);
  }
}

uint64_t degas::Database::verifyLabels(degas::Database *this, const degas::Bitmap *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  degas::LabelCursor::LabelCursor(v16, a2, (this + 80));
  v14 = 0u;
  memset(v15, 0, 25);
  while (1)
  {
    v3 = degas::Statement::next(v16[0]);
    v4 = v3;
    if (v3 != 1)
    {
      break;
    }

    v5 = sqlite3_column_int64(*v16[0], 0);
    degas::Bitmap::setBit(&v14, v5);
  }

  if (v3 == 2)
  {
    if (degas::Bitmap::operator==(&v14, a2))
    {
      v4 = 0;
    }

    else
    {
      v12[0] = *a2;
      memset(&v12[1], 0, 32);
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v12[2], *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
      v13 = *(a2 + 40);
      degas::Bitmap::diffWith<degas::Bitmap>(v12, &v14);
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v6 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
      {
        degas::Bitmap::description(__p, v12);
        if (v11 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136315138;
        v18 = v9;
        _os_log_fault_impl(&dword_255870000, v6, OS_LOG_TYPE_FAULT, "element insert refers to non-existent labels:%s", buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v12[2];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
      v4 = 7;
    }
  }

  v12[0] = v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v12);
  degas::Cursor::~Cursor(v16);
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_255950954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a13 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a13);
  degas::Cursor::~Cursor((v21 - 80));
  _Unwind_Resume(a1);
}

uint64_t degas::Database::insertNode(degas::Database *this, sqlite3_int64 *a2)
{
  if (*(this + 32))
  {
    return 8;
  }

  if (degas::sDatabaseLabelReferenceChecking != 1 || (v2 = degas::Database::verifyLabels(this, (a2 + 1)), !v2))
  {
    v12 = 0u;
    memset(v13, 0, 25);
    v2 = degas::NodeTable::insert(this + 24, a2, (a2 + 1));
    if (!v2)
    {
      degas::Bitmap::begin(a2 + 1, v11);
      v5 = a2[4];
      while (1)
      {
        v6 = v11[0] == a2 + 1 && v11[1] == -1;
        if (v6 && v11[2] == v5)
        {
          break;
        }

        v8 = *a2;
        (*(**(this + 166) + 80))(*(this + 166));
        degas::Bitmap::iterator::operator++(v11);
      }

      v9 = *(this + 160);
      if ((v9 & 0x8000000000000000) == 0)
      {
        *(this + 160) = v9 + 1;
      }

      if ((*(this + 674) & 0x10) != 0)
      {
        degas::Bitmap::setBit((this + 1352), *a2);
      }

      if (degas::sDatabaseInsertLabelTracking == 1)
      {
        degas::Bitmap::unionWith<degas::Bitmap>((this + 1640), (a2 + 1));
      }
    }

    v11[0] = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v11);
  }

  return v2;
}

void sub_255950AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::updateNodeEdges(sqlite3 **this, unint64_t a2, const degas::Bitmap *a3, const degas::Bitmap *a4, const degas::Bitmap *a5, const degas::Bitmap *a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (this[4])
  {
    v6 = 8;
  }

  else
  {
    degas::NodeCursor::NodeCursor(v20);
    degas::NodeCursor::setForIdentifier(v20, a2, (this + 24));
    if (degas::Statement::next(v20[0]) != 1)
    {
      goto LABEL_16;
    }

    *buf = 0u;
    memset(v23, 0, 25);
    v18 = 0u;
    memset(v19, 0, 25);
    v16 = 0u;
    memset(v17, 0, 25);
    degas::Statement::bitmapColumnValue(v20[0], 2, buf);
    degas::Statement::bitmapColumnValue(v20[0], 3, &v18);
    if (*(a3 + 2) != *(a3 + 3))
    {
      degas::Bitmap::unionWith<degas::Bitmap>(buf, a3);
    }

    if (*(a4 + 2) != *(a4 + 3))
    {
      degas::Bitmap::unionWith<degas::Bitmap>(&v18, a4);
    }

    if (*(a5 + 2) != *(a5 + 3))
    {
      degas::Bitmap::diffWith<degas::Bitmap>(buf, a5);
    }

    if (*(a6 + 2) != *(a6 + 3))
    {
      degas::Bitmap::diffWith<degas::Bitmap>(&v18, a6);
    }

    v6 = degas::NodeTable::update(this + 24, a2, buf, &v18);
    if (!v6 && (*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateNode((this + 169), a2);
    }

    v21 = v17;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v21);
    *&v16 = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
    *&v18 = v23;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
    if (v6 == 2)
    {
LABEL_16:
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v13 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "failed to find node %llu when updating its edges", buf, 0xCu);
      }

      v6 = 2;
    }

    degas::Cursor::~Cursor(v20);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_255950D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  degas::Cursor::~Cursor(va);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::TransactionChanges::updateNode(degas::Database::TransactionChanges *this, unint64_t a2)
{
  result = degas::Bitmap::isSet(this, a2);
  if ((result & 1) == 0)
  {
    result = degas::Bitmap::isSet((this + 192), a2);
    if ((result & 1) == 0)
    {

      return degas::Bitmap::setBit((this + 96), a2);
    }
  }

  return result;
}

uint64_t degas::Database::insertEdge(uint64_t a1, unint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (degas::Database::checkNodeExistsForIdentifier(a1, a2[7]) != 1)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v6 = degas::DegasLoggingConnection(void)::log;
    if (!os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v7 = a2[7];
    *buf = 134217984;
    *&buf[4] = v7;
    v8 = "failed edge insert because source node %llu does not exist";
    goto LABEL_36;
  }

  if (degas::Database::checkNodeExistsForIdentifier(a1, a2[8]) != 1)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v6 = degas::DegasLoggingConnection(void)::log;
    if (!os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v16 = a2[8];
    *buf = 134217984;
    *&buf[4] = v16;
    v8 = "failed edge insert because target node %llu does not exist";
LABEL_36:
    _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
LABEL_14:
    updated = 3;
    goto LABEL_15;
  }

  if (degas::sDatabaseLabelReferenceChecking == 1 && (v4 = degas::Database::verifyLabels(a1, (a2 + 1)), v4) || (v4 = degas::EdgeTable::insert((a1 + 248), a2, (a2 + 1), a2[7], a2[8]), v4))
  {
    updated = v4;
  }

  else
  {
    *buf = 0u;
    memset(v21, 0, 25);
    degas::Bitmap::setBit(buf, *a2);
    v18 = 0u;
    memset(v19, 0, 25);
    degas::Bitmap::begin(a2 + 1, v17);
    v11 = a2[4];
    while (1)
    {
      v12 = v17[0] == a2 + 1 && v17[1] == -1;
      if (v12 && v17[2] == v11)
      {
        break;
      }

      v14 = *a2;
      (*(**(a1 + 1328) + 96))(*(a1 + 1328));
      degas::Bitmap::iterator::operator++(v17);
    }

    updated = degas::Database::updateNodeEdges(a1, a2[7], &v18, buf, &v18, &v18);
    if (!updated)
    {
      updated = degas::Database::updateNodeEdges(a1, a2[8], buf, &v18, &v18, &v18);
      if (!updated)
      {
        v15 = *(a1 + 1288);
        if ((v15 & 0x8000000000000000) == 0)
        {
          *(a1 + 1288) = v15 + 1;
        }

        if ((*(a1 + 1348) & 0x10) != 0)
        {
          degas::Bitmap::setBit((a1 + 1400), *a2);
        }

        if (degas::sDatabaseInsertLabelTracking == 1)
        {
          degas::Bitmap::unionWith<degas::Bitmap>((a1 + 1640), (a2 + 1));
        }

        updated = 0;
      }
    }

    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
    *&v18 = v21;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return updated;
}

void sub_25595111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a13 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::checkNodeExistsForIdentifier(degas::Database *this, sqlite3_int64 a2)
{
  degas::NodeCursor::NodeCursor(v6);
  degas::NodeCursor::setForIdentifier(v6, a2, (this + 192));
  v4 = degas::Statement::next(v6[0]);
  if (v4 == 1)
  {
    if (sqlite3_column_int64(*v6[0], 0) == a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }
  }

  degas::Cursor::~Cursor(v6);
  return v4;
}

uint64_t degas::Database::insertNodes(sqlite3 **this, sqlite3_int64 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 - *a2 == 56)
  {
    v5 = *a2;

    return degas::Database::insertNode(this, v5);
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    v14 = 0u;
    memset(v15, 0, 25);
    if (v3 == v4)
    {
LABEL_25:
      v7 = 0;
    }

    else
    {
      while (1)
      {
        if (degas::sDatabaseLabelReferenceChecking == 1)
        {
          v7 = degas::Database::verifyLabels(this, (v3 + 1));
          if (v7)
          {
            break;
          }
        }

        v7 = degas::NodeTable::insert(this + 24, v3, (v3 + 1));
        if (v7)
        {
          break;
        }

        degas::Bitmap::begin(v3 + 1, v13);
        v8 = v3[4];
        while (1)
        {
          v9 = v13[0] == v3 + 1 && v13[1] == -1;
          if (v9 && v13[2] == v8)
          {
            break;
          }

          v11 = *v3;
          (*(*this[166] + 80))(this[166]);
          degas::Bitmap::iterator::operator++(v13);
        }

        v12 = this[160];
        if ((v12 & 0x8000000000000000) == 0)
        {
          this[160] = (v12 + 1);
        }

        if ((*(this + 674) & 0x10) != 0)
        {
          degas::Bitmap::setBit((this + 169), *v3);
        }

        if (degas::sDatabaseInsertLabelTracking == 1)
        {
          degas::Bitmap::unionWith<degas::Bitmap>((this + 205), (v3 + 1));
        }

        v3 += 7;
        if (v3 == v4)
        {
          goto LABEL_25;
        }
      }
    }

    v13[0] = v15;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v13);
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v17[0]);
    return v7;
  }
}

void sub_2559513AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(a21);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::insertEdges(sqlite3 **this, sqlite3_int64 **a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = 0x8E38E38E38E38E39 * (v3 - *a2);
  if (!v4)
  {
    v9 = 0;
LABEL_29:
    v19 = *MEMORY[0x277D85DE8];
    return v9;
  }

  if (v4 != 1)
  {
    v59[0] = 0;
    v59[1] = 0;
    v58 = v59;
    v57[0] = 0;
    v57[1] = 0;
    v56 = v57;
    v54 = 0u;
    memset(v55, 0, 25);
    v52 = 0u;
    memset(v53, 0, 25);
    v50 = 0u;
    memset(v51, 0, 25);
    while (v2 != v3)
    {
      degas::Bitmap::setBit(&v52, v2[7]);
      degas::Bitmap::setBit(&v52, v2[8]);
      v2 += 9;
    }

    degas::Database::findMissingNodesForIdentifiers(this, &v52, &v50);
    v11 = v50;
    if (v50 == 0xFFFFFFFFLL)
    {
      v12 = v51[0];
      v13 = v51[1];
      if (v51[0] == v51[1])
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        do
        {
          v14 = *v12;
          v15 = *(*v12 + 4);
          if (v15 == -1)
          {
            v16 = 0;
            v17 = 0uLL;
            do
            {
              do
              {
                v17 = vpadalq_u16(v17, vpaddlq_u8(vcntq_s8(*(v14 + 16 + 4 * v16))));
                v16 += 4;
              }

              while (v16 != 32);
              v16 = 0;
              v15 = vaddvq_s32(v17);
              v17 = 0uLL;
            }

            while (v15 == -1);
            *(v14 + 4) = v15;
          }

          v11 += v15;
          v12 += 2;
        }

        while (v12 != v13);
      }

      *&v50 = v11;
    }

    if (v11)
    {
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v18 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
      {
        v47 = degas::Bitmap::count(&v50);
        *buf = 67109120;
        *&buf[4] = v47;
        _os_log_fault_impl(&dword_255870000, v18, OS_LOG_TYPE_FAULT, "failed edge insert because %d source or target nodes do not exist", buf, 8u);
      }

      v9 = 3;
    }

    else
    {
      v20 = *a2;
      v21 = a2[1];
      if (*a2 == v21)
      {
LABEL_73:
        v39 = v58;
        if (v58 == v59)
        {
          goto LABEL_82;
        }

        do
        {
          updated = degas::Database::updateNodeEdges(this, *(v39 + 4), &v54, (v39 + 40), &v54, &v54);
          v9 = updated;
          v41 = *(v39 + 1);
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = *(v39 + 2);
              v23 = *v42 == v39;
              v39 = v42;
            }

            while (!v23);
          }

          if (v42 == v59)
          {
            break;
          }

          v39 = v42;
        }

        while (!updated);
        if (!updated)
        {
LABEL_82:
          v43 = v56;
          if (v56 == v57)
          {
            v9 = 0;
          }

          else
          {
            do
            {
              v44 = degas::Database::updateNodeEdges(this, *(v43 + 4), (v43 + 40), &v54, &v54, &v54);
              v9 = v44;
              v45 = *(v43 + 1);
              if (v45)
              {
                do
                {
                  v46 = v45;
                  v45 = *v45;
                }

                while (v45);
              }

              else
              {
                do
                {
                  v46 = *(v43 + 2);
                  v23 = *v46 == v43;
                  v43 = v46;
                }

                while (!v23);
              }

              if (v46 == v57)
              {
                break;
              }

              v43 = v46;
            }

            while (!v44);
          }
        }
      }

      else
      {
        while (1)
        {
          if (degas::sDatabaseLabelReferenceChecking == 1)
          {
            v9 = degas::Database::verifyLabels(this, (v20 + 1));
            if (v9)
            {
              break;
            }
          }

          v9 = degas::EdgeTable::insert(this + 31, v20, (v20 + 1), v20[7], v20[8]);
          if (v9)
          {
            break;
          }

          degas::Bitmap::begin(v20 + 1, buf);
          v22 = v20[4];
          while (1)
          {
            v23 = *buf == v20 + 1 && v62 == -1;
            if (v23 && v63 == v22)
            {
              break;
            }

            v25 = *v20;
            (*(*this[166] + 96))(this[166]);
            degas::Bitmap::iterator::operator++(buf);
          }

          v26 = v59[0];
          if (!v59[0])
          {
            goto LABEL_52;
          }

          v27 = v20[7];
          v28 = v59;
          do
          {
            v29 = v26;
            v30 = v28;
            v31 = *(v26 + 4);
            if (v31 >= v27)
            {
              v28 = v26;
            }

            v26 = *&v26[8 * (v31 < v27)];
          }

          while (v26);
          if (v28 == v59)
          {
            goto LABEL_52;
          }

          if (v31 < v27)
          {
            v29 = v30;
          }

          if (v27 >= *(v29 + 4))
          {
            degas::Bitmap::setBit((v28 + 5), *v20);
          }

          else
          {
LABEL_52:
            v48 = 0u;
            memset(v49, 0, 25);
            degas::Bitmap::setBit(&v48, *v20);
            *buf = v20[7];
            v62 = v48;
            v63 = 0u;
            v64 = 0u;
            std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v63 + 8, *&v49[0], *(&v49[0] + 1), (*(&v49[0] + 1) - *&v49[0]) >> 4);
            v65 = BYTE8(v49[1]);
            std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,degas::Bitmap>>(&v58, *buf);
            v60 = &v63 + 1;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v60);
            *buf = v49;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          v32 = v57[0];
          if (!v57[0])
          {
            goto LABEL_62;
          }

          v33 = v20[8];
          v34 = v57;
          do
          {
            v35 = v32;
            v36 = v34;
            v37 = *(v32 + 4);
            if (v37 >= v33)
            {
              v34 = v32;
            }

            v32 = *&v32[8 * (v37 < v33)];
          }

          while (v32);
          if (v34 == v57)
          {
            goto LABEL_62;
          }

          if (v37 < v33)
          {
            v35 = v36;
          }

          if (v33 >= *(v35 + 4))
          {
            degas::Bitmap::setBit((v34 + 5), *v20);
          }

          else
          {
LABEL_62:
            v48 = 0u;
            memset(v49, 0, 25);
            degas::Bitmap::setBit(&v48, *v20);
            *buf = v20[8];
            v62 = v48;
            v63 = 0u;
            v64 = 0u;
            std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v63 + 8, *&v49[0], *(&v49[0] + 1), (*(&v49[0] + 1) - *&v49[0]) >> 4);
            v65 = BYTE8(v49[1]);
            std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,degas::Bitmap>>(&v56, *buf);
            v60 = &v63 + 1;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v60);
            *buf = v49;
            std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          v38 = this[161];
          if ((v38 & 0x8000000000000000) == 0)
          {
            this[161] = (v38 + 1);
          }

          if ((*(this + 674) & 0x10) != 0)
          {
            degas::Bitmap::setBit((this + 175), *v20);
          }

          if (degas::sDatabaseInsertLabelTracking == 1)
          {
            degas::Bitmap::unionWith<degas::Bitmap>((this + 205), (v20 + 1));
          }

          v20 += 9;
          if (v20 == v21)
          {
            goto LABEL_73;
          }
        }
      }
    }

    *buf = v51;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v53;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v55;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v57[0]);
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v59[0]);
    goto LABEL_29;
  }

  v6 = *MEMORY[0x277D85DE8];
  v7 = *a2;

  return degas::Database::insertEdge(this, v7);
}

void sub_255951A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char *a35)
{
  *(v35 - 160) = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v35 - 160));
  *(v35 - 160) = &a23;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v35 - 160));
  *(v35 - 160) = &a29;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v35 - 160));
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(a35);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v35 - 184));
  _Unwind_Resume(a1);
}

uint64_t degas::Database::findMissingNodesForIdentifiers(degas::Database *this, const degas::Bitmap *a2, degas::Bitmap *a3)
{
  v11[0] = *a2;
  memset(&v11[1], 0, 32);
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v11[2], *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  v12 = *(a2 + 40);
  degas::NodeCursor::NodeCursor(v10);
  degas::NodeCursor::setForIdentifiers(v10, a2, (this + 192));
  while (1)
  {
    v6 = degas::Statement::next(v10[0]);
    if (v6 != 1)
    {
      break;
    }

    v7 = sqlite3_column_int64(*v10[0], 0);
    degas::Bitmap::clearBit(v11, v7);
  }

  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    degas::Bitmap::operator=(a3, v11);
  }

  degas::Cursor::~Cursor(v10);
  v10[0] = &v11[2];
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);
  return v8;
}

void sub_255951BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  degas::Cursor::~Cursor(&a9);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,degas::Bitmap>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t degas::Database::removeNode(degas::Database *this, unint64_t a2)
{
  if (*(this + 32))
  {
    return 8;
  }

  v18 = 0u;
  memset(v19, 0, 25);
  v16 = 0u;
  memset(v17, 0, 25);
  degas::NodeCursor::NodeCursor(&v13);
  degas::NodeCursor::setForIdentifier(&v13, a2, (this + 192));
  if (degas::Statement::next(v13) == 1)
  {
    degas::Statement::bitmapColumnValue(v13, 2, &v18);
    v5 = degas::Statement::literalBitmapColumnValue(v13, 3);
    degas::Statement::bitmapColumnValue(v13, 1, &v16);
    degas::Bitmap::unionWith<degas::LiteralBitmap>(&v18, v5);
    degas::Cursor::~Cursor(&v13);
    if ((*(this + 674) & 0x10) != 0)
    {
      v13 = *(this + 3);
      v14 = this + 40;
      degas::TombstoneCopier::copyNode(&v13, a2);
    }

    degas::Bitmap::begin(&v18, &v13);
    v6 = v19[1];
    while (1)
    {
      v7 = v13 == &v18 && v14 == -1;
      if (v7 && v15 == v6)
      {
        break;
      }

      degas::Database::removeEdge(this, v14, a2);
      degas::Bitmap::iterator::operator++(&v13);
    }

    degas::Bitmap::begin(&v16, &v13);
    v9 = v17[1];
    while (1)
    {
      v10 = v13 == &v16 && v14 == -1;
      if (v10 && v15 == v9)
      {
        break;
      }

      (*(**(this + 166) + 88))(*(this + 166));
      degas::Bitmap::iterator::operator++(&v13);
    }

    v2 = degas::AttributeValueTable::deleteEntry((this + 360), a2);
    if (!v2)
    {
      v2 = degas::NodeTable::deleteEntry(this + 24, a2);
      if (!v2)
      {
        if ((*(this + 674) & 0x10) != 0)
        {
          degas::Database::TransactionChanges::deleteNode(this + 169, a2);
        }

        v2 = 0;
      }
    }
  }

  else
  {
    degas::Cursor::~Cursor(&v13);
    v2 = 2;
  }

  v13 = v17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v13);
  *&v16 = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  return v2;
}

void sub_255951F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a13 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::removeEdge(degas::Database *this, sqlite3_int64 a2, uint64_t a3)
{
  if (*(this + 32))
  {
    return 8;
  }

  v7 = degas::EdgeCursor::EdgeCursor(v21);
  degas::EdgeCursor::setForIdentifier(v7, a2, (this + 248));
  if (degas::Statement::next(v21[0]) == 1)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      *&v19 = *(this + 3);
      *(&v19 + 1) = this + 40;
      degas::TombstoneCopier::copyEdge(&v19, a2);
    }

    v8 = sqlite3_column_int64(*v21[0], 2);
    v9 = sqlite3_column_int64(*v21[0], 3);
    memset(v20, 0, 25);
    v19 = 0u;
    degas::Statement::bitmapColumnValue(v21[0], 1, &v19);
    v17 = 0u;
    memset(v18, 0, 25);
    v15 = 0u;
    memset(v16, 0, 25);
    degas::Bitmap::setBit(&v17, a2);
    if (v8 == a3 || (updated = degas::Database::updateNodeEdges(this, v8, &v15, &v15, &v15, &v17), !updated))
    {
      if (v9 == a3 || (updated = degas::Database::updateNodeEdges(this, v9, &v15, &v15, &v17, &v15), !updated))
      {
        degas::Bitmap::begin(&v19, v14);
        v10 = v20[1];
        while (1)
        {
          v11 = v14[0] == &v19 && v14[1] == -1;
          if (v11 && v14[2] == v10)
          {
            break;
          }

          (*(**(this + 166) + 104))(*(this + 166));
          degas::Bitmap::iterator::operator++(v14);
        }

        degas::AttributeValueTable::deleteEntry((this + 416), a2);
        updated = degas::EdgeTable::deleteEntry(this + 31, a2);
        if (!updated)
        {
          if ((*(this + 674) & 0x10) != 0)
          {
            degas::Bitmap::setBit((this + 1400), a2);
          }

          updated = 0;
        }
      }
    }

    v14[0] = v16;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v14);
    *&v15 = v18;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
    *&v17 = v20;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
  }

  else
  {
    updated = 2;
  }

  degas::Cursor::~Cursor(v21);
  return updated;
}

uint64_t degas::Database::TransactionChanges::deleteNode(degas::BitsetPtr **this, unint64_t a2)
{
  if (degas::Bitmap::isSet(this, a2))
  {

    return degas::Bitmap::clearBit(this, a2);
  }

  else
  {
    if (degas::Bitmap::isSet((this + 12), a2))
    {
      degas::Bitmap::clearBit(this + 12, a2);
    }

    return degas::Bitmap::setBit((this + 24), a2);
  }
}

uint64_t degas::Database::removeNodes(degas::Database *this, Bitmap *a2)
{
  if (*(this + 32))
  {
    return 8;
  }

  if (a2->_bitSets.__begin_ == a2->_bitSets.__end_)
  {
    return 0;
  }

  if ((*(this + 674) & 0x10) != 0)
  {
    *&v21 = *(this + 3);
    *(&v21 + 1) = this + 40;
    degas::TombstoneCopier::copyNodes(&v21, a2);
  }

  v21 = 0u;
  memset(v22, 0, 25);
  memset(&v20, 0, 41);
  v18 = 0u;
  memset(v19, 0, 25);
  degas::NodeCursor::NodeCursor(v17);
  degas::NodeCursor::setForIdentifiers(v17, a2, (this + 192));
  while (degas::Statement::next(v17[0]) == 1)
  {
    v5 = degas::Statement::literalBitmapColumnValue(v17[0], 2);
    v6 = degas::Statement::literalBitmapColumnValue(v17[0], 3);
    v7 = degas::Statement::literalBitmapColumnValue(v17[0], 1);
    degas::Bitmap::unionWith<degas::LiteralBitmap>(&v20, v5);
    degas::Bitmap::unionWith<degas::LiteralBitmap>(&v20, v6);
    degas::Bitmap::unionWith<degas::LiteralBitmap>(&v18, v7);
    v8 = sqlite3_column_int64(*v17[0], 0);
    v2 = degas::AttributeValueTable::deleteEntry((this + 360), v8);
    if (v2)
    {
      goto LABEL_25;
    }
  }

  (*(**(this + 166) + 112))(*(this + 166), &v18, a2);
  v2 = degas::Database::removeEdges(this, &v20, a2);
  if (!v2)
  {
    degas::Bitmap::begin(a2, &v14);
    end = a2->_bitSets.__end_;
    while (1)
    {
      v10 = v15;
      v11 = v14 == a2 && v15 == -1;
      if (v11 && v16 == end)
      {
        break;
      }

      v2 = degas::NodeTable::deleteEntry(this + 24, v15);
      if (v2)
      {
        goto LABEL_25;
      }

      if ((*(this + 674) & 0x10) != 0)
      {
        degas::Database::TransactionChanges::deleteNode(this + 169, v10);
      }

      degas::Bitmap::iterator::operator++(&v14);
    }

    v2 = 0;
  }

LABEL_25:
  degas::Cursor::~Cursor(v17);
  v14 = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  v20._bitCount = v22;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v20);
  return v2;
}

void sub_2559524E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, degas::Statement *a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23)
{
  degas::Cursor::~Cursor(&a13);
  a10 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a15 = &a23;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  a21 = (v23 - 80);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::removeEdges(degas::Database *this, Bitmap *a2, const degas::Bitmap *a3)
{
  if (*(this + 32))
  {
    return 8;
  }

  if (a2->_bitSets.__begin_ == a2->_bitSets.__end_)
  {
    return 0;
  }

  if ((*(this + 674) & 0x10) != 0)
  {
    *&v32 = *(this + 3);
    *(&v32 + 1) = this + 40;
    degas::TombstoneCopier::copyEdges(&v32, a2);
  }

  v7 = degas::EdgeCursor::EdgeCursor(v34);
  degas::EdgeCursor::setForIdentifiers(v7, a2, (this + 248));
  v32 = 0u;
  memset(v33, 0, 25);
  memset(v31, 0, 25);
  v30 = 0u;
  v28 = 0u;
  memset(v29, 0, 25);
  updated = 2;
  v26 = 0u;
  memset(v27, 0, 25);
  while (degas::Statement::next(v34[0]) == 1)
  {
    v8 = sqlite3_column_int64(*v34[0], 2);
    degas::Bitmap::setBit(&v32, v8);
    v9 = sqlite3_column_int64(*v34[0], 3);
    degas::Bitmap::setBit(&v30, v9);
    v10 = degas::Statement::literalBitmapColumnValue(v34[0], 1);
    degas::Bitmap::unionWith<degas::LiteralBitmap>(&v28, v10);
    v11 = sqlite3_column_int64(*v34[0], 0);
    updated = degas::AttributeValueTable::deleteEntry((this + 416), v11);
  }

  degas::Bitmap::diffWith<degas::Bitmap>(&v32, a3);
  degas::Bitmap::begin(&v32, &v23);
  v12 = v33[1];
  while (1)
  {
    v13 = v23 == &v32 && v24 == -1;
    if (v13 && v25 == v12)
    {
      break;
    }

    updated = degas::Database::updateNodeEdges(this, v24, &v26, &v26, &v26, a2);
    if (updated)
    {
      goto LABEL_48;
    }

    degas::Bitmap::iterator::operator++(&v23);
  }

  degas::Bitmap::diffWith<degas::Bitmap>(&v30, a3);
  degas::Bitmap::begin(&v30, &v23);
  v15 = v31[1];
  while (1)
  {
    v16 = v23 == &v30 && v24 == -1;
    if (v16 && v25 == v15)
    {
      break;
    }

    updated = degas::Database::updateNodeEdges(this, v24, &v26, &v26, a2, &v26);
    if (updated)
    {
      goto LABEL_48;
    }

    degas::Bitmap::iterator::operator++(&v23);
  }

  (*(**(this + 166) + 120))(*(this + 166), &v28, a2);
  if (!updated)
  {
    degas::Bitmap::begin(a2, &v23);
    end = a2->_bitSets.__end_;
    while (1)
    {
      v19 = v24;
      v20 = v23 == a2 && v24 == -1;
      if (v20 && v25 == end)
      {
        break;
      }

      updated = degas::EdgeTable::deleteEntry(this + 31, v24);
      if (updated)
      {
        goto LABEL_48;
      }

      if ((*(this + 674) & 0x10) != 0)
      {
        if (degas::Bitmap::isSet((this + 1400), v19))
        {
          degas::Bitmap::clearBit(this + 175, v19);
        }

        else
        {
          if (degas::Bitmap::isSet((this + 1496), v19))
          {
            degas::Bitmap::clearBit(this + 187, v19);
          }

          degas::Bitmap::setBit((this + 1592), v19);
        }
      }

      degas::Bitmap::iterator::operator++(&v23);
    }

    updated = 0;
  }

LABEL_48:
  v23 = v27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v23);
  *&v26 = v29;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v26);
  *&v28 = v31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v28);
  *&v30 = v33;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
  degas::Cursor::~Cursor(v34);
  return updated;
}

uint64_t degas::Database::removeEdges(degas::Database *this, Bitmap *a2)
{
  v4 = 0u;
  memset(v5, 0, 25);
  v2 = degas::Database::removeEdges(this, a2, &v4);
  v6 = v5;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
  return v2;
}

void sub_25595297C(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t degas::Database::getNodeInfo(degas::Database *this, sqlite3_int64 a2, degas::Bitmap *a3, degas::Bitmap *a4, degas::Bitmap *a5)
{
  degas::NodeCursor::NodeCursor(v12);
  degas::NodeCursor::setForIdentifier(v12, a2, (this + 192));
  if (degas::Statement::next(v12[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v12[0], 1, a3);
    degas::Statement::bitmapColumnValue(v12[0], 2, a4);
    degas::Statement::bitmapColumnValue(v12[0], 3, a5);
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  degas::Cursor::~Cursor(v12);
  return v10;
}

uint64_t degas::Database::appendSourceNodesForEdges(degas::Database *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::EdgeCursor::EdgeCursor(v8);
  degas::EdgeCursor::setForIdentifiers(v8, a2, (this + 248));
  while (degas::Statement::next(v8[0]) == 1)
  {
    v6 = sqlite3_column_int64(*v8[0], 2);
    degas::Bitmap::setBit(a3, v6);
  }

  degas::Cursor::~Cursor(v8);
  return 0;
}

uint64_t degas::Database::appendTargetNodesForEdges(degas::Database *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::EdgeCursor::EdgeCursor(v8);
  degas::EdgeCursor::setForIdentifiers(v8, a2, (this + 248));
  while (degas::Statement::next(v8[0]) == 1)
  {
    v6 = sqlite3_column_int64(*v8[0], 3);
    degas::Bitmap::setBit(a3, v6);
  }

  degas::Cursor::~Cursor(v8);
  return 0;
}

uint64_t degas::Database::appendAllNodesForEdges(degas::Database *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::EdgeCursor::EdgeCursor(v9);
  degas::EdgeCursor::setForIdentifiers(v9, a2, (this + 248));
  while (degas::Statement::next(v9[0]) == 1)
  {
    v6 = sqlite3_column_int64(*v9[0], 3);
    degas::Bitmap::setBit(a3, v6);
    v7 = sqlite3_column_int64(*v9[0], 2);
    degas::Bitmap::setBit(a3, v7);
  }

  degas::Cursor::~Cursor(v9);
  return 0;
}

uint64_t degas::Database::appendSourceAndTargetNodesForEdges(degas::Database *this, Bitmap *a2, degas::Bitmap *a3, degas::Bitmap *a4)
{
  degas::EdgeCursor::EdgeCursor(v11);
  degas::EdgeCursor::setForIdentifiers(v11, a2, (this + 248));
  while (degas::Statement::next(v11[0]) == 1)
  {
    v8 = sqlite3_column_int64(*v11[0], 3);
    degas::Bitmap::setBit(a4, v8);
    v9 = sqlite3_column_int64(*v11[0], 2);
    degas::Bitmap::setBit(a3, v9);
  }

  degas::Cursor::~Cursor(v11);
  return 0;
}

uint64_t degas::Database::sortNodesByIntAttribute(uint64_t a1, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5, uint64_t a6)
{
  degas::SortAttributeValueCursor::SortAttributeValueCursor(v17);
  degas::SortAttributeValueCursor::setForIntAttrIdentifiers(v17, a2, a5, a3, a4, (a1 + 584));
  while (1)
  {
    v12 = degas::Statement::next(v17[0]);
    if (v12 != 1)
    {
      break;
    }

    v13 = sqlite3_column_int64(*v17[0], 0);
    v14 = sqlite3_column_int64(*v17[0], 1);
    (*(a6 + 16))(a6, v13, v14);
  }

  if (v12 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  degas::Cursor::~Cursor(v17);
  return v15;
}

uint64_t degas::Database::sortNodesByRealAttribute(uint64_t a1, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5, uint64_t a6)
{
  degas::SortAttributeValueCursor::SortAttributeValueCursor(v17);
  degas::SortAttributeValueCursor::setForRealAttrIdentifiers(v17, a2, a5, a3, a4, (a1 + 584));
  while (1)
  {
    v12 = degas::Statement::next(v17[0]);
    if (v12 != 1)
    {
      break;
    }

    v13 = sqlite3_column_int64(*v17[0], 0);
    v14 = sqlite3_column_double(*v17[0], 1);
    (*(a6 + 16))(a6, v13, v14);
  }

  if (v12 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  degas::Cursor::~Cursor(v17);
  return v15;
}