uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void bitmapTestCombo(void)
{
  v0 = 100;
  do
  {
    testSet(v1);
    testEncodeDecodeBitmap(v1);
    testUnset(v1);
    v3 = &v2;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
    --v0;
  }

  while (v0);
}

void sub_2558C8E44(_Unwind_Exception *a1)
{
  v3 = v1;
  *(v2 - 24) = v3;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t degas::getLogFile(degas *this)
{
  {
    operator new();
  }

  return degas::getLogFile(void)::sLogFile;
}

void sub_2558C98E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C43EB0](v15, 0x1012C40849EBCB1);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t degas::NeighborQuery::NeighborQuery(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  v5 = *a2 && ((*(**a2 + 48))(*a2) & 1) == 0;
  *(a1 + 16) = v5;
  return a1;
}

void sub_2558C9A88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t degas::NeighborQuery::choosePlan(degas::NeighborQuery *this, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a3 / a2;
  if (a2 >= 0x33 && v4 < 0xA || a3 <= 0xE && v4 < 3)
  {
    return 4;
  }

  if (a3 < 0x249F0)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  if (a3 < 0x15E)
  {
    v6 = 1;
  }

  if (v6)
  {
    return 7;
  }

  else
  {
    return 2;
  }
}

uint64_t degas::NeighborQuery::neighborsNodesFirst(uint64_t a1, uint64_t a2, void *a3, void *a4, Bitmap *a5, unsigned int a6, degas::Bitmap *a7)
{
  if (*a4)
  {
    if (a6 <= 1)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v26);
      v31 = 0u;
      memset(v32, 0, 25);
      if (*a3 && (*(**a3 + 40))(*a3, &v31))
      {
        degas::LabelledEdgeCursor::setForEdgesFromLabelsSourceNodes(v26, a5, &v31, (*(a1 + 24) + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromSourceNodes(v26, a5, (*(a1 + 24) + 1144));
      }

      memset(&v30, 0, 41);
      while (1)
      {
        v14 = degas::Statement::next(v26[0]);
        v15 = v14;
        if (v14 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v26[0], 0, &v30);
      }

      v13 = v14;
      v16 = v14 & 0xFFFFFFFD;
      if ((v14 & 0xFFFFFFFD) == 0)
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v30, &v30);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v29);
        degas::LabelledEdgeCursor::setForTargetNodesFromEdges(v29, &v30, (*(a1 + 24) + 1144));
        while (1)
        {
          v17 = degas::Statement::next(v29[0]);
          if (v17 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v29[0], 0, a7);
        }

        if (v17 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v17;
        }

        degas::Cursor::~Cursor(v29);
      }

      v29[0] = &v30._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
      v30._bitCount = v32;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
      degas::Cursor::~Cursor(v26);
      if (v16)
      {
        return v15;
      }
    }

    else
    {
      v13 = 0;
    }

    if ((a6 & 0xFFFFFFFD) == 0)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v29);
      v31 = 0u;
      memset(v32, 0, 25);
      if (*a3 && (*(**a3 + 40))(*a3, &v31))
      {
        degas::LabelledEdgeCursor::setForEdgesFromLabelsTargetNodes(v29, a5, &v31, (*(a1 + 24) + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromTargetNodes(v29, a5, (*(a1 + 24) + 1144));
      }

      memset(&v30, 0, 41);
      while (1)
      {
        v20 = degas::Statement::next(v29[0]);
        v15 = v20;
        if (v20 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v29[0], 0, &v30);
      }

      if ((v20 & 0xFFFFFFFD) != 0)
      {
        v21 = 0;
        v13 = v20;
      }

      else
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v30, &v30);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v28);
        degas::LabelledEdgeCursor::setForSourceNodesFromEdges(v28, &v30, (*(a1 + 24) + 1144));
        *v26 = 0u;
        memset(v27, 0, 25);
        while (1)
        {
          v24 = degas::Statement::next(v28[0]);
          v15 = v24;
          if (v24 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v28[0], 0, v26);
        }

        if (v24 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v24;
        }

        v21 = v13 == 0;
        if (!v13)
        {
          if (a6 < 2)
          {
            degas::Bitmap::unionWith<degas::Bitmap>(a7, v26);
          }

          else
          {
            degas::Bitmap::operator=(a7, v26);
          }

          v15 = 0;
        }

        v33 = v27;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v33);
        degas::Cursor::~Cursor(v28);
      }

      v26[0] = &v30._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
      v30._bitCount = v32;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
      degas::Cursor::~Cursor(v29);
      if (!v21)
      {
        return v15;
      }
    }
  }

  else
  {
    if (a6 > 1)
    {
      goto LABEL_75;
    }

    degas::LabelledEdgeCursor::LabelledEdgeCursor(&v30);
    v31 = 0u;
    memset(v32, 0, 25);
    if (*a3 && (*(**a3 + 40))(*a3, &v31))
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromLabelsSourceNodes(&v30, a5, &v31, (*(a1 + 24) + 1144));
    }

    else
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromSourceNodes(&v30, a5, (*(a1 + 24) + 1144));
    }

    while (1)
    {
      v18 = degas::Statement::next(v30._bitCount);
      v13 = v18;
      if (v18 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v30._bitCount, 0, a7);
    }

    v19 = v18 & 0xFFFFFFFD;
    v26[0] = v32;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v26);
    degas::Cursor::~Cursor(&v30);
    if (!v19)
    {
LABEL_75:
      if ((a6 & 0xFFFFFFFD) != 0)
      {
        return 0;
      }

      degas::LabelledEdgeCursor::LabelledEdgeCursor(v26);
      v31 = 0u;
      memset(v32, 0, 25);
      if (*a3 && (*(**a3 + 40))(*a3, &v31))
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromLabelsTargetNodes(v26, a5, &v31, (*(a1 + 24) + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromTargetNodes(v26, a5, (*(a1 + 24) + 1144));
      }

      memset(&v30, 0, 41);
      while (1)
      {
        v22 = degas::Statement::next(v26[0]);
        v13 = v22;
        if (v22 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v26[0], 0, &v30);
      }

      v23 = v22 & 0xFFFFFFFD;
      if ((v22 & 0xFFFFFFFD) == 0)
      {
        if (a6 < 2)
        {
          degas::Bitmap::unionWith<degas::Bitmap>(a7, &v30);
        }

        else
        {
          degas::Bitmap::operator=(a7, &v30);
        }

        v13 = 0;
      }

      v29[0] = &v30._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v29);
      v30._bitCount = v32;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
      degas::Cursor::~Cursor(v26);
      if (!v23)
      {
        return 0;
      }
    }
  }

  return v13;
}

void sub_2558CA130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, degas::Statement *a15, uint64_t a16, degas::Statement *a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 - 104) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v27 - 104));
  degas::Cursor::~Cursor(&a15);
  a9 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a19 = &a27;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a19);
  degas::Cursor::~Cursor(&a17);
  _Unwind_Resume(a1);
}

void degas::Bitmap::unionWith<degas::Bitmap>(degas::Bitmap *this, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v2 = *(a2 + 24) - *(a2 + 16);
  v3 = (v2 >> 4);
  if ((v2 & 0xFFFFFFFF0) != 0 && v3 != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(this + 2);
      v9 = *(a2 + 16);
      if (v13 >= (*(this + 3) - v8) >> 4)
      {
        break;
      }

      degas::Bitmap::mergeBitset(this, &v13, *(v8 + 16 * v13), &v12, *(v9 + 16 * v7));
      v7 = v12;
      if (v12 >= v3)
      {
        v9 = *(a2 + 16);
        break;
      }
    }

    v10 = *(a2 + 24) - v9;
    if (v7 < (v10 >> 4))
    {
      v11 = (v10 >> 4);
      do
      {
        degas::Bitmap::appendBitset(this, *(*(a2 + 16) + 16 * v7++));
      }

      while (v11 != v7);
    }
  }
}

uint64_t degas::NeighborQuery::neighborsNodesEdgeFilter(uint64_t a1, degas::Bitmap *a2, uint64_t a3, void *a4, Bitmap *a5, unsigned int a6, degas::Bitmap *a7)
{
  if (*a4)
  {
    if (a6 <= 1)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v34);
      v16 = degas::Bitmap::count(a2);
      v17 = *(a1 + 24);
      if (v16)
      {
        degas::LabelledEdgeCursor::setForEdgesFromSourceNodesEdgeFilter(v34, a5, a2, (v17 + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromSourceNodes(v34, a5, (v17 + 1144));
      }

      memset(&v38, 0, 41);
      while (1)
      {
        v18 = degas::Statement::next(v34[0]);
        v19 = v18;
        if (v18 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v34[0], 0, &v38);
      }

      v13 = v18;
      v20 = v18 & 0xFFFFFFFD;
      if ((v18 & 0xFFFFFFFD) == 0)
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v38, &v38);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v37);
        degas::LabelledEdgeCursor::setForTargetNodesFromEdges(v37, &v38, (*(a1 + 24) + 1144));
        while (1)
        {
          v21 = degas::Statement::next(v37[0]);
          if (v21 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v37[0], 0, a7);
        }

        if (v21 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v21;
        }

        degas::Cursor::~Cursor(v37);
      }

      v37[0] = &v38._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v37);
      degas::Cursor::~Cursor(v34);
      if (v20)
      {
        return v19;
      }
    }

    else
    {
      v13 = 0;
    }

    if ((a6 & 0xFFFFFFFD) == 0)
    {
      degas::LabelledEdgeCursor::LabelledEdgeCursor(v37);
      v22 = degas::Bitmap::count(a2);
      v23 = *(a1 + 24);
      if (v22)
      {
        degas::LabelledEdgeCursor::setForEdgesFromTargetNodesEdgeFilter(v37, a5, a2, (v23 + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForEdgesFromTargetNodes(v37, a5, (v23 + 1144));
      }

      memset(&v38, 0, 41);
      while (1)
      {
        v28 = degas::Statement::next(v37[0]);
        v19 = v28;
        if (v28 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v37[0], 0, &v38);
      }

      if ((v28 & 0xFFFFFFFD) != 0)
      {
        v29 = 0;
        v13 = v28;
      }

      else
      {
        if (*a4)
        {
          (*(**a4 + 24))(*a4, &v38, &v38);
        }

        degas::LabelledEdgeCursor::LabelledEdgeCursor(v36);
        degas::LabelledEdgeCursor::setForSourceNodesFromEdges(v36, &v38, (*(a1 + 24) + 1144));
        *v34 = 0u;
        memset(v35, 0, 25);
        while (1)
        {
          v30 = degas::Statement::next(v36[0]);
          v19 = v30;
          if (v30 != 1)
          {
            break;
          }

          degas::Statement::bitmapColumnValue(v36[0], 0, v34);
        }

        if (v30 == 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = v30;
        }

        v29 = v13 == 0;
        if (!v13)
        {
          if (a6 < 2)
          {
            degas::Bitmap::unionWith<degas::Bitmap>(a7, v34);
          }

          else
          {
            degas::Bitmap::operator=(a7, v34);
          }

          v19 = 0;
        }

        v39 = v35;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v39);
        degas::Cursor::~Cursor(v36);
      }

      v34[0] = &v38._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v34);
      degas::Cursor::~Cursor(v37);
      if (!v29)
      {
        return v19;
      }
    }
  }

  else
  {
    if (a6 > 1)
    {
      goto LABEL_71;
    }

    degas::LabelledEdgeCursor::LabelledEdgeCursor(&v38);
    v14 = degas::Bitmap::count(a2);
    v15 = *(a1 + 24);
    if (v14)
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterEdge(&v38, a5, a2, (v15 + 1144));
    }

    else
    {
      degas::LabelledEdgeCursor::setForTargetNodesFromSourceNodes(&v38, a5, (v15 + 1144));
    }

    while (1)
    {
      v24 = degas::Statement::next(v38._bitCount);
      v13 = v24;
      if (v24 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v38._bitCount, 0, a7);
    }

    v25 = v24 & 0xFFFFFFFD;
    degas::Cursor::~Cursor(&v38);
    if (!v25)
    {
LABEL_71:
      if ((a6 & 0xFFFFFFFD) != 0)
      {
        return 0;
      }

      degas::LabelledEdgeCursor::LabelledEdgeCursor(v34);
      v26 = degas::Bitmap::count(a2);
      v27 = *(a1 + 24);
      if (v26)
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterEdge(v34, a5, a2, (v27 + 1144));
      }

      else
      {
        degas::LabelledEdgeCursor::setForSourceNodesFromTargetNodes(v34, a5, (v27 + 1144));
      }

      memset(&v38, 0, 41);
      while (1)
      {
        v31 = degas::Statement::next(v34[0]);
        v13 = v31;
        if (v31 != 1)
        {
          break;
        }

        degas::Statement::bitmapColumnValue(v34[0], 0, &v38);
      }

      v32 = v31 & 0xFFFFFFFD;
      if ((v31 & 0xFFFFFFFD) == 0)
      {
        if (a6 < 2)
        {
          degas::Bitmap::unionWith<degas::Bitmap>(a7, &v38);
        }

        else
        {
          degas::Bitmap::operator=(a7, &v38);
        }

        v13 = 0;
      }

      v37[0] = &v38._bitSets;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v37);
      degas::Cursor::~Cursor(v34);
      if (!v32)
      {
        return 0;
      }
    }
  }

  return v13;
}

void sub_2558CA790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, degas::Statement *a15, uint64_t a16, degas::Statement *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 88) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  degas::Cursor::~Cursor(&a15);
  a9 = &a21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor(&a17);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstJoinBoth(uint64_t a1, degas::Bitmap *this, uint64_t **a3, Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  memset(&v20, 0, 41);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinBoth(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CAA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstJoinEdge(uint64_t a1, degas::Bitmap *this, uint64_t **a3, Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  memset(&v20, 0, 41);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesJoinEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesJoinEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstFilterEdge(uint64_t a1, degas::Bitmap *this, uint64_t **a3, Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  v20 = 0u;
  memset(v21, 0, 25);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterEdge(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = v21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CAF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsEdgesFirstFilterNode(uint64_t a1, degas::Bitmap *this, uint64_t **a3, const degas::Bitmap *a4, unsigned int a5, degas::Bitmap *a6)
{
  memset(&v20, 0, 41);
  if (*a3)
  {
    v11 = degas::Bitmap::count(this);
    v12 = **a3;
    if (v11)
    {
      (*(v12 + 24))();
    }

    else
    {
      (*(v12 + 16))();
    }
  }

  else
  {
    degas::Bitmap::operator=(&v20, this);
  }

  if (a5 > 1)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForTargetNodesFromEdgesSourceNodesFilterNode(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v13 = degas::Statement::next(v17[0]);
      v14 = v13;
      if (v13 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v13 == 2)
    {
      degas::Bitmap::operator=(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  if ((a5 & 0xFFFFFFFD) == 0)
  {
    v18 = 0u;
    memset(v19, 0, 25);
    degas::LabelledEdgeCursor::LabelledEdgeCursor(v17);
    degas::LabelledEdgeCursor::setForSourceNodesFromEdgesTargetNodesFilterNode(v17, a4, &v20, (*(a1 + 24) + 1144));
    while (1)
    {
      v15 = degas::Statement::next(v17[0]);
      v14 = v15;
      if (v15 != 1)
      {
        break;
      }

      degas::Statement::bitmapColumnValue(v17[0], 0, &v18);
    }

    if (v15 == 2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a6, &v18);
      v14 = 0;
    }

    degas::Cursor::~Cursor(v17);
    v17[0] = v19;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  *&v18 = &v20._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  return v14;
}

void sub_2558CB1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  degas::Cursor::~Cursor(&a9);
  a9 = &a13;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  a11 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::appendSourceNodesForEdges(degas::NeighborQuery *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::LabelledEdgeCursor::LabelledEdgeCursor(v11);
  degas::LabelledEdgeCursor::setForSourceNodesFromEdges(v11, a2, (*(this + 3) + 1144));
  v9 = 0u;
  memset(v10, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v11[0]);
    v7 = v6;
    if (v6 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v11[0], 0, &v9);
  }

  if (v6 == 2)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(a3, &v9);
    v7 = 0;
  }

  v12 = v10;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  degas::Cursor::~Cursor(v11);
  return v7;
}

void sub_2558CB2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  *(v3 - 40) = va;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  degas::Cursor::~Cursor(va1);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::appendTargetNodesForEdges(degas::NeighborQuery *this, Bitmap *a2, degas::Bitmap *a3)
{
  degas::LabelledEdgeCursor::LabelledEdgeCursor(v11);
  degas::LabelledEdgeCursor::setForTargetNodesFromEdges(v11, a2, (*(this + 3) + 1144));
  v9 = 0u;
  memset(v10, 0, 25);
  while (1)
  {
    v6 = degas::Statement::next(v11[0]);
    v7 = v6;
    if (v6 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v11[0], 0, &v9);
  }

  if (v6 == 2)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(a3, &v9);
    v7 = 0;
  }

  v12 = v10;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  degas::Cursor::~Cursor(v11);
  return v7;
}

void sub_2558CB3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  *(v3 - 40) = va;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  degas::Cursor::~Cursor(va1);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighborsNodeTableEdges(degas::NeighborQuery *a1, degas::Bitmap *a2, void *a3, Bitmap *a4, unsigned int a5, void *a6)
{
  v12 = degas::NodeCursor::NodeCursor(v22);
  degas::NodeCursor::setForIdentifiers(v12, a4, (*(a1 + 3) + 192));
  v20 = 0u;
  memset(v21, 0, 25);
  memset(&v19, 0, 41);
  memset(&v18, 0, 41);
  while (1)
  {
    v13 = degas::Statement::next(v22[0]);
    appended = v13;
    if (v13 != 1)
    {
      break;
    }

    if (a5 <= 1)
    {
      v15 = degas::Statement::literalBitmapColumnValue(v22[0], 3);
      if (v15[1])
      {
        degas::Bitmap::unionWith<degas::LiteralBitmap>(&v19, v15);
      }
    }

    if ((a5 & 0xFFFFFFFD) == 0)
    {
      v16 = degas::Statement::literalBitmapColumnValue(v22[0], 2);
      if (v16[1])
      {
        degas::Bitmap::unionWith<degas::LiteralBitmap>(&v18, v16);
      }
    }
  }

  if (v13 == 2)
  {
    if (v19._bitSets.__begin_ == v19._bitSets.__end_)
    {
      goto LABEL_26;
    }

    if (degas::Bitmap::count(a2))
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(&v19, a2);
    }

    if (*a3)
    {
      (*(**a3 + 24))(*a3, &v19, &v19);
    }

    appended = degas::NeighborQuery::appendTargetNodesForEdges(a1, &v19, &v20);
    if (!appended)
    {
LABEL_26:
      if (v18._bitSets.__begin_ == v18._bitSets.__end_)
      {
        goto LABEL_22;
      }

      if (degas::Bitmap::count(a2))
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v18, a2);
      }

      if (*a3)
      {
        (*(**a3 + 24))(*a3, &v18, &v18);
      }

      appended = degas::NeighborQuery::appendSourceNodesForEdges(a1, &v18, &v20);
      if (!appended)
      {
LABEL_22:
        degas::Bitmap::operator=(a6, &v20);
        appended = 0;
      }
    }
  }

  p_bitSets = &v18._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&p_bitSets);
  v18._bitCount = &v19._bitSets;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  v19._bitCount = v21;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v19);
  degas::Cursor::~Cursor(v22);
  return appended;
}

