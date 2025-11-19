uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v10 = a1[3];
  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100](a3, v5 + 1, &v10);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

void *JSONS::JSONIKArray<FIK::Item>@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(a2, "[");
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if (v6 != 1)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, 44);
      }

      JSONS::JSONObject<FIK::Item>((a1[2] + 32 * v5), v11);
      if ((v12 & 0x80u) == 0)
      {
        v7 = v11;
      }

      else
      {
        v7 = v11[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = v11[1];
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v7, v8);
      if (v12 < 0 && v11[0])
      {
        (*(*v13 + 24))(v13, v11[0], 0, 8);
      }

      v5 = v6;
    }

    while (v4 > v6++);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, 93);
}

void FIK::IKArray<FIK::Item>::push_back<FIK::Item&,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::Item>::reserve(a1, *a1 + 1);
  v4 = a1[3];
  v5 = a1[2] + 32 * *a1;
  *v5 = *a2;
  *(v5 + 16) = 0;
  *(v5 + 24) = v4;
  *(v5 + 8) = 0;
  v6 = (v5 + 8);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = &unk_245A04BAE;
  }

  IKString::assign(v6, v9, v7);
  ++*a1;
}

uint64_t FIK::IKArray<FIK::Item>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v19 = v2;
    v20 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (*(*v5 + 16))(*(result + 24), 32 * v6, 8);
      v8 = v7;
      if (32 * v6)
      {
        bzero(v7, 32 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = (v8 + 8);
      v12 = (v9 + 8);
      do
      {
        *(v11 - 2) = *(v12 - 2);
        v11 = IKString::IKString(v11, v12, v12[2]) + 4;
        v12 += 4;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v13 = *v4;
    }

    else
    {
      v13 = 0;
    }

    v14 = v4[1];
    v15 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v16 = v14;
    v17 = v9;
    v18 = v15;
    result = FIK::IKArray<FIK::Item>::destroyBufferObjects(&v16, v13);
    if (v17)
    {
      return (*(*v18 + 24))(v18, v17, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::IKArray<FIK::AimSetup>::push_back<FIK::AimSetup&,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::AimSetup>::reserve(a1, *a1 + 1);
  result = FIK::AimSetup::AimSetup(a1[2] + (*a1 << 7), a2, a1[3]);
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::AimSetup>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v26 = v2;
    v27 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, v6 << 7, 8);
      v8 = v7;
      v24 = v7;
      v25 = v5;
      if (v6 << 7)
      {
        bzero(v7, v6 << 7);
      }
    }

    else
    {
      v8 = 0;
      v24 = 0;
      v25 = v5;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v9[v11];
        v13 = &v8[v11];
        IKString::IKString(&v8[v11], &v9[v11], *&v9[v11 + 16]);
        *(v13 + 6) = *&v9[v11 + 24];
        IKString::IKString(&v8[v11 + 32], v12 + 4, v12[6]);
        v14 = *&v9[v11 + 56];
        v12[7] = 0;
        *(v13 + 7) = v14;
        v15 = *&v9[v11 + 64];
        v16 = *&v9[v11 + 72];
        v12[8] = 0;
        *(v13 + 8) = v15;
        v12[9] = 0;
        *(v13 + 72) = v16;
        v17 = *&v9[v11 + 88];
        v12[11] = 0;
        *(v13 + 11) = v17;
        v18 = *&v9[v11 + 96];
        v19 = *&v9[v11 + 104];
        v12[12] = 0;
        *(v13 + 12) = v18;
        v12[13] = 0;
        *(v13 + 104) = v19;
        *(v13 + 30) = *&v9[v11 + 120];
        v11 += 128;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v20 = *v4;
    }

    else
    {
      v20 = 0;
    }

    v21 = v4[1];
    v22 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v23 = v21;
    v24 = v9;
    v25 = v22;
    result = FIK::IKArray<FIK::AimSetup>::destroyBufferObjects(&v23, v20);
    if (v24)
    {
      return (*(*v25 + 24))(v25, v24, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::AimSetup::AimSetup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = &unk_245A04BAE;
  }

  IKString::assign(a1, v8, v6);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (v9)
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &unk_245A04BAE;
  }

  IKString::assign((a1 + 32), v11, v9);
  FIK::IKArray<FIK::Item>::IKArray((a1 + 56), (a2 + 56), a3);
  FIK::IKArray<FIK::Item>::IKArray((a1 + 88), (a2 + 88), a3);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

unint64_t *FIK::IKArray<FIK::Item>::IKArray(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  *a1 = v7;
  FIK::IKArray<FIK::Item>::MemoryBlock::MemoryBlock(a1 + 1, v6, a3);
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = a1[2] + v8;
      v11 = a2[2] + v8;
      *v10 = *v11;
      *(v10 + 16) = 0;
      *(v10 + 24) = a3;
      *(v10 + 8) = 0;
      v12 = (v10 + 8);
      v15 = v11 + 8;
      v14 = *(v11 + 8);
      v13 = *(v15 + 8);
      if (v13)
      {
        v16 = v14;
      }

      else
      {
        v16 = &unk_245A04BAE;
      }

      IKString::assign(v12, v16, v13);
      ++v9;
      v8 += 32;
    }

    while (v9 < *a1);
  }

  return a1;
}

void *std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__shrink_or_extend(void *__dst, unint64_t a2)
{
  v3 = __dst;
  v4 = *(__dst + 23);
  if (v4 < 0)
  {
    v4 = __dst[1];
    v7 = __dst[2];
    v5 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v6 = HIBYTE(v7);
  }

  else
  {
    v5 = 22;
    LOBYTE(v6) = *(__dst + 23);
  }

  v8 = a2 > 0x16;
  if (a2 < 0x17)
  {
    v11 = *__dst;
    v10 = __dst;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_16:
    v6 = v6;
LABEL_26:
    if (v6 != -1)
    {
      __dst = memmove(v10, v11, v6 + 1);
    }

    if (v11)
    {
      v15 = v8;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      __dst = (*(**(v3 + 24) + 24))(*(v3 + 24), v11, 0, 8);
    }

    if (a2 < 0x17)
    {
      *(v3 + 23) = v4 & 0x7F;
    }

    else
    {
      *(v3 + 8) = v4;
      *(v3 + 16) = (a2 + 1) | 0x8000000000000000;
      *v3 = v10;
    }

    return __dst;
  }

  if (v5 < a2)
  {
    v9 = a2 + 1;
    if (a2 == -1)
    {
      v10 = 0;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    __dst = (*(*__dst[3] + 16))(__dst[3], v9, 128);
    v10 = __dst;
    LOBYTE(v6) = *(v3 + 23);
    if ((v6 & 0x80) == 0)
    {
LABEL_15:
      v11 = v3;
      goto LABEL_16;
    }

LABEL_24:
    v11 = *v3;
LABEL_25:
    v8 = 0;
    v6 = *(v3 + 8);
    goto LABEL_26;
  }

  v12 = a2 + 1;
  if (a2 == -1)
  {
    v10 = 0;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    __dst = (*(*__dst[3] + 16))(__dst[3], v12, 128);
    v10 = __dst;
    if ((*(v3 + 23) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  v13 = *(v3 + 16);
  if ((v13 & 0x7FFFFFFFFFFFFFFFLL) - 1 >= a2)
  {
    v6 = HIBYTE(v13);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_19:
  if (v10)
  {
    v14 = *(**(v3 + 24) + 24);

    return v14();
  }

  return __dst;
}

FIK::MoCapBone *FIK::IKArray<FIK::MoCapBone>::push_back<FIK::MoCapBone&,void>(uint64_t a1, const FIK::MoCapBone *a2)
{
  FIK::IKArray<FIK::MoCapBone>::reserve(a1, *a1 + 1);
  result = FIK::MoCapBone::MoCapBone((*(a1 + 16) + 544 * *a1), a2, *(a1 + 24));
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::MoCapBone>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v26 = v2;
    v27 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, 544 * v6, 16);
      v8 = v7;
      v24 = v7;
      v25 = v5;
      if (544 * v6)
      {
        bzero(v7, 544 * v6);
      }
    }

    else
    {
      v8 = 0;
      v24 = 0;
      v25 = v5;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v8[v11];
        v13 = &v9[v11];
        *&v8[v11] = *&v9[v11];
        IKString::IKString(&v8[v11 + 8], &v9[v11 + 8], *&v9[v11 + 24]);
        IKString::IKString(&v8[v11 + 32], v13 + 4, v13[6]);
        *(v12 + 4) = *&v9[v11 + 64];
        *(v12 + 5) = *&v9[v11 + 80];
        v14 = *&v9[v11 + 96];
        v15 = *&v9[v11 + 112];
        *(v12 + 16) = *&v9[v11 + 128];
        *(v12 + 6) = v14;
        *(v12 + 7) = v15;
        *(v12 + 9) = *&v9[v11 + 144];
        *(v12 + 10) = *&v9[v11 + 160];
        *(v12 + 11) = *&v9[v11 + 176];
        *(v12 + 12) = *&v9[v11 + 192];
        *(v12 + 13) = *&v9[v11 + 208];
        *(v12 + 14) = *&v9[v11 + 224];
        *(v12 + 15) = *&v9[v11 + 240];
        IKString::IKString(&v8[v11 + 256], v13 + 32, v13[34]);
        *(v12 + 70) = *&v9[v11 + 280];
        *(v12 + 18) = *&v9[v11 + 288];
        *(v12 + 19) = *&v9[v11 + 304];
        *(v12 + 20) = *&v9[v11 + 320];
        *(v12 + 21) = *&v9[v11 + 336];
        v16 = *&v9[v11 + 352];
        *(v12 + 46) = *&v9[v11 + 368];
        *(v12 + 22) = v16;
        *(v12 + 48) = *&v9[v11 + 384];
        *(v12 + 25) = *&v9[v11 + 400];
        v17 = *&v9[v11 + 416];
        v13[52] = 0;
        *(v12 + 52) = v17;
        v18 = *&v9[v11 + 432];
        v19 = *&v9[v11 + 424];
        v13[53] = 0;
        *(v12 + 53) = v19;
        v13[54] = 0;
        *(v12 + 27) = v18;
        *(v12 + 28) = *&v9[v11 + 448];
        *(v12 + 29) = *&v9[v11 + 464];
        *(v12 + 60) = *&v9[v11 + 480];
        *(v12 + 31) = *&v9[v11 + 496];
        *(v12 + 32) = *&v9[v11 + 512];
        *(v12 + 33) = *&v9[v11 + 528];
        v11 += 544;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v6 = v23;
      v8 = v24;
      v5 = v25;
      v20 = *v4;
    }

    else
    {
      v20 = 0;
    }

    v21 = v4[1];
    v22 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v23 = v21;
    v24 = v9;
    v25 = v22;
    result = FIK::IKArray<FIK::MoCapBone>::destroyBufferObjects(&v23, v20);
    if (v24)
    {
      return (*(*v25 + 24))(v25, v24, 0, 8);
    }
  }

  return result;
}

FIK::MoCapBone *FIK::MoCapBone::MoCapBone(FIK::MoCapBone *this, const FIK::MoCapBone *a2, FIK::Allocator *a3)
{
  FIK::RigBone::RigBone(this, a2, a3);
  v6[32] = 0;
  v6[33] = 0;
  v6[34] = a3;
  v8 = *(a2 + 32);
  v7 = *(a2 + 33);
  if (v7)
  {
    v9 = *(a2 + 32);
  }

  else
  {
    v9 = &unk_245A04BAE;
  }

  IKString::assign(v6 + 32, v9, v7);
  *(this + 70) = *(a2 + 70);
  *(this + 18) = *(a2 + 18);
  *(this + 19) = *(a2 + 19);
  *(this + 20) = *(a2 + 20);
  *(this + 21) = *(a2 + 21);
  *(this + 44) = *(a2 + 44);
  *(this + 360) = *(a2 + 360);
  FIK::SelfPenetrationBone::SelfPenetrationBone(this + 384, a2 + 384, a3);
  return this;
}

__n128 FIK::RigBone::RigBone(FIK::RigBone *this, const FIK::RigBone *a2, FIK::Allocator *a3)
{
  v4 = FIK::RigBoneBase::RigBoneBase(this, a2, a3);
  *(v4 + 96) = *(a2 + 96);
  v5 = *(a2 + 97);
  *(v4 + 99) = *(a2 + 99);
  *(v4 + 97) = v5;
  *(v4 + 100) = *(a2 + 25);
  *(v4 + 104) = *(a2 + 104);
  v6 = *(a2 + 105);
  *(v4 + 107) = *(a2 + 107);
  *(v4 + 105) = v6;
  *(v4 + 108) = *(a2 + 108);
  *(v4 + 112) = *(a2 + 7);
  *(v4 + 128) = *(a2 + 32);
  *(v4 + 132) = *(a2 + 33);
  *(v4 + 144) = *(a2 + 9);
  *(v4 + 160) = *(a2 + 10);
  *(v4 + 176) = *(a2 + 11);
  *(v4 + 192) = *(a2 + 12);
  *(v4 + 208) = *(a2 + 13);
  *(v4 + 224) = *(a2 + 14);
  result = *(a2 + 15);
  *(v4 + 240) = result;
  return result;
}

uint64_t FIK::RigBoneBase::RigBoneBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    v9 = *(a2 + 8);
  }

  else
  {
    v9 = &unk_245A04BAE;
  }

  IKString::assign(v6, v9, v7);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a3;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if (v10)
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &unk_245A04BAE;
  }

  IKString::assign((a1 + 32), v12, v10);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

{
  *a1 = *a2;
  IKString::IKString((a1 + 8), (a2 + 8), a3);
  IKString::IKString((a1 + 32), (a2 + 32), a3);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t FIK::SelfPenetrationBone::SelfPenetrationBone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 16) = *(a2 + 16);
  FIK::IKArray<IKString>::IKArray((a1 + 32), (a2 + 32), a3);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v5;
  return a1;
}

unint64_t *FIK::IKArray<IKString>::IKArray(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v6 = a2[1];
  *a1 = v7;
  FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, v6, a3);
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (a1[2] + v8);
      v11 = (a2[2] + v8);
      *v10 = 0;
      v10[1] = 0;
      v10[2] = a3;
      v14 = v11;
      v13 = *v11;
      v12 = v14[1];
      if (v12)
      {
        v15 = v13;
      }

      else
      {
        v15 = &unk_245A04BAE;
      }

      IKString::assign(v10, v15, v12);
      ++v9;
      v8 += 24;
    }

    while (v9 < *a1);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::MoCapTask>::push_back<FIK::MoCapTask&,void>(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::MoCapTask>::reserve(a1, *a1 + 1);
  result = FIK::MoCapTask::MoCapTask(*(a1 + 16) + (*a1 << 8), a2, *(a1 + 24));
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::MoCapTask>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v22 = v2;
    v23 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, v6 << 8, 16);
      v8 = v7;
      v20 = v7;
      v21 = v5;
      if (v6 << 8)
      {
        bzero(v7, v6 << 8);
      }
    }

    else
    {
      v8 = 0;
      v20 = 0;
      v21 = v5;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v9[v11];
        v13 = &v8[v11];
        IKString::IKString(&v8[v11], &v9[v11], *&v9[v11 + 16]);
        IKString::IKString(&v8[v11 + 24], v12 + 3, v12[5]);
        v14 = *&v9[v11 + 48];
        *(v13 + 8) = *&v9[v11 + 64];
        *(v13 + 3) = v14;
        *(v13 + 5) = *&v9[v11 + 80];
        *(v13 + 6) = *&v9[v11 + 96];
        *(v13 + 7) = *&v9[v11 + 112];
        *(v13 + 8) = *&v9[v11 + 128];
        *(v13 + 9) = *&v9[v11 + 144];
        *(v13 + 10) = *&v9[v11 + 160];
        IKString::IKString(&v8[v11 + 176], v12 + 22, v12[24]);
        v15 = *&v9[v11 + 200];
        *(v13 + 102) = *&v9[v11 + 204];
        *(v13 + 50) = v15;
        *(v13 + 13) = *&v9[v11 + 208];
        *(v13 + 14) = *&v9[v11 + 224];
        *(v13 + 15) = *&v9[v11 + 240];
        v11 += 256;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v16 = *v4;
    }

    else
    {
      v16 = 0;
    }

    v17 = v4[1];
    v18 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v19 = v17;
    v20 = v9;
    v21 = v18;
    result = FIK::IKArray<FIK::MoCapTask>::destroyBufferObjects(&v19, v16);
    if (v20)
    {
      return (*(*v21 + 24))(v21, v20, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::MoCapTask::MoCapTask(uint64_t a1, uint64_t a2, FIK::Allocator *a3)
{
  v6 = FIK::RigTask::RigTask(a1, a2, a3);
  *(v6 + 22) = 0;
  v7 = (v6 + 176);
  *(a1 + 184) = 0;
  *(a1 + 192) = a3;
  v9 = *(a2 + 176);
  v8 = *(a2 + 184);
  if (v8)
  {
    v10 = *(a2 + 176);
  }

  else
  {
    v10 = &unk_245A04BAE;
  }

  IKString::assign(v7, v10, v8);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  return a1;
}

FIK::RigTask *FIK::RigTask::RigTask(FIK::RigTask *this, const FIK::RigTask *a2, FIK::Allocator *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a3;
  v7 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = &unk_245A04BAE;
  }

  IKString::assign(this, v8, v6);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a3;
  v10 = *(a2 + 3);
  v9 = *(a2 + 4);
  if (v9)
  {
    v11 = *(a2 + 3);
  }

  else
  {
    v11 = &unk_245A04BAE;
  }

  IKString::assign(this + 3, v11, v9);
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 53) = *(a2 + 53);
  v12 = *(a2 + 55);
  *(this + 57) = *(a2 + 57);
  *(this + 55) = v12;
  v13 = *(a2 + 29);
  *(this + 60) = *(a2 + 60);
  *(this + 29) = v13;
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  return this;
}

uint64_t FIK::IKArray<FIK::RigBoneBase>::push_back<FIK::RigBoneBase&,void>(void *a1, uint64_t a2)
{
  FIK::IKArray<FIK::RigBoneBase>::reserve(a1, *a1 + 1);
  result = FIK::RigBoneBase::RigBoneBase(a1[2] + 96 * *a1, a2, a1[3]);
  ++*a1;
  return result;
}

uint64_t FIK::IKArray<FIK::RigBoneBase>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v19 = v2;
    v20 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = (*(*v5 + 16))(*(result + 24), 96 * v6, 16);
      v8 = v7;
      if (96 * v6)
      {
        bzero(v7, 96 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = v8 + 32;
      v12 = v9 + 32;
      do
      {
        *(v11 - 4) = *(v12 - 32);
        IKString::IKString(v11 - 3, (v12 - 24), *(v12 - 8));
        IKString::IKString(v11, v12, *(v12 + 16));
        *(v11 + 2) = *(v12 + 32);
        *(v11 + 3) = *(v12 + 48);
        v11 += 96;
        v12 += 96;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v13 = *v4;
    }

    else
    {
      v13 = 0;
    }

    v14 = v4[1];
    v15 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v16 = v14;
    v17 = v9;
    v18 = v15;
    result = FIK::IKArray<FIK::RigBoneBase>::destroyBufferObjects(&v16, v13);
    if (v17)
    {
      return (*(*v18 + 24))(v18, v17, 0, 8);
    }
  }

  return result;
}

void FIK::IKArray<FIK::RigBone>::push_back<FIK::RigBone&,void>(uint64_t a1, const FIK::RigBone *a2)
{
  FIK::IKArray<FIK::RigBone>::reserve(a1, *a1 + 1);
  FIK::RigBone::RigBone((*(a1 + 16) + (*a1 << 8)), a2, *(a1 + 24));
  ++*a1;
}

uint64_t FIK::IKArray<FIK::RigBone>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v21 = v2;
    v22 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, v6 << 8, 16);
      v8 = v7;
      v19 = v7;
      v20 = v5;
      if (v6 << 8)
      {
        bzero(v7, v6 << 8);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = v8 + 32;
      v12 = v9 + 32;
      do
      {
        *(v11 - 4) = *(v12 - 4);
        IKString::IKString(v11 - 3, v12 - 3, *(v12 - 1));
        IKString::IKString(v11, v12, *(v12 + 2));
        *(v11 + 2) = *(v12 + 2);
        *(v11 + 3) = *(v12 + 3);
        v13 = *(v12 + 4);
        v14 = *(v12 + 5);
        *(v11 + 12) = *(v12 + 12);
        *(v11 + 4) = v13;
        *(v11 + 5) = v14;
        *(v11 + 7) = *(v12 + 7);
        *(v11 + 8) = *(v12 + 8);
        *(v11 + 9) = *(v12 + 9);
        *(v11 + 10) = *(v12 + 10);
        *(v11 + 11) = *(v12 + 11);
        *(v11 + 12) = *(v12 + 12);
        *(v11 + 13) = *(v12 + 13);
        v11 += 256;
        v12 += 256;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v15 = *v4;
    }

    else
    {
      v15 = 0;
    }

    v16 = v4[1];
    v17 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v18 = v16;
    v19 = v9;
    v20 = v17;
    result = FIK::IKArray<FIK::RigBone>::destroyBufferObjects(&v18, v15);
    if (v19)
    {
      return (*(*v20 + 24))(v20, v19, 0, 8);
    }
  }

  return result;
}

void FIK::IKArray<FIK::GameTask>::push_back<FIK::GameTask&,void>(uint64_t a1, uint64_t a2)
{
  FIK::IKArray<FIK::GameTask>::reserve(a1, *a1 + 1);
  FIK::GameTask::GameTask((*(a1 + 16) + 240 * *a1), a2, *(a1 + 24));
  ++*a1;
}

uint64_t FIK::IKArray<FIK::GameTask>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v20 = v2;
    v21 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, 240 * v6, 16);
      v8 = v7;
      v18 = v7;
      v19 = v5;
      if (240 * v6)
      {
        bzero(v7, 240 * v6);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v8[v11];
        IKString::IKString(&v8[v11], &v9[v11], *&v9[v11 + 16]);
        IKString::IKString(&v8[v11 + 24], &v9[v11 + 24], *&v9[v11 + 40]);
        v13 = *&v9[v11 + 48];
        *(v12 + 8) = *&v9[v11 + 64];
        *(v12 + 3) = v13;
        *(v12 + 5) = *&v9[v11 + 80];
        *(v12 + 6) = *&v9[v11 + 96];
        *(v12 + 7) = *&v9[v11 + 112];
        *(v12 + 8) = *&v9[v11 + 128];
        *(v12 + 9) = *&v9[v11 + 144];
        *(v12 + 10) = *&v9[v11 + 160];
        *(v12 + 11) = *&v9[v11 + 176];
        *(v12 + 12) = *&v9[v11 + 192];
        *(v12 + 13) = *&v9[v11 + 208];
        *(v12 + 14) = *&v9[v11 + 224];
        v11 += 240;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v14 = *v4;
    }

    else
    {
      v14 = 0;
    }

    v15 = v4[1];
    v16 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v17 = v15;
    v18 = v9;
    v19 = v16;
    result = FIK::IKArray<FIK::GameTask>::destroyBufferObjects(&v17, v14);
    if (v18)
    {
      return (*(*v19 + 24))(v19, v18, 0, 8);
    }
  }

  return result;
}

float FIK::GameTask::GameTask(FIK::RigTask *a1, uint64_t a2, FIK::Allocator *a3)
{
  v4 = FIK::RigTask::RigTask(a1, a2, a3);
  *(v4 + 11) = *(a2 + 176);
  *(v4 + 12) = *(a2 + 192);
  *(v4 + 13) = *(a2 + 208);
  *(v4 + 56) = *(a2 + 224);
  *(v4 + 57) = *(a2 + 228);
  *(v4 + 116) = *(a2 + 232);
  result = *(a2 + 236);
  *(v4 + 59) = result;
  return result;
}

uint64_t *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(int *a1, unsigned int *a2)
{
  v2 = *(a1 + 1);
  if (*a1)
  {
    do
    {
      v5 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a2, v2);
      v6 = *a1;
      if (v5)
      {
        break;
      }

      v2 += 12;
    }

    while (v2 != (*(a1 + 1) + 48 * v6));
    v7 = v2;
    v2 = *(a1 + 1);
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 1);
  }

  if (v7 != &v2[12 * v6])
  {
    return (v7 + 6);
  }

  {
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>();
  }

  result = &rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>> const&)::buffer;
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>> const&)::buffer = 0;
  unk_27EE32D00 = 0;
  qword_27EE32D08 = 0;
  return result;
}

