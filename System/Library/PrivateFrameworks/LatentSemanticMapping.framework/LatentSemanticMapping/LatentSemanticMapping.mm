void LSMWordTable::Load(LSMWordTable *this, LSMReadFileDesc *a2)
{
  if ((a2 & 2) == 0)
  {
    operator new();
  }

  operator new();
}

uint64_t LSMWordTable::LookupPair(LSMWordTable *this, unsigned int a2, unsigned int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = v12;
  v5 = Encode(a2, &v11);
  v6 = Encode(a3, &v11);
  v7 = v11;
  *v11 = 0;
  v8 = (*(*this + 8))(this, v12, v7 - v12, 1);
  if (v8)
  {
    result = (v6 << 26) | (v5 << 28) | v8 | 0x40000000u;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Encode(unsigned int a1, unsigned __int8 **a2)
{
  if (a1 < 0x40000)
  {
    if (a1 < 0x1000)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v2 = (*a2)++;
    *v2 = ((a1 >> 18) & 0x3F) + 33;
  }

  v3 = (*a2)++;
  *v3 = ((a1 >> 12) & 0x3F) + 33;
LABEL_5:
  v4 = (*a2)++;
  *v4 = ((a1 >> 6) & 0x3F) + 33;
  v5 = (*a2)++;
  *v5 = (a1 & 0x3F) + 33;
  if (a1 >> 18)
  {
    return 2;
  }

  else
  {
    return a1 > 0xFFF;
  }
}

uint64_t LSMWordTable::LookupTriplet(LSMWordTable *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = v15;
  v7 = Encode(a2, &v14);
  v8 = Encode(a3, &v14);
  v9 = Encode(a4, &v14);
  v10 = v14;
  *v14 = 0;
  v11 = (*(*this + 8))(this, v15, v10 - v15, 1);
  if (v11)
  {
    result = v11 | (((4 * v8) | (16 * v7) | v9) << 24) | 0x80000000;
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *LSMWordTable::Pair(LSMWordTable *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 >> 30)
  {
    v7 = 0xFFFFFF;
  }

  else
  {
    v7 = 0x3FFFFFFF;
  }

  result = (*(*this + 16))(this, v7 & a2);
  v9 = result;
  if (result)
  {
    *a3 = Decode(&v9, (a2 >> 28) & 3);
    result = Decode(&v9, (a2 >> 26) & 3);
    *a4 = result;
  }

  else
  {
    *a4 = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t Decode(const unsigned __int8 **a1, int a2)
{
  v2 = *a1;
  if (a2)
  {
    if (a2 == 2)
    {
      *a1 = v2 + 1;
      v3 = (*v2++ << 18) - 8650752;
    }

    else
    {
      v3 = 0;
    }

    *a1 = v2 + 1;
    a2 = ((*v2++ << 12) - 135168) | v3;
  }

  *a1 = v2 + 1;
  v4 = (*v2 << 6) - 2112;
  *a1 = v2 + 2;
  return v4 | a2 | (v2[1] - 33);
}

unsigned __int8 *LSMWordTable::Triplet(LSMWordTable *this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  if (a2 >> 30)
  {
    v9 = 0xFFFFFF;
  }

  else
  {
    v9 = 0x3FFFFFFF;
  }

  result = (*(*this + 16))(this, v9 & a2);
  v11 = result;
  if (result)
  {
    *a3 = Decode(&v11, (a2 >> 28) & 3);
    *a4 = Decode(&v11, (a2 >> 26) & 3);
    result = Decode(&v11, HIBYTE(a2) & 3);
    *a5 = result;
  }

  else
  {
    *a5 = 0;
    *a4 = 0;
    *a3 = 0;
  }

  return result;
}

unint64_t FindWord(unsigned __int8 **a1, uint64_t a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    v4 = 0;
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    while (2)
    {
      result = (v4 + a3) >> 1;
      v9 = *(a2 + 4 * result);
      v10 = &v7[v9];
      v11 = v6;
      v12 = v5;
      while (1)
      {
        v14 = *v11++;
        v13 = v14;
        v15 = *v10++;
        v16 = v13 == v15;
        v17 = v13 > v15;
        if (v13 < v15)
        {
          a3 = result;
        }

        if (v17)
        {
          v4 = result + 1;
        }

        if (!v16)
        {
          break;
        }

        if (!--v12)
        {
          if (!v5[v7 + v9])
          {
            v18 = 1;
            goto LABEL_17;
          }

          a3 = result;
          break;
        }
      }

      if (v4 < a3)
      {
        continue;
      }

      break;
    }

    v18 = 0;
    result = v4;
  }

  else
  {
    v18 = 0;
    result = 0;
  }

LABEL_17:
  *a4 = v18;
  return result;
}

void LSMCommonWordTable::LSMCommonWordTable(LSMCommonWordTable *this)
{
  *this = &unk_2867C1058;
  *(this + 2) = 0;
  LSMVectorBase::LSMVectorBase((this + 16), 1);
}

void LSMCommonWordTable::LSMCommonWordTable(LSMCommonWordTable *this, const LSMCommonWordTable *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = *(a2 + 2);
  LSMVectorBase::LSMVectorBase((this + 16), (a2 + 16));
}

uint64_t LSMCommonWordTable::BeginSweep(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(this + 12) = v1;
  return this;
}

uint64_t LSMCommonWordTable::MarkUsed(LSMCommonWordTable *this, unsigned int a2)
{
  if (a2 >> 30)
  {
    v2 = 0xFFFFFF;
  }

  else
  {
    v2 = 0x3FFFFFFF;
  }

  v3 = v2 & a2;
  v4 = *(this + 3);
  if ((v2 & a2) < v4)
  {
    return 0;
  }

  v7 = *(this + 2);
  v8 = strlen((v7 + v3)) + 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    memmove((v7 + v4), (v7 + v3), v8);
    v3 = *(this + 3);
  }

  *(this + 3) = v3 + v8;
  return v5;
}

uint64_t LSMCommonWordTable::EndSweep(LSMCommonWordTable *this)
{
  v2 = *(this + 3);
  v3 = *(this + 5);
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 2, v2, 1);
    v3 = *(this + 5);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 4) = v3;
  v4 = *(*this + 112);

  return v4(this);
}

uint64_t LSMCommonWordTable::ValidTuples(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = *a2;
  v4 = *a2 + 4 * v2;
  while (1)
  {
    v5 = *v3 >> 30 ? 0xFFFFFF : 0x3FFFFFFF;
    v6 = v5 & *v3;
    if (*(a1 + 32) <= v6 || v6 && *(*(a1 + 16) + v6 - 1))
    {
      break;
    }

    if (++v3 >= v4)
    {
      return 1;
    }
  }

  return 0;
}

void LSMImmutableWordTable::LSMImmutableWordTable(LSMImmutableWordTable *this, const LSMImmutableWordTable *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = *(a2 + 2);
  LSMVectorBase::LSMVectorBase((this + 16), (a2 + 16));
  *this = &unk_2867C10E0;
  LSMVectorBase::LSMVectorBase((this + 48), (a2 + 48));
}

void sub_255A541CC(_Unwind_Exception *a1)
{
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMImmutableWordTable::LSMImmutableWordTable(LSMImmutableWordTable *this, const LSMMutableWordTable *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = *(a2 + 2);
  LSMVectorBase::LSMVectorBase((this + 16), (a2 + 16));
  *this = &unk_2867C10E0;
  LSMVectorBase::LSMVectorBase((this + 48), 4);
  v4 = *(a2 + 7);
  if (*(this + 9) < v4)
  {
    LSMVectorBase::Allocate(this + 6, *(a2 + 7), 1);
  }

  LSMTreeBase::Begin(a2 + 48, v7);
  v5 = v4 + 1;
  while (--v5)
  {
    v6 = *v7[3];
    LSMVectorBase::Append(this + 6);
    *(*(this + 6) + 4 * *(this + 8) - 4) = v6;
    LSMTreeIterBase::operator++(v7);
  }
}

void sub_255A542F8(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase((v1 + 48));
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMImmutableWordTable::LSMImmutableWordTable(LSMImmutableWordTable *this, LSMReadFileDesc *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = 0;
  v4 = (this + 8);
  LSMVectorBase::LSMVectorBase((this + 16), 1);
  *this = &unk_2867C10E0;
  LSMVectorBase::LSMVectorBase((this + 48), 4);
  memset(__nitems, 0, sizeof(__nitems));
  LSMReadFileDesc::Read(a2, &__nitems[2], 1uLL, 4uLL);
  LSMReadFileDesc::Read(a2, &__nitems[1], 1uLL, 4uLL);
  LSMReadFileDesc::Read(a2, __nitems, 1uLL, 4uLL);
  if (__nitems[2] < 2)
  {
    *v4 = 1;
  }

  else
  {
    LSMReadFileDesc::Read(a2, v4, 1uLL, 4uLL);
  }

  LSMReadFileDesc::ReadVec(a2, this + 6, __nitems[1]);
  LSMReadFileDesc::ReadVec(a2, this + 2, __nitems[0]);
  LSMVectorBase::advise(this + 48, 3);
  LSMVectorBase::advise(this + 16, 3);
}

void sub_255A5446C(_Unwind_Exception *a1)
{
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMImmutableWordTable::Clone(LSMImmutableWordTable *this, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t LSMImmutableWordTable::Lookup(LSMImmutableWordTable *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(this + 2);
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = v3;
  v7 = 0;
  v4 = *(this + 6);
  Word = FindWord(v8, v4, *(this + 8), &v7);
  result = 0;
  if (v7 == 1)
  {
    return *(v4 + 4 * Word);
  }

  return result;
}

uint64_t LSMImmutableWordTable::Store(LSMImmutableWordTable *this, FILE **a2, __int16 a3)
{
  v5 = *(this + 4);
  v11 = v5;
  if ((a3 & 0x100) != 0)
  {
    v6 = v5;
    LSMVectorBase::LSMVectorBase(__ptr, 1);
    if (__ptr[3] < v6)
    {
      LSMVectorBase::Allocate(__ptr, v6, 1);
    }

    if (*(this + 4) >= 1)
    {
      v7 = *(this + 2);
      do
      {
        v8 = *v7;
        LSMVectorBase::Append(__ptr);
        *(__ptr[0] + __ptr[2] - 1) = (v8 >> 1) & 0x55 | (2 * v8) & 0xAA;
        ++v7;
      }

      while (v7 < *(this + 2) + *(this + 4));
    }

    LSMVectorBase::Swap(this + 2, __ptr);
    (*(*this + 112))(this);
    LSMVectorBase::~LSMVectorBase(__ptr);
  }

  LODWORD(__ptr[0]) = *(this + 8);
  if (LSMWriteFileDesc::Write(a2, &kLSMWordTableVersion, 1uLL, 4uLL) && LSMWriteFileDesc::Write(a2, __ptr, 1uLL, 4uLL) && LSMWriteFileDesc::Write(a2, &v11, 1uLL, 4uLL) && LSMWriteFileDesc::Write(a2, this + 8, 1uLL, 4uLL) && LSMWriteFileDesc::WriteVec(a2, (this + 48)) && LSMWriteFileDesc::WriteVec(a2, (this + 16)))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_255A54738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

void sub_255A548C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  LSMVectorBase::~LSMVectorBase(va);
  LSMTreeBase::~LSMTreeBase((v10 - 88));
  _Unwind_Resume(a1);
}

void LSMMutableWordTable::LSMMutableWordTable(LSMMutableWordTable *this)
{
  *this = &unk_2867C1058;
  *(this + 2) = 0;
  LSMVectorBase::LSMVectorBase((this + 16), 1);
  *this = &unk_2867C1168;
  LSMTreeBase::LSMTreeBase((this + 48), 4u);
}

void sub_255A549B8(_Unwind_Exception *a1)
{
  LSMTreeBase::~LSMTreeBase(v3);
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMMutableWordTable::LSMMutableWordTable(LSMMutableWordTable *this, const LSMImmutableWordTable *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = *(a2 + 2);
  LSMVectorBase::LSMVectorBase((this + 16), (a2 + 16));
  *this = &unk_2867C1168;
  LSMTreeBase::LSMTreeBase((this + 48), 4u);
}

void sub_255A54ADC(_Unwind_Exception *a1)
{
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMMutableWordTable::LSMMutableWordTable(LSMMutableWordTable *this, const LSMMutableWordTable *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = *(a2 + 2);
  LSMVectorBase::LSMVectorBase((this + 16), (a2 + 16));
  *this = &unk_2867C1168;
  LSMTreeBase::LSMTreeBase((this + 48), 4u);
}

void sub_255A54C04(_Unwind_Exception *a1)
{
  LSMTreeBase::~LSMTreeBase(v3);
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMMutableWordTable::LSMMutableWordTable(LSMMutableWordTable *this, LSMReadFileDesc *a2)
{
  *this = &unk_2867C1058;
  *(this + 2) = 0;
  LSMVectorBase::LSMVectorBase((this + 16), 1);
  *this = &unk_2867C1168;
  LSMTreeBase::LSMTreeBase((this + 48), 4u);
}

void sub_255A54DBC(_Unwind_Exception *a1)
{
  *v1 = v2;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMMutableWordTable::Clone(LSMMutableWordTable *this, int a2)
{
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t LSMMutableWordTable::Lookup(LSMMutableWordTable *this, const unsigned __int8 *a2, size_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v9 = this + 16;
  v8 = *(this + 2);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = v8;
  LSMTreeBase::LowerBound(this + 48, v19, &v17);
  LOWORD(v16[0]) = 0;
  if (LSMTreeIterBase::Equal(&v17, v16) || (v10 = **(&v18 + 1), strlen((*v9 + v10)) != a3) || memcmp(a2, (*v9 + v10), a3))
  {
    v11 = *(this + 8);
    v15 = v11;
    if (a4)
    {
      v12 = 0x40000000;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 | v11) >> 30)
    {
      v13 = 0xFFFFFF;
    }

    else
    {
      v13 = 0x3FFFFFFF;
    }

    if (v13 >= v11)
    {
      LSMVectorBase::Append(v9, a2, a3);
      LSMVectorBase::Append(v9);
      *(*(this + 2) + *(this + 4) - 1) = 0;
      v16[0] = v17;
      v16[1] = v18;
      LSMTreeBase::Insert((v9 + 32), &v15, v16);
      return v15;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v10;
}

BOOL LSMMutableWordTable::SetStopWords(LSMMutableWordTable *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    *(this + 2) = *(this + 4);
  }

  return v1 == 0;
}

uint64_t LSMMutableWordTable::UnsetStopWords(uint64_t this)
{
  if (!*(this + 8))
  {
    *(this + 8) = 1;
  }

  return this;
}

void sub_255A55108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  LSMTreeBase::~LSMTreeBase(va);
  _Unwind_Resume(a1);
}

void LSMImmutableWordTable::~LSMImmutableWordTable(void **this)
{
  *this = &unk_2867C10E0;
  LSMVectorBase::~LSMVectorBase(this + 6);
  *this = &unk_2867C1058;
  LSMVectorBase::~LSMVectorBase(this + 2);
}

{
  *this = &unk_2867C10E0;
  LSMVectorBase::~LSMVectorBase(this + 6);
  *this = &unk_2867C1058;
  LSMVectorBase::~LSMVectorBase(this + 2);

  JUMPOUT(0x259C48400);
}

void sub_255A55190(_Unwind_Exception *a1)
{
  *v1 = &unk_2867C1058;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void LSMWordTree::~LSMWordTree(LSMWordTree *this)
{
  LSMTreeBase::~LSMTreeBase(this);

  JUMPOUT(0x259C48400);
}

void LSMMutableWordTable::~LSMMutableWordTable(void **this)
{
  *this = &unk_2867C1168;
  LSMTreeBase::~LSMTreeBase((this + 6));
  *this = &unk_2867C1058;
  LSMVectorBase::~LSMVectorBase(this + 2);
}

{
  *this = &unk_2867C1168;
  LSMTreeBase::~LSMTreeBase((this + 6));
  *this = &unk_2867C1058;
  LSMVectorBase::~LSMVectorBase(this + 2);

  JUMPOUT(0x259C48400);
}

void sub_255A55374(_Unwind_Exception *a1)
{
  *v1 = &unk_2867C1058;
  LSMVectorBase::~LSMVectorBase((v1 + 16));
  _Unwind_Resume(a1);
}

void *LSMVectorBase::Append(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 == this[3])
  {
    this = LSMVectorBase::Allocate(this, v2 + 1, 0);
    v2 = v1[2];
  }

  v1[2] = v2 + 1;
  return this;
}

BOOL LSMTupleCount::AddWithWeight(LSMTupleCount *this, const LSMTupleCount *a2, float a3)
{
  AccumulateWithWeight(this, *a2, a3);
  AccumulateWithWeight(this + 1, *(a2 + 1), a3);
  v6 = *(a2 + 2);

  return AccumulateWithWeight(this + 2, v6, a3);
}

BOOL AccumulateWithWeight(unsigned int *a1, unsigned int a2, float a3)
{
  *&v3 = a2;
  v4 = a2 * a3;
  LODWORD(v3) = *a1;
  v5 = v3;
  v6 = ceil(v4 + -0.5);
  v7 = floor(v4 + 0.5);
  if (v4 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 + v5;
  if (v9 >= 0.0)
  {
    if (v9 >= 4294967300.0)
    {
      *a1 = -1;
      return 1;
    }

    else
    {
      *a1 = v9;
      return v9 != 0;
    }
  }

  else
  {
    v10 = 0;
    *a1 = 0;
  }

  return v10;
}

uint64_t LSMTupleCount::RatherFull(LSMTupleCount *this)
{
  if ((*this & 0x80000000) != 0 || (*(this + 1) & 0x80000000) != 0)
  {
    return 1;
  }

  else
  {
    return *(this + 2) >> 31;
  }
}

unint64_t LSMTupleMap::FindInPage(LSMTupleMap *this, unsigned int *a2, char *a3, unint64_t a4, BOOL *a5)
{
  v5 = *a2;
  v6 = a3;
  if (a4)
  {
    v6 = a3;
    v7 = a4;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 < v5)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  result = (v6 - a3) >> 3;
  v13 = result < a4 && *v6 == v5;
  *a5 = v13;
  return result;
}

BOOL LSMTupleMap::Add(LSMTupleMap *this, const LSMTupleMap *a2)
{
  LSMTreeBase::Begin(a2, v13);
  v12[0] = 0;
  v11[0] = 0;
  for (result = LSMTreeIterBase::Equal(v13, v11); !result; result = LSMTreeIterBase::Equal(v13, v11))
  {
    if (v14[1])
    {
      LSMTreeBase::LowerBound(this, v14, &v9);
      v4 = LSMTreeIterBase::Equal(&v9, v12);
      v5 = v14;
      if (v4 || (v6 = *(&v10 + 1), **(&v10 + 1) != *v14))
      {
        v8[0] = v9;
        v8[1] = v10;
        LSMTreeBase::Insert(this, v14, v8);
      }

      else
      {
        v7 = *(*(&v10 + 1) + 4);
        if (!v7)
        {
          --*(this + 7);
        }

        *(v6 + 4) = v5[1] + v7;
      }
    }

    LSMTreeIterBase::operator++(v13);
  }

  return result;
}

BOOL LSMTupleMap::Add(LSMTupleMap *this, const LSMTupleMap *a2, float a3)
{
  LSMTreeBase::Begin(a2, v21);
  v20[0] = 0;
  v19[0] = 0;
  for (result = LSMTreeIterBase::Equal(v21, v19); !result; result = LSMTreeIterBase::Equal(v21, v19))
  {
    if (v22[1])
    {
      LSMTreeBase::LowerBound(this, v22, &v17);
      v6 = LSMTreeIterBase::Equal(&v17, v20);
      v8 = v22;
      v9 = *v22;
      if (v6 || **(&v18 + 1) != v9)
      {
        v16 = v9;
        LODWORD(v7) = v22[1];
        v11 = a3 * v7;
        v12 = ceil(v11 + -0.5);
        v13 = floor(v11 + 0.5);
        if (v11 >= 0.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        if (v14 < 0.0)
        {
          goto LABEL_15;
        }

        if (v14 >= 4294967300.0)
        {
          HIDWORD(v16) = -1;
        }

        else
        {
          HIDWORD(v16) = (v14 + 0.0);
          if (!HIDWORD(v16))
          {
            goto LABEL_15;
          }
        }

        v15[0] = v17;
        v15[1] = v18;
        LSMTreeBase::Insert(this, &v16, v15);
      }

      else
      {
        v10 = (*(&v18 + 1) + 4);
        *(this + 7) -= *(*(&v18 + 1) + 4) == 0;
        *(this + 7) += !AccumulateWithWeight(v10, v8[1], a3);
      }
    }

LABEL_15:
    LSMTreeIterBase::operator++(v21);
  }

  return result;
}

uint64_t LSMTupleAccumulator::operator[](LSMTreeBase *a1, int a2)
{
  v11 = a2;
  LSMTreeBase::LowerBound(a1, &v11, &v9);
  LOWORD(v7) = 0;
  if (LSMTreeIterBase::Equal(&v9, &v7))
  {
    v3 = v11;
LABEL_4:
    v6[2] = 0;
    v7 = v9;
    v8 = v10;
    v6[0] = v3;
    v6[1] = 0;
    LSMTreeBase::Insert(a1, v6, &v7);
    LSMTreeBase::LowerBound(a1, &v11, &v7);
    v4 = *(&v8 + 1);
    return v4 + 4;
  }

  v4 = *(&v10 + 1);
  v3 = v11;
  if (**(&v10 + 1) != v11)
  {
    goto LABEL_4;
  }

  return v4 + 4;
}

uint64_t LSMMutableTextCounter::Seen(uint64_t this, unsigned int a2)
{
  v2 = this;
  v9 = a2;
  if (a2 == -1)
  {
    *(this + 88) = 1;
    return this;
  }

  if (*(this + 88))
  {
    return this;
  }

  LSMTreeBase::LowerBound(this + 24, &v9, &v7);
  LOWORD(v6[0]) = 0;
  this = LSMTreeIterBase::Equal(&v7, v6);
  if (this)
  {
    v3 = v9;
LABEL_8:
    v6[0] = v7;
    v6[1] = v8;
    v5[0] = v3;
    v5[1] = 1;
    this = LSMTreeBase::Insert((v2 + 24), v5, v6);
    v4 = v9;
    goto LABEL_9;
  }

  v4 = **(&v8 + 1);
  v3 = v9;
  if (**(&v8 + 1) != v9)
  {
    goto LABEL_8;
  }

  ++*(*(&v8 + 1) + 4);
LABEL_9:
  ++*(v2 + 4 * (v4 >> 30) + 8);
  return this;
}

uint64_t LSMMutableTextCounter::HadOverflow(LSMMutableTextCounter *this)
{
  if (*(this + 88) != 1)
  {
    return 0;
  }

  *(this + 88) = 0;
  return 4294960651;
}

void LSMImmutableTextCounter::LSMImmutableTextCounter(LSMImmutableTextCounter *this, const LSMImmutableMapCounter *a2)
{
  *(this + 4) = 0;
  *this = &unk_2867C1328;
  *(this + 1) = 0;
  *(this + 5) = *(a2 + 4);
  LSMVectorBase::LSMVectorBase((this + 24), 4);
  *(this + 7) = a2 + 24;
  *(this + 8) = a2 + 56;
  v4 = *(a2 + 5);
  v5 = *(this + 6);
  if (v5 < v4)
  {
    LSMVectorBase::Allocate(this + 3, v4, 1);
    v5 = *(this + 6);
  }

  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(this + 5) = v5;
  bzero(*(this + 3), 4 * v5);
}

uint64_t LSMImmutableTextCounter::Seen(uint64_t this, unsigned int a2)
{
  v2 = *(this + 56);
  v3 = *v2;
  v4 = v2[2];
  v5 = &(*v2)[4 * v4];
  if (v4)
  {
    v6 = *v2;
    do
    {
      v7 = v4 >> 1;
      v8 = &v6[4 * (v4 >> 1)];
      v10 = *v8;
      v9 = v8 + 4;
      v4 += ~(v4 >> 1);
      if (v10 < a2)
      {
        v6 = v9;
      }

      else
      {
        v4 = v7;
      }
    }

    while (v4);
  }

  else
  {
    v6 = *v2;
  }

  if (v6 != v5 && *v6 == a2)
  {
    ++*(*(this + 24) + v6 - v3);
    ++*(this + 4 * (a2 >> 30) + 8);
  }

  return this;
}

void LSMImmutableTextCounter::GetNormalizedVector(uint64_t a1, LSMVectorBase *this)
{
  v4 = *(a1 + 56);
  v5 = *v4;
  v6 = v4[2];
  v7 = *v4 + 4 * v6;
  if (v6)
  {
    v8 = v5;
    v9 = v6;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if (v13 >> 30)
      {
        v9 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v9);
  }

  else
  {
    v8 = v5;
  }

  if (v7 != v8)
  {
    v14 = (v7 - v8) >> 2;
    v7 = v8;
    do
    {
      v15 = v14 >> 1;
      v16 = (v7 + 4 * (v14 >> 1));
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      v19 = v18 < 0;
      if (v18 < 0)
      {
        v14 = v15;
      }

      if (!v19)
      {
        v7 = v17;
      }
    }

    while (v14);
  }

  v20 = *(a1 + 8);
  v21 = 1.0;
  v22 = 1.0;
  if (v20)
  {
    v22 = 1.0 / v20;
  }

  v23 = *(a1 + 12);
  if (v23)
  {
    v21 = 1.0 / v23;
  }

  v24 = v7 - v5;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 1.0 / v25;
  }

  else
  {
    v26 = 1.0;
  }

  v27 = v8 - v5;
  v28 = v24 >> 2;
  v29 = *(a1 + 20);
  if (v29)
  {
    v30 = *(this + 3);
    v31 = *(a1 + 20);
    if (v30 < v29)
    {
      LSMVectorBase::Allocate(this, *(a1 + 20), 1);
      v30 = *(this + 3);
      v31 = *(a1 + 20);
    }

    if (v30 >= v29)
    {
      v30 = v29;
    }

    *(this + 2) = v30;
    bzero(*this, 4 * v31);
    if (v8 != v5)
    {
      v32 = *(a1 + 24);
      v33 = *this;
      v34 = **(a1 + 64);
      if (v27 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v8 - v5;
      }

      do
      {
        v36 = *v32++;
        v37 = v36;
        v38 = *v34++;
        *(v33 + 4 * v38) = *(v33 + 4 * v38) + (v37 * v22);
        --v35;
      }

      while (v35);
    }

    v39 = v28 - v27;
    if (v28 > v27)
    {
      v40 = *this;
      v41 = (**(a1 + 64) + 4 * v27);
      v42 = (*(a1 + 24) + 4 * v27);
      do
      {
        v43 = *v42++;
        v44 = v43;
        v45 = *v41++;
        *(v40 + 4 * v45) = *(v40 + 4 * v45) + (v44 * v21);
        --v39;
      }

      while (v39);
    }

    v46 = v6 - v28;
    if (v6 > v28)
    {
      v47 = *this;
      v48 = (**(a1 + 64) + 4 * v28);
      v49 = (*(a1 + 24) + 4 * v28);
      do
      {
        v50 = *v49++;
        v51 = v50;
        v52 = *v48++;
        *(v47 + 4 * v52) = *(v47 + 4 * v52) + (v51 * v26);
        --v46;
      }

      while (v46);
    }
  }

  else
  {
    v53 = *(this + 3);
    if (v53 < v6)
    {
      LSMVectorBase::Allocate(this, v6, 1);
      v53 = *(this + 3);
    }

    if (v53 >= v6)
    {
      v53 = v6;
    }

    *(this + 2) = v53;
    if (v8 != v5)
    {
      v54 = *(a1 + 24);
      v55 = *this;
      if (v27 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = v8 - v5;
      }

      do
      {
        v57 = *v54++;
        *v55++ = v22 * v57;
        --v56;
      }

      while (v56);
    }

    v58 = v28 - v27;
    if (v28 > v27)
    {
      v59 = (*this + 4 * v27);
      v60 = (*(a1 + 24) + 4 * v27);
      do
      {
        v61 = *v60++;
        *v59++ = v21 * v61;
        --v58;
      }

      while (v58);
    }

    v62 = v6 - v28;
    if (v6 > v28)
    {
      v63 = (*this + 4 * v28);
      v64 = (*(a1 + 24) + 4 * v28);
      do
      {
        v65 = *v64++;
        *v63++ = v26 * v65;
        --v62;
      }

      while (v62);
    }
  }
}

void LSMTextCounter::Create(LSMTextCounter *this, const LSMImmutableMapCounter *a2)
{
  if (this)
  {
    operator new();
  }

  operator new();
}

void LSMMapCounter::LSMMapCounter(LSMMapCounter *this)
{
  *(this + 1) = 0;
  LSMVectorBase::LSMVectorBase((this + 8), 8);
  LSMTreeBase::LSMTreeBase((this + 40), 8u);
}

void sub_255A5623C(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase((v1 + 104));
  LSMTreeBase::~LSMTreeBase(v2);
  LSMVectorBase::~LSMVectorBase((v1 + 8));
  _Unwind_Resume(a1);
}

void LSMMapCounter::LSMMapCounter(LSMMapCounter *this, const LSMImmutableMapCounter *a2)
{
  *this = *a2;
  *(this + 1) = 0;
  LSMVectorBase::LSMVectorBase((this + 8), 8);
  LSMTreeBase::LSMTreeBase((this + 40), 8u);
}

void sub_255A5643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, LSMTreeBase *a9)
{
  LSMVectorBase::~LSMVectorBase(v9 + 17);
  LSMVectorBase::~LSMVectorBase(v9 + 13);
  LSMTreeBase::~LSMTreeBase(a9);
  LSMVectorBase::~LSMVectorBase(v9 + 1);
  _Unwind_Resume(a1);
}

void LSMMapCounter::AddCategories(LSMMapCounter *this, unsigned int a2)
{
  v4 = a2;
  v5 = *(this + 3);
  if (v5 < a2)
  {
    v6 = *(this + 4);
    if (v6 < a2)
    {
      LSMVectorBase::Allocate(this + 1, a2, 1);
      v6 = *(this + 4);
    }

    if (v6 >= v4)
    {
      v6 = v4;
    }

    *(this + 3) = v6;
    if (a2 > v5)
    {
      operator new();
    }
  }

  v7 = *(this + 15);
  if (v7 < v4)
  {
    v8 = *(this + 16);
    if (v8 < v4)
    {
      LSMVectorBase::Allocate(this + 13, v4, 1);
      v8 = *(this + 16);
    }

    if (v8 >= v4)
    {
      v8 = v4;
    }

    *(this + 15) = v8;
    if (v7 < a2)
    {
      v9 = (*(this + 13) + 12 * v7);

      bzero(v9, 12 * (~v7 + a2) + 12);
    }
  }
}

void LSMMapCounter::LSMMapCounter(LSMMapCounter *this, LSMReadFileDesc *a2, LSMWordTable *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  v3 = this + 4;
  LSMVectorBase::LSMVectorBase((this + 8), 8);
  LSMTreeBase::LSMTreeBase((v3 + 36), 8u);
}

void sub_255A56C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  LSMVectorBase::~LSMVectorBase(va1);
  LSMVectorBase::~LSMVectorBase(va);
  LSMVectorBase::~LSMVectorBase((v9 + 136));
  LSMVectorBase::~LSMVectorBase((v9 + 104));
  LSMTreeBase::~LSMTreeBase(v10);
  LSMVectorBase::~LSMVectorBase((v8 + 4));
  _Unwind_Resume(a1);
}

uint64_t LSMMapCounter::RescaleCounts(uint64_t this)
{
  if (*(this + 24))
  {
    LSMTupleMap::Scale(**(this + 8));
  }

  return this;
}

void LSMMapCounter::~LSMMapCounter(LSMMapCounter *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 1);
    v4 = v3;
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
        v3 = *(this + 1);
        v2 = *(this + 3);
      }

      ++v4;
    }

    while (v4 != &v3[v2]);
  }

  LSMVectorBase::~LSMVectorBase(this + 17);
  LSMVectorBase::~LSMVectorBase(this + 13);
  LSMTreeBase::~LSMTreeBase((this + 40));
  LSMVectorBase::~LSMVectorBase(this + 1);
}

void LSMMapCounter::ApplyCategoryClusters(uint64_t a1, unint64_t a2, void *a3)
{
  LSMVectorBase::LSMVectorBase(v20, 8, a2);
  bzero(v20[0], 8 * a2);
  LSMVectorBase::LSMVectorBase(v19, 12, a2);
  bzero(v19[0], 12 * a2);
  if (a3[2])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(*a3 + 4 * v6);
      v9 = *(v20[0] + v8);
      v10 = *(*(a1 + 8) + 8 * v6);
      if (v9)
      {
        LSMTupleMap::Add(v9, v10);
        v11 = (*(a1 + 104) + 12 * v6);
        v12 = v19[0] + 12 * v8;
        v13 = v12[1];
        *v12 += *v11;
        v12[1] = v13 + v11[1];
        v12[2] += v11[2];
        v14 = *(*(a1 + 8) + 8 * v6);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      else
      {
        *(v20[0] + v8) = v10;
        v15 = *(a1 + 104) + 12 * v6;
        v16 = v19[0] + 12 * v8;
        v17 = *v15;
        *(v16 + 2) = *(v15 + 8);
        *v16 = v17;
      }

      v6 = v7;
    }

    while (a3[2] > v7++);
  }

  LSMVectorBase::Swap((a1 + 8), v20);
  LSMVectorBase::Swap((a1 + 104), v19);
  LSMVectorBase::~LSMVectorBase(v19);
  LSMVectorBase::~LSMVectorBase(v20);
}

void sub_255A571B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  LSMVectorBase::~LSMVectorBase(&a9);
  LSMVectorBase::~LSMVectorBase(&a13);
  _Unwind_Resume(a1);
}

void LSMImmutableMapCounter::LSMImmutableMapCounter(LSMImmutableMapCounter *this, const LSMMapCounter *a2, LSMWordTable *a3, uint64_t a4, unint64_t a5)
{
  *this = *a2;
  *(this + 1) = 0;
  *(this + 4) = 0;
  LSMVectorBase::LSMVectorBase((this + 24), 4);
  LSMVectorBase::LSMVectorBase((this + 56), 4);
  LSMVectorBase::LSMVectorBase((this + 88), 64);
  LSMVectorBase::LSMVectorBase((this + 120), (a2 + 104));
  LSMVectorBase::LSMVectorBase((this + 152), (a2 + 136));
  if (a5)
  {
    if (**(this + 19) + a4 <= (CFAbsoluteTimeGetCurrent() / 86400.0) || (LSMDebugFlags::sLSMDebug & 0x10) != 0)
    {
      (*(*a3 + 64))(a3);
    }

    else
    {
      a5 = 0;
    }
  }

  v10 = *(this + 17);
  v71[0] = 0;
  LSMVectorBase::LSMVectorBase(v70, 32, v10);
  v11 = v70[0];
  LSMVectorBase::LSMVectorBase(v67, 8);
  v69 = v11;
  v61 = a3;
  if (*(this + 14) >= v10)
  {
    *(this + 13) = v10;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    LSMVectorBase::Allocate(this + 11, v10, 1);
    v12 = *(this + 14);
    if (v12 >= v10)
    {
      v12 = v10;
    }

    *(this + 13) = v12;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(*(a2 + 1) + 8 * v15);
    v17 = *(v16 + 8);
    v18 = *(v16 + 56);
    std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>::pair[abi:ne200100]((*(this + 11) + v13));
    v19 = v17 - v18;
    v20 = *(this + 11);
    if (*(v20 + v13 + 24) < v19)
    {
      LSMVectorBase::Allocate((v20 + v13), v19, 1);
      v20 = *(this + 11);
    }

    v21 = v20 + v13;
    if (*(v21 + 56) < v19)
    {
      LSMVectorBase::Allocate((v21 + 32), v19, 1);
    }

    LSMTreeBase::Begin(v16, v66);
    v22 = v70[0] + v14;
    v23 = v66[1];
    *v22 = v66[0];
    v22[1] = v23;
    if (!LSMTreeIterBase::Equal((v70[0] + v14), v71))
    {
      LSMVectorBase::Append(v67);
      v24 = v67[0];
      *(v67[0] + v68 - 1) = v15;
      *&v66[0] = v69;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMTupleIterComp &,unsigned long *>(v24, v24 + 8 * v68, v66, v68);
    }

    ++v15;
    v14 += 32;
    v13 += 64;
  }

  while (v10 != v15);
LABEL_19:
  v25 = v68;
  v26 = a5 != 0;
  if (v68)
  {
    v27 = 0;
    v28 = 0xFFFFFFFFLL;
    v29 = v61;
    do
    {
      v30 = v67[0];
      v31 = *v67[0];
      *&v66[0] = v69;
      if (v25 >= 2)
      {
        v32 = *v67[0];
        v33 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LSMTupleIterComp &,unsigned long *>(v67[0], v66, v25);
        v34 = &v30[8 * v25 - 8];
        if (v33 == v34)
        {
          *v33 = v32;
        }

        else
        {
          *v33 = *v34;
          *v34 = v32;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMTupleIterComp &,unsigned long *>(v30, (v33 + 1), v66, ((v33 + 1) - v30) >> 3);
        }
      }

      --v68;
      v35 = v70[0];
      v36 = *(v70[0] + 4 * v31 + 3);
      v37 = v36[1];
      if (v37)
      {
        v38 = *v36;
        if (v38 == v27)
        {
          v39 = *(this + 5);
        }

        else
        {
          if (a5 && v27)
          {
            LSMImmutableMapCounter::ProcessTuple(this, v61, v27, v28 < a5);
          }

          LSMVectorBase::Append(this + 3);
          v28 = 0;
          v39 = *(this + 5);
          *(*(this + 3) + 4 * v39 - 4) = v38;
          v27 = v38;
        }

        v40 = (*(this + 11) + (v31 << 6));
        LSMVectorBase::Append(v40);
        *(*v40 + 4 * v40[2] - 4) = v39 - 1;
        v41 = *(this + 11) + (v31 << 6);
        LSMVectorBase::Append((v41 + 32));
        *(*(v41 + 32) + 4 * *(v41 + 48) - 4) = v37;
        ++*(this + 1);
        v28 += v37;
        v35 = v70[0];
      }

      LSMTreeIterBase::operator++(v35 + 32 * v31);
      if (!LSMTreeIterBase::Equal((v70[0] + 32 * v31), v71))
      {
        LSMVectorBase::Append(v67);
        v42 = v67[0];
        *(v67[0] + v68 - 1) = v31;
        *&v66[0] = v69;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMTupleIterComp &,unsigned long *>(v42, v42 + 8 * v68, v66, v68);
      }

      v25 = v68;
    }

    while (v68);
    if (a5)
    {
      v26 = 1;
      if (v27)
      {
        LSMImmutableMapCounter::ProcessTuple(this, v61, v27, v28 < a5);
        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v29 = v61;
  }

  LSMVectorBase::LSMVectorBase(v66, (this + 24));
  LSMVectorBase::Swap(this + 3, v66);
  v43 = *(a2 + 1);
  *(this + 4) = v43;
  if (v43)
  {
    v44 = *(this + 5);
    v45 = *(this + 10);
    if (v45 < v44)
    {
      LSMVectorBase::Allocate(this + 7, *(this + 5), 1);
      v45 = *(this + 10);
    }

    v46 = *(this + 5);
    if (v45 >= v44)
    {
      v45 = v44;
    }

    *(this + 9) = v45;
    if (v46)
    {
      v47 = 0;
      do
      {
        v65 = *(*(this + 3) + 4 * v47);
        LSMTreeBase::LowerBound(a2 + 40, &v65, v63);
        v62[0] = 0;
        if (LSMTreeIterBase::Equal(v63, v62))
        {
          v48 = 0;
        }

        else
        {
          v48 = *(v64 + 4);
        }

        *(*(this + 7) + 4 * v47++) = v48;
      }

      while (v47 < *(this + 5));
    }
  }

  if (v26)
  {
    v49 = (*(*v29 + 56))(v29);
    (*(*v29 + 80))(v29);
    v50 = (*(*v29 + 56))(v29);
    v51 = v50;
    v52 = v49 - v50;
    v53 = *(this + 19);
    v54 = v53[3];
    v55 = v49 - v50 >= v54;
    v56 = v54 - (v49 - v50);
    if (v55)
    {
      v56 = 0;
    }

    v53[4] = v53[2];
    v53[5] = v56;
    v57 = v53[1];
    v55 = v52 >= v57;
    v58 = v57 - v52;
    if (v55)
    {
      v58 = 0;
    }

    v53[2] = *v53;
    v53[3] = v58;
    Current = CFAbsoluteTimeGetCurrent();
    v60 = *(this + 19);
    *v60 = (Current / 86400.0);
    v60[1] = v51;
  }

  LSMVectorBase::~LSMVectorBase(v66);
  LSMVectorBase::~LSMVectorBase(v67);
  LSMVectorBase::~LSMVectorBase(v70);
}

void sub_255A577DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  LSMVectorBase::~LSMVectorBase(va);
  LSMVectorBase::~LSMVectorBase((v18 - 152));
  LSMVectorBase::~LSMVectorBase(v17 + 19);
  LSMVectorBase::~LSMVectorBase(v17 + 15);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>>::~LSMVector((v17 + 11));
  LSMVectorBase::~LSMVectorBase(v17 + 7);
  LSMVectorBase::~LSMVectorBase(v17 + 3);
  _Unwind_Resume(a1);
}

uint64_t LSMImmutableMapCounter::ProcessTuple(uint64_t this, LSMWordTable *a2, uint64_t a3, int a4)
{
  v4 = this;
  if (a4 && (!(a3 >> 30) ? (v5 = 0x3FFFFFFF) : (v5 = 0xFFFFFF), (v5 & a3) < *(*(this + 152) + 20)))
  {
    --*(this + 40);
    v6 = *(this + 104);
    if (v6)
    {
      v7 = 0;
      v8 = (*(this + 88) + 48);
      do
      {
        v9 = *(v8 - 4);
        if (v9)
        {
          if (*(this + 40) == *(*(v8 - 6) + 4 * v9 - 4))
          {
            *(v8 - 4) = v9 - 1;
            --*v8;
            --*(this + 8);
            v6 = *(this + 104);
          }
        }

        ++v7;
        v8 += 8;
      }

      while (v7 < v6);
    }
  }

  else
  {
    this = (*(*a2 + 72))(a2, a3);
    v10 = *(v4 + 24) + 4 * *(v4 + 40);
    *(v10 - 4) -= this;
  }

  return this;
}

void LSMImmutableMapCounter::LSMImmutableMapCounter(LSMImmutableMapCounter *this, LSMReadFileDesc *a2, LSMWordTable **a3, char a4)
{
  v69 = *MEMORY[0x277D85DE8];
  *(this + 4) = 0;
  v8 = (this + 16);
  *(this + 1) = 0;
  LSMVectorBase::LSMVectorBase((this + 24), 4);
  LSMVectorBase::LSMVectorBase((v8 + 5), 4);
  LSMVectorBase::LSMVectorBase((this + 88), 64);
  LSMVectorBase::LSMVectorBase((this + 120), 12);
  LSMVectorBase::LSMVectorBase((this + 152), 4);
  v9 = *a3;
  __dst = 0;
  v65 = 0;
  LSMReadFileDesc::Read(a2, &__dst + 1, 1uLL, 4uLL);
  if (HIDWORD(__dst) < 3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    LSMVectorBase::Append(this + 19);
    *(*(this + 19) + 4 * *(this + 21) - 4) = (Current / 86400.0);
    v11 = (*(*v9 + 56))(v9);
    LSMVectorBase::Append(this + 19);
    *(*(this + 19) + 4 * *(this + 21) - 4) = v11;
    LSMVectorBase::Append(this + 19);
    *(*(this + 19) + 4 * *(this + 21) - 4) = 0;
    LSMVectorBase::Append(this + 19);
    *(*(this + 19) + 4 * *(this + 21) - 4) = 1;
    LSMVectorBase::Append(this + 19);
    *(*(this + 19) + 4 * *(this + 21) - 4) = 0;
    LSMVectorBase::Append(this + 19);
    *(*(this + 19) + 4 * *(this + 21) - 4) = 1;
  }

  else
  {
    LSMReadFileDesc::ReadVec(a2, this + 19, 6uLL);
  }

  if (!LSMReadFileDesc::Read(a2, &__dst, 1uLL, 4uLL))
  {
    goto LABEL_90;
  }

  v12 = LSMReadFileDesc::Read(a2, &v65, 1uLL, 4uLL);
  *this = v12;
  if (!v12)
  {
    goto LABEL_91;
  }

  v13 = __dst;
  if (HIDWORD(__dst) >= 2)
  {
    *this = LSMReadFileDesc::ReadVec(a2, v8 + 1, __dst);
    LSMVectorBase::advise((v8 + 1), 3);
    if (*this == 1)
    {
      Vec = (*(*v9 + 88))(v9, v8 + 8);
      if (Vec)
      {
        Vec = LSMReadFileDesc::ReadVec(a2, this + 15, v65);
      }
    }

    else
    {
      Vec = 0;
    }

    *this = Vec;
    if (HIDWORD(__dst) < 4)
    {
      *v8 = 0;
      if ((Vec & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_35;
    }

    if (Vec && LSMReadFileDesc::Read(a2, v8, 1uLL, 4uLL))
    {
      v22 = LSMReadFileDesc::ReadVec(a2, v8 + 5, __dst);
      *this = v22;
      if (!v22)
      {
        goto LABEL_91;
      }

LABEL_35:
      if (a4)
      {
        v23 = 0;
        v25 = 0;
        v65 = 0;
        v24 = *(this + 14);
      }

      else
      {
        v23 = v65;
        v24 = *(this + 14);
        if (v24 < v65)
        {
          LSMVectorBase::Allocate(this + 11, v65, 1);
          v24 = *(this + 14);
        }

        v25 = v65;
      }

      if (v24 >= v23)
      {
        v24 = v23;
      }

      *(this + 13) = v24;
      bzero(*(this + 11), 8 * v25);
      if (v65)
      {
        v42 = 0;
        while (1)
        {
          std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>::pair[abi:ne200100]((*(this + 11) + (v42 << 6)));
          v43 = LSMReadFileDesc::Decode(a2, &__dst);
          *this = v43;
          if ((v43 & 1) == 0)
          {
            break;
          }

          v44 = __dst;
          *(this + 1) += __dst;
          v45 = *(this + 11);
          v46 = v45 + (v42 << 6);
          v47 = *(v46 + 24);
          if (v47 >= v44)
          {
            v48 = v44;
            v49 = v44;
          }

          else
          {
            LSMVectorBase::Allocate((v45 + (v42 << 6)), v44, 1);
            v47 = *(v46 + 24);
            v45 = *(this + 11);
            v48 = __dst;
            v49 = __dst;
          }

          if (v47 >= v44)
          {
            v47 = v44;
          }

          *(v46 + 16) = v47;
          v50 = v45 + (v42 << 6);
          v51 = *(v50 + 56);
          if (v51 < v48)
          {
            LSMVectorBase::Allocate((v50 + 32), v48, 1);
            v51 = *(v50 + 56);
            v45 = *(this + 11);
            v49 = __dst;
          }

          if (v51 >= v48)
          {
            v51 = v48;
          }

          *(v50 + 48) = v51;
          v52 = (v45 + (v42 << 6));
          v53 = *v52;
          v54 = v52[4];
          v55 = (2 * v49);
          LODWORD(__dst) = v49 - 1;
          if (v49)
          {
            v56 = 0;
            do
            {
              v67 = 0;
              v57 = LSMReadFileDesc::Decode(a2, &v67);
              v56 += v67;
              *v53 = v56;
              v58 = LSMReadFileDesc::Decode(a2, v54++);
              ++v53;
              v55 = v55 - v57 - v58;
              v59 = __dst;
              LODWORD(__dst) = __dst - 1;
            }

            while (v59);
          }

          if (v55)
          {
            goto LABEL_90;
          }

          if (++v42 >= v65)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_91;
    }

LABEL_90:
    *this = 0;
    goto LABEL_91;
  }

  if (*(this + 6) < __dst)
  {
    LSMVectorBase::Allocate(v8 + 1, __dst, 1);
    v13 = __dst;
  }

  if (v13)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = LSMReadFileDesc::Read(a2, &v67, 2uLL, 4uLL);
      *this = v17;
      if (!v17)
      {
        goto LABEL_91;
      }

      v18 = v67;
      v19 = v67 >> 30;
      if (v67 >> 30 > 1)
      {
        if (v19 != 2)
        {
LABEL_25:
          v21 = (v67 >> 8) & 0xFFFFF;
          goto LABEL_26;
        }

        if ((v16 & 1) == 0)
        {
          v9 = (**v9)(v9, 1);
          v18 = v67;
        }

        v20 = LSMWordTable::LookupTriplet(v9, (v18 >> 8) & 0xFFFFF, (__PAIR64__(v18, v68) >> 20) & 0xFFFFF, v68 & 0xFFFFF);
      }

      else
      {
        if (!v19)
        {
          goto LABEL_25;
        }

        if ((v16 & 1) == 0)
        {
          v9 = (**v9)(v9, 1);
          v18 = v67;
        }

        v20 = LSMWordTable::LookupPair(v9, (v18 >> 8) & 0xFFFFF, (__PAIR64__(v18, v68) >> 20) & 0xFFFFF);
      }

      v21 = v20;
      v16 = 1;
LABEL_26:
      LSMVectorBase::Append(v8 + 1);
      *(*(this + 3) + 4 * *(this + 5) - 4) = v21;
      if (++v15 >= __dst)
      {
        goto LABEL_40;
      }
    }
  }

  v16 = 0;
LABEL_40:
  v26 = (*(*v9 + 88))(v9, v8 + 8);
  *this = v26;
  if ((v26 & 1) == 0)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_68;
  }

  v27 = LSMReadFileDesc::ReadVec(a2, this + 15, v65);
  *this = v27;
  if (!v27)
  {
    goto LABEL_91;
  }

  if (a4)
  {
    v28 = 0;
    v65 = 0;
  }

  else
  {
    v28 = v65;
  }

  v29 = v28;
  v30 = *(this + 14);
  if (v30 < v28)
  {
    v27 = LSMVectorBase::Allocate(this + 11, v28, 1);
    v30 = *(this + 14);
    v28 = v65;
  }

  v62 = v16;
  v63 = a3;
  v64 = v8;
  if (v30 >= v29)
  {
    v30 = v29;
  }

  *(this + 13) = v30;
  if (v28)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v27 = std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>::pair[abi:ne200100]((*(this + 11) + v31));
      ++v32;
      v31 += 64;
    }

    while (v32 < v65);
  }

  if (!__dst)
  {
LABEL_64:
    v41 = v63;
    if ((v62 & 1) == 0)
    {
      goto LABEL_91;
    }

    if (*v63)
    {
      (*(**v63 + 104))(*v63);
    }

    *v41 = (**v9)(v9, 0);
LABEL_68:
    (*(*v9 + 104))(v9);
    goto LABEL_91;
  }

  v33 = 0;
  while (1)
  {
    MEMORY[0x28223BE20](v27);
    v35 = (&v61 - ((v34 + 15) & 0x7FFFFFFF0));
    v27 = LSMReadFileDesc::Read(a2, v35, v65, 4uLL);
    *this = v27;
    if (!v27)
    {
      break;
    }

    v36 = v65;
    if (v65)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        if (v35[v38])
        {
          v39 = (*(this + 11) + v37);
          LSMVectorBase::Append(v39);
          *(*v39 + 4 * v39[2] - 4) = v33;
          v40 = *(this + 11) + v37;
          LODWORD(v39) = v35[v38];
          v27 = LSMVectorBase::Append((v40 + 32));
          *(*(v40 + 32) + 4 * *(v40 + 48) - 4) = v39;
          ++*(this + 1);
          v36 = v65;
        }

        ++v38;
        v37 += 64;
      }

      while (v38 < v36);
    }

    if (++v33 >= __dst)
    {
      goto LABEL_64;
    }
  }

LABEL_91:
  v60 = *MEMORY[0x277D85DE8];
}

