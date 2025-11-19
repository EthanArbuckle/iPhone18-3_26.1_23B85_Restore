void CPSDLayerInfo::CreateImageAtLayerWithSlice(CPSDLayerInfo *this, unsigned int a2, CPSDSliceResource *a3)
{
  if (*(this + 10) >= a2)
  {
    v12 = v3;
    v13 = v4;
    v11 = vrev64q_s32(*(a3 + 52));
    if (CPSDFile::IsTaggedWithICCProfile(*(this + 1)))
    {
      v7 = CPSDImageResources::LookupResourceWithResID((*(this + 1) + 192), 1039);
      v8 = (*(*v7 + 56))(v7);
      v9 = (*(*v7 + 48))(v7);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v10 = operator new();
    CPSDLayerSliceImage::CPSDLayerSliceImage(v10, (*(this + 3) + 488 * a2), *(*(this + 6) + 8 * a2), &v11, *(*(this + 1) + 154), *(*(this + 1) + 152), v9, v8);
  }
}

void CPSDLayerRecord::CPSDLayerRecord(CPSDLayerRecord *this)
{
  *this = &unk_1F00D42A8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = &unk_1F00D44E8;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 18) = &unk_1F00D4568;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 57) = &unk_1F00D51F0;
  *(this + 118) = 0;
  *(this + 60) = 0;
  bzero(this + 200, 0x100uLL);
}

void CPSDAdditionalLayerInfo::~CPSDAdditionalLayerInfo(CPSDAdditionalLayerInfo *this)
{
  *this = &unk_1F00D51F0;
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F00D51F0;
  v1 = *(this + 3);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDLayerBlendingRanges::~CPSDLayerBlendingRanges(CPSDLayerBlendingRanges *this)
{
  *this = &unk_1F00D4568;
  v1 = (this + 32);
  std::vector<CPSDChannelBlendingInfo>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F00D4568;
  v2 = (this + 32);
  std::vector<CPSDChannelBlendingInfo>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x193AC64C0](this, 0x10A1C40D16F0FACLL);
}

void CPSDLayerRecord::~CPSDLayerRecord(CPSDLayerRecord *this)
{
  *this = &unk_1F00D42A8;
  *(this + 57) = &unk_1F00D51F0;
  v2 = *(this + 60);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 18) = &unk_1F00D4568;
  v3 = (this + 176);
  std::vector<CPSDChannelBlendingInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<CPSDChannelBlendingInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  CPSDLayerRecord::~CPSDLayerRecord(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDLayerRecord::Dump(CPSDLayerRecord *this, __sFILE *a2)
{
  fprintf(a2, "{    Rect: { %d,%d,%d,%d } x %d Channels\n", *(this + 5), *(this + 4), *(this + 7), *(this + 6), *(this + 16));
  v4 = "No";
  if ((*(this + 74) & 2) == 0)
  {
    v4 = "Yes";
  }

  fprintf(a2, "     Visible: %s\t\t\t\t\tExtraDataSize: [%d bytes]\n", v4, *(this + 19));
  if (*(this + 16))
  {
    v5 = 0;
    v6 = (*(this + 5) + 20);
    v7 = *(this + 16);
    do
    {
      v8 = *v6;
      v6 += 6;
      v5 += v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 16))
  {
    v10 = 0;
    v11 = *(this + 16);
    v12 = (*(this + 5) + 20);
    do
    {
      v13 = *v12;
      v12 += 6;
      v10 += v13;
      --v11;
    }

    while (v11);
    v14 = v10;
  }

  else
  {
    v14 = 0.0;
  }

  v9 = 4 * *(this + 16) * (*(this + 7) - *(this + 5)) * (*(this + 6) - *(this + 4));
  fprintf(a2, "     Channels:   [%d bytes]\t\tUncompressed: [%d bytes]\tRatio: %f\n", v5, v9, (v14 / v9));
  v15 = *(this + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 6) - *(this + 5)) >> 3) == v15 && v15 != 0)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      fprintf(a2, "          Channel %d:\t%8d bytes, id=%d ", v18, *(*(this + 5) + v17 + 20), *(*(this + 5) + v17 + 16));
      v19 = *(*(this + 5) + v17 + 16);
      if (v19 <= 1)
      {
        break;
      }

      switch(v19)
      {
        case 2u:
          v20 = "(B)";
LABEL_29:
          v21 = 3;
          break;
        case 0xFFFEu:
          v20 = "(user supplied layer mask or vector mask)";
          v21 = 41;
          break;
        case 0xFFFFu:
          v20 = "(transparency mask)";
          v21 = 19;
          break;
        default:
          goto LABEL_30;
      }

LABEL_31:
      fwrite(v20, v21, 1uLL, a2);
      fputc(10, a2);
      ++v18;
      v17 += 24;
      if (v18 >= *(this + 16))
      {
        goto LABEL_32;
      }
    }

    if (*(*(this + 5) + v17 + 16))
    {
      if (v19 != 1)
      {
LABEL_30:
        v20 = "(real layer mask)";
        v21 = 17;
        goto LABEL_31;
      }

      v20 = "(G)";
    }

    else
    {
      v20 = "(R)";
    }

    goto LABEL_29;
  }

LABEL_32:
  v36 = 0;
  v35 = bswap32(*(this + 17));
  v22 = *(this + 72);
  if (FirstItemOfTypeID)
  {
    v24 = *(FirstItemOfTypeID + 56);
  }

  else
  {
    v24 = 255;
  }

  fprintf(a2, "     BlendModeKey: '%s'\tOpacity: %d\tFill Opacity: %d (out of 255)\n", &v35, v22, v24);
  CPSDLayerMaskData::Dump(this + 20, a2);
  if (v25)
  {
    (*(*v25 + 40))(v25, a2);
  }

  if (v26)
  {
    v27 = v26;
    fwrite("{ Section Divider Type: ", 0x18uLL, 1uLL, a2);
    v28 = *(v27 + 14);
    switch(v28)
    {
      case 3:
        v29 = "Bounding section divider, hidden in the UI";
        v30 = 42;
        break;
      case 2:
        v29 = "Closed folder";
        v30 = 15;
        break;
      case 1:
        v29 = "Open folder";
        v30 = 13;
        break;
      default:
        v29 = "Any other type of layer";
        v30 = 23;
        break;
    }

    fwrite(v29, v30, 1uLL, a2);
    fwrite(" }\n", 3uLL, 1uLL, a2);
  }

  if (v31)
  {
    (*(*v31 + 40))(v31, a2);
  }

  if (v32)
  {
    (*(*v32 + 40))(v32, a2);
  }

  if (v33)
  {
    (*(*v33 + 40))(v33, a2);
  }

  return fputc(125, a2);
}

_DWORD *CPSDLayerMaskData::Dump(_DWORD *this, __sFILE *a2)
{
  v2 = this[4];
  if (v2)
  {
    return fprintf(a2, "{ LayerMaskData: {%d,%d,%d,%d} size=%d }\n", this[5], this[6], this[7], this[8], v2);
  }

  return this;
}

uint64_t CPSDLayerRecord::Load(CPSDLayerRecord *this, uint64_t a2)
{
  v11 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v11);
  *(this + 4) = bswap32(*(this + 4));
  CPSDBaseComponent::ReadFile(a2, this + 20, 4uLL, &v11);
  *(this + 5) = bswap32(*(this + 5));
  CPSDBaseComponent::ReadFile(a2, this + 24, 4uLL, &v11);
  *(this + 6) = bswap32(*(this + 6));
  CPSDBaseComponent::ReadFile(a2, this + 28, 4uLL, &v11);
  *(this + 7) = bswap32(*(this + 7));
  CPSDBaseComponent::ReadFile(a2, this + 32, 2uLL, &v11);
  v4 = *(this + 16);
  v5 = __rev16(v4);
  *(this + 16) = v5;
  if (v4 && (std::vector<CPSDChannelLengthInfo>::resize(this + 5, v5), *(this + 16)))
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      result = (*(*(*(this + 5) + v6) + 16))(*(this + 5) + v6, a2);
      if (!result)
      {
        break;
      }

      ++v7;
      v6 += 24;
      if (v7 >= *(this + 16))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    CPSDBaseComponent::ReadFile(a2, this + 64, 4uLL, &v11);
    *(this + 16) = bswap32(*(this + 16));
    CPSDBaseComponent::ReadFile(a2, this + 68, 4uLL, &v11);
    *(this + 17) = bswap32(*(this + 17));
    CPSDBaseComponent::ReadFile(a2, this + 72, 1uLL, &v11);
    CPSDBaseComponent::ReadFile(a2, this + 73, 1uLL, &v11);
    CPSDBaseComponent::ReadFile(a2, this + 74, 1uLL, &v11);
    CPSDBaseComponent::ReadFile(a2, this + 75, 1uLL, &v11);
    CPSDBaseComponent::ReadFile(a2, this + 76, 4uLL, &v11);
    *(this + 19) = bswap32(*(this + 19));
    v9 = *(this + 19) + SetFilePointer(a2, 0, 0, 1);
    CPSDLayerMaskData::Load((this + 80), a2);
    CPSDLayerBlendingRanges::Load((this + 144), a2);
    LoadPascalStringAsCString(a2, &v11, this + 200, 4);
    v10 = SetFilePointer(a2, 0, 0, 1);
    if (v9 >= v10)
    {
      *(this + 118) = v9 - v10;
      CPSDAdditionalLayerInfo::Load((this + 456), a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CPSDLayerMaskData::Load(CPSDLayerMaskData *this, int a2)
{
  v6 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v6);
  v4 = *(this + 4);
  *(this + 4) = bswap32(v4);
  if (v4)
  {
    CPSDBaseComponent::ReadFile(a2, this + 20, 4uLL, &v6);
    *(this + 5) = bswap32(*(this + 5));
    CPSDBaseComponent::ReadFile(a2, this + 24, 4uLL, &v6);
    *(this + 6) = bswap32(*(this + 6));
    CPSDBaseComponent::ReadFile(a2, this + 28, 4uLL, &v6);
    *(this + 7) = bswap32(*(this + 7));
    CPSDBaseComponent::ReadFile(a2, this + 32, 4uLL, &v6);
    *(this + 8) = bswap32(*(this + 8));
    CPSDBaseComponent::ReadFile(a2, this + 36, 1uLL, &v6);
    CPSDBaseComponent::ReadFile(a2, this + 37, 1uLL, &v6);
    if (*(this + 4) == 20)
    {
      CPSDBaseComponent::ReadFile(a2, this + 38, 2uLL, &v6);
      *(this + 19) = bswap32(*(this + 19)) >> 16;
    }

    else
    {
      CPSDBaseComponent::ReadFile(a2, this + 57, 1uLL, &v6);
      CPSDBaseComponent::ReadFile(a2, this + 56, 1uLL, &v6);
      CPSDBaseComponent::ReadFile(a2, this + 40, 4uLL, &v6);
      *(this + 10) = bswap32(*(this + 10));
      CPSDBaseComponent::ReadFile(a2, this + 44, 4uLL, &v6);
      *(this + 11) = bswap32(*(this + 11));
      CPSDBaseComponent::ReadFile(a2, this + 48, 4uLL, &v6);
      *(this + 12) = bswap32(*(this + 12));
      CPSDBaseComponent::ReadFile(a2, this + 52, 4uLL, &v6);
      *(this + 13) = bswap32(*(this + 13));
    }
  }

  return 1;
}

uint64_t CPSDLayerBlendingRanges::Load(CPSDLayerBlendingRanges *this, uint64_t a2)
{
  v6 = *(this + 4);
  v4 = *(this + 5);
  v5 = (this + 32);
  if (v4 != v6)
  {
    v7 = v4 - 3;
    v8 = v4 - 3;
    v9 = v4 - 3;
    do
    {
      v10 = *v9;
      v9 -= 3;
      (*v10)(v8);
      v7 -= 3;
      v11 = v8 == v6;
      v8 = v9;
    }

    while (!v11);
  }

  v22 = 0;
  *(this + 5) = v6;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v22);
  *(this + 4) = bswap32(*(this + 4));
  v12 = SetFilePointer(a2, 0, 0, 1);
  if (*(this + 4) < 8u || (CPSDBaseComponent::ReadFile(a2, this + 20, 4uLL, &v22), *(this + 5) = bswap32(*(this + 5)), CPSDBaseComponent::ReadFile(a2, this + 24, 4uLL, &v22), *(this + 6) = bswap32(*(this + 6)), v13 = *(this + 4) - 8, v13 < 8))
  {
LABEL_13:
    v18 = 1;
    v19 = SetFilePointer(a2, 0, 0, 1);
    v20 = (*(this + 4) + v12);
    if (v19 != v20)
    {
      SetFilePointer(a2, v20, 0, 0);
    }
  }

  else
  {
    v14 = v13 >> 3;
    std::vector<CPSDChannelBlendingInfo>::resize(v5, v13 >> 3);
    v15 = 0;
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v17 = 24 * v16;
    while ((*(*(*v5 + v15) + 16))(*v5 + v15, a2))
    {
      v15 += 24;
      if (v17 == v15)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return v18;
}

uint64_t CPSDLayerRecord::Save(CPSDLayerRecord *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  (*(*a2 + 80))(a2, *(this + 5));
  (*(*a2 + 80))(a2, *(this + 6));
  (*(*a2 + 80))(a2, *(this + 7));
  (*(*a2 + 72))(a2, *(this + 16));
  v4 = *(this + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 6) - *(this + 5)) >> 3) == v4 && v4 != 0)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      (*(*(*(this + 5) + v6) + 24))(*(this + 5) + v6, a2);
      ++v7;
      v6 += 24;
    }

    while (v7 < *(this + 16));
  }

  (*(*a2 + 80))(a2, *(this + 16));
  (*(*a2 + 80))(a2, *(this + 17));
  (*(*a2 + 64))(a2, *(this + 72));
  (*(*a2 + 64))(a2, *(this + 73));
  (*(*a2 + 64))(a2, *(this + 74));
  (*(*a2 + 64))(a2, *(this + 75));
  (*(*a2 + 80))(a2, *(this + 19));
  CPSDLayerMaskData::Save((this + 80), a2);
  CPSDLayerBlendingRanges::Save((this + 144), a2);
  result = (*(*a2 + 32))(a2, this + 200, 4);
  for (i = *(this + 60); i; i = *(i + 6))
  {
    result = CPSDResourceItem::SaveItem(i, a2);
  }

  return result;
}

uint64_t CPSDLayerRecord::SeekPast(CPSDLayerRecord *this, int a2)
{
  if (*(this + 16))
  {
    v4 = 0;
    v5 = 20;
    do
    {
      if (SetFilePointer(a2, *(*(this + 5) + v5), 0, 1) == -1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        CStdException::CStdException(exception, 3238395925);
      }

      ++v4;
      v5 += 24;
    }

    while (v4 < *(this + 16));
  }

  return 1;
}

void *CPSDLayerRecord::GetUnicodeLayerName(CPSDLayerRecord *this, unsigned int *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 14);
    }

    return result[8];
  }

  return result;
}

BOOL CPSDLayerRecord::GetTransparencyMask(CPSDLayerRecord *this)
{
  v1 = *(this + 16);
  if (!*(this + 16))
  {
    return 0;
  }

  v2 = *(this + 5);
  if (*(v2 + 16) == -1)
  {
    return 1;
  }

  v3 = (v2 + 40);
  v4 = 1;
  do
  {
    v5 = v4;
    if (v1 == v4)
    {
      break;
    }

    v6 = *v3;
    v3 += 12;
    ++v4;
  }

  while (v6 != -1);
  return v5 < v1;
}

uint64_t CPSDImageLoad::DeAllocateChannelBuffers(CPSDImageLoad *this)
{
  if (*(this + 10))
  {
    if (!*(this + 22))
    {
      goto LABEL_6;
    }

    v2 = 0;
    do
    {
      free(*(*(this + 10) + 8 * v2++));
    }

    while (v2 < *(this + 22));
    if (*(this + 10))
    {
LABEL_6:
      MEMORY[0x193AC64A0]();
    }

    *(this + 10) = 0;
  }

  return 1;
}

uint64_t CPSDImageLoad::Initialize(CPSDImageLoad *this, int a2, int a3, __int16 a4, __int16 a5, __int16 a6, unsigned __int8 *a7)
{
  *(this + 9) = a3;
  *(this + 10) = a2;
  *(this + 22) = a4;
  *(this + 28) = a5;
  *(this + 29) = a6;
  *(this + 32) = 1;
  *(this + 8) = a7;
  return 1;
}

uint64_t CPSDImageLoad::CreatePlanarBitmap(CPSDImageLoad *this)
{
  v2 = *(this + 28);
  v3 = *(this + 10);
  v4 = *(this + 12);
  if (v4)
  {
    free(v4);
    *(this + 12) = 0;
  }

  if (*(this + 22))
  {
    v5 = v2 >> 3;
    v6 = (-(v3 * (v2 >> 3)) & 3) + v3 * (v2 >> 3);
    v7 = malloc_type_malloc(8 * v5 * *(this + 22), 0x10040436913F5uLL);
    v8 = v6 * *(this + 9);
    *(this + 6) = v8;
    if (*(this + 22) >= 4u && *(this + 29) == 3)
    {
      if (*(this + 104))
      {
        v9 = *(this + 10);
        v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
        *v7 = v10;
        memcpy(v10, *(v9 + 24), *(this + 6));
        v11 = *(this + 22);
        if (*(this + 22))
        {
          v12 = 0;
          v13 = *(this + 10);
          v14 = v7 + 1;
          do
          {
            if (v12 != 3)
            {
              v15 = malloc_type_malloc(*(this + 6), 0x100004077774924uLL);
              *v14++ = v15;
              memcpy(v15, *(v13 + 8 * v12), *(this + 6));
              v11 = *(this + 22);
            }

            ++v12;
          }

          while (v12 < v11);
        }

        goto LABEL_16;
      }
    }

    else if (!*(this + 22))
    {
LABEL_16:
      *(this + 12) = v7;
      return 1;
    }

    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(*(this + 6), 0x100004077774924uLL);
      v7[v16] = v17;
      memcpy(v17, *(*(this + 10) + 8 * v16++), *(this + 6));
    }

    while (v16 < *(this + 22));
    goto LABEL_16;
  }

  return 1;
}

uint64_t CPSDImageLoad::AllocateChannelBuffers(CPSDImageLoad *this, int a2)
{
  *(this + 10) = operator new[]();
  if (*(this + 22))
  {
    v4 = 0;
    v5 = 8 * *(this + 22);
    do
    {
      *(*(this + 10) + v4) = 0;
      v4 += 8;
    }

    while (v5 != v4);
    v6 = 0;
    do
    {
      *(*(this + 10) + 8 * v6) = malloc_type_malloc(*(this + 9) * ((-a2 & 3u) + a2), 0x100004077774924uLL);
      if (!*(*(this + 10) + 8 * v6))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        CStdException::CStdException(exception, 3238395909);
      }

      ++v6;
    }

    while (v6 < *(this + 22));
  }

  return 1;
}

uint64_t CPSDImageLoad::FillLayerImageChannelBuffers(CPSDImageLoad *this, unsigned int a2)
{
  if (!*(this + 22))
  {
    return 1;
  }

  v4 = 0;
  v5 = *(this + 7);
  for (i = 20; ; i += 24)
  {
    v7 = *(*(this + 9) + i);
    if (v7 < 5)
    {
      bzero(*(*(this + 10) + 8 * v4), *(this + 9) * a2);
      goto LABEL_9;
    }

    v8 = *(this + 9) * a2;
    if (*(this + 44) == 1)
    {
      ChannelByteCounts = CPSDImageLoad::GetChannelByteCounts(this);
      if (CPSDImageLoad::UncompressChannelImageData(this, ChannelByteCounts, *(*(this + 10) + 8 * v4), a2) != v8)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        CStdException::CStdException(exception, 3238395925);
      }

      goto LABEL_9;
    }

    if (*(this + 44))
    {
      break;
    }

    memcpy(*(*(this + 10) + 8 * v4), (*(this + 2) + v5), *(this + 9) * a2);
    *(this + 7) += v8;
LABEL_9:
    v10 = *(this + 7);
    if (v10 != v7 + v5)
    {
      *(this + 7) = v7 + v5;
      v10 = v7 + v5;
    }

    ++v4;
    v5 = v10;
    if (v4 >= *(this + 22))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CPSDImageLoad::FillCompositeImageChannelBuffers(CPSDImageLoad *this, unsigned int a2)
{
  v3 = *(this + 9) * a2;
  if (*(this + 44) == 1)
  {
    v7 = operator new[]();
    v8 = v7;
    if (*(this + 22))
    {
      bzero(v7, 8 * *(this + 22));
      v9 = 0;
      do
      {
        v8[v9++] = CPSDImageLoad::GetChannelByteCounts(this);
      }

      while (v9 < *(this + 22));
      if (*(this + 22))
      {
        v10 = 0;
        do
        {
          if (CPSDImageLoad::UncompressChannelImageData(this, v8[v10], *(*(this + 10) + 8 * v10), a2) != v3)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            CStdException::CStdException(exception, 3238395925);
          }

          ++v10;
        }

        while (v10 < *(this + 22));
      }
    }

    MEMORY[0x193AC64A0](v8, 0x10C80436913F5);
    return 1;
  }

  if (!*(this + 44))
  {
    if (*(this + 22))
    {
      v4 = 0;
      v5 = *(this + 7);
      do
      {
        memcpy(*(*(this + 10) + 8 * v4), (*(this + 2) + v5), v3);
        v5 = *(this + 7) + v3;
        *(this + 7) = v5;
        ++v4;
      }

      while (v4 < *(this + 22));
    }

    return 1;
  }

  return 0;
}

void sub_18DF9CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF9CD6CLL);
}

void CPSDFile::CompositeImageData(void **this)
{
  if (*(this + 392))
  {
    bzero(this[2], 3 * *(this + 37) * *(this + 36) * (*(this + 76) >> 3));
    v3 = this[35] - this[34];
    if (v3)
    {
      v4 = 0;
      v5 = 0x4FBCDA3AC10C9715 * (v3 >> 3);
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      do
      {
        v7 = *(this + 44);
        if (*(this + 44))
        {
          printf("Error - Can't generate composite data, unimplemented compression mode.");
        }

        else
        {
          v8 = *(this[37] + v4);
          v9 = *(*(v8 + 32) + 40);
          for (i = 1; i != 4; ++i)
          {
            v11 = *(v8 + 32) + 56 * i;
            v12 = *(v11 + 48);
            if (v12)
            {
              v13 = *(v11 + 40);
              v14 = v12 * v7;
              v15 = v9;
              do
              {
                v16 = this[2];
                v17 = *v13++;
                v18 = v17;
                v19 = *v15++;
                v20 = v19 / 255.0;
                LOBYTE(v2) = v16[v14];
                v2 = LODWORD(v2);
                v16[v14++] = (((1.0 - v20) * v2) + (v18 * v20));
                --v12;
              }

              while (v12);
            }

            ++v7;
          }
        }

        ++v4;
      }

      while (v4 != v6);
    }

    *(this + 392) = 0;
  }
}

