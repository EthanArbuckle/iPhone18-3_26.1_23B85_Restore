uint64_t cvGraphAddVtx(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvGraphAddVtx");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v12, 4294967269, v11, v10, __p, 2613);
    cv::error(v12, v6);
  }

  v7 = *(a1 + 96);
  v12[0] = v7;
  if (v7)
  {
    *(a1 + 96) = *(v7 + 1);
    *v7 &= 0x3FFFFFFu;
    ++*(a1 + 104);
  }

  else
  {
    cvSetAdd(a1, 0, v12);
    v7 = v12[0];
    if (!v12[0])
    {
      result = 0xFFFFFFFFLL;
      if (!a3)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  if (a2)
  {
    memcpy(v7 + 4, (a2 + 16), *(a1 + 44) - 16);
  }

  *(v7 + 1) = 0;
  result = *v7;
  if (a3)
  {
LABEL_9:
    *a3 = v7;
  }

  return result;
}

void sub_22D1F3E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvFindGraphEdgeByPtr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a3;
  v4 = a2;
  if (!a1 || !a2 || !a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "");
    std::string::basic_string[abi:ne200100]<0>(v13, "cvFindGraphEdgeByPtr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v15, 4294967269, v14, v13, __p, 2698);
    cv::error(v15, v5);
  }

  if (a2 == a3)
  {
    return 0;
  }

  if ((*(a1 + 1) & 0x40) == 0)
  {
    v6 = *a2 & 0x3FFFFFF;
    v7 = *a3 & 0x3FFFFFF;
    v8 = v6 > v7;
    if (v6 <= v7)
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    if (v8)
    {
      v3 = a2;
    }

    v4 = v9;
  }

  for (result = *(v4 + 1); result; result = *(result + 8 * (v4 == v11) + 8))
  {
    v11 = *(result + 32);
    if (v4 != v11 && v4 != *(result + 24))
    {
      cvFindGraphEdgeByPtr_cold_1();
    }

    if (v11 == v3)
    {
      break;
    }
  }

  return result;
}

void sub_22D1F3FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvGraphAddEdgeByPtr(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t *a5)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "graph pointer is NULL");
    std::string::basic_string[abi:ne200100]<0>(v25, "cvGraphAddEdgeByPtr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v27, 4294967269, v26, v25, __p, 2755);
    cv::error(v27, v10);
  }

  v11 = a3;
  v12 = a2;
  if ((*(a1 + 1) & 0x40) == 0)
  {
    v13 = *a2 & 0x3FFFFFF;
    v14 = *a3 & 0x3FFFFFF;
    if (v13 <= v14)
    {
      v11 = a3;
    }

    else
    {
      v11 = a2;
    }

    if (v13 <= v14)
    {
      v12 = a2;
    }

    else
    {
      v12 = a3;
    }
  }

  GraphEdgeByPtr = cvFindGraphEdgeByPtr(a1, v12, v11);
  if (GraphEdgeByPtr)
  {
    v16 = GraphEdgeByPtr;
    result = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2 == a3)
  {
    if (v12)
    {
      v18 = 4294967291;
    }

    else
    {
      v18 = 4294967269;
    }

    std::string::basic_string[abi:ne200100]<0>(v26, "vertex pointers coinside (or set to NULL)");
    std::string::basic_string[abi:ne200100]<0>(v25, "cvGraphAddEdgeByPtr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v27, v18, v26, v25, __p, 2775);
    cv::error(v27, v19);
  }

  v20 = *(a1 + 112);
  v16 = *(v20 + 96);
  v27[0] = v16;
  if (v16)
  {
    *(v20 + 96) = *(v16 + 8);
    *v16 &= 0x3FFFFFFu;
    ++*(v20 + 104);
  }

  else
  {
    cvSetAdd(v20, 0, v27);
    v16 = v27[0];
  }

  if ((*v16 & 0x80000000) != 0)
  {
    cvGraphAddEdgeByPtr_cold_1();
  }

  *(v16 + 24) = v12;
  *(v16 + 32) = v11;
  *(v16 + 8) = *(v12 + 1);
  *(v16 + 16) = *(v11 + 1);
  *(v11 + 1) = v16;
  *(v12 + 1) = v16;
  v21 = *(*(a1 + 112) + 44);
  v22 = (v21 - 40);
  if (a4)
  {
    if (v22 >= 1)
    {
      memcpy((v16 + 40), (a4 + 40), v22);
    }

    v23 = *(a4 + 4);
  }

  else
  {
    v23 = 1.0;
    if (v22 >= 1)
    {
      bzero((v16 + 40), (v21 - 40));
    }
  }

  *(v16 + 4) = v23;
  result = 1;
  if (a5)
  {
LABEL_12:
    *a5 = v16;
  }

  return result;
}

void sub_22D1F42E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

_DWORD *cvCloneGraph(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1 || (*a1 & 0xFFFF3000) != 0x42981000)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "Invalid graph pointer");
    std::string::basic_string[abi:ne200100]<0>(v33, "cvCloneGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v35, 4294967291, v34, v33, __p, 3255);
    cv::error(v35, v4);
  }

  if (!a2)
  {
    v2 = *(a1 + 72);
    if (!v2)
    {
      std::string::basic_string[abi:ne200100]<0>(v34, "NULL storage pointer");
      std::string::basic_string[abi:ne200100]<0>(v33, "cvCloneGraph");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
      cv::Exception::Exception(v35, 4294967269, v34, v33, __p, 3261);
      cv::error(v35, v5);
    }
  }

  v6 = *(a1 + 44);
  v7 = v6;
  v8 = *(*(a1 + 112) + 44);
  v9 = malloc_type_malloc(4 * *(a1 + 40), 0x100004052888210uLL);
  v10 = malloc_type_malloc(8 * *(a1 + 40), 0x2004093837F09uLL);
  Graph = cvCreateGraph(*a1, *(a1 + 4), v6, v8, v2);
  memcpy(Graph + 3600, (a1 + 14400), *(a1 + 4) - 120);
  cvStartReadSeq(a1, v36, 0);
  if (*(a1 + 40) >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = v39;
    do
    {
      if ((*v14 & 0x80000000) == 0)
      {
        v35[0] = 0;
        cvGraphAddVtx(Graph, v14, v35);
        v15 = *v14;
        v16 = v35[0];
        *v35[0] = *v14;
        v9[v13] = v15;
        *v14 = v13;
        v10[v13++] = v16;
        v14 = v39;
      }

      v14 += v7;
      v39 = v14;
      if (v14 >= v41)
      {
        v38 = *(v38 + 8);
        v14 = *(v38 + 24);
        v17 = *(v38 + 20);
        v18 = *(v37 + 44);
        v39 = v14;
        v40 = v14;
        v41 = &v14[v18 * v17];
      }

      ++v12;
    }

    while (v12 < *(a1 + 40));
  }

  cvStartReadSeq(*(a1 + 112), v36, 0);
  if (*(*(a1 + 112) + 40) >= 1)
  {
    v19 = 0;
    v20 = v8;
    v21 = v39;
    do
    {
      if ((*v21 & 0x80000000) == 0)
      {
        v35[0] = 0;
        cvGraphAddEdgeByPtr(Graph, v10[**(v21 + 24)], v10[**(v21 + 32)], v21, v35);
        *v35[0] = *v21;
        v21 = v39;
      }

      v21 += v20;
      v39 = v21;
      if (v21 >= v41)
      {
        v38 = *(v38 + 8);
        v21 = *(v38 + 24);
        v22 = *(v38 + 20);
        v23 = *(v37 + 44);
        v39 = v21;
        v40 = v21;
        v41 = (v21 + v23 * v22);
      }

      ++v19;
    }

    while (v19 < *(*(a1 + 112) + 40));
  }

  cvStartReadSeq(a1, v36, 0);
  v24 = *(*(a1 + 112) + 40);
  if (v24 >= 1)
  {
    v25 = 0;
    v27 = v38;
    v26 = v39;
    v28 = v41;
    v29 = v37;
    do
    {
      if ((*v26 & 0x80000000) == 0)
      {
        v30 = v9[v25++];
        *v26 = v30;
      }

      v26 += v7;
      if (v26 >= v28)
      {
        v27 = *(v27 + 8);
        v38 = v27;
        v26 = *(v27 + 24);
        v28 = &v26[*(v29 + 44) * *(v27 + 20)];
        v40 = v26;
        v41 = v28;
      }

      --v24;
    }

    while (v24);
    v39 = v26;
  }

  cvFree_(v9);
  cvFree_(v10);
  if (cvGetErrStatus() >= 0)
  {
    return Graph;
  }

  else
  {
    return 0;
  }
}

void sub_22D1F4760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvInitTreeNodeIterator(uint64_t result, uint64_t a2, int a3)
{
  if (!result || !a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "");
    std::string::basic_string[abi:ne200100]<0>(v6, "cvInitTreeNodeIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v8, 4294967269, v7, v6, __p, 3436);
    cv::error(v8, v3);
  }

  if (a3 < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "");
    std::string::basic_string[abi:ne200100]<0>(v6, "cvInitTreeNodeIterator");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v8, 4294967085, v7, v6, __p, 3439);
    cv::error(v8, v4);
  }

  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  return result;
}

void sub_22D1F4938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cvNextTreeNode(uint64_t *a1)
{
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "NULL iterator pointer");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvNextTreeNode");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/datastructs.cpp");
    cv::Exception::Exception(v12, 4294967269, v11, v10, __p, 3455);
    cv::error(v12, v2);
  }

  result = *a1;
  v4 = *(a1 + 2);
  if (*a1)
  {
    v5 = *(result + 32);
    if (v5 && (v6 = v4 + 1, v4 + 1 < *(a1 + 3)))
    {
LABEL_11:
      v4 = v6;
    }

    else
    {
      v6 = (v4 & (v4 >> 31)) - 1;
      v7 = *a1;
      while (!*(v7 + 16))
      {
        v7 = *(v7 + 24);
        v8 = __OFSUB__(v4--, 1);
        if (v4 < 0 != v8)
        {
          v5 = 0;
          goto LABEL_11;
        }
      }

      if (*(a1 + 3))
      {
        v5 = *(v7 + 16);
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 2) = v4;
  return result;
}

void sub_22D1F4AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void icvGoNextMemBlock()
{
  __assert_rtn("icvGoNextMemBlock", "datastructs.cpp", 235, "parent->bottom == block");
}

{
  __assert_rtn("icvGoNextMemBlock", "datastructs.cpp", 261, "storage->free_space % CV_STRUCT_ALIGN == 0");
}

void icvGrowSeq()
{
  __assert_rtn("icvGrowSeq", "datastructs.cpp", 727, "seq->first->start_index == 0");
}

{
  __assert_rtn("icvGrowSeq", "datastructs.cpp", 711, "block->count % seq->elem_size == 0 && block->count > 0");
}

{
  __assert_rtn("icvGrowSeq", "datastructs.cpp", 678, "storage->free_space >= delta");
}

void icvFreeSeqBlock()
{
  __assert_rtn("icvFreeSeqBlock", "datastructs.cpp", 755, "(in_front_of ? block : block->prev)->count == 0");
}

{
  __assert_rtn("icvFreeSeqBlock", "datastructs.cpp", 770, "seq->ptr == block->data");
}

{
  __assert_rtn("icvFreeSeqBlock", "datastructs.cpp", 799, "block->count > 0 && block->count % seq->elem_size == 0");
}

uint64_t cv::borderInterpolate(cv *this, int a2, int a3)
{
  v3 = this;
  if (this < a2)
  {
    return v3;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (a3 == 1)
    {
      if (this >= 0)
      {
        return (a2 - 1);
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_24;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
LABEL_7:
      v5 = a3 == 4;
      if (a2 == 1)
      {
        return 0;
      }

      do
      {
        if ((v3 & 0x80000000) != 0)
        {
          v3 = (~v3 + v5);
        }

        else
        {
          v3 = (2 * a2 + ~(v3 + v5));
        }
      }

      while (v3 >= a2);
      return v3;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(v9, "Unknown/unsupported border type");
    std::string::basic_string[abi:ne200100]<0>(v8, "borderInterpolate");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v10, 4294967291, v9, v8, __p, 94);
    cv::error(v10, v6);
  }

  if ((this & 0x80000000) != 0)
  {
    v3 = (~(this - a2) + this + (this - a2 + 1) % a2);
  }

  if (v3 >= a2)
  {
    return (v3 % a2);
  }

  return v3;
}

void sub_22D1F4FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

double cv::BaseRowFilter::BaseRowFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284054B00;
  result = NAN;
  *(this + 1) = -1;
  return result;
}

double cv::BaseColumnFilter::BaseColumnFilter(cv::BaseColumnFilter *this)
{
  *this = &unk_284054B28;
  result = NAN;
  *(this + 1) = -1;
  return result;
}

void *cv::BaseFilter::BaseFilter(void *this)
{
  *this = &unk_284054B58;
  this[1] = -1;
  this[2] = -1;
  return this;
}

uint64_t *cv::Ptr<cv::BaseColumnFilter>::~Ptr(uint64_t *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      (*(*v3 + 8))(v3);
    }

    free(a1[1]);
  }

  *a1 = 0;
  a1[1] = 0;
  return a1;
}

uint64_t *cv::Ptr<cv::BaseRowFilter>::~Ptr(uint64_t *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      (*(*v3 + 8))(v3);
    }

    free(a1[1]);
  }

  *a1 = 0;
  a1[1] = 0;
  return a1;
}

uint64_t *cv::Ptr<cv::BaseFilter>::~Ptr(uint64_t *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      (*(*v3 + 8))(v3);
    }

    free(a1[1]);
  }

  *a1 = 0;
  a1[1] = 0;
  return a1;
}