uint64_t FIK::IKArray<IKString>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8);
    do
    {
      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>(void *__s2, size_t __n, unsigned int *a3)
{
  if (!__n)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a3;
  if (!*a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  for (i = (*(a3 + 2) + 16); ; i += 68)
  {
    v8 = *i ? *(i - 1) : &unk_245A04BAE;
    if (*i == __n && !memcmp(v8, __s2, __n))
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t FIK::IKRigUtils::getBoneIndex<FIK::RigBone,void>(void *__s2, size_t __n, unsigned int *a3)
{
  if (!__n)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a3;
  if (!*a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  for (i = (*(a3 + 2) + 16); ; i += 32)
  {
    v8 = *i ? *(i - 1) : &unk_245A04BAE;
    if (*i == __n && !memcmp(v8, __s2, __n))
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

uint64_t FIK::EnrollmentPoseSolver::EnrollmentPoseSolver(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, FIK *a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v143 = *MEMORY[0x277D85DE8];
  IKString::IKString(&v102, a2, *(a2 + 16));
  v105[0] = *(a2 + 24);
  *(v105 + 12) = *(a2 + 36);
  v10 = *(a2 + 80);
  v106 = *(a2 + 64);
  v107 = v10;
  v108 = *(a2 + 96);
  v109 = *(a2 + 112);
  v11 = *(a2 + 120);
  *&v111[3] = *(a2 + 131);
  v12 = *(a2 + 128);
  v110 = v11;
  *v111 = v12;
  v13 = *(a2 + 160);
  v112 = *(a2 + 144);
  v113 = v13;
  v14 = *(a2 + 176);
  v15 = *(a2 + 192);
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  v114 = v14;
  v115 = v15;
  v16 = *(a2 + 208);
  v17 = *(a2 + 224);
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0;
  v116 = v16;
  v117 = v17;
  v18 = *(a2 + 240);
  v19 = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v118 = v18;
  v119 = v19;
  v20 = *(a2 + 288);
  v120 = *(a2 + 272);
  v121 = v20;
  v122 = *(a2 + 304);
  v21 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("MidShoulder", 0xBuLL, &v118);
  if (v118)
  {
    v22 = v119;
    v23 = v119 + 96 * v118;
    v24 = v119 + 96 * v21;
    do
    {
      if (*(v22 + 16) >= 7uLL)
      {
        v25 = *(v22 + 8);
        v26 = *v25;
        v27 = *(v25 + 3);
        if (v26 == 1953655158 && v27 == 1818326388)
        {
          v29 = *(v24 + 40);
          if (v29)
          {
            v30 = *(v24 + 32);
          }

          else
          {
            v30 = &unk_245A04BAE;
          }

          v31 = *(v22 + 40);
          if (v31)
          {
            v32 = *(v22 + 32);
          }

          else
          {
            v32 = &unk_245A04BAE;
          }

          if (v31 != v29 || memcmp(v32, v30, *(v24 + 40)))
          {
            v33 = *(v24 + 32);
            if (v29)
            {
              v34 = *(v24 + 32);
            }

            else
            {
              v34 = &unk_245A04BAE;
            }

            IKString::assign((v22 + 32), v34, v29);
            *(v22 + 4) = *(v24 + 4);
          }

          v35 = v114;
          if (v114)
          {
            v36 = 0;
            v37 = (v115 + 200);
            while (*v37 != *v22)
            {
              v37 += 64;
              v36 += 0x100000000;
              if (!--v35)
              {
                goto LABEL_25;
              }
            }

            v38 = v36 >> 32;
          }

          else
          {
LABEL_25:
            v38 = -1;
          }

          v39 = v115 + (v38 << 8);
          *(v39 + 208) = 0u;
          *(v39 + 224) = xmmword_245A01E80;
        }
      }

      v22 += 96;
    }

    while (v22 != v23);
  }

  IKString::IKString(&v123, &v102, v104);
  *v125 = v105[0];
  *&v125[12] = *(v105 + 12);
  v126 = v106;
  v127 = v107;
  v128 = v108;
  v132 = v112;
  v133 = v113;
  v40 = v114;
  v114 = 0u;
  v134[0] = v40;
  v134[1] = v115;
  v41 = v116;
  v116 = 0u;
  v135[0] = v41;
  v135[1] = v117;
  v42 = v118;
  v43 = v119;
  v118 = 0u;
  v129 = v109;
  *(v131 + 3) = *&v111[3];
  v130 = v110;
  v131[0] = *v111;
  *&v115 = 0;
  *&v117 = 0;
  *&v119 = 0;
  v136[0] = v42;
  v136[1] = v43;
  v136[2] = v120;
  v136[3] = v121;
  v137 = v122;
  FIK::RetargetingNode::RetargetingNode(a1);
  FIK::IKArray<FIK::RigBoneBase>::~IKArray(v136);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(v135);
  FIK::IKArray<FIK::MoCapTask>::~IKArray(v134);
  if (*(&v123 + 1))
  {
    (*(*v124 + 24))(v124, v123, 0, 8);
    v123 = 0uLL;
  }

  FIK::IKArray<FIK::RigBoneBase>::~IKArray(&v118);
  FIK::IKArray<FIK::MoCapBone>::~IKArray(&v116);
  FIK::IKArray<FIK::MoCapTask>::~IKArray(&v114);
  if (v103)
  {
    (*(*v104 + 24))(v104, v102, 0, 8);
    v102 = 0;
    v103 = 0;
  }

  v44 = *a6;
  *(a1 + 1808) = *(a6 + 2);
  *(a1 + 1792) = v44;
  Rig = FIK::AnimNode::GetRig(a1);
  FIK::Enrollment::DataPreprocessor::DataPreprocessor((a1 + 1824), Rig, a5);
  v46 = FIK::AnimNode::jointsCount(a1);
  v47 = FIK::defaultAllocator(v46);
  v48 = FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform,void>((a1 + 2176), v46, v47);
  v49 = FIK::defaultAllocator(v48);
  *(a1 + 2208) = 0;
  *(a1 + 2224) = 0;
  *(a1 + 2216) = 0;
  *(a1 + 2232) = v49;
  *(a1 + 2240) = 1;
  if (a8)
  {
    FIK::Enrollment::DataLogger::DataLogger(&v123, a7);
    *(a1 + 2264) = v124;
    *(a1 + 2248) = v123;
    v124 = 0;
    v123 = 0uLL;
    v50 = a1 + 2272;
    *(a1 + 2736) = 0;
    *(a1 + 2688) = MEMORY[0x277D828C0] + 16;
    v51 = *(MEMORY[0x277D82810] + 16);
    v52 = *(MEMORY[0x277D82810] + 8);
    *(a1 + 2272) = v52;
    v53 = v51;
    *(v50 + *(v52 - 24)) = v51;
    v54 = (a1 + 2272 + *(*(a1 + 2272) - 24));
    v55 = &v125[*(*v125 - 24)];
    std::ios_base::move(v54, v55);
    v54[1].__vftable = v55[1].__vftable;
    v55[1].__vftable = 0;
    v54[1].__fmtflags_ = v55[1].__fmtflags_;
    *(a1 + 2272) = MEMORY[0x277D82860] + 24;
    *(a1 + 2688) = MEMORY[0x277D82860] + 64;
    *(v50 + *(*(a1 + 2272) - 24) + 40) = MEMORY[0x245D77E00](a1 + 2280, &v125[8]);
    *(a1 + 2840) = v138;
    *(a1 + 2848) = v139;
    *(a1 + 3320) = 0;
    *(a1 + 3272) = MEMORY[0x277D828C0] + 16;
    *(a1 + 2856) = v52;
    *(a1 + 2856 + *(v52 - 24)) = v53;
    v56 = (a1 + 2856 + *(*(a1 + 2856) - 24));
    v57 = (&v141[-1] + *(v140 - 24));
    std::ios_base::move(v56, v57);
    v56[1].__vftable = v57[1].__vftable;
    v57[1].__vftable = 0;
    v56[1].__fmtflags_ = v57[1].__fmtflags_;
    *(a1 + 2856) = MEMORY[0x277D82860] + 24;
    *(a1 + 3272) = MEMORY[0x277D82860] + 64;
    *(a1 + 2856 + *(*(a1 + 2856) - 24) + 40) = MEMORY[0x245D77E00](a1 + 2864, v141);
    *(a1 + 3424) = v141[70];
    *(a1 + 3432) = v142;
    *(a1 + 3440) = 1;
    FIK::Enrollment::DataLogger::~DataLogger(&v123);
  }

  else
  {
    *(a1 + 2248) = 0;
    *(a1 + 3440) = 0;
  }

  v58 = FIK::AnimNode::GetRig(a1);
  v59 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("head_joint", 0xAuLL, (v58 + 208));
  v60 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("hips_joint", 0xAuLL, (v58 + 208));
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(&v123, *(v58 + 224), *(v58 + 208));
  v100 = *FIK::PoseConverter::GetGlobalTransform(&v123, v59);
  v61 = vsubq_f32(v100, *FIK::PoseConverter::GetGlobalTransform(&v123, v60));
  v62 = v61.f32[2];
  if (fabsf(v61.f32[0]) > 0.0001 || fabsf(v61.f32[2]) > 0.0001)
  {
    v101 = v61.f32[0];
    v63 = ikinemaLogObject()[2];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      FIK::EnrollmentPoseSolver::EnrollmentPoseSolver(v63, v101, v62);
    }
  }

  v64 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("Atlas", 5uLL, (v58 + 240));
  if (v64 == -1)
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  v65 = *(v58 + 176);
  if (!v65)
  {
    goto LABEL_46;
  }

  v66 = 0;
  v67 = *(v58 + 192);
  v68 = -v65;
  v69 = 200;
  while (*(v67 + v69) != v64)
  {
    --v66;
    v69 += 256;
    if (v68 == v66)
    {
      goto LABEL_46;
    }
  }

  if (v66 == 1)
  {
LABEL_46:
    v70 = ikinemaLogObject();
    ikinemaAssertHandler(*v70, 0, "verifyRigAssumptions", "(atlasTaskIndex != kInvalidRigIndex) Missing Atlas constraint in rig");
    v67 = *(v58 + 192);
    LODWORD(v71) = -1;
  }

  else
  {
    v71 = -v66;
  }

  v72 = v67 + (v71 << 8);
  v73 = vmulq_f32(*(v72 + 208), *(v72 + 208));
  if ((v73.f32[2] + vaddv_f32(*v73.f32)) != 0.0 || (v74 = vabsq_f32(vaddq_f32((*(v72 + 224) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), xmmword_245A03460)), vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL))) >= 0.00001))
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  v75 = vmulq_f32(*(v58 + 272), *(v58 + 272));
  if ((v75.f32[2] + vaddv_f32(*v75.f32)) != 0.0 || (v76 = vabsq_f32(vaddq_f32((*(v58 + 288) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), xmmword_245A03460)), vaddv_f32(vadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL))) >= 0.00001))
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  if (fabsf(*(v58 + 308) + -100.0) >= 0.0001)
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  FIK::PoseConverter::~PoseConverter(&v123);
  if (!*(a5 + 3))
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  v77 = *(a5 + 5);
  if (!v77)
  {
    goto LABEL_80;
  }

  v78 = 0;
  v79 = *(a5 + 4);
  do
  {
    v80 = *v79++;
    v78 |= v80;
    --v77;
  }

  while (v77);
  if ((v78 & 1) == 0)
  {
LABEL_80:
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  v81 = FIK::RetargetingNode::sourceScale(a1);
  FIK::RetargetingNode::setOutputScale(a1, 1.0 / v81);
  if (FIK::AnimNode::jointsCount(a1) != a4)
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  FIK::EnrollmentPoseSolver::setupOutputMap(a1, a3, a4);
  FIK::EnrollmentPoseSolver::setTargetBoneLengths(a1, a3);
  FIK::EnrollmentPoseSolver::updateShoulderOffsets(a1);
  FIK::EnrollmentPoseSolver::setupPreprocessingSources(a1, a5);
  if (*(a6 + 4) && *(a1 + 1828) == -1)
  {
    FIK::EnrollmentPoseSolver::EnrollmentPoseSolver();
  }

  v82 = FIK::AnimNode::GetRig(a1);
  v83 = *(v82 + 240);
  if (v83)
  {
    v84 = 96 * v83 - 96;
    v85 = (*(v82 + 256) + 4);
    do
    {
      v86 = *v85;
      v85 += 24;
      v87 = v86 == -1;
      v88 = v86 != -1 || v84 == 0;
      v84 -= 96;
    }

    while (!v88);
  }

  else
  {
    v87 = 1;
  }

  *(a1 + 2240) = v87;
  *(a1 + 2160) = v87;
  if (*(a1 + 3440) == 1)
  {
    FIK::Enrollment::DataLogger::exportSources(a1 + 2248, (a1 + 1792), a5);
    FIK::Enrollment::DataLogger::exportEnrollment(a1 + 2248, a3, a4);
    v89 = FIK::AnimNode::GetRig(a1);
    FIK::Enrollment::DataLogger::exportComputedSources(a1 + 2248, (a1 + 1792), a1 + 1824, (v89 + 240));
    v90 = FIK::AnimNode::GetRig(a1);
    FIK::Enrollment::DataLogger::setupTaskExporter((a1 + 2248), (v90 + 176));
    v91 = FIK::AnimNode::GetRig(a1);
    FIK::Enrollment::DataLogger::setupSolveExporter((a1 + 2248), (v91 + 208));
  }

  v92 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t FIK::EnrollmentPoseSolver::setupOutputMap(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  Rig = FIK::AnimNode::GetRig(a1);
  v7 = *(Rig + 208);
  v18 = 0;
  result = FIK::IKArray<unsigned long>::resize(a1 + 276, v7, &v18);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      IKString::IKString(&v18, (*(Rig + 224) + 544 * i + 8));
      if (a3)
      {
        v10 = 0;
        v11 = v19;
        if (v19)
        {
          v12 = v18;
        }

        else
        {
          v12 = &unk_245A04BAE;
        }

        v13 = (a2 + 16);
        while (1)
        {
          if (v11 == *v13)
          {
            result = memcmp(v12, *(v13 - 1), v11);
            if (!result)
            {
              break;
            }
          }

          ++v10;
          v13 += 3;
          if (a3 == v10)
          {
            goto LABEL_11;
          }
        }

        *(a1[278] + 8 * i) = v10;
      }

      else
      {
LABEL_11:
        v14 = ikinemaLogObject()[1];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = &unk_245A04BAE;
          if (v19)
          {
            v15 = v18;
          }

          *buf = 136315394;
          v22 = "setupOutputMap";
          v23 = 2080;
          v24 = v15;
          _os_log_impl(&dword_245976000, v14, OS_LOG_TYPE_DEFAULT, "%s: Bone with name %s not found in input definitions.", buf, 0x16u);
        }

        v16 = ikinemaLogObject();
        result = ikinemaAssertHandler(*v16, 0, "setupOutputMap", "(boneFound) Solver setup failed");
      }

      if (v19)
      {
        result = (*(*v20 + 24))(v20, v18, 0, 8);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void FIK::EnrollmentPoseSolver::setTargetBoneLengths(FIK::RetargetingNode *a1, uint64_t a2)
{
  v4 = FIK::RetargetingNode::sourceScale(a1);
  v5 = *(a1 + 276);
  v7 = FIK::defaultAllocator(v6);
  v8 = v7;
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = (*(*v7 + 2))(v7, 4 * ((v5 + 7) & 0xFFFFFFFFFFFFFFF8), 4);
    v10 = v9;
    if (4 * ((v5 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      bzero(v9, 4 * ((v5 + 7) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 276);
  if (v11)
  {
    v12 = *(a1 + 278);
    v13 = v10;
    do
    {
      v14 = *v12++;
      *v13++ = v4 * *(a2 + 24 * v14);
      --v11;
    }

    while (v11);
  }

  FIK::AnimNode::updateSolverBoneLengths(a1, v10, v5);
  if (v10)
  {
    v15 = *(*v8 + 3);

    v15(v8, v10, 0, 8);
  }
}

void FIK::EnrollmentPoseSolver::updateShoulderOffsets(FIK::EnrollmentPoseSolver *this)
{
  Rig = FIK::AnimNode::GetRig(this);
  v28 = 0;
  v29 = 0;
  v30 = FIK::defaultAllocator(Rig);
  IKString::assign(&v28, "left_arm_joint_Task", 0x13);
  v3 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v28, Rig);
  v4 = v3;
  if (v29)
  {
    v3 = (*(*v30 + 3))(v30, v28, 0, 8);
  }

  v5 = FIK::defaultAllocator(v3);
  v28 = 0;
  v29 = 0;
  v30 = v5;
  IKString::assign(&v28, "right_arm_joint_Task", 0x14);
  v6 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v28, Rig);
  v7 = v6;
  if (v29)
  {
    v6 = (*(*v30 + 3))(v30, v28, 0, 8);
  }

  v8 = FIK::defaultAllocator(v6);
  v28 = 0;
  v29 = 0;
  v30 = v8;
  IKString::assign(&v28, "neck_1_joint_Task", 0x11);
  v9 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&v28, Rig);
  if (v29)
  {
    (*(*v30 + 3))(v30, v28, 0, 8);
  }

  if (v9 != -1)
  {
    v10 = v4;
    v11 = *(Rig + 192);
    v12 = *(v11 + (v4 << 8) + 48);
    v13 = v7;
    v14 = *(v11 + (v7 << 8) + 48);
    if (v12 != -1 && v14 != -1)
    {
      v16 = v12;
      v17 = v14;
      FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(&v28, *(Rig + 224), *(Rig + 208));
      v25 = *FIK::PoseConverter::GetGlobalTransform(&v28, v16);
      v18 = vsubq_f32(v25, *FIK::PoseConverter::GetGlobalTransform(&v28, v17));
      v19 = vmulq_f32(v18, v18);
      v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
      *(this + 561) = v20;
      v21 = *(Rig + 308);
      v22 = *(*(Rig + 192) + (v10 << 8) + 208);
      DWORD2(v22) = 0;
      v26 = v22;
      v27 = xmmword_245A01E80;
      FIK::RetargetingNode::adjustTaskOffset(this, v10, &v26);
      v23 = *(*(Rig + 192) + (v13 << 8) + 208);
      DWORD2(v23) = 0;
      v26 = v23;
      v27 = xmmword_245A01E80;
      FIK::RetargetingNode::adjustTaskOffset(this, v13, &v26);
      v24 = *(*(Rig + 192) + (v9 << 8) + 208);
      *(&v24 + 2) = (v20 / -15.0) / v21;
      v26 = v24;
      v27 = xmmword_245A01E80;
      FIK::RetargetingNode::adjustTaskOffset(this, v9, &v26);
      FIK::PoseConverter::~PoseConverter(&v28);
    }
  }
}

void FIK::EnrollmentPoseSolver::setupPreprocessingSources(uint64_t a1, FIK *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  Rig = FIK::AnimNode::GetRig(a1);
  FIK::Enrollment::VirtualSourceController::Descriptor::Descriptor(v52, "MidShoulder", 11, "Atlas", 5, "virtualHips", 11);
  v5 = *(Rig + 176);
  if (v5)
  {
    v6 = *(Rig + 192);
    v47 = (a1 + 1824);
    v48 = v6 + (v5 << 8);
    do
    {
      v7 = *(v6 + 200);
      if (v7 == -1)
      {
        FIK::EnrollmentPoseSolver::setupPreprocessingSources();
      }

      v8 = *(Rig + 256) + 96 * v7;
      v9 = *(v8 + 16);
      if (!v9)
      {
        v10 = &unk_245A04BAE;
        goto LABEL_39;
      }

      v10 = *(v8 + 8);
      if (v9 == 9)
      {
        if (*v10 == 0x6C726F7732646D68 && v10[8] == 100)
        {
          *v47 = v7;
          goto LABEL_64;
        }
      }

      else
      {
        if (v9 == 5)
        {
          if (*v10 != 1634497601 || v10[4] != 115)
          {
            goto LABEL_27;
          }

          *(a1 + 1828) = v7;
          goto LABEL_64;
        }

        if (v9 < 7)
        {
          goto LABEL_26;
        }
      }

      if (*v10 != 1953655158 || *(v10 + 3) != 1818326388)
      {
LABEL_26:
        if (v9 >= 5)
        {
LABEL_27:
          v14 = &v10[v9];
          v15 = *(v8 + 16);
          v16 = *(v8 + 8);
          do
          {
            v17 = memchr(v16, 95, v15 - 4);
            if (!v17)
            {
              break;
            }

            if (*v17 == 2036429407 && v17[4] == 95)
            {
              if (v17 != v14 && v17 - v10 != -1)
              {
LABEL_38:
                v19 = *(v8 + 8);
                goto LABEL_47;
              }

              break;
            }

            v16 = v17 + 1;
            v15 = v14 - v16;
          }

          while (v14 - v16 >= 5);
        }

LABEL_39:
        v20 = &qword_278E8A038;
        v21 = 32;
        while (*v20 != v9 || memcmp(*(v20 - 1), v10, v9))
        {
          v20 += 2;
          v21 -= 16;
          if (!v21)
          {
            if (v9)
            {
              v22 = *(v8 + 8);
            }

            else
            {
              v22 = &unk_245A04BAE;
            }

            FIK::Enrollment::LiftedSource::LiftedSource(buf, a2, v22, v9, v7);
            v2 = v2 & 0xFFFFFFFF00000000 | *&buf[8];
            FIK::Enrollment::DataPreprocessor::addLiftedSource(v47, *buf, v2);
            goto LABEL_64;
          }
        }

        if (v9)
        {
          goto LABEL_38;
        }

        v19 = &unk_245A04BAE;
LABEL_47:
        v23 = *(Rig + 208);
        if (!v23)
        {
          goto LABEL_59;
        }

        v24 = *(Rig + 224);
        v25 = 280;
        v26 = 1;
        while (*(v24 + v25) != v7)
        {
          ++v26;
          v25 += 544;
          if (v26 - v23 == 1)
          {
            goto LABEL_59;
          }
        }

        if (v26)
        {
          v27 = (v24 + 4);
          v28 = 544 * v23;
          while (v26 - *v27 != 1)
          {
            v27 += 136;
            v28 -= 544;
            if (!v28)
            {
              goto LABEL_58;
            }
          }

          v30 = *(v27 - 1);
          if (v30 == -1)
          {
LABEL_58:
            v29 = ikinemaLogObject();
            ikinemaAssertHandler(*v29, 0, "createRaySource", "(childBoneIndex != kInvalidRigIndex) Failed to find child bone");
            v24 = *(Rig + 224);
            v30 = -1;
          }

          v33 = vmulq_f32(*(v24 + 544 * v30 + 64), *(v24 + 544 * v30 + 64));
          v33.f32[0] = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
          v32 = (1.0 / *(Rig + 308)) * (v33.f32[0] + v33.f32[0]);
        }

        else
        {
LABEL_59:
          v31 = ikinemaLogObject()[1];
          v32 = 1.0;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "createRaySource";
            *&buf[12] = 2080;
            *&buf[14] = v19;
            _os_log_impl(&dword_245976000, v31, OS_LOG_TYPE_DEFAULT, "%s: Failed to find rig bone driven by source: %s", buf, 0x16u);
          }
        }

        FIK::Enrollment::RaySource::RaySource(buf, a2, v19, v9, v7, v32);
        FIK::Enrollment::DataPreprocessor::addRaySource(v47, buf);
        goto LABEL_64;
      }

      FIK::Enrollment::VirtualSourceController::Descriptor::addDependentSource(v52, *(v8 + 8), *(v8 + 16));
LABEL_64:
      v6 += 256;
    }

    while (v6 != v48);
  }

  if (*(a1 + 1824) == -1)
  {
    *(a1 + 1824) = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("hmd2world", 9uLL, (Rig + 240));
  }

  v34 = FIK::AnimNode::GetRig(a1);
  FIK::Enrollment::VirtualSourceController::VirtualSourceController(v58, v52, v34);
  v35 = std::optional<FIK::Enrollment::VirtualSourceController>::operator=[abi:nn200100]<FIK::Enrollment::VirtualSourceController,void>(a1 + 2000, v58);
  v59 = 0;
  if (v60)
  {
    v35 = (*(*v61 + 24))(v61, v60, 0, 8);
  }

  v36 = FIK::defaultAllocator(v35);
  memset(buf, 0, sizeof(buf));
  v57 = v36;
  v37 = &unk_278E8A008;
  v38 = 48;
  do
  {
    v51 = 0;
    v39 = *(v37 - 1);
    v40 = *v37;
    FIK::Enrollment::SourceDefinition::getDetectionIndicesForPrefixedName(a2, v39, *v37, &v51 + 1, &v51);
    if (HIDWORD(v51) != -1 && v51 != -1)
    {
      FIK::Enrollment::LiftedSource::LiftedSource(&v49, a2, v39, v40, 0xFFFFFFFFLL);
      FIK::IKArray<FIK::Enrollment::LiftedSource>::reserve(buf, *buf + 1);
      v42 = *&buf[16] + 12 * *buf;
      v43 = v49;
      *(v42 + 8) = v50;
      *v42 = v43;
      ++*buf;
    }

    v37 += 2;
    v38 -= 16;
  }

  while (v38);
  if (*buf)
  {
    FIK::IKArray<FIK::Enrollment::LiftedSource>::operator=((a1 + 1968), buf);
  }

  else
  {
    v44 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      FIK::EnrollmentPoseSolver::setupPreprocessingSources(v44);
    }
  }

  *buf = 0;
  if (*&buf[16])
  {
    (*(*v57 + 3))(v57, *&buf[16], 0, 8);
  }

  v53 = 0;
  if (v54)
  {
    (*(*v55 + 24))(v55, v54, 0, 8);
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 192);
  if (*(a1 + 8))
  {
    v4 = *a1;
  }

  else
  {
    v4 = &unk_245A04BAE;
  }

  v5 = strlen(v4);
  v6 = 0;
  for (i = (v3 + 8); ; i += 32)
  {
    v8 = *i ? *(i - 1) : &unk_245A04BAE;
    if (*i == v5 && !memcmp(v8, v4, v5))
    {
      break;
    }

    if (v2 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v6;
}

uint64_t FIK::EnrollmentPoseSolver::solve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v27 = 2;
  v7 = FIK::Enrollment::DataPreprocessor::generateSolverSources((a1 + 1824), a1 + 1792, a4, &v27);
  if (v27 == 1)
  {
    v9 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "solve";
      _os_log_impl(&dword_245976000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to find data for the requested frame index", &buf, 0xCu);
    }

    v10 = 2;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    Rig = FIK::AnimNode::GetRig(a1);
    v14 = FIK::defaultAllocator(Rig);
    buf = 0uLL;
    v31 = v14;
    IKString::assign(&buf, "left_arm_joint_Task", 0x13);
    v15 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&buf, Rig);
    v16 = v15;
    if (*(&buf + 1))
    {
      v15 = (*(*v31 + 3))(v31, buf, 0, 8);
    }

    v17 = FIK::defaultAllocator(v15);
    buf = 0uLL;
    v31 = v17;
    IKString::assign(&buf, "right_arm_joint_Task", 0x14);
    v18 = FIK::IKRigUtils::GetTaskIndexByName<FIK::MoCapRig>(&buf, Rig);
    if (*(&buf + 1))
    {
      (*(*v31 + 3))(v31, buf, 0, 8);
    }

    v19 = *(Rig + 192) + (v16 << 8);
    IKString::IKString(&buf, v19);
    IKString::IKString(&v32, (v19 + 24));
    v20 = *(v19 + 48);
    v36 = *(v19 + 64);
    v35 = v20;
    v37 = *(v19 + 80);
    v38 = *(v19 + 96);
    v39 = *(v19 + 112);
    v40 = *(v19 + 128);
    v41 = *(v19 + 144);
    v42 = *(v19 + 160);
    IKString::IKString(&v43, (v19 + 176));
    v21 = *(v19 + 200);
    v47 = *(v19 + 204);
    v46 = v21;
    v48 = *(v19 + 208);
    v49 = *(v19 + 224);
    v50 = *(v19 + 240);
    v22 = vsubq_f32(v11[2 * v21], v11[2 * *(*(Rig + 192) + (v18 << 8) + 200)]);
    v23 = vmulq_f32(v22, v22);
    if (vabds_f32(*(a1 + 2244), sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)) / *(Rig + 308)) > 0.01)
    {
      v24 = ikinemaLogObject()[1];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 136315138;
        v29 = "solve";
        _os_log_impl(&dword_245976000, v24, OS_LOG_TYPE_DEFAULT, "%s: Current frame shoulder width is differnt from enrolled shoulder width", v28, 0xCu);
      }
    }

    FIK::EnrollmentPoseSolver::updateTaskWeights(a1, (a1 + 1872), 1);
    v10 = FIK::EnrollmentPoseSolver::solveInternal(a1, v11, v12, a2);
    FIK::EnrollmentPoseSolver::logAfterSolve(a1, &v11[2 * *(a1 + 1824)], a4);
    if (v44)
    {
      (*(*v45 + 24))(v45, v43, 0, 8);
      v43 = 0;
      v44 = 0;
    }

    if (v33)
    {
      (*(*v34 + 24))(v34, v32, 0, 8);
      v32 = 0;
      v33 = 0;
    }

    if (*(&buf + 1))
    {
      (*(*v31 + 3))(v31, buf, 0, 8);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

void FIK::EnrollmentPoseSolver::updateTaskWeights(FIK::AnimNode *a1, void *a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  Rig = FIK::AnimNode::GetRig(a1);
  if (*a2 != Rig[30])
  {
    FIK::EnrollmentPoseSolver::updateTaskWeights();
  }

  if (Rig[22])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = Rig[24];
      v10 = *(a2[2] + *(v9 + v7 + 200));
      v11 = FIK::RetargetingNode::constraintByIndex(a1, v8);
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      if (*(v11 + 8) != 0)
      {
        if (v10)
        {
          if (a3)
          {
            if (v12)
            {
              v14 = v12 + *(*v12 - 264);
            }

            else
            {
              v14 = 0;
            }

            setTaskWeights(v14, v9 + v7 + 80);
            if (v13)
            {
              v19 = v13 + *(*v13 - 264);
            }

            else
            {
              v19 = 0;
            }

            setTaskWeights(v19, v9 + v7 + 96);
          }
        }

        else
        {
          if (v12)
          {
            v15 = v12 + *(*v12 - 264);
          }

          else
          {
            v15 = 0;
          }

          *buf = 0;
          *&buf[8] = 0;
          setTaskWeights(v15, buf);
          if (v13)
          {
            v16 = v13 + *(*v13 - 264);
          }

          else
          {
            v16 = 0;
          }

          *buf = 0;
          *&buf[8] = 0;
          setTaskWeights(v16, buf);
          v17 = *ikinemaLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v9 + v7 + 8))
            {
              v18 = *(v9 + v7);
            }

            else
            {
              v18 = &unk_245A04BAE;
            }

            *buf = 136315394;
            *&buf[4] = "updateTaskWeights";
            *&buf[12] = 2080;
            *&buf[14] = v18;
            _os_log_impl(&dword_245976000, v17, OS_LOG_TYPE_DEFAULT, "%s: Task (%s) was disabled due to missing data", buf, 0x16u);
          }
        }
      }

      ++v8;
      v7 += 256;
    }

    while (v8 < Rig[22]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t FIK::EnrollmentPoseSolver::solveInternal(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  FIK::EnrollmentPoseSolver::updateRestForInput(a1, a2, a3);
  v8 = *(a1 + 2192);
  v9 = *(a1 + 2176);
  v16[0] = 0uLL;
  v16[1] = xmmword_245A01E80;
  v10 = FIK::RetargetingNode::Solve(a1, a2, a3, v8, v9, v16);
  if ((*(a1 + 2240) & 1) == 0)
  {
    FIK::EnrollmentPoseSolver::convertOutputToVIOSpace(a1, &a2[2 * *(a1 + 1824)]);
  }

  if (*(a1 + 2208))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (*(a1 + 2192) + v11);
      v14 = (a4 + 32 * *(*(a1 + 2224) + 8 * v12));
      *v14 = *v13;
      v14[1] = v13[1];
      ++v12;
      v11 += 32;
    }

    while (v12 < *(a1 + 2208));
  }

  return v10;
}

FIK *FIK::EnrollmentPoseSolver::logAfterSolve(FIK *this, float32x4_t *a2, uint64_t a3)
{
  if (*(this + 3440) == 1)
  {
    v35 = v3;
    v36 = v4;
    v7 = this;
    Rig = FIK::AnimNode::GetRig(this);
    v9 = *(Rig + 22);
    v10 = FIK::defaultAllocator(Rig);
    FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform,void>(&v32, v9, v10);
    FIK::RetargetingNode::GetTaskPosDebug(v7, v33, v32);
    v11 = FIK::AnimNode::GetRig(v7);
    v12 = v33;
    v13 = 1.0 / *(v11 + 308);
    if (*(v7 + 2240) == 1)
    {
      if (v32)
      {
        v14 = &v33[2 * v32];
        v15 = v13;
        v16.i64[0] = 0x4000000040000000;
        v16.i64[1] = 0x4000000040000000;
        do
        {
          v17 = v12[1];
          v18 = vmulq_n_f32(*v12, v15);
          v19 = vnegq_f32(v17);
          v20 = vtrn2q_s32(v17, vtrn1q_s32(v17, v19));
          v21 = a2[1];
          v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v19, 8uLL), *v21.f32, 1), vextq_s8(v20, v20, 8uLL), v21.f32[0]);
          v23 = vrev64q_s32(v17);
          v23.i32[0] = v19.i32[1];
          v23.i32[3] = v19.i32[2];
          v24 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v17, v21, 3), v23, v21, 2), v22);
          v25 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
          v26 = vnegq_f32(v21);
          v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v26), v18, v25);
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v26), v28, v25);
          *v12 = vaddq_f32(*a2, vmlaq_f32(v18, v16, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v28, v21, 3)));
          v12[1] = v24;
          v12 += 2;
        }

        while (v12 != v14);
      }
    }

    else if (v32)
    {
      v30 = v13;
      v31 = 32 * v32;
      do
      {
        *v12 = vmulq_n_f32(*v12, v30);
        v12 += 2;
        v31 -= 32;
      }

      while (v31);
    }

    FIK::Enrollment::DataLogger::exportTasksFrame(v7 + 2248, v33, v32, a3);
    this = FIK::Enrollment::DataLogger::exportSolvedFrame((v7 + 2248), *(v7 + 2192), *(v7 + 2176), a2, a3);
    v32 = 0;
    if (v33)
    {
      return (*(*v34 + 24))(v34, v33, 0, 8);
    }
  }

  return this;
}

