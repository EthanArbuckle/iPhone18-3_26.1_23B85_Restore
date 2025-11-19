uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *this, int a2, int a3, unsigned int a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = *(*(*this + 40) + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    v8 = -1;
  }

  else
  {
    v7 = *(*(this + 18) + 4 * a4);
    if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(v6[57] + 8 * v7), a3))
    {
      v8 = v7;
    }

    else
    {
      v8 = -1;
    }
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v6, a3, v16, v8);
  v9 = v16[0].i16[0] | v16[0].i16[2] | ((v16[0].i32[0] | v16[0].i32[1]) >> 16);
  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  if ((*(this + 4) & 8) != 0)
  {
    v12 = vand_s8(vshl_u16(v16[0], 0xFFF7FFF6FFF5FFF4), 0x8000400020001);
    LOWORD(v10) = v12.i16[0] | v12.i16[2] | ((v12.i32[0] | v12.i32[1]) >> 16);
    goto LABEL_12;
  }

  if ((v9 & 4) != 0)
  {
    v11 = vand_s8(vshl_u32(*&vmovl_u16(v16[0]), -2), 0x200000001);
    v10 = vorr_s8(vdup_lane_s32(v11, 1), v11).u32[0] | v16[0].i8[4] & 4 | (2 * v16[0].u16[3]) & 8;
  }

  else
  {
LABEL_7:
    LOWORD(v10) = 0;
  }

LABEL_12:
  v10 = v10;
  if (v9)
  {
    v13 = vbicq_s8(vbslq_s8(vmovl_s16(vceqz_s16(vand_s8(v16[0], 0x10001000100010))), xmmword_1E3102070, xmmword_1E3109A80), vmovl_s16(vceqz_s16(vand_s8(v16[0], 0x1000100010001))));
    *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v10 = v13.i32[0] | v10 | v13.i32[1];
    v14 = v10 - 1;
    if (v10 - 1 < 8 && ((0x8Bu >> v14) & 1) != 0)
    {
      v10 = dword_1E3109DA4[v14];
      return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(int,int,int)const::vBoundaryMaskToEMask[v10];
    }
  }

  if (v10)
  {
    return OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(int,int,int)const::vBoundaryMaskToEMask[v10];
  }

  return 0;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(uint64_t a1, int a2, int a3, uint64_t a4, unsigned int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 40) + 8 * a2);
  if (a5 & 0x80000000) == 0 && (v9 = *(*(a1 + 144) + 4 * a5), (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(v8[57] + 8 * v9), a3)))
  {
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, a3, v38, v9);
    if ((v9 & 0x80000000) == 0)
    {
      result = OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(*(v8[57] + 8 * v9), a3, v37);
    }
  }

  else
  {
    LODWORD(v9) = -1;
    result = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(v8, a3, v38, 0xFFFFFFFF);
  }

  v11 = v8[3];
  v12 = *(v11 + 8 * a3);
  if (v12 >= 1)
  {
    v13 = 0;
    v36 = (2 * a3) | 1;
    v14 = v8[6] + 4 * *(v11 + 4 * v36);
    v15 = 7;
    if ((*(a1 + 8) & 8) == 0)
    {
      v15 = 3;
    }

    v34 = v14;
    v35 = v15;
    do
    {
      if ((v9 & 0x80000000) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = v37[v13] & 1;
      }

      if ((*(a1 + 8) & 8) != 0)
      {
        v17 = (v38[v13] & 0x1000) != 0 && (v38[v13] & 0x780) != 256;
      }

      else
      {
        v17 = 0;
      }

      if ((v16 | v17))
      {
        v18 = v38[v13];
        v19 = a4 + 6 * v13;
        if (v18)
        {
          v23 = *(v8[6] + 4 * *(v8[3] + 4 * v36) + 4 * v13);
          v24 = v8[36];
          v25 = v8[33];
          v26 = *(v25 + 8 * v23 + 4);
          v27 = *(v25 + 8 * v23);
          v28 = v8[39];
          *(v19 + 4) = 0;
          *v19 = 0;
          if (v27 >= 1)
          {
            v29 = 0;
            v30 = v24 + 4 * v26;
            v31 = v28 + 2 * v26;
            while (*(v30 + 4 * v29) != a3 || v13 != *(v31 + 2 * v29))
            {
              if (v27 == ++v29)
              {
                goto LABEL_22;
              }
            }

            *(v19 + 2) = v29;
            *v19 = 1;
            *(v19 + 4) = 2;
          }
        }

        else
        {
        }
      }

      else
      {
        v20 = a4 + 6 * v13;
        *(v20 + 4) = 0;
        *v20 = 0;
        v18 = v38[v13];
      }

LABEL_22:
      if ((v18 & 8) != 0)
      {
        v22 = a4 + 6 * v13;
        v21 = *(v22 + 4) | 2;
      }

      else
      {
        if ((*(a1 + 8) & 8) == 0)
        {
          v21 = *(a4 + 6 * v13 + 4);
          if ((v21 & 2) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

        v22 = a4 + 6 * v13;
        v21 = *(v22 + 4) & 0xFD | (v18 >> 13) & (2 * ((v18 & 0x780) == 1024));
      }

      *(v22 + 4) = v21;
      if ((v21 & 2) == 0)
      {
LABEL_35:
        if (v18 & 7) == 6 && (*(a1 + 24))
        {
          v32 = (a4 + 6 * v13);
          v33 = *v32;
          if (!*v32)
          {
            v33 = *(v8[33] + 8 * *(v34 + 4 * v13));
          }

          *(v32 + 4) = v21 | (2 * (v33 == 1));
        }
      }

LABEL_40:
      ++v13;
    }

    while (v13 != v12);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v3 = *(a2 + 1);
  if ((-858993459 * ((*(a2 + 2) - v3) >> 2)) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v3 + v6 + 4);
      v8 += v10;
      v14 = *(v3 + v6);
      v9 += v10 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v14);
      ++v7;
      v3 = *(a2 + 1);
      v6 += 20;
    }

    while (v7 < (-858993459 * ((*(a2 + 2) - v3) >> 2)));
    if (v9 && v8 != 0)
    {
      std::vector<unsigned int>::resize((a2 + 32), v9);
      std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::resize(a2 + 7, v8);
      if ((*(*this + 8) & 1) == 0)
      {
        v13 = 3;
        *(a2 + 36) = 3;
        NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v13);
        std::vector<unsigned int>::resize((a2 + 152), v8 * NumControlVertices);
      }

      if ((*(this + 4) & 4) != 0)
      {
        std::vector<unsigned int>::resize((a2 + 224), v8, &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
      }
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::resize(void *a1, unint64_t a2)
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
    std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::__append(a1, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, const OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = *this;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::resize(a2 + 22, ((*(this + 19) - *(this + 18)) >> 2));
  v8 = *(this + 18);
  if (((*(this + 19) - v8) >> 2) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v6 - v7) >> 3;
    do
    {
      v12 = (*(*(*(**(v5 + 40) + 456) + 8 * *(v8 + 4 * v10)) + 8) >> 2) & 7;
      *(*(a2 + 22) + v9) = v12;
      v13 = *(this + 4);
      if (*(v5 + 8))
      {
        if ((v13 & 2) != 0)
        {
          v18 = 4;
        }

        else
        {
          v18 = 3;
        }

        v20 = v18;
        v17 = &v20;
      }

      else
      {
        if (v12 == 5)
        {
          v14 = 1;
        }

        else
        {
          v14 = (v13 >> 13) & 1;
        }

        if ((v13 & 0x700) == 0x300)
        {
          v15 = 9;
        }

        else
        {
          v15 = 6;
        }

        if (v14)
        {
          v16 = 3;
        }

        else
        {
          v16 = v15;
        }

        v19 = v16;
        v17 = &v19;
      }

      OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(a2, v17, v11, v10++);
      v8 = *(this + 18);
      v9 += 56;
    }

    while (v10 < ((*(this + 19) - v8) >> 2));
  }
}

unint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(void *a1, uint64_t a2, int a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  v6 = *(*(*(a1[11] + 24 * a3) + 24) + 8 * a4) != 4;
  if (a3 < 1)
  {
    v7 = 0;
    v22 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = a1[8];
    v11 = a1[5];
    v12 = 1;
    v13 = a3;
    do
    {
      v14 = *(v10 + 8 * (v13 - 1));
      v15 = a4;
      a4 = *(v14[33] + 4 * a4);
      if (*(*(*(v11 + 8 * (v13 - 1)) + 24) + 8 * a4) == 4)
      {
        v7 = (*(v14[42] + v15) >> 3) & 3;
        if (v7 == 2)
        {
          v16 = v12 + v8;
        }

        else
        {
          v16 = v8;
        }

        if (v7)
        {
          v8 += v12;
        }

        if (v7 > 1)
        {
          v9 += v12;
          v8 = v16;
        }

        v12 = 2 * (v12 & 0x7FFF);
      }

      else
      {
        v17 = v14[11];
        v18 = *(v17 + 8 * a4);
        if (v18 < 1)
        {
LABEL_16:
          v6 = 1;
        }

        else
        {
          v19 = 0;
          v20 = v14[15] + 4 * *(v17 + 4 * ((2 * a4) | 1));
          while (*(v20 + 4 * v19) != v15)
          {
            if (v18 == ++v19)
            {
              goto LABEL_16;
            }
          }

          v6 = 1;
          v7 = v19;
        }
      }
    }

    while (v13-- > 1);
    v22 = (v8 << 22) | ((v9 & 0x3FF) << 12);
  }

  if (!v6)
  {
    v7 = 0;
  }

  v23 = (*(a2 + 4 * a4) + v7) & 0xFFFFFFF | (a6 << 28);
  if (v6)
  {
    v24 = 16;
  }

  else
  {
    v24 = 0;
  }

  return v23 | (((a3 & 0xF | ((a5 & 0xF) << 8) | v24) + v22) << 32);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::Create(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[2] & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(a1, a2, a3);
  }

  OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(a1, a2, a3);
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createUniform(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v12, a1, a2, a3);
  v5 = (a2 & (2 * (*a1 < 2uLL)));
  v11 = a1;
  v6 = (*(a1 + 8) >> 2) & 0xF;
  v8 = a2;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v9 = v7;
  v10 = v5;
  operator new();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::createAdaptive(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::BuilderContext(v4, a1, a2, a3);
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(v4, v3);
  operator new();
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::identifyAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2)
{
  v3 = *this;
  v4 = *(*this + 28);
  v5 = (this + 72);
  if (v4 > (*(this + 11) - *(this + 9)) >> 3)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v38 = this + 72;
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>>(v4);
    }

LABEL_41:
    std::string::__throw_length_error[abi:nn200100]();
  }

  LODWORD(__p[0]) = 0;
  std::vector<int>::push_back[abi:nn200100](this + 12, __p);
  std::vector<std::vector<unsigned long>>::resize(this + 15, (*(this + 19) - *(this + 18)) >> 2);
  if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(this + 15);
      LODWORD(__p[0]) = 0;
      std::vector<int>::push_back[abi:nn200100]((v8 + v6), __p);
      ++v7;
      v6 += 24;
    }

    while (v7 < ((*(this + 19) - *(this + 18)) >> 2));
  }

  if ((-1431655765 * ((v3[12] - v3[11]) >> 3)) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v3[5] + 8 * v9);
      LODWORD(__p[0]) = v10[2] + *(*(this + 13) - 4);
      std::vector<int>::push_back[abi:nn200100](this + 12, __p);
      v11 = *(this + 18);
      if (((*(this + 19) - v11) >> 2) >= 1)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(this + 15) + v12;
          LODWORD(__p[0]) = *(*(*(v10 + 57) + 8 * *(v11 + 4 * v13)) + 16) + *(*(v14 + 8) - 4);
          std::vector<int>::push_back[abi:nn200100](v14, __p);
          ++v13;
          v11 = *(this + 18);
          v12 += 24;
        }

        while (v13 < ((*(this + 19) - v11) >> 2));
      }

      if (*v10 >= 1)
      {
        break;
      }

LABEL_39:
      if (++v9 >= (-1431655765 * ((v3[12] - v3[11]) >> 3)))
      {
        return;
      }
    }

    v15 = 0;
    while (1)
    {
      v16 = *this;
      v17 = *(*(*this + 40) + 8 * v9);
      if (*(v17[12] + v15) & 1) != 0 || v9 < ((*(v16 + 8) >> 2) & 0xF) && (*(*(*(*(v16 + 64) + 8 * v9) + 408) + v15))
      {
        goto LABEL_38;
      }

      v18 = (v17[3] + 8 * v15);
      v19 = v17[6];
      v20 = *v18;
      v21 = v18[1];
      v22 = v17[54];
      v23 = *(v22 + 2 * *(v19 + 4 * v21));
      if (v20 >= 2)
      {
        v24 = v20 - 1;
        v25 = (v19 + 4 * v21 + 4);
        do
        {
          v26 = *v25++;
          v23 |= *(v22 + 2 * v26);
          --v24;
        }

        while (v24);
      }

      if ((v23 & 0x800) != 0)
      {
        goto LABEL_38;
      }

      v28 = *(this + 10);
      v27 = *(this + 11);
      if (v28 >= v27)
      {
        v30 = (v28 - *v5) >> 3;
        v31 = v30 + 1;
        if ((v30 + 1) >> 61)
        {
          goto LABEL_41;
        }

        v32 = v27 - *v5;
        if (v32 >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        v38 = this + 72;
        if (v33)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>>(v33);
        }

        v34 = (8 * v30);
        __p[0] = 0;
        __p[1] = v34;
        __p[3] = 0;
        *v34 = v15;
        v34[1] = v9;
        __p[2] = (8 * v30 + 8);
        std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(this + 9, __p);
        v29 = *(this + 10);
        if (__p[0])
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v28 = v15;
        v28[1] = v9;
        v29 = v28 + 2;
      }

      *(this + 10) = v29;
      if (OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v9, v15, 0xFFFFFFFF))
      {
        break;
      }

      ++*(this + 15);
      if ((*(this + 4) & 0x700) == 0x400)
      {
        v35 = (OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v10, v15, 0xFFFFFFFF) >> 2) & 1;
        v36 = this + 64;
        goto LABEL_37;
      }

LABEL_38:
      if (++v15 >= *v10)
      {
        goto LABEL_39;
      }
    }

    v35 = 1;
    v36 = this + 56;
LABEL_37:
    *v36 += v35;
    goto LABEL_38;
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTableFactory::populateAdaptivePatches(OpenSubdiv::v3_1_1::Far::PatchTableFactory *this, OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext *a2, OpenSubdiv::v3_1_1::Far::PatchTable *a3)
{
  v5 = 0;
  v189 = *MEMORY[0x1E69E9840];
  v157 = *this;
  do
  {
    v6 = &v185 + v5;
    *v6 = 6;
    *(v6 + 4) = 0;
    *(v6 + 7) = 0;
    *(v6 + 12) = 0uLL;
    *(v6 + 4) = &v188[v5];
    *(v6 + 5) = 0x100000000;
    *(v6 + 7) = 0;
    *(v6 + 8) = &v188[v5 + 32];
    *(v6 + 9) = 0x100000000;
    v5 += 96;
    *(v6 + 11) = 0;
  }

  while (v5 != 288);
  v7 = *(this + 14);
  v185 = 6;
  v186 = v7;
  v8 = v7 > 0;
  v9 = *(this + 9) & 7;
  switch(v9)
  {
    case 4:
      v17 = &v185 + 24 * (v7 > 0);
      v18 = *(this + 15);
      v19 = *(this + 16);
      v15 = __OFSUB__(v18, v19);
      v20 = v18 - v19;
      *v17 = 7;
      v17[1] = v20;
      if ((v20 < 0) ^ v15 | (v20 == 0))
      {
        v21 = v8;
      }

      else
      {
        v21 = v8 + 1;
      }

      v22 = &v185 + 24 * v21;
      *v22 = 8;
      v22[1] = v19;
      v162 = v21;
      v164 = v8;
      if (v19 <= 0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21 + 1;
      }

      break;
    case 3:
      v12 = &v185 + 24 * (v7 > 0);
      v13 = *(this + 15);
      v14 = v12[1];
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      *v12 = 9;
      v12[1] = v16;
      if ((v16 < 0) ^ v15 | (v16 == 0))
      {
        v11 = v8;
      }

      else
      {
        v11 = v8 + 1;
      }

      v162 = v8;
      v164 = v8;
      break;
    case 2:
      v162 = 0;
      v164 = 0;
      v10 = *(this + 15);
      v186 = v10 + v7;
      if ((v186 < 0) ^ __OFADD__(v10, v7) | (v186 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      break;
    default:
      v11 = v7 > 0;
      v162 = 2;
      v164 = 1;
      break;
  }

  v23 = v11;
  std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::reserve(a2 + 1, v11);
  v168 = 0;
  v167 = 0;
  if (v11)
  {
    v25 = &v186;
    v26 = v23;
    do
    {
      v27 = *v25;
      LODWORD(v181) = *(v25 - 1);
      OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(a2, &v181, v27, &v168 + 1, &v168, &v167);
      v25 += 24;
      --v26;
    }

    while (v26);
  }

  v159 = *(this + 4);
  OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateVertexTables(this, a2, v24);
  if (*(this + 18) != *(this + 19))
  {
    OpenSubdiv::v3_1_1::Far::PatchTableFactory::allocateFVarChannels(this, a2, v28);
  }

  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v30 = &v185 + 24 * i;
      v31 = (*(a2 + 1) + 20 * i);
      LODWORD(v181) = *v31;
      OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v181);
      *(v30 + 1) = *(a2 + 4) + 4 * v31[2];
      v32 = *(*(a2 + 1) + 20 * i + 12);
      *(v30 + 2) = *(a2 + 7) + 8 * v32;
      if ((v159 & 4) != 0)
      {
        *(v30 + 3) = *(a2 + 28) + 4 * v32;
      }

      v33 = *(this + 18);
      v34 = *(this + 19);
      if (v33 != v34)
      {
        v35 = v34 - v33;
        v36 = (v34 - v33) >> 2;
        if (v36)
        {
          if (v30[11] < v36)
          {
            operator delete(*(v30 + 7));
            *(v30 + 4) = v30 + 12;
            v30[11] = 1;
            v37 = operator new((2 * v35) & 0x7FFFFFFF8);
            *(v30 + 7) = v37;
            *(v30 + 4) = v37;
            v30[11] = v36;
          }
        }

        else
        {
          operator delete(*(v30 + 7));
          *(v30 + 4) = v30 + 12;
          v30[11] = 1;
        }

        v30[10] = v36;
        v38 = *(this + 19) - *(this + 18);
        v39 = v38 >> 2;
        if ((v38 >> 2))
        {
          if (v30[19] < v39)
          {
            operator delete(*(v30 + 11));
            *(v30 + 8) = v30 + 20;
            v30[19] = 1;
            v40 = operator new((2 * v38) & 0x7FFFFFFF8);
            *(v30 + 11) = v40;
            *(v30 + 8) = v40;
            v30[19] = v39;
          }
        }

        else
        {
          operator delete(*(v30 + 11));
          *(v30 + 8) = v30 + 20;
          v30[19] = 1;
        }

        v30[18] = v39;
        if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
        {
          v41 = 0;
          v42 = 0;
          do
          {
            LODWORD(v181) = *(*(a2 + 22) + v41 + 4);
            v43 = *(*(a2 + 1) + 20 * i + 12);
            *(*(v30 + 4) + 8 * v42) = *(*(a2 + 22) + v41 + 8) + 4 * (v43 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v181));
            *(*(v30 + 8) + 8 * v42++) = *(*(a2 + 22) + v41 + 32) + 8 * v43;
            v41 += 56;
          }

          while (v42 < ((*(this + 19) - *(this + 18)) >> 2));
        }
      }
    }
  }

  v44 = &v183;
  v180 = 0;
  v181 = &v183;
  v182 = 0x100000000;
  __p = 0;
  v45 = &v179;
  v176 = 0;
  v177 = &v179;
  v178 = 0x100000000;
  v46 = &v175;
  v173 = &v175;
  v174 = 0x100000000;
  v47 = *(this + 9) & 7;
  switch(v47)
  {
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
  }

  v49 = *(this + 18);
  v48 = *(this + 19);
  if (v49 != v48)
  {
    v50 = v48 - v49;
    v51 = (v48 - v49) >> 2;
    if (v51)
    {
      if (HIDWORD(v182) >= v51)
      {
        v53 = (v48 - v49) >> 2;
LABEL_55:
        LODWORD(v182) = v51;
        if (v53)
        {
          if (HIDWORD(v178) >= v53)
          {
            LODWORD(v55) = v53;
LABEL_61:
            LODWORD(v178) = v53;
            if (v55)
            {
              LODWORD(v56) = v55;
              if (HIDWORD(v174) >= v55)
              {
                goto LABEL_66;
              }

              operator delete(v176);
              v173 = &v175;
              HIDWORD(v174) = 1;
              v46 = operator new((2 * v50) & 0x7FFFFFFF8);
              v176 = v46;
              v57 = v55;
            }

            else
            {
              operator delete(v176);
              v57 = 1;
            }

            v173 = v46;
            HIDWORD(v174) = v57;
            v49 = *(this + 18);
            v48 = *(this + 19);
            v56 = (v48 - v49) >> 2;
LABEL_66:
            LODWORD(v174) = v55;
            if (v56 >= 1)
            {
              v58 = 0;
              do
              {
                v59 = *(this + 9) & 7;
                if (v59 == 2)
                {
                  operator new();
                }

                if (v59 == 3)
                {
                  operator new();
                }

                ++v58;
              }

              while (v58 < ((v48 - v49) >> 2));
            }

            goto LABEL_73;
          }

          operator delete(v180);
          v177 = &v179;
          HIDWORD(v178) = 1;
          v45 = operator new((2 * v50) & 0x7FFFFFFF8);
          v180 = v45;
          v54 = v53;
        }

        else
        {
          operator delete(v180);
          v54 = 1;
        }

        v177 = v45;
        HIDWORD(v178) = v54;
        v49 = *(this + 18);
        v48 = *(this + 19);
        v50 = v48 - v49;
        v55 = (v48 - v49) >> 2;
        goto LABEL_61;
      }

      operator delete(__p);
      v181 = &v183;
      HIDWORD(v182) = 1;
      v44 = operator new((2 * v50) & 0x7FFFFFFF8);
      __p = v44;
      v52 = v51;
    }

    else
    {
      operator delete(__p);
      v52 = 1;
    }

    v181 = v44;
    HIDWORD(v182) = v52;
    v49 = *(this + 18);
    v48 = *(this + 19);
    v50 = v48 - v49;
    v53 = (v48 - v49) >> 2;
    goto LABEL_55;
  }

LABEL_73:
  v60 = *(this + 9);
  if (((*(this + 10) - v60) >> 3) >= 1)
  {
    v61 = 0;
    v156 = &v185 + 24 * v164;
    v155 = &v185 + 24 * v162;
    while (1)
    {
      v62 = (v60 + 8 * v61);
      v63 = *(*(v157 + 40) + 8 * v62[1]);
      FaceCompositeVTag = OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(v63, *v62, 0xFFFFFFFF);
      memset(v172, 0, sizeof(v172));
      IsPatchRegular = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v62[1], *v62, 0xFFFFFFFF);
      v67 = *v62;
      v66 = v62[1];
      v163 = IsPatchRegular;
      v158 = v61;
      if (!IsPatchRegular)
      {
        break;
      }

      RegularPatchBoundaryMask = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v66, v67, 0xFFFFFFFF);
      v69 = RegularPatchBoundaryMask;
      v160 = 0;
      v70 = 0.0;
      if ((v159 & 4) == 0 || RegularPatchBoundaryMask)
      {
        v72 = RegularPatchBoundaryMask;
      }

      else
      {
        if ((FaceCompositeVTag & 0x1040) == 0)
        {
          goto LABEL_89;
        }

        LODWORD(v169) = 0;
        v166 = 0;
        if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(v63, *v62, &v169, &v166))
        {
          goto LABEL_89;
        }

        v71 = ((*(this + 4) >> 4) - v62[1]);
        if (*&v169 <= v71)
        {
          v71 = *&v169;
        }

        if (v71 > 0.0)
        {
          v69 = 0;
          v160 = 1;
          v72 = 1 << v166;
          v70 = v71;
        }

        else
        {
LABEL_89:
          v69 = 0;
          v72 = 0;
          v160 = 0;
        }
      }

      OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *v187, *v62, v62[1], v69, 0xFFFFFFFF);
      *v187 += 64;
      v76 = v62[1];
      if (v76 == ((*(*this + 8) >> 2) & 0xF))
      {
        LOBYTE(v77) = 0;
      }

      else
      {
        v77 = (*(*(*(*(*this + 64) + 8 * v76) + 408) + *v62) >> 1) & 0xF;
      }

      v74 = &v185;