void *CPSDImageLoad::GetChannelByteCounts(CPSDImageLoad *this)
{
  v2 = operator new[]();
  v3 = *(this + 9);
  v4 = *(this + 7);
  memcpy(v2, (*(this + 2) + v4), 2 * (v3 & 0x7FFF));
  *(this + 7) = v4 + 2 * (v3 & 0x7FFF);
  if (v3)
  {
    v5 = v2;
    do
    {
      *v5 = bswap32(*v5) >> 16;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t CPSDImageLoad::UncompressChannelImageData(CPSDImageLoad *this, unsigned __int16 *a2, unsigned __int8 *__b, unsigned int a4)
{
  if (!a2)
  {
    CPSDImageLoad::UncompressChannelImageData();
  }

  v4 = __b;
  if (!__b)
  {
    CPSDImageLoad::UncompressChannelImageData();
  }

  v8 = *(this + 9);
  if (v8)
  {
    v9 = 0;
    v10 = v8 * a4;
    do
    {
      if (CPSDImageLoad::UncompressChannelScanLine(this, v4, a2[v9]) != a4)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        CStdException::CStdException(exception, 3238395925);
      }

      v10 -= a4;
      v4 += a4;
      ++v9;
    }

    while (v9 < *(this + 9));
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x193AC64A0](a2, 0x1000C80BDFB0063);
  return *(this + 9) * a4 - v10;
}

void sub_18DF9D0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CStdException::~CStdException(&a9);
  __cxa_end_catch();
  JUMPOUT(0x18DF9D0F0);
}

uint64_t CPSDImageLoad::UncompressChannelScanLine(CPSDImageLoad *this, unsigned __int8 *__b, int a3)
{
  if (a3)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(this + 2);
      v7 = *(this + 7);
      v8 = v7 + 1;
      *(this + 7) = v7 + 1;
      v9 = *(v6 + v7);
      v10 = a3 - 1;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (v9 != -128)
      {
        LOWORD(v11) = 1 - v9;
        *(this + 7) = v7 + 2;
        v10 = a3 - 2;
        v12 = (1 - v9);
        memset(__b, *(v6 + v8), v12);
        goto LABEL_7;
      }

LABEL_8:
      a3 = v10;
      if (!v10)
      {
        return v5;
      }
    }

    v11 = v9 + 1;
    v12 = (v9 + 1);
    memcpy(__b, (v6 + v8), v12);
    *(this + 7) += v11;
    v10 -= v11;
LABEL_7:
    v5 += v11;
    __b += v12;
    goto LABEL_8;
  }

  return 0;
}

uint64_t CPSDChannelImage::DeAllocateChannelBuffers(CPSDChannelImage *this)
{
  if (*(this + 6))
  {
    if (!*(this + 12))
    {
      goto LABEL_6;
    }

    v2 = 0;
    do
    {
      free(*(*(this + 6) + 8 * v2++));
    }

    while (v2 < *(this + 12));
    if (*(this + 6))
    {
LABEL_6:
      MEMORY[0x193AC64A0]();
    }

    *(this + 6) = 0;
  }

  return 1;
}

uint64_t CPSDChannelImage::AllocateChannelBuffers(CPSDChannelImage *this)
{
  v2 = operator new[]();
  *(this + 6) = v2;
  v3 = *(this + 12);
  bzero(v2, 8 * v3);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = *(this + 3) * *(this + 5);
      if (v5 <= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = v5;
      }

      *(*(this + 6) + 8 * v4++) = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
    }

    while (v4 < *(this + 12));
  }

  return 1;
}

CPSDMeshedARGBStream *CPSDChannelImage::CreateChannelStream(CPSDChannelImage *this)
{
  CPSDChannelImage::DeAllocateChannelBuffers(this);
  (*(*this + 56))(this);
  (*(*this + 64))(this);
  v2 = operator new();
  CPSDMeshedARGBStream::CPSDMeshedARGBStream(v2, this);
  return v2;
}

CPSDAlphaChannelStream *CPSDChannelImage::CreateAlphaStream(CPSDChannelImage *this, unsigned int a2)
{
  if (!*(this + 6))
  {
    CPSDChannelImage::DeAllocateChannelBuffers(this);
    (*(*this + 56))(this);
    (*(*this + 64))(this);
  }

  v4 = operator new();
  CPSDAlphaChannelStream::CPSDAlphaChannelStream(v4, this, a2);
  return v4;
}

void CPSDLayerImage::CPSDLayerImage(CPSDLayerImage *this, int32x2_t *a2, CPSDLayerChannelGroup *a3, __int16 a4, int a5, int a6, unsigned __int8 *a7)
{
  v7 = a2[4].u16[0];
  if (a2[4].i16[0])
  {
    v8 = a2[5];
    if (*(*&v8 + 16) == -1)
    {
      v12 = 1;
    }

    else
    {
      v9 = 0;
      v10 = (*&v8 + 40);
      while (v7 - 1 != v9)
      {
        v11 = *v10;
        v10 += 12;
        ++v9;
        if (v11 == -1)
        {
          goto LABEL_10;
        }
      }

      v9 = a2[4].u16[0];
LABEL_10:
      v12 = v9 < v7;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = vsub_s32(a2[3], a2[2]);
  *(this + 1) = vrev64_s32(v13);
  *(this + 9) = a5;
  *(this + 5) = (v13.i32[1] * a5) >> 3;
  *(this + 12) = v7;
  *(this + 13) = a4;
  *(this + 28) = v12;
  *(this + 8) = a6;
  *(this + 5) = a7;
  *(this + 6) = 0;
  *this = &unk_1F00D4390;
  *(this + 7) = a2;
  *(this + 8) = a3;
  v14 = 0;
  if (v7)
  {
    v15 = (*&a2[5] + 16);
    v16 = v7;
    do
    {
      v17 = *v15;
      v15 += 12;
      if (v17 < -1)
      {
        ++v14;
      }

      --v16;
    }

    while (v16);
  }

  *(this + 8) = (v7 - v14) * a5;
}

uint64_t CPSDLayerImage::GetComponentChannels(CPSDLayerImage *this)
{
  if (*(this + 12))
  {
    v1 = 0;
    v2 = (*(*(this + 7) + 40) + 16);
    v3 = *(this + 12);
    do
    {
      v4 = *v2;
      v2 += 12;
      if (v4 < -1)
      {
        ++v1;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v1 = 0;
  }

  return (*(this + 12) - v1);
}

uint64_t CPSDLayerImage::AllocateChannelBuffers(CPSDLayerImage *this)
{
  v2 = operator new[]();
  *(this + 6) = v2;
  v3 = *(this + 12);
  bzero(v2, 8 * v3);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = ((*(*this + 40))(this, v4) * *(this + 9)) >> 3;
      if ((*(*this + 48))(this, v4) * v5 < 5)
      {
        v6 = 4;
      }

      else
      {
        v6 = (*(*this + 48))(this, v4) * v5;
      }

      *(*(this + 6) + 8 * v4++) = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
    }

    while (v4 < *(this + 12));
  }

  return 1;
}

uint64_t CPSDLayerImage::FillChannelBuffers(CPSDLayerImage *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = ((*(*this + 40))(this, v3) * *(this + 9)) >> 3;
      v5 = *(*(this + 8) + 32);
      v6 = *(*(this + 6) + 8 * v3);
      v7 = (*(*this + 48))(this, v3);
      CPSDChannelData::UnpackImageInPosition((v5 + v2), v6, v4, v7, 0, 0, v4, v7, 0, 0);
      ++v3;
      v2 += 56;
    }

    while (v3 < *(this + 12));
  }

  return 1;
}

uint64_t CPSDLayerImage::GetChannelImageWidth(CPSDLayerImage *this, unsigned int a2)
{
  v2 = *(this + 7);
  v3 = *(*(v2 + 40) + 24 * a2 + 16);
  if (v3 == 65533)
  {
    v4 = *(v2 + 132);
    v5 = *(v2 + 124);
  }

  else if (v3 == 65534)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 104);
  }

  else
  {
    v4 = *(v2 + 28);
    v5 = *(v2 + 20);
  }

  return (v4 - v5);
}

uint64_t CPSDLayerImage::GetChannelImageHeight(CPSDLayerImage *this, unsigned int a2)
{
  v2 = *(this + 7);
  v3 = *(*(v2 + 40) + 24 * a2 + 16);
  if (v3 == 65533)
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 120);
  }

  else if (v3 == 65534)
  {
    v4 = *(v2 + 108);
    v5 = *(v2 + 100);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 16);
  }

  return (v4 - v5);
}

void CPSDLayerSliceImage::CPSDLayerSliceImage(CPSDLayerSliceImage *this, int32x2_t *a2, CPSDLayerChannelGroup *a3, PSDRect *a4, __int16 a5, int a6, int a7, unsigned __int8 *a8)
{
  v8 = *(a4 + 2);
  v9 = *(a4 + 3);
  v10 = *a4;
  v11 = a2[4].u16[0];
  if (a2[4].i16[0])
  {
    v12 = a2[5];
    if (*(*&v12 + 16) == -1)
    {
      v16 = 1;
    }

    else
    {
      v13 = 0;
      v14 = (*&v12 + 40);
      while (v11 - 1 != v13)
      {
        v15 = *v14;
        v14 += 12;
        ++v13;
        if (v15 == -1)
        {
          goto LABEL_10;
        }
      }

      v13 = a2[4].u16[0];
LABEL_10:
      v16 = v13 < v11;
    }
  }

  else
  {
    v16 = 0;
  }

  *(this + 2) = v9 - v10.i32[1];
  *(this + 3) = v8 - v10.i32[0];
  *(this + 9) = a6;
  *(this + 5) = ((v9 - v10.i32[1]) * a6) >> 3;
  *(this + 12) = v11;
  *(this + 13) = a5;
  *(this + 28) = v16;
  *(this + 8) = a7;
  *(this + 5) = a8;
  *(this + 6) = 0;
  *this = &unk_1F00D43F0;
  *(this + 7) = a2;
  *(this + 8) = a3;
  v17 = 0;
  if (v11)
  {
    v18 = (*&a2[5] + 16);
    v19 = v11;
    do
    {
      v20 = *v18;
      v18 += 12;
      if (v20 < -1)
      {
        ++v17;
      }

      --v19;
    }

    while (v19);
  }

  *(this + 8) = (v11 - v17) * a6;
  v22 = a2[3].i32[0];
  v21 = a2[3].i32[1];
  v23 = vmax_s32(v10, 0);
  *a4 = v23;
  if (v9 >= v21)
  {
    v9 = v21;
  }

  if (v8 >= v22)
  {
    v8 = v22;
  }

  v24 = a2[2];
  v25 = vrev64_s32(vmax_s32(vsub_s32(v23, v24), 0));
  v26 = vmax_s32(v23, v24);
  if (v26.i32[1] > v9)
  {
    v9 = v26.i32[1];
  }

  v27 = vsub_s32(v26, v23);
  if (v26.i32[0] > v8)
  {
    v8 = v26.i32[0];
  }

  *(this + 9) = v25;
  *(this + 10) = vrev64_s32(v27);
  *(this + 22) = ((v9 - v26.i32[1]) * a6) >> 3;
  *(this + 23) = v8 - v26.i32[0];
}

uint64_t CPSDLayerSliceImage::GetComponentChannels(CPSDLayerSliceImage *this)
{
  if (*(this + 12))
  {
    v1 = 0;
    v2 = (*(*(this + 7) + 40) + 16);
    v3 = *(this + 12);
    do
    {
      v4 = *v2;
      v2 += 12;
      if (v4 < -1)
      {
        ++v1;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v1 = 0;
  }

  return (*(this + 12) - v1);
}

uint64_t CPSDLayerSliceImage::FillChannelBuffers(CPSDLayerSliceImage *this)
{
  if (*(this + 12))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      CPSDChannelData::UnpackImageInPosition((*(*(this + 8) + 32) + v2), *(*(this + 6) + 8 * v3++), *(this + 5), *(this + 3), *(this + 18), *(this + 19), *(this + 22), *(this + 23), *(this + 20), *(this + 21));
      v2 += 56;
    }

    while (v3 < *(this + 12));
  }

  return 1;
}

void CPSDCompositeImage::CPSDCompositeImage(CPSDCompositeImage *this, CPSDHeader *a2, unsigned __int8 **a3, int a4, int a5, unsigned __int8 *a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 9);
  v8 = *(a2 + 21);
  v9 = *(a2 + 14);
  v10 = *(a2 + 20);
  *(this + 2) = v6;
  *(this + 3) = v7;
  *(this + 9) = v10;
  *(this + 5) = (v6 * v10) >> 3;
  *(this + 12) = v9;
  *(this + 13) = v8;
  *(this + 28) = a4;
  *(this + 8) = a5;
  *(this + 5) = a6;
  *(this + 6) = a3;
  *this = &unk_1F00D4450;
  if (v9 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (v8 < v9)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v9;
  }

  if (a4)
  {
    v11 = v12;
  }

  if (((1 << v8) & 0x1A) != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v8 > 4)
  {
    v13 = v9;
  }

  *(this + 8) = v13 * v10;
}

uint64_t CPSDCompositeImage::GetComponentChannels(CPSDCompositeImage *this)
{
  v1 = *(this + 13);
  if (v1 > 4 || ((1 << v1) & 0x1A) == 0)
  {
    return *(this + 12);
  }

  else
  {
    v3 = *(this + 12);
    if (v3 >= v1)
    {
      v4 = *(this + 13);
    }

    else
    {
      v4 = *(this + 12);
    }

    if (v1 < v3)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = *(this + 12);
    }

    if (!*(this + 28))
    {
      return v4;
    }
  }

  return v5;
}

CPSDMeshedARGBStream *CPSDCompositeImage::CreateChannelStream(CPSDCompositeImage *this)
{
  v2 = operator new();
  CPSDMeshedARGBStream::CPSDMeshedARGBStream(v2, this);
  return v2;
}

uint64_t CPSDChannelLengthInfo::Load(CPSDChannelLengthInfo *this, int a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 2uLL, &v5);
  *(this + 8) = bswap32(*(this + 8)) >> 16;
  CPSDBaseComponent::ReadFile(a2, this + 20, 4uLL, &v5);
  *(this + 5) = bswap32(*(this + 5));
  return 1;
}

uint64_t CPSDChannelLengthInfo::Save(CPSDChannelLengthInfo *this, File *a2)
{
  (*(*a2 + 72))(a2, *(this + 8));
  v4 = *(this + 5);
  v5 = *(*a2 + 80);

  return v5(a2, v4);
}

uint64_t CPSDLayerMaskData::GetMaskCount(CPSDLayerMaskData *this)
{
  v1 = *(this + 4);
  if (v1 == 36)
  {
    return 2;
  }

  else
  {
    return v1 == 20;
  }
}

uint64_t CPSDVectorMaskData::Load(CPSDVectorMaskData *this, uint64_t a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 104, 4uLL, &v5);
  *(this + 26) = bswap32(*(this + 26));
  CPSDBaseComponent::ReadFile(a2, this + 108, 4uLL, &v5);
  *(this + 27) = bswap32(*(this + 27));
  *(this + 18) = *(this + 4) & ~(*(this + 4) >> 31);
  CPSDPathsResourceItem::Load((this + 56), a2);
  return 1;
}

uint64_t CPSDVectorMaskData::Save(CPSDVectorMaskData *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  (*(*a2 + 80))(a2, *(this + 26));
  result = (*(*a2 + 80))(a2, *(this + 27));
  for (i = *(this + 10); i; i = i[3])
  {
    result = (*(*i + 24))(i, a2);
  }

  return result;
}

size_t CPSDVectorMaskData::Dump(CPSDVectorMaskData *this, __sFILE *a2)
{
  fprintf(a2, "{ VectorMaskData: version=%d", *(this + 26));
  v4 = *(this + 27);
  if (v4)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if ((v4 & 2) != 0)
  {
    v6 = "NO";
  }

  else
  {
    v6 = "YES";
  }

  if ((v4 & 3) != 0)
  {
    v7 = "NO";
  }

  else
  {
    v7 = "YES";
  }

  fprintf(a2, "  <isInverted: %s >  <isLinked: %s >  <isEnabled: %s >\n", v5, v6, v7);
  CPSDPathsResourceItem::Dump((this + 56), a2, 1u);

  return fwrite("} // End VectorMaskData\n", 0x18uLL, 1uLL, a2);
}

void *std::vector<CPSDChannelBlendingInfo>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<CPSDChannelBlendingInfo>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 24 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 24;
      v9 = (v3 - 24);
      v10 = (v3 - 24);
      do
      {
        v11 = *v10;
        v10 -= 3;
        result = (*v11)(v9);
        v8 -= 24;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t CPSDChannelBlendingInfo::Load(CPSDChannelBlendingInfo *this, int a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 16, 4uLL, &v5);
  *(this + 4) = bswap32(*(this + 4));
  CPSDBaseComponent::ReadFile(a2, this + 20, 4uLL, &v5);
  *(this + 5) = bswap32(*(this + 5));
  return 1;
}

uint64_t CPSDChannelBlendingInfo::Save(CPSDChannelBlendingInfo *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 4));
  v4 = *(this + 5);
  v5 = *(*a2 + 80);

  return v5(a2, v4);
}

uint64_t CPSDActionBaseComponent::Dump(CPSDActionBaseComponent *this, __sFILE *a2)
{
  return fputs("Dump: ActionBaseComponent\n", a2);
}

{
  return (*(*this + 48))(this, a2, 0);
}

void CPSDOSTypeList::~CPSDOSTypeList(CPSDOSTypeList *this)
{
  *this = &unk_1F00D45E8;
  v4 = this + 64;
  v2 = *(this + 8);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v2[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v2 = *(this + 8);
        v3 = *(this + 9);
      }

      v5 = ++v6;
    }

    while (v6 < ((v3 - v2) >> 3));
  }

  *(this + 14) = 0;
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

{
  CPSDOSTypeList::~CPSDOSTypeList(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDOSTypeList::Load(CPSDOSTypeList *this, uint64_t a2)
{
  v17 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v17);
  v4 = bswap32(*(this + 14));
  *(this + 14) = v4;
  std::vector<CPSDLayerChannelGroup *>::resize(this + 8, v4);
  if (*(this + 14))
  {
    v5 = 0;
    do
    {
      CPSDBaseComponent::ReadFile(a2, this + 60, 4uLL, &v17);
      v12 = 0;
      v13 = bswap32(*(this + 15));
      *(this + 15) = v13;
      if (v13 > 1651470187)
      {
        if (v13 > 1701737836)
        {
          if (v13 == 1701737837)
          {
            v12 = operator new();
            *(v12 + 16) = 0;
            *(v12 + 24) = 0u;
            *(v12 + 40) = 0u;
            *v12 = &unk_1F00D5390;
            *(v12 + 56) = 0;
            *(v12 + 64) = 0;
            *(v12 + 80) = 0;
            *(v12 + 88) = 0;
          }

          else if (v13 == 1819242087)
          {
            v12 = operator new();
            *(v12 + 16) = 0;
            *(v12 + 24) = 0u;
            *(v12 + 40) = 0u;
            *v12 = &unk_1F00D5300;
            *(v12 + 56) = 0;
          }
        }

        else if (v13 == 1651470188)
        {
          v12 = operator new();
          *(v12 + 16) = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *v12 = &unk_1F00D4630;
          *(v12 + 56) = 0;
        }

        else if (v13 == 1685026146)
        {
          v12 = operator new();
          *(v12 + 16) = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *v12 = &unk_1F00D5348;
          *(v12 + 56) = 0;
        }
      }

      else if (v13 > 1433302085)
      {
        if (v13 == 1433302086)
        {
          v12 = operator new();
          *(v12 + 16) = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *v12 = &unk_1F00D4678;
          *(v12 + 56) = 0;
          *(v12 + 64) = 0;
        }

        else if (v13 == 1449938035)
        {
          v12 = operator new();
          *(v12 + 16) = 0;
          *(v12 + 24) = 0u;
          *(v12 + 40) = 0u;
          *v12 = &unk_1F00D45E8;
          *(v12 + 56) = 0u;
          *(v12 + 72) = 0u;
        }
      }

      else if (v13 == 1331849827)
      {
        v12 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v12);
      }

      else if (v13 == 1413830740)
      {
        v12 = operator new();
        CPSDOSTypeText::CPSDOSTypeText(v12);
      }

      *(*(this + 8) + 8 * v5) = v12;
      v14 = *(*(this + 8) + 8 * v5);
      if (v14)
      {
        (*(*v14 + 16))(v14, a2);
      }

      else
      {
        v16 = bswap32(*(this + 15));
        _CUILog(1, "Error parsing gradient fill info: The OSType %.4s cannot be parsed.\n", v6, v7, v8, v9, v10, v11, &v16);
      }

      ++v5;
    }

    while (v5 < *(this + 14));
  }

  return 1;
}

uint64_t CPSDOSTypeList::Save(CPSDOSTypeList *this, File *a2)
{
  result = (*(*a2 + 80))(a2, *(this + 14));
  if (*(this + 14))
  {
    v5 = 0;
    do
    {
      (*(*a2 + 80))(a2, *(this + 15));
      result = *(*(this + 8) + 8 * v5);
      if (result)
      {
        result = (*(*result + 24))(result, a2);
      }

      ++v5;
    }

    while (v5 < *(this + 14));
  }

  return result;
}

uint64_t CPSDOSTypeList::Dump(CPSDOSTypeList *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      *(v6 + v8++) = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "List { Number of Items = %d:\n", *(this + 14));
  if (*(this + 14))
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 8) + 8 * v9);
      (*(*v10 + 48))(v10, a2, a3 + 2);
      ++v9;
    }

    while (*(this + 14) > v9);
  }

  return fprintf(a2, "%s} // End of List\n", v7);
}

uint64_t CPSDOSTypeInteger::Load(CPSDOSTypeInteger *this, int a2)
{
  v4 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v4);
  *(this + 14) = bswap32(*(this + 14));
  return 1;
}

uint64_t CPSDOSTypeDouble::Load(CPSDOSTypeDouble *this, int a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, &v4, 8uLL, &v5);
  *(this + 7) = bswap64(v4);
  return 1;
}

uint64_t CPSDOSTypeBoolean::Load(CPSDOSTypeBoolean *this, int a2)
{
  v3 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 1uLL, &v3);
  return 1;
}

uint64_t CPSDOSTypeUnitFloat::Load(CPSDOSTypeUnitFloat *this, int a2)
{
  v6 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v6);
  *(this + 14) = bswap32(*(this + 14));
  CPSDBaseComponent::ReadFile(a2, &v5, 8uLL, &v6);
  *(this + 8) = bswap64(v5);
  return 1;
}

uint64_t CPSDOSTypeUnitFloat::Save(CPSDOSTypeUnitFloat *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 14));
  v4.n128_u64[0] = *(this + 8);
  v5 = *(*a2 + 88);

  return v5(a2, v4);
}

void CPSDOSTypeText::~CPSDOSTypeText(CPSDOSTypeText *this)
{
  *this = &unk_1F00D46C0;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x1000C80BDFB0063);
    *(this + 8) = 0;
  }

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

{
  CPSDOSTypeText::~CPSDOSTypeText(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDOSTypeText::Save(CPSDOSTypeText *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 14));
  v4 = *(this + 8);
  v5 = *(this + 14);
  v6 = *(*a2 + 40);

  return v6(a2, v4, v5);
}

uint64_t CPSDOSTypeEnumerated::Load(CPSDOSTypeEnumerated *this, int a2)
{
  v9 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v9);
  v4 = *(this + 14);
  *(this + 14) = bswap32(v4);
  if (v4)
  {
    v5 = operator new[]();
    *(this + 9) = v5;
    CPSDBaseComponent::ReadFile(a2, v5, *(this + 14), &v9);
  }

  else
  {
    CPSDBaseComponent::ReadFile(a2, this + 64, 4uLL, &v9);
    *(this + 16) = bswap32(*(this + 16));
  }

  CPSDBaseComponent::ReadFile(a2, this + 60, 4uLL, &v9);
  v6 = *(this + 15);
  *(this + 15) = bswap32(v6);
  if (v6)
  {
    v7 = operator new[]();
    *(this + 11) = v7;
    CPSDBaseComponent::ReadFile(a2, v7, *(this + 15), &v9);
    *(*(this + 11) + *(this + 15)) = 0;
  }

  else
  {
    CPSDBaseComponent::ReadFile(a2, this + 80, 4uLL, &v9);
    *(this + 20) = bswap32(*(this + 20));
  }

  return 1;
}