void FIK::EnrollmentPoseSolver::updateRestForInput(int *a1, _OWORD *a2, uint64_t a3)
{
  Rig = FIK::AnimNode::GetRig(a1);
  v7 = (Rig + 208);
  v8 = FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(v72, *(Rig + 224), *(Rig + 208));
  v9 = a1[457];
  v10 = FIK::defaultAllocator(v8);
  FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform const,void>(v67, a2, a3, v10);
  FIK::PoseConverter::getGlobalTransformForIndex<FIK::RigBoneBase>(v67, (v7 + 8), v9, &v70);
  v65 = *(v7 + 25);
  v11 = v71;
  v61 = v70;
  v67[0] = 0;
  if (v68)
  {
    v63 = v71;
    (*(*v69 + 24))(v69, v68, 0, 8);
    v11 = v63;
  }

  v60 = vrev64q_s32(0);
  v12 = vtrn2q_s32(v60, v11);
  v13 = vmulq_f32(v12, v12);
  v14 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  if (vaddv_f32(v14) == 0.0)
  {
    v15 = xmmword_245A01E80;
  }

  else
  {
    v16 = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
    v17 = vrsqrte_f32(v16);
    v18 = vmul_f32(v17, vrsqrts_f32(v16, vmul_f32(v17, v17)));
    v15 = vmulq_n_f32(v12, vmul_f32(v18, vrsqrts_f32(v16, vmul_f32(v18, v18))).f32[0]);
  }

  v64 = v15;
  v19 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("head_joint", 0xAuLL, v7);
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(v72, v19);
  v21 = *GlobalTransform;
  v22 = vtrn2q_s32(v60, *(GlobalTransform + 16));
  v23 = vmulq_f32(v22, v22);
  v24 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  if (vaddv_f32(v24) == 0.0)
  {
    v25 = xmmword_245A03470;
  }

  else
  {
    v26 = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
    v27 = vrsqrte_f32(v26);
    v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
    v25 = vmulq_f32(vmulq_n_f32(v22, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]), xmmword_245A01F10);
  }

  v29 = vmulq_n_f32(v61, v65);
  v30 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v31 = vnegq_f32(v25);
  v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v31), v21, v30);
  v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
  v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v31), v33, v30);
  v35 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v33, v25, 3);
  v33.i64[0] = 0x4000000040000000;
  v33.i64[1] = 0x4000000040000000;
  v36 = vmlaq_f32(v21, v33, v35);
  v37.i64[0] = 0x4000000040000000;
  v37.i64[1] = 0x4000000040000000;
  v38 = vtrn2q_s32(v25, vtrn1q_s32(v25, v31));
  v39 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v31, 8uLL), *v64.f32, 1), vextq_s8(v38, v38, 8uLL), v64.f32[0]);
  v40 = vrev64q_s32(v25);
  v40.i32[0] = v31.i32[1];
  v40.i32[3] = v31.i32[2];
  v62 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v25, v64, 3), v40, v64, 2), v39);
  v41 = vnegq_f32(v36);
  v42 = vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL);
  v43 = vnegq_f32(v64);
  v44 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), v43), v42, v36);
  v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), v43), v45, v42);
  v66 = vaddq_f32(v29, vmlaq_f32(v41, v37, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v45, v64, 3)));
  v47 = FIK::PoseConverter::GetGlobalTransform(v72, 0);
  v48 = *(v47 + 16);
  v49 = vnegq_f32(v48);
  v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
  v51 = vrev64q_s32(v48);
  v51.i32[0] = v49.i32[1];
  v51.i32[3] = v49.i32[2];
  v52 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v48, v62, 3), v51, v62, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v62.f32, 1), vextq_s8(v50, v50, 8uLL), v62.f32[0]));
  v53 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL);
  v54 = vnegq_f32(v62);
  v55 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v47, *v47), *v47, 0xCuLL), v54), *v47, v53);
  v56 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
  v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL), v54), v56, v53);
  v58 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), v56, v62, 3);
  v56.i64[0] = 0x4000000040000000;
  v56.i64[1] = 0x4000000040000000;
  v70 = vaddq_f32(vmlaq_f32(*v47, v56, v58), v66);
  v71 = v52;
  v59 = *FIK::IKSolver::getRootSegment((a1 + 4));
  (*(v59 + 440))();
  FIK::PoseConverter::~PoseConverter(v72);
}

void *FIK::PoseConverter::getGlobalTransformForIndex<FIK::RigBoneBase>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X8>)
{
  v5 = result[2] + 32 * a3;
  if (*(*(a2 + 16) + 96 * a3 + 4) == -1)
  {
    v17 = *v5;
    v10 = *(v5 + 16);
  }

  else
  {
    result = FIK::PoseConverter::getGlobalTransformForIndex<FIK::RigBoneBase>(&v18);
    v6 = *(v5 + 16);
    v7 = vnegq_f32(v6);
    v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
    v9 = vrev64q_s32(v6);
    v9.i32[0] = v7.i32[1];
    v9.i32[3] = v7.i32[2];
    v10 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, v19, 3), v9, v19, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *v19.f32, 1), vextq_s8(v8, v8, 8uLL), v19.f32[0]));
    v11 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
    v12 = vnegq_f32(v19);
    v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v5, *v5), *v5, 0xCuLL), v12), *v5, v11);
    v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v12), v14, v11);
    v16 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v14, v19, 3);
    v14.i64[0] = 0x4000000040000000;
    v14.i64[1] = 0x4000000040000000;
    v17 = vaddq_f32(v18, vmlaq_f32(*v5, v14, v16));
  }

  *a4 = v17;
  a4[1] = v10;
  return result;
}

float32x4_t FIK::EnrollmentPoseSolver::convertOutputToVIOSpace(uint64_t a1, uint64_t a2)
{
  v2 = vmulq_f32(*(a2 + 16), xmmword_245A01F10);
  v3 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v4 = vnegq_f32(v2);
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v4), *a2, v3);
  v6 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), v4), v6, v3);
  v8 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v6, v2, 3);
  v6.i64[0] = 0x4000000040000000;
  v6.i64[1] = 0x4000000040000000;
  v9 = vmlaq_f32(*a2, v6, v8);
  v10 = *(a1 + 2192);
  v11 = *(v10 + 16);
  v12 = vnegq_f32(v11);
  v13 = vtrn2q_s32(v11, vtrn1q_s32(v11, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v12, 8uLL), *v2.f32, 1), vextq_s8(v13, v13, 8uLL), v2.f32[0]);
  v15 = vrev64q_s32(v11);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v10, *v10), *v10, 0xCuLL), v4), *v10, v3);
  v17 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v4), v17, v3);
  result = vsubq_f32(vmlaq_f32(*v10, v6, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v17, v2, 3)), v9);
  *v10 = result;
  *(v10 + 16) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v2, 3), v15, v2, 2), v14);
  return result;
}

uint64_t setTaskWeights(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    (*(*result + 80))(result, 0, *a2);
    (*(*v3 + 80))(v3, 1, *(a2 + 4));
    v4.n128_u32[0] = *(a2 + 8);
    v5 = *(*v3 + 80);

    return v5(v3, 2, v4);
  }

  return result;
}

void *FIK::Enrollment::VirtualSourceController::Descriptor::addDependentSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 48);
  result = FIK::IKArray<std::string_view>::reserve((a1 + 48), *(a1 + 48) + 1);
  v7 = (v5[2] + 16 * *v5);
  *v7 = a2;
  v7[1] = a3;
  v8 = *v5 + 1;
  *v5 = v8;
  if (!*(v5[2] + 16 * v8 - 8))
  {
    return FIK::Enrollment::VirtualSourceController::Descriptor::addDependentSource();
  }

  return result;
}

__n128 FIK::EnrollmentHelpers::extractTransformsFromPositionsArray@<Q0>(FIK *a1@<X0>, void *a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = FIK::defaultAllocator(a1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  FIK::IKArray<FIK::Transform>::reserve(a4, a3);
  if (a3)
  {
    v10 = 8 * a3;
    do
    {
      if (*a2 == -1)
      {
        FIK::IKArray<FIK::Transform>::reserve(a4, *a4 + 1);
        v12 = a4[2] + 32 * *a4;
        *v12 = 0;
        *(v12 + 8) = 0;
      }

      else
      {
        v11 = *(a1 + *a2);
        HIDWORD(v11) = 0;
        v13 = v11;
        FIK::IKArray<FIK::Transform>::reserve(a4, *a4 + 1);
        v12 = a4[2] + 32 * *a4;
        *v12 = v13;
      }

      result = xmmword_245A01E80;
      *(v12 + 16) = xmmword_245A01E80;
      ++*a4;
      ++a2;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t *FIK::IKArray<FIK::Transform>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 32 * v4, 16);
      v6 = v5;
      if (32 * v4)
      {
        bzero(v5, 32 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[2];
    v8 = *v2;
    if (*v2)
    {
      v9 = v6;
      do
      {
        *v9 = *v7;
        v9[1] = v7[1];
        v9 += 2;
        v7 += 2;
        --v8;
      }

      while (v8);
      v7 = v2[2];
    }

    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v10 = *(*result + 24);

      return v10();
    }
  }

  return result;
}

double FIK::EnrollmentHelpers::writeElementsToArray(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = (a1 + 16);
    do
    {
      v6 = *a3++;
      v7 = (a5 + 32 * v6);
      *v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 2;
      result = *&v8;
      v7[1] = v8;
      --a2;
    }

    while (a2);
  }

  return result;
}

float32x4_t *FIK::EnrollmentHelpers::addOffsetToPose(float32x4_t *result, uint64_t a2, float32x4_t *a3)
{
  if (a2)
  {
    v3 = 32 * a2;
    do
    {
      *result = vaddq_f32(*result, *a3);
      result += 2;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t FIK::EnrollmentPoseSolverV2::EnrollmentPoseSolverV2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *(a1 + 44) = v6;
  *(a1 + 16) = v6;
  *(a1 + 32) = v6;
  *a1 = v6;
  if (a4)
  {
    FIK::Enrollment::SourceAndTargetDataLogger::SourceAndTargetDataLogger(&v9, a3, a4);
    *(a1 + 64) = v9;
    *(a1 + 80) = v10;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 88) = v7;
  FIK::RetargetingNode::RetargetingNode(a1 + 96);
  FIK::EnrollmentPoseSolverV2::populateKeyJointIndices(a1, a2);
  return a1;
}

uint64_t FIK::EnrollmentPoseSolverV2::populateKeyJointIndices(_DWORD *a1, uint64_t a2)
{
  *a1 = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("virtualHips", 0xBuLL, (a2 + 240));
  a1[2] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("spine_7_joint", 0xDuLL, (a2 + 240));
  a1[1] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("spine_6_joint", 0xDuLL, (a2 + 240));
  a1[3] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("head_joint", 0xAuLL, (a2 + 240));
  a1[4] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("left_arm_joint", 0xEuLL, (a2 + 240));
  a1[5] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("left_forearm_joint", 0x12uLL, (a2 + 240));
  a1[6] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("left_hand_joint", 0xFuLL, (a2 + 240));
  a1[7] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("right_arm_joint", 0xFuLL, (a2 + 240));
  a1[8] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("right_forearm_joint", 0x13uLL, (a2 + 240));
  a1[9] = FIK::IKRigUtils::getBoneIndex<FIK::RigBoneBase,void>("right_hand_joint", 0x10uLL, (a2 + 240));
  a1[10] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("hips_joint", 0xAuLL, (a2 + 208));
  a1[11] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("spine_7_joint", 0xDuLL, (a2 + 208));
  a1[12] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("left_hand_joint", 0xFuLL, (a2 + 208));
  a1[13] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("right_hand_joint", 0x10uLL, (a2 + 208));
  result = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("head_joint", 0xAuLL, (a2 + 208));
  a1[14] = result;
  return result;
}

BOOL FIK::EnrollmentPoseSolverV2::inputsAreValidGivenRig(uint64_t a1, const char **a2, uint64_t a3, const char **a4, uint64_t a5)
{
  Rig = FIK::AnimNode::GetRig((a1 + 96));
  v10 = *(Rig + 240);
  if (v10)
  {
    v11 = 8 * a3;
    v12 = &a2[a3];
    v13 = (*(Rig + 256) + 16);
    v14 = 96 * v10;
    while (1)
    {
      v15 = *v13;
      if (*v13)
      {
        v16 = *(v13 - 1);
      }

      else
      {
        v16 = &unk_245A04BAE;
      }

      v38 = v16;
      v39 = v15;
      v17 = (std::__find[abi:nn200100]<char const* const*,char const* const*,std::string_view,std::__identity>(a2, v12, &v38) - a2);
      if (v17 != v11 && v17 + 8 != 0)
      {
        goto LABEL_30;
      }

      if (v15 > 14)
      {
        break;
      }

      if (v15 != 10)
      {
        if (v15 != 11)
        {
          goto LABEL_42;
        }

        v19 = *(v16 + 3);
        v20 = *v16 == 0x486C617574726976;
        v21 = 0x737069486C617574;
        goto LABEL_25;
      }

      if (*v16 != 0x696F6A5F64616568 || *(v16 + 4) != 29806)
      {
LABEL_42:
        v35 = ikinemaLogObject()[2];
        result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
        if (result)
        {
          FIK::EnrollmentPoseSolverV2::inputsAreValidGivenRig(v16, v35);
          return 0;
        }

        return result;
      }

LABEL_30:
      v13 += 12;
      v14 -= 96;
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    if (v15 == 15)
    {
      v22 = *v16;
      v19 = *(v16 + 7);
      v23 = 0x6E61685F7466656CLL;
    }

    else
    {
      if (v15 != 16)
      {
        goto LABEL_42;
      }

      v22 = *v16;
      v19 = *(v16 + 1);
      v23 = 0x61685F7468676972;
    }

    v20 = v22 == v23;
    v21 = 0x746E696F6A5F646ELL;
LABEL_25:
    if (!v20 || v19 != v21)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

LABEL_31:
  v26 = FIK::AnimNode::GetRig((a1 + 96));
  v27 = *(v26 + 208);
  if (!v27)
  {
    return 1;
  }

  v28 = (*(v26 + 224) + 16);
  v29 = 544 * v27;
  while (1)
  {
    v30 = *v28;
    v31 = (*v28 ? *(v28 - 1) : &unk_245A04BAE);
    v38 = v31;
    v39 = v30;
    v32 = (std::__find[abi:nn200100]<char const* const*,char const* const*,std::string_view,std::__identity>(a4, &a4[a5], &v38) - a4);
    if (v32 == (8 * a5) || v32 + 8 == 0)
    {
      break;
    }

    v28 += 68;
    v29 -= 544;
    if (!v29)
    {
      return 1;
    }
  }

  v36 = ikinemaLogObject()[2];
  result = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
  if (result)
  {
    FIK::EnrollmentPoseSolverV2::inputsAreValidGivenRig(v28, v28 - 1, v36);
    return 0;
  }

  return result;
}

void *FIK::EnrollmentPoseSolverV2::getRigToInputSourceMap@<X0>(uint64_t a1@<X0>, FIK *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = (FIK::AnimNode::GetRig((a1 + 96)) + 240);

  return FIK::EnrollmentHelpers::getRigToInputMap<FIK::RigBoneBase>(a2, a3, v7, a4);
}

void *FIK::EnrollmentHelpers::getRigToInputMap<FIK::RigBoneBase>@<X0>(FIK *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = FIK::defaultAllocator(a1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  result = FIK::IKArray<FIK::Segment *>::reserve(a4, *a3);
  v10 = *a3;
  if (*a3)
  {
    v11 = a3[2];
    v12 = 8 * a2;
    v13 = (a1 + 8 * a2);
    v14 = (v11 + 16);
    v15 = 96 * v10;
    do
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = *(v14 - 1);
      }

      else
      {
        v17 = &unk_245A04BAE;
      }

      v20[0] = v17;
      v20[1] = v16;
      v18 = std::__find[abi:nn200100]<char const* const*,char const* const*,std::string_view,std::__identity>(a1, v13, v20);
      if (v18 - a1 == v12)
      {
        v19 = -1;
      }

      else
      {
        v19 = (v18 - a1) >> 3;
      }

      result = FIK::IKArray<FIK::Segment *>::reserve(a4, *a4 + 1);
      *(a4[2] + 8 * (*a4)++) = v19;
      v14 += 12;
      v15 -= 96;
    }

    while (v15);
  }

  return result;
}

void *FIK::EnrollmentPoseSolverV2::getRigToInputTargetMap@<X0>(uint64_t a1@<X0>, FIK *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = (FIK::AnimNode::GetRig((a1 + 96)) + 208);

  return FIK::EnrollmentHelpers::getRigToInputMap<FIK::MoCapBone>(a2, a3, v7, a4);
}

void *FIK::EnrollmentHelpers::getRigToInputMap<FIK::MoCapBone>@<X0>(FIK *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = FIK::defaultAllocator(a1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  result = FIK::IKArray<FIK::Segment *>::reserve(a4, *a3);
  v10 = *a3;
  if (*a3)
  {
    v11 = a3[2];
    v12 = 8 * a2;
    v13 = (a1 + 8 * a2);
    v14 = (v11 + 16);
    v15 = 544 * v10;
    do
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = *(v14 - 1);
      }

      else
      {
        v17 = &unk_245A04BAE;
      }

      v20[0] = v17;
      v20[1] = v16;
      v18 = std::__find[abi:nn200100]<char const* const*,char const* const*,std::string_view,std::__identity>(a1, v13, v20);
      if (v18 - a1 == v12)
      {
        v19 = -1;
      }

      else
      {
        v19 = (v18 - a1) >> 3;
      }

      result = FIK::IKArray<FIK::Segment *>::reserve(a4, *a4 + 1);
      *(a4[2] + 8 * (*a4)++) = v19;
      v14 += 68;
      v15 -= 544;
    }

    while (v15);
  }

  return result;
}

float32x4_t FIK::EnrollmentPoseSolverV2::computeVirtualHips@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[10];
  v7 = a1[11];
  Rig = FIK::AnimNode::GetRig((a1 + 24));
  v9 = 0.0;
  v10 = v7 == v6 || v7 == -1;
  v11 = 0.0;
  if (!v10)
  {
    v11 = 0.0;
    do
    {
      v12 = (*(Rig + 224) + 544 * v7);
      v13 = vmulq_f32(v12[4], v12[4]);
      v11 = v11 + sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
      v7 = v12->i32[1];
    }

    while (v7 != v6 && v7 != -1);
    if (v7 != v6)
    {
      v11 = 0.0;
    }
  }

  v22 = v11;
  v23 = *(a2 + 32 * a1[2]);
  v21 = vsubq_f32(*(a2 + 32 * a1[1]), v23);
  v15 = vmulq_f32(v21, v21);
  v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  if (v16 != 0.0)
  {
    v9 = 1.0 / v16;
  }

  v20 = v9;
  v17 = (FIK::AnimNode::GetRig((a1 + 24)) + 308);
  v18 = vld1q_dup_f32(v17);
  result = vaddq_f32(v23, vdivq_f32(vmulq_n_f32(vmulq_n_f32(v21, v20), v22), v18));
  *a3 = result;
  *(a3 + 16) = xmmword_245A01E80;
  return result;
}

float32x4_t FIK::EnrollmentPoseSolverV2::computeVirtualLeftWrist@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = 32 * a1[4];
  v7 = 32 * a1[5];
  v14 = *(a3 + 4 * a1[12]);
  Rig = FIK::AnimNode::GetRig((a1 + 24));
  v9 = *(a2 + v7);
  v10 = vsubq_f32(v9, *(a2 + v6));
  v11 = vmulq_f32(v10, v10);
  v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v12 = 1.0 / v11.f32[0];
  if (v11.f32[0] == 0.0)
  {
    v12 = 0.0;
  }

  result = vaddq_f32(v9, vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v10, v12), v14), 1.0 / *(Rig + 308)));
  *a4 = result;
  *(a4 + 16) = xmmword_245A01E80;
  return result;
}

float32x4_t FIK::EnrollmentPoseSolverV2::computeVirtualRightWrist@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = 32 * a1[7];
  v7 = 32 * a1[8];
  v14 = *(a3 + 4 * a1[13]);
  Rig = FIK::AnimNode::GetRig((a1 + 24));
  v9 = *(a2 + v7);
  v10 = vsubq_f32(v9, *(a2 + v6));
  v11 = vmulq_f32(v10, v10);
  v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v12 = 1.0 / v11.f32[0];
  if (v11.f32[0] == 0.0)
  {
    v12 = 0.0;
  }

  result = vaddq_f32(v9, vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v10, v12), v14), 1.0 / *(Rig + 308)));
  *a4 = result;
  *(a4 + 16) = xmmword_245A01E80;
  return result;
}

uint64_t FIK::EnrollmentPoseSolverV2::solve(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v6[0] = 0uLL;
  v6[1] = xmmword_245A01E80;
  return FIK::RetargetingNode::Solve(a1 + 96, a2, a3, a4, a5, v6);
}

void FIK::Enrollment::DataLogger::~DataLogger(FIK::Enrollment::DataLogger *this)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *(this + 76) = *MEMORY[0x277D82810];
  v4 = *(v2 + 24);
  *(this + *(v3 - 24) + 608) = v4;
  MEMORY[0x245D77E20](this + 616);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](this + 1024);
  *(this + 3) = v3;
  *(this + *(v3 - 24) + 24) = v4;
  MEMORY[0x245D77E20](this + 32);
  std::ostream::~ostream();
  MEMORY[0x245D77F30](this + 440);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void FIK::PoseConverter::~PoseConverter(FIK::PoseConverter *this)
{
  *(this + 16) = 0;
  v2 = *(this + 18);
  if (v2)
  {
    (*(**(this + 19) + 24))(*(this + 19), v2, 0, 8);
  }

  *(this + 12) = 0;
  v3 = *(this + 14);
  if (v3)
  {
    (*(**(this + 15) + 24))(*(this + 15), v3, 0, 8);
  }

  *(this + 8) = 0;
  v4 = *(this + 10);
  if (v4)
  {
    (*(**(this + 11) + 24))(*(this + 11), v4, 0, 8);
  }

  FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(this + 32);
  *this = 0;
  v5 = *(this + 2);
  if (v5)
  {
    (*(**(this + 3) + 24))(*(this + 3), v5, 0, 8);
  }
}

uint64_t FIK::IKArray<FIK::IKArray<unsigned long>>::~IKArray(uint64_t a1)
{
  std::destroy_n[abi:nn200100]<FIK::IKArray<unsigned long> *,unsigned long>(*(a1 + 16), *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

uint64_t std::destroy_n[abi:nn200100]<FIK::IKArray<unsigned long> *,unsigned long>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    do
    {
      *a1 = 0;
      v4 = *(a1 + 16);
      if (v4)
      {
        (*(**(a1 + 24) + 24))(*(a1 + 24), v4, 0, 8);
      }

      a1 += 32;
      --v3;
    }

    while (v3);
  }

  return a1;
}

FIK *FIK::Enrollment::VirtualSourceController::Descriptor::Descriptor(FIK *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  *(a1 + 2) = a4;
  *(a1 + 3) = a5;
  *(a1 + 4) = a6;
  *(a1 + 5) = a7;
  v8 = FIK::defaultAllocator(a1);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  *(a1 + 9) = v8;
  if (!*(a1 + 1))
  {
    FIK::Enrollment::VirtualSourceController::Descriptor::Descriptor();
  }

  if (!*(a1 + 3))
  {
    FIK::Enrollment::VirtualSourceController::Descriptor::Descriptor();
  }

  if (!*(a1 + 5))
  {
    FIK::Enrollment::VirtualSourceController::Descriptor::Descriptor();
  }

  return a1;
}

void *FIK::IKArray<std::string_view>::reserve(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 16 * v4, 8);
      v6 = v5;
      if (16 * v4)
      {
        bzero(v5, 16 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, v2[2], 16 * *v2);
    v7 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v8 = *(*result + 24);

      return v8();
    }
  }

  return result;
}

uint64_t std::optional<FIK::Enrollment::VirtualSourceController>::operator=[abi:nn200100]<FIK::Enrollment::VirtualSourceController,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    FIK::IKArray<unsigned int>::operator=(a1 + 112, (a2 + 112));
  }

  else
  {
    std::__construct_at[abi:nn200100]<FIK::Enrollment::VirtualSourceController,FIK::Enrollment::VirtualSourceController,FIK::Enrollment::VirtualSourceController*>(a1, a2);
    *(a1 + 144) = 1;
  }

  return a1;
}

__n128 std::__construct_at[abi:nn200100]<FIK::Enrollment::VirtualSourceController,FIK::Enrollment::VirtualSourceController,FIK::Enrollment::VirtualSourceController*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v2 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v2;
  v3 = *(a2 + 120);
  result = *(a2 + 128);
  *(a2 + 120) = 0;
  *(a1 + 120) = v3;
  *(a2 + 128) = 0;
  *(a1 + 128) = result;
  return result;
}

uint64_t *FIK::IKArray<FIK::Enrollment::LiftedSource>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*a2 >= a1[1])
  {
    v8 = a2[1];
    v9 = a1[3];
    if (v8)
    {
      v10 = (*(*v9 + 16))(a1[3], 12 * v8, 4);
      v11 = v10;
      if (12 * v8)
      {
        bzero(v10, 12 * v8);
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *a2;
    if (*a2)
    {
      v13 = a2[2];
      v14 = v11;
      do
      {
        v15 = *v13;
        v14[2] = *(v13 + 2);
        *v14 = v15;
        v14 += 3;
        v13 = (v13 + 12);
        --v12;
      }

      while (v12);
    }

    v17 = a1[2];
    v16 = a1[3];
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v9;
    if (v17)
    {
      (*(*v16 + 24))(v16, v17, 0, 8);
    }
  }

  else
  {
    *a1 = 0;
    v4 = *a2;
    if (*a2)
    {
      v5 = a1[2];
      v6 = a2[2];
      do
      {
        v7 = *v6;
        *(v5 + 8) = *(v6 + 2);
        *v5 = v7;
        v5 += 12;
        v6 = (v6 + 12);
        --v4;
      }

      while (v4);
    }
  }

  *a1 = *a2;
  return a1;
}

uint64_t *FIK::PoseConverter::PoseConverter<FIK::MoCapBone>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = FIK::defaultAllocator(a1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v6;
  v7 = FIK::defaultAllocator(v6);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = v7;
  v8 = FIK::defaultAllocator(v7);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v8;
  v9 = FIK::defaultAllocator(v8);
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = v9;
  v10 = FIK::defaultAllocator(v9);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = v10;
  FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a3);
  FIK::IKArray<unsigned int>::reserve(a1, a3);
  if (a3)
  {
    v11 = (a2 + 64);
    v12 = 544 * a3;
    do
    {
      FIK::IKArray<FIK::Transform>::reserve(a1 + 12, a1[12] + 1);
      v13 = (a1[14] + 32 * a1[12]);
      *v13 = *v11;
      v13[1] = v11[1];
      ++a1[12];
      FIK::IKArray<unsigned int>::reserve(a1, *a1 + 1);
      v14 = *a1;
      *(a1[2] + 4 * *a1) = *(v11 - 15);
      *a1 = v14 + 1;
      v11 += 34;
      v12 -= 544;
    }

    while (v12);
  }

  FIK::PoseConverter::resetGlobalFlag(a1);
  return a1;
}

void *FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform,void>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = a2;
  FIK::IKArray<FIK::Transform>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a3);
  if (v3)
  {
    v5 = a1[2];
    do
    {
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = xmmword_245A01E80;
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *FIK::IKArray<FIK::Transform>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 32 * a2;
    v6 = (*(*a3 + 16))(a3, 32 * a2, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform const,void>(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  FIK::IKArray<FIK::Transform>::MemoryBlock::MemoryBlock(a1 + 1, (a3 + 7) & 0xFFFFFFFFFFFFFFF8, a4);
  if (a3)
  {
    v7 = &a2[2 * a3];
    v8 = a1[2];
    do
    {
      *v8 = *a2;
      v8[1] = a2[1];
      a2 += 2;
      v8 += 2;
    }

    while (a2 != v7);
  }

  return a1;
}

unint64_t *FIK::IKArray<unsigned long>::resize(unint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = result;
  if (*result <= a2)
  {
    result = FIK::IKArray<FIK::Segment *>::reserve(result, a2);
    v6 = a2 - *v4;
    if (a2 != *v4)
    {
      v7 = 0;
      v8 = *a3;
      v9 = vdupq_n_s64(v6 - 1);
      v10 = (v4[2] + 8 * *v4 + 8);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v7), xmmword_245A020B0)));
        if (v11.i8[0])
        {
          *(v10 - 1) = v8;
        }

        if (v11.i8[4])
        {
          *v10 = v8;
        }

        v7 += 2;
        v10 += 2;
      }

      while (((v6 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
    }
  }

  *v4 = a2;
  return result;
}

void *FIK::IKArray<FIK::Enrollment::LiftedSource>::reserve(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 12 * v4, 4);
      v6 = v5;
      if (12 * v4)
      {
        bzero(v5, 12 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, v2[2], 12 * *v2);
    v7 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v8 = *(*result + 24);

      return v8();
    }
  }

  return result;
}