void degas::Bitmap::intersectWith<degas::Bitmap>(degas::Bitmap *this, degas::Bitmap *a2)
{
  v12 = 0;
  v13 = 0;
  v3 = *(a2 + 3) - *(a2 + 2);
  if ((v3 & 0xFFFFFFFF0) == 0)
  {
    v5 = *(this + 2);
    v4 = *(this + 3);
    goto LABEL_11;
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v5 == v4)
  {
LABEL_11:
    *this = 0;
    for (*(this + 1) = 0; v4 != v5; v4 = (v4 - 16))
    {
      degas::BitsetPtr::releaseBitset((v4 - 16));
      *(v4 - 1) = 0;
    }

    *(this + 3) = v5;
    return;
  }

  v6 = (v3 >> 4);
  if ((v3 >> 4))
  {
    LODWORD(Offset) = 0;
    while (1)
    {
      v9 = v13;
      v5 = *(this + 2);
      v4 = *(this + 3);
      if (v13 >= (v4 - v5) >> 4)
      {
        break;
      }

      v10 = (v5 + 16 * v13);
      v11 = degas::Bitmap::intersectBitset(this, &v13, *v10, &v12, *(*(a2 + 2) + 16 * Offset));
      Offset = v12;
      if (v11)
      {
        Offset = degas::Bitmap::findOffset(a2, *(*v10 + 1), v12, v6);
        v12 = Offset;
      }

      if (Offset >= v6)
      {
        v9 = v13;
        v5 = *(this + 2);
        v4 = *(this + 3);
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 < (v4 - v5) >> 4)
  {
    std::vector<degas::BitsetPtr>::erase(this + 16, (v5 + 16 * v9), v4);
    *this = 0xFFFFFFFFLL;
    *(this + 40) = 1;
  }
}

uint64_t degas::NeighborQuery::neighborsWithPlan(degas::NeighborQuery *a1, uint64_t a2, degas::Bitmap *this, void *a4, uint64_t **a5, Bitmap *a6, unsigned int a7, degas::Bitmap *a8)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:

        return degas::NeighborQuery::neighborsNodesFirst(a1, a2, a4, a5, a6, a7, a8);
      case 2:

        return degas::NeighborQuery::neighborsNodeTableEdges(a1, this, a5, a6, a7, a8);
      case 3:

        return degas::NeighborQuery::neighborsEdgesFirstJoinBoth(a1, this, a5, a6, a7, a8);
      default:
        goto LABEL_30;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {

        return degas::NeighborQuery::neighborsEdgesFirstJoinEdge(a1, this, a5, a6, a7, a8);
      }

      else
      {

        return degas::NeighborQuery::neighborsEdgesFirstFilterEdge(a1, this, a5, a6, a7, a8);
      }
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {

        return degas::NeighborQuery::neighborsNodesEdgeFilter(a1, this, this, a5, a6, a7, a8);
      }

LABEL_30:
      abort();
    }

    return degas::NeighborQuery::neighborsEdgesFirstFilterNode(a1, this, a5, a6, a7, a8);
  }
}

unint64_t degas::NeighborQuery::neighbors(degas::Database **a1, degas::Bitmap *this, unsigned int a3, degas::Bitmap *a4)
{
  if (degas::sInstrumentTraversal != 1)
  {
    v35[2] = 0u;
    memset(v36, 0, 25);
    v9 = degas::Bitmap::count(this);
    if (v9)
    {
      if (a1[2])
      {
        (*(**a1 + 32))(&v30);
        v10 = v30;
        v11 = v31;
        v29[0] = v30;
        v29[1] = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = v32;
        v12 = v33;
        v28[0] = v32;
        v28[1] = v33;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = 0u;
        memset(v35, 0, 25);
        if (v10)
        {
          v14 = (*(*v10 + 2))(v10, &v34);
          if (v14)
          {
            goto LABEL_47;
          }

          v14 = v34;
          if (v34 == 0xFFFFFFFFLL)
          {
            v16 = *(&v35[0] + 1);
            v15 = *&v35[0];
            if (*&v35[0] == *(&v35[0] + 1))
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

            *&v34 = v14;
          }

          if (!v14)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v14 = degas::Database::edgeCount(a1[3]);
        }

        if (v13 && ((*(*v13 + 56))(v13) & 1) != 0)
        {
          v14 = 0;
        }

        else
        {
          v23 = degas::Bitmap::count(this);
          v24 = v14 / v23;
          if ((v23 < 0x33 || v24 >= 0xA) && (v14 > 0xE || v24 >= 3))
          {
            if ((v14 >= 0x249F0 || v13 == 0) && v14 >= 0x15E)
            {
              v25 = 2;
            }

            else
            {
              v25 = 7;
            }
          }

          else
          {
            v25 = 4;
          }

          v14 = degas::NeighborQuery::neighborsWithPlan(a1, v25, &v34, v29, v28, this, a3, a4);
        }

LABEL_47:
        v37 = v35;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v37);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        goto LABEL_55;
      }

      v34 = 0u;
      memset(v35, 0, 25);
      v21 = degas::Predicate::nullPtr(v9);
      degas::Predicate::nullPtr(v21);
      v14 = degas::NeighborQuery::neighborsNodesFirst(a1, v22, degas::Predicate::nullPtr(void)::nullPtr, degas::Predicate::nullPtr(void)::nullPtr, this, a3, a4);
      v30 = v35;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
    }

    else
    {
      v14 = 0;
    }

LABEL_55:
    *&v34 = v36;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v34);
    return v14;
  }

  return degas::NeighborQuery::neighbors_instrumented(a1, this, a3, a4);
}

void sub_2558CBC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v27 - 88) = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v27 - 88));
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::pair<std::shared_ptr<degas::Predicate>,std::shared_ptr<degas::Predicate>>::~pair(&a13);
  a17 = &a25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::neighbors_instrumented(degas::Database **a1, degas::Bitmap *this, unsigned int a3, degas::Bitmap *a4)
{
  v89 = 0u;
  memset(v90, 0, 25);
  v6 = degas::Bitmap::count(this);
  if (!v6)
  {
    v11 = 0;
    goto LABEL_124;
  }

  if ((a1[2] & 1) == 0)
  {
    v87 = 0u;
    memset(v88, 0, 25);
    v19 = degas::Predicate::nullPtr(v6);
    degas::Predicate::nullPtr(v19);
    v11 = degas::NeighborQuery::neighborsNodesFirst(a1, v20, degas::Predicate::nullPtr(void)::nullPtr, degas::Predicate::nullPtr(void)::nullPtr, this, a3, a4);
    *&v79 = v88;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v79);
    goto LABEL_124;
  }

  (*(**a1 + 32))(&v83);
  v7 = v83;
  v8 = v84;
  v82[0] = v83;
  v82[1] = v84;
  if (v84)
  {
    atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v85;
  v9 = v86;
  v81[0] = v85;
  v81[1] = v86;
  if (v86)
  {
    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v71 = v9;
  v72 = v8;
  v87 = 0u;
  memset(v88, 0, 25);
  if (!v7)
  {
    v12 = degas::Database::edgeCount(a1[3]);
    goto LABEL_25;
  }

  v11 = (*(*v7 + 16))(v7, &v87);
  if (!v11)
  {
    v12 = v87;
    if (v87 == 0xFFFFFFFFLL)
    {
      v13 = v88[0];
      v14 = v88[1];
      if (v88[0] == v88[1])
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          v15 = *v13;
          v16 = *(*v13 + 4);
          if (v16 == -1)
          {
            v17 = 0;
            v18 = 0uLL;
            do
            {
              do
              {
                v18 = vpadalq_u16(v18, vpaddlq_u8(vcntq_s8(*(v15 + 16 + 4 * v17))));
                v17 += 4;
              }

              while (v17 != 32);
              v17 = 0;
              v16 = vaddvq_s32(v18);
              v18 = 0uLL;
            }

            while (v16 == -1);
            *(v15 + 4) = v16;
          }

          v12 += v16;
          v13 += 2;
        }

        while (v13 != v14);
      }

      *&v87 = v12;
    }

    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (v10 && ((*(*v10 + 56))(v10) & 1) != 0)
    {
LABEL_27:
      v11 = 0;
      goto LABEL_116;
    }

    v21 = degas::Bitmap::count(this);
    v22 = v12 / v21;
    if ((v21 < 0x33 || v22 >= 0xA) && (v12 > 0xE || v22 >= 3))
    {
      if ((v12 >= 0x249F0 || v10 == 0) && v12 >= 0x15E)
      {
        v23 = 2;
      }

      else
      {
        v23 = 7;
      }
    }

    else
    {
      v23 = 4;
    }

    v26 = 0;
    v79 = 0u;
    memset(v80, 0, 25);
    v27 = degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset;
    v28 = 0.0;
    v29 = 1;
    v30 = 1.0e10;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    do
    {
      v34 = v23;
      *v77 = 0u;
      memset(v78, 0, 25);
      v35 = v27 % 7;
      v36 = degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::planList[v27 % 7];
      Current = CFAbsoluteTimeGetCurrent();
      v11 = degas::NeighborQuery::neighborsWithPlan(a1, v36, &v87, v82, v81, this, a3, v77);
      if (v11)
      {
        __p[0] = v78;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
        goto LABEL_115;
      }

      v38 = CFAbsoluteTimeGetCurrent() - Current;
      if (v38 < v30)
      {
        v30 = v38;
        v26 = v36;
      }

      if (v29)
      {
        degas::Bitmap::operator=(&v79, v77);
        degas::Bitmap::operator=(a4, v77);
      }

      else if ((degas::Bitmap::operator==(v77, &v79) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "incorrect result for plan ");
        v39 = degas::Bitmap::count(this);
        v40 = v79;
        if (v79 == 0xFFFFFFFFLL)
        {
          v41 = v80[0];
          v42 = v80[1];
          if (v80[0] == v80[1])
          {
            v40 = 0;
          }

          else
          {
            v40 = 0;
            do
            {
              v43 = *v41;
              v44 = *(*v41 + 4);
              if (v44 == -1)
              {
                v45 = 0;
                v46 = 0uLL;
                do
                {
                  do
                  {
                    v46 = vpadalq_u16(v46, vpaddlq_u8(vcntq_s8(*(v43 + 16 + 4 * v45))));
                    v45 += 4;
                  }

                  while (v45 != 32);
                  v45 = 0;
                  v44 = vaddvq_s32(v46);
                  v46 = 0uLL;
                }

                while (v44 == -1);
                *(v43 + 4) = v44;
              }

              v40 += v44;
              v41 += 2;
            }

            while (v41 != v42);
          }

          *&v79 = v40;
        }

        v47 = v77[0];
        if (v77[0] == 0xFFFFFFFFLL)
        {
          v49 = *(&v78[0] + 1);
          v48 = *&v78[0];
          if (*&v78[0] == *(&v78[0] + 1))
          {
            v47 = 0;
          }

          else
          {
            v47 = 0;
            do
            {
              v50 = *v48;
              v51 = *(*v48 + 4);
              if (v51 == -1)
              {
                v52 = 0;
                v53 = 0uLL;
                do
                {
                  do
                  {
                    v53 = vpadalq_u16(v53, vpaddlq_u8(vcntq_s8(*(v50 + 16 + 4 * v52))));
                    v52 += 4;
                  }

                  while (v52 != 32);
                  v52 = 0;
                  v51 = vaddvq_s32(v53);
                  v53 = 0uLL;
                }

                while (v51 == -1);
                *(v50 + 4) = v51;
              }

              v47 += v51;
              v48 += 2;
            }

            while (v48 != v49);
          }

          v77[0] = v47;
        }

        degas::NeighborQuery::reportIncorrectPlanResult(a1, __p, v36, v39, v40, v47);
        if (v76 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v23 = v34;
      if (v36 == v34)
      {
        v33 = v38;
      }

      if (v35)
      {
        if (v35 == 6)
        {
          v32 = v38;
        }

        else if (v35 == 1)
        {
          v28 = v38;
        }
      }

      else
      {
        v31 = v38;
      }

      __p[0] = v78;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
      v29 = 0;
    }

    while (v27++ < degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset + 6);
    degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset = (degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset + 1) % 7u;
    if (v26 == v34)
    {
      v55 = 0;
      ++degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreWins;
    }

    else
    {
      ++degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreLosses;
      if (v33 - v30 < 0.0)
      {
        goto LABEL_114;
      }

      *&degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::totalTimeLost = v33 - v30 + *&degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::totalTimeLost;
      v56 = *a1;
      if (*a1)
      {
        *v77 = 0u;
        memset(v78, 0, 25);
        (*(*v56 + 16))(v56, v77);
        v55 = degas::Bitmap::count(v77);
        __p[0] = v78;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
      }

      else
      {
        v55 = degas::Database::edgeCount(a1[3]);
      }

      std::string::basic_string[abi:ne200100]<0>(v77, "Query");
      v57 = degas::Bitmap::count(this);
      v58 = degas::Bitmap::count(&v87);
      v59 = degas::Database::nodeCount(a1[3]);
      v60 = degas::Database::edgeCount(a1[3]);
      degas::NeighborQuery::reportTimingPlanFailure(a1, v77, v34, v26, v57, v58, v55, v59, v33, v30, *&degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::totalTimeLost, v60, degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreWins, degas::NeighborQuery::neighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreLosses);
      if (SBYTE7(v78[0]) < 0)
      {
        operator delete(v77[0]);
      }

      LODWORD(v23) = v34;
    }

    if (v23 == 7 || v23 == 2)
    {
      if (!v55)
      {
        v61 = *a1;
        if (*a1)
        {
          *v77 = 0u;
          memset(v78, 0, 25);
          (*(*v61 + 16))(v61, v77);
          v55 = degas::Bitmap::count(v77);
          __p[0] = v78;
          std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
        }

        else
        {
          v55 = degas::Database::edgeCount(a1[3]);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(v77, "node-first plans ");
      v62 = degas::Bitmap::count(this);
      v63 = v87;
      if (v87 == 0xFFFFFFFFLL)
      {
        v64 = v88[0];
        v65 = v88[1];
        if (v88[0] == v88[1])
        {
          v63 = 0;
        }

        else
        {
          v63 = 0;
          do
          {
            v66 = *v64;
            v67 = *(*v64 + 4);
            if (v67 == -1)
            {
              v68 = 0;
              v69 = 0uLL;
              do
              {
                do
                {
                  v69 = vpadalq_u16(v69, vpaddlq_u8(vcntq_s8(*(v66 + 16 + 4 * v68))));
                  v68 += 4;
                }

                while (v68 != 32);
                v68 = 0;
                v67 = vaddvq_s32(v69);
                v69 = 0uLL;
              }

              while (v67 == -1);
              *(v66 + 4) = v67;
            }

            v63 += v67;
            v64 += 2;
          }

          while (v64 != v65);
        }

        *&v87 = v63;
      }

      degas::NeighborQuery::reportNodeFirstPlanTimes(v31, v28, v32, v62, v77, v62, v63, v55);
      if (SBYTE7(v78[0]) < 0)
      {
        operator delete(v77[0]);
      }
    }

LABEL_114:
    v11 = 0;
LABEL_115:
    v77[0] = v80;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v77);
  }

LABEL_116:
  *&v79 = v88;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v79);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
  }

LABEL_124:
  *&v87 = v90;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v87);
  return v11;
}

void sub_2558CC5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  __p = a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&__p);
  a31 = &a47;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::pair<std::shared_ptr<degas::Predicate>,std::shared_ptr<degas::Predicate>>::~pair(&a41);
  a45 = v47 - 176;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::shared_ptr<degas::Predicate>,std::shared_ptr<degas::Predicate>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t degas::NeighborQuery::reportIncorrectPlanResult(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v37);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "\n\tedge predicate=", 17);
  if (*a1)
  {
    v15 = a1[3];
    (*(**a1 + 64))(&v34);
    v16 = HIBYTE(v36);
    v18 = v34;
    v17 = v35;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  if ((v16 & 0x80u) == 0)
  {
    v19 = &v34;
  }

  else
  {
    v19 = v18;
  }

  if ((v16 & 0x80u) == 0)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "\n\tplan=", 7);
  std::string::basic_string[abi:ne200100]<0>(__p, off_2797FDBD0[a3]);
  if ((v33 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v22 = v33;
  }

  else
  {
    v22 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, v21, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "\n\tstart node count=", 19);
  v23 = MEMORY[0x259C43DF0](&v37, a4);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n\tcorrect node count=", 21);
  v25 = MEMORY[0x259C43DF0](v24, a5);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n\tthis node count=", 18);
  v27 = MEMORY[0x259C43DF0](v26, a6);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v42);
  std::ostream::put();
  v29 = std::ostream::flush();
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  LogFile = degas::getLogFile(v29);
  std::stringbuf::str();
  degas::LocalLogFile::writeText(LogFile, &v34);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  v37 = *MEMORY[0x277D82828];
  *(&v37 + *(v37 - 24)) = *(MEMORY[0x277D82828] + 24);
  v38 = MEMORY[0x277D82878] + 16;
  if (v40 < 0)
  {
    operator delete(v39[7].__locale_);
  }

  v38 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v39);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v41);
}