LABEL_108:
      v92 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::computePatchParam(*this, *(this + 4), v62[1], *v62, v72, v77);
      v93 = *(v74 + 2);
      *(v74 + 2) = v93 + 1;
      v165 = v92;
      *v93 = v92;
      if ((v159 & 4) != 0)
      {
        v94 = *(a2 + 31);
        v95 = *(a2 + 32);
        v96 = v95 - v94;
        v97 = (v95 - v94) >> 2;
        if (v97 < 1)
        {
LABEL_113:
          v99 = *(a2 + 33);
          if (v95 >= v99)
          {
            v101 = v97 + 1;
            if ((v97 + 1) >> 62)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            v102 = v99 - v94;
            if (v102 >> 1 > v101)
            {
              v101 = v102 >> 1;
            }

            v103 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
            v104 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v103)
            {
              v104 = v101;
            }

            if (v104)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2 + 248, v104);
            }

            *(4 * v97) = v70;
            v100 = 4 * v97 + 4;
            memcpy(0, v94, v96);
            v105 = *(a2 + 31);
            *(a2 + 31) = 0;
            *(a2 + 32) = v100;
            *(a2 + 33) = 0;
            if (v105)
            {
              operator delete(v105);
              v94 = *(a2 + 31);
            }

            else
            {
              v94 = 0;
            }
          }

          else
          {
            *v95 = v70;
            v100 = (v95 + 1);
          }

          *(a2 + 32) = v100;
          LODWORD(v98) = ((v100 - v94) >> 2) - 1;
        }

        else
        {
          v98 = 0;
          while (*&v94[4 * v98] != v70)
          {
            if (((v96 >> 2) & 0x7FFFFFFF) == ++v98)
            {
              goto LABEL_113;
            }
          }
        }

        v106 = *(v74 + 3);
        *v106 = v98;
        *(v74 + 3) = v106 + 1;
      }

      v161 = v72;
      v107 = *(this + 18);
      v108 = *(this + 19);
      if (v107 != v108 && ((v108 - v107) >> 2) >= 1)
      {
        v109 = 0;
        while (1)
        {
          v110 = *v62;
          v111 = v62[1];
          v112 = *(*(a2 + 22) + 56 * v109 + 4);
          v166 = v112;
          if (v112 == 3)
          {
            v113 = *(*(*this + 40) + 8 * v111);
            v114 = *(v107 + 4 * v109);
            if ((v114 & 0x80000000) != 0)
            {
              v122 = v113[3];
              v118 = (v113[6] + 4 * *(v122 + 4 * ((2 * v110) | 1)));
              v117 = (v122 + 8 * v110);
            }

            else
            {
              v115 = *(v113[57] + 8 * v114);
              v116 = *(*v115 + 24);
              v117 = (v116 + 8 * v110);
              v118 = (v115[3] + 4 * *(v116 + 4 * ((2 * v110) | 1)));
            }

            v123 = *(v74 + 4);
            v124 = *(v123 + 8 * v109);
            v125 = *v117;
            if (v125 >= 1)
            {
              v126 = *(*(*(this + 15) + 24 * v109) + 4 * v111);
              v127 = *(v123 + 8 * v109);
              v128 = v125;
              do
              {
                v129 = *v118++;
                *v127++ = v129 + v126;
                --v128;
              }

              while (v128);
            }

            *(v123 + 8 * v109) = v124 + 4 * v125;
            v130 = v165;
            goto LABEL_153;
          }

          v119 = *v62;
          if (OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceCompositeValueTag(*(*(*(*(*this + 40) + 8 * v111) + 456) + 8 * *(v107 + 4 * v109)), *v62))
          {
            break;
          }

          if (!v163)
          {
            v169 = 0;
            v170 = 0;
            v131 = v172;
            v171 = 0;
LABEL_147:
            if (v112 == 9)
            {
              OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, v177[v109], *(*(v74 + 4) + 8 * v109));
            }

            else if (v112 == 6)
            {
              OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, v181[v109], *(*(v74 + 4) + 8 * v109), v110, v111, v131, v109);
            }

            v121 = 0;
            LOBYTE(v120) = 0;
            goto LABEL_152;
          }

          v120 = v161;
          if (!v160)
          {
            goto LABEL_139;
          }

          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v74 + 4) + 8 * v109), v110, v111, 0, v109);
          v121 = 0x2000000000;
          LOBYTE(v120) = v161;
LABEL_152:
          *(*(v74 + 4) + 8 * v109) += 4 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v166);
          v130 = v121 | v165 & 0xFFFFF01FFFFFFFFFLL | ((v120 & 0xF) << 40);
LABEL_153:
          v132 = *(v74 + 8);
          v133 = *(v132 + 8 * v109);
          *(v132 + 8 * v109) = v133 + 1;
          *v133 = v130;
          ++v109;
          v107 = *(this + 18);
          if (v109 >= ((*(this + 19) - v107) >> 2))
          {
            goto LABEL_154;
          }
        }

        if (!OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::IsPatchRegular(this, v111, v119, v109))
        {
          v169 = 0;
          v170 = 0;
          v171 = 0;
          v131 = &v169;
          OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v62[1], *v62, &v169, v109);
          v112 = v166;
          goto LABEL_147;
        }

        v120 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetRegularPatchBoundaryMask(this, v62[1], *v62, v109);
LABEL_139:
        OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherRegularPatchPoints(this, *(*(v74 + 4) + 8 * v109), v110, v111, v120, v109);
        v121 = 0x2000000000;
        goto LABEL_152;
      }

LABEL_154:
      v61 = v158 + 1;
      v60 = *(this + 9);
      if (v158 + 1 >= ((*(this + 10) - v60) >> 3))
      {
        goto LABEL_155;
      }
    }

    OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GetIrregularPatchCornerSpans(this, v66, v67, v172, 0xFFFFFFFF);
    v73 = *(this + 9) & 7;
    v70 = 0.0;
    switch(v73)
    {
      case 2:
        v74 = v156;
        v75 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(this, 0, *(v156 + 1), *v62, v62[1], v172, 0xFFFFFFFF);
        break;
      case 4:
        v78 = *v62;
        v79 = v62[1];
        v80 = *(*(*this + 40) + 8 * v79);
        v81 = *(*(this + 12) + 4 * v79);
        if ((FaceCompositeVTag & 4) != 0)
        {
          v88 = *(v155 + 1);
          PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(0, v80, v78, v172, v81, 0xFFFFFFFF);
          if (v84 >= 1)
          {
            v90 = v84 & 0x7FFFFFFF;
            do
            {
              v91 = *PatchPoints++;
              *v88++ = v91;
              --v90;
            }

            while (v90);
          }

          v160 = 0;
          v72 = 0;
          LOBYTE(v77) = 0;
          v74 = v155;
        }

        else
        {
          v82 = *(v156 + 1);
          v83 = OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(0, v80, v78, v172, v81, 0xFFFFFFFF);
          if (v84 >= 1)
          {
            v85 = v84 & 0x7FFFFFFF;
            do
            {
              v86 = *v83++;
              *v82++ = v86;
              --v85;
            }

            while (v85);
          }

          v160 = 0;
          v72 = 0;
          LOBYTE(v77) = 0;
          v74 = v156;
        }

        v87 = *(v74 + 1) + 4 * v84;
        goto LABEL_107;
      case 3:
        v74 = v156;
        v75 = OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(this, 0, *(v156 + 1));
        break;
      default:
        v160 = 0;
        v72 = 0;
        LOBYTE(v77) = 0;
        v74 = v156;
        goto LABEL_108;
    }

    v160 = 0;
    v72 = 0;
    LOBYTE(v77) = 0;
    v87 = *(v74 + 1) + 4 * v75;
LABEL_107:
    *(v74 + 1) = v87;
    goto LABEL_108;
  }

LABEL_155:
  OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(a2);
  v134 = *(this + 9) & 7;
  switch(v134)
  {
    case 2:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
    case 4:
      OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(0, *a2, (a2 + 80), (a2 + 104), 0xFFFFFFFFLL);
      break;
    case 3:
      *(a2 + 16) = 0;
      *(a2 + 17) = 0;
      break;
  }

  v135 = *(this + 18);
  v136 = *(this + 19);
  if (v135 != v136)
  {
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(a2 + 25, (v136 - v135) >> 2);
    if (((*(this + 19) - *(this + 18)) >> 2) >= 1)
    {
      v137 = 0;
      while (1)
      {
        v138 = v173[v137];
        if (((*(v138 + 24) - *(v138 + 16)) >> 2) < 1)
        {
          (*(*v138 + 8))(v173[v137]);
          v173[v137] = 0;
        }

        else
        {
          OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(v173[v137]);
          std::vector<unsigned int>::resize((v138 + 40), ((*(v138 + 24) - *(v138 + 16)) >> 2));
          v139 = *(v138 + 16);
          v140 = *(v138 + 24) - v139;
          if ((v140 >> 2) >= 1)
          {
            v141 = 0;
            v142 = *(v138 + 40);
            v143 = (v140 >> 2) & 0x7FFFFFFF;
            do
            {
              *v142++ = v141;
              v144 = *v139++;
              v141 += v144;
              --v143;
            }

            while (v143);
          }
        }

        v145 = *(this + 9) & 7;
        if (v145 != 2)
        {
          break;
        }

        v151 = v181[v137];
        if (v151)
        {
          v152 = v151[4];
          if (v152)
          {
            v151[5] = v152;
            operator delete(v152);
          }

          v149 = v151;
          v150 = 1232653951;
LABEL_182:
          MEMORY[0x1E6906520](v149, v150 | 0x1070C4000000000);
        }

LABEL_183:
        *(*(a2 + 25) + 8 * v137) = v173[v137];
        if (++v137 >= ((*(this + 19) - *(this + 18)) >> 2))
        {
          goto LABEL_184;
        }
      }

      if (v145 != 3)
      {
        goto LABEL_183;
      }

      v146 = v177[v137];
      if (!v146)
      {
        goto LABEL_183;
      }

      v147 = v146[8];
      if (v147)
      {
        v146[9] = v147;
        operator delete(v147);
      }

      v148 = v146[5];
      if (v148)
      {
        v146[6] = v148;
        operator delete(v148);
      }

      v149 = v146;
      v150 = 537674454;
      goto LABEL_182;
    }
  }

LABEL_184:
  operator delete(v176);
  operator delete(v180);
  operator delete(__p);
  v153 = 288;
  do
  {
    v154 = &v185 + v153;
    operator delete(*(&__p + v153));
    *(v154 - 4) = v154 - 16;
    *(v154 - 5) = 1;
    operator delete(*(&v180 + v153));
    *(v154 - 8) = v154 - 48;
    *(v154 - 13) = 1;
    v153 -= 96;
  }

  while (v153);
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(a2);
  result = v4;
  if (v4 >= 1)
  {
    v7 = v4 & 0x7FFFFFFF;
    do
    {
      v8 = *PatchPoints++;
      *a3++ = v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::GatherIrregularPatchPoints<OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory>(void *a1, uint64_t a2, _DWORD *a3, int a4, int a5, __int16 *a6, unsigned int a7)
{
  if ((a7 & 0x80000000) != 0)
  {
    v9 = a1 + 12;
    v10 = -1;
  }

  else
  {
    v9 = (a1[15] + 24 * a7);
    v10 = *(a1[18] + 4 * a7);
  }

  PatchPoints = OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(a2, *(*(*a1 + 40) + 8 * a5), a4, a6, *(*v9 + 4 * a5), v10);
  result = v11;
  if (v11 >= 1)
  {
    v14 = v11 & 0x7FFFFFFF;
    do
    {
      v15 = *PatchPoints++;
      *a3++ = v15;
      --v14;
    }

    while (v14);
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::resize(void *a1, unint64_t a2)
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
    std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(a1, a2 - v2);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTable::shrinkToFit(OpenSubdiv::v3_1_1::Far::StencilTable *this)
{
  std::vector<int>::vector[abi:nn200100](&v11, this + 2);
  v2 = *(this + 2);
  *(this + 1) = v11;
  v3 = v12;
  v4 = *(this + 4);
  *&v11 = v2;
  v12 = v4;
  *(this + 4) = v3;
  if (v2)
  {
    *(&v11 + 1) = v2;
    operator delete(v2);
  }

  std::vector<int>::vector[abi:nn200100](&v11, this + 8);
  v5 = *(this + 8);
  *(this + 4) = v11;
  v6 = v12;
  v7 = *(this + 10);
  *&v11 = v5;
  v12 = v7;
  *(this + 10) = v6;
  if (v5)
  {
    *(&v11 + 1) = v5;
    operator delete(v5);
  }

  std::vector<int>::vector[abi:nn200100](&v11, this + 11);
  v8 = *(this + 11);
  *(this + 88) = v11;
  v9 = v12;
  v10 = *(this + 13);
  *&v11 = v8;
  v12 = v10;
  *(this + 13) = v9;
  if (v8)
  {
    *(&v11 + 1) = v8;
    operator delete(v8);
  }
}

void *std::vector<int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void std::vector<int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::__append(uint64_t a1, unint64_t a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a1, v9);
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

uint64_t **std::vector<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTableFactory::BuilderContext::PatchTuple>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Far::StencilTable const*>::__append(uint64_t a1, unint64_t a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::StencilTable const*>>(a1, v9);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::StencilTable const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

OpenSubdiv::v3_1_1::Osd::CpuPatchTable *OpenSubdiv::v3_1_1::Osd::CpuPatchTable::CpuPatchTable(OpenSubdiv::v3_1_1::Osd::CpuPatchTable *this, const OpenSubdiv::v3_1_1::Far::PatchTable *a2)
{
  *(this + 3) = 0u;
  v73 = (this + 48);
  *(this + 6) = 0u;
  v72 = (this + 96);
  *(this + 9) = 0u;
  v4 = (this + 144);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v5 = -858993459 * ((*(a2 + 2) - *(a2 + 1)) >> 2);
  if (v5 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v5 & 0x7FFFFFFF;
    do
    {
      v10 = *(*(a2 + 1) + v6 + 4);
      LODWORD(v82) = *(*(a2 + 1) + v6);
      v7 += v10;
      v8 += v10 * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v82);
      v6 += 20;
      --v9;
    }

    while (v9);
    v11 = v8;
  }

  v12 = v5;
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this, v5);
  std::vector<int>::reserve(this + 1, v11);
  std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(this + 9, v5);
  LODWORD(v82) = *(a2 + 36);
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v82);
  std::vector<int>::reserve(v72, v7 * NumControlVertices);
  v14 = (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3));
  v15 = *(this + 15);
  v16 = *(this + 16);
  v17 = 0xAAAAAAAAAAAAAAABLL * (&v16[-v15] >> 3);
  v18 = v14 - v17;
  v75 = v5;
  if (v14 <= v17)
  {
    if (v14 < v17)
    {
      v21 = (v15 + 24 * v14);
      if (v16 != v21)
      {
        v22 = *(this + 16);
        do
        {
          v24 = *(v22 - 3);
          v22 -= 24;
          v23 = v24;
          if (v24)
          {
            *(v16 - 2) = v23;
            operator delete(v23);
          }

          v16 = v22;
        }

        while (v22 != v21);
      }

      *(this + 16) = v21;
    }
  }

  else
  {
    v19 = *(this + 17);
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v16) >> 3) < v18)
    {
      if (v14 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v15) >> 3);
      if (2 * v20 > v14)
      {
        v14 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_59;
    }

    v25 = (24 * v18 - 24) / 0x18;
    v26 = v4;
    v27 = 24 * v25 + 24;
    bzero(v16, v27);
    v28 = &v16[v27];
    v4 = v26;
    *(this + 16) = v28;
  }

  std::vector<std::vector<unsigned long>>::resize(v4, (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3)));
  v29 = (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3));
  v30 = *(this + 21);
  v31 = *(this + 22);
  v32 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
  v33 = v29 - v32;
  if (v29 <= v32)
  {
    if (v29 < v32)
    {
      v36 = v30 + 24 * v29;
      if (v31 != v36)
      {
        v37 = *(this + 22);
        do
        {
          v39 = *(v37 - 24);
          v37 -= 24;
          v38 = v39;
          if (v39)
          {
            *(v31 - 16) = v38;
            operator delete(v38);
          }

          v31 = v37;
        }

        while (v37 != v36);
      }

      *(this + 22) = v36;
    }
  }

  else
  {
    v34 = *(this + 23);
    if (0xAAAAAAAAAAAAAAABLL * ((v34 - v31) >> 3) < v33)
    {
      if (v29 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v30) >> 3);
      if (2 * v35 > v29)
      {
        v29 = 2 * v35;
      }

      if (v35 >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v29 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_59:
      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(*(this + 22), 24 * ((24 * v33 - 24) / 0x18) + 24);
    *(this + 22) = v31 + 24 * ((24 * v33 - 24) / 0x18) + 24;
  }

  if ((-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3)) >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = 4;
    do
    {
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve((*(this + 15) + v40), v12);
      v43 = *(this + 18);
      LODWORD(v82) = *(*(a2 + 22) + v42);
      v44 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v82);
      std::vector<int>::reserve((v43 + v40), v7 * v44);
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve((*(this + 21) + v40), v7);
      ++v41;
      v40 += 24;
      v42 += 56;
    }

    while (v41 < (-1227133513 * ((*(a2 + 23) - *(a2 + 22)) >> 3)));
  }

  std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(v73, v7);
  if (v75 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = 5 * v45;
      v47 = (*(this + 4) - *(this + 3)) >> 2;
      v48 = (*(this + 7) - *(this + 6)) >> 2;
      v82 = *(*(a2 + 1) + 20 * v45);
      v83 = v47;
      v84 = -1431655765 * v48;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this, &v82);
      v49 = (*(a2 + 1) + 20 * v45);
      v80[0] = *v49;
      v50 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(v80);
      v51 = (*(a2 + 4) + 4 * v49[2]);
      v52 = v49[1] * v50;
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(this + 3, *(this + 4), v51, &v51[4 * v52], v52);
      v80[0] = *(a2 + 36);
      v80[1] = v7;
      v81 = 0;
      std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](this + 9, v80);
      v74 = v45;
      PatchArrayVaryingVertices = OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(a2, v45);
      std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(v72, *(this + 13), PatchArrayVaryingVertices, &PatchArrayVaryingVertices[4 * v54], v54);
      v55 = *(a2 + 22);
      if ((-1227133513 * ((*(a2 + 23) - v55) >> 3)) >= 1)
      {
        v56 = 0;
        do
        {
          v57 = 56 * v56;
          LODWORD(v78) = *(v55 + v57 + 4);
          HIDWORD(v78) = v7;
          v79 = 0;
          std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100]((*(this + 15) + 24 * v56), &v78);
          v58 = *(a2 + 1) + 4 * v46;
          v59 = *(a2 + 22) + v57;
          v60 = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((v59 + 4));
          v61 = *(v58 + 4) * v60;
          v62 = (*(v59 + 8) + 4 * *(v58 + 12) * v60);
          std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>((*(this + 18) + 24 * v56), *(*(this + 18) + 24 * v56 + 8), v62, &v62[4 * v61], v61);
          v55 = *(a2 + 22);
          if (v7 >= 1)
          {
            v63 = (*(v55 + v57 + 32) + 8 * *(*(a2 + 1) + 4 * v46 + 12));
            v64 = v7;
            do
            {
              v65 = *v63++;
              v76 = v65;
              v77 = 0;
              std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::push_back[abi:nn200100](*(this + 21) + 24 * v56, &v76);
              --v64;
            }

            while (v64);
            v55 = *(a2 + 22);
          }

          ++v56;
        }

        while (v56 < (-1227133513 * ((*(a2 + 23) - v55) >> 3)));
      }

      v66 = *(*(a2 + 1) + 20 * v74 + 4);
      if (v66 >= 1)
      {
        do
        {
          v67 = *(a2 + 28);
          v68 = 0xAAAAAAAB00000000 * ((*(this + 7) - *(this + 6)) >> 2);
          v69 = 0;
          if ((-1431655765 * ((*(this + 7) - *(this + 6)) >> 2)) < ((*(a2 + 29) - v67) >> 2))
          {
            v70 = *(v67 + (v68 >> 30));
            if ((v70 & 0x80000000) == 0)
            {
              v69 = *(*(a2 + 31) + 4 * v70);
            }
          }

          v78 = *(*(a2 + 7) + (v68 >> 29));
          LODWORD(v79) = v69;
          std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::push_back[abi:nn200100](v73, &v78);
          --v66;
        }

        while (v66);
      }

      v45 = v74 + 1;
    }

    while (v74 + 1 != (v75 & 0x7FFFFFFF));
  }

  return this;
}

void *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::PatchParam>>(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
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

    __p[4] = a1;
    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v10);
    }

    v11 = (16 * v7);
    __p[0] = 0;
    __p[1] = v11;
    *v11 = *a2;
    v12 = *(a2 + 4);
    v11[3] = *(a2 + 12);
    *(v11 + 1) = v12;
    __p[2] = (16 * v7 + 16);
    __p[3] = 0;
    std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(a1, __p);
    v6 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = *(a2 + 4);
    *(v3 + 12) = *(a2 + 12);
    *(v3 + 4) = v5;
    v6 = v3 + 16;
  }

  a1[1] = v6;
}

void std::vector<OpenSubdiv::v3_1_1::Osd::PatchParam>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::PatchParam>>(v10);
    }

    v11 = 12 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    v6 = 12 * v7 + 12;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Osd::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 4);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 4) = v6;
      v2 += 16;
      v5 += 16;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Osd::PatchParam>>(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<int>::__insert_with_size[abi:nn200100]<int const*,int const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v6++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), __dst, a1[1] - __dst);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23++;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = __dst;
    v32 = v6;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27++;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != __dst)
    {
      v31 = __dst;
      v32 = v6;
      v30 = v10 - __dst;
LABEL_35:

      memmove(v31, v32, v30);
    }
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::~PatchTable(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v5 = *(this + 25);
  v4 = *(this + 26);
  if (((v4 - v5) >> 3) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(this + 25);
        v4 = *(this + 26);
      }

      ++v6;
    }

    while (v6 < ((v4 - v5) >> 3));
  }

  v8 = *(this + 31);
  if (v8)
  {
    *(this + 32) = v8;
    operator delete(v8);
  }

  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 25);
  if (v10)
  {
    *(this + 26) = v10;
    operator delete(v10);
  }

  v11 = *(this + 22);
  if (v11)
  {
    v12 = *(this + 23);
    v13 = *(this + 22);
    if (v12 != v11)
    {
      do
      {
        v12 -= 7;
        std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](this + 176, v12);
      }

      while (v12 != v11);
      v13 = *(this + 22);
    }

    *(this + 23) = v11;
    operator delete(v13);
  }

  v14 = *(this + 19);
  if (v14)
  {
    *(this + 20) = v14;
    operator delete(v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    *(this + 14) = v15;
    operator delete(v15);
  }

  v16 = *(this + 10);
  if (v16)
  {
    *(this + 11) = v16;
    operator delete(v16);
  }

  v17 = *(this + 7);
  if (v17)
  {
    *(this + 8) = v17;
    operator delete(v17);
  }

  v18 = *(this + 4);
  if (v18)
  {
    *(this + 5) = v18;
    operator delete(v18);
  }

  v19 = *(this + 1);
  if (v19)
  {
    *(this + 2) = v19;
    operator delete(v19);
  }
}

void *std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0xCCCCCCCCCCCCCCDLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 7;
      std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](a1, v3);
    }

    a1[1] = v7;
  }
}

void OpenSubdiv::v3_1_1::Far::PatchTable::allocateFVarPatchChannelValues(uint64_t a1, OpenSubdiv::v3_1_1::Far::PatchDescriptor *a2, int a3, int a4)
{
  v5 = *(a1 + 176) + 56 * a4;
  *(v5 + 4) = *a2;
  NumControlVertices = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(a2);
  std::vector<unsigned int>::resize((v5 + 8), NumControlVertices * a3);

  std::vector<OpenSubdiv::v3_1_1::Far::PatchParam>::resize((v5 + 32), a3);
}