const char **std::__find[abi:nn200100]<char const* const*,char const* const*,std::string_view,std::__identity>(const char **a1, const char **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = *a3;
    v5 = *(a3 + 8);
    do
    {
      if (strlen(*v3) == v5 && !memcmp(*v3, v6, v5))
      {
        break;
      }

      ++v3;
    }

    while (v3 != a2);
  }

  return v3;
}

float32x4_t *ikinema::SourceRotatesDependentsAlgorithm::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, float32x4_t **a6@<X8>)
{
  result = FIK::FIKAlloc(0x50, 16);
  v13 = result;
  if (result)
  {
    v14 = *(*(a1 + 192) + (a2 << 8) + 200);
    result->i64[0] = &unk_28589BAB8;
    result->i64[1] = v14;
    result[1] = xmmword_245A01E80;
    v15 = FIK::defaultAllocator(result);
    v13[2].i64[0] = 0;
    v13[2].i64[1] = 0;
    v13[3].i64[0] = 0;
    v13[3].i64[1] = v15;
    v13[4].i64[0] = a5;
    v16 = *(a1 + 256);
    v17 = (v16 + 96 * v13->i64[1]);
    for (i = v17[5]; ; i = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(i, v17[5], 3), v22, v17[5], 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(i, v20, 8uLL), *v17[5].f32, 1), vextq_s8(v21, v21, 8uLL), COERCE_FLOAT(*&v17[5]))))
    {
      v19 = v17->i32[1];
      if (v19 == -1)
      {
        break;
      }

      v17 = (v16 + 96 * v19);
      v20 = vnegq_f32(i);
      v21 = vtrn2q_s32(i, vtrn1q_s32(i, v20));
      v22 = vrev64q_s32(i);
      v22.i32[0] = v20.i32[1];
      v22.i32[3] = v20.i32[2];
    }

    v13[1] = vmulq_f32(i, xmmword_245A01F10);
    result = FIK::IKArray<FIK::Segment *>::reserve(v13[2].i64, a4);
    if (a4)
    {
      v23 = 8 * a4;
      do
      {
        if (*a3 != a2)
        {
          v24 = *(a1 + 192) + (*a3 << 8);
          result = FIK::IKArray<FIK::Segment *>::reserve(v13[2].i64, v13[2].i64[0] + 1);
          *(v13[3].i64[0] + 8 * v13[2].i64[0]++) = *(v24 + 200);
        }

        ++a3;
        v23 -= 8;
      }

      while (v23);
    }
  }

  *a6 = v13;
  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::SourceRotatesDependentsAlgorithm>::typeId()
{
  result = "N7ikinema32SourceRotatesDependentsAlgorithmE";
  if (("N7ikinema32SourceRotatesDependentsAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema32SourceRotatesDependentsAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v2 = 5381;
    do
    {
      result = v2;
      v3 = *v1++;
      v2 = (33 * v2) ^ v3;
    }

    while (v3);
  }

  return result;
}

void ikinema::anonymous namespace::SourceRotatesDependentsAlgorithmImpl::~SourceRotatesDependentsAlgorithmImpl(ikinema::_anonymous_namespace_::SourceRotatesDependentsAlgorithmImpl *this)
{
  *(this + 4) = 0;
  v1 = *(this + 6);
  if (v1)
  {
    (*(**(this + 7) + 24))(*(this + 7), v1, 0, 8);
  }
}

{
  *(this + 4) = 0;
  v1 = *(this + 6);
  if (v1)
  {
    (*(**(this + 7) + 24))(*(this + 7), v1, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

uint64_t ikinema::anonymous namespace::SourceRotatesDependentsAlgorithmImpl::process(float32x4_t *a1, uint64_t a2, void *a3)
{
  v4 = ikinema::BufferContainer::buffer(a3, a1[4].i64[0]);
  v5 = ikinema::Buffer::arrayView<FIK::Transform>(v4);
  v6 = *(v5 + 32 * a1->i64[1] + 16);
  v7 = vnegq_f32(v6);
  v8 = vtrn2q_s32(v6, vtrn1q_s32(v6, v7));
  v9 = vrev64q_s32(v6);
  v9.i32[0] = v7.i32[1];
  v9.i32[3] = v7.i32[2];
  v10 = vtrn2q_s32(vrev64q_s32(0), vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, a1[1], 3), v9, a1[1], 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v7, 8uLL), *a1[1].f32, 1), vextq_s8(v8, v8, 8uLL), COERCE_FLOAT(*&a1[1]))));
  v11 = vmulq_f32(v10, v10);
  v12 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  if (vaddv_f32(v12) == 0.0)
  {
    v13 = xmmword_245A01E80;
  }

  else
  {
    v14 = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
    v15 = vrsqrte_f32(v14);
    v16 = vmul_f32(v15, vrsqrts_f32(v14, vmul_f32(v15, v15)));
    v13 = vmulq_n_f32(v10, vmul_f32(v16, vrsqrts_f32(v14, vmul_f32(v16, v16))).f32[0]);
  }

  v17 = a1[2].i64[0];
  if (v17)
  {
    v18 = a1[3].i64[0];
    v19 = vdupq_lane_s32(*v13.f32, 0);
    v20 = 8 * v17;
    v21 = vdupq_laneq_s32(v13, 2);
    do
    {
      v22 = *v18++;
      v23 = (v5 + 32 * v22);
      v24 = v23[1];
      v25 = vnegq_f32(v24);
      v26 = vrev64q_s32(v24);
      v26.i32[0] = v25.i32[1];
      v27 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
      v26.i32[3] = v25.i32[2];
      v23[1] = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v24, v13, 3), v26, v21), vmlaq_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v13.f32, 1), vextq_s8(v27, v27, 8uLL), v19));
      v20 -= 8;
    }

    while (v20);
  }

  return 0;
}

uint64_t ikinema::anonymous namespace::SourceRotatesDependentsAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = 72 * *a2;
  v3 = (a2[2] + 56);
  while (1)
  {
    v4 = *v3;
    v3 += 9;
    if (v4 == *(a1 + 64))
    {
      break;
    }

    v2 -= 72;
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ikinema::BufferContainer::buffer(void *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = v2 + 72 * *a1;
  if (*a1)
  {
    v4 = 72 * *a1;
    while (*(v2 + 56) != a2)
    {
      v2 += 72;
      v4 -= 72;
      if (!v4)
      {
        v2 = v3;
        goto LABEL_6;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_6:
    v5 = ikinemaLogObject();
    ikinemaAssertHandler(*v5, 0, "buffer", "(it != m_buffers.end()) The requested buffer is missing. Check buffer registration.");
  }

  return v2;
}

uint64_t ikinema::Buffer::arrayView<FIK::Transform>(void *a1)
{
  v2 = "N3FIK9TransformE";
  if (("N3FIK9TransformE" & 0x8000000000000000) != 0)
  {
    v3 = ("N3FIK9TransformE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (a1[6] != v2)
  {
    ikinema::Buffer::arrayView<FIK::Transform>();
  }

  result = a1[8];
  v7 = a1[5];
  return result;
}

uint64_t FIK::EnrollmentPoseSolverV4::EnrollmentPoseSolverV4(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6, int a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = FIK::defaultAllocator(a1);
  v20 = FIK::IKArray<FIK::Transform>::IKArray<FIK::Transform const,void>(a1, a2, a3, v19);
  v21 = FIK::defaultAllocator(v20);
  v22 = FIK::IKArray<FIK::EnrollmentPoseSolverV4::TargetJointData>::IKArray<FIK::EnrollmentPoseSolverV4::TargetJointData,void>((a1 + 32), a4, a5, v21);
  *(a1 + 64) = *a6;
  *(a1 + 80) = a6[1];
  *(a1 + 96) = a7;
  *(a1 + 100) = a8;
  ikinema::rig::generate_EnrollmentRigV3(v22, a1 + 112);
  FIK::PoseConverter::PoseConverter<FIK::MoCapBone>((a1 + 432), *(a1 + 336), *(a1 + 320));
  FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices((a1 + 592), a1 + 112);
  FIK::EnrollmentPoseSolverV4::rigToInputSourceJointsIndexMap(a1, (a1 + 656));
  v23 = FIK::EnrollmentPoseSolverV4::rigToInputTargetJointsIndexMap(a1, (a1 + 688));
  v24 = FIK::defaultAllocator(v23);
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 728) = 0;
  *(a1 + 744) = v24;
  *(a1 + 752) = xmmword_245A03540;
  *(a1 + 768) = 1;
  *(a1 + 776) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  if (a11)
  {
    v25 = (a1 + 776);
    FIK::Enrollment::SourceAndTargetDataLogger::SourceAndTargetDataLogger(&v27, a10, a11);
    if (*(a1 + 800) == 1)
    {
      if (*(a1 + 799) < 0)
      {
        operator delete(*v25);
      }

      *v25 = v27;
      *(a1 + 792) = v28;
    }

    else
    {
      *v25 = v27;
      *(a1 + 792) = v28;
      *(a1 + 800) = 1;
    }
  }

  FIK::EnrollmentPoseSolverV4::scaleInputsToCm(a1);
  return a1;
}

{
  return FIK::EnrollmentPoseSolverV4::EnrollmentPoseSolverV4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *FIK::EnrollmentPoseSolverV4::rigToInputSourceJointsIndexMap@<X0>(FIK::EnrollmentPoseSolverV4 *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 2);
  v5 = *this;
  v6 = FIK::defaultAllocator(this);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v6;
  result = FIK::IKArray<unsigned int>::reserve(a2, *(this + 44));
  v8 = *(this + 40);
  if (v8)
  {
    v9 = *(this + 42);
    v10 = v9 + 544 * v8;
    v11 = (v4 + 8);
    do
    {
      if (v5)
      {
        v12 = 0;
        v13 = *(v9 + 16);
        v14 = v11;
        while (1)
        {
          v15 = v13 ? *(v9 + 8) : &unk_245A04BAE;
          if (v13 == *v14 && !memcmp(v15, *(v14 - 1), v13))
          {
            break;
          }

          v14 += 4;
          if (v5 == ++v12)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        LODWORD(v12) = -1;
      }

      result = FIK::IKArray<unsigned int>::reserve(a2, *a2 + 1);
      v16 = *a2;
      *(a2[2] + 4 * *a2) = v12;
      *a2 = v16 + 1;
      v9 += 544;
    }

    while (v9 != v10);
  }

  return result;
}

void *FIK::EnrollmentPoseSolverV4::rigToInputTargetJointsIndexMap@<X0>(FIK::EnrollmentPoseSolverV4 *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 6);
  v5 = *(this + 4);
  v6 = FIK::defaultAllocator(this);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v6;
  result = FIK::IKArray<unsigned int>::reserve(a2, *(this + 44));
  v8 = *(this + 40);
  if (v8)
  {
    v9 = *(this + 42);
    v10 = v9 + 544 * v8;
    v11 = (v4 + 8);
    do
    {
      if (v5)
      {
        v12 = 0;
        v13 = *(v9 + 16);
        v14 = v11;
        while (1)
        {
          v15 = v13 ? *(v9 + 8) : &unk_245A04BAE;
          if (v13 == *v14 && !memcmp(v15, *(v14 - 1), v13))
          {
            break;
          }

          v14 += 3;
          if (v5 == ++v12)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        LODWORD(v12) = -1;
      }

      result = FIK::IKArray<unsigned int>::reserve(a2, *a2 + 1);
      v16 = *a2;
      *(a2[2] + 4 * *a2) = v12;
      *a2 = v16 + 1;
      v9 += 544;
    }

    while (v9 != v10);
  }

  return result;
}

float32x4_t FIK::EnrollmentPoseSolverV4::scaleInputsToCm(float32x4_t *this)
{
  if (this->i64[0])
  {
    v1 = (this[1].i64[0] + 16);
    v2 = 32 * this->i64[0];
    do
    {
      *v1 = vmulq_n_f32(*v1, this[6].f32[1]);
      v1 += 2;
      v2 -= 32;
    }

    while (v2);
  }

  v3 = this[2].i64[0];
  if (v3)
  {
    v4 = this[6].f32[1];
    v5 = (this[3].i64[0] + 16);
    v6 = 24 * v3;
    do
    {
      *v5 = v4 * *v5;
      v5 += 6;
      v6 -= 24;
    }

    while (v6);
  }

  result = vmulq_n_f32(this[4], this[6].f32[1]);
  this[4] = result;
  return result;
}

BOOL FIK::EnrollmentPoseSolverV4::areAllRequiredJointsProvided(FIK::EnrollmentPoseSolverV4 *this)
{
  if (*(this + 40) < 1)
  {
LABEL_5:
    v3 = 0;
    v4 = *this;
    v5 = *(this + 2) + 8;
    v6 = 32 * *this;
    while (1)
    {
      v7 = FIK::EnrollmentPoseSolverV4::areAllRequiredJointsProvided(void)const::requiredSourceNames[v3];
      if (!v4)
      {
        break;
      }

      v8 = strlen(FIK::EnrollmentPoseSolverV4::areAllRequiredJointsProvided(void)const::requiredSourceNames[v3]);
      v9 = v6;
      v10 = v5;
      while (*v10 != v8 || memcmp(*(v10 - 1), v7, v8))
      {
        v10 += 4;
        v9 -= 32;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      ++v3;
      result = 1;
      if (v3 == 8)
      {
        return result;
      }
    }

LABEL_14:
    v12 = ikinemaLogObject()[2];
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    FIK::EnrollmentPoseSolverV4::areAllRequiredJointsProvided(v7, v12);
    return 0;
  }

  v2 = 0;
  while (*(*(this + 88) + 4 * v2) != -1)
  {
    if ((*(this + 40) & 0x7FFFFFFFLL) == ++v2)
    {
      goto LABEL_5;
    }
  }

  v13 = ikinemaLogObject()[2];
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    FIK::EnrollmentPoseSolverV4::areAllRequiredJointsProvided(this, v2, v13);
    return 0;
  }

  return result;
}

uint64_t FIK::EnrollmentPoseSolverV4::solve(FIK::EnrollmentPoseSolverV4 *this)
{
  if (!FIK::EnrollmentPoseSolverV4::areAllRequiredJointsProvided(this))
  {
    return 2;
  }

  FIK::EnrollmentPoseSolverV4::setRigInputData(this);
  if (*(this + 808) == 1)
  {
    FIK::EnrollmentPoseSolverV4::dbgPrintInputs(this);
    puts("\nInitial rig:");
    FIK::EnrollmentPoseSolverV4::dbgPrintRigJoints(this);
  }

  FIK::EnrollmentPoseSolverV4::setRigJointLengthsFromGivenTargetJointLengths(this);
  FIK::EnrollmentPoseSolverV4::adjustTorsoSources(this);
  FIK::EnrollmentPoseSolverV4::adjustRigJointsToAlignWithSources(this);
  FIK::EnrollmentPoseSolverV4::setRigRigHeadJointRotationFromAtlas(this);
  if (!FIK::EnrollmentHelpers::verifyRigEnrolment(this + 112))
  {
    return 2;
  }

  if (*(this + 808) == 1)
  {
    puts("\nAfter solve:");
    FIK::EnrollmentPoseSolverV4::dbgPrintRigJoints(this);
  }

  return 0;
}

uint64_t *FIK::EnrollmentPoseSolverV4::setRigInputData(FIK::EnrollmentPoseSolverV4 *this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(this + 80);
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  LODWORD(v13) = -1082130432;
  result = FIK::IKArray<FIK::EnrollmentPoseSolverV4::RigJointInputData>::resize(this + 90, v2, v12);
  if (*(this + 80) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(this + 84) + 4 * v5);
      if (v6 != -1)
      {
        v7 = *(this + 2) + 32 * v6;
        v8 = *(this + 92) + v4;
        if (*(v8 + 16) == 1)
        {
          *v8 = *(v7 + 16);
        }

        else
        {
          *v8 = *(v7 + 16);
          *(v8 + 16) = 1;
        }
      }

      v9 = *(*(this + 88) + 4 * v5);
      if (v9 != -1)
      {
        *(*(this + 92) + v4 + 32) = *(*(this + 6) + 24 * v9 + 16);
      }

      ++v5;
      v4 += 48;
    }

    while (v5 < *(this + 80));
  }

  v10 = *(this + 92) + 48 * *(this + 163);
  if (*(v10 + 16) == 1)
  {
    *v10 = *(this + 4);
  }

  else
  {
    *v10 = *(this + 4);
    *(v10 + 16) = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void FIK::EnrollmentPoseSolverV4::dbgPrintInputs(int32x4_t *this)
{
  if (!this[45].i64[0])
  {
    FIK::EnrollmentPoseSolverV4::dbgPrintInputs();
  }

  puts("\nInput source joint positions:");
  if (this->i64[0])
  {
    v2 = 0;
    do
    {
      v3 = this[1].i64[0] + 32 * v2;
      FIK::dbgVectorToString((v3 + 16), __p);
      v4 = *v3;
      if (v17 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      printf(" %-22s %s\n", *v3, v5);
      if (this[20].i64[0] >= 1)
      {
        v6 = 0;
        while (v2 != *(this[42].i64[0] + 4 * v6))
        {
          if ((this[20].i64[0] & 0x7FFFFFFF) == ++v6)
          {
            goto LABEL_16;
          }
        }

        if (v6)
        {
          v7 = FIK::EnrollmentPoseSolverV4::rigParentJointIndex(this, v6);
          v8 = this[46].i64[0];
          v9 = (v8 + 48 * v7);
          if (v9[1].i8[0] == 1)
          {
            v10 = *(v8 + 48 * v6 + 32);
            v11 = vsubq_f32(*v9, *(v3 + 16));
            v12 = vmulq_f32(v11, v11);
            v12.f32[0] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
            printf("  given target length=%5.2f distance to parent=%5.2f difference=%5.2f\n", v10, v12.f32[0], (v12.f32[0] - v10));
          }
        }
      }

LABEL_16:
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      ++v2;
    }

    while (this->i64[0] > v2);
  }

  puts("\nInput target joint lengths:");
  if (this[2].i64[0])
  {
    v13 = 0;
    v14 = 0;
    do
    {
      printf(" %2d %-22s %5.2f\n", v14++, *(this[3].i64[0] + v13), *(this[3].i64[0] + v13 + 16));
      v13 += 24;
    }

    while (this[2].i64[0] > v14);
  }

  FIK::dbgTransformToString(this + 4, __p);
  if (v17 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  printf("Input atlas pose: %s\n", v15);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void FIK::EnrollmentPoseSolverV4::dbgPrintRigJoints(FIK::EnrollmentPoseSolverV4 *this)
{
  puts("\nRig joints:");
  if (*(this + 80) >= 1)
  {
    v2 = 0;
    do
    {
      FIK::EnrollmentPoseSolverV4::dbgPrintRigJoint(this, v2++);
    }

    while (v2 < *(this + 80));
  }
}

void *FIK::EnrollmentPoseSolverV4::setRigJointLengthsFromGivenTargetJointLengths(void *this)
{
  v1 = this[40];
  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = 32;
    v5 = 64;
    do
    {
      v6 = *(v2[92] + v4);
      if (v6 >= 0.0)
      {
        FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>((v2 + 40), v3, v6);
        this = FIK::PoseConverter::updatePose((v2 + 54), v3, (v2[42] + v5));
        v1 = v2[40];
      }

      ++v3;
      v4 += 48;
      v5 += 544;
    }

    while (v3 < v1);
  }

  return this;
}

void FIK::EnrollmentPoseSolverV4::adjustTorsoSources(FIK::EnrollmentPoseSolverV4 *this)
{
  FIK::IKRigUtils::getGlobalRestTransformBetweenBonesSlow<FIK::MoCapBone>(this + 320, *(this + 163), *(this + 159), v12, 1.0);
  v8 = *(this + 596);
  v2 = *(this + 151);
  v9 = *(this + 159);
  v10 = v2;
  v11 = *(this + 155);
  v3 = (*(this + 92) + 48 * v9);
  if ((v3[1].i8[0] & 1) == 0)
  {
LABEL_7:
    v7 = std::__throw_bad_optional_access[abi:nn200100]();
    FIK::EnrollmentPoseSolverV4::adjustRigJointsToAlignWithSources(v7);
    return;
  }

  v4 = vsubq_f32(vaddq_f32(*(this + 4), v12[0]), *v3);
  if (v4.f32[2] <= 0.0)
  {
    v5 = 0;
    while (1)
    {
      v6 = (*(this + 92) + 48 * *(&v8 + v5 * 4));
      if ((v6[1].i8[0] & 1) == 0)
      {
        break;
      }

      *v6 = vaddq_f32(*v6, vmulq_n_f32(v4, *&dword_245A03554[v5++]));
      if (v5 == 5)
      {
        return;
      }
    }

    goto LABEL_7;
  }
}

float32x4_t *FIK::EnrollmentPoseSolverV4::adjustRigJointsToAlignWithSources(float32x4_t *this)
{
  v2 = this[37].i32[1];
  if (*(this[46].i64[0] + 48 * v2 + 16) == 1)
  {
    FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[37].i32[0], this[37].i32[2], v2, this[37].i32[2], 0, 0);
  }

  FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[37].i32[2], this[37].i32[2], this[37].i32[2], this[39].i32[3], 0, 0);
  if ((FIK::EnrollmentPoseSolverV4::adjustRigNeckJoints(this) & 1) == 0)
  {
    FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[39].i32[3], this[39].i32[3], this[39].i32[3], this[40].i32[3], 0, 0);
  }

  FIK::EnrollmentPoseSolverV4::translateWholeRigToPlaceJointAtSource(this, this[40].i32[3]);
  FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[37].i32[3], this[37].i32[2], this[37].i32[2], this[37].i32[3], 2, 0);
  FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[37].i32[3], this[37].i32[3], this[37].i32[3], this[38].i32[0], 0, 1);
  FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[38].i32[0], this[38].i32[0], this[38].i32[0], this[38].i32[1], 0, 1);
  FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[38].i32[3], this[37].i32[2], this[37].i32[2], this[38].i32[3], 2, 0);
  FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[38].i32[3], this[38].i32[3], this[38].i32[3], this[39].i32[0], 0, 1);
  v3 = this[39].i32[0];
  v4 = this[39].i32[1];

  return FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, v3, v3, v3, v4, 0, 1);
}

void *FIK::EnrollmentPoseSolverV4::setRigRigHeadJointRotationFromAtlas(float32x4_t *this)
{
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform(&this[27], this[40].i32[2]);
  v3 = vmulq_f32(*(GlobalTransform + 16), xmmword_245A01F10);
  v4 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v5 = vnegq_f32(v3);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*GlobalTransform, *GlobalTransform), *GlobalTransform, 0xCuLL), v5), *GlobalTransform, v4);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v5), v7, v4);
  v9 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v7, v3, 3);
  v7.i64[0] = 0x4000000040000000;
  v7.i64[1] = 0x4000000040000000;
  v10 = vmlaq_f32(*GlobalTransform, v7, v9);
  v12 = this[4];
  v11 = this[5];
  v13 = vnegq_f32(v11);
  v14 = vtrn2q_s32(v11, vtrn1q_s32(v11, v13));
  v15 = vrev64q_s32(v11);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v16 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v11, v3, 3), v15, v3, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v11, v13, 8uLL), *v3.f32, 1), vextq_s8(v14, v14, 8uLL), v3.f32[0]));
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), v5), v12, v4);
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v5), v18, v4);
  v20 = this[40].i32[3];
  v21 = this[21].i64[0] + 544 * v20;
  *(v21 + 64) = vsubq_f32(vmlaq_f32(v12, v7, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v3, 3)), v10);
  *(v21 + 80) = v16;
  v22 = (this[21].i64[0] + 544 * v20 + 64);

  return FIK::PoseConverter::updatePose(&this[27], v20, v22);
}

void *FIK::EnrollmentPoseSolverV4::outputTargetJointPoses@<X0>(FIK::EnrollmentPoseSolverV4 *this@<X0>, void *a2@<X8>)
{
  v4 = FIK::defaultAllocator(this);
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v20 = v4;
  v5 = *(this + 25);
  if (*(this + 4) <= *(this + 80))
  {
    v6 = *(this + 80);
  }

  else
  {
    v6 = *(this + 4);
  }

  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = FIK::defaultAllocator(v4);
  v21[0] = 0uLL;
  v21[1] = xmmword_245A01E80;
  FIK::IKArray<FIK::Transform>::resize(v15, v6, v21);
  v7 = *(this + 40);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 88) + 4 * v8);
      if ((v9 & 0x80000000) == 0)
      {
        GlobalTransform = FIK::PoseConverter::GetGlobalTransform((this + 432), v8);
        v11 = *(GlobalTransform + 16);
        v12 = v16 + 32 * v9;
        *v12 = vmulq_n_f32(*GlobalTransform, 1.0 / v5);
        *(v12 + 16) = v11;
        FIK::IKArray<unsigned int>::reserve(v18, v18[0] + 1);
        v13 = v18[0];
        *(v19 + 4 * v18[0]) = v9;
        v18[0] = v13 + 1;
        v7 = *(this + 40);
      }

      ++v8;
    }

    while (v8 < v7);
  }

  FIK::IKArray<FIK::Transform>::IKArray(a2, v15);
  result = FIK::IKArray<int>::IKArray(a2 + 4, v18);
  v15[0] = 0;
  if (v16)
  {
    result = (*(*v17 + 3))(v17, v16, 0, 8);
  }

  v18[0] = 0;
  if (v19)
  {
    return (*(*v20 + 24))(v20, v19, 0, 8);
  }

  return result;
}

uint64_t FIK::EnrollmentPoseSolverV4::exportRig(uint64_t result, const std::string::value_type *a2, size_t a3)
{
  if (*(result + 800) == 1)
  {
    v25 = v3;
    v26 = v4;
    v7 = result;
    v8 = FIK::EnrollmentPoseSolverV4::outputTargetJointPoses(result, v19);
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    v18 = FIK::defaultAllocator(v8);
    v9 = *v19;
    if (v19[0] < 1)
    {
      v11 = 0;
      v15 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(*(v7 + 48) + v10);
        FIK::IKArray<FIK::Segment *>::reserve(v16, v11 + 1);
        v14 = v16[0];
        v17[v16[0]] = v13;
        v11 = v14 + 1;
        v16[0] = v14 + 1;
        ++v12;
        v9 = *v19;
        v10 += 24;
      }

      while (v12 < v19[0]);
      v15 = v17;
    }

    result = FIK::Enrollment::SourceAndTargetDataLogger::exportToFile(v7 + 776, v15, v11, *v20, v9, a2, a3);
    v16[0] = 0;
    if (v17)
    {
      result = (*(*v18 + 3))(v18, v17, 0, 8);
    }

    v22 = 0;
    if (v23)
    {
      result = (*(*v24 + 24))(v24, v23, 0, 8);
    }

    *v19 = 0;
    if (*v20)
    {
      return (*(*v21 + 24))(v21, *v20, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::EnrollmentPoseSolverV4::logInput(uint64_t this)
{
  if (*(this + 800) == 1)
  {
    v1 = this;
    v17 = 1.0 / *(this + 100);
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    v30 = FIK::defaultAllocator(this);
    v2 = FIK::defaultAllocator(v30);
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    v27 = v2;
    if (*v1)
    {
      v3 = *(v1 + 16);
      v4 = v3 + 32 * *v1;
      do
      {
        v5 = *v3;
        FIK::IKArray<FIK::Segment *>::reserve(v28, v28[0] + 1);
        v6 = v28[0];
        v29[v28[0]] = v5;
        v28[0] = v6 + 1;
        v16 = *(v3 + 16);
        v2 = _ZN3FIK7IKArrayIDv3_fE7reserveEm(v25, v25[0] + 1);
        v26[v25[0]++] = vmulq_n_f32(v16, v17);
        v3 += 32;
      }

      while (v3 != v4);
    }

    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v24 = FIK::defaultAllocator(v2);
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    v21 = FIK::defaultAllocator(v24);
    v7 = *(v1 + 32);
    if (v7)
    {
      v8 = *(v1 + 48);
      v9 = v8 + 24 * v7;
      do
      {
        v10 = *v8;
        FIK::IKArray<FIK::Segment *>::reserve(v22, v22[0] + 1);
        v11 = v22[0];
        v23[v22[0]] = v10;
        v22[0] = v11 + 1;
        v12 = v17 * *(v8 + 16);
        FIK::IKArray<unsigned int>::reserve(v19, v19[0] + 1);
        v13 = v19[0];
        *&v20[v19[0]] = v12;
        v19[0] = v13 + 1;
        v8 += 24;
      }

      while (v8 != v9);
    }

    if (*(v1 + 800) & 1) != 0 && (FIK::Enrollment::SourceAndTargetDataLogger::exportOriginalSources(v1 + 776, v29, v28[0], v26, v25[0]), (*(v1 + 800)) && (FIK::Enrollment::SourceAndTargetDataLogger::exportEnrollmentData(v1 + 776, v23, v22[0], v20), (*(v1 + 800)))
    {
      v14 = *(v1 + 80);
      v18[0] = vmulq_n_f32(*(v1 + 64), v17);
      v18[1] = v14;
      this = FIK::Enrollment::SourceAndTargetDataLogger::exportAtlasData((v1 + 776), v18);
      v19[0] = 0;
      if (v20)
      {
        this = (*(*v21 + 3))(v21, v20, 0, 8);
      }

      v22[0] = 0;
      if (v23)
      {
        this = (*(*v24 + 24))(v24, v23, 0, 8);
      }

      v25[0] = 0;
      if (v26)
      {
        this = (*(*v27 + 24))(v27, v26, 0, 8);
      }

      v28[0] = 0;
      if (v29)
      {
        return (*(*v30 + 24))(v30, v29, 0, 8);
      }
    }

    else
    {
      v15 = std::__throw_bad_optional_access[abi:nn200100]();
      return FIK::EnrollmentPoseSolverV4::logOutput(v15);
    }
  }

  return this;
}

float32x4_t FIK::IKRigUtils::getGlobalRestTransformBetweenBonesSlow<FIK::MoCapBone>@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, float32x4_t *a4@<X8>, float a5@<S0>)
{
  FIK::IKRigUtils::getGlobalRestTransformSlow<FIK::MoCapBone>(a1, a2, v27);
  FIK::IKRigUtils::getGlobalRestTransformSlow<FIK::MoCapBone>(a1, a3, &v25);
  v8 = vmulq_f32(v27[1], xmmword_245A01F10);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vnegq_f32(v8);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27[0], v27[0]), v27[0], 0xCuLL), v10), v27[0], v9);
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), v10), v12, v9);
  v14 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), v12, v8, 3);
  v12.i64[0] = 0x4000000040000000;
  v12.i64[1] = 0x4000000040000000;
  v15 = vmlaq_f32(v27[0], v12, v14);
  v16 = vnegq_f32(v26);
  v17 = vtrn2q_s32(v26, vtrn1q_s32(v26, v16));
  v18 = vrev64q_s32(v26);
  v18.i32[0] = v16.i32[1];
  v18.i32[3] = v16.i32[2];
  v19 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v26, v8, 3), v18, v8, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v26, v16, 8uLL), *v8.f32, 1), vextq_s8(v17, v17, 8uLL), v8.f32[0]));
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v10), v25, v9);
  v21 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
  v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v10), v21, v9);
  result = vmulq_n_f32(vsubq_f32(vmlaq_f32(v25, v12, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v21, v8, 3)), v15), a5);
  *a4 = result;
  a4[1] = v19;
  return result;
}