uint64_t CPSDOSTypeEnumerated::Save(CPSDOSTypeEnumerated *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 14));
  if (*(this + 14))
  {
    (*(*a2 + 48))(a2, *(this + 9));
  }

  else
  {
    (*(*a2 + 80))(a2, *(this + 16));
  }

  (*(*a2 + 80))(a2, *(this + 15));
  if (*(this + 15))
  {
    v4 = *(this + 11);
    v5 = *(*a2 + 48);

    return v5(a2, v4);
  }

  else
  {
    v7 = *(this + 20);
    v8 = *(*a2 + 80);

    return v8(a2, v7);
  }
}

uint64_t CPSDOSTypeEnumerated::Dump(CPSDOSTypeEnumerated *this, __sFILE *__stream)
{
  fwrite("Enum { ", 7uLL, 1uLL, __stream);
  if (*(this + 16))
  {
    fprintf(__stream, "TypeID = '%s', ");
  }

  else
  {
    fprintf(__stream, "TypeID string = %s, ");
  }

  if (*(this + 20))
  {
    return fprintf(__stream, "Enum = '%s' }\n");
  }

  else
  {
    return fprintf(__stream, "Enum string = %s }\n");
  }
}

void CPSDActionKeyedItem::CPSDActionKeyedItem(CPSDActionKeyedItem *this, int a2, CPSDActionBaseComponent *a3)
{
  *(this + 4) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *this = &unk_1F00D4708;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = a3;
  CPSDActionKeyedItem::SetItem(this, a3);
}

BOOL CPSDActionKeyedItem::SetItem(CPSDActionKeyedItem *this, CPSDActionBaseComponent *a2)
{
  *(this + 10) = a2;
  if (!a2)
  {
    __cxa_bad_typeid();
  }

  if (result)
  {
    v5 = 1433302086;
LABEL_17:
    *(this + 18) = v5;
    return result;
  }

  if (result)
  {
    v5 = 1651470188;
    goto LABEL_17;
  }

  if (result)
  {
    v5 = 1685026146;
    goto LABEL_17;
  }

  if (result)
  {
    v5 = 1819242087;
    goto LABEL_17;
  }

  if (result)
  {
    v5 = 1413830740;
    goto LABEL_17;
  }

  if (result)
  {
    v5 = 1701737837;
    goto LABEL_17;
  }

  {
    v5 = 1331849827;
    goto LABEL_17;
  }

  if (result)
  {
    v5 = 1449938035;
    goto LABEL_17;
  }

  return result;
}

void CPSDActionKeyedItem::CPSDActionKeyedItem(CPSDActionKeyedItem *this, const char *__s, CPSDActionBaseComponent *a3)
{
  *(this + 4) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *this = &unk_1F00D4708;
  *(this + 7) = 0;
  *(this + 18) = 0;
  *(this + 10) = a3;
  if (__s)
  {
    v6 = strlen(__s);
    *(this + 14) = v6;
    v7 = malloc_type_malloc((v6 + 1), 0x100004077774924uLL);
    *(this + 8) = v7;
    strcpy(v7, __s);
  }

  CPSDActionKeyedItem::SetItem(this, a3);
}

void CPSDActionKeyedItem::~CPSDActionKeyedItem(CPSDActionKeyedItem *this)
{
  *this = &unk_1F00D4708;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x1000C8077774924);
  }

  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

{
  CPSDActionKeyedItem::~CPSDActionKeyedItem(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDActionKeyedItem::Load(CPSDActionKeyedItem *this, uint64_t a2)
{
  v18 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v18);
  v4 = *(this + 14);
  *(this + 14) = bswap32(v4);
  if (v4)
  {
    v5 = operator new[]();
    *(this + 8) = v5;
    CPSDBaseComponent::ReadFile(a2, v5, *(this + 14), &v18);
  }

  else
  {
    CPSDBaseComponent::ReadFile(a2, this + 60, 4uLL, &v18);
    *(this + 15) = bswap32(*(this + 15));
  }

  CPSDBaseComponent::ReadFile(a2, this + 72, 4uLL, &v18);
  v12 = bswap32(*(this + 18));
  *(this + 18) = v12;
  if (v12 <= 1651470187)
  {
    if (v12 > 1433302085)
    {
      if (v12 == 1433302086)
      {
        v13 = operator new();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0u;
        *(v13 + 40) = 0u;
        *v13 = &unk_1F00D4678;
        *(v13 + 56) = 0;
        *(v13 + 64) = 0;
        goto LABEL_40;
      }

      if (v12 == 1449938035)
      {
        v13 = operator new();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0u;
        *(v13 + 40) = 0u;
        *v13 = &unk_1F00D45E8;
        *(v13 + 56) = 0u;
        *(v13 + 72) = 0u;
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v12 != 1331849827)
    {
      if (v12 == 1413830740)
      {
        v13 = operator new();
        CPSDOSTypeText::CPSDOSTypeText(v13);
LABEL_40:
        *(this + 10) = v13;
        (*(*v13 + 16))(v13, a2);
        return 1;
      }

      goto LABEL_27;
    }

    v14 = *(this + 15);
    if (v14 <= 1232229223)
    {
      switch(v14)
      {
        case 1148343144:
          v13 = operator new();
          CPSDActionDescriptor::CPSDActionDescriptor(v13);
          v15 = &unk_1F00D4890;
          goto LABEL_39;
        case 1198671468:
          v13 = operator new();
          CPSDActionDescriptor::CPSDActionDescriptor(v13);
          *v13 = &unk_1F00D4A70;
          *(v13 + 120) = 0;
          goto LABEL_40;
        case 1232226156:
          v13 = operator new();
          CPSDActionDescriptor::CPSDActionDescriptor(v13);
          v15 = &unk_1F00D4930;
          goto LABEL_39;
      }
    }

    else if (v14 > 1399801448)
    {
      if (v14 == 1399801449)
      {
        v13 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v13);
        v15 = &unk_1F00D4A20;
        goto LABEL_39;
      }

      if (v14 == 1700946540)
      {
        v13 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v13);
        v15 = &unk_1F00D49D0;
        goto LABEL_39;
      }
    }

    else
    {
      if (v14 == 1232229224)
      {
        v13 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v13);
        v15 = &unk_1F00D48E0;
        goto LABEL_39;
      }

      if (v14 == 1332889452)
      {
        v13 = operator new();
        CPSDActionDescriptor::CPSDActionDescriptor(v13);
        v15 = &unk_1F00D4980;
LABEL_39:
        *v13 = v15;
        goto LABEL_40;
      }
    }

    v13 = operator new();
    CPSDActionDescriptor::CPSDActionDescriptor(v13);
    goto LABEL_40;
  }

  if (v12 > 1701737836)
  {
    if (v12 == 1701737837)
    {
      v13 = operator new();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *v13 = &unk_1F00D5390;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      *(v13 + 80) = 0;
      *(v13 + 88) = 0;
      goto LABEL_40;
    }

    if (v12 == 1819242087)
    {
      v13 = operator new();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *v13 = &unk_1F00D5300;
      *(v13 + 56) = 0;
      goto LABEL_40;
    }
  }

  else
  {
    if (v12 == 1651470188)
    {
      v13 = operator new();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *v13 = &unk_1F00D4630;
      *(v13 + 56) = 0;
      goto LABEL_40;
    }

    if (v12 == 1685026146)
    {
      v13 = operator new();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *v13 = &unk_1F00D5348;
      *(v13 + 56) = 0;
      goto LABEL_40;
    }
  }

LABEL_27:
  *(this + 10) = 0;
  _CUILog(1, "in keyed item Error parsing gradient fill info: This OSType cannot be parsed.\n", v6, v7, v8, v9, v10, v11, v17);
  return 1;
}

uint64_t CPSDActionKeyedItem::Save(CPSDActionKeyedItem *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 14));
  if (*(this + 14))
  {
    (*(*a2 + 48))(a2, *(this + 8));
  }

  else
  {
    (*(*a2 + 80))(a2, *(this + 15));
  }

  (*(*a2 + 80))(a2, *(this + 18));
  result = *(this + 10);
  if (result)
  {
    v5 = *(*result + 24);

    return v5();
  }

  return result;
}

size_t CPSDActionKeyedItem::Dump(CPSDActionKeyedItem *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  if (a3)
  {
    v7 = 0;
    do
    {
      *(v6 + v7++) = 9;
    }

    while (a3 > v7);
  }

  if (*(this + 15))
  {
    fprintf(a2, "%s\tKey: '%s', \t");
  }

  else
  {
    fprintf(a2, "%s\tKey: %s, \t");
  }

  v8 = *(this + 10);
  if (v8)
  {
    v9 = *(*v8 + 48);

    return v9();
  }

  else
  {

    return fwrite("Unknown Key. Data could not be parsed.\n", 0x27uLL, 1uLL, a2);
  }
}

void CPSDActionDescriptor::~CPSDActionDescriptor(CPSDActionDescriptor *this)
{
  *this = &unk_1F00D4840;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x193AC64C0](v2, 0x1000C4077774924);
    *(this + 9) = 0;
  }

  v4 = *(this + 12);
  v3 = *(this + 13);
  if (v3 != v4)
  {
    v5 = v3 - 11;
    v6 = v3 - 11;
    v7 = v3 - 11;
    do
    {
      v8 = *v7;
      v7 -= 11;
      (*v8)(v6);
      v5 -= 11;
      v9 = v6 == v4;
      v6 = v7;
    }

    while (!v9);
  }

  *(this + 13) = v4;
  v11 = (this + 96);
  std::vector<CPSDActionKeyedItem>::__destroy_vector::operator()[abi:ne200100](&v11);
  v10 = *(this + 8);
  if (v10)
  {
    MEMORY[0x193AC64A0](v10, 0x1000C80BDFB0063);
    *(this + 8) = 0;
  }

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDActionDescriptor::Load(CPSDActionDescriptor *this, uint64_t a2)
{
  v10 = 0;
  CPSDString::Load(this + 7, a2, &v10);
  CPSDBaseComponent::ReadFile(a2, this + 80, 4uLL, &v10);
  v4 = *(this + 20);
  *(this + 20) = bswap32(v4);
  if (v4)
  {
    v5 = operator new[]();
    *(this + 9) = v5;
    CPSDBaseComponent::ReadFile(a2, v5, *(this + 20), &v10);
  }

  else
  {
    CPSDBaseComponent::ReadFile(a2, this + 84, 4uLL, &v10);
    *(this + 21) = bswap32(*(this + 21));
  }

  CPSDBaseComponent::ReadFile(a2, this + 88, 4uLL, &v10);
  v6 = bswap32(*(this + 22));
  *(this + 22) = v6;
  std::vector<CPSDActionKeyedItem>::resize(this + 12, v6);
  if (*(this + 22))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      (*(*(*(this + 12) + v7) + 16))(*(this + 12) + v7, a2);
      ++v8;
      v7 += 88;
    }

    while (v8 < *(this + 22));
  }

  return 1;
}

void *std::vector<CPSDActionKeyedItem>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<CPSDActionKeyedItem>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 88 * a2;
    if (v3 != v7)
    {
      v8 = v3 - 88;
      v9 = (v3 - 88);
      v10 = (v3 - 88);
      do
      {
        v11 = *v10;
        v10 -= 11;
        result = (*v11)(v9);
        v8 -= 88;
        v12 = v9 == v7;
        v9 = v10;
      }

      while (!v12);
    }

    v2[1] = v7;
  }

  return result;
}

uint64_t CPSDActionDescriptor::Save(CPSDActionDescriptor *this, File *a2)
{
  (*(*a2 + 80))(a2, *(this + 14));
  (*(*a2 + 40))(a2, *(this + 8), *(this + 14));
  (*(*a2 + 80))(a2, *(this + 20));
  if (*(this + 20))
  {
    (*(*a2 + 48))(a2, *(this + 9));
  }

  else
  {
    (*(*a2 + 80))(a2, *(this + 21));
  }

  result = (*(*a2 + 80))(a2, *(this + 22));
  if (*(this + 22))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      result = (*(*(*(this + 12) + v5) + 24))(*(this + 12) + v5, a2);
      ++v6;
      v5 += 88;
    }

    while (v6 < *(this + 22));
  }

  return result;
}

uint64_t CPSDActionDescriptor::DumpInset(const UniChar **this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      *(v6 + v8++) = 9;
    }

    while (a3 > v8);
  }

  CPSDString::CopyStringValue(this + 7, v15, 0x100u);
  fprintf(a2, "%sDescriptor { Name = %s, ", v7, v15);
  if (*(this + 20))
  {
    fwrite("ClassID", 7uLL, 1uLL, a2);
    if (*(this + 20))
    {
      v9 = 0;
      do
      {
        fputc(*(this[9] + v9++), a2);
      }

      while (v9 < *(this + 20));
    }

    fwrite(", ", 2uLL, 1uLL, a2);
  }

  else
  {
    fprintf(a2, "ClassID = '%s', ", this + 84);
  }

  fprintf(a2, "Number of Items = %d:\n", *(this + 22));
  v10 = *(this + 22);
  if (0x2E8BA2E8BA2E8BA3 * ((this[13] - this[12]) >> 3) == v10 && v10 != 0)
  {
    v12 = 0;
    do
    {
      v13 = &this[12][44 * v12];
      (*(*v13 + 48))(v13, a2, a3 + 1);
      ++v12;
    }

    while (*(this + 22) > v12);
  }

  return fprintf(a2, "%s}\n", v7);
}

uint64_t CPSDActionDescriptor::GetItemForKeyString(CPSDActionDescriptor *this, unsigned __int8 *a2)
{
  SystemEncoding = CFStringGetSystemEncoding();
  v5 = CFStringCreateWithBytes(kCFAllocatorDefault, a2, 8, SystemEncoding, 0);
  v6 = *(this + 22);
  if (!v6)
  {
LABEL_7:
    CFRelease(v5);
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = v7;
    v9 = *(*(this + 12) + 88 * v7 + 64);
    if (v9)
    {
      break;
    }

LABEL_6:
    v7 = v8 + 1;
    if (v6 <= (v8 + 1))
    {
      goto LABEL_7;
    }
  }

  v10 = CFStringGetSystemEncoding();
  v11 = CFStringCreateWithBytes(kCFAllocatorDefault, v9, 8, v10, 0);
  v12 = CFStringCompare(v5, v11, 0);
  CFRelease(v11);
  if (v12)
  {
    v6 = *(this + 22);
    goto LABEL_6;
  }

  CFRelease(v5);
  return *(*(this + 12) + 88 * v8 + 80);
}

void CPSDActionDescriptor::CPSDActionDescriptor(CPSDActionDescriptor *this)
{
  *(this + 4) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *this = &unk_1F00D4840;
  *(this + 8) = 0;
  CPSDString::AllocateCharData((this + 56), 1);
  **(this + 8) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 22) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
}

BOOL CPSDDropShadowDescriptor::Load(CPSDDropShadowDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1148343144)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  return *(v5 + 80) != 0;
}

uint64_t CPSDDropShadowDescriptor::DumpInset(CPSDDropShadowDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Drop Shadow:\n", v6);
  v9 = *(this + 22);
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(this + 12) + 88 * v12;
      if (*(v13 + 60) == 1818322796)
      {
        break;
      }

      if (v9 <= ++v12)
      {
        v11 = 0.0;
        goto LABEL_11;
      }
    }

    v14 = *(v13 + 80);
    v11 = 0.0;
    if (v14)
    {
      v11 = *(v14 + 64);
    }
  }

LABEL_11:
  fprintf(a2, "%s\tAngle: %f\n", v7, v11);
  v15 = *(this + 22);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(this + 12) + 88 * v16;
      if (*(v17 + 60) == 1148417134)
      {
        break;
      }

      if (v15 <= ++v16)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v17 + 80);
    if (v18)
    {
      v10 = *(v18 + 64);
    }
  }

LABEL_18:
  fprintf(a2, "%s\tDistance: %f\n", v7, v10);
  v19 = *(this + 22);
  v20 = 0.0;
  if (v19)
  {
    v21 = 0;
    while (1)
    {
      v22 = *(this + 12) + 88 * v21;
      if (*(v22 + 60) == 1651275122)
      {
        break;
      }

      if (v19 <= ++v21)
      {
        goto LABEL_25;
      }
    }

    v23 = *(v22 + 80);
    if (v23)
    {
      v20 = *(v23 + 64);
    }
  }

LABEL_25:
  fprintf(a2, "%s\tBlur Size: %f\n", v7, v20);
  return fprintf(a2, "%s} // End Drop Shadow\n", v7);
}

double CPSDDropShadowDescriptor::GetAngle(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 22);
  result = 0.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1818322796)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64);
    }
  }

  return result;
}

double CPSDDropShadowDescriptor::GetDistance(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 22);
  result = 0.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1148417134)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64);
    }
  }

  return result;
}

double CPSDDropShadowDescriptor::GetBlurSize(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 22);
  result = 0.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1651275122)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64);
    }
  }

  return result;
}

uint64_t CPSDDropShadowDescriptor::GetIsEnabled(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 12);
  if (*(v1 + 60) != 1701732706)
  {
    v2 = 0;
    do
    {
      ++v2;
    }

    while (*(v1 + 88 * v2 + 60) != 1701732706);
    v1 += 88 * v2;
  }

  return *(*(v1 + 80) + 56);
}

double CPSDDropShadowDescriptor::GetColor(CPSDDropShadowDescriptor *this, double *a2)
{
  v2 = *(this + 12);
  if (*(v2 + 60) != 1131180576)
  {
    v3 = 0;
    do
    {
      ++v3;
    }

    while (*(v2 + 88 * v3 + 60) != 1131180576);
    v2 += 88 * v3;
  }

  v4 = 0;
  v5 = *(v2 + 80);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  while (1)
  {
    v8 = v7 + 88 * v4;
    if (*(v8 + 60) == 1382293536)
    {
      break;
    }

    if (v6 <= ++v4)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v9 = *(v8 + 80);
LABEL_10:
  v10 = 0;
  while (1)
  {
    v11 = v7 + 88 * v10;
    if (*(v11 + 60) == 1198681632)
    {
      break;
    }

    if (v6 <= ++v10)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  v12 = *(v11 + 80);
LABEL_15:
  if (*(v7 + 60) != 1114382368)
  {
    v13 = 0;
    do
    {
      ++v13;
    }

    while (*(v7 + 88 * v13 + 60) != 1114382368);
    v7 += 88 * v13;
  }

  result = *(v9 + 56);
  v15 = *(v12 + 56);
  v16 = *(*(v7 + 80) + 56);
  *a2 = result;
  *(a2 + 1) = v15;
  *(a2 + 2) = v16;
  a2[3] = 1.0;
  return result;
}

uint64_t CPSDDropShadowDescriptor::GetBlendMode(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1298407456)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return CPSDOSTypeEnumerated::GetEnum(v4);
  }

  else
  {
    return 0;
  }
}

uint64_t CPSDOSTypeEnumerated::GetEnum(CPSDOSTypeEnumerated *this)
{
  if (!*(this + 15))
  {
    return *(this + 20);
  }

  v1 = 1282240116;
  v2 = *(this + 11);
  if (strcmp(v2, "linearBurn"))
  {
    if (!strcmp(v2, "darkerColor"))
    {
      return 1282240117;
    }

    else if (!strcmp(v2, "linearDodge"))
    {
      return 1282240118;
    }

    else if (!strcmp(v2, "lighterColor"))
    {
      return 1282240119;
    }

    else if (!strcmp(v2, "vividLight"))
    {
      return 1282240120;
    }

    else if (!strcmp(v2, "linearLight"))
    {
      return 1282240121;
    }

    else if (!strcmp(v2, "pinLight"))
    {
      return 1282240122;
    }

    else if (!strcmp(v2, "hardMix"))
    {
      return 1282240123;
    }

    else if (!strcmp(v2, "blendSubtraction"))
    {
      return 1282240124;
    }

    else if (!strcmp(v2, "blendDivide"))
    {
      return 1282240125;
    }

    else
    {
      return 1316121964;
    }
  }

  return v1;
}

double CPSDDropShadowDescriptor::GetOpacity(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 100.0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1332765556)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 100.0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return round(*(v4 + 64));
  }

  else
  {
    return 100.0;
  }
}

uint64_t CPSDDropShadowDescriptor::UseGlobalLightAngle(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 12);
  if (*(v1 + 60) != 1969712231)
  {
    v2 = 0;
    do
    {
      ++v2;
    }

    while (*(v1 + 88 * v2 + 60) != 1969712231);
    v1 += 88 * v2;
  }

  return *(*(v1 + 80) + 56);
}

double CPSDDropShadowDescriptor::GetSpread(CPSDDropShadowDescriptor *this)
{
  v1 = *(this + 22);
  result = 0.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1131113844)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64);
    }
  }

  return result;
}

BOOL CPSDInnerShadowDescriptor::Load(CPSDInnerShadowDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1232229224)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  return *(v5 + 80) != 0;
}

uint64_t CPSDInnerShadowDescriptor::DumpInset(CPSDInnerShadowDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Inner Shadow:\n", v6);
  v9 = *(this + 22);
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(this + 12) + 88 * v12;
      if (*(v13 + 60) == 1818322796)
      {
        break;
      }

      if (v9 <= ++v12)
      {
        v11 = 0.0;
        goto LABEL_11;
      }
    }

    v14 = *(v13 + 80);
    v11 = 0.0;
    if (v14)
    {
      v11 = *(v14 + 64);
    }
  }

LABEL_11:
  fprintf(a2, "%s\tAngle: %f\n", v7, v11);
  v15 = *(this + 22);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(this + 12) + 88 * v16;
      if (*(v17 + 60) == 1148417134)
      {
        break;
      }

      if (v15 <= ++v16)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v17 + 80);
    if (v18)
    {
      v10 = *(v18 + 64);
    }
  }

LABEL_18:
  fprintf(a2, "%s\tDistance: %f\n", v7, v10);
  v19 = *(this + 22);
  v20 = 0.0;
  if (v19)
  {
    v21 = 0;
    while (1)
    {
      v22 = *(this + 12) + 88 * v21;
      if (*(v22 + 60) == 1651275122)
      {
        break;
      }

      if (v19 <= ++v21)
      {
        goto LABEL_25;
      }
    }

    v23 = *(v22 + 80);
    if (v23)
    {
      v20 = *(v23 + 64);
    }
  }

LABEL_25:
  fprintf(a2, "%s\tBlur Size: %f\n", v7, v20);
  return fprintf(a2, "%s} // End Inner Shadow\n", v7);
}

BOOL CPSDInnerGlowDescriptor::Load(CPSDInnerGlowDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1232226156)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  return *(v5 + 80) != 0;
}

uint64_t CPSDInnerGlowDescriptor::DumpInset(CPSDInnerGlowDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Inner Glow:\n", v6);
  v9 = *(this + 22);
  v10 = 0.0;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(this + 12) + 88 * v11;
      if (*(v12 + 60) == 1651275122)
      {
        break;
      }

      if (v9 <= ++v11)
      {
        goto LABEL_11;
      }
    }

    v13 = *(v12 + 80);
    if (v13)
    {
      v10 = *(v13 + 64);
    }
  }

LABEL_11:
  fprintf(a2, "%s\tBlur Size: %f\n", v7, v10);
  return fprintf(a2, "%s} // End Inner Glow\n", v7);
}

BOOL CPSDOuterGlowDescriptor::Load(CPSDOuterGlowDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1332889452)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  return *(v5 + 80) != 0;
}

uint64_t CPSDOuterGlowDescriptor::DumpInset(CPSDOuterGlowDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Outer Glow:\n", v6);
  v9 = *(this + 22);
  v10 = 0.0;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(this + 12) + 88 * v11;
      if (*(v12 + 60) == 1651275122)
      {
        break;
      }

      if (v9 <= ++v11)
      {
        goto LABEL_11;
      }
    }

    v13 = *(v12 + 80);
    if (v13)
    {
      v10 = *(v13 + 64);
    }
  }