uint64_t degas::NeighborQuery::reportTimingPlanFailure(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12, unsigned int a13, unsigned int a14)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = *a2;
  }

  if (v25 >= 0)
  {
    v27 = *(a2 + 23);
  }

  else
  {
    v27 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, v26, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, " plan time estimate beaten ", 27);
  v28 = MEMORY[0x259C43DB0](&v65, a10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "s with plan ", 12);
  std::string::basic_string[abi:ne200100]<0>(v63, off_2797FDBD0[a4]);
  if ((v64 & 0x80u) == 0)
  {
    v29 = v63;
  }

  else
  {
    v29 = v63[0];
  }

  if ((v64 & 0x80u) == 0)
  {
    v30 = v64;
  }

  else
  {
    v30 = v63[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\n\tbeat ", 7);
  v31 = MEMORY[0x259C43DB0](v28, a9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "s with chosen plan ", 19);
  std::string::basic_string[abi:ne200100]<0>(v61, off_2797FDBD0[a3]);
  if ((v62 & 0x80u) == 0)
  {
    v32 = v61;
  }

  else
  {
    v32 = v61[0];
  }

  if ((v62 & 0x80u) == 0)
  {
    v33 = v62;
  }

  else
  {
    v33 = v61[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "\n\tstart node count=", 19);
  v34 = MEMORY[0x259C43DF0](v31, a5);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n\ttotal node rows=", 18);
  v36 = MEMORY[0x259C43DF0](v35, a8);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "\n\tlabels edge count estimate=", 29);
  v38 = MEMORY[0x259C43DF0](v37, a6);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "\n\tfiltered edge count=", 22);
  v40 = MEMORY[0x259C43DF0](v39, a7);
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "\n\ttotal edge rows=", 18);
  v42 = MEMORY[0x259C43DF0](v41, a12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\n\tedge predicate=", 17);
  if (*a1)
  {
    v43 = a1[3];
    (*(**a1 + 64))(&__p);
    v44 = HIBYTE(v60);
    v46 = __p;
    v45 = v59;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v44 = 0;
    __p = 0;
    v59 = 0;
    v60 = 0;
  }

  if ((v44 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v46;
  }

  if ((v44 & 0x80u) == 0)
  {
    v48 = v44;
  }

  else
  {
    v48 = v45;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, p_p, v48);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "\n\twins=", 7);
  v49 = MEMORY[0x259C43DC0](v42, a13);
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ", losses=", 9);
  v51 = MEMORY[0x259C43DC0](v50, a14);
  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ", total time lost=", 18);
  v53 = MEMORY[0x259C43DB0](v52, a11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "s", 1);
  std::ios_base::getloc((v53 + *(*v53 - 24)));
  v54 = std::locale::use_facet(&v70, MEMORY[0x277D82680]);
  (v54->__vftable[2].~facet_0)(v54, 10);
  std::locale::~locale(&v70);
  std::ostream::put();
  v55 = std::ostream::flush();
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p);
  }

  if (v62 < 0)
  {
    operator delete(v61[0]);
  }

  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  LogFile = degas::getLogFile(v55);
  std::stringbuf::str();
  degas::LocalLogFile::writeText(LogFile, v63);
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  v65 = *MEMORY[0x277D82828];
  *(&v65 + *(v65 - 24)) = *(MEMORY[0x277D82828] + 24);
  v66 = MEMORY[0x277D82878] + 16;
  if (v68 < 0)
  {
    operator delete(v67[7].__locale_);
  }

  v66 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v67);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v69);
}

void sub_2558CCFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  std::ostringstream::~ostringstream(&a28);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::reportNodeFirstPlanTimes(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v35);
  v15 = *(a5 + 23);
  if (v15 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = *a5;
  }

  if (v15 >= 0)
  {
    v17 = *(a5 + 23);
  }

  else
  {
    v17 = *(a5 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "\n\tstart node count=", 19);
  v18 = MEMORY[0x259C43DF0](&v35, a6);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n\tlabels edge count estimate=", 29);
  v20 = MEMORY[0x259C43DF0](v19, a7);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\n\tfiltered edge count=", 22);
  v22 = MEMORY[0x259C43DF0](v21, a8);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "\n\tNF time=", 10);
  v24 = MEMORY[0x259C43DB0](v23, a1);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "s\n\tNT time=", 11);
  v26 = MEMORY[0x259C43DB0](v25, a2);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "s\n\tNEF time=", 12);
  v28 = MEMORY[0x259C43DB0](v27, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "s", 1);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  v30 = std::ostream::flush();
  LogFile = degas::getLogFile(v30);
  std::stringbuf::str();
  degas::LocalLogFile::writeText(LogFile, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v35 = *MEMORY[0x277D82828];
  *(&v35 + *(v35 - 24)) = *(MEMORY[0x277D82828] + 24);
  v36 = MEMORY[0x277D82878] + 16;
  if (v38 < 0)
  {
    operator delete(v37[7].__locale_);
  }

  v36 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v37);
  std::ostream::~ostream();
  return MEMORY[0x259C43E80](&v39);
}

void sub_2558CD314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 8));
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C43E30](a1 + 16);
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v8 = *(a1 + 95);
  if (v8 < 0)
  {
    v8 = *(a1 + 80);
  }

  *(a1 + 48) = v7;
  *(a1 + 56) = v7;
  *(a1 + 64) = v7 + v8;
  return a1;
}

void sub_2558CD524(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x259C43E80](v2);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C43D80](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C43D90](v20);
  return a1;
}

void sub_2558CD810(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x259C43D90](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2558CD7E4);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x259C43E80](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t degas::NeighborQuery::transitiveClosureNeighborsWithPlan(degas::NeighborQuery *a1, int a2, void *a3, void *a4, void *a5, uint64_t a6, unsigned int a7, void *a8)
{
  v32 = 0u;
  memset(v33, 0, 25);
  if ((a2 - 3) <= 0xFFFFFFFD && *a5)
  {
    (*(**a5 + 24))(*a5, a3, &v32);
  }

  else
  {
    degas::Bitmap::operator=(&v32, a3);
  }

  v22 = a8;
  v30 = 0u;
  memset(v31, 0, 25);
  v29._bitCount = *a6;
  memset(&v29._lastOffsetFoundAt, 0, 32);
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v29._bitSets, *(a6 + 16), *(a6 + 24), (*(a6 + 24) - *(a6 + 16)) >> 4);
  v14 = 0;
  v29._dirty = *(a6 + 40);
  while ((v14 & 1) == 0)
  {
    v27[0] = v30;
    memset(&v27[1], 0, 32);
    v15 = std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v27[2], *&v31[0], *(&v31[0] + 1), (*(&v31[0] + 1) - *&v31[0]) >> 4);
    v28 = BYTE8(v31[1]);
    v25 = 0u;
    memset(v26, 0, 25);
    if (a2 <= 3)
    {
      if (a2 <= 1)
      {
        if (a2 != 1)
        {
          if (!a2)
          {
            abort();
          }

LABEL_25:
          degas::Bitmap::unionWith<degas::Bitmap>(v27, &v25);
          if (degas::Bitmap::operator==(v27, &v30))
          {
            v20 = 1;
            v19 = v8;
            v14 = 1;
          }

          else
          {
            degas::Bitmap::operator=(&v30, v27);
            degas::Bitmap::diffWith<degas::Bitmap>(&v25, &v29);
            degas::Bitmap::operator=(&v29, &v25);
            v14 = 0;
            v20 = 1;
            v19 = v8;
          }

          goto LABEL_28;
        }

        FilterNode = degas::NeighborQuery::neighborsNodesFirst(a1, v16, a4, a5, &v29, a7, &v25);
      }

      else if (a2 == 2)
      {
        FilterNode = degas::NeighborQuery::neighborsNodeTableEdges(a1, &v32, a5, &v29, a7, &v25);
      }

      else
      {
        degas::Predicate::nullPtr(v15);
        FilterNode = degas::NeighborQuery::neighborsEdgesFirstJoinBoth(a1, &v32, &degas::Predicate::nullPtr(void)::nullPtr, &v29, a7, &v25);
      }
    }

    else if (a2 > 5)
    {
      if (a2 == 6)
      {
        degas::Predicate::nullPtr(v15);
        FilterNode = degas::NeighborQuery::neighborsEdgesFirstFilterNode(a1, &v32, &degas::Predicate::nullPtr(void)::nullPtr, &v29, a7, &v25);
      }

      else
      {
        if (a2 != 7)
        {
          goto LABEL_25;
        }

        FilterNode = degas::NeighborQuery::neighborsNodesEdgeFilter(a1, &v32, v17, a5, &v29, a7, &v25);
      }
    }

    else
    {
      degas::Predicate::nullPtr(v15);
      if (a2 == 4)
      {
        FilterNode = degas::NeighborQuery::neighborsEdgesFirstJoinEdge(a1, &v32, &degas::Predicate::nullPtr(void)::nullPtr, &v29, a7, &v25);
      }

      else
      {
        FilterNode = degas::NeighborQuery::neighborsEdgesFirstFilterEdge(a1, &v32, &degas::Predicate::nullPtr(void)::nullPtr, &v29, a7, &v25);
      }
    }

    v19 = FilterNode;
    if (!FilterNode)
    {
      goto LABEL_25;
    }

    v20 = 0;
    v14 = 0;
LABEL_28:
    v34 = v26;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v34);
    *&v25 = &v27[2];
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v25);
    v8 = v19;
    if ((v20 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  degas::Bitmap::operator=(v22, &v30);
  v19 = 0;
LABEL_31:
  v27[0] = &v29._bitSets.__begin_;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v27);
  v29._bitCount = v31;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v29);
  *&v30 = v33;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v30);
  return v19;
}

void sub_2558CDD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35)
{
  a21 = a12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a21);
  a27 = &a35;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a27);
  a33 = (v35 - 144);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

void degas::Bitmap::diffWith<degas::Bitmap>(degas::Bitmap *this, degas::Bitmap *a2)
{
  v2 = *(a2 + 3) - *(a2 + 2);
  if ((v2 >> 4) && *(this + 3) != *(this + 2))
  {
    v5 = 0;
    Offset = 0;
    v7 = (v2 >> 4);
    do
    {
      v8 = *(this + 2);
      v9 = (*(this + 3) - v8) >> 4;
      if (v9 <= v5)
      {
        break;
      }

      v10 = *(*(a2 + 2) + 16 * Offset);
      v11 = *(*(v8 + 16 * v5) + 8);
      v12 = *(v10 + 8);
      if (v11 >= v12)
      {
        if (v11 > v12)
        {
          Offset = degas::Bitmap::findOffset(a2, v11, Offset, v7);
        }

        else
        {
          degas::Bitmap::unshadowedBitSetAtIndex(this, v5, v24);
          v13 = 0;
          v14 = v24[0];
          v15 = v24[0] + 16;
          do
          {
            *(v15 + v13) &= ~*(v10 + 16 + v13);
            v13 += 4;
          }

          while (v13 != 128);
          v16 = 0;
          *(v14 + 4) = -1;
          v17 = 0uLL;
          do
          {
            do
            {
              v17 = vpadalq_u16(v17, vpaddlq_u8(vcntq_s8(*(v15 + 4 * v16))));
              v16 += 4;
            }

            while (v16 != 32);
            v16 = 0;
            v18 = vaddvq_s32(v17);
            v17 = 0uLL;
          }

          while (v18 == -1);
          *(v14 + 4) = v18;
          if (v18)
          {
            ++v5;
          }

          else
          {
            v19 = *(this + 3);
            v20 = (*(this + 2) + 16 * v5);
            if ((v20 + 16) != v19)
            {
              do
              {
                degas::BitsetPtr::releaseBitset(v20);
                v21 = *(v20 + 1);
                *v20 = v21;
                if (v21)
                {
                  ++*v21;
                }

                v22 = (v20 + 16);
                v23 = (v20 + 32);
                v20 = (v20 + 16);
              }

              while (v23 != v19);
              v19 = *(this + 3);
              v20 = v22;
            }

            for (; v19 != v20; v19 = (v19 - 16))
            {
              degas::BitsetPtr::releaseBitset((v19 - 16));
              *(v19 - 1) = 0;
            }

            *(this + 3) = v20;
          }

          ++Offset;
          *this = 0xFFFFFFFFLL;
          *(this + 40) = 1;
          degas::BitsetPtr::releaseBitset(v24);
        }
      }

      else
      {
        v5 = degas::Bitmap::findOffset(this, *(v10 + 8), v5, v9);
      }
    }

    while (Offset < v7);
  }
}

unint64_t degas::NeighborQuery::transitiveClosureNeighbors(degas::Database **a1, degas::Bitmap *this, unsigned int a3, void *a4)
{
  if (degas::sInstrumentTraversal != 1)
  {
    v34[2] = 0u;
    memset(v35, 0, 25);
    v9 = degas::Bitmap::count(this);
    if (v9)
    {
      if (a1[2])
      {
        (*(**a1 + 32))(&v29);
        v10 = v29;
        v11 = v30;
        v28[0] = v29;
        v28[1] = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = v31;
        v12 = v32;
        v27[0] = v31;
        v27[1] = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = 0u;
        memset(v34, 0, 25);
        if (v10)
        {
          v14 = (*(*v10 + 2))(v10, &v33);
          if (v14)
          {
            goto LABEL_47;
          }

          v14 = v33;
          if (v33 == 0xFFFFFFFFLL)
          {
            v16 = *(&v34[0] + 1);
            v15 = *&v34[0];
            if (*&v34[0] == *(&v34[0] + 1))
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

            *&v33 = v14;
          }

          if (!v14)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v14 = degas::Database::edgeCount(a1[3]);
        }

        if (v13 && ((*(*v13 + 56))(v13) & 1) != 0)
        {
          v14 = 0;
        }

        else
        {
          v22 = degas::Bitmap::count(this);
          v23 = v14 / v22;
          if ((v22 < 0x33 || v23 >= 0xA) && (v14 > 0xE || v23 >= 3))
          {
            if ((v14 >= 0x249F0 || v13 == 0) && v14 >= 0x15E)
            {
              v24 = 2;
            }

            else
            {
              v24 = 7;
            }
          }

          else
          {
            v24 = 4;
          }

          v14 = degas::NeighborQuery::transitiveClosureNeighborsWithPlan(a1, v24, &v33, v28, v27, this, a3, a4);
        }

LABEL_47:
        v36 = v34;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v36);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        goto LABEL_55;
      }

      v33 = 0u;
      memset(v34, 0, 25);
      v21 = degas::Predicate::nullPtr(v9);
      degas::Predicate::nullPtr(v21);
      v14 = degas::NeighborQuery::transitiveClosureNeighborsWithPlan(a1, 1, &v33, degas::Predicate::nullPtr(void)::nullPtr, degas::Predicate::nullPtr(void)::nullPtr, this, a3, a4);
      v29 = v34;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v29);
    }

    else
    {
      v14 = 0;
    }

LABEL_55:
    *&v33 = v35;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v33);
    return v14;
  }

  return degas::NeighborQuery::transitiveClosureNeighbors_instrumented(a1, this, a3, a4);
}

void sub_2558CE374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v27 - 88) = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v27 - 88));
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::pair<std::shared_ptr<degas::Predicate>,std::shared_ptr<degas::Predicate>>::~pair(&a13);
  a17 = &a25;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::NeighborQuery *a1, degas::Bitmap *this, unsigned int a3, void *a4)
{
  v57[2] = 0u;
  memset(v58, 0, 25);
  v7 = degas::Bitmap::count(this);
  if (!v7)
  {
    v12 = 0;
    goto LABEL_69;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    v56 = 0u;
    memset(v57, 0, 25);
    v20 = degas::Predicate::nullPtr(v7);
    degas::Predicate::nullPtr(v20);
    v12 = degas::NeighborQuery::transitiveClosureNeighborsWithPlan(a1, 1, &v56, degas::Predicate::nullPtr(void)::nullPtr, degas::Predicate::nullPtr(void)::nullPtr, this, a3, a4);
    *&v48 = v57;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v48);
    goto LABEL_69;
  }

  (*(**a1 + 32))(&v52);
  v8 = v52;
  v9 = v53;
  v51[0] = v52;
  v51[1] = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v54;
  v10 = v55;
  v50[0] = v54;
  v50[1] = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v42 = v10;
  v43 = v9;
  v56 = 0u;
  memset(v57, 0, 25);
  if (!v8)
  {
    v13 = degas::Database::edgeCount(*(a1 + 3));
    goto LABEL_25;
  }

  v12 = (*(*v8 + 16))(v8, &v56);
  if (!v12)
  {
    v13 = v56;
    if (v56 == 0xFFFFFFFFLL)
    {
      v15 = *(&v57[0] + 1);
      v14 = *&v57[0];
      if (*&v57[0] == *(&v57[0] + 1))
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

      *&v56 = v13;
    }

    if (!v13)
    {
LABEL_27:
      v12 = 0;
      goto LABEL_61;
    }

LABEL_25:
    if (!v11 || ((*(*v11 + 56))(v11) & 1) == 0)
    {
      v21 = degas::Bitmap::count(this);
      v22 = v13 / v21;
      if ((v21 < 0x33 || v22 >= 0xA) && (v13 > 0xE || v22 >= 3))
      {
        if ((v13 >= 0x249F0 || v11 == 0) && v13 >= 0x15E)
        {
          v23 = 2;
        }

        else
        {
          v23 = 7;
        }
      }

      else
      {
        v23 = 4;
      }

      v44 = v23;
      v26 = 0;
      v48 = 0u;
      memset(v49, 0, 25);
      v27 = degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset;
      v28 = 1;
      v29 = 0.0;
      v30 = 1.0e10;
      while (1)
      {
        v31 = degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::planList[v27 % 7];
        Current = CFAbsoluteTimeGetCurrent();
        v12 = degas::NeighborQuery::transitiveClosureNeighborsWithPlan(a1, v31, &v56, v51, v50, this, a3, a4);
        if (v12)
        {
          break;
        }

        v33 = CFAbsoluteTimeGetCurrent();
        if (v28)
        {
          degas::Bitmap::operator=(&v48, a4);
        }

        v28 = 0;
        if (v33 - Current < v30)
        {
          v30 = v33 - Current;
          v26 = v31;
        }

        if (v31 == v44)
        {
          v29 = v33 - Current;
        }

        if (v27++ >= degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset + 6)
        {
          degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset = (degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::offset + 1) % 7u;
          if (v26 == v44)
          {
            v12 = 0;
            ++degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreWins;
          }

          else
          {
            ++degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreLosses;
            if (v29 - v30 >= 0.0)
            {
              *&degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::totalTimeLost = v29 - v30 + *&degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::totalTimeLost;
              v35 = *a1;
              if (*a1)
              {
                *__p = 0u;
                memset(v47, 0, 25);
                (*(*v35 + 16))(v35, __p);
                v36 = degas::Bitmap::count(__p);
                v59 = v47;
                std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v59);
              }

              else
              {
                v36 = degas::Database::edgeCount(*(a1 + 3));
              }

              std::string::basic_string[abi:ne200100]<0>(__p, "Transitive closure query");
              v37 = degas::Bitmap::count(this);
              v38 = degas::Bitmap::count(&v56);
              v39 = degas::Database::nodeCount(*(a1 + 3));
              v40 = degas::Database::edgeCount(*(a1 + 3));
              degas::NeighborQuery::reportTimingPlanFailure(a1, __p, v44, v26, v37, v38, v36, v39, v29, v30, *&degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::totalTimeLost, v40, degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreWins, degas::NeighborQuery::transitiveClosureNeighbors_instrumented(degas::Bitmap const&,degas::EdgeDirection,degas::Bitmap&)::scoreLosses);
              if ((v47[7] & 0x80000000) != 0)
              {
                operator delete(__p[0]);
              }
            }

            v12 = 0;
          }

          break;
        }
      }

      __p[0] = v49;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_61;
    }

    goto LABEL_27;
  }