uint64_t FIK::EnrollmentPoseSolverV4::rigParentJointIndex(FIK::EnrollmentPoseSolverV4 *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 80) <= a2 || (result = *(*(this + 42) + 544 * a2 + 4), result == -1))
  {
    FIK::EnrollmentPoseSolverV4::rigParentJointIndex();
    return 0xFFFFFFFFLL;
  }

  return result;
}

double FIK::EnrollmentPoseSolverV4::rigParentJointGlobalPose@<D0>(FIK::EnrollmentPoseSolverV4 *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2 || (v5 = FIK::EnrollmentPoseSolverV4::rigParentJointIndex(this, a2), v5 == -1))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *&v7 = 0;
    *(a3 + 16) = xmmword_245A01E80;
  }

  else
  {
    GlobalTransform = FIK::PoseConverter::GetGlobalTransform((this + 432), v5);
    v7 = *GlobalTransform;
    v8 = GlobalTransform[1];
    *a3 = *GlobalTransform;
    *(a3 + 16) = v8;
  }

  return *&v7;
}

float32x4_t *FIK::EnrollmentPoseSolverV4::rigJointToJointGlobalDirection@<X0>(FIK::EnrollmentPoseSolverV4 *this@<X0>, int a2@<W1>, int a3@<W2>, float32x4_t *a4@<X8>)
{
  v12 = *FIK::PoseConverter::GetGlobalTransform((this + 432), a2);
  result = FIK::PoseConverter::GetGlobalTransform((this + 432), a3);
  v8 = vsubq_f32(*result, v12);
  v9 = vmulq_f32(v8, v8);
  *v10.i32 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  v11 = 0uLL;
  if (*v10.i32 >= 0.1)
  {
    v11 = vdivq_f32(v8, vdupq_lane_s32(v10, 0));
  }

  *a4 = v11;
  return result;
}

float32x4_t *FIK::EnrollmentPoseSolverV4::sourceJointToJointGlobalDirection@<X0>(float32x4_t *result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  v6 = result[46].i64[0];
  v7 = (v6 + 48 * a2);
  if (v7[1].i8[0] != 1 || (v8 = (v6 + 48 * a3), (v8[1].i8[0] & 1) == 0))
  {
    v15 = *ikinemaLogObject();
    v16 = "(false) No source given for a joint";
    v17 = 0;
LABEL_8:
    result = ikinemaAssertHandler(v15, v17, "sourceJointToJointGlobalDirection", v16);
    v18 = 0uLL;
LABEL_9:
    *a5 = v18;
    return result;
  }

  v9 = result;
  v11 = a3;
  if (a4 == 2)
  {
    v47 = *FIK::PoseConverter::GetGlobalTransform(&result[27], a2);
    result = FIK::PoseConverter::GetGlobalTransform(&v9[27], v11);
    v21 = v9[46].i64[0];
    v22 = (v21 + 48 * a2);
    if (v22[1].i8[0])
    {
      v23 = (v21 + 48 * v11);
      if (v23[1].i8[0])
      {
        v24 = v47;
        v25 = vsubq_f32(v47, *result);
        v26 = vmulq_f32(v25, v25);
        v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
        if (v27 >= 0.1)
        {
          v29 = *v22;
          v30 = vsubq_f32(*v23, *v22);
          v31 = vmulq_f32(v30, v30);
          v31.f32[0] = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
          if (v31.f32[0] >= 0.1)
          {
            v33 = 0;
            v34 = vdivq_f32(v30, vdupq_lane_s32(*v31.f32, 0));
            v48 = vsubq_f32(v29, v47);
            v49 = v34;
            v35 = 0.0;
            v36 = 0.0;
            do
            {
              v37 = v48.f32[v33];
              v35 = v35 + (v49.f32[v33] * v37);
              v36 = v36 + (v37 * v37);
              ++v33;
            }

            while (v33 != 3);
            v38 = v36 - (v27 * v27);
            v39 = (v35 + v35);
            v40 = -(v38 - v39 * 0.25 * v39);
            if (v40 >= 0.0)
            {
              v43 = sqrtf(v40) + v39 * -0.5;
              v42 = vaddq_f32(v29, vmulq_n_f32(v34, v43));
            }

            else
            {
              v41 = ikinemaLogObject();
              result = ikinemaAssertHandler(*v41, 1, "lineSphereIntersection", "(false) Line and sphere don't intersect.");
              v24 = v47;
              v42 = 0uLL;
            }

            v12 = vsubq_f32(v42, v24);
            goto LABEL_13;
          }

          v28 = "(false) Line vector must not be zero length.";
        }

        else
        {
          v28 = "(false) Radius must be greater than zero.";
        }

        v32 = ikinemaLogObject();
        ikinemaAssertHandler(*v32, 1, "lineSphereIntersection", v28);
        v15 = *ikinemaLogObject();
        v16 = "(false) Joints have zero distance, cannot rotate the the rig joint to direction specified by them.";
LABEL_23:
        v17 = 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (a4 != 1)
    {
      v12 = 0uLL;
      if (a4)
      {
LABEL_13:
        v20 = vmulq_f32(v12, v12);
        v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
        if (v20.f32[0] >= 0.1)
        {
          v18 = vdivq_f32(v12, vdupq_lane_s32(*v20.f32, 0));
          goto LABEL_9;
        }

        v15 = *ikinemaLogObject();
        v16 = "(false) Source joints have zero distance, cannot rotate the the rig joint to direction specified by them.";
        goto LABEL_23;
      }

      v13 = *v7;
      v14 = *v8;
LABEL_12:
      v12 = vsubq_f32(v14, v13);
      goto LABEL_13;
    }

    result = FIK::PoseConverter::GetGlobalTransform(&result[27], a2);
    v19 = v9[46].i64[0] + 48 * v11;
    if (*(v19 + 16))
    {
      v13 = *result;
      v14 = *v19;
      goto LABEL_12;
    }
  }

  v44 = std::__throw_bad_optional_access[abi:nn200100]();
  return FIK::EnrollmentPoseSolverV4::transformRigJointByGlobalTransform(v44, v45, v46);
}

void *FIK::EnrollmentPoseSolverV4::transformRigJointByGlobalTransform(FIK::EnrollmentPoseSolverV4 *this, signed int a2, float32x4_t *a3)
{
  v6 = a2;
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform((this + 432), a2);
  v8 = *(GlobalTransform + 16);
  v9 = vnegq_f32(v8);
  v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
  v11 = a3[1];
  v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v11.f32, 1), vextq_s8(v10, v10, 8uLL), v11.f32[0]);
  v13 = vrev64q_s32(v8);
  v13.i32[0] = v9.i32[1];
  v13.i32[3] = v9.i32[2];
  v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v11, 3), v13, v11, 2), v12);
  v15 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v16 = vnegq_f32(v11);
  v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*GlobalTransform, *GlobalTransform), *GlobalTransform, 0xCuLL), v16), *GlobalTransform, v15);
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v16), v18, v15);
  v20 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v11, 3);
  v18.i64[0] = 0x4000000040000000;
  v18.i64[1] = 0x4000000040000000;
  v39 = vaddq_f32(*a3, vmlaq_f32(*GlobalTransform, v18, v20));
  v40 = v14;
  FIK::EnrollmentPoseSolverV4::rigParentJointGlobalPose(this, a2, v41);
  v21 = vmulq_f32(v41[1], xmmword_245A01F10);
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vnegq_f32(v21);
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41[0], v41[0]), v41[0], 0xCuLL), v23), v41[0], v22);
  v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v23), v25, v22);
  v27.i64[0] = 0x4000000040000000;
  v27.i64[1] = 0x4000000040000000;
  v28 = vmlaq_f32(v41[0], v27, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v25, v21, 3));
  v29 = vnegq_f32(v40);
  v30 = vtrn2q_s32(v40, vtrn1q_s32(v40, v29));
  v31 = vrev64q_s32(v40);
  v31.i32[0] = v29.i32[1];
  v31.i32[3] = v29.i32[2];
  v32 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v40, v21, 3), v31, v21, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v40, v29, 8uLL), *v21.f32, 1), vextq_s8(v30, v30, 8uLL), v21.f32[0]));
  v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v23), v39, v22);
  v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
  v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v23), v34, v22);
  v36 = *(this + 42) + 544 * a2;
  *(v36 + 64) = vsubq_f32(vmlaq_f32(v39, v27, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v34, v21, 3)), v28);
  *(v36 + 80) = v32;
  v37 = (*(this + 42) + 544 * a2 + 64);

  return FIK::PoseConverter::updatePose((this + 432), v6, v37);
}

float32x4_t *FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(void *a1, signed int a2, int a3, int a4, int a5, int a6, int a7)
{
  result = FIK::EnrollmentPoseSolverV4::rigJointToJointGlobalDirection(a1, a4, a5, &v55);
  v15 = vceqzq_f32(v55);
  v15.i32[3] = v15.i32[2];
  if ((vminvq_u32(v15) & 0x80000000) == 0)
  {
    v52 = v55;
    result = FIK::EnrollmentPoseSolverV4::sourceJointToJointGlobalDirection(a1, a4, a5, a7, &v54);
    v16 = vceqzq_f32(v54);
    v16.i32[3] = v16.i32[2];
    if ((vminvq_u32(v16) & 0x80000000) == 0)
    {
      v17 = vsubq_f32(v52, v54);
      v18 = vmulq_f32(v17, v17);
      if ((v18.f32[2] + vaddv_f32(*v18.f32)) >= 0.000025)
      {
        v19 = a1[42] + 544 * a2;
        v49 = *(v19 + 64);
        v50 = *(v19 + 80);
        v51 = v54;
        v20 = *FIK::PoseConverter::GetGlobalTransform((a1 + 54), a3);
        v21 = vmulq_f32(v52, v51);
        v22 = v21.f32[2] + vaddv_f32(*v21.f32);
        v23 = xmmword_245A01E80;
        if (v22 < 1.0)
        {
          v24 = v22;
          if (v22 >= -0.999999)
          {
            *&v24 = sqrtf((v22 + 1.0) + (v22 + 1.0));
            v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vnegq_f32(v52)), v51, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL));
            v33 = vdivq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vdupq_lane_s32(*&v24, 0));
            v33.f32[3] = *&v24 * 0.5;
            v34 = vmulq_f32(v33, v33);
            v35 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
            if (vaddv_f32(v35) != 0.0)
            {
              v36 = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
              v37 = vrsqrte_f32(v36);
              v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
              v23 = vmulq_n_f32(v33, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
            }
          }

          else
          {
            v25 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
            v26 = vmlaq_f32(vmulq_f32(v25, xmmword_245A01E90), xmmword_245A01EA0, v52);
            v27 = vmulq_f32(v26, v26);
            v28 = sqrtf(v27.f32[1] + (v27.f32[2] + v27.f32[0]));
            if (fabsf(v28) >= 0.000000001)
            {
              v30 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
              v30.i32[3] = 0;
            }

            else
            {
              v29 = vmlaq_f32(vmulq_f32(v25, xmmword_245A01EB0), xmmword_245A01EC0, v52);
              v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
              v31 = vmulq_f32(v29, v29);
              v28 = sqrtf(v31.f32[1] + (v31.f32[2] + v31.f32[0]));
            }

            v39 = 1.0 / v28;
            v40 = v28 == 0.0;
            v41 = 0.0;
            if (!v40)
            {
              v41 = v39;
            }

            v23 = vmulq_n_f32(v30, v41);
            v23.i32[3] = 0;
          }
        }

        v42 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        v43 = vnegq_f32(v23);
        v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v43), v20, v42);
        v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
        v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), v43), v45, v42);
        v47 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), v45, v23, 3);
        v45.i64[0] = 0x4000000040000000;
        v45.i64[1] = 0x4000000040000000;
        v53[0] = vsubq_f32(v20, vmlaq_f32(v20, v45, v47));
        v53[1] = v23;
        result = FIK::EnrollmentPoseSolverV4::transformRigJointByGlobalTransform(a1, a2, v53);
        v48 = a1[42] + 544 * a2;
        if (a6)
        {
          if (a6 != 1)
          {
            return result;
          }

          *(v48 + 80) = v50;
        }

        else
        {
          *(v48 + 64) = v49;
        }

        return FIK::PoseConverter::updatePose((a1 + 54), a2, (a1[42] + 544 * a2 + 64));
      }
    }
  }

  return result;
}

__n128 FIK::EnrollmentPoseSolverV4::setNeckCurving(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[48].n128_u8[0] = a2[1].n128_u8[0];
  a1[47] = result;
  return result;
}

void *FIK::EnrollmentPoseSolverV4::adjustRigNeckJoints(float32x4_t *this)
{
  v5 = FIK::EnrollmentPoseSolverV4::translateWholeRigToPlaceJointAtSource(this, this[39].i32[3]);
  if (this[48].i8[0] != 1)
  {
    return 0;
  }

  v6 = this[46].i64[0];
  v7 = (v6 + 48 * this[37].i32[2]);
  if (v7[1].i8[0])
  {
    v8 = (v6 + 48 * this[39].i32[3]);
    if (v8[1].i8[0])
    {
      v9 = this[47].i64[0];
      v10 = this[47].i64[1];
      v11 = *v7;
      v13 = this[4];
      v12 = this[5];
      v14 = *(v6 + 48 * this[40].i32[0] + 32);
      v15 = *(v6 + 48 * this[40].i32[1] + 32);
      v16 = *(v6 + 48 * this[40].i32[2] + 32);
      v17 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v18 = vmlaq_f32(vmulq_f32(v12, xmmword_245A01F20), xmmword_245A01EA0, v17);
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v20 = *(v6 + 48 * this[40].i32[3] + 32);
      v83[0] = *v8;
      v83[1] = v13;
      v69 = v83[0];
      v70 = v13;
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v12)), v19, v17);
      v22 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v19, v12, 3);
      v12.i64[0] = 0x4000000040000000;
      v12.i64[1] = 0x4000000040000000;
      v23 = vmlaq_f32(xmmword_245A01EA0, v12, v22);
      v23.i32[3] = 0;
      v81 = vsubq_f32(v83[0], v11);
      v82 = v23;
      v81.i32[0] = 0;
      v82.i32[0] = 0;
      v79 = v10;
      v80 = v9;
      v76[0] = 0;
      v76[1] = 0;
      v77 = 0;
      v78 = FIK::defaultAllocator(v5);
      FIK::IKArray<unsigned int>::reserve(v76, 1uLL);
      v24 = v76[0];
      v77[v76[0]] = v14;
      v76[0] = v24 + 1;
      FIK::IKArray<unsigned int>::reserve(v76, v24 + 2);
      v25 = v76[0];
      v77[v76[0]] = v15;
      v76[0] = v25 + 1;
      FIK::IKArray<unsigned int>::reserve(v76, v25 + 2);
      v26 = v76[0];
      v77[v76[0]] = v16;
      v76[0] = v26 + 1;
      FIK::IKArray<unsigned int>::reserve(v76, v26 + 2);
      v27 = v77;
      v28 = v76[0];
      v77[v76[0]] = v20;
      v76[0] = v28 + 1;
      FIK::scaleChainToFitCurve(v83, &v81, &v80, &v79, v27, v28 + 1, &v71, 2.0, 0.1, v29);
      v30 = v75;
      if (v75 == 1)
      {
        v31 = v71;
        v3 = v72;
        v1 = v74;
        if (v72)
        {
          v32 = 16 * v72;
          v33 = (*(*v74 + 16))(v74, 16 * v72, 16);
          v2 = v33;
          if (v32)
          {
            bzero(v33, 16 * v3);
          }
        }

        else
        {
          v2 = 0;
        }

        v34 = v71;
        if (v71)
        {
          v35 = 0;
          v36 = v73;
          do
          {
            v2[v35] = *(v36 + v35 * 16);
            ++v35;
            --v34;
          }

          while (v34);
        }
      }

      else
      {
        v31 = 0;
      }

      if (v75 == 1)
      {
        v71 = 0;
        if (v73)
        {
          (*(*v74 + 24))(v74, v73, 0, 8);
        }
      }

      if (!v30)
      {
        goto LABEL_39;
      }

      if (v3)
      {
        v37 = 16 * v3;
        v38 = (*(*v1 + 16))(v1, v37, 16);
        v39 = v38;
        if (v37)
        {
          bzero(v38, v37);
        }

        if (!v31)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v39 = 0;
        if (!v31)
        {
LABEL_26:
          v44 = vsubq_f32(v39[v31 - 1], v70);
          v45 = vmulq_f32(v44, v44);
          if ((v45.f32[2] + vaddv_f32(*v45.f32)) >= 0.04)
          {
            FIK::EnrollmentPoseSolverV4::adjustRigNeckJoints();
          }

          v46 = this[46].i64[0] + 48 * this[40].i32[0];
          if (*(v46 + 16) == 1)
          {
            *v46 = *v39;
          }

          else
          {
            *v46 = *v39;
            *(v46 + 16) = 1;
          }

          v47 = this[46].i64[0] + 48 * this[40].i32[1];
          if (*(v47 + 16) == 1)
          {
            *v47 = v39[1];
          }

          else
          {
            *v47 = v39[1];
            *(v47 + 16) = 1;
          }

          v48 = this[46].i64[0] + 48 * this[40].i32[2];
          if (*(v48 + 16) == 1)
          {
            *v48 = v39[2];
          }

          else
          {
            *v48 = v39[2];
            *(v48 + 16) = 1;
          }

          v49 = v39[1];
          v50 = vsubq_f32(v69, *v39);
          v51 = vmulq_f32(v50, v50);
          v52 = vsubq_f32(*v39, v49);
          v53 = vmulq_f32(v52, v52);
          v54 = sqrtf(v53.f32[2] + vaddv_f32(*v53.f32));
          v55 = v39[2];
          v56 = vsubq_f32(v49, v55);
          v57 = vmulq_f32(v56, v56);
          v58 = sqrtf(v57.f32[2] + vaddv_f32(*v57.f32));
          v59 = vsubq_f32(v55, v70);
          v60 = vmulq_f32(v59, v59);
          v61 = this[40].i32[0];
          v62 = sqrtf(v60.f32[2] + vaddv_f32(*v60.f32));
          FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>(&this[20], v61, sqrtf(v51.f32[2] + vaddv_f32(*v51.f32)));
          FIK::PoseConverter::updatePose(&this[27], v61, (this[21].i64[0] + 544 * v61 + 64));
          v63 = this[40].i32[1];
          FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>(&this[20], v63, v54);
          FIK::PoseConverter::updatePose(&this[27], v63, (this[21].i64[0] + 544 * v63 + 64));
          v64 = this[40].i32[2];
          FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>(&this[20], v64, v58);
          FIK::PoseConverter::updatePose(&this[27], v64, (this[21].i64[0] + 544 * v64 + 64));
          v65 = this[40].i32[3];
          FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>(&this[20], v65, v62);
          FIK::PoseConverter::updatePose(&this[27], v65, (this[21].i64[0] + 544 * v65 + 64));
          FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[39].i32[3], this[39].i32[3], this[39].i32[3], this[40].i32[0], 0, 0);
          FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[40].i32[0], this[40].i32[0], this[40].i32[0], this[40].i32[1], 0, 0);
          FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[40].i32[1], this[40].i32[1], this[40].i32[1], this[40].i32[2], 0, 0);
          FIK::EnrollmentPoseSolverV4::rotateRigJointToAlignWithSource(this, this[40].i32[2], this[40].i32[2], this[40].i32[2], this[40].i32[3], 0, 0);
          (*(*v1 + 24))(v1, v39, 0, 8);
          if (v2)
          {
            (*(*v1 + 24))(v1, v2, 0, 8);
          }

LABEL_39:
          v76[0] = 0;
          if (v77)
          {
            (*(*v78 + 3))(v78, v77, 0, 8);
          }

          return v30;
        }
      }

      v40 = v31;
      v41 = v39;
      v42 = v2;
      do
      {
        v43 = *v42++;
        *v41++ = v43;
        --v40;
      }

      while (v40);
      goto LABEL_26;
    }
  }

  v67 = std::__throw_bad_optional_access[abi:nn200100]();
  return FIK::EnrollmentPoseSolverV4::translateWholeRigToPlaceJointAtSource(v67, v68);
}

void *FIK::EnrollmentPoseSolverV4::translateWholeRigToPlaceJointAtSource(FIK::EnrollmentPoseSolverV4 *this, int a2)
{
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform((this + 432), a2);
  v5 = (*(this + 92) + 48 * a2);
  if (v5[1].i8[0])
  {
    v9[0] = vsubq_f32(*v5, *GlobalTransform);
    v9[1] = xmmword_245A01E80;
    return FIK::EnrollmentPoseSolverV4::transformRigJointByGlobalTransform(this, *(this + 148), v9);
  }

  else
  {
    v7 = std::__throw_bad_optional_access[abi:nn200100]();
    return FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices(v7, v8);
  }
}

_DWORD *FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices(_DWORD *a1, uint64_t a2)
{
  *a1 = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("hips_joint", 0xAuLL, (a2 + 208));
  a1[1] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("spine_6_joint", 0xDuLL, (a2 + 208));
  a1[2] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("spine_7_joint", 0xDuLL, (a2 + 208));
  a1[3] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("left_shoulder_1_joint", 0x15uLL, (a2 + 208));
  a1[4] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("left_arm_joint", 0xEuLL, (a2 + 208));
  a1[5] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("left_forearm_joint", 0x12uLL, (a2 + 208));
  a1[6] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("left_hand_joint", 0xFuLL, (a2 + 208));
  a1[7] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("right_shoulder_1_joint", 0x16uLL, (a2 + 208));
  a1[8] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("right_arm_joint", 0xFuLL, (a2 + 208));
  a1[9] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("right_forearm_joint", 0x13uLL, (a2 + 208));
  a1[10] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("right_hand_joint", 0x10uLL, (a2 + 208));
  a1[11] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("neck_1_joint", 0xCuLL, (a2 + 208));
  a1[12] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("neck_2_joint", 0xCuLL, (a2 + 208));
  a1[13] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("neck_3_joint", 0xCuLL, (a2 + 208));
  a1[14] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("neck_4_joint", 0xCuLL, (a2 + 208));
  a1[15] = FIK::IKRigUtils::getBoneIndex<FIK::MoCapBone,void>("head_joint", 0xAuLL, (a2 + 208));
  if (*a1 == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[1] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[2] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[3] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[4] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[5] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[6] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[7] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[8] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[9] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[10] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[11] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[12] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[13] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[14] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  if (a1[15] == -1)
  {
    FIK::EnrollmentPoseSolverV4::RigJointIndices::RigJointIndices();
  }

  return a1;
}

_BYTE *FIK::dbgVectorToString@<X0>(float32x4_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = vmulq_f32(v3, v3);
  if (sqrtf(v4.f32[2] + vaddv_f32(*v4.f32)) >= 0.001)
  {
    snprintf(__str, 0x64uLL, "(%6.2f %6.2f %6.2f)", v3.f32[0], v3.f32[1], v3.f32[2]);
    result = std::string::basic_string[abi:nn200100]<0>(a2, __str);
    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *MEMORY[0x277D85DE8];

    return std::string::basic_string[abi:nn200100]<0>(a2, "Identity");
  }

  return result;
}

void FIK::dbgTransformToString(int32x4_t *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v26 = this[1];
  v5 = vmulq_f32(v4, v4);
  v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  v7 = vabsq_f32(vaddq_f32(vabsq_f32(v26), xmmword_245A03460));
  v8 = vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)));
  if (v6 >= 0.001 || v8 >= 0.00001)
  {
    if (v6 < 0.001)
    {
      __str[0] = 0;
    }

    else
    {
      snprintf(__str, 0x64uLL, "translation=(%6.2f %6.2f %6.2f)", v4.f32[0], v4.f32[1], v4.f32[2]);
    }

    if (v8 < 0.00001)
    {
      __s[0] = 0;
    }

    else
    {
      *v24 = 0u;
      *&v23.__r_.__value_.__l.__data_ = 0u;
      *&v22.__r_.__value_.__l.__data_ = 0u;
      FIK::dbgQuatToAxes(&v26, v24, &v23, &v22);
      snprintf(__s, 0xC8uLL, "rotation=(x:(%6.3f %6.3f %6.3f) y:(%6.3f %6.3f %6.3f) z:(%6.3f %6.3f %6.3f))", *v24, *(v24 + 1), *&v24[1], *&v23.__r_.__value_.__l.__data_, *(v23.__r_.__value_.__r.__words + 1), *&v23.__r_.__value_.__r.__words[1], *&v22.__r_.__value_.__l.__data_, *(v22.__r_.__value_.__r.__words + 1), *&v22.__r_.__value_.__r.__words[1]);
    }

    if (v6 < 0.001)
    {
      v10 = &unk_245A04BAE;
    }

    else
    {
      v10 = " ";
    }

    std::string::basic_string[abi:nn200100]<0>(v24, v10);
    std::string::basic_string[abi:nn200100]<0>(&v22, __str);
    if ((v25 & 0x80u) == 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v12 = v25;
    }

    else
    {
      v12 = v24[1];
    }

    v13 = std::string::append(&v22, v11, v12);
    v14 = v13->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:nn200100]<0>(__p, __s);
    if ((v21 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = __p[1];
    }

    v17 = std::string::append(&v23, v15, v16);
    v18 = v17->__r_.__value_.__r.__words[2];
    *a2 = *&v17->__r_.__value_.__l.__data_;
    *(a2 + 16) = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    std::string::basic_string[abi:nn200100]<0>(a2, "Identity");
  }
}

void FIK::EnrollmentPoseSolverV4::dbgPrintRigJoint(FIK::EnrollmentPoseSolverV4 *this, int a2)
{
  v5 = *(this + 42);
  v6 = v5 + 544 * a2;
  if (*(v6 + 16))
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = &unk_245A04BAE;
  }

  v8 = (v5 + 544 * a2);
  v9 = v8[5];
  v37[0] = v8[4];
  v37[1] = v9;
  GlobalTransform = FIK::PoseConverter::GetGlobalTransform((this + 432), a2);
  v11 = *(GlobalTransform + 16);
  v36[0] = *GlobalTransform;
  v36[1] = v11;
  v12 = vmulq_f32(v37[0], v37[0]);
  v13 = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v14 = *(this + 92) + 48 * a2;
  v15 = *(v14 + 16);
  if (v15 == 1)
  {
    v16 = *v14;
    *(v35.i64 + 1) = *(v14 + 1);
    v35.i64[1] = *(v14 + 8);
    v35.i8[0] = v16;
    v28 = v35;
  }

  else
  {
    v28 = 0u;
    v35 = 0u;
  }

  v17 = *(v14 + 32);
  v27 = v36[0];
  if (v17 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v13 - v17;
  }

  FIK::dbgTransformToString(v37, v33);
  FIK::dbgTransformToString(v36, v31);
  FIK::dbgVectorToString(&v35, __p);
  v20 = vabds_f32(v13, v17) > 0.1 && v17 > 0.0;
  putchar(10);
  printf(" %2d %s:\n", a2, v7);
  if (v34 >= 0)
  {
    v21 = v33;
  }

  else
  {
    v21 = v33[0];
  }

  printf("  Local  pose:         %s\n", v21);
  if (v32 >= 0)
  {
    v22 = v31;
  }

  else
  {
    v22 = v31[0];
  }

  printf("  Global pose:         %s\n", v22);
  printf("  Length:              %5.2f\n", v13);
  if (v15)
  {
    v23 = vsubq_f32(v27, v28);
    v24 = vmulq_f32(v23, v23);
    v25 = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
    if (v30 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    printf("  Input  position:     %s\n", v26);
    printf("  Distance from input: %5.2f\n", v25);
  }

  if (v20)
  {
    printf("  Input  length:       %5.2f\n", v17);
    printf("  Length difference from input: %5.2f\n", v18);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }
}