uint64_t *OpenSubdiv::v3_1_1::Far::PatchTable::pushPatchArray(uint64_t *result, int *a2, int a3, int *a4, int *a5, int *a6)
{
  if (a3 >= 1)
  {
    v11 = result;
    if (a6)
    {
      v12 = *a6;
    }

    else
    {
      v12 = 0;
    }

    v13 = *a2;
    v14 = *a4;
    v15 = *a5;
    v16 = result[2];
    v17 = result[3];
    if (v16 >= v17)
    {
      v19 = result[1];
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 2);
      v21 = v20 + 1;
      if (v20 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v19) >> 2);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x666666666666666)
      {
        v23 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v23 = v21;
      }

      v30 = result + 1;
      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>((result + 1), v23);
      }

      v24 = 20 * v20;
      __p = 0;
      v27 = v24;
      v29 = 0;
      *v24 = v13;
      *(v24 + 4) = a3;
      *(v24 + 8) = v14;
      *(v24 + 12) = v15;
      *(v24 + 16) = v12;
      v28 = 20 * v20 + 20;
      std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(result + 1, &__p);
      if (v28 != v27)
      {
        v28 = (v28 - v27 - 20) % 0x14uLL + v27;
      }

      v18 = v11[2];
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v16 = v13;
      v16[1] = a3;
      v16[2] = v14;
      v16[3] = v15;
      v18 = v16 + 5;
      v16[4] = v12;
    }

    v11[2] = v18;
    LODWORD(__p) = *a2;
    result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&__p);
    v25 = result * a3;
    *a4 += result * a3;
    *a5 += a3;
    if (a6)
    {
      if (*a2 != 7)
      {
        v25 = 0;
      }

      *a6 += v25;
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::GetPatchArrayVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this, int a2)
{
  if (*(this + 19) == *(this + 20))
  {
    return 0;
  }

  v2 = *(this + 1) + 20 * a2;
  return *(this + 19) + 4 * (*(v2 + 12) * OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144)));
}

uint64_t OpenSubdiv::v3_1_1::Far::PatchTable::populateVaryingVertices(OpenSubdiv::v3_1_1::Far::PatchTable *this)
{
  result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices((this + 144));
  v4 = *(this + 1);
  v3 = *(this + 2);
  if ((-858993459 * ((v3 - v4) >> 2)) < 1)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  do
  {
    v7 = (v4 + 20 * v6);
    if (v7[1] < 1)
    {
      goto LABEL_17;
    }

    v8 = 0;
    v9 = *v7;
    do
    {
      v10 = (*(this + 1) + 20 * v6);
      v16 = *v10;
      result = OpenSubdiv::v3_1_1::Far::PatchDescriptor::GetNumControlVertices(&v16);
      v11 = (*(this + 4) + 4 * (v10[2] + v8 * result));
      v12 = (v8 + v7[3]) * v5;
      if (v9 > 5)
      {
        if (v9 == 9)
        {
          v14 = (*(this + 19) + 4 * v12);
          *v14 = *v11;
          v14[1] = v11[5];
          v14[2] = v11[10];
          v15 = v11[15];
        }

        else
        {
          if (v9 != 6)
          {
            goto LABEL_15;
          }

          v14 = (*(this + 19) + 4 * v12);
          *v14 = v11[5];
          v14[1] = v11[6];
          v14[2] = v11[10];
          v15 = v11[9];
        }

        goto LABEL_14;
      }

      if (v9 == 3)
      {
        v14 = (*(this + 19) + 4 * v12);
        *v14 = *v11;
        v14[1] = v11[1];
        v14[2] = v11[2];
        v15 = v11[3];
LABEL_14:
        v14[3] = v15;
        goto LABEL_15;
      }

      if (v9 == 4)
      {
        v13 = (*(this + 19) + 4 * v12);
        *v13 = *v11;
        v13[1] = v11[1];
        v13[2] = v11[2];
      }

LABEL_15:
      ++v8;
    }

    while (v8 < v7[1]);
    v4 = *(this + 1);
    v3 = *(this + 2);
LABEL_17:
    ++v6;
  }

  while (v6 < (-858993459 * ((v3 - v4) >> 2)));
  return result;
}