uint64_t cv::FilterEngine::FilterEngine(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, int a9, uint64_t a10)
{
  *(a1 + 80) = 0;
  *a1 = &unk_284054B88;
  *(a1 + 112) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  cv::FilterEngine::init(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return a1;
}

{
  return cv::FilterEngine::FilterEngine(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_22D1F52B8(_Unwind_Exception *a1)
{
  cv::Ptr<cv::BaseColumnFilter>::~Ptr(v1 + 36);
  cv::Ptr<cv::BaseRowFilter>::~Ptr(v1 + 34);
  cv::Ptr<cv::BaseFilter>::~Ptr(v1 + 32);
  v5 = v1[29];
  if (v5)
  {
    v1[30] = v5;
    operator delete(v5);
  }

  v6 = v1[23];
  if (v6)
  {
    v1[24] = v6;
    operator delete(v6);
  }

  v7 = v1[20];
  if (v7)
  {
    v1[21] = v7;
    operator delete(v7);
  }

  v8 = v1[17];
  if (v8)
  {
    v1[18] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[15] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[11] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

double cv::FilterEngine::init(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, int a9, uint64_t a10)
{
  *(a1 + 8) = a5 & 0xFFF;
  *(a1 + 12) = a6 & 0xFFF;
  *(a1 + 16) = a7 & 0xFFF;
  v15 = (a1 + 256);
  if ((a1 + 256) != a2)
  {
    v17 = a2[1];
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
    }

    v18 = *(a1 + 264);
    if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
    {
      if (*v15)
      {
        (*(**v15 + 8))(*v15);
      }

      free(*(a1 + 264));
    }

    *v15 = 0;
    v15[1] = 0;
    *(a1 + 256) = *a2;
    *(a1 + 264) = v17;
  }

  v19 = (a1 + 272);
  if ((a1 + 272) != a3)
  {
    v20 = a3[1];
    if (v20)
    {
      atomic_fetch_add(v20, 1u);
    }

    v21 = *(a1 + 280);
    if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      if (*v19)
      {
        (*(**v19 + 8))(*v19);
      }

      free(*(a1 + 280));
    }

    *v19 = 0;
    *(a1 + 280) = 0;
    *(a1 + 272) = *a3;
    *(a1 + 280) = v20;
  }

  v22 = (a1 + 288);
  if ((a1 + 288) != a4)
  {
    v23 = a4[1];
    if (v23)
    {
      atomic_fetch_add(v23, 1u);
    }

    v24 = *(a1 + 296);
    if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
    {
      if (*v22)
      {
        (*(**v22 + 8))(*v22);
      }

      free(*(a1 + 296));
    }

    *v22 = 0;
    *(a1 + 296) = 0;
    *(a1 + 288) = *a4;
    *(a1 + 296) = v23;
  }

  if (a9 >= 0)
  {
    v25 = a9;
  }

  else
  {
    v25 = a8;
  }

  *(a1 + 72) = a8;
  *(a1 + 76) = v25;
  if (v25 == 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v51, "columnBorderType != BORDER_WRAP");
    std::string::basic_string[abi:ne200100]<0>(v50, "init");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v52, 4294967081, v51, v50, __p, 166);
    cv::error(v52, v26);
  }

  v27 = *v15;
  if (*v15)
  {
    if (*(a1 + 16) != *(a1 + 8))
    {
      std::string::basic_string[abi:ne200100]<0>(v51, "bufType == srcType");
      std::string::basic_string[abi:ne200100]<0>(v50, "init");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
      cv::Exception::Exception(v52, 4294967081, v51, v50, __p, 176);
      cv::error(v52, v28);
    }

    v29 = v27[2];
    *(a1 + 20) = v29;
    v30 = v27[3];
    *(a1 + 24) = v30;
    v31 = v27[4];
    *(a1 + 28) = v31;
    v32 = v27[5];
  }

  else
  {
    v33 = *v19;
    if (!*v19 || (v34 = *v22) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v51, "!rowFilter.empty() && !columnFilter.empty()");
      std::string::basic_string[abi:ne200100]<0>(v50, "init");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
      cv::Exception::Exception(v52, 4294967081, v51, v50, __p, 170);
      cv::error(v52, v35);
    }

    v29 = *(v33 + 8);
    v30 = *(v34 + 8);
    *(a1 + 20) = v29;
    *(a1 + 24) = v30;
    v31 = *(v33 + 12);
    v32 = *(v34 + 12);
    *(a1 + 28) = v31;
  }

  *(a1 + 32) = v32;
  if (v31 < 0 || v31 >= v29 || v32 < 0 || v32 >= v30)
  {
    std::string::basic_string[abi:ne200100]<0>(v51, "0 <= anchor.x && anchor.x < ksize.width && 0 <= anchor.y && anchor.y < ksize.height");
    std::string::basic_string[abi:ne200100]<0>(v50, "init");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v52, 4294967081, v51, v50, __p, 182);
    cv::error(v52, v36);
  }

  v37 = (((a5 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a5 & 7))) & 3);
  v38 = v37 >> ((*(a1 + 8) >> 1) & 2);
  *(a1 + 104) = v38;
  if (v29 <= 2)
  {
    v29 = 2;
  }

  v39 = v29 - 1;
  std::vector<float>::resize((a1 + 80), (v29 - 1) * v38);
  *(a1 + 208) = 0;
  *(a1 + 36) = 0;
  *(a1 + 192) = *(a1 + 184);
  if (!*(a1 + 72) || !*(a1 + 76))
  {
    v40 = *(a1 + 160);
    v41 = v39 * v37;
    v42 = *(a1 + 168) - v40;
    v43 = v41 >= v42;
    v44 = v41 - v42;
    if (v44 != 0 && v43)
    {
      std::vector<unsigned char>::__append((a1 + 160), v44);
      v40 = *(a1 + 160);
    }

    else if (!v43)
    {
      *(a1 + 168) = v40 + v41;
    }

    v45 = *(a1 + 8);
    v46 = (v45 >> 3) & 0x1FF;
    if (((v45 >> 3) & 0x1FC) != 0)
    {
      v47 = 24;
    }

    else
    {
      v47 = 8 * v46;
    }

    cv::scalarToRawData(a10, v40, v47 & 0xFFFFFFF8 | *(a1 + 8) & 7, v39 + v39 * v46);
  }

  result = NAN;
  *(a1 + 40) = -1;
  return result;
}

void sub_22D1F58B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::FilterEngine::~FilterEngine(cv::FilterEngine *this)
{
  *this = &unk_284054B88;
  v2 = *(this + 37);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(this + 36);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    free(*(this + 37));
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  v4 = *(this + 35);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    v5 = *(this + 34);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    free(*(this + 35));
  }

  *(this + 34) = 0;
  *(this + 35) = 0;
  v6 = *(this + 33);
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    v7 = *(this + 32);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    free(*(this + 33));
  }

  *(this + 32) = 0;
  *(this + 33) = 0;
  v8 = *(this + 29);
  if (v8)
  {
    *(this + 30) = v8;
    operator delete(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    *(this + 24) = v9;
    operator delete(v9);
  }

  v10 = *(this + 20);
  if (v10)
  {
    *(this + 21) = v10;
    operator delete(v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    *(this + 18) = v11;
    operator delete(v11);
  }

  v12 = *(this + 14);
  if (v12)
  {
    *(this + 15) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }
}

{
  cv::FilterEngine::~FilterEngine(this);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::FilterEngine::start(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v5 = *a2;
  v6 = *a3;
  *&v7 = *a2;
  *(&v7 + 1) = v6;
  *(a1 + 40) = v7;
  v9 = *(a3 + 2);
  v8 = *(a3 + 3);
  *(a1 + 56) = v9;
  *(a1 + 60) = v8;
  if ((v6 & 0x80000000) != 0 || v6 < 0 || v9 < 0 || v8 < 0 || ((v10 = v8 + HIDWORD(v6), v9 + v6 <= v5) ? (v11 = v10 <= SHIDWORD(v5)) : (v11 = 0), !v11))
  {
    std::string::basic_string[abi:ne200100]<0>(v87, "roi.x >= 0 && roi.y >= 0 && roi.width >= 0 && roi.height >= 0 && roi.x + roi.width <= wholeSize.width && roi.y + roi.height <= wholeSize.height");
    std::string::basic_string[abi:ne200100]<0>(v86, "start");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v88, 4294967081, v87, v86, __p, 212);
    cv::error(v88, v12);
  }

  v13 = (((*(a1 + 8) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 8) & 7))) & 3);
  v14 = (((*(a1 + 16) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 16) & 7))) & 3);
  if (*(a1 + 160) == *(a1 + 168))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(a1 + 160);
  }

  v16 = *(a1 + 24);
  v17 = v16 + 3;
  if (a4 >= 0)
  {
    v17 = a4;
  }

  v18 = *(a1 + 32);
  v19 = v16 + ~v18;
  if (v18 > v19)
  {
    v19 = *(a1 + 32);
  }

  v20 = (2 * v19) | 1;
  v21 = 2 * v19;
  if (v17 <= v20)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = v17;
  }

  if (*(a1 + 36) < *(a1 + 56) || v22 != ((*(a1 + 240) - *(a1 + 232)) >> 3))
  {
    std::vector<unsigned char *>::resize((a1 + 232), v22);
    v23 = *(a1 + 136);
    if (*(a1 + 36) <= *(a1 + 56))
    {
      v24 = *(a1 + 56);
    }

    else
    {
      v24 = *(a1 + 36);
    }

    *(a1 + 36) = v24;
    v25 = v13 * (v24 + *(a1 + 20) - 1);
    v26 = *(a1 + 144) - v23;
    if (v25 <= v26)
    {
      if (v25 < v26)
      {
        *(a1 + 144) = v23 + v25;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 136), v25 - v26);
      v24 = *(a1 + 36);
    }

    if (!*(a1 + 76))
    {
      v27 = *(a1 + 184);
      v28 = *(a1 + 20);
      v29 = ((((*(a1 + 16) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 16) & 7))) & 3)) * (v24 + v28 + 15);
      v30 = *(a1 + 192) - v27;
      if (v29 <= v30)
      {
        if (v29 < v30)
        {
          *(a1 + 192) = v27 + v29;
        }
      }

      else
      {
        std::vector<unsigned char>::__append((a1 + 184), v29 - v30);
        v27 = *(a1 + 184);
        v24 = *(a1 + 36);
        v28 = *(a1 + 20);
      }

      v31 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
      v32 = (v24 + v28 - 1) * v13;
      v33 = *(a1 + 256);
      v34 = v31;
      if (!v33)
      {
        v34 = *(a1 + 136);
      }

      if (v32 >= 1)
      {
        v35 = 0;
        LODWORD(v36) = *(a1 + 168) - *(a1 + 160);
        do
        {
          if (v32 - v35 >= v36)
          {
            v36 = v36;
          }

          else
          {
            v36 = (v32 - v35);
          }

          if (v36 >= 1)
          {
            v37 = (v34 + v35);
            v38 = v36;
            v39 = v15;
            do
            {
              v40 = *v39++;
              *v37++ = v40;
              --v38;
            }

            while (v38);
          }

          v35 += v36;
        }

        while (v35 < v32);
        v33 = *(a1 + 256);
        v24 = *(a1 + 36);
      }

      if (!v33)
      {
        (*(**(a1 + 272) + 16))(*(a1 + 272), *(a1 + 136));
        v24 = *(a1 + 36);
      }
    }

    v41 = *(a1 + 256);
    if (v41)
    {
      LODWORD(v41) = *(a1 + 20) - 1;
    }

    v42 = v24 + v41 + 15;
    v43 = *(a1 + 112);
    v44 = (v14 * (v42 & 0xFFFFFFF0)) * ((*(a1 + 240) - *(a1 + 232)) >> 3) + 16;
    v45 = *(a1 + 120) - v43;
    if (v44 <= v45)
    {
      if (v44 < v45)
      {
        *(a1 + 120) = v43 + v44;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 112), v44 - v45);
    }
  }

  v46 = *(a1 + 56);
  v47 = *(a1 + 256);
  v48 = *(a1 + 20);
  v49 = v48 - 1;
  if (!v47)
  {
    v49 = 0;
  }

  *(a1 + 208) = ((v46 + v49 + 15) & 0xFFFFFFF0) * v14;
  v50 = *(a1 + 28);
  v51 = *(a1 + 48);
  v52 = v50 - v51;
  LODWORD(v53) = v52 & ~(v52 >> 31);
  v54 = *(a1 + 40);
  v55 = v46 + v51 + ~v50 + v48 - v54;
  v56 = v55 & ~(v55 >> 31);
  *(a1 + 64) = v53;
  *(a1 + 68) = v56;
  if (v50 > v51 || v55 >= 1)
  {
    if (*(a1 + 72))
    {
      if (v50 >= v51)
      {
        v57 = v51;
      }

      else
      {
        v57 = v50;
      }

      v58 = v57 - v51;
      v59 = *(a1 + 104);
      v60 = *(a1 + 80);
      if (v52 >= 1)
      {
        v61 = 0;
        v62 = (v60 + 8);
        v83 = vdupq_n_s64(4uLL);
        v84 = vdupq_n_s64(v59 - 1);
        do
        {
          v63 = cv::borderInterpolate((v61 - v53), v54, *(a1 + 72));
          if (v59 >= 1)
          {
            v64 = (v63 + v58) * v59;
            v65 = (v59 + 3) & 0xFFFFFFFC;
            v66 = v62;
            v67 = xmmword_22D297DE0;
            v68 = xmmword_22D297DD0;
            do
            {
              v69 = vmovn_s64(vcgeq_u64(v84, v67));
              if (vuzp1_s16(v69, *v67.i8).u8[0])
              {
                *(v66 - 2) = v64;
              }

              if (vuzp1_s16(v69, *&v67).i8[2])
              {
                *(v66 - 1) = v64 + 1;
              }

              if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v84, *&v68))).i32[1])
              {
                *v66 = v64 + 2;
                v66[1] = v64 + 3;
              }

              v68 = vaddq_s64(v68, v83);
              v67 = vaddq_s64(v67, v83);
              v64 += 4;
              v66 += 4;
              v65 -= 4;
            }

            while (v65);
          }

          ++v61;
          v53 = *(a1 + 64);
          v62 += v59;
        }

        while (v61 < v53);
        v56 = *(a1 + 68);
      }

      if (v56 >= 1)
      {
        v70 = 0;
        do
        {
          v71 = cv::borderInterpolate((v70 + v54), v54, *(a1 + 72));
          if (v59 >= 1)
          {
            v72 = 0;
            do
            {
              *(v60 + 4 * (v72 + v59 * (v70 + *(a1 + 64)))) = (v71 + v58) * v59 + v72;
              ++v72;
            }

            while (v59 != v72);
          }

          ++v70;
        }

        while (v70 < *(a1 + 68));
      }
    }

    else
    {
      if (v47)
      {
        v73 = (*(a1 + 240) - *(a1 + 232)) >> 3;
        if (v73 < 1)
        {
          goto LABEL_91;
        }
      }

      else
      {
        LODWORD(v73) = 1;
      }

      v74 = 0;
      do
      {
        if (*(a1 + 256))
        {
          v75 = (((*(a1 + 112) + 15) & 0xFFFFFFFFFFFFFFF0) + *(a1 + 208) * v74);
        }

        else
        {
          v75 = *(a1 + 136);
        }

        memcpy(v75, v15, *(a1 + 64) * v13);
        memcpy(&v75[v13 * (*(a1 + 20) + *(a1 + 56) + ~*(a1 + 68))], v15, *(a1 + 68) * v13);
        ++v74;
      }

      while (v73 != v74);
    }
  }

LABEL_91:
  *(a1 + 224) = 0;
  v76 = *(a1 + 52);
  v77 = *(a1 + 32);
  v78 = (v76 - v77) & ~((v76 - v77) >> 31);
  *(a1 + 212) = v78;
  *(a1 + 216) = v78;
  v79 = v76 + *(a1 + 60) + ~v77 + *(a1 + 24);
  if (*(a1 + 44) < v79)
  {
    v79 = *(a1 + 44);
  }

  *(a1 + 220) = v79;
  v80 = *(a1 + 288);
  if (v80)
  {
    (*(*v80 + 24))(v80);
  }

  v81 = *(a1 + 256);
  if (v81)
  {
    (*(*v81 + 24))(v81);
  }

  return *(a1 + 212);
}

void sub_22D1F6200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  cv::Exception::~Exception(&a35);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned char *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned char *>::__append(a1, a2 - v2);
  }
}