float32x4_t FIK::dbgQuatToAxes(int32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v8 = *a1;
  v9 = vmulq_f32(v8, v8);
  if (fabsf(sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) + -1.0) >= 0.00001)
  {
    v24 = ikinemaLogObject();
    ikinemaAssertHandler(*v24, 0, "dbgQuatToAxes", "(quat.isNormalised()) Quaternion must be normalized");
    v8 = *a1;
  }

  v10 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v11 = vmlaq_f32(vmulq_f32(v8, xmmword_245A01EB0), xmmword_245A01F30, v10);
  v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v8)), v12, v10);
  v14 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), v12, v8, 3);
  result.i64[0] = 0x4000000040000000;
  result.i64[1] = 0x4000000040000000;
  *a2 = vmlaq_f32(xmmword_245A01F30, result, v14);
  v16 = vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL);
  v17 = vmlaq_f32(vmulq_f32(*a1, xmmword_245A01F20), xmmword_245A01EA0, v16);
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(*a1)), v18, v16);
  *a3 = vmlaq_f32(xmmword_245A01EA0, result, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, *a1, 3));
  v20 = vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL);
  v21 = vmlaq_f32(vmulq_f32(*a1, xmmword_245A01E90), xmmword_245A01EC0, v20);
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(*a1)), v22, v20);
  *a4 = vmlaq_f32(xmmword_245A01EC0, result, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v22, *a1, 3));
  return result;
}

void *FIK::IKArray<FIK::Transform>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Transform>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      *v7 = *v8;
      v7[1] = v8[1];
      v8 += 2;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<int>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<float>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8++;
      *v7++ = v9;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void *FIK::IKArray<FIK::EnrollmentPoseSolverV4::TargetJointData>::IKArray<FIK::EnrollmentPoseSolverV4::TargetJointData,void>(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, (a3 + 7) & 0xFFFFFFFFFFFFFFF8, a4);
  if (a3)
  {
    v7 = a1[2];
    v8 = 24 * a3;
    do
    {
      v9 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v9;
      v7 += 24;
      a2 = (a2 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return a1;
}

uint64_t *FIK::IKArray<FIK::Transform>::resize(uint64_t *result, unint64_t a2, _OWORD *a3)
{
  v4 = result;
  if (*result <= a2)
  {
    result = FIK::IKArray<FIK::Transform>::reserve(result, a2);
    v6 = *v4;
    if (a2 != *v4)
    {
      v7 = (v4[2] + 32 * v6);
      v8 = v6 - a2;
      do
      {
        *v7 = *a3;
        v7[1] = a3[1];
        v7 += 2;
      }

      while (!__CFADD__(v8++, 1));
    }
  }

  *v4 = a2;
  return result;
}

void *_ZN3FIK7IKArrayIDv3_fE7reserveEm(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 16 * v4, 16);
      v6 = v5;
      if (16 * v4)
      {
        bzero(v5, 16 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, v2[2], 16 * *v2);
    v7 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v8 = *(*result + 24);

      return v8();
    }
  }

  return result;
}

uint64_t *FIK::IKArray<FIK::EnrollmentPoseSolverV4::RigJointInputData>::resize(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*result <= a2)
  {
    result = FIK::IKArray<FIK::EnrollmentPoseSolverV4::RigJointInputData>::reserve(result, a2);
    v6 = *v4;
    if (a2 != *v4)
    {
      v7 = v4[2] + 48 * v6 + 16;
      v8 = v6 - a2;
      do
      {
        *(v7 - 16) = 0;
        *v7 = 0;
        if (*(a3 + 16) == 1)
        {
          *(v7 - 16) = *a3;
          *v7 = 1;
        }

        *(v7 + 16) = *(a3 + 32);
        v7 += 48;
      }

      while (!__CFADD__(v8++, 1));
    }
  }

  *v4 = a2;
  return result;
}

uint64_t *FIK::IKArray<FIK::EnrollmentPoseSolverV4::RigJointInputData>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 48 * v4, 16);
      v6 = v5;
      if (48 * v4)
      {
        bzero(v5, 48 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[2];
    v8 = *v2;
    if (*v2)
    {
      v9 = v6 + 16;
      v10 = (v7 + 32);
      do
      {
        *(v9 - 16) = 0;
        *v9 = 0;
        if (*(v10 - 16) == 1)
        {
          *(v9 - 1) = *(v10 - 2);
          *v9 = 1;
        }

        v11 = *v10;
        v10 += 12;
        *(v9 + 4) = v11;
        v9 += 48;
        --v8;
      }

      while (v8);
      v7 = v2[2];
    }

    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v12 = *(*result + 24);

      return v12();
    }
  }

  return result;
}

uint64_t FIK::IKRigUtils::getGlobalRestTransformSlow<FIK::MoCapBone>@<X0>(uint64_t result@<X0>, int a2@<W1>, float32x4_t *a3@<X8>)
{
  v3 = *(result + 16);
  v4 = (v3 + 544 * a2);
  v5 = v4[5];
  *a3 = v4[4];
  v6 = v4->u32[1];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *a3;
    v8.i64[0] = 0x4000000040000000;
    v8.i64[1] = 0x4000000040000000;
    do
    {
      v9 = (v3 + 544 * v6);
      v10 = vnegq_f32(v5);
      v11 = vtrn2q_s32(v5, vtrn1q_s32(v5, v10));
      v12 = v9[5];
      v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v10, 8uLL), *v12.f32, 1), vextq_s8(v11, v11, 8uLL), v12.f32[0]);
      v14 = vrev64q_s32(v5);
      v14.i32[0] = v10.i32[1];
      v14.i32[3] = v10.i32[2];
      v5 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v12, 3), v14, v12, 2), v13);
      v15 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
      v16 = vnegq_f32(v12);
      v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v16), v7, v15);
      v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v16), v18, v15);
      v7 = vaddq_f32(v9[4], vmlaq_f32(v7, v8, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v12, 3)));
      v6 = v9->u32[1];
    }

    while ((v6 & 0x80000000) == 0);
    *a3 = v7;
  }

  a3[1] = v5;
  return result;
}

void FIK::IKRigUtils::setBoneLength<FIK::MoCapBone>(uint64_t a1, int a2, float a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16) + 544 * a2;
  v4 = *(v3 + 64);
  v5 = vmulq_f32(v4, v4);
  v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  if (v6 <= 0.0)
  {
    if (a3 > 0.0)
    {
      *(v3 + 64) = LODWORD(a3);
      v7 = ikinemaLogObject()[2];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 16))
        {
          v8 = *(v3 + 8);
        }

        else
        {
          v8 = &unk_245A04BAE;
        }

        v10 = 136315394;
        v11 = "setBoneLength";
        v12 = 2080;
        v13 = v8;
        _os_log_impl(&dword_245976000, v7, OS_LOG_TYPE_DEFAULT, "%s: Trying to set joint length to %s which has zero length. Joint extended only along the X axis.", &v10, 0x16u);
      }
    }
  }

  else
  {
    *(v3 + 64) = vmulq_n_f32(v4, a3 / v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ikinema::GenerateMocapConstraintTargetsAlgorithmImpl::process(float32x4_t *a1, uint64_t a2, void *a3)
{
  v6 = ikinema::BufferContainer::buffer(a3, a1[10].i64[1]);
  v7 = ikinema::Buffer::arrayView<FIK::Transform>(v6);
  v9 = v8;
  v10 = ikinema::BufferContainer::buffer(a3, a1[11].i64[0]);
  v11 = ikinema::Buffer::arrayView<FIK::Transform>(v10);
  v12 = ikinema::ConstraintCollection::elementCount((a2 + 8));
  if (a1[3].i8[0] == 1)
  {
    ikinema::SourceFKCompute::resetFkState(&a1[5].i64[1], v7, v9);
  }

  if (v12)
  {
    v13 = 0;
    for (i = 0; i != v12; ++i)
    {
      v15 = a1[4].i64[1];
      v16 = *(v15 + v13);
      if (v16 == -1)
      {
        *v11 = 0u;
        v19 = xmmword_245A01E80;
      }

      else
      {
        v17 = ikinema::ConstraintCollection::element((a2 + 8));
        if (a1[3].i8[0] == 1)
        {
          GlobalOf = ikinema::SourceFKCompute::getGlobalOf(&a1[5].u32[2], v16);
        }

        else
        {
          GlobalOf = v7 + 32 * v16;
        }

        v20 = *(GlobalOf + 16);
        v21 = vnegq_f32(v20);
        v22 = vtrn2q_s32(v20, vtrn1q_s32(v20, v21));
        v23 = a1[2];
        v24 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v20, v21, 8uLL), *v23.f32, 1), vextq_s8(v22, v22, 8uLL), v23.f32[0]);
        v25 = vrev64q_s32(v20);
        v25.i32[0] = v21.i32[1];
        v25.i32[3] = v21.i32[2];
        v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v20, v23, 3), v25, v23, 2), v24);
        v27 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
        v28 = vnegq_f32(v23);
        v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*GlobalOf, *GlobalOf), *GlobalOf, 0xCuLL), v28), *GlobalOf, v27);
        v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
        v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v28), v30, v27);
        v32 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), v30, v23, 3);
        v30.i64[0] = 0x4000000040000000;
        v30.i64[1] = 0x4000000040000000;
        v47 = v26;
        v48 = vaddq_f32(a1[1], vmlaq_f32(*GlobalOf, v30, v32));
        v33 = (*(*v17 + 32))(v17);
        v34 = *(v33 + 16);
        v35 = vnegq_f32(v34);
        v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
        v37 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v34, v35, 8uLL), *v47.f32, 1), vextq_s8(v36, v36, 8uLL), v47.f32[0]);
        v38 = vrev64q_s32(v34);
        v38.i32[0] = v35.i32[1];
        v38.i32[3] = v35.i32[2];
        v19 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v34, v47, 3), v38, v47, 2), v37);
        if (*(v15 + v13 + 8) == 1)
        {
          v39 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
          v40 = vnegq_f32(v47);
          v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v33, *v33), *v33, 0xCuLL), v40), *v33, v39);
          v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
          v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v40), v42, v39);
          v44 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v42, v47, 3);
          v42.i64[0] = 0x4000000040000000;
          v42.i64[1] = 0x4000000040000000;
          v45 = vmlaq_f32(*v33, v42, v44);
        }

        else
        {
          v45 = *v33;
        }

        *v11 = vaddq_f32(v48, v45);
      }

      v11[1] = v19;
      v11 += 2;
      v13 += 16;
    }
  }

  return 0;
}

uint64_t *ikinema::SourceFKCompute::resetFkState(uint64_t *result, uint64_t a2, uint64_t a3)
{
  result[8] = a2;
  result[9] = a3;
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = 0;
    v6 = (a2 + 16);
    do
    {
      if (*(result[2] + 8 * v5) == -1)
      {
        v8 = result[6] + v4;
        if (*(v8 + 32) == 1)
        {
          *v8 = *(v6 - 1);
          *(v8 + 16) = *v6;
        }

        else
        {
          *v8 = *(v6 - 1);
          *(v8 + 16) = *v6;
          *(v8 + 32) = 1;
        }
      }

      else
      {
        v7 = result[6] + v4;
        if (*(v7 + 32) == 1)
        {
          *(v7 + 32) = 0;
        }
      }

      ++v5;
      v6 += 2;
      v4 += 48;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t ikinema::SourceFKCompute::getGlobalOf(ikinema::SourceFKCompute *this, uint64_t a2)
{
  v2 = *(this + 6) + 48 * a2;
  if ((*(v2 + 32) & 1) == 0)
  {
    GlobalOf = ikinema::SourceFKCompute::getGlobalOf(this, *(*(this + 2) + 8 * a2));
    v6 = *(this + 8) + 32 * a2;
    v7 = *(v6 + 16);
    v8 = vnegq_f32(v7);
    v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
    v10 = *(GlobalOf + 16);
    v11 = vrev64q_s32(v7);
    v11.i32[0] = v8.i32[1];
    v11.i32[3] = v8.i32[2];
    v12 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, v10, 3), v11, v10, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v10.f32, 1), vextq_s8(v9, v9, 8uLL), v10.f32[0]));
    v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
    v14 = vnegq_f32(v10);
    v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v6, *v6), *v6, 0xCuLL), v14), *v6, v13);
    v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
    v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v14), v16, v13);
    v18 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v16, v10, 3);
    v16.i64[0] = 0x4000000040000000;
    v16.i64[1] = 0x4000000040000000;
    v19 = vaddq_f32(*GlobalOf, vmlaq_f32(*v6, v16, v18));
    if ((*(v2 + 32) & 1) == 0)
    {
      *(v2 + 32) = 1;
    }

    *v2 = v19;
    *(v2 + 16) = v12;
  }

  return v2;
}

uint64_t ikinema::GenerateMocapConstraintTargetsAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = a2[2];
  v3 = 72 * *a2;
  v4 = (v2 + 56);
  v5 = v3;
  while (1)
  {
    v6 = *v4;
    v4 += 9;
    if (v6 == *(a1 + 168))
    {
      break;
    }

    v5 -= 72;
    if (!v5)
    {
      return 1;
    }
  }

  v7 = (v2 + 56);
  while (1)
  {
    v8 = *v7;
    v7 += 9;
    if (v8 == *(a1 + 176))
    {
      break;
    }

    v3 -= 72;
    if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ikinema::GenerateMocapConstraintTargetsAlgorithmImpl::GenerateMocapConstraintTargetsAlgorithmImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_28589BBE8;
  *(a1 + 16) = *(a2 + 272);
  *(a1 + 32) = *(a2 + 288);
  *(a1 + 48) = 1;
  *a1 = &unk_28589BB58;
  v8 = FIK::defaultAllocator(a1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v8;
  ikinema::SourceFKCompute::SourceFKCompute((a1 + 88), a2);
  *(a1 + 168) = a3;
  *(a1 + 176) = a4;
  FIK::IKArray<std::string_view>::reserve((a1 + 56), *(a2 + 176));
  v9 = *(a2 + 176);
  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = (*(a2 + 192) + 204);
    v12 = v9 << 8;
    do
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      FIK::IKArray<std::string_view>::reserve((a1 + 56), v10 + 1);
      v15 = *(a1 + 72) + 16 * *(a1 + 56);
      *v15 = v13;
      *(v15 + 8) = v14;
      v10 = *(a1 + 56) + 1;
      *(a1 + 56) = v10;
      v11 += 256;
      v12 -= 256;
    }

    while (v12);
  }

  return a1;
}

uint64_t ikinema::GenerateMocapConstraintTargetsAlgorithm::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a3;
  v6 = a2;
  return ikinema::AlgorithmHandle::make<ikinema::GenerateMocapConstraintTargetsAlgorithmImpl,FIK::MoCapRig const&,ikinema::BufferKey &,ikinema::BufferKey &>(a1, &v6, &v5, a4);
}

uint64_t ikinema::AlgorithmHandle::make<ikinema::GenerateMocapConstraintTargetsAlgorithmImpl,FIK::MoCapRig const&,ikinema::BufferKey &,ikinema::BufferKey &>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = FIK::FIKAlloc(0xC0, 16);
  if (result)
  {
    result = ikinema::GenerateMocapConstraintTargetsAlgorithmImpl::GenerateMocapConstraintTargetsAlgorithmImpl(result, a1, *a2, *a3);
  }

  *a4 = result;
  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::GenerateMocapConstraintTargetsAlgorithm>::typeId()
{
  result = "N7ikinema39GenerateMocapConstraintTargetsAlgorithmE";
  if (("N7ikinema39GenerateMocapConstraintTargetsAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema39GenerateMocapConstraintTargetsAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v2 = 5381;
    do
    {
      result = v2;
      v3 = *v1++;
      v2 = (33 * v2) ^ v3;
    }

    while (v3);
  }

  return result;
}

void ikinema::GenerateMocapConstraintTargetsAlgorithmImpl::~GenerateMocapConstraintTargetsAlgorithmImpl(ikinema::GenerateMocapConstraintTargetsAlgorithmImpl *this)
{
  *(this + 15) = 0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(**(this + 18) + 24))(*(this + 18), v2, 0, 8);
  }

  *(this + 11) = 0;
  v3 = *(this + 13);
  if (v3)
  {
    (*(**(this + 14) + 24))(*(this + 14), v3, 0, 8);
  }

  *(this + 7) = 0;
  v4 = *(this + 9);
  if (v4)
  {
    (*(**(this + 10) + 24))(*(this + 10), v4, 0, 8);
  }
}

{
  *(this + 15) = 0;
  v2 = *(this + 17);
  if (v2)
  {
    (*(**(this + 18) + 24))(*(this + 18), v2, 0, 8);
  }

  *(this + 11) = 0;
  v3 = *(this + 13);
  if (v3)
  {
    (*(**(this + 14) + 24))(*(this + 14), v3, 0, 8);
  }

  *(this + 7) = 0;
  v4 = *(this + 9);
  if (v4)
  {
    (*(**(this + 10) + 24))(*(this + 10), v4, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

uint64_t *ikinema::SourceFKCompute::SourceFKCompute(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = FIK::defaultAllocator(a1);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v4;
  v5 = FIK::defaultAllocator(v4);
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = v5;
  v6 = *(a2 + 240);
  FIK::IKArray<unsigned long>::resize(a1, v6, &ikinema::kInvalidIndex);
  v12[0] = 0;
  v12[32] = 0;
  FIK::IKArray<std::optional<FIK::Transform>>::resize(a1 + 4, v6, v12);
  if (v6)
  {
    v7 = a1[2];
    v8 = (*(a2 + 256) + 4);
    do
    {
      v9 = *v8;
      v8 += 24;
      *v7++ = v9;
      --v6;
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *FIK::IKArray<std::optional<FIK::Transform>>::resize(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  if (*result <= a2)
  {
    result = FIK::IKArray<std::optional<FIK::Transform>>::reserve(result, a2);
    v6 = *v4;
    if (a2 != *v4)
    {
      v7 = (v4[2] + 48 * v6 + 32);
      v8 = v6 - a2;
      do
      {
        *(v7 - 32) = 0;
        *v7 = 0;
        if (*(a3 + 32) == 1)
        {
          *(v7 - 2) = *a3;
          *(v7 - 1) = *(a3 + 16);
          *v7 = 1;
        }

        v7 += 48;
      }

      while (!__CFADD__(v8++, 1));
    }
  }

  *v4 = a2;
  return result;
}

uint64_t *FIK::IKArray<std::optional<FIK::Transform>>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 48 * v4, 16);
      v6 = v5;
      if (48 * v4)
      {
        bzero(v5, 48 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[2];
    v8 = *v2;
    if (*v2)
    {
      v9 = v6 + 32;
      v10 = v7 + 16;
      do
      {
        *(v9 - 32) = 0;
        *v9 = 0;
        if (*(v10 + 16) == 1)
        {
          *(v9 - 2) = *(v10 - 16);
          *(v9 - 1) = *v10;
          *v9 = 1;
        }

        v9 += 48;
        v10 += 48;
        --v8;
      }

      while (v8);
      v7 = v2[2];
    }

    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v11 = *(*result + 24);

      return v11();
    }
  }

  return result;
}

void *ikinema::Constraint::boneName(ikinema::Constraint *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    v1 = *(this + 2);
    if (!v1)
    {
      return &unk_245A04BAE;
    }
  }

  v2 = *(*(*(*&v1[*(*v1 - 264)] + 200))(&v1[*(*v1 - 264)]) + 936);

  return v2();
}

__n128 ikinema::Constraint::getTarget@<Q0>(ikinema::Constraint *this@<X0>, __n128 *a2@<X8>)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(*(*v4 + 272))(v4);
  }

  else
  {
    v5 = xmmword_245A01E80;
  }

  v6 = *(this + 1);
  if (v6)
  {
    v9 = v5;
    v7 = (*(*v6 + 264))(v6);
    v5 = v9;
    v10 = *v7;
  }

  else
  {
    v10 = 0uLL;
  }

  result = v10;
  *a2 = v10;
  a2[1] = v5;
  return result;
}

uint64_t FIK::Hierarchy::indexOf(uint64_t *a1, void *__s1, size_t __n)
{
  v3 = *a1;
  if (!*a1)
  {
    return -1;
  }

  v6 = 0;
  for (i = (a1[2] + 8); ; i += 16)
  {
    v8 = *i ? *(i - 1) : &unk_245A04BAE;
    if (__n == *i && !memcmp(__s1, v8, __n))
    {
      break;
    }

    if (v3 == ++v6)
    {
      return -1;
    }
  }

  return v6;
}

void *FIK::Hierarchy::getParentInternal(uint64_t *a1, void *a2, size_t a3)
{
  v4 = FIK::Hierarchy::indexOf(a1, a2, a3);
  v5 = a1[2];
  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = &v5[16 * v4];
  }

  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v8 = v6[4];
  v9 = v7 << 7;
  while (1)
  {
    v10 = v8 ? v6[3] : &unk_245A04BAE;
    v11 = v5[1];
    v12 = v11 ? *v5 : &unk_245A04BAE;
    if (v11 == v8 && !memcmp(v12, v10, v8))
    {
      break;
    }

    v5 += 16;
    v9 -= 128;
    if (!v9)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t FIK::Hierarchy::getChildrenInternal@<X0>(FIK *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = FIK::defaultAllocator(a1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = result;
  v9 = *a1;
  if (*a1)
  {
    v10 = 0;
    v11 = *(a1 + 2);
    v12 = v9 << 7;
    do
    {
      v13 = *(v11 + 32);
      if (v13)
      {
        result = *(v11 + 24);
      }

      else
      {
        result = &unk_245A04BAE;
      }

      if (v13 == a3)
      {
        result = memcmp(result, a2, a3);
        if (!result)
        {
          result = FIK::IKArray<FIK::Segment *>::reserve(a4, v10 + 1);
          v14 = *a4;
          *(a4[2] + 8 * *a4) = v11;
          v10 = v14 + 1;
          *a4 = v14 + 1;
        }
      }

      v11 += 128;
      v12 -= 128;
    }

    while (v12);
  }

  return result;
}

uint64_t *FIK::Hierarchy::setupJointsInternal(uint64_t *this)
{
  if (*this)
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = v1[2];
      v5 = v4 + v2;
      *(v4 + v2 + 120) = v3;
      v6 = *(v4 + v2 + 8);
      if (v6)
      {
        *(v5 + 80) = FIK::Hierarchy::getParentInternal(v1, *v5, *(v4 + v2 + 8));
        v7 = *v5;
      }

      else
      {
        *(v5 + 80) = FIK::Hierarchy::getParentInternal(v1, &unk_245A04BAE, 0);
        v7 = &unk_245A04BAE;
      }

      FIK::Hierarchy::getChildrenInternal(v1, v7, v6, &v8);
      this = FIK::IKArray<unsigned int>::operator=(v4 + v2 + 88, &v8);
      *&v8 = 0;
      if (v9)
      {
        this = (*(*v10 + 24))(v10, v9, 0, 8);
      }

      ++v3;
      v2 += 128;
    }

    while (v3 < *v1);
  }

  return this;
}

FIK *FIK::Hierarchy::Hierarchy(FIK *a1, _OWORD *a2, unint64_t a3)
{
  v6 = FIK::defaultAllocator(a1);
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = v6;
  FIK::IKArray<FIK::Hierarchy::Joint>::reserve(a1, a3);
  if (a3)
  {
    v7 = 80 * a3;
    do
    {
      FIK::IKArray<FIK::Hierarchy::Joint>::push_back<FIK::JointDefinition const&,void>(a1, a2);
      a2 += 5;
      v7 -= 80;
    }

    while (v7);
  }

  FIK::Hierarchy::setupJointsInternal(a1);
  return a1;
}

uint64_t FIK::IKArray<FIK::Hierarchy::Joint>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v24 = v2;
    v25 = v3;
    v4 = result;
    v5 = *(result + 24);
    v6 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = v6;
    if (v6)
    {
      v7 = (*(*v5 + 16))(v5, v6 << 7, 16);
      v8 = v7;
      v22 = v7;
      v23 = v5;
      if (v6 << 7)
      {
        bzero(v7, v6 << 7);
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v4[2];
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      do
      {
        v12 = &v9[v11];
        v13 = &v8[v11];
        IKString::IKString(&v8[v11], &v9[v11], *&v9[v11 + 16]);
        IKString::IKString(&v8[v11 + 24], v12 + 3, v12[5]);
        *(v13 + 3) = *&v9[v11 + 48];
        *(v13 + 4) = *&v9[v11 + 64];
        v14 = *&v9[v11 + 80];
        v15 = *&v9[v11 + 88];
        v12[11] = 0;
        *(v13 + 10) = v14;
        *(v13 + 11) = v15;
        v16 = *&v9[v11 + 96];
        v17 = *&v9[v11 + 104];
        v12[12] = 0;
        *(v13 + 12) = v16;
        v12[13] = 0;
        *(v13 + 104) = v17;
        *(v13 + 15) = *&v9[v11 + 120];
        v11 += 128;
        --v10;
      }

      while (v10);
      v9 = v4[2];
      v18 = *v4;
    }

    else
    {
      v18 = 0;
    }

    v19 = v4[1];
    v20 = v4[3];
    v4[1] = v6;
    v4[2] = v8;
    v4[3] = v5;
    v21 = v19;
    v22 = v9;
    v23 = v20;
    result = FIK::IKArray<FIK::Hierarchy::Joint>::destroyBufferObjects(&v21, v18);
    if (v22)
    {
      return (*(*v23 + 24))(v23, v22, 0, 8);
    }
  }

  return result;
}

uint64_t FIK::IKArray<FIK::Hierarchy::Joint>::push_back<FIK::JointDefinition const&,void>(void *a1, _OWORD *a2)
{
  FIK::IKArray<FIK::Hierarchy::Joint>::reserve(a1, *a1 + 1);
  result = FIK::Hierarchy::Joint::Joint(a1[2] + (*a1 << 7), a2);
  ++*a1;
  return result;
}

FIK::Hierarchy *FIK::Hierarchy::Hierarchy(FIK::Hierarchy *this, const FIK::Hierarchy *a2)
{
  v3 = FIK::IKArray<FIK::Hierarchy::Joint>::IKArray(this, a2);
  FIK::Hierarchy::setupJointsInternal(v3);
  return this;
}

__n128 FIK::Hierarchy::Hierarchy(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  a2->n128_u64[0] = 0;
  a1->n128_u64[0] = v2;
  v3 = a2->n128_u64[1];
  result = a2[1];
  a2->n128_u64[1] = 0;
  a1->n128_u64[1] = v3;
  a2[1].n128_u64[0] = 0;
  a1[1] = result;
  return result;
}

BOOL FIK::Hierarchy::containsJoint(uint64_t *a1, void **a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    v5 = *a2;
  }

  else
  {
    v5 = &unk_245A04BAE;
  }

  return FIK::Hierarchy::indexOf(a1, v5, v3) != -1 && a1[2] != 0;
}

__n128 FIK::Hierarchy::setLocalSpaceRestPose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16) + (a2 << 7);
  *(v3 + 48) = *a3;
  result = *(a3 + 16);
  *(v3 + 64) = result;
  return result;
}

uint64_t FIK::Hierarchy::parentIndexOf(FIK::Hierarchy *this, uint64_t a2)
{
  v2 = *(*(this + 2) + (a2 << 7) + 80);
  if (v2)
  {
    return *(v2 + 120);
  }

  else
  {
    return 0;
  }
}

void FIK::Hierarchy::ancestorsOf(uint64_t *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  v6 = FIK::Hierarchy::indexOf(a1, a2, a3);
  v7 = FIK::Hierarchy::ancestorIndicesOf(a1, v6, &v15);
  v8 = v15;
  v9 = FIK::defaultAllocator(v7);
  FIK::IKArray<IKString>::IKArray<IKString,void>(a4, v8, v9);
  if (v15)
  {
    v10 = 0;
    for (i = 0; i < v15; ++i)
    {
      v13 = *(a1[2] + (*(v16 + 8 * i) << 7));
      v12 = *(a1[2] + (*(v16 + 8 * i) << 7) + 8);
      if (v12)
      {
        v14 = *(a1[2] + (*(v16 + 8 * i) << 7));
      }

      else
      {
        v14 = &unk_245A04BAE;
      }

      IKString::assign((a4[2] + v10), v14, v12);
      v10 += 24;
    }
  }

  v15 = 0;
  if (v16)
  {
    (*(*v17 + 24))(v17, v16, 0, 8);
  }
}

void *FIK::Hierarchy::ancestorIndicesOf@<X0>(FIK::Hierarchy *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FIK::defaultAllocator(this);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  v7 = *(*(this + 2) + (a2 << 7) + 80);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 120);
      result = FIK::IKArray<FIK::Segment *>::reserve(a3, v8 + 1);
      *(a3[2] + 8 * *a3) = v9;
      v8 = *a3 + 1;
      *a3 = v8;
      v7 = *(v7 + 80);
    }

    while (v7);
  }

  return result;
}

void FIK::Hierarchy::childrenOf(uint64_t *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  v6 = FIK::Hierarchy::indexOf(a1, a2, a3);
  v7 = FIK::Hierarchy::childIndicesOf(a1, v6, &v12);
  v8 = FIK::defaultAllocator(v7);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  FIK::IKArray<IKString>::reserve(a4, v12);
  v9 = v13;
  if (v12)
  {
    v10 = 8 * v12;
    do
    {
      v11 = *v9++;
      FIK::IKArray<IKString>::push_back<IKString&,void>(a4, (a1[2] + (v11 << 7)));
      v10 -= 8;
    }

    while (v10);
    v9 = v13;
  }

  v12 = 0;
  if (v9)
  {
    (*(*v14 + 24))(v14, v9, 0, 8);
  }
}