void sub_255A581DC(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v1 + 19);
  LSMVectorBase::~LSMVectorBase(v1 + 15);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>>::~LSMVector((v1 + 11));
  LSMVectorBase::~LSMVectorBase((*(v2 - 136) + 40));
  LSMVectorBase::~LSMVectorBase((*(v2 - 136) + 8));
  _Unwind_Resume(a1);
}

void LSMImmutableMapCounter::~LSMImmutableMapCounter(void **this)
{
  LSMVectorBase::~LSMVectorBase(this + 19);
  LSMVectorBase::~LSMVectorBase(this + 15);
  LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>>::~LSMVector((this + 11));
  LSMVectorBase::~LSMVectorBase(this + 7);
  LSMVectorBase::~LSMVectorBase(this + 3);
}

void LSMImmutableMapCounter::SumTuples(LSMImmutableMapCounter *this, LSMTupleAccumulator *a2, LSMWordTable *a3, int a4)
{
  v8 = *(this + 3);
  v9 = *(this + 5);
  v10 = (v8 + 4 * v9);
  if (a4)
  {
    v11 = 0x40000000;
  }

  else
  {
    v11 = 0x80000000;
  }

  if (!v9)
  {
    v12 = *(this + 3);
    if (!a4)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (v10 != v12)
    {
      v17 = v10 - v12;
      v10 = v12;
      do
      {
        v18 = v17 >> 1;
        v19 = &v10[v17 >> 1];
        v21 = *v19;
        v20 = (v19 + 1);
        v17 += ~(v17 >> 1);
        v22 = v21 < 0;
        if (v21 < 0)
        {
          v17 = v18;
        }

        if (!v22)
        {
          v10 = v20;
        }
      }

      while (v17);
    }

    goto LABEL_20;
  }

  v12 = *(this + 3);
  do
  {
    v13 = v9 >> 1;
    v14 = &v12[v9 >> 1];
    v16 = *v14;
    v15 = v14 + 1;
    v9 += ~(v9 >> 1);
    if (v16 < v11)
    {
      v12 = v15;
    }

    else
    {
      v9 = v13;
    }
  }

  while (v9);
  if (a4)
  {
    goto LABEL_13;
  }

LABEL_20:
  v23 = *(this + 13);
  v24 = (v12 - v8) >> 2;
  LSMVectorBase::LSMVectorBase(v45, 4, v23);
  bzero(v45[0], 4 * v23);
  if (v23)
  {
    v25 = 0;
    v26 = *(this + 11);
    v27 = v45[0];
    do
    {
      v28 = (v26 + (v25 << 6));
      v29 = v28[2];
      v30 = v27[v25];
      if (v29 > v30)
      {
        v31 = *v28;
        v32 = v30 + 1;
        do
        {
          if (v24 <= *(v31 + 4 * v30))
          {
            break;
          }

          v27[v25] = v32;
          v30 = v32;
          v22 = v29 > v32++;
        }

        while (v22);
      }

      ++v25;
    }

    while (v25 != v23);
  }

  while (v12 != v10)
  {
    v44 = 0;
    if (a4)
    {
      v43 = 0;
      LSMWordTable::Pair(a3, *v12, &v44, &v43);
      v33 = 0;
      if (!v23)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v43 = 0;
      *v42 = 0;
      LSMWordTable::Triplet(a3, *v12, &v43, &v42[1], v42);
      v44 = LSMWordTable::LookupPair(a3, v43, v42[1]);
      v33 = v43 == 0;
      if (!v23)
      {
LABEL_37:
        v36 = 0.0;
        goto LABEL_38;
      }
    }

    v34 = v45[0];
    v35 = (*(this + 11) + 32);
    v36 = 0.0;
    v37 = v23;
    do
    {
      v38 = *v34;
      if (*(v35 - 2) > v38 && v24 == *(*(v35 - 4) + 4 * v38))
      {
        v39 = *v35;
        *v34 = v38 + 1;
        v36 = v36 + *(v39 + 4 * v38);
      }

      ++v34;
      v35 += 8;
      --v37;
    }

    while (v37);
LABEL_38:
    *LSMTupleAccumulator::operator[](a2, *v12) = v36;
    v40 = LSMTupleAccumulator::operator[](a2, v44);
    *v40 = v36 + *v40;
    if (v33)
    {
      v41 = LSMTupleAccumulator::operator[](a2, 0);
      *v41 = v36 + *v41;
    }

    ++v12;
    ++v24;
  }

  LSMVectorBase::~LSMVectorBase(v45);
}

