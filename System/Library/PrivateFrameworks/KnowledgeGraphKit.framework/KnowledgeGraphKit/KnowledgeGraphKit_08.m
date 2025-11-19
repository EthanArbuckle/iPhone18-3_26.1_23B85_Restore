uint64_t degas::Database::sortNodesByStringAttribute(uint64_t a1, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5, uint64_t a6)
{
  degas::SortAttributeValueCursor::SortAttributeValueCursor(v19);
  degas::SortAttributeValueCursor::setForStringAttrIdentifiers(v19, a2, a5, a3, a4, (a1 + 584));
  while (1)
  {
    v12 = degas::Statement::next(v19[0]);
    if (v12 != 1)
    {
      break;
    }

    v13 = sqlite3_column_int64(*v19[0], 0);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    v14 = degas::Statement::stringColumnValue(v19[0], 1, __p);
    (*(a6 + 16))(a6, v13, __p, v14);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v12 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  degas::Cursor::~Cursor(v19);
  return v15;
}

uint64_t degas::Database::sortEdgesByIntAttribute(uint64_t a1, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5, uint64_t a6)
{
  degas::SortAttributeValueCursor::SortAttributeValueCursor(v17);
  degas::SortAttributeValueCursor::setForIntAttrIdentifiers(v17, a2, a5, a3, a4, (a1 + 640));
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

uint64_t degas::Database::sortEdgesByRealAttribute(uint64_t a1, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5, uint64_t a6)
{
  degas::SortAttributeValueCursor::SortAttributeValueCursor(v17);
  degas::SortAttributeValueCursor::setForRealAttrIdentifiers(v17, a2, a5, a3, a4, (a1 + 640));
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

uint64_t degas::Database::sortEdgesByStringAttribute(uint64_t a1, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5, uint64_t a6)
{
  degas::SortAttributeValueCursor::SortAttributeValueCursor(v19);
  degas::SortAttributeValueCursor::setForStringAttrIdentifiers(v19, a2, a5, a3, a4, (a1 + 640));
  while (1)
  {
    v12 = degas::Statement::next(v19[0]);
    if (v12 != 1)
    {
      break;
    }

    v13 = sqlite3_column_int64(*v19[0], 0);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    v14 = degas::Statement::stringColumnValue(v19[0], 1, __p);
    (*(a6 + 16))(a6, v13, __p, v14);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v12 == 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  degas::Cursor::~Cursor(v19);
  return v15;
}

unint64_t degas::Database::nodeCount(degas::Database *this)
{
  result = *(this + 160);
  if (result == -1)
  {
    v3 = 0;
    if (degas::Table::rowCount((this + 192), &v3))
    {
      return *(this + 160);
    }

    else
    {
      result = v3;
      *(this + 160) = v3;
    }
  }

  return result;
}

unint64_t degas::Database::edgeCount(degas::Database *this)
{
  result = *(this + 161);
  if (result == -1)
  {
    v3 = 0;
    if (degas::Table::rowCount((this + 248), &v3))
    {
      return *(this + 161);
    }

    else
    {
      result = v3;
      *(this + 161) = v3;
    }
  }

  return result;
}

uint64_t degas::Database::checkEdgeExistsForIdentifier(degas::Database *this, sqlite3_int64 a2)
{
  degas::EdgeCursor::EdgeCursor(v6);
  degas::EdgeCursor::setForIdentifier(v6, a2, (this + 248));
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

uint64_t degas::Database::edgesOfNodes(uint64_t a1, sqlite3_stmt ***a2, void *a3, unsigned int a4)
{
  v13 = 0u;
  memset(v14, 0, 25);
  v7 = a4 & 0xFFFFFFFD;
  while (1)
  {
    v8 = degas::Statement::next(*a2);
    if (v8 != 1)
    {
      break;
    }

    if (a4 <= 1)
    {
      v9 = degas::Statement::literalBitmapColumnValue(*a2, 3);
      degas::Bitmap::unionWith<degas::LiteralBitmap>(&v13, v9);
    }

    if (!v7)
    {
      v10 = degas::Statement::literalBitmapColumnValue(*a2, 2);
      degas::Bitmap::unionWith<degas::LiteralBitmap>(&v13, v10);
    }
  }

  degas::Bitmap::operator=(a3, &v13);
  if (v8 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v15 = v14;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  return v11;
}

void sub_255953568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_255953628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<degas::NodeCursor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

degas::Statement ***std::unique_ptr<degas::NodeCursor>::~unique_ptr[abi:ne200100](degas::Statement ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    degas::Cursor::~Cursor(v2);
    MEMORY[0x259C43EB0]();
  }

  return a1;
}

void sub_255953718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<degas::NodeCursor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_255953804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::unique_ptr<degas::NodeCursor>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void degas::Database::filterEdgesBetweenNodes(degas::Database *this, const degas::Bitmap *a2, const degas::Bitmap *a3, const degas::Bitmap *a4, degas::Bitmap *a5)
{
  v6 = degas::Bitmap::count(a2);
  if (v6 > degas::Bitmap::count(a3))
  {
    degas::Database::filterEdgesOfNodes();
  }

  degas::Database::filterEdgesOfNodes();
}

void sub_255953920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void degas::Database::edgesBetweenNodes(degas::Database *this, const degas::Bitmap *a2, const degas::Bitmap *a3, degas::Bitmap *a4)
{
  v5 = degas::Bitmap::count(a2);
  if (v5 > degas::Bitmap::count(a3))
  {
    degas::Database::edgesOfNodes();
  }

  degas::Database::edgesOfNodes();
}

void sub_255953A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighbors(degas::Database *a1, sqlite3_stmt ***a2, void *a3, unsigned int a4)
{
  v16 = 0u;
  memset(v17, 0, 25);
  memset(&v15, 0, 41);
  v8 = a4 & 0xFFFFFFFD;
  memset(&v14, 0, 41);
  while (1)
  {
    v9 = degas::Statement::next(*a2);
    v10 = v9;
    if (v9 != 1)
    {
      break;
    }

    if (a4 <= 1)
    {
      v11 = degas::Statement::literalBitmapColumnValue(*a2, 3);
      if (v11[1])
      {
        degas::Bitmap::unionWith<degas::LiteralBitmap>(&v15, v11);
      }
    }

    if (!v8)
    {
      v12 = degas::Statement::literalBitmapColumnValue(*a2, 2);
      if (v12[1])
      {
        degas::Bitmap::unionWith<degas::LiteralBitmap>(&v14, v12);
      }
    }
  }

  if (v9 == 2)
  {
    if (v15._bitSets.__begin_ != v15._bitSets.__end_)
    {
      degas::Database::appendTargetNodesForEdges(a1, &v15, &v16);
    }

    if (v14._bitSets.__begin_ != v14._bitSets.__end_)
    {
      degas::Database::appendSourceNodesForEdges(a1, &v14, &v16);
    }

    degas::Bitmap::operator=(a3, &v16);
    v10 = 0;
  }

  p_bitSets = &v14._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&p_bitSets);
  v14._bitCount = &v15._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
  v15._bitCount = v17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
  return v10;
}

void sub_255953B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v23 - 56) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v23 - 56));
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a15 = &a23;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighbors(uint64_t a1, unint64_t a2, degas::Bitmap *a3, unsigned int a4)
{
  memset(&v9, 0, 41);
  degas::Bitmap::setBit(&v9, a2);
  v7 = degas::Database::nodeNeighbors(a1, &v9, a3, a4);
  p_bitSets = &v9._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&p_bitSets);
  return v7;
}

void sub_255953C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighbors(uint64_t a1, Bitmap *a2, degas::Bitmap *a3, unsigned int a4)
{
  if (a4 > 1)
  {
    v9 = 0;
  }

  else
  {
    v13 = 0u;
    memset(v14, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v12);
    degas::LabelledEdgeCursor::setForTargetNodesFromSourceNodes(v12, a2, (a1 + 1144));
    while (1)
    {
      v8 = degas::Statement::next(v12[0]);
      v9 = v8;
      if (v8 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v12[0], 0, &v13);
    }

    if (v8 == 2)
    {
      degas::Bitmap::operator=(a3, &v13);
      v9 = 0;
    }

    degas::Cursor::~Cursor(v12);
    v12[0] = v14;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v12);
  }

  if ((a4 & 0xFFFFFFFD) == 0)
  {
    v13 = 0u;
    memset(v14, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v12);
    degas::LabelledEdgeCursor::setForSourceNodesFromTargetNodes(v12, a2, (a1 + 1144));
    while (1)
    {
      v10 = degas::Statement::next(v12[0]);
      v9 = v10;
      if (v10 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v12[0], 0, &v13);
    }

    if (v10 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a3, &v13);
      v9 = 0;
    }

    degas::Cursor::~Cursor(v12);
    v12[0] = v14;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v12);
  }

  return v9;
}

void sub_255953DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighbors(uint64_t a1, Bitmap *a2, degas::Bitmap *a3, const degas::Bitmap *a4, unsigned int a5)
{
  if (a5 > 1)
  {
    v11 = 0;
  }

  else
  {
    v15 = 0u;
    memset(v16, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v14);
    degas::LabelledEdgeCursor::setForTargetNodesFromLabelsSourceNodes(v14, a2, a4, (a1 + 1144));
    while (1)
    {
      v10 = degas::Statement::next(v14[0]);
      v11 = v10;
      if (v10 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v14[0], 0, &v15);
    }

    if (v10 == 2)
    {
      degas::Bitmap::operator=(a3, &v15);
      v11 = 0;
    }

    degas::Cursor::~Cursor(v14);
    v14[0] = v16;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v15 = 0u;
    memset(v16, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v14);
    degas::LabelledEdgeCursor::setForSourceNodesFromLabelsTargetNodes(v14, a2, a4, (a1 + 1144));
    while (1)
    {
      v12 = degas::Statement::next(v14[0]);
      v11 = v12;
      if (v12 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v14[0], 0, &v15);
    }

    if (v12 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a3, &v15);
      v11 = 0;
    }

    degas::Cursor::~Cursor(v14);
    v14[0] = v16;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  return v11;
}

void sub_255953F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighborsViaEdges(degas::Database *a1, sqlite3_stmt ***a2, degas::Bitmap *a3, void *a4, unsigned int a5)
{
  v18 = 0u;
  memset(v19, 0, 25);
  memset(&v17, 0, 41);
  v10 = a5 & 0xFFFFFFFD;
  memset(&v16, 0, 41);
  while (1)
  {
    v11 = degas::Statement::next(*a2);
    v12 = v11;
    if (v11 != 1)
    {
      break;
    }

    if (a5 <= 1)
    {
      v13 = degas::Statement::literalBitmapColumnValue(*a2, 3);
      if (v13[1])
      {
        degas::Bitmap::unionWith<degas::LiteralBitmap>(&v17, v13);
      }
    }

    if (!v10)
    {
      v14 = degas::Statement::literalBitmapColumnValue(*a2, 2);
      if (v14[1])
      {
        degas::Bitmap::unionWith<degas::LiteralBitmap>(&v16, v14);
      }
    }
  }

  if (v11 == 2)
  {
    if (v17._bitSets.__begin_ != v17._bitSets.__end_)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(&v17, a3);
      degas::Database::appendTargetNodesForEdges(a1, &v17, &v18);
    }

    if (v16._bitSets.__begin_ != v16._bitSets.__end_)
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(&v16, a3);
      degas::Database::appendSourceNodesForEdges(a1, &v16, &v18);
    }

    degas::Bitmap::operator=(a4, &v18);
    v12 = 0;
  }

  p_bitSets = &v16._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&p_bitSets);
  v16._bitCount = &v17._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  v17._bitCount = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
  return v12;
}