LABEL_61:
  *&v48 = v57;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

LABEL_69:
  *&v56 = v58;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v56);
  return v12;
}

void sub_2558CE984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  __p = &a26;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&__p);
  a24 = &a40;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::pair<std::shared_ptr<degas::Predicate>,std::shared_ptr<degas::Predicate>>::~pair(&a34);
  a38 = v40 - 176;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

id KGLoggingConnection()
{
  if (KGLoggingConnection_onceToken != -1)
  {
    dispatch_once(&KGLoggingConnection_onceToken, &__block_literal_global_572);
  }

  v1 = KGLoggingConnection_log;

  return v1;
}

uint64_t __KGLoggingConnection_block_invoke()
{
  KGLoggingConnection_log = os_log_create("com.apple.photos.graph", "KnowledgeGraph");

  return MEMORY[0x2821F96F8]();
}

id KGFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id KGAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = KGFullMethodName(v3, a2);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

id KGMethodNotImplentedException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = KGFullMethodName(v3, a2);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:  method not implemented sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

void CheckInTransaction(int a1, uint64_t a2)
{
  if (a2 <= 0 && a1)
  {
    v6 = v2;
    v7 = v3;
    v4 = KGLoggingConnection();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_255870000, v4, OS_LOG_TYPE_FAULT, "accessing database outside of a transaction", v5, 2u);
    }
  }
}

void sub_2558D2CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__714(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2558D3320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2558D36D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

std::string *degas::BitmapTable::BitmapTable(std::string *this, __int128 *a2, std::string::size_type a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  return this;
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

void degas::BitmapTable::~BitmapTable(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t degas::BitmapTable::createTable(degas::BitmapTable *this)
{
  v2 = *(this + 3);
  v3 = this;
  if (*(this + 23) < 0)
  {
    v3 = *this;
  }

  module = sqlite3_create_module(v2, v3, &degas::module, this);
  if (module == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (module == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (module == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!module)
  {
    v7 = 0;
  }

  if (module <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t degas::bitmapTableColumnValue(void **this, sqlite3_vtab_cursor *a2, sqlite3_context *a3)
{
  if (a3 == 1)
  {
    sqlite3_result_pointer(a2, this[4], degas::kBitmapPointerTypeName, 0);
    return 0;
  }

  if (!a3)
  {
    v3 = this[4];
    v4 = this[2];
    if (this[1] != v3 || v4 != -1)
    {
      goto LABEL_10;
    }

    if (this[3] != v3[3])
    {
      v4 = -1;
LABEL_10:
      sqlite3_result_int64(a2, v4);
    }
  }

  return 0;
}

uint64_t degas::bitmapTableNext(degas *this, sqlite3_vtab_cursor *a2)
{
  degas::Bitmap::iterator::operator++(this + 1);
  ++*(this + 5);
  return 0;
}

uint64_t degas::bitmapTableFilter(degas *this, sqlite3_vtab_cursor *a2, int a3, const char *a4, sqlite3_value **a5, sqlite3_value **a6)
{
  if (a4 >= 1)
  {
    v7 = sqlite3_value_pointer(*a5, degas::kBitmapPointerTypeName);
    *(this + 4) = v7;
    degas::Bitmap::begin(v7, &v9);
    *(this + 1) = v9;
    *(this + 1) = v10;
  }

  *(this + 5) = 0;
  return 0;
}

uint64_t degas::bitmapTableOpenCursor(degas *this, sqlite3_vtab *a2, sqlite3_vtab_cursor **a3)
{
  v4 = sqlite3_malloc(56);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  result = 0;
  v5->xDisconnect = 0;
  v5->xDestroy = 0;
  a2->pModule = v5;
  return result;
}

uint64_t degas::bitmapTableBestIndex(degas *this, sqlite3_vtab *a2, sqlite3_index_info *a3)
{
  pModule_low = LODWORD(a2->pModule);
  if (pModule_low >= 1)
  {
    v4 = 0;
    v5 = *&a2->nRef;
    v6 = 8 * pModule_low;
    while (1)
    {
      v8 = *v5;
      v5 += 3;
      v7 = v8;
      if (v8 == 1)
      {
        break;
      }

      if (!v7)
      {
        v9 = 0;
LABEL_7:
        v10 = *&a2[1].nRef + v4;
        *v10 = v7;
        *(v10 + 4) = v9;
      }

      v4 += 8;
      if (v6 == v4)
      {
        goto LABEL_9;
      }
    }

    v9 = 1;
    goto LABEL_7;
  }

LABEL_9:
  a2[2].zErrMsg = 0x3FB999999999999ALL;
  return 0;
}

uint64_t degas::bitmapTableConnect(degas *this, sqlite3 *a2, void *a3, int a4, const char **a5, sqlite3_vtab **a6, char **a7)
{
  v9 = sqlite3_malloc64(0x18uLL);
  v10 = v9;
  if (v9)
  {
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    result = sqlite3_declare_vtab(this, "create table x (value integer primary key, bitmapPtr hidden)");
  }

  else
  {
    result = 7;
  }

  *a5 = v10;
  return result;
}

void sub_2558D51D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__832(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2558D6B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id kg_errorWithCode(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ((a1 - 5000) > 0xD)
  {
    v2 = @"not an error";
  }

  else
  {
    v2 = off_2797FDDF0[a1 - 5000];
  }

  v7 = *MEMORY[0x277CCA450];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.photos.kgerror" code:a1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t elementMatchesDefinition(void *a1, void *a2)
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

id PropertiesVisualStringForKeys(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v20 = [MEMORY[0x277CCAB68] string];
  [v20 appendString:@"{"];
  v19 = v3;
  v5 = [v3 allObjects];
  v6 = v5;
  if (!v5)
  {
    v6 = [v4 allKeys];
  }

  v7 = [v6 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  if (!v5)
  {
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v4 objectForKeyedSubscript:v13];
        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              [v14 stringValue];
            }

            else
            {
              [v14 description];
            }
            v15 = ;
          }

          v16 = v15;
          if ([v15 length])
          {
            [v20 appendFormat:@"%@:'%@'; ", v13, v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v20 length] >= 2)
  {
    [v20 deleteCharactersInRange:{objc_msgSend(v20, "length") - 2, 2}];
  }

  [v20 appendString:@"}"];

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

KGMutableElementIdentifierSet *KGElementIdentifierSetWithSet(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(KGMutableElementIdentifierSet);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[KGMutableElementIdentifierSet addIdentifier:](v2, "addIdentifier:", [*(*(&v10 + 1) + 8 * i) identifier]);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

KGMutableElementIdentifierSet *KGElementIdentifierSetWithArray(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(KGMutableElementIdentifierSet);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[KGMutableElementIdentifierSet addIdentifier:](v2, "addIdentifier:", [*(*(&v10 + 1) + 8 * i) identifier]);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

void degas::SortAttributeValueTable::~SortAttributeValueTable(degas::SortAttributeValueTable *this)
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

void *degas::SortAttributeValueTable::SortAttributeValueTable(void *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5)
{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A8B90;
  *(result + 48) = a4;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A8B90;
  *(result + 48) = a4;
  return result;
}

degas::Statement **degas::SortAttributeValueTable::readByIntAttrStatement(degas::SortAttributeValueTable *this, int a2, int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 16;
  }

  v4 = *(this + 48);
  v5 = *(this + 5);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5degas23SortAttributeValueTable22readByIntAttrStatementEbb_block_invoke;
  v7[3] = &__block_descriptor_tmp;
  v7[4] = this;
  v8 = a2;
  v9 = a3;
  return degas::StatementCache::getStatement(v5, v3 | a2 ^ 1 | (v4 << 16) | 0x900u, v7);
}

void ___ZNK5degas23SortAttributeValueTable22readByIntAttrStatementEbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select elementId, intValue from ", 32);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where attributeId = ?1 order by intValue", 41);
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " desc", 5);
  }

  if (*(a1 + 41) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " limit ?2", 9);
  }

  operator new();
}

void sub_2558D8C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void std::shared_ptr<degas::Statement>::shared_ptr[abi:ne200100]<degas::Statement,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2558D8D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<degas::Statement>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

degas::Statement **std::unique_ptr<degas::Statement>::~unique_ptr[abi:ne200100](degas::Statement **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    degas::Statement::~Statement(v2);
    MEMORY[0x259C43EB0]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<degas::Statement *,std::shared_ptr<degas::Statement>::__shared_ptr_default_delete<degas::Statement,degas::Statement>,std::allocator<degas::Statement>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255973DECLL))
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
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

degas::Statement *std::__shared_ptr_pointer<degas::Statement *,std::shared_ptr<degas::Statement>::__shared_ptr_default_delete<degas::Statement,degas::Statement>,std::allocator<degas::Statement>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    degas::Statement::~Statement(result);

    JUMPOUT(0x259C43EB0);
  }

  return result;
}

void std::__shared_ptr_pointer<degas::Statement *,std::shared_ptr<degas::Statement>::__shared_ptr_default_delete<degas::Statement,degas::Statement>,std::allocator<degas::Statement>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

degas::Statement **degas::SortAttributeValueTable::readByRealAttrStatement(degas::SortAttributeValueTable *this, int a2, int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 16;
  }

  v4 = *(this + 48);
  v5 = *(this + 5);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5degas23SortAttributeValueTable23readByRealAttrStatementEbb_block_invoke;
  v7[3] = &__block_descriptor_tmp_7;
  v7[4] = this;
  v8 = a2;
  v9 = a3;
  return degas::StatementCache::getStatement(v5, v3 | a2 ^ 1 | (v4 << 16) | 0xA00u, v7);
}

void ___ZNK5degas23SortAttributeValueTable23readByRealAttrStatementEbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select elementId, realValue from ", 33);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where attributeId = ?1 order by realValue", 42);
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " desc", 5);
  }

  if (*(a1 + 41) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " limit ?2", 9);
  }

  operator new();
}

void sub_2558D91A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::SortAttributeValueTable::readByStringAttrStatement(degas::SortAttributeValueTable *this, int a2, int a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 16;
  }

  v4 = *(this + 48);
  v5 = *(this + 5);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5degas23SortAttributeValueTable25readByStringAttrStatementEbb_block_invoke;
  v7[3] = &__block_descriptor_tmp_10;
  v7[4] = this;
  v8 = a2;
  v9 = a3;
  return degas::StatementCache::getStatement(v5, v3 | a2 ^ 1 | (v4 << 16) | 0xB00u, v7);
}

void ___ZNK5degas23SortAttributeValueTable25readByStringAttrStatementEbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select elementId, stringValue from ", 35);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where attributeId = ?1 order by stringValue", 44);
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " desc", 5);
  }

  if (*(a1 + 41) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " limit ?2", 9);
  }

  operator new();
}

void sub_2558D94CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::SortAttributeValueTable::readByIntAttrIdentifiersStatement(degas::SortAttributeValueTable *this, int a2, int a3)
{
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 33;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16;
  }

  v5 = v4 | v3;
  v6 = *(this + 48);
  v7 = *(this + 5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5degas23SortAttributeValueTable33readByIntAttrIdentifiersStatementEbb_block_invoke;
  v9[3] = &__block_descriptor_tmp_14;
  v9[4] = this;
  v10 = a2;
  v11 = a3;
  return degas::StatementCache::getStatement(v7, v5 | (v6 << 16) | 0x900u, v9);
}

void ___ZNK5degas23SortAttributeValueTable33readByIntAttrIdentifiersStatementEbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select v.elementId, v.intValue from ", 36);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " v, identifierBitmap(?1) b where v.elementId = b.value and v.attributeId=?2 order by v.intValue", 95);
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " desc", 5);
  }

  if (*(a1 + 41) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " limit ?3", 9);
  }

  operator new();
}

void sub_2558D97FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::SortAttributeValueTable::readByRealAttrIdentifiersStatement(degas::SortAttributeValueTable *this, int a2, int a3)
{
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 33;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16;
  }

  v5 = v4 | v3;
  v6 = *(this + 48);
  v7 = *(this + 5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5degas23SortAttributeValueTable34readByRealAttrIdentifiersStatementEbb_block_invoke;
  v9[3] = &__block_descriptor_tmp_17;
  v9[4] = this;
  v10 = a2;
  v11 = a3;
  return degas::StatementCache::getStatement(v7, v5 | (v6 << 16) | 0xA00u, v9);
}

void ___ZNK5degas23SortAttributeValueTable34readByRealAttrIdentifiersStatementEbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select v.elementId, v.realValue from ", 37);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " v, identifierBitmap(?1) b where v.elementId = b.value and v.attributeId=?2 order by v.realValue", 96);
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " desc", 5);
  }

  if (*(a1 + 41) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " limit ?3", 9);
  }

  operator new();
}

void sub_2558D9B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::SortAttributeValueTable::readByStringAttrIdentifiersStatement(degas::SortAttributeValueTable *this, int a2, int a3)
{
  if (a2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 33;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16;
  }

  v5 = v4 | v3;
  v6 = *(this + 48);
  v7 = *(this + 5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5degas23SortAttributeValueTable36readByStringAttrIdentifiersStatementEbb_block_invoke;
  v9[3] = &__block_descriptor_tmp_20;
  v9[4] = this;
  v10 = a2;
  v11 = a3;
  return degas::StatementCache::getStatement(v7, v5 | (v6 << 16) | 0xB00u, v9);
}

void ___ZNK5degas23SortAttributeValueTable36readByStringAttrIdentifiersStatementEbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select v.elementId, v.stringValue from ", 39);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " v, identifierBitmap(?1) b where v.elementId = b.value and v.attributeId=?2 order by v.stringValue", 98);
  if ((*(a1 + 40) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " desc", 5);
  }

  if (*(a1 + 41) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " limit ?3", 9);
  }

  operator new();
}

void sub_2558D9E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

sqlite3_stmt ***degas::SortAttributeValueTable::prepareStatementToReadByIntAttr(degas::SortAttributeValueTable *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4)
{
  v6 = degas::SortAttributeValueTable::readByIntAttrStatement(this, a3, a4 >= 0);
  degas::Statement::bindInteger(*v6, 1, a2);
  if ((a4 & 0x8000000000000000) == 0)
  {
    degas::Statement::bindInteger(*v6, 2, a4);
  }

  return v6;
}

sqlite3_stmt ***degas::SortAttributeValueTable::prepareStatementToReadByRealAttr(degas::SortAttributeValueTable *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4)
{
  v6 = degas::SortAttributeValueTable::readByRealAttrStatement(this, a3, a4 >= 0);
  degas::Statement::bindInteger(*v6, 1, a2);
  if ((a4 & 0x8000000000000000) == 0)
  {
    degas::Statement::bindInteger(*v6, 2, a4);
  }

  return v6;
}

sqlite3_stmt ***degas::SortAttributeValueTable::prepareStatementToReadByStringAttr(degas::SortAttributeValueTable *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4)
{
  v6 = degas::SortAttributeValueTable::readByStringAttrStatement(this, a3, a4 >= 0);
  degas::Statement::bindInteger(*v6, 1, a2);
  if ((a4 & 0x8000000000000000) == 0)
  {
    degas::Statement::bindInteger(*v6, 2, a4);
  }

  return v6;
}

sqlite3_stmt ***degas::SortAttributeValueTable::prepareStatementToReadByIntAttrIdentifiers(degas::SortAttributeValueTable *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5)
{
  v8 = degas::SortAttributeValueTable::readByIntAttrIdentifiersStatement(this, a3, a4 >= 0);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  if ((a4 & 0x8000000000000000) == 0)
  {
    degas::Statement::bindInteger(*v8, 3, a4);
  }

  return v8;
}

sqlite3_stmt ***degas::SortAttributeValueTable::prepareStatementToReadByRealAttrIdentifiers(degas::SortAttributeValueTable *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5)
{
  v8 = degas::SortAttributeValueTable::readByRealAttrIdentifiersStatement(this, a3, a4 >= 0);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  if ((a4 & 0x8000000000000000) == 0)
  {
    degas::Statement::bindInteger(*v8, 3, a4);
  }

  return v8;
}

sqlite3_stmt ***degas::SortAttributeValueTable::prepareStatementToReadByStringAttrIdentifiers(degas::SortAttributeValueTable *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4, Bitmap *a5)
{
  v8 = degas::SortAttributeValueTable::readByStringAttrIdentifiersStatement(this, a3, a4 >= 0);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  if ((a4 & 0x8000000000000000) == 0)
  {
    degas::Statement::bindInteger(*v8, 3, a4);
  }

  return v8;
}