void sub_255A585B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

uint64_t LSMImmutableMapCounter::Store(LSMImmutableMapCounter *this, FILE **a2, char a3)
{
  __ptr = *(this + 5);
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(this + 34);
  }

  v16 = v5;
  if (*(this + 9))
  {
    v6 = &kLSMMapCounterVersionClusters;
  }

  else
  {
    v6 = &kLSMMapCounterVersionNoClusters;
  }

  if (LSMWriteFileDesc::Write(a2, v6, 1uLL, 4uLL) && LSMWriteFileDesc::WriteVec(a2, (this + 152)) && LSMWriteFileDesc::Write(a2, &__ptr, 1uLL, 4uLL) && LSMWriteFileDesc::Write(a2, &v16, 1uLL, 4uLL) && LSMWriteFileDesc::WriteVec(a2, (this + 24)) && LSMWriteFileDesc::WriteVec(a2, (this + 120)) && (!*(this + 9) || LSMWriteFileDesc::Write(a2, this + 16, 1uLL, 4uLL) && LSMWriteFileDesc::WriteVec(a2, (this + 56))))
  {
    if (!v16)
    {
      return 0;
    }

    v7 = 0;
    while (1)
    {
      __ptr = *(*(this + 11) + (v7 << 6) + 16);
      v8 = LSMWriteFileDesc::Encode(a2, __ptr);
      if (!v8)
      {
        return (v8 - 1);
      }

      v9 = (*(this + 11) + (v7 << 6));
      v10 = *v9;
      v11 = v9[4];
      LODWORD(v9) = __ptr--;
      if (v9)
      {
        break;
      }

LABEL_24:
      if (++v7 >= v16)
      {
        return (v8 - 1);
      }
    }

    v12 = 0;
    while (LSMWriteFileDesc::Encode(a2, *v10 - v12) && LSMWriteFileDesc::Encode(a2, *v11))
    {
      ++v11;
      v13 = *v10++;
      v12 = v13;
      if (!__ptr--)
      {
        goto LABEL_24;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void LSMTupleMap::~LSMTupleMap(LSMTupleMap *this)
{
  LSMTreeBase::~LSMTreeBase(this);

  JUMPOUT(0x259C48400);
}

void LSMMutableTextCounter::~LSMMutableTextCounter(LSMMutableTextCounter *this)
{
  *this = &unk_2867C1410;
  LSMTreeBase::~LSMTreeBase((this + 24));
}

{
  *this = &unk_2867C1410;
  LSMTreeBase::~LSMTreeBase((this + 24));

  JUMPOUT(0x259C48400);
}

void LSMImmutableTextCounter::~LSMImmutableTextCounter(void **this)
{
  *this = &unk_2867C1328;
  LSMVectorBase::~LSMVectorBase(this + 3);
}

{
  *this = &unk_2867C1328;
  LSMVectorBase::~LSMVectorBase(this + 3);

  JUMPOUT(0x259C48400);
}

void LSMVector<std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>>::~LSMVector(LSMVectorBase *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *this;
    v4 = v2 << 6;
    do
    {
      LSMVectorBase::~LSMVectorBase(v3 + 4);
      LSMVectorBase::~LSMVectorBase(v3);
      v3 += 8;
      v4 -= 64;
    }

    while (v4);
  }

  LSMVectorBase::~LSMVectorBase(this);
}

void sub_255A58A08(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v2);
  LSMVectorBase::~LSMVectorBase(v1);
  _Unwind_Resume(a1);
}

LSMVectorBase *std::pair<LSMVector<unsigned int>,LSMVector<unsigned int>>::pair[abi:ne200100](LSMVectorBase *a1)
{
  LSMVectorBase::LSMVectorBase(a1, 4);
  LSMVectorBase::LSMVectorBase((v2 + 32), 4);
  return a1;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMTupleIterComp &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *a3;
    v11 = **(*a3 + 32 * v9 + 24);
    if (**(*a3 + 32 * *v5 + 24) > v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (**(v10 + 32 * *v5 + 24) > v11);
      *v12 = v8;
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LSMTupleIterComp &,unsigned long *>(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = &a1[v3];
    v6 = v5 + 1;
    v7 = v5[1];
    v8 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v8;
    }

    else
    {
      v11 = v5[2];
      v9 = v5 + 2;
      v10 = v11;
      if (**(v4 + 32 * v7 + 24) <= **(v4 + 32 * v11 + 24))
      {
        v3 = v8;
      }

      else
      {
        v7 = v10;
        v6 = v9;
      }
    }

    *a1 = v7;
    a1 = v6;
  }

  while (v3 <= (a3 - 2) / 2);
  return v6;
}

void LSMClassifier::LSMClassifier(LSMClassifier *this)
{
  *this = &unk_2867C1480;
  v2 = (this + 56);
  LSMVectorBase::LSMVectorBase((this + 24), 4);
  LSMVectorBase::LSMVectorBase(v2, 4);
  LSMVectorBase::LSMVectorBase((this + 88), 4);
  LSMVectorBase::LSMVectorBase((this + 120), 4);
  LSMVectorBase::LSMVectorBase((this + 152), 4);
  LSMVectorBase::LSMVectorBase((this + 184), 4);
  LSMVectorBase::LSMVectorBase((this + 216), 4);
  *(this + 248) = 1;
}

void sub_255A58C3C(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v1 + 23);
  LSMVectorBase::~LSMVectorBase(v1 + 19);
  LSMVectorBase::~LSMVectorBase(v1 + 15);
  LSMVectorBase::~LSMVectorBase(v1 + 11);
  LSMVectorBase::~LSMVectorBase(v2);
  LSMVectorBase::~LSMVectorBase(v1 + 3);
  _Unwind_Resume(a1);
}

void LSMClassifier::~LSMClassifier(void **this)
{
  *this = &unk_2867C1480;
  LSMVectorBase::~LSMVectorBase(this + 27);
  LSMVectorBase::~LSMVectorBase(this + 23);
  LSMVectorBase::~LSMVectorBase(this + 19);
  LSMVectorBase::~LSMVectorBase(this + 15);
  LSMVectorBase::~LSMVectorBase(this + 11);
  LSMVectorBase::~LSMVectorBase(this + 7);
  LSMVectorBase::~LSMVectorBase(this + 3);
}

{
  LSMClassifier::~LSMClassifier(this);

  JUMPOUT(0x259C48400);
}

void LSMClassifier::NBestCategories(uint64_t a1, uint64_t a2, int a3, float *a4, char a5)
{
  LSMVectorBase::LSMVectorBase(v10, 4);
  (*(*a2 + 16))(a2, v10);
  if ((LSMDebugFlags::sLSMDebug & 2) != 0)
  {
    DumpVector(v10);
  }

  LSMClassifier::NBestCategories(a1, v10, a3, a4, a5);
  LSMVectorBase::~LSMVectorBase(v10);
}

uint64_t DumpVector(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0;
  time(&v8);
  v2 = localtime(&v8);
  strftime(__filename, 0x50uLL, "vector_%d%b%C_%H%M%S", v2);
  v3 = fopen(__filename, "w");
  fprintf(v3, "%lu\n", *(a1 + 16));
  if (*(a1 + 16))
  {
    v4 = *a1;
    do
    {
      v5 = *v4++;
      fprintf(v3, "%14g\n", v5);
    }

    while (v4 != (*a1 + 4 * *(a1 + 16)));
  }

  result = fclose(v3);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void LSMClassifier::NBestCategories(uint64_t a1, const float **a2, int a3, float *a4, char a5)
{
  LSMVectorBase::LSMVectorBase(__X, 4, *(a1 + 16));
  LSMVectorBase::LSMVectorBase(__base, 8, *(a1 + 12));
  if (!*(a1 + 168))
  {
    LSMClassifier::ComputeVV(a1);
  }

  cblas_sgemv(CblasColMajor, CblasTrans, *(a1 + 8), *(a1 + 16), 1.0, *(a1 + 24), (*(a1 + 8) + 3) & 0xFFFFFFFC, *a2, 1, 0.0, __X[0], 1);
  v10 = 1.0 / cblas_snrm2(*(a1 + 16), __X[0], 1);
  if (a5)
  {
    if (fabsf(v10) == INFINITY)
    {
      bzero(a4, 8 * a3);
    }

    else
    {
      if (*(a1 + 12))
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = cblas_sdot(*(a1 + 16), __X[0], 1, (*(a1 + 56) + 4 * ((*(a1 + 16) + 3) & 0x1FFFFFFFCLL) * v21), 1);
          v23 = v21 + 1;
          v24 = __base[0];
          v25 = (__base[0] + v20);
          *v25 = v21 + 1;
          v25[1] = v10 * (v22 * *(*(a1 + 152) + 4 * v21));
          v20 += 8;
          v21 = v23;
        }

        while (v23 < *(a1 + 12));
      }

      else
      {
        LODWORD(v23) = 0;
        v24 = __base[0];
      }

      qsort(v24, v23, 8uLL, LSMCompareScores);
      if (a3 > v23)
      {
        bzero(&a4[2 * v23], 8 * (a3 - v23));
        a3 = v23;
      }

      if (a3 >= 1)
      {
        v34 = __base[0];
        v35 = a3;
        do
        {
          v36 = *v34++;
          *a4 = v36;
          a4 += 2;
          --v35;
        }

        while (v35);
      }
    }
  }

  else
  {
    v11 = *(a1 + 12);
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0.0;
      v15 = __base[0];
      do
      {
        v16 = v13 + 1;
        *&v15[v12] = v13 + 1;
        v17 = cblas_sdot(*(a1 + 16), __X[0], 1, (*(a1 + 56) + 4 * ((*(a1 + 16) + 3) & 0x1FFFFFFFCLL) * v13), 1);
        v18 = 1.0;
        if (fabsf(v17) >= 1.0e-30)
        {
          v18 = ((v17 * *(*(a1 + 152) + 4 * v13)) * v10) + 1.0;
        }

        v15 = __base[0];
        *(__base[0] + v12 + 4) = v18;
        v14 = v14 + v18;
        v19 = *(a1 + 12);
        v12 += 8;
        ++v13;
      }

      while (v16 < v19);
      v11 = *(a1 + 12);
    }

    else
    {
      v19 = 0;
      v14 = 0.0;
    }

    if (a3 > v11)
    {
      bzero(&a4[2 * v19], 8 * (a3 - v11));
      v11 = *(a1 + 12);
      a3 = v11;
    }

    if (v14 < 0.000001)
    {
      if (a3 >= 1)
      {
        v26 = 1.0 / v11;
        v27 = a3;
        v28 = a4 + 1;
        v29 = 1;
        do
        {
          *(v28 - 1) = v29;
          *v28 = v26;
          v28 += 2;
          ++v29;
          --v27;
        }

        while (v27);
      }
    }

    else
    {
      qsort(__base[0], v11, 8uLL, LSMCompareScores);
      if (a3 >= 1)
      {
        v30 = a3;
        v31 = a4 + 1;
        v32 = (__base[0] + 4);
        do
        {
          *(v31 - 1) = *(v32 - 1);
          v33 = *v32;
          v32 += 2;
          *v31 = (1.0 / v14) * v33;
          v31 += 2;
          --v30;
        }

        while (v30);
      }
    }
  }

  LSMVectorBase::~LSMVectorBase(__base);
  LSMVectorBase::~LSMVectorBase(__X);
}

void sub_255A59318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  LSMVectorBase::~LSMVectorBase(va);
  LSMVectorBase::~LSMVectorBase(va1);
  _Unwind_Resume(a1);
}

void LSMClassifier::NBestWords(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char a5)
{
  LSMVectorBase::LSMVectorBase(v10, 4);
  (*(*a2 + 16))(a2, v10);
  if ((LSMDebugFlags::sLSMDebug & 2) != 0)
  {
    DumpVector(v10);
  }

  LSMClassifier::NBestWords(a1, v10, a3, a4, a5);
  LSMVectorBase::~LSMVectorBase(v10);
}

void LSMClassifier::NBestWords(uint64_t a1, const float **a2, unsigned int a3, char *a4, char a5)
{
  LSMVectorBase::LSMVectorBase(__X, 4, *(a1 + 16));
  LSMVectorBase::LSMVectorBase(__base, 8, *(a1 + 8));
  if (!*(a1 + 200))
  {
    LSMClassifier::ComputeU2(a1, a5);
  }

  cblas_sgemv(CblasColMajor, CblasTrans, *(a1 + 8), *(a1 + 16), 1.0, *(a1 + 24), (*(a1 + 8) + 3) & 0xFFFFFFFC, *a2, 1, 0.0, __X[0], 1);
  v10 = *(a1 + 16);
  if (a5)
  {
    if (v10)
    {
      v11 = __X[0];
      v12 = *(a1 + 88);
      v13 = 0.0;
      do
      {
        v14 = *v12++;
        v15 = *v11 * v14;
        *v11++ = v15;
        v13 = v13 + (v15 * v15);
        --v10;
      }

      while (v10);
      goto LABEL_13;
    }

LABEL_12:
    v13 = 0.0;
    goto LABEL_13;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v16 = __X[0];
  v17 = *(a1 + 120);
  v13 = 0.0;
  do
  {
    v18 = *v17++;
    v19 = *v16 * v18;
    *v16++ = v18 * v19;
    v13 = v13 + (v19 * v19);
    --v10;
  }

  while (v10);
LABEL_13:
  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1.0 / sqrtf(v13);
    v25 = v20 + 3;
    v26 = __base[0];
    do
    {
      *&v26[v21] = ++v23;
      v27 = cblas_sdot(*(a1 + 16), __X[0], 1, (*(a1 + 24) + v22), v25 & 0xFFFFFFFC);
      if ((a5 & 1) != 0 || (v28 = 0.0, fabsf(v27) >= 1.0e-30))
      {
        v28 = v24 * (v27 * *(*(a1 + 184) + v22));
      }

      v26 = __base[0];
      *(__base[0] + v21 + 4) = v28;
      v29 = *(a1 + 8);
      v22 += 4;
      v21 += 8;
    }

    while (v23 < v29);
    v20 = *(a1 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (a3 > v20)
  {
    bzero(&a4[8 * v29], 8 * (a3 - v20));
    v20 = *(a1 + 8);
    a3 = v20;
  }

  qsort(__base[0], v20, 8uLL, LSMCompareScores);
  memcpy(a4, __base[0], 8 * a3);
  LSMVectorBase::~LSMVectorBase(__base);
  LSMVectorBase::~LSMVectorBase(__X);
}

void sub_255A59660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  LSMVectorBase::~LSMVectorBase(va);
  LSMVectorBase::~LSMVectorBase(va1);
  _Unwind_Resume(a1);
}

uint64_t LSMCompareScores(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 < 0.0)
  {
    return 1;
  }

  if (v2 <= 0.0)
  {
    return (*a1 - *a2);
  }

  return 0xFFFFFFFFLL;
}

void LSMClassifier::ComputeVV(LSMClassifier *this)
{
  v2 = *(this + 3);
  v3 = *(this + 22);
  if (v3 >= v2)
  {
    v4 = *(this + 3);
  }

  else
  {
    LSMVectorBase::Allocate(this + 19, v2, 1);
    v3 = *(this + 22);
    v4 = *(this + 3);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 21) = v3;
  if (v4)
  {
    v5 = 0;
    do
    {
      *(*(this + 19) + 4 * v5) = 1.0 / cblas_snrm2(*(this + 4), (*(this + 7) + 4 * ((*(this + 4) + 3) & 0x1FFFFFFFCLL) * v5), 1);
      ++v5;
    }

    while (v5 < *(this + 3));
  }
}

unsigned int *LSMClassifier::ComputeU2(unsigned int *this, char a2)
{
  v3 = this;
  v4 = this[4];
  v5 = *(this + 18);
  if (v5 >= v4)
  {
    v6 = this[4];
    v7 = this[4];
  }

  else
  {
    this = LSMVectorBase::Allocate(this + 15, v4, 1);
    v5 = *(v3 + 144);
    v6 = *(v3 + 16);
    v7 = *(v3 + 16);
  }

  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(v3 + 136) = v5;
  if (v7)
  {
    v8 = *(v3 + 88);
    v9 = *(v3 + 120);
    do
    {
      v10 = *v8++;
      *v9++ = 1.0 / sqrtf(v10);
      --v6;
    }

    while (v6);
  }

  v11 = *(v3 + 8);
  v12 = *(v3 + 208);
  if (v12 < v11)
  {
    this = LSMVectorBase::Allocate((v3 + 184), *(v3 + 8), 1);
    v12 = *(v3 + 208);
  }

  v13 = *(v3 + 8);
  v14 = *(v3 + 8);
  if (v12 >= v11)
  {
    v12 = v11;
  }

  *(v3 + 200) = v12;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(v3 + 16);
    v18 = *(v3 + 184);
    do
    {
      if (v17)
      {
        v19 = 0;
        v20 = (*(v3 + 24) + v15);
        v21 = 0.0;
        do
        {
          v22 = *v20;
          if ((a2 & 1) == 0)
          {
            v22 = v22 * *(*(v3 + 120) + v19);
          }

          v21 = v21 + (v22 * v22);
          v19 += 4;
          v20 = (v20 + ((4 * (v11 + 3)) & 0x7FFFFFFF0));
        }

        while (4 * v17 != v19);
      }

      else
      {
        v21 = 0.0;
      }

      *(v18 + 4 * v16++) = 1.0 / sqrtf(v21);
      v15 += 4;
    }

    while (v16 != v13);
  }

  return this;
}

void LSMClassifier::CombineW(uint64_t a1, void *a2)
{
  LODWORD(v2) = *(a1 + 8);
  if (v2)
  {
    v5 = 0;
    do
    {
      cblas_sscal(*(a1 + 16), *(*a2 + 4 * v5), (*(a1 + 24) + 4 * v5), (v2 + 3) & 0xFFFFFFFC);
      ++v5;
      v2 = *(a1 + 8);
    }

    while (v5 < v2);
  }
}

void LSMClassifier::CombineS(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      cblas_sscal(*(a1 + 8), *(*a2 + 4 * v4), (*(a1 + 24) + 4 * ((*(a1 + 8) + 3) & 0x1FFFFFFFCLL) * v4), 1);
      cblas_sscal(*(a1 + 12), *(*a2 + 4 * v4), (*(a1 + 56) + 4 * v4), (*(a1 + 16) + 3) & 0xFFFFFFFC);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }
}

uint64_t LSMClassifier::Store(LSMClassifier *this, FILE **a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  __ptr = v5;
  if (!LSMWriteFileDesc::Write(a2, &__ptr, 1uLL, 4uLL) || !LSMWriteFileDesc::Write(a2, this + 8, 1uLL, 4uLL) || !LSMWriteFileDesc::Write(a2, this + 12, 1uLL, 4uLL) || !LSMWriteFileDesc::Write(a2, this + 16, 1uLL, 4uLL) || !LSMWriteFileDesc::WriteVec(a2, (this + 24)) || !LSMWriteFileDesc::WriteVec(a2, (this + 56)) || !LSMWriteFileDesc::WriteVec(a2, (this + 88)))
  {
    return 0xFFFFFFFFLL;
  }

  if (__ptr == 5)
  {
    return (LSMWriteFileDesc::WriteVec(a2, (this + 216)) - 1);
  }

  return 0;
}

void LSMClassifier::LSMClassifier(LSMClassifier *this, LSMReadFileDesc *a2)
{
  *this = &unk_2867C1480;
  v4 = (this + 56);
  LSMVectorBase::LSMVectorBase((this + 24), 4);
  LSMVectorBase::LSMVectorBase(v4, 4);
  LSMVectorBase::LSMVectorBase((this + 88), 4);
  LSMVectorBase::LSMVectorBase((this + 120), 4);
  LSMVectorBase::LSMVectorBase((this + 152), 4);
  LSMVectorBase::LSMVectorBase((this + 184), 4);
  LSMVectorBase::LSMVectorBase((this + 216), 4);
  __dst = 0;
  if (!LSMReadFileDesc::Read(a2, &__dst, 1uLL, 4uLL) || !LSMReadFileDesc::Read(a2, this + 2, 1uLL, 4uLL))
  {
    v6 = this + 248;
    goto LABEL_11;
  }

  v5 = LSMReadFileDesc::Read(a2, this + 3, 1uLL, 4uLL);
  *(this + 248) = v5;
  v6 = this + 248;
  if (!v5)
  {
    return;
  }

  if (__dst >= 3)
  {
    if (LSMReadFileDesc::Read(a2, this + 4, 1uLL, 4uLL) && LSMReadFileDesc::ReadVec(a2, this + 3, ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 4)))
    {
      Vec = LSMReadFileDesc::ReadVec(a2, v4, ((*(this + 4) + 3) & 0x1FFFFFFFCLL) * *(this + 3));
      *v6 = Vec;
      if (Vec)
      {
        v8 = *(this + 4);
        if (__dst < 4)
        {
          v30 = *(this + 14);
          if (v30 < v8)
          {
            LSMVectorBase::Allocate(this + 11, *(this + 4), 1);
            v30 = *(this + 14);
          }

          v31 = *(this + 4);
          v32 = *(this + 4);
          if (v30 >= v8)
          {
            v30 = v8;
          }

          *(this + 13) = v30;
          if (v32)
          {
            memset_pattern16(*(this + 11), &unk_255A70100, 4 * v31);
          }
        }

        else
        {
          *v6 = LSMReadFileDesc::ReadVec(a2, this + 11, *(this + 4));
        }

        if (__dst >= 5)
        {
          *v6 = LSMReadFileDesc::ReadVec(a2, this + 27, *(this + 2));
        }

        goto LABEL_40;
      }

      return;
    }

LABEL_11:
    *v6 = 0;
    return;
  }

  v9 = *(this + 2);
  v10 = *(this + 3);
  *(this + 4) = v10;
  v11 = (v9 + 3) & 0x1FFFFFFFCLL;
  v12 = v11 * v10;
  v13 = *(this + 6);
  v14 = v10;
  if (v13 < v11 * v10)
  {
    LSMVectorBase::Allocate(this + 3, v11 * v10, 1);
    v13 = *(this + 6);
    v14 = *(this + 3);
  }

  v15 = v10 + 3;
  v16 = v15 & 0x1FFFFFFFCLL;
  if (v13 >= v12)
  {
    v13 = v12;
  }

  *(this + 5) = v13;
  v17 = v16 * v14;
  v18 = *(this + 10);
  if (v18 < v16 * v14)
  {
    LSMVectorBase::Allocate(v4, v16 * v14, 1);
    v18 = *(this + 10);
  }

  if (v18 >= v17)
  {
    v18 = v17;
  }

  *(this + 9) = v18;
  v19 = *(this + 4);
  v20 = *(this + 14);
  if (v20 < v19)
  {
    LSMVectorBase::Allocate(this + 11, *(this + 4), 1);
    v20 = *(this + 14);
  }

  if (v20 >= v19)
  {
    v20 = v19;
  }

  *(this + 13) = v20;
  (*(*a2 + 24))(a2, 8, 1);
  LSMVectorBase::LSMVectorBase(__X, 4, *(this + 2));
  if (*(this + 2))
  {
    v21 = 0;
    v22 = 0;
    do
    {
      LSMReadFileDesc::Read(a2, __X[0], *(this + 4), 4uLL);
      cblas_scopy(*(this + 4), __X[0], 1, (*(this + 3) + v21), v11);
      ++v22;
      v21 += 4;
    }

    while (v22 < *(this + 2));
  }

  (*(*a2 + 24))(a2, 24, 1);
  *v6 = LSMReadFileDesc::Read(a2, *(this + 11), *(this + 4), 4uLL);
  (*(*a2 + 24))(a2, 24, 1);
  v23 = *(this + 4);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = (4 * v15) & 0x7FFFFFFF0;
    do
    {
      v27 = LSMReadFileDesc::Read(a2, (*v4 + v24), v23, 4uLL);
      *(this + 248) = v27;
      ++v25;
      v23 = *(this + 4);
      v24 += v26;
    }

    while (v25 < v23);
    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else if (!*v6)
  {
    goto LABEL_38;
  }

  LSMClassifier::CombineS(this, this + 11);
  if (__dst > 1)
  {
LABEL_37:
    v29 = 1;
    goto LABEL_39;
  }

  v28 = LSMReadFileDesc::Read(a2, __X[0], *(this + 2), 4uLL);
  *v6 = v28;
  if (v28)
  {
    LSMClassifier::CombineW(this, __X);
    goto LABEL_37;
  }

LABEL_38:
  v29 = 0;
LABEL_39:
  LSMVectorBase::~LSMVectorBase(__X);
  if (v29)
  {
LABEL_40:
    LSMVectorBase::advise(this + 24, 3);
    LSMVectorBase::advise(v4, 3);
    LSMVectorBase::advise(this + 88, 3);
    LSMVectorBase::advise(this + 216, 3);
  }
}