void sub_255954144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v23 - 72) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v23 - 72));
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a15 = &a23;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighborsViaEdges(uint64_t a1, unint64_t a2, Bitmap *a3, degas::Bitmap *a4, unsigned int a5)
{
  memset(&v11, 0, 41);
  degas::Bitmap::setBit(&v11, a2);
  v9 = degas::Database::nodeNeighborsViaEdges(a1, &v11, a3, a4, a5);
  p_bitSets = &v11._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&p_bitSets);
  return v9;
}

void sub_255954228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = (v16 + 16);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::nodeNeighborsViaEdges(uint64_t a1, Bitmap *a2, Bitmap *a3, degas::Bitmap *a4, unsigned int a5)
{
  if (a5 > 1)
  {
    v11 = 0;
  }

  else
  {
    v15 = 0u;
    memset(v16, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v14);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinBoth(v14, a2, a3, (a1 + 1144));
    while (1)
    {
      v10 = degas::Statement::next(v14[0]);
      v11 = v10;
      if (v10 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v14[0], 0, &v15);
    }

    if (v10 == 2)
    {
      degas::Bitmap::operator=(a4, &v15);
      v11 = 0;
    }

    degas::Cursor::~Cursor(v14);
    v14[0] = v16;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v15 = 0u;
    memset(v16, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v14);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinBoth(v14, a2, a3, (a1 + 1144));
    while (1)
    {
      v12 = degas::Statement::next(v14[0]);
      v11 = v12;
      if (v12 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v14[0], 0, &v15);
    }

    if (v12 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a4, &v15);
      v11 = 0;
    }

    degas::Cursor::~Cursor(v14);
    v14[0] = v16;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v14);
  }

  return v11;
}

void sub_2559543B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t degas::Database::addAttribute(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 32))
  {
    return 8;
  }

  v7[3] = v3;
  v7[4] = v4;
  v7[0] = 0;
  result = degas::AttributeTable::insert((a1 + 304), v7, a3);
  if (!result)
  {
    *a2 = v7[0];
  }

  return result;
}