LABEL_11:
  fprintf(a2, "%s\tBlur Size: %f\n", v7, v10);
  return fprintf(a2, "%s} // End Outer Glow\n", v7);
}

BOOL CPSDBevelEmbossDescriptor::Load(CPSDBevelEmbossDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1700946540)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  return *(v5 + 80) != 0;
}

uint64_t CPSDBevelEmbossDescriptor::DumpInset(CPSDBevelEmbossDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Bevel & Emboss:\n", v6);
  v9 = *(this + 22);
  v10 = 0.0;
  v11 = 0.0;
  if (v9)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(this + 12) + 88 * v12;
      if (*(v13 + 60) == 1818322796)
      {
        break;
      }

      if (v9 <= ++v12)
      {
        v11 = 0.0;
        goto LABEL_11;
      }
    }

    v14 = *(v13 + 80);
    v11 = 0.0;
    if (v14)
    {
      v11 = *(v14 + 64);
    }
  }

LABEL_11:
  fprintf(a2, "%s\tAngle: %f\n", v7, v11);
  v15 = *(this + 22);
  if (v15)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(this + 12) + 88 * v16;
      if (*(v17 + 60) == 1651275122)
      {
        break;
      }

      if (v15 <= ++v16)
      {
        goto LABEL_18;
      }
    }

    v18 = *(v17 + 80);
    if (v18)
    {
      v10 = *(v18 + 64);
    }
  }

LABEL_18:
  fprintf(a2, "%s\tBlur Size: %f\n", v7, v10);
  return fprintf(a2, "%s} // End Bevel & Emboss\n", v7);
}

uint64_t CPSDBevelEmbossDescriptor::GetBevelDirection(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1651928132)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return CPSDOSTypeEnumerated::GetEnum(v4);
  }

  else
  {
    return 0;
  }
}

double CPSDBevelEmbossDescriptor::GetHighlightColor(CPSDBevelEmbossDescriptor *this, double *a2)
{
  v2 = *(this + 12);
  if (*(v2 + 60) != 1751608387)
  {
    v3 = 0;
    do
    {
      ++v3;
    }

    while (*(v2 + 88 * v3 + 60) != 1751608387);
    v2 += 88 * v3;
  }

  v4 = 0;
  v5 = *(v2 + 80);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  while (1)
  {
    v8 = v7 + 88 * v4;
    if (*(v8 + 60) == 1382293536)
    {
      break;
    }

    if (v6 <= ++v4)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v9 = *(v8 + 80);
LABEL_10:
  v10 = 0;
  while (1)
  {
    v11 = v7 + 88 * v10;
    if (*(v11 + 60) == 1198681632)
    {
      break;
    }

    if (v6 <= ++v10)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  v12 = *(v11 + 80);
LABEL_15:
  if (*(v7 + 60) != 1114382368)
  {
    v13 = 0;
    do
    {
      ++v13;
    }

    while (*(v7 + 88 * v13 + 60) != 1114382368);
    v7 += 88 * v13;
  }

  result = *(v9 + 56);
  v15 = *(v12 + 56);
  v16 = *(*(v7 + 80) + 56);
  *a2 = result;
  *(a2 + 1) = v15;
  *(a2 + 2) = v16;
  a2[3] = 1.0;
  return result;
}

uint64_t CPSDBevelEmbossDescriptor::GetHighlightBlendMode(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1751608397)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return CPSDOSTypeEnumerated::GetEnum(v4);
  }

  else
  {
    return 0;
  }
}

double CPSDBevelEmbossDescriptor::GetHighlightOpacity(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 100.0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1751608399)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 100.0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return round(*(v4 + 64));
  }

  else
  {
    return 100.0;
  }
}

double CPSDBevelEmbossDescriptor::GetShadowColor(CPSDBevelEmbossDescriptor *this, double *a2)
{
  v2 = *(this + 12);
  if (*(v2 + 60) != 1935963971)
  {
    v3 = 0;
    do
    {
      ++v3;
    }

    while (*(v2 + 88 * v3 + 60) != 1935963971);
    v2 += 88 * v3;
  }

  v4 = 0;
  v5 = *(v2 + 80);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  while (1)
  {
    v8 = v7 + 88 * v4;
    if (*(v8 + 60) == 1382293536)
    {
      break;
    }

    if (v6 <= ++v4)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v9 = *(v8 + 80);
LABEL_10:
  v10 = 0;
  while (1)
  {
    v11 = v7 + 88 * v10;
    if (*(v11 + 60) == 1198681632)
    {
      break;
    }

    if (v6 <= ++v10)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  v12 = *(v11 + 80);
LABEL_15:
  if (*(v7 + 60) != 1114382368)
  {
    v13 = 0;
    do
    {
      ++v13;
    }

    while (*(v7 + 88 * v13 + 60) != 1114382368);
    v7 += 88 * v13;
  }

  result = *(v9 + 56);
  v15 = *(v12 + 56);
  v16 = *(*(v7 + 80) + 56);
  *a2 = result;
  *(a2 + 1) = v15;
  *(a2 + 2) = v16;
  a2[3] = 1.0;
  return result;
}

uint64_t CPSDBevelEmbossDescriptor::GetShadowBlendMode(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1935963981)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return CPSDOSTypeEnumerated::GetEnum(v4);
  }

  else
  {
    return 0;
  }
}

double CPSDBevelEmbossDescriptor::GetShadowOpacity(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  if (!v1)
  {
    return 100.0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(this + 12) + 88 * v2;
    if (*(v3 + 60) == 1935963983)
    {
      break;
    }

    if (v1 <= ++v2)
    {
      return 100.0;
    }
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return round(*(v4 + 64));
  }

  else
  {
    return 100.0;
  }
}

double CPSDBevelEmbossDescriptor::GetAltitude(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  result = 30.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1281453156)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64);
    }
  }

  return result;
}

double CPSDBevelEmbossDescriptor::GetSoftenSize(CPSDBevelEmbossDescriptor *this)
{
  v1 = *(this + 22);
  result = 0.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1399223406)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64);
    }
  }

  return result;
}

BOOL CPSDColorOverlayDescriptor::Load(CPSDColorOverlayDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1399801449)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  return *(v5 + 80) != 0;
}

uint64_t CPSDColorOverlayDescriptor::DumpInset(CPSDColorOverlayDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v5 = operator new[]();
  v6 = v5;
  if (a3)
  {
    v7 = 0;
    do
    {
      v5[v7++] = 9;
    }

    while (a3 > v7);
  }

  fprintf(a2, "%s{ Color Overlay:\n", v5);
  return fprintf(a2, "%s} // End Color Overlay\n", v6);
}

uint64_t CPSDGradientDescriptor::Load(CPSDGradientDescriptor *this, uint64_t a2)
{
  CPSDActionDescriptor::Load(this, a2);
  v3 = *(this + 22);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 12) + 88 * v4;
    if (*(v5 + 60) == 1198678372)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      return 0;
    }
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 88);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(v6 + 96);
  while (1)
  {
    v10 = v9 + 88 * v8;
    if (*(v10 + 60) == 1131180659)
    {
      break;
    }

    if (v7 <= ++v8)
    {
      return 0;
    }
  }

  v11 = *(v10 + 80);
  if (!v11)
  {
    return 0;
  }

  for (i = 0; i < v7; ++i)
  {
    v13 = v9 + 88 * i;
    if (*(v13 + 60) == 1416785523)
    {
      break;
    }

    result = 0;
  }

  v15 = *(v13 + 80);
  if (!v15)
  {
    return 0;
  }

  v16 = *(v15 + 56);
  *(this + 30) = *(v11 + 56);
  *(this + 31) = v16;
  return 1;
}

uint64_t CPSDGradientDescriptor::DumpInset(CPSDGradientDescriptor *this, __sFILE *a2, unsigned int a3)
{
  v6 = operator new[]();
  v7 = v6;
  if (a3)
  {
    v8 = 0;
    do
    {
      v6[v8++] = 9;
    }

    while (a3 > v8);
  }

  fprintf(a2, "%s{ Gradient:\n", v6);
  CPSDGradientDescriptor::GetName(this, &v40);
  CPSDString::CopyStringValue(&v40, v43, 0x100u);
  fprintf(a2, "%s\tName: %s\n", v7, v43);
  fprintf(a2, "%s\tStyle: ", v7);
  Style = CPSDGradientDescriptor::GetStyle(this);
  if (Style <= 1282306591)
  {
    if (Style == 1097754476)
    {
      v10 = "Angular (Sweep)\n";
      v11 = 16;
      goto LABEL_16;
    }

    if (Style != 1148022372)
    {
      goto LABEL_64;
    }

    v10 = "Diamond\n";
    v11 = 8;
LABEL_16:
    fwrite(v10, v11, 1uLL, a2);
    goto LABEL_17;
  }

  switch(Style)
  {
    case 1382444131:
      v10 = "Reflected\n";
      v11 = 10;
      goto LABEL_16;
    case 1382312992:
      v10 = "Radial\n";
      goto LABEL_14;
    case 1282306592:
      v10 = "Linear\n";
LABEL_14:
      v11 = 7;
      goto LABEL_16;
  }

LABEL_64:
  fprintf(a2, "%d, Style not recognized\n", Style);
LABEL_17:
  v12 = *(this + 22);
  v13 = 0.0;
  if (v12)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(this + 12) + 88 * v14;
      if (*(v15 + 60) == 1332114292)
      {
        break;
      }

      if (v12 <= ++v14)
      {
        goto LABEL_24;
      }
    }

    if (*(v15 + 80))
    {
      v42[0] = 0.0;
      v39 = 0.0;
      CPSDGradientDescriptor::GetOffset(this, v42, &v39);
      fprintf(a2, "%s\tOffset: (%f,%f)\n", v7, v42[0], v39);
      v12 = *(this + 22);
      if (!v12)
      {
        goto LABEL_30;
      }
    }

LABEL_24:
    v16 = 0;
    while (1)
    {
      v17 = *(this + 12) + 88 * v16;
      if (*(v17 + 60) == 1097754476)
      {
        break;
      }

      if (v12 <= ++v16)
      {
        goto LABEL_30;
      }
    }

    v18 = *(v17 + 80);
    if (v18)
    {
      v13 = *(v18 + 64);
    }
  }

LABEL_30:
  fprintf(a2, "%s\tAngle: %f\n", v7, v13);
  Scale = CPSDGradientDescriptor::GetScale(this);
  fprintf(a2, "%s\tScale: %.0f%%\n", v7, Scale * 100.0);
  LODWORD(v20) = *(this + 22);
  v21 = "YES";
  if (!v20)
  {
    goto LABEL_45;
  }

  v22 = 0;
  v23 = *(this + 12);
  while (1)
  {
    v24 = v23 + 88 * v22;
    if (*(v24 + 60) == 1383494259)
    {
      break;
    }

    if (v20 <= ++v22)
    {
      goto LABEL_37;
    }
  }

  v25 = *(v24 + 80);
  if (v25)
  {
    v26 = *(v25 + 56) == 0;
    goto LABEL_38;
  }

LABEL_37:
  v26 = 1;
LABEL_38:
  v27 = 0;
  while (1)
  {
    v28 = v23 + 88 * v27;
    if (*(v28 + 60) == 1148479602)
    {
      break;
    }

    if (v20 <= ++v27)
    {
      LODWORD(v20) = 0;
      goto LABEL_44;
    }
  }

  v20 = *(v28 + 80);
  if (v20)
  {
    LODWORD(v20) = *(v20 + 56);
  }

LABEL_44:
  if (!v26)
  {
    v29 = "YES";
  }

  else
  {
LABEL_45:
    v29 = "NO";
  }

  if (!v20)
  {
    v21 = "NO";
  }

  fprintf(a2, "%s\tReverse: %s, Dither: %s\n", v7, v29, v21);
  fprintf(a2, "%s\tType: ", v7);
  Type = CPSDGradientDescriptor::GetType(this);
  if (Type == 1)
  {
    v31 = "Noise\n";
    goto LABEL_53;
  }

  if (!Type)
  {
    v31 = "Solid\n";
LABEL_53:
    fwrite(v31, 6uLL, 1uLL, a2);
    goto LABEL_55;
  }

  fprintf(a2, "%d, Type not recognized\n", 2);
LABEL_55:
  Smoothness = CPSDGradientDescriptor::GetSmoothness(this);
  fprintf(a2, "%s\tSmoothness: %.0f%%\n", v7, Smoothness * 100.0);
  fprintf(a2, "%s\tColor stops[%d]:\n", v7, *(this + 30));
  if (*(this + 30))
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v38 = 0.0;
      v39 = 0.0;
      CPSDGradientDescriptor::GetColorStopAtIndex(this, v34, v42, &v39, &v38);
      fprintf(a2, "%s\t\t[%d]: RGB: (%f, %f, %f), Location: %f, Midpoint: %f\n", v7, v33, v42[0], v42[1], v42[2], v39, v38);
      v33 = ++v34;
    }

    while (*(this + 30) > v34);
  }

  fprintf(a2, "%s\tOpacity stops[%d]:\n", v7, *(this + 31));
  if (*(this + 31))
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v42[0] = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      CPSDGradientDescriptor::GetOpacityStopAtIndex(this, v36, v42, &v39, &v38);
      fprintf(a2, "%s\t\t[%d]: Opacity: %.0f%%, Location: %f, Midpoint: %f\n", v7, v35, v42[0], v39, v38);
      v35 = ++v36;
    }

    while (*(this + 31) > v36);
  }

  fprintf(a2, "%s} // End Gradient\n", v7);
  result = v41;
  if (v41)
  {
    return MEMORY[0x193AC64A0](v41, 0x1000C80BDFB0063);
  }

  return result;
}

void sub_18DFA2268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    MEMORY[0x193AC64A0](a19, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void *CPSDGradientDescriptor::GetName@<X0>(CPSDGradientDescriptor *this@<X0>, CPSDString *a2@<X8>)
{
  v3 = *(this + 12);
  if (*(v3 + 60) != 1198678372)
  {
    v4 = 0;
    do
    {
      ++v4;
    }

    while (*(v3 + 88 * v4 + 60) != 1198678372);
    v3 += 88 * v4;
  }

  v5 = *(*(v3 + 80) + 96);
  if (*(v5 + 60) != 1315774496)
  {
    v6 = 0;
    do
    {
      ++v6;
    }

    while (*(v5 + 88 * v6 + 60) != 1315774496);
    v5 += 88 * v6;
  }

  v7 = *(v5 + 80);
  *(a2 + 1) = 0;
  v8 = *(v7 + 64);
  CPSDString::AllocateCharData(a2, *(v7 + 56));
  v9 = *(a2 + 1);
  v10 = (2 * *a2);

  return memcpy(v9, v8, v10);
}

uint64_t CPSDGradientDescriptor::GetOffset(uint64_t this, double *a2, double *a3)
{
  v3 = *(this + 88);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(this + 96) + 88 * v4;
    if (*(v5 + 60) == 1332114292)
    {
      break;
    }

    if (v3 <= ++v4)
    {
      goto LABEL_11;
    }
  }

  v6 = *(v5 + 80);
  if (v6)
  {
    v7 = 0;
    v8 = *(v6 + 88);
    v9 = *(v6 + 96);
    while (1)
    {
      v10 = v9 + 88 * v7;
      if (*(v10 + 60) == 1215461998)
      {
        break;
      }

      if (v8 <= ++v7)
      {
        v11 = 0;
        goto LABEL_14;
      }
    }

    v11 = *(v10 + 80);
LABEL_14:
    if (*(v9 + 60) != 1450341475)
    {
      v13 = 0;
      do
      {
        ++v13;
      }

      while (*(v9 + 88 * v13 + 60) != 1450341475);
      v9 += 88 * v13;
    }

    v14 = *(v9 + 80);
    *a2 = *(v11 + 64);
    v12 = *(v14 + 64);
  }

  else
  {
LABEL_11:
    *a2 = 0.0;
    v12 = 0;
  }

  *a3 = v12;
  return this;
}

double CPSDGradientDescriptor::GetScale(CPSDGradientDescriptor *this)
{
  v1 = *(this + 22);
  result = 1.0;
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 12) + 88 * v3;
      if (*(v4 + 60) == 1399024672)
      {
        break;
      }

      if (v1 <= ++v3)
      {
        return result;
      }
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      return *(v5 + 64) / 100.0;
    }
  }

  return result;
}

uint64_t CPSDGradientDescriptor::GetType(CPSDGradientDescriptor *this)
{
  v1 = *(this + 22);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(this + 12) + 88 * v2;
      if (*(v3 + 60) == 1198678372)
      {
        break;
      }

      if (v1 <= ++v2)
      {
        goto LABEL_5;
      }
    }

    v4 = *(v3 + 80);
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  v5 = *(v4 + 88);
  if (v5)
  {
    v6 = 0;
    v7 = *(v4 + 96);
    while (1)
    {
      v8 = v7 + 88 * v6;
      if (*(v8 + 60) == 1198679110)
      {
        break;
      }

      if (v5 <= ++v6)
      {
        goto LABEL_11;
      }
    }

    v9 = *(v8 + 80);
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  Enum = CPSDOSTypeEnumerated::GetEnum(v9);
  if (Enum == 1131171443)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (Enum == 1131639891)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t CPSDGradientFillInfo::Load(CPSDGradientFillInfo *this, uint64_t a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 128, 4uLL, &v5);
  *(this + 32) = bswap32(*(this + 32));
  return CPSDGradientDescriptor::Load(this, a2);
}

uint64_t CPSDGradientFillInfo::Save(CPSDGradientFillInfo *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  (*(*a2 + 80))(a2, *(this + 32));

  return CPSDActionDescriptor::Save(this, a2);
}

size_t CPSDGradientFillInfo::Dump(CPSDGradientFillInfo *this, __sFILE *a2)
{
  fprintf(a2, "{ GradientFillInfo: version=%d\n", *(this + 32));
  fputs("Dump: ActionBaseComponent\n", a2);

  return fwrite("} // End GradientFillInfo\n", 0x1AuLL, 1uLL, a2);
}

uint64_t CPSDColorFillInfo::Load(CPSDColorFillInfo *this, uint64_t a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 120, 4uLL, &v5);
  *(this + 30) = bswap32(*(this + 30));
  CPSDActionDescriptor::Load(this, a2);
  return 1;
}

uint64_t CPSDColorFillInfo::Save(CPSDColorFillInfo *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  (*(*a2 + 80))(a2, *(this + 30));

  return CPSDActionDescriptor::Save(this, a2);
}

size_t CPSDColorFillInfo::Dump(CPSDColorFillInfo *this, __sFILE *a2)
{
  fprintf(a2, "{ ColorFillInfo: version=%d\n", *(this + 30));

  return fwrite("} // End ColorFillInfo\n", 0x17uLL, 1uLL, a2);
}

void CPSDObjectEffectsLayerInfo::~CPSDObjectEffectsLayerInfo(CPSDObjectEffectsLayerInfo *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

CPSDActionKeyedItem *CPSDObjectEffectsLayerInfo::MakeOffsetItem(CPSDObjectEffectsLayerInfo *this, float a2, float a3)
{
  v5 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v5);
  *(v5 + 21) = 1349415968;
  v6 = operator new();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *v6 = &unk_1F00D4678;
  *(v6 + 56) = 592474723;
  *(v6 + 64) = a2;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v11, 1215461998, v6);
  CPSDActionDescriptor::AdoptItem(v5, v11);
  v7 = operator new();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *v7 = &unk_1F00D4678;
  *(v7 + 56) = 592474723;
  *(v7 + 64) = a3;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v10, 1450341475, v7);
  CPSDActionDescriptor::AdoptItem(v5, v10);
  v8 = operator new();
  CPSDActionKeyedItem::CPSDActionKeyedItem(v8, 1332114292, v5);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v10);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v11);
  return v8;
}

void sub_18DFA29C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = v20;
  MEMORY[0x193AC64C0](v21, 0x10B1C40DEC6B036);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a9);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a20);
  _Unwind_Resume(a1);
}

uint64_t CPSDActionDescriptor::AdoptItem(CPSDActionDescriptor *this, CPSDActionKeyedItem *a2)
{
  v3 = *(this + 13);
  if (v3 >= *(this + 14))
  {
    result = std::vector<CPSDActionKeyedItem>::__emplace_back_slow_path<CPSDActionKeyedItem>(this + 96, a2);
  }

  else
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    v4 = *(a2 + 1);
    *v3 = &unk_1F00D4708;
    *(v3 + 8) = v4;
    v5 = *(a2 + 1);
    *(v3 + 32) = *(a2 + 4);
    *(v3 + 16) = v5;
    *(v3 + 40) = *(a2 + 40);
    v6 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v6;
    *(a2 + 10) = 0;
    *(a2 + 8) = 0;
    result = v3 + 88;
  }

  *(this + 13) = result;
  ++*(this + 22);
  return result;
}

CPSDActionKeyedItem *CPSDObjectEffectsLayerInfo::MakeRGBColor(CPSDObjectEffectsLayerInfo *this, double a2, double a3, double a4)
{
  v7 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v7);
  *(v7 + 21) = 1380401731;
  v8 = operator new();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *v8 = &unk_1F00D5348;
  *(v8 + 56) = a2;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v15, 1382293536, v8);
  CPSDActionDescriptor::AdoptItem(v7, v15);
  v9 = operator new();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *v9 = &unk_1F00D5348;
  *(v9 + 56) = a3;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v14, 1198681632, v9);
  CPSDActionDescriptor::AdoptItem(v7, v14);
  v10 = operator new();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *v10 = &unk_1F00D5348;
  *(v10 + 56) = a4;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v13, 1114382368, v10);
  CPSDActionDescriptor::AdoptItem(v7, v13);
  v11 = operator new();
  CPSDActionKeyedItem::CPSDActionKeyedItem(v11, 1131180576, v7);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v13);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v14);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v15);
  return v11;
}

void sub_18DFA2CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v4 = v2;
  MEMORY[0x193AC64C0](v4, 0x10B1C40DEC6B036);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va1);
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v3 - 152));
  _Unwind_Resume(a1);
}

CPSDActionDescriptor *CPSDObjectEffectsLayerInfo::MakeColorStopObject(CPSDObjectEffectsLayerInfo *this, int a2, int a3, double a4, double a5, double a6)
{
  v11 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v11);
  *(v11 + 21) = 1131180660;
  RGBColor = CPSDObjectEffectsLayerInfo::MakeRGBColor(v12, a4, a5, a6);
  CPSDActionDescriptor::AdoptItem(v11, RGBColor);
  v14 = operator new();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *v14 = &unk_1F00D5390;
  *(v14 + 56) = 0;
  *(v14 + 88) = 0;
  *(v14 + 64) = 1131180665;
  *(v14 + 80) = 1433629267;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v20, 1417244773, v14);
  CPSDActionDescriptor::AdoptItem(v11, v20);
  v15 = operator new();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *v15 = &unk_1F00D5300;
  *(v15 + 56) = a2;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v19, 1281586286, v15);
  CPSDActionDescriptor::AdoptItem(v11, v19);
  v16 = operator new();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *v16 = &unk_1F00D5300;
  *(v16 + 56) = a3;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v18, 1298428014, v16);
  CPSDActionDescriptor::AdoptItem(v11, v18);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v18);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v19);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v20);
  return v11;
}

void sub_18DFA2F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va1);
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v2 - 168));
  _Unwind_Resume(a1);
}