void sub_255A59FAC(_Unwind_Exception *a1)
{
  LSMVectorBase::~LSMVectorBase(v1 + 27);
  LSMVectorBase::~LSMVectorBase(v1 + 23);
  LSMVectorBase::~LSMVectorBase(v1 + 19);
  LSMVectorBase::~LSMVectorBase(v1 + 15);
  LSMVectorBase::~LSMVectorBase(v1 + 11);
  LSMVectorBase::~LSMVectorBase(v2);
  LSMVectorBase::~LSMVectorBase(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t LSMCFInit_LSMMap(uint64_t result)
{
  *(result + 16) = &unk_2867C14B0;
  *(result + 24) = 0;
  return result;
}

uint64_t LSMCFRegister_LSMMap(void)
{
  qword_281D60A98 = 0;
  unk_281D60AA8 = 0u;
  unk_281D60AB8 = 0u;
  return _CFRuntimeRegisterClass();
}

CFTypeID LSMMapGetTypeID(void)
{
  result = gLSMCFTypeID_LSMMap;
  if (!gLSMCFTypeID_LSMMap)
  {
    qword_281D60A98 = 0;
    unk_281D60AA8 = 0u;
    unk_281D60AB8 = 0u;
    result = _CFRuntimeRegisterClass();
    gLSMCFTypeID_LSMMap = result;
  }

  return result;
}

CFTypeID LSMTextGetTypeID(void)
{
  result = gLSMCFTypeID_LSMText;
  if (!gLSMCFTypeID_LSMText)
  {
    result = LSMCFRegister_LSMText();
    gLSMCFTypeID_LSMText = result;
  }

  return result;
}

CFTypeID LSMResultGetTypeID(void)
{
  result = gLSMCFTypeID_LSMResult;
  if (!gLSMCFTypeID_LSMResult)
  {
    result = LSMCFRegister_LSMResult();
    gLSMCFTypeID_LSMResult = result;
  }

  return result;
}

LSMMapRef LSMMapCreate(CFAllocatorRef alloc, CFOptionFlags flags)
{
  LSMDebugFlags::Update(alloc);
  if (!gLSMCFTypeID_LSMMap)
  {
    qword_281D60A98 = 0;
    unk_281D60AA8 = 0u;
    unk_281D60AB8 = 0u;
    gLSMCFTypeID_LSMMap = _CFRuntimeRegisterClass();
  }

  if (_CFRuntimeCreateInstance())
  {
    operator new();
  }

  return 0;
}

void LSMMapSetProperties(LSMMapRef mapref, CFDictionaryRef properties)
{
  v2 = *(*(mapref + 3) + 32);
  *(*(mapref + 3) + 32) = CFDictionaryCreateCopy(0, properties);

  CFRelease(v2);
}

OSStatus LSMMapSetStopWords(LSMMapRef mapref, LSMTextRef textref)
{
  LSMText::AddWord((textref + 16), 0);
  v3 = *(**(mapref + 3) + 96);

  return v3();
}

OSStatus LSMMapAddText(LSMMapRef mapref, LSMTextRef textref, LSMCategory category)
{
  LSMText::AddWord((textref + 16), 0);
  v4 = *(**(mapref + 3) + 104);

  return v4();
}

OSStatus LSMMapAddTextWithWeight(LSMMapRef mapref, LSMTextRef textref, LSMCategory category, float weight)
{
  LSMText::AddWord((textref + 16), 0);
  v6 = *(**(mapref + 3) + 112);
  v7.n128_f32[0] = weight;

  return v6(v7);
}

LSMResultRef LSMResultCreate(CFAllocatorRef alloc, LSMMapRef mapref, LSMTextRef textref, CFIndex numResults, CFOptionFlags flags)
{
  LSMText::AddWord((textref + 16), 0);
  v6 = *(**(mapref + 3) + 152);

  return v6();
}

CFIndex LSMResultGetCount(CFIndex result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

LSMCategory LSMResultGetCategory(LSMResultRef result, CFIndex n)
{
  if (result)
  {
    LODWORD(result) = *(*(result + 3) + 8 * n);
  }

  return result;
}

float LSMResultGetScore(LSMResultRef result, CFIndex n)
{
  if (result)
  {
    return *(*(result + 3) + 8 * n + 4);
  }

  else
  {
    return 0.0;
  }
}

CFStringRef LSMResultCopyWord(CFStringRef result, CFIndex n)
{
  if (result)
  {
    return (*(*result[1].length + 160))(result[1].length, *(result->length + 8 * n));
  }

  return result;
}

CFDataRef LSMResultCopyToken(CFDataRef result, CFIndex n)
{
  if (result)
  {
    return (*(**(result + 7) + 168))(*(result + 7), *(*(result + 3) + 8 * n));
  }

  return result;
}

CFArrayRef LSMResultCopyWordCluster(CFArrayRef result, CFIndex n)
{
  if (result)
  {
    return (*(**(result + 7) + 176))(*(result + 7), *(*(result + 3) + 8 * n));
  }

  return result;
}

CFArrayRef LSMResultCopyTokenCluster(CFArrayRef result, CFIndex n)
{
  if (result)
  {
    return (*(**(result + 7) + 184))(*(result + 7), *(*(result + 3) + 8 * n));
  }

  return result;
}

OSStatus LSMMapWriteToURL(LSMMapRef mapref, CFURLRef file, CFOptionFlags flags)
{
  if (!file)
  {
    return -6643;
  }

  (*(**(mapref + 3) + 16))(*(mapref + 3), 0, 0);
  v4 = *(**(mapref + 3) + 32);

  return v4();
}

LSMMapRef LSMMapCreateFromURL(CFAllocatorRef alloc, CFURLRef file, CFOptionFlags flags)
{
  if (!file)
  {
    return 0;
  }

  v3 = flags;
  LSMDebugFlags::Update(alloc);
  if (!gLSMCFTypeID_LSMMap)
  {
    qword_281D60A98 = 0;
    unk_281D60AA8 = 0u;
    unk_281D60AB8 = 0u;
    gLSMCFTypeID_LSMMap = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if ((v3 & 2) == 0)
    {
      operator new();
    }

    operator new();
  }

  return Instance;
}

OSStatus LSMTextAddWords(LSMTextRef textref, CFStringRef words, CFLocaleRef locale, CFOptionFlags flags)
{
  if (!locale)
  {
    v9.length = CFStringGetLength(words);
    v9.location = 0;
    v7 = CFStringTokenizerCopyBestStringLanguage(words, v9);
    if (v7)
    {
      locale = CFLocaleCreate(*MEMORY[0x277CBECE8], v7);
    }

    else
    {
      locale = 0;
    }
  }

  LSMParser::CreateParser(flags, textref + 24, locale, flags);
}

void LSMMap::~LSMMap(LSMMap *this)
{
  LSMMap::~LSMMap(this);

  JUMPOUT(0x259C48400);
}

{
  *this = &unk_2867C14B0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  LSMWordTable::~LSMWordTable(this);
}

uint64_t LSMCFInit_LSMText(uint64_t result)
{
  *(result + 16) = &unk_2867C1780;
  *(result + 24) = &unk_2867C17D0;
  *(result + 52) = 0;
  *(result + 56) = 0;
  return result;
}

void LSMText::LSMText(LSMText *this)
{
  *this = &unk_2867C1780;
  *(this + 1) = &unk_2867C17D0;
  *(this + 9) = 0;
  *(this + 10) = 0;
}

uint64_t LSMCFRegister_LSMText(void)
{
  qword_281D60AF8 = 0;
  *algn_281D60B08 = 0u;
  *&algn_281D60B08[16] = 0u;
  return _CFRuntimeRegisterClass();
}

uint64_t LSMCFRegister_LSMResult(void)
{
  qword_281D60B58 = 0;
  unk_281D60B68 = 0u;
  unk_281D60B78 = 0u;
  return _CFRuntimeRegisterClass();
}

void LSMMapHeader::LSMMapHeader(LSMMapHeader *this, LSMReadFileDesc *a2)
{
  LSMReadFileDesc::Read(a2, this, 1uLL, 0x18uLL);
  v4 = *this;
  if (*this >= 0x10000u)
  {
    *(a2 + 48) = 1;
    (*(*a2 + 24))(a2, 0, 0);
    LSMReadFileDesc::Read(a2, this, 1uLL, 0x18uLL);
    v4 = *this;
  }

  if (v4 <= 2)
  {
    *(this + 5) = 0;
    if (v4 != 2)
    {
      *(this + 4) = 0;
    }
  }
}

BOOL LSMMapHeader::Sane(_DWORD *a1, uint64_t a2)
{
  v4 = (*(*a2 + 32))(a2);
  (*(*a2 + 24))(a2, 0, 2);
  v5 = (*(*a2 + 32))(a2);
  (*(*a2 + 24))(a2, v4, 0);
  if ((*a1 - 1) > 2)
  {
    return 0;
  }

  v6 = a1[1];
  if (v5 <= v6)
  {
    return 0;
  }

  v7 = a1[2];
  if (v5 <= v7)
  {
    return 0;
  }

  v8 = a1[3];
  return v5 > v8 && ((v7 | v6 | v8) & 0xF) == 0;
}

void LSMAbstractMap::LSMAbstractMap(LSMAbstractMap *this, LSMMap *a2)
{
  *this = &unk_2867C1510;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = -6640;
}

void LSMAbstractMap::LSMAbstractMap(LSMAbstractMap *this, LSMMap *a2, uint64_t a3)
{
  *this = &unk_2867C1510;
  *(this + 1) = a2;
  *(this + 2) = a3;
  LSMWordTable::Create(this);
}

void LSMAbstractMap::LSMAbstractMap(LSMAbstractMap *this, const LSMAbstractMap *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *this = &unk_2867C1510;
  *(this + 1) = v5;
  *(this + 2) = v6;
  *(this + 3) = (***(a2 + 3))(*(a2 + 3), a3);
  *(this + 4) = CFRetain(*(a2 + 4));
  *(this + 10) = -6640;
}

void LSMAbstractMap::~LSMAbstractMap(LSMAbstractMap *this)
{
  *this = &unk_2867C1510;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 104))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void LSMAbstractMap::Load(LSMAbstractMap *this, LSMReadFileDesc *a2, const LSMMapHeader *a3, LSMReadFileDesc *a4)
{
  if (*(a3 + 5))
  {
    LSMVectorBase::LSMVectorBase(bytes, 1);
    LSMReadFileDesc::ReadVec(a2, bytes, *(a3 + 5));
    v8 = CFDataCreateWithBytesNoCopy(0, bytes[0], bytes[2], *MEMORY[0x277CBED00]);
    *(this + 4) = CFPropertyListCreateFromXMLData(0, v8, 0, 0);
    CFRelease(v8);
    LSMVectorBase::~LSMVectorBase(bytes);
  }

  else
  {
    *(this + 4) = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  (*(*a2 + 24))(a2, *(a3 + 1), 0);
  LSMWordTable::Load(a2, a4);
}

uint64_t LSMAbstractMap::GetSVDParam(CFDictionaryRef *this, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  *a2 = 0;
  *a3 = 25000;
  *a4 = 0;
  Value = CFDictionaryGetValue(this[4], @"LSMAlgorithm");
  v9 = CFDictionaryGetValue(this[4], @"LSMPrecision");
  v10 = CFDictionaryGetValue(this[4], @"LSMDimension");
  v11 = CFDictionaryGetValue(this[4], @"LSMIterations");
  result = CFDictionaryGetValue(this[4], @"LSMTokenCountWeightKey");
  v13 = result;
  if (Value)
  {
    result = CFStringCompare(Value, @"LSMAlgorithmDense", 0);
    if (result)
    {
      result = CFStringCompare(Value, @"LSMAlgorithmSparse", 0);
      if (result)
      {
        goto LABEL_7;
      }

      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    *a2 |= v14;
  }

LABEL_7:
  if (!v9)
  {
    goto LABEL_13;
  }

  result = CFStringCompare(v9, @"LSMPrecisionFloat", 0);
  if (result)
  {
    result = CFStringCompare(v9, @"LSMPrecisionDouble", 0);
    if (result)
    {
      goto LABEL_13;
    }

    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  *a2 |= v15;
LABEL_13:
  if (v10)
  {
    valuePtr = 0;
    result = CFNumberGetValue(v10, kCFNumberLongType, &valuePtr);
    v16 = valuePtr;
    if (valuePtr <= 2)
    {
      v16 = 2;
    }

    if (v16 >= *a3)
    {
      v16 = *a3;
    }

    *a3 = v16;
  }

  if (v11)
  {
    result = CFNumberGetValue(v11, kCFNumberLongType, a4);
    v17 = *a3;
    if (*a3 <= *a4)
    {
      v17 = *a4;
    }

    if (v17 >= 5 * *a3)
    {
      v17 = 5 * *a3;
    }

    *a4 = v17;
  }

  if (v13)
  {
    result = CFStringCompare(v13, @"LSMTokenCountWeightNew", 0);
    if (!result)
    {
      *a2 |= 0x20uLL;
    }
  }

  return result;
}

CFStringRef LSMAbstractMap::CopyWordByID(LSMAbstractMap *this, const __CFAllocator *a2, unsigned int a3)
{
  v5 = *(this + 3);
  if (a3 >> 30)
  {
    v6 = 0xFFFFFF;
  }

  else
  {
    v6 = 0x3FFFFFFF;
  }

  v7 = (*(*v5 + 16))(v5, v6 & a3);
  if (*(this + 17))
  {
    LSMVectorBase::LSMVectorBase(cStr, 1);
    do
    {
      v9 = *v7;
      LSMVectorBase::Append(cStr);
      cStr[0][cStr[2] - 1] = (v9 >> 1) & 0x55 | (2 * v9) & 0xAA;
    }

    while (*v7++);
    v11 = CFStringCreateWithCString(a2, cStr[0], 0x8000100u);
    LSMVectorBase::~LSMVectorBase(cStr);
    return v11;
  }

  else
  {

    return CFStringCreateWithCString(a2, v7, 0x8000100u);
  }
}

CFDataRef LSMAbstractMap::CopyTokenByID(LSMAbstractMap *this, const __CFAllocator *a2, uint64_t a3)
{
  v4 = (*(**(this + 3) + 16))(*(this + 3), a3);
  LSMVectorBase::LSMVectorBase(bytes, 1);
  while (1)
  {
    while (1)
    {
      v5 = *v4;
      if (v5 != 23)
      {
        break;
      }

      v6 = v4[1];
      if (v4[1])
      {
        if (v6 == 23)
        {
          LSMVectorBase::Append(bytes);
          bytes[0][length - 1] = 23;
        }

        else
        {
          do
          {
            LSMVectorBase::Append(bytes);
            bytes[0][length - 1] = 0;
            --v6;
          }

          while (v6);
        }
      }

      v4 += 2;
    }

    if (!*v4)
    {
      break;
    }

    LSMVectorBase::Append(bytes);
    ++v4;
    bytes[0][length - 1] = v5;
  }

  v7 = CFDataCreate(a2, bytes[0], length);
  LSMVectorBase::~LSMVectorBase(bytes);
  return v7;
}

uint64_t LSMText::LookupWord(uint64_t this, const __CFString *a2, LSMWordTable *a3)
{
  *&v11[1023] = *MEMORY[0x277D85DE8];
  if (this)
  {
    v3 = a3;
    this = CFStringGetCString(this, &buffer, 1024, 0x8000100u);
    if (this)
    {
      if (LSMDebugFlags::sLSMDebug)
      {
        fprintf(*MEMORY[0x277D85DF8], "LSM Word '%s'\n", &buffer);
      }

      if (v3)
      {
        v5 = buffer;
        if (buffer)
        {
          v6 = v11;
          do
          {
            *(v6 - 1) = (v5 >> 1) & 0x55 | (2 * v5) & 0xAA;
            v7 = *v6++;
            v5 = v7;
          }

          while (v7);
        }
      }

      v8 = strlen(&buffer);
      this = (*(a2->isa + 1))(a2, &buffer, v8, 0);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t LSMText::LookupToken(LSMText *this, const __CFData *a2, LSMWordTable *a3)
{
  LSMVectorBase::LSMVectorBase(v15, 1);
  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  if (Length >= 1)
  {
    do
    {
      LODWORD(v7) = *BytePtr;
      if (v7 == 23)
      {
        LSMVectorBase::Append(v15);
        LOBYTE(v7) = 23;
        *(v15[0] + v16 - 1) = 23;
        LSMVectorBase::Append(v15);
      }

      else if (*BytePtr)
      {
        LSMVectorBase::Append(v15);
      }

      else
      {
        LSMVectorBase::Append(v15);
        *(v15[0] + v16 - 1) = 23;
        LOBYTE(v7) = 1;
        if (BytePtr[1] || Length < 2)
        {
LABEL_12:
          v8 = BytePtr;
          v9 = Length;
        }

        else
        {
          v8 = BytePtr + 14;
          v9 = Length - 14;
          v7 = 1;
          while (v7 < 14)
          {
            --Length;
            v10 = BytePtr[2];
            ++BytePtr;
            ++v7;
            if (v10)
            {
              v11 = 0;
            }

            else
            {
              v11 = Length >= 2;
            }

            if (!v11)
            {
              goto LABEL_12;
            }
          }

          LOBYTE(v7) = 15;
        }

        LSMVectorBase::Append(v15);
        BytePtr = v8;
        Length = v9;
      }

      *(v15[0] + v16 - 1) = v7;
      ++BytePtr;
    }

    while (Length-- > 1);
  }

  v13 = (*(*a2 + 8))(a2, v15[0], v16, 0);
  LSMVectorBase::~LSMVectorBase(v15);
  return v13;
}

void sub_255A5BB54(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C48400](v3, 0x10A0C40ACE2A72CLL);
  LSMAbstractMap::~LSMAbstractMap(v1);
  _Unwind_Resume(a1);
}

void LSMTrainingMap::LSMTrainingMap(LSMTrainingMap *this, LSMMap *a2, const __CFURL *a3, LSMReadFileDesc *a4)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = -6640;
  *this = &unk_2867C15E0;
  *(this + 1) = a2;
  *(this + 6) = 0;
  LSMReadFileDesc::LSMReadFileDesc(v7, a3, 0);
  if (v7[1])
  {
    LSMMapHeader::LSMMapHeader(&v6, v7);
    if (LSMMapHeader::Sane(&v6, v7))
    {
      LSMAbstractMap::Load(this, v7, &v6, a4);
    }
  }

  LSMReadFileDesc::~LSMReadFileDesc(v7);
}

void sub_255A5BCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x259C48400](v5, 0x10A0C40ACE2A72CLL);
  LSMReadFileDesc::~LSMReadFileDesc(va);
  LSMAbstractMap::~LSMAbstractMap(v4);
  _Unwind_Resume(a1);
}

void LSMTrainingMap::LSMTrainingMap(LSMTrainingMap *this, const LSMCompiledMap *a2)
{
  LSMAbstractMap::LSMAbstractMap(this, a2, 1);
  *v3 = &unk_2867C15E0;
  *(v3 + 48) = 0;
  *(v3 + 56) = *(*(a2 + 6) + 136);
  operator new();
}

void sub_255A5BDBC(_Unwind_Exception *a1)
{
  MEMORY[0x259C48400](v2, 0x10A0C40ACE2A72CLL);
  LSMAbstractMap::~LSMAbstractMap(v1);
  _Unwind_Resume(a1);
}

void LSMTrainingMap::~LSMTrainingMap(LSMTrainingMap *this)
{
  *this = &unk_2867C15E0;
  v2 = *(this + 6);
  if (v2)
  {
    LSMMapCounter::~LSMMapCounter(*(this + 6));
    MEMORY[0x259C48400](v2, 0x10A0C40ACE2A72CLL);
  }

  LSMAbstractMap::~LSMAbstractMap(this);
}

{
  LSMTrainingMap::~LSMTrainingMap(this);

  JUMPOUT(0x259C48400);
}

void sub_255A5BE7C(_Unwind_Exception *a1)
{
  MEMORY[0x259C48400](v2, v3);
  LSMAbstractMap::~LSMAbstractMap(v1);
  _Unwind_Resume(a1);
}

uint64_t LSMTrainingMap::AddCategory(LSMTrainingMap *this)
{
  v1 = (*(this + 14) + 1);
  *(this + 14) = v1;
  return v1;
}

uint64_t LSMTrainingMap::CreateText(LSMTrainingMap *this, const __CFAllocator *a2)
{
  if (!gLSMCFTypeID_LSMText)
  {
    qword_281D60AF8 = 0;
    *algn_281D60B08 = 0u;
    *&algn_281D60B08[16] = 0u;
    gLSMCFTypeID_LSMText = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    LSMText::InitForTraining((Instance + 16), *(this + 2), *(this + 3));
  }

  return 0;
}

void LSMText::InitForTraining(LSMText *this, __int16 a2, LSMWordTable *a3)
{
  *(this + 3) = a3;
  *(this + 8) = (*(*a3 + 48))(a3);
  *(this + 16) = (a2 & 3) != 0;
  *(this + 17) = (a2 & 2) != 0;
  *(this + 18) = HIBYTE(a2) & 1;
  LSMTextCounter::Create(0, v5);
}

uint64_t LSMTrainingMap::SetStopWords(LSMTrainingMap *this, __LSMText *a2)
{
  if ((*(**(this + 3) + 32))(*(this + 3), a2))
  {
    return 0;
  }

  else
  {
    return 4294960656;
  }
}

uint64_t LSMTrainingMap::AddText(LSMTrainingMap *this, const LSMTextCounter **a2, unsigned int a3)
{
  (*(**(this + 3) + 40))(*(this + 3));
  if (a3 && *(this + 14) >= a3)
  {
    LSMMapCounter::AddText(*(this + 6), a2[8]);
  }

  return 4294960655;
}

void sub_255A5C1C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x255A5C1B0);
}

uint64_t LSMTrainingMap::AddTextWithWeight(LSMTrainingMap *this, const LSMTextCounter **a2, unsigned int a3, float a4)
{
  (*(**(this + 3) + 40))(*(this + 3));
  if (a3 && *(this + 14) >= a3)
  {
    LSMMapCounter::AddTextWithWeight(*(this + 6), a2[8], a4);
  }

  return 4294960655;
}

void sub_255A5C264(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x255A5C250);
}

void LSMArrayBuilder::~LSMArrayBuilder(LSMArrayBuilder *this)
{
  if (*(this + 2))
  {
    v2 = 0;
    do
    {
      CFRelease(*(*this + 8 * v2++));
    }

    while (v2 < *(this + 2));
  }

  LSMVectorBase::~LSMVectorBase(this);
}

uint64_t LSMTrainingMap::CreateClusters(CFDictionaryRef *this, const __CFAllocator *a2, const __CFArray *a3)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  LSMAbstractMap::GetSVDParam(this, &v8, &v7, &v6);
  v5 = (**this[3])();
  if (*(this[6] + 15))
  {
    operator new();
  }

  if (v5)
  {
    (*(*v5 + 104))(v5);
  }

  return 0;
}

void sub_255A5C6E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  LSMArrayBuilder::~LSMArrayBuilder(&a16);
  LSMClusterer::~LSMClusterer(&a33);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x255A5C60CLL);
}

uint64_t LSMTrainingMap::ApplyClusters(LSMTrainingMap *this, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  v5 = CFStringGetTypeID();
  v6 = CFDataGetTypeID();
  v7 = CFNumberGetTypeID();
  Count = CFArrayGetCount(a2);
  if (Count)
  {
    v9 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    if (CFGetTypeID(ValueAtIndex) == TypeID)
    {
      if (CFArrayGetCount(ValueAtIndex))
      {
        v11 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        v12 = CFGetTypeID(v11);
        if (v12 == v5 || v12 == v6)
        {
          LSMTreeBase::LSMTreeBase(v16, 8u);
        }

        if (v12 == v7 || v12 == TypeID)
        {
          LSMVectorBase::LSMVectorBase(v16, 4, *(*(this + 6) + 24));
          bzero(v16[0], 4 * v16[2]);
          if (v9 < 1)
          {
LABEL_13:
            LSMMapCounter::ApplyCategoryClusters(*(this + 6), v9, v16);
            LSMVectorBase::~LSMVectorBase(v16);
            return 0;
          }

          v14 = 0;
          while (1)
          {
            v15 = CFArrayGetValueAtIndex(a2, v14);
            if (CFGetTypeID(v15) != TypeID)
            {
              break;
            }

            AddCFValuesToMap(v15, v16, v14++);
            if (v9 == v14)
            {
              goto LABEL_13;
            }
          }

          LSMVectorBase::~LSMVectorBase(v16);
        }
      }
    }
  }

  return 4294960652;
}

uint64_t AddCFValuesToMap(const __CFArray *a1, LSMTupleMap *a2, uint64_t a3, LSMWordTable *a4, LSMWordTable *a5, unint64_t a6)
{
  TypeID = CFArrayGetTypeID();
  v20 = CFStringGetTypeID();
  v19 = CFDataGetTypeID();
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v14 = result;
    for (i = 0; v14 != i; ++i)
    {
      v24 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      result = CFGetTypeID(ValueAtIndex);
      if (result == TypeID)
      {
        AddCFValuesToMap(ValueAtIndex, a2, a3, a4, a5, a6);
      }

      else
      {
        if ((a6 & 1) != 0 && result == v20)
        {
          v18 = LSMText::LookupWord(ValueAtIndex, a4, a5);
        }

        else
        {
          if ((a6 & 2) == 0 || result != v19)
          {
            continue;
          }

          v18 = LSMText::LookupToken(ValueAtIndex, a4, v17);
        }

        v24 = v18;
      }

      LSMTreeBase::LowerBound(a2, &v24, v23);
      v22[0] = 0;
      result = LSMTreeIterBase::Equal(v23, v22);
      if (result)
      {
        v22[0] = 0;
        v21 = (a3 << 32) | v24;
        result = LSMTreeBase::Insert(a2, &v21, v22);
      }
    }
  }

  return result;
}

uint64_t AddCFValuesToMap(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  TypeID = CFArrayGetTypeID();
  v7 = CFNumberGetTypeID();
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      result = CFGetTypeID(ValueAtIndex);
      if (result == TypeID)
      {
        result = AddCFValuesToMap(ValueAtIndex, a2, a3);
      }

      else if (result == v7)
      {
        valuePtr = 0;
        result = CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (result)
        {
          if (valuePtr <= *(a2 + 16))
          {
            *(*a2 + 4 * valuePtr - 4) = a3;
          }
        }
      }
    }
  }

  return result;
}

CFDictionaryRef *LSMCompiledMap::LSMCompiledMap(CFDictionaryRef *a1, const LSMAbstractMap *a2)
{
  LSMAbstractMap::LSMAbstractMap(a1, a2, 0);
  *v4 = &unk_2867C16B0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  v11 = 25000;
  v12 = 0;
  v10 = 0;
  LSMAbstractMap::GetSVDParam(v4, &v12, &v11, &v10);
  Value = CFDictionaryGetValue(a1[4], @"LSMSweepAge");
  v6 = CFDictionaryGetValue(a1[4], @"LSMSweepCutoff");
  v7 = v6;
  if (Value)
  {
    v9 = 0;
    CFNumberGetValue(Value, kCFNumberLongType, &v9);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v9 = 0;
    CFNumberGetValue(v7, kCFNumberLongType, &v9);
  }

LABEL_5:
  if (*(*(a2 + 6) + 120))
  {
    operator new();
  }

  return a1;
}

void sub_255A5CDF8(_Unwind_Exception *a1, int a2)
{
  MEMORY[0x259C48400](v3, 0x1080C40D1A5925CLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    *(v2 + 10) = -108;
    __cxa_end_catch();
    JUMPOUT(0x255A5CDD8);
  }

  LSMAbstractMap::~LSMAbstractMap(v2);
  _Unwind_Resume(a1);
}

void LSMCompiledMap::LSMCompiledMap(LSMCompiledMap *this, LSMMap *a2, const __CFURL *a3)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = -6640;
  *this = &unk_2867C16B0;
  *(this + 1) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  operator new();
}

void sub_255A5D034(_Unwind_Exception *a1)
{
  MEMORY[0x259C48400](v2, 0x1081C4095E0DEAELL);
  LSMAbstractMap::~LSMAbstractMap(v1);
  _Unwind_Resume(a1);
}

void LSMCompiledMap::~LSMCompiledMap(LSMCompiledMap *this)
{
  *this = &unk_2867C16B0;
  v2 = *(this + 6);
  if (v2)
  {
    LSMImmutableMapCounter::~LSMImmutableMapCounter(*(this + 6));
    MEMORY[0x259C48400](v2, 0x1080C40D1A5925CLL);
  }

  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  LSMAbstractMap::~LSMAbstractMap(this);
}

{
  LSMCompiledMap::~LSMCompiledMap(this);

  JUMPOUT(0x259C48400);
}

void sub_255A5D188(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x259C48400](v4, v3);
  LSMAbstractMap::~LSMAbstractMap(v1);
  _Unwind_Resume(a1);
}