uint64_t cv::FilterEngine::start(_DWORD *a1, uint64_t a2, int *a3, char a4, uint64_t a5)
{
  v7 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  if (*a3)
  {
LABEL_7:
    if (v7 < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v10 != -1)
  {
    v8 = 0;
    if (v7 < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v9 != -1)
  {
    v8 = 0;
    v10 = -1;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = *(a2 + 8);
  v10 = *(a2 + 12);
  if (v7 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v8 < 0 || v10 < 0 || v9 < 0 || (v11 = *(a2 + 12), v10 + v7 > v11) || (v12 = *(a2 + 8), v9 + v8 > v12))
  {
LABEL_13:
    std::string::basic_string[abi:ne200100]<0>(v20, "srcRoi.x >= 0 && srcRoi.y >= 0 && srcRoi.width >= 0 && srcRoi.height >= 0 && srcRoi.x + srcRoi.width <= src.cols && srcRoi.y + srcRoi.height <= src.rows");
    std::string::basic_string[abi:ne200100]<0>(&v18, "start");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v21, 4294967081, v20, &v18, __p, 317);
    cv::error(v21, v13);
  }

  v14 = 0;
  v15 = 0;
  v20[0] = 0;
  v18 = v11;
  v19 = v12;
  if ((a4 & 1) == 0)
  {
    cv::Mat::locateROI(a2, &v18, v20);
    v11 = v18;
    v12 = v19;
    v15 = v20[0];
    v14 = HIDWORD(v20[0]);
  }

  __p[0] = v11;
  __p[1] = v12;
  v21[0] = v15 + v7;
  v21[1] = v14 + v8;
  v21[2] = v10;
  v21[3] = v9;
  (*(*a1 + 16))(a1, __p, v21, a5);
  return (a1[53] - HIDWORD(v20[0]));
}

void sub_22D1F6464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::FilterEngine::proceed(cv::FilterEngine *this, const unsigned __int8 *a2, int a3, int a4, unsigned __int8 *a5, unsigned int a6)
{
  if (*(this + 10) < 1 || *(this + 11) <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v95, "wholeSize.width > 0 && wholeSize.height > 0");
    std::string::basic_string[abi:ne200100]<0>(v94, "proceed");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    v7 = cv::Exception::Exception(v96, 4294967081, v95, v94, __p, 342);
    cv::error(v7, v8);
  }

  v9 = *(this + 16);
  v10 = *(this + 17);
  if (*(this + 7) >= *(this + 12))
  {
    v11 = *(this + 12);
  }

  else
  {
    v11 = *(this + 7);
  }

  v92 = (v9 > 0 || v10 >= 1) && *(this + 18) != 0;
  v89 = *(this + 10);
  v90 = *(this + 29);
  v84 = *(this + 14);
  v12 = *(this + 26);
  v71 = *(this + 6);
  v72 = *(this + 8);
  v13 = *(this + 32);
  if (*(this + 55) - (*(this + 53) + *(this + 56)) >= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = *(this + 55) - (*(this + 53) + *(this + 56));
  }

  if (!a2 || !a5 || v14 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v95, "src && dst && count > 0");
    std::string::basic_string[abi:ne200100]<0>(v94, "proceed");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    v15 = cv::Exception::Exception(v96, 4294967081, v95, v94, __p, 361);
    cv::error(v15, v16);
  }

  v81 = 0;
  v17 = (((*(this + 2) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(this + 2) & 7))) & 3);
  v18 = (*(this + 30) - v90) >> 3;
  v70 = ((*(this + 4) >> 3) & 0x1FF) + 1;
  v19 = &a2[-(v11 * v17)];
  v20 = (v9 * v17);
  v91 = v20;
  v21 = *(this + 5) + v84 + ~v10;
  v22 = (v21 - v9) * v17;
  v87 = 4 * v12;
  v88 = v17;
  v86 = (v10 * v17);
  v23 = v21 * v17;
  v24 = (v9 * v12);
  v85 = (v10 * v12);
  v25 = a3;
  v75 = v71 - 1;
  v80 = v23;
  v82 = v24;
  v83 = v20;
  v78 = &v89[v24];
  v79 = &v89[v20];
  v77 = v21 * v12;
  v26 = a6;
  v27 = a5;
  v28 = v14;
  while (2)
  {
    v76 = v27;
    v29 = *(this + 13);
    v30 = v18 - (v72 + *(this + 53) + *(this + 56));
    v31 = __OFADD__(v30, v29);
    v32 = v30 + v29;
    if ((v32 < 0) ^ v31 | (v32 == 0))
    {
      v32 = v18 - v71 + 1;
    }

    if (v28 >= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v28;
    }

    v73 = v33;
    v74 = v28;
    if (v33 >= 1)
    {
      do
      {
        v34 = *(this + 53);
        v35 = *(this + 56);
        v36 = ((*(this + 14) + 15) & 0xFFFFFFFFFFFFFFF0) + *(this + 52) * ((v34 - *(this + 54) + v35) % v18);
        v37 = v36;
        if (!v13)
        {
          v37 = *(this + 17);
        }

        *(this + 56) = v35 + 1;
        if (v35 >= v18)
        {
          *(this + 56) = v35;
          *(this + 53) = v34 + 1;
        }

        memcpy(v37 + v91, v19, v22);
        if (v92)
        {
          if (v87 == v88)
          {
            v38 = v82;
            v39 = v89;
            v40 = v37;
            if (v82 >= 1)
            {
              do
              {
                v41 = *v39++;
                *v40++ = *&v19[4 * v41];
                --v38;
              }

              while (v38);
            }

            if (v85 >= 1)
            {
              v42 = v78;
              v43 = &v37[v77];
              v44 = v85;
              do
              {
                v45 = *v42++;
                *v43++ = *&v19[4 * v45];
                --v44;
              }

              while (v44);
            }
          }

          else
          {
            v46 = v83;
            v47 = v89;
            v48 = v37;
            if (v83 >= 1)
            {
              do
              {
                v49 = *v47++;
                *v48++ = v19[v49];
                --v46;
              }

              while (v46);
            }

            if (v86 >= 1)
            {
              v50 = v79;
              v51 = v37 + v80;
              v52 = v86;
              do
              {
                v53 = *v50++;
                *v51++ = v19[v53];
                --v52;
              }

              while (v52);
            }
          }
        }

        if (!v13)
        {
          (*(**(this + 34) + 16))(*(this + 34), v37, v36, v84, ((*(this + 2) >> 3) & 0x1FFu) + 1);
        }

        v19 += v25;
      }

      while (v33-- > 1);
    }

    result = v81;
    v56 = v75 + *(this + 15) - (v81 + *(this + 57));
    if (v56 >= v18)
    {
      v57 = v18;
    }

    else
    {
      v57 = v56;
    }

    if (v57 < 1)
    {
      LODWORD(v57) = 0;
      goto LABEL_63;
    }

    v58 = 0;
    while (1)
    {
      v59 = cv::borderInterpolate((v81 - v72 + v58 + *(this + 57) + *(this + 13)), *(this + 11), *(this + 19));
      if (v59 < 0)
      {
        v63 = (*(this + 23) + 15) & 0xFFFFFFFFFFFFFFF0;
        goto LABEL_58;
      }

      v60 = *(this + 53);
      if (v59 < v60)
      {
        std::string::basic_string[abi:ne200100]<0>(v95, "srcY >= startY");
        std::string::basic_string[abi:ne200100]<0>(v94, "proceed");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
        v61 = cv::Exception::Exception(v96, 4294967081, v95, v94, __p, 417);
        cv::error(v61, v62);
      }

      if (v59 >= *(this + 56) + v60)
      {
        break;
      }

      v63 = ((*(this + 14) + 15) & 0xFFFFFFFFFFFFFFF0) + *(this + 52) * ((v59 - *(this + 54)) % v18);
LABEL_58:
      *(v90 + 8 * v58++) = v63;
      if (v57 == v58)
      {
        goto LABEL_62;
      }
    }

    LODWORD(v57) = v58;
LABEL_62:
    v26 = a6;
    result = v81;
LABEL_63:
    if (v57 >= v71)
    {
      v64 = (v57 - v75);
      v65 = *(this + 32);
      if (v65)
      {
        (*(*v65 + 16))(v65, v90, v76, v26, v64, *(this + 14), v70);
      }

      else
      {
        (*(**(this + 36) + 16))(*(this + 36), v90, v76, v26, v64, *(this + 14) * v70);
      }

      v28 = v74 - v73;
      v27 = &v76[v64 * v26];
      v81 += v64;
      continue;
    }

    break;
  }

  v66 = *(this + 57) + result;
  *(this + 57) = v66;
  if (v66 > *(this + 15))
  {
    std::string::basic_string[abi:ne200100]<0>(v95, "dstY <= roi.height");
    std::string::basic_string[abi:ne200100]<0>(v94, "proceed");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    v67 = cv::Exception::Exception(v96, 4294967081, v95, v94, __p, 434);
    cv::error(v67, v68);
  }

  return result;
}

void sub_22D1F6C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  cv::Exception::~Exception((v47 - 208));
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

_DWORD *cv::FilterEngine::apply(_DWORD *result, uint64_t a2, _DWORD *a3, int32x4_t *a4, _DWORD *a5, uint64_t a6)
{
  v7 = result;
  if ((*a2 & 0xFFF) != result[2] || (*a3 & 0xFFF) != result[3])
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "src.type() == srcType && dst.type() == dstType");
    std::string::basic_string[abi:ne200100]<0>(v19, "apply");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 442);
    cv::error(v21, v8);
  }

  v9 = *a4;
  v17 = v9;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v9, xmmword_22D2985E0)))))
  {
    v10 = v9.i32[2];
    v11 = v9.i32[3];
  }

  else
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 12);
    v17.i64[0] = 0;
    v17.i64[1] = __PAIR64__(v11, v10);
  }

  if (v11 * v10)
  {
    if ((*a5 & 0x80000000) != 0 || (v12 = a5[1], v12 < 0) || *a5 + v10 > a3[3] || v12 + v11 > a3[2])
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "dstOfs.x >= 0 && dstOfs.y >= 0 && dstOfs.x + srcRoi.width <= dst.cols && dstOfs.y + srcRoi.height <= dst.rows");
      std::string::basic_string[abi:ne200100]<0>(v19, "apply");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
      cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 453);
      cv::error(v21, v13);
    }

    v14 = (*(*result + 24))(result, a2, &v17, a6, 0xFFFFFFFFLL);
    v15 = *(a2 + 4);
    if (v15 < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(*(a2 + 72) + 8 * v15 - 8);
    }

    return (*(*v7 + 32))(v7, *(a2 + 16) + *(a2 + 80) * v14 + v16 * v17.i32[0]);
  }

  return result;
}

void sub_22D1F6FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::getKernelType(void (***a1)(uint64_t *__return_ptr), _DWORD *a2)
{
  (**a1)(&v30);
  if ((v30 & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "_kernel.channels() == 1");
    std::string::basic_string[abi:ne200100]<0>(v25, "getKernelType");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v26, 4294967081, v23, v25, __p, 472);
    cv::error(v26, v3);
  }

  v4 = v31;
  v5 = v32;
  v27 = v26 + 8;
  v28 = v29;
  v29[0] = 0;
  v29[1] = 0;
  LODWORD(v26[0]) = 1124007936;
  memset(v26 + 4, 0, 48);
  v26[3] = 0u;
  cv::_OutputArray::_OutputArray(v23, v26);
  cv::Mat::convertTo(&v30, v23, 6, 1.0, 0.0);
  v6 = v5 * v4;
  if (v31 == 1 || v32 == 1)
  {
    v7 = 12;
    if (((2 * *a2) | 1) == v32)
    {
      if (((2 * a2[1]) | 1) == v31)
      {
        v7 = 15;
      }

      else
      {
        v7 = 12;
      }
    }
  }

  else
  {
    v7 = 12;
  }

  if (v6 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v8 = *&v26[1];
    v9 = 8 * v6;
    v10 = 0.0;
    do
    {
      v11 = *v8++;
      v12 = v11;
      v13 = *(*&v26[1] - 8 + v9);
      v14 = v7 & 0xFFFFFFFE;
      if (v11 == v13)
      {
        v14 = v7;
      }

      if (v12 != -v13)
      {
        v14 &= ~2u;
      }

      v15 = rint(v12);
      if (v12 < 0.0)
      {
        v14 &= ~4u;
      }

      if (v12 == v15)
      {
        v7 = v14;
      }

      else
      {
        v7 = v14 & 0xFFFFFFF7;
      }

      v10 = v10 + v12;
      v9 -= 8;
    }

    while (v9);
  }

  if (*(&v26[1] + 1) && atomic_fetch_add(*(&v26[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v26);
  }

  *&v26[1] = 0;
  memset(&v26[2], 0, 24);
  if (SDWORD1(v26[0]) >= 1)
  {
    v16 = 0;
    v17 = v27;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v26[0]));
  }

  *(&v26[1] + 1) = 0;
  if (v28)
  {
    v18 = v28 == v29;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    free(v28);
  }

  if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v30);
  }

  v33 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (SHIDWORD(v30) >= 1)
  {
    v19 = 0;
    v20 = v38;
    do
    {
      *(v20 + 4 * v19++) = 0;
    }

    while (v19 < SHIDWORD(v30));
  }

  v34 = 0;
  if (v39)
  {
    v21 = v39 == &v40;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    free(v39);
  }

  if (fabs(v10 + -1.0) <= (fabs(v10) + 1.0) * 0.00000011920929)
  {
    return v7;
  }

  else
  {
    return v7 & 0xFFFFFFFB;
  }
}

void sub_22D1F7394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  cv::Mat::~Mat((v29 - 160));
  _Unwind_Resume(a1);
}

void cv::getLinearRowFilter(cv *this, uint64_t a2, void (***a3)(uint64_t *__return_ptr, void, uint64_t), const cv::_InputArray *a4, char a5)
{
  (**a3)(&v18, a3, 0xFFFFFFFFLL);
  v8 = this & 7;
  v9 = a2 & 7;
  if (v8 <= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = this & 7;
  }

  v11 = v9 >= v10 && ((a2 ^ this) & 0xFF8) == 0;
  if (!v11 || (v18 & 0xFFF) != v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v16, "cn == CV_MAT_CN(bufType) && ddepth >= std::max(sdepth, CV_32S) && kernel.type() == ddepth");
    std::string::basic_string[abi:ne200100]<0>(v15, "getLinearRowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v17, 4294967081, v16, v15, __p, 2834);
    cv::error(v17, v12);
  }

  if ((a5 & 3) != 0 && v20 + v19 <= 6)
  {
    if ((this & 7) == 0 && v9 == 4)
    {
      operator new();
    }

    if (v8 == 5 && v9 == 5)
    {
      operator new();
    }
  }

  if ((this & 7) == 0 && v9 == 4)
  {
    operator new();
  }

  if ((this & 7) == 0 && v9 == 5)
  {
    operator new();
  }

  if ((this & 7) == 0 && v9 == 6)
  {
    operator new();
  }

  if (v8 == 2 && v9 == 5)
  {
    operator new();
  }

  if (v8 == 2 && v9 == 6)
  {
    operator new();
  }

  if (v8 == 3 && v9 == 5)
  {
    operator new();
  }

  if (v8 == 3 && v9 == 6)
  {
    operator new();
  }

  if (v8 == 5 && v9 == 5)
  {
    operator new();
  }

  if (v8 == 5 && v9 == 6)
  {
    operator new();
  }

  if (v8 == 6 && v9 == 6)
  {
    operator new();
  }

  cv::format(v16, this, a2);
  std::string::basic_string[abi:ne200100]<0>(v15, "getLinearRowFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
  cv::Exception::Exception(v17, 4294967083, v16, v15, __p, 2873);
  cv::error(v17, v13);
}

void sub_22D1F7AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  cv::Mat::~Mat((v29 - 160));
  _Unwind_Resume(a1);
}