CPSDActionDescriptor *CPSDObjectEffectsLayerInfo::MakeTransparencyStopObject(CPSDObjectEffectsLayerInfo *this, int a2, int a3, float a4)
{
  v7 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v7);
  *(v7 + 21) = 1416785491;
  v8 = operator new();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *v8 = &unk_1F00D4678;
  *(v8 + 56) = 592474723;
  *(v8 + 64) = a4;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v14, 1332765556, v8);
  CPSDActionDescriptor::AdoptItem(v7, v14);
  v9 = operator new();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *v9 = &unk_1F00D5300;
  *(v9 + 56) = a2;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v13, 1281586286, v9);
  CPSDActionDescriptor::AdoptItem(v7, v13);
  v10 = operator new();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *v10 = &unk_1F00D5300;
  *(v10 + 56) = a3;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v12, 1298428014, v10);
  CPSDActionDescriptor::AdoptItem(v7, v12);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v12);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v13);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v14);
  return v7;
}

void sub_18DFA317C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(va1);
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v2 - 152));
  _Unwind_Resume(a1);
}

CPSDOSTypeList *CPSDObjectEffectsLayerInfo::MakeColorStopList(uint64_t a1, uint64_t a2)
{
  v3 = operator new();
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *v3 = &unk_1F00D45E8;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 60) = 1331849827;
  v5 = *(a2 + 96) - *(a2 + 88);
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 5;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v9 = *(a2 + 88) + v6;
      ColorStopObject = CPSDObjectEffectsLayerInfo::MakeColorStopObject(v3, *(v9 + 24), *(v9 + 28), *v9, *(v9 + 8), *(v9 + 16));
      CPSDOSTypeList::AdoptItem(v4, ColorStopObject);
      v6 += 32;
      --v8;
    }

    while (v8);
  }

  return v4;
}

void CPSDOSTypeList::AdoptItem(CPSDOSTypeList *this, CPSDActionBaseComponent *a2)
{
  v5 = *(this + 9);
  v4 = *(this + 10);
  if (v5 >= v4)
  {
    v7 = *(this + 8);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDLayerChannelGroup *>>(this + 64, v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = v12 + 8 * v11;
    v13 = (v12 + 8 * v8);
    *v13 = a2;
    v6 = v13 + 1;
    v15 = *(this + 8);
    v16 = *(this + 9) - v15;
    v17 = v13 - v16;
    memcpy(v13 - v16, v15, v16);
    v18 = *(this + 8);
    *(this + 8) = v17;
    *(this + 9) = v6;
    *(this + 10) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(this + 9) = v6;
  ++*(this + 14);
}

CPSDOSTypeList *CPSDObjectEffectsLayerInfo::MakeTransparencyStopList(uint64_t a1, uint64_t a2)
{
  v3 = operator new();
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *v3 = &unk_1F00D45E8;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 60) = 1331849827;
  v5 = *(a2 + 120) - *(a2 + 112);
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 4;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    do
    {
      v9 = *(a2 + 112) + v6;
      v10 = *v9;
      TransparencyStopObject = CPSDObjectEffectsLayerInfo::MakeTransparencyStopObject(v3, *(v9 + 8), *(v9 + 12), v10);
      CPSDOSTypeList::AdoptItem(v4, TransparencyStopObject);
      v6 += 16;
      --v8;
    }

    while (v8);
  }

  return v4;
}

CPSDActionKeyedItem *CPSDObjectEffectsLayerInfo::MakeGradientDescriptor(uint64_t a1, uint64_t a2)
{
  v3 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v3, "Gradient", 1198679150);
  v4 = operator new();
  v5 = operator new();
  CPSDOSTypeText::CPSDOSTypeText(v5, "Custom");
  CPSDActionKeyedItem::CPSDActionKeyedItem(v4, 1315774496, v5);
  CPSDActionDescriptor::AdoptItem(v3, v4);
  v6 = operator new();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *v6 = &unk_1F00D5390;
  *(v6 + 56) = 0;
  *(v6 + 88) = 0;
  *(v6 + 64) = 1198679110;
  *(v6 + 80) = 1131639891;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v18, 1198679110, v6);
  CPSDActionDescriptor::AdoptItem(v3, v18);
  v7 = operator new();
  v8 = *(a2 + 8);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *v7 = &unk_1F00D5348;
  *(v7 + 56) = v8;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v17, 1231975538, v7);
  v9 = CPSDActionDescriptor::AdoptItem(v3, v17);
  ColorStopList = CPSDObjectEffectsLayerInfo::MakeColorStopList(v9, a2);
  CPSDActionKeyedItem::CPSDActionKeyedItem(v16, 1131180659, ColorStopList);
  v11 = CPSDActionDescriptor::AdoptItem(v3, v16);
  TransparencyStopList = CPSDObjectEffectsLayerInfo::MakeTransparencyStopList(v11, a2);
  CPSDActionKeyedItem::CPSDActionKeyedItem(v15, 1416785523, TransparencyStopList);
  CPSDActionDescriptor::AdoptItem(v3, v15);
  v13 = operator new();
  CPSDActionKeyedItem::CPSDActionKeyedItem(v13, 1198678372, v3);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v15);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v16);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v17);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v18);
  return v13;
}

void sub_18DFA36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  MEMORY[0x193AC64C0](v32, v31);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a9);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a20);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a31);
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v33 - 136));
  _Unwind_Resume(a1);
}

void CPSDActionDescriptor::CPSDActionDescriptor(CPSDActionDescriptor *this, const char *a2, int a3)
{
  CPSDActionDescriptor::CPSDActionDescriptor(this);
  *(v6 + 84) = a3;
  CPSDString::CPSDString(&v7, a2);
  CPSDString::operator=((this + 56), &v7);
  if (v8)
  {
    MEMORY[0x193AC64A0](v8, 0x1000C80BDFB0063);
  }
}

void sub_18DFA37D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x193AC64A0](a10, 0x1000C80BDFB0063);
  }

  CPSDActionDescriptor::~CPSDActionDescriptor(v10);
  _Unwind_Resume(a1);
}

void CPSDOSTypeText::CPSDOSTypeText(CPSDOSTypeText *this, const char *a2)
{
  CPSDOSTypeText::CPSDOSTypeText(this);
  CPSDString::CPSDString(&v4, a2);
  CPSDString::operator=((this + 56), &v4);
  if (v5)
  {
    MEMORY[0x193AC64A0](v5, 0x1000C80BDFB0063);
  }
}

void sub_18DFA3878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x193AC64A0](a10, 0x1000C80BDFB0063);
  }

  CPSDOSTypeText::~CPSDOSTypeText(v10);
  _Unwind_Resume(a1);
}

CPSDActionDescriptor *CPSDObjectEffectsLayerInfo::MakeGradientOverlayObject(uint64_t a1, uint64_t a2)
{
  v3 = operator new();
  CPSDActionDescriptor::CPSDActionDescriptor(v3);
  *(v3 + 21) = 1198671468;
  v4 = operator new();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *v4 = &unk_1F00D4630;
  *(v4 + 56) = 1;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v31, 1701732706, v4);
  CPSDActionDescriptor::AdoptItem(v3, v31);
  v5 = operator new();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *v5 = &unk_1F00D5390;
  *(v5 + 56) = 0;
  *(v5 + 88) = 0;
  *(v5 + 64) = 1114402381;
  *(v5 + 80) = 1316121964;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v30, 1298407456, v5);
  CPSDActionDescriptor::AdoptItem(v3, v30);
  v6 = operator new();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *v6 = &unk_1F00D4678;
  *(v6 + 56) = 592474723;
  *(v6 + 64) = 0x4059000000000000;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v29, 1332765556, v6);
  v7 = CPSDActionDescriptor::AdoptItem(v3, v29);
  GradientDescriptor = CPSDObjectEffectsLayerInfo::MakeGradientDescriptor(v7, a2);
  CPSDActionDescriptor::AdoptItem(v3, GradientDescriptor);
  v9 = operator new();
  v10 = *a2;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *v9 = &unk_1F00D4678;
  *(v9 + 56) = 591490663;
  *(v9 + 64) = v10;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v28, 1097754476, v9);
  CPSDActionDescriptor::AdoptItem(v3, v28);
  v11 = operator new();
  v12 = *(a2 + 48);
  *(v11 + 16) = 0;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *v11 = &unk_1F00D5390;
  *(v11 + 56) = 0;
  *(v11 + 88) = 0;
  *(v11 + 64) = 1198679124;
  *(v11 + 80) = v12;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v27, 1417244773, v11);
  CPSDActionDescriptor::AdoptItem(v3, v27);
  v13 = operator new();
  v14 = *(a2 + 16);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *v13 = &unk_1F00D4630;
  *(v13 + 56) = v14;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v26, 1383494259, v13);
  CPSDActionDescriptor::AdoptItem(v3, v26);
  v15 = operator new();
  v16 = *(a2 + 17);
  *(v15 + 16) = 0;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *v15 = &unk_1F00D4630;
  *(v15 + 56) = v16;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v25, 1148479602, v15);
  CPSDActionDescriptor::AdoptItem(v3, v25);
  v17 = operator new();
  v18 = *(a2 + 18);
  *(v17 + 16) = 0;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *v17 = &unk_1F00D4630;
  *(v17 + 56) = v18;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v24, 1097623406, v17);
  CPSDActionDescriptor::AdoptItem(v3, v24);
  v19 = operator new();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *v19 = &unk_1F00D4678;
  *(v19 + 56) = 592474723;
  *(v19 + 64) = 0x4059000000000000;
  CPSDActionKeyedItem::CPSDActionKeyedItem(v23, 1399024672, v19);
  v20 = CPSDActionDescriptor::AdoptItem(v3, v23);
  OffsetItem = CPSDObjectEffectsLayerInfo::MakeOffsetItem(v20, 0.0, 0.0);
  CPSDActionDescriptor::AdoptItem(v3, OffsetItem);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v23);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v24);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v25);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v26);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v27);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v28);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v29);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v30);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(v31);
  return v3;
}

void sub_18DFA3D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a10);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a21);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a32);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a43);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a54);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&a65);
  CPSDActionKeyedItem::~CPSDActionKeyedItem(&STACK[0x218]);
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v65 - 208));
  CPSDActionKeyedItem::~CPSDActionKeyedItem((v65 - 120));
  _Unwind_Resume(a1);
}

uint64_t CPSDObjectEffectsLayerInfo::Load(CPSDObjectEffectsLayerInfo *this, uint64_t a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 120, 4uLL, &v5);
  *(this + 30) = bswap32(*(this + 30));
  CPSDBaseComponent::ReadFile(a2, this + 124, 4uLL, &v5);
  *(this + 31) = bswap32(*(this + 31));
  CPSDActionDescriptor::Load(this, a2);
  return 1;
}

uint64_t CPSDObjectEffectsLayerInfo::Save(CPSDObjectEffectsLayerInfo *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  (*(*a2 + 80))(a2, *(this + 30));
  (*(*a2 + 80))(a2, *(this + 31));

  return CPSDActionDescriptor::Save(this, a2);
}

size_t CPSDObjectEffectsLayerInfo::Dump(CPSDObjectEffectsLayerInfo *this, __sFILE *a2)
{
  fprintf(a2, "{ ObjectEffectsLayerInfo: objectEffectsVersion=%d, descriptorVersion=%d\n", *(this + 30), *(this + 31));
  Scale = CPSDGradientDescriptor::GetScale(this);
  fprintf(a2, "\tScale: %.0f%%\n", Scale * 100.0);
  ItemForKeyString = CPSDActionDescriptor::GetItemForKeyString(this, "masterFXSwitch");
  if (ItemForKeyString && *(ItemForKeyString + 56))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  fprintf(a2, "\tMasterFXSwitch: %s\n", v6);
  fwrite("\tEffects:\n", 0xAuLL, 1uLL, a2);
  v7 = *(this + 22);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(this + 12) + 88 * v8;
      if (*(v9 + 60) == 1198671468)
      {
        break;
      }

      if (v7 <= ++v8)
      {
        goto LABEL_14;
      }
    }

    v10 = *(v9 + 80);
    if (v10)
    {
      fwrite("\t\tGradient Overlay", 0x12uLL, 1uLL, a2);
      BlendModeForEffect = CPSDObjectEffectsLayerInfo::GetBlendModeForEffect(this, 1198671468);
      IsEnabledForEffect = CPSDObjectEffectsLayerInfo::GetIsEnabledForEffect(this, 1198671468);
      v13 = "YES";
      if (!IsEnabledForEffect)
      {
        v13 = "NO";
      }

      fprintf(a2, " <isEnabled: %s>\n", v13);
      v24 = bswap32(BlendModeForEffect);
      OpacityForEffect = CPSDObjectEffectsLayerInfo::GetOpacityForEffect(this, 1198671468);
      fprintf(a2, "\t\t\tBlend Mode: '%.4s'\n\t\t\tOpacity: %.0f%%\n", &v24, OpacityForEffect);
      (*(*v10 + 48))(v10, a2, 3);
      v7 = *(this + 22);
      if (!v7)
      {
        return fwrite("} // End ObjectEffectsLayerInfo\n", 0x20uLL, 1uLL, a2);
      }
    }

LABEL_14:
    v15 = 0;
    while (1)
    {
      v16 = *(this + 12) + 88 * v15;
      if (*(v16 + 60) == 1148343144)
      {
        break;
      }

      if (v7 <= ++v15)
      {
        return fwrite("} // End ObjectEffectsLayerInfo\n", 0x20uLL, 1uLL, a2);
      }
    }

    v17 = *(v16 + 80);
    if (v17)
    {
      fwrite("\t\tDrop Shadow", 0xDuLL, 1uLL, a2);
      BlendMode = CPSDDropShadowDescriptor::GetBlendMode(v17);
      v19 = CPSDObjectEffectsLayerInfo::GetIsEnabledForEffect(this, 1148343144);
      v20 = "YES";
      if (!v19)
      {
        v20 = "NO";
      }

      fprintf(a2, " <isEnabled: %s>\n", v20);
      v23 = bswap32(BlendMode);
      Opacity = CPSDDropShadowDescriptor::GetOpacity(v17);
      fprintf(a2, "\t\t\tBlend Mode: '%.4s'\n\t\t\tOpacity: %.0f%%\n", &v23, Opacity);
      (*(*v17 + 56))(v17, a2, 3);
    }
  }

  return fwrite("} // End ObjectEffectsLayerInfo\n", 0x20uLL, 1uLL, a2);
}

uint64_t CPSDObjectEffectsLayerInfo::GetMasterEffectsSwitch(CPSDObjectEffectsLayerInfo *this)
{
  result = CPSDActionDescriptor::GetItemForKeyString(this, "masterFXSwitch");
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t CPSDObjectEffectsLayerInfo::GetIsEnabledForEffect(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a1 + 96) + 88 * v3;
    if (*(v4 + 60) == a2)
    {
      break;
    }

    if (v2 <= ++v3)
    {
      return 0;
    }
  }

  v5 = *(v4 + 80);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 96);
  if (*(v6 + 60) != 1701732706)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while (*(v6 + 88 * v7 + 60) != 1701732706);
    v6 += 88 * v7;
  }

  return *(*(v6 + 80) + 56);
}

uint64_t CPSDUnicodeLayerName::Load(CPSDUnicodeLayerName *this, int a2)
{
  v8 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v8);
  v4 = bswap32(*(this + 14));
  *(this + 14) = v4;
  result = malloc_type_calloc(v4 + 1, 2uLL, 0x1000040BDFB0063uLL);
  *(this + 8) = result;
  if (result)
  {
    CPSDBaseComponent::ReadFile(a2, result, (2 * *(this + 14)), &v8);
    if (v8 >= 2)
    {
      v6 = v8 >> 1;
      v7 = *(this + 8);
      do
      {
        *v7 = bswap32(*v7) >> 16;
        ++v7;
        --v6;
      }

      while (v6);
    }

    return 1;
  }

  return result;
}

uint64_t CPSDUnicodeLayerName::Load(CPSDUnicodeLayerName *this, int a2, int a3)
{
  *(this + 14) = a3;
  result = malloc_type_calloc((a3 + 1), 2uLL, 0x1000040BDFB0063uLL);
  *(this + 8) = result;
  if (result)
  {
    v8 = 0;
    fprintf(__stderrp, "length of unicode string: %d\n", *(this + 14));
    CPSDBaseComponent::ReadFile(a2, *(this + 8), (2 * *(this + 14)), &v8);
    if (v8 >= 2)
    {
      v6 = v8 >> 1;
      v7 = *(this + 8);
      do
      {
        *v7 = bswap32(*v7) >> 16;
        ++v7;
        --v6;
      }

      while (v6);
    }

    return 1;
  }

  return result;
}

uint64_t CPSDUnicodeLayerName::Save(CPSDUnicodeLayerName *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  (*(*a2 + 80))(a2, *(this + 14));
  v4 = *(this + 8);
  v5 = *(this + 14);
  v6 = *(*a2 + 40);

  return v6(a2, v4, v5);
}

void CPSDUnicodeLayerName::~CPSDUnicodeLayerName(CPSDUnicodeLayerName *this)
{
  *this = &unk_1F00D4BB0;
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
  }

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

{
  CPSDUnicodeLayerName::~CPSDUnicodeLayerName(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(CPSDAdditionalLayerInfoItem *this)
{
  *this = &unk_1F00D51B0;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F00D5720;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }
}

{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

uint64_t CPSDSectionDivider::Load(CPSDSectionDivider *this, int a2)
{
  v5 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 4uLL, &v5);
  *(this + 14) = bswap32(*(this + 14));
  if (*(this + 4) >= 0xCu)
  {
    CPSDBaseComponent::ReadFile(a2, this + 60, 4uLL, &v5);
    *(this + 15) = bswap32(*(this + 15));
    CPSDBaseComponent::ReadFile(a2, this + 64, 4uLL, &v5);
    *(this + 16) = bswap32(*(this + 16));
  }

  return 1;
}

uint64_t CPSDSectionDivider::Save(CPSDSectionDivider *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  result = (*(*a2 + 80))(a2, *(this + 14));
  if (*(this + 4) >= 0xCu)
  {
    (*(*a2 + 80))(a2, *(this + 15));
    v5 = *(this + 16);
    v6 = *(*a2 + 80);

    return v6(a2, v5);
  }

  return result;
}

uint64_t CPSDFillOpacityObject::Load(CPSDFillOpacityObject *this, int a2)
{
  v3 = 0;
  CPSDBaseComponent::ReadFile(a2, this + 56, 1uLL, &v3);
  return 1;
}

uint64_t CPSDFillOpacityObject::Save(CPSDFillOpacityObject *this, File *a2)
{
  CPSDAdditionalLayerInfoItem::Save(this, a2);
  v4 = *(this + 56);
  v5 = *(*a2 + 64);

  return v5(a2, v4);
}

void CPSDLayerImage::~CPSDLayerImage(CPSDLayerImage *this)
{
  *this = &unk_1F00D4338;
  CPSDChannelImage::DeAllocateChannelBuffers(this);
}

{
  *this = &unk_1F00D4338;
  CPSDChannelImage::DeAllocateChannelBuffers(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDLayerSliceImage::~CPSDLayerSliceImage(CPSDLayerSliceImage *this)
{
  *this = &unk_1F00D4338;
  CPSDChannelImage::DeAllocateChannelBuffers(this);
}

{
  *this = &unk_1F00D4338;
  CPSDChannelImage::DeAllocateChannelBuffers(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDCompositeImage::~CPSDCompositeImage(CPSDCompositeImage *this)
{
  *this = &unk_1F00D4338;
  CPSDChannelImage::DeAllocateChannelBuffers(this);
}

{
  *this = &unk_1F00D4338;
  CPSDChannelImage::DeAllocateChannelBuffers(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDDummyResourceItem::~CPSDDummyResourceItem(CPSDDummyResourceItem *this)
{
  CPSDDummyResourceItem::~CPSDDummyResourceItem(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D4CD0;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x1000C8077774924);
  }

  *this = &unk_1F00D5720;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }
}

void CPSDICCProfileResourceItem::~CPSDICCProfileResourceItem(CPSDICCProfileResourceItem *this)
{
  CPSDICCProfileResourceItem::~CPSDICCProfileResourceItem(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D4D40;
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
  }

  *this = &unk_1F00D5720;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }
}

void CPSDICCUntaggedResourceItem::~CPSDICCUntaggedResourceItem(CPSDICCUntaggedResourceItem *this)
{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDGlobalAngleResourceItem::~CPSDGlobalAngleResourceItem(CPSDGlobalAngleResourceItem *this)
{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDGlobalAltitudeResourceItem::~CPSDGlobalAltitudeResourceItem(CPSDGlobalAltitudeResourceItem *this)
{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDSliceResource::~CPSDSliceResource(CPSDSliceResource *this)
{
  CPSDSliceResource::~CPSDSliceResource(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D4EC8;
  v2 = *(this + 19);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x1000C80BDFB0063);
    *(this + 19) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C80BDFB0063);
    *(this + 16) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x193AC64A0](v4, 0x1000C80BDFB0063);
    *(this + 14) = 0;
  }

  v5 = *(this + 12);
  if (v5)
  {
    MEMORY[0x193AC64A0](v5, 0x1000C80BDFB0063);
    *(this + 12) = 0;
  }

  v6 = *(this + 10);
  if (v6)
  {
    MEMORY[0x193AC64A0](v6, 0x1000C80BDFB0063);
    *(this + 10) = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {
    MEMORY[0x193AC64A0](v7, 0x1000C80BDFB0063);
    *(this + 5) = 0;
  }
}

void CPSDUnicodeChannelNames::~CPSDUnicodeChannelNames(CPSDUnicodeChannelNames *this)
{
  CPSDUnicodeChannelNames::~CPSDUnicodeChannelNames(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D4F40;
  v3 = (this + 48);
  std::vector<CPSDString>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F00D5720;
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x1000C8077774924);
  }
}

void CPSDPathResource::~CPSDPathResource(CPSDPathResource *this)
{
  *this = &unk_1F00D5150;
  v1 = *(this + 3);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x20C8093837F09);
  }
}

{
  *this = &unk_1F00D5150;
  v1 = *(this + 3);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x20C8093837F09);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDXMPResourceItem::~CPSDXMPResourceItem(CPSDXMPResourceItem *this)
{
  CPSDXMPResourceItem::~CPSDXMPResourceItem(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D5248;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x193AC64A0](v2, 0x1000C8077774924);
  }

  *this = &unk_1F00D5720;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }
}