uint64_t LSMCompiledMap::Store(LSMCompiledMap *this, const __CFURL *a2, uint64_t a3)
{
  LSMWriteFileDesc::LSMWriteFileDesc(v22, a2);
  if ((a3 & 0x100) != 0)
  {
    v5 = *(this + 2);
    if ((v5 & 0x103) != 0)
    {
      a3 &= ~0x100uLL;
    }

    else
    {
      *(this + 2) = v5 | 0x100;
    }
  }

  if (v22[1])
  {
    XMLData = CFPropertyListCreateXMLData(0, *(this + 4));
    v7 = *(this + 2);
    v17 = 3;
    v20 = v7;
    Length = CFDataGetLength(XMLData);
    v19 = -559038737;
    v18 = vdup_n_s32(0xDEADBEEF);
    LSMWriteFileDesc::Write(v22, &v17, 1uLL, 0x18uLL);
    BytePtr = CFDataGetBytePtr(XMLData);
    LSMWriteFileDesc::Write(v22, BytePtr, Length, 1uLL);
    CFRelease(XMLData);
    v18.i32[0] = LSMFileDesc::Align(v22, 0x10uLL);
    v9 = (*(**(this + 3) + 24))(*(this + 3), v22, a3);
    v18.i32[1] = LSMFileDesc::Align(v22, 0x10uLL);
    v10 = LSMImmutableMapCounter::Store(*(this + 6), v22, a3);
    v19 = LSMFileDesc::Align(v22, 0x10uLL);
    v11 = LSMClassifier::Store(*(this + 7), v22, a3);
    LSMFileDesc::Seek(v22, 0, 0);
    v12 = LSMWriteFileDesc::Write(v22, &v17, 1uLL, 0x18uLL);
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    if (v10)
    {
      v14 = 0;
    }

    if (v14 && v9 == 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4294960654;
    }

    if (!v14 || v9 != 0)
    {
      remove(v22[2], v13);
    }
  }

  else
  {
    v15 = 4294960653;
  }

  LSMFileDesc::~LSMFileDesc(v22);
  return v15;
}

void sub_255A5D4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  LSMFileDesc::~LSMFileDesc(va);
  _Unwind_Resume(a1);
}

uint64_t LSMCompiledMap::WriteToStream(LSMCompiledMap *this, __CFWriteStream *a2, __LSMText *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v65);
  v5 = v65;
  *(&v65 + *(v65 - 24) + 8) = *(&v65 + *(v65 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v67[0].__locale_ + *(v5 - 24)) = 2;
  LSMVectorBase::LSMVectorBase(v64, 4);
  if (a3)
  {
    (*(**(a3 + 8) + 16))(*(a3 + 8), v64);
  }

  v6 = *(this + 6);
  v7 = v6[3];
  v51 = v6[5];
  v8 = v6[17];
  LSMVectorBase::LSMVectorBase(v63, 4, v8);
  LSMVectorBase::LSMVectorBase(v62, 4, v8);
  bzero(v63[0], 4 * v8);
  bzero(v62[0], 4 * v8);
  if (v51)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v50 = a3;
    while (1)
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      if (*(v64[0] + v12 - 1) != 0.0)
      {
        break;
      }

LABEL_49:
      ++v12;
      ++v7;
      if (v12 > v51)
      {
        goto LABEL_54;
      }
    }

    *(&v67[1].__locale_ + *(v65 - 24)) = 5;
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "%\t", 2);
LABEL_8:
    v14 = *v7;
    v60 = -1;
    v61 = v14;
    v59 = -1;
    if (v14 >> 30 == 2)
    {
      LSMWordTable::Triplet(*(this + 3), v14, &v61, &v60, &v59);
    }

    else if (v14 >> 30 == 1)
    {
      LSMWordTable::Pair(*(this + 3), v14, &v61, &v60);
    }

    v52 = v9;
    v53 = v12;
    v54 = v7;
    if (v8)
    {
      v15 = v12 - 1;
      for (i = 1; i <= v8; ++i)
      {
        v17 = i - 1;
        v18 = (*(*(this + 6) + 88) + ((i - 1) << 6));
        v19 = v63[0];
        v20 = v18[2];
        v21 = *(v63[0] + i - 1);
        if (v20 <= v21)
        {
          goto LABEL_21;
        }

        v22 = *v18;
        v23 = v21 + 1;
        while (1)
        {
          v24 = *(v22 + 4 * v21);
          if (v15 <= v24)
          {
            break;
          }

          v19[v17] = v23;
          v21 = v23;
          if (v20 <= v23++)
          {
            goto LABEL_21;
          }
        }

        if (v15 == v24)
        {
          v26 = v18[4];
          v19[v17] = v23;
          v27 = *(v26 + 4 * v21);
        }

        else
        {
LABEL_21:
          v27 = 0;
        }

        *(&v67[1].__locale_ + *(v65 - 24)) = 6;
        v28 = MEMORY[0x259C48350](&v65, v27);
        LOBYTE(__p) = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, &__p, 1);
        if (v27)
        {
          v29 = *(v62[0] + v17);
          if (v11 <= v29)
          {
            v11 = v29;
          }

          else
          {
            v11 = v11;
          }

          *(v62[0] + v17) = 0;
        }

        else
        {
          v10 = (v10 + 1);
          ++*(v62[0] + v17);
        }
      }
    }

    if (v61 == -1)
    {
      v32 = v60;
      a3 = v50;
      v12 = v53;
      v7 = v54;
      v31 = v52;
      if (v60 == -1)
      {
        v34 = v59;
        if (v59 == -1)
        {
LABEL_37:
          LOBYTE(__p) = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, &__p, 1);
          v9 = v31 + 1;
          if (v9 == 1000)
          {
            std::stringbuf::str();
            if ((v58 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if ((v58 & 0x80u) == 0)
            {
              v37 = v58;
            }

            else
            {
              v37 = v57;
            }

            CFWriteStreamWrite(a2, p_p, v37);
            *(&__str.__r_.__value_.__s + 23) = 0;
            __str.__r_.__value_.__s.__data_[0] = 0;
            std::string::operator=(&v68, &__str);
            std::stringbuf::__init_buf_ptrs[abi:ne200100](&v66);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v58 < 0)
            {
              operator delete(__p);
            }

            v9 = 0;
          }

          goto LABEL_49;
        }

LABEL_36:
        v35 = (*(**(this + 3) + 16))(*(this + 3), v34);
        unhash(v35, &v65, (*(this + 2) >> 8) & 1);
        goto LABEL_37;
      }
    }

    else
    {
      v30 = (*(**(this + 3) + 16))(*(this + 3));
      a3 = v50;
      v12 = v53;
      v7 = v54;
      v31 = v52;
      unhash(v30, &v65, (*(this + 2) >> 8) & 1);
      if (v60 == -1)
      {
LABEL_34:
        if (v59 == -1)
        {
          goto LABEL_37;
        }

        LOBYTE(__p) = 58;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, &__p, 1);
        v34 = v59;
        goto LABEL_36;
      }

      LOBYTE(__p) = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, &__p, 1);
      v32 = v60;
    }

    v33 = (*(**(this + 3) + 16))(*(this + 3), v32);
    unhash(v33, &v65, (*(this + 2) >> 8) & 1);
    goto LABEL_34;
  }

  v11 = 0;
  v10 = 0;
LABEL_54:
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Zeros ", 6);
  v39 = MEMORY[0x259C48340](v38, v10);
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " (", 2);
  v41 = *v40;
  *(v40 + *(*v40 - 24) + 24) = 4;
  *(v40 + *(v41 - 24) + 16) = 1;
  v42 = std::ostream::operator<<();
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "%), Max Run ", 12);
  v44 = MEMORY[0x259C48340](v43, v11);
  std::ios_base::getloc((v44 + *(*v44 - 24)));
  v45 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if ((v58 & 0x80u) == 0)
  {
    v46 = &__p;
  }

  else
  {
    v46 = __p;
  }

  if ((v58 & 0x80u) == 0)
  {
    v47 = v58;
  }

  else
  {
    v47 = v57;
  }

  CFWriteStreamWrite(a2, v46, v47);
  if (v58 < 0)
  {
    operator delete(__p);
  }

  LSMVectorBase::~LSMVectorBase(v62);
  LSMVectorBase::~LSMVectorBase(v63);
  LSMVectorBase::~LSMVectorBase(v64);
  v65 = *MEMORY[0x277D82828];
  *(&v65 + *(v65 - 24)) = *(MEMORY[0x277D82828] + 24);
  v66 = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v66 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v67);
  std::ostream::~ostream();
  MEMORY[0x259C483B0](&v69);
  return 0;
}

void sub_255A5DC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  LSMVectorBase::~LSMVectorBase(&a37);
  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_255A5DE78(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259C483B0](v1);
  _Unwind_Resume(a1);
}

const char *unhash(const char *__s, void *a2, int a3)
{
  v4 = __s;
  if (a3)
  {
    if (*__s)
    {
      v5 = (__s + 1);
      do
      {
        __s = std::ostream::put();
      }

      while (*v5++);
    }
  }

  else
  {
    v7 = strlen(__s);

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v7);
  }

  return __s;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  std::ostringstream::~ostringstream(a1, MEMORY[0x277D82828]);
  MEMORY[0x259C483B0](a1 + 112);
  return a1;
}

__CFArray *LSMCompiledMap::CreateArrayOfWords(LSMCompiledMap *this)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = *(this + 6);
  v4 = v3[3];
  v5 = v3[5];
  v6 = v3[17];
  LSMVectorBase::LSMVectorBase(v20, 4, v6);
  LSMVectorBase::LSMVectorBase(v19, 4, v6);
  v6 *= 4;
  bzero(v20[0], v6);
  bzero(v19[0], v6);
  if (v5)
  {
    for (i = 1; i <= v5; ++i)
    {
      v8 = *v4;
      v17 = -1;
      v18 = v8;
      v16 = -1;
      if (v8 >> 30 == 2)
      {
        LSMWordTable::Triplet(*(this + 3), v8, &v18, &v17, &v16);
      }

      else if (v8 >> 30 == 1)
      {
        LSMWordTable::Pair(*(this + 3), v8, &v18, &v17);
      }

      v9 = CFStringCreateMutable(0, 0);
      if (!v9)
      {
        goto LABEL_17;
      }

      if (v18 == -1)
      {
        v11 = v17;
        if (v17 == -1)
        {
          v13 = v16;
          if (v16 == -1)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v10 = (*(**(this + 3) + 16))(*(this + 3));
        CFStringAppendCString(v9, v10, 0x8000100u);
        if (v17 == -1)
        {
          goto LABEL_13;
        }

        CFStringAppendCString(v9, "_", 0x8000100u);
        v11 = v17;
      }

      v12 = (*(**(this + 3) + 16))(*(this + 3), v11);
      CFStringAppendCString(v9, v12, 0x8000100u);
LABEL_13:
      if (v16 != -1)
      {
        CFStringAppendCString(v9, "_", 0x8000100u);
        v13 = v16;
LABEL_15:
        v14 = (*(**(this + 3) + 16))(*(this + 3), v13);
        CFStringAppendCString(v9, v14, 0x8000100u);
      }

LABEL_16:
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v9);
LABEL_17:
      ++v4;
    }
  }

  LSMVectorBase::~LSMVectorBase(v19);
  LSMVectorBase::~LSMVectorBase(v20);
  return Mutable;
}

void sub_255A5E1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

uint64_t LSMCompiledMap::GetCategoryCount(LSMCompiledMap *this)
{
  result = *(*(this + 6) + 136);
  if (!result)
  {
    return *(*(this + 7) + 12);
  }

  return result;
}

float LSMCompiledMap::GetIndexingPower(LSMCompiledMap *this, unsigned int a2)
{
  v2 = *(this + 7);
  result = -1.0;
  if (*(v2 + 232) > a2)
  {
    return *(*(v2 + 216) + 4 * a2);
  }

  return result;
}

uint64_t LSMCompiledMap::CreateText(LSMCompiledMap *this, const __CFAllocator *a2)
{
  if (!gLSMCFTypeID_LSMText)
  {
    qword_281D60AF8 = 0;
    *algn_281D60B08 = 0u;
    *&algn_281D60B08[16] = 0u;
    gLSMCFTypeID_LSMText = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = *(this + 2);
    v6 = *(this + 6);
    *(Instance + 40) = *(this + 3);
    *(Instance + 48) = 0;
    *(Instance + 32) = (v5 & 3) != 0;
    *(Instance + 33) = (v5 & 0x7FFFFFFFFFFFFFFFLL) != 0;
    *(Instance + 34) = BYTE1(v5) & 1;
    *(Instance + 64) = 0;
    LSMTextCounter::Create(v6, v3);
  }

  return 0;
}

void LSMText::InitForMapping(LSMText *this, const LSMImmutableMapCounter *a2, LSMWordTable *a3, const LSMImmutableMapCounter *a4)
{
  *(this + 3) = a3;
  *(this + 8) = 0;
  *(this + 16) = (a2 & 3) != 0;
  *(this + 17) = (a2 & 0x7FFFFFFFFFFFFFFFLL) != 0;
  *(this + 18) = BYTE1(a2) & 1;
  *(this + 6) = 0;
  LSMTextCounter::Create(a4, a2);
}