uint64_t degas::Database::getAttributeProperties(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  degas::AttributeCursor::AttributeCursor(v6, a2, (a1 + 304));
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

uint64_t degas::Database::removeAttribute(degas::Database *this, sqlite3_int64 a2)
{
  if (*(this + 32))
  {
    return 8;
  }

  else
  {
    return degas::AttributeTable::deleteEntry((this + 304), a2);
  }
}

uint64_t degas::Database::nodeAttributeValue(degas::Database *this, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t *a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier((this + 360), a3, a2);
  v7 = *v5;
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  if (degas::Statement::next(v7) == 1)
  {
    v8 = sqlite3_column_int64(*v7, 2);
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 2;
  }

  degas::Cursor::~Cursor(v11);
  return v9;
}

uint64_t degas::Database::nodeAttributeValue(degas::Database *this, sqlite3_int64 a2, sqlite3_int64 a3, double *a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier((this + 360), a3, a2);
  v7 = *v5;
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  if (degas::Statement::next(v7) == 1)
  {
    v8 = sqlite3_column_double(*v7, 3);
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 2;
  }

  degas::Cursor::~Cursor(v11);
  return v9;
}

uint64_t degas::Database::nodeAttributeValue(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier((a1 + 360), a3, a2);
  v7 = *v5;
  v6 = v5[1];
  v10[0] = *v5;
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  if (degas::Statement::next(v7) == 1)
  {
    degas::Statement::stringColumnValue(v7, 4, a4);
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  degas::Cursor::~Cursor(v10);
  return v8;
}

uint64_t degas::Database::edgeAttributeValue(degas::Database *this, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t *a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier((this + 416), a3, a2);
  v7 = *v5;
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  if (degas::Statement::next(v7) == 1)
  {
    v8 = sqlite3_column_int64(*v7, 2);
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 2;
  }

  degas::Cursor::~Cursor(v11);
  return v9;
}

uint64_t degas::Database::edgeAttributeValue(degas::Database *this, sqlite3_int64 a2, sqlite3_int64 a3, double *a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier((this + 416), a3, a2);
  v7 = *v5;
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  if (degas::Statement::next(v7) == 1)
  {
    v8 = sqlite3_column_double(*v7, 3);
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 2;
  }

  degas::Cursor::~Cursor(v11);
  return v9;
}

uint64_t degas::Database::edgeAttributeValue(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t a4)
{
  v5 = degas::AttributeValueTable::prepareStatementToReadByAttrIdIdentifier((a1 + 416), a3, a2);
  v7 = *v5;
  v6 = v5[1];
  v10[0] = *v5;
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  if (degas::Statement::next(v7) == 1)
  {
    degas::Statement::stringColumnValue(v7, 4, a4);
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  degas::Cursor::~Cursor(v10);
  return v8;
}

uint64_t degas::Database::setNodeAttributeValue(degas::Database *this, unint64_t a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  if (*(this + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdate((this + 360), a3, a2, a4);
  if (!result)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateNode((this + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::setNodeAttributeValueUnsigned(degas::Database *this, unint64_t a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  if (*(this + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdateUnsigned((this + 360), a3, a2, a4);
  if (!result)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateNode((this + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::setNodeAttributeValue(degas::Database *this, unint64_t a2, sqlite3_int64 a3, double a4)
{
  if (*(this + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdate((this + 360), a3, a2, a4);
  if (!result)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateNode((this + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::setNodeAttributeValue(uint64_t a1, unint64_t a2, sqlite3_int64 a3, uint64_t *a4)
{
  if (*(a1 + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdate((a1 + 360), a3, a2, a4);
  if (!result)
  {
    if ((*(a1 + 1348) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateNode((a1 + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::removeNodeAttributeValues(degas::Database *this, unint64_t a2, const degas::Bitmap *a3)
{
  if (*(this + 32))
  {
    return 8;
  }

  v15 = v3;
  v16 = v4;
  degas::Bitmap::begin(a3, &v12);
  v9 = *(a3 + 3);
  while (1)
  {
    v10 = v12 == a3 && v13 == -1;
    if (v10 && v14 == v9)
    {
      break;
    }

    result = degas::AttributeValueTable::deleteValue((this + 360), v13, a2);
    if (result)
    {
      return result;
    }

    degas::Bitmap::iterator::operator++(&v12);
  }

  if ((*(this + 674) & 0x10) != 0)
  {
    degas::Database::TransactionChanges::updateNode((this + 1352), a2);
  }

  return 0;
}

uint64_t degas::Database::setEdgeAttributeValue(degas::Database *this, unint64_t a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  if (*(this + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdate((this + 416), a3, a2, a4);
  if (!result)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateEdge((this + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::TransactionChanges::updateEdge(degas::Database::TransactionChanges *this, unint64_t a2)
{
  result = degas::Bitmap::isSet((this + 48), a2);
  if ((result & 1) == 0)
  {
    result = degas::Bitmap::isSet((this + 240), a2);
    if ((result & 1) == 0)
    {

      return degas::Bitmap::setBit((this + 144), a2);
    }
  }

  return result;
}

uint64_t degas::Database::setEdgeAttributeValueUnsigned(degas::Database *this, unint64_t a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  if (*(this + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdateUnsigned((this + 416), a3, a2, a4);
  if (!result)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateEdge((this + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::setEdgeAttributeValue(degas::Database *this, unint64_t a2, sqlite3_int64 a3, double a4)
{
  if (*(this + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdate((this + 416), a3, a2, a4);
  if (!result)
  {
    if ((*(this + 674) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateEdge((this + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::setEdgeAttributeValue(uint64_t a1, unint64_t a2, sqlite3_int64 a3, uint64_t *a4)
{
  if (*(a1 + 32))
  {
    return 8;
  }

  result = degas::AttributeValueTable::insertOrUpdate((a1 + 416), a3, a2, a4);
  if (!result)
  {
    if ((*(a1 + 1348) & 0x10) != 0)
    {
      degas::Database::TransactionChanges::updateEdge((a1 + 1352), a2);
    }

    return 0;
  }

  return result;
}

uint64_t degas::Database::removeEdgeAttributeValues(degas::Database *this, unint64_t a2, const degas::Bitmap *a3)
{
  if (*(this + 32))
  {
    return 8;
  }

  v15 = v3;
  v16 = v4;
  degas::Bitmap::begin(a3, &v12);
  v9 = *(a3 + 3);
  while (1)
  {
    v10 = v12 == a3 && v13 == -1;
    if (v10 && v14 == v9)
    {
      break;
    }

    result = degas::AttributeValueTable::deleteValue((this + 416), v13, a2);
    if (result)
    {
      return result;
    }

    degas::Bitmap::iterator::operator++(&v12);
  }

  if ((*(this + 674) & 0x10) != 0)
  {
    degas::Database::TransactionChanges::updateEdge((this + 1352), a2);
  }

  return 0;
}

uint64_t degas::Database::enumerateTransactionChangesAfterTransactionId(uint64_t a1, sqlite3_int64 a2, unsigned int a3, uint64_t a4)
{
  degas::TransactionLogCursor::TransactionLogCursor(v28, a2, a3, (a1 + 696));
  while (1)
  {
    v4 = degas::Statement::next(v28[0]);
    if (v4 != 1)
    {
      break;
    }

    v5 = sqlite3_column_int64(*v28[0], 0);
    v6 = degas::Statement::literalBitmapColumnValue(v28[0], 1);
    v7 = degas::Statement::literalBitmapColumnValue(v28[0], 2);
    v8 = degas::Statement::literalBitmapColumnValue(v28[0], 3);
    v9 = degas::Statement::literalBitmapColumnValue(v28[0], 4);
    v10 = degas::Statement::literalBitmapColumnValue(v28[0], 5);
    v11 = degas::Statement::literalBitmapColumnValue(v28[0], 6);
    degas::Bitmap::Bitmap(v16, v6);
    degas::Bitmap::Bitmap(&v18, v7);
    degas::Bitmap::Bitmap(&v20, v8);
    degas::Bitmap::Bitmap(&v22, v9);
    degas::Bitmap::Bitmap(&v24, v10);
    degas::Bitmap::Bitmap(&v26, v11);
    v29[0] = v5;
    v12 = *(a4 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v12 + 48))(v12, v29, v16);
    v29[0] = &v27;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
    v29[0] = &v25;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
    v29[0] = &v23;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
    v29[0] = &v21;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
    v29[0] = &v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
    v29[0] = &v17;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
  }

  if (v4 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v4;
  }

  degas::Cursor::~Cursor(v28);
  return v13;
}

void degas::Database::validateLabelReferences(degas::Database *this)
{
  v2 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v1, "select mergeLiteralBitmap(identifier), literalBitmapUnion(labels) from Node");
  degas::Database::cursorForAdhocStatement();
}

void sub_2559557FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, degas::Statement *a40, uint64_t a41, int *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  a13 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a13);
  a19 = &a27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a19);
  a25 = &a33;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a25);
  degas::Cursor::~Cursor(&a40);
  __p = &a44;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&__p);
  a42 = &a50;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a42);
  degas::Cursor::~Cursor((v53 - 224));
  a48 = (v53 - 192);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a48);
  *(v53 - 208) = v53 - 144;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v53 - 208));
  degas::Cursor::~Cursor((v53 - 112));
  _Unwind_Resume(a1);
}

void degas::Database::purgeEmptyBitsetPages(degas::Database *this)
{
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  v2 = degas::getBitsetPool(void)::sPool;

  degas::BitsetPool::purgeEmptyPages(v2);
}

uint64_t degas::StatementCacheEntry::StatementCacheEntry(uint64_t result, int a2, void *a3)
{
  v3 = a3[1];
  *result = *a3;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a2;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  v3 = a3[1];
  *result = *a3;
  *(result + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = a2;
  *(result + 20) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double degas::StatementCacheEntry::StatementCacheEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t degas::StatementCacheEntry::operator=(uint64_t a1, uint64_t *a2)
{
  *(a1 + 16) = *(a2 + 4);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 20) = *(a2 + 5);
  return a1;
}

uint64_t degas::StatementCacheEntry::boostAttention(uint64_t this)
{
  v1 = *(this + 20);
  if (v1 <= 3)
  {
    *(this + 20) = v1 + 1;
  }

  return this;
}

BOOL degas::StatementCacheEntry::fadeAttention(degas::StatementCacheEntry *this)
{
  v1 = *(this + 5);
  *(this + 5) = v1 - 1;
  return v1 < 2;
}

const degas::StatementCacheEntry *degas::StatementCacheEntry::insertInClock(const degas::StatementCacheEntry *this, const degas::StatementCacheEntry *a2)
{
  v2 = this;
  if (a2 != this)
  {
    v3 = *(a2 + 4);
    *(this + 4) = v3;
    *(v3 + 24) = this;
    v2 = a2;
  }

  *(v2 + 4) = this;
  *(this + 3) = v2;
  return this;
}

uint64_t degas::StatementCacheEntry::removeFromClock(degas::StatementCacheEntry *this)
{
  v1 = (this + 24);
  v2 = *(this + 3);
  if (v2 == this)
  {
    result = 0;
  }

  else
  {
    v3 = *(this + 4);
    *(v3 + 24) = v2;
    result = *(this + 3);
    *(result + 32) = v3;
  }

  *v1 = 0;
  v1[1] = 0;
  return result;
}

double degas::StatementCache::StatementCache(degas::StatementCache *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *&result = 0x2800000000;
  *(this + 3) = 0x2800000000;
  *(this + 4) = 0;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  *&result = 0x2800000000;
  *(this + 3) = 0x2800000000;
  *(this + 4) = 0;
  return result;
}

void degas::StatementCache::purgeAllStatements(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 6);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(*&this[2]._os_unfair_lock_opaque);
  *&this->_os_unfair_lock_opaque = this + 2;
  *&this[4]._os_unfair_lock_opaque = 0;
  *&this[2]._os_unfair_lock_opaque = 0;
  *&this[8]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this + 6);
}

degas::Statement **degas::StatementCache::getStatement(uint64_t a1, unsigned int a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 24));
  v6 = *(a1 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 != a1 + 8 && *(v7 + 32) <= a2)
  {
    v11 = (v7 + 40);
    v13 = *(v7 + 60);
    if (v13 <= 3)
    {
      *(v7 + 60) = v13 + 1;
    }
  }

  else
  {
LABEL_9:
    (*(a3 + 16))(&v14, a3);
    *(v14 + 20) = a2;
    v11 = degas::StatementCache::addStatement(a1, a2, &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  degas::Statement::prepareForUse(*v11);
  os_unfair_lock_unlock((a1 + 24));
  return v11;
}

void sub_25595673C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *degas::StatementCache::addStatement(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = a1 + 8;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != v7 && *(v8 + 32) <= a2)
    {
      return 0;
    }
  }

  if (*(a1 + 16) >= *(a1 + 28))
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 20);
    *(v12 + 20) = v13 - 1;
    if (v13 >= 2)
    {
      do
      {
        v12 = *(v12 + 24);
        v14 = *(v12 + 20);
        *(v12 + 20) = v14 - 1;
      }

      while (v14 >= 2);
      *(a1 + 32) = v12;
    }

    v15 = *(v12 + 16);
    v16 = (v12 + 24);
    v17 = *(v12 + 24);
    if (v17 == v12)
    {
      v19 = 0;
    }

    else
    {
      v18 = *(v12 + 32);
      *(v18 + 24) = v17;
      v19 = *(v12 + 24);
      *(v19 + 32) = v18;
    }

    *v16 = 0;
    v16[1] = 0;
    *(a1 + 32) = v19;
    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = v7;
      v23 = *(a1 + 8);
      do
      {
        v24 = *(v23 + 32);
        v10 = v24 >= v15;
        v25 = v24 < v15;
        if (v10)
        {
          v22 = v23;
        }

        v23 = *(v23 + 8 * v25);
      }

      while (v23);
      if (v22 != v7 && v15 >= *(v22 + 8))
      {
        v26 = v22[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          v28 = v22;
          do
          {
            v27 = v28[2];
            v29 = *v27 == v28;
            v28 = v27;
          }

          while (!v29);
        }

        if (*a1 == v22)
        {
          *a1 = v27;
        }

        --*(a1 + 16);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v21, v22);
        v30 = v22[6];
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        operator delete(v22);
      }
    }
  }

  v32 = *a3;
  v31 = a3[1];
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v34 = *v7;
  if (!*v7)
  {
LABEL_45:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v35 = v34;
      v36 = *(v34 + 32);
      if (v36 <= a2)
      {
        break;
      }

      v34 = *v35;
      if (!*v35)
      {
        goto LABEL_45;
      }
    }

    if (v36 >= a2)
    {
      break;
    }

    v34 = v35[1];
    if (!v34)
    {
      goto LABEL_45;
    }
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  result = v35 + 5;
  v37 = *(a1 + 32);
  if (!v37)
  {
    *(a1 + 32) = result;
    goto LABEL_53;
  }

  if (v37 == result)
  {
LABEL_53:
    v38 = v35 + 9;
    v37 = v35 + 5;
    goto LABEL_54;
  }

  v38 = v37 + 4;
  v39 = v37[4];
  v35[9] = v39;
  *(v39 + 24) = result;
LABEL_54:
  *v38 = result;
  v35[8] = v37;
  return result;
}

void sub_255956A2C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

double degas::Bitmap::Bitmap(degas::Bitmap *this)
{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

degas::Bitmap *degas::Bitmap::Bitmap(degas::Bitmap *this, const degas::Bitmap *a2)
{
  *this = *a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 16, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 40) = *(a2 + 40);
  return this;
}

{
  *this = *a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 16, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 4);
  *(this + 40) = *(a2 + 40);
  return this;
}

uint64_t std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<degas::BitsetPtr>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<degas::BitsetPtr>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(a2);
  }

  std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
}

degas::Bitmap *degas::Bitmap::Bitmap(degas::Bitmap *this, const degas::LiteralBitmap *a2)
{
  *this = 0xFFFFFFFFLL;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = degas::getBitsetPool(void)::sPool;
    v6 = (a2 + 8);
    do
    {
      v8 = 0uLL;
      degas::BitsetPool::allocBitset(v5, &v8, v6);
      std::vector<degas::BitsetPtr>::push_back[abi:ne200100](this + 2, &v8);
      degas::BitsetPtr::releaseBitset(&v8);
      v6 = (v6 + 144);
      --v4;
    }

    while (v4);
  }

  return this;
}

void sub_255957EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  degas::BitsetPtr::releaseBitset(&a9);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<degas::BitsetPtr>::push_back[abi:ne200100](void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
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

    v20 = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(v10);
    }

    v17 = 0;
    v18 = 16 * v7;
    *(&v19 + 1) = 0;
    v11 = *a2;
    *(16 * v7) = *a2;
    ++*v11;
    *&v19 = 16 * v7 + 16;
    v12 = v2[1];
    v13 = (16 * v7 + *v2 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<degas::BitsetPtr>,degas::BitsetPtr*>(*v2, v12, v13);
    v14 = *v2;
    *v2 = v13;
    v15 = v2[2];
    v16 = v19;
    *(v2 + 1) = v19;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v17 = v14;
    v18 = v14;
    result = std::__split_buffer<degas::BitsetPtr>::~__split_buffer(&v17);
    v6 = v16;
  }

  else
  {
    v5 = *a2;
    *v3 = *a2;
    v6 = v3 + 1;
    ++*v5;
    result[1] = v6;
  }

  v2[1] = v6;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<degas::BitsetPtr>,degas::BitsetPtr*>(degas::BitsetPtr *this, degas::BitsetPtr *a2, _OWORD *a3)
{
  if (this != a2)
  {
    v4 = this;
    v5 = this;
    do
    {
      v6 = *v5;
      v5 = (v5 + 16);
      *a3++ = v6;
      ++*v6;
    }

    while (v5 != a2);
    do
    {
      degas::BitsetPtr::releaseBitset(v4);
      *(v4 + 1) = 0;
      v4 = (v4 + 16);
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<degas::BitsetPtr>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 8) = 0;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t degas::Bitmap::Bitmap(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(a1 + 16, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 40) = 0;
  return a1;
}

{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(a1 + 16, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 40) = 0;
  return a1;
}

void *degas::Bitmap::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v5 = (a1 + 2);
    v4 = a1[2];
    v7 = a2[2];
    v6 = a2[3];
    v8 = v6 - v7;
    v9 = a1[4];
    if (v9 - v4 < (v6 - v7))
    {
      v10 = v8 >> 4;
      if (v4)
      {
        v11 = a1[3];
        v12 = a1[2];
        if (v11 != v4)
        {
          do
          {
            degas::BitsetPtr::releaseBitset((v11 - 16));
            *(v11 - 1) = 0;
            v11 = (v11 - 16);
          }

          while (v11 != v4);
          v12 = *v5;
        }

        a1[3] = v4;
        operator delete(v12);
        v9 = 0;
        *v5 = 0;
        a1[3] = 0;
        a1[4] = 0;
      }

      if (!(v10 >> 60))
      {
        v13 = v9 >> 3;
        if (v9 >> 3 <= v10)
        {
          v13 = v10;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        std::vector<degas::BitsetPtr>::__vallocate[abi:ne200100]((a1 + 2), v14);
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v15 = a1[3];
    v16 = v15 - v4;
    if (v15 - v4 >= v8)
    {
      if (v7 != v6)
      {
        do
        {
          degas::BitsetPtr::releaseBitset(v4);
          v20 = *v7;
          *v4 = *v7;
          if (v20)
          {
            ++*v20;
          }

          v7 += 16;
          v4 = (v4 + 16);
        }

        while (v7 != v6);
        v15 = a1[3];
      }

      for (; v15 != v4; v15 -= 16)
      {
        degas::BitsetPtr::releaseBitset((v15 - 16));
        *(v15 - 1) = 0;
      }

      a1[3] = v4;
    }

    else
    {
      v17 = &v7[v16];
      if (v15 != v4)
      {
        do
        {
          degas::BitsetPtr::releaseBitset(v4);
          v18 = *v7;
          *v4 = *v7;
          if (v18)
          {
            ++*v18;
          }

          v7 += 16;
          v4 = (v4 + 16);
          v16 -= 16;
        }

        while (v16);
        v15 = a1[3];
      }

      while (v17 != v6)
      {
        v19 = *v17;
        v17 += 16;
        *v15 = v19;
        v15 += 16;
        ++*v19;
      }

      a1[3] = v15;
    }
  }

  *a1 = *a2;
  a1[1] = 0;
  return a1;
}

uint64_t degas::Bitmap::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v26[7] = v2;
  v26[8] = v3;
  v5 = -1;
  v26[0] = -1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    v9 = -1;
  }

  else
  {
    v8 = *v6;
    v9 = *(*v6 + 1);
    if (v9 > 0xFFFFFFFFFFFFFBFFLL || (*(v8 + 16) & 1) == 0)
    {
      degas::Bitset::nextBit(v8, v26, *(*v6 + 1));
      v9 = v26[0];
    }
  }

  v26[0] = -1;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v12 != v11)
  {
    v13 = *v12;
    v5 = *(*v12 + 1);
    if (v5 > 0xFFFFFFFFFFFFFBFFLL || (*(v13 + 16) & 1) == 0)
    {
      degas::Bitset::nextBit(v13, v26, *(*v12 + 1));
      v5 = v26[0];
    }
  }

  if (v9 != v5)
  {
    return 0;
  }

  if (v6 == v7)
  {
    v16 = 0;
  }

  else
  {
    v14 = *(v7 - 2);
    v15 = (v14 + 140);
    v16 = 31;
    do
    {
      v18 = *v15--;
      v17 = v18;
      if (v18)
      {
        v19 = 32 * v16;
        goto LABEL_21;
      }

      --v16;
    }

    while (v16);
    v19 = 0;
    v17 = *(v14 + 16);
    if (!v17)
    {
      goto LABEL_22;
    }

LABEL_21:
    v16 = (v19 | __clz(v17) ^ 0x1F) + *(v14 + 8);
  }

LABEL_22:
  if (v12 == v11)
  {
    v25 = 0;
  }

  else
  {
    v20 = *(v11 - 2);
    v21 = (v20 + 140);
    v22 = 31;
    do
    {
      v24 = *v21--;
      v23 = v24;
      if (v24)
      {
        v22 *= 32;
        goto LABEL_30;
      }

      --v22;
    }

    while (v22);
    v25 = 0;
    v23 = *(v20 + 16);
    if (!v23)
    {
      goto LABEL_31;
    }

LABEL_30:
    v25 = (v22 | __clz(v23) ^ 0x1F) + *(v20 + 8);
  }

LABEL_31:
  if (v16 != v25 || v7 - v6 != v11 - v12)
  {
    return 0;
  }

  if (v6 != v7)
  {
    while (*(*v6 + 1) == *(*v12 + 1) && !memcmp(*v6 + 16, *v12 + 16, 0x80uLL))
    {
      v6 += 2;
      v12 += 2;
      result = 1;
      if (v6 == v7)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t degas::Bitmap::firstBit(degas::Bitmap *this)
{
  v1 = -1;
  v5 = -1;
  v2 = *(this + 2);
  if (v2 != *(this + 3))
  {
    v3 = *v2;
    v1 = *(*v2 + 1);
    if (v1 > 0xFFFFFFFFFFFFFBFFLL || (*(v3 + 16) & 1) == 0)
    {
      degas::Bitset::nextBit(v3, &v5, v1);
      return v5;
    }
  }

  return v1;
}

uint64_t degas::Bitmap::lastBit(degas::Bitmap *this)
{
  v1 = *(this + 3);
  if (*(this + 2) == v1)
  {
    return 0;
  }

  v2 = *(v1 - 16);
  v3 = (v2 + 140);
  v4 = 31;
  do
  {
    v6 = *v3--;
    v5 = v6;
    if (v6)
    {
      v4 *= 32;
      return (v4 | __clz(v5) ^ 0x1F) + *(v2 + 8);
    }

    --v4;
  }

  while (v4);
  result = 0;
  v5 = *(v2 + 16);
  if (!v5)
  {
    return result;
  }

  return (v4 | __clz(v5) ^ 0x1F) + *(v2 + 8);
}

uint64_t degas::Bitmap::replaceFromEncodedBuffer(degas::Bitmap *this, const unsigned __int8 **a2)
{
  UnsignedInt = degas::_getUnsignedInt(a2, a2);
  v7 = *(this + 2);
  v8 = *(this + 3);
  for (i = (this + 16); v8 != v7; v8 -= 16)
  {
    degas::BitsetPtr::releaseBitset((v8 - 16));
    *(v8 - 8) = 0;
  }

  *(this + 3) = v7;
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  v9 = degas::getBitsetPool(void)::sPool;
  if (UnsignedInt == 2)
  {
    v15 = degas::_getUnsignedInt(a2, v4);
    if (v15)
    {
      v17 = v15;
      *this = v15;
      v18 = degas::_getUnsignedInt(a2, v16);
      v38 = 0uLL;
      degas::BitsetPool::allocBitset(v9, &v38, v18 & 0xFFFFFFFFFFFFFC00);
      v19 = v38;
      v20 = v18 - *(v38 + 8);
      v21 = *(v38 + 16 + 4 * (v20 >> 5));
      if (((1 << v20) & v21) == 0)
      {
        *(v38 + 16 + 4 * (v20 >> 5)) = (1 << v20) | v21;
        v22 = *(v19 + 4);
        if (v22 != -1)
        {
          *(v19 + 4) = v22 + 1;
        }
      }

      std::vector<degas::BitsetPtr>::push_back[abi:ne200100](i, &v38);
      for (j = v17 - 1; j; --j)
      {
        v18 += degas::_getUnsignedInt(a2, v23);
        v25 = *(v19 + 8);
        if (v25 > v18 || v25 + 1024 <= v18)
        {
          degas::BitsetPool::allocBitset(v9, &v38, v18 & 0xFFFFFFFFFFFFFC00);
          std::vector<degas::BitsetPtr>::push_back[abi:ne200100](i, &v38);
          v19 = v38;
          v25 = *(v38 + 8);
        }

        v27 = v18 - v25;
        v28 = (v18 - v25) >> 5;
        v29 = 1 << v27;
        v30 = *(v19 + 16 + 4 * v28);
        if ((v29 & v30) == 0)
        {
          *(v19 + 16 + 4 * v28) = v29 | v30;
          v31 = *(v19 + 4);
          if (v31 != -1)
          {
            *(v19 + 4) = v31 + 1;
          }
        }
      }

      degas::BitsetPtr::releaseBitset(&v38);
    }
  }

  else
  {
    if (UnsignedInt != 1)
    {
      return 0;
    }

    degas::_getUnsignedInt(a2, v4);
    v11 = degas::_getUnsignedInt(a2, v10);
    v12 = v11;
    v13 = *(this + 2);
    if (v11 > (*(this + 4) - v13) >> 4)
    {
      if (!(v11 >> 60))
      {
        v14 = *(this + 3) - v13;
        v39 = this + 16;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(v11);
      }

      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    if (v11)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v38 = 0uLL;
        degas::BitsetPool::allocBitset(v9, &v38, a2);
        v35 = *(v38 + 4);
        if (v35 == -1)
        {
          v36 = 0;
          v37 = 0uLL;
          do
          {
            do
            {
              v37 = vpadalq_u16(v37, vpaddlq_u8(vcntq_s8(*(v38 + 16 + 4 * v36))));
              v36 += 4;
            }

            while (v36 != 32);
            v36 = 0;
            v35 = vaddvq_s32(v37);
            v37 = 0uLL;
          }

          while (v35 == -1);
          *(v38 + 4) = v35;
        }

        std::vector<degas::BitsetPtr>::push_back[abi:ne200100](this + 2, &v38);
        v34 += v35;
        degas::BitsetPtr::releaseBitset(&v38);
        ++v33;
      }

      while (v33 != v12);
    }

    else
    {
      v34 = 0;
    }

    *this = v34;
  }

  return 1;
}

void sub_255958970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  degas::BitsetPtr::releaseBitset(va);
  _Unwind_Resume(a1);
}

uint64_t degas::Bitmap::useV2Encoding(degas::Bitmap *this, unint64_t *a2)
{
  v4 = *this;
  if (*this == 0xFFFFFFFFLL)
  {
    degas::Bitmap::count(this);
    v4 = *this;
  }

  v5 = v4 + 2;
  if (v4)
  {
    v7 = *(this + 2);
    v6 = *(this + 3);
    v8 = 34 * ((v6 - v7) >> 4) + 3;
    if (v5 > v8)
    {
      return 0;
    }

    if (v4 < 0x80)
    {
      v5 = 2;
    }

    else
    {
      v9 = -1;
      do
      {
        v10 = v4 >> 14;
        v4 >>= 7;
        ++v9;
      }

      while (v10);
      v5 = v9 + 3;
    }

    if (v7 != v6)
    {
      v11 = -1;
      do
      {
        v26 = -1;
        v12 = *v7;
        v13 = *(*v7 + 1);
        if (v13 <= 0xFFFFFFFFFFFFFBFFLL && (*(v12 + 16) & 1) != 0)
        {
          v26 = *(*v7 + 1);
        }

        else
        {
          if (!degas::Bitset::nextBit(*v7, &v26, *(*v7 + 1)))
          {
            goto LABEL_38;
          }

          v13 = v26;
        }

        if (v11 == -1)
        {
          if (v13 >= 0x80)
          {
            v18 = -1;
            v19 = v13;
            do
            {
              v20 = v19 >> 14;
              v19 >>= 7;
              ++v18;
            }

            while (v20);
            v17 = v18 + 2;
            goto LABEL_27;
          }
        }

        else
        {
          v14 = v13 - v11;
          if (v13 - v11 >= 0x80)
          {
            v15 = -1;
            do
            {
              v16 = v14 >> 14;
              v14 >>= 7;
              ++v15;
            }

            while (v16);
            v17 = v15 + 2;
            goto LABEL_27;
          }
        }

        v17 = 1;
LABEL_27:
        v5 += v17;
        while (degas::Bitset::nextBit(v12, &v26, v13))
        {
          v11 = v26;
          v21 = v26 - v13;
          if (v26 - v13 < 0x80)
          {
            v24 = 1;
          }

          else
          {
            v22 = -1;
            do
            {
              v23 = v21 >> 14;
              v21 >>= 7;
              ++v22;
            }

            while (v23);
            v24 = v22 + 2;
          }

          v5 += v24;
          v13 = v26;
          if (v5 > v8)
          {
            goto LABEL_37;
          }
        }

        v11 = v13;
LABEL_37:
        if (v5 > v8)
        {
          break;
        }

LABEL_38:
        v7 += 2;
      }

      while (v7 != v6);
    }

    if (v5 > v8)
    {
      return 0;
    }
  }

  *a2 = v5;
  return 1;
}

uint64_t degas::Bitmap::count(degas::Bitmap *this)
{
  v1 = *this;
  if (*this == 0xFFFFFFFFLL)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    if (v2 == v3)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0;
      do
      {
        v4 = *v2;
        v5 = *(*v2 + 4);
        if (v5 == -1)
        {
          v6 = 0;
          v7 = 0uLL;
          do
          {
            do
            {
              v7 = vpadalq_u16(v7, vpaddlq_u8(vcntq_s8(*(v4 + 16 + 4 * v6))));
              v6 += 4;
            }

            while (v6 != 32);
            v6 = 0;
            v5 = vaddvq_s32(v7);
            v7 = 0uLL;
          }

          while (v5 == -1);
          *(v4 + 4) = v5;
        }

        v1 += v5;
        v2 += 2;
      }

      while (v2 != v3);
    }

    *this = v1;
  }

  return v1;
}

unint64_t degas::Bitmap::lengthOfEncodedData(degas::Bitset ***this)
{
  v15 = 0;
  if (degas::Bitmap::useV2Encoding(this, &v15))
  {
    return v15;
  }

  v4 = *this;
  if (*this < 0x80)
  {
    v7 = 2;
  }

  else
  {
    v5 = -1;
    do
    {
      v6 = v4 >> 14;
      v4 = (v4 >> 7);
      ++v5;
    }

    while (v6);
    v7 = v5 + 3;
  }

  v9 = this[2];
  v8 = this[3];
  v10 = (v8 - v9) >> 4;
  if (v10 < 0x80)
  {
    v13 = 1;
  }

  else
  {
    v11 = -1;
    do
    {
      v12 = v10 >> 14;
      v10 >>= 7;
      ++v11;
    }

    while (v12);
    v13 = v11 + 2;
  }

  v2 = v13 + v7;
  while (v9 != v8)
  {
    v14 = *v9;
    v9 += 2;
    v2 += degas::Bitset::encodedLength(v14);
  }

  return v2;
}

uint64_t degas::Bitmap::appendToEncodedBuffer(degas::Bitset ***this, unsigned __int8 **a2)
{
  result = degas::Bitmap::useV2Encoding(this, &v44);
  if (result)
  {
    v5 = (*a2)++;
    *v5 = 2;
    v6 = *this;
    if (*this < 0x80)
    {
      v8 = *this;
    }

    else
    {
      do
      {
        v7 = (*a2)++;
        *v7 = v6 | 0x80;
        v8 = (v6 >> 7);
        v9 = v6 >> 14;
        v6 = (v6 >> 7);
      }

      while (v9);
    }

    v18 = (*a2)++;
    *v18 = v8;
    v19 = this[2];
    v20 = this[3];
    if (v19 != v20)
    {
      v21 = -1;
      while (1)
      {
        v43 = -1;
        v22 = *v19;
        v23 = *(*v19 + 1);
        if (v23 <= 0xFFFFFFFFFFFFFBFFLL && (*(v22 + 16) & 1) != 0)
        {
          break;
        }

        result = degas::Bitset::nextBit(v22, &v43, *(*v19 + 1));
        if (result)
        {
          v23 = v43;
LABEL_18:
          if (v21 == -1)
          {
            LOBYTE(v26) = v23;
            if (v23 >= 0x80)
            {
              v28 = v23;
              do
              {
                v29 = (*a2)++;
                *v29 = v28 | 0x80;
                v26 = v28 >> 7;
                v30 = v28 >> 14;
                v28 >>= 7;
              }

              while (v30);
            }
          }

          else
          {
            v24 = v23 - v21;
            if (v23 - v21 < 0x80)
            {
              LOBYTE(v26) = v23 - v21;
            }

            else
            {
              do
              {
                v25 = (*a2)++;
                *v25 = v24 | 0x80;
                v26 = v24 >> 7;
                v27 = v24 >> 14;
                v24 >>= 7;
              }

              while (v27);
            }
          }

          while (1)
          {
            v34 = (*a2)++;
            *v34 = v26;
            result = degas::Bitset::nextBit(*v19, &v43, v23);
            if (!result)
            {
              break;
            }

            v31 = v43;
            v26 = v43 - v23;
            v23 = v43;
            if (v26 >= 0x80)
            {
              do
              {
                v32 = (*a2)++;
                *v32 = v26 | 0x80;
                v33 = v26 >> 14;
                v26 >>= 7;
              }

              while (v33);
              v23 = v31;
            }
          }

          v21 = v23;
        }

        v19 += 2;
        if (v19 == v20)
        {
          return result;
        }
      }

      v43 = *(*v19 + 1);
      goto LABEL_18;
    }
  }

  else
  {
    v10 = this[2];
    v11 = this[3];
    if (v10 == v11)
    {
      *this = 0;
    }

    v12 = (v11 - v10) >> 4;
    v13 = (*a2)++;
    *v13 = 1;
    v14 = *this;
    if (*this < 0x80)
    {
      v16 = *this;
    }

    else
    {
      do
      {
        v15 = (*a2)++;
        *v15 = v14 | 0x80;
        v16 = (v14 >> 7);
        v17 = v14 >> 14;
        v14 = (v14 >> 7);
      }

      while (v17);
    }

    v35 = (*a2)++;
    *v35 = v16;
    if (v12 < 0x80)
    {
      LOBYTE(v37) = v12;
    }

    else
    {
      do
      {
        v36 = (*a2)++;
        *v36 = v12 | 0x80;
        v37 = v12 >> 7;
        v38 = v12 >> 14;
        v12 >>= 7;
      }

      while (v38);
    }

    v39 = (*a2)++;
    *v39 = v37;
    v41 = this[2];
    v40 = this[3];
    while (v41 != v40)
    {
      v42 = *v41;
      v41 += 2;
      result = degas::Bitset::appendEncodedToBuffer(v42, a2);
    }
  }

  return result;
}

void degas::Bitmap::clearAllBits(degas::Bitmap *this)
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
}

uint64_t degas::Bitmap::rangeCompare(degas::Bitmap *this, unint64_t a2, unint64_t a3)
{
  v3 = *(this + 2);
  if (a3 >= (*(this + 3) - v3) >> 4)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(*(v3 + 16 * a3) + 8);
  if (v4 + 1024 > a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 > a2)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

unint64_t degas::Bitmap::findOffset(degas::Bitmap *this, unint64_t a2)
{
  v2 = *(this + 2);
  v3 = *(this + 1);
  v4 = (*(this + 3) - v2) >> 4;
  if (v3 >= v4)
  {
    v6 = 0;
    return degas::Bitmap::findOffset(this, a2, v6, v4);
  }

  v5 = *(*(v2 + 16 * v3) + 8);
  if (v5 > a2)
  {
    v6 = 0;
    v4 = *(this + 1);
    return degas::Bitmap::findOffset(this, a2, v6, v4);
  }

  if (v5 + 1024 <= a2)
  {
    v6 = v3 + 1;
    return degas::Bitmap::findOffset(this, a2, v6, v4);
  }

  return *(this + 1);
}

unint64_t degas::Bitmap::findOffset(degas::Bitmap *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 != a4)
  {
    v4 = *(this + 2);
    while (1)
    {
      v5 = (a3 + a4) >> 1;
      if ((*(this + 3) - v4) >> 4 <= v5)
      {
        goto LABEL_8;
      }

      v6 = *(*(v4 + 16 * v5) + 8);
      if (v6 <= a2)
      {
        break;
      }

      a4 = (a3 + a4) >> 1;
LABEL_9:
      if (a3 == a4)
      {
        return a4;
      }
    }

    if (v6 + 1024 > a2)
    {
      *(this + 1) = v5;
      return (a3 + a4) >> 1;
    }

LABEL_8:
    a3 = v5 + 1;
    goto LABEL_9;
  }

  return a3;
}

uint64_t degas::Bitmap::isSet(degas::Bitmap *this, unint64_t a2)
{
  Offset = degas::Bitmap::findOffset(this, a2);
  v5 = *(this + 2);
  if (Offset < (*(this + 3) - v5) >> 4 && ((v6 = *(v5 + 16 * Offset), v7 = *(v6 + 8), v8 = v7 + 1024, v9 = a2 >= v7, v10 = a2 - v7, v9) ? (v11 = v8 > a2) : (v11 = 0), v11))
  {
    return (*(v6 + 4 * (v10 >> 5) + 16) >> v10) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t degas::Bitmap::bitAtIndex(degas::Bitmap *this, unint64_t a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    return -1;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v2;
    v16 = v6;
    v7 = v6;
    v8 = *(v6 + 4);
    ++*v6;
    if (v8 == -1)
    {
      v9 = 0;
      v10 = v6 + 16;
      v11 = 0uLL;
      do
      {
        do
        {
          v11 = vpadalq_u16(v11, vpaddlq_u8(vcntq_s8(*(v10 + 4 * v9))));
          v9 += 4;
        }

        while (v9 != 32);
        v9 = 0;
        v8 = vaddvq_s32(v11);
        v11 = 0uLL;
      }

      while (v8 == -1);
      *(v7 + 1) = v8;
    }

    v12 = v5 + v8;
    if (v12 > a2)
    {
      break;
    }

    degas::BitsetPtr::releaseBitset(&v16);
    ++v2;
    v5 = v12;
    if (v2 == v3)
    {
      return -1;
    }
  }

  v13 = -1;
  v15 = -1;
  do
  {
    degas::Bitset::nextBit(v7, &v15, v13);
    v13 = v15;
    ++v5;
  }

  while (v5 <= a2);
  degas::BitsetPtr::releaseBitset(&v16);
  return v13;
}

void degas::Bitmap::unshadowedBitSetAtIndex(degas::Bitmap *this@<X0>, unint64_t a2@<X1>, degas::BitsetPtr *a3@<X8>)
{
  v4 = *(this + 2);
  if (a2 >= (*(this + 3) - v4) >> 4)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    return;
  }

  v7 = (v4 + 16 * a2);
  if (*v7 && **v7 == 1)
  {
    v8 = *v7;
    *a3 = *v7;
    v9 = v8;
LABEL_9:
    ++*v9;
    return;
  }

  *a3 = 0;
  *(a3 + 1) = 0;
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  degas::BitsetPool::allocBitset(degas::getBitsetPool(void)::sPool, a3, *v7);
  v10 = (*(this + 2) + 16 * a2);
  degas::BitsetPtr::releaseBitset(v10);
  v11 = *a3;
  *v10 = *a3;
  v9 = v11;
  if (v11)
  {
    goto LABEL_9;
  }
}

void sub_255959344(_Unwind_Exception *a1)
{
  degas::BitsetPtr::releaseBitset(v1);
  *(v1 + 1) = 0;
  _Unwind_Resume(a1);
}

uint64_t degas::Bitmap::setBit(degas::Bitmap *this, unint64_t a2)
{
  Offset = degas::Bitmap::findOffset(this, a2);
  if (Offset == (*(this + 3) - *(this + 2)) >> 4)
  {
    v20 = 0uLL;
    if (degas::getBitsetPool(void)::onceToken != -1)
    {
      dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
    }

    degas::BitsetPool::allocBitset(degas::getBitsetPool(void)::sPool, &v20, a2 & 0xFFFFFFFFFFFFFC00);
    std::vector<degas::BitsetPtr>::push_back[abi:ne200100](this + 2, &v20);
    degas::BitsetPtr::releaseBitset(&v20);
  }

  degas::Bitmap::unshadowedBitSetAtIndex(this, Offset, &v20);
  v5 = v20;
  v6 = *(v20 + 8);
  v7 = a2 - v6;
  if (a2 >= v6 && v6 + 1024 > a2)
  {
    v14 = v7 >> 5;
    v15 = 1 << v7;
    v16 = *(v20 + 16 + 4 * v14);
    if ((v15 & v16) != 0)
    {
      v13 = 0;
      goto LABEL_20;
    }

    *(v20 + 16 + 4 * v14) = v15 | v16;
    v18 = *(v5 + 4);
    if (v18 != -1)
    {
      *(v5 + 4) = v18 + 1;
    }

    if (*this != 0xFFFFFFFFLL)
    {
      ++*this;
    }
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0;
    if (degas::getBitsetPool(void)::onceToken != -1)
    {
      dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
    }

    degas::BitsetPool::allocBitset(degas::getBitsetPool(void)::sPool, v19, a2 & 0xFFFFFFFFFFFFFC00);
    v9 = v19[0];
    v10 = a2 - *(v19[0] + 8);
    v11 = *(v19[0] + 16 + 4 * (v10 >> 5));
    if (((1 << v10) & v11) == 0)
    {
      *(v19[0] + 16 + 4 * (v10 >> 5)) = (1 << v10) | v11;
      v12 = *(v9 + 4);
      if (v12 != -1)
      {
        *(v9 + 4) = v12 + 1;
      }
    }

    std::vector<degas::BitsetPtr>::insert(this + 16, (*(this + 2) + 16 * Offset), v19);
    if (*this != 0xFFFFFFFFLL)
    {
      ++*this;
    }

    degas::BitsetPtr::releaseBitset(v19);
  }

  v13 = 1;
LABEL_20:
  *(this + 40) |= v13;
  degas::BitsetPtr::releaseBitset(&v20);
  return v13;
}

void sub_255959558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  degas::BitsetPtr::releaseBitset(&a9);
  degas::BitsetPtr::releaseBitset(&a11);
  _Unwind_Resume(a1);
}

void std::vector<degas::BitsetPtr>::insert(uint64_t a1, degas::BitsetPtr *this, degas::BitsetPtr *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = ((v6 - *a1) >> 4) + 1;
    if (v12 >> 60)
    {
      std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
    }

    v13 = this - v11;
    v14 = v7 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    v35 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(v15);
    }

    v18 = (16 * v16);
    v32 = 0;
    v33 = 16 * v16;
    v34 = (16 * v16);
    if (!v16)
    {
      if (v13 < 1)
      {
        if (v11 == this)
        {
          v25 = 1;
        }

        else
        {
          v25 = v13 >> 3;
        }

        v36 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(v25);
      }

      v18 = (v18 - (((v13 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
      v33 = v18;
      *&v34 = v18;
    }

    v26 = *a3;
    *v18 = *a3;
    ++*v26;
    *&v34 = v34 + 16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<degas::BitsetPtr>,degas::BitsetPtr*>(this, *(a1 + 8), v34);
    v27 = *a1;
    v28 = v33;
    *&v34 = v34 + *(a1 + 8) - this;
    *(a1 + 8) = this;
    v29 = (v28 + v27 - this);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<degas::BitsetPtr>,degas::BitsetPtr*>(v27, this, v29);
    v30 = *a1;
    *a1 = v29;
    v31 = *(a1 + 16);
    *(a1 + 8) = v34;
    *&v34 = v30;
    *(&v34 + 1) = v31;
    v32 = v30;
    v33 = v30;
    std::__split_buffer<degas::BitsetPtr>::~__split_buffer(&v32);
  }

  else if (this == v6)
  {
    v17 = *a3;
    *v6 = *a3;
    ++*v17;
    *(a1 + 8) = v6 + 16;
  }

  else
  {
    v8 = (v6 - 16);
    if (v6 < 0x10)
    {
      v10 = *(a1 + 8);
    }

    else
    {
      v9 = *v8;
      *v6 = *v8;
      v10 = v6 + 16;
      ++*v9;
    }

    *(a1 + 8) = v10;
    if (v6 != (this + 16))
    {
      v19 = (this - v6 + 16);
      v20 = (v6 - 32);
      do
      {
        degas::BitsetPtr::releaseBitset(v8);
        v21 = *v20;
        *v8 = *v20;
        if (v21)
        {
          ++*v21;
        }

        v8 = (v8 - 16);
        --v20;
        v19 += 16;
      }

      while (v19);
      v10 = *(a1 + 8);
    }

    if (v10 <= a3 || this > a3)
    {
      v23 = 0;
    }

    else
    {
      v23 = 16;
    }

    degas::BitsetPtr::releaseBitset(this);
    v24 = *(a3 + v23);
    *this = v24;
    if (v24)
    {
      ++*v24;
    }
  }
}

BOOL degas::Bitmap::clearBit(degas::BitsetPtr **this, unint64_t a2)
{
  Offset = degas::Bitmap::findOffset(this, a2);
  if (Offset < (this[3] - this[2]) >> 4)
  {
    v5 = Offset;
    degas::Bitmap::unshadowedBitSetAtIndex(this, Offset, v27);
    v6 = v27[0];
    v7 = *(v27[0] + 8);
    v8 = v7 + 1024;
    v9 = a2 >= v7;
    v10 = a2 - v7;
    if (!v9 || v8 <= a2)
    {
      v12 = 0;
LABEL_29:
      degas::BitsetPtr::releaseBitset(v27);
      goto LABEL_30;
    }

    v13 = v10 >> 5;
    v14 = 1 << v10;
    v15 = v27[0] + 16;
    v16 = *(v27[0] + 16 + 4 * v13);
    v12 = (v14 & v16) != 0;
    if ((v14 & v16) != 0)
    {
      *(v15 + 4 * v13) = v16 & ~v14;
      v17 = *(v6 + 4);
      if (v17 != -1)
      {
        *(v6 + 4) = --v17;
      }

      if (*this != 0xFFFFFFFFLL)
      {
        *this = (*this - 1);
      }

      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *(v27[0] + 4);
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    if (v17 != -1)
    {
      goto LABEL_29;
    }

    v18 = 0;
    v19 = 0uLL;
    do
    {
      do
      {
        v19 = vpadalq_u16(v19, vpaddlq_u8(vcntq_s8(*(v15 + 4 * v18))));
        v18 += 4;
      }

      while (v18 != 32);
      v18 = 0;
      v20 = vaddvq_s32(v19);
      v19 = 0uLL;
    }

    while (v20 == -1);
    *(v6 + 4) = v20;
    if (v20)
    {
      goto LABEL_29;
    }

LABEL_21:
    v21 = this[3];
    v22 = (this[2] + 16 * v5);
    if ((v22 + 16) != v21)
    {
      do
      {
        degas::BitsetPtr::releaseBitset(v22);
        v23 = *(v22 + 1);
        *v22 = v23;
        if (v23)
        {
          ++*v23;
        }

        v24 = (v22 + 16);
        v25 = (v22 + 32);
        v22 = (v22 + 16);
      }

      while (v25 != v21);
      v21 = this[3];
      v22 = v24;
    }

    for (; v21 != v22; v21 = (v21 - 16))
    {
      degas::BitsetPtr::releaseBitset((v21 - 16));
      *(v21 - 1) = 0;
    }

    this[3] = v22;
    goto LABEL_29;
  }

  v12 = 0;
LABEL_30:
  *(this + 40) |= v12;
  return v12;
}

void degas::Bitmap::setRange(degas::Bitmap *this, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v4 = a2;
    if (degas::getBitsetPool(void)::onceToken != -1)
    {
      dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
    }

    v6 = degas::getBitsetPool(void)::sPool;
    while (1)
    {
      Offset = degas::Bitmap::findOffset(this, v4);
      if (Offset >= (*(this + 3) - *(this + 2)) >> 4)
      {
        v19 = 0uLL;
        degas::BitsetPool::allocBitset(v6, &v19, v4 & 0xFFFFFFFFFFFFFC00);
        v13 = v19;
        if (*(v19 + 8) + 1023 >= a3)
        {
          v14 = a3;
        }

        else
        {
          v14 = *(v19 + 8) + 1023;
        }

        degas::Bitset::setRange(v19, v4, v14);
        std::vector<degas::BitsetPtr>::push_back[abi:ne200100](this + 2, &v19);
        v15 = *(v13 + 8);
      }

      else
      {
        v8 = Offset;
        degas::Bitmap::unshadowedBitSetAtIndex(this, Offset, &v19);
        v9 = v19;
        v10 = *(v19 + 8);
        if (v10 > v4 || v10 + 1024 <= v4)
        {
          if (v4 < v10)
          {
            v18[0] = 0;
            v18[1] = 0;
            degas::BitsetPool::allocBitset(v6, v18, v4 & 0xFFFFFFFFFFFFFC00);
            if (*(v18[0] + 1) + 1023 >= a3)
            {
              v12 = a3;
            }

            else
            {
              v12 = *(v18[0] + 1) + 1023;
            }

            degas::Bitset::setRange(v18[0], v4, v12);
            std::vector<degas::BitsetPtr>::insert(this + 16, (*(this + 2) + 16 * v8), v18);
            v4 = *(v18[0] + 1) + 1024;
            degas::BitsetPtr::releaseBitset(v18);
          }

          goto LABEL_24;
        }

        v16 = v10 + 1023;
        if (v16 >= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = v16;
        }

        degas::Bitset::setRange(v19, v4, v17);
        v15 = *(v9 + 8);
      }

      v4 = v15 + 1024;
LABEL_24:
      degas::BitsetPtr::releaseBitset(&v19);
      if (v4 > a3)
      {
        *this = 0xFFFFFFFFLL;
        *(this + 40) = 1;
        return;
      }
    }
  }
}

void sub_255959BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  degas::BitsetPtr::releaseBitset(&a9);
  degas::BitsetPtr::releaseBitset(&a11);
  _Unwind_Resume(a1);
}

void degas::Bitmap::clearRange(degas::BitsetPtr **this, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    Offset = degas::Bitmap::findOffset(this, a2);
    v7 = this[3] - this[2];
    if (Offset < v7 >> 4)
    {
      v8 = Offset;
      v9 = degas::Bitmap::findOffset(this, a3, Offset, v7 >> 4);
      degas::Bitmap::unshadowedBitSetAtIndex(this, v8, v52);
      v10 = v9 >= (this[3] - this[2]) >> 4;
      if (v9 < (this[3] - this[2]) >> 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      v12 = v9 - v10;
      if (v8 == v9 - v10)
      {
        v13 = v52[0];
        v14 = *(v52[0] + 1);
        if (v14 <= a2)
        {
          v15 = a2;
        }

        else
        {
          v15 = *(v52[0] + 1);
        }

        v16 = v14 + 1023;
        if (v16 >= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = v16;
        }

        if (v15 <= v17)
        {
          degas::Bitset::clearRange(v52[0], v15, v17);
        }
      }

      else
      {
        degas::Bitmap::unshadowedBitSetAtIndex(this, v12, v51);
        v18 = v51[0];
        v19 = *(v51[0] + 1);
        if (v19 <= a3 && v19 + 1024 > a3)
        {
          degas::Bitset::clearRange(v51[0], v19, a3);
        }

        v21 = *(v18 + 1);
        if (!v21)
        {
          goto LABEL_27;
        }

        if (v21 == -1)
        {
          v22 = 0;
          v23 = 0uLL;
          do
          {
            do
            {
              v23 = vpadalq_u16(v23, vpaddlq_u8(vcntq_s8(*(v18 + 4 * v22 + 16))));
              v22 += 4;
            }

            while (v22 != 32);
            v22 = 0;
            v24 = vaddvq_s32(v23);
            v23 = 0uLL;
          }

          while (v24 == -1);
          *(v18 + 1) = v24;
          if (!v24)
          {
LABEL_27:
            v25 = this[3];
            v26 = (this[2] + 16 * v12);
            if ((v26 + 16) != v25)
            {
              do
              {
                degas::BitsetPtr::releaseBitset(v26);
                v27 = *(v26 + 1);
                *v26 = v27;
                if (v27)
                {
                  ++*v27;
                }

                v28 = (v26 + 16);
                v29 = (v26 + 32);
                v26 = (v26 + 16);
              }

              while (v29 != v25);
              v25 = this[3];
              v26 = v28;
            }

            for (; v25 != v26; v25 = (v25 - 16))
            {
              degas::BitsetPtr::releaseBitset((v25 - 16));
              *(v25 - 1) = 0;
            }

            this[3] = v26;
          }
        }

        v30 = v12 - 1;
        if (v30 > v8)
        {
          v31 = this[3];
          v32 = 16 * (v9 + v11) - 16;
          do
          {
            v33 = this[2];
            v34 = (v33 + 16 * v30);
            if ((v34 + 16) == v31)
            {
              v39 = v31;
              v31 = (v33 + 16 * v30);
            }

            else
            {
              v35 = (v33 + v32);
              do
              {
                v36 = v35;
                degas::BitsetPtr::releaseBitset(v34);
                v37 = *(v34 + 1);
                *v34 = v37;
                if (v37)
                {
                  ++*v37;
                }

                v38 = (v34 + 32);
                v35 = (v34 + 16);
                v34 = (v34 + 16);
              }

              while (v38 != v31);
              v31 = (v36 + 1);
              v39 = this[3];
            }

            for (; v39 != v31; v39 = (v39 - 16))
            {
              degas::BitsetPtr::releaseBitset((v39 - 16));
              *(v39 - 1) = 0;
            }

            this[3] = v31;
            --v30;
            v32 -= 16;
          }

          while (v30 > v8);
        }

        v13 = v52[0];
        v40 = *(v52[0] + 1);
        if (v40 <= a2 && v40 + 1024 > a2)
        {
          degas::Bitset::clearRange(v52[0], a2, v40 + 1023);
        }

        degas::BitsetPtr::releaseBitset(v51);
      }

      v42 = *(v13 + 1);
      if (!v42)
      {
        goto LABEL_60;
      }

      if (v42 == -1)
      {
        v43 = 0;
        v44 = 0uLL;
        do
        {
          do
          {
            v44 = vpadalq_u16(v44, vpaddlq_u8(vcntq_s8(*(v13 + 4 * v43 + 16))));
            v43 += 4;
          }

          while (v43 != 32);
          v43 = 0;
          v45 = vaddvq_s32(v44);
          v44 = 0uLL;
        }

        while (v45 == -1);
        *(v13 + 1) = v45;
        if (!v45)
        {
LABEL_60:
          v46 = this[3];
          v47 = (this[2] + 16 * v8);
          if ((v47 + 16) != v46)
          {
            do
            {
              degas::BitsetPtr::releaseBitset(v47);
              v48 = *(v47 + 1);
              *v47 = v48;
              if (v48)
              {
                ++*v48;
              }

              v49 = (v47 + 16);
              v50 = (v47 + 32);
              v47 = (v47 + 16);
            }

            while (v50 != v46);
            v46 = this[3];
            v47 = v49;
          }

          for (; v46 != v47; v46 = (v46 - 16))
          {
            degas::BitsetPtr::releaseBitset((v46 - 16));
            *(v46 - 1) = 0;
          }

          this[3] = v47;
        }
      }

      *this = 0xFFFFFFFFLL;
      *(this + 40) = 1;
      degas::BitsetPtr::releaseBitset(v52);
    }
  }
}

void sub_255959FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  degas::BitsetPtr::releaseBitset(va);
  _Unwind_Resume(a1);
}

uint64_t degas::Bitmap::countBitsInRange(degas::Bitmap *this, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return 0;
  }

  Offset = degas::Bitmap::findOffset(this, a2);
  v7 = *(this + 3) - *(this + 2);
  if (Offset >= v7 >> 4)
  {
    return 0;
  }

  v8 = Offset;
  v9 = v7 >> 4;
  v10 = degas::Bitmap::findOffset(this, a3, Offset, v7 >> 4);
  v12 = v10 - (v10 >= v9);
  v13 = *(*(this + 2) + 16 * v8);
  v14 = *(v13 + 1);
  if (v14 <= a3 && v14 + 1024 >= a2)
  {
    v16 = degas::Bitset::countBitsInRange(v13, a2, a3, *v11.i8);
  }

  else
  {
    v16 = 0;
  }

  if (v8 != v12)
  {
    v18 = v8 + 1;
    v19 = *(this + 2);
    if (v8 + 1 < v12)
    {
      do
      {
        v20 = *(v19 + 16 * v18);
        v21 = *(v20 + 8);
        if (v21 <= a3 && v21 + 1024 >= a2)
        {
          v23 = *(v20 + 4);
          if (v23 == -1)
          {
            v24 = 0;
            v11 = 0uLL;
            do
            {
              do
              {
                v11 = vpadalq_u16(v11, vpaddlq_u8(vcntq_s8(*(v20 + 16 + 4 * v24))));
                v24 += 4;
              }

              while (v24 != 32);
              v24 = 0;
              v23 = vaddvq_s32(v11);
              v11 = 0uLL;
            }

            while (v23 == -1);
            *(v20 + 4) = v23;
          }

          v16 += v23;
        }

        ++v18;
      }

      while (v18 != v12);
    }

    v25 = *(v19 + 16 * v12);
    v26 = *(v25 + 1);
    if (v26 <= a3 && v26 + 1024 >= a2)
    {
      v16 += degas::Bitset::countBitsInRange(v25, a2, a3, *v11.i8);
    }
  }

  return v16;
}

void degas::Bitmap::insertBitset(degas::Bitmap *this, uint64_t a2, const degas::Bitset *a3)
{
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  v6[0] = 0;
  v6[1] = 0;
  degas::BitsetPool::allocBitset(degas::getBitsetPool(void)::sPool, v6, a3);
  std::vector<degas::BitsetPtr>::insert(this + 16, (*(this + 2) + 16 * a2), v6);
  degas::BitsetPtr::releaseBitset(v6);
}

void degas::Bitmap::mergeBitset(degas::Bitmap *this, unint64_t *a2, degas::Bitset *a3, unint64_t *a4, const degas::Bitset *a5)
{
  v7 = *(a3 + 1);
  v8 = *(a5 + 1);
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v11 = *this;
      if (*this != 0xFFFFFFFFLL)
      {
        v12 = *(a5 + 1);
        if (v12 == -1)
        {
          v13 = 0;
          v14 = 0uLL;
          do
          {
            do
            {
              v14 = vpadalq_u16(v14, vpaddlq_u8(vcntq_s8(*(a5 + 4 * v13 + 16))));
              v13 += 4;
            }

            while (v13 != 32);
            v13 = 0;
            v12 = vaddvq_s32(v14);
            v14 = 0uLL;
          }

          while (v12 == -1);
          *(a5 + 1) = v12;
        }

        *this = v11 + v12;
      }

      degas::Bitmap::insertBitset(this, *a2, a5);
      ++*a2;
      ++*a4;
      *(this + 40) = 1;
    }

    else
    {
      degas::Bitmap::unshadowedBitSetAtIndex(this, *a2, v18);
      v15 = 0;
      v16 = v18[0];
      v17 = v18[0] + 16;
      do
      {
        *(v17 + v15) |= *(a5 + v15 + 16);
        v15 += 4;
      }

      while (v15 != 128);
      *(v16 + 4) = -1;
      ++*a2;
      ++*a4;
      *this = 0xFFFFFFFFLL;
      *(this + 40) = 1;
      degas::BitsetPtr::releaseBitset(v18);
    }
  }

  else
  {
    *a2 = degas::Bitmap::findOffset(this, v8, *a2, ((*(this + 3) - *(this + 2)) >> 4));
  }
}

void degas::Bitmap::appendBitset(degas::Bitmap *this, const degas::Bitset *a2)
{
  v4 = *this;
  if (*this != 0xFFFFFFFFLL)
  {
    v5 = *(a2 + 1);
    if (v5 == -1)
    {
      v6 = 0;
      v7 = 0uLL;
      do
      {
        do
        {
          v7 = vpadalq_u16(v7, vpaddlq_u8(vcntq_s8(*(a2 + 4 * v6 + 16))));
          v6 += 4;
        }

        while (v6 != 32);
        v6 = 0;
        v5 = vaddvq_s32(v7);
        v7 = 0uLL;
      }

      while (v5 == -1);
      *(a2 + 1) = v5;
    }

    *this = v4 + v5;
  }

  v8 = 0uLL;
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  degas::BitsetPool::allocBitset(degas::getBitsetPool(void)::sPool, &v8, a2);
  std::vector<degas::BitsetPtr>::push_back[abi:ne200100](this + 2, &v8);
  *(this + 40) = 1;
  degas::BitsetPtr::releaseBitset(&v8);
}

uint64_t degas::Bitmap::intersectBitset(degas::BitsetPtr **this, unint64_t *a2, degas::Bitset *a3, unint64_t *a4, const degas::Bitset *a5)
{
  v7 = *(a3 + 1);
  v8 = *(a5 + 1);
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      return 1;
    }

    else
    {
      degas::Bitmap::unshadowedBitSetAtIndex(this, *a2, v32);
      v21 = 0;
      v22 = v32[0];
      v23 = v32[0] + 16;
      do
      {
        *(v23 + v21) &= *(a5 + v21 + 16);
        v21 += 4;
      }

      while (v21 != 128);
      v24 = 0;
      *(v22 + 4) = -1;
      *this = 0xFFFFFFFFLL;
      *(this + 40) = 1;
      ++*a4;
      v25 = 0uLL;
      do
      {
        do
        {
          v25 = vpadalq_u16(v25, vpaddlq_u8(vcntq_s8(*(v23 + 4 * v24))));
          v24 += 4;
        }

        while (v24 != 32);
        v24 = 0;
        v26 = vaddvq_s32(v25);
        v25 = 0uLL;
      }

      while (v26 == -1);
      *(v22 + 4) = v26;
      if (v26)
      {
        ++*a2;
      }

      else
      {
        v27 = this[3];
        v28 = (this[2] + 16 * *a2);
        if ((v28 + 16) != v27)
        {
          do
          {
            degas::BitsetPtr::releaseBitset(v28);
            v29 = *(v28 + 1);
            *v28 = v29;
            if (v29)
            {
              ++*v29;
            }

            v30 = (v28 + 16);
            v31 = (v28 + 32);
            v28 = (v28 + 16);
          }

          while (v31 != v27);
          v27 = this[3];
          v28 = v30;
        }

        for (; v27 != v28; v27 = (v27 - 16))
        {
          degas::BitsetPtr::releaseBitset((v27 - 16));
          *(v27 - 1) = 0;
        }

        this[3] = v28;
      }

      degas::BitsetPtr::releaseBitset(v32);
      return 0;
    }
  }

  else
  {
    v9 = *this;
    if (*this != 0xFFFFFFFFLL)
    {
      v10 = *(a3 + 1);
      if (v10 == -1)
      {
        v11 = 0;
        v12 = 0uLL;
        do
        {
          do
          {
            v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(a3 + 4 * v11 + 16))));
            v11 += 4;
          }

          while (v11 != 32);
          v11 = 0;
          v10 = vaddvq_s32(v12);
          v12 = 0uLL;
        }

        while (v10 == -1);
        *(a3 + 1) = v10;
      }

      *this = (v9 - v10);
    }

    v13 = this[3];
    v14 = (this[2] + 16 * *a2);
    if ((v14 + 16) != v13)
    {
      do
      {
        degas::BitsetPtr::releaseBitset(v14);
        v15 = *(v14 + 1);
        *v14 = v15;
        if (v15)
        {
          ++*v15;
        }

        v16 = (v14 + 16);
        v17 = (v14 + 32);
        v14 = (v14 + 16);
      }

      while (v17 != v13);
      v13 = this[3];
      v14 = v16;
    }

    for (; v13 != v14; v13 = (v13 - 16))
    {
      degas::BitsetPtr::releaseBitset((v13 - 16));
      *(v13 - 1) = 0;
    }

    result = 0;
    this[3] = v14;
    *(this + 40) = 1;
  }

  return result;
}

unint64_t *degas::Bitmap::getBatch(unint64_t *this, degas::Bitmap *a2, unint64_t a3)
{
  v5 = this;
  v6 = -1;
  v18 = -1;
  v7 = this[2];
  v8 = this[3];
  if (v7 != v8)
  {
    this = *v7;
    v6 = (*v7)[1];
    if (v6 > 0xFFFFFFFFFFFFFBFFLL || (this[2] & 1) == 0)
    {
      this = degas::Bitset::nextBit(this, &v18, v6);
      v6 = v18;
    }
  }

  v15 = v5;
  v16 = v6;
  v17 = v7;
  if ((v7 != v8 || v6 != -1) && a3 != 0)
  {
    v11 = 1;
    do
    {
      degas::Bitmap::setBit(a2, v6);
      this = degas::Bitmap::iterator::operator++(&v15);
      v6 = v16;
    }

    while ((v17 != v5[3] || v16 != -1 || v15 != v5) && v11++ < a3);
  }

  return this;
}

unint64_t *degas::Bitmap::iterator::operator++(unint64_t *a1)
{
  v2 = a1[2];
  if (v2 != *(*a1 + 24))
  {
    v3 = a1[1];
    do
    {
      if (degas::Bitset::nextBit(*v2, a1 + 1, v3))
      {
        break;
      }

      v2 = (a1[2] + 16);
      v3 = -1;
      a1[1] = -1;
      a1[2] = v2;
    }

    while (v2 != *(*a1 + 24));
  }

  return a1;
}

void *degas::Bitmap::begin@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v4 = -1;
  v6 = -1;
  v5 = this[2];
  if (v5 != this[3])
  {
    this = *v5;
    v4 = *(*v5 + 8);
    if (v4 > 0xFFFFFFFFFFFFFBFFLL || (this[2] & 1) == 0)
    {
      this = degas::Bitset::nextBit(this, &v6, v4);
      v4 = v6;
    }
  }

  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  return this;
}

uint64_t degas::Bitmap::end@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = this;
  a2[1] = -1;
  a2[2] = v2;
  return this;
}

uint64_t degas::Bitmap::firstBitset(degas::Bitmap *this)
{
  result = *(this + 2);
  if (result == *(this + 3))
  {
    result = degas::emptySharedPtr(void)::s_emptySharedPtr;
    if (!degas::emptySharedPtr(void)::s_emptySharedPtr)
    {
      operator new();
    }
  }

  return result;
}

uint64_t degas::Bitmap::bitsetAtIndex(degas::Bitmap *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (a2 < (*(this + 3) - v2) >> 4)
  {
    return v2 + 16 * a2;
  }

  result = degas::emptySharedPtr(void)::s_emptySharedPtr;
  if (!degas::emptySharedPtr(void)::s_emptySharedPtr)
  {
    operator new();
  }

  return result;
}

__int128 *degas::Bitmap::emptyBitmap(degas::Bitmap *this)
{
  {
    unk_2810B74B1 = 0u;
    degas::Bitmap::emptyBitmap(void)::bitmap = 0u;
    unk_2810B74A8 = 0u;
    __cxa_atexit(degas::Bitmap::~Bitmap, &degas::Bitmap::emptyBitmap(void)::bitmap, &dword_255870000);
  }

  return &degas::Bitmap::emptyBitmap(void)::bitmap;
}

uint64_t degas::Bitmap::description(degas::Bitmap *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "[", 1);
  v2 = -1;
  v17 = -1;
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v4 != v3)
  {
    v5 = *v4;
    v2 = *(*v4 + 1);
    if (v2 > 0xFFFFFFFFFFFFFBFFLL || (*(v5 + 16) & 1) == 0)
    {
      degas::Bitset::nextBit(v5, &v17, *(*v4 + 1));
      v2 = v17;
    }
  }

  v9 = this;
  v10 = v2;
  v6 = 1;
  v7 = this;
  v11 = v4;
  while (v7 != this || v2 != -1 || v4 != v3)
  {
    if ((v6 & 1) == 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, ",", 1);
    }

    MEMORY[0x259C43DF0](&v12, v2);
    degas::Bitmap::iterator::operator++(&v9);
    v6 = 0;
    v3 = *(this + 3);
    v7 = v9;
    v2 = v10;
    v4 = v11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "]", 1);
  std::stringbuf::str();
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v16);
}

void sub_25595ACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ostringstream::~ostringstream(&a13);
  MEMORY[0x259C43E80](&a27);
  _Unwind_Resume(a1);
}

unint64_t *degas::Bitmap::iterator::operator++@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 1);
  return degas::Bitmap::iterator::operator++(a1);
}

void *degas::Bitmap::iterator::iterator(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = *a4;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  result[2] = *a4;
  return result;
}

void *degas::Bitmap::iterator::iterator(void *this, const degas::Bitmap *a2, uint64_t a3, uint64_t a4)
{
  *this = a2;
  this[1] = a3;
  this[2] = *(a2 + 2) + 16 * a4;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = *(a2 + 2) + 16 * a4;
  return this;
}

__n128 degas::Bitmap::iterator::iterator(degas::Bitmap::iterator *this, const degas::Bitmap::iterator *a2)
{
  *this = *a2;
  result = *(a2 + 8);
  *(this + 8) = result;
  return result;
}

{
  *this = *a2;
  result = *(a2 + 8);
  *(this + 8) = result;
  return result;
}

__n128 degas::Bitmap::iterator::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

void *degas::Bitmap::iterator::seek(void *this, unint64_t a2)
{
  v2 = *this;
  v3 = *(*this + 16);
  this[1] = -1;
  this[2] = v3;
  if (v3 != *(v2 + 24))
  {
    v5 = this;
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      v8 = *(*v3 + 1);
      if (v8 == -1)
      {
        v9 = 0;
        v10 = 0uLL;
        do
        {
          do
          {
            v10 = vpadalq_u16(v10, vpaddlq_u8(vcntq_s8(*(v7 + 4 * v9 + 16))));
            v9 += 4;
          }

          while (v9 != 32);
          v9 = 0;
          v8 = vaddvq_s32(v10);
          v10 = 0uLL;
        }

        while (v8 == -1);
        *(v7 + 1) = v8;
      }

      if (v6 + v8 > a2)
      {
        break;
      }

      v3 += 2;
      this[2] = v3;
      v6 += v8;
      if (v3 == *(v2 + 24))
      {
        return this;
      }
    }

    v11 = -1;
    v12 = -1;
    do
    {
      this = degas::Bitset::nextBit(v7, &v12, v11);
      v11 = v12;
      ++v6;
    }

    while (v6 <= a2);
    v5[1] = v12;
  }

  return this;
}

void sub_25595BB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id nodePrintableSchema(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CCACA8];
  v6 = [v3 label];
  v7 = [v5 stringWithFormat:@"(%@:%@:%lu)", v4, v6, objc_msgSend(v3, "domain")];

  v8 = [MEMORY[0x277CCAB68] stringWithFormat:@"==== Node: %@ === \n", v7];
  if ([v3 inEdgesCount])
  {
    [v8 appendString:@"inEdges:\n"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __nodePrintableSchema_block_invoke;
    v12[3] = &unk_2797FFA98;
    v13 = v8;
    v14 = v4;
    [v3 enumerateInEdgesUsingBlock:v12];
  }

  if ([v3 outEdgesCount])
  {
    [v8 appendString:@"outEdges:\n"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __nodePrintableSchema_block_invoke_2;
    v10[3] = &unk_2797FFB60;
    v11 = v8;
    [v3 enumerateOutEdgesUsingBlock:v10];
  }

  return v8;
}

void __nodePrintableSchema_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = edgePrintableSchema(a2, 0, 0, *(a1 + 40));
  [v2 appendFormat:@"%@\n", v3];
}

void __nodePrintableSchema_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = edgePrintableSchema(a2, @"DEFINITION_NODE", 0, 0);
  [v2 appendFormat:@"%@\n", v3];
}