void std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = a2[1];
  if (v4)
  {
    a2[2] = v4;

    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::PatchArray>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v11);
      v4 = (v4 + v11);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
    if (v7 + a2 > 0x492492492492492)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x492492492492492)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * (v6 >> 3));
    v13 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v12, v13);
    v14 = &v12[v13];
    v15 = &v12[-v6];
    if (v5 != v4)
    {
      v16 = v5;
      v17 = v15;
      do
      {
        *v17 = *v16;
        *(v17 + 2) = 0;
        *(v17 + 3) = 0;
        *(v17 + 8) = *(v16 + 1);
        *(v17 + 3) = v16[3];
        v16[1] = 0;
        v16[2] = 0;
        v16[3] = 0;
        *(v17 + 5) = 0;
        *(v17 + 6) = 0;
        *(v17 + 2) = *(v16 + 2);
        *(v17 + 6) = v16[6];
        v16[4] = 0;
        v16[5] = 0;
        v16[6] = 0;
        v16 += 7;
        v17 += 56;
      }

      while (v16 != v4);
      do
      {
        std::allocator<OpenSubdiv::v3_1_1::Far::PatchTable::FVarPatchChannel>::destroy[abi:nn200100](a1, v5);
        v5 += 7;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  v9 = *v8;
  end = (*v8)->__end_;
  if (!end)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no vertices.";
LABEL_12:
    OpenSubdiv::v3_1_1::Far::Error(4, v12, a3, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  begin = v9->__begin_;
  if (!LODWORD(v9->__begin_))
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- meshes without faces not yet supported.";
    goto LABEL_12;
  }

  if (SHIDWORD(v9->__end_cap_.__value_) >= 0x10000)
  {
    OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face with %d vertices > %d max.", a3, a4, a5, a6, a7, a8, HIDWORD(v9->__end_cap_.__value_));
    return 0;
  }

  v13 = &v9[1].__begin_[2 * begin - 2];
  v15 = *v13;
  v14 = v13[1];
  v16 = v14 + v15;
  if (!(v14 + v15))
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no face-vertices.";
    goto LABEL_12;
  }

  if (*this == 2 && v16 != 3 * begin)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- non-triangular faces not supported by Loop scheme.";
    goto LABEL_12;
  }

  std::vector<unsigned int>::resize(v9 + 2, v16);
  begin_high = HIDWORD(v9->__begin_);
  if (begin_high >= 1)
  {
    std::vector<unsigned int>::resize(v9 + 3, (v9[2].__end_ - v9[2].__begin_));
    std::vector<unsigned int>::resize(v9 + 5, 2 * SHIDWORD(v9->__begin_));
    v19 = &v9[6].__begin_[2 * begin_high - 2];
    v20 = *v19;
    v21 = v19[1];
    std::vector<unsigned int>::resize(v9 + 7, v21 + v20);
    std::vector<unsigned short>::resize(&v9[8].__begin_, v21 + v20);
    v22 = 2 * end - 2;
    v23 = v9[11].__begin_;
    v24 = v23[v22];
    v25 = (8 * (v22 >> 1)) | 4;
    v26 = *(v23 + v25);
    std::vector<unsigned int>::resize(v9 + 12, v26 + v24);
    std::vector<unsigned short>::resize(&v9[13].__begin_, v26 + v24);
    v27 = v9[14].__begin_;
    v28 = v27[v22];
    v29 = *(v27 + v25);
    std::vector<unsigned int>::resize(v9 + 15, v29 + v28);
    std::vector<unsigned short>::resize(&v9[16].__begin_, v29 + v28);
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this, int a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(this + 5);
  v13 = *v12;
  v14 = *(*v12 + 1);
  if (v14)
  {
    if (!*(v13 + 5))
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- maximum valence not assigned.";
LABEL_12:
      OpenSubdiv::v3_1_1::Far::Error(4, v15, a3, a4, a5, a6, a7, a8, v23);
      return 0;
    }

LABEL_5:
    if (!a2 || (OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(v13, a3, a4) & 1) != 0)
    {
      OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(this);
      return 1;
    }

    if (v14)
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected as fully specified.";
    }

    else
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected from partial specification.";
    }

    goto LABEL_12;
  }

  if (OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(*v12))
  {
    goto LABEL_5;
  }

  OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- vertex with valence %d > %d max.", v16, v17, v18, v19, v20, v21, *(v13 + 5));
  return 0;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(int *a1)
{
  v2 = **(a1 + 5);
  v68 = a1[1] & 3;
  if (v68)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
    v3 = SHIDWORD(OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v4 + 2]) > 0;
  }

  if (*(v2 + 4) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v2 + 240);
      v8 = *(v2 + 216);
      v48 = *(*(v2 + 144) + v5) < 2;
      v9 = *(v7 + v6);
      v10 = v9 & 0xFD | (2 * v48);
      *(v7 + v6) = v10;
      if (v48 || (v9 & 1) != 0)
      {
        *(v8 + 4 * v6) = 1092616192;
        v10 = *(v7 + v6);
        v11 = 4;
      }

      else
      {
        v11 = 4 * (*(v8 + 4 * v6) >= 10.0);
      }

      v12 = v10 & 0xFB | v11;
      *(v7 + v6) = v12;
      v13 = *(v8 + 4 * v6);
      v14 = (2 * v11) ^ 8;
      if (v13 <= 0.0)
      {
        v14 = 0;
      }

      *(v7 + v6++) = v14 | v12 & 0xF7;
      v5 += 8;
    }

    while (v6 < *(v2 + 4));
  }

  v15 = *a1;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  if (*(v2 + 8) >= 1)
  {
    v16 = 0;
    v17 = OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v15 + 2];
    do
    {
      v18 = *(v2 + 336);
      v19 = (8 * v16) | 4;
      v20 = (*(v2 + 360) + 4 * *(v18 + v19));
      v21 = *(v18 + 8 * v16);
      if (v21 < 1)
      {
        LOBYTE(v30) = 0;
        v24 = 0;
        v29 = 1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = (*(v2 + 360) + 4 * *(v18 + v19));
        v26 = *(v18 + 8 * v16);
        do
        {
          v27 = *v25++;
          v28 = *(*(v2 + 240) + v27);
          v22 += (v28 >> 1) & 1;
          v24 = vadd_s32(v24, (*&vshl_u32(vdup_n_s32(v28), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          v23 += v28 & 1;
          --v26;
        }

        while (v26);
        v29 = v22 == 0;
        if (v22)
        {
          LOBYTE(v30) = 0;
        }

        else
        {
          v30 = v23 == 2;
        }
      }

      v31 = *(v2 + 432);
      v32 = *(v2 + 408);
      v33 = *(v2 + 288);
      v34 = *(v2 + 264);
      v35 = *(v34 + v19);
      v36 = *(v34 + 8 * v16);
      if (v36 == 1)
      {
        v37 = v21 == 2;
        if (v68 == 2 && v21 == 2)
        {
          v37 = 1;
LABEL_32:
          *(v32 + 4 * v16) = 1092616192;
          v38 = *(v31 + 2 * v16);
          v40 = 1;
LABEL_34:
          v42 = 0;
          v43 = 16;
          goto LABEL_35;
        }
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v31 + 2 * v16);
      v39 = v36 > v21 && v30;
      if ((v38 & 1) != 0 && !v39)
      {
        goto LABEL_32;
      }

      v41 = *(v32 + 4 * v16);
      v40 = v41 >= 10.0;
      if (v41 >= 10.0)
      {
        goto LABEL_34;
      }

      v43 = 0;
      v42 = 1;
LABEL_35:
      v44 = v24.i32[0];
      v45 = v24.i32[1] + v24.i32[0];
      v46 = v38 & 0xFFEF | v43;
      *(v31 + 2 * v16) = v46;
      v47 = *(v32 + 4 * v16);
      v48 = v47 >= 10.0 || v47 <= 0.0;
      if (v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = 32;
      }

      v50 = v49 | ((v44 != 0) << 6) | v46 & 0xFF9F;
      *(v31 + 2 * v16) = v50;
      v51 = *(v32 + 4 * v16) <= 0.0 && v45 <= 2;
      v52 = ((1 << v45) & 0xF) << 7;
      if (!v51)
      {
        LOWORD(v52) = 1024;
      }

      if (v29)
      {
        v53 = 0;
      }

      else
      {
        v53 = 4;
      }

      if (v37 && v40)
      {
        v54 = 8;
      }

      else
      {
        v54 = 2 * (v36 != v17);
        if (!v29)
        {
          v54 = 2 * (v36 != v17 / 2);
        }
      }

      v55 = v52 | v53;
      v56 = v54 | v50 & 0xF871;
      if (((v24.i32[1] == 0) & v42) != 0)
      {
        v57 = 0;
      }

      else
      {
        v57 = 0x4000;
      }

      LOWORD(v58) = v56 & 0x807B | ((v24.i32[1] != 0) << 12) | v55;
      v59 = v57 | v58;
      *(v31 + 2 * v16) = v57 | v58;
      if (!v24.i32[1])
      {
        goto LABEL_83;
      }

      v60 = (*(v32 + 4 * v16) > 0.0) & ~v42;
      if (v24.i32[1] > 2)
      {
        v60 = 1;
      }

      if (v60)
      {
        v61 = 8;
      }

      else
      {
        v61 = 1 << v24.i8[4];
      }

      if (v61 != 8)
      {
        if (v61 != 4)
        {
          goto LABEL_83;
        }

        v59 |= 0x2000u;
        *(v31 + 2 * v16) = v59;
        if ((v56 & 3) != 0)
        {
          goto LABEL_83;
        }

        if (v29)
        {
          if (v17 == 6)
          {
            v63 = *(v2 + 240);
            if (((*(v63 + v20[3]) ^ *(v63 + *v20)) & 4) != 0)
            {
              v64 = 0x4000;
            }

            else
            {
              v64 = ((*(v63 + v20[4]) ^ *(v63 + v20[1])) & 4) << 12;
            }

            LOWORD(v58) = v64 | v59 & 0xB7F8;
          }

          else
          {
            if (v17 != 4)
            {
              goto LABEL_83;
            }

            v58 = v59 & 0xB7F8 | ((((*(*(v2 + 240) + v20[2]) ^ *(*(v2 + 240) + *v20)) >> 2) & 1) << 14);
          }
        }

        else
        {
          LOWORD(v58) = v59 & 0xB7FC;
        }

LABEL_82:
        *(v31 + 2 * v16) = v58;
        LOBYTE(v59) = v58;
        goto LABEL_83;
      }

      if (v21 < 3)
      {
        v62 = v42;
      }

      else
      {
        v62 = 0;
      }

      if (v24.i32[1] == v21 && (v62 & 1) == 0)
      {
        goto LABEL_82;
      }

LABEL_83:
      if (v3 && (v59 & 4) != 0 && v36 >= 1)
      {
        v65 = (v33 + 4 * v35);
        do
        {
          v66 = *v65++;
          *(*(v2 + 96) + v66) |= 1u;
          *(a1 + 8) |= 2u;
          --v36;
        }

        while (v36);
      }

      ++v16;
    }

    while (v16 < *(v2 + 8));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase::prepareFaceVaryingChannels(OpenSubdiv::v3_1_1::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2)
{
  v3 = **(this + 5);
  v4 = *this;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(this);
  if (((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3) < 1)
  {
    return 1;
  }

  v11 = 0;
  v12 = SLODWORD(OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v4 + 2]) / 2;
  while (1)
  {
    v13 = *(*(v3 + 456) + 8 * v11);
    if (!*(v13 + 4))
    {
      break;
    }

    OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::completeTopologyFromFaceValues(v13, v12);
    if (++v11 >= ((*(**(this + 5) + 464) - *(**(this + 5) + 456)) >> 3))
    {
      return 1;
    }
  }

  OpenSubdiv::v3_1_1::Far::Error(4, "Failure in TopologyRefinerFactory<>::Create() -- face-varying channel %d has no values.", v5, v6, v7, v8, v9, v10, v11);
  return 0;
}

void OpenSubdiv::v3_1_1::Far::PtexIndices::initializePtexIndices(OpenSubdiv::v3_1_1::Sdc *a1, unsigned int *a2)
{
  v4 = *a2;
  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  v5 = HIDWORD(OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(void)::staticTraitsTable[3 * v4 + 1]);
  v6 = *(a2 + 5);
  v7 = *v6;
  v8 = **v6;
  std::vector<unsigned int>::resize(a1, v8 + 1);
  v9 = *a1;
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *(v7 + 24);
    v12 = *a1;
    v13 = v8;
    do
    {
      *v12++ = v10;
      v15 = *v11;
      v11 += 2;
      v14 = v15;
      if (v15 == v5)
      {
        v14 = 1;
      }

      v10 += v14;
      --v13;
    }

    while (v13);
  }

  v9[v8] = v10;
}

double OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, float a3, int a4, float *a5, const float *a6)
{
  v6 = a2 > 0.0 && a3 <= 0.0;
  if (a2 <= 0.0 || a3 > 0.0)
  {
    a2 = 0.0;
  }

  if (a6 && (*this & 0x60) != 0)
  {
    if (a4 >= 1)
    {
      v7 = a4;
      do
      {
        if (*a5 > 0.0 && *a6 <= 0.0)
        {
          a2 = a2 + *a5;
          ++v6;
        }

        ++a6;
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *a5++;
      v10 = a2 + v9;
      v6 += v9 > 0.0 && v9 <= 1.0;
      if (v9 > 0.0 && v9 <= 1.0)
      {
        a2 = v10;
      }

      --v8;
    }

    while (v8);
  }

  if (!v6)
  {
    return 0.0;
  }

  *&result = a2 / v6;
  if (*&result > 1.0)
  {
    *&result = 1.0;
  }

  return result;
}

float OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessAtVertex(OpenSubdiv::v3_1_1::Sdc::Crease *this, float a2, int a3, float *a4)
{
  if (a3 >= 2 && (*this & 0x60) != 0)
  {
    v4 = 0.0;
    if (a2 > 0.0)
    {
      v4 = 10.0;
      if (a2 < 10.0)
      {
        v5 = 0;
        v6 = a3;
        v7 = 0.0;
        do
        {
          v8 = *a4++;
          v9 = v7 + v8;
          v10 = v8 > 0.0 && v8 < 10.0;
          if (v8 > 0.0 && v8 < 10.0)
          {
            v7 = v9;
          }

          v5 += v10;
          --v6;
        }

        while (v6);
        v11 = v5 != 0;
        v12 = v5 - 1;
        if (v12 != 0 && v11)
        {
          a2 = (((v7 - a2) / v12) * 0.25) + (a2 * 0.75);
        }

        return fmaxf(a2 + -1.0, 0.0);
      }
    }
  }

  else
  {
    v4 = 0.0;
    if (a2 > 0.0)
    {
      v4 = 10.0;
      if (a2 < 10.0)
      {
        v4 = 0.0;
        if (a2 > 1.0)
        {
          return a2 + -1.0;
        }
      }
    }
  }

  return v4;
}

_WORD *OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(_WORD *this, int a2, float *a3, float *a4)
{
  if (a2 > 1 && (*this & 0x60) != 0)
  {
    if ((*this & 0x60) == 0x20)
    {
      v4 = 0;
      v5 = a2;
      v6 = 0.0;
      v7 = a3;
      v8 = a2;
      do
      {
        v9 = *v7++;
        v10 = v6 + v9;
        v4 += v9 > 0.0 && v9 < 10.0;
        if (v9 > 0.0 && v9 < 10.0)
        {
          v6 = v10;
        }

        --v8;
      }

      while (v8);
      if (v4)
      {
        while (1)
        {
          v11 = *a3;
          v12 = 0.0;
          if (*a3 <= 0.0)
          {
            goto LABEL_16;
          }

          v12 = 10.0;
          if (v11 >= 10.0)
          {
            goto LABEL_16;
          }

          if (v4 == 1)
          {
            break;
          }

          v13 = ((((v6 - v11) / (v4 - 1)) * 0.25) + (v11 * 0.75)) + -1.0;
          v12 = 0.0;
          if (v13 <= 0.0)
          {
            goto LABEL_16;
          }

LABEL_17:
          *a4++ = v13;
          ++a3;
          if (!--v5)
          {
            return this;
          }
        }

        v12 = v11 + -1.0;
        if (v11 <= 1.0)
        {
          v12 = 0.0;
        }

LABEL_16:
        v13 = v12;
        goto LABEL_17;
      }

      do
      {
        v14 = *a3++;
        *a4++ = v14;
        --v5;
      }

      while (v5);
    }
  }

  else if (a2 >= 1)
  {
    v15 = a2;
    do
    {
      v16 = *a3;
      v17 = 0.0;
      if (*a3 > 0.0)
      {
        v17 = 10.0;
        if (v16 < 10.0)
        {
          v17 = 0.0;
          if (v16 > 1.0)
          {
            v17 = v16 + -1.0;
          }
        }
      }

      *a4++ = v17;
      ++a3;
      --v15;
    }

    while (v15);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v4 = this + 456;
  v2 = *(this + 57);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::~FVarLevel(v2[v5]);
        MEMORY[0x1E6906520]();
        v2 = *(this + 57);
        v3 = *(this + 58);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v6 = *(this + 54);
  if (v6)
  {
    *(this + 55) = v6;
    operator delete(v6);
  }

  v7 = *(this + 51);
  if (v7)
  {
    *(this + 52) = v7;
    operator delete(v7);
  }

  v8 = *(this + 48);
  if (v8)
  {
    *(this + 49) = v8;
    operator delete(v8);
  }

  v9 = *(this + 45);
  if (v9)
  {
    *(this + 46) = v9;
    operator delete(v9);
  }

  v10 = *(this + 42);
  if (v10)
  {
    *(this + 43) = v10;
    operator delete(v10);
  }

  v11 = *(this + 39);
  if (v11)
  {
    *(this + 40) = v11;
    operator delete(v11);
  }

  v12 = *(this + 36);
  if (v12)
  {
    *(this + 37) = v12;
    operator delete(v12);
  }

  v13 = *(this + 33);
  if (v13)
  {
    *(this + 34) = v13;
    operator delete(v13);
  }

  v14 = *(this + 30);
  if (v14)
  {
    *(this + 31) = v14;
    operator delete(v14);
  }

  v15 = *(this + 27);
  if (v15)
  {
    *(this + 28) = v15;
    operator delete(v15);
  }

  v16 = *(this + 24);
  if (v16)
  {
    *(this + 25) = v16;
    operator delete(v16);
  }

  v17 = *(this + 21);
  if (v17)
  {
    *(this + 22) = v17;
    operator delete(v17);
  }

  v18 = *(this + 18);
  if (v18)
  {
    *(this + 19) = v18;
    operator delete(v18);
  }

  v19 = *(this + 15);
  if (v19)
  {
    *(this + 16) = v19;
    operator delete(v19);
  }

  v20 = *(this + 12);
  if (v20)
  {
    *(this + 13) = v20;
    operator delete(v20);
  }

  v21 = *(this + 9);
  if (v21)
  {
    *(this + 10) = v21;
    operator delete(v21);
  }

  v22 = *(this + 6);
  if (v22)
  {
    *(this + 7) = v22;
    operator delete(v22);
  }

  v23 = *(this + 3);
  if (v23)
  {
    *(this + 4) = v23;
    operator delete(v23);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::validateTopology(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *(this + 6);
  if (((*(this + 7) - v6) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing face-verts", "MISSING_FACE_VERTS");
    a2(3, __str, a3);
    v8 = *(this + 37) - *(this + 36);
    v63 = 1;
LABEL_65:
    v65 = 0;
    if (v63 && (v8 & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing vert-faces", "MISSING_VERT_FACES");
      v64 = 4;
      goto LABEL_68;
    }

    return v65;
  }

  v7 = *(this + 36);
  v8 = *(this + 37) - v7;
  if ((v8 & 0x3FFFFFFFCLL) == 0)
  {
    v63 = a2 != 0;
    goto LABEL_65;
  }

  v9 = *this;
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = (*(this + 3) + 8 * v10);
      v12 = *v11;
      if (v12 >= 1)
      {
        break;
      }

LABEL_14:
      if (++v10 == v9)
      {
        goto LABEL_15;
      }
    }

    v13 = 0;
    v14 = v6 + 4 * v11[1];
    v15 = *(this + 33);
    while (1)
    {
      v16 = *(v14 + 4 * v13);
      v17 = *(v15 + 8 * v16);
      if (v17 < 1)
      {
        break;
      }

      v18 = *(v15 + 8 * v16 + 4);
      v19 = (v7 + 4 * v18);
      v20 = (*(this + 39) + 2 * v18);
      while (1)
      {
        v21 = *v19++;
        if (v10 == v21 && v13 == *v20)
        {
          break;
        }

        ++v20;
        if (!--v17)
        {
          goto LABEL_61;
        }
      }

      if (++v13 == v12)
      {
        goto LABEL_14;
      }
    }

LABEL_61:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - face %d correlation of vert %d failed");
    goto LABEL_63;
  }

LABEL_15:
  v22 = *(this + 21);
  if (((*(this + 22) - v22) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-faces", "MISSING_EDGE_FACES");
    a2(0, __str, a3);
    v24 = *(this + 10) - *(this + 9);
    v67 = 1;
LABEL_76:
    v65 = 0;
    if (v67 && (v24 & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing face-edges", "MISSING_FACE_EDGES");
      v64 = 2;
      goto LABEL_68;
    }

    return v65;
  }

  v23 = *(this + 9);
  v24 = *(this + 10) - v23;
  if ((v24 & 0x3FFFFFFFCLL) == 0)
  {
    v67 = a2 != 0;
    goto LABEL_76;
  }

  if (v9 >= 1)
  {
    v25 = 0;
    while (1)
    {
      v26 = (*(this + 3) + 8 * v25);
      v27 = *v26;
      if (v27 >= 1)
      {
        break;
      }

LABEL_28:
      if (++v25 == v9)
      {
        goto LABEL_29;
      }
    }

    v28 = 0;
    v29 = v23 + 4 * v26[1];
    v30 = *(this + 18);
    while (1)
    {
      v31 = *(v29 + 4 * v28);
      v32 = *(v30 + 8 * v31);
      if (v32 < 1)
      {
        break;
      }

      v33 = *(v30 + 8 * v31 + 4);
      v34 = (v22 + 4 * v33);
      v35 = (*(this + 24) + 2 * v33);
      while (1)
      {
        v36 = *v34++;
        if (v25 == v36 && v28 == *v35)
        {
          break;
        }

        ++v35;
        if (!--v32)
        {
          goto LABEL_73;
        }
      }

      if (++v28 == v27)
      {
        goto LABEL_28;
      }
    }

LABEL_73:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - face %d correlation of edge %d failed", "FAILED_CORRELATION_FACE_EDGE", v25, v28);
    v64 = 8;
    goto LABEL_68;
  }

LABEL_29:
  v37 = *(this + 15);
  if (((*(this + 16) - v37) & 0x3FFFFFFFCLL) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - missing edge-verts", "MISSING_EDGE_VERTS");
    v68 = 1;
    a2(1, __str, a3);
    v39 = *(this + 46) - *(this + 45);
LABEL_84:
    v65 = 0;
    if (v68 && (v39 & 0x3FFFFFFFCLL) == 0)
    {
      snprintf(__str, 0x400uLL, "%s - missing vert-edges", "MISSING_VERT_EDGES");
      v64 = 5;
      goto LABEL_68;
    }

    return v65;
  }

  v38 = *(this + 45);
  v39 = *(this + 46) - v38;
  if ((v39 & 0x3FFFFFFFCLL) == 0)
  {
    v68 = a2 != 0;
    goto LABEL_84;
  }

  v40 = *(this + 1);
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = *(this + 42);
LABEL_33:
    v43 = 0;
    v44 = 1;
    while (1)
    {
      v45 = v44;
      v46 = *(v37 + 8 * v41 + 4 * v43);
      v47 = *(v42 + 8 * v46);
      if (v47 < 1)
      {
        break;
      }

      v48 = *(v42 + 8 * v46 + 4);
      v49 = (v38 + 4 * v48);
      v50 = (*(this + 48) + 2 * v48);
      while (1)
      {
        v51 = *v49++;
        if (v41 == v51 && v43 == *v50)
        {
          break;
        }

        ++v50;
        if (!--v47)
        {
          goto LABEL_81;
        }
      }

      v44 = 0;
      v43 = 1;
      if ((v45 & 1) == 0)
      {
        if (++v41 != v40)
        {
          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

LABEL_81:
    if (!a2)
    {
      return 0;
    }

    snprintf(__str, 0x400uLL, "%s - edge %d correlation of vert %d failed");
LABEL_63:
    v64 = 7;
LABEL_68:
    a2(v64, __str, a3);
    return 0;
  }

LABEL_42:
  v52 = 2 * *(this + 5);
  v76 = &v77;
  __p = 0;
  if (v52 >= 0x21)
  {
    __p = operator new(4 * v52);
    v76 = __p;
  }

  if (*(this + 2) >= 1)
  {
    for (i = 0; i < *(this + 2); ++i)
    {
      if ((*(*(this + 54) + 2 * i) & 0x801) == 0)
      {
        v54 = *(this + 33);
        v55 = (8 * i) | 4;
        v56 = *(v54 + v55);
        v57 = *(this + 36);
        v58 = *(v54 + 8 * i);
        v59 = *(this + 42);
        v74 = *(v59 + v55);
        v75 = *(this + 45);
        v60 = *(v59 + 8 * i);
        if (!OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(this, i, v76, &v76[v58]))
        {
          if (!a2)
          {
            goto LABEL_105;
          }

          snprintf(__str, 0x400uLL, "%s - vertex %d cannot orient incident faces and edges", "FAILED_ORIENTATION_INCIDENT_FACES_EDGES", i);
          v73 = 11;
          goto LABEL_104;
        }

        if (v58 >= 1)
        {
          v61 = 0;
          while (*(v57 + 4 * v56 + 4 * v61) == v76[v61])
          {
            if (v58 == ++v61)
            {
              goto LABEL_54;
            }
          }

          if (a2)
          {
            snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident face %d", "FAILED_ORIENTATION_INCIDENT_FACE", i, v61);
            v73 = 10;
            goto LABEL_104;
          }

          goto LABEL_105;
        }

LABEL_54:
        if (v60 >= 1)
        {
          v62 = 0;
          while (*(v75 + 4 * v74 + 4 * v62) == v76[v58 + v62])
          {
            if (v60 == ++v62)
            {
              goto LABEL_47;
            }
          }

          if (a2)
          {
            snprintf(__str, 0x400uLL, "%s - vertex %d orientation failure at incident edge %d", "FAILED_ORIENTATION_INCIDENT_EDGE", i, v62);
            v73 = 9;
            goto LABEL_104;
          }

          goto LABEL_105;
        }
      }

LABEL_47:
      ;
    }
  }

  v69 = *(this + 1);
  if (v69 < 1)
  {
LABEL_93:
    v65 = 1;
  }

  else
  {
    v70 = 0;
    v71 = 0;
    while (1)
    {
      if ((*(*(this + 30) + v71) & 1) == 0)
      {
        if (*(*(this + 15) + v70) == *(*(this + 15) + v70 + 4))
        {
          if (!a2)
          {
            goto LABEL_105;
          }

          snprintf(__str, 0x400uLL, "%s - Error in eIndex = %d:  degenerate edge not tagged marked non-manifold", "DEGENERATE_EDGE", v71);
          v73 = 12;
          goto LABEL_104;
        }

        v72 = *(*(this + 18) + v70);
        if ((v72 - 3) <= 0xFFFFFFFD)
        {
          break;
        }
      }

      ++v71;
      v70 += 8;
      if (v69 == v71)
      {
        goto LABEL_93;
      }
    }

    if (!a2)
    {
      goto LABEL_105;
    }

    snprintf(__str, 0x400uLL, "%s - edge %d with %d incident faces not tagged non-manifold", "NON_MANIFOLD_EDGE", v71, v72);
    v73 = 13;
LABEL_104:
    a2(v73, __str, a3);
LABEL_105:
    v65 = 0;
  }

  operator delete(__p);
  return v65;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int *a4)
{
  v4 = *(this + 42);
  v5 = 8 * a2;
  v6 = *(v4 + v5);
  v7 = *(this + 33);
  v8 = *(v7 + v5);
  if (v8)
  {
    v9 = v6 < 2;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v6 - v8 <= 1)
  {
    v12 = (8 * ((2 * a2) >> 1)) | 4;
    if (v6 == v8)
    {
      v12 = *(*(this + 36) + 4 * *(v7 + v12));
      v13 = *(this + 3);
      v14 = *(v13 + 4 * ((2 * v12) | 1));
      v15 = *(this + 6) + 4 * v14;
      v16 = *(v13 + 8 * v12);
      if (v16)
      {
        v17 = 4 * v16;
        v18 = (v15 + v17);
        v19 = (*(this + 6) + 4 * v14);
        while (*v19 != a2)
        {
          ++v19;
          v17 -= 4;
          if (!v17)
          {
            v19 = v18;
            break;
          }
        }
      }

      else
      {
        v19 = (*(this + 6) + 4 * v14);
      }

      v21 = (v19 - v15) >> 2;
      v31 = *(this + 9);
      LODWORD(v14) = *(v31 + 4 * v14 + 4 * v21);
    }

    else
    {
      v20 = 0;
      LODWORD(v21) = 0;
      v22 = *(this + 45) + 4 * *(v4 + v12);
      v23 = *(this + 18);
      LODWORD(v12) = -1;
      v24 = -1;
      do
      {
        v14 = *(v22 + 4 * v20);
        if (*(v23 + 8 * v14) == 1)
        {
          v12 = *(*(this + 21) + 4 * *(v23 + 4 * ((2 * v14) | 1)));
          v13 = *(this + 3);
          v25 = *(v13 + 4 * ((2 * v12) | 1));
          v26 = *(this + 6) + 4 * v25;
          v27 = *(v13 + 8 * v12);
          if (v27)
          {
            v28 = 4 * v27;
            v29 = (v26 + v28);
            v30 = (*(this + 6) + 4 * v25);
            while (*v30 != a2)
            {
              ++v30;
              v28 -= 4;
              if (!v28)
              {
                v30 = v29;
                break;
              }
            }
          }

          else
          {
            v30 = (*(this + 6) + 4 * v25);
          }

          v21 = (v30 - v26) >> 2;
          v31 = *(this + 9);
          if (v14 == *(v31 + 4 * v25 + 4 * v21))
          {
            goto LABEL_29;
          }

          v24 = *(v22 + 4 * v20);
        }

        ++v20;
      }

      while (v20 != v6);
      v13 = *(this + 3);
      v31 = *(this + 9);
      LODWORD(v14) = v24;
    }

LABEL_29:
    v32 = 1;
    *a3 = v12;
    *a4 = v14;
    LODWORD(v33) = v12;
    v34 = v14;
    v35 = 1;
    while (1)
    {
      v36 = v34;
      v37 = *(v13 + 8 * v33);
      if (v21)
      {
        v37 = v21;
      }

      v34 = *(v31 + 4 * *(v13 + 8 * v33 + 4) + 4 * v37 - 4);
      if (v34 == v36 || v34 == v14)
      {
        break;
      }

      a4[v32] = v34;
      if (v35 < v8)
      {
        v39 = *(this + 18);
        v40 = (*(this + 21) + 4 * *(v39 + 4 * ((2 * v34) | 1)));
        v41 = *(v39 + 8 * v34);
        if (v41 == 1)
        {
          v42 = *v40;
          if (*v40 == v33)
          {
            return 0;
          }
        }

        else
        {
          if (!v41)
          {
            return 0;
          }

          v42 = *v40;
        }

        v33 = v40[v42 == v33];
        v43 = v31 + 4 * *(v13 + 4 * ((2 * v33) | 1));
        v44 = *(v13 + 8 * v33);
        if (v44)
        {
          v45 = 4 * v44;
          v46 = (v43 + v45);
          v47 = (v31 + 4 * *(v13 + 4 * ((2 * v33) | 1)));
          while (*v47 != v34)
          {
            ++v47;
            v45 -= 4;
            if (!v45)
            {
              v47 = v46;
              break;
            }
          }
        }

        else
        {
          v47 = (v31 + 4 * *(v13 + 4 * ((2 * v33) | 1)));
        }

        v21 = (v47 - v43) >> 2;
        a3[v35++] = v33;
      }

      if (++v32 == v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceVTags(void *result, int a2, _WORD *a3, unsigned int a4)
{
  v4 = (2 * a2) | 1;
  v5 = result[3];
  v6 = (result[6] + 4 * *(v5 + 4 * v4));
  v7 = *(v5 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v7 >= 1)
    {
      do
      {
        v19 = *v6++;
        *a3++ = *(result[54] + 2 * v19);
        --v7;
      }

      while (v7);
    }
  }

  else if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result[57] + 8 * a4);
    v10 = v9[3] + 4 * *(*(*v9 + 24) + 4 * v4);
    do
    {
      v11 = v6[v8];
      v12 = *(v10 + 4 * v8);
      if (*(*v9 + 12) <= 0)
      {
        v13 = *(v9[12] + 4 * v11);
        v12 = v13 - 1;
        v14 = (v9[18] + 4 * v13);
        do
        {
          v15 = *v14++;
          ++v12;
        }

        while (v15 != *(v10 + 4 * v8));
      }

      v16 = *(v9[21] + v12);
      LOWORD(v11) = *(result[54] + 2 * v11);
      if (v16)
      {
        v17 = v11 & 0x8860;
        if (v16 >= 0x40)
        {
          v18 = 1040;
        }

        else
        {
          v18 = 1048;
        }

        if ((v16 & 8) != 0)
        {
          v18 = 8704;
        }

        LODWORD(v11) = (v18 | v17) & 0xFFFFBFFC | (((v16 >> 7) & 1) << 14) | v16 & 2 | (v16 >> 2) & 1 | 0x1004;
      }

      a3[v8++] = v11;
    }

    while (v8 != v7);
  }

  return result;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(void *result, int a2, _BYTE *a3, unsigned int a4)
{
  v4 = result[3];
  v5 = (result[9] + 4 * *(v4 + 8 * a2 + 4));
  v6 = *(v4 + 8 * a2);
  if ((a4 & 0x80000000) != 0)
  {
    if (v6 >= 1)
    {
      do
      {
        v10 = *v5++;
        *a3++ = *(result[30] + v10);
        --v6;
      }

      while (v6);
    }
  }

  else if (v6 >= 1)
  {
    v7 = *(result[57] + 8 * a4);
    do
    {
      v8 = *v5++;
      v9 = *(result[30] + v8);
      if (*(*(v7 + 48) + v8))
      {
        v9 |= 6u;
      }

      *a3++ = v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceCompositeVTag(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, unsigned int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  v6 = *(v5 + 8 * a2 + 4);
  v7 = *(this + 6);
  v8 = *(v5 + 8 * a2);
  if ((a3 & 0x80000000) != 0)
  {
    v24 = *(this + 54);
    v12 = *(v24 + 2 * *(v7 + 4 * v6));
    if (v8 >= 2)
    {
      v25 = v8 - 1;
      v26 = (v7 + 4 * v6 + 4);
      do
      {
        v27 = *v26++;
        v12 = *(v24 + 2 * v27) | v12;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v9 = *(*(this + 57) + 8 * a3);
    v10 = v30;
    v29 = v30;
    __p = 0;
    if (v8 >= 0x41)
    {
      v10 = operator new(v8);
      __p = v10;
      v29 = v10;
    }

    OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::getFaceValueTags(v9, a2, v10);
    v11 = *(this + 54);
    v12 = *(v11 + 2 * *(v7 + 4 * v6));
    v13 = *v29;
    if (v13)
    {
      v14 = v12 & 0xD867 | (8 * (v13 < 0x40)) | 0x410;
      if ((v13 & 8) != 0)
      {
        v14 = v12 & 0xD867 | 0x2200;
      }

      v12 = v14 & 0xAFF8 | (((v13 >> 7) & 1) << 14) | v13 & 2 | (v13 >> 2) & 1 | 0x1004;
    }

    if (v8 >= 2)
    {
      v15 = v8 - 1;
      v16 = (v7 + 4 * v6 + 4);
      v17 = v29 + 1;
      do
      {
        v18 = *v16++;
        v19 = *(v11 + 2 * v18);
        LODWORD(v18) = *v17++;
        v20 = v18;
        if (v18)
        {
          v21 = v19 & 0xD867;
          v22 = v21 | 0x2200;
          v23 = v21 | (8 * (v20 < 0x40)) | 0x410;
          if ((v20 & 8) != 0)
          {
            v23 = v22;
          }

          v19 = v23 & 0xAFF8 | (((v20 >> 7) & 1) << 14) | v20 & 2 | (v20 >> 2) & 1 | 0x1004;
        }

        v12 = v19 | v12;
        --v15;
      }

      while (v15);
    }

    operator delete(__p);
  }

  return v12;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::getVertexCompositeFVarVTag(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int a3)
{
  v3 = *(*(this + 57) + 8 * a3);
  v4 = *(v3[12] + 4 * a2);
  v5 = v3[21];
  v6 = *(*(this + 54) + 2 * a2);
  v7 = *(v5 + v4);
  if ((v7 & 1) == 0)
  {
    return *(*(this + 54) + 2 * a2);
  }

  v9 = *(v3[9] + 2 * a2);
  v10 = v6 & 0xD867 | (8 * (v7 < 0x40)) | 0x410;
  if ((v7 & 8) != 0)
  {
    v10 = v6 & 0xD867 | 0x2200;
  }

  result = v10 & 0xAFF8 | (((v7 >> 7) & 1) << 14) | v7 & 2 | (v7 >> 2) & 1 | 0x1004;
  if (v9 >= 2)
  {
    v11 = v9 - 1;
    v12 = (v4 + v5 + 1);
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v6;
      if (v14)
      {
        v16 = v6 & 0xD867 | (8 * (v13 < 0x40)) | 0x410;
        if ((v13 & 8) != 0)
        {
          v16 = v6 & 0xD867 | 0x2200;
        }

        v15 = v16 & 0xAE78 | (((v13 >> 7) & 1) << 14) | v13 & 2 | (v13 >> 2) & 1 | 0x1004;
      }

      result = v15 | result;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, unsigned int a4)
{
  v4 = *(this + 33);
  v5 = *(v4 + 8 * a2);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(v4 + 8 * a2 + 4);
  v8 = (*(this + 36) + 4 * v7);
  v9 = (*(this + 39) + 2 * v7);
  v10 = *(*(this + 42) + 8 * a2);
  v11 = (v5 - 1);
  v12 = v5;
  do
  {
    v13 = *v8++;
    v14 = (2 * v13) | 1;
    if ((a4 & 0x80000000) != 0)
    {
      v18 = (*(this + 3) + 4 * v14);
      v16 = (this + 48);
    }

    else
    {
      v15 = *(*(this + 57) + 8 * a4);
      v17 = *v15;
      v16 = v15 + 3;
      v18 = (*(v17 + 24) + 4 * v14);
    }

    v19 = *v16 + 4 * *v18;
    v20 = *v9;
    v21 = &a3[v6];
    *v21 = *(v19 + 4 * ((*v9 + 1) & 3));
    v22 = v6 + 2;
    v21[1] = *(v19 + 4 * (v20 & 3 ^ 2));
    if (v10 > v5 && !v11)
    {
      a3[v22] = *(v19 + 4 * ((v20 - 1) & 3));
      v22 = (v6 + 3);
    }

    --v11;
    ++v9;
    v6 = v22;
    --v12;
  }

  while (v12);
  return v22;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex(void *a1, int a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5)
{
  v5 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1[33];
  v8 = *(v7 + 8 * a2 + 4);
  v9 = *(v7 + 8 * a2);
  v10 = a1[36] + 4 * v8;
  v11 = a1[39] + 2 * v8;
  v12 = a3[1];
  do
  {
    v13 = (2 * *(v10 + 4 * (v12 % v9))) | 1;
    if ((a5 & 0x80000000) != 0)
    {
      v17 = (a1[3] + 4 * v13);
      v15 = a1 + 6;
    }

    else
    {
      v14 = *(a1[57] + 8 * a5);
      v16 = *v14;
      v15 = v14 + 3;
      v17 = (*(v16 + 24) + 4 * v13);
    }

    v18 = *v15 + 4 * *v17;
    v19 = *(v11 + 2 * (v12 % v9));
    v20 = (a4 + 4 * v6);
    *v20 = *(v18 + 4 * ((v19 + 1) & 3));
    v21 = v6 + 2;
    v20[1] = *(v18 + 4 * (v19 & 3 ^ 2));
    if (v5 == 1 && (a3[2] & 1) == 0)
    {
      *(a4 + 4 * v21) = *(v18 + 4 * ((v19 - 1) & 3));
      v21 = (v6 + 3);
    }

    ++v12;
    v6 = v21;
    --v5;
  }

  while (v5);
  return v21;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = (&OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularInteriorPatchPoints(int,int *,int,int)const::rotationSequence + 4 * a4);
  v6 = (2 * a2) | 1;
  v7 = *(this + 3);
  v8 = *(this + 6);
  v9 = v8 + 4 * *(v7 + 4 * v6);
  if ((a5 & 0x80000000) != 0)
  {
    v11 = v8 + 4 * *(v7 + 4 * v6);
  }

  else
  {
    v10 = *(*(this + 57) + 8 * a5);
    v11 = v10[3] + 4 * *(*(*v10 + 24) + 4 * v6);
  }

  v12 = 0;
  *a3 = *(v11 + 4 * *v5);
  a3[1] = *(v11 + 4 * v5[1]);
  a3[2] = *(v11 + 4 * v5[2]);
  a3[3] = *(v11 + 4 * v5[3]);
  v13 = *(this + 36);
  v14 = *(this + 33);
  v15 = *(this + 39);
  v16 = a3 + 6;
  do
  {
    v17 = *(v14 + 8 * *(v9 + 4 * v5[v12]) + 4);
    v18 = (v13 + 4 * v17);
    if (*v18 == a2)
    {
      v19 = 2;
    }

    else if (v18[1] == a2)
    {
      v19 = 3;
    }

    else
    {
      v19 = v18[2] != a2;
    }

    v20 = (2 * v18[v19]) | 1;
    if ((a5 & 0x80000000) != 0)
    {
      v22 = v8 + 4 * *(v7 + 4 * v20);
    }

    else
    {
      v21 = *(*(this + 57) + 8 * a5);
      v22 = v21[3] + 4 * *(*(*v21 + 24) + 4 * v20);
    }

    v23 = *(v15 + 2 * v17 + 2 * v19);
    *(v16 - 2) = *(v22 + 4 * ((v23 + 1) & 3));
    *(v16 - 1) = *(v22 + 4 * (v23 & 3 ^ 2));
    *v16 = *(v22 + 4 * ((v23 - 1) & 3));
    v16 += 3;
    ++v12;
  }

  while (v12 != 4);
  return 16;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularBoundaryPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = 0;
  v6 = a4 & 3 ^ 2;
  v7 = (2 * a2) | 1;
  v8 = *(this + 3);
  v9 = *(this + 6);
  v10 = v9 + 4 * *(v8 + 4 * v7);
  v11 = *(this + 36);
  v12 = *(this + 33);
  v13 = *(v12 + 8 * *(v10 + 4 * v6) + 4);
  v14 = v11 + 4 * v13;
  v15 = *(v12 + 8 * *(v10 + 4 * (((a4 & 3 ^ 2) + 1) & 3)) + 4);
  v16 = v11 + 4 * v15;
  v17 = *(this + 39);
  v18 = -1;
  v19 = -1;
  do
  {
    if (*(v14 + 4 * v5) == a2)
    {
      v18 = v5;
    }

    if (*(v16 + 4 * v5) == a2)
    {
      v19 = v5;
    }

    ++v5;
  }

  while (v5 != 4);
  v20 = (v18 + 1) & 3;
  v21 = v18 & 3 ^ 2;
  v22 = v19 & 3 ^ 2;
  v23 = v17 + 2 * v13;
  v24 = (v19 - 1) & 3;
  v25 = *(v14 + 4 * ((v18 + 1) & 3));
  v26 = *(v14 + 4 * v21);
  v27 = v17 + 2 * v15;
  v28 = *(v16 + 4 * v22);
  v29 = *(v16 + 4 * v24);
  v30 = *(v23 + 2 * v20);
  v31 = *(v23 + 2 * v21);
  v32 = *(v27 + 2 * v22);
  v33 = *(v27 + 2 * v24);
  if ((a5 & 0x80000000) == 0)
  {
    v34 = *(*(this + 57) + 8 * a5);
    v8 = *(*v34 + 24);
    v9 = v34[3];
    v10 = v9 + 4 * *(v8 + 4 * v7);
  }

  v35 = *(v8 + 8 * v25 + 4);
  v36 = *(v8 + 8 * v26 + 4);
  v37 = *(v8 + 8 * v28 + 4);
  v38 = *(v8 + 8 * v29 + 4);
  *a3 = *(v10 + 4 * ((a4 + 1) & 3));
  a3[1] = *(v10 + 4 * v6);
  a3[2] = *(v10 + 4 * ((a4 - 1) & 3));
  a3[3] = *(v10 + 4 * a4);
  v39 = v9 + 4 * v36;
  a3[4] = *(v9 + 4 * v35 + 4 * (v30 & 3 ^ 2));
  a3[5] = *(v39 + 4 * ((v31 + 1) & 3));
  a3[6] = *(v39 + 4 * (v31 & 3 ^ 2));
  v40 = *(v39 + 4 * ((v31 - 1) & 3));
  v41 = v9 + 4 * v37;
  a3[7] = v40;
  a3[8] = *(v41 + 4 * ((v32 + 1) & 3));
  a3[9] = *(v41 + 4 * (v32 & 3 ^ 2));
  a3[10] = *(v41 + 4 * ((v32 - 1) & 3));
  a3[11] = *(v9 + 4 * v38 + 4 * (v33 & 3 ^ 2));
  return 12;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularCornerPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int *a3, int a4, unsigned int a5)
{
  v5 = a4 & 3 ^ 2;
  v6 = (2 * a2) | 1;
  v7 = *(this + 3);
  v8 = *(this + 6);
  v9 = v8 + 4 * *(v7 + 4 * v6);
  v10 = *(v9 + 4 * v5);
  v11 = 2 * v10;
  v12 = *(this + 33);
  v13 = *(v12 + 8 * v10 + 4);
  v14 = *(this + 36) + 4 * v13;
  v15 = *(v12 + 4 * v11);
  v16 = *(this + 39) + 2 * v13;
  if (v15 < 1)
  {
LABEL_5:
    LOBYTE(v17) = -1;
  }

  else
  {
    v17 = 0;
    while (*(v14 + 4 * v17) != a2)
    {
      if (v15 == ++v17)
      {
        goto LABEL_5;
      }
    }
  }

  v18 = v17 & 3 ^ 2;
  v19 = (v17 - 1) & 3;
  v20 = *(v14 + 4 * ((v17 + 1) & 3));
  v21 = *(v14 + 4 * v18);
  v22 = *(v14 + 4 * ((v17 - 1) & 3));
  v23 = *(v16 + 2 * ((v17 + 1) & 3));
  v24 = *(v16 + 2 * v18);
  v25 = *(v16 + 2 * v19);
  if ((a5 & 0x80000000) == 0)
  {
    v26 = *(*(this + 57) + 8 * a5);
    v7 = *(*v26 + 24);
    v8 = v26[3];
    v9 = v8 + 4 * *(v7 + 4 * v6);
  }

  v27 = *(v7 + 8 * v20 + 4);
  v28 = *(v7 + 8 * v21 + 4);
  v29 = *(v7 + 8 * v22 + 4);
  *a3 = *(v9 + 4 * a4);
  a3[1] = *(v9 + 4 * ((a4 + 1) & 3));
  a3[2] = *(v9 + 4 * v5);
  a3[3] = *(v9 + 4 * ((a4 - 1) & 3));
  v30 = v8 + 4 * v28;
  a3[4] = *(v8 + 4 * v27 + 4 * (v23 & 3 ^ 2));
  a3[5] = *(v30 + 4 * ((v24 + 1) & 3));
  a3[6] = *(v30 + 4 * (v24 & 3 ^ 2));
  a3[7] = *(v30 + 4 * ((v24 - 1) & 3));
  a3[8] = *(v8 + 4 * v29 + 4 * (v25 & 3 ^ 2));
  return 9;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, float *a3, int *a4)
{
  v4 = *(this + 3);
  v5 = *(v4 + 8 * a2 + 4);
  v6 = *(v4 + 8 * a2);
  v7 = (*(this + 6) + 4 * v5);
  v8 = *(this + 54);
  if (v6 < 2)
  {
    v11 = *(v8 + 2 * *v7);
  }

  else
  {
    v9 = v6 - 1;
    v10 = v7 + 1;
    v11 = *(v8 + 2 * *v7);
    do
    {
      v12 = *v10++;
      v11 |= *(v8 + 2 * v12);
      --v9;
    }

    while (v9);
  }

  if ((v11 & 0x707) != 0x200)
  {
    return 0;
  }

  v13 = ((*(v8 + 2 * *v7) & 0x780) == 512) | (2 * ((*(v8 + 2 * v7[1]) & 0x780) == 512)) | (4 * ((*(v8 + 2 * v7[2]) & 0x780) == 512)) | (8 * ((*(v8 + 2 * v7[3]) & 0x780) == 512));
  if ((0xEDB7uLL >> v13))
  {
    return 0;
  }

  v14 = OpenSubdiv::v3_1_1::Vtr::internal::Level::isSingleCreasePatch(int,float *,int *)const::sharpEdgeFromCreaseMask[v13];
  v15 = *(this + 45);
  v16 = *(this + 42);
  v17 = (v15 + 4 * *(v16 + 8 * v7[v14] + 4));
  v18 = *(this + 27);
  if (*(v18 + 4 * *v17) != *(v18 + 4 * v17[2]))
  {
    return 0;
  }

  if (*(v18 + 4 * v17[1]) != *(v18 + 4 * v17[3]))
  {
    return 0;
  }

  v19 = (v15 + 4 * *(v16 + 8 * v7[(v14 + 1) & 3] + 4));
  if (*(v18 + 4 * *v19) != *(v18 + 4 * v19[2]) || *(v18 + 4 * v19[1]) != *(v18 + 4 * v19[3]))
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v18 + 4 * *(*(this + 9) + 4 * v5 + 4 * v14));
  }

  if (a4)
  {
    *a4 = v14;
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(OpenSubdiv::v3_1_1::Vtr::internal::Level *this, int a2, int a3)
{
  v3 = *(this + 42);
  v4 = (*(this + 45) + 4 * *(v3 + 8 * a2 + 4));
  v5 = *(v3 + 8 * a2);
  if (a2 == a3)
  {
    if (v5 >= 1)
    {
      v6 = *(this + 15);
      while (1)
      {
        v8 = *v4++;
        result = v8;
        if (*(v6 + 8 * v8) == *(v6 + 8 * v8 + 4))
        {
          break;
        }

        if (!--v5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(this + 15);
  while (1)
  {
    v10 = *v4++;
    result = v10;
    v11 = (v9 + 8 * v10);
    if (*v11 == a3 || v11[1] == a3)
    {
      break;
    }

    if (!--v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

BOOL OpenSubdiv::v3_1_1::Vtr::internal::Level::completeTopologyFromFaceVertices(OpenSubdiv::v3_1_1::Vtr::internal::Level *this)
{
  v1 = this;
  v193 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  v3 = *this;
  v155 = (this + 264);
  std::vector<unsigned int>::resize(this + 11, 2 * v2);
  v153 = (v1 + 336);
  std::vector<unsigned int>::resize(v1 + 14, 2 * v2);
  std::vector<unsigned int>::resize(v1 + 17, v2);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(v1 + 432, v2);
  bzero(*(v1 + 54), 2 * *(v1 + 2));
  *v1 = v3;
  std::vector<unsigned int>::resize(v1 + 1, 2 * v3);
  v4 = *(v1 + 12);
  v5 = *(v1 + 13) - v4;
  v156 = v3;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(v1 + 13) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(v1 + 96, v3 - v5);
    v4 = *(v1 + 12);
  }

  bzero(v4, *v1);
  *(v1 + 1) = 0;
  std::vector<unsigned int>::resize(v1 + 6, 0);
  std::vector<unsigned int>::resize(v1 + 9, 0);
  v6 = *(v1 + 30);
  v150 = v1 + 240;
  if (*(v1 + 31) != v6)
  {
    *(v1 + 31) = v6;
  }

  std::vector<unsigned int>::resize(v1 + 3, ((*(v1 + 7) - *(v1 + 6)) >> 2));
  v7 = 4 * v2;
  std::vector<int>::reserve(v1 + 5, v7);
  std::vector<int>::reserve(v1 + 7, v7);
  std::vector<int>::reserve(v1 + 6, v7);
  v8 = 2;
  v182 = (v1 + 144);
  v183 = (v1 + 168);
  v185[0] = 0;
  v185[1] = 0;
  v184 = v185;
  v9 = *(v1 + 18);
  v10 = (*(v1 + 19) - v9) >> 2;
  v11 = v10 / 2;
  v180 = v10 / 2;
  v181 = 2;
  if (v10 >= 2)
  {
    v12 = 0;
    v13 = (v9 + 4);
    do
    {
      *(v13 - 1) = 0;
      *v13 = v181 * v12;
      v13 += 2;
      ++v12;
      v11 = v180;
    }

    while (v12 < v180);
    v8 = v181;
  }

  v148 = (v1 + 168);
  std::vector<unsigned int>::resize(v1 + 7, v11 * v8);
  v14 = 6;
  v176 = v155;
  v177 = (v1 + 288);
  v154 = (v1 + 288);
  v179[0] = 0;
  v179[1] = 0;
  v178 = v179;
  v15 = *(v1 + 33);
  v16 = (*(v1 + 34) - v15) >> 2;
  v17 = v16 / 2;
  v174 = v16 / 2;
  v175 = 6;
  if (v16 < 2)
  {
    v20 = 6;
  }

  else
  {
    v18 = 0;
    v19 = (v15 + 4);
    do
    {
      *(v19 - 1) = 0;
      *v19 = v175 * v18;
      v19 += 2;
      ++v18;
      v17 = v174;
    }

    while (v18 < v174);
    v20 = v175;
  }

  v160 = (v1 + 4);
  std::vector<unsigned int>::resize(v154, v17 * v20);
  v170 = (v1 + 336);
  v171 = (v1 + 360);
  v152 = (v1 + 360);
  v173[0] = 0;
  v173[1] = 0;
  v172 = v173;
  v21 = *(v1 + 42);
  v22 = (*(v1 + 43) - v21) >> 2;
  v23 = v22 / 2;
  v168 = v22 / 2;
  v169 = 6;
  if (v22 > 1)
  {
    v24 = 0;
    v25 = (v21 + 4);
    do
    {
      *(v25 - 1) = 0;
      *v25 = v169 * v24;
      v25 += 2;
      ++v24;
      v23 = v168;
    }

    while (v24 < v168);
    v14 = v169;
  }

  v149 = (v1 + 144);
  std::vector<unsigned int>::resize(v152, v23 * v14);
  __p = 0;
  v166 = 0;
  v167 = 0;
  v157 = v1;
  if (v3 >= 1)
  {
    v26 = 0;
    while (1)
    {
      v27 = (*(v1 + 3) + 8 * v26);
      v28 = *v27;
      if (v28 >= 1)
      {
        break;
      }

LABEL_71:
      if (++v26 == v156)
      {
        goto LABEL_72;
      }
    }

    v29 = 0;
    v30 = v27[1];
    v31 = *(v1 + 6) + 4 * v30;
    v158 = *(v1 + 9) + 4 * v30;
    while (1)
    {
      v32 = *(v31 + 4 * v29);
      v164 = v32;
      v33 = v29 + 1;
      if (v29 + 1 == v28)
      {
        v34 = 0;
      }

      else
      {
        v34 = v29 + 1;
      }

      v35 = *(v31 + 4 * v34);
      v162 = 0;
      v163 = v35;
      if (v32 == v35)
      {
        v162 = -1;
        std::vector<int>::push_back[abi:nn200100](&__p, v160);
        v36 = v162;
      }

      else
      {
        v187 = v32;
        v37 = *(*v170 + 8 * v32);
        if (v37 <= v169)
        {
          v39 = (*v171 + 4 * *(*v170 + 4 * ((2 * v32) | 1)));
        }

        else
        {
          v188 = &v187;
          v38 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v172, v32);
          v39 = v38[5];
          v37 = ((v38[6] - v39) >> 2);
        }

        if (v37 < 1)
        {
LABEL_36:
          v36 = -1;
        }

        else
        {
          while (1)
          {
            v40 = *v39++;
            v36 = v40;
            v41 = (*(v1 + 15) + 8 * v40);
            if (*v41 == v35 || v41[1] == v35)
            {
              break;
            }

            if (!--v37)
            {
              goto LABEL_36;
            }
          }
        }

        v162 = v36;
      }

      if (v36 != -1)
      {
        v187 = v36;
        LODWORD(v42) = *(*v182 + 2 * v36);
        if (v42 <= v181)
        {
          v44 = &v183->__begin_[*(*v182 + 2 * v36 + 1)];
        }

        else
        {
          v188 = &v187;
          v43 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v184, v36);
          v44 = v43[5];
          v42 = (v43[6] - v44) >> 2;
        }

        if (v26 == v44[v42 - 1])
        {
          std::vector<int>::push_back[abi:nn200100](&__p, &v162);
          std::vector<int>::push_back[abi:nn200100](&__p, v160);
        }

        else
        {
          if (v42 > 1 || (v45 = v162, v164 == *(*(v1 + 15) + 8 * v162)))
          {
            std::vector<int>::push_back[abi:nn200100](&__p, &v162);
            v45 = v162;
          }

          if (v45 != -1)
          {
            goto LABEL_60;
          }
        }
      }

      v162 = *v160;
      *v160 = v162 + 1;
      std::vector<int>::push_back[abi:nn200100](v1 + 15, &v164);
      std::vector<int>::push_back[abi:nn200100](v1 + 15, &v163);
      LODWORD(v188) = 0;
      std::vector<int>::push_back[abi:nn200100](v182, &v188);
      LODWORD(v188) = v181 * v180;
      std::vector<int>::push_back[abi:nn200100](v182, &v188);
      v46 = ++v180;
      std::vector<unsigned int>::resize(v183, v181 * v46);
      v47 = v162;
      v186 = v162;
      v187 = v164;
      v48 = *(*v170 + 8 * v164);
      v49 = *(*v170 + 4 * ((2 * v164) | 1));
      if (v48 >= v169)
      {
        v188 = &v187;
        v50 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v172, v164);
        v51 = v50;
        if (v48 <= v169)
        {
          std::vector<unsigned int>::resize((v50 + 5), v169 + 1);
          memcpy(v51[5], (*v171 + 4 * v49), 4 * v169);
          *(v51[5] + 4 * v169) = v47;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v50 + 5, &v186);
        }
      }

      else
      {
        *(*v171 + 4 * (v49 + v48)) = v162;
      }

      v52 = *v170;
      *(v52 + 8 * v187) = *(*v170 + 8 * v187) + 1;
      v53 = v162;
      v186 = v162;
      v187 = v163;
      v54 = *(v52 + 8 * v163);
      v55 = *(v52 + 4 * ((2 * v163) | 1));
      if (v54 >= v169)
      {
        v188 = &v187;
        v56 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v172, v163);
        v57 = v56;
        if (v54 <= v169)
        {
          std::vector<unsigned int>::resize((v56 + 5), v169 + 1);
          memcpy(v57[5], (*v171 + 4 * v55), 4 * v169);
          *(v57[5] + 4 * v169) = v53;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v56 + 5, &v186);
        }

        v1 = v157;
      }

      else
      {
        *(*v171 + 4 * (v55 + v54)) = v162;
        v1 = v157;
      }

      ++*(*v170 + 8 * v187);
      v45 = v162;
LABEL_60:
      v186 = v26;
      v187 = v45;
      v58 = *(*v182 + 2 * v45);
      v59 = *(*v182 + 2 * v45 + 1);
      if (v58 >= v181)
      {
        v188 = &v187;
        v60 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v184, v45);
        v61 = v60;
        if (v58 <= v181)
        {
          std::vector<unsigned int>::resize((v60 + 5), v181 + 1);
          memcpy(v61[5], &v183->__begin_[v59], 4 * v181);
          *(v61[5] + 4 * v181) = v26;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v60 + 5, &v186);
        }
      }

      else
      {
        v183->__begin_[v59 + v58] = v26;
      }

      ++*(*v182 + 2 * v187);
      v186 = v26;
      v187 = v164;
      v62 = *(*v176 + 8 * v164);
      v63 = *(*v176 + 4 * ((2 * v164) | 1));
      if (v62 >= v175)
      {
        v188 = &v187;
        v64 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v178, v164);
        v65 = v64;
        if (v62 <= v175)
        {
          std::vector<unsigned int>::resize((v64 + 5), v175 + 1);
          memcpy(v65[5], (*v177 + 4 * v63), 4 * v175);
          *(v65[5] + 4 * v175) = v26;
        }

        else
        {
          std::vector<int>::push_back[abi:nn200100](v64 + 5, &v186);
        }
      }

      else
      {
        *(*v177 + 4 * (v63 + v62)) = v26;
      }

      ++*(*v176 + 8 * v187);
      *(v158 + 4 * v29++) = v162;
      if (v33 == v28)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_72:
  v69 = *(v1 + 5);
  if (v67 > v69)
  {
    v69 = v67;
  }

  if (v68 <= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = v68;
  }

  *(v1 + 4) = v66;
  *(v1 + 5) = v70;
  if (v70 < 0x10000)
  {
    v71 = *(v1 + 1);
    std::vector<unsigned int>::resize(v149, 2 * v71);
    std::vector<unsigned int>::resize(v1 + 9, v71);
    v72 = *(v1 + 30);
    v73 = *(v1 + 31) - v72;
    if (v71 <= v73)
    {
      v74 = v150;
      if (v71 < v73)
      {
        *(v1 + 31) = v72 + v71;
      }
    }

    else
    {
      v74 = v150;
      std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(v150, v71 - v73);
    }

    if (v71 >= 1)
    {
      bzero(*v74, *v160);
    }

    v147 = v70;
    v75 = __p;
    if (((v166 - __p) >> 2) >= 1)
    {
      v76 = 0;
      do
      {
        v77 = v75[v76];
        *(*v74 + v77) |= 1u;
        v78 = (*(v1 + 15) + 8 * v77);
        *(*(v1 + 54) + 2 * *v78) |= 1u;
        *(*(v1 + 54) + 2 * v78[1]) |= 1u;
        ++v76;
        v75 = __p;
      }

      while (v76 < ((v166 - __p) >> 2));
    }

    v79 = *(v1 + 2);
    if (v79 >= 1)
    {
      v80 = 0;
      v81 = 0;
      v82 = 2 * v79;
      v151 = 2 * v79;
      do
      {
        v83 = *(v1 + 54);
        if ((*(v83 + v80) & 1) == 0)
        {
          v84 = *(*v155 + 4 * (v80 + 1));
          v85 = *(*v155 + 4 * v80);
          begin = v152->__begin_;
          v161 = v154->__begin_;
          v86 = *(*v153 + 4 * (v80 + 1));
          v87 = *(*v153 + 4 * v80);
          v88 = v191;
          v188 = v191;
          v189 = v87 + v85;
          v190 = 32;
          v192 = 0;
          if ((v87 + v85) >= 0x21)
          {
            v88 = operator new(4 * (v87 + v85));
            v192 = v88;
            v188 = v88;
            v190 = v87 + v85;
          }

          if (OpenSubdiv::v3_1_1::Vtr::internal::Level::orderVertexFacesAndEdges(v157, v81, v88, &v88[4 * v85]))
          {
            memcpy(&v161[v84], v88, 4 * v85);
            memcpy(&begin[v86], &v88[4 * v85], 4 * v87);
            operator delete(v192);
          }

          else
          {
            operator delete(v192);
            *(v83 + v80) |= 1u;
          }

          v1 = v157;
          v82 = v151;
        }

        ++v81;
        v80 += 2;
      }

      while (v82 != v80);
      LODWORD(v79) = *(v1 + 2);
    }

    v89 = *(v1 + 1);
    std::vector<unsigned short>::resize(v1 + 39, (*(v1 + 37) - *(v1 + 36)) >> 2);
    std::vector<unsigned short>::resize(v1 + 48, (*(v1 + 46) - *(v1 + 45)) >> 2);
    std::vector<unsigned short>::resize(v1 + 24, (*(v1 + 22) - *(v1 + 21)) >> 2);
    if (v79 >= 1)
    {
      v90 = 0;
      v91 = v154->__begin_;
      v92 = *v155;
      v93 = *(v1 + 39);
      do
      {
        v94 = (v92 + 8 * v90);
        v95 = *v94;
        if (v95 >= 1)
        {
          v96 = 0;
          v97 = v94[1];
          v98 = &v91[v97];
          v99 = v93 + 2 * v97;
          v100 = *(v1 + 3);
          v101 = *(v1 + 6);
          LODWORD(v102) = -1;
          do
          {
            v103 = v102;
            v102 = v98[v96];
            if (v102 == v103)
            {
              v104 = *(v99 - 2 + 2 * v96) + 1;
            }

            else
            {
              v104 = 0;
            }

            v105 = v101 + 4 * *(v100 + 4 * ((2 * v102) | 1));
            v106 = *(v100 + 8 * v102);
            v107 = (v105 + 4 * v104);
            if (v104 != v106)
            {
              v108 = 4 * v106 - 4 * v104;
              do
              {
                if (v90 == *v107)
                {
                  goto LABEL_110;
                }

                ++v107;
                v108 -= 4;
              }

              while (v108);
              LODWORD(v107) = v105 + 4 * v106;
            }

LABEL_110:
            *(v99 + 2 * v96++) = (v107 - v105) >> 2;
          }

          while (v96 != v95);
        }

        ++v90;
      }

      while (v90 != v79);
      v109 = 0;
      v110 = *(v1 + 45);
      v111 = *(v1 + 42);
      v112 = *(v1 + 48);
      v113 = *(v1 + 5);
      while (1)
      {
        v114 = (v111 + 8 * v109);
        v115 = *v114;
        if (v115 >= 1)
        {
          break;
        }

LABEL_125:
        if (v113 <= v115)
        {
          v113 = v115;
        }

        *(v1 + 5) = v113;
        if (++v109 == v79)
        {
          goto LABEL_128;
        }
      }

      v116 = 0;
      v117 = v114[1];
      v118 = (v110 + 4 * v117);
      v119 = v112 + 2 * v117;
      v120 = *(v1 + 15);
      while (1)
      {
        v121 = *v118;
        v122 = (v120 + 8 * v121);
        v124 = *v122;
        v123 = v122[1];
        if (v124 != v123)
        {
          break;
        }

        if (v116)
        {
          v125 = v121 == *(v118 - 1);
          goto LABEL_119;
        }

        v126 = 0;
LABEL_122:
        *(v119 + v116) = v126;
        ++v118;
        v116 += 2;
        if (2 * v115 == v116)
        {
          goto LABEL_125;
        }
      }

      v125 = v109 == v123;
LABEL_119:
      v126 = v125;
      goto LABEL_122;
    }

LABEL_128:
    v70 = v147;
    if (v89 >= 1)
    {
      v127 = 0;
      v128 = *v148;
      v129 = v149->__begin_;
      v130 = *(v1 + 24);
      do
      {
        v131 = &v129[2 * v127];
        v132 = *v131;
        if (v132 >= 1)
        {
          v133 = 0;
          v134 = v131[1];
          v135 = v128 + 4 * v134;
          v136 = v130 + 2 * v134;
          v137 = *(v1 + 3);
          v138 = *(v1 + 9);
          LODWORD(v139) = -1;
          do
          {
            v140 = v139;
            v139 = *(v135 + 4 * v133);
            if (v139 == v140)
            {
              v141 = *(v136 - 2 + 2 * v133) + 1;
            }

            else
            {
              v141 = 0;
            }

            v142 = v138 + 4 * *(v137 + 4 * ((2 * v139) | 1));
            v143 = *(v137 + 8 * v139);
            v144 = (v142 + 4 * v141);
            if (v141 != v143)
            {
              v145 = 4 * v143 - 4 * v141;
              while (v127 != *v144)
              {
                ++v144;
                v145 -= 4;
                if (!v145)
                {
                  LODWORD(v144) = v142 + 4 * v143;
                  break;
                }
              }
            }

            *(v136 + 2 * v133++) = (v144 - v142) >> 2;
          }

          while (v133 != v132);
        }

        ++v127;
      }

      while (v127 != v89);
    }
  }

  if (__p)
  {
    v166 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v173[0]);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v179[0]);
  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(v185[0]);
  return v70 < 0x10000;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::anonymous namespace::DynamicRelation::compressMemberIndices(OpenSubdiv::v3_1_1::Vtr::internal::_anonymous_namespace_::DynamicRelation *this)
{
  v2 = **(this + 1);
  v3 = *v2;
  LODWORD(v4) = *this;
  if (*(this + 5))
  {
    if (v4 < 2)
    {
      v5 = 0;
      v8 = *(this + 1);
    }

    else
    {
      v5 = 0;
      v6 = v2 + 3;
      v7 = 1;
      do
      {
        *v6 = v3;
        v8 = *(this + 1);
        v4 = *this;
        v5 |= v3 > v8 * v7;
        v3 += *(v6 - 1);
        ++v7;
        v6 += 2;
      }

      while (v7 < v4);
    }

    v12 = v5 | (v3 > v4 * v8);
    memset(&v26, 0, sizeof(v26));
    if (v5 & 1 | (v3 > v4 * v8))
    {
      v13 = &v26;
      std::vector<unsigned int>::resize(&v26, v3);
      LODWORD(v4) = *this;
      v8 = *(this + 1);
    }

    else
    {
      v13 = *(this + 2);
    }

    v25 = 0;
    if (v4 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = **(this + 1);
        v16 = *(v15 + 8 * v14);
        v17 = *(v15 + 8 * v14 + 4);
        begin = v13->__begin_;
        v19 = *(this + 1);
        if (v16 <= v19)
        {
          v20 = (**(this + 2) + 4 * v19 * v14);
        }

        else
        {
          v27 = &v25;
          v20 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 24, v14)[5];
          if (v8 <= v16)
          {
            v8 = v16;
          }

          else
          {
            v8 = v8;
          }
        }

        memmove(&begin[v17], v20, 4 * v16);
        v14 = v25 + 1;
        v25 = v14;
      }

      while (v14 < *this);
    }

    v21 = *(this + 2);
    if (v12)
    {
      v22 = *v21;
      *v21 = v26.__begin_;
      *(v21 + 8) = v26.__end_;
      v23 = *(v21 + 16);
      *(v21 + 16) = v26.__end_cap_.__value_;
      v26.__begin_ = v22;
      v26.__end_cap_.__value_ = v23;
      if (!v22)
      {
        return v8;
      }

      goto LABEL_29;
    }

    std::vector<unsigned int>::resize(*(this + 2), v3);
    v22 = v26.__begin_;
    if (v26.__begin_)
    {
LABEL_29:
      v26.__end_ = v22;
      operator delete(v22);
    }
  }

  else
  {
    if (v4 < 2)
    {
      v8 = *v2;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      LODWORD(v8) = *v2;
      do
      {
        v11 = v2[v9 + 2];
        memmove((**(this + 2) + 4 * v3), (**(this + 2) + 4 * v2[v9 + 3]), 4 * v11);
        v2 = **(this + 1);
        v2[v9 + 3] = v3;
        v3 += v11;
        if (v8 <= v11)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        ++v10;
        v9 += 2;
      }

      while (v10 < *this);
    }

    std::vector<unsigned int>::resize(*(this + 2), v3);
  }

  return v8;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::__append(a1, a2 - v2);
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 1)
  {
    a1[1] = &v5[2 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (2 * v9 + 2 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v3 >= a2)
  {
    *(a1 + 8) = v3 + a2;
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = v6 + a2;
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v3 >= a2)
  {
    *(a1 + 8) = v3 + a2;
  }

  else
  {
    v5 = *a1;
    v6 = v3 - *a1;
    v7 = v6 + a2;
    if ((v6 + a2) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = v6 + a2;
    memcpy(0, *a1, v3 - *a1);
    *a1 = 0;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void OpenSubdiv::v3_1_1::Far::StencilTableFactory::Create(uint64_t a1, unsigned __int16 a2)
{
  if (((*(a1 + 8) >> 2) & 0xFu) >= ((a2 >> 6) & 0xFu))
  {
    v2 = (a2 >> 6) & 0xF;
  }

  else
  {
    v2 = (*(a1 + 8) >> 2) & 0xF;
  }

  if (!(a2 & 8 | v2))
  {
    operator new();
  }

  operator new();
}

uint64_t OpenSubdiv::v3_1_1::Far::StencilTableFactory::appendLocalPointStencilTable(OpenSubdiv::v3_1_1::Far::StencilTableFactory *this, const OpenSubdiv::v3_1_1::Far::TopologyRefiner *a2, const OpenSubdiv::v3_1_1::Far::StencilTable *a3, const OpenSubdiv::v3_1_1::Far::StencilTable *a4)
{
  if (a2 && a3 && ((*(a3 + 3) - *(a3 + 2)) & 0x3FFFFFFFCLL) != 0)
  {
    v4 = **(this + 11);
    if ((a4 & 0x80000000) != 0)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = (*(*(v4 + 456) + 8 * a4) + 16);
    }

    v6 = *v5;
    v7 = (*(a2 + 3) - *(a2 + 2)) >> 2;
    if ((a4 & 0x80000000) != 0)
    {
      v10 = *(this + 5);
    }

    else
    {
      v8 = *(this + 5);
      v9 = *(this + 6) - v8;
      if ((v9 >> 3) < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = (v9 >> 3);
        if (v11 <= 1)
        {
          v11 = 1;
        }

        do
        {
          v12 = *v8++;
          v10 += *(*(*(v12 + 456) + 8 * a4) + 16);
          --v11;
        }

        while (v11);
      }
    }

    if (v10 == v7 || v10 - v6 == v7)
    {
      operator new();
    }
  }

  return 0;
}

_WORD *OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(_WORD *result, void *a2, int a3, uint64_t a4, int a5, int a6)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a5 != 1)
  {
    if (a6)
    {
      if (a6 != 4)
      {
        goto LABEL_14;
      }
    }

    else if (a5 != 4)
    {
      v30 = *(a2[27] + 4 * a3);
      if (v30 < 1.0 && ((*result & 0x60) == 0 || (v30 + -1.0) <= 0.0))
      {
LABEL_14:
        v17 = a2[18];
        v18 = *(v17 + 8 * a3);
        *(a4 + 24) = 2;
        *(a4 + 32) = v18;
        *(a4 + 36) = 1;
        if ((*result & 0x180) == 0x80)
        {
          if (v18 == 2)
          {
            v19 = *(v17 + 8 * a3);
            if (v19 <= 0)
            {
              goto LABEL_65;
            }

            v20 = 0;
            v21 = a2[21] + 4 * *(v17 + 4 * ((2 * a3) | 1));
            v22 = a2[3];
            v23 = 4 * v19;
            do
            {
              *(&v54 + v20) = *(v22 + 8 * *(v21 + v20));
              v20 += 4;
            }

            while (v23 != v20);
            LOBYTE(v17) = v55 == 3;
            LOBYTE(v18) = v54 == 3;
            v24 = 0.25;
            v25 = v54 == 3 || v55 == 3;
            _D0.i32[0] = 0.25;
            if (v25)
            {
LABEL_65:
              v50 = 0.47;
              if (v17)
              {
                v51 = 0.47;
              }

              else
              {
                v51 = 0.25;
              }

              if ((v18 & 1) == 0)
              {
                v50 = 0.25;
              }

              *_D0.i32 = (v50 + v51) * 0.5;
              v24 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
            }

            v38 = *a4;
            v38->f32[0] = v24;
            v38->f32[1] = v24;
            goto LABEL_72;
          }

          v38 = *a4;
          __asm { FMOV            V0.2S, #0.25 }

          **a4 = _D0;
        }

        else
        {
          v38 = *a4;
          __asm { FMOV            V0.2S, #0.25 }

          **a4 = _D0;
          _D0.i32[0] = 0.25;
          if (v18 == 2)
          {
LABEL_72:
            v18 = *(a4 + 16);
            *v18 = _D0.i32[0];
            *(v18 + 4) = _D0.i32[0];
            LODWORD(v18) = 2;
LABEL_73:
            v52 = *(a2[27] + 4 * a3);
            *v38 = vmla_n_f32(vmul_n_f32(*v38, 1.0 - v52), 0x3F0000003F000000, v52);
            if (v18 >= 1)
            {
              v53 = *(a4 + 16);
              v18 = v18;
              do
              {
                *v53 = (1.0 - v52) * *v53;
                ++v53;
                --v18;
              }

              while (v18);
            }

            return result;
          }
        }

        if (v18 >= 1)
        {
          *_D0.i32 = 0.5 / v18;
          v43 = (v18 + 3) & 0xFFFFFFFC;
          v44 = vdupq_n_s64(v18 - 1);
          v45 = xmmword_1E3049640;
          v46 = xmmword_1E3049620;
          v47 = (*(a4 + 16) + 8);
          v48 = vdupq_n_s64(4uLL);
          do
          {
            v49 = vmovn_s64(vcgeq_u64(v44, v46));
            if (vuzp1_s16(v49, _D0).u8[0])
            {
              *(v47 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v49, _D0).i8[2])
            {
              *(v47 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v44, *&v45))).i32[1])
            {
              *v47 = _D0.i32[0];
              v47[1] = _D0.i32[0];
            }

            v45 = vaddq_s64(v45, v48);
            v46 = vaddq_s64(v46, v48);
            v47 += 4;
            v43 -= 4;
          }

          while (v43);
        }

        goto LABEL_73;
      }
    }

    *(a4 + 24) = 2;
    *(a4 + 28) = 0;
    *(a4 + 36) = 0;
    _D0.i32[0] = 0.5;
LABEL_52:
    v42 = *a4;
    v42->i32[0] = _D0.i32[0];
    v42->i32[1] = _D0.i32[0];
    return result;
  }

  v6 = 2 * a3;
  v7 = a2[18];
  v8 = *(v7 + 8 * a3);
  *(a4 + 24) = 2;
  *(a4 + 32) = v8;
  *(a4 + 36) = 1;
  if ((*result & 0x180) == 0x80)
  {
    if (v8 == 2)
    {
      v9 = *(v7 + 4 * v6);
      if (v9 <= 0)
      {
        goto LABEL_44;
      }

      v10 = 0;
      v11 = a2[21] + 4 * *(v7 + 8 * a3 + 4);
      v12 = a2[3];
      v13 = 4 * v9;
      do
      {
        *(&v54 + v10) = *(v12 + 8 * *(v11 + v10));
        v10 += 4;
      }

      while (v13 != v10);
      LOBYTE(v8) = v55 == 3;
      LOBYTE(v6) = v54 == 3;
      v14 = 0.25;
      _ZF = v54 == 3 || v55 == 3;
      _D0.i32[0] = 0.25;
      if (_ZF)
      {
LABEL_44:
        v39 = 0.47;
        if (v8)
        {
          v40 = 0.47;
        }

        else
        {
          v40 = 0.25;
        }

        if ((v6 & 1) == 0)
        {
          v39 = 0.25;
        }

        *_D0.i32 = (v39 + v40) * 0.5;
        v14 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
      }

      v41 = *a4;
      *v41 = v14;
      v41[1] = v14;
      goto LABEL_51;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a4 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a4 = _D0;
    _D0.i32[0] = 0.25;
    if (v8 == 2)
    {
LABEL_51:
      a4 += 16;
      goto LABEL_52;
    }
  }

  if (v8 >= 1)
  {
    *_D0.i32 = 0.5 / v8;
    v31 = (v8 + 3) & 0xFFFFFFFC;
    v32 = vdupq_n_s64(v8 - 1);
    v33 = xmmword_1E3049640;
    v34 = xmmword_1E3049620;
    v35 = (*(a4 + 16) + 8);
    v36 = vdupq_n_s64(4uLL);
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v32, v34));
      if (vuzp1_s16(v37, _D0).u8[0])
      {
        *(v35 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v37, _D0).i8[2])
      {
        *(v35 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v32, *&v33))).i32[1])
      {
        *v35 = _D0.i32[0];
        v35[1] = _D0.i32[0];
      }

      v33 = vaddq_s64(v33, v36);
      v34 = vaddq_s64(v34, v36);
      v35 += 4;
      v31 -= 4;
    }

    while (v31);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)1>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v91 = *MEMORY[0x1E69E9840];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v87[-v18];
  bzero(&v87[-v18], v17);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v19 = 0;
    v29 = 0.0;
LABEL_37:
    v38 = v16;
    if (v12 == 4)
    {
      v88 = v15;
      v39 = 0xFFFFFFFF00000000;
      v40 = v19;
      do
      {
        v41 = *v40++;
        v39 += 0x100000000;
      }

      while (v41 <= 0.0);
      v42 = v16 << 32;
      v89 = v16;
      v43 = &v19[v16 - 1];
      do
      {
        v44 = *v43--;
        v42 -= 0x100000000;
      }

      while (v44 <= 0.0);
      *(a3 + 24) = 1;
      *(a3 + 28) = v16;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v45 = *(a3 + 8);
      **a3 = 1061158912;
      if (v16 >= 1)
      {
        bzero(v45, 4 * v16);
      }

      *&v45[v39 >> 30] = 1040187392;
      *&v45[v42 >> 30] = 1040187392;
      v38 = v89;
      v15 = v88;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v90 = *a1;
      MEMORY[0x1EEE9AC00](v20);
      v46 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
      bzero(v46, 4 * v16);
      ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(a2, &v90, v46);
      v48 = *(*(*(a2 + 8) + 408) + 4 * *(a2 + 20));
      if (v15)
      {
        goto LABEL_60;
      }

      if (v48 <= 0.0)
      {
        if (v16 < 1)
        {
          v15 = 1;
        }

        else
        {
          v49 = 0;
          v50 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v51 = v16;
          do
          {
            v52 = *v50++;
            if (v52 > 0.0)
            {
              ++v49;
            }

            --v51;
          }

          while (v51);
          v15 = v49 <= 2 ? 1 << v49 : 8;
        }
      }

      else
      {
        v15 = 8;
      }

      if (v15 != v12)
      {
LABEL_60:
        MEMORY[0x1EEE9AC00](ChildSharpnessPerEdge);
        v54 = &v87[-v53];
        bzero(&v87[-v53], v55);
        v56 = v54 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v89 = v38;
            v63 = 0xFFFFFFFF00000000;
            v64 = v46;
            do
            {
              v65 = *v64++;
              v63 += 0x100000000;
            }

            while (v65 <= 0.0);
            v66 = v89 << 32;
            v67 = &v46[4 * v89 - 4];
            do
            {
              v68 = *v67--;
              v66 -= 0x100000000;
            }

            while (v68 <= 0.0);
            v62 = *(a2 + 24);
            *v54 = 0.75;
            if (v62 >= 1)
            {
              bzero(v54 + 1, 4 * v62);
            }

            LODWORD(v57) = 0;
            *(v56 + (v63 >> 30)) = 1040187392;
            v69 = v66 >> 30;
            v61 = 0;
            *(v56 + v69) = 1040187392;
            v38 = v89;
          }

          else
          {
            v61 = 0;
            LODWORD(v57) = 0;
            LODWORD(v62) = 0;
            *v54 = 1.0;
          }
        }

        else
        {
          v57 = *(a2 + 28);
          *v54 = (v57 - 2) / v57;
          if (v57 >= 1)
          {
            v58 = 1.0 / (v57 * v57);
            v59 = v54 + 1;
            v60 = v57;
            do
            {
              *v59 = v58;
              v59[v38] = v58;
              ++v59;
              --v60;
            }

            while (v60);
          }

          v61 = 1;
          LODWORD(v62) = v57;
        }

        v70 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v90, v29, v48, v16, v19, v46);
        v71 = 1.0 - *&v70;
        **a3 = ((1.0 - *&v70) * *v54) + (*&v70 * **a3);
        if (v62)
        {
          if (*(a3 + 28))
          {
            if (v62 >= 1)
            {
              v72 = *(a3 + 8);
              v73 = v62;
              v74 = v54 + 1;
              do
              {
                v75 = *v74++;
                *v72 = (v71 * v75) + (*&v70 * *v72);
                ++v72;
                --v73;
              }

              while (v73);
            }
          }

          else
          {
            *(a3 + 28) = v62;
            if (v62 >= 1)
            {
              v76 = *(a3 + 8);
              v77 = v62;
              v78 = v54 + 1;
              do
              {
                v79 = *v78++;
                *v76++ = v71 * v79;
                --v77;
              }

              while (v77);
            }
          }
        }

        if (v57)
        {
          v80 = &v56[v38];
          if (*(a3 + 32))
          {
            if (v57 >= 1)
            {
              v81 = *(a3 + 16);
              v82 = v57;
              do
              {
                v83 = *v80++;
                *v81 = (v71 * v83) + (*&v70 * *v81);
                ++v81;
                --v82;
              }

              while (v82);
            }
          }

          else
          {
            *(a3 + 32) = v57;
            *(a3 + 36) = v61;
            if (v57 >= 1)
            {
              v84 = *(a3 + 16);
              v85 = v57;
              do
              {
                v86 = *v80++;
                *v84++ = v71 * v86;
                --v85;
              }

              while (v85);
            }
          }
        }
      }
    }

    return;
  }

  v21 = *a2;
  v22 = *(a2 + 16);
  v23 = *(*a2 + 408);
  if (v16 >= 1)
  {
    v24 = (v21[45] + 4 * *(v21[42] + 8 * v22 + 4));
    v25 = v21[27];
    v26 = v19;
    v27 = v16;
    do
    {
      v28 = *v24++;
      *v26++ = *(v25 + 4 * v28);
      --v27;
    }

    while (v27);
  }

  v29 = *(v23 + 4 * v22);
  if (!v12)
  {
    if (v29 <= 0.0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 8;
    }

    if (v16 >= 1 && v29 <= 0.0)
    {
      v30 = 0;
      v31 = v19;
      v32 = v16;
      do
      {
        v33 = *v31++;
        if (v33 > 0.0)
        {
          ++v30;
        }

        --v32;
      }

      while (v32);
      if (v30 <= 2)
      {
        v12 = 1 << v30;
      }

      else
      {
        v12 = 8;
      }
    }

    v7 = v12 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_37;
  }

  v34 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v34;
  *(a3 + 32) = v34;
  *(a3 + 36) = 1;
  **a3 = (v34 - 2) / v34;
  if (v34 >= 1)
  {
    v35 = 1.0 / (v34 * v34);
    v36 = *(a3 + 8);
    v37 = *(a3 + 16);
    do
    {
      *v36++ = v35;
      *v37++ = v35;
      --v34;
    }

    while (v34);
  }
}

float *OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface *this, const OpenSubdiv::v3_1_1::Sdc::Crease *a2, float *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(this + 6);
  v7 = &v15;
  v16 = 0;
  if (v6 < 0x11)
  {
    v8 = 0;
  }

  else
  {
    v8 = operator new(4 * v6);
    v16 = v8;
    LODWORD(v6) = *(this + 6);
    v7 = v8;
  }

  if (v6 >= 1)
  {
    v9 = (*(*this + 360) + 4 * *(*(*this + 336) + 8 * *(this + 4) + 4));
    v10 = *(*this + 216);
    v11 = v6;
    v12 = v7;
    do
    {
      v13 = *v9++;
      *v12++ = *(v10 + 4 * v13);
      --v11;
    }

    while (v11);
  }

  OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(a2, v6, v7, a3);
  operator delete(v8);
  return a3;
}

uint64_t OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeEdgeVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::EdgeInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, int a6)
{
  if (a5 != 1)
  {
    if (a6)
    {
      if (a6 != 4)
      {
LABEL_6:
        v13 = *(*(a2 + 144) + 8 * a3);
        *(a4 + 24) = 2;
        *(a4 + 32) = v13;
        *(a4 + 36) = 0;
        v14 = *a4;
        __asm { FMOV            V0.2S, #0.375 }

        **a4 = _D0;
        if (v13 == 2)
        {
          **(a4 + 16) = 0x3E0000003E000000;
        }

        else if (v13 >= 1)
        {
          *_D0.i32 = (2.0 / v13) * 0.125;
          v25 = (v13 + 3) & 0xFFFFFFFC;
          v26 = vdupq_n_s64(v13 - 1);
          v27 = xmmword_1E3049640;
          v28 = xmmword_1E3049620;
          v29 = (*(a4 + 16) + 8);
          v30 = vdupq_n_s64(4uLL);
          do
          {
            v31 = vmovn_s64(vcgeq_u64(v26, v28));
            if (vuzp1_s16(v31, _D0).u8[0])
            {
              *(v29 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v31, _D0).i8[2])
            {
              *(v29 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
            {
              *v29 = _D0.i32[0];
              v29[1] = _D0.i32[0];
            }

            v27 = vaddq_s64(v27, v30);
            v28 = vaddq_s64(v28, v30);
            v29 += 4;
            v25 -= 4;
          }

          while (v25);
        }

        v32 = *(*(a2 + 216) + 4 * a3);
        *v14 = vmla_n_f32(vmul_n_f32(*v14, 1.0 - v32), 0x3F0000003F000000, v32);
        if (v13 >= 1)
        {
          v33 = *(a4 + 16);
          do
          {
            *v33 = (1.0 - v32) * *v33;
            ++v33;
            --v13;
          }

          while (v13);
        }

        return result;
      }
    }

    else if (a5 != 4)
    {
      v23 = *(*(a2 + 216) + 4 * a3);
      if (v23 < 1.0 && ((result & 0x60) == 0 || (v23 + -1.0) <= 0.0))
      {
        goto LABEL_6;
      }
    }

    *(a4 + 24) = 2;
    *(a4 + 28) = 0;
    *(a4 + 36) = 0;
    v12 = 0.5;
    goto LABEL_23;
  }

  v6 = *(*(a2 + 144) + 8 * a3);
  *(a4 + 24) = 2;
  *(a4 + 32) = v6;
  *(a4 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a4 = _D0;
  if (v6 == 2)
  {
    a4 += 16;
    v12 = 0.125;
LABEL_23:
    v24 = *a4;
    v24->f32[0] = v12;
    v24->f32[1] = v12;
    return result;
  }

  if (v6 >= 1)
  {
    *_D0.i32 = (2.0 / v6) * 0.125;
    v16 = (v6 + 3) & 0xFFFFFFFC;
    v17 = vdupq_n_s64(v6 - 1);
    v18 = xmmword_1E3049640;
    v19 = xmmword_1E3049620;
    v20 = (*(a4 + 16) + 8);
    v21 = vdupq_n_s64(4uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v17, v19));
      if (vuzp1_s16(v22, _D0).u8[0])
      {
        *(v20 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v22, _D0).i8[2])
      {
        *(v20 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
      {
        *v20 = _D0.i32[0];
        v20[1] = _D0.i32[0];
      }

      v18 = vaddq_s64(v18, v21);
      v19 = vaddq_s64(v19, v21);
      v20 += 4;
      v16 -= 4;
    }

    while (v16);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Sdc::Scheme<(OpenSubdiv::v3_1_1::Sdc::SchemeType)2>::ComputeVertexVertexMask<OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface,OpenSubdiv::v3_1_1::Far::PrimvarRefiner::Mask>(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v99 = *MEMORY[0x1E69E9840];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      LODWORD(a6) = 1031798784;
    }

    else
    {
      v34 = 1.0 / v9;
      *&a6 = cosf(v34 * 6.2832);
      *&a6 = v34 * (0.625 - (((*&a6 * 0.25) + 0.375) * ((*&a6 * 0.25) + 0.375)));
      **a3 = 1.0 - (*&a6 * v9);
      if (v9 < 1)
      {
        return;
      }
    }

    v35 = (v9 + 3) & 0xFFFFFFFC;
    v36 = vdupq_n_s64(v9 - 1);
    v37 = xmmword_1E3049640;
    v38 = xmmword_1E3049620;
    v39 = (*(a3 + 8) + 8);
    v40 = vdupq_n_s64(4uLL);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v36, v38));
      if (vuzp1_s16(v41, *&a6).u8[0])
      {
        *(v39 - 2) = LODWORD(a6);
      }

      if (vuzp1_s16(v41, *&a6).i8[2])
      {
        *(v39 - 1) = LODWORD(a6);
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v36, *&v37))).i32[1])
      {
        *v39 = LODWORD(a6);
        v39[1] = LODWORD(a6);
      }

      v37 = vaddq_s64(v37, v40);
      v38 = vaddq_s64(v38, v40);
      v39 += 4;
      v35 -= 4;
    }

    while (v35);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x1EEE9AC00](a1);
  v17 = (&v95 - v16);
  bzero(&v95 - v16, v15);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v17 = 0;
    v28 = 0.0;
    goto LABEL_43;
  }

  v20 = *a2;
  v21 = *(a2 + 16);
  v22 = *(*a2 + 408);
  if (v14 >= 1)
  {
    v23 = (v20[45] + 4 * *(v20[42] + 8 * v21 + 4));
    v24 = v20[27];
    v25 = v17;
    v26 = v14;
    do
    {
      v27 = *v23++;
      *v25++ = *(v24 + 4 * v27);
      --v26;
    }

    while (v26);
  }

  v28 = *(v22 + 4 * v21);
  if (!v10)
  {
    if (v28 <= 0.0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    if (v14 >= 1 && v28 <= 0.0)
    {
      v29 = 0;
      v30 = v17;
      v31 = v14;
      do
      {
        v32 = *v30++;
        if (v32 > 0.0)
        {
          ++v29;
        }

        --v31;
      }

      while (v31);
      if (v29 <= 2)
      {
        v10 = 1 << v29;
      }

      else
      {
        v10 = 8;
      }
    }

    v8 = v10 - 1;
  }

  if (v8 > 1)
  {
LABEL_43:
    v42 = v14;
    if (v10 == 4)
    {
      v97 = v13;
      v43 = 0xFFFFFFFF00000000;
      v44 = v17;
      do
      {
        v45 = *v44++;
        v43 += 0x100000000;
      }

      while (v45 <= 0.0);
      v46 = v14 << 32;
      v96 = v14;
      v47 = &v17[v14 - 1];
      do
      {
        v48 = *v47--;
        v46 -= 0x100000000;
      }

      while (v48 <= 0.0);
      *(a3 + 24) = 1;
      *(a3 + 28) = v14;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      v49 = *(a3 + 8);
      **a3 = 1061158912;
      if (v14 >= 1)
      {
        bzero(v49, 4 * v14);
      }

      *&v49[v43 >> 30] = 1040187392;
      *&v49[v46 >> 30] = 1040187392;
      v13 = v97;
      v42 = v96;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v98 = *a1;
    MEMORY[0x1EEE9AC00](v18);
    v50 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v50, 4 * v14);
    ChildSharpnessPerEdge = OpenSubdiv::v3_1_1::Vtr::internal::VertexInterface::GetChildSharpnessPerEdge(a2, &v98, v50);
    v52 = *(*(*(a2 + 8) + 408) + 4 * *(a2 + 20));
    if (!v13)
    {
      if (v52 <= 0.0)
      {
        if (v14 < 1)
        {
          v13 = 1;
        }

        else
        {
          v61 = 0;
          v62 = (&v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
          v63 = v14;
          do
          {
            v64 = *v62++;
            if (v64 > 0.0)
            {
              ++v61;
            }

            --v63;
          }

          while (v63);
          v13 = v61 <= 2 ? 1 << v61 : 8;
        }
      }

      else
      {
        v13 = 8;
      }

      if (v13 == v10)
      {
        return;
      }
    }

    MEMORY[0x1EEE9AC00](ChildSharpnessPerEdge);
    v66 = (&v95 - v65);
    bzero(&v95 - v65, v67);
    v69 = (v66 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v72 = v42;
        v73 = 0xFFFFFFFF00000000;
        v74 = v50;
        do
        {
          v75 = *v74++;
          v73 += 0x100000000;
        }

        while (v75 <= 0.0);
        v76 = v72 << 32;
        v77 = &v50[4 * v72 - 4];
        do
        {
          v78 = *v77--;
          v76 -= 0x100000000;
        }

        while (v78 <= 0.0);
        v70 = *(a2 + 24);
        *v66 = 1061158912;
        if (v70 >= 1)
        {
          bzero(v66 + 1, 4 * v70);
        }

        *(v69 + (v73 >> 30)) = 0.125;
        *(v69 + (v76 >> 30)) = 0.125;
        v71 = *v66;
      }

      else
      {
        LODWORD(v70) = 0;
        v71 = 1.0;
      }

      goto LABEL_98;
    }

    v70 = *(a2 + 28);
    if (v70 == 6)
    {
      v71 = 0.625;
      v68.i32[0] = 1031798784;
    }

    else
    {
      v79 = 1.0 / v70;
      *v68.i32 = cosf(v79 * 6.2832);
      *v68.i32 = v79 * (0.625 - (((*v68.i32 * 0.25) + 0.375) * ((*v68.i32 * 0.25) + 0.375)));
      v71 = 1.0 - (*v68.i32 * v70);
      if (v70 < 1)
      {
LABEL_98:
        v87 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v98, v28, v52, v14, v17, v50);
        v88 = 1.0 - *&v87;
        **a3 = ((1.0 - *&v87) * v71) + (*&v87 * **a3);
        if (v70)
        {
          if (*(a3 + 28))
          {
            if (v70 >= 1)
            {
              v89 = *(a3 + 8);
              v90 = v70;
              do
              {
                v91 = *v69++;
                *v89 = (v88 * v91) + (*&v87 * *v89);
                ++v89;
                --v90;
              }

              while (v90);
            }
          }

          else
          {
            *(a3 + 28) = v70;
            if (v70 >= 1)
            {
              v92 = *(a3 + 8);
              v93 = v70;
              do
              {
                v94 = *v69++;
                *v92++ = v88 * v94;
                --v93;
              }

              while (v93);
            }
          }
        }

        return;
      }
    }

    v80 = (v70 + 3) & 0xFFFFFFFC;
    v81 = vdupq_n_s64(v70 - 1);
    v82 = xmmword_1E3049640;
    v83 = xmmword_1E3049620;
    v84 = v66 + 4;
    v85 = vdupq_n_s64(4uLL);
    do
    {
      v86 = vmovn_s64(vcgeq_u64(v81, v83));
      if (vuzp1_s16(v86, v68).u8[0])
      {
        *(v84 - 3) = v68.i32[0];
      }

      if (vuzp1_s16(v86, v68).i8[2])
      {
        *(v84 - 2) = v68.i32[0];
      }

      if (vuzp1_s16(v68, vmovn_s64(vcgeq_u64(v81, *&v82))).i32[1])
      {
        *(v84 - 1) = v68.i32[0];
        *v84 = v68.i32[0];
      }

      v82 = vaddq_s64(v82, v85);
      v83 = vaddq_s64(v83, v85);
      v84 += 4;
      v80 -= 4;
    }

    while (v80);
    goto LABEL_98;
  }

  v33 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v33;
  *(a3 + 36) = 0;
  if (v33 == 6)
  {
    **a3 = 1059061760;
    v19.i32[0] = 1031798784;
  }

  else
  {
    v53 = 1.0 / v33;
    *v19.i32 = cosf(v53 * 6.2832);
    *v19.i32 = v53 * (0.625 - (((*v19.i32 * 0.25) + 0.375) * ((*v19.i32 * 0.25) + 0.375)));
    **a3 = 1.0 - (*v19.i32 * v33);
    if (v33 < 1)
    {
      return;
    }
  }

  v54 = (v33 + 3) & 0xFFFFFFFC;
  v55 = vdupq_n_s64(v33 - 1);
  v56 = xmmword_1E3049640;
  v57 = xmmword_1E3049620;
  v58 = (*(a3 + 8) + 8);
  v59 = vdupq_n_s64(4uLL);
  do
  {
    v60 = vmovn_s64(vcgeq_u64(v55, v57));
    if (vuzp1_s16(v60, v19).u8[0])
    {
      *(v58 - 2) = v19.i32[0];
    }

    if (vuzp1_s16(v60, v19).i8[2])
    {
      *(v58 - 1) = v19.i32[0];
    }

    if (vuzp1_s16(v19, vmovn_s64(vcgeq_u64(v55, *&v56))).i32[1])
    {
      *v58 = v19.i32[0];
      v58[1] = v19.i32[0];
    }

    v56 = vaddq_s64(v56, v59);
    v57 = vaddq_s64(v57, v59);
    v58 += 4;
    v54 -= 4;
  }

  while (v54);
}

uint64_t OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v175 = v6;
  v7 = v1;
  v8 = 0;
  v219 = *MEMORY[0x1E69E9840];
  do
  {
    v9 = v1 + v8;
    *v9 = 0;
    *(v9 + 8) = v1 + v8 + 24;
    *(v9 + 344) = 0;
    *(v9 + 16) = 0x2800000028;
    v8 += 352;
  }

  while (v8 != 1408);
  for (i = 0; i != 1408; i += 352)
  {
    v11 = v1 + i;
    *(v11 + 1408) = 0;
    *(v11 + 1416) = v1 + i + 1432;
    *(v11 + 1752) = 0;
    *(v11 + 1424) = 0x2800000028;
  }

  for (j = 0; j != 1408; j += 352)
  {
    v13 = v1 + j;
    *(v13 + 2816) = 0;
    *(v13 + 2824) = v1 + j + 2840;
    *(v13 + 3160) = 0;
    *(v13 + 2832) = 0x2800000028;
  }

  v14 = v1 + 4224;
  v15 = 1408;
  do
  {
    *v14 = 0;
    *(v14 + 8) = v14 + 24;
    *(v14 + 344) = 0;
    *(v14 + 16) = 0x2800000028;
    v14 += 352;
    v15 -= 352;
  }

  while (v15);
  v16 = v1 + 5632;
  v17 = 1408;
  do
  {
    *v16 = 0;
    *(v16 + 8) = v16 + 24;
    *(v16 + 344) = 0;
    *(v16 + 16) = 0x2800000028;
    v16 += 352;
    v17 -= 352;
  }

  while (v17);
  v18 = (2 * v3) | 1;
  v19 = *(v2 + 48) + 4 * *(*(v2 + 24) + 4 * v18);
  v179 = v19;
  if ((v5 & 0x80000000) == 0)
  {
    v20 = *(*(v2 + 456) + 8 * v5);
    v179 = v20[3] + 4 * *(*(*v20 + 24) + 4 * v18);
  }

  v172 = v1 + 1408;
  v173 = (v1 + 2816);
  v174 = v4;
  v21 = 0;
  v170 = v1 + 4224;
  v169 = v1 + 5632;
  v185 = v2;
  v22 = *(v2 + 20);
  do
  {
    v23 = &(&v199)[v21];
    *v23 = &v202[v21 * 8];
    v23[1] = 0x2800000000;
    v23[22] = 0;
    v21 += 23;
  }

  while (v21 != 92);
  v24 = v5;
  v25 = v22 + ((v5 & 0x80000000) == 0);
  v26 = 2 * v25;
  v171 = v25;
  if (v25)
  {
    if (v201 < v26)
    {
      operator delete(v203);
      v199 = v202;
      v201 = 40;
      v203 = operator new(4 * v26);
      v199 = v203;
      v201 = v26;
    }

    v200 = v26;
    if (v206 < v26)
    {
      operator delete(v208);
      v204 = v207;
      v206 = 40;
      v208 = operator new(4 * v26);
      v204 = v208;
      v206 = v26;
    }

    v205 = v26;
    if (v211 < v26)
    {
      operator delete(v213);
      v209 = v212;
      v211 = 40;
      v213 = operator new(4 * v26);
      v209 = v213;
      v211 = v26;
    }

    v210 = v26;
    if (v216 < v26)
    {
      operator delete(v218);
      v214 = v217;
      v216 = 40;
      v218 = operator new(4 * v26);
      v214 = v218;
      v216 = v26;
    }
  }

  else
  {
    operator delete(v203);
    v199 = v202;
    v200 = v26;
    v201 = 40;
    operator delete(v208);
    v204 = v207;
    v205 = v26;
    v206 = 40;
    operator delete(v213);
    v209 = v212;
    v211 = 40;
    v210 = v26;
    operator delete(v218);
    v214 = v217;
    v216 = 40;
  }

  v27 = 0;
  v215 = v26;
  v176 = v7;
  v28 = 4;
  do
  {
    *(v7 + 7040 + 4 * v27) = *(v19 + 4 * v27) + v174;
    v29 = (v175 + 6 * v27);
    v30 = *(v19 + 4 * v27);
    v31 = &(&v199)[23 * v27];
    if (*v29)
    {
      v32 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularPartialRingAroundVertex(v185, v30, v29, *v31, v24);
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v32 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v185, v30, *v31, v24);
      if ((v32 & 1) == 0)
      {
LABEL_28:
        v33 = 0;
        v34 = v32 >> 1;
        v35 = 6.2832 / (v32 >> 1);
        LODWORD(v36) = v32 >> 1;
        goto LABEL_31;
      }
    }

    v37 = v32 - 1;
    v34 = v37 >> 1;
    LODWORD(v36) = (v37 >> 1) + 1;
    v35 = 3.1416 / (v37 >> 1);
    *(*v31 + 4 * v32) = *(*v31 + 4 * v37);
    v33 = 1;
LABEL_31:
    v188[v27] = v33;
    *(&v198[357] + v27) = v34;
    *(&v198[359] + v27) = v36;
    *(&v198[353] + v27) = v35;
    v38 = v27 + 1;
    v39 = *(v179 + 4 * ((v27 + 1) & 3));
    v40 = *(v179 + 4 * ((v27 - 1) & 3));
    *(&v198[355] + v27) = -1;
    if (v36 >= 1)
    {
      v41 = 0;
      v36 = v36;
      v42 = 2;
      v43 = *v31;
      while (1)
      {
        v44 = *v43;
        v43 += 2;
        if (v44 == v39)
        {
          v45 = v36 == 1 ? 0 : v42;
          if (*(*v31 + 4 * v45) == v40)
          {
            break;
          }
        }

        ++v41;
        v42 += 2;
        if (!--v36)
        {
          goto LABEL_41;
        }
      }

      *(&v198[355] + v27) = v41;
    }

LABEL_41:
    v28 = v28 + v32 - 3;
    ++v27;
  }

  while (v38 != 4);
  for (k = 0; k != 176; k += 44)
  {
    v47 = &v198[k + 177];
    *v47 = 0;
    v47[1] = &v198[k + 180];
    v47[43] = 0;
    v47[2] = 0x2800000028;
  }

  v177 = v28;
  for (m = 0; m != 176; m += 44)
  {
    v49 = &v198[m + 1];
    *v49 = 0;
    v49[1] = &v198[m + 4];
    v49[43] = 0;
    v49[2] = 0x2800000028;
  }

  v50 = v197;
  v194 = v197;
  v195 = v171;
  v196 = 10;
  v198[0] = 0;
  LODWORD(v51) = v171;
  if (v171 >= 0xB)
  {
    v50 = operator new(352 * v171);
    v198[0] = v50;
    v194 = v50;
    v196 = v171;
    LODWORD(v51) = v195;
  }

  if (v51)
  {
    v51 = v51;
    do
    {
      *v50 = 0;
      v50[1] = v50 + 3;
      v50[43] = 0;
      v50[2] = 0x2800000028;
      v50 += 44;
      --v51;
    }

    while (v51);
  }

  v52 = 4 * v171;
  v53 = v192;
  v189 = v192;
  v190 = 4 * v171;
  v191 = 40;
  v193 = 0;
  if ((4 * v171) >= 0x29)
  {
    v53 = operator new(352 * v52);
    v193 = v53;
    v189 = v53;
    v191 = 4 * v171;
    v52 = v190;
  }

  if (v52)
  {
    v54 = v52;
    do
    {
      *v53 = 0;
      v53[1] = v53 + 3;
      v53[43] = 0;
      v53[2] = 0x2800000028;
      v53 += 44;
      --v54;
    }

    while (v54);
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v182 = v55;
    v183 = *(v179 + 4 * v56);
    v178 = v56;
    v57 = *(&v198[359] + v56);
    v58 = v57;
    v184 = v57;
    if (v57 >= 1)
    {
      v59 = 0;
      v181 = &(&v199)[23 * v56];
      v60 = 1.0 / (v57 + 5.0);
      v61 = v60 * v57;
      v180 = 352 * v57;
      v62 = -1;
      v63 = 2;
      v64 = 4;
      do
      {
        v65 = (v57 + v62) % v58;
        v66 = *v181;
        v67 = (*v181 + v64);
        v69 = *(v67 - 1);
        v68 = *v67;
        if (v180 - 352 == v59)
        {
          v70 = 0;
        }

        else
        {
          v70 = v63;
        }

        v71 = *(v66 + 4 * v70);
        v72 = *(v66 + 8 * v65);
        v186 = *(v66 + 8 * v65 + 4);
        v73 = v58;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v194[v59], 4u);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v183, v61);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v71, v60 + v60);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v69, v60 + v60);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v194[v59], v68, v60);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v182 + v59 + v189), 4u);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v71, 0.33333);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v72, -0.33333);
        v74 = v68;
        v57 = v184;
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v74, 0.16667);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v182 + v59 + v189), v186, -0.16667);
        v58 = v73;
        v59 += 352;
        v64 += 8;
        v63 += 2;
        ++v62;
      }

      while (v180 != v59);
    }

    v75 = v178;
    if ((*(v175 + 6 * v178 + 4) & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + 352 * v178), v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v183, 1.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 177], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], *(v179 + 4 * v178), 0.66667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], *(v179 + 4 * ((v178 + 1) & 3)), 0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 1], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 1], *(v179 + 4 * v178), 0.66667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 1], *(v179 + 4 * ((v178 - 1) & 3)), 0.33333);
    }

    else if (v188[v178])
    {
      v76 = &(&v199)[23 * v178];
      v77 = **v76;
      v78 = (*v76)[2 * v58 - 1];
      v187 = v58;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + 352 * v178), v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v77, 0.16667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v78, 0.16667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + 352 * v178), v183, 0.66667);
      v79 = *(&v198[357] + v178);
      v80 = *(&v198[353] + v178);
      v81 = __sincosf_stret(v80);
      v82 = 1.0 / (v81.__cosval + (v79 * 3.0));
      v83 = (*v76)[1];
      v84 = (v82 * -(((v81.__cosval * 2.0) + 1.0) * sqrtf(v81.__cosval + 1.0))) / sqrtf(1.0 - v81.__cosval);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 177], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], v77, 0.16667);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[44 * v178 + 177], v78, -0.16667);
      v85 = v57;
      v86 = &v198[44 * v178 + 1];
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v86, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v183, (v81.__sinval * -4.0) * v82);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v77, v84);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v83, v81.__sinval * v82);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v78, v84);
      if (v85 >= 3)
      {
        v87 = 0;
        v88 = 2;
        do
        {
          v89 = sinf(v80 * (v88 - 1));
          v90 = v82 * (v89 * 4.0);
          v91 = v82 * (v89 + sinf(v80 * v88));
          v92 = &(*v76)[v87 / 4];
          v93 = v92[3];
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v92[2], v90);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v86, v93, v91);
          v87 += 8;
          ++v88;
        }

        while (8 * (v187 - 1) - 8 != v87);
      }

      v94 = *v86;
      v75 = v178;
      if (v94 >= 1)
      {
        v95 = (v86[1] + 4);
        do
        {
          *v95 = *v95 * 0.33333;
          v95 += 2;
          --v94;
        }

        while (v94);
      }
    }

    else
    {
      v96 = *(&v198[353] + v178);
      if (v58 > 29)
      {
        v98 = cosf(6.2832 / v57);
        v97 = 1.0 / ((((v98 + 5.0) + sqrtf((v98 + 9.0) * (v98 + 1.0))) * v57) * 0.0625);
      }

      else
      {
        v97 = OpenSubdiv::v3_1_1::Far::computeCoefficient(int)::efTable[v58];
      }

      v99 = 44 * v178;
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + 352 * v178), v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 177], v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v198[44 * v178 + 1], v177);
      if (v57 >= 1)
      {
        v100 = 0;
        v101 = 0;
        v102 = 1.0 / v57;
        v103 = v97 * 0.5;
        v104 = v57 - 1;
        do
        {
          v105 = (v104 + v101) % v57;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v99 * 8), &v194[v100], v102);
          v106 = __sincosf_stret(v96 * v101);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 177], &v194[v100], v103 * v106.__cosval);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 177], &v194[352 * v105], v103 * v106.__cosval);
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 1], &v194[v100], v103 * v106.__sinval);
          v57 = v184;
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v198[v99 + 1], &v194[352 * v105], v103 * v106.__sinval);
          ++v101;
          v100 += 352;
        }

        while (v184 != v101);
      }
    }

    v56 = v75 + 1;
    v55 = (v182 + 352 * v171);
  }

  while (v56 != 4);
  v107 = 0;
  v108 = 0;
  v109 = (v175 + 4);
  do
  {
    v110 = *v109;
    v109 += 6;
    if ((v110 & 2) != 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 1408), &v198[v107 / 8 + 177]);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 2816), &v198[v107 / 8 + 1]);
    }

    else
    {
      v111 = *(&v198[355] + v108);
      v112 = *(&v198[353] + v108);
      v113 = v112 * v111;
      v114 = v112 * ((v111 + 1) % *(&v198[359] + v108));
      if ((v188[v108] & 1) != 0 && *(&v198[357] + v108) < 2)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + v107 + 1408), v177);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), *(v179 + 4 * v108), 0.66667);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), *(v179 + 4 * ((v108 + 1) & 3)), 0.33333);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear((v176 + v107 + 2816), v177);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), *(v179 + 4 * v108), 0.66667);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), *(v179 + 4 * ((v108 - 1) & 3)), 0.33333);
      }

      else
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 1408), (v176 + v107));
        v115 = __sincosf_stret(v113);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), &v198[v107 / 8 + 177], v115.__cosval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 1408), &v198[v107 / 8 + 1], v115.__sinval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=((v176 + v107 + 2816), (v176 + v107));
        v116 = __sincosf_stret(v114);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), &v198[v107 / 8 + 177], v116.__cosval);
        OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v176 + v107 + 2816), &v198[v107 / 8 + 1], v116.__sinval);
      }
    }

    ++v108;
    v107 += 352;
  }

  while (v108 != 4);
  v117 = 0;
  v118 = 0;
  v119 = -2.0;
  v120 = v173;
  while (2)
  {
    v121 = (v118 + 1) & 3;
    v122 = (v118 - 1) & 3;
    v123 = *(&v198[355] + v118);
    v124 = &v189[352 * v123];
    v125 = &v189[352 * ((v123 + 1) % *(&v198[359] + v118))];
    v126 = cosf(*(&v198[353] + v118));
    v127 = cosf(*(&v198[353] + v122));
    v128 = cosf(*(&v198[353] + v121));
    v129 = (v126 * v119) + 3.0;
    v130 = v129 - v128;
    v131 = v126 + v126;
    v132 = v129 - v127;
    if ((v188[v118] & 1) == 0)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 176, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 352), v128 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 176), v130 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v173[44 * v121], v131 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v124[v117], 0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 352, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v120 - 352), v127 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), v120, v132 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v172 + 352 * ((v118 - 1) & 3)), v131 / 3.0);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), &v125[v117], -0.33333);