uint64_t LSMCompiledMap::CreateMappedResults(LSMCompiledMap *this, const __CFAllocator *a2, __LSMText *a3, unint64_t a4, char a5)
{
  if (!gLSMCFTypeID_LSMResult)
  {
    qword_281D60B58 = 0;
    unk_281D60B68 = 0u;
    unk_281D60B78 = 0u;
    gLSMCFTypeID_LSMResult = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  *(Instance + 56) = this;
  v11 = *(Instance + 48);
  if (v11 < a4)
  {
    LSMVectorBase::Allocate((Instance + 24), a4, 1);
    v11 = *(v10 + 48);
  }

  if (v11 >= a4)
  {
    v11 = a4;
  }

  *(v10 + 40) = v11;
  v12 = *(this + 7);
  v13 = *(a3 + 8);
  v14 = *(v10 + 24);
  if (a5)
  {
    LSMClassifier::NBestWords(v12, v13, a4, v14, (a5 & 2) != 0);
    if ((a5 & 2) != 0)
    {
LABEL_9:
      v15 = a4 + 1;
      v16 = 8 * a4 - 8;
      while (--v15)
      {
        v17 = *(*(v10 + 24) + v16);
        v16 -= 8;
        if (v17)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    LSMClassifier::NBestCategories(v12, v13, a4, v14, (a5 & 2) != 0);
    if ((a5 & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  v15 = a4 + 1;
  v18 = 8 * a4 - 4;
  while (--v15)
  {
    v19 = *(*(v10 + 24) + v18);
    v18 -= 8;
    if (v19 >= 1.0e-10)
    {
LABEL_17:
      v20 = *(v10 + 48);
      if (v20 >= v15)
      {
        goto LABEL_20;
      }

      LSMVectorBase::Allocate((v10 + 24), v15, 1);
      break;
    }
  }

LABEL_19:
  v20 = *(v10 + 48);
LABEL_20:
  if (v20 >= v15)
  {
    v20 = v15;
  }

  *(v10 + 40) = v20;
  return v10;
}

CFStringRef LSMCompiledMap::CopyWord(LSMCompiledMap *this, int a2)
{
  v3 = *(this + 6);
  if (*(v3 + 72))
  {
    v4 = (*(*this + 176))(this);
    v5 = CFStringCreateByCombiningStrings(0, v4, @",");
    v6 = CFStringCreateWithFormat(0, 0, @"{%@}", v5);
    CFRelease(v4);
    CFRelease(v5);
    return v6;
  }

  else
  {
    v8 = *(*(v3 + 24) + 4 * (a2 - 1));

    return LSMCompiledMap::CopyWordByTuple(this, v8);
  }
}

CFStringRef LSMCompiledMap::CopyWordByTuple(LSMWordTable **this, unsigned int a2)
{
  if (a2 >> 30)
  {
    v13 = 0;
    if (a2 >> 30 == 1)
    {
      v12 = 0;
      LSMWordTable::Pair(this[3], a2, &v13, &v12);
      v4 = LSMAbstractMap::CopyWordByID(this, 0, v13);
      v5 = LSMAbstractMap::CopyWordByID(this, 0, v12);
      v6 = CFStringCreateWithFormat(0, 0, @"<%@,%@>", v4, v5);
      CFRelease(v4);
      v7 = v5;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      LSMWordTable::Triplet(this[3], a2, &v13, &v12, &v11);
      v8 = LSMAbstractMap::CopyWordByID(this, 0, v13);
      v9 = LSMAbstractMap::CopyWordByID(this, 0, v12);
      v10 = LSMAbstractMap::CopyWordByID(this, 0, v11);
      v6 = CFStringCreateWithFormat(0, 0, @"<%@,%@,%@>", v8, v9, v10);
      CFRelease(v8);
      CFRelease(v9);
      v7 = v10;
    }

    CFRelease(v7);
    return v6;
  }

  else
  {

    return LSMAbstractMap::CopyWordByID(this, 0, a2);
  }
}

CFDataRef LSMCompiledMap::CopyToken(LSMCompiledMap *this, int a2)
{
  v3 = *(this + 6);
  if (*(v3 + 72))
  {
    v4 = (*(*this + 184))(this);
    XMLData = CFPropertyListCreateXMLData(0, v4);
    CFRelease(v4);
    return XMLData;
  }

  else
  {
    v7 = *(*(v3 + 24) + 4 * (a2 - 1));

    return LSMAbstractMap::CopyTokenByID(this, 0, v7);
  }
}

CFArrayRef LSMCompiledMap::CopyWords(LSMCompiledMap *this, uint64_t a2)
{
  LSMVectorBase::LSMVectorBase(values, 8);
  v4 = *(this + 6);
  if (v4[9])
  {
    v5 = v4[5];
    if (v5)
    {
      v6 = 0;
      v7 = a2 - 1;
      do
      {
        if (*(v4[7] + 4 * v6) == v7)
        {
          v8 = LSMCompiledMap::CopyWordByTuple(this, *(v4[3] + 4 * v6));
          LSMVectorBase::Append(values);
          values[0][numValues - 1] = v8;
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  else
  {
    v9 = (*(*this + 160))(this, a2);
    LSMVectorBase::Append(values);
    values[0][numValues - 1] = v9;
  }

  v10 = CFArrayCreate(0, values[0], numValues, MEMORY[0x277CBF128]);
  LSMArrayBuilder::~LSMArrayBuilder(values);
  return v10;
}

CFArrayRef LSMCompiledMap::CopyTokens(LSMCompiledMap *this, uint64_t a2)
{
  LSMVectorBase::LSMVectorBase(values, 8);
  v4 = *(this + 6);
  if (v4[9])
  {
    v5 = v4[5];
    if (v5)
    {
      v6 = 0;
      v7 = a2 - 1;
      do
      {
        if (*(v4[7] + 4 * v6) == v7)
        {
          v8 = LSMAbstractMap::CopyTokenByID(this, 0, *(v4[3] + 4 * v6));
          LSMVectorBase::Append(values);
          values[0][numValues - 1] = v8;
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  else
  {
    v9 = (*(*this + 168))(this, a2);
    LSMVectorBase::Append(values);
    values[0][numValues - 1] = v9;
  }

  v10 = CFArrayCreate(0, values[0], numValues, MEMORY[0x277CBF128]);
  LSMArrayBuilder::~LSMArrayBuilder(values);
  return v10;
}

uint64_t LSMText::AddWord(LSMText *this, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    if (*(this + 8) <= a2)
    {
      (***(this + 6))(*(this + 6), a2);
      if (*(this + 16) == 1)
      {
        v4 = *(this + 6);
        v5 = LSMWordTable::LookupPair(*(this + 3), *(this + 10), v3);
        (**v4)(v4, v5);
        if (*(this + 17) == 1)
        {
          v6 = *(this + 10);
          if (v6)
          {
            v7 = *(this + 6);
            v8 = LSMWordTable::LookupTriplet(*(this + 3), *(this + 9), v6, v3);
            (**v7)(v7, v8);
            *(this + 9) = *(this + 10);
          }
        }

        *(this + 10) = v3;
      }
    }
  }

  else
  {
    if (*(this + 16) == 1)
    {
      v9 = *(this + 10);
      if (v9)
      {
        v10 = *(this + 6);
        v11 = LSMWordTable::LookupPair(*(this + 3), v9, 0);
        (**v10)(v10, v11);
      }
    }

    if (*(this + 17) == 1)
    {
      v12 = *(this + 9);
      if (v12)
      {
        v13 = *(this + 6);
        v14 = LSMWordTable::LookupTriplet(*(this + 3), v12, *(this + 10), 0);
        (**v13)(v13, v14);
      }
    }

    *(this + 9) = 0;
    *(this + 10) = 0;
  }

  v15 = *(**(this + 6) + 24);

  return v15();
}

uint64_t LSMText::AddWord(const __CFString **this, const __CFString *a2)
{
  v3 = LSMText::LookupWord(a2, this[3], *(this + 18));

  return LSMText::AddWord(this, v3);
}

uint64_t non-virtual thunk toLSMText::AddWord(const __CFString **this, const __CFString *a2)
{
  v2 = (this - 1);
  v3 = LSMText::LookupWord(a2, this[2], *(this + 10));

  return LSMText::AddWord(v2, v3);
}

uint64_t LSMText::AddToken(const __CFData **this, const __CFData *a2, LSMWordTable *a3)
{
  v4 = LSMText::LookupToken(a2, this[3], a3);

  return LSMText::AddWord(this, v4);
}

void LSMText::~LSMText(LSMText *this)
{
  LSMText::~LSMText(this);

  JUMPOUT(0x259C48400);
}

{
  *this = &unk_2867C1780;
  v2 = (this + 8);
  *(this + 1) = &unk_2867C17D0;
  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  LSMWordTable::~LSMWordTable(v2);

  LSMWordTable::~LSMWordTable(this);
}

void non-virtual thunk toLSMText::~LSMText(LSMText *this)
{
  LSMText::~LSMText((this - 8));
}

{
  LSMText::~LSMText((this - 8));
}

void LSMResult::LSMResult(LSMResult *this)
{
  *this = &unk_2867C22B0;
  LSMVectorBase::LSMVectorBase((this + 8), 8);
  *this = &unk_2867C1870;
}

void LSMResult::~LSMResult(void **this)
{
  LSMResult::~LSMResult(this);

  JUMPOUT(0x259C48400);
}

{
  LSMVectorBase::~LSMVectorBase(this + 1);

  LSMWordTable::~LSMWordTable(this);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void LSMSRModelGenerator::~LSMSRModelGenerator(void **this)
{
  *this = &unk_2867C1A60;
  LSMVectorBase::~LSMVectorBase(this + 35);

  LSMModelGenerator::~LSMModelGenerator(this);
}

{
  *this = &unk_2867C1A60;
  LSMVectorBase::~LSMVectorBase(this + 35);

  LSMModelGenerator::~LSMModelGenerator(this);
}

{
  *this = &unk_2867C1A60;
  LSMVectorBase::~LSMVectorBase(this + 35);
  LSMModelGenerator::~LSMModelGenerator(this);

  JUMPOUT(0x259C48400);
}

void sub_255A5F37C(_Unwind_Exception *a1)
{
  LSMWordTable::~LSMWordTable(v2);
  LSMWordTable::~LSMWordTable(v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C48300](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C48310](v13);
  return a1;
}

void sub_255A5F4E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C48310](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x255A5F4C4);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_255A5F71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798070E8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C48360](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_255A5F874(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t LSMModelContextMap::operator[](LSMTreeBase *a1, int a2)
{
  v11 = a2;
  LSMTreeBase::LowerBound(a1, &v11, &v9);
  LOWORD(v7) = 0;
  if (LSMTreeIterBase::Equal(&v9, &v7))
  {
    v3 = v11;
LABEL_4:
    v7 = v9;
    v8 = v10;
    v6[0] = v3;
    v6[1] = 0;
    LSMTreeBase::Insert(a1, v6, &v7);
    LSMTreeBase::LowerBound(a1, &v11, &v7);
    v4 = *(&v8 + 1);
    return v4 + 4;
  }

  v4 = *(&v10 + 1);
  v3 = v11;
  if (**(&v10 + 1) != v11)
  {
    goto LABEL_4;
  }

  return v4 + 4;
}

void sub_255A5FE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, LSMTreeBase *a9)
{
  LSMVectorBase::~LSMVectorBase(v9 + 27);
  LSMTreeBase::~LSMTreeBase(v11);
  LSMTreeBase::~LSMTreeBase(v10);
  LSMTreeBase::~LSMTreeBase(v9);
  _Unwind_Resume(a1);
}

uint64_t LSMModelGenerator::GenerateAll(LSMModelGenerator *this)
{
  (*(*this + 40))(this);
  (*(*this + 32))(this, 0, *(this + 212));
  if (*(this + 52) >= 1)
  {
    do
    {
      LSMTreeBase::Begin(this + 80, v7);
      v6[0] = 0;
      while (!LSMTreeIterBase::Equal(v7, v6))
      {
        v2 = v8;
        v3 = v8[1];
        if ((v3 & 0xA000000) == 0x2000000)
        {
          if (!LSMModelGenerator::Terminal(this, *v8))
          {
            v4 = 0;
LABEL_13:
            (*(*this + 32))(this, *v8, v4);
            break;
          }

          --*(this + 52);
          v2 = v8;
          v3 = v8[1] | 0x8000000;
          v8[1] = v3;
        }

        if ((v3 & 0x14000000) == 0x4000000)
        {
          if (!LSMModelGenerator::Terminal(this, *v2))
          {
            v4 = 1;
            goto LABEL_13;
          }

          --*(this + 52);
          v8[1] |= 0x10000000u;
        }

        LSMTreeIterBase::operator++(v7);
      }
    }

    while (*(this + 52) > 0);
  }

  return (*(*this + 48))(this);
}

BOOL LSMModelGenerator::Terminal(LSMModelGenerator *this, int a2)
{
  v8[0] = 0;
  v8[1] = a2;
  v9 = 1;
  LSMTreeBase::LowerBound(this, v8, v10);
  v5[0] = 0;
  v5[1] = a2 + 1;
  v6 = 0;
  LSMTreeBase::LowerBound(this, v5, v7);
  return LSMTreeIterBase::Equal(v10, v7);
}

uint64_t LSMModelGenerator::Generate(LSMModelGenerator *this, uint64_t a2, uint64_t a3)
{
  --*(this + 52);
  if (a3)
  {
    v6 = 0x10000000;
  }

  else
  {
    v6 = 0x8000000;
  }

  v7 = LSMModelContextMap::operator[]((this + 80), a2);
  *v7 |= v6;
  v16[0] = 0;
  v16[1] = a2;
  v17 = 0;
  LSMTreeBase::LowerBound(this, v16, v18);
  v14[0] = 0;
  v14[1] = a2 + 1;
  v15 = 0;
  LSMTreeBase::LowerBound(this, v14, v16);
  v8 = 0;
  v9 = *LSMTupleAccumulator::operator[]((this + 144), a2);
  if (!v19[2])
  {
    v8 = a3 ^ 1;
    LSMTreeIterBase::operator++(v18);
  }

  (*(*this + 56))(this, a2, v8, a3);
  while (!LSMTreeIterBase::Equal(v18, v16))
  {
    v10 = LSMTupleAccumulator::operator[]((this + 144), *v19);
    (*(*this + 72))(this, (*v10 / v9));
    (*(*this + 88))(this, v19[2]);
    if (!LSMModelGenerator::Terminal(this, v19[3]))
    {
      v11 = 0;
      v12 = v19[3];
      if (!a2 && (*(this + 212) & 1) != 0)
      {
        v11 = (*(LSMModelContextMap::operator[]((this + 80), v19[3]) + 3) >> 2) & 1;
      }

      (*(*this + 96))(this, v12, v11);
    }

    (*(*this + 80))(this);
    LSMTreeIterBase::operator++(v18);
  }

  return (*(*this + 64))(this, a2, a3);
}

void *LSMModelGenerator::PushString(LSMModelGenerator *this, char *__s)
{
  v4 = strlen(__s);

  return LSMVectorBase::Append((this + 216), __s, v4);
}

void *LSMModelGenerator::PushName(LSMWordTable **this, unsigned int a2, int a3)
{
  LSMVectorBase::Append((this + 27), "<", 1);
  if (!a2)
  {
    v9 = "LSMModelTop";
    v10 = (this + 27);
    v11 = 11;
LABEL_10:
    LSMVectorBase::Append(v10, v9, v11);
    return LSMVectorBase::Append((this + 27), ">", 1);
  }

  if (a2 >> 30 == 1)
  {
    *v15 = 0;
    LSMWordTable::Pair(this[8], a2, &v15[1], v15);
    if (v15[1])
    {
      v6 = (*(*this[8] + 16))(this[8]);
      v7 = strlen(v6);
      LSMVectorBase::Append((this + 27), v6, v7);
      LSMVectorBase::Append((this + 27), " ", 1);
    }

    v8 = *(*this[8] + 16);
  }

  else
  {
    v8 = *(*this[8] + 16);
  }

  v12 = v8();
  v13 = strlen(v12);
  LSMVectorBase::Append((this + 27), v12, v13);
  if (a3)
  {
    v9 = "!";
    v10 = (this + 27);
    v11 = 1;
    goto LABEL_10;
  }

  return LSMVectorBase::Append((this + 27), ">", 1);
}

void LSMModelGenerator::~LSMModelGenerator(void **this)
{
  *this = &unk_2867C1918;
  LSMVectorBase::~LSMVectorBase(this + 27);
  LSMTreeBase::~LSMTreeBase((this + 18));
  LSMTreeBase::~LSMTreeBase((this + 10));

  LSMTreeBase::~LSMTreeBase(this);
}

{
  LSMModelGenerator::~LSMModelGenerator(this);

  JUMPOUT(0x259C48400);
}

unint64_t LSMModelGenerator::FindInPage(LSMModelGenerator *this, _DWORD *a2, _BYTE *a3, unint64_t a4, BOOL *a5)
{
  v6 = a2[1];
  v5 = a2[2];
  v7 = a3;
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[16 * (v8 >> 1)];
      v11 = v10[1];
      if (v11 < v6 || v11 == v6 && v10[2] < v5)
      {
        v7 = v10 + 4;
        v9 = v8 + ~v9;
      }

      v8 = v9;
    }

    while (v9);
  }

  result = (v7 - a3) >> 4;
  v13 = result < a4 && *(v7 + 1) == v6 && *(v7 + 2) == v5;
  *a5 = v13;
  return result;
}

void *LSMTextModelGenerator::EndModels(LSMTextModelGenerator *this)
{
  result = LSMVectorBase::Append(this + 27);
  *(*(this + 27) + *(this + 29) - 1) = 0;
  return result;
}

void *LSMTextModelGenerator::StartModel(LSMTextModelGenerator *this, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v13 = *MEMORY[0x277D85DE8];
  (*(*this + 96))(this, a2, a4);
  if (a3)
  {
    LSMVectorBase::Append((this + 216), " { kSROptional = true }", 23);
  }

  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = *LSMModelContextMap::operator[]((this + 80), v6) & 0xFFFFFF;
  }

  sprintf(__s, " = /* References: %u */\n\t", v8);
  v9 = strlen(__s);
  result = LSMVectorBase::Append((this + 216), __s, v9);
  *(this + 62) = 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *LSMTextModelGenerator::StartPath(_DWORD *this, long double a2)
{
  v3 = this;
  v9 = *MEMORY[0x277D85DE8];
  v4 = this[62];
  this[62] = v4 + 1;
  if (v4)
  {
    this = LSMVectorBase::Append((this + 54), "\t|\n\t", 4);
  }

  if (*(v3 + 72))
  {
    v5 = log(a2);
    sprintf(__s, "/* %5.4f / %d */ ", a2, fmax(v5 * 10000.5 * 6.0 * 0.001953125, -32000.0));
    v6 = strlen(__s);
    this = LSMVectorBase::Append((v3 + 216), __s, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
  return this;
}

void *LSMTextModelGenerator::AddWord(LSMTextModelGenerator *this)
{
  v2 = (*(**(this + 8) + 16))(*(this + 8));
  v3 = strlen(v2);
  LSMVectorBase::Append((this + 216), v2, v3);

  return LSMVectorBase::Append((this + 216), "\t", 1);
}

void *LSMSRModelGenerator::StartModels(LSMSRModelGenerator *this)
{
  result = LSMSRModelGenerator::PushWords(this, dword_255A701B0, 4);
  *(this + 34) = 0;
  *(this + 156) = 0;
  return result;
}

void *LSMSRModelGenerator::PushWords(void *this, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v5 = this;
  v7 = *(this + 29);
  v6 = *(this + 30);
  v8 = v7 + 4 * a3;
  if (v6 < v8)
  {
    this = LSMVectorBase::Allocate(this + 27, v7 + 4 * a3, 1);
    v6 = v5[30];
  }

  if (v6 >= v8)
  {
    v6 = v8;
  }

  v5[29] = v6;
  if (v3)
  {
    v9 = (v5[27] + v7);
    do
    {
      v10 = *a2++;
      *v9++ = bswap32(v10);
      --v3;
    }

    while (v3);
  }

  return this;
}

uint64_t LSMSRModelGenerator::EndModels(uint64_t this)
{
  v1 = *(this + 216);
  *v1 = bswap32(*(this + 232));
  v1[3] = bswap32(*(this + 272));
  return this;
}

void *LSMSRModelGenerator::StartModel(LSMSRModelGenerator *this, int a2, int a3, char a4)
{
  v9 = *MEMORY[0x277D85DE8];
  *v8 = *"boml";
  *&v8[12] = unk_255A701CC;
  if ((a4 & 1) == 0)
  {
    if (a3)
    {
      *&v8[20] = 18;
    }

    if (*(LSMModelContextMap::operator[]((this + 80), a2) + 3))
    {
      v5 = *(this + 34);
      *&v8[12] = 0x20000000;
      *&v8[16] = v5;
    }
  }

  result = LSMSRModelGenerator::PushWords(this, v8, 7);
  *(this + 31) = *(this + 29) - 4;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

LSMVectorBase *LSMSRModelGenerator::EndModel(LSMSRModelGenerator *this, unsigned int a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  *v11 = 0;
  v6 = *(this + 29);
  LSMSRModelGenerator::PushWords(this, v11, 2);
  LSMModelGenerator::PushName(this, a2, a3);
  result = (this + 216);
  v8 = *(this + 29);
  *(*(this + 27) + v6) = bswap32(v8 - v6 - 8);
  if ((v8 & 3) != 0)
  {
    __src = 0;
    result = LSMVectorBase::Append(result, &__src, 4 - (v8 & 3));
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *LSMSRModelGenerator::PadToLong(void *this)
{
  v3 = this[29] & 3;
  if (v3)
  {
    v5 = v1;
    v6 = v2;
    v4 = 0;
    return LSMVectorBase::Append((this + 27), &v4, 4 - v3);
  }

  return this;
}

void *LSMSRModelGenerator::StartPath(LSMSRModelGenerator *this, long double a2)
{
  if (*(this + 72))
  {
    *(this + 156) = fmax(log(a2) * 10000.5 * 6.0 * 0.001953125, -32000.0);
  }

  result = LSMSRModelGenerator::PushWords(this, "htap", 7);
  v4 = *(this + 31);
  v5 = *(this + 27);
  v6 = *(v5 + v4);
  *(this + 32) = *(this + 29) - 4;
  *(this + 33) = 0;
  *(v5 + v4) = bswap32(bswap32(v6) + 1);
  return result;
}

void *LSMSRModelGenerator::StartPhrase(LSMSRModelGenerator *this)
{
  result = LSMSRModelGenerator::PushWords(this, "arhp", 7);
  v3 = *(this + 32);
  v4 = *(this + 27);
  v5 = *(v4 + v3);
  *(this + 33) = *(this + 29) - 4;
  *(v4 + v3) = bswap32(bswap32(v5) + 1);
  return result;
}

void *LSMSRModelGenerator::AddWord(LSMSRModelGenerator *this, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(this + 33))
  {
    LSMSRModelGenerator::PushWords(this, "arhp", 7);
    v4 = *(this + 32);
    v5 = *(this + 27);
    v6 = *(v5 + v4);
    *(this + 33) = *(this + 29) - 4;
    *(v5 + v4) = bswap32(bswap32(v6) + 1);
  }

  *v14 = *"drow";
  *&v14[3] = unk_255A70220;
  if (*(this + 72))
  {
    v14[3] = *(this + 156) | 0x10000;
    *(this + 156) = 0;
  }

  LSMSRModelGenerator::PushWords(this, v14, 7);
  v7 = (*(**(this + 8) + 16))(*(this + 8), a2);
  v12 = strlen(v7);
  LSMSRModelGenerator::PushWords(this, &v12, 1);
  v8 = strlen(v7);
  result = LSMVectorBase::Append((this + 216), v7, v8);
  v10 = *(this + 29) & 3;
  if (v10)
  {
    __src = 0;
    result = LSMVectorBase::Append((this + 216), &__src, 4 - v10);
  }

  *(*(this + 27) + *(this + 33)) = bswap32(bswap32(*(*(this + 27) + *(this + 33))) + 1);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *LSMSRModelGenerator::AddReference(LSMSRModelGenerator *this, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  result = LSMModelContextMap::operator[]((this + 80), a2);
  if (a3)
  {
    goto LABEL_6;
  }

  v7 = result;
  v8 = *result;
  if ((*result & 0x1000000) != 0)
  {
    if ((v8 & 0x8000000) != 0)
    {
      v16[0] = 1634498418;
      v16[1] = v8 & 0xFFFFFF;
      result = LSMSRModelGenerator::PushWords(this, v16, 2);
      if ((*v7 & 0x8000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_8:
      v14 = *(this + 32);
      goto LABEL_9;
    }

    v9 = *(this + 34) + 1;
    *(this + 34) = v9;
    v8 = v8 & 0xF7000000 | v9;
    *result = v8;
  }

  if ((v8 & 0x8000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = *(this + 31);
  LSMVectorBase::Append(this + 35);
  *(*(this + 35) + 8 * *(this + 37) - 8) = v10;
  v11 = *(this + 32);
  LSMVectorBase::Append(this + 35);
  *(*(this + 35) + 8 * *(this + 37) - 8) = v11;
  result = (*(*this + 32))(this, a2, a3);
  v12 = *(this + 35);
  v13 = *(this + 37);
  v14 = *(v12 + 8 * v13 - 8);
  *(this + 32) = v14;
  *(this + 37) = v13 - 1;
  *(this + 31) = *(v12 + 8 * (v13 - 1) - 8);
  *(this + 37) = v13 - 2;
LABEL_9:
  *(this + 33) = 0;
  *(*(this + 27) + v14) = bswap32(bswap32(*(*(this + 27) + v14)) + 1);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void LSMTextModelGenerator::~LSMTextModelGenerator(void **this)
{
  LSMModelGenerator::~LSMModelGenerator(this);

  JUMPOUT(0x259C48400);
}

void LSMModelContextMap::~LSMModelContextMap(LSMModelContextMap *this)
{
  LSMTreeBase::~LSMTreeBase(this);

  JUMPOUT(0x259C48400);
}

void LSMTupleAccumulator::~LSMTupleAccumulator(LSMTupleAccumulator *this)
{
  LSMTreeBase::~LSMTreeBase(this);

  JUMPOUT(0x259C48400);
}

void LSMVectorBase::LSMVectorBase(LSMVectorBase *this, __int16 a2)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void LSMVectorBase::LSMVectorBase(LSMVectorBase *this, __int16 a2, unint64_t a3)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a3)
  {
    LSMVectorBase::Allocate(this, a3, 1);
    v5 = *(this + 3);
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= a3)
  {
    v5 = a3;
  }

  *(this + 2) = v5;
}

void LSMVectorBase::LSMVectorBase(LSMVectorBase *this, const LSMVectorBase *a2)
{
  *this = 0;
  *(this + 4) = *(a2 + 4);
  *(this + 10) = 1;
  v4 = *(a2 + 2);
  *(this + 2) = v4;
  LSMVectorBase::Allocate(this, v4, 1);
  memcpy(*this, *a2, *(this + 2) * *(this + 4));
}

void *LSMVectorBase::Allocate(const void **this, unint64_t a2, char a3)
{
  v3 = a2;
  if ((a3 & 1) == 0)
  {
    if (a2 >= 8)
    {
      v3 = (3 * a2) >> 1;
    }

    else
    {
      v3 = 8;
    }
  }

  v5 = *(this + 4);
  if (v3 > 0x7FFFFFFFFFFFFFFFLL / v5)
  {
    goto LABEL_12;
  }

  if (*(this + 10) != 1)
  {
    v8 = malloc_type_malloc(v3 * v5, 0xE0E24C14uLL);
    if (v8)
    {
      v9 = v8;
      result = memcpy(v8, *this, this[3] * *(this + 4));
      *this = v9;
      *(this + 10) = 1;
      v7 = (this + 3);
      goto LABEL_11;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v11 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v11, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  result = malloc_type_realloc(*this, v3 * v5, 0xE3592953uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  *this = result;
  v7 = (this + 3);
LABEL_11:
  *v7 = v3;
  return result;
}

void LSMVectorBase::Map(void **this, void *a2, void *a3)
{
  if (*(this + 10) == 1)
  {
    free(*this);
  }

  *this = a2;
  *(this + 10) = 0;
  this[2] = a3;
  this[3] = a3;
}

void LSMVectorBase::~LSMVectorBase(void **this)
{
  if (*(this + 10) == 1)
  {
    free(*this);
  }
}

void *LSMVectorBase::Append(LSMVectorBase *this, const void *__src, uint64_t a3)
{
  v6 = *(this + 2);
  if ((v6 + a3) > *(this + 3))
  {
    LSMVectorBase::Allocate(this, v6 + a3, 0);
    v6 = *(this + 2);
  }

  result = memcpy((*this + v6 * *(this + 4)), __src, *(this + 4) * a3);
  *(this + 2) += a3;
  return result;
}

uint64_t *LSMVectorBase::Swap(uint64_t *this, LSMVectorBase *a2)
{
  v2 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v2;
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void LSMVectorBase::clear(void **this)
{
  free(*this);
  *this = 0;
  this[2] = 0;
  this[3] = 0;
}

uint64_t LSMVectorBase::advise(uint64_t this, int a2)
{
  if ((*(this + 10) & 1) == 0)
  {
    v2 = *(this + 16) * *(this + 8);
    if (v2)
    {
      v4 = *this;
      do
      {
        if (v2 >= 0x4000)
        {
          v5 = 0x4000;
        }

        else
        {
          v5 = v2;
        }

        this = madvise(v4, v5, a2);
        v4 += v5;
        v2 -= v5;
      }

      while (v2);
    }
  }

  return this;
}

uint64_t LSMTreePage::LSMTreePage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2867C1B90;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a3 + 18);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = *(a1 + 10);
  *(*(a1 + 24) + 24) = vaddq_s64(*(*(a1 + 24) + 24), v4);
  return a1;
}

void LSMTreePage::~LSMTreePage(void **this)
{
  *this = &unk_2867C1B90;
  free(this[4]);
}

{
  *this = &unk_2867C1B90;
  free(this[4]);
}

{
  *this = &unk_2867C1B90;
  free(this[4]);

  JUMPOUT(0x259C48400);
}

BOOL LSMTreePage::LowerBound(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v7 = (*(**(a1 + 24) + 16))(*(a1 + 24), a3, *(a1 + 32), *(a1 + 8), &v10);
  v8 = *(a1 + 8);
  if (v7 != v8)
  {
    *a4 = a2;
    *(a4 + 2 * a2) = v7;
    *(a4 + 16) = a1;
  }

  return v7 != v8;
}

BOOL LSMTreePage::Insert(uint64_t a1, int a2, void *__src, unsigned __int16 *a4)
{
  v6 = &a4[a2];
  v7 = *(a1 + 8);
  if (*a4 < a2)
  {
    v6 = (a1 + 8);
  }

  v8 = *v6;
  v9 = *(a1 + 24);
  v10 = *(v9 + 16);
  v11 = (*(a1 + 32) + v10 * v8);
  if (v8 < v7)
  {
    memmove(&v11[v10], (*(a1 + 32) + *(v9 + 16) * v8), (v7 - v8) * *(v9 + 16));
  }

  memcpy(v11, __src, v10);
  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *(a1 + 10) == v12;
}

uint64_t LSMTreePage::Rebalance(LSMTreePage *this, uint64_t a2, unsigned int a3)
{
  v4 = *(*(*(*(this + 2) + 40) + 8 * a2 + 8) + 8);
  v5 = *(this + 4) + a3;
  result = (*(*this + 32))(this);
  ++*(*(this + 3) + 40);
  return result;
}

void *LSMTreePage::DoRebalance(LSMTreePage *this, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = *(*(*(this + 2) + 40) + 8 * a2 + 8);
  v10 = *(*(this + 3) + 16);
  v11 = (*(*(this + 2) + 32) + v10 * a2);
  v12 = *(this + 4);
  if (v12 >= a3)
  {
    v16 = a4 - *(v9 + 8);
    v17 = v16 * v10;
    memmove((*(v9 + 32) + v16 * v10), *(v9 + 32), *(v9 + 8) * *(*(this + 3) + 16));
    if (a5)
    {
      v17 = (v16 - 1) * v10;
      memcpy((*(v9 + 32) + v17), v11, v10);
    }

    memcpy(*(v9 + 32), (*(this + 4) + v10 + v10 * a3), v17);
    result = memcpy(v11, (*(this + 4) + v10 * a3), v10);
  }

  else
  {
    if (a5)
    {
      v13 = *(this + 4);
      *(this + 4) = v12 + 1;
      memcpy((v13 + v12 * v10), v11, v10);
      v12 = *(this + 4);
    }

    v14 = (a3 - v12) * v10;
    memcpy((*(this + 4) + v12 * v10), *(v9 + 32), v14);
    memcpy(v11, (*(v9 + 32) + v14), v10);
    result = memmove(*(v9 + 32), (*(v9 + 32) + v10 + v14), v10 * a4);
  }

  *(this + 4) = a3;
  *(v9 + 8) = a4;
  return result;
}

uint64_t LSMTreePage::Begin(uint64_t result, int a2, uint64_t a3)
{
  *a3 = a2;
  *(a3 + 2 * a2) = 0;
  *(a3 + 16) = result;
  return result;
}

uint64_t LSMTreePage::Next(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 2 * a2) + 1;
  *(a3 + 2 * a2) = v3;
  if (*(result + 8) <= v3)
  {
    v4 = a2 - 1;
    while (v4)
    {
      v5 = *(a3 + 2 * v4);
      result = *(result + 16);
      --v4;
      LOWORD(a2) = a2 - 1;
      if (v5 < *(result + 8))
      {
        goto LABEL_7;
      }
    }

    LOWORD(a2) = 0;
  }

LABEL_7:
  *a3 = a2;
  *(a3 + 16) = result;
  return result;
}

uint64_t LSMTreePage::SanityCheck(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (a4 && !*(a1 + 8) || *(a1 + 10) <= v5 || *(a1 + 16) != a4)
  {
    abort();
  }

  if (a3)
  {
    printf("%.*s%08X %3u %08X %08X\n", a2, "               ", *a1, v5, **(a1 + 32), *(*(a1 + 32) + (v5 - 1) * *(*(a1 + 24) + 16)));
    return *(a1 + 8);
  }

  return v5;
}

uint64_t LSMTreeBranch::SetupBranches(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  v3 = *(v1 + 20);
  *(this + 10) = v3;
  *(this + 40) = v2 + 8 * ~v3 + 512;
  *(v1 + 32) = *(v1 + 32) + v3 - *(v1 + 18);
  return this;
}

uint64_t LSMTreeBranch::LSMTreeBranch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = LSMTreePage::LSMTreePage(a1, a2, a3);
  *result = &unk_2867C1BF0;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(v4 + 20);
  *(result + 10) = v6;
  *(result + 40) = v5 + 8 * ~v6 + 512;
  *(v4 + 32) = *(v4 + 32) + v6 - *(v4 + 18);
  return result;
}

uint64_t LSMTreeBranch::LSMTreeBranch(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = LSMTreePage::LSMTreePage(a1, a2, a4);
  *v6 = &unk_2867C1BF0;
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v7 + 20);
  *(v6 + 10) = v9;
  v10 = v8 + 8 * ~v9;
  *(v6 + 40) = v10 + 512;
  *(v7 + 32) = *(v7 + 32) + v9 - *(v7 + 18);
  *(v10 + 512) = a3;
  a3[2] = v6;
  (*(*a3 + 40))(a3, 0);
  *(a1 + 8) = 1;
  return a1;
}

void sub_255A61E70(_Unwind_Exception *a1)
{
  *v1 = &unk_2867C1B90;
  free(*(v1 + 32));
  _Unwind_Resume(a1);
}

void LSMTreeBranch::~LSMTreeBranch(LSMTreeBranch *this)
{
  v2 = 0;
  *this = &unk_2867C1BF0;
  do
  {
    v3 = *(*(this + 5) + 8 * v2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  while (v2++ < *(this + 4));
  *this = &unk_2867C1B90;
  free(*(this + 4));
}

{
  LSMTreeBranch::~LSMTreeBranch(this);

  JUMPOUT(0x259C48400);
}

void sub_255A61F50(_Unwind_Exception *a1)
{
  *v1 = &unk_2867C1B90;
  free(*(v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t LSMTreeBranch::LowerBound(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v8 = (*(**(a1 + 24) + 16))(*(a1 + 24), a3, *(a1 + 32), *(a1 + 8), &v12);
  v9 = v8;
  *(a4 + 2 * a2) = v8;
  if ((v12 & 1) == 0)
  {
    v10 = *(*(a1 + 40) + 8 * v8);
    if ((*(*v10 + 16))(v10, (a2 + 1), a3, a4))
    {
      return 1;
    }

    if (v9 == *(a1 + 8))
    {
      return 0;
    }
  }

  *a4 = a2;
  *(a4 + 16) = a1;
  return 1;
}

uint64_t LSMTreeBranch::Insert(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*a4 >= a2)
  {
    v5 = &a4[a2];
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  v7 = *(*(a1 + 40) + 8 * v6);
  result = (*(*v7 + 24))(v7, (a2 + 1));
  if (result)
  {
    v10 = *(a1 + 40);
    v11 = (v10 + 8 * v6);
    v12 = *v11;
    v13 = (7 * *(*v11 + 5)) >> 3;
    v14 = *(a1 + 8);
    v15 = v6 < v14;
    if (v6)
    {
      v16 = v6 >= v14;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(*(v11 - 1) + 4) >= *(v11[1] + 4))
      {
        goto LABEL_17;
      }

      v15 = 0;
    }

    v17 = v6 - 1;
    v18 = *(v10 + 8 * (v6 - 1));
    if (v13 > v18[4])
    {
      v12 = v18;
LABEL_19:
      LSMTreePage::Rebalance(v12, v17, 1u);
      return 0;
    }

LABEL_16:
    if (!v15)
    {
LABEL_20:
      v9 = *(*(a1 + 24) + 16);
      memmove((*(a1 + 32) + v9 + v9 * v6), (*(a1 + 32) + v9 * v6), (v14 - v6) * v9);
      memmove((*(a1 + 40) + 8 * v6 + 16), (*(a1 + 40) + 8 * v6 + 8), 8 * (*(a1 + 8) - v6));
      v19 = *(*(a1 + 40) + 8 * v6);
      (*(*v19 + 40))(v19, v6);
      v20 = *(a1 + 8) + 1;
      *(a1 + 8) = v20;
      return *(a1 + 10) == v20;
    }

LABEL_17:
    if (v13 > *(v11[1] + 4))
    {
      v17 = v6;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  return result;
}

void *LSMTreeBranch::DoRebalance(LSMTreeBranch *this, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v10 = *(*(*(this + 2) + 40) + 8 * a2 + 8);
  v11 = *(this + 4);
  v12 = a3 - v11;
  if (a3 <= v11)
  {
    v17 = *(v10 + 8);
    if (*(v10 + 8))
    {
      v18 = a4 - v17;
    }

    else
    {
      v18 = a4 - v17 + 1;
    }

    if (*(v10 + 8))
    {
      memmove((*(v10 + 40) + 8 * v18), *(v10 + 40), 8 * v17 + 8);
    }

    memcpy(*(v10 + 40), (*(this + 5) + 8 * a3 + 8), 8 * v18);
    if (v18)
    {
      v19 = *(v10 + 40);
      do
      {
        v20 = *v19++;
        *(v20 + 16) = v10;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    memcpy((*(this + 5) + 8 * v11 + 8), *(v10 + 40), 8 * v12);
    memmove(*(v10 + 40), (*(v10 + 40) + 8 * v12), 8 * a4 + 8);
    v13 = *(this + 4);
    if (v13 + 1 < a3 + 1)
    {
      v14 = a3 - v13;
      v15 = (*(this + 5) + 8 * v13 + 8);
      do
      {
        v16 = *v15++;
        *(v16 + 16) = this;
        --v14;
      }

      while (v14);
    }
  }

  return LSMTreePage::DoRebalance(this, a2, a3, a4, a5);
}

uint64_t LSMTreeBranch::Next(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a3 + 2 * a2) + 1;
  *(a3 + 2 * a2) = v4;
  return (*(**(v3 + 8 * v4) + 48))(*(v3 + 8 * v4), (a2 + 1));
}

uint64_t LSMTreeBranch::SanityCheck(LSMTreeBranch *this, int a2, uint64_t a3, LSMTreeBranch *a4)
{
  v7 = LSMTreePage::SanityCheck(this, a2, a3, a4);
  v8 = 0;
  do
  {
    v9 = *(*(this + 5) + 8 * v8);
    v7 += (*(*v9 + 64))(v9, (a2 + 1), a3, this);
  }

  while (v8++ < *(this + 4));
  return v7;
}

uint64_t LSMTreeBranch::SetTree(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 24) = a2;
  do
  {
    v5 = *(*(a1 + 40) + 8 * v4);
    result = (*(*v5 + 72))(v5, a2);
  }

  while (v4++ < *(a1 + 8));
  return result;
}

void LSMTreeBase::LSMTreeBase(LSMTreeBase *this, unsigned __int16 a2)
{
  *this = &unk_2867C1C50;
  *(this + 1) = 0;
  *(this + 8) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 9) = 0x200u / a2;
  *(this + 10) = 0x1F8 / (a2 + 8);
  operator new();
}

void LSMTreeBase::clear(LSMTreeBase *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  operator new();
}

void LSMTreeBase::~LSMTreeBase(LSMTreeBase *this)
{
  *this = &unk_2867C1C50;
  v1 = *(this + 6);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

uint64_t LSMTreeBase::LowerBound(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  result = (*(**(a1 + 48) + 16))(*(a1 + 48), 1, a2, a3);
  if (result)
  {
    v5 = *a3;
    if (*a3)
    {
      v5 = *(*(a3 + 2) + 32) + *(*(*(a3 + 2) + 24) + 16) * a3[(v5 - 1) + 1];
    }
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 3) = v5;
  return result;
}

unsigned __int16 *LSMTreeIterBase::Deref(unsigned __int16 *this)
{
  v1 = *this;
  if (*this)
  {
    v1 = *(*(this + 2) + 32) + *(*(*(this + 2) + 24) + 16) * this[(v1 - 1) + 1];
  }

  *(this + 3) = v1;
  return this;
}

uint64_t LSMTreeBase::Insert(LSMTreeBase *this, const void *a2, const LSMTreeIterBase *a3)
{
  ++*(this + 1);
  result = (*(**(this + 6) + 24))(*(this + 6), 1, a2, a3);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t LSMTreeBase::Begin(uint64_t this, LSMTreeIterBase *a2)
{
  if (*(this + 8))
  {
    this = (*(**(this + 48) + 48))(*(this + 48), 1, a2);
    v3 = *a2;
    if (*a2)
    {
      v3 = *(*(a2 + 2) + 32) + *(*(*(a2 + 2) + 24) + 16) * *(a2 + (v3 - 1) + 1);
    }

    *(a2 + 3) = v3;
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t LSMTreeBase::Swap(LSMTreeBase *this, LSMTreeBase *a2)
{
  v3 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  v8 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v8;
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  (*(**(this + 6) + 72))(*(this + 6), this);
  v9 = *(**(a2 + 6) + 72);

  return v9();
}

uint64_t LSMTreeBase::Dump(LSMTreeBase *this)
{
  printf("%lu Elements %lu Pages (%4.1f%%) %lu Rebalances\n", *(this + 1), *(this + 3), *(this + 1) * 100.0 / *(this + 4), *(this + 5));
  v2 = *(this + 1);
  result = (*(**(this + 6) + 64))(*(this + 6), 1, 1, 0);
  if (v2 != result)
  {
    abort();
  }

  return result;
}

uint64_t LSMTreeIterBase::operator++(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    result = (*(**(result + 16) + 56))(*(result + 16));
    v2 = *v1;
    if (*v1)
    {
      v2 = *(*(v1 + 2) + 32) + *(*(*(v1 + 2) + 24) + 16) * v1[(v2 - 1) + 1];
    }

    *(v1 + 3) = v2;
  }

  return result;
}

BOOL LSMTreeIterBase::Equal(LSMTreeIterBase *this, const LSMTreeIterBase *a2)
{
  v2 = *this;
  if (v2 != *a2)
  {
    return 0;
  }

  if (!*this)
  {
    return 1;
  }

  if (*(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  v4 = (this + 2);
  v5 = (a2 + 2);
  v6 = v2 - 1;
  do
  {
    v8 = *v4++;
    v7 = v8;
    v9 = *v5++;
    result = v7 == v9;
  }

  while (v7 == v9 && v6-- != 0);
  return result;
}

void LSMSVD::ProcessMap(LSMSVD *this, const LSMImmutableMapCounter *a2)
{
  v6 = *(this + 2);
  v5 = *(this + 3);
  v7 = *(this + 30);
  if (v7 < v6)
  {
    LSMVectorBase::Allocate(this + 27, v6, 1);
    v7 = *(this + 30);
  }

  if (v7 >= v6)
  {
    v7 = v6;
  }

  *(this + 29) = v7;
  LSMVectorBase::LSMVectorBase(v43, 8, v5);
  v8 = v43[0];
  LSMVectorBase::LSMVectorBase(v40, 8);
  v42 = v8;
  LSMVectorBase::LSMVectorBase(v39, 8, v5);
  (*(*this + 32))(this);
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    for (i = 0; i != v5; ++i)
    {
      v12 = *(*(a2 + 11) + v9 + 16);
      (*(*this + 40))(this, i, v12);
      if (v12)
      {
        *(v43[0] + i) = *(*(a2 + 11) + v9);
        LSMVectorBase::Append(v40);
        v13 = v40[0];
        *(v40[0] + v41 - 1) = i;
        v37[0] = v42;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v13, v13 + 8 * v41, v37, v41);
      }

      *(v39[0] + i) = *(*(a2 + 15) + v10) + *(*(a2 + 15) + v10 + 4) + *(*(a2 + 15) + v10 + 8);
      v10 += 12;
      v9 += 64;
    }
  }

  (*(*this + 48))(this);
  LSMVectorBase::LSMVectorBase(v37, 8);
  LSMVectorBase::LSMVectorBase(v36, 4);
  v14 = log(v5);
  v15 = 0;
  v16 = 1.0 / v14;
  while (1)
  {
    v17 = 0.0;
    while (1)
    {
      v18 = *v40[0];
      v19 = v43[0];
      v20 = *(v43[0] + *v40[0]);
      if (v15 != *v20)
      {
        break;
      }

      LODWORD(v2) = *(v20 + *(*(a2 + 11) + (v18 << 6) + 32) - *(*(a2 + 11) + (v18 << 6)));
      LSMVectorBase::Append(v36);
      *(v36[0] + v36[2] - 1) = v18;
      LSMVectorBase::Append(v37);
      v2 = *&v2;
      *(v37[0] + v38 - 1) = v2;
      v21 = v40[0];
      v22 = v41;
      v44 = v42;
      if (v41 >= 2)
      {
        v23 = *v40[0];
        v24 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v40[0], &v44, v41);
        v25 = &v21[8 * v22 - 8];
        if (v24 == v25)
        {
          *v24 = v23;
        }

        else
        {
          *v24 = *v25;
          *v25 = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v21, (v24 + 1), &v44, ((v24 + 1) - v21) >> 3);
        }
      }

      v17 = v17 + v2;
      v26 = --v41;
      v27 = v19[v18] + 4;
      v19[v18] = v27;
      if (v27 == *(*(a2 + 11) + (v18 << 6)) + 4 * *(*(a2 + 11) + (v18 << 6) + 16))
      {
        if (!v26)
        {
          break;
        }
      }

      else
      {
        LSMVectorBase::Append(v40);
        v28 = v40[0];
        *(v40[0] + v41 - 1) = v18;
        v44 = v42;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v28, v28 + 8 * v41, &v44, v41);
      }
    }

    v29 = v38;
    if (v38 < 1)
    {
      v2 = 0.0;
    }

    else
    {
      v30 = v37[0];
      v31 = (v37[0] + 8 * v38);
      v2 = 0.0;
      do
      {
        v32 = *v30++;
        v2 = v2 + 1.0 / v17 * v32 * log(1.0 / v17 * v32);
      }

      while (v30 < v31);
    }

    v33 = v2 * v16 + 1.0;
    v34 = v33;
    *(*(this + 27) + 4 * v15) = v34;
    if (v29)
    {
      v35 = 0;
      do
      {
        (*(*this + 56))(this, v15, v33 * (*(v37[0] + v35) / *(v39[0] + *(v36[0] + v35))));
        ++v35;
      }

      while (v35 < v38);
    }

    LSMVectorBase::clear(v37);
    LSMVectorBase::clear(v36);
    if (!v41)
    {
      break;
    }

    v15 = *v19[v18];
  }

  LSMVectorBase::~LSMVectorBase(v36);
  LSMVectorBase::~LSMVectorBase(v37);
  LSMVectorBase::~LSMVectorBase(v39);
  LSMVectorBase::~LSMVectorBase(v40);
  LSMVectorBase::~LSMVectorBase(v43);
}

void sub_255A63094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  LSMVectorBase::~LSMVectorBase(&a13);
  LSMVectorBase::~LSMVectorBase(&a17);
  LSMVectorBase::~LSMVectorBase(&a21);
  LSMVectorBase::~LSMVectorBase(&a26);
  _Unwind_Resume(a1);
}

void LSMSVD::ProcessMapLegacy(LSMSVD *this, const LSMImmutableMapCounter *a2)
{
  v7 = *(this + 2);
  v6 = *(this + 3);
  v8 = *(this + 30);
  if (v8 < v7)
  {
    LSMVectorBase::Allocate(this + 27, v7, 1);
    v8 = *(this + 30);
  }

  if (v8 >= v7)
  {
    v8 = v7;
  }

  *(this + 29) = v8;
  LSMVectorBase::LSMVectorBase(v42, 8, v6);
  v9 = v42[0];
  LSMVectorBase::LSMVectorBase(v39, 8);
  v41 = v9;
  (*(*this + 32))(this);
  if (v6)
  {
    v10 = 0;
    for (i = 0; i != v6; ++i)
    {
      v12 = *(*(a2 + 11) + v10 + 16);
      (*(*this + 40))(this, i, v12);
      if (v12)
      {
        *(v42[0] + i) = *(*(a2 + 11) + v10);
        LSMVectorBase::Append(v39);
        v13 = v39[0];
        *(v39[0] + v40 - 1) = i;
        v37[0] = v41;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v13, v13 + 8 * v40, v37, v40);
      }

      v10 += 64;
    }
  }

  (*(*this + 48))(this);
  LSMVectorBase::LSMVectorBase(v37, 8);
  LSMVectorBase::LSMVectorBase(v36, 4);
  v14 = log(v6);
  v15 = 0;
  v16 = 1.0 / v14;
  while (1)
  {
    v17 = 0.0;
    while (1)
    {
      v18 = *v39[0];
      v19 = v42[0];
      v20 = *(v42[0] + *v39[0]);
      if (v15 != *v20)
      {
        break;
      }

      LODWORD(v2) = *(*(a2 + 15) + 12 * v18 + ((*(*(a2 + 3) + 4 * v15) >> 28) & 0xC));
      LODWORD(v3) = *(v20 + *(*(a2 + 11) + (v18 << 6) + 32) - *(*(a2 + 11) + (v18 << 6)));
      LSMVectorBase::Append(v36);
      *(v36[0] + v36[2] - 1) = v18;
      LSMVectorBase::Append(v37);
      v2 = *&v3 / *&v2;
      *(v37[0] + v38 - 1) = v2;
      v21 = v39[0];
      v22 = v40;
      v43 = v41;
      if (v40 >= 2)
      {
        v23 = *v39[0];
        v24 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v39[0], &v43, v40);
        v25 = &v21[8 * v22 - 8];
        if (v24 == v25)
        {
          *v24 = v23;
        }

        else
        {
          *v24 = *v25;
          *v25 = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v21, (v24 + 1), &v43, ((v24 + 1) - v21) >> 3);
        }
      }

      v17 = v17 + v2;
      v26 = --v40;
      v27 = v19[v18] + 4;
      v19[v18] = v27;
      if (v27 == *(*(a2 + 11) + (v18 << 6)) + 4 * *(*(a2 + 11) + (v18 << 6) + 16))
      {
        if (!v26)
        {
          break;
        }
      }

      else
      {
        LSMVectorBase::Append(v39);
        v28 = v39[0];
        *(v39[0] + v40 - 1) = v18;
        v43 = v41;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(v28, v28 + 8 * v40, &v43, v40);
      }
    }

    v29 = v38;
    if (v38 < 1)
    {
      v2 = 0.0;
    }

    else
    {
      v30 = v37[0];
      v31 = (v37[0] + 8 * v38);
      v2 = 0.0;
      v3 = 1.0 / v17;
      do
      {
        v32 = *v30++;
        v2 = v2 + v3 * v32 * log(v3 * v32);
      }

      while (v30 < v31);
    }

    v33 = v2 * v16 + 1.0;
    v34 = v33;
    *(*(this + 27) + 4 * v15) = v34;
    if (v29)
    {
      v35 = 0;
      do
      {
        (*(*this + 56))(this, v15, *(v36[0] + v35), v33 * *(v37[0] + v35));
        ++v35;
      }

      while (v35 < v38);
    }

    LSMVectorBase::clear(v37);
    LSMVectorBase::clear(v36);
    if (!v40)
    {
      break;
    }

    v15 = *v19[v18];
  }

  LSMVectorBase::~LSMVectorBase(v36);
  LSMVectorBase::~LSMVectorBase(v37);
  LSMVectorBase::~LSMVectorBase(v39);
  LSMVectorBase::~LSMVectorBase(v42);
}

void sub_255A63524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void *);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  LSMVectorBase::~LSMVectorBase(va);
  LSMVectorBase::~LSMVectorBase(va1);
  LSMVectorBase::~LSMVectorBase(va2);
  _Unwind_Resume(a1);
}

void LSMSVD::ProcessClusteredMap(LSMSVD *this, const LSMImmutableMapCounter *a2)
{
  v45[7] = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = *(this + 30);
  if (v6 < v4)
  {
    LSMVectorBase::Allocate(this + 27, v4, 1);
    v6 = *(this + 30);
  }

  if (v6 >= v4)
  {
    v6 = v4;
  }

  *(this + 29) = v6;
  LSMVectorBase::LSMVectorBase(v45, 8, v5 * v4);
  LSMVectorBase::LSMVectorBase(v44, 8, v4);
  v7 = 8 * v4;
  bzero(v45[0], 8 * v4 * v5);
  bzero(v44[0], 8 * v4);
  (*(*this + 32))(this);
  if (v5)
  {
    v8 = 0;
    for (i = 0; i != v5; ++i)
    {
      v10 = 0;
      v11 = *(a2 + 15) + v8;
      do
      {
        v12 = *(v11 + 4 * v10);
        if (v12)
        {
          v13 = 1.0 / v12;
        }

        else
        {
          v13 = 1.0;
        }

        *&v45[v10++ + 4] = v13;
      }

      while (v10 != 3);
      v14 = (*(a2 + 11) + (i << 6));
      v15 = v14[2];
      if (v15)
      {
        v16 = *v14;
        v17 = v14[4];
        v18 = *(a2 + 7);
        v19 = *(a2 + 3);
        v20 = v45[0] + 8 * i * v4;
        v21 = v44[0];
        v22 = 4 * v15;
        do
        {
          v24 = *v16++;
          v23 = v24;
          v25 = *(v19 + 4 * v24);
          v26 = *v17++;
          v27 = *(v18 + 4 * v23);
          v28 = *(&v45[4] + ((v25 >> 27) & 0x18)) * v26;
          *&v20[8 * v27] = v28 + *&v20[8 * v27];
          v21[v27] = v28 + v21[v27];
          v22 -= 4;
        }

        while (v22);
      }

      (*(*this + 40))(this, i, v4);
      v8 += 12;
    }
  }

  (*(*this + 48))(this);
  if (v4)
  {
    v29 = 0;
    v30 = 0;
    v31 = 1.0 / log(v5);
    do
    {
      if (v5)
      {
        v33 = 1.0 / *(v44[0] + v30);
        v34 = (v45[0] + v29);
        v35 = 0.0;
        v36 = v5;
        do
        {
          if (*v34 != 0.0)
          {
            v37 = *v34;
            v35 = v35 + v33 * v37 * log(v33 * v37);
          }

          v34 = (v34 + v7);
          --v36;
        }

        while (v36);
        v38 = 0;
        v39 = v35 * v31 + 1.0;
        v40 = v39;
        *(*(this + 27) + 4 * v30) = v40;
        v41 = v29;
        do
        {
          v42 = *(v45[0] + v41);
          if (v42 != 0.0)
          {
            (*(*this + 56))(this, v30, v38, v39 * v42);
          }

          ++v38;
          v41 += v7;
        }

        while (v5 != v38);
      }

      else
      {
        v32 = v31 * 0.0 + 1.0;
        *(*(this + 27) + 4 * v30) = v32;
      }

      ++v30;
      v29 += 8;
    }

    while (v30 != v4);
  }

  LSMVectorBase::~LSMVectorBase(v44);
  LSMVectorBase::~LSMVectorBase(v45);
  v43 = *MEMORY[0x277D85DE8];
}

void LSMSVD::TransposeUV(LSMSVD *this)
{
  *(this + 1) = vrev64_s32(*(this + 8));
  LSMVectorBase::Swap(this + 3, (this + 56));
  TransposeMatrix((this + 24), *(this + 2), *(this + 4));
  TransposeMatrix((this + 56), *(this + 4), *(this + 3));
  if (*(this + 35))
  {
    v2 = *(this + 2);
    v3 = *(this + 3);

    TransposeMatrix((this + 264), v2, v3);
  }
}

void TransposeMatrix(LSMVectorBase *a1, int a2, int a3)
{
  v6 = (a2 + 3);
  LSMVectorBase::LSMVectorBase(v14, 4, ((v6 & 0xFFFFFFFC) * a3));
  if (a2 >= 1)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v14[0];
    do
    {
      v10 = a3;
      v11 = v9;
      v12 = v8;
      if (a3 >= 1)
      {
        do
        {
          v13 = *v12++;
          *v11 = v13;
          v11 = (v11 + ((4 * v6) & 0x3FFFFFFF0));
          --v10;
        }

        while (v10);
      }

      ++v7;
      v8 = (v8 + ((4 * (a3 + 3)) & 0x3FFFFFFF0));
      ++v9;
    }

    while (v7 != a2);
  }

  LSMVectorBase::Swap(v14, a1);
  LSMVectorBase::~LSMVectorBase(v14);
}

void LSMSVD::CombineWeights(uint64_t a1, int a2, uint64_t a3, char a4)
{
  LSMClassifier::CombineS(a1, (a1 + 88));
  if (a3)
  {
    if (a4)
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      (*(a3 + 16))(a3, 1);
      if ((a4 & 2) == 0)
      {
LABEL_4:
        if ((a4 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((a4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v14 = *(a1 + 12);
    v13 = *(a1 + 16);
    v15 = *(a1 + 56);
    (*(a3 + 16))(a3, 2);
    if ((a4 & 4) != 0)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = *(a1 + 216);
      (*(a3 + 16))(a3, 4);
    }
  }

LABEL_6:
  if (a2)
  {
    LSMClassifier::CombineW(a1, (a1 + 216));
  }

  LSMClassifier::ComputeVV(a1);
}

void LSMSVD::Compute(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 72))
  {
    v6 = (a1 + 16);
  }

  else
  {
    v6 = (a1 + 40);
  }

  v7 = *v6;
  v8 = *(a1 + 136);
  if ((LSMDebugFlags::sLSMDebug & 0x80) != 0)
  {
    printf("Sparseness %lu/%lu\n", *(a1 + 8), v7 * v8);
  }

  if ((a4 & 2) != 0)
  {
LABEL_15:
    v11 = v7 < v8;
    if ((a4 & 8) == 0)
    {
      LSMSVDSparseDouble::Create(v11);
    }

    LSMSVDSparseFloat::Create(v11);
  }

  if ((a4 & 1) == 0)
  {
    v9 = v7 * v8;
    if (v7 * v8 < 0x989681)
    {
      if (v9 < 0xF4241)
      {
        if (v9 < 0x186A1)
        {
          goto LABEL_17;
        }

        v10 = 0.05;
      }

      else
      {
        v10 = 0.1;
      }
    }

    else
    {
      v10 = 0.4;
    }

    if ((*(a1 + 8) / (v7 * v8)) < v10)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  if (v7 < v8)
  {
    if ((a4 & 4) == 0)
    {
      operator new();
    }

    operator new();
  }

  if ((a4 & 4) == 0)
  {
    operator new();
  }

  operator new();
}

void sub_255A63EB4(_Unwind_Exception *a1)
{
  LSMSVD::~LSMSVD(v1);
  MEMORY[0x259C48400](v1, 0x1081C403EA31E41);
  _Unwind_Resume(a1);
}

void LSMSVD::~LSMSVD(void **this)
{
  *this = &unk_2867C1CB0;
  LSMVectorBase::~LSMVectorBase(this + 33);

  LSMClassifier::~LSMClassifier(this);
}

void LSMSVD::LSMSVD(LSMSVD *this)
{
  LSMClassifier::LSMClassifier(this);
  *v1 = &unk_2867C1CB0;
  LSMVectorBase::LSMVectorBase((v1 + 33), 4);
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = *a3;
    v10 = **(*a3 + (*v6 << 32 >> 29));
    v11 = **(*a3 + 8 * v8);
    if (v10 > v11 || (v7 > v8 ? (v12 = v10 == v11) : (v12 = 0), v12))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        while (1)
        {
          v14 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v13 = (result + 8 * v5);
          v15 = *v13;
          v16 = **(v9 + (*v13 << 32 >> 29));
          if (v16 <= v11 && (v15 <= v8 || v16 != v11))
          {
            break;
          }

          *v6 = v15;
          v6 = (result + 8 * v5);
          if (v14 <= 1)
          {
            goto LABEL_17;
          }
        }
      }

      v13 = v6;
LABEL_17:
      *v13 = v8;
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,LSMSparseRowIterComp &,unsigned long *>(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v11 = v6[2];
      v9 = v6 + 2;
      v10 = v11;
      v12 = *(v9 - 1);
      v13 = **(v4 + 8 * v12);
      v14 = **(v4 + 8 * v11);
      if (v13 > v14 || (v12 > v10 ? (v15 = v13 == v14) : (v15 = 0), v15))
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

unsigned int *LSMSVDSDImpl::StartColumns(unsigned int *this)
{
  v1 = this;
  v2 = this[3];
  v3 = *(this + 40);
  if (v3 >= v2)
  {
    v4 = this[3];
  }

  else
  {
    this = LSMVectorBase::Allocate(this + 37, v2, 1);
    v3 = *(v1 + 320);
    v4 = *(v1 + 12);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(v1 + 312) = v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      this = std::pair<LSMVector<unsigned int>,LSMVector<double>>::pair[abi:ne200100]((*(v1 + 296) + v5));
      ++v6;
      v5 += 64;
    }

    while (v6 < *(v1 + 12));
  }

  return this;
}

unsigned int *LSMSVDSDTImpl::StartColumns(unsigned int *this)
{
  v1 = this;
  v2 = this[2];
  v3 = *(this + 40);
  if (v3 >= v2)
  {
    v4 = this[2];
  }

  else
  {
    this = LSMVectorBase::Allocate(this + 37, v2, 1);
    v3 = *(v1 + 320);
    v4 = *(v1 + 8);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(v1 + 312) = v3;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      this = std::pair<LSMVector<unsigned int>,LSMVector<double>>::pair[abi:ne200100]((*(v1 + 296) + v5));
      ++v6;
      v5 += 64;
    }

    while (v6 < *(v1 + 8));
  }

  return this;
}

const void **LSMSVDSDImpl::ColumnDimension(LSMSVDSDImpl *this, uint64_t a2, unint64_t a3)
{
  v6 = *(this + 37);
  result = (v6 + (a2 << 6));
  if (result[3] < a3)
  {
    result = LSMVectorBase::Allocate(result, a3, 1);
    v6 = *(this + 37);
  }

  v8 = v6 + (a2 << 6);
  if (*(v8 + 56) < a3)
  {

    return LSMVectorBase::Allocate((v8 + 32), a3, 1);
  }

  return result;
}

void *LSMSVDSDImpl::ProcessElement(LSMSVDSDImpl *this, int a2, uint64_t a3, double a4)
{
  v8 = (*(this + 37) + (a3 << 6));
  LSMVectorBase::Append(v8);
  *(*v8 + 4 * v8[2] - 4) = a2;
  v9 = *(this + 37) + (a3 << 6);
  result = LSMVectorBase::Append((v9 + 32));
  *(*(v9 + 32) + 8 * *(v9 + 48) - 8) = a4;
  return result;
}

void *LSMSVDSDTImpl::ProcessElement(LSMSVDSDTImpl *this, uint64_t a2, int a3, double a4)
{
  v8 = (*(this + 37) + (a2 << 6));
  LSMVectorBase::Append(v8);
  *(*v8 + 4 * v8[2] - 4) = a3;
  v9 = *(this + 37) + (a2 << 6);
  result = LSMVectorBase::Append((v9 + 32));
  *(*(v9 + 32) + 8 * *(v9 + 48) - 8) = a4;
  return result;
}

uint64_t LSMSVDSDImpl::Dump(LSMSVDSDImpl *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0;
  time(&v22);
  v2 = localtime(&v22);
  strftime(__filename, 0x50uLL, "matrix_%d%b%C_%H%M%S", v2);
  v3 = fopen(__filename, "w");
  v4 = v3;
  v5 = *(this + 3);
  if (v5)
  {
    v6 = 0;
    v7 = (*(this + 37) + 16);
    v8 = *(this + 3);
    do
    {
      v9 = *v7;
      v7 += 8;
      v6 += v9;
      --v8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  fprintf(v3, "%-72s%-8s\n#\nRRA%14lu%14lu%14lu%14lu\n%-16s%-16s%-20s%-20s\n", __filename, "LSM", *(this + 2), v5, v6, 0, "(16I5)", "(16I5)", "(1P,5D16.9)", "(1P,5D16.9)");
  v23 = v4;
  v24[10] = v24;
  if (*(this + 3))
  {
    v10 = 0;
    v11 = 1;
    v12 = 16;
    do
    {
      LSMCardPunch::Punch(&v23, " %lu", v11);
      v11 += *(*(this + 37) + v12);
      ++v10;
      v12 += 64;
    }

    while (v10 < *(this + 3));
  }

  else
  {
    v11 = 1;
  }

  LSMCardPunch::Punch(&v23, " %lu", v11);
  LSMCardPunch::Flush(&v23);
  if (*(this + 3))
  {
    v13 = 0;
    do
    {
      v14 = *(*(this + 37) + (v13 << 6) + 16);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          LSMCardPunch::Punch(&v23, " %lu", (*(*(*(this + 37) + (v13 << 6)) + 4 * i) + 1));
        }
      }

      LSMCardPunch::Flush(&v23);
      ++v13;
      v16 = *(this + 3);
    }

    while (v13 < v16);
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = *(*(this + 37) + (v17 << 6) + 48);
        if (v18)
        {
          for (j = 0; j != v18; ++j)
          {
            LSMCardPunch::Punch(&v23, " %14g", *(*(*(this + 37) + (v17 << 6) + 32) + 8 * j));
          }
        }

        LSMCardPunch::Flush(&v23);
        ++v17;
      }

      while (v17 < *(this + 3));
    }
  }

  result = fclose(v4);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

int32x2_t LSMSVDSDTImpl::Dump(int32x2_t *this)
{
  this[1] = vrev64_s32(this[1]);
  LSMSVDSDImpl::Dump(this);
  result = vrev64_s32(this[1]);
  this[1] = result;
  return result;
}

void LSMSVDSDImpl::Compute(LSMSVDSDImpl *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v2 = (3 * *(this + 4));
  }

  v3 = *(this + 3);
  if (v2 >= v3)
  {
    LODWORD(v2) = *(this + 3);
  }

  *(this + 108) = v2;
  *(this + 49) = 0xB9B4484BFEEBC2A0;
  *(this + 25) = xmmword_255A70300;
  *(this + 57) = 0;
  *(this + 52) = 0;
  v4 = *(this + 66);
  v5 = v3;
  if (v4 < v3)
  {
    LSMVectorBase::Allocate(this + 63, v3, 1);
    v4 = *(this + 66);
    v5 = *(this + 3);
  }

  if (v4 >= v3)
  {
    v4 = v3;
  }

  *(this + 65) = v4;
  v6 = *(this + 70);
  v7 = v5;
  if (v6 < v5)
  {
    LSMVectorBase::Allocate(this + 67, v5, 1);
    v6 = *(this + 70);
    v7 = *(this + 3);
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  *(this + 69) = v6;
  v8 = *(this + 74);
  v9 = v7;
  if (v8 < v7)
  {
    LSMVectorBase::Allocate(this + 71, v7, 1);
    v8 = *(this + 74);
    v9 = *(this + 3);
  }

  if (v8 >= v7)
  {
    v8 = v7;
  }

  *(this + 73) = v8;
  v10 = *(this + 78);
  if (v10 < v9)
  {
    LSMVectorBase::Allocate(this + 75, v9, 1);
    v10 = *(this + 78);
  }

  if (v10 >= v9)
  {
    v10 = v9;
  }

  *(this + 77) = v10;
  v11 = *(this + 2);
  v12 = *(this + 82);
  if (v12 < v11)
  {
    LSMVectorBase::Allocate(this + 79, *(this + 2), 1);
    v12 = *(this + 82);
  }

  if (v12 >= v11)
  {
    v12 = v11;
  }

  *(this + 81) = v12;
  v13 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (*(this + 108) + 2);
  v14 = *(this + 86);
  if (v14 < v13)
  {
    LSMVectorBase::Allocate(this + 83, ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * (*(this + 108) + 2), 1);
    v14 = *(this + 86);
  }

  if (v14 >= v13)
  {
    v14 = v13;
  }

  *(this + 85) = v14;
  v15 = *(this + 65);
  if (v15 >= 1)
  {
    bzero(*(this + 63), 8 * v15);
  }

  LSMSVDSDImpl::landr(this);
  LSMVectorBase::LSMVectorBase(__Y, 8, *(this + 2));
  v16 = *(this + 111);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = __Y[0];
    do
    {
      LSMSVDSDImpl::opb(this, (*(this + 41) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * v17), v18);
      v19 = cblas_ddot(*(this + 3), (*(this + 41) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * v17), 1, __Y[0], 1);
      cblas_daxpy(*(this + 3), -v19, (*(this + 41) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * v17), 1, __Y[0], 1);
      v20 = cblas_ddot(*(this + 3), __Y[0], 1, __Y[0], 1);
      v21 = sqrt(v19);
      LSMSVDSDImpl::opa(this, (*(this + 41) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * v17), __Y[0]);
      cblas_dscal(*(this + 2), 1.0 / v21, __Y[0], 1);
      *(*(this + 71) + 8 * v17) = 1.0 / v21 * sqrt(v20);
      v22 = v21;
      *(*(this + 11) + 4 * v17) = v22;
      v18 = __Y[0];
      if (v49)
      {
        v23 = (*(this + 3) + 4 * ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v17);
        v24 = 8 * v49;
        v25 = __Y[0];
        do
        {
          v26 = *v25++;
          v27 = v26;
          *v23++ = v27;
          v24 -= 8;
        }

        while (v24);
      }

      ++v17;
      v16 = *(this + 111);
    }

    while (v17 < v16);
  }

  if (v16 < 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0;
    v29 = (*(this + 11) + 4 * v16 - 4);
    while (*v29 < 0.00000001)
    {
      ++v28;
      --v29;
      if (v16 == v28)
      {
        v28 = v16;
        break;
      }
    }
  }

  v30 = v16 - v28;
  if (v16 - v28 >= *(this + 4))
  {
    v30 = *(this + 4);
  }

  *(this + 4) = v30;
  if (v30 < v16)
  {
    v31 = v28 + v30;
    v32 = (v30 + 3) & 0x1FFFFFFFCLL;
    if (*(this + 3))
    {
      v33 = 0;
      v34 = 0;
      v35 = 4 * v16 - 4 * v31;
      v36 = (4 * (v30 + 3)) & 0xFFFFFFFFFFFFFFF0;
      do
      {
        memmove((*(this + 7) + v33), (*(this + 7) + v35), 4 * *(this + 4));
        ++v34;
        v37 = *(this + 3);
        v35 += (4 * (v16 + 3)) & 0xFFFFFFFFFFFFFFF0;
        v33 += v36;
      }

      while (v34 < v37);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37 * v32;
    v39 = *(this + 10);
    if (v39 < v38)
    {
      LSMVectorBase::Allocate(this + 7, v38, 1);
      v39 = *(this + 10);
    }

    if (v39 >= v38)
    {
      v39 = v38;
    }

    *(this + 9) = v39;
    LSMVectorBase::LSMVectorBase(v47, (this + 56));
    LSMVectorBase::Swap(v47, (this + 56));
    LSMVectorBase::clear(v47);
    v40 = v16 - v31;
    memmove(*(this + 11), (*(this + 11) + 4 * v40), 4 * *(this + 4));
    v41 = *(this + 4);
    v42 = *(this + 14);
    if (v42 < v41)
    {
      LSMVectorBase::Allocate(this + 11, *(this + 4), 1);
      v42 = *(this + 14);
    }

    if (v42 >= v41)
    {
      v42 = v41;
    }

    *(this + 13) = v42;
    LSMVectorBase::LSMVectorBase(v46, (this + 88));
    LSMVectorBase::Swap(v46, (this + 88));
    LSMVectorBase::clear(v46);
    memmove(*(this + 3), (*(this + 3) + 4 * ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v40), (4 * (*(this + 4) * *(this + 2)) + 12) & 0x7FFFFFFF0);
    v43 = ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 4);
    v44 = *(this + 6);
    if (v44 < v43)
    {
      LSMVectorBase::Allocate(this + 3, ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * *(this + 4), 1);
      v44 = *(this + 6);
    }

    if (v44 >= v43)
    {
      v44 = v43;
    }

    *(this + 5) = v44;
    LSMVectorBase::LSMVectorBase(v45, (this + 24));
    LSMVectorBase::Swap(v45, (this + 24));
    LSMVectorBase::clear(v45);
    LSMVectorBase::~LSMVectorBase(v45);
    LSMVectorBase::~LSMVectorBase(v46);
    LSMVectorBase::~LSMVectorBase(v47);
  }

  LSMVectorBase::clear(this + 63);
  LSMVectorBase::clear(this + 67);
  LSMVectorBase::clear(this + 71);
  LSMVectorBase::clear(this + 75);
  LSMVectorBase::clear(this + 79);
  LSMVectorBase::clear(this + 83);
  LSMVectorBase::clear(this + 41);
  LSMVectorBase::~LSMVectorBase(__Y);
}

void sub_255A64D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

void LSMSVDSDImpl::landr(LSMSVDSDImpl *this)
{
  v2 = *(this + 3);
  *(this + 45) = 0x3CB0000000000000;
  *(this + 46) = sqrt(v2) * 2.22044605e-16;
  *(this + 376) = xmmword_255A70310;
  v3 = *(this + 66);
  v4 = v2;
  if (v3 < v2)
  {
    LSMVectorBase::Allocate(this + 63, v2, 1);
    v3 = *(this + 66);
    v4 = *(this + 3);
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  *(this + 65) = v3;
  v5 = *(this + 90);
  v6 = v4;
  if (v5 < v4)
  {
    LSMVectorBase::Allocate(this + 87, v4, 1);
    v5 = *(this + 90);
    v6 = *(this + 3);
  }

  if (v5 >= v4)
  {
    v5 = v4;
  }

  *(this + 89) = v5;
  v7 = *(this + 94);
  v8 = v6;
  if (v7 < v6)
  {
    LSMVectorBase::Allocate(this + 91, v6, 1);
    v7 = *(this + 94);
    v8 = *(this + 3);
  }

  if (v7 >= v6)
  {
    v7 = v6;
  }

  *(this + 93) = v7;
  v9 = *(this + 98);
  v10 = v8;
  if (v9 < v8)
  {
    LSMVectorBase::Allocate(this + 95, v8, 1);
    v9 = *(this + 98);
    v10 = *(this + 3);
  }

  if (v9 >= v8)
  {
    v9 = v8;
  }

  *(this + 97) = v9;
  v11 = *(this + 102);
  v12 = v10;
  if (v11 < v10)
  {
    LSMVectorBase::Allocate(this + 99, v10, 1);
    v11 = *(this + 102);
    v12 = *(this + 3);
  }

  if (v11 >= v10)
  {
    v11 = v10;
  }

  *(this + 101) = v11;
  v13 = *(this + 106);
  if (v13 < v12)
  {
    LSMVectorBase::Allocate(this + 103, v12, 1);
    v13 = *(this + 106);
  }

  if (v13 >= v12)
  {
    v13 = v12;
  }

  *(this + 105) = v13;
  v14 = *(this + 108);
  v15 = v14;
  v16 = *(this + 110);
  if (v16 < v14)
  {
    LSMVectorBase::Allocate(this + 107, v14, 1);
    v16 = *(this + 110);
    v14 = *(this + 108);
  }

  v17 = v14;
  if (v16 >= v15)
  {
    v16 = v15;
  }

  *(this + 109) = v16;
  v18 = *(this + 114);
  v19 = v14;
  if (v18 < v14)
  {
    LSMVectorBase::Allocate(this + 111, v14, 1);
    v18 = *(this + 114);
    v14 = *(this + 108);
    v19 = v14;
  }

  if (v18 >= v17)
  {
    v18 = v17;
  }

  *(this + 113) = v18;
  v20 = *(this + 118);
  if (v20 < v19)
  {
    LSMVectorBase::Allocate(this + 115, v19, 1);
    v20 = *(this + 118);
    v14 = *(this + 108);
  }

  if (v20 >= v19)
  {
    v20 = v19;
  }

  *(this + 117) = v20;
  v21 = v14 + 1;
  v22 = *(this + 122);
  if (v22 < v21)
  {
    LSMVectorBase::Allocate(this + 119, v21, 1);
    v22 = *(this + 122);
  }

  if (v22 >= v21)
  {
    v22 = v21;
  }

  *(this + 121) = v22;
  LSMSVDSDImpl::lanso(this);
  v23 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 111);
  v24 = *(this + 44);
  if (v24 < v23)
  {
    LSMVectorBase::Allocate(this + 41, ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * *(this + 111), 1);
    v24 = *(this + 44);
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

  *(this + 43) = v24;
  bzero(*(this + 41), 8 * v24);
  v25 = *(this + 111);
  v26 = ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v25;
  v27 = *(this + 6);
  if (v27 < v26)
  {
    LSMVectorBase::Allocate(this + 3, ((*(this + 2) + 3) & 0x1FFFFFFFCLL) * v25, 1);
    v27 = *(this + 6);
    v25 = *(this + 111);
  }

  if (v27 >= v26)
  {
    v27 = v26;
  }

  *(this + 5) = v27;
  v28 = ((v25 + 3) & 0xFFFFFFFFFFFFFFFCLL) * *(this + 3);
  v29 = *(this + 10);
  if (v29 < v28)
  {
    LSMVectorBase::Allocate(this + 7, ((v25 + 3) & 0xFFFFFFFFFFFFFFFCLL) * *(this + 3), 1);
    v29 = *(this + 10);
    v25 = *(this + 111);
  }

  if (v29 >= v28)
  {
    v29 = v28;
  }

  *(this + 9) = v29;
  v30 = *(this + 14);
  if (v30 < v25)
  {
    LSMVectorBase::Allocate(this + 11, v25, 1);
    v30 = *(this + 14);
  }

  if (v30 >= v25)
  {
    v30 = v25;
  }

  *(this + 13) = v30;
  v31 = fabs(*(this + 51));
  if (v31 < *(this + 48))
  {
    v31 = *(this + 48);
  }

  *(this + 51) = v31;
  LSMSVDSDImpl::ritvec(this);
  LSMVectorBase::clear(this + 63);
  LSMVectorBase::clear(this + 87);
  LSMVectorBase::clear(this + 91);
  LSMVectorBase::clear(this + 95);
  LSMVectorBase::clear(this + 99);
  LSMVectorBase::clear(this + 103);
  LSMVectorBase::clear(this + 107);
  LSMVectorBase::clear(this + 111);
  LSMVectorBase::clear(this + 115);

  LSMVectorBase::clear(this + 119);
}

void LSMSVDSDImpl::opb(void **this, double *a2, double *a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    bzero(this[79], 8 * v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = 0;
    v9 = this[37];
    v10 = this[79];
    do
    {
      v11 = &v9[64 * v8];
      v12 = *(v11 + 2);
      v13 = *a2++;
      v14 = v13;
      if (v12 >= 1)
      {
        v15 = *v11;
        v16 = *v11 + 4 * v12;
        v17 = *(v11 + 4);
        do
        {
          v18 = *v17++;
          v19 = v18;
          LODWORD(v18) = *v15++;
          v10[LODWORD(v18)] = v10[LODWORD(v18)] + v19 * v14;
        }

        while (v15 < v16);
      }

      ++v8;
    }

    while (v8 != v7);
    v20 = 0;
    v21 = this[37];
    v22 = this[79];
    do
    {
      v23 = &v21[64 * v20];
      v24 = *(v23 + 2);
      if (v24 < 1)
      {
        v28 = 0.0;
      }

      else
      {
        v25 = *v23;
        v26 = *v23 + 4 * v24;
        v27 = *(v23 + 4);
        v28 = 0.0;
        do
        {
          v29 = *v27++;
          v30 = v29;
          LODWORD(v29) = *v25++;
          v28 = v28 + v30 * v22[LODWORD(v29)];
        }

        while (v25 < v26);
      }

      *a3++ = v28;
      ++v20;
    }

    while (v20 != v7);
  }
}

void LSMSVDSDImpl::opa(LSMSVDSDImpl *this, double *a2, double *a3)
{
  v6 = *(this + 2);
  if (v6)
  {
    bzero(a3, 8 * v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = 0;
    v9 = *(this + 37);
    do
    {
      v10 = v9 + (v8 << 6);
      v11 = *(v10 + 16);
      v12 = *a2++;
      v13 = v12;
      if (v11 >= 1)
      {
        v14 = *v10;
        v15 = *v10 + 4 * v11;
        v16 = *(v10 + 32);
        do
        {
          v17 = *v16++;
          v18 = v17;
          LODWORD(v17) = *v14++;
          a3[LODWORD(v17)] = a3[LODWORD(v17)] + v18 * v13;
        }

        while (v14 < v15);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void LSMSVDSDTImpl::Compute(int32x2_t *this)
{
  this[1] = vrev64_s32(this[1]);
  LSMSVDSDImpl::Compute(this);

  LSMSVD::TransposeUV(this);
}

uint64_t datx(uint64_t result, double a2, double *a3, double *a4)
{
  if (result >= 1 && a2 != 0.0)
  {
    do
    {
      v4 = *a3++;
      *a4++ = v4 * a2;
      --result;
    }

    while (result);
  }

  return result;
}

uint64_t dsort2(uint64_t result, uint64_t a2, double *a3, double *a4)
{
  if (result)
  {
    do
    {
      if (result < a2)
      {
        v4 = &a3[result];
        v5 = result;
        v6 = &a4[result];
        do
        {
          for (i = v5 - result; i >= 0; i -= result)
          {
            v8 = a3[i];
            v9 = v4[i];
            if (v8 <= v9)
            {
              break;
            }

            a3[i] = v9;
            v4[i] = v8;
            v10 = a4[i];
            a4[i] = v6[i];
            v6[i] = v10;
          }

          ++v5;
        }

        while (v5 != a2);
      }

      v11 = result + 1;
      result /= 2;
    }

    while (v11 > 2);
  }

  return result;
}

void LSMSVDSDImpl::lanso(LSMSVDSDImpl *this)
{
  *(this + 110) = 0;
  *(this + 109) = 0;
  LSMSVDSDImpl::stpone(this);
  if (*(this + 52) != 0.0 && !*(this + 110))
  {
    v2 = *(this + 46);
    **(this + 111) = v2;
    **(this + 115) = v2;
    v38 = 0;
    v3 = *(this + 4);
    v4 = *(this + 108);
    v37 = 0;
    if (v3)
    {
      v5 = 0;
      v6 = (this + 436);
      v7 = 8;
      if (v3 > 8)
      {
        v7 = v3;
      }

      v8 = v7 + v3;
      if (v8 >= v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = v8;
      }

      v10 = 1;
      do
      {
        if (*(this + 52) <= *(this + 53))
        {
          *(this + 52) = 0;
        }

        LSMSVDSDImpl::lanczos_step(this, v10, v9, &v38, &v37);
        if (v37)
        {
          v9 = *v6;
        }

        v11 = v9 - 1;
        *(this + 109) = v9 - 1;
        *(*(this + 119) + 8 * (v9 - 1) + 8) = *(this + 52);
        v12 = v9;
        if (v9 >= 2)
        {
          v35 = v9;
          v36 = v5;
          v13 = 0;
          v14 = 0;
          do
          {
            if (v11 + 1 > v13)
            {
              v15 = v11 + 1;
            }

            else
            {
              v15 = v13;
            }

            v16 = v13 + 1;
            while (v16 - v15 != 1)
            {
              v17 = *(*(this + 119) + 8 * v16++);
              if (v17 == 0.0)
              {
                LODWORD(v15) = v16 - 2;
                break;
              }
            }

            if (v15 >= v11)
            {
              v18 = v11;
            }

            else
            {
              v18 = v15;
            }

            v19 = 8 * v13;
            cblas_dcopy(v18 - v13 + 1, (*(this + 107) + v19), 1, (*(this + 67) + v19), -1);
            cblas_dcopy(v18 - v13, (*(this + 119) + v19 + 8), 1, (*(this + 103) + v19 + 8), -1);
            LSMSVDSDImpl::imtqlb(this, v18 - v13 + 1, (*(this + 67) + v19), (*(this + 103) + v19), (*(this + 71) + v19));
            if (*(this + 110))
            {
              printf("IMTQLB FAILED TO CONVERGE (IERR = %d)\n", *(this + 110));
              printf("L = %d    I = %d\n", v13, v18);
              if (v18 >= v13)
              {
                v20 = v13;
                do
                {
                  v21 = *(*(this + 103) + v19);
                  printf("%d  %lg  %lg  %lg\n", v20++, *(*(this + 67) + v19), v21, *(*(this + 71) + v19));
                  v19 += 8;
                }

                while (v18 + 1 != v20);
              }
            }

            if (v18 >= v13)
            {
              v22 = v18 + 1;
              v23 = (*(this + 71) + 8 * v13);
              v24 = v18 + 1 - v13;
              do
              {
                *v23 = *(this + 52) * fabs(*v23);
                ++v23;
                --v24;
              }

              while (v24);
            }

            else
            {
              v22 = v18 + 1;
            }

            ++v14;
            v11 = *v6;
            v25 = v14 < *v6 && v18 < v11;
            v13 = v22;
          }

          while (v25);
          v12 = v11 + 1;
          v5 = v36;
          v9 = v35;
        }

        dsort2((v12 + (v12 >> 31)) >> 1, v12, *(this + 67), *(this + 71));
        LSMSVDSDImpl::error_bound(this, &v37);
        v26 = *(this + 111);
        v27 = *(this + 4);
        if (v26 >= v27)
        {
          break;
        }

        if (v26)
        {
          v28 = (*v6 - 5) * (v27 - v26) / v26;
          v29 = v28 + 1 > 3 ? v28 + 1 : 3;
          v30 = v29 + v9;
        }

        else
        {
          v30 = v9 + 9;
        }

        if (v37)
        {
          break;
        }

        v31 = *(this + 108);
        if (v31 < v30)
        {
          v30 = *(this + 108);
        }

        v37 = v9 >= v31;
        if (++v5 >= v27)
        {
          break;
        }

        v10 = v9;
        v25 = v9 < v31;
        v9 = v30;
      }

      while (v25);
    }

    v32 = *(this + 87);
    v33 = *(this + 3);
    v34 = (*(this + 83) + 8 * ((v33 + 3) & 0x1FFFFFFFCLL) * (*(this + 109) + 2));

    cblas_dcopy(v33, v32, 1, v34, 1);
  }
}

void LSMSVDSDImpl::ritvec(LSMSVDSDImpl *this)
{
  v2 = *(this + 95);
  v3 = *(this + 103);
  v4 = *(this + 109);
  v5 = v4 + 1;
  v6 = v5 * v5;
  LSMVectorBase::LSMVectorBase(v33, 8, v5 * v5);
  if (v4 == -1 || (v6 <= 1 ? (v7 = 1) : (v7 = v5 * v5), bzero(v33[0], 8 * v7), (v4 & 0x80000000) != 0))
  {
    v14 = 0;
  }

  else
  {
    v8 = v33[0];
    v9 = (v4 + 2) & 0xFFFFFFFE;
    v10 = vdupq_n_s64(v4);
    v11 = xmmword_255A70320;
    v12 = vdupq_n_s64(2uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v10, v11));
      if (v13.i8[0])
      {
        *v8 = 1.0;
      }

      if (v13.i8[4])
      {
        v8[v4 + 2] = 1.0;
      }

      v11 = vaddq_s64(v11, v12);
      v8 += 2 * v4 + 4;
      v9 -= 2;
    }

    while (v9);
    v14 = 1;
  }

  cblas_dcopy(v4 + 1, *(this + 107), 1, v2, -1);
  cblas_dcopy(*(this + 109), (*(this + 119) + 8), 1, v3 + 1, -1);
  LSMSVDSDImpl::imtql2(this, v4 + 1, v4 + 1, v2, v3, v33[0]);
  if (!*(this + 110))
  {
    *(this + 112) = 0;
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 8 * (v6 - v5);
      v18 = 8 * ~v4;
      do
      {
        if (*(*(this + 71) + 8 * v15) <= *(this + 51) * fabs(*(*(this + 67) + 8 * v15)) && v15 > (v5 + ~*(this + 111)))
        {
          v32 = v16;
          v19 = *(this + 3);
          if (v19)
          {
            bzero(v2, 8 * v19);
          }

          v20 = v17;
          v21 = 2;
          v22 = v5;
          do
          {
            cblas_dcopy(*(this + 3), (*(this + 83) + 8 * ((*(this + 3) + 3) & 0x1FFFFFFFCLL) * v21), 1, v3, 1);
            cblas_daxpy(*(this + 3), *(v33[0] + v20), v3, 1, v2, 1);
            ++v21;
            v20 += v18;
            --v22;
          }

          while (v22);
          v23 = *(this + 112);
          v24 = *(this + 111);
          v25 = *(this + 3);
          if (v23 < v24 && v25)
          {
            v26 = (*(this + 7) + 4 * v23);
            v27 = (4 * v24 + 12) & 0xFFFFFFFFFFFFFFF0;
            v28 = v2;
            v29 = *(this + 3);
            do
            {
              v30 = *v28++;
              v31 = v30;
              *v26 = v31;
              v26 = (v26 + v27);
              --v29;
            }

            while (v29);
          }

          cblas_dcopy(v25, v2, 1, (*(this + 41) + 8 * v32), 1);
          v16 = ((*(this + 3) + 3) & 0x1FFFFFFFCLL) + v32;
          ++*(this + 112);
        }

        ++v15;
        v17 += 8;
      }

      while (v15 != v5);
    }
  }

  LSMVectorBase::~LSMVectorBase(v33);
}

void sub_255A65A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LSMVectorBase::~LSMVectorBase(va);
  _Unwind_Resume(a1);
}

void LSMSVDSDImpl::imtql2(LSMSVDSDImpl *this, uint64_t a2, uint64_t a3, double *a4, double *__dst, double *a6)
{
  v6 = a3 - 1;
  if (a3 != 1)
  {
    *(this + 110) = 0;
    if (a3 <= 1)
    {
      __dst[v6] = 0.0;
    }

    else
    {
      memmove(__dst, __dst + 1, 8 * a3 - 8);
      v12 = 0;
      __dst[v6] = 0.0;
      v13 = a3 * a2;
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v15 = vnegq_f64(v14);
      v56 = v15;
      v54 = a6;
      v57 = a4;
      v58 = a6;
      while (2)
      {
        v16 = 0;
        v59 = &a4[v12];
        while (1)
        {
          v17 = 0;
          v18 = v57;
          v19 = v58;
          v20 = v12;
          do
          {
            v21 = v20;
            v22 = v17;
            v23 = v18;
            v24 = v19;
            if (v20 >= a3)
            {
              break;
            }

            if (v6 == v20)
            {
              break;
            }

            v25 = fabs(*v18);
            ++v20;
            ++v18;
            v26 = v25 + fabs(v23[1]);
            --v17;
            ++v19;
          }

          while (v26 + fabs(__dst[v21]) != v26);
          if (!v22)
          {
            break;
          }

          if (v16 == 30)
          {
            *(this + 110) = v12;
            return;
          }

          v61 = v16;
          v27 = *v59;
          v28 = __dst[v12];
          v15.f64[0] = (v59[1] - *v59) / (v28 + v28);
          v60 = v15;
          *v29.i64 = hypot(v15.f64[0], 1.0);
          v15 = vbslq_s8(v56, v29, v60);
          v30 = *v23 - v27 + v28 / (*v60.i64 + v15.f64[0]);
          v31 = 0.0;
          if (v21 <= v12)
          {
LABEL_18:
            *v59 = *v59 - v31;
            __dst[v12] = v30;
          }

          else
          {
            v32 = 1.0;
            v33 = 1.0;
            v34 = v21;
            while (1)
            {
              v35 = v34 - 1;
              v36 = __dst[v34 - 1];
              v37 = v33 * v36;
              v15.f64[0] = hypot(v33 * v36, v30);
              __dst[v34] = v15.f64[0];
              if (v15.f64[0] == 0.0)
              {
                break;
              }

              v38 = v32 * v36;
              v33 = v37 / v15.f64[0];
              v32 = v30 / v15.f64[0];
              v39 = a4[v34] - v31;
              v40 = v38 * (v32 + v32) + (a4[v35] - v39) * (v37 / v15.f64[0]);
              v31 = v33 * v40;
              a4[v34] = v39 + v33 * v40;
              if (v13 >= 1)
              {
                for (i = 0; i < v13; i += a3)
                {
                  v42 = &v24[i];
                  v43 = *(v42 - 1);
                  v44 = v32 * *v42 + v33 * v43;
                  *(v42 - 1) = *v42 * -v33 + v32 * v43;
                  *v42 = v44;
                }
              }

              v30 = -(v38 - v32 * v40);
              --v24;
              --v34;
              if (v35 <= v12)
              {
                goto LABEL_18;
              }
            }

            a4[v34] = a4[v34] - v31;
          }

          v16 = v61 + 1;
          __dst[v21] = 0.0;
        }

        ++v12;
        ++v57;
        ++v58;
        if (v12 != a3)
        {
          continue;
        }

        break;
      }

      v45 = 1;
      v46 = v54;
      do
      {
        v47 = v45 - 1;
        v48 = a4[v45 - 1];
        v49 = v45 - 1;
        v50 = v45;
        do
        {
          if (a4[v50] < v48)
          {
            v49 = v50;
            v48 = a4[v50];
          }

          ++v50;
        }

        while (a3 != v50);
        if (v49 != v47)
        {
          a4[v49] = a4[v45 - 1];
          a4[v47] = v48;
          if (v13 >= 1)
          {
            v51 = 0;
            v52 = &v54[v49];
            do
            {
              v53 = v46[v51];
              v46[v51] = v52[v51];
              v52[v51] = v53;
              v51 += a3;
            }

            while (v51 < v13);
          }
        }

        ++v45;
        ++v46;
      }

      while (v45 != a3);
    }
  }
}

void LSMSVDSDImpl::store(LSMSVDSDImpl *this, int a2, uint64_t a3, double *__X)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (a3 < 2)
      {
        v9 = *(this + 3);
        v10 = *(this + 83);
        v11 = ((v9 + 3) & 0x1FFFFFFFCLL) * a3;
        goto LABEL_17;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = "store: (STORP) j >= MAXLL \n";
    }

    else
    {
      if (a2 != 3)
      {
        return;
      }

      if (a3 < 2)
      {
        v4 = *(this + 3);
        v5 = *(this + 83);
        v6 = ((v4 + 3) & 0x1FFFFFFFCLL) * a3;
        goto LABEL_15;
      }

      v7 = *MEMORY[0x277D85DF8];
      v8 = "store: (RETRP) j >= MAXLL \n";
    }

    fwrite(v8, 0x1BuLL, 1uLL, v7);
    return;
  }

  if (!a2)
  {
    v9 = *(this + 3);
    v10 = *(this + 83);
    v11 = ((v9 + 3) & 0x1FFFFFFFCLL) * (a3 + 2);
LABEL_17:
    v13 = v9;
    v12 = __X;
    __X = (v10 + 8 * v11);
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v4 = *(this + 3);
    v5 = *(this + 83);
    v6 = ((v4 + 3) & 0x1FFFFFFFCLL) * (a3 + 2);
LABEL_15:
    v12 = (v5 + 8 * v6);
    v13 = v4;
LABEL_18:
    cblas_dcopy(v13, v12, 1, __X, 1);
  }
}