id edgePrintableSchema(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [v10 sourceNode];
  v12 = [v10 targetNode];
  v13 = MEMORY[0x277CCACA8];
  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = &stru_2867AAB68;
  }

  v15 = [v10 label];
  v16 = [v10 domain];

  v17 = [v13 stringWithFormat:@"[%@:%@:%lu]", v14, v15, v16];

  v18 = MEMORY[0x277CCACA8];
  if (v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = &stru_2867AAB68;
  }

  v20 = [v11 label];
  v21 = [v18 stringWithFormat:@"(%@:%@:%lu)", v19, v20, objc_msgSend(v11, "domain")];

  v22 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v23 = v7;
  }

  else
  {
    v23 = &stru_2867AAB68;
  }

  v24 = [v12 label];
  v25 = [v22 stringWithFormat:@"(%@:%@:%lu)", v23, v24, objc_msgSend(v12, "domain")];

  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@->%@->%@", v21, v17, v25];

  return v26;
}

uint64_t isElementMatchingDefinition(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 domain];
  if (v5 == [v4 domain])
  {
    v6 = [v3 label];
    if ([v6 isEqualToString:@"*"])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v3 label];
      v9 = [v4 label];
      v7 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_255962018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6272(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t degas::AttributeTable::deleteEntry(degas::AttributeTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeTable::deleteStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  v4 = *v3;

  return degas::Statement::update(v4);
}

degas::Statement **degas::AttributeTable::deleteStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6_6500;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::AttributeTable::createTable(degas::AttributeTable *this)
{
  v1 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "create table Attribute (identifier integer primary key autoincrement, name text)");
  degas::Statement::Statement(ppStmt, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  return v2;
}

void degas::AttributeTable::~AttributeTable(degas::AttributeTable *this)
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

degas::AttributeTable *degas::AttributeTable::AttributeTable(degas::AttributeTable *this, sqlite3 *a2, degas::StatementCache *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Attribute");
  *this = &unk_2867A9A50;
  v6 = (this + 8);
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external(v6, __p[0], __p[1]);
    v7 = SHIBYTE(v10);
    *(this + 4) = a2;
    *(this + 5) = a3;
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&v6->__r_.__value_.__l.__data_ = *__p;
    *(this + 3) = v10;
    *(this + 4) = a2;
    *(this + 5) = a3;
  }

  *this = &unk_2867AAA90;
  *(this + 48) = 1;
  return this;
}