void *degas::SortAttributeValueCursor::SortAttributeValueCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void degas::SortAttributeValueCursor::setForIntAttr(degas::SortAttributeValueCursor *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4, const degas::SortAttributeValueTable *a5)
{
  v6 = degas::SortAttributeValueTable::prepareStatementToReadByIntAttr(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = *(this + 1);
  *this = v8;
  *(this + 1) = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::SortAttributeValueCursor::setForRealAttr(degas::SortAttributeValueCursor *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4, const degas::SortAttributeValueTable *a5)
{
  v6 = degas::SortAttributeValueTable::prepareStatementToReadByRealAttr(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = *(this + 1);
  *this = v8;
  *(this + 1) = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::SortAttributeValueCursor::setForStringAttr(degas::SortAttributeValueCursor *this, sqlite3_int64 a2, int a3, sqlite3_int64 a4, const degas::SortAttributeValueTable *a5)
{
  v6 = degas::SortAttributeValueTable::prepareStatementToReadByStringAttr(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = *(this + 1);
  *this = v8;
  *(this + 1) = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::SortAttributeValueCursor::setForIntAttrIdentifiers(degas::SortAttributeValueCursor *this, sqlite3_int64 a2, Bitmap *a3, int a4, sqlite3_int64 a5, const degas::SortAttributeValueTable *a6)
{
  v7 = degas::SortAttributeValueTable::prepareStatementToReadByIntAttrIdentifiers(a6, a2, a4, a5, a3);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 1);
  *this = v9;
  *(this + 1) = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::SortAttributeValueCursor::setForRealAttrIdentifiers(degas::SortAttributeValueCursor *this, sqlite3_int64 a2, Bitmap *a3, int a4, sqlite3_int64 a5, const degas::SortAttributeValueTable *a6)
{
  v7 = degas::SortAttributeValueTable::prepareStatementToReadByRealAttrIdentifiers(a6, a2, a4, a5, a3);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 1);
  *this = v9;
  *(this + 1) = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::SortAttributeValueCursor::setForStringAttrIdentifiers(degas::SortAttributeValueCursor *this, sqlite3_int64 a2, Bitmap *a3, int a4, sqlite3_int64 a5, const degas::SortAttributeValueTable *a6)
{
  v7 = degas::SortAttributeValueTable::prepareStatementToReadByStringAttrIdentifiers(a6, a2, a4, a5, a3);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 1);
  *this = v9;
  *(this + 1) = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

uint64_t degas::TernaryOperatorDescription(int a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "?", 1);
        goto LABEL_62;
      }

      if (a1 != 1)
      {
        goto LABEL_62;
      }

      v22 = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
      v7 = *(a2 + 23);
      if (v7 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v7 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      goto LABEL_48;
    }

    if (a1 == 2)
    {
      v22 = 40;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
      v12 = *(a2 + 23);
      if (v12 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v12 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      goto LABEL_48;
    }

    v22 = 91;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v10 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }
  }

  else
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "![", 2);
          v15 = *(a2 + 23);
          if (v15 >= 0)
          {
            v5 = a2;
          }

          else
          {
            v5 = *a2;
          }

          if (v15 >= 0)
          {
            v6 = *(a2 + 23);
          }

          else
          {
            v6 = *(a2 + 8);
          }
        }

        else
        {
          if (a1 != 8)
          {
            goto LABEL_62;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "!(", 2);
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
            v6 = *(a2 + 8);
          }
        }

        goto LABEL_61;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "!(", 2);
      v13 = *(a2 + 23);
      if (v13 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v13 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

LABEL_48:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v8, v9);
      v22 = 93;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
      goto LABEL_62;
    }

    if (a1 != 4)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "![", 2);
      v11 = *(a2 + 23);
      if (v11 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      if (v11 >= 0)
      {
        v9 = *(a2 + 23);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      goto LABEL_48;
    }

    v22 = 40;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v14 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }
  }

LABEL_61:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v5, v6);
  v22 = 41;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, &v22, 1);
LABEL_62:
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

void sub_2558DA8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ostringstream::~ostringstream(&a9);
  MEMORY[0x259C43E80](&a23);
  _Unwind_Resume(a1);
}

std::string *degas::ArrayTable::ArrayTable(std::string *this, __int128 *a2, std::string::size_type a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  return this;
}

void degas::ArrayTable::~ArrayTable(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t degas::ArrayTable::createTable(degas::ArrayTable *this)
{
  v2 = *(this + 3);
  v3 = this;
  if (*(this + 23) < 0)
  {
    v3 = *this;
  }

  module = sqlite3_create_module(v2, v3, &degas::arrayModule, this);
  if (module == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (module == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (module == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!module)
  {
    v7 = 0;
  }

  if (module <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t degas::arrayColumn(degas *this, sqlite3_vtab_cursor *a2, sqlite3_context *a3)
{
  if (a3 != 1)
  {
    if (a3 == 3)
    {
      v4 = degas::azType[*(this + 32)];
      v5 = a2;
      v6 = v4;
      v7 = 0;
    }

    else
    {
      if (a3 == 2)
      {
        v3 = *(this + 3);
        goto LABEL_5;
      }

      v3 = 0;
      v9 = *(this + 32);
      if (v9 <= 1)
      {
        if (!*(this + 32))
        {
          sqlite3_result_int(a2, *(*(this + 2) + 4 * *(this + 1) - 4));
          return 0;
        }

        if (v9 == 1)
        {
          v3 = *(*(this + 2) + 8 * *(this + 1) - 8);
        }

        goto LABEL_5;
      }

      if (v9 == 2)
      {
        sqlite3_result_double(a2, *(*(this + 2) + 8 * *(this + 1) - 8));
        return 0;
      }

      if (v9 != 3)
      {
LABEL_5:
        sqlite3_result_int64(a2, v3);
        return 0;
      }

      v10 = *(*(this + 2) + 8 * *(this + 1) - 8);
      v5 = a2;
      v6 = v10;
      v7 = -1;
    }

    sqlite3_result_text(v5, v6, -1, v7);
  }

  return 0;
}

uint64_t degas::arrayFilter(degas *this, sqlite3_vtab_cursor *a2, int a3, const char *a4, sqlite3_value **a5, sqlite3_value **a6)
{
  if (a2)
  {
    v8 = a2;
    v9 = sqlite3_value_pointer(*a5, degas::kArrayPointerTypeName);
    *(this + 2) = v9;
    if (v9)
    {
      v9 = sqlite3_value_int64(a5[1]);
    }

    *(this + 3) = v9;
    if (v8 > 2)
    {
      v10 = sqlite3_value_text(a5[2]);
      v11 = 0;
      while (sqlite3_stricmp(v10, degas::azType[v11]))
      {
        if (++v11 == 4)
        {
          *(*this + 16) = sqlite3_mprintf("unknown datatype: %Q", v10);
          return 1;
        }
      }

      *(this + 32) = v11;
    }

    else
    {
      *(this + 32) = 0;
    }
  }

  else
  {
    *(this + 2) = 0;
    *(this + 3) = 0;
  }

  result = 0;
  *(this + 1) = 1;
  return result;
}

uint64_t degas::arrayOpen(degas *this, sqlite3_vtab *a2, sqlite3_vtab_cursor **a3)
{
  v4 = sqlite3_malloc(40);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  result = 0;
  v5[4] = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  a2->pModule = v5;
  return result;
}

uint64_t degas::arrayBestIndex(degas *this, sqlite3_vtab *a2, sqlite3_index_info *a3)
{
  pModule_low = LODWORD(a2->pModule);
  if (pModule_low < 1)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = (*&a2->nRef + 5);
  v6 = -1;
  v7 = -1;
  v8 = -1;
  do
  {
    if (*v5 && *(v5 - 1) == 2)
    {
      v9 = *(v5 - 5);
      if (v9 == 1)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      if (v9 == 2)
      {
        v10 = v8;
        v11 = v4;
      }

      else
      {
        v11 = v7;
      }

      if (v9 == 3)
      {
        v6 = v4;
      }

      else
      {
        v8 = v10;
        v7 = v11;
      }
    }

    ++v4;
    v5 += 12;
  }

  while (pModule_low != v4);
  if ((v8 & 0x80000000) != 0 || (v7 & 0x80000000) != 0)
  {
LABEL_19:
    a2[2].zErrMsg = 0x41DFFFFFFFC00000;
    a2[3].pModule = 0x7FFFFFFF;
    LODWORD(a2[1].zErrMsg) = 0;
  }

  else
  {
    v12 = *&a2[1].nRef;
    v13 = v12 + 8 * v8;
    *v13 = 1;
    *(v13 + 4) = 1;
    v14 = v12 + 8 * v7;
    *v14 = 2;
    *(v14 + 4) = 1;
    a2[2].zErrMsg = 0x3FF0000000000000;
    a2[3].pModule = 100;
    LODWORD(a2[1].zErrMsg) = 2;
    if ((v6 & 0x80000000) == 0)
    {
      v15 = v12 + 8 * v6;
      *v15 = 3;
      *(v15 + 4) = 1;
      LODWORD(a2[1].zErrMsg) = 3;
    }
  }

  return 0;
}

uint64_t degas::arrayConnect(degas *this, sqlite3 *a2, void *a3, int a4, const char **a5, sqlite3_vtab **a6, char **a7)
{
  result = sqlite3_declare_vtab(this, "CREATE TABLE x(value,pointer hidden,count hidden,ctype hidden)");
  if (!result)
  {
    v9 = sqlite3_malloc(24);
    *a5 = v9;
    if (v9)
    {
      v10 = v9;
      result = 0;
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t degas::MetadataTable::deleteEntry(degas::MetadataTable *this, sqlite3_int64 a2)
{
  v3 = degas::MetadataTable::deleteStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  v4 = *v3;

  return degas::Statement::update(v4);
}

degas::Statement **degas::MetadataTable::deleteStatement(degas::MetadataTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas13MetadataTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::MetadataTable::createTable(degas::MetadataTable *this)
{
  v1 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "create table GraphMetadata (metadataKey integer primary key autoincrement, value text)");
  degas::Statement::Statement(ppStmt, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  return v2;
}

void degas::MetadataTable::~MetadataTable(degas::MetadataTable *this)
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

degas::MetadataTable *degas::MetadataTable::MetadataTable(degas::MetadataTable *this, sqlite3 *a2, degas::StatementCache *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "GraphMetadata");
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

  *this = &unk_2867A8BD8;
  *(this + 48) = 5;
  return this;
}

void sub_2558DBE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

degas::Statement **degas::MetadataTable::upsertStatement(degas::MetadataTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas13MetadataTable15upsertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_1163;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::MetadataTable::readByIdentifierStatement(degas::MetadataTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas13MetadataTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::MetadataTable::insertOrUpdate(degas::MetadataTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::MetadataTable::upsertStatement(this);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindInteger(*v5, 2, a3);
  v6 = *v5;

  return degas::Statement::update(v6);
}

uint64_t degas::MetadataTable::insertOrUpdate(degas::MetadataTable *this, sqlite3_int64 a2, double a3)
{
  v5 = degas::MetadataTable::upsertStatement(this);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindDouble(*v5, 2, a3);
  v6 = *v5;

  return degas::Statement::update(v6);
}

uint64_t degas::MetadataTable::insertOrUpdate(degas::MetadataTable *a1, sqlite3_int64 a2, uint64_t *a3)
{
  v5 = degas::MetadataTable::upsertStatement(a1);
  degas::Statement::bindInteger(*v5, 1, a2);
  degas::Statement::bindString(*v5, 2, a3);
  v6 = *v5;

  return degas::Statement::update(v6);
}

sqlite3_stmt ***degas::MetadataTable::prepareStatementToReadByIdentifier(degas::MetadataTable *this, sqlite3_int64 a2)
{
  v3 = degas::MetadataTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

degas::MetadataCursor *degas::MetadataCursor::MetadataCursor(degas::MetadataCursor *this, sqlite3_int64 a2, const degas::MetadataTable *a3)
{
  v5 = degas::MetadataTable::readByIdentifierStatement(a3);
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

void degas::LabelIndex::removeEdges(degas::LabelIndex *this, const Bitmap *a2, const Bitmap *a3)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "attempt to mutate immutable label index", v3, 2u);
  }
}

void degas::LabelIndex::removeNodes(degas::LabelIndex *this, const Bitmap *a2, const Bitmap *a3)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "attempt to mutate immutable label index", v3, 2u);
  }
}

void degas::LabelIndex::removeEdge(degas::LabelIndex *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "attempt to mutate immutable label index", v1, 2u);
  }
}

void degas::LabelIndex::addEdge(degas::LabelIndex *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "attempt to mutate immutable label index", v1, 2u);
  }
}

void degas::LabelIndex::removeNode(degas::LabelIndex *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "attempt to mutate immutable label index", v1, 2u);
  }
}

void degas::LabelIndex::addNode(degas::LabelIndex *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "attempt to mutate immutable label index", v1, 2u);
  }
}

void degas::LabelIndex_Immediate::removeEdges(const degas::LabelTable **this, Bitmap *a2, const degas::Bitmap *a3)
{
  degas::LabelCursor::LabelCursor(v24, a2, this[1]);
  while (degas::Statement::next(v24[0]) == 1)
  {
    v22 = 0u;
    memset(v23, 0, 25);
    v20 = 0u;
    memset(v21, 0, 25);
    v5 = sqlite3_column_int64(*v24[0], 0);
    degas::Statement::bitmapColumnValue(v24[0], 2, &v22);
    degas::Statement::bitmapColumnValue(v24[0], 3, &v20);
    v6 = v20;
    if (v20 == 0xFFFFFFFFLL)
    {
      v7 = v21[0];
      v8 = v21[1];
      if (v21[0] == v21[1])
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v9 = *v7;
          v10 = *(*v7 + 4);
          if (v10 == -1)
          {
            v11 = 0;
            v12 = 0uLL;
            do
            {
              do
              {
                v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(v9 + 16 + 4 * v11))));
                v11 += 4;
              }

              while (v11 != 32);
              v11 = 0;
              v10 = vaddvq_s32(v12);
              v12 = 0uLL;
            }

            while (v10 == -1);
            *(v9 + 4) = v10;
          }

          v6 += v10;
          v7 += 2;
        }

        while (v7 != v8);
      }

      *&v20 = v6;
    }

    degas::Bitmap::diffWith<degas::Bitmap>(&v20, a3);
    v13 = v20;
    if (v20 == 0xFFFFFFFFLL)
    {
      v14 = v21[0];
      v15 = v21[1];
      if (v21[0] == v21[1])
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

      *&v20 = v13;
    }

    if (v13 < v6)
    {
      degas::LabelTable::update(this[1], v5, &v22, &v20);
    }

    v25 = v21;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v25);
    *&v20 = v23;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  degas::Cursor::~Cursor(v24);
}

void degas::LabelIndex_Immediate::removeNodes(const degas::LabelTable **this, Bitmap *a2, const degas::Bitmap *a3)
{
  degas::LabelCursor::LabelCursor(v24, a2, this[1]);
  while (degas::Statement::next(v24[0]) == 1)
  {
    v22 = 0u;
    memset(v23, 0, 25);
    v20 = 0u;
    memset(v21, 0, 25);
    v5 = sqlite3_column_int64(*v24[0], 0);
    degas::Statement::bitmapColumnValue(v24[0], 2, &v22);
    degas::Statement::bitmapColumnValue(v24[0], 3, &v20);
    v6 = v22;
    if (v22 == 0xFFFFFFFFLL)
    {
      v7 = v23[0];
      v8 = v23[1];
      if (v23[0] == v23[1])
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v9 = *v7;
          v10 = *(*v7 + 4);
          if (v10 == -1)
          {
            v11 = 0;
            v12 = 0uLL;
            do
            {
              do
              {
                v12 = vpadalq_u16(v12, vpaddlq_u8(vcntq_s8(*(v9 + 16 + 4 * v11))));
                v11 += 4;
              }

              while (v11 != 32);
              v11 = 0;
              v10 = vaddvq_s32(v12);
              v12 = 0uLL;
            }

            while (v10 == -1);
            *(v9 + 4) = v10;
          }

          v6 += v10;
          v7 += 2;
        }

        while (v7 != v8);
      }

      *&v22 = v6;
    }

    degas::Bitmap::diffWith<degas::Bitmap>(&v22, a3);
    v13 = v22;
    if (v22 == 0xFFFFFFFFLL)
    {
      v14 = v23[0];
      v15 = v23[1];
      if (v23[0] == v23[1])
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

      *&v22 = v13;
    }

    if (v13 < v6)
    {
      degas::LabelTable::update(this[1], v5, &v22, &v20);
    }

    v25 = v21;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v25);
    *&v20 = v23;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  degas::Cursor::~Cursor(v24);
}

void degas::LabelIndex_Immediate::removeEdge(const degas::LabelTable **this, sqlite3_int64 a2, unint64_t a3)
{
  degas::LabelCursor::LabelCursor(v10, a2, this[1]);
  v8 = 0u;
  memset(v9, 0, 25);
  v6 = 0u;
  memset(v7, 0, 25);
  while (degas::Statement::next(v10[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v10[0], 2, &v8);
    degas::Statement::bitmapColumnValue(v10[0], 3, &v6);
  }

  if (degas::Bitmap::isSet(&v6, a3))
  {
    degas::Bitmap::clearBit(&v6, a3);
    degas::LabelTable::update(this[1], a2, &v8, &v6);
  }

  v11 = v7;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
  *&v6 = v9;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
  degas::Cursor::~Cursor(v10);
}

void sub_2558DD188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor((v17 - 56));
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Immediate::addEdge(const degas::LabelTable **this, sqlite3_int64 a2, unint64_t a3)
{
  degas::LabelCursor::LabelCursor(v10, a2, this[1]);
  v8 = 0u;
  memset(v9, 0, 25);
  v6 = 0u;
  memset(v7, 0, 25);
  while (degas::Statement::next(v10[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v10[0], 2, &v8);
    degas::Statement::bitmapColumnValue(v10[0], 3, &v6);
  }

  if ((degas::Bitmap::isSet(&v6, a3) & 1) == 0)
  {
    degas::Bitmap::setBit(&v6, a3);
    degas::LabelTable::update(this[1], a2, &v8, &v6);
  }

  v11 = v7;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
  *&v6 = v9;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
  degas::Cursor::~Cursor(v10);
}

void sub_2558DD2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor((v17 - 56));
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Immediate::removeNode(const degas::LabelTable **this, sqlite3_int64 a2, unint64_t a3)
{
  degas::LabelCursor::LabelCursor(v10, a2, this[1]);
  v8 = 0u;
  memset(v9, 0, 25);
  v6 = 0u;
  memset(v7, 0, 25);
  while (degas::Statement::next(v10[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v10[0], 2, &v8);
    degas::Statement::bitmapColumnValue(v10[0], 3, &v6);
  }

  if (degas::Bitmap::isSet(&v8, a3))
  {
    degas::Bitmap::clearBit(&v8, a3);
    degas::LabelTable::update(this[1], a2, &v8, &v6);
  }

  v11 = v7;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
  *&v6 = v9;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
  degas::Cursor::~Cursor(v10);
}

void sub_2558DD3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor((v17 - 56));
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Immediate::addNode(const degas::LabelTable **this, sqlite3_int64 a2, unint64_t a3)
{
  degas::LabelCursor::LabelCursor(v10, a2, this[1]);
  v8 = 0u;
  memset(v9, 0, 25);
  v6 = 0u;
  memset(v7, 0, 25);
  while (degas::Statement::next(v10[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v10[0], 2, &v8);
    degas::Statement::bitmapColumnValue(v10[0], 3, &v6);
  }

  if ((degas::Bitmap::isSet(&v8, a3) & 1) == 0)
  {
    degas::Bitmap::setBit(&v8, a3);
    degas::LabelTable::update(this[1], a2, &v8, &v6);
  }

  v11 = v7;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
  *&v6 = v9;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v6);
  degas::Cursor::~Cursor(v10);
}

void sub_2558DD50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  degas::Cursor::~Cursor((v17 - 56));
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Immediate::allEdgeIdentifiers(degas::LabelTable **this, degas::Bitmap *a2)
{
  AllStatement = degas::LabelTable::readAllStatement(this[1]);
  v4 = *AllStatement;
  v5 = AllStatement[1];
  v8[0] = v4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  while (degas::Statement::next(v4) == 1)
  {
    v6 = 0u;
    memset(v7, 0, 25);
    degas::Statement::bitmapColumnValue(v8[0], 3, &v6);
    degas::Bitmap::unionWith<degas::Bitmap>(a2, &v6);
    v9 = v7;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);
    v4 = v8[0];
  }

  degas::Cursor::~Cursor(v8);
}

void degas::LabelIndex_Immediate::allNodeIdentifiers(degas::LabelTable **this, degas::Bitmap *a2)
{
  AllStatement = degas::LabelTable::readAllStatement(this[1]);
  v4 = *AllStatement;
  v5 = AllStatement[1];
  v8[0] = v4;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  while (degas::Statement::next(v4) == 1)
  {
    v6 = 0u;
    memset(v7, 0, 25);
    degas::Statement::bitmapColumnValue(v8[0], 2, &v6);
    degas::Bitmap::unionWith<degas::Bitmap>(a2, &v6);
    v9 = v7;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);
    v4 = v8[0];
  }

  degas::Cursor::~Cursor(v8);
}

void degas::LabelIndex_Immediate::edgeIdentifiersForLabelIdentifier(const degas::LabelTable **this, sqlite3_int64 a2, degas::Bitmap *a3)
{
  degas::LabelCursor::LabelCursor(v4, a2, this[1]);
  while (degas::Statement::next(v4[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v4[0], 3, a3);
  }

  degas::Cursor::~Cursor(v4);
}

void degas::LabelIndex_Immediate::nodeIdentifiersForLabelIdentifier(const degas::LabelTable **this, sqlite3_int64 a2, degas::Bitmap *a3)
{
  degas::LabelCursor::LabelCursor(v4, a2, this[1]);
  while (degas::Statement::next(v4[0]) == 1)
  {
    degas::Statement::bitmapColumnValue(v4[0], 2, a3);
  }

  degas::Cursor::~Cursor(v4);
}

void degas::LabelIndex_Persisted::resetIndex(degas::LabelIndex_Persisted *this)
{
  os_unfair_lock_lock(this + 14);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(this + 2));
  v2 = *(this + 5);
  *(this + 1) = this + 16;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v2);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = this + 40;
  *(this + 60) = 0;

  os_unfair_lock_unlock(this + 14);
}