LABEL_95:
      v139 = v118 + 1;
      goto LABEL_96;
    }

    v133 = *(&v198[357] + v118);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 176, v177);
    if (v133 < 2)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * v118), 0.44444);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * (v118 ^ 2)), 0.11111);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * v121), 0.22222);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), *(v179 + 4 * v122), 0.22222);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v120 + 704, v120 + 352);
      goto LABEL_95;
    }

    v134 = v128 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 352), v128 / 3.0);
    v135 = v130 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 176), v130 / 3.0);
    v136 = v131 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v173[44 * v121], v131 / 3.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v124[v117], 0.33333);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 352, v177);
    v137 = v127 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v120 - 352), v137);
    v138 = v132 / 3.0;
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), v120, v138);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v172 + 352 * ((v118 - 1) & 3)), v131 / 3.0);
    OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), &v125[v117], -0.33333);
    if (v188[v122] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 176, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 352), v134);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), (v120 - 176), v135);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v173[44 * v121], v136);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 176), &v124[v117], 0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v120 + 704, v120 + 352);
      v119 = -2.0;
      goto LABEL_95;
    }

    v119 = -2.0;
    v139 = v118 + 1;
    if (v188[v121] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(v120 + 352, v177);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v120 - 352), v137);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), v120, v138);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), (v172 + 352 * ((v118 - 1) & 3)), v136);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight((v120 + 352), &v125[v117], -0.33333);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(v120 + 352, v120 + 704);
    }