void sub_255964090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

degas::Statement **degas::AttributeTable::insertStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6512;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::AttributeTable::updateStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x400;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable15updateStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_6514;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::AttributeTable::readByIdentifierStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8_6516;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::AttributeTable::readAfterIdentifierStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable28readAfterIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_6518;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::AttributeTable::readByNameStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x601;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable19readByNameStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_6520;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::AttributeTable::readAllStatement(degas::AttributeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14AttributeTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_14_6522;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::AttributeTable::insert(sqlite3 **a1, sqlite3_int64 *a2, uint64_t *a3)
{
  inserted = degas::AttributeTable::insertStatement(a1);
  v7 = *inserted;
  if (*a2)
  {
    degas::Statement::bindInteger(v7, 1, *a2);
  }

  else
  {
    degas::Statement::bindNull(v7, 1);
  }

  degas::Statement::bindString(*inserted, 2, a3);
  v8 = degas::Statement::update(*inserted);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a2 == 0;
  }

  if (v9)
  {
    *a2 = sqlite3_last_insert_rowid(a1[4]);
  }

  return v8;
}

uint64_t degas::AttributeTable::update(degas::AttributeTable *a1, sqlite3_int64 a2, uint64_t *a3)
{
  updated = degas::AttributeTable::updateStatement(a1);
  degas::Statement::bindInteger(*updated, 1, a2);
  degas::Statement::bindString(*updated, 2, a3);
  v6 = *updated;

  return degas::Statement::update(v6);
}