void std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(a1 + 1));
    v2 = (a1 + 56);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);

    operator delete(a1);
  }
}

void degas::LabelIndex_Persisted::allEdgeIdentifiers(os_unfair_lock_s *this, degas::Bitmap *a2)
{
  os_unfair_lock_lock(this + 14);
  v4 = *&this[8]._os_unfair_lock_opaque;
  if (v4 != &this[10])
  {
    do
    {
      v8[0] = *(v4 + 2);
      memset(&v8[1], 0, 32);
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v8[1] + 8, *(v4 + 7), *(v4 + 8), (*(v4 + 8) - *(v4 + 7)) >> 4);
      v9 = *(v4 + 80);
      degas::Bitmap::unionWith<degas::Bitmap>(a2, v8 + 8);
      v10 = &v8[1] + 1;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != &this[10]);
  }

  os_unfair_lock_unlock(this + 14);
}

void sub_2558DD9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Persisted::allNodeIdentifiers(os_unfair_lock_s *this, degas::Bitmap *a2)
{
  os_unfair_lock_lock(this + 14);
  v4 = *&this[2]._os_unfair_lock_opaque;
  if (v4 != &this[4])
  {
    do
    {
      v8[0] = *(v4 + 2);
      memset(&v8[1], 0, 32);
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v8[1] + 8, *(v4 + 7), *(v4 + 8), (*(v4 + 8) - *(v4 + 7)) >> 4);
      v9 = *(v4 + 80);
      degas::Bitmap::unionWith<degas::Bitmap>(a2, v8 + 8);
      v10 = &v8[1] + 1;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v10);
      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != &this[4]);
  }

  os_unfair_lock_unlock(this + 14);
}

void sub_2558DDA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Persisted::edgeIdentifiersForLabelIdentifier(os_unfair_lock_s *this, unint64_t a2, degas::Bitmap *a3)
{
  os_unfair_lock_lock(this + 14);
  v7 = *&this[10]._os_unfair_lock_opaque;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = this + 10;
  do
  {
    v9 = *&v7[8]._os_unfair_lock_opaque;
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *&v7[2 * v11]._os_unfair_lock_opaque;
  }

  while (v7);
  if (v8 != &this[10] && *&v8[8]._os_unfair_lock_opaque <= a2)
  {
    v12 = &v8[10];
  }

  else
  {
LABEL_9:
    degas::Bitmap::emptyBitmap(v6);
    v12 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  degas::Bitmap::operator=(a3, v12);

  os_unfair_lock_unlock(this + 14);
}

void degas::LabelIndex_Persisted::nodeIdentifiersForLabelIdentifier(os_unfair_lock_s *this, unint64_t a2, degas::Bitmap *a3)
{
  os_unfair_lock_lock(this + 14);
  v7 = *&this[4]._os_unfair_lock_opaque;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = this + 4;
  do
  {
    v9 = *&v7[8]._os_unfair_lock_opaque;
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *&v7[2 * v11]._os_unfair_lock_opaque;
  }

  while (v7);
  if (v8 != &this[4] && *&v8[8]._os_unfair_lock_opaque <= a2)
  {
    v12 = &v8[10];
  }

  else
  {
LABEL_9:
    degas::Bitmap::emptyBitmap(v6);
    v12 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  degas::Bitmap::operator=(a3, v12);

  os_unfair_lock_unlock(this + 14);
}

void degas::LabelIndex_Persisted::~LabelIndex_Persisted(char **this)
{
  *this = &unk_2867A8D40;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[5]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[2]);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A8D40;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[5]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[2]);
}

{
  *this = &unk_2867A8D40;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[5]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[2]);
}

void degas::LabelIndex_Snapshot::beginTransaction(degas::LabelIndex_Snapshot *this)
{
  if ((*(this + 80) & 1) == 0)
  {
    v2 = *(this + 1);
    v3 = *(this + 3);
    os_unfair_lock_lock(v2 + 14);
    degas::LabelIndex_Persisted::locked_populate(v2, v3);
    os_unfair_lock_unlock(v2 + 14);
    degas::LabelIndex_Persisted::makeSnapshot(*(this + 1), this + 4, this + 7);
    *(this + 80) = 1;
  }
}

void degas::LabelIndex_Persisted::locked_populate(degas::LabelIndex_Persisted *this, degas::LabelTable *a2)
{
  if ((*(this + 60) & 1) == 0)
  {
    AllStatement = degas::LabelTable::readAllStatement(a2);
    v4 = *AllStatement;
    v5 = AllStatement[1];
    v13[0] = v4;
    v13[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }

    while (degas::Statement::next(v4) == 1)
    {
      v12 = sqlite3_column_int64(*v13[0], 0);
      v10 = 0u;
      memset(v11, 0, 25);
      degas::Statement::bitmapColumnValue(v13[0], 2, &v10);
      v8 = 0u;
      memset(v9, 0, 25);
      degas::Statement::bitmapColumnValue(v13[0], 3, &v8);
      v14 = &v12;
      v6 = std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, v12);
      degas::Bitmap::operator=(v6 + 5, &v10);
      v14 = &v12;
      v7 = std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 32, v12);
      degas::Bitmap::operator=(v7 + 5, &v8);
      v15 = v9;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v15);
      *&v8 = v11;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v8);
      v4 = v13[0];
    }

    *(this + 60) = 1;
    degas::Cursor::~Cursor(v13);
  }
}

void degas::LabelIndex_Persisted::makeSnapshot(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  os_unfair_lock_lock((a1 + 56));
  if ((a1 + 8) != a2)
  {
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,degas::Bitmap>,std::__tree_node<std::__value_type<unsigned long long,degas::Bitmap>,void *> *,long>>(a2, *(a1 + 8), (a1 + 16));
  }

  if ((a1 + 32) != a3)
  {
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,degas::Bitmap>,std::__tree_node<std::__value_type<unsigned long long,degas::Bitmap>,void *> *,long>>(a3, *(a1 + 32), (a1 + 40));
  }

  os_unfair_lock_unlock((a1 + 56));
}

uint64_t **std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,degas::Bitmap>,std::__tree_node<std::__value_type<unsigned long long,degas::Bitmap>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v16 = result;
    v17 = v9;
    v18 = v9;
    if (v9)
    {
      v17 = std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::_DetachedTreeCache::__detach_next(v9);
      if (a2 != a3)
      {
        v10 = a2;
        do
        {
          v9[4] = v10[4];
          degas::Bitmap::operator=(v9 + 5, v10 + 5);
          v11 = *v8;
          v12 = v5 + 1;
          v13 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v12 = v11;
                if (v18[4] >= v11[4])
                {
                  break;
                }

                v11 = *v11;
                v13 = v12;
                if (!*v12)
                {
                  goto LABEL_14;
                }
              }

              v11 = v11[1];
            }

            while (v11);
            v13 = v12 + 1;
          }

LABEL_14:
          std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__insert_node_at(v5, v12, v13, v18);
          v9 = v17;
          v18 = v17;
          if (v17)
          {
            v17 = std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::_DetachedTreeCache::__detach_next(v17);
          }

          v14 = v10[1];
          if (v14)
          {
            do
            {
              a2 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              a2 = v10[2];
              v15 = *a2 == v10;
              v10 = a2;
            }

            while (!v15);
          }

          if (!v9)
          {
            break;
          }

          v10 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v16);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__construct_node<std::pair<unsigned long long const,degas::Bitmap> const&>();
  }

  return result;
}

void sub_2558DE134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v2);
  }

  return a1;
}

void sub_2558DE274(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,degas::Bitmap>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,degas::Bitmap>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 7;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void degas::LabelIndex_Snapshot::allEdgeIdentifiers(degas::LabelIndex_Snapshot *this, degas::Bitmap *a2)
{
  if (*(this + 80))
  {
    v4 = *(this + 7);
    v5 = this + 64;
    if (v4 != this + 64)
    {
      do
      {
        v12[0] = *(v4 + 2);
        memset(&v12[1], 0, 32);
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v12[1] + 8, *(v4 + 7), *(v4 + 8), (*(v4 + 8) - *(v4 + 7)) >> 4);
        v13 = v4[80];
        degas::Bitmap::unionWith<degas::Bitmap>(a2, v12 + 8);
        v14 = &v12[1] + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
        v6 = *(v4 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v4 + 2);
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    v9 = *(this + 1);
    v10 = *(this + 3);
    os_unfair_lock_lock(v9 + 14);
    degas::LabelIndex_Persisted::locked_populate(v9, v10);
    os_unfair_lock_unlock(v9 + 14);
    v11 = *(**(this + 1) + 40);

    v11();
  }
}

void sub_2558DE564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Snapshot::allNodeIdentifiers(degas::LabelIndex_Snapshot *this, degas::Bitmap *a2)
{
  if (*(this + 80))
  {
    v4 = *(this + 4);
    v5 = this + 40;
    if (v4 != this + 40)
    {
      do
      {
        v12[0] = *(v4 + 2);
        memset(&v12[1], 0, 32);
        std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v12[1] + 8, *(v4 + 7), *(v4 + 8), (*(v4 + 8) - *(v4 + 7)) >> 4);
        v13 = v4[80];
        degas::Bitmap::unionWith<degas::Bitmap>(a2, v12 + 8);
        v14 = &v12[1] + 1;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
        v6 = *(v4 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v4 + 2);
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    v9 = *(this + 1);
    v10 = *(this + 3);
    os_unfair_lock_lock(v9 + 14);
    degas::LabelIndex_Persisted::locked_populate(v9, v10);
    os_unfair_lock_unlock(v9 + 14);
    v11 = *(**(this + 1) + 32);

    v11();
  }
}

void sub_2558DE6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *degas::LabelIndex_Snapshot::edgeIdentifiersForLabelIdentifier(degas::LabelIndex_Snapshot *this, unint64_t a2, degas::Bitmap *a3)
{
  if (*(this + 80))
  {
    v5 = *(this + 8);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = (this + 64);
    do
    {
      v7 = v5[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 != (this + 64) && v6[4] <= a2)
    {
      v10 = (v6 + 5);
    }

    else
    {
LABEL_10:
      degas::Bitmap::emptyBitmap(this);
      v10 = &degas::Bitmap::emptyBitmap(void)::bitmap;
    }

    return degas::Bitmap::operator=(a3, v10);
  }

  else
  {
    v12 = *(this + 1);
    v13 = *(this + 3);
    os_unfair_lock_lock(v12 + 14);
    degas::LabelIndex_Persisted::locked_populate(v12, v13);
    os_unfair_lock_unlock(v12 + 14);
    v14 = *(**(this + 1) + 24);

    return v14();
  }
}

void *degas::LabelIndex_Snapshot::nodeIdentifiersForLabelIdentifier(degas::LabelIndex_Snapshot *this, unint64_t a2, degas::Bitmap *a3)
{
  if (*(this + 80))
  {
    v5 = *(this + 5);
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = (this + 40);
    do
    {
      v7 = v5[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 != (this + 40) && v6[4] <= a2)
    {
      v10 = (v6 + 5);
    }

    else
    {
LABEL_10:
      degas::Bitmap::emptyBitmap(this);
      v10 = &degas::Bitmap::emptyBitmap(void)::bitmap;
    }

    return degas::Bitmap::operator=(a3, v10);
  }

  else
  {
    v12 = *(this + 1);
    v13 = *(this + 3);
    os_unfair_lock_lock(v12 + 14);
    degas::LabelIndex_Persisted::locked_populate(v12, v13);
    os_unfair_lock_unlock(v12 + 14);
    v14 = *(**(this + 1) + 16);

    return v14();
  }
}

void degas::LabelIndex_Snapshot::~LabelIndex_Snapshot(char **this)
{
  degas::LabelIndex_Snapshot::~LabelIndex_Snapshot(this);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A8DD0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[8]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[5]);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *degas::LabelIndex_Transaction::removeEdges(degas::LabelIndex_Transaction *this, const degas::Bitmap *a2, const degas::Bitmap *a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    __assert_rtn("removeEdges", "labelIndex.cpp", 638, "_inTransaction");
  }

  result = degas::Bitmap::begin(a2, &v19);
  v7 = *(a2 + 3);
  v8 = (this + 120);
  while (1)
  {
    v9 = v19 == a2 && v20 == -1;
    if (v9 && v21 == v7)
    {
      return result;
    }

    v11 = *v8;
    if (!*v8)
    {
      goto LABEL_18;
    }

    v12 = (this + 120);
    do
    {
      v13 = *(v11 + 4);
      v14 = v13 >= v20;
      v15 = v13 < v20;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *&v11[8 * v15];
    }

    while (v11);
    if (v12 != v8 && v20 >= v12[4])
    {
      degas::Bitmap::unionWith<degas::Bitmap>((v12 + 5), a3);
    }

    else
    {
LABEL_18:
      v16 = v20;
      v17 = *a3;
      memset(v18, 0, 32);
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v18[8], *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 4);
      v18[32] = *(a3 + 40);
      std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>(this + 112, v16);
      v22 = &v18[8];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
    }

    result = degas::Bitmap::iterator::operator++(&v19);
  }
}

void sub_2558DEAE0(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>(uint64_t result, unint64_t a2)
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

void *degas::LabelIndex_Transaction::removeNodes(degas::LabelIndex_Transaction *this, const degas::Bitmap *a2, const degas::Bitmap *a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    __assert_rtn("removeNodes", "labelIndex.cpp", 594, "_inTransaction");
  }

  result = degas::Bitmap::begin(a2, &v19);
  v7 = *(a2 + 3);
  v8 = (this + 72);
  while (1)
  {
    v9 = v19 == a2 && v20 == -1;
    if (v9 && v21 == v7)
    {
      return result;
    }

    v11 = *v8;
    if (!*v8)
    {
      goto LABEL_18;
    }

    v12 = (this + 72);
    do
    {
      v13 = *(v11 + 4);
      v14 = v13 >= v20;
      v15 = v13 < v20;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *&v11[8 * v15];
    }

    while (v11);
    if (v12 != v8 && v20 >= v12[4])
    {
      degas::Bitmap::unionWith<degas::Bitmap>((v12 + 5), a3);
    }

    else
    {
LABEL_18:
      v16 = v20;
      v17 = *a3;
      memset(v18, 0, 32);
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v18[8], *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 4);
      v18[32] = *(a3 + 40);
      std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>(this + 64, v16);
      v22 = &v18[8];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v22);
    }

    result = degas::Bitmap::iterator::operator++(&v19);
  }
}

void sub_2558DED44(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 72));
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::removeEdge(degas::LabelIndex_Transaction *this, unint64_t a2, unint64_t a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    __assert_rtn("removeEdge", "labelIndex.cpp", 623, "_inTransaction");
  }

  v5 = this + 120;
  v4 = *(this + 15);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = this + 120;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v5 && *(v6 + 4) <= a2)
  {

    degas::Bitmap::setBit((v6 + 40), a3);
  }

  else
  {
LABEL_10:
    v12 = 0u;
    memset(v13, 0, 25);
    degas::Bitmap::setBit(&v12, a3);
    v10[1] = v12;
    memset(&v10[2], 0, 32);
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v10[3], v13[0], v13[1], (v13[1] - v13[0]) >> 4);
    v11 = v13[3];
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>((v5 - 8), a2);
    v14 = &v10[3];
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
    v10[0] = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);
  }
}

void sub_2558DEE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 40) = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  a10 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::addEdge(degas::LabelIndex_Transaction *this, unint64_t a2, unint64_t a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    __assert_rtn("addEdge", "labelIndex.cpp", 608, "_inTransaction");
  }

  v5 = this + 96;
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = this + 96;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v5 && *(v6 + 4) <= a2)
  {

    degas::Bitmap::setBit((v6 + 40), a3);
  }

  else
  {
LABEL_10:
    v12 = 0u;
    memset(v13, 0, 25);
    degas::Bitmap::setBit(&v12, a3);
    v10[1] = v12;
    memset(&v10[2], 0, 32);
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v10[3], v13[0], v13[1], (v13[1] - v13[0]) >> 4);
    v11 = v13[3];
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>((v5 - 8), a2);
    v14 = &v10[3];
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
    v10[0] = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);
  }
}