void cv::getLinearColumnFilter(cv *this, uint64_t a2, void (***a3)(uint64_t *__return_ptr, void, uint64_t), const cv::_InputArray *a4, char a5, int a6, double a7)
{
  (**a3)(&v20, a3, 0xFFFFFFFFLL);
  v11 = this & 7;
  v12 = a2 & 7;
  if (v12 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = a2 & 7;
  }

  if (((a2 ^ this) & 0xFF8) != 0 || v11 < v13 || (v20 & 0xFFF) != v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v18, "cn == CV_MAT_CN(bufType) && sdepth >= std::max(ddepth, CV_32S) && kernel.type() == sdepth");
    std::string::basic_string[abi:ne200100]<0>(v17, "getLinearColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(&v19, 4294967081, v18, v17, __p, 2889);
    cv::error(&v19, v14);
  }

  if ((a5 & 3) != 0)
  {
    if (v22 + v21 == 4)
    {
      if (v11 == 4 && (a2 & 7) == 0)
      {
        operator new();
      }

      if (v11 == 4 && v12 == 3 && !a6)
      {
        operator new();
      }

      if (v11 == 5 && v12 == 5)
      {
        operator new();
      }
    }

    if (v11 == 4 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v11 == 5 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v11 == 6 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v11 == 5 && v12 == 2)
    {
      operator new();
    }

    if (v11 == 6 && v12 == 2)
    {
      operator new();
    }

    if (v11 == 4 && v12 == 3)
    {
      operator new();
    }

    if (v11 == 5 && v12 == 3)
    {
      operator new();
    }

    if (v11 == 6 && v12 == 3)
    {
      operator new();
    }

    if (v11 == 5 && v12 == 5)
    {
      operator new();
    }

    if (v11 == 6 && v12 == 6)
    {
      operator new();
    }
  }

  else
  {
    if (v11 == 4 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v11 == 5 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v11 == 6 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v11 == 5 && v12 == 2)
    {
      operator new();
    }

    if (v11 == 6 && v12 == 2)
    {
      operator new();
    }

    if (v11 == 5 && v12 == 3)
    {
      operator new();
    }

    if (v11 == 6 && v12 == 3)
    {
      operator new();
    }

    if (v11 == 5 && v12 == 5)
    {
      operator new();
    }

    if (v11 == 6 && v12 == 6)
    {
      operator new();
    }
  }

  cv::format(v18, this, a2);
  std::string::basic_string[abi:ne200100]<0>(v17, "getLinearColumnFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
  cv::Exception::Exception(&v19, 4294967083, v18, v17, __p, 2970);
  cv::error(&v19, v15);
}

void cv::createSeparableLinearFilter(unsigned int a1, unsigned int a2, void (***a3)(uint64_t *__return_ptr, void, uint64_t), void (***a4)(uint64_t *__return_ptr, void, uint64_t), int *a5)
{
  (**a3)(&v46, a3, 0xFFFFFFFFLL);
  (**a4)(&v40, a4, 0xFFFFFFFFLL);
  v9 = (a1 >> 3) & 0x1FF;
  if (v9 != ((a2 >> 3) & 0x1FF))
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "cn == CV_MAT_CN(_dstType)");
    std::string::basic_string[abi:ne200100]<0>(&v30, "createSeparableLinearFilter");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v36, 4294967081, v31, &v30, &__p, 2988);
    cv::error(v36, v10);
  }

  if (*a5 < 0)
  {
    *a5 = (v47 + HIDWORD(v47) - 1) / 2;
  }

  if (a5[1] < 0)
  {
    a5[1] = (v41 + HIDWORD(v41) - 1) / 2;
  }

  cv::_InputArray::_InputArray(v36, &v46);
  v11 = *a5;
  if (v47 == 1)
  {
    v12 = *a5;
  }

  else
  {
    v12 = 0;
  }

  if (v47 == 1)
  {
    v11 = 0;
  }

  *v31 = __PAIR64__(v11, v12);
  KernelType = cv::getKernelType(v36, v31);
  cv::_InputArray::_InputArray(v36, &v40);
  v14 = a5[1];
  if (v41 == 1)
  {
    v15 = a5[1];
  }

  else
  {
    v15 = 0;
  }

  if (v41 == 1)
  {
    v14 = 0;
  }

  *v31 = __PAIR64__(v14, v15);
  v16 = cv::getKernelType(v36, v31);
  v17 = a2 & 7;
  v37 = &v36[8];
  v38 = v39;
  v39[0] = 0;
  v39[1] = 0;
  *v36 = 1124007936;
  memset(&v36[4], 0, 60);
  v32 = &v31[8];
  v33 = v34;
  v34[0] = 0;
  v34[1] = 0;
  *v31 = 1124007936;
  memset(&v31[4], 0, 60);
  if ((a1 & 7) <= v17)
  {
    v18 = a2 & 7;
  }

  else
  {
    v18 = a1 & 7;
  }

  if (v18 <= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = v18;
  }

  if ((a1 & 7) == 0 && ((a2 & 7) == 0 && KernelType == 5 && v16 == 5 || (KernelType & 3) != 0 && (v16 & 3) != 0 && v17 == 3 && (KernelType & v16 & 8) != 0))
  {
    v22 = v17 == 0;
    cv::_OutputArray::_OutputArray(&v30, v36);
    v23 = (1 << (8 * v22));
    cv::Mat::convertTo(&v46, &v30, 4, v23, 0.0);
    cv::_OutputArray::_OutputArray(&v30, v31);
    cv::Mat::convertTo(&v40, &v30, 4, v23, 0.0);
    v19 = 4;
    goto LABEL_66;
  }

  if ((v46 & 0xFFF) != v19)
  {
    cv::_OutputArray::_OutputArray(&v30, v36);
    cv::Mat::convertTo(&v46, &v30, v19, 1.0, 0.0);
    goto LABEL_49;
  }

  if (*(&v48 + 1))
  {
    atomic_fetch_add(*(&v48 + 1), 1u);
    if (*&v36[24])
    {
      if (atomic_fetch_add(*&v36[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v36);
      }
    }
  }

  *&v36[16] = 0;
  memset(&v36[32], 0, 24);
  if (*v36 <= 0)
  {
    *&v36[24] = 0;
    *v36 = v46;
  }

  else
  {
    v20 = 0;
    v21 = v37;
    do
    {
      *&v21[4 * v20++] = 0;
    }

    while (v20 < *&v36[4]);
    *&v36[24] = 0;
    *v36 = v46;
    if (*&v36[4] > 2)
    {
      goto LABEL_47;
    }
  }

  if (SHIDWORD(v46) <= 2)
  {
    *&v36[4] = HIDWORD(v46);
    *&v36[8] = v47;
    v24 = v51;
    v25 = v38;
    *v38 = *v51;
    v25[1] = v24[1];
LABEL_48:
    *&v36[16] = v48;
    *&v36[32] = v49;
    *&v36[48] = v50;
LABEL_49:
    if ((v40 & 0xFFF) != v19)
    {
      cv::_OutputArray::_OutputArray(&v30, v31);
      cv::Mat::convertTo(&v40, &v30, v19, 1.0, 0.0);
      goto LABEL_66;
    }

    if (*(&v42 + 1))
    {
      atomic_fetch_add(*(&v42 + 1), 1u);
    }

    if (*&v31[24] && atomic_fetch_add(*&v31[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v31);
    }

    *&v31[16] = 0;
    memset(&v31[32], 0, 24);
    if (*v31 <= 0)
    {
      *&v31[24] = 0;
      *v31 = v40;
    }

    else
    {
      v26 = 0;
      v27 = v32;
      do
      {
        *&v27[4 * v26++] = 0;
      }

      while (v26 < *&v31[4]);
      *&v31[24] = 0;
      *v31 = v40;
      if (*&v31[4] > 2)
      {
        goto LABEL_64;
      }
    }

    if (SHIDWORD(v40) <= 2)
    {
      *&v31[4] = HIDWORD(v40);
      *&v31[8] = v41;
      v28 = v45;
      v29 = v33;
      *v33 = *v45;
      v29[1] = v28[1];
LABEL_65:
      *&v31[32] = v43;
      *&v31[16] = v42;
      *&v31[48] = v44;
LABEL_66:
      cv::_InputArray::_InputArray(&v30, v36);
      cv::getLinearRowFilter((a1 & 0xFFF), v19 | (8 * v9), &v30, *a5, KernelType);
    }

LABEL_64:
    cv::Mat::copySize(v31, &v40);
    goto LABEL_65;
  }

LABEL_47:
  cv::Mat::copySize(v36, &v46);
  goto LABEL_48;
}

void sub_22D1F9228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a44);
  cv::Mat::~Mat(&a59);
  cv::Mat::~Mat((v59 - 200));
  _Unwind_Resume(a1);
}

void cv::preprocess2DKernel(cv::Mat *a1, void *a2, uint64_t a3)
{
  cv::_InputArray::_InputArray(v33, a1);
  v7 = cv::countNonZero(v33, v6);
  v8 = *a1 & 0xFFF;
  if (v7 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  if (v8 > 6 || ((1 << *a1) & 0x71) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "ktype == CV_8U || ktype == CV_32S || ktype == CV_32F || ktype == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(v31, "preprocess2DKernel");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v33, 4294967081, v32, v31, __p, 3055);
    cv::error(v33, v29);
  }

  std::vector<cv::Point_<int>>::resize(a2, v9);
  v11 = (((v8 >> 3) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3)) * v9;
  v12 = *a3;
  v13 = *(a3 + 8) - *a3;
  if (v11 <= v13)
  {
    if (v11 < v13)
    {
      *(a3 + 8) = &v12[v11];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a3, v11 - v13);
    v12 = *a3;
  }

  v14 = *(a1 + 2);
  if (v14 < 1)
  {
    return;
  }

  v15 = 0;
  v16 = 0;
  LODWORD(v17) = *(a1 + 3);
  do
  {
    if (v17 < 1)
    {
      goto LABEL_30;
    }

    v18 = 0;
    v19 = 0;
    v20 = *(a1 + 2) + *(a1 + 10) * v15;
    do
    {
      if (v8 == 5)
      {
        v25 = *(v20 + v18);
        if (v25 == 0.0)
        {
          goto LABEL_28;
        }

        v26 = (*a2 + 8 * v16);
        *v26 = v19;
        v26[1] = v15;
        *&v12[4 * v16] = v25;
      }

      else if (v8 == 4)
      {
        v23 = *(v20 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

        v24 = (*a2 + 8 * v16);
        *v24 = v19;
        v24[1] = v15;
        *&v12[4 * v16] = v23;
      }

      else if (v8)
      {
        v27 = *(v20 + 8 * v19);
        if (v27 == 0.0)
        {
          goto LABEL_28;
        }

        v28 = (*a2 + 8 * v16);
        *v28 = v19;
        v28[1] = v15;
        *&v12[8 * v16] = v27;
      }

      else
      {
        v21 = *(v20 + v19);
        if (!v21)
        {
          goto LABEL_28;
        }

        v22 = (*a2 + 8 * v16);
        *v22 = v19;
        v22[1] = v15;
        v12[v16] = v21;
      }

      ++v16;
LABEL_28:
      ++v19;
      v17 = *(a1 + 3);
      v18 += 4;
    }

    while (v19 < v17);
    v14 = *(a1 + 2);
LABEL_30:
    ++v15;
  }

  while (v15 < v14);
}

void sub_22D1F957C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void std::vector<cv::Point_<int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<cv::Point_<int>>::__append(a1, a2 - v2);
  }
}

void cv::getLinearFilter(uint64_t a1, uint64_t a2, void (***a3)(void *__return_ptr, void, uint64_t), void *a4, char a5)
{
  (**a3)(v28, a3, 0xFFFFFFFFLL);
  v9 = a1 & 7;
  v10 = a2 & 7;
  if (v10 < v9 || ((a2 ^ a1) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "cn == CV_MAT_CN(dstType) && ddepth >= sdepth");
    std::string::basic_string[abi:ne200100]<0>(v26, "getLinearFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v27, 4294967081, v21, v26, __p, 3185);
    cv::error(v27, v11);
  }

  *v21 = *a4;
  v26[0] = vrev64_s32(*v32);
  cv::normalizeAnchor(v21, v26, v27);
  *a4 = *v27;
  if (v10 == 6 || v9 == 6)
  {
    v13 = 6;
  }

  else
  {
    v13 = 5;
  }

  v22 = &v21[8];
  v23 = v24;
  v24[0] = 0;
  v24[1] = 0;
  *v21 = 1124007936;
  memset(&v21[4], 0, 60);
  if ((v28[0] & 0xFFF) != v13)
  {
    cv::_OutputArray::_OutputArray(v27, v21);
    v16 = 1.0;
    if ((v28[0] & 0xFFF) == 4)
    {
      v16 = 1.0 / (1 << a5);
    }

    cv::Mat::convertTo(v28, v27, v13, v16, 0.0);
LABEL_28:
    if (((a2 | a1) & 7) != 0)
    {
      if ((a1 & 7) == 0 && v10 == 2)
      {
        operator new();
      }

      if ((a1 & 7) == 0 && v10 == 3)
      {
        operator new();
      }

      if ((a1 & 7) == 0 && v10 == 5)
      {
        operator new();
      }

      if ((a1 & 7) == 0 && v10 == 6)
      {
        operator new();
      }

      if (v9 == 2 && v10 == 2)
      {
        operator new();
      }

      if (v9 == 2 && v10 == 5)
      {
        operator new();
      }

      if (v9 == 2 && v10 == 6)
      {
        operator new();
      }

      if (v9 == 3 && v10 == 3)
      {
        operator new();
      }

      if (v9 == 3 && v10 == 5)
      {
        operator new();
      }

      if (v9 == 3 && v10 == 6)
      {
        operator new();
      }

      if (v9 == 5 && v10 == 5)
      {
        operator new();
      }

      if (v9 == 6 && v10 == 6)
      {
        operator new();
      }

      cv::format(v26, a1, a2);
      std::string::basic_string[abi:ne200100]<0>(__p, "getLinearFilter");
      std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
      cv::Exception::Exception(v27, 4294967083, v26, __p, v20, 3250);
      cv::error(v27, v19);
    }

    operator new();
  }

  if (v29)
  {
    atomic_fetch_add(v29, 1u);
    if (*&v21[24])
    {
      if (atomic_fetch_add(*&v21[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v21);
      }
    }
  }

  *&v21[16] = 0;
  memset(&v21[32], 0, 24);
  if (*&v21[4] <= 0)
  {
    *&v21[24] = 0;
    *v21 = v28[0];
  }

  else
  {
    v14 = 0;
    v15 = v22;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < *&v21[4]);
    *&v21[24] = 0;
    *v21 = v28[0];
    if (*&v21[4] > 2)
    {
      goto LABEL_26;
    }
  }

  if (SHIDWORD(v28[0]) <= 2)
  {
    *&v21[4] = HIDWORD(v28[0]);
    *&v21[8] = v28[1];
    v17 = v33;
    v18 = v23;
    *v23 = *v33;
    v18[1] = v17[1];
LABEL_27:
    *&v21[16] = v28[2];
    *&v21[24] = v29;
    *&v21[32] = v30;
    *&v21[48] = v31;
    goto LABEL_28;
  }

LABEL_26:
  cv::Mat::copySize(v21, v28);
  goto LABEL_27;
}

void sub_22D1F9FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44)
{
  cv::Exception::~Exception(&a44);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  cv::Mat::~Mat(&a17);
  cv::Mat::~Mat((v44 - 192));
  _Unwind_Resume(a1);
}