void *FIK::Hierarchy::childIndicesOf@<X0>(FIK::Hierarchy *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FIK::defaultAllocator(this);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  v7 = *(this + 2) + (a2 << 7);
  v8 = *(v7 + 88);
  if (v8)
  {
    v9 = 0;
    v10 = *(v7 + 104);
    v11 = 8 * v8;
    do
    {
      v12 = *v10++;
      v13 = *(v12 + 120);
      result = FIK::IKArray<FIK::Segment *>::reserve(a3, v9 + 1);
      *(a3[2] + 8 * *a3) = v13;
      v9 = *a3 + 1;
      *a3 = v9;
      v11 -= 8;
    }

    while (v11);
  }

  return result;
}

void FIK::Hierarchy::descendentsOf(uint64_t *a1@<X0>, void *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  v6 = FIK::Hierarchy::indexOf(a1, a2, a3);
  v7 = FIK::Hierarchy::descendentIndicesOf(a1, v6, &v15);
  v8 = v15;
  v9 = FIK::defaultAllocator(v7);
  FIK::IKArray<IKString>::IKArray<IKString,void>(a4, v8, v9);
  if (v15)
  {
    v10 = 0;
    for (i = 0; i < v15; ++i)
    {
      v13 = *(a1[2] + (*(v16 + 8 * i) << 7));
      v12 = *(a1[2] + (*(v16 + 8 * i) << 7) + 8);
      if (v12)
      {
        v14 = *(a1[2] + (*(v16 + 8 * i) << 7));
      }

      else
      {
        v14 = &unk_245A04BAE;
      }

      IKString::assign((a4[2] + v10), v14, v12);
      v10 += 24;
    }
  }

  v15 = 0;
  if (v16)
  {
    (*(*v17 + 24))(v17, v16, 0, 8);
  }
}

uint64_t FIK::Hierarchy::descendentIndicesOf@<X0>(FIK::Hierarchy *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = *(this + 2) + (a2 << 7);
  v4 = std::deque<FIK::Hierarchy::Joint const*>::push_back(v17, &v16);
  v5 = FIK::defaultAllocator(v4);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v5;
  v6 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v7 = v18;
    do
    {
      v8 = *(*(*(&v17[0] + 1) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
      v9 = *(v8 + 88);
      if (v9)
      {
        v10 = *(v8 + 104);
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          v15 = v12;
          std::deque<FIK::Hierarchy::Joint const*>::push_back(v17, &v15);
          v13 = *(v15 + 120);
          FIK::IKArray<FIK::Segment *>::reserve(a3, *a3 + 1);
          *(a3[2] + 8 * (*a3)++) = v13;
          v11 -= 8;
        }

        while (v11);
        v6 = *(&v18 + 1);
        v7 = v18;
      }

      --v6;
      *&v18 = ++v7;
      *(&v18 + 1) = v6;
      if (v7 >= 0x400)
      {
        operator delete(**(&v17[0] + 1));
        v6 = *(&v18 + 1);
        v7 = v18 - 512;
        *(&v17[0] + 1) += 8;
        *&v18 = v18 - 512;
      }
    }

    while (v6);
  }

  return std::deque<FIK::Hierarchy::Joint const*>::~deque[abi:nn200100](v17);
}

uint64_t FIK::Hierarchy::descendentsCountOf(FIK::Hierarchy *this, uint64_t a2)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = *(this + 2) + (a2 << 7);
  std::deque<FIK::Hierarchy::Joint const*>::push_back(v13, &v12);
  v2 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v3 = 0;
    v4 = v14;
    do
    {
      v5 = *(*(*(&v13[0] + 1) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
      v6 = *(v5 + 88);
      if (v6)
      {
        v7 = *(v5 + 104);
        v8 = 8 * v6;
        v3 += ((8 * v6 - 8) >> 3) + 1;
        do
        {
          v9 = *v7++;
          v11 = v9;
          std::deque<FIK::Hierarchy::Joint const*>::push_back(v13, &v11);
          v8 -= 8;
        }

        while (v8);
        v2 = *(&v14 + 1);
        v4 = v14;
      }

      --v2;
      *&v14 = ++v4;
      *(&v14 + 1) = v2;
      if (v4 >= 0x400)
      {
        operator delete(**(&v13[0] + 1));
        v4 = v14 - 512;
        *(&v13[0] + 1) += 8;
        *&v14 = v14 - 512;
        v2 = *(&v14 + 1);
      }
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  std::deque<FIK::Hierarchy::Joint const*>::~deque[abi:nn200100](v13);
  return v3;
}

void *FIK::Hierarchy::siblingIndicesOf@<X0>(FIK::Hierarchy *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(this + 2) + (a2 << 7) + 80);
  if (v4)
  {
    v6 = FIK::Hierarchy::childIndicesOf(this, *(v4 + 120), &v14);
    result = FIK::defaultAllocator(v6);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = result;
    v8 = v15;
    if (v14)
    {
      v9 = 0;
      v10 = 8 * v14;
      do
      {
        v11 = *v8;
        if (*v8 != a2)
        {
          result = FIK::IKArray<FIK::Segment *>::reserve(a3, v9 + 1);
          *(a3[2] + 8 * *a3) = v11;
          v9 = *a3 + 1;
          *a3 = v9;
        }

        ++v8;
        v10 -= 8;
      }

      while (v10);
      v8 = v15;
    }

    v14 = 0;
    if (v8)
    {
      return (*(*v16 + 24))(v16, v8, 0, 8);
    }
  }

  else
  {
    v12 = std::__throw_bad_optional_access[abi:nn200100]();
    return FIK::Hierarchy::chainIndicesFrom(v12, v13);
  }

  return result;
}

FIK *FIK::Hierarchy::chainIndicesFrom@<X0>(FIK::Hierarchy *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = FIK::Hierarchy::descendentIndicesOf(this, a2, &v33);
  v7 = FIK::defaultAllocator(v6);
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  v32 = v7;
  if (v33)
  {
    v8 = 0;
    v9 = v34;
    v10 = 8 * v33;
    do
    {
      v11 = *v9;
      if (!*(*(this + 2) + (*v9 << 7) + 88))
      {
        v7 = FIK::IKArray<FIK::Segment *>::reserve(v30, v8 + 1);
        v31[v30[0]] = v11;
        v8 = ++v30[0];
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  v12 = FIK::defaultAllocator(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v12;
  result = FIK::IKArray<FIK::IKArray<unsigned long>>::reserve(a3, v30[0]);
  v14 = v31;
  if (v30[0])
  {
    v15 = &v31[v30[0]];
    do
    {
      v16 = *v14;
      v17 = FIK::defaultAllocator(result);
      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      v29 = v17;
      for (i = 1; ; i = v19 + 1)
      {
        FIK::IKArray<FIK::Segment *>::reserve(v27, i);
        *(v28 + 8 * v27[0]) = v16;
        v19 = ++v27[0];
        v20 = *(*(this + 2) + (v16 << 7) + 80);
        if (!v20)
        {
          break;
        }

        v16 = *(v20 + 120);
        if (v16 == a2)
        {
          break;
        }
      }

      FIK::IKArray<FIK::Segment *>::reserve(v27, v19 + 1);
      v21 = v28;
      *(v28 + 8 * v27[0]) = a2;
      v22 = v27[0] + 1;
      v27[0] = v22;
      if (v22)
      {
        v23 = (v21 + 8 * v22 - 8);
        if (v23 > v21)
        {
          v24 = v21 + 8;
          do
          {
            v25 = *(v24 - 8);
            *(v24 - 8) = *v23;
            *v23-- = v25;
            v26 = v24 >= v23;
            v24 += 8;
          }

          while (!v26);
        }
      }

      result = FIK::IKArray<FIK::IKArray<unsigned long>>::push_back<FIK::IKArray<unsigned long>&,void>(a3, v27);
      v27[0] = 0;
      if (v28)
      {
        result = (*(*v29 + 3))(v29, v28, 0, 8);
      }

      ++v14;
    }

    while (v14 != v15);
    v14 = v31;
  }

  v30[0] = 0;
  if (v14)
  {
    result = (*(*v32 + 24))(v32, v14, 0, 8);
  }

  v33 = 0;
  if (v34)
  {
    return (*(*v35 + 24))(v35, v34, 0, 8);
  }

  return result;
}

uint64_t FIK::IKArray<FIK::IKArray<unsigned long>>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    v2 = result;
    v3 = *(result + 24);
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(*(result + 24), 32 * v4, 8);
      v6 = v5;
      if (32 * v4)
      {
        bzero(v5, 32 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[2];
    v8 = *v2;
    if (*v2)
    {
      v9 = v6;
      do
      {
        v10 = *v7;
        *v7 = 0;
        *v9 = v10;
        v11 = *(v7 + 8);
        v12 = *(v7 + 16);
        *(v7 + 8) = 0;
        v9[1] = v11;
        *(v7 + 16) = 0;
        *(v9 + 1) = v12;
        v9 += 4;
        v7 += 32;
        --v8;
      }

      while (v8);
      v7 = v2[2];
      v13 = *v2;
    }

    else
    {
      v13 = 0;
    }

    v14 = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    result = std::destroy_n[abi:nn200100]<FIK::IKArray<unsigned long> *,unsigned long>(v7, v13);
    if (v7)
    {
      v15 = *(*v14 + 24);

      return v15(v14, v7, 0, 8);
    }
  }

  return result;
}

unint64_t *FIK::IKArray<FIK::IKArray<unsigned long>>::push_back<FIK::IKArray<unsigned long>&,void>(void *a1, uint64_t *a2)
{
  FIK::IKArray<FIK::IKArray<unsigned long>>::reserve(a1, *a1 + 1);
  result = FIK::IKArray<unsigned long>::IKArray((a1[2] + 32 * *a1), a2, a1[3]);
  ++*a1;
  return result;
}

uint64_t std::deque<FIK::Hierarchy::Joint const*>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<FIK::Hierarchy::Joint const**>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<FIK::Hierarchy::Joint const**>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *FIK::IKArray<FIK::Hierarchy::Joint>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = a2 << 7;
    v6 = (*(*a3 + 16))(a3, a2 << 7, 16);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::Hierarchy::Joint>::destroyBufferObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(result + 8);
    do
    {
      *(v3 + 88) = 0;
      v4 = *(v3 + 104);
      if (v4)
      {
        result = (*(**(v3 + 112) + 24))(*(v3 + 112), v4, 0, 8);
      }

      if (*(v3 + 32))
      {
        result = (*(**(v3 + 40) + 24))(*(v3 + 40), *(v3 + 24), 0, 8);
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
      }

      if (*(v3 + 8))
      {
        result = (*(**(v3 + 16) + 24))(*(v3 + 16), *v3, 0, 8);
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      v3 += 128;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t FIK::Hierarchy::Joint::Joint(uint64_t a1, _OWORD *a2)
{
  IKString::IKString(a1, a2);
  IKString::IKString((v4 + 24), (a2 + 24));
  *(a1 + 48) = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = 0;
  v6 = FIK::defaultAllocator(v5);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = v6;
  *(a1 + 120) = -1;
  return a1;
}

void *FIK::IKArray<FIK::Hierarchy::Joint>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Hierarchy::Joint>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      v10 = v8 + v7;
      IKString::IKString((v8 + v7), (v9 + v7));
      IKString::IKString((v8 + v7 + 24), (v9 + v7 + 24));
      *(v10 + 48) = *(v9 + v7 + 48);
      *(v10 + 64) = *(v9 + v7 + 64);
      *(v10 + 80) = *(v9 + v7 + 80);
      FIK::IKArray<FIK::Task *>::IKArray((v8 + v7 + 88), (v9 + v7 + 88));
      *(v10 + 120) = *(v9 + v7 + 120);
      v7 += 128;
      --v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t FIK::IKArray<FIK::Hierarchy::Joint>::~IKArray(uint64_t a1)
{
  FIK::IKArray<FIK::Hierarchy::Joint>::destroyBufferObjects(a1 + 8, *a1);
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(**(a1 + 24) + 24))(*(a1 + 24), v2, 0, 8);
  }

  return a1;
}

void *FIK::IKArray<IKString>::IKArray<IKString,void>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *a1 = a2;
  FIK::IKArray<IKString>::MemoryBlock::MemoryBlock(a1 + 1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8, a3);
  v6 = a1[2];
  v9 = 0;
  v10 = 0;
  v11 = a3;
  if (v4)
  {
    do
    {
      IKString::IKString(v6, &v9);
      v6 = (v7 + 24);
      --v4;
    }

    while (v4);
    if (v10)
    {
      (*(*v11 + 24))(v11, v9, 0, 8);
    }
  }

  return a1;
}

void *std::deque<FIK::Hierarchy::Joint const*>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<FIK::Hierarchy::Joint const*>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<FIK::Hierarchy::Joint const*>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<FIK::Hierarchy::Joint const**>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<FIK::Hierarchy::Joint const**>::emplace_back<FIK::Hierarchy::Joint const**&>(a1, &v10);
}

void *std::__split_buffer<FIK::Hierarchy::Joint const**>::emplace_back<FIK::Hierarchy::Joint const**&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<FIK::Hierarchy::Joint const**>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<FIK::Hierarchy::Joint const**>::emplace_front<FIK::Hierarchy::Joint const**>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<FIK::Hierarchy::Joint const**>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<FIK::Hierarchy::Joint const**>::emplace_back<FIK::Hierarchy::Joint const**>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<FIK::Hierarchy::Joint const**>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<FIK::Hierarchy::Joint const**>::emplace_front<FIK::Hierarchy::Joint const**&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<FIK::Hierarchy::Joint const**>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<FIK::Hierarchy::Joint const**>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

unint64_t *FIK::IKArray<unsigned long>::IKArray(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a1 = v6;
  FIK::IKArray<FIK::Task *>::MemoryBlock::MemoryBlock(a1 + 1, v5, a3);
  if (*a1)
  {
    v7 = 0;
    v8 = a1[2];
    v9 = a2[2];
    do
    {
      *(v8 + 8 * v7) = *(v9 + 8 * v7);
      ++v7;
    }

    while (v7 < *a1);
  }

  return a1;
}

uint64_t FIK::RTBalanceTask::AddSolverTask(uint64_t result, FIK::Solver **this, int a3)
{
  v3 = result;
  if (a3 == 2)
  {
    *(result + 48) = FIK::IKSolver::addBalanceTask(this, *result, 1, 0);

    return FIK::RTBalanceTask::SetStaticMomentProperties(v3, v3);
  }

  else if (a3 == 1)
  {
    *(result + 48) = FIK::IKSolver::addBalanceTask(this, *result, 0, 1);

    return FIK::RTBalanceTask::SetCOMProperties(v3, v3);
  }

  return result;
}

uint64_t FIK::RTBalanceTask::SetCOMProperties(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 6);
  if (!v4)
  {
    v15 = ikinemaLogObject();
    ikinemaAssertHandler(*v15, 0, "SetCOMProperties", "(SolverTaskPtr != nullptr) The task must be existing");
    v4 = *(a1 + 6);
  }

  (*(*v4 + 312))(v4, 0);
  (*(**(a1 + 6) + 296))();
  (*(**(a1 + 6) + 136))(*(a1 + 6), 1, 1);
  v5 = *a1;
  (*(**(a1 + 6) + 336))();
  v6 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v6 + 144))(v6, *(a2 + 4), *(a2 + 5), *(a2 + 6));
  v7 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v7 + 80))(v7, 0, *(a2 + 16));
  v8 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v8 + 80))(v8, 1, *(a2 + 20));
  v9 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v9 + 80))(v9, 2, *(a2 + 24));
  v10 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v10 + 104))(v10, 0, *(a2 + 32));
  v11 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v11 + 104))(v11, 1, *(a2 + 36));
  v12.n128_u32[0] = *(a2 + 40);
  v13 = *(*(*(a1 + 6) + *(**(a1 + 6) - 264)) + 104);

  return v13(v12);
}

uint64_t FIK::RTBalanceTask::SetStaticMomentProperties(unsigned int *a1, uint64_t a2)
{
  v4 = *(a1 + 6);
  if (!v4)
  {
    v15 = ikinemaLogObject();
    ikinemaAssertHandler(*v15, 0, "SetStaticMomentProperties", "(SolverTaskPtr != nullptr) The task must be existing");
    v4 = *(a1 + 6);
  }

  (*(*v4 + 312))(v4, 1);
  (*(**(a1 + 6) + 296))();
  (*(**(a1 + 6) + 136))(*(a1 + 6), 1, 1);
  v5 = *a1;
  (*(**(a1 + 6) + 336))();
  v6 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v6 + 144))(v6, *(a2 + 4), *(a2 + 5), *(a2 + 6));
  v7 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v7 + 80))(v7, 0, *(a2 + 16));
  v8 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v8 + 80))(v8, 1, *(a2 + 20));
  v9 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v9 + 80))(v9, 2, *(a2 + 24));
  v10 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v10 + 104))(v10, 0, *(a2 + 32));
  v11 = *(a1 + 6) + *(**(a1 + 6) - 264);
  (*(*v11 + 104))(v11, 1, *(a2 + 36));
  v12.n128_u32[0] = *(a2 + 40);
  v13 = *(*(*(a1 + 6) + *(**(a1 + 6) - 264)) + 104);

  return v13(v12);
}

uint64_t FIK::RTBalanceTask::SetSolverTaskTarget(FIK::RTBalanceTask *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    v5 = ikinemaLogObject();
    ikinemaAssertHandler(*v5, 0, "SetSolverTaskTarget", "(SolverTaskPtr != nullptr) The task must be existing");
    v2 = *(this + 6);
  }

  v3 = *(*v2 + 256);

  return v3();
}

float32x4_t FIK::RTBalanceTask::ConvertTargetWorldToSolver(float32x4_t *this, float32x4_t *a2)
{
  if (!this[3].i64[0])
  {
    FIK::RTBalanceTask::ConvertTargetWorldToSolver();
  }

  v4 = a2[1];
  v5 = this[4];
  v6 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v7 = vnegq_f32(v4);
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), v7), v5, v6);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v7), v9, v6);
  v11 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v9, v4, 3);
  v4.i64[0] = 0x4000000040000000;
  v4.i64[1] = 0x4000000040000000;
  result = vaddq_f32(*a2, vmlaq_f32(v5, v4, v11));
  this[4] = result;
  return result;
}

double FIK::RotationPoints::deconstruct(int32x4_t *a1)
{
  v1 = vextq_s8(vuzp1q_s32(*a1, *a1), *a1, 0xCuLL);
  v2 = vmlaq_f32(vmulq_f32(*a1, xmmword_245A03660), xmmword_245A03670, v1);
  v3 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vnegq_f32(*a1)), v3, v1);
  v5.i64[0] = 0x4000000040000000;
  v5.i64[1] = 0x4000000040000000;
  *&result = vmlaq_f32(xmmword_245A03670, v5, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), v3, *a1, 3)).u64[0];
  return result;
}

float32x4_t *FIK::RotationPoints::reconstruct@<X0>(float32x4_t *this@<X0>, const simd_float4x4 *a2@<X1>, float32x4_t *a3@<X8>)
{
  v3 = 0;
  v4 = this[1];
  v5 = vmulq_f32(*this, *this);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  v7 = vrsqrte_f32(v6);
  v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
  v16 = vmulq_f32(vmulq_n_f32(*this, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]), vdupq_n_s32(0x418A80D5u));
  v9 = vmulq_f32(v4, v4);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_n_f32(v4, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  v12 = this[2];
  v13 = this[3];
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  v17 = vmulq_f32(v11, vdupq_n_s32(0x418ABDD4u));
  *v9.f32 = vrsqrte_f32(v15);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v15, vmul_f32(*v9.f32, *v9.f32)));
  v16.i32[3] = 1.0;
  v17.i32[3] = 1.0;
  v18 = vmulq_f32(vmulq_n_f32(v12, vmul_f32(*v9.f32, vrsqrts_f32(v15, vmul_f32(*v9.f32, *v9.f32))).f32[0]), vdupq_n_s32(0x418A818Eu));
  v18.i32[3] = 1.0;
  v19 = vmulq_f32(v13, v13);
  v5.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
  *v19.f32 = vrsqrte_f32(v5.u32[0]);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v19.f32, *v19.f32)));
  v20 = vmulq_f32(vmulq_n_f32(v13, vmul_f32(*v19.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v19.f32, *v19.f32))).f32[0]), vdupq_n_s32(0x418A8275u));
  v20.i32[3] = 1.0;
  v56[2] = xmmword_245A03700;
  v56[3] = xmmword_245A03710;
  do
  {
    *(&v57 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(v56[v3])), v17, *&v56[v3], 1), v18, v56[v3], 2), v20, v56[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  v21 = v60 + (*v57.i32 + *&v58.i32[1]);
  if (v21 >= 0.0)
  {
    v29 = sqrtf(v21 + 1.0);
    v30 = v29 + v29;
    v31 = vrecpe_f32(COERCE_UNSIGNED_INT(v29 + v29));
    v32 = vmul_f32(v31, vrecps_f32(COERCE_UNSIGNED_INT(v29 + v29), v31));
    v32.i32[0] = vmul_f32(v32, vrecps_f32(COERCE_UNSIGNED_INT(v29 + v29), v32)).u32[0];
    *v43.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), v59), vext_s8(v59, *&vextq_s8(v57, v57, 8uLL), 4uLL)), v32.f32[0]);
    v33.f32[0] = *&v57.i32[1] - *v58.i32;
    v33.f32[1] = v30;
    v32.i32[1] = 0.25;
    v45 = vmul_f32(v33, v32);
  }

  else if (*v57.i32 < *&v58.i32[1] || *v57.i32 < v60)
  {
    v23 = 1.0 - *v57.i32;
    if (*&v58.i32[1] >= v60)
    {
      v46 = sqrtf(*&v58.i32[1] + (v23 - v60));
      *&v47 = v46 + v46;
      v48 = vrecpe_f32(v47);
      v49 = vmul_f32(v48, vrecps_f32(v47, v48));
      v50.i32[0] = vmul_f32(v49, vrecps_f32(v47, v49)).u32[0];
      v49.f32[0] = *&v57.i32[1] + *v58.i32;
      v49.i32[1] = v47;
      v45 = vmul_n_f32(vext_s8(vadd_f32(v59, vdup_laneq_s32(v58, 2)), vsub_f32(v59, *&vextq_s8(v57, v57, 8uLL)), 4uLL), v50.f32[0]);
      v50.i32[1] = 0.25;
      *v43.f32 = vmul_f32(v49, v50);
    }

    else
    {
      v24 = sqrtf(v60 + (v23 - *&v58.i32[1]));
      v25.f32[0] = v24 + v24;
      v26 = vrecpe_f32(COERCE_UNSIGNED_INT(v24 + v24));
      v27 = vmul_f32(v26, vrecps_f32(COERCE_UNSIGNED_INT(v24 + v24), v26));
      v27.i32[0] = vmul_f32(v27, vrecps_f32(COERCE_UNSIGNED_INT(v24 + v24), v27)).u32[0];
      *v43.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)), v59), v27.f32[0]);
      v25.f32[1] = *&v57.i32[1] - *v58.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v27.i32[0];
      v45 = vmul_f32(v25, _D0);
    }
  }

  else
  {
    v34 = sqrtf(*v57.i32 + ((1.0 - *&v58.i32[1]) - v60));
    v35.f32[0] = v34 + v34;
    v36 = vrecpe_f32(v35.u32[0]);
    v37 = vmul_f32(v36, vrecps_f32(v35.u32[0], v36));
    LODWORD(v38) = vmul_f32(v37, vrecps_f32(v35.u32[0], v37)).u32[0];
    v35.f32[1] = *&v57.i32[1] + *v58.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v38;
    *v43.f32 = vmul_f32(v35, _D5);
    v44.i32[0] = vadd_f32(*&vextq_s8(v57, v57, 8uLL), v59).u32[0];
    v44.i32[1] = vsub_f32(vdup_laneq_s32(*&v58, 2), *&v59).i32[1];
    v45 = vmul_n_f32(v44, v38);
  }

  v51 = vadd_f32(vmul_f32(*v43.f32, *v43.f32), vmul_f32(v45, v45));
  if (vaddv_f32(v51) == 0.0)
  {
    v52 = xmmword_245A01E80;
  }

  else
  {
    *&v43.u32[2] = v45;
    v53 = vadd_f32(v51, vdup_lane_s32(v51, 1)).u32[0];
    v54 = vrsqrte_f32(v53);
    v55 = vmul_f32(v54, vrsqrts_f32(v53, vmul_f32(v54, v54)));
    v52 = vmulq_n_f32(v43, vmul_f32(v55, vrsqrts_f32(v53, vmul_f32(v55, v55))).f32[0]);
  }

  *a3 = v52;
  return this;
}

FIK::DoubleExponentialPositionFilter *FIK::DoubleExponentialPositionFilter::DoubleExponentialPositionFilter(FIK::DoubleExponentialPositionFilter *this, float a2, float a3)
{
  v5 = __exp10f(-((a2 * 3.0) + 2.0));
  *(this + 48) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 2) = v5;
  v6 = expf((-1.0 / a3) / v5);
  *this = v6;
  *(this + 1) = (v5 * v6) / (1.0 - v6);
  return this;
}

__n128 FIK::DoubleExponentialPositionFilter::filter@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  if (a1[3].i8[0] == 1)
  {
    v4 = a1[1];
    v3 = a1[2];
  }

  else
  {
    a1[3].i8[0] = 1;
    v4 = *a2;
    a1[1] = *a2;
    v3 = *a2;
    a1[2] = *a2;
  }

  v5 = a1->f32[1];
  v6 = 1.0 - a1->f32[0];
  v7 = vaddq_f32(vmulq_n_f32(*a2, a1->f32[0]), vmulq_n_f32(v4, v6));
  v8 = vaddq_f32(vmulq_n_f32(v3, v6), vmulq_n_f32(v7, a1->f32[0]));
  a1[1] = v7;
  a1[2] = v8;
  *a2 = vsubq_f32(vmulq_n_f32(v7, v5 + 2.0), vmulq_n_f32(v8, v5 + 1.0));
  result = *a2;
  *a3 = *a2;
  return result;
}

void FIK::DoubleExponentialPositionFilter::set(FIK::DoubleExponentialPositionFilter *this, float a2, float a3)
{
  *(this + 48) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v5 = __exp10f(-((a2 * 3.0) + 2.0));
  *(this + 2) = v5;
  v6 = expf((-1.0 / a3) / v5);
  *this = v6;
  *(this + 1) = (v5 * v6) / (1.0 - v6);
}

void FIK::TargetSmoothing::smooth(FIK::TargetSmoothing *this@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float a4@<S0>, float32x4_t *a5@<X8>)
{
  v6 = a2[1];
  *a5 = *a2;
  a5[1] = v6;
  v7 = a5 + 1;
  v8 = *this;
  if (*this > 1)
  {
    if (LODWORD(v8) == 2)
    {
      v10 = *a2;
      if (*(this + 16))
      {
        v11 = *(this + 1) * a4;
        v12 = *a3;
        if (fabsf(v11) >= 0.000000001)
        {
          v13 = vsubq_f32(v10, v12);
          v14 = vmulq_f32(v13, v13);
          v15 = v14.f32[2] + vaddv_f32(*v14.f32);
          if (fabsf(v15) >= 0.000000001)
          {
            v16 = sqrtf(v15);
            if (v11 < v16)
            {
              v10 = vaddq_f32(v12, vmulq_n_f32(v13, v11 / v16));
            }
          }
        }

        else
        {
          v10 = *a3;
        }
      }

      else
      {
        *(this + 16) = 1;
      }

      *a5 = v10;
      a5[1] = v6;
    }

    else if (LODWORD(v8) != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v8 != 0.0)
  {
    if (LODWORD(v8) == 1)
    {
      v17[0] = *a2;
      v17[1] = v6;
      FIK::TargetSmoothing::doBlendFromPrevFrame(this, v17, a3, v18);
      v9 = v18[1];
      *a5 = v18[0];
      *v7 = v9;
      return;
    }

LABEL_7:
    FIK::TargetSmoothing::smooth();
  }
}

void FIK::TargetSmoothing::doBlendFromPrevFrame(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    if (v6 <= 0.0)
    {
      v7 = *a2;
    }

    else
    {
      v7 = *a3;
      if (v6 < 1.0)
      {
        v7 = vaddq_f32(*a2, vmulq_n_f32(vsubq_f32(v7, *a2), v6));
      }
    }

    *a2 = v7;
    v9 = *(a1 + 12);
    v10 = a2[1];
    v11 = a3[1];
    v12 = vmulq_f32(v10, v11);
    v13 = vextq_s8(v12, v12, 8uLL);
    *v12.f32 = vadd_f32(*v12.f32, *v13.f32);
    v12.f32[0] = vaddv_f32(*v12.f32);
    v13.i64[0] = 0;
    v14 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v12, v13)), 0), vnegq_f32(v11), v11);
    v15 = 1.0;
    v16 = 1.0 - v9;
    v17 = vsubq_f32(v10, v14);
    v18 = vmulq_f32(v17, v17);
    v43 = v14;
    v44 = v10;
    v19 = vaddq_f32(v10, v14);
    v20 = vmulq_f32(v19, v19);
    v21 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))));
    v22 = v21 + v21;
    v23 = (v21 + v21) == 0.0;
    v24 = 1.0;
    if (!v23)
    {
      v24 = sinf(v22) / v22;
    }

    v25 = v24;
    v26 = vrecpe_f32(LODWORD(v24));
    v27 = vmul_f32(v26, vrecps_f32(LODWORD(v25), v26));
    LODWORD(v28) = vmul_f32(v27, vrecps_f32(LODWORD(v25), v27)).u32[0];
    if ((v16 * v22) != 0.0)
    {
      v41 = v28;
      v27.f32[0] = sinf(v16 * v22);
      v28 = v41;
      v15 = v27.f32[0] / (v16 * v22);
    }

    v27.f32[0] = v16 * (v28 * v15);
    v29 = vdupq_lane_s32(v27, 0);
    v30 = v9 * v22;
    v31 = 1.0;
    if (v30 != 0.0)
    {
      v40 = v29;
      v42 = v28;
      v32 = sinf(v30);
      v29 = v40;
      v28 = v42;
      v31 = v32 / v30;
    }

    v33 = vmlaq_f32(vmulq_n_f32(v43, v9 * (v28 * v31)), v44, v29);
    v34 = vmulq_f32(v33, v33);
    v35 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
    if (vaddv_f32(v35) == 0.0)
    {
      v36 = xmmword_245A01E80;
    }

    else
    {
      v37 = vadd_f32(v35, vdup_lane_s32(v35, 1)).u32[0];
      v38 = vrsqrte_f32(v37);
      v39 = vmul_f32(v38, vrsqrts_f32(v37, vmul_f32(v38, v38)));
      v36 = vmulq_n_f32(v33, vmul_f32(v39, vrsqrts_f32(v37, vmul_f32(v39, v39))).f32[0]);
    }

    a2[1] = v36;
    *a4 = *a2;
    a4[1] = v36;
  }

  else
  {
    *(a1 + 16) = 1;
    v8 = a2[1];
    *a4 = *a2;
    a4[1] = v8;
  }
}