LABEL_96:
    v120 += 44;
    v117 += 352 * v171;
    v118 = v139;
    if (v139 != 4)
    {
      continue;
    }

    break;
  }

  for (n = 0; n != 4; ++n)
  {
    v141 = (v176 + 352 * n);
    v142 = *v141;
    if (v142 >= 1)
    {
      v143 = *(v141 + 1);
      do
      {
        *v143 += v174;
        v143 += 2;
        --v142;
      }

      while (v142);
    }

    v144 = (v172 + 352 * n);
    v145 = *v144;
    if (v145 >= 1)
    {
      v146 = *(v144 + 1);
      do
      {
        *v146 += v174;
        v146 += 2;
        --v145;
      }

      while (v145);
    }

    v147 = &v173[44 * n];
    v148 = *v147;
    if (v148 >= 1)
    {
      v149 = v147[1];
      do
      {
        *v149 += v174;
        v149 += 2;
        --v148;
      }

      while (v148);
    }

    v150 = (v170 + 352 * n);
    v151 = *v150;
    if (v151 >= 1)
    {
      v152 = *(v150 + 1);
      do
      {
        *v152 += v174;
        v152 += 2;
        --v151;
      }

      while (v151);
    }

    v153 = (v169 + 352 * n);
    v154 = *v153;
    if (v154 >= 1)
    {
      v155 = *(v153 + 1);
      do
      {
        *v155 += v174;
        v155 += 2;
        --v154;
      }

      while (v154);
    }
  }

  if (v190)
  {
    v156 = 0;
    v157 = 344;
    do
    {
      v158 = &v189[v157];
      v159 = &v189[v157 - 336];
      operator delete(*&v189[v157]);
      *v159 = v158 - 320;
      *(v158 - 81) = 40;
      ++v156;
      v157 += 352;
    }

    while (v156 < v190);
  }

  operator delete(v193);
  if (v195)
  {
    v160 = 0;
    v161 = 344;
    do
    {
      v162 = &v194[v161];
      v163 = &v194[v161 - 336];
      operator delete(*&v194[v161]);
      *v163 = v162 - 320;
      *(v162 - 81) = 40;
      ++v160;
      v161 += 352;
    }

    while (v160 < v195);
  }

  operator delete(v198[0]);
  v164 = 1408;
  do
  {
    operator delete(v198[v164 / 8]);
    *&v197[v164 + 3184] = &v197[v164 + 3200];
    *&v197[v164 + 3196] = 40;
    v164 -= 352;
  }

  while (v164);
  v165 = 176;
  do
  {
    operator delete(v198[v165 + 176]);
    v198[v165 + 134] = &v198[v165 + 136];
    HIDWORD(v198[v165 + 135]) = 40;
    v165 -= 44;
  }

  while (v165 * 8);
  v166 = 92;
  do
  {
    v167 = &(&v199)[v166];
    operator delete(v198[v166 + 360]);
    *(v167 - 23) = v167 - 168;
    *(v167 - 43) = 40;
    v166 -= 23;
  }

  while (v166 * 8);
  return v176;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(void **this, unsigned int a2)
{
  *this = 0;
  if (*(this + 4) < a2)
  {
    if (a2)
    {
      if (*(this + 5) < a2)
      {
        operator delete(this[43]);
        this[1] = this + 3;
        *(this + 5) = 40;
        v4 = operator new(8 * a2);
        this[43] = v4;
        this[1] = v4;
        *(this + 5) = a2;
      }
    }

    else
    {
      operator delete(this[43]);
      this[1] = this + 3;
      *(this + 5) = 40;
    }

    *(this + 4) = a2;
  }
}

float OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, int a2, float result)
{
  v3 = *this;
  v4 = *(this + 1);
  if (*this < 1)
  {
LABEL_5:
    v7 = v4 + 8 * v3;
    *v7 = a2;
    *(v7 + 4) = result;
    *this = v3 + 1;
  }

  else
  {
    v5 = (v4 + 4);
    v6 = *this;
    while (*(v5 - 1) != a2)
    {
      v5 += 2;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = *v5 + result;
    *v5 = result;
  }

  return result;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, const OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *a2, float a3)
{
  if (*a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(this, *(*(a2 + 1) + v6), *(*(a2 + 1) + v6 + 4) * a3);
      ++v7;
      v6 += 8;
    }

    while (v7 < *a2);
  }
}

int *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(int *a1, int *a2)
{
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(a1, a2[4]);
  v4 = *a2;
  *a1 = *a2;
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      *(*(a1 + 1) + 8 * v5) = *(*(a2 + 1) + 8 * v5);
      ++v5;
    }

    while (v5 < *a1);
  }

  return a1;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  *this = &unk_1F5D1A360;
  v4 = this + 480;
  v2 = *(this + 60);
  v3 = *(v4 + 1);
  if (((v3 - v2) >> 3) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *(v6 + 40);
        if (v7)
        {
          *(v6 + 48) = v7;
          operator delete(v7);
        }

        MEMORY[0x1E6906520](v6, 0x70C4089CF00AFLL);
        v2 = *(this + 60);
        v3 = *(this + 61);
      }

      ++v5;
    }

    while (v5 < ((v3 - v2) >> 3));
  }

  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  v8 = *(this + 57);
  if (v8)
  {
    *(this + 58) = v8;
    operator delete(v8);
  }

  v9 = *(this + 54);
  if (v9)
  {
    *(this + 55) = v9;
    operator delete(v9);
  }

  v10 = *(this + 51);
  if (v10)
  {
    *(this + 52) = v10;
    operator delete(v10);
  }

  v11 = *(this + 48);
  if (v11)
  {
    *(this + 49) = v11;
    operator delete(v11);
  }

  v12 = *(this + 45);
  if (v12)
  {
    *(this + 46) = v12;
    operator delete(v12);
  }

  v13 = *(this + 42);
  if (v13)
  {
    *(this + 43) = v13;
    operator delete(v13);
  }

  v14 = *(this + 39);
  if (v14)
  {
    *(this + 40) = v14;
    operator delete(v14);
  }

  v15 = *(this + 36);
  if (v15)
  {
    *(this + 37) = v15;
    operator delete(v15);
  }

  v16 = *(this + 33);
  if (v16)
  {
    *(this + 34) = v16;
    operator delete(v16);
  }

  v17 = *(this + 30);
  if (v17)
  {
    *(this + 31) = v17;
    operator delete(v17);
  }

  v18 = *(this + 27);
  if (v18)
  {
    *(this + 28) = v18;
    operator delete(v18);
  }

  v19 = *(this + 24);
  if (v19)
  {
    *(this + 25) = v19;
    operator delete(v19);
  }

  v20 = *(this + 21);
  if (v20)
  {
    *(this + 22) = v20;
    operator delete(v20);
  }

  v21 = *(this + 18);
  if (v21)
  {
    *(this + 19) = v21;
    operator delete(v21);
  }

  v22 = *(this + 15);
  if (v22)
  {
    *(this + 16) = v22;
    operator delete(v22);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = *(this + 51);
  v5 = *(this + 52) - v4;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(this + 52) = v4 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append(this + 408, v3 - v5);
    v2 = *(this + 1);
  }

  v6 = v2[1];
  v7 = *(this + 54);
  v8 = *(this + 55) - v7;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(this + 55) = v7 + v6;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append(this + 432, v6 - v8);
    v2 = *(this + 1);
  }

  v9 = v2[2];
  v10 = *(this + 57);
  v11 = *(this + 58) - v10;
  if (v9 <= v11)
  {
    if (v9 < v11)
    {
      *(this + 58) = v10 + v9;
    }
  }

  else
  {

    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append(this + 456, v9 - v11);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::refine(uint64_t a1, char a2)
{
  *(a1 + 36) = (a2 & 1) == 0;
  *(a1 + 37) = (a2 & 2) != 0;
  v4 = (*(*(a1 + 8) + 464) - *(*(a1 + 8) + 456)) >> 3;
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping(a1);
  v5 = *(a1 + 16);
  v6 = *(a1 + 52);
  v7 = *(a1 + 48) + *(a1 + 44);
  *v5 = *(a1 + 40);
  v5[1] = v7;
  v5[2] = *(a1 + 56) + v6 + *(a1 + 60);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateChildToParentMapping(a1, v8, v9);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagVectors(a1);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagVectors(a1);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagVectors(a1);
  if ((a2 & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v12[0] = v10;
  if (v4 < 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(a1, v12);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(a1);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(a1);

    return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(a1);
  }

  else
  {
    v12[0] = v10 | 0x10;
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(a1, v12);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(a1);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(a1);
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(a1);

    return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels(a1);
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentToChildMapping(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  (*(*this + 16))(this);
  if ((*(this + 36) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseChildComponentIndices(this);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentChildIndices(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateChildToParentMapping(std::vector<int> *this, uint8x8_t a2, uint8x8_t a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  a3.i32[0] = HIDWORD(v7[0]);
  a2.i32[0] = v7[0];
  v4 = vorr_s8((vmovl_u8(a2).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x18001000080000);
  v5 = vuzp1_s8(v4, v4);
  v5.i32[1] = vuzp1_s8(vorr_s8((vmovl_u8(a3).u64[0] & 0xFFE0FFE0FFE0FFE0), 0x19001100090001), v5).u32[0];
  v7[0] = v5;
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentVectors(this, v7);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentVectors(this, v7);
  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentVectors(this, v7);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideTopology(uint64_t result, char *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    result = (*(*result + 32))(result);
    v4 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = (*(*v3 + 40))(v3);
  v4 = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = (*(*v3 + 48))(v3);
  v4 = *a2;
  if ((*a2 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = (*(*v3 + 56))(v3);
  v4 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  result = (*(*v3 + 64))(v3);
  if ((*a2 & 0x20) != 0)
  {
LABEL_7:
    result = (*(*v3 + 72))(v3);
  }

LABEL_8:
  if (*(v3 + 28))
  {
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  if (*(*(v3 + 8) + 20) > v5)
  {
    v5 = *(*(v3 + 8) + 20);
  }

  *(*(v3 + 16) + 20) = v5;
  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideFVarChannels(uint64_t this)
{
  if (((*(*(this + 8) + 464) - *(*(this + 8) + 456)) >> 3) >= 1)
  {
    operator new();
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseChildComponentIndices(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(this + 57);
    do
    {
      if (*(v5 + v4))
      {
        *(*(this + 30) + 4 * v4) = 2;
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren(this);
  v6 = *(*this + 24);

  return v6(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateParentChildIndices(uint64_t this)
{
  v1 = *(this + 36);
  *(this + 64) = 0;
  v2 = *(this + 120);
  v3 = *(this + 128) - v2;
  v4 = v3 >> 2;
  if (v1 == 1)
  {
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = vdupq_n_s64(((v3 >> 2) & 0x7FFFFFFF) - 1);
      v7 = xmmword_1E3049640;
      v8 = xmmword_1E3049620;
      v9 = v2 + 2;
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 2) = v5;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 1) = v5 + 1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = v5 + 2;
          v9[1] = v5 + 3;
        }

        v5 += 4;
        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        v9 += 4;
      }

      while (((v4 + 3) & 0xFFFFFFFC) != v5);
    }

    *(this + 40) = v4;
    *(this + 68) = 0;
    v12 = *(this + 144);
    v13 = *(this + 152) - v12;
    v14 = v13 >> 2;
    if ((v13 >> 2) >= 1)
    {
      v15 = 0;
      v16 = vdupq_n_s64(((v13 >> 2) & 0x7FFFFFFF) - 1);
      v17 = xmmword_1E3049640;
      v18 = xmmword_1E3049620;
      v19 = (v12 + 8);
      v20 = vdupq_n_s64(4uLL);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v16, v18));
        if (vuzp1_s16(v21, *v16.i8).u8[0])
        {
          *(v19 - 2) = v15;
        }

        if (vuzp1_s16(v21, *&v16).i8[2])
        {
          *(v19 - 1) = v15 + 1;
        }

        if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
        {
          *v19 = v15 + 2;
          v19[1] = v15 + 3;
        }

        v15 += 4;
        v17 = vaddq_s64(v17, v20);
        v18 = vaddq_s64(v18, v20);
        v19 += 4;
      }

      while (((v14 + 3) & 0xFFFFFFFC) != v15);
    }

    *(this + 44) = v14;
    *(this + 72) = v14;
    v22 = *(this + 192);
    v23 = *(this + 200) - v22;
    v24 = v23 >> 2;
    if ((v23 >> 2) >= 1)
    {
      v25 = (v23 >> 2) & 0x7FFFFFFF;
      v26 = (v24 + 3) & 0xFFFFFFFC;
      v27 = vdupq_n_s64(v25 - 1);
      v28 = xmmword_1E3049640;
      v29 = xmmword_1E3049620;
      v30 = (v22 + 8);
      v31 = vdupq_n_s64(4uLL);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v27, v29));
        if (vuzp1_s16(v32, *v27.i8).u8[0])
        {
          *(v30 - 2) = v14;
        }

        if (vuzp1_s16(v32, *&v27).i8[2])
        {
          *(v30 - 1) = v14 + 1;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
        {
          *v30 = v14 + 2;
          v30[1] = v14 + 3;
        }

        v28 = vaddq_s64(v28, v31);
        v29 = vaddq_s64(v29, v31);
        LODWORD(v14) = v14 + 4;
        v30 += 4;
        v26 -= 4;
      }

      while (v26);
    }

    *(this + 48) = v24;
    if (*(this + 37) == 1)
    {
      *(this + 76) = 0;
      v33 = *(this + 168);
      v34 = *(this + 176) - v33;
      v35 = v34 >> 2;
      if ((v34 >> 2) < 1)
      {
        v43 = 0;
      }

      else
      {
        v36 = 0;
        v37 = vdupq_n_s64(((v34 >> 2) & 0x7FFFFFFF) - 1);
        v38 = xmmword_1E3049640;
        v39 = xmmword_1E3049620;
        v40 = (v33 + 8);
        v41 = vdupq_n_s64(4uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s16(v42, *v37.i8).u8[0])
          {
            *(v40 - 2) = v36;
          }

          if (vuzp1_s16(v42, *&v37).i8[2])
          {
            *(v40 - 1) = v36 + 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
          {
            *v40 = v36 + 2;
            v40[1] = v36 + 3;
          }

          v36 += 4;
          v38 = vaddq_s64(v38, v41);
          v39 = vaddq_s64(v39, v41);
          v40 += 4;
        }

        while (((v35 + 3) & 0xFFFFFFFC) != v36);
        v43 = *(this + 76);
      }

      *(this + 52) = v35;
      v81 = v43 + v35;
      *(this + 80) = v81;
      v82 = *(this + 216);
      v83 = *(this + 224) - v82;
      v84 = v83 >> 2;
      if ((v83 >> 2) >= 1)
      {
        v85 = (v83 >> 2) & 0x7FFFFFFF;
        v86 = (v84 + 3) & 0xFFFFFFFC;
        v87 = vdupq_n_s64(v85 - 1);
        v88 = xmmword_1E3049640;
        v89 = xmmword_1E3049620;
        v90 = (v82 + 8);
        v91 = vdupq_n_s64(4uLL);
        do
        {
          v92 = vmovn_s64(vcgeq_u64(v87, v89));
          if (vuzp1_s16(v92, *v87.i8).u8[0])
          {
            *(v90 - 2) = v81;
          }

          if (vuzp1_s16(v92, *&v87).i8[2])
          {
            *(v90 - 1) = v81 + 1;
          }

          if (vuzp1_s16(*&v87, vmovn_s64(vcgeq_u64(v87, *&v88))).i32[1])
          {
            *v90 = v81 + 2;
            v90[1] = v81 + 3;
          }

          v88 = vaddq_s64(v88, v91);
          v89 = vaddq_s64(v89, v91);
          v81 += 4;
          v90 += 4;
          v86 -= 4;
        }

        while (v86);
        v81 = *(this + 80);
      }

      *(this + 56) = v84;
      v93 = v81 + v84;
      *(this + 84) = v93;
      v94 = *(this + 240);
      v95 = *(this + 248) - v94;
      v96 = v95 >> 2;
      if ((v95 >> 2) >= 1)
      {
        v97 = (v95 >> 2) & 0x7FFFFFFF;
        v98 = (v96 + 3) & 0xFFFFFFFC;
        v99 = vdupq_n_s64(v97 - 1);
        v100 = xmmword_1E3049640;
        v101 = xmmword_1E3049620;
        v102 = (v94 + 8);
        v103 = vdupq_n_s64(4uLL);
        do
        {
          v104 = vmovn_s64(vcgeq_u64(v99, v101));
          if (vuzp1_s16(v104, *v99.i8).u8[0])
          {
            *(v102 - 2) = v93;
          }

          if (vuzp1_s16(v104, *&v99).i8[2])
          {
            *(v102 - 1) = v93 + 1;
          }

          if (vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v99, *&v100))).i32[1])
          {
            *v102 = v93 + 2;
            v102[1] = v93 + 3;
          }

          v100 = vaddq_s64(v100, v103);
          v101 = vaddq_s64(v101, v103);
          v93 += 4;
          v102 += 4;
          v98 -= 4;
        }

        while (v98);
      }

      *(this + 60) = v96;
    }

    else
    {
      *(this + 84) = 0;
      v47 = *(this + 240);
      v48 = *(this + 248) - v47;
      v49 = v48 >> 2;
      if ((v48 >> 2) < 1)
      {
        v57 = 0;
      }

      else
      {
        v50 = 0;
        v51 = vdupq_n_s64(((v48 >> 2) & 0x7FFFFFFF) - 1);
        v52 = xmmword_1E3049640;
        v53 = xmmword_1E3049620;
        v54 = (v47 + 8);
        v55 = vdupq_n_s64(4uLL);
        do
        {
          v56 = vmovn_s64(vcgeq_u64(v51, v53));
          if (vuzp1_s16(v56, *v51.i8).u8[0])
          {
            *(v54 - 2) = v50;
          }

          if (vuzp1_s16(v56, *&v51).i8[2])
          {
            *(v54 - 1) = v50 + 1;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, *&v52))).i32[1])
          {
            *v54 = v50 + 2;
            v54[1] = v50 + 3;
          }

          v50 += 4;
          v52 = vaddq_s64(v52, v55);
          v53 = vaddq_s64(v53, v55);
          v54 += 4;
        }

        while (((v49 + 3) & 0xFFFFFFFC) != v50);
        v57 = *(this + 84);
      }

      *(this + 60) = v49;
      v105 = v57 + v49;
      *(this + 76) = v105;
      v106 = *(this + 168);
      v107 = *(this + 176) - v106;
      v108 = v107 >> 2;
      if ((v107 >> 2) >= 1)
      {
        v109 = (v107 >> 2) & 0x7FFFFFFF;
        v110 = (v108 + 3) & 0xFFFFFFFC;
        v111 = vdupq_n_s64(v109 - 1);
        v112 = xmmword_1E3049640;
        v113 = xmmword_1E3049620;
        v114 = (v106 + 8);
        v115 = vdupq_n_s64(4uLL);
        do
        {
          v116 = vmovn_s64(vcgeq_u64(v111, v113));
          if (vuzp1_s16(v116, *v111.i8).u8[0])
          {
            *(v114 - 2) = v105;
          }

          if (vuzp1_s16(v116, *&v111).i8[2])
          {
            *(v114 - 1) = v105 + 1;
          }

          if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v111, *&v112))).i32[1])
          {
            *v114 = v105 + 2;
            v114[1] = v105 + 3;
          }

          v112 = vaddq_s64(v112, v115);
          v113 = vaddq_s64(v113, v115);
          v105 += 4;
          v114 += 4;
          v110 -= 4;
        }

        while (v110);
        v105 = *(this + 76);
      }

      *(this + 52) = v108;
      v117 = v105 + v108;
      *(this + 80) = v117;
      v118 = *(this + 216);
      v119 = *(this + 224) - v118;
      v120 = v119 >> 2;
      if ((v119 >> 2) >= 1)
      {
        v121 = (v119 >> 2) & 0x7FFFFFFF;
        v122 = (v120 + 3) & 0xFFFFFFFC;
        v123 = vdupq_n_s64(v121 - 1);
        v124 = xmmword_1E3049640;
        v125 = xmmword_1E3049620;
        v126 = (v118 + 8);
        v127 = vdupq_n_s64(4uLL);
        do
        {
          v128 = vmovn_s64(vcgeq_u64(v123, v125));
          if (vuzp1_s16(v128, *v123.i8).u8[0])
          {
            *(v126 - 2) = v117;
          }

          if (vuzp1_s16(v128, *&v123).i8[2])
          {
            *(v126 - 1) = v117 + 1;
          }

          if (vuzp1_s16(*&v123, vmovn_s64(vcgeq_u64(v123, *&v124))).i32[1])
          {
            *v126 = v117 + 2;
            v126[1] = v117 + 3;
          }

          v124 = vaddq_s64(v124, v127);
          v125 = vaddq_s64(v125, v127);
          v117 += 4;
          v126 += 4;
          v122 -= 4;
        }

        while (v122);
      }

      *(this + 56) = v120;
    }
  }

  else
  {
    if (v4 < 1)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      v45 = (v3 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v2)
        {
          v46 = v44 + 1;
        }

        else
        {
          v46 = v44;
        }

        if (!*v2)
        {
          v44 = -1;
        }

        *v2++ = v44;
        v44 = v46;
        --v45;
      }

      while (v45);
    }

    *(this + 40) = v46;
    *(this + 68) = 0;
    v58 = *(this + 144);
    v59 = *(this + 152) - v58;
    if ((v59 >> 2) < 1)
    {
      v62 = 0;
    }

    else
    {
      v60 = 0;
      v61 = (v59 >> 2) & 0x7FFFFFFF;
      do
      {
        if (*v58)
        {
          v62 = v60 + 1;
        }

        else
        {
          v62 = v60;
        }

        if (!*v58)
        {
          v60 = -1;
        }

        *v58++ = v60;
        v60 = v62;
        --v61;
      }

      while (v61);
    }

    *(this + 44) = v62;
    *(this + 72) = v62;
    v63 = *(this + 192);
    v64 = *(this + 200) - v63;
    if ((v64 >> 2) < 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      v66 = (v64 >> 2) & 0x7FFFFFFF;
      do
      {
        v67 = v65 + v62;
        if (*v63)
        {
          ++v65;
          v68 = v67;
        }

        else
        {
          v68 = -1;
        }

        *v63++ = v68;
        --v66;
      }

      while (v66);
    }

    *(this + 48) = v65;
    if (*(this + 37) == 1)
    {
      *(this + 76) = 0;
      v69 = *(this + 168);
      v70 = *(this + 176) - v69;
      if ((v70 >> 2) < 1)
      {
        v74 = 0;
        v71 = 0;
      }

      else
      {
        v71 = 0;
        v72 = (v70 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v69)
          {
            v73 = v71;
          }

          else
          {
            v73 = -1;
          }

          if (*v69)
          {
            ++v71;
          }

          *v69++ = v73;
          --v72;
        }

        while (v72);
        v74 = *(this + 76);
      }

      *(this + 52) = v71;
      v129 = v71 + v74;
      *(this + 80) = v129;
      v130 = *(this + 216);
      v131 = *(this + 224) - v130;
      if ((v131 >> 2) < 1)
      {
        v132 = 0;
      }

      else
      {
        v132 = 0;
        v133 = (v131 >> 2) & 0x7FFFFFFF;
        do
        {
          v134 = v132 + v129;
          if (*v130)
          {
            ++v132;
            v135 = v134;
          }

          else
          {
            v135 = -1;
          }

          *v130++ = v135;
          --v133;
        }

        while (v133);
        v129 = *(this + 80);
      }

      *(this + 56) = v132;
      v143 = v132 + v129;
      *(this + 84) = v143;
      v144 = *(this + 240);
      v145 = *(this + 248) - v144;
      if ((v145 >> 2) < 1)
      {
        v146 = 0;
      }

      else
      {
        v146 = 0;
        v147 = (v145 >> 2) & 0x7FFFFFFF;
        do
        {
          v148 = v146 + v143;
          if (*v144)
          {
            ++v146;
            v149 = v148;
          }

          else
          {
            v149 = -1;
          }

          *v144++ = v149;
          --v147;
        }

        while (v147);
      }

      *(this + 60) = v146;
    }

    else
    {
      *(this + 84) = 0;
      v75 = *(this + 240);
      v76 = *(this + 248) - v75;
      if ((v76 >> 2) < 1)
      {
        v80 = 0;
        v77 = 0;
      }

      else
      {
        v77 = 0;
        v78 = (v76 >> 2) & 0x7FFFFFFF;
        do
        {
          if (*v75)
          {
            v79 = v77;
          }

          else
          {
            v79 = -1;
          }

          if (*v75)
          {
            ++v77;
          }

          *v75++ = v79;
          --v78;
        }

        while (v78);
        v80 = *(this + 84);
      }

      *(this + 60) = v77;
      v136 = v77 + v80;
      *(this + 76) = v136;
      v137 = *(this + 168);
      v138 = *(this + 176) - v137;
      if ((v138 >> 2) < 1)
      {
        v139 = 0;
      }

      else
      {
        v139 = 0;
        v140 = (v138 >> 2) & 0x7FFFFFFF;
        do
        {
          v141 = v139 + v136;
          if (*v137)
          {
            ++v139;
            v142 = v141;
          }

          else
          {
            v142 = -1;
          }

          *v137++ = v142;
          --v140;
        }

        while (v140);
        v136 = *(this + 76);
      }

      *(this + 52) = v139;
      v150 = v139 + v136;
      *(this + 80) = v150;
      v151 = *(this + 216);
      v152 = *(this + 224) - v151;
      if ((v152 >> 2) < 1)
      {
        v153 = 0;
      }

      else
      {
        v153 = 0;
        v154 = (v152 >> 2) & 0x7FFFFFFF;
        do
        {
          v155 = v153 + v150;
          if (*v151)
          {
            ++v153;
            v156 = v155;
          }

          else
          {
            v156 = -1;
          }

          *v151++ = v156;
          --v154;
        }

        while (v154);
      }

      *(this + 56) = v153;
    }
  }

  return this;
}