int *cv::normalizeAnchor@<X0>(int *result@<X0>, int *a2@<X1>, int *a3@<X8>)
{
  v4 = *result;
  if (*result == -1)
  {
    v4 = *a2 / 2;
    *result = v4;
  }

  v5 = result[1];
  if (v5 == -1)
  {
    v5 = a2[1] / 2;
    result[1] = v5;
    if (v4 < 0)
    {
      goto LABEL_10;
    }
  }

  else if (v4 < 0)
  {
    goto LABEL_10;
  }

  if (v4 >= *a2 || v5 < 0 || v5 >= a2[1])
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(v9, "anchor.inside(Rect(0, 0, ksize.width, ksize.height))");
    std::string::basic_string[abi:ne200100]<0>(v8, "normalizeAnchor");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/precomp.hpp");
    cv::Exception::Exception(v10, 4294967081, v9, v8, __p, 88);
    cv::error(v10, v6);
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

{
  v4 = *result;
  if (*result == -1)
  {
    v4 = *a2 / 2;
    *result = v4;
  }

  v5 = result[1];
  if (v5 == -1)
  {
    v5 = a2[1] / 2;
    result[1] = v5;
    if (v4 < 0)
    {
      goto LABEL_10;
    }
  }

  else if (v4 < 0)
  {
    goto LABEL_10;
  }

  if (v4 >= *a2 || v5 < 0 || v5 >= a2[1])
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(v9, "anchor.inside(Rect(0, 0, ksize.width, ksize.height))");
    std::string::basic_string[abi:ne200100]<0>(v8, "normalizeAnchor");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/precomp.hpp");
    cv::Exception::Exception(v10, 4294967081, v9, v8, __p, 88);
    cv::error(v10, v6);
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

void sub_22D1FA26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::createLinearFilter(unsigned __int16 a1, unsigned __int16 a2, void (***a3)(__int128 *__return_ptr, void, uint64_t), void **a4)
{
  (**a3)(&v21, a3, 0xFFFFFFFFLL);
  if (((a2 ^ a1) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "cn == CV_MAT_CN(_dstType)");
    std::string::basic_string[abi:ne200100]<0>(&v12, "createLinearFilter");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(&v13, 4294967081, &v10, &v12, &__p, 3266);
    cv::error(&v13, v7);
  }

  v14 = v22;
  v13 = v21;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = &v13 + 8;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  if (v23)
  {
    atomic_fetch_add(v23, 1u);
  }

  if (SDWORD1(v21) > 2)
  {
    DWORD1(v13) = 0;
    cv::Mat::copySize(&v13, &v21);
  }

  else
  {
    v8 = v26;
    v9 = v19;
    *v19 = *v26;
    v9[1] = v8[1];
  }

  cv::_InputArray::_InputArray(&v10, &v13);
  __p = *a4;
  cv::getLinearFilter(a1 & 0xFFF, a2 & 0xFFF, &v10, &__p, 0);
}

void cv::filter2D(void (***a1)(void *__return_ptr), uint64_t a2, int a3, void (***a4)(uint64_t *__return_ptr, void, uint64_t), void *a5, char a6, double a7)
{
  v65 = *MEMORY[0x277D85DE8];
  (**a1)(v55);
  (**a4)(&v44, a4, 0xFFFFFFFFLL);
  if (a3 < 0)
  {
    LOBYTE(a3) = v55[0];
  }

  v37[0] = vrev64_s32(*v61);
  (*(*a2 + 128))(a2, v37, v55[0] & 0xFF8 | a3 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v37, a2, 0xFFFFFFFFLL);
  *&v64[0] = *a5;
  v32 = vrev64_s32(*v52);
  cv::normalizeAnchor(v64, &v32, v33);
  *a5 = *v33;
  if (v45 * v46 < 50)
  {
    v15 = v55[0];
    v16 = v37[0];
    cv::_InputArray::_InputArray(v33, &v44);
    v31 = *a5;
    memset(v64, 0, sizeof(v64));
    cv::createLinearFilter(v15 & 0xFFF, v16 & 0xFFF, v33, &v31);
  }

  v34 = &v33[8];
  v35 = v36;
  v36[0] = 0;
  v36[1] = 0;
  *v33 = 1124007936;
  memset(&v33[4], 0, 60);
  if (v56 == v38)
  {
    *&v64[0] = *v41;
    cv::Mat::create(v33, 2, v64, v37[0] & 0xFFF);
    goto LABEL_21;
  }

  if (*(&v38 + 1))
  {
    atomic_fetch_add(*(&v38 + 1), 1u);
    if (*&v33[24])
    {
      if (atomic_fetch_add(*&v33[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v33);
      }
    }
  }

  *&v33[16] = 0;
  memset(&v33[32], 0, 24);
  if (*&v33[4] <= 0)
  {
    *&v33[24] = 0;
    *v33 = v37[0];
  }

  else
  {
    v13 = 0;
    v14 = v34;
    do
    {
      *&v14[4 * v13++] = 0;
    }

    while (v13 < *&v33[4]);
    *&v33[24] = 0;
    *v33 = v37[0];
    if (*&v33[4] > 2)
    {
      goto LABEL_19;
    }
  }

  if (SHIDWORD(v37[0]) > 2)
  {
LABEL_19:
    cv::Mat::copySize(v33, v37);
    goto LABEL_20;
  }

  *&v33[4] = HIDWORD(v37[0]);
  *&v33[8] = v37[1];
  v17 = v42;
  v18 = v35;
  *v35 = *v42;
  v18[1] = v17[1];
LABEL_20:
  *&v33[16] = v38;
  *&v33[32] = v39;
  *&v33[48] = v40;
LABEL_21:
  *&v64[0] = vrev64_s32(*v61);
  v32 = *a5;
  cv::crossCorr(v55, &v44, v33, v64, v55[0] & 0xFF8 | a3 & 7, &v32, a6, a7);
  if (*&v33[16] != v38)
  {
    cv::_OutputArray::_OutputArray(v64, v37);
    cv::Mat::copyTo(v33, v64);
  }

  if (*&v33[24] && atomic_fetch_add(*&v33[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v33);
  }

  *&v33[16] = 0;
  memset(&v33[32], 0, 24);
  if (*&v33[4] >= 1)
  {
    v19 = 0;
    v20 = v34;
    do
    {
      *&v20[4 * v19++] = 0;
    }

    while (v19 < *&v33[4]);
  }

  *&v33[24] = 0;
  if (v35)
  {
    v21 = v35 == v36;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    free(v35);
  }

  if (*(&v38 + 1) && atomic_fetch_add(*(&v38 + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v37);
  }

  *&v38 = 0;
  v39 = 0uLL;
  *&v40 = 0;
  if (SHIDWORD(v37[0]) >= 1)
  {
    v22 = 0;
    v23 = v41;
    do
    {
      *(v23 + v22++) = 0;
    }

    while (v22 < SHIDWORD(v37[0]));
  }

  *(&v38 + 1) = 0;
  if (v42)
  {
    v24 = v42 == &v43;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    free(v42);
  }

  if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v44);
  }

  v47 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (SHIDWORD(v44) >= 1)
  {
    v25 = 0;
    v26 = v52;
    do
    {
      v26->i32[v25++] = 0;
    }

    while (v25 < SHIDWORD(v44));
  }

  v48 = 0;
  if (v53)
  {
    v27 = v53 == &v54;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v53);
  }

  if (v57 && atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v55);
  }

  v56 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (SHIDWORD(v55[0]) >= 1)
  {
    v28 = 0;
    v29 = v61;
    do
    {
      v29->i32[v28++] = 0;
    }

    while (v28 < SHIDWORD(v55[0]));
  }

  v57 = 0;
  if (v62)
  {
    v30 = v62 == &v63;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v62);
  }
}

void sub_22D1FADD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *cv::Ptr<cv::FilterEngine>::~Ptr(uint64_t *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      (*(*v3 + 8))(v3);
    }

    free(a1[1]);
  }

  *a1 = 0;
  a1[1] = 0;
  return a1;
}

void cv::sepFilter2D(void (***a1)(void *__return_ptr), uint64_t a2, int a3, void (***a4)(void **__return_ptr, void, uint64_t), void (***a5)(void **__return_ptr, void, uint64_t), uint64_t *a6)
{
  (**a1)(v20);
  (**a4)(v19, a4, 0xFFFFFFFFLL);
  (**a5)(v18, a5, 0xFFFFFFFFLL);
  if (a3 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = v20[0];
  }

  v17[0] = vrev64_s32(*v20[8]);
  (*(*a2 + 128))(a2, v17, v20[0] & 0xFF8 | v11 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v17, a2, 0xFFFFFFFFLL);
  v12 = v20[0];
  v13 = v17[0];
  cv::_InputArray::_InputArray(v16, v19);
  cv::_InputArray::_InputArray(v15, v18);
  v14 = *a6;
  cv::createSeparableLinearFilter(v12 & 0xFFF, v13 & 0xFFF, v16, v15, &v14);
}

void sub_22D1FB334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  cv::Ptr<cv::FilterEngine>::~Ptr(&a23);
  cv::Mat::~Mat(&a25);
  cv::Mat::~Mat(&a37);
  cv::Mat::~Mat(&a49);
  cv::Mat::~Mat((v49 - 176));
  _Unwind_Resume(a1);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<unsigned char *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t cv::SymmRowSmallFilter<unsigned char,int,cv::SymmRowSmallNoVec>::SymmRowSmallFilter(uint64_t a1, cv::Mat *a2, int a3, int a4)
{
  v6 = cv::RowFilter<unsigned char,int,cv::SymmRowSmallNoVec>::RowFilter(a1, a2, a3);
  *v6 = &unk_284054C08;
  *(v6 + 116) = a4;
  if ((a4 & 3) == 0 || *(a1 + 8) >= 6)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0 && this->ksize <= 5");
    std::string::basic_string[abi:ne200100]<0>(v10, "SymmRowSmallFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 2321);
    cv::error(v12, v7);
  }

  return a1;
}

void sub_22D1FB720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  cv::RowFilter<unsigned char,int,cv::SymmRowSmallNoVec>::~RowFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::RowFilter<unsigned char,int,cv::SymmRowSmallNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054C60;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 4 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<unsigned char,int,cv::SymmRowSmallNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054C60;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284054C60;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

uint64_t cv::SymmRowSmallFilter<unsigned char,int,cv::SymmRowSmallNoVec>::~SymmRowSmallFilter(uint64_t a1)
{
  *a1 = &unk_284054C60;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmRowSmallFilter<unsigned char,int,cv::SymmRowSmallNoVec>::~SymmRowSmallFilter(uint64_t a1)
{
  *a1 = &unk_284054C60;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

unint64_t cv::SymmRowSmallFilter<unsigned char,int,cv::SymmRowSmallNoVec>::operator()(unint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  v7 = (v5 + (v5 >> 31)) >> 1;
  v8 = (v6 + 4 * (v5 / 2));
  v9 = v5 / 2 * a5;
  v10 = (a2 + v9);
  v11 = (a5 * a4);
  if ((*(result + 116) & 1) == 0)
  {
    if (v5 == 5)
    {
      if (v11 < 2)
      {
        goto LABEL_44;
      }

      v14 = 0;
      v17 = v8[1];
      result = v8[2];
      v18 = (a3 + 4);
      v19 = a2 + v9 + a5;
      v20 = v9 + -2 * a5;
      v21 = v9 + 1;
      v22 = v9 + a5 + 1;
      v23 = v9 + 2 * a5;
      v24 = a2 + v9 + 1 - 2 * a5;
      v25 = v23 + a2 + 1;
      v26 = a2 + v20;
      v27 = a2 + v22;
      v28 = a2 + v21 - a5;
      do
      {
        v29 = (*(v27 + v14) - *(v28 + v14)) * v17 + (*(v25 + v14) - *(v24 + v14)) * result;
        *(v18 - 1) = (*(v19 + v14) - *(v28 + v14 - 1)) * v17 + (*(v25 + v14 - 1) - *(v26 + v14)) * result;
        *v18 = v29;
        v14 += 2;
        v18 += 2;
      }

      while (v14 <= (v11 - 2));
      v10 += v14;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_44;
      }

      v12 = v8[1];
      if (*v8)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 == 1;
      }

      if (!v13)
      {
        if (v11 >= 2)
        {
          v14 = 0;
          result = -a5;
          do
          {
            v15 = (v10[a5 + 1] - v10[1 - a5]) * v12;
            v16 = (a3 + 4 * v14);
            *v16 = (v10[a5] - v10[-a5]) * v12;
            v16[1] = v15;
            v14 += 2;
            v10 += 2;
          }

          while (v14 <= (v11 - 2));
          goto LABEL_45;
        }

LABEL_44:
        LODWORD(v14) = 0;
        goto LABEL_45;
      }

      if (v11 < 2)
      {
        goto LABEL_44;
      }

      v14 = 0;
      result = a5 + 1;
      do
      {
        v73 = v10[result] - v10[1 - a5];
        v74 = (a3 + 4 * v14);
        *v74 = v10[a5] - v10[-a5];
        v74[1] = v73;
        v14 += 2;
        v10 += 2;
      }

      while (v14 <= (v11 - 2));
    }

LABEL_45:
    if (v14 < v11)
    {
      v55 = a5;
      v14 = v14;
      v56 = v6 + 4 * v7 + 4;
      v57 = -a5;
      do
      {
        result = *v10;
        v58 = *v8 * result;
        if (v5 >= 2)
        {
          result = v57;
          v59 = (v5 / 2 + 1) - 1;
          v60 = v56;
          v61 = v55;
          do
          {
            v62 = *v60++;
            v58 += (v10[v61] - v10[result]) * v62;
            v61 += v55;
            result -= v55;
            --v59;
          }

          while (v59);
        }

        *(a3 + 4 * v14++) = v58;
        ++v10;
      }

      while (v14 != v11);
    }

    return result;
  }

  if (v5 == 5)
  {
    v38 = *v8;
    v39 = v8[1];
    v40 = v8[2];
    if (*v8 == -2 && v39 == 0 && v40 == 1)
    {
      if (v11 >= 2)
      {
        result = 0;
        v63 = (a3 + 4);
        v64 = a2 + v9 + -2 * a5;
        v65 = v9 + 2 * a5 + a2 + 1;
        v66 = v9 - 2 * a5 + a2 + 1;
        do
        {
          v67 = *(v65 + result) - 2 * v10[result + 1] + *(v66 + result);
          *(v63 - 1) = *(v65 + result - 1) - 2 * v10[result] + *(v64 + result);
          *v63 = v67;
          result += 2;
          v63 += 2;
        }

        while (result <= (v11 - 2));
        goto LABEL_68;
      }
    }

    else if (v11 >= 2)
    {
      result = 0;
      v43 = v9 + 1;
      v44 = (a3 + 4);
      v45 = v9 + -2 * a5;
      v46 = a2 + v9 + 1 - 2 * a5;
      v47 = v9 + 2 * a5;
      v48 = v9 + a5 + 1;
      v49 = a2 + v9 + a5;
      v50 = a2 + v45;
      v51 = a2 + v47;
      v52 = a2 + v43 - a5;
      v53 = a2 + v48;
      do
      {
        v54 = v38 * v10[result + 1] + (*(v53 + result) + *(v52 + result)) * v39 + (*(v51 + result + 1) + *(v46 + result)) * v40;
        *(v44 - 1) = v38 * v10[result] + (*(v49 + result) + *(v52 + result - 1)) * v39 + (*(v51 + result) + *(v50 + result)) * v40;
        *v44 = v54;
        result += 2;
        v44 += 2;
      }

      while (result <= (v11 - 2));
      goto LABEL_68;
    }

    goto LABEL_62;
  }

  if (v5 == 3)
  {
    v30 = *v8;
    v31 = v8[1];
    if (*v8 == -2)
    {
      if (v31 != 1)
      {
LABEL_61:
        if (v11 < 2)
        {
          goto LABEL_62;
        }

        result = 0;
        v75 = (a3 + 4);
        v76 = a2 + v9 + a5 + 1;
        v77 = a2 + v9 + a5;
        v78 = v9 - a5 + a2 + 1;
        do
        {
          v79 = v30 * v10[result + 1] + (*(v76 + result) + *(v78 + result)) * v31;
          *(v75 - 1) = v30 * v10[result] + (*(v77 + result) + *(v78 + result - 1)) * v31;
          *v75 = v79;
          result += 2;
          v75 += 2;
        }

        while (result <= (v11 - 2));
LABEL_68:
        v10 += result;
        goto LABEL_72;
      }

      if (v11 >= 2)
      {
        result = 0;
        v68 = (a3 + 4);
        v69 = a2 + v9 + a5 + 1;
        v70 = a2 + v9 + a5;
        v71 = v9 - a5 + a2 + 1;
        do
        {
          v72 = *(v69 + result) - 2 * v10[result + 1] + *(v71 + result);
          *(v68 - 1) = *(v70 + result) - 2 * v10[result] + *(v71 + result - 1);
          *v68 = v72;
          result += 2;
          v68 += 2;
        }

        while (result <= (v11 - 2));
        goto LABEL_68;
      }
    }

    else
    {
      if (v30 != 2 || v31 != 1)
      {
        goto LABEL_61;
      }

      if (v11 >= 2)
      {
        result = 0;
        v33 = (a3 + 4);
        v34 = a2 + v9 + a5 + 1;
        v35 = a2 + v9 + a5;
        v36 = v9 - a5 + a2 + 1;
        do
        {
          v37 = *(v36 + result) + 2 * v10[result + 1] + *(v34 + result);
          *(v33 - 1) = *(v36 + result - 1) + 2 * v10[result] + *(v35 + result);
          *v33 = v37;
          result += 2;
          v33 += 2;
        }

        while (result <= (v11 - 2));
        goto LABEL_68;
      }
    }

LABEL_62:
    result = 0;
    goto LABEL_72;
  }

  if (v5 != 1 || *v8 != 1)
  {
    goto LABEL_62;
  }

  if (v11 >= 2)
  {
    result = 0;
    v80 = (a3 + 4);
    v81 = (v9 + a2 + 1);
    do
    {
      v82 = *(v81 - 1);
      v83 = *v81;
      v81 += 2;
      *(v80 - 1) = v82;
      *v80 = v83;
      result += 2;
      v80 += 2;
    }

    while (result <= (v11 - 2));
  }

  else
  {
    result = 0;
  }

  v10 += result;
LABEL_72:
  if (result < v11)
  {
    v84 = a5;
    v85 = result;
    v86 = v6 + 4 * v7 + 4;
    v87 = -a5;
    do
    {
      result = *v10;
      v88 = *v8 * result;
      if (v5 >= 2)
      {
        result = v87;
        v89 = (v5 / 2 + 1) - 1;
        v90 = v86;
        v91 = v84;
        do
        {
          v92 = *v90++;
          v88 += (v10[result] + v10[v91]) * v92;
          v91 += v84;
          result -= v84;
          --v89;
        }

        while (v89);
      }

      *(a3 + 4 * v85++) = v88;
      ++v10;
    }

    while (v85 != v11);
  }

  return result;
}