double FIK::TargetSmoothing::smooth@<D0>(_DWORD *a1@<X0>, _OWORD *a2@<X1>, float32x4_t *a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>, double result@<D0>)
{
  v7 = a2[1];
  *a5 = *a2;
  a5[1] = v7;
  if (*a1 == 2)
  {
    v8 = *a2;
    FIK::TargetSmoothing::doBlendImpactPoint(a1, &v8, a3, a4, &v9, *&result);
    result = *v9.i64;
    *a5 = v9;
  }

  return result;
}

__n128 FIK::TargetSmoothing::doBlendImpactPoint@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>, float a6@<S0>)
{
  v19 = vsubq_f32(*a2, *a3);
  v11 = fabsf(FIK::Utils::GetUpElement(v19.f32, a4));
  v12 = *(a1 + 4) * a6;
  if (v11 > v12)
  {
    if (fabsf(v12) >= 0.000000001)
    {
      v13 = *a2;
      v14 = vsubq_f32(*a2, *a3);
      v15 = vmulq_f32(v14, v14);
      v16 = v15.f32[2] + vaddv_f32(*v15.f32);
      if (fabsf(v16) >= 0.000000001)
      {
        v17 = sqrtf(v16);
        if (v12 < v17)
        {
          v13 = vaddq_f32(*a3, vmulq_n_f32(v14, v12 / v17));
        }
      }
    }

    else
    {
      v13 = *a3;
    }

    *a2 = v13;
  }

  result = *a2;
  *a5 = *a2;
  return result;
}

float32x4_t FIK::estimateBoneRotationFromVelocity@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  v5 = vsubq_f32(*a2, *a1);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v8 = 1.0 / v7;
  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  v9 = vmulq_n_f32(v5, v8);
  v10 = vsubq_f32(*a2, *a3);
  v11 = vmulq_f32(v10, v10);
  if (fabsf(v11.f32[2] + vaddv_f32(*v11.f32)) < 0.000000001)
  {
    v12 = vmulq_f32(v9, v9);
    v12.f32[0] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)) * 0.01;
    v10 = vdupq_lane_s32(*v12.f32, 0);
  }

  v13 = vmulq_f32(v10, v10);
  v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  if (v14 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0 / v14;
  }

  v16 = vmulq_n_f32(v10, v15);
  v17 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v18 = vnegq_f32(v9);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v18), v16, v17);
  v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
  v21 = vmulq_f32(v19, v19);
  v21.f32[0] = sqrtf(v21.f32[1] + (v21.f32[2] + v21.f32[0]));
  v22 = 1.0 / v21.f32[0];
  if (v21.f32[0] == 0.0)
  {
    v22 = 0.0;
  }

  v23 = vmulq_n_f32(v20, v22);
  if (a4 == 2)
  {
    v30 = vmlaq_f32(vmulq_f32(v17, vnegq_f32(v23)), v9, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
    v26 = vzip1q_s32(v31, v9);
    v27 = vzip2q_s32(v31, v9);
  }

  else if (a4 == 1)
  {
    v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v18), v23, v17);
    v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
    v26 = vzip1q_s32(v29, v23);
    v27 = vzip2q_s32(v29, v23);
    v23 = v9;
  }

  else
  {
    if (a4)
    {
      FIK::estimateBoneRotationFromVelocity();
    }

    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v18), v23, v17);
    v25 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
    v26 = vzip1q_s32(v9, v25);
    v27 = vzip2q_s32(v9, v25);
  }

  v32 = *&v27.i32[1] + (v26.f32[0] + v23.f32[1]);
  if (v32 >= 0.0)
  {
    v41 = vextq_s8(v26, v27, 0xCuLL);
    v41.i32[2] = v23.i32[0];
    v26.i32[0] = v23.i32[2];
    v42 = vsubq_f32(v41, v26);
    v26.i32[3] = 2.0;
    v41.i32[3] = sqrtf(v32 + 1.0);
    v43 = vmulq_f32(v41, v26);
    v42.i32[3] = v43.i32[3];
    v43.i32[0] = vdup_laneq_s32(v43, 3).u32[0];
    v44 = vrecpe_f32(v43.u32[0]);
    v45 = vmul_f32(v44, vrecps_f32(v43.u32[0], v44));
    v46 = vdupq_lane_s32(vmul_f32(v45, vrecps_f32(v43.u32[0], v45)), 0);
    v46.i32[3] = 0.25;
    v53 = vmulq_f32(v42, v46);
  }

  else if (v26.f32[0] < v23.f32[1] || v26.f32[0] < *&v27.i32[1])
  {
    v34 = 1.0 - v26.f32[0];
    if (v23.f32[1] >= *&v27.i32[1])
    {
      v54 = sqrtf(v23.f32[1] + (v34 - *&v27.i32[1]));
      *&v55 = v54 + v54;
      v56 = vrecpe_f32(v55);
      *v57.f32 = vmul_f32(v56, vrecps_f32(v55, v56));
      v58 = vmul_f32(*v57.f32, vrecps_f32(v55, *v57.f32));
      v57.f32[0] = v23.f32[0] + v26.f32[2];
      v59 = vextq_s8(v26, v27, 0xCuLL).u64[0];
      LODWORD(v60) = vadd_f32(v59, *&vextq_s8(v23, v23, 8uLL)).u32[0];
      HIDWORD(v60) = vsub_f32(v59, *&v26).i32[1];
      v57.i32[1] = v55;
      v57.i64[1] = v60;
      v61 = vdupq_lane_s32(v58, 0);
      v61.i32[1] = 0.25;
      v53 = vmulq_f32(v57, v61);
    }

    else
    {
      v35 = sqrtf(*&v27.i32[1] + (v34 - v23.f32[1]));
      *&v36 = v35 + v35;
      v37 = vrecpe_f32(v36);
      v38 = vmul_f32(v37, vrecps_f32(v36, v37));
      *v39.f32 = vadd_f32(vzip2_s32(*v26.f32, *&vextq_s8(v26, v26, 8uLL)), vzip1_s32(*v27.i8, *&vextq_s8(v23, v23, 8uLL)));
      v39.i32[2] = v36;
      v39.f32[3] = v23.f32[0] - v26.f32[2];
      v40 = vdupq_lane_s32(vmul_f32(v38, vrecps_f32(v36, v38)), 0);
      v40.i32[2] = 0.25;
      v53 = vmulq_f32(v39, v40);
    }
  }

  else
  {
    v47 = sqrtf(v26.f32[0] + ((1.0 - v23.f32[1]) - *&v27.i32[1]));
    v48.f32[0] = v47 + v47;
    v49 = vrecpe_f32(v48.u32[0]);
    v50 = vmul_f32(v49, vrecps_f32(v48.u32[0], v49));
    v51 = vextq_s8(v26, v26, 8uLL).u64[0];
    v26.i32[0] = vadd_f32(vdup_lane_s32(*v26.f32, 1), *v27.i8).u32[0];
    v26.i32[1] = vsub_f32(v51, vdup_laneq_s32(*&v23, 2)).i32[1];
    v48.f32[1] = v23.f32[0] + v26.f32[2];
    v48.i64[1] = v26.i64[0];
    v52 = vdupq_lane_s32(vmul_f32(v50, vrecps_f32(v48.u32[0], v50)), 0);
    v52.i32[0] = 0.25;
    v53 = vmulq_f32(v48, v52);
  }

  result = vmulq_f32(v53, xmmword_245A01F10);
  *a5 = result;
  return result;
}

uint64_t *FIK::createHelperHierarchy@<X0>(FIK *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v6;
  v7 = FIK::defaultAllocator(v6);
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = v7;
  v8 = FIK::defaultAllocator(v7);
  a3[8] = 0;
  a3[9] = 0;
  a3[10] = 0;
  a3[11] = v8;
  v9 = FIK::defaultAllocator(v8);
  a3[12] = 0;
  a3[13] = 0;
  a3[14] = 0;
  a3[15] = v9;
  FIK::IKArray<FIK::Segment *>::reserve(a3 + 4, a2);
  FIK::IKArray<FIK::Segment *>::reserve(a3 + 8, a2);
  FIK::IKArray<FIK::Segment *>::reserve(a3 + 12, a2);
  result = FIK::IKArray<FIK::Vector>::reserve(a3, a2);
  if (a2)
  {
    v11 = a1 + 16;
    v12 = 32 * a2;
    do
    {
      FIK::IKArray<FIK::Segment *>::reserve(a3 + 4, a3[4] + 1);
      *(a3[6] + 8 * a3[4]++) = *v11;
      FIK::IKArray<FIK::Segment *>::reserve(a3 + 8, a3[8] + 1);
      *(a3[10] + 8 * a3[8]++) = *(v11 - 2);
      FIK::IKArray<FIK::Segment *>::reserve(a3 + 12, a3[12] + 1);
      *(a3[14] + 8 * a3[12]++) = *(v11 - 1);
      v13 = *(v11 + 2);
      result = FIK::IKArray<FIK::Vector>::reserve(a3, *a3 + 1);
      v14 = a3[2] + 16 * *a3;
      *v14 = 0;
      *(v14 + 8) = v13;
      *(v14 + 12) = 0;
      ++*a3;
      v11 += 32;
      v12 -= 32;
    }

    while (v12);
  }

  return result;
}

void FIK::generateHelperHierarchyPose(FIK *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v41 = FIK::defaultAllocator(a1);
  v12 = FIK::IKArray<BOOL>::reserve(v39, a7);
  if (a7 != v39[0])
  {
    bzero((v40 + v39[0]), a7 - v39[0]);
  }

  v39[0] = a7;
  if (a7)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(a1 + 6);
      v15 = FIK::defaultAllocator(v12);
      v36[0] = 0;
      v36[1] = 0;
      v37 = 0;
      v38 = v15;
      v12 = FIK::IKArray<FIK::Segment *>::reserve(v36, 1uLL);
      v16 = v37;
      *(v37 + 8 * v36[0]) = v13;
      v17 = ++v36[0];
      for (i = *(v14 + 8 * v13); i != -1; i = *(v14 + 8 * i))
      {
        v12 = FIK::IKArray<FIK::Segment *>::reserve(v36, v17 + 1);
        v16 = v37;
        *(v37 + 8 * v36[0]) = i;
        v17 = ++v36[0];
      }

      if (v17)
      {
        v19 = v16 + 8 * v17;
        v20 = v40;
        do
        {
          v22 = *(v19 - 8);
          v19 -= 8;
          v21 = v22;
          if ((*(v20 + v22) & 1) == 0)
          {
            v23 = *(*(a1 + 6) + 8 * v21);
            v24 = *(*(a1 + 14) + 8 * v21);
            if (v23 == -1)
            {
              v32 = (a6 + 32 * v21);
              *v32 = *(a2 + 32 * v24);
              v32[1] = xmmword_245A01E80;
            }

            else
            {
              FIK::estimateBoneRotationFromVelocity((a2 + 32 * *(*(a1 + 10) + 8 * v21)), (a2 + 32 * v24), (a4 + 32 * v24), 2, &v35);
              v25 = *(*(a1 + 2) + 16 * v21);
              v26 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
              v27 = vnegq_f32(v35);
              v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL), v27), v25, v26);
              v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
              v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v27), v29, v26);
              v31.i64[0] = 0x4000000040000000;
              v31.i64[1] = 0x4000000040000000;
              *(a6 + 32 * v21) = vaddq_f32(*(a6 + 32 * v23), vmlaq_f32(v25, v31, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v29, v35, 3)));
              v20 = v40;
              v16 = v37;
            }

            *(v20 + v21) = 1;
          }
        }

        while (v19 != v16);
        v36[0] = 0;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v36[0] = 0;
      }

      v12 = (*(*v38 + 3))(v38);
LABEL_20:
      if (++v13 == a7)
      {
        v33 = 0;
        v34 = (a6 + 16);
        do
        {
          if (*(*(a1 + 6) + 8 * v33) == -1)
          {
            *v34 = *(a2 + 32 * *(*(a1 + 14) + 8 * v33) + 16);
          }

          ++v33;
          v34 += 2;
        }

        while (a7 != v33);
        break;
      }
    }
  }

  v39[0] = 0;
  if (v40)
  {
    (*(*v41 + 3))(v41, v40, 0, 8);
  }
}

void IKString::operator+(IKString *a1@<X0>, char *a2@<X1>, FIK::Allocator *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v6 = a3;
    v8 = *(a1 + 2);
    v9 = (a3 + *(a1 + 1));
    StringBuffer = IKString::allocateStringBuffer(v9, v8, a3);
    *a4 = StringBuffer;
    a4[1] = v9;
    a4[2] = v8;
    v11 = *(a1 + 1);
    if (v11)
    {
      v12 = *a1;
      v13 = StringBuffer;
      do
      {
        v14 = *v12++;
        *v13++ = v14;
        --v11;
      }

      while (v11);
      v11 = *(a1 + 1);
    }

    v15 = (StringBuffer + v11);
    do
    {
      v16 = *a2++;
      *v15++ = v16;
      v6 = (v6 - 1);
    }

    while (v6);
  }

  else
  {

    IKString::IKString(a4, a1);
  }
}

size_t *FIK::IKArray<BOOL>::reserve(size_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], (a2 + 7) & 0xFFFFFFFFFFFFFFF8, 1);
      bzero(v5, v4);
    }

    else
    {
      v5 = 0;
    }

    memcpy(v5, v2[2], *v2);
    v6 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v3;
    if (v6)
    {
      v7 = *(*result + 24);

      return v7();
    }
  }

  return result;
}

uint64_t ikinema::DoSolveAlgorithmImpl::process(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = ikinema::BufferContainer::buffer(a3, *(a1 + 24));
  v5 = ikinema::Buffer::arrayView<FIK::Transform>(v4);
  *(a1 + 8) = 2;
  FIK::IKSolver::solve(*(a1 + 16), *(a1 + 12), (a1 + 8));
  v6 = *(a1 + 8);
  if (v6 == 2)
  {
    v7 = ikinemaLogObject()[1];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ikinema::DoSolveAlgorithmImpl::process(v7);
    }

    return 1;
  }

  else
  {
    if (v6 == 1 || (RootSegment = FIK::IKSolver::getRootSegment(*(a1 + 16)), (*(*RootSegment + 360))(v16), v10 = vmulq_f32(v16[0], v16[0]), sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) > 5000.0))
    {
      FIK::IKSolver::resetSolver(*(a1 + 16));
      FIK::IKSolver::solve(*(a1 + 16), *(a1 + 12), (a1 + 8));
    }

    v11 = FIK::IKSolver::numSegments(*(a1 + 16));
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = (v5 + 16);
      do
      {
        v15 = *FIK::IKSolver::getSegment(*(a1 + 16), v13);
        (*(v15 + 360))(v16);
        v14[-1] = v16[0];
        *v14 = v16[1];
        v14 += 2;
        ++v13;
      }

      while (v12 != v13);
    }

    return 0;
  }
}

uint64_t ikinema::DoSolveAlgorithmImpl::registerBuffers(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = 72 * *a2;
  v3 = (a2[2] + 56);
  while (1)
  {
    v4 = *v3;
    v3 += 9;
    if (v4 == *(a1 + 24))
    {
      break;
    }

    v2 -= 72;
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

_DWORD *ikinema::DoSolveAlgorithm::create@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = FIK::FIKAlloc(0x20, 8);
  if (result)
  {
    result[2] = 2;
    result[3] = a2;
    *result = &unk_28589BC30;
    *(result + 2) = a1;
    *(result + 3) = a3;
  }

  *a4 = result;
  return result;
}

const char *ikinema::AlgorithmBlockBase<ikinema::DoSolveAlgorithm>::typeId()
{
  result = "N7ikinema16DoSolveAlgorithmE";
  if (("N7ikinema16DoSolveAlgorithmE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7ikinema16DoSolveAlgorithmE" & 0x7FFFFFFFFFFFFFFFLL);
    v2 = 5381;
    do
    {
      result = v2;
      v3 = *v1++;
      v2 = (33 * v2) ^ v3;
    }

    while (v3);
  }

  return result;
}

int32x4_t FIK::GameRigTaskFactory::hipsTask@<Q0>(FIK::GameRigTaskFactory *this@<X0>, FIK::RigTask *a2@<X8>)
{
  FIK::RigTask::RigTask(a2, this);
  *(v3 + 176) = 0;
  *(v3 + 184) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 188) = 0;
  *(v3 + 204) = 0;
  *(v3 + 208) = xmmword_245A01E80;
  *(v3 + 236) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 52) = 257;
  result = vdupq_n_s32(0x42C80000u);
  *(v3 + 80) = result;
  *(v3 + 96) = result;
  return result;
}

__n128 FIK::GameRigTaskFactory::headTask@<Q0>(FIK::GameRigTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v3 + 176) = 0;
  *(v3 + 184) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 188) = 0;
  *(v3 + 204) = 0;
  *(v3 + 208) = xmmword_245A01E80;
  *(v3 + 236) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 52) = 256;
  __asm { FMOV            V0.4S, #30.0 }

  *(v3 + 80) = 0u;
  *(v3 + 96) = result;
  return result;
}

__n128 FIK::GameRigTaskFactory::chestTask@<Q0>(FIK::GameRigTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v3 + 176) = 0;
  *(v3 + 184) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 188) = 0;
  *(v3 + 204) = 0;
  *(v3 + 208) = xmmword_245A01E80;
  *(v3 + 236) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 52) = 257;
  __asm { FMOV            V0.4S, #30.0 }

  *(v3 + 80) = vdupq_n_s32(0x42480000u);
  *(v3 + 96) = result;
  return result;
}

int32x4_t FIK::GameRigTaskFactory::ankleTask@<Q0>(FIK::GameRigTaskFactory *this@<X0>, FIK::RigTask *a2@<X8>)
{
  FIK::RigTask::RigTask(a2, this);
  *(v3 + 176) = 0;
  *(v3 + 184) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 188) = 0;
  *(v3 + 204) = 0;
  *(v3 + 208) = xmmword_245A01E80;
  *(v3 + 236) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  result = vdupq_n_s32(0x42480000u);
  *(v3 + 52) = 257;
  *(v3 + 80) = vdupq_n_s32(0x42700000u);
  *(v3 + 96) = result;
  return result;
}

double FIK::GameRigTaskFactory::kneeTask@<D0>(FIK::GameRigTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v3 + 176) = 0;
  *(v3 + 184) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 188) = 0;
  *(v3 + 204) = 0;
  *(v3 + 208) = xmmword_245A01E80;
  *(v3 + 236) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 52) = 1;
  *(v3 + 54) = 1;
  result = 0.0;
  __asm { FMOV            V1.4S, #10.0 }

  *(v3 + 80) = _Q1;
  *(v3 + 96) = 0u;
  return result;
}

__n128 FIK::MoCapTaskFactory::hipsTask@<Q0>(FIK::MoCapTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = this;
  *(v4 + 200) = -1;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = xmmword_245A01E80;
  *(v4 + 240) = xmmword_245A01EF0;
  *(v4 + 204) = 1;
  *(v4 + 52) = 257;
  __asm { FMOV            V0.4S, #30.0 }

  *(v4 + 80) = result;
  *(v4 + 96) = result;
  return result;
}

__n128 FIK::MoCapTaskFactory::headTask@<Q0>(FIK::MoCapTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = this;
  *(v4 + 200) = -1;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = xmmword_245A01E80;
  *(v4 + 240) = xmmword_245A01EF0;
  *(v4 + 204) = 1;
  *(v4 + 52) = 257;
  __asm
  {
    FMOV            V0.4S, #1.0
    FMOV            V1.4S, #30.0
  }

  *(v4 + 80) = result;
  *(v4 + 96) = _Q1;
  return result;
}

__n128 FIK::MoCapTaskFactory::chestTask@<Q0>(FIK::MoCapTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = this;
  *(v4 + 200) = -1;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = xmmword_245A01E80;
  *(v4 + 240) = xmmword_245A01EF0;
  *(v4 + 204) = 1;
  *(v4 + 52) = 257;
  __asm { FMOV            V0.4S, #20.0 }

  *(v4 + 80) = result;
  *(v4 + 96) = result;
  return result;
}

__n128 FIK::MoCapTaskFactory::kneeTask@<Q0>(FIK::MoCapTaskFactory *this@<X0>, FIK::Allocator *a2@<X1>, FIK::RigTask *a3@<X8>)
{
  FIK::RigTask::RigTask(a3, this);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = this;
  *(v4 + 200) = -1;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 224) = xmmword_245A01E80;
  *(v4 + 240) = xmmword_245A01EF0;
  *(v4 + 204) = 1;
  *(v4 + 54) = 0;
  *(v4 + 52) = 257;
  __asm
  {
    FMOV            V0.4S, #5.0
    FMOV            V1.4S, #30.0
  }

  *(v4 + 80) = result;
  *(v4 + 96) = _Q1;
  return result;
}

uint64_t FIK::Utils::ContainsNaN(int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  return 0;
}

{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  return 0;
}

uint64_t FIK::Utils::ContainsNaN(float32x4_t *a1)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1[1], a1[1])))))
  {
    return 1;
  }

  v1 = a1->i32[0];
  v2 = a1->i32[1];
  v3 = a1->i32[2];
  return 0;
}

void FIK::Utils::BlendToTarget(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  if (a4 <= 0.0)
  {
    v7 = *a1;
    goto LABEL_5;
  }

  if (a4 < 1.0)
  {
    v7 = vaddq_f32(*a1, vmulq_n_f32(vsubq_f32(*a2, *a1), a4));
LABEL_5:
    v49 = v7;
    goto LABEL_7;
  }

  v49 = *a2;
LABEL_7:
  v8 = a1[1];
  v9 = a2[1];
  v10 = vmulq_f32(v8, v9);
  v11 = vextq_s8(v10, v10, 8uLL);
  *v10.f32 = vadd_f32(*v10.f32, *v11.f32);
  v10.f32[0] = vaddv_f32(*v10.f32);
  v11.i64[0] = 0;
  v12 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v10, v11)), 0), vnegq_f32(v9), v9);
  v13 = 1.0;
  v14 = 1.0 - a5;
  v15 = vsubq_f32(v8, v12);
  v16 = vmulq_f32(v15, v15);
  v47 = v12;
  v48 = v8;
  v17 = vaddq_f32(v8, v12);
  v18 = vmulq_f32(v17, v17);
  v19 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))));
  v20 = v19 + v19;
  v21 = (v19 + v19) == 0.0;
  v22 = 1.0;
  if (!v21)
  {
    v22 = sinf(v20) / v20;
  }

  v23 = v22;
  v24 = vrecpe_f32(LODWORD(v22));
  v25 = vmul_f32(v24, vrecps_f32(LODWORD(v23), v24));
  LODWORD(v26) = vmul_f32(v25, vrecps_f32(LODWORD(v23), v25)).u32[0];
  if ((v14 * v20) != 0.0)
  {
    v45 = v26;
    v25.f32[0] = sinf(v14 * v20);
    v26 = v45;
    v13 = v25.f32[0] / (v14 * v20);
  }

  v25.f32[0] = v14 * (v26 * v13);
  v27 = vdupq_lane_s32(v25, 0);
  v28 = v20 * a5;
  v29 = 1.0;
  if (v28 != 0.0)
  {
    v44 = v27;
    v46 = v26;
    v30 = sinf(v28);
    v27 = v44;
    v26 = v46;
    v29 = v30 / v28;
  }

  v31 = vmlaq_f32(vmulq_n_f32(v47, (v26 * v29) * a5), v48, v27);
  v32 = vmulq_f32(v31, v31);
  v33 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  v34 = xmmword_245A01E80;
  v35 = xmmword_245A01E80;
  if (vaddv_f32(v33) != 0.0)
  {
    v36 = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
    v37 = vrsqrte_f32(v36);
    v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
    v35 = vmulq_n_f32(v31, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
  }

  v39 = vmulq_f32(v35, v35);
  v40 = vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
  if (vaddv_f32(v40) != 0.0)
  {
    v41 = vadd_f32(v40, vdup_lane_s32(v40, 1)).u32[0];
    v42 = vrsqrte_f32(v41);
    v43 = vmul_f32(v42, vrsqrts_f32(v41, vmul_f32(v42, v42)));
    v34 = vmulq_n_f32(v35, vmul_f32(v43, vrsqrts_f32(v41, vmul_f32(v43, v43))).f32[0]);
  }

  *a3 = v49;
  a3[1] = v34;
}

float32x4_t FIK::Utils::BlendWithTarget@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  v7 = a2[1];
  v47 = *a2;
  v48 = *a1;
  v8 = vmulq_f32(v7, xmmword_245A01E80);
  v9 = vextq_s8(v8, v8, 8uLL);
  *v8.f32 = vadd_f32(*v8.f32, *v9.f32);
  v8.f32[0] = vaddv_f32(*v8.f32);
  v9.i64[0] = 0;
  v10 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v8, v9)), 0), vnegq_f32(v7), v7);
  v11 = 1.0;
  v12 = 1.0 - a5;
  v13 = vsubq_f32(xmmword_245A01E80, v10);
  v14 = vmulq_f32(v13, v13);
  v46 = v10;
  v15 = vaddq_f32(v10, xmmword_245A01E80);
  v16 = vmulq_f32(v15, v15);
  v17 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))));
  v18 = v17 + v17;
  v19 = (v17 + v17) == 0.0;
  v20 = 1.0;
  if (!v19)
  {
    v20 = sinf(v18) / v18;
  }

  v21 = v20;
  v22 = vrecpe_f32(LODWORD(v20));
  v23 = vmul_f32(v22, vrecps_f32(LODWORD(v21), v22));
  LODWORD(v24) = vmul_f32(v23, vrecps_f32(LODWORD(v21), v23)).u32[0];
  if ((v12 * v18) != 0.0)
  {
    v44 = v24;
    v23.f32[0] = sinf(v12 * v18);
    v24 = v44;
    v11 = v23.f32[0] / (v12 * v18);
  }

  v23.f32[0] = v12 * (v24 * v11);
  v25 = vdupq_lane_s32(v23, 0);
  v26 = v18 * a5;
  v27 = 1.0;
  if (v26 != 0.0)
  {
    v43 = v25;
    v45 = v24;
    v28 = sinf(v26);
    v25 = v43;
    v24 = v45;
    v27 = v28 / v26;
  }

  v29 = xmmword_245A01E80;
  v30 = vmlaq_f32(vmulq_n_f32(v46, (v24 * v27) * a5), xmmword_245A01E80, v25);
  v31 = vmulq_f32(v30, v30);
  v32 = vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
  v33 = xmmword_245A01E80;
  if (vaddv_f32(v32) != 0.0)
  {
    v34 = vadd_f32(v32, vdup_lane_s32(v32, 1)).u32[0];
    v35 = vrsqrte_f32(v34);
    v36 = vmul_f32(v35, vrsqrts_f32(v34, vmul_f32(v35, v35)));
    v33 = vmulq_n_f32(v30, vmul_f32(v36, vrsqrts_f32(v34, vmul_f32(v36, v36))).f32[0]);
  }

  v37 = vmulq_f32(v33, v33);
  v38 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  if (vaddv_f32(v38) != 0.0)
  {
    v39 = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
    v40 = vrsqrte_f32(v39);
    v41 = vmul_f32(v40, vrsqrts_f32(v39, vmul_f32(v40, v40)));
    v29 = vmulq_n_f32(v33, vmul_f32(v41, vrsqrts_f32(v39, vmul_f32(v41, v41))).f32[0]);
  }

  result = vaddq_f32(v48, vmulq_n_f32(vsubq_f32(v47, v48), a4));
  *a3 = result;
  a3[1] = v29;
  return result;
}