sqlite3_stmt ***degas::AttributeTable::prepareStatementToReadByIdentifier(degas::AttributeTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AttributeTable::prepareStatementToReadAfterIdentifier(degas::AttributeTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeTable::readAfterIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

uint64_t *degas::AttributeTable::prepareStatementToReadByName(degas::AttributeTable *a1, uint64_t *a2)
{
  v3 = degas::AttributeTable::readByNameStatement(a1);
  degas::Statement::bindString(*v3, 1, a2);
  return v3;
}

degas::AttributeCursor *degas::AttributeCursor::AttributeCursor(degas::AttributeCursor *this, const degas::AttributeTable *a2)
{
  AllStatement = degas::AttributeTable::readAllStatement(a2);
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
  AllStatement = degas::AttributeTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AttributeCursor *degas::AttributeCursor::AttributeCursor(degas::AttributeCursor *this, sqlite3_int64 a2, const degas::AttributeTable *a3)
{
  v5 = degas::AttributeTable::readByIdentifierStatement(a3);
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

sqlite3_stmt ***degas::AttributeCursor::AttributeCursor(sqlite3_stmt ***a1, sqlite3_int64 a2, degas::AttributeTable *this, int a4)
{
  if (a4 == 5)
  {
    v6 = degas::AttributeTable::readAfterIdentifierStatement(this);
  }

  else
  {
    v6 = degas::AttributeTable::readByIdentifierStatement(this);
  }

  v7 = v6;
  degas::Statement::bindInteger(*v6, 1, a2);
  v8 = v7[1];
  *a1 = *v7;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t *degas::AttributeCursor::AttributeCursor(uint64_t *a1, uint64_t *a2, degas::AttributeTable *this)
{
  v5 = degas::AttributeTable::readByNameStatement(this);
  degas::Statement::bindString(*v5, 1, a2);
  v6 = v5[1];
  *a1 = *v5;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}