void cv::RowFilter<unsigned char,int,cv::SymmRowSmallNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054C60;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowFilter<unsigned char,int,cv::SymmRowSmallNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int32x4_t a6)
{
  v6 = *(result + 8);
  v7 = *(result + 32);
  v8 = (a5 * a4);
  if (v8 >= 4)
  {
    v9 = 0;
    v10 = (a2 + a5);
    do
    {
      a6.i32[0] = *(a2 + v9);
      v11 = vld1q_dup_f32(v7);
      a6 = vmulq_s32(v11, vmovl_u16(*&vmovl_u8(*a6.i8)));
      if (v6 >= 2)
      {
        v12 = v10;
        v13 = v6 - 1;
        v14 = v7 + 1;
        do
        {
          v11.i32[0] = *v12;
          v11 = vmovl_u16(*&vmovl_u8(*v11.i8));
          v15 = vld1q_dup_f32(v14++);
          a6 = vmlaq_s32(a6, v15, v11);
          v12 = (v12 + a5);
          --v13;
        }

        while (v13);
      }

      result = 4 * v9;
      *(a3 + 4 * v9) = a6;
      v9 += 4;
      ++v10;
    }

    while (v9 <= (v8 - 4));
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < v8)
  {
    v9 = v9;
    do
    {
      v16 = *v7 * *(a2 + v9);
      if (v6 >= 2)
      {
        v17 = a2 + a5;
        result = v6 - 1;
        v18 = (v7 + 1);
        do
        {
          v19 = *v18++;
          v16 += v19 * *(v17 + v9);
          v17 += a5;
          --result;
        }

        while (result);
      }

      *(a3 + 4 * v9++) = v16;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t cv::SymmRowSmallFilter<float,float,cv::SymmRowSmallNoVec>::SymmRowSmallFilter(uint64_t a1, cv::Mat *a2, int a3, int a4)
{
  v6 = cv::RowFilter<float,float,cv::SymmRowSmallNoVec>::RowFilter(a1, a2, a3);
  *v6 = &unk_284054C88;
  *(v6 + 116) = a4;
  if ((a4 & 3) == 0 || *(a1 + 8) >= 6)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0 && this->ksize <= 5");
    std::string::basic_string[abi:ne200100]<0>(v10, "SymmRowSmallFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 2321);
    cv::error(v12, v7);
  }

  return a1;
}

void sub_22D1FC684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  cv::RowFilter<float,float,cv::SymmRowSmallNoVec>::~RowFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::RowFilter<float,float,cv::SymmRowSmallNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054CE0;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<float,float,cv::SymmRowSmallNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054CE0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284054CE0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

uint64_t cv::SymmRowSmallFilter<float,float,cv::SymmRowSmallNoVec>::~SymmRowSmallFilter(uint64_t a1)
{
  *a1 = &unk_284054CE0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmRowSmallFilter<float,float,cv::SymmRowSmallNoVec>::~SymmRowSmallFilter(uint64_t a1)
{
  *a1 = &unk_284054CE0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmRowSmallFilter<float,float,cv::SymmRowSmallNoVec>::operator()(uint64_t result, uint64_t a2, float32x2_t *a3, int a4, int a5, double a6, double a7, double a8)
{
  v8 = *(result + 8);
  v9 = *(result + 32);
  v10 = (v8 + (v8 >> 31)) >> 1;
  v11 = v9 + 4 * (v8 / 2);
  v12 = v8 / 2 * a5;
  v13 = (a2 + 4 * v12);
  v14 = (a5 * a4);
  if ((*(result + 116) & 1) == 0)
  {
    if (v8 == 5)
    {
      if (v14 < 2)
      {
        goto LABEL_39;
      }

      v25 = 0;
      v17 = 0;
      v26 = (v11 + 8);
      v27 = (v11 + 4);
      v28 = vld1_dup_f32(v27);
      v29 = 4 * v12;
      v30 = vld1_dup_f32(v26);
      v31 = 4 * v12 + 8 * a5;
      v32 = a2 + 4 * v12 + 4 * a5;
      v33 = v29 + 4 * (a5 + 1);
      v34 = v29 - 8 * a5;
      result = a2 + v29 - 4 * a5;
      v35 = a2 + v31;
      v36 = a2 + v29 + -8 * a5;
      v37 = a2 + v33;
      v38 = v34 + a2 + 4;
      do
      {
        v39.i32[0] = *(v32 + v25);
        v39.i32[1] = *(v37 + v25);
        v40.i32[0] = *(v36 + v25);
        v40.i32[1] = *(v38 + v25);
        a3[v25 / 8] = vmla_f32(vmul_f32(v30, vsub_f32(*(v35 + v25), v40)), v28, vsub_f32(v39, *(result + v25)));
        v17 += 2;
        v25 += 8;
      }

      while (v17 <= (v14 - 2));
      v13 = (v13 + v25);
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_39;
      }

      v15 = *(v11 + 4);
      if (*v11 != 0.0 || v15 != 1.0)
      {
        if (v14 >= 2)
        {
          v17 = 0;
          v18 = 4 * v12;
          v19 = a2 + 4 * v12 + 4 * a5;
          v20 = (a2 + v18 - 4 * a5);
          result = v19 + 4;
          v21 = a3;
          do
          {
            v22 = *v20++;
            v23.i32[0] = *(v19 + 4 * v17);
            v23.i32[1] = *(result + 4 * v17);
            *v21++ = vmul_n_f32(vsub_f32(v23, v22), v15);
            v17 += 2;
            ++v13;
          }

          while (v17 <= (v14 - 2));
          goto LABEL_40;
        }

LABEL_39:
        LODWORD(v17) = 0;
        goto LABEL_40;
      }

      if (v14 < 2)
      {
        goto LABEL_39;
      }

      v72 = a3 + 1;
      v73 = 1;
      result = 4 - 4 * a5;
      do
      {
        v74 = v13->f32[a5 + 1] - *(v13->f32 + result);
        *(v72 - 1) = v13->f32[a5] - v13->f32[-a5];
        *v72 = v74;
        ++v13;
        v72 += 2;
        v75 = v73 + 1;
        v73 += 2;
      }

      while (v75 <= (v14 - 2));
      LODWORD(v17) = v73 - 1;
    }

LABEL_40:
    if (v17 < v14)
    {
      v49 = v17;
      v50 = v9 + 4 * v10 + 4;
      v51 = 4 * a5;
      do
      {
        v52 = *v11 * v13->f32[0];
        if (v8 >= 2)
        {
          v53 = -4 * a5;
          result = 4 * a5;
          v54 = (v8 / 2 + 1) - 1;
          v55 = v50;
          do
          {
            v56 = *v55++;
            v52 = v52 + (v56 * (*(v13->f32 + result) - *(v13->f32 + v53)));
            result += v51;
            v53 -= v51;
            --v54;
          }

          while (v54);
        }

        a3->f32[v49++] = v52;
        v13 = (v13 + 4);
      }

      while (v49 != v14);
    }

    return result;
  }

  if (v8 == 5)
  {
    v42 = *(v11 + 4);
    LODWORD(a8) = *(v11 + 8);
    if (*v11 == -2.0 && (v42 == 0.0 ? (v43 = *&a8 == 1.0) : (v43 = 0), v43))
    {
      if (v14 < 2)
      {
        goto LABEL_66;
      }

      v44 = 0;
      v24 = 0;
      v45 = 4 * v12;
      v46 = a2 + 4 * v12 + -8 * a5;
      result = a2 + v45 + 8 * a5;
      v47 = v45 - 8 * a5 + a2 + 4;
      do
      {
        v48.i32[0] = *(v46 + v44);
        v48.i32[1] = *(v47 + v44);
        a3[v44 / 8] = vadd_f32(vmla_f32(v48, 0xC0000000C0000000, v13[v44 / 8]), *(result + v44));
        v24 += 2;
        v44 += 8;
      }

      while (v24 <= (v14 - 2));
    }

    else
    {
      if (v14 < 2)
      {
        goto LABEL_66;
      }

      v44 = 0;
      v24 = 0;
      v61 = 4 * v12;
      v62 = a2 + 4 * v12 - 4 * a5;
      v63 = v61 - 8 * a5;
      result = a2 + v61 + 4 * a5;
      v64 = a2 + v61 + -8 * a5;
      v65 = a2 + v61 + 8 * a5;
      v66 = a2 + v61 + 4 * (a5 + 1);
      v67 = vdup_lane_s32(*&a8, 0);
      LODWORD(a7) = *v11;
      v68 = vdup_lane_s32(*&a7, 0);
      v69 = v63 + a2 + 4;
      do
      {
        v70.i32[0] = *(result + v44);
        v70.i32[1] = *(v66 + v44);
        v71.i32[0] = *(v64 + v44);
        v71.i32[1] = *(v69 + v44);
        a3[v44 / 8] = vmla_f32(vmla_f32(vmul_n_f32(vadd_f32(*(v62 + v44), v70), v42), v68, v13[v44 / 8]), v67, vadd_f32(v71, *(v65 + v44)));
        v24 += 2;
        v44 += 8;
      }

      while (v24 <= (v14 - 2));
    }

    v13 = (v13 + v44);
    goto LABEL_69;
  }

  if (v8 == 3)
  {
    LODWORD(a7) = *v11;
    if (*v11 == 2.0 && *(v11 + 4) == 1.0)
    {
      if (v14 >= 2)
      {
        v24 = 0;
        result = -4 * a5;
        do
        {
          v41.i32[0] = v13->i32[a5];
          v41.i32[1] = v13->i32[a5 + 1];
          *(a3 + 4 * v24) = vadd_f32(vmla_f32(*(v13 - 4 * a5), 0x4000000040000000, *v13), v41);
          v24 += 2;
          ++v13;
        }

        while (v24 <= (v14 - 2));
        goto LABEL_69;
      }
    }

    else
    {
      v57 = *(v11 + 4);
      if (*&a7 == -2.0 && v57 == 1.0)
      {
        if (v14 >= 2)
        {
          v24 = 0;
          result = -4 * a5;
          do
          {
            v79.i32[0] = v13->i32[a5];
            v79.i32[1] = v13->i32[a5 + 1];
            *(a3 + 4 * v24) = vadd_f32(vmla_f32(*(v13 - 4 * a5), 0xC0000000C0000000, *v13), v79);
            v24 += 2;
            ++v13;
          }

          while (v24 <= (v14 - 2));
          goto LABEL_69;
        }
      }

      else if (v14 >= 2)
      {
        v24 = 0;
        v59 = vdup_lane_s32(*&a7, 0);
        result = -4 * a5;
        do
        {
          v60.i32[0] = v13->i32[a5];
          v60.i32[1] = v13->i32[a5 + 1];
          *(a3 + 4 * v24) = vmla_f32(vmul_n_f32(vadd_f32(*(v13 - 4 * a5), v60), v57), v59, *v13);
          v24 += 2;
          ++v13;
        }

        while (v24 <= (v14 - 2));
        goto LABEL_69;
      }
    }

LABEL_66:
    LODWORD(v24) = 0;
    goto LABEL_69;
  }

  if (v8 != 1 || *v11 != 1.0)
  {
    goto LABEL_66;
  }

  if (v14 >= 2)
  {
    v24 = 0;
    v76 = (a2 + 4 * v12);
    v77 = a3;
    do
    {
      v78 = *v76++;
      *v77++ = v78;
      v24 += 2;
    }

    while (v24 <= (v14 - 2));
  }

  else
  {
    LODWORD(v24) = 0;
  }

  v13 = (v13 + 4 * v24);
LABEL_69:
  if (v24 < v14)
  {
    v80 = v24;
    v81 = v9 + 4 * v10 + 4;
    v82 = 4 * a5;
    do
    {
      v83 = *v11 * v13->f32[0];
      if (v8 >= 2)
      {
        v84 = -4 * a5;
        result = 4 * a5;
        v85 = (v8 / 2 + 1) - 1;
        v86 = v81;
        do
        {
          v87 = *v86++;
          v83 = v83 + (v87 * (*(v13->f32 + result) + *(v13->f32 + v84)));
          result += v82;
          v84 -= v82;
          --v85;
        }

        while (v85);
      }

      a3->f32[v80++] = v83;
      v13 = (v13 + 4);
    }

    while (v80 != v14);
  }

  return result;
}

void cv::RowFilter<float,float,cv::SymmRowSmallNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054CE0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

float32x4_t *cv::RowFilter<float,float,cv::SymmRowSmallNoVec>::operator()(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result->u32[2];
  v6 = result[2].i64[0];
  v7 = (a5 * a4);
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = (a2 + 4 * a5);
    do
    {
      v10 = vmulq_n_f32(*(a2 + 4 * v8), *v6);
      if (v5 >= 2)
      {
        result = v9;
        v11 = v5 - 1;
        v12 = v6 + 1;
        do
        {
          v13 = *v12++;
          v10 = vmlaq_n_f32(v10, *result, v13);
          result = (result + 4 * a5);
          --v11;
        }

        while (v11);
      }

      *(a3 + 4 * v8) = v10;
      v8 += 4;
      ++v9;
    }

    while (v8 <= (v7 - 4));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v14 = v8;
    v15 = 4 * a5;
    v16 = (a2 + v15 + 4 * v8);
    do
    {
      v17 = *v6 * *(a2 + 4 * v14);
      if (v5 >= 2)
      {
        v18 = v16;
        v19 = v5 - 1;
        result = (v6 + 1);
        do
        {
          v20 = result->f32[0];
          result = (result + 4);
          v17 = v17 + (v20 * *v18);
          v18 = (v18 + v15);
          --v19;
        }

        while (v19);
      }

      *(a3 + 4 * v14++) = v17;
      ++v16;
    }

    while (v14 != v7);
  }

  return result;
}

uint64_t cv::RowFilter<unsigned char,int,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054D08;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 4 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<unsigned char,int,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054D08;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<unsigned char,int,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054D08;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowFilter<unsigned char,int,cv::RowNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int32x4_t a6)
{
  v6 = *(result + 8);
  v7 = *(result + 32);
  v8 = (a5 * a4);
  if (v8 >= 4)
  {
    v9 = 0;
    v10 = (a2 + a5);
    do
    {
      a6.i32[0] = *(a2 + v9);
      v11 = vld1q_dup_f32(v7);
      a6 = vmulq_s32(v11, vmovl_u16(*&vmovl_u8(*a6.i8)));
      if (v6 >= 2)
      {
        v12 = v10;
        v13 = v6 - 1;
        v14 = v7 + 1;
        do
        {
          v11.i32[0] = *v12;
          v11 = vmovl_u16(*&vmovl_u8(*v11.i8));
          v15 = vld1q_dup_f32(v14++);
          a6 = vmlaq_s32(a6, v15, v11);
          v12 = (v12 + a5);
          --v13;
        }

        while (v13);
      }

      result = 4 * v9;
      *(a3 + 4 * v9) = a6;
      v9 += 4;
      ++v10;
    }

    while (v9 <= (v8 - 4));
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < v8)
  {
    v9 = v9;
    do
    {
      v16 = *v7 * *(a2 + v9);
      if (v6 >= 2)
      {
        v17 = a2 + a5;
        result = v6 - 1;
        v18 = (v7 + 1);
        do
        {
          v19 = *v18++;
          v16 += v19 * *(v17 + v9);
          v17 += a5;
          --result;
        }

        while (result);
      }

      *(a3 + 4 * v9++) = v16;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t cv::RowFilter<unsigned char,float,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054D48;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<unsigned char,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054D48;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<unsigned char,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054D48;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowFilter<unsigned char,float,cv::RowNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, float32x4_t a6, float a7, float32x4_t a8)
{
  v8 = *(result + 8);
  v9 = *(result + 32);
  v10 = (a5 * a4);
  if (v10 >= 4)
  {
    v11 = 0;
    v12 = (a2 + a5);
    do
    {
      a6.i32[0] = *(a2 + v11);
      a7 = *v9;
      a6 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a6.f32))), *v9);
      if (v8 >= 2)
      {
        v13 = v12;
        v14 = v8 - 1;
        v15 = v9 + 1;
        do
        {
          v16 = *v15++;
          a7 = v16;
          a8.i32[0] = *v13;
          a8 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a8.f32)));
          a6 = vmlaq_n_f32(a6, a8, v16);
          v13 = (v13 + a5);
          --v14;
        }

        while (v14);
      }

      result = 4 * v11;
      *(a3 + 4 * v11) = a6;
      v11 += 4;
      ++v12;
    }

    while (v11 <= (v10 - 4));
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 < v10)
  {
    v11 = v11;
    do
    {
      LOBYTE(a7) = *(a2 + v11);
      a7 = LODWORD(a7);
      v17 = *v9 * a7;
      if (v8 >= 2)
      {
        v18 = a2 + a5;
        v19 = v8 - 1;
        result = (v9 + 1);
        do
        {
          v20 = *result;
          result += 4;
          a7 = v20;
          a8.i8[0] = *(v18 + v11);
          a8.f32[0] = a8.u32[0];
          v17 = v17 + (v20 * a8.f32[0]);
          v18 += a5;
          --v19;
        }

        while (v19);
      }

      *(a3 + 4 * v11++) = v17;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t cv::RowFilter<unsigned char,double,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054D88;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<unsigned char,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054D88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<unsigned char,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054D88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::RowFilter<unsigned char,double,cv::RowNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  if (v13 >= 4)
  {
    v14 = 0;
    v15 = a2 + a5 + 3;
    do
    {
      LOBYTE(a6) = *(a2 + v14);
      a6 = *v12 * *&a6;
      LOBYTE(a7) = *(a2 + v14 + 1);
      a7 = *v12 * *&a7;
      LOBYTE(a8) = *(a2 + v14 + 2);
      a8 = *v12 * *&a8;
      LOBYTE(a10) = *(a2 + v14 + 3);
      a10 = *&a10;
      v16 = *v12 * a10;
      if (v11 >= 2)
      {
        v17 = v15;
        v18 = v11 - 1;
        v19 = v12 + 1;
        do
        {
          v20 = *v19++;
          a10 = v20;
          LOBYTE(a11) = *(v17 - 3);
          *&v21 = *&a11;
          a6 = a6 + v20 * *&v21;
          LOBYTE(v21) = *(v17 - 2);
          *&v22 = v21;
          a7 = a7 + v20 * *&v22;
          LOBYTE(v22) = *(v17 - 1);
          *&v23 = v22;
          a8 = a8 + v20 * *&v23;
          LOBYTE(v23) = *v17;
          a11 = v23;
          v16 = v16 + v20 * a11;
          v17 += a5;
          --v18;
        }

        while (v18);
      }

      result = (a3 + 8 * v14);
      *result = a6;
      result[1] = a7;
      result[2] = a8;
      result[3] = v16;
      v14 += 4;
      v15 += 4;
    }

    while (v14 <= (v13 - 4));
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 < v13)
  {
    v14 = v14;
    do
    {
      LOBYTE(a7) = *(a2 + v14);
      a7 = *&a7;
      v24 = *v12 * a7;
      if (v11 >= 2)
      {
        v25 = a2 + a5;
        v26 = v11 - 1;
        result = v12 + 1;
        do
        {
          v27 = *result++;
          a7 = v27;
          LOBYTE(a8) = *(v25 + v14);
          a8 = *&a8;
          v24 = v24 + v27 * a8;
          v25 += a5;
          --v26;
        }

        while (v26);
      }

      *(a3 + 8 * v14++) = v24;
    }

    while (v14 != v13);
  }

  return result;
}

uint64_t cv::RowFilter<unsigned short,float,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054DC8;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<unsigned short,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054DC8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<unsigned short,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054DC8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

float *cv::RowFilter<unsigned short,float,cv::RowNoVec>::operator()(float *result, uint64_t a2, uint64_t a3, int a4, int a5, double a6, float32x4_t a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  if (v10 >= 4)
  {
    v11 = 0;
    v12 = (a2 + 2 * a5);
    do
    {
      a7 = vcvtq_f32_u32(vmovl_u16(*(a2 + 2 * v11)));
      v13 = vmulq_n_f32(a7, *v9);
      if (v8 >= 2)
      {
        v14 = v12;
        result = (v8 - 1);
        v15 = v9 + 1;
        do
        {
          v16 = *v15++;
          a7.i16[1] = HIWORD(v16);
          a8 = vcvtq_f32_u32(vmovl_u16(*v14));
          v13 = vmlaq_n_f32(v13, a8, v16);
          v14 = (v14 + 2 * a5);
          result = (result - 1);
        }

        while (result);
      }

      *(a3 + 4 * v11) = v13;
      v11 += 4;
      ++v12;
    }

    while (v11 <= (v10 - 4));
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 < v10)
  {
    v17 = v11;
    v18 = 2 * a5;
    v19 = (a2 + v18 + 2 * v11);
    do
    {
      a7.i16[0] = *(a2 + 2 * v17);
      a7.f32[0] = a7.u32[0];
      v20 = *v9 * a7.f32[0];
      if (v8 >= 2)
      {
        v21 = v19;
        v22 = v8 - 1;
        result = v9 + 1;
        do
        {
          v23 = *result++;
          a7.i16[1] = HIWORD(v23);
          a8.i16[0] = *v21;
          a8.f32[0] = a8.u32[0];
          v20 = v20 + (v23 * a8.f32[0]);
          v21 = (v21 + v18);
          --v22;
        }

        while (v22);
      }

      *(a3 + 4 * v17++) = v20;
      ++v19;
    }

    while (v17 != v10);
  }

  return result;
}

uint64_t cv::RowFilter<unsigned short,double,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054E08;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<unsigned short,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054E08;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<unsigned short,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054E08;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::RowFilter<unsigned short,double,cv::RowNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  if (v13 >= 4)
  {
    v14 = 0;
    v15 = a2 + 2 * a5 + 4;
    do
    {
      v16 = (a2 + 2 * v14);
      LOWORD(a6) = *v16;
      a6 = *v12 * *&a6;
      LOWORD(a7) = v16[1];
      a7 = *v12 * *&a7;
      LOWORD(a8) = v16[2];
      a8 = *v12 * *&a8;
      LOWORD(a10) = v16[3];
      a10 = *&a10;
      v17 = *v12 * a10;
      if (v11 >= 2)
      {
        v18 = v15;
        result = (v11 - 1);
        v19 = v12 + 1;
        do
        {
          v20 = *v19++;
          a10 = v20;
          LOWORD(a11) = *(v18 - 2);
          *&v21 = *&a11;
          a6 = a6 + v20 * *&v21;
          LOWORD(v21) = *(v18 - 1);
          *&v22 = v21;
          a7 = a7 + v20 * *&v22;
          LOWORD(v22) = *v18;
          *&v23 = v22;
          a8 = a8 + v20 * *&v23;
          LOWORD(v23) = v18[1];
          a11 = v23;
          v17 = v17 + v20 * a11;
          v18 += a5;
          result = (result - 1);
        }

        while (result);
      }

      v24 = (a3 + 8 * v14);
      *v24 = a6;
      v24[1] = a7;
      v24[2] = a8;
      v24[3] = v17;
      v14 += 4;
      v15 += 8;
    }

    while (v14 <= (v13 - 4));
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 < v13)
  {
    v25 = v14;
    v26 = 2 * a5;
    v27 = (a2 + v26 + 2 * v14);
    do
    {
      LOWORD(a7) = *(a2 + 2 * v25);
      a7 = *&a7;
      v28 = *v12 * a7;
      if (v11 >= 2)
      {
        v29 = v27;
        v30 = v11 - 1;
        result = v12 + 1;
        do
        {
          v31 = *result++;
          a7 = v31;
          LOWORD(a8) = *v29;
          a8 = *&a8;
          v28 = v28 + v31 * a8;
          v29 = (v29 + v26);
          --v30;
        }

        while (v30);
      }

      *(a3 + 8 * v25++) = v28;
      ++v27;
    }

    while (v25 != v13);
  }

  return result;
}