void sub_2558DF014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 40) = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  a10 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::removeNode(degas::LabelIndex_Transaction *this, unint64_t a2, unint64_t a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    __assert_rtn("removeNode", "labelIndex.cpp", 579, "_inTransaction");
  }

  v5 = this + 72;
  v4 = *(this + 9);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = this + 72;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v5 && *(v6 + 4) <= a2)
  {

    degas::Bitmap::setBit((v6 + 40), a3);
  }

  else
  {
LABEL_10:
    v12 = 0u;
    memset(v13, 0, 25);
    degas::Bitmap::setBit(&v12, a3);
    v10[1] = v12;
    memset(&v10[2], 0, 32);
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v10[3], v13[0], v13[1], (v13[1] - v13[0]) >> 4);
    v11 = v13[3];
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>((v5 - 8), a2);
    v14 = &v10[3];
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
    v10[0] = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);
  }
}

void sub_2558DF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 40) = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  a10 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::addNode(degas::LabelIndex_Transaction *this, unint64_t a2, unint64_t a3)
{
  if ((*(this + 32) & 1) == 0)
  {
    __assert_rtn("addNode", "labelIndex.cpp", 564, "_inTransaction");
  }

  v5 = this + 48;
  v4 = *(this + 6);
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = this + 48;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v5 && *(v6 + 4) <= a2)
  {

    degas::Bitmap::setBit((v6 + 40), a3);
  }

  else
  {
LABEL_10:
    v12 = 0u;
    memset(v13, 0, 25);
    degas::Bitmap::setBit(&v12, a3);
    v10[1] = v12;
    memset(&v10[2], 0, 32);
    std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v10[3], v13[0], v13[1], (v13[1] - v13[0]) >> 4);
    v11 = v13[3];
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,degas::Bitmap>>((v5 - 8), a2);
    v14 = &v10[3];
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v14);
    v10[0] = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v10);
  }
}

void sub_2558DF304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v20 - 40) = v19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v20 - 40));
  a10 = &a19;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::rollbackTransaction(char **this)
{
  v1 = this;
  v2 = (this + 6);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[6]);
  v1[5] = v2;
  v1[7] = 0;
  *v2 = 0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v1[9]);
  v1[8] = (v1 + 9);
  v1[10] = 0;
  v1[9] = 0;
  v3 = (v1 + 12);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v1[12]);
  v4 = v1[15];
  v1 += 15;
  *(v1 - 4) = v3;
  *v3 = 0;
  *(v1 - 2) = 0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v4);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  *(v1 - 88) = 0;
}

uint64_t degas::LabelIndex_Transaction::commitTransaction(degas::LabelIndex_Transaction *this)
{
  v2 = degas::LabelIndex_Persisted::update(*(this + 1), *(this + 3), this + 5, this + 8, this + 11, this + 14);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(this + 6));
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 6) = 0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(this + 9));
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 9) = 0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(this + 12));
  *(this + 11) = this + 96;
  *(this + 12) = 0;
  v3 = *(this + 15);
  *(this + 13) = 0;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(v3);
  *(this + 14) = this + 120;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  return v2;
}

uint64_t degas::LabelIndex_Persisted::update(os_unfair_lock_s *a1, degas::LabelTable *a2, void *a3, void *a4, void *a5, void *a6)
{
  os_unfair_lock_lock(a1 + 14);
  v71 = a2;
  degas::LabelIndex_Persisted::locked_populate(a1, a2);
  v80 = 0u;
  memset(v81, 0, 25);
  v14 = *a3;
  v13 = a3 + 1;
  v12 = v14;
  if (v14 != v13)
  {
    v15 = a1 + 4;
    do
    {
      *v77 = *(v12 + 2);
      memset(v78, 0, sizeof(v78));
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v78[8], v12[7], v12[8], (v12[8] - v12[7]) >> 4);
      v79 = *(v12 + 80);
      v16 = v77[0];
      degas::Bitmap::setBit(&v80, v77[0]);
      v17 = *&v15->_os_unfair_lock_opaque;
      if (!*&v15->_os_unfair_lock_opaque)
      {
        goto LABEL_11;
      }

      v18 = a1 + 4;
      do
      {
        v19 = *(v17 + 32);
        v20 = v19 >= v16;
        v21 = v19 < v16;
        if (v20)
        {
          v18 = v17;
        }

        v17 = *(v17 + 8 * v21);
      }

      while (v17);
      if (v18 != v15 && v16 >= *&v18[8]._os_unfair_lock_opaque)
      {
        degas::Bitmap::unionWith<degas::Bitmap>(&v18[10], &v77[1]);
      }

      else
      {
LABEL_11:
        std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,degas::Bitmap> const&>(&a1[2], v77[0]);
      }

      *&v72 = &v78[8];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v72);
      v22 = v12[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v12[2];
          v60 = *v23 == v12;
          v12 = v23;
        }

        while (!v60);
      }

      v12 = v23;
    }

    while (v23 != v13);
  }

  v26 = *a4;
  v24 = a4 + 1;
  v25 = v26;
  if (v26 != v24)
  {
    v27 = a1 + 4;
    do
    {
      *v77 = *(v25 + 2);
      memset(v78, 0, sizeof(v78));
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v78[8], v25[7], v25[8], (v25[8] - v25[7]) >> 4);
      v79 = *(v25 + 80);
      v28 = v77[0];
      degas::Bitmap::setBit(&v80, v77[0]);
      v29 = *&v27->_os_unfair_lock_opaque;
      if (*&v27->_os_unfair_lock_opaque)
      {
        v30 = a1 + 4;
        do
        {
          v31 = *(v29 + 32);
          v20 = v31 >= v28;
          v32 = v31 < v28;
          if (v20)
          {
            v30 = v29;
          }

          v29 = *(v29 + 8 * v32);
        }

        while (v29);
        if (v30 != v27 && v28 >= *&v30[8]._os_unfair_lock_opaque)
        {
          degas::Bitmap::diffWith<degas::Bitmap>(&v30[10], &v77[1]);
        }
      }

      *&v72 = &v78[8];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v72);
      v33 = v25[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v25[2];
          v60 = *v34 == v25;
          v25 = v34;
        }

        while (!v60);
      }

      v25 = v34;
    }

    while (v34 != v24);
  }

  v37 = *a5;
  v35 = a5 + 1;
  v36 = v37;
  if (v37 != v35)
  {
    v38 = a1 + 10;
    do
    {
      *v77 = *(v36 + 2);
      memset(v78, 0, sizeof(v78));
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v78[8], v36[7], v36[8], (v36[8] - v36[7]) >> 4);
      v79 = *(v36 + 80);
      v39 = v77[0];
      degas::Bitmap::setBit(&v80, v77[0]);
      v40 = *&v38->_os_unfair_lock_opaque;
      if (!*&v38->_os_unfair_lock_opaque)
      {
        goto LABEL_47;
      }

      v41 = a1 + 10;
      do
      {
        v42 = *(v40 + 32);
        v20 = v42 >= v39;
        v43 = v42 < v39;
        if (v20)
        {
          v41 = v40;
        }

        v40 = *(v40 + 8 * v43);
      }

      while (v40);
      if (v41 != v38 && v39 >= *&v41[8]._os_unfair_lock_opaque)
      {
        degas::Bitmap::unionWith<degas::Bitmap>(&v41[10], &v77[1]);
      }

      else
      {
LABEL_47:
        std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,degas::Bitmap> const&>(&a1[8], v77[0]);
      }

      *&v72 = &v78[8];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v72);
      v44 = v36[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v36[2];
          v60 = *v45 == v36;
          v36 = v45;
        }

        while (!v60);
      }

      v36 = v45;
    }

    while (v45 != v35);
  }

  v48 = *a6;
  v46 = a6 + 1;
  v47 = v48;
  if (v48 != v46)
  {
    v49 = a1 + 10;
    do
    {
      *v77 = *(v47 + 2);
      memset(v78, 0, sizeof(v78));
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v78[8], v47[7], v47[8], (v47[8] - v47[7]) >> 4);
      v79 = *(v47 + 80);
      v50 = v77[0];
      degas::Bitmap::setBit(&v80, v77[0]);
      v51 = *&v49->_os_unfair_lock_opaque;
      if (*&v49->_os_unfair_lock_opaque)
      {
        v52 = a1 + 10;
        do
        {
          v53 = *(v51 + 32);
          v20 = v53 >= v50;
          v54 = v53 < v50;
          if (v20)
          {
            v52 = v51;
          }

          v51 = *(v51 + 8 * v54);
        }

        while (v51);
        if (v52 != v49 && v50 >= *&v52[8]._os_unfair_lock_opaque)
        {
          degas::Bitmap::diffWith<degas::Bitmap>(&v52[10], &v77[1]);
        }
      }

      *&v72 = &v78[8];
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v72);
      v55 = v47[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v47[2];
          v60 = *v56 == v47;
          v47 = v56;
        }

        while (!v60);
      }

      v47 = v56;
    }

    while (v56 != v46);
  }

  degas::Bitmap::begin(&v80, &v74);
  v57 = a1 + 4;
  v58 = a1 + 10;
  while (1)
  {
    v59 = v75;
    v60 = v74 == &v80 && v75 == -1;
    if (v60)
    {
      break;
    }

LABEL_81:
    *v77 = 0u;
    memset(v78, 0, 25);
    v72 = 0u;
    memset(v73, 0, 25);
    v61 = *&v57->_os_unfair_lock_opaque;
    if (*&v57->_os_unfair_lock_opaque)
    {
      v62 = a1 + 4;
      do
      {
        v63 = *(v61 + 32);
        v20 = v63 >= v59;
        v64 = v63 < v59;
        if (v20)
        {
          v62 = v61;
        }

        v61 = *(v61 + 8 * v64);
      }

      while (v61);
      if (v62 != v57 && v59 >= *&v62[8]._os_unfair_lock_opaque)
      {
        degas::Bitmap::operator=(v77, &v62[10]._os_unfair_lock_opaque);
      }
    }

    v65 = *&v58->_os_unfair_lock_opaque;
    if (*&v58->_os_unfair_lock_opaque)
    {
      v66 = a1 + 10;
      do
      {
        v67 = *(v65 + 32);
        v20 = v67 >= v59;
        v68 = v67 < v59;
        if (v20)
        {
          v66 = v65;
        }

        v65 = *(v65 + 8 * v68);
      }

      while (v65);
      if (v66 != v58 && v59 >= *&v66[8]._os_unfair_lock_opaque)
      {
        degas::Bitmap::operator=(&v72, &v66[10]._os_unfair_lock_opaque);
      }
    }

    v69 = degas::LabelTable::update(v71, v59, v77, &v72);
    v82 = v73;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v82);
    *&v72 = v78;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v72);
    if (v69)
    {
      goto LABEL_102;
    }

    degas::Bitmap::iterator::operator++(&v74);
  }

  if (v76 != v81[1])
  {
    v59 = -1;
    goto LABEL_81;
  }

  v69 = 0;
LABEL_102:
  os_unfair_lock_unlock(a1 + 14);
  v77[0] = v81;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v77);
  return v69;
}

void sub_2558DF9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a11);
  a21 = (v21 - 128);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,degas::Bitmap> const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::__construct_node<std::pair<unsigned long long const,degas::Bitmap> const&>();
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

void degas::LabelIndex_Transaction::allEdgeIdentifiers(degas::LabelIndex_Transaction *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v5 = *(this + 3);
  os_unfair_lock_lock(v4 + 14);
  degas::LabelIndex_Persisted::locked_populate(v4, v5);
  os_unfair_lock_unlock(v4 + 14);
  (*(**(this + 1) + 40))(*(this + 1), a2);
  v6 = *(this + 11);
  if (v6 != (this + 96))
  {
    do
    {
      v13 = *(v6 + 2);
      v14 = 0u;
      v15 = 0u;
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v14 + 8, *(v6 + 7), *(v6 + 8), (*(v6 + 8) - *(v6 + 7)) >> 4);
      v16 = *(v6 + 80);
      degas::Bitmap::unionWith<degas::Bitmap>(a2, &v13 + 8);
      v17 = &v14 + 1;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
      v7 = *(v6 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (this + 96));
  }

  v10 = *(this + 14);
  if (v10 != (this + 120))
  {
    do
    {
      v13 = *(v10 + 2);
      v14 = 0u;
      v15 = 0u;
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v14 + 8, *(v10 + 7), *(v10 + 8), (*(v10 + 8) - *(v10 + 7)) >> 4);
      v16 = *(v10 + 80);
      degas::Bitmap::diffWith<degas::Bitmap>(a2, (&v13 + 8));
      v17 = &v14 + 1;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
      v11 = *(v10 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v10 + 2);
          v9 = *v12 == v10;
          v10 = v12;
        }

        while (!v9);
      }

      v10 = v12;
    }

    while (v12 != (this + 120));
  }
}

void sub_2558DFCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::allNodeIdentifiers(degas::LabelIndex_Transaction *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v5 = *(this + 3);
  os_unfair_lock_lock(v4 + 14);
  degas::LabelIndex_Persisted::locked_populate(v4, v5);
  os_unfair_lock_unlock(v4 + 14);
  (*(**(this + 1) + 32))(*(this + 1), a2);
  v6 = *(this + 5);
  if (v6 != (this + 48))
  {
    do
    {
      v13 = *(v6 + 2);
      v14 = 0u;
      v15 = 0u;
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v14 + 8, *(v6 + 7), *(v6 + 8), (*(v6 + 8) - *(v6 + 7)) >> 4);
      v16 = *(v6 + 80);
      degas::Bitmap::unionWith<degas::Bitmap>(a2, &v13 + 8);
      v17 = &v14 + 1;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
      v7 = *(v6 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v6 + 2);
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != (this + 48));
  }

  v10 = *(this + 8);
  if (v10 != (this + 72))
  {
    do
    {
      v13 = *(v10 + 2);
      v14 = 0u;
      v15 = 0u;
      std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(&v14 + 8, *(v10 + 7), *(v10 + 8), (*(v10 + 8) - *(v10 + 7)) >> 4);
      v16 = *(v10 + 80);
      degas::Bitmap::diffWith<degas::Bitmap>(a2, (&v13 + 8));
      v17 = &v14 + 1;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v17);
      v11 = *(v10 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v10 + 2);
          v9 = *v12 == v10;
          v10 = v12;
        }

        while (!v9);
      }

      v10 = v12;
    }

    while (v12 != (this + 72));
  }
}

void sub_2558DFEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::edgeIdentifiersForLabelIdentifier(degas::LabelIndex_Transaction *this, unint64_t a2, degas::Bitmap *a3)
{
  v6 = *(this + 1);
  v7 = *(this + 3);
  os_unfair_lock_lock(v6 + 14);
  degas::LabelIndex_Persisted::locked_populate(v6, v7);
  os_unfair_lock_unlock(v6 + 14);
  (*(**(this + 1) + 24))(*(this + 1), a2, a3);
  v8 = *(this + 12);
  if (v8)
  {
    v9 = (this + 96);
    do
    {
      v10 = v8[4];
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = v8[v12];
    }

    while (v8);
    if (v9 != (this + 96) && v9[4] <= a2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a3, (v9 + 5));
    }
  }

  v15 = *(this + 15);
  v14 = this + 120;
  v13 = v15;
  if (v15)
  {
    v16 = v14;
    do
    {
      v17 = *(v13 + 4);
      v11 = v17 >= a2;
      v18 = v17 < a2;
      if (v11)
      {
        v16 = v13;
      }

      v13 = *&v13[8 * v18];
    }

    while (v13);
    if (v16 != v14 && *(v16 + 4) <= a2)
    {

      degas::Bitmap::diffWith<degas::Bitmap>(a3, (v16 + 40));
    }
  }
}

void degas::LabelIndex_Transaction::nodeIdentifiersForLabelIdentifier(degas::LabelIndex_Transaction *this, unint64_t a2, degas::Bitmap *a3)
{
  v6 = *(this + 1);
  v7 = *(this + 3);
  os_unfair_lock_lock(v6 + 14);
  degas::LabelIndex_Persisted::locked_populate(v6, v7);
  os_unfair_lock_unlock(v6 + 14);
  (*(**(this + 1) + 16))(*(this + 1), a2, a3);
  v8 = *(this + 6);
  if (v8)
  {
    v9 = (this + 48);
    do
    {
      v10 = v8[4];
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = v8[v12];
    }

    while (v8);
    if (v9 != (this + 48) && v9[4] <= a2)
    {
      degas::Bitmap::unionWith<degas::Bitmap>(a3, (v9 + 5));
    }
  }

  v15 = *(this + 9);
  v14 = this + 72;
  v13 = v15;
  if (v15)
  {
    v16 = v14;
    do
    {
      v17 = *(v13 + 4);
      v11 = v17 >= a2;
      v18 = v17 < a2;
      if (v11)
      {
        v16 = v13;
      }

      v13 = *&v13[8 * v18];
    }

    while (v13);
    if (v16 != v14 && *(v16 + 4) <= a2)
    {

      degas::Bitmap::diffWith<degas::Bitmap>(a3, (v16 + 40));
    }
  }
}

void degas::LabelIndex_Transaction::~LabelIndex_Transaction(char **this)
{
  degas::LabelIndex_Transaction::~LabelIndex_Transaction(this);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A8E60;
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[15]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[12]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[9]);
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(this[6]);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t degas::LabelIndexDirectory::LabelIndexDirectory(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *this = this + 8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *this = this + 8;
  *(this + 24) = 0;
  return this;
}

void degas::LabelIndexDirectory::indexForDatabasePath(os_unfair_lock_s *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  os_unfair_lock_lock(a1 + 6);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>>>::find<std::string>(a1, a2);
  if (&a1[2] == v6)
  {
    operator new();
  }

  v7 = v6;
  os_unfair_lock_unlock(a1 + 6);
  v8 = *(v7 + 64);
  *a3 = *(v7 + 56);
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>>>::find<std::string>(uint64_t a1, uint64_t a2)
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

uint64_t std::pair<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<degas::LabelIndex_Persisted>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Persisted *,std::shared_ptr<degas::LabelIndex_Persisted>::__shared_ptr_default_delete<degas::LabelIndex_Persisted,degas::LabelIndex_Persisted>,std::allocator<degas::LabelIndex_Persisted>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255971565))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::LabelIndex_Persisted *,std::shared_ptr<degas::LabelIndex_Persisted>::__shared_ptr_default_delete<degas::LabelIndex_Persisted,degas::LabelIndex_Persisted>,std::allocator<degas::LabelIndex_Persisted>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<degas::LabelIndex_Persisted *,std::shared_ptr<degas::LabelIndex_Persisted>::__shared_ptr_default_delete<degas::LabelIndex_Persisted,degas::LabelIndex_Persisted>,std::allocator<degas::LabelIndex_Persisted>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::LabelIndex_Persisted::LabelIndex_Persisted(uint64_t this)
{
  *(this + 16) = 0;
  *this = &unk_2867A8D40;
  *(this + 8) = this + 16;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 24) = 0;
  *(this + 32) = this + 40;
  *(this + 56) = 0;
  *(this + 60) = 0;
  return this;
}