void CPSDVectorMaskData::~CPSDVectorMaskData(CPSDVectorMaskData *this)
{
  *this = &unk_1F00D4528;
  CPSDPathsResourceItem::~CPSDPathsResourceItem((this + 56));

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

{
  *this = &unk_1F00D4528;
  CPSDPathsResourceItem::~CPSDPathsResourceItem((this + 56));
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDOSTypeInteger::~CPSDOSTypeInteger(CPSDOSTypeInteger *this)
{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDOSTypeDouble::~CPSDOSTypeDouble(CPSDOSTypeDouble *this)
{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDOSTypeBoolean::~CPSDOSTypeBoolean(CPSDOSTypeBoolean *this)
{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDOSTypeUnitFloat::~CPSDOSTypeUnitFloat(CPSDOSTypeUnitFloat *this)
{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDOSTypeEnumerated::~CPSDOSTypeEnumerated(CPSDOSTypeEnumerated *this)
{
  CPSDOSTypeEnumerated::~CPSDOSTypeEnumerated(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D5390;
  if (*(this + 14))
  {
    v2 = *(this + 9);
    if (v2)
    {
      MEMORY[0x193AC64A0](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 15))
  {
    v3 = *(this + 11);
    if (v3)
    {
      MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
    }
  }

  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);
}

void CPSDSectionDivider::~CPSDSectionDivider(CPSDSectionDivider *this)
{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDFillOpacityObject::~CPSDFillOpacityObject(CPSDFillOpacityObject *this)
{
  CPSDAdditionalLayerInfoItem::~CPSDAdditionalLayerInfoItem(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDDropShadowDescriptor::~CPSDDropShadowDescriptor(CPSDDropShadowDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDInnerShadowDescriptor::~CPSDInnerShadowDescriptor(CPSDInnerShadowDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDInnerGlowDescriptor::~CPSDInnerGlowDescriptor(CPSDInnerGlowDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDOuterGlowDescriptor::~CPSDOuterGlowDescriptor(CPSDOuterGlowDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDBevelEmbossDescriptor::~CPSDBevelEmbossDescriptor(CPSDBevelEmbossDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDColorOverlayDescriptor::~CPSDColorOverlayDescriptor(CPSDColorOverlayDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDGradientDescriptor::~CPSDGradientDescriptor(CPSDGradientDescriptor *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDGradientFillInfo::~CPSDGradientFillInfo(CPSDGradientFillInfo *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDColorFillInfo::~CPSDColorFillInfo(CPSDColorFillInfo *this)
{
  CPSDActionDescriptor::~CPSDActionDescriptor(this);

  JUMPOUT(0x193AC64C0);
}

void CPSDLayerChannelGroup::~CPSDLayerChannelGroup(CPSDLayerChannelGroup *this)
{
  CPSDLayerChannelGroup::~CPSDLayerChannelGroup(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D55C0;
  v1 = *(this + 4);
  if (v1)
  {
    v2 = v1 - 16;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = (v1 + 56 * v3 - 56);
      v5 = -56 * v3;
      do
      {
        CPSDChannelData::~CPSDChannelData(v4);
        v4 = (v6 - 56);
        v5 += 56;
      }

      while (v5);
    }

    MEMORY[0x193AC64A0](v2, 0x10B1C8014B8BDFCLL);
  }
}

size_t CPSDLayerChannelGroup::Dump(CPSDLayerChannelGroup *this, __sFILE *__stream)
{
  fwrite("ChannelData: {", 0xEuLL, 1uLL, __stream);
  if (*(this + 6))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      fprintf(__stream, "[%d] = ", v5);
      (*(*(*(this + 4) + v4) + 40))(*(this + 4) + v4, __stream);
      ++v5;
      v4 += 56;
    }

    while (v5 < *(this + 6));
  }

  return fwrite("}\n", 2uLL, 1uLL, __stream);
}

void CPSDLayerAndMaskInfo::~CPSDLayerAndMaskInfo(CPSDLayerAndMaskInfo *this)
{
  CPSDLayerAndMaskInfo::~CPSDLayerAndMaskInfo(this);

  JUMPOUT(0x193AC64C0);
}

{
  *this = &unk_1F00D41B8;
  *(this + 17) = &unk_1F00D51F0;
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  CPSDLayerInfo::~CPSDLayerInfo((this + 24));
}

uint64_t std::vector<CPSDLayerRecord>::__emplace_back_slow_path<CPSDLayerRecord>(uint64_t a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1D6)
  {
    std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
  }

  if (0x9F79B47582192E2ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4FBCDA3AC10C9715 * ((*(a1 + 16) - *a1) >> 3)) >= 0x4325C53EF368EBLL)
  {
    v6 = 0x864B8A7DE6D1D6;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDLayerRecord>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = v7 + 488 * v2;
  *(&v16 + 1) = v7 + 488 * v6;
  CPSDLayerRecord::CPSDLayerRecord(v15, a2);
  *&v16 = v15 + 488;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDLayerRecord>,CPSDLayerRecord*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<CPSDLayerRecord>::~__split_buffer(&v14);
  return v13;
}

void sub_18DFA5ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CPSDLayerRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t CPSDLayerRecord::CPSDLayerRecord(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_1F00D42A8;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 88);
  *(a1 + 80) = &unk_1F00D44E8;
  *(a1 + 88) = v6;
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  v9 = *(a2 + 152);
  *(a1 + 144) = &unk_1F00D4568;
  *(a1 + 152) = v9;
  v10 = *(a2 + 160);
  LODWORD(v9) = *(a2 + 168);
  *(a1 + 176) = 0;
  v11 = (a1 + 176);
  *(v11 - 2) = v9;
  *(v11 - 2) = v10;
  v11[1] = 0;
  v11[2] = 0;
  std::vector<CPSDChannelBlendingInfo>::__init_with_size[abi:ne200100]<CPSDChannelBlendingInfo*,CPSDChannelBlendingInfo*>(v11, *(a2 + 176), *(a2 + 184), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 184) - *(a2 + 176)) >> 3));
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  v15 = *(a2 + 264);
  v16 = *(a2 + 280);
  v17 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v17;
  *(a1 + 264) = v15;
  *(a1 + 280) = v16;
  v18 = *(a2 + 328);
  v19 = *(a2 + 344);
  v20 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v20;
  *(a1 + 328) = v18;
  *(a1 + 344) = v19;
  v21 = *(a2 + 392);
  v22 = *(a2 + 408);
  v23 = *(a2 + 440);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 440) = v23;
  *(a1 + 392) = v21;
  *(a1 + 408) = v22;
  *(a1 + 456) = &unk_1F00D51F0;
  *(a1 + 472) = *(a2 + 472);
  *(a2 + 472) = 0;
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 480) = 0;
  return a1;
}

void sub_18DFA5C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CPSDChannelBlendingInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<CPSDChannelBlendingInfo>::__init_with_size[abi:ne200100]<CPSDChannelBlendingInfo*,CPSDChannelBlendingInfo*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<CPSDChannelBlendingInfo>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    if (a2 != a3)
    {
      v8 = v6[1];
      do
      {
        v9 = *(a2 + 8);
        *v7 = &unk_1F00D45A8;
        v7[1] = v9;
        v7[2] = *(a2 + 16);
        a2 += 24;
        v7 += 3;
        v8 += 24;
      }

      while (a2 != a3);
    }

    v6[1] = v7;
  }

  return result;
}

uint64_t std::vector<CPSDChannelBlendingInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDChannelBlendingInfo>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 24 * v4;
  return result;
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDChannelBlendingInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void std::vector<CPSDChannelBlendingInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDLayerRecord>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x864B8A7DE6D1D7)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDLayerRecord>,CPSDLayerRecord*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = CPSDLayerRecord::CPSDLayerRecord(a4 + v7, v8);
      v8 += 488;
      v7 += 488;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        result = (**v6)(v6);
        v6 += 61;
        v10 += 61;
      }

      while (v6 != a3);
    }
  }

  return result;
}

void sub_18DFA5FB4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDLayerRecord>,CPSDLayerRecord*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<CPSDLayerRecord>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 488;
    (**(i - 488))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<CPSDChannelLengthInfo>::__append(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v4 + 24 * a2;
      v12 = result[1];
      do
      {
        *v4 = &unk_1F00D44A8;
        *(v4 + 16) = 0;
        *(v4 + 20) = 0;
        v4 += 24;
        v12 += 24;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      v10 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDChannelLengthInfo>>(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = v10 + 24 * v6;
    v20 = v10;
    v21 = v13;
    *(&v22 + 1) = v10 + 24 * v9;
    v14 = v13;
    v15 = v13;
    do
    {
      *v15 = &unk_1F00D44A8;
      *(v15 + 16) = 0;
      *(v15 + 20) = 0;
      v15 += 24;
      v14 += 24;
    }

    while (v15 != v13 + 24 * a2);
    *&v22 = v13 + 24 * a2;
    v16 = *(v3 + 8);
    v17 = v13 + *v3 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDChannelLengthInfo>,CPSDChannelLengthInfo*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<CPSDChannelLengthInfo>::~__split_buffer(&v20);
  }

  return result;
}

void sub_18DFA61E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CPSDChannelLengthInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDChannelLengthInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDChannelLengthInfo>,CPSDChannelLengthInfo*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 16);
    v7 = a2;
    do
    {
      v8 = v7[1];
      *(v6 - 2) = &unk_1F00D44A8;
      *(v6 - 1) = v8;
      *v6 = v7[2];
      v6 += 3;
      v7 += 3;
      a4 += 24;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 3;
        (*v11)(v5);
        v9 += 3;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t std::__split_buffer<CPSDChannelLengthInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<CPSDLayerChannelGroup *>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDLayerChannelGroup *>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = (v11 + 8 * v8);
    v13 = v11 + 8 * v10;
    bzero(v12, 8 * a2);
    v14 = &v12[8 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDLayerChannelGroup *>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void CPSDLayerChannelGroup::CPSDLayerChannelGroup(CPSDLayerChannelGroup *this, CPSDLayerRecord *a2)
{
  *this = &unk_1F00D55C0;
  *(this + 2) = a2;
  v3 = *(a2 + 16);
  *(this + 6) = v3;
  v4 = operator new[]();
  *v4 = 56;
  v4[1] = v3;
  if (v3)
  {
    v5 = v4 + 6;
    v6 = 56 * v3;
    v7 = v4 + 2;
    do
    {
      *(v5 - 4) = &unk_1F00D4208;
      *(v5 - 2) = 0;
      *(v5 - 4) = 0;
      *v5 = 0;
      v5[1] = 0;
      *(v5 + 4) = 0;
      v5 += 7;
      v7 += 7;
      v6 -= 56;
    }

    while (v6);
  }

  *(this + 4) = v4 + 2;
}

void CPSDResourceItem::~CPSDResourceItem(CPSDResourceItem *this)
{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }
}

{
  *this = &unk_1F00D5720;
  v1 = *(this + 4);
  if (v1)
  {
    MEMORY[0x193AC64A0](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDSlicesResourceItem::CPSDSlicesResourceItem(CPSDSlicesResourceItem *this, CPSDImageResourceBlock *a2, int a3)
{
  *(this + 4) = a3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *this = &unk_1F00D4130;
  *(this + 10) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  CPSDString::AllocateCharData((this + 72), 1);
  **(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
}

void sub_18DFA66F4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F00D5720;
  v3 = v1[4];
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void CPSDXMPResourceItem::CPSDXMPResourceItem(CPSDXMPResourceItem *this, CPSDImageResourceBlock *a2, int a3)
{
  *(this + 4) = a3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *this = &unk_1F00D5248;
  *(this + 6) = operator new[]();
}

void sub_18DFA67A0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F00D5720;
  v3 = v1[4];
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CPSDString>::__construct_one_at_end[abi:ne200100]<CPSDString const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v3[1] = 0;
  v4 = *(a2 + 8);
  CPSDString::AllocateCharData(v3, *a2);
  result = memcpy(v3[1], v4, (2 * *v3));
  *(a1 + 8) = v3 + 2;
  return result;
}

uint64_t std::vector<CPSDString>::__emplace_back_slow_path<CPSDString const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    v8 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDString>>(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = (v8 + 16 * v2);
  v17 = v8;
  v18 = v9;
  *&v19 = v9;
  *(&v19 + 1) = v8 + 16 * v7;
  v9[1] = 0;
  v10 = *(a2 + 8);
  CPSDString::AllocateCharData(v9, *a2);
  memcpy(v9[1], v10, (2 * *v9));
  *&v19 = v19 + 16;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDString>,CPSDString*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<CPSDString>::~__split_buffer(&v17);
  return v16;
}

void sub_18DFA6960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CPSDString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDString>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDString>,CPSDString*>(uint64_t a1, uint64_t a2, uint64_t a3, CPSDString *this)
{
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  i = 0;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v4 = this;
    v6 = a2;
    v7 = a2;
    do
    {
      v4[1] = 0;
      v8 = *(v7 + 8);
      CPSDString::AllocateCharData(v4, *v7);
      memcpy(v4[1], v8, (2 * *v4));
      v7 += 16;
      v4 = (v14 + 16);
      v14 = (v14 + 16);
    }

    while (v7 != a3);
    for (i = 1; v6 != a3; v6 += 16)
    {
      v9 = *(v6 + 8);
      if (v9)
      {
        MEMORY[0x193AC64A0](v9, 0x1000C80BDFB0063);
        *(v6 + 8) = 0;
      }
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CPSDString>,CPSDString*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CPSDString>,CPSDString*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CPSDString>,CPSDString*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<CPSDString>,CPSDString*>::operator()[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    if (result)
    {
      result = MEMORY[0x193AC64A0](result, 0x1000C80BDFB0063);
      *(v3 - 8) = 0;
    }
  }

  return result;
}

uint64_t std::__split_buffer<CPSDString>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CPSDString>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<CPSDString>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 16;
      result = *(v2 - 8);
      if (result)
      {
        result = MEMORY[0x193AC64A0](result, 0x1000C80BDFB0063);
        *(v2 - 8) = 0;
        v2 = *(v4 + 16);
      }

      else
      {
        v2 -= 16;
      }
    }

    while (v2 != a2);
  }

  return result;
}

void CPSDSliceResource::CPSDSliceResource(CPSDSliceResource *this)
{
  *this = &unk_1F00D4EC8;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CPSDString::AllocateCharData((this + 32), 1);
  **(this + 5) = 0;
  *(this + 10) = 0;
  *(this + 16) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  CPSDString::AllocateCharData((this + 72), 1);
  **(this + 10) = 0;
  *(this + 12) = 0;
  CPSDString::AllocateCharData((this + 88), 1);
  **(this + 12) = 0;
  *(this + 14) = 0;
  CPSDString::AllocateCharData((this + 104), 1);
  **(this + 14) = 0;
  *(this + 16) = 0;
  CPSDString::AllocateCharData((this + 120), 1);
  **(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 19) = 0;
  CPSDString::AllocateCharData((this + 144), 1);
  **(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
}

void sub_18DFA6DC8(_Unwind_Exception *exception_object)
{
  v3 = v1[16];
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C80BDFB0063);
    v1[16] = 0;
  }

  v4 = v1[14];
  if (v4)
  {
    MEMORY[0x193AC64A0](v4, 0x1000C80BDFB0063);
    v1[14] = 0;
  }

  v5 = v1[12];
  if (v5)
  {
    MEMORY[0x193AC64A0](v5, 0x1000C80BDFB0063);
    v1[12] = 0;
  }

  v6 = v1[10];
  if (v6)
  {
    MEMORY[0x193AC64A0](v6, 0x1000C80BDFB0063);
    v1[10] = 0;
  }

  v7 = v1[5];
  if (v7)
  {
    MEMORY[0x193AC64A0](v7, 0x1000C80BDFB0063);
    v1[5] = 0;
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CPSDLayerRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 61;
      v7 = v4 - 61;
      do
      {
        (**v7)(v7);
        v6 -= 61;
        v8 = v7 == v2;
        v7 -= 61;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CPSDLayerRecord *std::vector<CPSDLayerRecord>::__append(uint64_t a1, unint64_t a2)
{
  v6 = a1 + 8;
  result = *(a1 + 8);
  v5 = *(v6 + 8);
  if (0x4FBCDA3AC10C9715 * ((v5 - result) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = (result + 488 * a2);
      v13 = 488 * a2;
      do
      {
        CPSDLayerRecord::CPSDLayerRecord(result);
        result = (v14 + 488);
        v13 -= 488;
      }

      while (v13);
      result = v12;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v7 = 0x4FBCDA3AC10C9715 * ((result - *a1) >> 3);
    if (v7 + a2 > 0x864B8A7DE6D1D6)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x4FBCDA3AC10C9715 * ((v5 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x4325C53EF368EBLL)
    {
      v10 = 0x864B8A7DE6D1D6;
    }

    else
    {
      v10 = v9;
    }

    v27 = a1;
    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDLayerRecord>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = (v11 + 488 * v7);
    v24 = v11;
    v25 = v15;
    *(&v26 + 1) = v11 + 488 * v10;
    v16 = 488 * a2;
    v17 = v15 + 488 * a2;
    v18 = v15;
    do
    {
      CPSDLayerRecord::CPSDLayerRecord(v18);
      v18 = (v19 + 488);
      v16 -= 488;
    }

    while (v16);
    *&v26 = v17;
    v20 = *(a1 + 8);
    v21 = v15 + *a1 - v20;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDLayerRecord>,CPSDLayerRecord*>(a1, *a1, v20, v21);
    v22 = *a1;
    *a1 = v21;
    v23 = *(a1 + 16);
    *(a1 + 8) = v26;
    *&v26 = v22;
    *(&v26 + 1) = v23;
    v24 = v22;
    v25 = v22;
    return std::__split_buffer<CPSDLayerRecord>::~__split_buffer(&v24);
  }

  return result;
}

void sub_18DFA70C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CPSDLayerRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<CPSDChannelBlendingInfo>::__append(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = &v4[3 * a2];
      v12 = result[1];
      do
      {
        *v4 = &unk_1F00D45A8;
        v4[2] = 0;
        v4 += 3;
        v12 += 24;
      }

      while (v4 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      v10 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDChannelBlendingInfo>>(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = (v10 + 24 * v6);
    v20 = v10;
    v21 = v13;
    *(&v22 + 1) = v10 + 24 * v9;
    v14 = v13;
    v15 = v13;
    do
    {
      *v15 = &unk_1F00D45A8;
      v15[2] = 0;
      v15 += 3;
      v14 += 3;
    }

    while (v15 != &v13[3 * a2]);
    *&v22 = &v13[3 * a2];
    v16 = *(v3 + 8);
    v17 = v13 + *v3 - v16;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDChannelBlendingInfo>,CPSDChannelBlendingInfo*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<CPSDChannelLengthInfo>::~__split_buffer(&v20);
  }

  return result;
}

void sub_18DFA7274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CPSDChannelLengthInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDChannelBlendingInfo>,CPSDChannelBlendingInfo*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 16);
    v7 = a2;
    do
    {
      v8 = v7[1];
      *(v6 - 2) = &unk_1F00D45A8;
      *(v6 - 1) = v8;
      *v6 = v7[2];
      v6 += 3;
      v7 += 3;
      a4 += 24;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v9 = a2;
      v10 = a2;
      do
      {
        v11 = *v10;
        v10 += 3;
        (*v11)(v5);
        v9 += 3;
        v5 = v10;
      }

      while (v10 != a3);
    }
  }
}

void CPSDOSTypeText::CPSDOSTypeText(CPSDOSTypeText *this)
{
  *(this + 4) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *this = &unk_1F00D46C0;
  *(this + 8) = 0;
  CPSDString::AllocateCharData((this + 56), 1);
  **(this + 8) = 0;
}

void std::vector<CPSDActionKeyedItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 88;
      v7 = v4 - 88;
      v8 = v4 - 88;
      do
      {
        v9 = *v8;
        v8 -= 88;
        (*v9)(v7);
        v6 -= 88;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::vector<CPSDActionKeyedItem>::__append(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v4 + 88 * a2;
      v12 = 88 * a2;
      v13 = v4 + 56;
      do
      {
        *(v13 - 40) = 0;
        *(v13 - 32) = 0uLL;
        *(v13 - 16) = 0uLL;
        *(v13 - 56) = &unk_1F00D4708;
        *(v13 + 24) = 0;
        v4 += 88;
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        v13 += 88;
        v12 -= 88;
      }

      while (v12);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x1745D1745D1745DLL)
    {
      v9 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v9 = v7;
    }

    v25 = result;
    if (v9)
    {
      v10 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDActionKeyedItem>>(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = v10 + 88 * v6;
    v22 = v10;
    v23 = v14;
    *(&v24 + 1) = v10 + 88 * v9;
    v15 = 88 * a2;
    v16 = v14 + 56;
    v17 = v14;
    do
    {
      *(v16 - 40) = 0;
      *(v16 - 32) = 0uLL;
      *(v16 - 16) = 0uLL;
      *(v16 - 56) = &unk_1F00D4708;
      *(v16 + 24) = 0;
      v17 += 88;
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      v16 += 88;
      v15 -= 88;
    }

    while (v15);
    *&v24 = v14 + 88 * a2;
    v18 = *(v3 + 8);
    v19 = v14 + *v3 - v18;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDActionKeyedItem>,CPSDActionKeyedItem*>(v3, *v3, v18, v19);
    v20 = *v3;
    *v3 = v19;
    v21 = *(v3 + 16);
    *(v3 + 8) = v24;
    *&v24 = v20;
    *(&v24 + 1) = v21;
    v22 = v20;
    v23 = v20;
    return std::__split_buffer<CPSDActionKeyedItem>::~__split_buffer(&v22);
  }

  return result;
}

void sub_18DFA7664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<CPSDActionKeyedItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDActionKeyedItem>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x2E8BA2E8BA2E8BBLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDActionKeyedItem>,CPSDActionKeyedItem*>(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 40);
    v7 = a2;
    do
    {
      *(v6 - 6) = 0;
      *(v6 - 1) = 0uLL;
      *v6 = 0uLL;
      v8 = v7[1];
      *(v6 - 5) = &unk_1F00D4708;
      *(v6 - 4) = v8;
      v9 = *(v7 + 1);
      *(v6 - 1) = v7[4];
      *(v6 - 24) = v9;
      *v6 = *(v7 + 5);
      v10 = *(v7 + 9);
      v6[1] = *(v7 + 7);
      v6[2] = v10;
      v7[10] = 0;
      v7[8] = 0;
      v7 += 11;
      v6 = (v6 + 88);
      a4 += 88;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v11 = a2;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 11;
        (*v13)(v5);
        v11 += 11;
        v5 = v12;
      }

      while (v12 != a3);
    }
  }
}

uint64_t std::__split_buffer<CPSDActionKeyedItem>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 88);
    *(a1 + 16) = i - 88;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<CPSDActionKeyedItem>::__emplace_back_slow_path<CPSDActionKeyedItem>(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<CPSDActionKeyedItem>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + 88 * v2;
  v18 = v7;
  v19 = v8;
  *(&v20 + 1) = v7 + 88 * v6;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  v9 = *(a2 + 8);
  *v8 = &unk_1F00D4708;
  *(v8 + 8) = v9;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 16) = v10;
  *(v8 + 40) = *(a2 + 40);
  v11 = *(a2 + 56);
  *(v8 + 72) = *(a2 + 72);
  *(v8 + 56) = v11;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *&v20 = v8 + 88;
  v12 = *(a1 + 8);
  v13 = v8 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDActionKeyedItem>,CPSDActionKeyedItem*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<CPSDActionKeyedItem>::~__split_buffer(&v18);
  return v17;
}

void sub_18DFA79B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CPSDActionKeyedItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CPSDString::CPSDString(CPSDString *this, const char *a2)
{
  *(this + 1) = 0;
  CPSDString::AllocateCharData(this, 1);
  **(this + 1) = 0;
  v4 = strlen(a2) + 1;
  CPSDString::AllocateCharData(this, v4);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 1);
    do
    {
      v7 = *a2++;
      *(v6 + v5) = v7;
      *(v6 + (v5 + 1)) = 0;
      v5 += 2;
    }

    while (2 * v4 != v5);
  }
}

void sub_18DFA7A50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    MEMORY[0x193AC64A0](v3, 0x1000C80BDFB0063);
    *(v1 + 8) = 0;
  }

  _Unwind_Resume(exception_object);
}

CPSDString *CPSDString::operator=(CPSDString *this, uint64_t a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    MEMORY[0x193AC64A0](v4, 0x1000C80BDFB0063);
    *(this + 1) = 0;
  }

  v5 = *(a2 + 8);
  CPSDString::AllocateCharData(this, *a2);
  memcpy(*(this + 1), v5, (2 * *this));
  return this;
}