uint64_t cv::RowFilter<short,float,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054E48;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<short,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054E48;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<short,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054E48;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

float *cv::RowFilter<short,float,cv::RowNoVec>::operator()(float *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(result + 2);
  v6 = *(result + 4);
  v7 = (a5 * a4);
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = (a2 + 2 * a5);
    do
    {
      v10 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*(a2 + 2 * v8))), *v6);
      if (v5 >= 2)
      {
        v11 = v9;
        result = (v5 - 1);
        v12 = v6 + 1;
        do
        {
          v13 = *v12++;
          v10 = vmlaq_n_f32(v10, vcvtq_f32_s32(vmovl_s16(*v11)), v13);
          v11 = (v11 + 2 * a5);
          result = (result - 1);
        }

        while (result);
      }

      *(a3 + 4 * v8) = v10;
      v8 += 4;
      ++v9;
    }

    while (v8 <= (v7 - 4));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v14 = v8;
    v15 = 2 * a5;
    v16 = (a2 + v15 + 2 * v8);
    do
    {
      v17 = *v6 * *(a2 + 2 * v14);
      if (v5 >= 2)
      {
        v18 = v16;
        v19 = v5 - 1;
        result = v6 + 1;
        do
        {
          v20 = *result++;
          v17 = v17 + (v20 * *v18);
          v18 = (v18 + v15);
          --v19;
        }

        while (v19);
      }

      *(a3 + 4 * v14++) = v17;
      ++v16;
    }

    while (v14 != v7);
  }

  return result;
}