{
  *(this + 16) = 0;
  *this = &unk_2867A8D40;
  *(this + 8) = this + 16;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 24) = 0;
  *(this + 32) = this + 40;
  *(this + 56) = 0;
  *(this + 60) = 0;
  return this;
}

void degas::LabelIndexDirectory::resetIndexForDatabasePath(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 6);
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>>>::find<std::string>(a1, a2);
  if (&a1[2] != v4)
  {
    (*(**(v4 + 56) + 72))(*(v4 + 56));
  }

  os_unfair_lock_unlock(a1 + 6);
}

void *degas::LabelIndex_Immediate::LabelIndex_Immediate(void *result, uint64_t a2)
{
  *result = &unk_2867A8CB0;
  result[1] = a2;
  return result;
}

{
  *result = &unk_2867A8CB0;
  result[1] = a2;
  return result;
}

void degas::LabelIndex_Persisted::populate(os_unfair_lock_s *this, degas::LabelTable *a2)
{
  os_unfair_lock_lock(this + 14);
  degas::LabelIndex_Persisted::locked_populate(this, a2);

  os_unfair_lock_unlock(this + 14);
}

uint64_t degas::LabelIndex_Snapshot::LabelIndex_Snapshot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2867A8DD0;
  degas::indexDirectory(a1);
  degas::LabelIndexDirectory::indexForDatabasePath(&degas::indexDirectory(void)::sIndexDirectory, a2, (a1 + 8));
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a1 + 40;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 80) = 0;
  if (!*(a1 + 8))
  {
    __assert_rtn("LabelIndex_Snapshot", "labelIndex.cpp", 460, "_baseIndex");
  }

  return a1;
}

void sub_2558E0AA4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v1 + 64));
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v1 + 40));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void degas::indexDirectory(degas *this)
{
  {
    qword_2810B7460 = 0;
    qword_2810B7458 = 0;
    degas::indexDirectory(void)::sIndexDirectory = &qword_2810B7458;
    dword_2810B7468 = 0;
    __cxa_atexit(degas::LabelIndexDirectory::~LabelIndexDirectory, &degas::indexDirectory(void)::sIndexDirectory, &dword_255870000);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<degas::LabelIndex_Persisted>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<degas::LabelIndex_Persisted>>,0>((a1 + 4));

    operator delete(a1);
  }
}

uint64_t degas::LabelIndex_Transaction::LabelIndex_Transaction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2867A8E60;
  degas::indexDirectory(a1);
  degas::LabelIndexDirectory::indexForDatabasePath(&degas::indexDirectory(void)::sIndexDirectory, a2, (a1 + 8));
  *(a1 + 120) = 0;
  *(a1 + 24) = a3;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  if (!*(a1 + 8))
  {
    __assert_rtn("LabelIndex_Transaction", "labelIndex.cpp", 554, "_baseIndex");
  }

  return a1;
}

void sub_2558E0CAC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v1 + 120));
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v1 + 96));
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v1 + 72));
  std::__tree<std::__value_type<unsigned long long,degas::Bitmap>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,degas::Bitmap>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,degas::Bitmap>>>::destroy(*(v1 + 48));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void degas::LabelIndex_Transaction::resetForPath(degas *a1)
{
  degas::indexDirectory(a1);

  degas::LabelIndexDirectory::resetIndexForDatabasePath(&degas::indexDirectory(void)::sIndexDirectory, a1);
}

uint64_t degas::TransactionLogTable::deleteEntry(sqlite3 **this, sqlite3_int64 a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = degas::TransactionLogTable::deleteStatement(this);
  degas::Statement::bindInteger(*v4, 1, a2);
  v5 = degas::Statement::update(*v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = sqlite3_errmsg(this[4]);
    v9 = 136315138;
    v10 = v8;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "transaction log entry delete failed: %s", &v9, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

degas::Statement **degas::TransactionLogTable::deleteStatement(degas::TransactionLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19TransactionLogTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_1216;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::TransactionLogTable::createTable(degas::TransactionLogTable *this)
{
  v1 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "create table TransactionLog (identifier integer primary key autoincrement, nodeIdsInserted blob, edgeIdsInserted blob, nodeIdsUpdated blob, edgeIdsUpdated blob, nodeIdsDeleted blob, edgeIdsDeleted blob)");
  degas::Statement::Statement(ppStmt, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  return v2;
}

void degas::TransactionLogTable::~TransactionLogTable(degas::TransactionLogTable *this)
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

degas::TransactionLogTable *degas::TransactionLogTable::TransactionLogTable(degas::TransactionLogTable *this, sqlite3 *a2, degas::StatementCache *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TransactionLog");
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

  *this = &unk_2867A8FB0;
  *(this + 48) = 13;
  return this;
}

void sub_2558E119C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

degas::Statement **degas::TransactionLogTable::insertStatement(degas::TransactionLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19TransactionLogTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_1222;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::TransactionLogTable::readByIdentifierStatement(degas::TransactionLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19TransactionLogTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6_1224;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::TransactionLogTable::readAfterIdentifierStatement(degas::TransactionLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19TransactionLogTable28readAfterIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::TransactionLogTable::readAllStatement(degas::TransactionLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19TransactionLogTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_1227;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::TransactionLogTable::insert(sqlite3 **this, sqlite3_int64 *a2, const degas::Bitmap *a3, const degas::Bitmap *a4, const degas::Bitmap *a5, const degas::Bitmap *a6, const degas::Bitmap *a7, const degas::Bitmap *a8)
{
  v23 = *MEMORY[0x277D85DE8];
  inserted = degas::TransactionLogTable::insertStatement(this);
  degas::Statement::bindBitmap(*inserted, 1, a3);
  degas::Statement::bindBitmap(*inserted, 2, a4);
  degas::Statement::bindBitmap(*inserted, 3, a5);
  degas::Statement::bindBitmap(*inserted, 4, a6);
  degas::Statement::bindBitmap(*inserted, 5, a7);
  degas::Statement::bindBitmap(*inserted, 6, a8);
  v17 = degas::Statement::update(*inserted);
  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = sqlite3_errmsg(this[4]);
      v21 = 136315138;
      v22 = v18;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "transaction log entry insert failed: %s", &v21, 0xCu);
    }
  }

  else
  {
    *a2 = sqlite3_last_insert_rowid(this[4]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

sqlite3_stmt ***degas::TransactionLogTable::prepareStatementToReadByIdentifier(degas::TransactionLogTable *this, sqlite3_int64 a2)
{
  v3 = degas::TransactionLogTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::TransactionLogTable::prepareStatementToReadAfterIdentifier(degas::TransactionLogTable *this, sqlite3_int64 a2)
{
  v3 = degas::TransactionLogTable::readAfterIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

degas::TransactionLogCursor *degas::TransactionLogCursor::TransactionLogCursor(degas::TransactionLogCursor *this, const degas::TransactionLogTable *a2)
{
  AllStatement = degas::TransactionLogTable::readAllStatement(a2);
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
  AllStatement = degas::TransactionLogTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::TransactionLogCursor *degas::TransactionLogCursor::TransactionLogCursor(degas::TransactionLogCursor *this, sqlite3_int64 a2, const degas::TransactionLogTable *a3)
{
  v5 = degas::TransactionLogTable::readByIdentifierStatement(a3);
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

degas::TransactionLogCursor *degas::TransactionLogCursor::TransactionLogCursor(degas::TransactionLogCursor *this, sqlite3_int64 a2, unsigned int a3, const degas::TransactionLogTable *a4)
{
  v6 = degas::TransactionLogTable::readAfterIdentifierStatement(a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  v7 = v6[1];
  *this = *v6;
  *(this + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t degas::ClientLogTable::deleteEntry(sqlite3 **this, sqlite3_int64 a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = degas::ClientLogTable::deleteStatement(this);
  degas::Statement::bindInteger(*v4, 1, a2);
  v5 = degas::Statement::update(*v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = sqlite3_errmsg(this[4]);
    v9 = 136315138;
    v10 = v8;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "client log entry delete failed: %s", &v9, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

degas::Statement **degas::ClientLogTable::deleteStatement(degas::ClientLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14ClientLogTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_1231;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::ClientLogTable::createTable(degas::ClientLogTable *this)
{
  v1 = *(this + 4);
  std::string::basic_string[abi:ne200100]<0>(__p, "create table ClientLog (clientId integer primary key, transactionId integer)");
  degas::Statement::Statement(ppStmt, v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  return v2;
}

void degas::ClientLogTable::~ClientLogTable(degas::ClientLogTable *this)
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

degas::ClientLogTable *degas::ClientLogTable::ClientLogTable(degas::ClientLogTable *this, sqlite3 *a2, degas::StatementCache *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ClientLog");
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

  *this = &unk_2867A8FF8;
  *(this + 48) = 14;
  return this;
}

void sub_2558E1FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

degas::Statement **degas::ClientLogTable::upsertStatement(degas::ClientLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14ClientLogTable15upsertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_1237;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::ClientLogTable::readByIdentifierStatement(degas::ClientLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14ClientLogTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_6_1239;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

degas::Statement **degas::ClientLogTable::readAllStatement(degas::ClientLogTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas14ClientLogTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8_1241;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

uint64_t degas::ClientLogTable::upsert(sqlite3 **this, sqlite3_int64 a2, sqlite3_int64 *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = degas::ClientLogTable::upsertStatement(this);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  degas::Statement::bindInteger(v8, 1, a2);
  degas::Statement::bindInteger(v8, 2, *a3);
  v9 = degas::Statement::update(v8);
  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = sqlite3_errmsg(this[4]);
    v13 = 136315138;
    v14 = v12;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "client log entry upsert failed: %s", &v13, 0xCu);
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v7)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2558E2554(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

sqlite3_stmt ***degas::ClientLogTable::prepareStatementToReadByIdentifier(degas::ClientLogTable *this, sqlite3_int64 a2)
{
  v3 = degas::ClientLogTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

degas::ClientLogCursor *degas::ClientLogCursor::ClientLogCursor(degas::ClientLogCursor *this, const degas::ClientLogTable *a2)
{
  AllStatement = degas::ClientLogTable::readAllStatement(a2);
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
  AllStatement = degas::ClientLogTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::ClientLogCursor *degas::ClientLogCursor::ClientLogCursor(degas::ClientLogCursor *this, sqlite3_int64 a2, const degas::ClientLogTable *a3)
{
  v5 = degas::ClientLogTable::readByIdentifierStatement(a3);
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

void MABenchmarkGetHostMemory(void *a1, void *a2)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  *host_info_out = 0u;
  *v9 = 0u;
  v10 = 0u;
  host_info_outCnt = 15;
  v4 = MEMORY[0x259C44280]();
  v5 = host_statistics(v4, 2, host_info_out, &host_info_outCnt);
  if (v5)
  {
    mach_error("can't get host_vm_info???\n", v5);
  }

  host_info_outCnt = 12;
  v6 = MEMORY[0x259C44280]();
  v7 = host_info(v6, 1, v9, &host_info_outCnt);
  if (v7)
  {
    mach_error("can't get host_basic_info???\n", v7);
  }

  *a2 = *MEMORY[0x277D85FA0] * host_info_out[0];
  *a1 = *(&v11 + 1);
}

uint64_t MABenchmarkGetAppMemory()
{
  v4 = 0u;
  v5 = 0u;
  *task_info_out = 0u;
  task_info_outCnt = 12;
  v0 = task_info(*MEMORY[0x277D85F48], 0x14u, task_info_out, &task_info_outCnt);
  if (v0)
  {
    mach_error("can't get task_basic_info???\n", v0);
  }

  return *&task_info_out[2];
}

uint64_t degas::AttributeValueTable::deleteValue(degas::AttributeValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::AttributeValueTable::deleteValueStatement(this);
  degas::Statement::bindInteger(*v5, 1, a3);
  degas::Statement::bindInteger(*v5, 2, a2);
  v6 = *v5;

  return degas::Statement::update(v6);
}

degas::Statement **degas::AttributeValueTable::deleteValueStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x501;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable20deleteValueStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_28;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable20deleteValueStatementEv_block_invoke(uint64_t a1)
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where elementId=?1 and attributeId=?2", 38);
  operator new();
}

void sub_2558E3550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeValueTable::deleteEntry(degas::AttributeValueTable *this, sqlite3_int64 a2)
{
  v3 = degas::AttributeValueTable::deleteStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  v4 = *v3;

  return degas::Statement::update(v4);
}

degas::Statement **degas::AttributeValueTable::deleteStatement(degas::AttributeValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AttributeValueTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_26;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AttributeValueTable15deleteStatementEv_block_invoke(uint64_t a1)
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, " where elementId=?1", 19);
  operator new();
}

void sub_2558E3864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeValueTable::createTable(degas::AttributeValueTable *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "create table ", 13);
  v2 = *(this + 1);
  v3 = *(this + 31);
  if (v3 >= 0)
  {
    v4 = this + 8;
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, " (elementId integer, attributeId integer, intValue integer, realValue real, stringValue text, dataType integer, primary key (elementId, attributeId))", 149);
  v6 = *(this + 4);
  std::stringbuf::str();
  degas::Statement::Statement(ppStmt, v6, &__p);
  if (SHIBYTE(v50[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v7 = degas::Statement::update(ppStmt);
  v8 = MEMORY[0x277D82828];
  if (v7)
  {
    v9 = *MEMORY[0x277D82828];
    v10 = *(MEMORY[0x277D82828] + 24);
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "create index ", 13);
    v11 = *(this + 31);
    if (v11 >= 0)
    {
      v12 = this + 8;
    }

    else
    {
      v12 = *(this + 1);
    }

    if (v11 >= 0)
    {
      v13 = *(this + 31);
    }

    else
    {
      v13 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v12, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "_intValue on ", 13);
    v14 = *(this + 31);
    if (v14 >= 0)
    {
      v15 = this + 8;
    }

    else
    {
      v15 = *(this + 1);
    }

    if (v14 >= 0)
    {
      v16 = *(this + 31);
    }

    else
    {
      v16 = *(this + 2);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v15, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, " (attributeId, intValue) where intValue not null", 48);
    v17 = *(this + 4);
    std::stringbuf::str();
    degas::Statement::Statement(v47, v17, &v42);
    if (SHIBYTE(v44[0].__locale_) < 0)
    {
      operator delete(v42);
    }

    v7 = degas::Statement::update(v47);
    if (v7)
    {
      v9 = *v8;
      v10 = *(v8 + 24);
    }

    else
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v42);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "create index ", 13);
      v18 = *(this + 31);
      if (v18 >= 0)
      {
        v19 = this + 8;
      }

      else
      {
        v19 = *(this + 1);
      }

      if (v18 >= 0)
      {
        v20 = *(this + 31);
      }

      else
      {
        v20 = *(this + 2);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "_realValue on ", 14);
      v21 = *(this + 31);
      if (v21 >= 0)
      {
        v22 = this + 8;
      }

      else
      {
        v22 = *(this + 1);
      }

      if (v21 >= 0)
      {
        v23 = *(this + 31);
      }

      else
      {
        v23 = *(this + 2);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v22, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, " (attributeId, realValue) where realValue not null", 50);
      v24 = *(this + 4);
      std::stringbuf::str();
      degas::Statement::Statement(v41, v24, &v36);
      if (SHIBYTE(v38[0].__locale_) < 0)
      {
        operator delete(v36);
      }

      v7 = degas::Statement::update(v41);
      if (v7)
      {
        v9 = *v8;
        v10 = *(v8 + 24);
      }

      else
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v36);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "create index ", 13);
        v25 = *(this + 31);
        if (v25 >= 0)
        {
          v26 = this + 8;
        }

        else
        {
          v26 = *(this + 1);
        }

        if (v25 >= 0)
        {
          v27 = *(this + 31);
        }

        else
        {
          v27 = *(this + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v26, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "_stringValue on ", 16);
        v28 = *(this + 31);
        if (v28 >= 0)
        {
          v29 = this + 8;
        }

        else
        {
          v29 = *(this + 1);
        }

        if (v28 >= 0)
        {
          v30 = *(this + 31);
        }

        else
        {
          v30 = *(this + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v29, v30);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, " (attributeId, stringValue) where stringValue not null", 54);
        v31 = *(this + 4);
        std::stringbuf::str();
        degas::Statement::Statement(v35, v31, &v33);
        if (v34 < 0)
        {
          operator delete(v33);
        }

        v7 = degas::Statement::update(v35);
        degas::Statement::~Statement(v35);
        v9 = *v8;
        v36 = *v8;
        v10 = *(v8 + 24);
        *(&v36 + *(v36 - 3)) = v10;
        v37 = MEMORY[0x277D82878] + 16;
        if (v39 < 0)
        {
          operator delete(v38[7].__locale_);
        }

        v37 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v38);
        std::ostream::~ostream();
        MEMORY[0x259C43E80](&v40);
      }

      degas::Statement::~Statement(v41);
      v42 = v9;
      *(&v42 + *(v9 - 3)) = v10;
      v43 = MEMORY[0x277D82878] + 16;
      if (v45 < 0)
      {
        operator delete(v44[7].__locale_);
      }

      v43 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v44);
      std::ostream::~ostream();
      MEMORY[0x259C43E80](&v46);
    }

    degas::Statement::~Statement(v47);
    __p = v9;
    *(&__p + *(v9 - 3)) = v10;
    v49 = MEMORY[0x277D82878] + 16;
    if (v51 < 0)
    {
      operator delete(v50[7].__locale_);
    }

    v49 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v50);
    std::ostream::~ostream();
    MEMORY[0x259C43E80](&v52);
  }

  degas::Statement::~Statement(ppStmt);
  v54 = v9;
  *(&v54 + *(v9 - 3)) = v10;
  v55 = MEMORY[0x277D82878] + 16;
  if (v57 < 0)
  {
    operator delete(v56[7].__locale_);
  }

  v55 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v56);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v58);
  return v7;
}