void std::vector<CPSDString>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CPSDString>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<CPSDString>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    if (result)
    {
      result = MEMORY[0x193AC64A0](result, 0x1000C80BDFB0063);
      *(i - 8) = 0;
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void CPSDUnicodeLayerName::CopyStringValue(const UniChar **this, char *a2, unsigned int a3)
{
  v5 = CFStringCreateWithCharactersNoCopy(kCFAllocatorDefault, this[8], *(this + 14), kCFAllocatorNull);
  SystemEncoding = CFStringGetSystemEncoding();
  CFStringGetCString(v5, a2, a3, SystemEncoding);

  CFRelease(v5);
}

__CFData *__CUIImageCompressedWithDeepmap(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v21 = a3;
  v22 = a4;
  v20 = 0;
  Buffer = vImageDeepmapEncodeCreateBuffer();
  if (!Buffer)
  {
    v14 = "CoreUI: DeepmapEncodeImageCreateBuffer() returned 0.";
LABEL_7:
    _CUILog(4, v14, v6, v7, v8, v9, v10, v11, v16);
    return 0;
  }

  v12 = Buffer;
  __CUIImageCompressedWithDeepmap_cold_1();
  if ((v21 - 1) >= 4)
  {
    v16 = v21;
    v14 = "CoreUI: vImageDeepmapEncodeCreateBuffer() returned unrecognized compression method: %lu [%s]";
    goto LABEL_7;
  }

  *bytes = 5;
  v18 = a2;
  v19 = v12;
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, v12 + 16);
  CFDataAppendBytes(Mutable, bytes, 16);
  CFDataAppendBytes(Mutable, v20, v12);
  free(v20);
  return Mutable;
}

id CUIImageCompressedWithDeepmap(unsigned int *a1, __int128 *a2, uint64_t a3, _DWORD *a4, __int16 *a5, uint64_t *a6, _DWORD *a7, uint64_t a8)
{
  if (*a2 && *(a2 + 3) && *(a2 + 2) && *(a2 + 1))
  {
    if (*a1 == 8 || *a1 == 16)
    {
      if (*(a1 + 1))
      {
        if (a3 > 1195456543)
        {
          if (a3 == 1195456544)
          {
            v11 = 2;
            v10 = 2;
          }

          else
          {
            if (a3 != 1380401751)
            {
LABEL_20:
              _CUILog(4, "CoreUI: Unrecognized input pixel format: %d [%s]", a3, a4, a5, a6, a7, a8, a3);
              return 0;
            }

            v10 = 20;
            v11 = 4;
          }
        }

        else
        {
          if (a3 != 1095911234)
          {
            if (a3 == 1195454774)
            {
              v10 = 18;
              v11 = 6;
              goto LABEL_23;
            }

            goto LABEL_20;
          }

          v10 = 4;
          v11 = 1;
        }

LABEL_23:
        *a4 = a3;
        *a5 = v11;
        *a6 = CGBitmapGetAlignedBytesPerRow();
        v12 = objc_alloc_init(NSMutableArray);
        v14 = *(a2 + 1);
        if (v14 * *(a2 + 3) < 0x5000)
        {
          v29 = a2[1];
          v32 = *a2;
          v33 = v29;
          v30 = __CUIImageCompressedWithDeepmap(&v32, v10, 0x100000000, 10);
          if (!v30)
          {
LABEL_36:
            _CUILog(4, "CoreUI: Deepmap compressed failed in %s [%s:%lu]", v21, v22, v23, v24, v25, v26, "NSArray<NSData *> *CUIImageCompressedWithDeepmap(vImage_CGImageFormat, vImage_Buffer, u_int32_t, u_int32_t *, short *, size_t *, u_int32_t *)");

            return 0;
          }

          v31 = v30;
          [v12 addObject:v30];
          CFRelease(v31);
          v28 = *(a2 + 1);
        }

        else
        {
          v15 = (v14 * 0xAAAAAAAAAAAAAAABLL) >> 64;
          v16 = (v14 / 3);
          if (!(v14 / 3))
          {
            CUIImageCompressedWithDeepmap_cold_1();
          }

          if (v14)
          {
            v17 = *a2;
            do
            {
              v18 = v14 >= v16 ? v16 : v14;
              *a2 = v17;
              *(a2 + 1) = v18;
              v19 = a2[1];
              v32 = *a2;
              v33 = v19;
              v20 = __CUIImageCompressedWithDeepmap(&v32, v10, 0x100000000, 10);
              if (!v20)
              {
                goto LABEL_36;
              }

              v27 = v20;
              [v12 addObject:v20];
              CFRelease(v27);
              v17 += *(a2 + 3) * v18;
              v14 -= v18;
            }

            while (v14);
          }

          v28 = v15 >> 1;
        }

        *a7 = v28;
        return v12;
      }

      _CUILog(4, "CoreUI: Missing image color space to perform Deemap compression [%s].", a3, a4, a5, a6, a7, a8, "NSArray<NSData *> *CUIImageCompressedWithDeepmap(vImage_CGImageFormat, vImage_Buffer, u_int32_t, u_int32_t *, short *, size_t *, u_int32_t *)");
    }

    else
    {
      _CUILog(4, "CoreUI: unsupported bpc for Deepmap compression: %d [%s].", a3, a4, a5, a6, a7, a8, *a1);
    }
  }

  else
  {
    _CUILog(4, "CoreUI: invalid input image buffer in %s", a3, a4, a5, a6, a7, a8, "NSArray<NSData *> *CUIImageCompressedWithDeepmap(vImage_CGImageFormat, vImage_Buffer, u_int32_t, u_int32_t *, short *, size_t *, u_int32_t *)");
  }

  return 0;
}

uint64_t CUIUncompressDeepmapImageData(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CUILog(4, "CoreUI: Received NULL buffer in [%s]", a3, a4, a5, a6, a7, a8, "Boolean CUIUncompressDeepmapImageData(const u_int8_t *, u_int64_t, u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  if (!a4)
  {
    _CUILog(4, "CoreUI: Received NULL destination in [%s]", a3, 0, a5, a6, a7, a8, "Boolean CUIUncompressDeepmapImageData(const u_int8_t *, u_int64_t, u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

  v10 = a3;
  v12 = a1;
  if (a8 > 1195456543)
  {
    if (a8 != 1195456544)
    {
      v13 = 1380401751;
      goto LABEL_10;
    }
  }

  else if (a8 != 1095911234)
  {
    v13 = 1195454774;
LABEL_10:
    if (a8 == v13)
    {
      goto LABEL_11;
    }

    _CUILog(4, "CoreUI: %s got unsupported pixel format [%d]", a3, a4, a5, a6, a7, a8, "Boolean CUIUncompressDeepmapImageData(const u_int8_t *, u_int64_t, u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)");
    return 0;
  }

LABEL_11:
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  if (a3)
  {
    v14 = a1[3];
    a2 = a1[4];
    v35 = *a1 == 1262699075;
    v15 = [[NSMutableArray alloc] initWithCapacity:a3];
    v16 = v12;
    v12 += 5;
  }

  else
  {
    v35 = 0;
    v15 = 0;
    v16 = 0;
    v14 = a6;
  }

  v17 = 0;
  v18 = 1;
  do
  {
    if (v10)
    {
      if (v18 - 1 >= v10)
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"Boolean CUIUncompressDeepmapImageData(const u_int8_t * stringWithUTF8String:u_int32_t, u_int8_t *, size_t, size_t, size_t, u_int32_t)"], @"CUIDeepmapCompression.m", 361, @"Invalid chunk index"];
      }

      if (!v16 || v14 - 1 >= a6)
      {
        _CUILog(4, "CoreUI: Invalid chunk rows of %lu in image of height %lu", a3, a4, a5, a6, a7, a8, v14);
        if (!v15)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    if (*v12 >= 6)
    {
      _CUILog(4, "CoreUI: Encoded Deepmap blob version %lu greater than decoder version %lu", a3, a4, a5, a6, a7, a8, *v12);
      *(v42 + 24) = 0;
      if (!v15)
      {
        goto LABEL_43;
      }

LABEL_42:

      goto LABEL_43;
    }

    v19 = v12[1];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __CUIUncompressDeepmapImageData_block_invoke;
    v39[3] = &unk_1E724A2F8;
    v39[6] = v14;
    v39[7] = a7;
    v39[8] = a4;
    v39[9] = v17;
    v39[10] = v12;
    v39[11] = v12;
    v40 = v19;
    v39[4] = &v41;
    v39[5] = a5;
    if (!v10)
    {
      __CUIUncompressDeepmapImageData_block_invoke(v39);
      goto LABEL_38;
    }

    if (!v15)
    {
      v15 = objc_alloc_init(NSMutableArray);
    }

    v20 = [v39 copy];
    [v15 addObject:v20];

    if (v18 >= v10)
    {
      break;
    }

    v17 += v14;
    v21 = (v16 + a2);
    v16 = (v16 + a2 + 20);
    v22 = v21[8];
    v23 = v21[9];
    v24 = bswap32(v22);
    v25 = bswap32(v23);
    v14 = v35 ? v24 : v22;
    a2 = v35 ? v25 : v23;
    v12 = v21 + 10;
    ++v18;
  }

  while (v17 < a6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __CUIUncompressDeepmapImageData_block_invoke_2;
  block[3] = &unk_1E724A2D0;
  block[4] = v15;
  dispatch_apply([v15 count], 0, block);

LABEL_38:
  if (v42[3])
  {
    v32 = 1;
    goto LABEL_44;
  }

  _CUILog(4, "CoreUI: CUIUncompressDeepmapImageData() fails.", v26, v27, v28, v29, v30, v31, v34);
LABEL_43:
  v32 = 0;
LABEL_44:
  _Block_object_dispose(&v41, 8);
  return v32;
}

uint64_t __CUIUncompressDeepmapImageData_block_invoke(uint64_t a1)
{
  result = vImageDeepmapDecodeStreamCreate();
  if (!result)
  {
    while (result != -1)
    {
      if (result)
      {
        if (result != 1)
        {
          __CUIUncompressDeepmapImageData_block_invoke_cold_1();
        }

        result = vImageDeepmapDecodeStreamRelease();
        if (result)
        {
          break;
        }

        return result;
      }

      result = vImageDeepmapDecodeStreamProcess();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __CUIUncompressDeepmapImageData_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *([*(a1 + 32) objectAtIndex:a2] + 2);

  return v2();
}

Class initMDLMeshBufferMap()
{
  os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock_0);
  v0 = [__NSGetFrameworkReference_table_0 objectForKey:@"ModelIO"];
  os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock_0);
  if (!v0)
  {
    v1 = __NSLoadFramework(@"ModelIO");
    if (v1)
    {
      v2 = v1;
      os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock_0);
      v3 = __NSGetFrameworkReference_table_0;
      if (!__NSGetFrameworkReference_table_0)
      {
        v3 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:2 capacity:0];
        __NSGetFrameworkReference_table_0 = v3;
      }

      if (![v3 objectForKey:@"ModelIO"])
      {
        [__NSGetFrameworkReference_table_0 setObject:v2 forKey:@"ModelIO"];
      }

      os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock_0);
    }
  }

  result = objc_getClass("MDLMeshBufferMap");
  classMDLMeshBufferMap = result;
  if (!result)
  {
    initMDLMeshBufferMap_cold_1();
  }

  getMDLMeshBufferMapClass[0] = MDLMeshBufferMapFunction;
  return result;
}

void CPSDMeshedARGBStream::CPSDMeshedARGBStream(CPSDMeshedARGBStream *this, CPSDChannelImage *a2)
{
  *(this + 1) = a2;
  v2 = (*(a2 + 2) * *(a2 + 8) + 7) >> 3;
  *(this + 4) = *(a2 + 5);
  *(this + 5) = v2;
  *(this + 6) = 0;
  *this = &unk_1F00D5790;
  v3 = *(a2 + 6);
  v4 = *(a2 + 28);
  *(this + 64) = *(a2 + 28) != 0;
  if (v4)
  {
    v5 = *v3++;
    v6 = (this + 40);
    *(this + 4) = v5;
  }

  else
  {
    v6 = (this + 32);
  }

  *v6 = *v3;
  v6[1] = v3[1];
  v6[2] = v3[2];
}

uint64_t CPSDMeshedARGBStream::convert(uint64_t this, unsigned __int8 *a2)
{
  v2 = (*(this + 24) * *(this + 16));
  v3 = *(this + 8);
  if (*(this + 64) == 1)
  {
    v4 = (this + 40);
    v5 = (*(this + 32) + v2);
  }

  else
  {
    v5 = 0;
    v4 = (this + 32);
  }

  if (*(v3 + 8))
  {
    v6 = 0;
    v7 = *(v3 + 18);
    v9 = v4[1];
    v8 = v4[2];
    v10 = *v4;
    v11 = (v7 >> 3);
    do
    {
      if (*(this + 64) == 1)
      {
        *a2 = *v5;
        a2 += v11;
        v5 += v11;
      }

      *a2 = *(v10 + v2);
      a2[v11] = *(v9 + v2);
      v12 = &a2[v11 + v11];
      *v12 = *(v8 + v2);
      a2 = &v12[v11];
      ++v6;
      v2 += v11;
    }

    while (v6 < *(*(this + 8) + 8));
  }

  return this;
}

unint64_t CPSDMeshedARGBStream::GetBytes(CPSDMeshedARGBStream *this, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 % *(this + 5))
  {
    _CUILog(1, "ERROR (CPSDMeshedARGBStream): count is not a multiple of bytesPerRow.", a3, a4, a5, a6, a7, a8, v14);
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v13 = *(this + 6);
  do
  {
    if (v13 >= *(*(this + 1) + 12))
    {
      break;
    }

    (*(*this + 24))(this, &a2[v8]);
    v8 += *(this + 5);
    v13 = *(this + 6) + 1;
    *(this + 6) = v13;
  }

  while (v8 < a3);
  return v8;
}

uint64_t CPSDMeshedARGBStream::SkipBytes(CPSDMeshedARGBStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (a2 % v8)
  {
    _CUILog(1, "ERROR (CPSDMeshedARGBStream): count is not a multiple of bytesPerRow.", a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {
    v9 = *(this + 6) + a2 / v8;
    if (v9 >= *(*(this + 1) + 12))
    {
      v9 = *(*(this + 1) + 12);
    }

    *(this + 6) = v9;
  }

  return a2;
}

CGImageRef CPSDMeshedARGBStream::CreateCGImageRef(CPSDMeshedARGBStream *this)
{
  v1 = *(this + 1);
  if (*(v1 + 26) != 3)
  {
    return 0;
  }

  v2 = *(v1 + 18);
  v3 = v2 == 16 || v2 == 8;
  if (!v3 || *(v1 + 24) < 3u || !*(v1 + 8) || !*(v1 + 12))
  {
    return 0;
  }

  v5 = 4 * (*(v1 + 28) != 0);
  v6 = (*(*this + 32))(this);
  if (v6)
  {
    SRGB = v6;
    CFAutorelease(v6);
  }

  else
  {
    SRGB = _CUIColorSpaceGetSRGB();
  }

  Sequential = CGDataProviderCreateSequential(this, &psdStreamCallbacks);
  v10 = CGImageCreate(*(*(this + 1) + 8), *(*(this + 1) + 12), *(*(this + 1) + 18), *(*(this + 1) + 16), *(this + 5), SRGB, v5, Sequential, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(Sequential);
  return v10;
}

CGColorSpaceRef CPSDMeshedARGBStream::GetColorSpace(CPSDMeshedARGBStream *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 26);
  if (v4 != 1)
  {
    if (v4 == 4)
    {
      v4 = 4;
    }

    else if (v4 == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = *(v1 + 24);
    }
  }

  v6 = CFDataCreate(kCFAllocatorDefault, v3, v2);
  v7 = CGDataProviderCreateWithCFData(v6);
  ICCBased = CGColorSpaceCreateICCBased(v4, 0, v7, 0);
  CGDataProviderRelease(v7);
  CFRelease(v6);
  return ICCBased;
}

void CPSDAlphaChannelStream::CPSDAlphaChannelStream(CPSDAlphaChannelStream *this, CPSDChannelImage *a2, uint64_t a3)
{
  *(this + 1) = a2;
  v3 = (*(a2 + 2) * *(a2 + 8) + 7) >> 3;
  *(this + 4) = *(a2 + 5);
  *(this + 5) = v3;
  *(this + 6) = 0;
  *this = &unk_1F00D57F0;
  *(this + 4) = *(*(a2 + 6) + 8 * a3);
  *(this + 10) = a3;
  *(this + 4) = ((*(*a2 + 40))(a2, a3) * *(a2 + 9)) >> 3;
}

void sub_18DFA9B0C(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F00D5760;
  v3 = v1[1];
  if (v3)
  {
    CPSDAlphaChannelStream::CPSDAlphaChannelStream(v3);
  }

  _Unwind_Resume(exception_object);
}

CGImageRef CPSDAlphaChannelStream::CreateCGImageRef(CPSDAlphaChannelStream *this)
{
  v12 = xmmword_18E021C10;
  v2 = *(this + 1);
  if (v2[13] != 3 || v2[9] != 8 || v2[12] < 4u)
  {
    return 0;
  }

  v3 = (*(*v2 + 40))(v2, *(this + 10));
  v4 = (*(**(this + 1) + 48))(*(this + 1), *(this + 10));
  if (!v3 || v4 == 0)
  {
    return 0;
  }

  v8 = v4;
  LODWORD(v5) = *(this + 4);
  v9 = CGDataProviderCreateWithData(this, *(this + 4), (v4 * v5), alphaStreamReleaseData);
  v10 = *(*(this + 1) + 18);
  v11 = CGImageMaskCreate(v3, v8, v10, v10, *(this + 4), v9, &v12, 0);
  CGDataProviderRelease(v9);
  return v11;
}

uint64_t alphaStreamReleaseData(uint64_t result, const void *a2)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CPSDMeshedARGBStream::~CPSDMeshedARGBStream(CPSDMeshedARGBStream *this)
{
  *this = &unk_1F00D5760;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F00D5760;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x193AC64C0);
}

void CPSDAlphaChannelStream::~CPSDAlphaChannelStream(CPSDAlphaChannelStream *this)
{
  *this = &unk_1F00D5760;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F00D5760;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x193AC64C0);
}

uint64_t psdRelease(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

double CUIEdgeInsetsInsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 + a6;
  v9 = a3 - (a8 + a6);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

double CUIEdgeInsetsOutsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 - a6;
  v9 = a3 - (-a6 - a8);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

double CUIGetSVGAttributeUnitScale(uint64_t a1)
{
  if (!a1)
  {
    return 1.0;
  }

  v1 = CGSVGAttributeCopyString();
  if ([v1 hasSuffix:@"mm"])
  {
    v2 = 2.83464567;
  }

  else if ([v1 hasSuffix:@"cm"])
  {
    v2 = 28.3464567;
  }

  else if ([v1 hasSuffix:@"in"])
  {
    v2 = 72.0;
  }

  else
  {
    v2 = 1.0;
  }

  return v2;
}

void __CUIAccumulateSVGShapesIntoJoinedPath_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    v23 = v3;
    v24 = v4;
    if (CGSVGNodeGetType() == 2)
    {
      if (CGSVGShapeNodeGetPath())
      {
        CGPath = CGSVGPathCreateCGPath();
        memset(&v22, 0, sizeof(v22));
        CUISVGNodeGetTransform(&v22);
        v7 = *(a1 + 48);
        v8 = *(a1 + 64);
        *&t1.a = *(a1 + 32);
        *&t1.c = v7;
        *&t1.tx = v8;
        memset(&v21, 0, sizeof(v21));
        t2 = v22;
        CGAffineTransformConcat(&v21, &t1, &t2);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        v13 = *&v21.a;
        v14 = *&v21.c;
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        v15 = *&v21.tx;
        v16 = v9;
        block[2] = __CUIAccumulateSVGShapesIntoJoinedPath_block_invoke_2;
        block[3] = &__block_descriptor_136_e36_v16__0r__CGPathElement_i__CGPoint__8l;
        block[4] = *(a1 + 80);
        v11 = *(a1 + 64);
        v17 = v10;
        v18 = v11;
        CGPathApplyWithBlock(CGPath, block);
        CGPathRelease(CGPath);
      }
    }
  }
}

CGAffineTransform *CUISVGNodeGetTransform@<X0>(uint64_t a1@<X8>)
{
  v4 = *&CGAffineTransformIdentity.c;
  v5 = *&CGAffineTransformIdentity.a;
  *a1 = *&CGAffineTransformIdentity.a;
  *(a1 + 16) = v4;
  v3 = *&CGAffineTransformIdentity.tx;
  *(a1 + 32) = v3;
  result = CGSVGNodeFindAttribute();
  if (result)
  {
    result = CGSVGAttributeGetFloats();
    if (result)
    {
      *&t1.a = v5;
      *&t1.c = v4;
      *&t1.tx = v3;
      t2 = v8;
      return CGAffineTransformConcat(a1, &t1, &t2);
    }
  }

  return result;
}

void __CUIAccumulateSVGShapesIntoJoinedPath_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 == 2)
    {
      v23 = *(a1 + 32);
      v24 = *(a2 + 8);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];

      CGPathAddQuadCurveToPoint(v23, (a1 + 40), v25, v26, v27, v28);
    }

    else if (v4 == 3)
    {
      v6 = *(a1 + 32);
      v7 = *(a2 + 8);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[5];

      CGPathAddCurveToPoint(v6, (a1 + 40), v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = *(a1 + 32);
      goto LABEL_14;
    }

    IsEmpty = CGPathIsEmpty(*(a1 + 32));
    v5 = *(a1 + 32);
    if (!IsEmpty)
    {
LABEL_14:
      CurrentPoint = CGPathGetCurrentPoint(v5);
      v19 = *(a2 + 8);
      v20 = *v19;
      v21 = v19[1];
      if (vabdd_f64(CurrentPoint.x, *(a1 + 120) + v21 * *(a1 + 104) + *(a1 + 88) * *v19) > 0.00000011920929 || vabdd_f64(CurrentPoint.y, *(a1 + 128) + v21 * *(a1 + 112) + *(a1 + 96) * v20) > 0.00000011920929)
      {
        v22 = *(a1 + 32);

        CGPathAddLineToPoint(v22, (a1 + 40), v20, v21);
      }

      return;
    }

    v15 = *(a2 + 8);
    v16 = *v15;
    v17 = v15[1];

    CGPathMoveToPoint(v5, (a1 + 40), v16, v17);
  }
}

void CUIAccumulateSVGShapesIntoPath(uint64_t a1, uint64_t a2, CGPath *a3)
{
  CompoundCGPath = CGSVGNodeCreateCompoundCGPath();
  CGPathAddPath(a3, 0, CompoundCGPath);

  CGPathRelease(CompoundCGPath);
}

CGMutablePathRef CUICreateJoinedPathFromSVGNode()
{
  Mutable = CGPathCreateMutable();
  CGSVGNodeEnumerate();
  return Mutable;
}

id CUICreateClipStrokeKeyframeDataFromString(uint64_t a1)
{
  v1 = [NSData encodedClipStrokeKeyframesFromString:a1 subpathOffset:?];

  return v1;
}

uint64_t CUIAddClipStrokeKeyframeDataToNode(uint64_t a1, void *a2)
{
  if ([a2 clipStrokeKeyframeString])
  {
    if (CUIVectorGlyphClipStrokeKeyframesAtom_onceToken != -1)
    {
      CUICreateClipStrokeKeyframeDataFromNode_cold_1();
    }

    CGSVGAttributeCreateWithString();
    CGSVGNodeSetAttribute();

    return CGSVGAttributeRelease();
  }

  else
  {
    result = CGSVGNodeGetAttributeMap();
    if (result)
    {
      v3 = result;
      if (CUIVectorGlyphClipStrokeKeyframesAtom_onceToken != -1)
      {
        CUICreateClipStrokeKeyframeDataFromNode_cold_1();
      }

      v4 = CUIVectorGlyphClipStrokeKeyframesAtom_atom;

      return _CGSVGAttributeMapRemoveAttribute(v3, v4);
    }
  }

  return result;
}

void CUIAddPathToSVGShapeNode(uint64_t a1, void *a2)
{
  [a2 path];
  v4 = CGSVGPathCreateWithCGPath();
  CGSVGShapeNodeSetPath();
  CUIAddClipStrokeKeyframeDataToNode(a1, [a2 encodedClipStrokeKeyframes]);

  CFRelease(v4);
}