uint64_t cv::RowFilter<short,double,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054E88;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<short,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054E88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<short,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054E88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::RowFilter<short,double,cv::RowNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(result + 2);
  v6 = *(result + 4);
  v7 = (a5 * a4);
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = a2 + 2 * a5 + 4;
    do
    {
      v10 = (a2 + 2 * v8);
      v11 = *v6 * *v10;
      v12 = *v6 * v10[1];
      result = v10[2];
      v13 = *v6 * result;
      v14 = *v6 * v10[3];
      if (v5 >= 2)
      {
        v15 = v9;
        result = (v5 - 1);
        v16 = v6 + 1;
        do
        {
          v17 = *v16++;
          v11 = v11 + v17 * *(v15 - 2);
          v12 = v12 + v17 * *(v15 - 1);
          v13 = v13 + v17 * *v15;
          v14 = v14 + v17 * v15[1];
          v15 += a5;
          result = (result - 1);
        }

        while (result);
      }

      v18 = (a3 + 8 * v8);
      *v18 = v11;
      v18[1] = v12;
      v18[2] = v13;
      v18[3] = v14;
      v8 += 4;
      v9 += 8;
    }

    while (v8 <= (v7 - 4));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v19 = v8;
    v20 = 2 * a5;
    v21 = (a2 + v20 + 2 * v8);
    do
    {
      v22 = *v6 * *(a2 + 2 * v19);
      if (v5 >= 2)
      {
        v23 = v21;
        v24 = v5 - 1;
        result = v6 + 1;
        do
        {
          v25 = *result++;
          v22 = v22 + v25 * *v23;
          v23 = (v23 + v20);
          --v24;
        }

        while (v24);
      }

      *(a3 + 8 * v19++) = v22;
      ++v21;
    }

    while (v19 != v7);
  }

  return result;
}

uint64_t cv::RowFilter<float,float,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054EC8;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<float,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054EC8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<float,float,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054EC8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

float32x4_t *cv::RowFilter<float,float,cv::RowNoVec>::operator()(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result->u32[2];
  v6 = result[2].i64[0];
  v7 = (a5 * a4);
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = (a2 + 4 * a5);
    do
    {
      v10 = vmulq_n_f32(*(a2 + 4 * v8), *v6);
      if (v5 >= 2)
      {
        result = v9;
        v11 = v5 - 1;
        v12 = v6 + 1;
        do
        {
          v13 = *v12++;
          v10 = vmlaq_n_f32(v10, *result, v13);
          result = (result + 4 * a5);
          --v11;
        }

        while (v11);
      }

      *(a3 + 4 * v8) = v10;
      v8 += 4;
      ++v9;
    }

    while (v8 <= (v7 - 4));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v14 = v8;
    v15 = 4 * a5;
    v16 = (a2 + v15 + 4 * v8);
    do
    {
      v17 = *v6 * *(a2 + 4 * v14);
      if (v5 >= 2)
      {
        v18 = v16;
        v19 = v5 - 1;
        result = (v6 + 1);
        do
        {
          v20 = result->f32[0];
          result = (result + 4);
          v17 = v17 + (v20 * *v18);
          v18 = (v18 + v15);
          --v19;
        }

        while (v19);
      }

      *(a3 + 4 * v14++) = v17;
      ++v16;
    }

    while (v14 != v7);
  }

  return result;
}

uint64_t cv::RowFilter<float,double,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054F08;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<float,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054F08;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<float,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054F08;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::RowFilter<float,double,cv::RowNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(result + 2);
  v6 = *(result + 4);
  v7 = (a5 * a4);
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = a2 + 4 * a5 + 8;
    do
    {
      v10 = (a2 + 4 * v8);
      v11 = vmulq_n_f64(vcvtq_f64_f32(*v10), *v6);
      v12 = vmulq_n_f64(vcvtq_f64_f32(v10[1]), *v6);
      if (v5 >= 2)
      {
        v13 = v9;
        result = (v5 - 1);
        v14 = v6 + 1;
        do
        {
          v15 = vld1q_dup_f64(v14++);
          v11 = vmlaq_f64(v11, vcvtq_f64_f32(v13[-1]), v15);
          v12 = vmlaq_f64(v12, vcvtq_f64_f32(*v13), v15);
          v13 = (v13 + 4 * a5);
          result = (result - 1);
        }

        while (result);
      }

      v16 = (a3 + 8 * v8);
      *v16 = v11;
      v16[1] = v12;
      v8 += 4;
      v9 += 16;
    }

    while (v8 <= (v7 - 4));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v17 = v8;
    v18 = 4 * a5;
    v19 = (a2 + v18 + 4 * v8);
    do
    {
      v20 = *v6 * *(a2 + 4 * v17);
      if (v5 >= 2)
      {
        v21 = v19;
        v22 = v5 - 1;
        result = v6 + 1;
        do
        {
          v23 = *result++;
          v20 = v20 + v23 * *v21;
          v21 = (v21 + v18);
          --v22;
        }

        while (v22);
      }

      *(a3 + 8 * v17++) = v20;
      ++v19;
    }

    while (v17 != v7);
  }

  return result;
}

uint64_t cv::RowFilter<double,double,cv::RowNoVec>::RowFilter(uint64_t a1, cv::Mat *a2, int a3)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054F48;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_18;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      atomic_fetch_add(v8, 1u);
      v9 = *(a1 + 40);
      if (v9)
      {
        if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v12 > 2)
      {
        goto LABEL_16;
      }
    }

    v13 = *(a2 + 1);
    if (v13 <= 2)
    {
      *(a1 + 20) = v13;
      *(a1 + 24) = *(a2 + 1);
      v14 = *(a2 + 9);
      v15 = *(a1 + 88);
      *v15 = *v14;
      v15[1] = v14[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v6, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v23, v6);
  cv::Mat::copyTo(a2, v23);
LABEL_18:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v21, "RowFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v23, 4294967081, v22, v21, __p, 2262);
    cv::error(v23, v18);
  }

  return a1;
}

uint64_t cv::RowFilter<double,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054F48;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::RowFilter<double,double,cv::RowNoVec>::~RowFilter(uint64_t a1)
{
  *a1 = &unk_284054F48;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::RowFilter<double,double,cv::RowNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(result + 2);
  v6 = *(result + 4);
  v7 = (a5 * a4);
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = a2 + 8 * a5 + 16;
    do
    {
      v10 = (a2 + 8 * v8);
      v11 = vmulq_n_f64(*v10, *v6);
      v12 = vmulq_n_f64(v10[1], *v6);
      if (v5 >= 2)
      {
        v13 = v9;
        result = (v5 - 1);
        v14 = v6 + 1;
        do
        {
          v15 = vld1q_dup_f64(v14++);
          v11 = vmlaq_f64(v11, v13[-1], v15);
          v12 = vmlaq_f64(v12, *v13, v15);
          v13 = (v13 + 8 * a5);
          result = (result - 1);
        }

        while (result);
      }

      v16 = (a3 + 8 * v8);
      *v16 = v11;
      v16[1] = v12;
      v8 += 4;
      v9 += 32;
    }

    while (v8 <= (v7 - 4));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v7)
  {
    v17 = v8;
    v18 = 8 * a5;
    v19 = (a2 + v18 + 8 * v8);
    do
    {
      v20 = *v6 * *(a2 + 8 * v17);
      if (v5 >= 2)
      {
        v21 = v19;
        v22 = v5 - 1;
        result = v6 + 1;
        do
        {
          v23 = *result++;
          v20 = v20 + v23 * *v21;
          v21 = (v21 + v18);
          --v22;
        }

        while (v22);
      }

      *(a3 + 8 * v17++) = v20;
      ++v19;
    }

    while (v17 != v7);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, void *a4, double a5)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v10 = (a1 + 16);
  *a1 = &unk_284054F88;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 20) = 0u;
  v11 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v10 == a2)
    {
      goto LABEL_18;
    }

    v12 = *(a2 + 3);
    if (v12)
    {
      atomic_fetch_add(v12, 1u);
      v13 = *(a1 + 40);
      if (v13)
      {
        if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v11;
      }

      while (v14 < v16);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v16 > 2)
      {
        goto LABEL_16;
      }
    }

    v17 = *(a2 + 1);
    if (v17 <= 2)
    {
      *(a1 + 20) = v17;
      *(a1 + 24) = *(a2 + 1);
      v18 = *(a2 + 9);
      v19 = *(a1 + 88);
      *v19 = *v18;
      v19[1] = v18[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v10, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v27, v10);
  cv::Mat::copyTo(a2, v27);
LABEL_18:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  *(a1 + 124) = rint(a5);
  *(a1 + 112) = *a4;
  if ((*(a1 + 16) & 0xFFF) != 4 || v21 != 1 && v20 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v25, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v27, 4294967081, v26, v25, __p, 2460);
    cv::error(v27, v22);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 124);
    v8 = *(result + 112);
    v9 = *(result + 116);
    v10 = *(result + 8);
    v11 = a4;
    v12 = vdupq_n_s32(v7);
    v13 = vdupq_n_s32(v9);
    v14 = vnegq_s32(vdupq_n_s32(v8));
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a6 >= 4)
      {
        v16 = 0;
        do
        {
          result = 4 * v16;
          v17 = vld1q_dup_f32(v6);
          v18 = vmlaq_s32(v12, *(*a2 + 4 * v16), v17);
          if (v10 >= 2)
          {
            for (i = 1; i != v10; ++i)
            {
              v20 = &v6[i];
              v21 = vld1q_dup_f32(v20);
              v18 = vmlaq_s32(v18, *(a2[i] + 4 * v16), v21);
            }
          }

          *(a3 + v16) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v18, v13), v14), 0), v15)), *v12.i8).u32[0];
          v16 += 4;
        }

        while (v16 <= a6 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < a6)
      {
        do
        {
          v22 = v7 + *(*a2 + 4 * v16) * *v6;
          if (v10 >= 2)
          {
            for (j = 1; j != v10; ++j)
            {
              v22 += *(a2[j] + 4 * v16) * LODWORD(v6[j]);
            }
          }

          LODWORD(result) = ((v22 + v9) >> v8) & ~((v22 + v9) >> v8 >> 31);
          if (result >= 255)
          {
            result = 255;
          }

          else
          {
            result = result;
          }

          *(a3 + v16++) = result;
        }

        while (v16 != a6);
      }

      a3 += v11;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284054FD0;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v26, v8);
  cv::Mat::copyTo(a2, v26);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v24, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 2460);
    cv::error(v26, v21);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054FD0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284054FD0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054FD0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = *(result + 8);
    v9 = vdupq_lane_s32(*&a7, 0);
    v10.i64[0] = 0xFF000000FFLL;
    v10.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        do
        {
          v12 = vmlaq_n_f32(v9, *(*a2 + 4 * v11), *v7);
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              v12 = vmlaq_n_f32(v12, *(a2[i] + 4 * v11), v7[i]);
            }
          }

          *(a3 + v11) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v12.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v12)))), 0), v10)), *&a7).u32[0];
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        do
        {
          v14 = *&a7 + (*v7 * *(*a2 + 4 * v11));
          if (v8 >= 2)
          {
            for (j = 1; j != v8; ++j)
            {
              v14 = v14 + (v7[j] * *(a2[j] + 4 * v11));
            }
          }

          v16 = rint(v14);
          v17 = v16 & ~(v16 >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          *(a3 + v11++) = v17;
        }

        while (v11 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284055018;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v25, v8);
  cv::Mat::copyTo(a2, v25);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v23, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 2460);
    cv::error(v25, v20);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055018;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284055018;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055018;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = *(result + 8);
    v9 = vdupq_lane_s64(v7, 0);
    v10 = 8 * v8;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        do
        {
          v13 = (*a2 + 8 * v12);
          v14 = vmlaq_n_f64(v9, v13[1], *v6);
          v15 = vmlaq_n_f64(v9, *v13, *v6);
          if (v8 >= 2)
          {
            v16 = 8;
            do
            {
              v17 = (a2[v16 / 8] + 8 * v12);
              v18 = v6[v16 / 8];
              v14 = vmlaq_n_f64(v14, v17[1], v18);
              v15 = vmlaq_n_f64(v15, *v17, v18);
              v16 += 8;
            }

            while (v10 != v16);
          }

          *(a3 + v12) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v15)), vcvtq_s64_f64(vrndxq_f64(v14))), 0), v11)), v7).u32[0];
          v12 += 4;
        }

        while (v12 <= a6 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < a6)
      {
        do
        {
          v19 = *&v7 + *v6 * *(*a2 + 8 * v12);
          if (v8 >= 2)
          {
            v20 = 8;
            do
            {
              v19 = v19 + v6[v20 / 8] * *(a2[v20 / 8] + 8 * v12);
              v20 += 8;
            }

            while (v10 != v20);
          }

          v21 = rint(v19);
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          *(a3 + v12++) = v22;
        }

        while (v12 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284055060;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v26, v8);
  cv::Mat::copyTo(a2, v26);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v24, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 2460);
    cv::error(v26, v21);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055060;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284055060;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055060;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = *(result + 8);
    v9 = vdupq_lane_s32(*&a7, 0);
    v10.i64[0] = 0xFFFF0000FFFFLL;
    v10.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v12 = *a2;
        v13 = vld1q_dup_f32(v7);
        do
        {
          v14 = vmlaq_f32(v9, *(v12 + 4 * v11), v13);
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              result = a2[i];
              v14 = vmlaq_n_f32(v14, *(result + 4 * v11), v7[i]);
            }
          }

          *(a3 + 2 * v11) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v14.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v14)))), 0), v10));
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        v16 = *v7;
        v17 = *a2;
        do
        {
          v18 = *&a7 + (v16 * *(v17 + 4 * v11));
          if (v8 >= 2)
          {
            for (j = 1; j != v8; ++j)
            {
              v18 = v18 + (v7[j] * *(a2[j] + 4 * v11));
            }
          }

          v20 = rint(v18);
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 0xFFFF)
          {
            LOWORD(v21) = -1;
          }

          *(a3 + 2 * v11++) = v21;
        }

        while (v11 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_2840550A8;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v25, v8);
  cv::Mat::copyTo(a2, v25);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v23, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 2460);
    cv::error(v25, v20);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550A8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_2840550A8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550A8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = *(result + 8);
    v9 = vdupq_lane_s64(v7, 0);
    v10 = 8 * v8;
    v11.i64[0] = 0xFFFF0000FFFFLL;
    v11.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        v13 = *a2;
        v14 = vld1q_dup_f64(v6);
        do
        {
          v15 = (v13 + 8 * v12);
          v16 = vmlaq_f64(v9, v15[1], v14);
          v17 = vmlaq_f64(v9, *v15, v14);
          if (v8 >= 2)
          {
            v18 = 8;
            do
            {
              result = a2[v18 / 8] + 8 * v12;
              v19 = v6[v18 / 8];
              v16 = vmlaq_n_f64(v16, *(result + 16), v19);
              v17 = vmlaq_n_f64(v17, *result, v19);
              v18 += 8;
            }

            while (v10 != v18);
          }

          *(a3 + 2 * v12) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v17)), vcvtq_s64_f64(vrndxq_f64(v16))), 0), v11));
          v12 += 4;
        }

        while (v12 <= a6 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < a6)
      {
        v20 = *v6;
        v21 = *a2;
        do
        {
          v22 = *&v7 + v20 * *(v21 + 8 * v12);
          if (v8 >= 2)
          {
            v23 = 8;
            do
            {
              result = a2[v23 / 8];
              v22 = v22 + v6[v23 / 8] * *(result + 8 * v12);
              v23 += 8;
            }

            while (v10 != v23);
          }

          v24 = rint(v22);
          v25 = v24 & ~(v24 >> 31);
          if (v25 >= 0xFFFF)
          {
            LOWORD(v25) = -1;
          }

          *(a3 + 2 * v12++) = v25;
        }

        while (v12 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_2840550F0;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v26, v8);
  cv::Mat::copyTo(a2, v26);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v24, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 2460);
    cv::error(v26, v21);
  }

  return a1;
}