id CUICreateSubpathArrayFromCGPath(const CGPath *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [[NSMutableArray alloc] initWithCapacity:0];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v5[3] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __CUICreateSubpathArrayFromCGPath_block_invoke;
  v4[3] = &unk_1E724A740;
  v4[4] = v2;
  v4[5] = v5;
  CGPathApplyWithBlock(a1, v4);
  _Block_object_dispose(v5, 8);
  return v2;
}

void sub_18DFAF2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CUICreateSubpathArrayFromCGPath_block_invoke(uint64_t a1, int *a2)
{
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (*a2 == 4)
    {
      return;
    }

    *(*(*(a1 + 40) + 8) + 24) = CGPathCreateMutable();
  }

  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v6 = *(*(*(a1 + 40) + 8) + 24);
        v7 = *(a2 + 1);
        v8 = *v7;
        v9 = v7[1];

        CGPathAddLineToPoint(v6, 0, v8, v9);
      }
    }

    else
    {
      v24 = *(*(*(a1 + 40) + 8) + 24);
      v25 = *(a2 + 1);
      v26 = *v25;
      v27 = v25[1];

      CGPathMoveToPoint(v24, 0, v26, v27);
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v10 = *(*(*(a1 + 40) + 8) + 24);
        v11 = *(a2 + 1);
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[3];

        CGPathAddQuadCurveToPoint(v10, 0, v12, v13, v14, v15);
        break;
      case 3:
        v16 = *(*(*(a1 + 40) + 8) + 24);
        v17 = *(a2 + 1);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = v17[4];
        v23 = v17[5];

        CGPathAddCurveToPoint(v16, 0, v18, v19, v20, v21, v22, v23);
        break;
      case 4:
        v5 = *(*(*(a1 + 40) + 8) + 24);
        if (v5)
        {
          CGPathCloseSubpath(v5);
          [*(a1 + 32) addObject:*(*(*(a1 + 40) + 8) + 24)];
          CGPathRelease(*(*(*(a1 + 40) + 8) + 24));
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }

        break;
    }
  }
}

id CUICreateSubpathsFromSVGNode(id result)
{
  if (result)
  {
    v1 = CUICreatePathFromSVGNode(result, &CGAffineTransformIdentity);
    v2 = [v1 createSubpaths];

    return v2;
  }

  return result;
}

vImage_Error CUIComputeImageColorHistogramARGB(CGImage *a1, const vImage_Buffer *a2, vImagePixelCount *a3)
{
  histogram[0] = a3;
  histogram[1] = a3 + 1024;
  histogram[2] = a3 + 2048;
  histogram[3] = a3 + 3072;
  if (CGImageGetBitsPerComponent(a1) < 9)
  {
    return vImageHistogramCalculation_ARGB8888(a2, histogram, 0x100u);
  }

  else
  {
    return vImageHistogramCalculation_ARGBFFFF(a2, histogram, 0x400u, 0.0, 1.0, 0x100u);
  }
}

double CUIColorHistogramARGBIntersection(int64x2_t *a1, int64x2_t *a2)
{
  v2 = 0uLL;
  v3 = 1024;
  v4 = 0uLL;
  v5 = 0uLL;
  do
  {
    v6 = a1[512];
    v7 = a2[512];
    v8 = a1[1024];
    v9 = a2[1024];
    v10 = a1[1536];
    v11 = a2[1536];
    v5 = vaddq_s64(vaddq_s64(vbslq_s8(vcgtq_u64(v7, v6), v6, v7), v5), vaddq_s64(vbslq_s8(vcgtq_u64(v9, v8), v8, v9), vbslq_s8(vcgtq_u64(v11, v10), v10, v11)));
    v4 = vaddq_s64(vaddq_s64(v6, v4), vaddq_s64(v8, v10));
    v2 = vaddq_s64(vaddq_s64(v7, v2), vaddq_s64(v9, v11));
    ++a1;
    ++a2;
    v3 -= 2;
  }

  while (v3);
  v12 = vaddvq_s64(v2);
  v13 = vaddvq_s64(v4);
  v14 = vaddvq_s64(v5);
  if (v13 < v12)
  {
    v12 = v13;
  }

  return v14 / v12;
}

uint64_t RB::Path::ClipStroke::KeyframeConsumer::moveto(void *a1, Point a2, __n128 a3)
{
  if (a1[8] != a1[9])
  {
    v5 = a3;
    (*(*a1 + 8))(a1);
    a3 = v5;
  }

  return RB::Path::Subpath::reset((a1 + 5), a2, a3.n128_f64[0], a3.n128_f64[1]);
}

uint64_t RB::Path::ClipStroke::KeyframeConsumer::closepath(RB::Path::ClipStroke::KeyframeConsumer *this)
{
  v2 = *(this + 9);
  if (*(this + 8) != v2)
  {
    v3 = *(this + 40);
    if (v3.n128_f64[0] != *(v2 - 16) || v3.n128_f64[1] != *(v2 - 8))
    {
      RB::Path::Subpath::add_lineto(this + 40, v3, INFINITY);
    }
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4 > v5)
  {
    v5 = *(this + 3);
  }

  v6 = v5 - v4;
  v7 = v4 - 1;
  v8 = (16 * v4) | 8;
  while (v6)
  {
    v9 = vcvtms_u32_f32(*(*(this + 1) + v8));
    v10 = *(this + 4);
    if (v10 > v9)
    {
      RB::Path::ClipStroke::KeyframeConsumer::closepath();
    }

    --v6;
    ++v7;
    v8 += 16;
    if (v10 < v9)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
LABEL_13:
  if (v7 == v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 1) + 16 * v4;
  }

  (*(*this + 64))(this, v11, v7 - v4);
  result = RB::Path::Subpath::reset(this + 40, v14, 0.0, 0.0);
  v13 = *(this + 4) + 1;
  *(this + 3) = v7;
  *(this + 4) = v13;
  return result;
}

uint64_t RB::Path::ClipStroke::Transform::Transform(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32_t a9, float32_t a10, uint64_t a11)
{
  *(result + 8) = a5;
  *(result + 16) = a6;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0;
  *(result + 96) = a2;
  *result = &unk_1F00D58C0;
  *(result + 104) = a7;
  *(result + 112) = a8;
  *(result + 120) = a11;
  *(result + 128) = a3;
  if (a10 >= a9)
  {
    v11.f32[0] = a9;
  }

  else
  {
    v11.f32[0] = a10;
  }

  if (a9 < a10)
  {
    a9 = a10;
  }

  v11.f32[1] = a9;
  *(result + 136) = v11;
  *(result + 144) = a4;
  if ((a3 & 2) != 0)
  {
    __asm { FMOV            V1.2S, #1.0 }

    v11 = vminnm_f32(vmaxnm_f32(v11, 0), _D1);
    *(result + 136) = v11;
  }

  v17 = 0;
  v18 = vceq_f32(v11, 0x3F80000000000000);
  if ((vpmin_u32(v18, v18).u32[0] & 0x80000000) != 0 && !a8)
  {
    v17 = (a3 & 0x10) == 0;
  }

  *(result + 148) = v17;
  if ((a3 & 4) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = v11.f32[0] >= v11.f32[1];
    if (v11.f32[0] >= 1.0)
    {
      v19 = 1;
    }

    if (v11.f32[1] <= 0.0)
    {
      v19 = 1;
    }

    if (a8)
    {
      v19 = 0;
    }
  }

  *(result + 149) = v19;
  return result;
}

{
  return RB::Path::ClipStroke::Transform::Transform(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t RB::Path::ClipStroke::Transform::moveto(uint64_t result, Point a2, __n128 a3)
{
  if (*(result + 148) == 1)
  {
    return (*(**(result + 96) + 16))();
  }

  if ((*(result + 149) & 1) == 0)
  {
    return RB::Path::ClipStroke::KeyframeConsumer::moveto(result, a2, a3);
  }

  return result;
}

double RB::Path::ClipStroke::Transform::lineto(uint64_t a1, __n128 a2)
{
  if (*(a1 + 148) == 1)
  {
    (*(**(a1 + 96) + 24))();
  }

  else if ((*(a1 + 149) & 1) == 0)
  {
    a2.n128_f64[0] = RB::Path::Subpath::add_lineto(a1 + 40, a2, INFINITY);
  }

  return a2.n128_f64[0];
}

double RB::Path::ClipStroke::Transform::quadto(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  if (*(a1 + 148) == 1)
  {
    (*(**(a1 + 96) + 32))();
  }

  else if ((*(a1 + 149) & 1) == 0)
  {
    *a2.i64 = RB::Path::Subpath::add_quadto((a1 + 40), a2, a3, INFINITY);
  }

  return *a2.i64;
}

double RB::Path::ClipStroke::Transform::cubeto(uint64_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4)
{
  if (*(a1 + 148) == 1)
  {
    (*(**(a1 + 96) + 40))();
  }

  else if ((*(a1 + 149) & 1) == 0)
  {
    *a2.i64 = RB::Path::Subpath::add_cubeto((a1 + 40), a2, a3, a4, INFINITY);
  }

  return *a2.i64;
}

uint64_t RB::Path::ClipStroke::Transform::closepath(uint64_t this)
{
  if (*(this + 148) == 1)
  {
    return (*(**(this + 96) + 8))();
  }

  if ((*(this + 149) & 1) == 0)
  {
    return RB::Path::ClipStroke::KeyframeConsumer::closepath(this);
  }

  return this;
}

void RB::Path::ClipStroke::Transform::subpath_keyframes(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5, double a6)
{
  v6 = a1;
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (a2 + 4);
    v13 = INFINITY;
    v14 = -INFINITY;
    do
    {
      v15 = *(v12 - 1);
      if ((v15 & 2) != 0)
      {
        if (*v12 < v13)
        {
          v13 = *v12;
        }

        if (*v12 > v14)
        {
          v11 = v10;
          v14 = *v12;
        }
      }

      v9 |= v15;
      ++v10;
      v12 += 4;
    }

    while (a3 != v10);
    v16 = 0;
    v17 = *(a1 + 136);
    if (*&v17 != 0.0 && (v13 < INFINITY || v13 > INFINITY))
    {
      (off_1F00D3960)();
      v16 = &v53;
      v19 = a2 + 16 * v18;
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      v21 = *(v19 + 8);
      v20 = *(v19 + 12);
      if (v20 >= v21)
      {
        v22 = *(v19 + 8);
      }

      else
      {
        v22 = *(v19 + 12);
      }

      if (v21 >= v20)
      {
        v20 = *(v19 + 8);
      }

      v23 = (a2 + 12);
      v24 = a3;
      while (1)
      {
        if (v18)
        {
          v25 = *(v23 - 1);
          if (v22 <= v25 && v20 > v25)
          {
            break;
          }

          if (v22 <= *v23 && v20 > *v23)
          {
            break;
          }
        }

        v23 += 4;
        --v18;
        if (!--v24)
        {
          v28 = v20;
          v20 = v22;
          goto LABEL_43;
        }
      }

      v28 = v22;
LABEL_43:
      RB::Path::Subpath::append_logical_range(&v53, (v6 + 40), *(v6 + 56) * (v20 - floor(v20)), *(v6 + 56) * (v28 - floor(v28)), 0);
      a1 = *(&v54 + 1);
      if (*(&v54 + 1) == v55)
      {
        if (*(&v54 + 1))
        {
          *&v55 = *(&v54 + 1);
          operator delete(*(&v54 + 1));
        }

        v16 = 0;
      }
    }

    v37 = 0;
    LODWORD(a4) = *(v6 + 140);
    LODWORD(v17) = 1.0;
    if (*&a4 != 1.0)
    {
      LODWORD(a4) = -8388608;
      if (v14 != -INFINITY)
      {
        off_1F00D3960(a1, a2, a3);
        v37 = &v53 - 4;
        v38 = a2 + 16 * v11;
        *(&v53 - 2) = 0;
        *(&v53 - 3) = 0u;
        *(&v53 - 2) = 0u;
        *(&v53 - 4) = 0u;
        v40 = *(v38 + 8);
        v39 = *(v38 + 12);
        if (v39 >= v40)
        {
          v41 = *(v38 + 8);
        }

        else
        {
          v41 = *(v38 + 12);
        }

        if (v40 >= v39)
        {
          v39 = *(v38 + 8);
        }

        v42 = (a2 + 12);
        v43 = a3;
        while (1)
        {
          if (v11)
          {
            v44 = *(v42 - 1);
            if (v41 <= v44 && v39 > v44)
            {
              break;
            }

            if (v41 <= *v42 && v39 > *v42)
            {
              break;
            }
          }

          v42 += 4;
          --v11;
          if (!--v43)
          {
            v47 = v39;
            v39 = v41;
            goto LABEL_69;
          }
        }

        v47 = v41;
LABEL_69:
        RB::Path::Subpath::append_logical_range((&v53 - 4), (v6 + 40), *(v6 + 56) * (v39 - floor(v39)), *(v6 + 56) * (v47 - floor(v47)), 0);
        v48 = *(&v53 - 5);
        if (v48 == *(&v53 - 4))
        {
          if (v48)
          {
            *(&v53 - 4) = v48;
            operator delete(v48);
          }

          v37 = 0;
        }
      }
    }

    v57 = 0;
    v58 = 0;
    v59 = 0;
    RB::Path::ClipStroke::Transform::emit(v6, (v6 + 40), a2, a3, v9, &v57, v16, v37, a4, v17, a6);
    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v37)
    {
      v49 = *(v37 + 3);
      if (v49)
      {
        *(v37 + 4) = v49;
        operator delete(v49);
      }
    }

    if (v16)
    {
      v50 = *(v16 + 3);
      if (v50)
      {
        *(v16 + 4) = v50;
        operator delete(v50);
      }
    }
  }

  else
  {
    if ((*(a1 + 128) & 0x10) != 0)
    {
      return;
    }

    v29 = *(a1 + 112);
    if (!v29)
    {
      goto LABEL_82;
    }

    v30 = *(a1 + 104);
    v31 = &v30[8 * v29];
    do
    {
      v32 = v29 >> 1;
      v33 = &v30[8 * (v29 >> 1)];
      v35 = *v33;
      v34 = v33 + 8;
      v29 += ~(v29 >> 1);
      if (v35 < *(a1 + 32))
      {
        v30 = v34;
      }

      else
      {
        v29 = v32;
      }
    }

    while (v29);
    if (v30 != v31 && *v30 == *(a1 + 32))
    {
      if (v30[7])
      {
        return;
      }

      v36 = (v30 + 1);
    }

    else
    {
LABEL_82:
      v36 = 0;
    }

    v51 = *(a1 + 96);
    v52 = a1 + 40;

    RB::Path::Subpath::replay(v52, v51, 1, v36);
  }
}

void sub_18DFB0B74(_Unwind_Exception *exception_object)
{
  v5 = *(v3 - 112);
  if (v5)
  {
    *(v3 - 104) = v5;
    operator delete(v5);
  }

  if (v2)
  {
    v6 = *(v2 + 24);
    if (v6)
    {
      *(v2 + 32) = v6;
      operator delete(v6);
    }
  }

  if (v1)
  {
    v7 = *(v1 + 24);
    if (v7)
    {
      *(v1 + 32) = v7;
      operator delete(v7);
    }
  }

  _Unwind_Resume(exception_object);
}

void RB::Path::ClipStroke::Transform::emit(uint64_t a1, double *a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  if ((a5 & 8) != 0)
  {

    RB::Path::ClipStroke::Transform::emit_bisections(a1, a2, a3, a4);
  }

  else if (a5)
  {

    RB::Path::ClipStroke::Transform::emit_corners(a1, a2, a3, a4, a9, a10, a11);
  }

  else
  {
    v33 = 0.0;
    v34 = 0.0;
    if (RB::Path::ClipStroke::Transform::make_keyframes(a1, a3, a4, a2, a6, &v34, &v33))
    {
      v16.i32[0] = *(a1 + 136);
      v16.i32[1] = HIDWORD(v34);
      v17.i32[0] = LODWORD(v34);
      v17.i32[1] = HIDWORD(*(a1 + 136));
      v18 = vbsl_s8(vcgt_f32(v17, v16), *&v34, *(a1 + 136));
      if ((*(a1 + 128) & 4) != 0)
      {
        v19 = *v18.i32 <= *&v18.i32[1];
      }

      else
      {
        v19 = *v18.i32 < *&v18.i32[1];
      }

      if (v19)
      {
        RB::Path::ClipStroke::Transform::Clipper::Clipper(v28, a1, a2, a7, a8, *a6, 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 3), v34, v33);
        RB::Path::ClipStroke::Transform::Clipper::run(v28, v20, v21, v22, v23, v24, v25, v26);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }
      }
    }

    else
    {
      v27 = *(a1 + 96);

      RB::Path::Subpath::replay(a2, v27, 1, 0);
    }
  }
}

void sub_18DFB0D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RB::Path::ClipStroke::Transform::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void RB::Path::ClipStroke::Transform::emit_bisections(uint64_t a1, double *a2, uint64_t a3, unint64_t a4)
{
  v25 = a3;
  v26 = a4;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v21 = 1;
  *v22 = 0u;
  *__p = 0u;
  v24 = 0u;
  if (!a4)
  {
    goto LABEL_21;
  }

  v6 = a4;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = v25;
    v10 = v25 + 16 * v8;
    if ((*v10 & 8) != 0)
    {
      break;
    }

    v7 |= *v10;
    ++v8;
LABEL_18:
    if (v8 >= v6)
    {
      goto LABEL_19;
    }
  }

  v11 = *(v10 + 12) - *(v10 + 8);
  v12 = v11;
  if (v11 < -0.5)
  {
    v12 = v12 + 1.0;
  }

  if (v11 <= 0.5)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11 + -1.0;
  }

  if (v13 >= 0.0)
  {
    v14 = *(v10 + 12);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  if (v13 >= 0.0)
  {
    v15 = *(v10 + 8);
  }

  else
  {
    v15 = *(v10 + 12);
  }

  RB::Path::ClipStroke::Transform::emit(a1, &v16);
  if ((v7 & 8) != 0)
  {
    v7 = 0;
    v6 = v26;
    v8 = 1;
    goto LABEL_18;
  }

LABEL_19:
  if ((v7 & 8) != 0)
  {
    __assert_rtn("emit_bisections", "path-clip-stroke.cc", 545, "!(all_flags & bisection_flag)");
  }

LABEL_21:
  RB::Path::ClipStroke::Transform::emit(a1, a2);
  if (__p[1])
  {
    *&v24 = __p[1];
    operator delete(__p[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (v19[1])
  {
    *&v20 = v19[1];
    operator delete(v19[1]);
  }

  if (v17[1])
  {
    *&v18 = v17[1];
    operator delete(v17[1]);
  }
}

void RB::Path::ClipStroke::Transform::emit_corners(float32x2_t *a1, double *a2, uint64_t a3, unint64_t a4, double a5, double a6, double a7)
{
  v7 = a4;
  v66 = a3;
  v67 = a4;
  v10.n128_u32[1] = 0;
  *v60 = 0u;
  v61 = 0u;
  *v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v62 = 1;
  *v63 = 0u;
  *__p = 0u;
  v65 = 0u;
  if (a4)
  {
    v11 = 0;
    __asm
    {
      FMOV            V18.2D, #-1.0
      FMOV            V19.2D, #1.0
    }

    v54 = _Q19;
    v55 = _Q18;
    do
    {
      if (v11)
      {
        v16 = v66;
        v17 = v66 + 16 * v11;
        if ((*v17 & 1) != 0 && v11 + 1 != v7)
        {
          v10.n128_u32[0] = *(v17 + 20);
          v19 = *(v17 - 12);
          if (v10.n128_f32[0] >= v19)
          {
            LODWORD(a7) = *(v17 - 12);
          }

          else
          {
            LODWORD(a7) = *(v17 + 20);
          }

          if (v19 >= v10.n128_f32[0])
          {
            v10.n128_u32[0] = *(v17 - 12);
          }

          v20 = a1[17];
          a7 = COERCE_DOUBLE(vcge_f32(v20, vdup_lane_s32(*&a7, 0)));
          v21 = vand_s8(*&a7, vcge_f32(vdup_lane_s32(v10.n128_u64[0], 0), v20));
          v10.n128_u64[0] = vpmax_u32(v21, v21);
          if ((v10.n128_u32[0] & 0x80000000) != 0)
          {
            v22 = 0;
            v23 = *(v17 + 8);
            v24 = *(v17 + 12);
            a7 = INFINITY;
            v25 = (v24 - v23);
            v26 = v25 + 1.0;
            if ((v24 - v23) >= -0.5)
            {
              v26 = (v24 - v23);
            }

            v27 = v25 + -1.0;
            v28 = (v24 - v23) <= 0.5 ? v26 : v27;
            _NF = v28 < 0.0;
            v30 = v28 >= 0.0 ? *(v17 + 12) : *(v17 + 8);
            v31 = _NF ? *(v17 + 12) : *(v17 + 8);
            v10.n128_u64[0] = 0;
            v32 = 0.0;
            v33 = INFINITY;
            do
            {
              if (v11 != v22)
              {
                v34 = v66 + 16 * v22;
                v35 = (v34 + 8);
                v36 = (v34 + 12);
                v37 = 1;
                do
                {
                  v38 = v37 & 1;
                  if (v37)
                  {
                    v39 = v35;
                  }

                  else
                  {
                    v39 = v36;
                  }

                  v41.i32[0] = *v39;
                  v40.f32[0] = v30;
                  v40.i32[1] = *v39;
                  v41.f32[1] = v31;
                  if (v38)
                  {
                    v42 = v36;
                  }

                  else
                  {
                    v42 = v35;
                  }

                  v43 = vsub_f32(v41, v40);
                  v44 = vcvtq_f64_f32(v43);
                  v45 = vcgt_f32(v43, 0x3F0000003F000000);
                  v46.i64[0] = v45.i32[0];
                  v46.i64[1] = v45.i32[1];
                  v47 = v46;
                  v48 = vcgt_f32(0xBF000000BF000000, v43);
                  v46.i64[0] = v48.i32[0];
                  v46.i64[1] = v48.i32[1];
                  v49 = vbslq_s8(v47, vaddq_f64(v44, _Q18), vbslq_s8(v46, vaddq_f64(v44, _Q19), v44));
                  v50 = vmovn_s64(vmvnq_s8(vcltzq_f64(v49)));
                  if ((v50.i8[4] & (v49.f64[1] < a7)) != 0)
                  {
                    a7 = v49.f64[1];
                    v10.n128_f64[0] = *v42;
                  }

                  if ((v50.i8[0] & (v49.f64[0] < v33)) != 0)
                  {
                    v33 = v49.f64[0];
                    v32 = *v42;
                  }

                  v37 = 0;
                }

                while (v38);
              }

              ++v22;
            }

            while (v22 != v7);
            if (a7 != INFINITY)
            {
              HIDWORD(a7) = 2146435072;
              if (v33 < INFINITY || v33 > INFINITY)
              {
                v56 = v31;
                v51 = v10.n128_f64[0];
                RB::Path::ClipStroke::Transform::emit(a1, &v57);
                v52 = v32;
                v7 = v67;
                if ((v53 & 1) == 0)
                {
                  break;
                }

                v11 = 0;
                _Q19 = v54;
                _Q18 = v55;
              }
            }
          }
        }
      }

      ++v11;
    }

    while (v11 < v7);
  }

  RB::Path::ClipStroke::Transform::emit(a1, a2);
  if (__p[1])
  {
    *&v65 = __p[1];
    operator delete(__p[1]);
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (v60[1])
  {
    *&v61 = v60[1];
    operator delete(v60[1]);
  }

  if (v58[1])
  {
    *&v59 = v58[1];
    operator delete(v58[1]);
  }
}