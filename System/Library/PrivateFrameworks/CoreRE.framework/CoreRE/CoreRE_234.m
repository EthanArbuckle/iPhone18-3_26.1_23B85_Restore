uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentVectors(std::vector<int> *a1, _BYTE *a2)
{
  v4 = *a1->__end_cap_.__value_;
  begin = a1[14].__begin_;
  v6 = (a1[14].__end_ - begin);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(&a1[14], v8);
    v4 = *a1->__end_cap_.__value_;
  }

  else if (!v7)
  {
    a1[14].__end_ = (begin + v4);
  }

  std::vector<unsigned int>::resize(a1 + 11, v4);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentFromParentFaces(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentVectors(std::vector<int> *a1, _BYTE *a2)
{
  v4 = a1->__end_cap_.__value_[1];
  begin = a1[15].__begin_;
  v6 = (a1[15].__end_ - begin);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(&a1[15], v8);
    v4 = a1->__end_cap_.__value_[1];
  }

  else if (!v7)
  {
    a1[15].__end_ = (begin + v4);
  }

  std::vector<unsigned int>::resize(a1 + 12, v4);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentFaces(a1, a2);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentEdges(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentVectors(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(a1 + 16) + 8);
  v5 = *(a1 + 384);
  v6 = *(a1 + 392) - v5;
  if (*(a1 + 36) == 1)
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = (a1 + 384);
      v10 = a2;
LABEL_6:
      std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(v9, v8, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v4 > v6)
    {
      v9 = (a1 + 384);
      v10 = a2 + 4;
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    *(a1 + 392) = v5 + v4;
  }

LABEL_9:
  std::vector<unsigned int>::resize((a1 + 312), *(*(a1 + 16) + 8));
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentFaces(a1, a2);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentEdges(a1, a2);

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentVertices(a1, a2);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 64);
      do
      {
        v5 = *(*(result + 88) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 336) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 336) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 336) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 336) + v8) = a2[3];
          v9 = *(result + 264);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 336) + v4) = a2[v11];
            *(*(result + 264) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 88) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 120) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 336) + *v15) = *a2;
        *(*(result + 336) + v15[1]) = a2[1];
        *(*(result + 336) + v15[2]) = a2[2];
        *(*(result + 336) + v15[3]) = a2[3];
        v21 = *(result + 264);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 336) + v19) = v18[v20];
            *(*(result + 264) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  v2 = **(result + 8);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      LODWORD(v4) = *(result + 68);
      do
      {
        v5 = *(*(result + 104) + 8 * v3);
        if (v5 == 4)
        {
          *(*(result + 360) + v4) = *a2;
          v6 = v4 + 1;
          *(*(result + 360) + v6) = a2[1];
          v7 = v4 + 2;
          *(*(result + 360) + v7) = a2[2];
          v8 = v4 + 3;
          *(*(result + 360) + v8) = a2[3];
          v9 = *(result + 288);
          *(v9 + 4 * v4) = v3;
          *(v9 + 4 * v6) = v3;
          *(v9 + 4 * v7) = v3;
          *(v9 + 4 * v8) = v3;
          LODWORD(v4) = v4 + 4;
        }

        else if (v5 >= 1)
        {
          v10 = 0;
          v4 = v4;
          do
          {
            if (v5 <= 4)
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }

            *(*(result + 360) + v4) = a2[v11];
            *(*(result + 288) + 4 * v4++) = v3;
            ++v10;
          }

          while (v5 != v10);
        }

        ++v3;
      }

      while (v3 < **(result + 8));
    }
  }

  else if (v2 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = (*(result + 104) + 8 * v12);
      v14 = *v13;
      v15 = (*(result + 144) + 4 * v13[1]);
      if ((*(*(result + 408) + v12) & 1) != 0 && v14 == 4)
      {
        *(*(result + 360) + *v15) = *a2;
        *(*(result + 360) + v15[1]) = a2[1];
        *(*(result + 360) + v15[2]) = a2[2];
        *(*(result + 360) + v15[3]) = a2[3];
        v21 = *(result + 288);
        *(v21 + 4 * *v15) = v12;
        *(v21 + 4 * v15[1]) = v12;
        *(v21 + 4 * v15[2]) = v12;
        *(v21 + 4 * v15[3]) = v12;
      }

      else if (v14 >= 1)
      {
        v17 = 0;
        v18 = &a2[4 * !(*(*(result + 408) + v12) & 1)];
        do
        {
          v19 = v15[v17];
          if (v19 != -1)
          {
            if (v14 <= 4)
            {
              v20 = v17;
            }

            else
            {
              v20 = 0;
            }

            *(*(result + 360) + v19) = v18[v20];
            *(*(result + 288) + 4 * v15[v17]) = v12;
          }

          ++v17;
        }

        while (v14 != v17);
      }

      ++v12;
    }

    while (v12 < **(result + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeParentFromParentEdges(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 8) + 4);
  if (*(result + 36))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(result + 72);
      do
      {
        *(*(result + 360) + v4) = *a2;
        *(*(result + 360) + v4 + 1) = a2[1];
        v5 = (*(result + 288) + 4 * v4);
        *v5 = v3;
        v5[1] = v3++;
        v4 += 2;
      }

      while (v3 < *(*(result + 8) + 4));
    }
  }

  else if (v2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (*(result + 192) + 8 * v6);
      if (*(*(result + 432) + v6))
      {
        *(*(result + 360) + *v7) = *a2;
        *(*(result + 360) + v7[1]) = a2[1];
        v12 = *(result + 288);
        *(v12 + 4 * *v7) = v6;
        *(v12 + 4 * v7[1]) = v6;
      }

      else
      {
        v8 = 0;
        v9 = 1;
        do
        {
          v10 = v9;
          v11 = v7[v8];
          if (v11 != -1)
          {
            *(*(result + 360) + v11) = a2[v8 + 4];
            *(*(result + 288) + 4 * v7[v8]) = v6;
          }

          v9 = 0;
          v8 = 1;
        }

        while ((v10 & 1) != 0);
      }

      ++v6;
    }

    while (v6 < *(*(result + 8) + 4));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentFaces(uint64_t result, _BYTE *a2)
{
  if (*(result + 52))
  {
    v2 = *(result + 8);
    v3 = *v2;
    if (*(result + 36))
    {
      if (v3 >= 1)
      {
        v4 = 0;
        v5 = *(result + 312) + 4 * *(result + 76);
        do
        {
          *(v5 + 4 * v4) = v4;
          ++v4;
        }

        while (v4 < *v2);
      }
    }

    else if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v7 = *(*(result + 168) + 4 * i);
        if (v7 != -1)
        {
          if (*(*(result + 408) + i))
          {
            *(*(result + 384) + v7) = *a2;
            v2 = *(result + 8);
          }

          *(*(result + 312) + 4 * v7) = i;
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentEdges(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 4);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 80);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 4));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 216) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 432) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 4));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexParentFromParentVertices(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 8);
  v3 = *(v2 + 8);
  if (*(result + 36))
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(result + 312) + 4 * *(result + 84);
      do
      {
        *(v5 + 4 * v4) = v4;
        ++v4;
      }

      while (v4 < *(v2 + 8));
    }
  }

  else if (v3 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(result + 240) + 4 * v6);
      if (v7 != -1)
      {
        if (*(*(result + 456) + v6))
        {
          *(*(result + 384) + v7) = *a2;
          v2 = *(result + 8);
        }

        *(*(result + 312) + 4 * v7) = v6;
      }

      ++v6;
    }

    while (v6 < *(v2 + 8));
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 12);
  v4 = *v2;
  v5 = *(v2 + 13) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 13) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append((v2 + 24), v4 - v5);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagsFromParentFaces(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 240);
  v4 = *(v2 + 4);
  v5 = *(v2 + 248) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 248) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::ETag>::__append(v2 + 240, v4 - v5);
  }

  v6 = *(this + 11);
  if (v6 >= 1)
  {
    v7 = *(this + 17);
    v8 = v7 + v6;
    do
    {
      *(*(*(this + 2) + 240) + v7++) = 0;
    }

    while (v7 < v8);
  }

  return OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagsFromParentEdges(this);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagVectors(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(*(this + 2) + 432, *(*(this + 2) + 8));
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentFaces(this);
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentEdges(this);
  result = OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentVertices(this);
  if ((*(this + 36) & 1) == 0)
  {
    v3 = *(this + 2);
    if (*(v3 + 8) >= 1)
    {
      v4 = 0;
      do
      {
        if (*(*(this + 48) + v4))
        {
          *(*(v3 + 432) + 2 * v4) |= 0x800u;
          v3 = *(this + 2);
        }

        ++v4;
      }

      while (v4 < *(v3 + 8));
    }
  }

  return result;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateFaceTagsFromParentFaces(uint64_t this)
{
  v1 = *(this + 40);
  if (v1 >= 1)
  {
    v2 = *(this + 64);
    v3 = v2 + v1;
    do
    {
      *(*(*(this + 16) + 96) + v2) = *(*(*(this + 8) + 96) + *(*(this + 264) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateEdgeTagsFromParentEdges(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 >= 1)
  {
    v2 = *(this + 72);
    v3 = v2 + v1;
    do
    {
      *(*(*(this + 16) + 240) + v2) = *(*(*(this + 8) + 240) + *(*(this + 288) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentFaces(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v2 = *(this + 76);
    v3 = v2 + v1;
    if (*(*(this + 8) + 12) <= 0)
    {
      if (v1 >= 1)
      {
        do
        {
          *(*(*(this + 16) + 432) + 2 * v2) = 128;
          if (*(*(*(this + 8) + 24) + 8 * *(*(this + 312) + 4 * v2)) != *(this + 32))
          {
            *(*(*(this + 16) + 432) + 2 * v2) |= 2u;
          }

          ++v2;
        }

        while (v2 < v3);
      }
    }

    else if (v1 >= 1)
    {
      do
      {
        *(*(*(this + 16) + 432) + 2 * v2++) = 128;
      }

      while (v2 < v3);
    }
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentEdges(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(this[27] + 4 * v2);
      if (v4 != -1)
      {
        v5 = *(*(v1 + 240) + v2);
        v6 = v5 >> 3;
        v7 = v5 >> 1;
        v8 = v5 & 1;
        v9 = v3 & 0xFFFF883A;
        v10 = v5 >> 2;
        v11 = (v5 << 12) & (v8 << 14);
        if ((v5 & 0xC) != 0)
        {
          v12 = 512;
        }

        else
        {
          v12 = 128;
        }

        v3 = v9 & 0xFFFFCFBB | (4 * (v7 & 1)) & 0xBF | ((v6 & 1) << 6) | v12 & 0xFFFFCFFF | ((v10 & 1) << 12) & 0xDFFF | ((v10 & 1) << 13) | v11 | v8;
        *(*(this[2] + 432) + 2 * v4) = v3;
        v1 = this[1];
      }

      ++v2;
    }

    while (v2 < *(v1 + 4));
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::populateVertexTagsFromParentVertices(uint64_t this)
{
  v1 = *(this + 60);
  if (v1 >= 1)
  {
    v2 = *(this + 84);
    v3 = v2 + v1;
    do
    {
      *(*(*(this + 16) + 432) + 2 * v2) = *(*(*(this + 8) + 432) + 2 * *(*(this + 312) + 4 * v2));
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideEdgeSharpness(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = *(this + 6);
  v2 = v27;
  v3 = *(this + 2);
  v4 = v3[27];
  v3 += 27;
  v3[1] = v4;
  std::vector<float>::resize(v3, *(v3 - 53));
  v28 = &v30;
  v29 = 0x1000000000;
  __p = 0;
  v5 = v2 & 0x60;
  if (v5 && (v6 = *(*(this + 1) + 20), v6 >= 0x11))
  {
    operator delete(0);
    v7 = operator new(4 * v6);
    __p = v7;
    v28 = v7;
    HIDWORD(v29) = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 12);
  if (v8 >= 1)
  {
    v9 = *(this + 18);
    v10 = v9 + v8;
    while (1)
    {
      v11 = *(this + 2);
      v12 = *(v11 + 216);
      v13 = *(v11 + 240);
      if ((*(v13 + v9) & 4) != 0)
      {
        goto LABEL_20;
      }

      if ((*(v13 + v9) & 8) != 0)
      {
        break;
      }

LABEL_23:
      if (++v9 >= v10)
      {
        v7 = __p;
        goto LABEL_25;
      }
    }

    v14 = *(*(this + 36) + 4 * v9);
    v15 = *(this + 1);
    v16 = v15[27];
    v17 = *(v16 + 4 * v14);
    if (v5)
    {
      v18 = *(v15[15] + 8 * v14 + 4 * ((*(*(this + 45) + v9) >> 3) & 3));
      v19 = v15[42];
      v20 = *(v19 + 8 * v18);
      v21 = v28;
      if (v20 >= 1)
      {
        v22 = (v15[45] + 4 * *(v19 + 8 * v18 + 4));
        v23 = v28;
        v24 = v20;
        do
        {
          v25 = *v22++;
          *v23++ = *(v16 + 4 * v25);
          --v24;
        }

        while (v24);
      }

      v26 = OpenSubdiv::v3_1_1::Sdc::Crease::SubdivideEdgeSharpnessAtVertex(&v27, v17, v20, v21);
      goto LABEL_14;
    }

    if (v17 <= 0.0)
    {
      goto LABEL_21;
    }

    if (v17 < 10.0)
    {
      if (v17 <= 1.0)
      {
LABEL_21:
        *(v12 + 4 * v9) = 0;
      }

      else
      {
        v26 = v17 + -1.0;
LABEL_14:
        *(v12 + 4 * v9) = v26;
        if (v26 > 0.0)
        {
          goto LABEL_23;
        }
      }

      *(v13 + v9) &= ~8u;
      goto LABEL_23;
    }

LABEL_20:
    *(v12 + 4 * v9) = 1092616192;
    goto LABEL_23;
  }

LABEL_25:
  operator delete(v7);
}

void OpenSubdiv::v3_1_1::Vtr::internal::Refinement::subdivideVertexSharpness(OpenSubdiv::v3_1_1::Vtr::internal::Refinement *this)
{
  v2 = *(this + 2);
  *(v2 + 416) = *(v2 + 408);
  std::vector<float>::resize((v2 + 408), *(v2 + 8));
  v3 = *(this + 15);
  if (v3 >= 1)
  {
    v4 = *(this + 21);
    v5 = v4 + v3;
    while (1)
    {
      v6 = *(this + 2);
      v7 = *(v6 + 408);
      v8 = *(v6 + 432);
      v9 = *(v8 + 2 * v4);
      if ((v9 & 0x10) != 0)
      {
        goto LABEL_10;
      }

      if ((v9 & 0x20) != 0)
      {
        break;
      }

LABEL_13:
      if (++v4 >= v5)
      {
        return;
      }
    }

    v10 = *(*(*(this + 1) + 408) + 4 * *(*(this + 39) + 4 * v4));
    if (v10 <= 0.0)
    {
      goto LABEL_11;
    }

    if (v10 < 10.0)
    {
      if (v10 <= 1.0)
      {
LABEL_11:
        *(v7 + 4 * v4) = 0;
      }

      else
      {
        v11 = v10 + -1.0;
        *(v7 + 4 * v4) = v11;
        if (v11 > 0.0)
        {
          goto LABEL_13;
        }
      }

      *(v8 + 2 * v4) &= ~0x20u;
      goto LABEL_13;
    }

LABEL_10:
    *(v7 + 4 * v4) = 1092616192;
    goto LABEL_13;
  }
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::Refinement::reclassifySemisharpVertices(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = *(this + 80);
    v3 = v2 + v1;
    while (1)
    {
      v4 = *(this + 16);
      v5 = *(v4 + 432);
      v6 = *(v5 + 2 * v2);
      if ((v6 & 0x40) != 0)
      {
        break;
      }

LABEL_16:
      if (++v2 >= v3)
      {
        goto LABEL_17;
      }
    }

    v7 = (*(this + 192) + 8 * *(*(this + 312) + 4 * v2));
    if ((*(*(this + 384) + v2) & 1) == 0)
    {
      v8 = ((*(*(v4 + 240) + v7[1]) >> 3) & 1) + ((*(*(v4 + 240) + *v7) >> 3) & 1);
      v9 = v6 & 0xFFFFF83F | ((v8 != 0) << 6) | (128 << v8);
LABEL_15:
      *(v5 + 2 * v2) = v9;
      goto LABEL_16;
    }

    v10 = *v7;
    if (v10 == -1 || (*(*(v4 + 240) + v10) & 8) == 0)
    {
      v11 = v7[1];
      if (v11 == -1)
      {
        v13 = v6 & 0xF83F;
      }

      else
      {
        v12 = 8 * *(*(v4 + 240) + v11);
        v13 = v6 & 0xF83F;
        if ((v12 & 0x40) != 0)
        {
          v14 = v12 & 0x40;
          v15 = 512;
LABEL_14:
          LOWORD(v9) = v14 | v15 | v13;
          goto LABEL_15;
        }
      }

      v14 = 0;
      v15 = 128;
      goto LABEL_14;
    }

    v13 = v6 & 0xF83F;
    v15 = 512;
    v14 = 64;
    goto LABEL_14;
  }

LABEL_17:
  v16 = *(this + 60);
  if (v16 >= 1)
  {
    v17 = *(this + 84);
    v18 = v17 + v16;
    while (1)
    {
      v19 = *(*(this + 312) + 4 * v17);
      v20 = *(this + 8);
      v21 = *(v20[54] + 2 * v19);
      if ((v21 & 0x60) != 0)
      {
        v22 = *(this + 16);
        v23 = v22[54];
        v24 = *(v23 + 2 * v17);
        if ((v21 & 0x40) != 0 || (((v24 & 0x20) == 0) & (v21 >> 5)) != 0)
        {
          break;
        }
      }

LABEL_37:
      if (++v17 >= v18)
      {
        return this;
      }
    }

    v25 = v22[45];
    if (((v22[46] - v25) >> 2) < 1)
    {
      v32 = v20[42];
      v33 = *(v32 + 8 * v19);
      if (v33 >= 1)
      {
        v34 = *(v32 + 8 * v19 + 4);
        v35 = (v20[45] + 4 * v34);
        v36 = (v20[48] + 2 * v34);
        v29 = 0;
        v37 = v22[30];
        do
        {
          v38 = *v35++;
          v39 = *(this + 192) + 8 * v38;
          LODWORD(v38) = *v36++;
          v29 = vadd_s32(v29, (*&vshl_u32(vand_s8(vdup_n_s32(*(v37 + *(v39 + 4 * v38))), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          --v33;
        }

        while (v33);
        goto LABEL_30;
      }
    }

    else
    {
      v26 = (v22[42] + 8 * v17);
      v27 = *v26;
      if (v27 >= 1)
      {
        v28 = (v25 + 4 * v26[1]);
        v29 = 0;
        v30 = v22[30];
        do
        {
          v31 = *v28++;
          v29 = vadd_s32(v29, (*&vshl_u32(vand_s8(vdup_n_s32(*(v30 + v31)), 0xFF000000FFLL), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          --v27;
        }

        while (v27);
LABEL_30:
        v40 = v29.i32[0];
        v41 = (v29.i32[0] > 0) << 6;
        v42 = v29.i32[1];
        goto LABEL_32;
      }
    }

    v42 = 0;
    v40 = 0;
    v41 = 0;
LABEL_32:
    v43 = *(v23 + 2 * v17);
    v44 = v41 | v24 & 0xFFBF;
    *(v23 + 2 * v17) = v44;
    if ((v43 & 0x30) == 0)
    {
      v45 = v40 + v42;
      if (v45 <= 2)
      {
        v46 = ((1 << v45) & 0xF) << 7;
      }

      else
      {
        v46 = 1024;
      }

      *(v23 + 2 * v17) = v46 | v44 & 0xF84F;
    }

    goto LABEL_37;
  }

  return this;
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = &v3[-*a1] >> 2;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v4 + 4 * a2;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v3) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v4;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = &v3[4 * v6];
    bzero(v3, 4 * v6);
    a1[1] = v11;
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::Refinement::markSparseEdgeChildren(void *this)
{
  v1 = this[1];
  if (*(v1 + 4) >= 1)
  {
    for (i = 0; i < *(v1 + 4); ++i)
    {
      v3 = (this[24] + 8 * i);
      v4 = this[54];
      if (*(v4 + i))
      {
        v7 = 2;
        *v3 = 2;
      }

      else
      {
        v5 = (*(v1 + 120) + 8 * i);
        v6 = this[57];
        if (*(v6 + *v5))
        {
          *v3 = 1;
          *(this[27] + 4 * i) = 1;
        }

        if ((*(v6 + v5[1]) & 1) == 0)
        {
          goto LABEL_10;
        }

        v7 = 1;
      }

      v3[1] = v7;
      *(this[27] + 4 * i) = v7;
LABEL_10:
      v8 = *(v1 + 168);
      v9 = (*(v1 + 144) + 8 * i);
      v10 = *v9;
      v11 = (v8 + 4 * v9[1]);
      if (v10 == 2)
      {
        v12 = *(v4 + i) & 0xE1 | (2 * ((*(this[51] + v11[1]) ^ *(this[51] + *v11)) & 1));
      }

      else if (v10 > 1)
      {
        v14 = *v11;
        v13 = v11 + 1;
        v15 = *(this[51] + v14);
        v16 = *(v4 + i) & 0xE1;
        *(v4 + i) = v16;
        v17 = v10 - 1;
        while (1)
        {
          v18 = *v13++;
          if ((*(this[51] + v18) ^ v15))
          {
            break;
          }

          if (!--v17)
          {
            goto LABEL_20;
          }
        }

        v12 = v16 | 2;
      }

      else
      {
        v12 = *(v4 + i) & 0xE1;
      }

      *(v4 + i) = v12;
LABEL_20:
      v1 = this[1];
    }
  }

  return this;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::SparseTag>::__append(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v10 = &v4[a2];
      do
      {
        *v4++ &= 0xE0u;
        --v2;
      }

      while (v2);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = &v4[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v5 - *a1;
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

    v11 = v6;
    v12 = &v6[a2];
    v13 = v11;
    do
    {
      *v13++ &= 0xE0u;
      --v2;
    }

    while (v2);
    v15 = *a1;
    v14 = *(a1 + 8);
    v16 = &v11[*a1 - v14];
    memcpy(v16, *a1, v14 - *a1);
    *a1 = v16;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(uint64_t a1, unint64_t a2)
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

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Refinement::ChildTag>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::Error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v13 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x2800uLL, v10, &a9);
  return printf("%s: %s\n", OpenSubdiv::v3_1_1::Far::Error(OpenSubdiv::v3_1_1::Far::ErrorType,char const*,...)::errorTypeLabel[v9], __str);
}

uint64_t OpenSubdiv::v3_1_1::Far::Warning(OpenSubdiv::v3_1_1::Far *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x1EEE9AC00](this);
  v5 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x2800uLL, v2, va);
  return fprintf(*MEMORY[0x1E69E9858], "Warning: %s\n", __str);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::applyRefinement(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 8) = *(*(this + 2) + 8);
  v2 = *(this + 2);
  v3 = *(this + 4);
  *(v3 + 12) = *(v2 + 12);
  *(v3 + 13) = *(v2 + 13);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(this);
  OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(this);
  v4 = *(this + 4);
  if ((*(v4 + 13) & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(this);
    v4 = *(this + 4);
  }

  if (*(v4 + 16) <= *(*(this + 3) + 8))
  {
    v6 = *(*v4 + 48);
    v7 = *(*v4 + 56) - v6;
    v8 = *(v4 + 24);

    return memcpy(v8, v6, (v7 << 30 >> 30) & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::initializeFaceValuesFromVertexFaceSiblings(v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::estimateAndAllocateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *this;
  v3 = *(*this + 52);
  v4 = *(*this + 56);
  if (v4 >= 1)
  {
    v5 = *(v2 + 80);
    v6 = v5 + v4;
    do
    {
      v7 = *(*(v2 + 312) + 4 * v5);
      if (*(*(*(this + 2) + 48) + v7))
      {
        v8 = *(*(*(this + 1) + 144) + 8 * v7);
      }

      else
      {
        v8 = 1;
      }

      v3 += v8;
      ++v5;
    }

    while (v5 < v6);
  }

  v9 = *(v2 + 60);
  if (v9 >= 1)
  {
    v10 = *(v2 + 84);
    v11 = v10 + v9;
    v12 = *(v2 + 312);
    do
    {
      v3 += *(*(*(this + 2) + 72) + 2 * *(v12 + 4 * v10++));
    }

    while (v10 < v11);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::resizeComponents(*(this + 4));
  v13 = *(this + 4);
  v14 = *(v13 + 168);
  v15 = *(v13 + 176) - v14;
  if (v3 <= v15)
  {
    if (v3 < v15)
    {
      *(v13 + 176) = v14 + v3;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(v13 + 168, v3 - v15);
  }

  v16 = 0;
  std::vector<unsigned short>::resize(this + 5, v3, &v16);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  *(*(this + 4) + 16) = 0;
  if (*(*this + 37) == 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(this);

    return OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(this);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::trimAndFinalizeChildValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = *(this + 4);
  v3 = *(v2 + 168);
  v4 = *(v2 + 16);
  v5 = *(v2 + 176) - v3;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      *(v2 + 176) = v3 + v4;
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(v2 + 168, v4 - v5);
    v2 = *(this + 4);
  }

  if ((*(v2 + 13) & 1) == 0)
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::CreaseEndPair>::resize((v2 + 192), *(v2 + 16));
    v2 = *(this + 4);
  }

  std::vector<unsigned short>::resize(this + 5, *(v2 + 16));
  std::vector<unsigned int>::resize((*(this + 4) + 144), *(*(this + 4) + 16));
  v6 = *(this + 4);
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = *(v6 + 144);
    do
    {
      *(v8 + 4 * v7) = v7;
      ++v7;
    }

    while (v7 < *(v6 + 16));
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateEdgeTags(void *this)
{
  LODWORD(v1) = *(*this + 44);
  if (v1 >= 1)
  {
    v2 = 0;
    do
    {
      *(*(this[4] + 48) + v2++) = 0;
    }

    while (v2 < *(*this + 44));
    LODWORD(v1) = *(*this + 44);
  }

  if (v1 < *(this[3] + 4))
  {
    v1 = v1;
    do
    {
      *(*(this[4] + 48) + v1) = *(*(this[2] + 48) + *(*(*this + 288) + 4 * v1));
      ++v1;
    }

    while (v1 < *(this[3] + 4));
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueTags(int **this)
{
  v2 = *this;
  v3 = (*this)[13];
  if (v3 >= 1)
  {
    v4 = v2[19];
    v5 = v3 + v4;
    v6 = *(*(this[4] + 12) + 4 * v4);
    do
    {
      *(*(this[4] + 21) + v6) = 0;
      ++v4;
      ++v6;
    }

    while (v4 < v5);
    v2 = *this;
  }

  v7 = v2[14];
  if (v7 >= 1)
  {
    v8 = v2[20];
    v9 = v8 + v7;
    if (*(this[2] + 13))
    {
      v10 = 1;
    }

    else
    {
      v10 = 9;
    }

    do
    {
      v11 = this[4];
      v12 = *(*(v11 + 9) + 2 * v8);
      v13 = *(*(v11 + 12) + 4 * v8);
      v14 = *(v11 + 21);
      if ((*(*(this[2] + 6) + *(*(*this + 39) + 4 * v8)) & 9) != 0)
      {
        if (v12)
        {
          memset((v14 + v13), v10, v12);
        }
      }

      else if (v12)
      {
        bzero((v14 + v13), v12);
      }

      ++v8;
    }

    while (v8 < v9);
    v2 = *this;
  }

  v15 = v2[15];
  if (v15 >= 1)
  {
    v16 = v2[21];
    v17 = v16 + v15;
    do
    {
      v18 = *(*(*this + 39) + 4 * v16);
      memcpy((*(this[4] + 21) + *(*(this[4] + 12) + 4 * v16++)), (*(this[2] + 21) + *(*(this[2] + 12) + 4 * v18)), *(*(this[2] + 9) + 2 * v18));
    }

    while (v16 < v17);
  }
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::propagateValueCreases(void *this)
{
  v1 = *this;
  if (*(*this + 32) == 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = *(v1 + 56);
  if (v3 >= 1)
  {
    v4 = *(v1 + 80);
    v5 = v4 + v3;
    v6 = this[4];
    v7 = v6[9];
    v8 = v6[12];
    v9 = v6[21];
    do
    {
      v10 = *(v8 + 4 * v4);
      v11 = (v9 + v10);
      if ((*(v9 + v10) & 1) != 0 && (*(*(v1 + 384) + v4) & 1) == 0)
      {
        v12 = *(v7 + 2 * v4);
        if (*(v7 + 2 * v4))
        {
          v13 = 0;
          v14 = (v6[24] + 4 * v10 + 2);
          do
          {
            v15 = *v11++;
            if ((v15 & 0x18) != 0)
            {
              *(v14 - 1) = v13;
              *v14 = v2 - 1 + v13;
            }

            v13 += v2;
            v14 += 2;
            --v12;
          }

          while (v12);
        }
      }

      ++v4;
    }

    while (v4 < v5);
  }

  v16 = *(v1 + 60);
  if (v16 >= 1)
  {
    v17 = *(v1 + 84);
    v18 = v17 + v16;
    do
    {
      v19 = this[4];
      v20 = *(v19[12] + 4 * v17);
      v21 = (v19[21] + v20);
      if ((*v21 & 1) != 0 && (*(*(*this + 384) + v17) & 1) == 0)
      {
        v22 = *(v19[9] + 2 * v17);
        if (*(v19[9] + 2 * v17))
        {
          v23 = (*(this[2] + 192) + 4 * *(*(this[2] + 96) + 4 * *(*(*this + 312) + 4 * v17)));
          v24 = (v19[24] + 4 * v20);
          do
          {
            v25 = *v21++;
            if ((v25 & 0x18) != 0)
            {
              *v24 = *v23;
            }

            ++v24;
            ++v23;
            --v22;
          }

          while (v22);
        }
      }

      ++v17;
    }

    while (v17 < v18);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::reclassifySemisharpValues(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this)
{
  v2 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 3) + 20);
  v45 = &v46;
  v4 = *(*(this + 2) + 14);
  __p = 0;
  if (v3 >= 0x11)
  {
    v2 = operator new(4 * v3);
    __p = v2;
    v45 = v2;
  }

  v5 = *(*this + 60);
  if (v5 >= 1)
  {
    v6 = *(*this + 84);
    v7 = v6 + v5;
    while (1)
    {
      v8 = *(this + 4);
      v9 = *(v8[12] + 4 * v6);
      v10 = (v8[21] + v9);
      if ((*v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = *this;
      if (*(*(*this + 384) + v6))
      {
        goto LABEL_9;
      }

      v12 = *(*(v11 + 312) + 4 * v6);
      v13 = *(this + 1);
      if ((*(v13[54] + 2 * v12) & 0x60) == 0)
      {
        goto LABEL_9;
      }

      v14 = *(this + 3);
      v15 = *(v14[54] + 2 * v6);
      if ((v15 & 0x30) != 0)
      {
        goto LABEL_9;
      }

      v16 = *(v8[9] + 2 * v6);
      if ((v15 & 0x40) == 0)
      {
        if (*(v8[9] + 2 * v6))
        {
          do
          {
            if ((*v10 & 0x10) != 0)
            {
              *v10 = *v10 & 0xC7 | 8;
            }

            ++v10;
            --v16;
          }

          while (v16);
        }

        goto LABEL_9;
      }

      v17 = v8[24];
      v18 = v14[45];
      if (((v14[46] - v18) & 0x3FFFFFFFCLL) != 0)
      {
        v19 = *(v14[42] + 8 * v6);
        v20 = (v18 + 4 * *(v14[42] + 8 * v6 + 4));
      }

      else
      {
        v21 = v13[42];
        v19 = *(v21 + 8 * v12);
        v20 = v45;
        if (v19 >= 1)
        {
          v22 = 0;
          v23 = *(v21 + 8 * v12 + 4);
          v24 = v13[45] + 4 * v23;
          v25 = v13[48] + 2 * v23;
          v26 = *(v11 + 192);
          do
          {
            *(v45 + v22) = *(v26 + 8 * *(v24 + 4 * v22) + 4 * *(v25 + 2 * v22));
            ++v22;
          }

          while (v19 != v22);
        }
      }

      if (v16)
      {
        break;
      }

LABEL_9:
      if (++v6 >= v7)
      {
        v2 = __p;
        goto LABEL_51;
      }
    }

    v27 = 0;
    v28 = v17 + 4 * v9;
    while (1)
    {
      v29 = v10[v27];
      if ((v29 & 0x30) == 0x10)
      {
        v30 = (v28 + 4 * v27);
        v31 = *v30;
        v32 = v30[1];
        if (v32 <= v31)
        {
          if (v31 <= v32)
          {
            goto LABEL_41;
          }

          v36 = *(*(this + 3) + 240);
          if (v31 + 1 < v19)
          {
            v37 = v31 + 2;
            v38 = v20 + v31 + 1;
            do
            {
              v39 = *v38++;
              v40 = *(v36 + v39);
              if ((v40 & 8) != 0)
              {
                break;
              }
            }

            while (v37++ < v19);
            if ((v40 & 8) != 0)
            {
              goto LABEL_42;
            }
          }

          v42 = 0;
          do
          {
            v43 = *(v36 + *(v20 + v42));
            v35 = (v43 >> 3) & 1;
            if (v42 >= v32)
            {
              break;
            }

            ++v42;
          }

          while ((v43 & 8) == 0);
        }

        else
        {
          v33 = v31 + 1;
          do
          {
            v34 = *(*(*(this + 3) + 240) + *(v20 + v33));
            v35 = (v34 >> 3) & 1;
            if (v33 >= v32)
            {
              break;
            }

            ++v33;
          }

          while ((v34 & 8) == 0);
        }

        if ((v35 & 1) == 0)
        {
LABEL_41:
          v10[v27] = v29 & 0xC7 | 8;
        }
      }

LABEL_42:
      if (++v27 == v16)
      {
        if (v16 == 2 && (v4 & 1) != 0)
        {
          v44 = *v10;
          if ((*v10 & 0x20) != 0 && (v10[1] & 0x10) == 0)
          {
LABEL_50:
            *v10 = v44 & 0xDF;
          }

          else if ((*v10 & 0x10) == 0 && (v10[1] & 0x20) != 0)
          {
            v44 = *++v10;
            goto LABEL_50;
          }
        }

        goto LABEL_9;
      }
    }
  }

LABEL_51:
  operator delete(v2);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromFaceVertices(void *this)
{
  v1 = *(*this + 52);
  if (v1 >= 1)
  {
    v2 = *(*this + 76);
    v3 = v2 + v1;
    v4 = this[4];
    v5 = *(v4 + 96);
    v6 = *(v4 + 72);
    v7 = *(v4 + 16);
    do
    {
      *(v5 + 4 * v2) = v7;
      *(v6 + 2 * v2) = 1;
      v7 = *(v4 + 16) + 1;
      *(v4 + 16) = v7;
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromEdgeVertices(void *this)
{
  v1 = *this;
  v2 = *(*this + 56);
  if (v2 >= 1)
  {
    v3 = *(v1 + 80);
    v4 = v3 + v2;
    v5 = *(v1 + 312);
    v6 = this[4];
    v7 = *(v6 + 96);
    v8 = *(this[2] + 48);
    v9 = *(v6 + 16);
    v10 = vdupq_n_s64(8uLL);
    v11 = *(v6 + 72);
    do
    {
      v12 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v9;
      if (*(v8 + v12))
      {
        v14 = this[1];
        v15 = *(v14 + 144);
        v13 = *(v15 + 8 * v12);
        if (v13 != 1)
        {
          v16 = *(v14 + 168);
          v17 = *(v15 + 8 * v12 + 4);
          if (v13 >= 1)
          {
            v18 = 0;
            v19 = vdupq_n_s64(v13 - 1);
            v20 = (this[5] + 2 * v9 + 8);
            v21 = xmmword_1E3049620;
            v22 = xmmword_1E3049640;
            v23 = xmmword_1E3049660;
            v24 = xmmword_1E305F210;
            do
            {
              v25 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s8(vuzp1_s16(v25, 6), 6).u8[0])
              {
                *(v20 - 4) = v18;
              }

              if (vuzp1_s8(vuzp1_s16(v25, 6), 6).i8[1])
              {
                *(v20 - 3) = v18 | 1;
              }

              if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, *&v22))), 6).i8[2])
              {
                *(v20 - 2) = v18 | 2;
                *(v20 - 1) = v18 | 3;
              }

              v26 = vmovn_s64(vcgeq_u64(v19, v23));
              if (vuzp1_s8(6, vuzp1_s16(v26, 6)).i32[1])
              {
                *v20 = v18 | 4;
              }

              if (vuzp1_s8(6, vuzp1_s16(v26, 6)).i8[5])
              {
                v20[1] = v18 | 5;
              }

              if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v19, *&v24)))).i8[6])
              {
                v20[2] = v18 | 6;
                v20[3] = v18 | 7;
              }

              v18 += 8;
              v23 = vaddq_s64(v23, v10);
              v22 = vaddq_s64(v22, v10);
              v21 = vaddq_s64(v21, v10);
              v24 = vaddq_s64(v24, v10);
              v20 += 8;
            }

            while (((v13 + 7) & 0xFFFFFFF8) != v18);
          }

          v27 = *(*v6 + 264);
          v28 = *(v27 + 8 * v3);
          if (v28 >= 1)
          {
            v29 = 0;
            v30 = v16 + 4 * v17;
            v31 = (8 * v3) | 4;
            v32 = *(this[3] + 288) + 4 * *(*(this[3] + 264) + v31);
            v33 = *(v6 + 120) + 2 * *(v27 + v31);
            v34 = *(v1 + 264);
            do
            {
              v35 = *(v34 + 4 * *(v32 + 4 * v29));
              if (v13 == 2)
              {
                if (v35 == *(v30 + 4))
                {
                  *(v33 + 2 * v29) = 1;
                }
              }

              else if (v13 >= 1)
              {
                for (i = 0; i != v13; ++i)
                {
                  if (v35 == *(v30 + 4 * i))
                  {
                    *(v33 + 2 * v29) = i;
                  }
                }
              }

              ++v29;
            }

            while (v29 != v28);
          }
        }
      }

      else
      {
        LODWORD(v13) = 1;
      }

      *(v11 + 2 * v3) = v13;
      v9 = *(v6 + 16) + v13;
      *(v6 + 16) = v9;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::populateChildValuesFromVertexVertices(void *this)
{
  v1 = *this;
  v2 = *(*this + 60);
  if (v2 >= 1)
  {
    v3 = *(v1 + 84);
    v4 = v3 + v2;
    v5 = *(v1 + 312);
    v6 = this[4];
    v7 = *(v6 + 96);
    v8 = this[2];
    v9 = v8[12];
    v10 = v8[21];
    v11 = *(v6 + 16);
    v12 = *(v6 + 72);
    do
    {
      v13 = *(v5 + 4 * v3);
      *(v7 + 4 * v3) = v11;
      if (*(v10 + *(v9 + 4 * v13)))
      {
        v14 = *(v8[9] + 2 * v13);
        if (v14 >= 2)
        {
          v15 = 0;
          v16 = vdupq_n_s64(v14 - 2);
          v17 = (this[5] + 2 * v11 + 8);
          do
          {
            v18 = vdupq_n_s64(v15);
            v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049620)));
            if (vuzp1_s8(vuzp1_s16(v19, 6), 6).u8[0])
            {
              *(v17 - 3) = v15 | 1;
            }

            if (vuzp1_s8(vuzp1_s16(v19, 6), 6).i8[1])
            {
              *(v17 - 2) = v15 | 2;
            }

            if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049640)))), 6).i8[2])
            {
              *(v17 - 1) = v15 | 3;
              *v17 = v15 | 4;
            }

            v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E3049660)));
            if (vuzp1_s8(6, vuzp1_s16(v20, 6)).i32[1])
            {
              v17[1] = v15 | 5;
            }

            if (vuzp1_s8(6, vuzp1_s16(v20, 6)).i8[5])
            {
              v17[2] = v15 | 6;
            }

            if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v18, xmmword_1E305F210))))).i8[6])
            {
              v17[3] = v15 | 7;
              v17[4] = v15 + 8;
            }

            v15 += 8;
            v17 += 8;
          }

          while (((v14 + 6) & 0x1FFF8) != v15);
          v21 = (*(*v6 + 264) + 8 * v3);
          v22 = *v21;
          if (v22 >= 1)
          {
            v23 = (v8[15] + 2 * *(*(*v8 + 264) + 4 * ((2 * v13) | 1)));
            v24 = (*(v6 + 120) + 2 * v21[1]);
            do
            {
              v25 = *v23++;
              *v24++ = v25;
              --v22;
            }

            while (v22);
          }
        }
      }

      else
      {
        LODWORD(v14) = 1;
      }

      *(v12 + 2 * v3) = v14;
      v11 = *(v6 + 16) + v14;
      *(v6 + 16) = v11;
      ++v3;
    }

    while (v3 < v4);
  }

  return this;
}

float OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement::getFractionalWeight(OpenSubdiv::v3_1_1::Vtr::internal::FVarRefinement *this, int a2, unsigned int a3, int a4)
{
  v4 = a4;
  v5 = a3;
  v72 = *MEMORY[0x1E69E9840];
  v7 = v70;
  v68 = v70;
  v69 = 0x1000000000;
  v71 = 0;
  v8 = *(this + 1);
  v9 = v8[45];
  v10 = a2;
  v11 = (2 * a2) | 1;
  v12 = v8[42];
  v13 = *(v12 + 4 * v11);
  v14 = (v9 + 4 * v13);
  v15 = *(v12 + 8 * a2);
  v16 = *(this + 3);
  v17 = v16[45];
  if (((v16[46] - v17) & 0x3FFFFFFFCLL) != 0)
  {
    v62 = a4;
    v7 = (v17 + 4 * *(v16[42] + 8 * a4 + 4));
    goto LABEL_11;
  }

  if (v15)
  {
    v62 = a4;
    if (v15 <= 0x10)
    {
      LODWORD(v69) = *(v12 + 8 * a2);
      v18 = v8[48] + 2 * *(v12 + 4 * v11);
    }

    else
    {
      v61 = a2;
      operator delete(0);
      v7 = operator new(4 * v15);
      v71 = v7;
      v68 = v7;
      LODWORD(v69) = v15;
      HIDWORD(v69) = v15;
      if (v15 < 1)
      {
        v10 = v61;
        v5 = a3;
        goto LABEL_11;
      }

      v18 = *(*(this + 1) + 384) + 2 * *(*(*(this + 1) + 336) + 4 * v11);
      v10 = v61;
      v5 = a3;
    }

    v23 = 0;
    v24 = *(*this + 192);
    do
    {
      v7[v23] = *(v24 + 8 * v14[v23] + 4 * *(v18 + 2 * v23));
      ++v23;
    }

    while (v15 != v23);
LABEL_11:
    v22 = v66;
    v64 = v66;
    LODWORD(v65) = 2 * v15;
    HIDWORD(v65) = 32;
    v67 = 0;
    if ((2 * v15) < 0x21)
    {
      v21 = 0;
    }

    else
    {
      v25 = v10;
      v26 = v13;
      v27 = v9;
      v28 = v5;
      v29 = operator new(4 * (2 * v15));
      v5 = v28;
      v9 = v27;
      v13 = v26;
      v10 = v25;
      v21 = v29;
      v67 = v29;
      v64 = v29;
      HIDWORD(v65) = 2 * v15;
      v22 = v29;
    }

    v4 = v62;
    goto LABEL_15;
  }

  v19 = a2;
  operator delete(0);
  v5 = a3;
  v10 = v19;
  v21 = 0;
  v69 = 0x1000000000;
  v22 = v66;
  v64 = v66;
  v65 = 0x2000000000;
  v67 = 0;
  v68 = v70;
LABEL_15:
  v30 = (*(*(this + 2) + 192) + 4 * *(*(*(this + 2) + 96) + 4 * v10) + 4 * v5);
  v31 = *v30;
  v32 = v30[1];
  v33 = (v32 - v31);
  if (v32 <= v31)
  {
    v34 = *(this + 1);
    if (v31 <= v32)
    {
      LODWORD(v33) = 0;
      v36 = *(this + 3);
    }

    else
    {
      v44 = *(v34 + 216);
      v36 = *(this + 3);
      v45 = *(v36 + 216);
      if (v31 + 1 >= v15)
      {
        v46 = 0;
      }

      else
      {
        v46 = (v15 + ~v31);
        v47 = &v7[v31 + 1];
        v48 = (4 * v13 + 4 * v31 + v9 + 4);
        v49 = v22;
        v50 = v46;
        do
        {
          v51 = *v48++;
          *v49 = *(v44 + 4 * v51);
          v52 = *v47++;
          v49[v15] = *(v45 + 4 * v52);
          ++v49;
          --v50;
        }

        while (v50);
      }

      v53 = v32 + 1;
      v54 = &v22[v46];
      LODWORD(v33) = v32 + v46 + 1;
      do
      {
        v55 = *v14++;
        *v54 = *(v44 + 4 * v55);
        v56 = *v7++;
        v54[v15] = *(v45 + 4 * v56);
        ++v54;
        --v53;
      }

      while (v53);
    }
  }

  else
  {
    v34 = *(this + 1);
    v35 = *(v34 + 216);
    v36 = *(this + 3);
    v37 = *(v36 + 216);
    v38 = &v7[v31 + 1];
    v39 = (4 * v13 + 4 * v31 + v9 + 4);
    v40 = v22;
    v41 = v33;
    do
    {
      v42 = *v39++;
      *v40 = *(v35 + 4 * v42);
      v43 = *v38++;
      v40[v15] = *(v37 + 4 * v43);
      ++v40;
      --v41;
    }

    while (v41);
  }

  v63 = *(*this + 24);
  v57 = OpenSubdiv::v3_1_1::Sdc::Crease::ComputeFractionalWeightAtVertex(&v63, *(*(v34 + 408) + 4 * v10), *(*(v36 + 408) + 4 * v4), v33, v22, &v22[v15]);
  v58 = *&v57;
  operator delete(v21);
  operator delete(v71);
  return v58;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::FVarLevel::ValueTag>::__append(uint64_t a1, unint64_t a2)
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

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  *this = &unk_1F5D1A3D0;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);
}

{
  OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::~TriRefinement(this);

  JUMPOUT(0x1E6906520);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v4 = *(end + 9);
  v3 = *(end + 10);
  v6 = *(end + 15);
  v5 = *(end + 16);
  v8 = *end;
  v7 = end[1];
  v9 = end[2];
  __x = 4;
  std::vector<unsigned int>::resize(this + 21, 2 * v8, &__x);
  v10 = this->__end_;
  begin = this[21].__begin_;
  if (*v10 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = begin + 1;
    do
    {
      *v14 = v12;
      v14 += 2;
      ++v13;
      v12 += 4;
    }

    while (v13 < *v10);
  }

  v15 = (this[21].__end_ - begin) >> 2;
  this[3].__end_cap_.__value_ = begin;
  LODWORD(this[4].__begin_) = v15;
  v16 = *(v10 + 3);
  v17 = (*(v10 + 4) - v16) >> 2;
  this[4].__end_ = v16;
  LODWORD(this[4].__end_cap_.__value_) = v17;
  v18 = 0;
  std::vector<unsigned int>::resize(this + 5, 4 * v8, &v18);
  std::vector<unsigned int>::resize(this + 6, ((v3 - v4) >> 2), &v18);
  std::vector<unsigned int>::resize(this + 8, ((v5 - v6) >> 2), &v18);
  std::vector<unsigned int>::resize(this + 7, 0, &v18);
  std::vector<unsigned int>::resize(this + 9, v7, &v18);
  std::vector<unsigned int>::resize(this + 10, v9, &v18);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 2, 3 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  if (*v3 >= 1)
  {
    v4 = 0;
    v5 = *(v3 + 6);
    v6 = *(v3 + 9);
    v7 = *(this + 15);
    v8 = *(this + 27);
    v9 = (*(this + 11) + 4);
    v10 = (*(v3 + 3) + 4);
    do
    {
      v11 = *v10;
      v10 += 2;
      v12 = (v5 + 4 * v11);
      v13 = (v6 + 4 * v11);
      v14 = *v9;
      v9 += 2;
      v15 = *(v8 + 4 * *v13);
      v16 = *(v8 + 4 * v13[1]);
      v17 = (v7 + 4 * v14);
      v18 = *(v8 + 4 * v13[2]);
      if (*v17 != -1)
      {
        v19 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * *v17) | 1)));
        *v19 = *(*(this + 30) + 4 * *v12);
        v19[1] = v15;
        v19[2] = v18;
      }

      v20 = v17[1];
      if (v20 != -1)
      {
        v21 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v20) | 1)));
        *v21 = v15;
        v21[1] = *(*(this + 30) + 4 * v12[1]);
        v21[2] = v16;
      }

      v22 = v17[2];
      if (v22 != -1)
      {
        v23 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v22) | 1)));
        *v23 = v18;
        v23[1] = v16;
        v23[2] = *(*(this + 30) + 4 * v12[2]);
      }

      v24 = v17[3];
      if (v24 != -1)
      {
        v25 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v24) | 1)));
        *v25 = v16;
        v25[1] = v18;
        v25[2] = v15;
      }

      ++v4;
    }

    while (v4 < *v3);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 2);
  begin_low = SLODWORD(v2->__begin_);
  __x = 3;
  std::vector<unsigned int>::resize(v2 + 1, 2 * begin_low, &__x);
  v4 = *(this + 2);
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (*(v4 + 3) + 4);
    do
    {
      *v7 = v5;
      v7 += 2;
      ++v6;
      v5 += 3;
    }

    while (v6 < *v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 3, 3 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  if (*v3 >= 1)
  {
    v4 = 0;
    v5 = *(v3 + 3);
    v6 = *(v3 + 6);
    v7 = *(v3 + 9);
    v8 = *(this + 11);
    v9 = *(this + 15);
    v10 = *(this + 13);
    v11 = *(this + 18);
    v12 = *(this + 24);
    v13 = *(v3 + 15);
    do
    {
      v14 = 0;
      v15 = (8 * v4) | 4;
      v16 = *(v5 + v15);
      v17 = (v6 + 4 * v16);
      v18 = (v7 + 4 * v16);
      v19 = *(v8 + v15);
      v20 = *(v10 + v15);
      do
      {
        v22 = *v18++;
        v21 = v22;
        v23 = (v13 + 8 * v22);
        v24 = *v23 != v23[1] && *v17 != *v23;
        v25 = v12 + 8 * v21;
        v26 = *(v25 + 4 * v24);
        LODWORD(v25) = *(v25 + 4 * !v24);
        v27 = (&v38 + v14);
        *v27 = v26;
        v27[1] = v25;
        v14 += 8;
        ++v17;
      }

      while (v14 != 24);
      v28 = (v9 + 4 * v19);
      v29 = (v11 + 4 * v20);
      if (*v28 != -1)
      {
        v30 = (*(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * *v28) | 1)));
        v31 = v41;
        *v30 = v38;
        v30[1] = *v29;
        v30[2] = v31;
      }

      v32 = v28[1];
      if (v32 != -1)
      {
        v33 = *(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v32) | 1));
        *v33 = v39;
        *(v33 + 8) = v29[1];
      }

      v34 = v28[2];
      if (v34 != -1)
      {
        v35 = *(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v34) | 1));
        *v35 = v29[2];
        *(v35 + 4) = v40;
      }

      v36 = v28[3];
      if (v36 != -1)
      {
        v37 = (*(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v36) | 1)));
        *v37 = v29[2];
        v37[1] = *v29;
        v37[2] = v29[1];
      }

      ++v4;
    }

    while (v4 < *v3);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  std::vector<unsigned int>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  v2 = *(this + 1);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = *(v2 + 9);
    v5 = *(this + 18);
    v6 = *(this + 27);
    v7 = (*(this + 13) + 4);
    v8 = (*(v2 + 3) + 4);
    do
    {
      v9 = *v8;
      v8 += 2;
      v10 = (v4 + 4 * v9);
      v11 = *v7;
      v7 += 2;
      v12 = *(v6 + 4 * *v10);
      v13 = *(v6 + 4 * v10[1]);
      v14 = (v5 + 4 * v11);
      v15 = *(v6 + 4 * v10[2]);
      v16 = *v14;
      if (v16 != -1)
      {
        v17 = (*(*(this + 2) + 120) + 8 * v16);
        *v17 = v12;
        v17[1] = v15;
      }

      v18 = v14[1];
      if (v18 != -1)
      {
        v19 = (*(*(this + 2) + 120) + 8 * v18);
        *v19 = v13;
        v19[1] = v12;
      }

      v20 = v14[2];
      if (v20 != -1)
      {
        v21 = (*(*(this + 2) + 120) + 8 * v20);
        *v21 = v15;
        v21[1] = v13;
      }

      ++v3;
    }

    while (v3 < *v2);
  }

  if (v2[1] >= 1)
  {
    v22 = 0;
    v23 = (*(this + 24) + 4);
    v24 = (*(v2 + 15) + 4);
    do
    {
      v25 = *(v23 - 1);
      if (v25 != -1)
      {
        v26 = (*(*(this + 2) + 120) + 8 * v25);
        *v26 = *(*(this + 27) + 4 * v22);
        v26[1] = *(*(this + 30) + 4 * *(v24 - 1));
      }

      v27 = *v23;
      if (v27 != -1)
      {
        v28 = (*(*(this + 2) + 120) + 8 * v27);
        *v28 = *(*(this + 27) + 4 * v22);
        v28[1] = *(*(this + 30) + 4 * *v24);
      }

      ++v22;
      v23 += 2;
      v24 += 2;
    }

    while (v22 < v2[1]);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(this + 19) - *(this + 18)) >> 2));
  std::vector<unsigned int>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<unsigned int>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  v4 = *(this + 1);
  v3 = *(this + 2);
  *(v3 + 16) = *(v4 + 16);
  v5 = *v4;
  if (*v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 11);
    v8 = *(this + 15);
    v9 = *(this + 13);
    v10 = *(this + 18);
    do
    {
      v11 = *(v9 + 8 * v6);
      if (v11 >= 1)
      {
        v12 = (8 * v6) | 4;
        v13 = (v8 + 4 * *(v7 + v12));
        v14 = (v10 + 4 * *(v9 + v12));
        v15 = v13[3];
        v16 = 1;
        do
        {
          v18 = *v14++;
          v17 = v18;
          if (v18 != -1)
          {
            v19 = *(v3 + 144);
            v20 = (v19 + 8 * v17);
            *v20 = 2;
            if (v17)
            {
              v21 = *(v20 - 1) + *(v20 - 2);
            }

            else
            {
              v21 = 0;
            }

            v22 = v16 % 3;
            v23 = 2 * v17;
            v20[1] = v21;
            v24 = *(v3 + 16);
            if (v24 <= 2)
            {
              v24 = 2;
            }

            *(v3 + 16) = v24;
            v25 = *(v19 + 4 * (v23 | 1));
            v26 = (*(v3 + 168) + 4 * v25);
            v27 = (*(v3 + 192) + 2 * v25);
            if (*v13 == -1)
            {
              v28 = 0;
            }

            else
            {
              *v26 = *v13;
              *v27 = v22;
              v28 = 1;
            }

            if (v15 != -1)
            {
              v26[v28] = v15;
              v27[v28] = v22;
              LODWORD(v28) = v28 + 1;
            }

            *v20 = v28;
          }

          ++v16;
          ++v13;
          --v11;
        }

        while (v11);
        v5 = *v4;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v29 = *(v4 + 4);
  if (v29 >= 1)
  {
    v30 = 0;
    v31 = *(this + 24);
    do
    {
      v32 = (v31 + 8 * v30);
      if (*v32 != -1 || v32[1] != -1)
      {
        v33 = 0;
        v34 = *(*(v4 + 144) + 8 * v30);
        v35 = *(*(v4 + 144) + 8 * v30 + 4);
        v36 = *(v4 + 168) + 4 * v35;
        v37 = *(v4 + 192) + 2 * v35;
        v38 = (*(v4 + 120) + 8 * v30);
        v39 = 1;
        do
        {
          v40 = v39;
          v41 = v32[v33];
          if (v41 != -1)
          {
            v42 = *(v3 + 144);
            v43 = (v42 + 8 * v41);
            *v43 = v34;
            if (v41)
            {
              v44 = *(v43 - 1) + *(v43 - 2);
            }

            else
            {
              v44 = 0;
            }

            v43[1] = v44;
            v45 = *(v3 + 16);
            if (v45 <= v34)
            {
              v45 = v34;
            }

            *(v3 + 16) = v45;
            if (v34 < 1)
            {
              v46 = 0;
            }

            else
            {
              v46 = 0;
              v47 = *(v42 + 4 * ((2 * v41) | 1));
              v48 = *(v3 + 168) + 4 * v47;
              v49 = *(v3 + 192) + 2 * v47;
              v50 = *(v4 + 24);
              v51 = *(this + 11);
              v52 = *(this + 15);
              v53 = v36;
              v54 = v37;
              v55 = v34;
              do
              {
                v57 = *v53++;
                v56 = v57;
                LODWORD(v57) = *v54++;
                v58 = v57;
                v59 = (2 * v56) | 1;
                v60 = v33;
                if (*v38 != v38[1])
                {
                  v60 = *(*(v4 + 48) + 4 * *(v50 + 4 * v59) + 4 * v58) != v38[v33];
                }

                v61 = v52 + 4 * *(v51 + 4 * v59);
                v62 = v60 + v58;
                if (v62 == *(v50 + 8 * v56))
                {
                  v63 = 0;
                }

                else
                {
                  v63 = v62;
                }

                v64 = *(v61 + 4 * v63);
                if (v64 != -1)
                {
                  *(v48 + 4 * v46) = v64;
                  *(v49 + 2 * v46++) = v58;
                }

                --v55;
              }

              while (v55);
            }

            *v43 = v46;
          }

          v39 = 0;
          v33 = 1;
        }

        while ((v40 & 1) != 0);
        v29 = *(v4 + 4);
      }

      ++v30;
    }

    while (v30 < v29);
  }

  v65 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v66 = *v65;
  v67 = v65[1];
  std::vector<unsigned int>::resize((v3 + 168), v67 + v66);
  v68 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v68, v67 + v66);
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = ((*(*(this + 1) + 296) - *(*(this + 1) + 288)) >> 2) + 3 * ((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2);
  std::vector<unsigned int>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 288), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v2);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(this);
  }

  v3 = *(this + 2);
  v4 = (*(v3 + 264) + 4 * (2 * *(v3 + 8) - 2));
  v5 = *v4;
  v6 = v4[1];
  std::vector<unsigned int>::resize((v3 + 288), v6 + v5);
  v7 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v7, v6 + v5);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              *(v17 + 4 * v14) = v24;
              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v22 + 1 - 3 * ((1431655766 * (v22 + 1)) >> 32);
            v25 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v26 = *(v25 + 4 * v24);
            if (v26 != -1)
            {
              *(v17 + 4 * v14) = v26;
              *(v18 + 2 * v14++) = v23;
            }

            v27 = *(v25 + 12);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              *(v18 + 2 * v14++) = v23 + 2 - 3 * ((1431655766 * (v23 + 2)) >> 32);
            }

            v28 = *(v25 + 4 * v23);
            if (v28 != -1)
            {
              *(v17 + 4 * v14) = v28;
              *(v18 + 2 * v14++) = v24;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 368) - *(v2 + 360)) >> 2) + 2 * (*(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2));
  std::vector<unsigned int>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<unsigned int>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v23 = *v17++;
            v24 = v22 + 8 * v23;
            LODWORD(v23) = *v18++;
            v25 = *(v24 + 4 * v23);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        if (v7 < 1)
        {
          v18 = 0;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = v6 + 4 * v8;
          v21 = v9 + 2 * v8;
          v22 = (v10 + 8 * v3);
          v23 = v11 + 8 * v3;
          v24 = *(v14 + 4 * ((2 * v5) | 1));
          v25 = *(v12 + 360) + 4 * v24;
          v26 = *(v12 + 384) + 2 * v24;
          v27 = this[13];
          v28 = this[18];
          v29 = -1;
          do
          {
            v30 = *(v21 + 2 * v17);
            v31 = (2 * *(v20 + 4 * v17)) | 1;
            v32 = v28 + 4 * *(v27 + 4 * v31);
            if (v17)
            {
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * *(v21 + 2 * v17));
            }

            else
            {
              if (*v22 != v22[1])
              {
                v19 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * *(v21 + 2 * v17)) != *v22;
              }

              v35 = *(v23 + 4 * !v19);
              v29 = *(v23 + 4 * v19);
              v33 = *(v32 + 4 * (v30 + 1 - 3 * ((1431655766 * (v30 + 1)) >> 32)));
              v34 = *(v32 + 4 * *(v21 + 2 * v17));
              if (v35 != -1)
              {
                *(v25 + 4 * v18) = v35;
                *(v26 + 2 * v18++) = 0;
              }
            }

            if (v33 != -1)
            {
              *(v25 + 4 * v18) = v33;
              *(v26 + 2 * v18++) = 1;
            }

            if (v34 != -1)
            {
              *(v25 + 4 * v18) = v34;
              *(v26 + 2 * v18++) = 0;
            }

            if (!v17 && v29 != -1)
            {
              *(v25 + 4 * v18) = v29;
              *(v26 + 2 * v18++) = 0;
            }

            ++v17;
          }

          while (v7 != v17);
        }

        *v15 = v18;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::TriRefinement::markSparseFaceChildren(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    v3 = 4;
    *&v4 = 0x200000002;
    *(&v4 + 1) = 0x200000002;
    do
    {
      v5 = this[15] + 4 * *(this[11] + v3);
      v6 = this[18] + 4 * *(this[13] + v3);
      v7 = this[51];
      if (*(v7 + v2))
      {
        *v5 = v4;
        *v6 = 2;
        *(v6 + 4) = 0x200000002;
        *(v7 + v2) &= 0xE1u;
      }

      else
      {
        v8 = *(*(v1 + 3) + v3);
        v9 = (*(v1 + 6) + 4 * v8);
        if (*(this[57] + v9[2]) & 1 | ((*(this[57] + v9[1]) & 1) + (*(this[57] + *v9) & 1)))
        {
          v10 = *(this[54] + *(*(v1 + 9) + 4 * v8 + 4)) & 0xE | (*(this[54] + *(*(v1 + 9) + 4 * v8)) >> 1) & 0xF | (2 * *(this[54] + *(*(v1 + 9) + 4 * v8 + 8))) & 0xC;
          *(v7 + v2) = *(v7 + v2) & 0xE0 | (2 * v10);
          if (v10)
          {
            *(v5 + 12) = 1;
            *v6 = 1;
            *(v6 + 4) = 0x100000001;
          }

          v11 = this[57];
          if (*(v11 + *v9))
          {
            *v5 = 1;
            *v6 = 1;
          }

          if (*(v11 + v9[1]))
          {
            *(v5 + 4) = 1;
            *(v6 + 4) = 1;
          }

          if (*(v11 + v9[2]))
          {
            *(v5 + 8) = 1;
            *(v6 + 8) = 1;
          }
        }
      }

      ++v2;
      v1 = this[1];
      v3 += 8;
    }

    while (v2 < *v1);
  }

  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::EndCapBSplineBasisPatchFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v6 = **(*(a2 + 88) + 24 * ((*(a2 + 8) >> 2) & 0xF));
  v7 = 7 * v6;
  v8 = 112 * v6;
  if (v8 >= 104857600)
  {
    v9 = 104857600;
  }

  else
  {
    v9 = v8;
  }

  std::vector<int>::reserve((a3 + 16), v7);
  std::vector<int>::reserve((a3 + 64), v9);
  std::vector<int>::reserve((a3 + 88), v9);
  v10 = *(a1 + 8);
  if (v10)
  {
    std::vector<int>::reserve((v10 + 16), v7);
    std::vector<int>::reserve((v10 + 64), v7);
    std::vector<int>::reserve((v10 + 88), v7);
  }

  return a1;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::GetPatchPoints(uint64_t a1, void *a2, int a3, __int16 *a4, unsigned int a5, unsigned int a6)
{
  v8 = a2[3];
  v9 = (a2[6] + 4 * *(v8 + 8 * a3 + 4));
  v10 = *(v8 + 8 * a3);
  if ((a6 & 0x80000000) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }

  v11 = 0;
  v12 = -1;
  do
  {
    v14 = *(a2[54] + 2 * v9->i32[v11]);
    if ((v14 & 0x780) != 0x80 || (v15 = *a4) != 0)
    {
      LOBYTE(v15) = 1;
    }

    if ((v14 & 2) != 0)
    {
      if (v12 < 0)
      {
        v12 = v11;
      }

      else
      {
        LOBYTE(v15) = 1;
      }
    }

    if (v11 > 2)
    {
      break;
    }

    ++v11;
    a4 += 3;
  }

  while ((v15 & 1) == 0);
  if ((v15 & 1) == 0)
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(a1, a2, a3, v12, v9, v10, a5, a6);
  }

  else
  {
    return OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(a1);
  }
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPointsFromGregoryBasis(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v53 = v5;
  v6 = v1;
  v82[16] = *MEMORY[0x1E69E9840];
  v7 = *(v1 + 16);
  if ((v2 & 0x80000000) != 0)
  {
    v11 = *(v7 + 20);
  }

  else
  {
    v9 = v7 + 40;
    v8 = *(v7 + 40);
    v10 = *(v9 + 8) - v8;
    if ((v10 >> 3) < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = (v10 >> 3);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        v13 = *v8++;
        v11 += *(*(*(v13 + 456) + 8 * v2) + 16);
        --v12;
      }

      while (v12);
    }
  }

  v14 = *(v1 + 24);
  v15 = 16;
  do
  {
    v58[0] = v14 + v11;
    std::vector<int>::push_back[abi:nn200100]((v6 + 32), v58);
    v14 = *(v6 + 24) + 1;
    *(v6 + 24) = v14;
    --v15;
  }

  while (v15);
  v54 = v4;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v58);
  v82[0] = v58;
  v82[1] = &v62;
  v82[2] = &v67;
  v82[3] = &v59;
  v82[4] = &v66;
  v82[5] = &v70;
  v82[6] = &v71;
  v82[7] = &v63;
  v82[8] = &v65;
  v82[9] = &v73;
  v82[10] = &v72;
  v82[11] = &v68;
  v82[12] = v61;
  v82[13] = v69;
  v82[14] = &v64;
  v82[15] = &v60;
  v16 = v58[4];
  v17 = &v78;
  v78 = &v80;
  v79 = 0x1000000010;
  v18 = 16;
  v81 = 0;
  do
  {
    *(v17 + 4) = 0;
    v17[3] = (v17 + 5);
    v17[45] = 0;
    v17[4] = 0x2800000028;
    v17 += 44;
    --v18;
  }

  while (v18);
  v19 = 0;
  v20 = &unk_1E3109F5C;
  do
  {
    v21 = 0;
    v55 = v19;
    v22 = 4 * v19;
    v23 = v82;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v78[44 * v21 + 44 * v22], v16);
      for (i = 0; i != 16; i += 4)
      {
        v25 = *&v20[i];
        if (v25 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v78[44 * v21 + 44 * v22], v23[i], v25);
        }
      }

      ++v21;
      ++v23;
    }

    while (v21 != 4);
    v19 = v55 + 1;
    v20 += 16;
  }

  while (v55 != 3);
  v26 = 0;
  for (j = 0; j != 4; ++j)
  {
    v28 = 0;
    v29 = &unk_1E3109F5C;
    do
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(v76, v16);
      v31 = 0;
      v32 = v26;
      do
      {
        v33 = *&v29[v31];
        if (v33 != 0.0)
        {
          OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(v76, (v78 + v32), v33);
        }

        v31 += 4;
        v32 += 352;
      }

      while (v31 != 16);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(v76, *v6, v30);
      operator delete(v77);
      ++v28;
      v29 += 16;
    }

    while (v28 != 4);
    v26 += 1408;
  }

  if (*(v6 + 8))
  {
    for (k = 0; k != 16; ++k)
    {
      v76[0] = *(v53 + 4 * dword_1E3109F9C[k]) + v54;
      v35 = *(v6 + 8);
      v57 = 1;
      std::vector<int>::push_back[abi:nn200100]((v35 + 16), &v57);
      std::vector<int>::push_back[abi:nn200100]((*(v6 + 8) + 64), v76);
      v36 = *(v6 + 8);
      v57 = 1065353216;
      std::vector<float>::push_back[abi:nn200100]((v36 + 88), &v57);
    }
  }

  v37 = *(v6 + 28);
  *(v6 + 28) = v37 + 1;
  v38 = *(v6 + 32);
  if (v79)
  {
    v39 = 0;
    v40 = 43;
    do
    {
      v41 = &v78[v40];
      v42 = &v78[v40 - 42];
      operator delete(v78[v40]);
      *v42 = (v41 - 40);
      *(v41 - 81) = 40;
      ++v39;
      v40 += 44;
    }

    while (v39 < v79);
  }

  operator delete(v81);
  v43 = &v75;
  v44 = -1408;
  do
  {
    operator delete(v43[42]);
    *v43 = (v43 + 2);
    *(v43 + 3) = 40;
    v43 -= 44;
    v44 += 352;
  }

  while (v44);
  v45 = &v74;
  v46 = -1408;
  do
  {
    operator delete(v45[42]);
    *v45 = (v45 + 2);
    *(v45 + 3) = 40;
    v45 -= 44;
    v46 += 352;
  }

  while (v46);
  for (m = 0; m != -352; m -= 88)
  {
    v48 = &v58[m];
    operator delete(*&v69[m * 4 + 344]);
    *(v48 + 485) = v48 + 974;
    v48[973] = 40;
  }

  v49 = 352;
  do
  {
    v50 = &v58[v49];
    operator delete(*&v61[v49 * 4 + 344]);
    *(v50 + 133) = v50 + 270;
    v50[269] = 40;
    v49 -= 88;
  }

  while (v49 * 4);
  v51 = 352;
  do
  {
    operator delete(*&v56[v51 * 4]);
    *&v58[v51 - 86] = &v58[v51 - 82];
    v58[v51 - 83] = 40;
    v51 -= 88;
  }

  while (v51 * 4);
  return v38 + (v37 << 6);
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(uint64_t a1, uint64_t a2, int a3, int a4, int32x4_t *a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v297 = *MEMORY[0x1E69E9840];
  v15 = 2 * *(a2 + 20);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v278, v15 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v275, v15 + 16);
  v249 = v15;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v272, v15 + 16);
  v16 = *(a2 + 20);
  v17 = v268;
  v266 = v268;
  v267 = 0x2800000000;
  v269 = 0;
  v18 = 2 * v16;
  if (v16)
  {
    if (v18 < 0x29)
    {
      goto LABEL_6;
    }

    operator delete(0);
    v266 = v268;
    HIDWORD(v267) = 40;
    v17 = operator new(4 * v18);
    v269 = v17;
    v19 = v18;
  }

  else
  {
    operator delete(0);
    v19 = 40;
  }

  v266 = v17;
  HIDWORD(v267) = v19;
LABEL_6:
  LODWORD(v267) = v18;
  v255 = a4;
  v250 = a8;
  v20 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(a2, a5->i32[a4], v17, a8);
  v21 = (v20 / 2);
  v256 = a5;
  v251 = a4;
  if (v20 < 2)
  {
    v247 = -6.2832;
    v248 = -6.2832;
  }

  else
  {
    v22 = 0;
    if (a4 + 3 <= 0)
    {
      v23 = -(-(a4 + 3) & 3);
    }

    else
    {
      v23 = (a4 + 3) & 3;
    }

    if (a4 + 1 <= 0)
    {
      v24 = -(-(a4 + 1) & 3);
    }

    else
    {
      v24 = (a4 + 1) & 3;
    }

    v25 = v266;
    v26 = a5->i32[v24];
    v27 = a5->i32[v23];
    v28 = -1;
    v29 = -1;
    do
    {
      v31 = *v25;
      v25 += 2;
      v30 = v31;
      if (v31 == v26)
      {
        v28 = v22;
      }

      if (v30 == v27)
      {
        v29 = v22;
      }

      ++v22;
    }

    while (v21 != v22);
    v247 = v28 * 6.2832;
    v248 = v29 * 6.2832;
  }

  LODWORD(v292) = 0;
  v293 = &v295;
  v296 = 0;
  v294 = 0x2800000028;
  LODWORD(v287) = 0;
  v288 = &v290;
  v291 = 0;
  v289 = 0x2800000028;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v292, v20 + 1);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Clear(&v287, v20 + 1);
  v32 = v21;
  v33 = cosf(6.2832 / v21);
  if (v20 > 1)
  {
    v34 = 0;
    v35 = 1.0 / ((((v33 + 5.0) + sqrtf((v33 + 9.0) * (v33 + 1.0))) * v32) * 0.0625);
    v36 = 2.0 / (v32 + 5.0);
    v252 = 1.0 / (v32 + 5.0);
    do
    {
      v37 = v34 + 1;
      v38 = (v34 + 1) % v21;
      v39 = &v266[2 * v34];
      v41 = *v39;
      v40 = v39[1];
      v42 = *&v266[2 * v38];
      v282 = &v284;
      __p = 0;
      v283 = 0x2800000004;
      v43 = v256->i32[v255];
      v285[0] = v32 / (v32 + 5.0);
      v284 = v43;
      v281 = 1;
      if (v43 == LODWORD(v42))
      {
        v285[0] = v36 + (v32 / (v32 + 5.0));
        v44 = 1;
        v45 = 1;
        v46 = v285;
      }

      else
      {
        v285[2] = 2.0 / (v32 + 5.0);
        v44 = 2;
        v45 = 2;
        v46 = v285;
        v285[1] = v42;
        v281 = 2;
      }

      while (*(v46 - 1) != v41)
      {
        v46 += 2;
        if (!--v45)
        {
          v47 = &v285[2 * v44 - 1];
          *v47 = v41;
          v47[1] = v36;
          v281 = ++v44;
          goto LABEL_30;
        }
      }

      *v46 = v36 + *v46;
LABEL_30:
      v48 = v44;
      v49 = v285;
      while (*(v49 - 1) != v40)
      {
        v49 += 2;
        if (!--v48)
        {
          v50 = &v285[2 * v44 - 1];
          *v50 = v40;
          v50[1] = v252;
          v281 = v44 + 1;
          goto LABEL_35;
        }
      }

      *v49 = v252 + *v49;
LABEL_35:
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v278, &v281, 1.0 / v32);
      v51 = __sincosf_stret((v34 * 6.2832) / v32);
      v52 = __sincosf_stret((v38 * 6.2832) / v32);
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v281, v35 * ((v52.__cosval * 0.5) + (v51.__cosval * 0.5)));
      OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v287, &v281, v35 * ((v52.__sinval * 0.5) + (v51.__sinval * 0.5)));
      operator delete(__p);
      ++v34;
    }

    while (v37 != v21);
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v275, &v278);
  v53 = __sincosf_stret(v247 / v32);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v275, &v292, v53.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v275, &v287, v53.__sinval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v272, &v278);
  v54 = __sincosf_stret(v248 / v32);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v272, &v292, v54.__cosval);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v272, &v287, v54.__sinval);
  operator delete(v291);
  operator delete(v296);
  operator delete(v269);
  v55 = v278;
  if (v278 >= 1)
  {
    v56 = v279;
    do
    {
      *v56 += a7;
      v56 += 2;
      --v55;
    }

    while (v55);
  }

  v57 = v275;
  if (v275 >= 1)
  {
    v58 = v276;
    do
    {
      *v58 += a7;
      v58 += 2;
      --v57;
    }

    while (v57);
  }

  v59 = v272;
  if (v272 >= 1)
  {
    v60 = v273;
    do
    {
      *v60 += a7;
      v60 += 2;
      --v59;
    }

    while (v59);
  }

  v61 = 0;
  v271[0] = vaddq_s32(*v256, vdupq_n_s32(a7));
  v62 = *(a2 + 24);
  v63 = *(a2 + 48);
  v64 = v63 + 4 * *(v62 + 4 * ((2 * a3) | 1));
  v65 = *(a2 + 288);
  v66 = *(a2 + 264);
  v67 = *(a2 + 312);
  v68 = 4;
  do
  {
    v69 = *(v64 + 4 * v61);
    v70 = *(v66 + 8 * v69 + 4);
    v71 = (v65 + 4 * v70);
    v72 = v67 + 2 * v70;
    v73 = v271 + v68;
    if (v61 == v251)
    {
      v74 = *(v66 + 8 * v69);
      if (v74 < 1)
      {
LABEL_51:
        LODWORD(v75) = -1;
      }

      else
      {
        v75 = 0;
        while (v71[v75] != a3)
        {
          if (v74 == ++v75)
          {
            goto LABEL_51;
          }
        }
      }

      *(v271 + v68) = *(v63 + 4 * *(v62 + 8 * v71[(v75 + 1) % v74] + 4) + 4 * ((*(v72 + 2 * ((v75 + 1) % v74)) - 1) & 3)) + a7;
      v76 = (v63 + 4 * *(v62 + 8 * v71[(v74 + v75 - 1) % v74] + 4) + 4 * ((*(v72 + 2 * ((v74 + v75 - 1) % v74)) + 1) & 3));
    }

    else
    {
      if (*v71 == a3)
      {
        v77 = 2;
      }

      else if (v71[1] == a3)
      {
        v77 = 3;
      }

      else
      {
        v77 = v71[2] != a3;
      }

      v78 = *(v72 + 2 * v77);
      v79 = v63 + 4 * *(v62 + 8 * v71[v77] + 4);
      *v73 = *(v79 + 4 * ((v78 + 1) & 3)) + a7;
      v73[1] = *(v79 + 4 * (v78 & 3 ^ 2)) + a7;
      v76 = (v79 + 4 * ((v78 - 1) & 3));
    }

    v73[2] = *v76 + a7;
    v68 += 3;
    ++v61;
  }

  while (v61 != 4);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v292, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v287, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v281, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v266, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v263, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v260, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(&v257, v249 + 16);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v287, &v275, 12.0);
  v80 = (&OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::rotation + 64 * v255);
  v81 = *(v271 + *v80);
  v82 = v287;
  v83 = v288;
  if (v287 < 1)
  {
LABEL_64:
    v86 = &v288[v287];
    *v86 = v81;
    *(v86 + 1) = -1062557013;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v84 = v288 + 1;
    v85 = v287;
    while (*(v84 - 1) != v81)
    {
      v84 += 2;
      if (!--v85)
      {
        goto LABEL_64;
      }
    }

    *v84 = *v84 + -5.3333;
  }

  v87 = *(v271 + v80[1]);
  if (v82 < 1)
  {
LABEL_70:
    v90 = &v83[v82];
    *v90 = v87;
    *(v90 + 1) = -1070945621;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v88 = v82;
    v89 = v83 + 1;
    while (*(v89 - 1) != v87)
    {
      v89 += 2;
      if (!--v88)
      {
        goto LABEL_70;
      }
    }

    *v89 = *v89 + -2.6667;
  }

  v253 = v80[2];
  v91 = *(v271 + v253);
  if (v82 < 1)
  {
LABEL_76:
    v94 = &v83[v82];
    *v94 = v91;
    *(v94 + 1) = -1087722837;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v92 = v82;
    v93 = v83 + 1;
    while (*(v93 - 1) != v91)
    {
      v93 += 2;
      if (!--v92)
      {
        goto LABEL_76;
      }
    }

    *v93 = *v93 + -0.66667;
  }

  v95 = *(v271 + v80[3]);
  if (v82 < 1)
  {
LABEL_82:
    v98 = &v83[v82];
    *v98 = v95;
    *(v98 + 1) = -1079334229;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v96 = v82;
    v97 = v83 + 1;
    while (*(v97 - 1) != v95)
    {
      v97 += 2;
      if (!--v96)
      {
        goto LABEL_82;
      }
    }

    *v97 = *v97 + -1.3333;
  }

  v99 = *(v271 + v80[6]);
  if (v82 < 1)
  {
LABEL_88:
    v102 = &v83[v82];
    *v102 = v99;
    *(v102 + 1) = -1096111445;
    LODWORD(v287) = ++v82;
  }

  else
  {
    v100 = v82;
    v101 = v83 + 1;
    while (*(v101 - 1) != v99)
    {
      v101 += 2;
      if (!--v100)
      {
        goto LABEL_88;
      }
    }

    *v101 = *v101 + -0.33333;
  }

  v103 = *(v271 + v80[7]);
  if (v82 < 1)
  {
LABEL_94:
    v106 = &v83[v82];
    *v106 = v103;
    *(v106 + 1) = -1087722837;
    LODWORD(v287) = v82 + 1;
  }

  else
  {
    v104 = v82;
    v105 = v83 + 1;
    while (*(v105 - 1) != v103)
    {
      v105 += 2;
      if (!--v104)
      {
        goto LABEL_94;
      }
    }

    *v105 = *v105 + -0.66667;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v281, &v275, -6.0);
  v107 = v281;
  v108 = v282;
  if (v281 < 1)
  {
LABEL_100:
    v111 = &v282[2 * v281];
    *v111 = v81;
    v111[1] = 1076538027;
    v281 = ++v107;
  }

  else
  {
    v109 = (v282 + 1);
    v110 = v281;
    while (*(v109 - 1) != v81)
    {
      v109 += 2;
      if (!--v110)
      {
        goto LABEL_100;
      }
    }

    *v109 = *v109 + 2.6667;
  }

  if (v107 < 1)
  {
LABEL_106:
    v114 = &v108[2 * v107];
    *v114 = v87;
    v114[1] = 1068149419;
    v281 = ++v107;
  }

  else
  {
    v112 = v107;
    v113 = (v108 + 1);
    while (*(v113 - 1) != v87)
    {
      v113 += 2;
      if (!--v112)
      {
        goto LABEL_106;
      }
    }

    *v113 = *v113 + 1.3333;
  }

  if (v107 < 1)
  {
LABEL_112:
    v117 = &v108[2 * v107];
    *v117 = v91;
    v117[1] = 1051372203;
    v281 = ++v107;
  }

  else
  {
    v115 = v107;
    v116 = (v108 + 1);
    while (*(v116 - 1) != v91)
    {
      v116 += 2;
      if (!--v115)
      {
        goto LABEL_112;
      }
    }

    *v116 = *v116 + 0.33333;
  }

  if (v107 < 1)
  {
LABEL_118:
    v120 = &v108[2 * v107];
    *v120 = v95;
    v120[1] = 1059760811;
    v281 = ++v107;
  }

  else
  {
    v118 = v107;
    v119 = (v108 + 1);
    while (*(v119 - 1) != v95)
    {
      v119 += 2;
      if (!--v118)
      {
        goto LABEL_118;
      }
    }

    *v119 = *v119 + 0.66667;
  }

  if (v107 < 1)
  {
LABEL_124:
    v123 = &v108[2 * v107];
    *v123 = v99;
    v123[1] = 1059760811;
    v281 = ++v107;
  }

  else
  {
    v121 = v107;
    v122 = (v108 + 1);
    while (*(v122 - 1) != v99)
    {
      v122 += 2;
      if (!--v121)
      {
        goto LABEL_124;
      }
    }

    *v122 = *v122 + 0.66667;
  }

  if (v107 < 1)
  {
LABEL_130:
    v126 = &v108[2 * v107];
    *v126 = v103;
    v126[1] = 1068149419;
    v281 = v107 + 1;
  }

  else
  {
    v124 = v107;
    v125 = (v108 + 1);
    while (*(v125 - 1) != v103)
    {
      v125 += 2;
      if (!--v124)
      {
        goto LABEL_130;
      }
    }

    *v125 = *v125 + 1.3333;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v266, &v287);
  v127 = *(v271 + v80[8]);
  v128 = v266;
  v129 = v267;
  if (v266 < 1)
  {
LABEL_136:
    v132 = (v267 + 8 * v266);
    *v132 = v127;
    v132[1] = 1065353216;
    LODWORD(v266) = ++v128;
  }

  else
  {
    v130 = (v267 + 4);
    v131 = v266;
    while (*(v130 - 1) != v127)
    {
      v130 += 2;
      if (!--v131)
      {
        goto LABEL_136;
      }
    }

    *v130 = *v130 + 1.0;
  }

  if (v128 < 1)
  {
LABEL_142:
    v135 = (v129 + 8 * v128);
    *v135 = v99;
    v135[1] = -1082130432;
    LODWORD(v266) = v128 + 1;
  }

  else
  {
    v133 = v128;
    v134 = (v129 + 4);
    while (*(v134 - 1) != v99)
    {
      v134 += 2;
      if (!--v133)
      {
        goto LABEL_142;
      }
    }

    *v134 = *v134 + -1.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v263, &v272, 12.0);
  v136 = v263;
  v137 = v264;
  if (v263 < 1)
  {
LABEL_148:
    v140 = (v264 + 8 * v263);
    *v140 = v81;
    v140[1] = -1062557013;
    v263 = ++v136;
  }

  else
  {
    v138 = (v264 + 4);
    v139 = v263;
    while (*(v138 - 1) != v81)
    {
      v138 += 2;
      if (!--v139)
      {
        goto LABEL_148;
      }
    }

    *v138 = *v138 + -5.3333;
  }

  if (v136 < 1)
  {
LABEL_154:
    v143 = (v137 + 8 * v136);
    *v143 = v87;
    v143[1] = -1079334229;
    v263 = ++v136;
  }

  else
  {
    v141 = v136;
    v142 = (v137 + 4);
    while (*(v142 - 1) != v87)
    {
      v142 += 2;
      if (!--v141)
      {
        goto LABEL_154;
      }
    }

    *v142 = *v142 + -1.3333;
  }

  if (v136 < 1)
  {
LABEL_160:
    v146 = (v137 + 8 * v136);
    *v146 = v91;
    v146[1] = -1087722837;
    v263 = ++v136;
  }

  else
  {
    v144 = v136;
    v145 = (v137 + 4);
    while (*(v145 - 1) != v91)
    {
      v145 += 2;
      if (!--v144)
      {
        goto LABEL_160;
      }
    }

    *v145 = *v145 + -0.66667;
  }

  if (v136 < 1)
  {
LABEL_166:
    v149 = (v137 + 8 * v136);
    *v149 = v95;
    v149[1] = -1070945621;
    v263 = ++v136;
  }

  else
  {
    v147 = v136;
    v148 = (v137 + 4);
    while (*(v148 - 1) != v95)
    {
      v148 += 2;
      if (!--v147)
      {
        goto LABEL_166;
      }
    }

    *v148 = *v148 + -2.6667;
  }

  v150 = *(v271 + v80[4]);
  if (v136 < 1)
  {
LABEL_172:
    v153 = (v137 + 8 * v136);
    *v153 = v150;
    v153[1] = -1096111445;
    v263 = ++v136;
  }

  else
  {
    v151 = v136;
    v152 = (v137 + 4);
    while (*(v152 - 1) != v150)
    {
      v152 += 2;
      if (!--v151)
      {
        goto LABEL_172;
      }
    }

    *v152 = *v152 + -0.33333;
  }

  v154 = *(v271 + v80[15]);
  if (v136 < 1)
  {
LABEL_178:
    v157 = (v137 + 8 * v136);
    *v157 = v154;
    v157[1] = -1087722837;
    v263 = v136 + 1;
  }

  else
  {
    v155 = v136;
    v156 = (v137 + 4);
    while (*(v156 - 1) != v154)
    {
      v156 += 2;
      if (!--v155)
      {
        goto LABEL_178;
      }
    }

    *v156 = *v156 + -0.66667;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v260, &v272, -6.0);
  v158 = v260;
  v159 = v261;
  if (v260 < 1)
  {
LABEL_184:
    v162 = (v261 + 8 * v260);
    *v162 = v81;
    v162[1] = 1076538027;
    v260 = ++v158;
  }

  else
  {
    v160 = (v261 + 4);
    v161 = v260;
    while (*(v160 - 1) != v81)
    {
      v160 += 2;
      if (!--v161)
      {
        goto LABEL_184;
      }
    }

    *v160 = *v160 + 2.6667;
  }

  if (v158 < 1)
  {
LABEL_190:
    v165 = (v159 + 8 * v158);
    *v165 = v87;
    v165[1] = 1059760811;
    v260 = ++v158;
  }

  else
  {
    v163 = v158;
    v164 = (v159 + 4);
    while (*(v164 - 1) != v87)
    {
      v164 += 2;
      if (!--v163)
      {
        goto LABEL_190;
      }
    }

    *v164 = *v164 + 0.66667;
  }

  if (v158 < 1)
  {
LABEL_196:
    v168 = (v159 + 8 * v158);
    *v168 = v91;
    v168[1] = 1051372203;
    v260 = ++v158;
  }

  else
  {
    v166 = v158;
    v167 = (v159 + 4);
    while (*(v167 - 1) != v91)
    {
      v167 += 2;
      if (!--v166)
      {
        goto LABEL_196;
      }
    }

    *v167 = *v167 + 0.33333;
  }

  if (v158 < 1)
  {
LABEL_202:
    v171 = (v159 + 8 * v158);
    *v171 = v95;
    v171[1] = 1068149419;
    v260 = ++v158;
  }

  else
  {
    v169 = v158;
    v170 = (v159 + 4);
    while (*(v170 - 1) != v95)
    {
      v170 += 2;
      if (!--v169)
      {
        goto LABEL_202;
      }
    }

    *v170 = *v170 + 1.3333;
  }

  if (v158 < 1)
  {
LABEL_208:
    v174 = (v159 + 8 * v158);
    *v174 = v150;
    v174[1] = 1059760811;
    v260 = ++v158;
  }

  else
  {
    v172 = v158;
    v173 = (v159 + 4);
    while (*(v173 - 1) != v150)
    {
      v173 += 2;
      if (!--v172)
      {
        goto LABEL_208;
      }
    }

    *v173 = *v173 + 0.66667;
  }

  if (v158 < 1)
  {
LABEL_214:
    v177 = (v159 + 8 * v158);
    *v177 = v154;
    v177[1] = 1068149419;
    v260 = v158 + 1;
  }

  else
  {
    v175 = v158;
    v176 = (v159 + 4);
    while (*(v176 - 1) != v154)
    {
      v176 += 2;
      if (!--v175)
      {
        goto LABEL_214;
      }
    }

    *v176 = *v176 + 1.3333;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::operator=(&v257, &v263);
  v178 = *(v271 + v80[14]);
  v179 = v257;
  v180 = v258;
  if (v257 < 1)
  {
LABEL_220:
    v183 = (v258 + 8 * v257);
    *v183 = v178;
    v183[1] = 1065353216;
    v257 = ++v179;
  }

  else
  {
    v181 = (v258 + 4);
    v182 = v257;
    while (*(v181 - 1) != v178)
    {
      v181 += 2;
      if (!--v182)
      {
        goto LABEL_220;
      }
    }

    *v181 = *v181 + 1.0;
  }

  if (v179 < 1)
  {
LABEL_226:
    v186 = (v180 + 8 * v179);
    *v186 = v150;
    v186[1] = -1082130432;
    v257 = v179 + 1;
  }

  else
  {
    v184 = v179;
    v185 = (v180 + 4);
    while (*(v185 - 1) != v150)
    {
      v185 += 2;
      if (!--v184)
      {
        goto LABEL_226;
      }
    }

    *v185 = *v185 + -1.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v278, 36.0);
  v187 = v292;
  v188 = v293;
  if (v292 < 1)
  {
LABEL_232:
    v191 = &v293[v292];
    *v191 = v81;
    *(v191 + 1) = -1048576000;
    LODWORD(v292) = ++v187;
  }

  else
  {
    v189 = v293 + 1;
    v190 = v292;
    while (*(v189 - 1) != v81)
    {
      v189 += 2;
      if (!--v190)
      {
        goto LABEL_232;
      }
    }

    *v189 = *v189 + -16.0;
  }

  if (v187 < 1)
  {
LABEL_238:
    v194 = &v188[v187];
    *v194 = v87;
    *(v194 + 1) = -1065353216;
    LODWORD(v292) = ++v187;
  }

  else
  {
    v192 = v187;
    v193 = v188 + 1;
    while (*(v193 - 1) != v87)
    {
      v193 += 2;
      if (!--v192)
      {
        goto LABEL_238;
      }
    }

    *v193 = *v193 + -4.0;
  }

  if (v187 < 1)
  {
LABEL_244:
    v197 = &v188[v187];
    *v197 = v95;
    *(v197 + 1) = -1065353216;
    LODWORD(v292) = v187 + 1;
  }

  else
  {
    v195 = v187;
    v196 = v188 + 1;
    while (*(v196 - 1) != v95)
    {
      v196 += 2;
      if (!--v195)
      {
        goto LABEL_244;
      }
    }

    *v196 = *v196 + -4.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v263, -4.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v287, -4.0);
  v198 = *(v271 + v253);
  v199 = v292;
  if (v292 < 1)
  {
LABEL_250:
    v202 = &v293[v292];
    *v202 = v198;
    *(v202 + 1) = -1082130432;
    LODWORD(v292) = v199 + 1;
  }

  else
  {
    v200 = v293 + 1;
    v201 = v292;
    while (*(v200 - 1) != v198)
    {
      v200 += 2;
      if (!--v201)
      {
        goto LABEL_250;
      }
    }

    *v200 = *v200 + -1.0;
  }

  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v281, -1.0);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::AddWithWeight(&v292, &v260, -1.0);
  v204 = *(a1 + 16);
  if ((v250 & 0x80000000) != 0)
  {
    v208 = *(v204 + 20);
  }

  else
  {
    v206 = v204 + 40;
    v205 = *(v204 + 40);
    v207 = *(v206 + 8) - v205;
    if ((v207 >> 3) < 1)
    {
      v208 = 0;
    }

    else
    {
      v208 = 0;
      v209 = (v207 >> 3);
      if (v209 <= 1)
      {
        v209 = 1;
      }

      do
      {
        v210 = *v205++;
        v208 += *(*(*(v210 + 456) + 8 * v250) + 16);
        --v209;
      }

      while (v209);
    }
  }

  v211 = v256->i32[v255];
  v212 = v251 + 1;
  v213 = v256->i32[(v251 + 1) & 3];
  v214 = v251 + 3;
  v254 = v256->i32[(v251 + 3) & 3];
  v215 = *(a1 + 24);
  *(a1 + 24) = v215 + 1;
  v216 = 3 * v255;
  *(&v271[1] + 3 * v255 + 2) = v215 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v287, *a1, v203);
  v218 = *(a1 + 8);
  if (v218)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v211 + a7), v218, v217);
  }

  v219 = *(a1 + 24);
  *(a1 + 24) = v219 + 1;
  v220 = v219 + v208;
  if (v212 <= 0)
  {
    v221 = -(-v212 & 3);
  }

  else
  {
    v221 = (v251 + 1) & 3;
  }

  v222 = 3 * v221;
  *(&v271[1] + 3 * v221) = v220;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v281, *a1, v217);
  v224 = *(a1 + 8);
  if (v224)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v213 + a7), v224, v223);
  }

  v225 = *(a1 + 24);
  *(a1 + 24) = v225 + 1;
  *(&v271[1] + v222 + 1) = v225 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v266, *a1, v223);
  v227 = *(a1 + 8);
  if (v227)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v213 + a7), v227, v226);
  }

  v228 = *(a1 + 24);
  *(a1 + 24) = v228 + 1;
  *(&v271[1] + v216) = v228 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v263, *a1, v226);
  v230 = *(a1 + 8);
  if (v230)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v211 + a7), v230, v229);
  }

  v231 = *(a1 + 24);
  *(a1 + 24) = v231 + 1;
  v232 = v231 + v208;
  if (v214 <= 0)
  {
    v233 = -(-v214 & 3);
  }

  else
  {
    v233 = v214 & 3;
  }

  v234 = 3 * v233;
  *(&v271[1] + 3 * v233 + 2) = v232;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v260, *a1, v229);
  v236 = *(a1 + 8);
  if (v236)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v254 + a7), v236, v235);
  }

  v237 = *(a1 + 24);
  *(a1 + 24) = v237 + 1;
  *(&v271[1] + v234 + 1) = v237 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v257, *a1, v235);
  v239 = *(a1 + 8);
  if (v239)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v254 + a7), v239, v238);
  }

  v240 = *(a1 + 24);
  *(a1 + 24) = v240 + 1;
  *(&v271[1] + v216 + 1) = v240 + v208;
  OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v292, *a1, v238);
  v242 = *(a1 + 8);
  if (v242)
  {
    OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable((v211 + a7), v242, v241);
  }

  for (i = 0; i != 16; ++i)
  {
    std::vector<int>::push_back[abi:nn200100]((a1 + 32), v271 + OpenSubdiv::v3_1_1::Far::EndCapBSplineBasisPatchFactory::getPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,int,OpenSubdiv::v3_1_1::Vtr::ConstArray<int>,int,int)::permuteRegular[i]);
  }

  v244 = *(a1 + 28);
  *(a1 + 28) = v244 + 1;
  v245 = *(a1 + 32);
  operator delete(v259);
  operator delete(v262);
  operator delete(v265);
  operator delete(v270);
  operator delete(__p);
  operator delete(v291);
  operator delete(v296);
  operator delete(v274);
  operator delete(v277);
  operator delete(v280);
  return v245 + (v244 << 6);
}

OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *OpenSubdiv::v3_1_1::Far::GregoryBasis::Point::Point(OpenSubdiv::v3_1_1::Far::GregoryBasis::Point *this, unsigned int a2)
{
  *this = 0;
  v4 = this + 24;
  *(this + 1) = this + 24;
  *(this + 2) = 0x2800000000;
  *(this + 43) = 0;
  if (!a2)
  {
    operator delete(0);
    v5 = 40;
    goto LABEL_5;
  }

  if (a2 >= 0x29)
  {
    operator delete(0);
    *(this + 1) = v4;
    *(this + 5) = 40;
    v4 = operator new(8 * a2);
    *(this + 43) = v4;
    v5 = a2;
LABEL_5:
    *(this + 1) = v4;
    *(this + 5) = v5;
  }

  *(this + 4) = a2;
  return this;
}

void OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(OpenSubdiv::v3_1_1::Far::GregoryBasis *this, const void **a2, OpenSubdiv::v3_1_1::Far::StencilTable *a3)
{
  v9 = *this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v9);
  if (v9 >= 1)
  {
    v5 = 0;
    for (i = 0; i < v9; ++i)
    {
      v8 = *(*(this + 1) + v5);
      std::vector<int>::push_back[abi:nn200100](a2 + 8, &v8);
      v7 = *(*(this + 1) + v5 + 4);
      std::vector<float>::push_back[abi:nn200100](a2 + 11, &v7);
      v5 += 8;
    }
  }
}

{
  v5 = 1;
  v6 = this;
  std::vector<int>::push_back[abi:nn200100](a2 + 2, &v5);
  std::vector<int>::push_back[abi:nn200100](a2 + 8, &v6);
  v4 = 1065353216;
  std::vector<float>::push_back[abi:nn200100](a2 + 11, &v4);
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::EndCapGregoryBasisPatchFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a5;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v7 = **(*(a2 + 88) + 24 * ((*(a2 + 8) >> 2) & 0xF));
  v8 = 20 * v7;
  v9 = 320 * v7;
  if (v9 >= 104857600)
  {
    v10 = 104857600;
  }

  else
  {
    v10 = v9;
  }

  std::vector<int>::reserve((a3 + 16), v8);
  std::vector<int>::reserve((a3 + 64), v10);
  std::vector<int>::reserve((a3 + 88), v10);
  v11 = *(a1 + 8);
  if (v11)
  {
    std::vector<int>::reserve((v11 + 16), v8);
    std::vector<int>::reserve((v11 + 64), v8);
    std::vector<int>::reserve((v11 + 88), v8);
  }

  return a1;
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v90 = *MEMORY[0x1E69E9840];
  v11 = 20;
  do
  {
    std::vector<int>::push_back[abi:nn200100]((v10 + 40), &OpenSubdiv::v3_1_1::Vtr::INDEX_INVALID);
    --v11;
  }

  while (v11);
  v12 = *(v10 + 16);
  if ((v3 & 0x80000000) != 0)
  {
    v16 = *(v12 + 20);
  }

  else
  {
    v14 = v12 + 40;
    v13 = *(v12 + 40);
    v15 = *(v14 + 8) - v13;
    if ((v15 >> 3) < 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = (v15 >> 3);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      do
      {
        v18 = *v13++;
        v16 += *(*(*(v18 + 456) + 8 * v3) + 16);
        --v17;
      }

      while (v17);
    }
  }

  v19 = *(v10 + 40) + 80 * *(v10 + 32);
  if (*(v10 + 24) == 1)
  {
    v83 = v5;
    v20 = *(v9 + 12);
    v21 = *(v9 + 72) + 4 * *(*(v9 + 24) + 4 * ((2 * v7) | 1));
    OpenSubdiv::v3_1_1::Vtr::internal::Level::getFaceETags(v9, v7, v86, v3);
    v22 = 0;
    v85 = v20 << 28;
    v23 = OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts;
    while (1)
    {
      if ((v86[v22] & 2) == 0)
      {
        v24 = *(v21 + 4 * v22);
        v25 = *(v9 + 144);
        v26 = *(v25 + 8 * v24);
        if (v26 < 1)
        {
LABEL_18:
          v32 = 0;
        }

        else
        {
          v27 = *(v9 + 168) + 4 * *(v25 + 4 * ((2 * v24) | 1));
          v28 = 1;
          v29 = v27;
          v30 = v26;
          while (1)
          {
            v31 = *v29++;
            if (v31 == v7)
            {
              break;
            }

            ++v28;
            if (!--v30)
            {
              goto LABEL_18;
            }
          }

          v32 = *(v27 + 4 * (v28 % v26));
        }

        if (v32 != -1 && v32 < v7)
        {
          v33 = *(v10 + 64);
          v34 = *(v10 + 72);
          if (v33 == v34 || ((v35 = (*(v9 + 72) + 4 * *(*(v9 + 24) + 4 * ((2 * v32) | 1))), *v35 != v24) ? (v35[1] != v24 ? (v35[2] != v24 ? (v35[3] != v24 ? (v36 = -1) : (v36 = 3)) : (v36 = 2)) : (v36 = 1)) : (v36 = 0), __key[0] = v32 | v85, (v37 = bsearch(__key, v33, (v34 - v33) >> 2, 4uLL, OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::LevelAndFaceIndex::compare)) == 0))
          {
LABEL_36:
            v42 = v85 | v7;
            v44 = *(v10 + 72);
            v43 = *(v10 + 80);
            if (v44 >= v43)
            {
              v46 = *(v10 + 64);
              v47 = v44 - v46;
              v48 = (v44 - v46) >> 2;
              v49 = v48 + 1;
              if ((v48 + 1) >> 62)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v50 = v43 - v46;
              if (v50 >> 1 > v49)
              {
                v49 = v50 >> 1;
              }

              v51 = v50 >= 0x7FFFFFFFFFFFFFFCLL;
              v52 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v51)
              {
                v52 = v49;
              }

              if (v52)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v10 + 64, v52);
              }

              v53 = v48;
              v54 = (4 * v48);
              v55 = &v54[-v53];
              *v54 = v42;
              v45 = v54 + 1;
              memcpy(v55, v46, v47);
              v56 = *(v10 + 64);
              *(v10 + 64) = v55;
              *(v10 + 72) = v45;
              *(v10 + 80) = 0;
              if (v56)
              {
                operator delete(v56);
              }
            }

            else
            {
              *v44 = v42;
              v45 = v44 + 1;
            }

            *(v10 + 72) = v45;
            break;
          }

          v38 = *(v10 + 40) + ((0x1400000000 * ((v37 - *(v10 + 64)) >> 2)) >> 30);
          v39 = &OpenSubdiv::v3_1_1::Far::EndCapGregoryBasisPatchFactory::GetPatchPoints(OpenSubdiv::v3_1_1::Vtr::internal::Level const*,int,OpenSubdiv::v3_1_1::Vtr::internal::Level::VSpan const*,int,int)::gregoryEdgeVerts[4 * v36];
          for (i = 3; i != -1; --i)
          {
            v41 = *v39++;
            *(v19 + 4 * v23[i]) = *(v38 + 4 * v41);
          }
        }
      }

      ++v22;
      v23 += 4;
      if (v22 == 4)
      {
        goto LABEL_36;
      }
    }
  }

  v57 = 0;
  v58 = __key;
  v59 = v19;
  do
  {
    for (j = 0; j != 5; ++j)
    {
      if (*(v59 + 4 * j) == -1)
      {
        *(v59 + 4 * j) = *(v10 + 28) + v16;
        ++*(v10 + 28);
        v61 = 1;
      }

      else
      {
        v61 = 0;
      }

      *(v58 + j) = v61;
    }

    ++v57;
    v58 = (v58 + 5);
    v59 += 20;
  }

  while (v57 != 4);
  OpenSubdiv::v3_1_1::Far::GregoryBasis::ProtoBasis::ProtoBasis(v86);
  v63 = 0;
  v64 = __key + 2;
  v65 = 7040;
  v66 = 4224;
  v67 = 5632;
  do
  {
    if (*(v64 - 2) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v63], *v10, v62);
      v68 = *(v10 + 8);
      if (v68)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v68, v62);
      }
    }

    if (*(v64 - 1) == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v63 + 1408], *v10, v62);
      v69 = *(v10 + 8);
      if (v69)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v69, v62);
      }
    }

    if (*v64 == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v63 + 2816], *v10, v62);
      v70 = *(v10 + 8);
      if (v70)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v70, v62);
      }
    }

    if (v64[1] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v66], *v10, v62);
      v71 = *(v10 + 8);
      if (v71)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v71, v62);
      }
    }

    if (v64[2] == 1)
    {
      OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(&v86[v67], *v10, v62);
      v72 = *(v10 + 8);
      if (v72)
      {
        OpenSubdiv::v3_1_1::Far::GregoryBasis::AppendToStencilTable(*&v86[v65], v72, v62);
      }
    }

    v65 += 4;
    v63 += 352;
    v66 += 352;
    v67 += 352;
    v64 += 5;
  }

  while (v63 != 1408);
  v73 = &v88;
  v74 = -1408;
  do
  {
    operator delete(v73[42]);
    *v73 = (v73 + 2);
    *(v73 + 3) = 40;
    v73 -= 44;
    v74 += 352;
  }

  while (v74);
  v75 = &v87;
  v76 = -1408;
  do
  {
    operator delete(v75[42]);
    *v75 = (v75 + 2);
    *(v75 + 3) = 40;
    v75 -= 44;
    v76 += 352;
  }

  while (v76);
  for (k = 0; k != -1408; k -= 352)
  {
    v78 = &v86[k];
    operator delete(*&v86[k + 4216]);
    *(v78 + 485) = v78 + 3896;
    *(v78 + 973) = 40;
  }

  v79 = 1408;
  do
  {
    v80 = &v86[v79];
    operator delete(*&v86[v79 + 1400]);
    *(v80 + 133) = v80 + 1080;
    *(v80 + 269) = 40;
    v79 -= 352;
  }

  while (v79);
  v81 = 1408;
  do
  {
    operator delete(*(&v84 + v81));
    *&v86[v81 - 344] = &v86[v81 - 328];
    *&v86[v81 - 332] = 40;
    v81 -= 352;
  }

  while (v81);
  ++*(v10 + 32);
  return v19;
}

void OpenSubdiv::v3_1_1::Vtr::internal::SparseSelector::selectFace(OpenSubdiv::v3_1_1::Vtr::internal::Refinement **this, int a2)
{
  if ((this[1] & 1) == 0)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Refinement::initializeSparseSelectionTags(*this);
    *(this + 8) = 1;
  }

  v4 = *(*this + 51);
  if ((*(v4 + a2) & 1) == 0)
  {
    *(v4 + a2) |= 1u;
    v5 = *(*this + 1);
    v6 = v5[3];
    v7 = *(v6 + 8 * a2);
    if (v7 >= 1)
    {
      v8 = *(v6 + 8 * a2 + 4);
      v9 = (v5[9] + 4 * v8);
      v10 = (v5[6] + 4 * v8);
      do
      {
        v11 = *v9++;
        *(*(*this + 54) + v11) |= 1u;
        v12 = *v10++;
        *(*(*this + 57) + v12) |= 1u;
        --v7;
      }

      while (v7);
    }
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::~QuadRefinement(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  OpenSubdiv::v3_1_1::Vtr::internal::Refinement::~Refinement(this);

  JUMPOUT(0x1E6906520);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::allocateParentChildIndices(std::vector<int> *this)
{
  end = this->__end_;
  v3 = *(end + 7) - *(end + 6);
  v4 = *(end + 10) - *(end + 9);
  v5 = *(end + 16) - *(end + 15);
  v6 = *end;
  v7 = end[1];
  v8 = end[2];
  __x = 0;
  v9 = *(end + 3);
  v10 = (*(end + 4) - v9) >> 2;
  this[3].__end_cap_.__value_ = v9;
  LODWORD(this[4].__begin_) = v10;
  v11 = *(end + 3);
  v12 = (*(end + 4) - v11) >> 2;
  this[4].__end_ = v11;
  LODWORD(this[4].__end_cap_.__value_) = v12;
  std::vector<unsigned int>::resize(this + 5, (v3 >> 2), &__x);
  std::vector<unsigned int>::resize(this + 6, (v4 >> 2), &__x);
  std::vector<unsigned int>::resize(this + 8, (v5 >> 2), &__x);
  std::vector<unsigned int>::resize(this + 7, v6, &__x);
  std::vector<unsigned int>::resize(this + 9, v7, &__x);
  std::vector<unsigned int>::resize(this + 10, v8, &__x);
}

uint64_t OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 2, 4 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  result = *v3;
  if (result >= 1)
  {
    v5 = 0;
    v6 = v3[3];
    v7 = v3[6];
    v8 = v3[9];
    v9 = *(this + 11);
    v10 = *(this + 15);
    do
    {
      v11 = *(v6 + 8 * v5);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v5) | 4;
        v14 = *(v6 + v13);
        v15 = v7 + 4 * v14;
        v16 = v8 + 4 * v14;
        v17 = v10 + 4 * *(v9 + v13);
        do
        {
          v18 = *(v17 + 4 * v12);
          if (v18 != -1)
          {
            if (v12)
            {
              v19 = v12;
            }

            else
            {
              v19 = v11;
            }

            v20 = *(*(this + 21) + 4 * v5);
            v21 = v19 - 1;
            v22 = *(this + 27);
            v23 = *(v22 + 4 * *(v16 + 4 * (v19 - 1)));
            v24 = *(*(this + 30) + 4 * *(v15 + 4 * v12));
            v25 = *(v22 + 4 * *(v16 + 4 * v12));
            v26 = (*(*(this + 2) + 48) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v18) | 1)));
            if (v11 == 4)
            {
              v27 = v19 - 2;
              if (!v21)
              {
                v27 = 3;
              }

              v26[v12] = v24;
              if (v27)
              {
                v28 = v27 - 1;
              }

              else
              {
                v28 = 3;
              }

              v26[v28] = v25;
              v26[v27] = v20;
              v29 = &v26[v21];
            }

            else
            {
              *v26 = v24;
              v26[1] = v25;
              v29 = v26 + 3;
              v26[2] = v20;
            }

            *v29 = v23;
          }

          ++v12;
        }

        while (v11 != v12);
        result = *v3;
      }

      ++v5;
    }

    while (v5 < result);
  }

  return result;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<unsigned int>::resize((*(this + 2) + 24), 2 * **(this + 2));
  v2 = *(this + 2);
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v2 + 3) + 4);
    do
    {
      *(v5 - 1) = 4;
      *v5 = v3;
      ++v4;
      v3 += 4;
      v5 += 2;
    }

    while (v4 < *v2);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 2);
  if (v2[1].__end_ == v2[1].__begin_)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateFaceVertexCountsAndOffsets(this);
    v2 = *(this + 2);
  }

  std::vector<unsigned int>::resize(v2 + 3, 4 * SLODWORD(v2->__begin_));
  v3 = *(this + 1);
  v4 = *v3;
  if (*v3 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 24);
    v7 = *(v3 + 48);
    v8 = *(v3 + 72);
    v9 = *(this + 11);
    v10 = *(this + 15);
    v11 = *(this + 13);
    v12 = *(this + 18);
    do
    {
      v13 = *(v6 + 8 * v5);
      if (v13 >= 1)
      {
        v14 = 0;
        v15 = (8 * v5) | 4;
        v16 = *(v6 + v15);
        v17 = v7 + 4 * v16;
        v18 = v8 + 4 * v16;
        v19 = v10 + 4 * *(v9 + v15);
        v20 = v12 + 4 * *(v11 + v15);
        do
        {
          v21 = *(v19 + 4 * v14);
          if (v21 != -1)
          {
            if (v14)
            {
              v22 = v14;
            }

            else
            {
              v22 = v13;
            }

            v23 = v22 - 1;
            v24 = *(v18 + 4 * (v22 - 1));
            v25 = *(v3 + 120);
            v26 = (v25 + 8 * v24);
            v27 = *(v18 + 4 * v14);
            v28 = *(v17 + 4 * v14);
            v29 = (v25 + 8 * v27);
            v31 = *v26 == v26[1] || *v26 != v28;
            v33 = *v29 != v29[1] && *v29 != v28;
            v34 = *(this + 24);
            v35 = *(v34 + 8 * v24 + 4 * v31);
            v36 = *(v34 + 8 * v27 + 4 * v33);
            v37 = *(v20 + 4 * v23);
            v38 = *(v20 + 4 * v14);
            v39 = (*(*(this + 2) + 72) + 4 * *(*(*(this + 2) + 24) + 4 * ((2 * v21) | 1)));
            if (v13 == 4)
            {
              v40 = v22 - 2;
              if (!v23)
              {
                v40 = 3;
              }

              v39[v14] = v36;
              if (v40)
              {
                v41 = v40 - 1;
              }

              else
              {
                v41 = 3;
              }

              v39[v41] = v38;
              v39[v40] = v37;
              v42 = &v39[v23];
            }

            else
            {
              *v39 = v36;
              v39[1] = v38;
              v42 = v39 + 3;
              v39[2] = v37;
            }

            *v42 = v35;
          }

          ++v14;
        }

        while (v13 != v14);
        v4 = *v3;
      }

      ++v5;
    }

    while (v5 < v4);
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeVertexRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  std::vector<unsigned int>::resize((*(this + 2) + 120), 2 * *(*(this + 2) + 4));
  v2 = *(this + 1);
  v3 = *v2;
  if (*v2 >= 1)
  {
    v4 = 0;
    v5 = *(v2 + 24);
    v6 = *(v2 + 72);
    v7 = *(this + 13);
    v8 = *(this + 18);
    do
    {
      v9 = *(v5 + 8 * v4);
      if (v9 >= 1)
      {
        v10 = (8 * v4) | 4;
        v11 = (v6 + 4 * *(v5 + v10));
        v12 = (v8 + 4 * *(v7 + v10));
        do
        {
          v14 = *v12++;
          v13 = v14;
          if (v14 != -1)
          {
            v15 = (*(*(this + 2) + 120) + 8 * v13);
            *v15 = *(*(this + 21) + 4 * v4);
            v15[1] = *(*(this + 27) + 4 * *v11);
          }

          ++v11;
          --v9;
        }

        while (v9);
        v3 = *v2;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  if (*(v2 + 4) >= 1)
  {
    v16 = 0;
    v17 = *(v2 + 120);
    v18 = *(this + 24);
    do
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = v20;
        v22 = *(v18 + 8 * v16 + 4 * v19);
        if (v22 != -1)
        {
          v23 = (*(*(this + 2) + 120) + 8 * v22);
          *v23 = *(*(this + 27) + 4 * v16);
          v23[1] = *(*(this + 30) + 4 * *(v17 + 8 * v16 + 4 * v19));
        }

        v20 = 0;
        v19 = 1;
      }

      while ((v21 & 1) != 0);
      ++v16;
    }

    while (v16 < *(v2 + 4));
  }
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateEdgeFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = 2 * (((*(*(this + 1) + 176) - *(*(this + 1) + 168)) >> 2) + ((*(*(this + 1) + 56) - *(*(this + 1) + 48)) >> 2));
  std::vector<unsigned int>::resize((*(this + 2) + 144), 2 * *(*(this + 2) + 4));
  std::vector<unsigned int>::resize((*(this + 2) + 168), v2);
  std::vector<unsigned short>::resize((*(this + 2) + 192), v2);
  v4 = *(this + 1);
  v3 = *(this + 2);
  *(v3 + 16) = *(v4 + 16);
  v5 = *v4;
  if (*v4 >= 1)
  {
    v6 = 0;
    v7 = *(this + 11);
    v8 = *(this + 15);
    v9 = *(this + 13);
    v10 = *(this + 18);
    do
    {
      v11 = *(v7 + 8 * v6);
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = (8 * v6) | 4;
        v14 = v8 + 4 * *(v7 + v13);
        v15 = v10 + 4 * *(v9 + v13);
        do
        {
          v16 = *(v15 + 4 * v12);
          if (v16 == -1)
          {
            ++v12;
          }

          else
          {
            v17 = *(v3 + 144);
            v18 = (v17 + 8 * v16);
            *v18 = 2;
            if (v16)
            {
              v19 = *(v18 - 1) + *(v18 - 2);
            }

            else
            {
              v19 = 0;
            }

            v20 = 2 * v16;
            v18[1] = v19;
            v21 = *(v3 + 16);
            if (v21 <= 2)
            {
              v21 = 2;
            }

            *(v3 + 16) = v21;
            v22 = *(v17 + 4 * (v20 | 1));
            v23 = (*(v3 + 168) + 4 * v22);
            v24 = (*(v3 + 192) + 2 * v22);
            v25 = v12 + 1;
            if (v12 + 1 >= v11)
            {
              v26 = 0;
            }

            else
            {
              v26 = v12 + 1;
            }

            v27 = *(v14 + 4 * v12);
            if (v27 == -1)
            {
              v29 = 0;
            }

            else
            {
              *v23 = v27;
              if (v11 == 4)
              {
                v28 = v26;
              }

              else
              {
                v28 = 1;
              }

              *v24 = v28;
              v29 = 1;
            }

            v30 = *(v14 + 4 * v26);
            if (v30 != -1)
            {
              v23[v29] = v30;
              v31 = v26 & 3 ^ 2;
              if (v11 != 4)
              {
                v31 = 2;
              }

              v24[v29] = v31;
              LODWORD(v29) = v29 + 1;
            }

            *v18 = v29;
            v12 = v25;
          }
        }

        while (v12 != v11);
        v5 = *v4;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v32 = *(v4 + 4);
  if (v32 >= 1)
  {
    v33 = 0;
    v34 = *(this + 24);
    do
    {
      v35 = (v34 + 8 * v33);
      if (*v35 != -1 || v35[1] != -1)
      {
        v36 = 0;
        v37 = *(*(v4 + 144) + 8 * v33);
        v38 = *(*(v4 + 144) + 8 * v33 + 4);
        v39 = *(v4 + 168) + 4 * v38;
        v40 = *(v4 + 192) + 2 * v38;
        v41 = (*(v4 + 120) + 8 * v33);
        v42 = 1;
        do
        {
          v43 = v42;
          v44 = v35[v36];
          if (v44 != -1)
          {
            v45 = *(v3 + 144);
            v46 = (v45 + 8 * v44);
            *v46 = v37;
            if (v44)
            {
              v47 = *(v46 - 1) + *(v46 - 2);
            }

            else
            {
              v47 = 0;
            }

            v46[1] = v47;
            v48 = *(v3 + 16);
            if (v48 <= v37)
            {
              v48 = v37;
            }

            *(v3 + 16) = v48;
            if (v37 < 1)
            {
              v49 = 0;
            }

            else
            {
              v49 = 0;
              v50 = *(v45 + 4 * ((2 * v44) | 1));
              v51 = *(v3 + 168) + 4 * v50;
              v52 = *(v3 + 192) + 2 * v50;
              v53 = *(v4 + 24);
              v54 = *(this + 11);
              v55 = *(this + 15);
              v56 = v39;
              v57 = v40;
              v58 = v37;
              do
              {
                v60 = *v56++;
                v59 = v60;
                LODWORD(v60) = *v57++;
                v61 = v60;
                v62 = (2 * v59) | 1;
                v63 = v36;
                if (*v41 != v41[1])
                {
                  v63 = *(*(v4 + 48) + 4 * *(v53 + 4 * v62) + 4 * v61) != v41[v36];
                }

                v64 = 2 * v59;
                v65 = v55 + 4 * *(v54 + 4 * v62);
                if (v63 + v61 == *(v54 + 4 * v64))
                {
                  v66 = 0;
                }

                else
                {
                  v66 = v63 + v61;
                }

                v67 = *(v65 + 4 * v66);
                if (v67 != -1)
                {
                  v68 = *(v53 + 4 * v64);
                  *(v51 + 4 * v49) = v67;
                  if (v63)
                  {
                    v69 = 3;
                  }

                  else
                  {
                    v69 = 0;
                  }

                  if (v68 != 4)
                  {
                    LOWORD(v61) = v69;
                  }

                  *(v52 + 2 * v49++) = v61;
                }

                --v58;
              }

              while (v58);
            }

            *v46 = v49;
          }

          v42 = 0;
          v36 = 1;
        }

        while ((v43 & 1) != 0);
        v32 = *(v4 + 4);
      }

      ++v33;
    }

    while (v33 < v32);
  }

  v70 = (*(v3 + 144) + 4 * (2 * *(v3 + 4) - 2));
  v71 = *v70;
  v72 = v70[1];
  std::vector<unsigned int>::resize((v3 + 168), v72 + v71);
  v73 = (*(this + 2) + 192);

  std::vector<unsigned short>::resize(v73, v72 + v71);
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFaceRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = (((v2[22] - v2[21]) >> 1) & 0xFFFFFFFE) + ((v2[7] - v2[6]) >> 2) + ((v2[37] - v2[36]) >> 2);
  std::vector<unsigned int>::resize((*(this + 2) + 264), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 288), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 312), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 264) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<unsigned int>::resize((v4 + 288), v7 + v6);
  v8 = (*(this + 2) + 312);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 288);
        v7 = (*(v1 + 264) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 312);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = *(v20 + 4 * *(v19 + 8 * v21 + 4) + 4 * v22);
            if (v24 != -1)
            {
              v25 = *(v19 + 8 * v21);
              *(v17 + 4 * v14) = v24;
              if (v25 != 4)
              {
                v23 = 0;
              }

              *(v18 + 2 * v14++) = v23;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = (this[11] + 8 * v3);
        v7 = this[15];
        v8 = *v6;
        v9 = v6[1];
        v10 = this[2];
        v11 = (v10[33] + 8 * v5);
        *v11 = v8;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          v15 = v7 + 4 * v9;
          v16 = v10[36] + 4 * v12;
          v17 = v10[39] + 2 * v12;
          do
          {
            v18 = *(v15 + 4 * v13);
            if (v18 != -1)
            {
              *(v16 + 4 * v14) = v18;
              v19 = v13 & 3 ^ 2;
              if (v8 != 4)
              {
                v19 = 2;
              }

              *(v17 + 2 * v14++) = v19;
            }

            ++v13;
          }

          while (v8 != v13);
        }

        *v11 = v14;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexFacesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = (*(v1 + 144) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 192);
        v11 = this[2];
        v12 = (v11[33] + 8 * v5);
        *v12 = 2 * v8;
        if (v5)
        {
          v13 = *(v12 - 1) + *(v12 - 2);
        }

        else
        {
          v13 = 0;
        }

        v12[1] = v13;
        if (v8 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = (v6 + 4 * v9);
          v16 = (v10 + 2 * v9);
          v17 = v11[36] + 4 * v13;
          v18 = v11[39] + 2 * v13;
          v19 = this[11];
          v20 = this[15];
          do
          {
            v22 = *v15++;
            v21 = v22;
            LODWORD(v22) = *v16++;
            v23 = v22;
            v24 = v20 + 4 * *(v19 + 8 * v21 + 4);
            v25 = *(v19 + 8 * v21);
            if (v22 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              v26 = v23 + 1;
            }

            v27 = *(v24 + 4 * v26);
            if (v27 != -1)
            {
              *(v17 + 4 * v14) = v27;
              if (v25 == 4)
              {
                v28 = v23;
              }

              else
              {
                v28 = 3;
              }

              *(v18 + 2 * v14++) = v28;
            }

            v29 = *(v24 + 4 * v23);
            if (v29 != -1)
            {
              *(v17 + 4 * v14) = v29;
              if (v25 == 4)
              {
                v30 = v26;
              }

              else
              {
                v30 = 1;
              }

              *(v18 + 2 * v14++) = v30;
            }

            --v8;
          }

          while (v8);
        }

        *v12 = v14;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgeRelation(OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement *this)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 56) - *(v2 + 48)) >> 2) + 2 * *(v2 + 4) + ((*(v2 + 176) - *(v2 + 168)) >> 2) + ((*(v2 + 368) - *(v2 + 360)) >> 2);
  std::vector<unsigned int>::resize((*(this + 2) + 336), 2 * *(*(this + 2) + 8));
  std::vector<unsigned int>::resize((*(this + 2) + 360), v3);
  std::vector<unsigned short>::resize((*(this + 2) + 384), v3);
  if (*(this + 21))
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
  }

  else
  {
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(this);
    OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(this);
  }

  v4 = *(this + 2);
  v5 = (*(v4 + 336) + 4 * (2 * *(v4 + 8) - 2));
  v6 = *v5;
  v7 = v5[1];
  std::vector<unsigned int>::resize((v4 + 360), v7 + v6);
  v8 = (*(this + 2) + 384);

  std::vector<unsigned short>::resize(v8, v7 + v6);
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentVertices(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[30];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 360);
        v7 = (*(v1 + 336) + 8 * v3);
        v8 = *v7;
        v9 = v7[1];
        v10 = *(v1 + 384);
        v11 = this[2];
        v12 = *(v11 + 336);
        v13 = (v12 + 8 * v5);
        *v13 = v8;
        if (v5)
        {
          v14 = *(v13 - 1) + *(v13 - 2);
        }

        else
        {
          v14 = 0;
        }

        v13[1] = v14;
        v15 = *(v11 + 20);
        if (v15 <= v8)
        {
          v15 = v8;
        }

        *(v11 + 20) = v15;
        if (v8 < 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0;
          v17 = (v6 + 4 * v9);
          v18 = (v10 + 2 * v9);
          v19 = *(v12 + 4 * ((2 * v5) | 1));
          v20 = *(v11 + 360) + 4 * v19;
          v21 = *(v11 + 384) + 2 * v19;
          v22 = this[24];
          do
          {
            v24 = *v17++;
            v23 = v24;
            LODWORD(v24) = *v18++;
            v25 = *(v22 + 8 * v23 + 4 * v24);
            if (v25 != -1)
            {
              *(v20 + 4 * v16) = v25;
              *(v21 + 2 * v16++) = 1;
            }

            --v8;
          }

          while (v8);
        }

        *v13 = v16;
        v2 = *(v1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentFaces(void *this)
{
  v1 = this[1];
  v2 = *v1;
  if (*v1 >= 1)
  {
    v3 = 0;
    v4 = this[21];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(*(v1 + 24) + 8 * v3);
        v7 = *(this[13] + 8 * v3 + 4);
        v8 = this[18];
        v9 = this[2];
        v10 = *(v9 + 336);
        v11 = (v10 + 8 * v5);
        *v11 = v6;
        if (v5)
        {
          v12 = *(v11 - 1) + *(v11 - 2);
        }

        else
        {
          v12 = 0;
        }

        v11[1] = v12;
        v13 = *(v9 + 20);
        if (v13 <= v6)
        {
          v13 = v6;
        }

        *(v9 + 20) = v13;
        if (v6 < 1)
        {
          v15 = 0;
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = *(v10 + 4 * ((2 * v5) | 1));
          v17 = *(v9 + 360) + 4 * v16;
          v18 = *(v9 + 384) + 2 * v16;
          v19 = v8 + 4 * v7 - 4;
          do
          {
            if (v14)
            {
              v20 = v14;
            }

            else
            {
              v20 = v6;
            }

            v21 = *(v19 + 4 * v20);
            if (v21 != -1)
            {
              *(v17 + 4 * v15) = v21;
              *(v18 + 2 * v15++) = 0;
            }

            ++v14;
          }

          while (v6 != v14);
        }

        *v11 = v15;
        v2 = *v1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::populateVertexEdgesFromParentEdges(void *this)
{
  v1 = this[1];
  v2 = *(v1 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = this[27];
    do
    {
      v5 = *(v4 + 4 * v3);
      if (v5 != -1)
      {
        v6 = *(v1 + 168);
        v7 = *(*(v1 + 144) + 8 * v3);
        v8 = *(*(v1 + 144) + 8 * v3 + 4);
        v9 = *(v1 + 192);
        v10 = *(v1 + 120);
        v11 = this[24];
        v12 = this[2];
        v13 = v7 + 2;
        v14 = *(v12 + 336);
        v15 = (v14 + 8 * v5);
        *v15 = v7 + 2;
        if (v5)
        {
          v16 = *(v15 - 1) + *(v15 - 2);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v11 + 8 * v3);
        v18 = 2 * v5;
        v15[1] = v16;
        if (*(v12 + 20) > v13)
        {
          v13 = *(v12 + 20);
        }

        *(v12 + 20) = v13;
        v19 = *(v14 + 4 * (v18 | 1));
        v20 = (*(v12 + 360) + 4 * v19);
        v21 = (*(v12 + 384) + 2 * v19);
        if (*v17 == -1)
        {
          v22 = 0;
        }

        else
        {
          *v20 = *v17;
          *v21 = 0;
          v22 = 1;
        }

        v23 = v17[1];
        if (v23 != -1)
        {
          v20[v22] = v23;
          v21[v22++] = 0;
        }

        if (v7 >= 1)
        {
          v24 = 0;
          v25 = v6 + 4 * v8;
          v26 = v9 + 2 * v8;
          v27 = this[13];
          v28 = this[18];
          v29 = (v10 + 8 * v3);
          do
          {
            v30 = *(v26 + 2 * v24);
            v31 = (2 * *(v25 + 4 * v24)) | 1;
            v32 = *(v28 + 4 * *(v27 + 4 * v31) + 4 * v30);
            if (v32 != -1)
            {
              v20[v22] = v32;
              v21[v22++] = 1;
              if (!v24 && v22 == 3)
              {
                if (*v29 == v29[1])
                {
                  v33 = v20[1];
                  v34 = v21[1];
                }

                else
                {
                  v35 = *(*(v1 + 48) + 4 * *(*(v1 + 24) + 4 * v31) + 4 * v30);
                  v33 = v20[1];
                  v34 = v21[1];
                  if (v35 == *v29)
                  {
                    v36 = *v20;
                    *v20 = v33;
                    v37 = *v21;
                    *v21 = v34;
                    v34 = v37;
                    v33 = v36;
                  }
                }

                v20[1] = v20[2];
                v20[2] = v33;
                v21[1] = v21[2];
                v21[2] = v34;
                v22 = 3;
              }
            }

            ++v24;
          }

          while (v7 != v24);
        }

        *v15 = v22;
        v2 = *(v1 + 4);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

void *OpenSubdiv::v3_1_1::Vtr::internal::QuadRefinement::markSparseFaceChildren(void *this)
{
  v1 = this[1];
  if (*v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = (2 * (v2 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v4 = (this[15] + 4 * *(this[11] + 4 * v3));
      v5 = (this[18] + 4 * *(this[13] + 4 * v3));
      v6 = *(v1 + 3);
      v7 = *(v6 + 8 * v2);
      v8 = this[51];
      if (*(v8 + v2))
      {
        break;
      }

      if (v7 >= 1)
      {
        v9 = 0;
        v10 = *(v1 + 6) + 4 * *(v6 + 4 * v3);
        v11 = this[57];
        v12 = 1;
        do
        {
          while ((*(v11 + *(v10 + 4 * v9)) & 1) != 0)
          {
            v12 = 0;
            v4[v9] = 1;
            v5[v9] = 1;
            if (v9)
            {
              v13 = v9;
            }

            else
            {
              v13 = v7;
            }

            v5[v13 - 1] = 1;
            if (v7 - 1 == v9++)
            {
              goto LABEL_22;
            }
          }

          ++v9;
        }

        while (v7 != v9);
        if (v12)
        {
          goto LABEL_19;
        }

LABEL_22:
        *(this[21] + 4 * v2) = 1;
        v16 = (*(v1 + 9) + 4 * *(v6 + 4 * v3));
        v17 = *(v6 + 8 * v2);
        if (v17 == 3)
        {
          v23 = *(this[54] + v16[1]) & 0xE | (*(this[54] + *v16) >> 1) & 0xF | (2 * *(this[54] + v16[2])) & 0xC;
          v22 = *(v8 + v2);
        }

        else
        {
          if (v17 != 4)
          {
            v24 = *(v8 + v2) & 0xE1;
            *(v8 + v2) &= 0xE1u;
            if (v17 >= 1)
            {
              do
              {
                v25 = *v16++;
                v24 |= *(this[54] + v25) & 0x1E;
                *(v8 + v2) = v24;
                --v17;
              }

              while (v17);
            }

            goto LABEL_19;
          }

          v18 = this[54];
          v19 = *(v18 + *v16);
          v20 = *(v18 + v16[1]) & 0xE;
          v21 = (2 * *(v18 + v16[2])) & 0xC;
          LOBYTE(v18) = 4 * *(v18 + v16[3]);
          v22 = *(v8 + v2);
          v23 = v20 | (v19 >> 1) & 0xF | v21 | v18 & 8;
        }

        v15 = v22 & 0xE1 | (2 * (v23 & 0xF));
        goto LABEL_18;
      }

LABEL_19:
      ++v2;
      v1 = this[1];
      if (v2 >= *v1)
      {
        return this;
      }
    }

    if (v7 >= 1)
    {
      do
      {
        *v4++ = 2;
        *v5++ = 2;
        --v7;
      }

      while (v7);
    }

    *(this[21] + 4 * v2) = 2;
    v15 = *(v8 + v2) & 0xE1;
LABEL_18:
    *(v8 + v2) = v15;
    goto LABEL_19;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::TopologyRefiner(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *(a1 + 8) & 0xC0 | 1;
  *(a1 + 12) &= 0xC0u;
  *(a1 + 16) = *(a1 + 16) & 0xF000 | 0xF0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 96) = 0u;
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve((a1 + 40), 0xAuLL);
  operator new();
}

void *std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::ProfilerVisualizer *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void *std::vector<OpenSubdiv::v3_1_1::Far::TopologyLevel>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(void *this)
{
  v1 = (this[6] - this[5]) >> 3;
  v2 = this[11];
  v3 = this[12];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3);
  v5 = v1 - v4;
  if (v1 <= v4)
  {
    if (v1 >= v4)
    {
      goto LABEL_14;
    }

    v9 = &v2[3 * v1];
  }

  else
  {
    v6 = this[13];
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 3) < v5)
    {
      if (v1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v2) >> 3);
        if (2 * v7 > v1)
        {
          v1 = 2 * v7;
        }

        if (v7 >= 0x555555555555555)
        {
          v8 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v8 = v1;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(v8);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = (v3 + 24 * (24 * v5 / 0x18));
  }

  this[12] = v9;
LABEL_14:
  v2[1] = 0;
  v10 = this[5];
  *v2 = *v10;
  v2[2] = 0;
  v11 = this[8];
  v12 = this[9] - v11;
  v13 = v12 >> 3;
  if ((v12 >> 3))
  {
    v2[2] = *v11;
    if (v13 >= 2)
    {
      v14 = ((v12 >> 3) & 0x7FFFFFFF) - 1;
      v15 = v11 + 1;
      v16 = v10 + 1;
      v17 = v2 + 5;
      do
      {
        *(v17 - 1) = *(v15 - 1);
        v18 = *v16++;
        *(v17 - 2) = v18;
        v19 = *v15++;
        *v17 = v19;
        v17 += 3;
        --v14;
      }

      while (v14);
    }

    v20 = &v2[3 * v13];
    v20[1] = *(v11 + (((v12 << 29) - 0x100000000) >> 29));
    *v20 = *(v10 + ((v12 << 29) >> 29));
    v20[2] = 0;
  }

  return this;
}

void OpenSubdiv::v3_1_1::Far::TopologyRefiner::~TopologyRefiner(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (((v2 - v3) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        OpenSubdiv::v3_1_1::Vtr::internal::Level::~Level(v5);
        MEMORY[0x1E6906520]();
        v3 = *(this + 5);
        v2 = *(this + 6);
      }

      ++v4;
    }

    while (v4 < ((v2 - v3) >> 3));
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  if (((v7 - v6) >> 3) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v6[v8];
      if (v9)
      {
        (*(*v9 + 8))(v6[v8]);
        v6 = *(this + 8);
        v7 = *(this + 9);
      }

      ++v8;
    }

    while (v8 < ((v7 - v6) >> 3));
  }

  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
    v6 = *(this + 8);
  }

  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }
}

int32x2_t OpenSubdiv::v3_1_1::Far::TopologyRefiner::initializeInventory(OpenSubdiv::v3_1_1::Far::TopologyRefiner *this)
{
  v1 = *(this + 5);
  if (*(this + 6) == v1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *v1;
    v3 = *(*v1 + 1);
    v4 = **v1;
    v5 = (*(v2 + 7) - *(v2 + 6)) >> 2;
    v6 = v2[5];
  }

  result = vrev64_s32(v3);
  *(this + 20) = result;
  *(this + 7) = v4;
  *(this + 8) = v5;
  *(this + 9) = v6;
  return result;
}

void *OpenSubdiv::v3_1_1::Far::TopologyRefiner::RefineAdaptive(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a1 + 40;
  if (!*(**(a1 + 40) + 8))
  {
    v11 = "Failure in TopologyRefiner::RefineAdaptive() -- base level is uninitialized.";
    goto LABEL_9;
  }

  if (*(a1 + 72) != *(a1 + 64))
  {
    v11 = "Failure in TopologyRefiner::RefineAdaptive() -- previous refinements already applied.";
LABEL_9:

    return OpenSubdiv::v3_1_1::Far::Error(4, v11, a3, a4, a5, a6, a7, a8, a9);
  }

  if (*a1 != 1)
  {
    v11 = "Failure in TopologyRefiner::RefineAdaptive() -- currently only supported for Catmark scheme.";
    goto LABEL_9;
  }

  *(a1 + 8) &= ~1u;
  *(a1 + 16) = a2;
  v13 = a2 >> 4;
  v14 = a2 & 0xF;
  v15 = 15;
  if ((a2 & 0x100) != 0)
  {
    OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
    v16 = DWORD1(xmmword_1ECF1CE78) == 4;
    if (DWORD1(xmmword_1ECF1CE78) == 4)
    {
      v15 = 11;
    }

    else
    {
      v15 = 15;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v16 | ((a2 & 0x200) >> 9))
  {
    v18 = 0;
  }

  else
  {
    v18 = 16;
  }

  if ((((v13 & 0x20 | a2 & 0x400 | v15 | v18) ^ 0x3E0) & 0x400) != 0)
  {
    v19 = *(**v9 + 456);
    v20 = *(**v9 + 464) - v19;
    if ((v20 >> 3) >= 1)
    {
      v21 = 0;
      v22 = (v20 >> 3) & 0x7FFFFFFF;
      do
      {
        v23 = *v19++;
        v21 |= *(v23 + 12) ^ 1;
        --v22;
      }

      while (v22);
    }
  }

  OpenSubdiv::v3_1_1::Sdc::staticTraitsTable(a1);
  if (v14)
  {
    operator new();
  }

  *(a1 + 8) = ((*(a1 + 72) - *(a1 + 64)) >> 1) & 0x3C | *(a1 + 8) & 0xC3;
  return OpenSubdiv::v3_1_1::Far::TopologyRefiner::assembleFarLevels(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<OpenSubdiv::v3_1_1::Far::TopologyLevel>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::GetPatchPoints(uint64_t a1, void *a2, int a3, uint64_t a4, int a5, unsigned int a6)
{
  v25 = a3;
  if ((a6 & 0x80000000) != 0)
  {
    v12 = a2[3];
    v11 = (a2[6] + 4 * *(v12 + 8 * a3 + 4));
    v10 = (v12 + 8 * a3);
  }

  else
  {
    v8 = *(a2[57] + 8 * a6);
    v9 = *(*v8 + 24);
    v10 = (v9 + 8 * a3);
    v11 = (v8[3] + 4 * *(v9 + 4 * ((2 * a3) | 1)));
  }

  v13 = *v10;
  v14 = a2[54];
  v15 = *(v14 + 2 * *v11);
  if (v13 >= 2)
  {
    v16 = v13 - 1;
    v17 = v11 + 1;
    do
    {
      v18 = *v17++;
      v15 |= *(v14 + 2 * v18);
      --v16;
    }

    while (v16);
  }

  v19 = 0;
  if ((v15 & 4) != 0)
  {
    v20 = 40;
    v21 = 80;
    do
    {
      v24 = v11[v19] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 32), &v24);
      ++v19;
    }

    while (v19 != 4);
  }

  else
  {
    v20 = 16;
    v21 = 56;
    do
    {
      v23 = v11[v19] + a5;
      std::vector<int>::push_back[abi:nn200100]((a1 + 8), &v23);
      ++v19;
    }

    while (v19 != 4);
  }

  std::vector<int>::push_back[abi:nn200100]((a1 + v21), &v25);
  return *(a1 + v20) - 16;
}

void OpenSubdiv::v3_1_1::Far::EndCapLegacyGregoryPatchFactory::Finalize(void *a1, int a2, std::vector<int> *this, std::vector<int> *a4, unsigned int *a5)
{
  v8 = a1;
  v9 = a1[7];
  v10 = a1[8];
  v11 = v10 - v9;
  v39 = a1[10];
  v41 = a1[11];
  v12 = (v41 - v39) >> 2;
  v13 = v12 + ((v10 - v9) >> 2);
  v14 = *(*(*a1 + 40) + 8 * ((*(*a1 + 8) >> 2) & 0xF));
  std::vector<unsigned int>::resize(this, 4 * v13);
  if (v13)
  {
    v15 = v8;
    begin = this->__begin_;
    if (v10 == v9)
    {
      v19 = v8;
    }

    else
    {
      v17 = 0;
      v18 = (v11 >> 2) <= 1 ? 1 : v11 >> 2;
      v19 = v15;
      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[7] + 4 * v17), begin, a5);
        begin += 4;
        ++v17;
      }

      while (v18 != v17);
    }

    v8 = v19;
    if (v41 != v39)
    {
      v20 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      do
      {
        OpenSubdiv::v3_1_1::Far::getQuadOffsets(v14, *(v19[10] + 4 * v20), begin, a5);
        begin += 4;
        ++v20;
      }

      while (v12 != v20);
    }
  }

  v21 = (2 * a2) | 1;
  std::vector<unsigned int>::resize(a4, *(*v8 + 20) * v21);
  v22 = 0;
  v23 = 0;
  v24 = (*(*v8 + 8) >> 2) & 0xF;
  v25 = v21;
  v26 = (v24 + 1);
  v27 = (8 * ((2 * a2) >> 1)) | 4;
  v42 = v24;
  v43 = v8;
  v40 = v26;
  do
  {
    v28 = *(*(*v8 + 40) + 8 * v22);
    v29 = *(v28 + 2);
    if (v22 == v24 && v29 >= 1)
    {
      v45 = v22;
      v30 = 0;
      v31 = v23 * v25;
      v32 = 4 * v31 + 4;
      do
      {
        v33 = a4->__begin_;
        v34 = &a4->__begin_[v31];
        *v34 = 0;
        v35 = OpenSubdiv::v3_1_1::Vtr::internal::Level::gatherQuadRegularRingAroundVertex(v28, v30, v34 + 1, 0xFFFFFFFF);
        if (v35 >= 1)
        {
          v36 = v35;
          v37 = (v33 + v32);
          do
          {
            *v37++ += v23;
            --v36;
          }

          while (v36);
        }

        if (v35)
        {
          v34[v35 + 1] = v34[v35];
          v38 = ~(v35 >> 1);
        }

        else
        {
          v38 = v35 >> 1;
        }

        *v34 = v38;
        v31 += v25;
        ++v30;
        v29 = *(v28 + 2);
        v32 += v27;
      }

      while (v30 < v29);
      v8 = v43;
      v22 = v45;
      v26 = v40;
      v24 = v42;
    }

    v23 += v29;
    ++v22;
  }

  while (v22 != v26);
}

void *OpenSubdiv::v3_1_1::Far::getQuadOffsets(void *this, const OpenSubdiv::v3_1_1::Vtr::internal::Level *a2, uint64_t a3, unsigned int *a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v5 = this + 6;
    v7 = this[3];
  }

  else
  {
    v4 = *(this[57] + 8 * a4);
    v6 = *v4;
    v5 = v4 + 3;
    v7 = *(v6 + 24);
  }

  v8 = (v7 + 8 * a2 + 4);
  v9 = 0;
  v10 = *v5 + 4 * *v8;
  v11 = this[36];
  v12 = this[33];
  v13 = this[42];
  do
  {
    v14 = *(v10 + 4 * v9);
    v15 = 2 * v14;
    v16 = *(v12 + 8 * v14);
    if (v16 < 1)
    {
LABEL_9:
      LODWORD(v17) = -1;
    }

    else
    {
      v17 = 0;
      v18 = v11 + 4 * *(v12 + 8 * v14 + 4);
      while (*(v18 + 4 * v17) != a2)
      {
        if (v16 == ++v17)
        {
          goto LABEL_9;
        }
      }
    }

    *(a3 + 4 * v9++) = v17 | (((v17 + 1) % *(v13 + 4 * v15)) << 8);
  }

  while (v9 != 4);
  return this;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::resizeComponentTopology(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = **(a1 + 40);
  *(v5 + 8) = v4;
  std::vector<unsigned int>::resize((v5 + 264), 2 * v4);
  std::vector<unsigned int>::resize((v5 + 336), 2 * v4);
  std::vector<unsigned int>::resize((v5 + 408), v4);
  std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::VTag>::resize(v5 + 432, v4);
  bzero(*(v5 + 432), 2 * *(v5 + 8));
  v6 = a2[1];
  v7 = **(a1 + 40);
  LODWORD(v7->__begin_) = v6;
  std::vector<unsigned int>::resize(v7 + 1, 2 * v6);
  begin = v7[4].__begin_;
  v9 = v7[4].__end_ - begin;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      v7[4].__end_ = &begin[v6];
    }
  }

  else
  {
    std::vector<OpenSubdiv::v3_1_1::Vtr::internal::Level::FTag>::__append(&v7[4], v6 - v9);
    begin = v7[4].__begin_;
  }

  bzero(begin, SLODWORD(v7->__begin_));
  if (a2[1] >= 1)
  {
    v10 = 0;
    v11 = *(a2 + 1);
    v12 = **(a1 + 40);
    v13 = *(v12 + 24);
    do
    {
      v14 = *(v11 + 4 * v10);
      *v13 = v14;
      if (v10)
      {
        v15 = *(v13 - 1) + *(v13 - 2);
      }

      else
      {
        v15 = 0;
      }

      v13[1] = v15;
      if (*(v12 + 20) > v14)
      {
        v14 = *(v12 + 20);
      }

      *(v12 + 20) = v14;
      ++v10;
      v13 += 2;
    }

    while (v10 < a2[1]);
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = **(a1 + 40);
    v5 = *(v4 + 24);
    v6 = *(v4 + 48);
    v7 = *(a2 + 88);
    v8 = *(a2 + 16);
    do
    {
      v9 = *(v5 + 8 * v2);
      v10 = *(v5 + 8 * v2 + 4);
      v11 = (v6 + 4 * v10);
      if (v7)
      {
        *v11 = *(v8 + 4 * v3++);
        if (v9 >= 2)
        {
          v12 = v9 + 1;
          v13 = (v6 - 4 + 4 * v10 + 4 * v9);
          v14 = (v8 + 4 * v3);
          do
          {
            v15 = *v14++;
            *v13-- = v15;
            --v12;
            ++v3;
          }

          while (v12 > 2);
        }
      }

      else if (v9 >= 1)
      {
        v16 = (v8 + 4 * v3);
        v3 += v9;
        do
        {
          v17 = *v16++;
          *v11++ = v17;
          --v9;
        }

        while (v9);
      }

      ++v2;
    }

    while (v2 < *(a2 + 4));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignComponentTags(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4 >= 1)
  {
    v5 = *(a2 + 32);
    if (v5)
    {
      if (*(a2 + 40))
      {
        for (i = 0; i < v4; ++i)
        {
          v7 = *v5;
          v8 = v5[1];
          v9 = **(a1 + 40);
          Edge = OpenSubdiv::v3_1_1::Vtr::internal::Level::findEdge(v9, *v5, v8);
          if (Edge == -1)
          {
            snprintf(__str, 0x400uLL, "Edge %d specified to be sharp does not exist (%d, %d)", i, v7, v8);
            OpenSubdiv::v3_1_1::Far::Warning("%s", v11, __str);
            v4 = *(a2 + 24);
          }

          else
          {
            *(*(v9 + 27) + 4 * Edge) = *(*(a2 + 40) + 4 * i);
          }

          v5 += 2;
        }
      }
    }
  }

  v12 = *(a2 + 48);
  if (v12 >= 1 && *(a2 + 56) && *(a2 + 64))
  {
    for (j = 0; j < v12; ++j)
    {
      v14 = *(*(a2 + 56) + 4 * j);
      if ((v14 & 0x80000000) != 0 || (v15 = **(a1 + 40), v14 >= *(v15 + 8)))
      {
        snprintf(__str, 0x400uLL, "Vertex %d specified to be sharp does not exist", *(*(a2 + 56) + 4 * j));
        OpenSubdiv::v3_1_1::Far::Warning("%s", v16, __str);
        v12 = *(a2 + 48);
      }

      else
      {
        *(*(v15 + 408) + 4 * v14) = *(*(a2 + 64) + 4 * j);
      }
    }
  }

  if (*(a2 + 72) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = *(*(a2 + 80) + 4 * v17);
      v19 = *(**(a1 + 40) + 96);
      *(v19 + v18) |= 1u;
      *(a1 + 8) |= 2u;
      ++v17;
    }

    while (v17 < *(a2 + 72));
  }

  return 1;
}

uint64_t OpenSubdiv::v3_1_1::Far::TopologyRefinerFactory<OpenSubdiv::v3_1_1::Far::TopologyDescriptor>::assignFaceVaryingTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 92) >= 1)
  {
    OpenSubdiv::v3_1_1::Vtr::internal::Level::createFVarChannel();
  }

  return 1;
}

void OpenSubdiv::v3_1_1::Osd::CpuEvalStencils(uint64_t a1, int *a2, uint64_t a3, int *a4, int *a5, uint64_t a6, int *a7, const float *a8, int32x4_t a9, int32x4_t a10, int a11, int a12)
{
  v12 = a8;
  v13 = a7;
  v14 = a5;
  v56 = *MEMORY[0x1E69E9840];
  if (a11 >= 1)
  {
    v14 = &a5[a11];
    v17 = *(a6 + 4 * a11);
    v13 = &a7[v17];
    v12 = &a8[v17];
  }

  v18 = a1 + 4 * *a2;
  v19 = a3 + 4 * *a4;
  a9.i64[0] = *(a2 + 1);
  a10.i64[0] = *(a4 + 1);
  v20.i64[0] = 0x400000004;
  v20.i64[1] = 0x400000004;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(vzip1q_s32(a9, a10), v20)))))
  {
    v21.i64[0] = *(a2 + 1);
    v21.i64[1] = *(a4 + 1);
    v22.i64[0] = 0x800000008;
    v22.i64[1] = 0x800000008;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v21, v22)))))
    {
      MEMORY[0x1EEE9AC00](a1);
      v24 = &v54[-v23];
      bzero(&v54[-v23], v25);
      v55 = a12 - a11;
      if (a12 - a11 >= 1)
      {
        v26 = 0;
        do
        {
          v27 = v19;
          v28 = a2[1];
          bzero(v24, 4 * v28);
          v29 = *v14;
          if (*v14 < 1)
          {
            v19 = v27;
          }

          else
          {
            v30 = 0;
            v31 = v28;
            v32 = a2[2];
            v19 = v27;
            do
            {
              v34 = *v13++;
              v33 = v34;
              v35 = *v12++;
              v36 = v35;
              if (v31 >= 1)
              {
                v37 = (v18 + 4 * v33 * v32);
                v38 = v24;
                v39 = v31;
                do
                {
                  v40 = *v37++;
                  *v38 = *v38 + (v40 * v36);
                  ++v38;
                  --v39;
                }

                while (v39);
              }

              ++v30;
            }

            while (v30 != v29);
          }

          memcpy((v19 + 4 * a4[2] * v26++), v24, 4 * a4[1]);
          ++v14;
        }

        while (v26 != v55);
      }
    }

    else if (a12 > a11)
    {
      v46 = a11;
      do
      {
        v47 = v14[v46];
        v48 = 0uLL;
        v49 = 0uLL;
        if (v47 >= 1)
        {
          do
          {
            v50 = vld1q_dup_f32(v12++);
            v51 = *v13++;
            v52 = (v18 + 32 * v51);
            v49 = vmlaq_f32(v49, v50, *v52);
            v48 = vmlaq_f32(v48, v50, v52[1]);
            --v47;
          }

          while (v47);
        }

        v53 = (v19 + 32 * v46);
        *v53 = v49;
        v53[1] = v48;
        ++v46;
      }

      while (v46 != a12);
    }
  }

  else if (a12 > a11)
  {
    v41 = a11;
    do
    {
      v42 = v14[v41];
      v43 = 0uLL;
      if (v42 >= 1)
      {
        do
        {
          v45 = *v13++;
          v44 = v45;
          *&v45 = *v12++;
          v43 = vmlaq_n_f32(v43, *(v18 + 16 * v44), *&v45);
          --v42;
        }

        while (v42);
      }

      *(v19 + 16 * v41++) = v43;
    }

    while (v41 != a12);
  }
}

int8x16_t *re::pathprocessing::ContinuousEdge::getIndex(int8x16_t *result, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = a3 + 24 * *(*(a2[1] + (((a2[4] + a2[5] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a2[4] + a2[5] - 1) & 0x1FF));
    *result = vextq_s8(*(v4 + 8), *(v4 + 8), 8uLL);
    v5 = *v4;
  }

  else
  {
    v6 = (a3 + 24 * *(*(a2[1] + ((a2[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a2[4] & 0x1FFLL)));
    *result = *v6;
    v5 = v6[1].i64[0];
  }

  result[1].i64[0] = v5;
  return result;
}

int64x2_t re::pathprocessing::ContinuousEdge::appendBezier(re::pathprocessing::ContinuousEdge *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v10 = *(this + 4);
    if (!v10)
    {
      v11 = *(this + 1);
      v12 = *(this + 2);
      v13 = ((v12 - v11) << 6) - 1;
      v14 = v12 - v11;
      if (v12 == v11)
      {
        v13 = 0;
      }

      if ((v13 - *(this + 5)) < 0x200)
      {
        v15 = *(this + 3);
        v16 = *this;
        v17 = v15 - *this;
        if (v14 < v17)
        {
          if (v11 != v16)
          {
            operator new();
          }

          operator new();
        }

        if (v15 == v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17 >> 2;
        }

        v22[4] = this;
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long *>>(this, v18);
      }

      *(this + 4) = 512;
      v22[0] = *(v12 - 8);
      *(this + 2) = v12 - 8;
      std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(this, v22);
      v10 = *(this + 4);
    }

    v19 = *(this + 1);
    v20 = (v19 + 8 * (v10 >> 9));
    v21 = *v20 + 8 * (v10 & 0x1FF);
    if (*(this + 2) == v19)
    {
      v21 = 0;
    }

    if (v21 == *v20)
    {
      v21 = *(v20 - 1) + 4096;
    }

    *(v21 - 8) = a2;
    result = vaddq_s64(*(this + 2), xmmword_1E309DBF0);
    *(this + 2) = result;
  }

  else if (!a3)
  {
    result = *(this + 8);
    v6 = *(this + 2);
    v7 = *(this + 1);
    v8 = ((v6 - v7) << 6) - 1;
    if (v6 == v7)
    {
      v8 = 0;
    }

    v9 = *(this + 5) + *(this + 4);
    if (v8 == v9)
    {
      std::deque<unsigned long>::__add_back_capacity(this);
      v7 = *(this + 1);
      v9 = *(this + 5) + *(this + 4);
    }

    *(*(v7 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = a2;
    ++*(this + 5);
  }

  return result;
}

void re::pathprocessing::ContinuousVertex::addEdgeFromEnd(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = *a1;
    v10 = v7 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd>>>(v14);
    }

    v15 = 16 * v11;
    *v15 = a2;
    *(v15 + 8) = a3;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    v16 = *a1;
    *a1 = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a2;
    *(v7 + 8) = a3;
    v8 = v7 + 16;
  }

  *(a1 + 8) = v8;
}

uint64_t re::pathprocessing::ContinuousVertex::compareAngle(float32x2_t *a1, float32x2_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = vsub_f32(v2, *a1);
  v5 = vmul_f32(v4, v4);
  v6 = a2[1];
  v7 = vsub_f32(v6, *a2);
  v8 = vmul_f32(v7, v7);
  v9 = vsqrt_f32(vadd_f32(vzip1_s32(v5, v8), vzip2_s32(v5, v8)));
  __asm { FMOV            V7.2S, #1.0 }

  v15 = vdiv_f32(_D7, v9);
  v16 = vmul_n_f32(v4, v15.f32[0]);
  v17 = vmul_lane_f32(v7, v15, 1);
  if (fabsf((-v16.f32[1] * v17.f32[0]) + (v16.f32[0] * v17.f32[1])) >= 0.0001 || vaddv_f32(vmul_f32(v16, v17)) <= 0.0001)
  {
    if (v16.f32[1] < 0.0)
    {
      v16.f32[0] = -2.0 - v16.f32[0];
    }

    if (v17.f32[1] < 0.0)
    {
      v17.f32[0] = -2.0 - v17.f32[0];
    }

    if (v16.f32[0] <= v17.f32[0])
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0;
    v20 = vadd_f32(vsub_f32(v3, vadd_f32(v2, v2)), a1[2]);
    v21 = vadd_f32(v20, v20);
    v22 = vmul_f32(v15, v15);
    v23 = vadd_f32(vsub_f32(*a2, vadd_f32(v6, v6)), a2[2]);
    v24 = vadd_f32(v23, v23);
    v25 = vneg_f32(v17);
    v25.f32[0] = -v16.f32[1];
    v26 = vmul_f32(v22, vmla_f32(vmul_f32(vzip1_s32(v21, v24), v25), vzip2_s32(v21, v24), vzip1_s32(v16, v17)));
    if (v26.f32[0] != v26.f32[1] && vabds_f32(v26.f32[0], v26.f32[1]) > 0.0001)
    {
      if (v26.f32[0] >= v26.f32[1])
      {
        return 1;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t re::pathprocessing::HDSMesh::HDSMesh(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a2[3] != a2[4] && *a2 != a2[1] && a2[6] != a2[7])
  {
    re::pathprocessing::HDSMesh::generateTopology(a1, a2);
  }

  return a1;
}

void re::pathprocessing::HDSMesh::generateTopology(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = 0x8E38E38E38E38E39 * ((v3 - *a2) >> 3);
  v7 = a2[3];
  v6 = a2[4];
  v8 = 0x1C71C71C71C71C72 * ((v3 - *a2) >> 3);
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = v9 - *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
  v13 = v8 - v12;
  if (v8 <= v12)
  {
    if (v8 < v12)
    {
      *(a1 + 8) = v10 + 0x5555555555555560 * ((v3 - *a2) >> 3);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 4) < v13)
    {
      if (v8 <= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v10) >> 4);
        if (2 * v15 > v8)
        {
          v8 = 2 * v15;
        }

        if (v15 >= 0x2AAAAAAAAAAAAAALL)
        {
          v16 = 0x555555555555555;
        }

        else
        {
          v16 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::HalfEdge>>(a1, v16);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v17 = v9 + 48 * v13;
    v18 = 0x5555555555555560 * ((v3 - *a2) >> 3) - 16 * (v11 >> 4);
    *&v19 = -1;
    *(&v19 + 1) = -1;
    do
    {
      *v9 = v19;
      *(v9 + 16) = v19;
      *(v9 + 32) = -1;
      *(v9 + 40) = 0;
      v9 += 48;
      v18 -= 48;
    }

    while (v18);
    *(a1 + 8) = v17;
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  v21 = v5 + 2 - v20;
  if (v5 + 2 >= v20)
  {
    if (v21 > (*(a1 + 40) - *(a1 + 24)) >> 4)
    {
      if (!(v21 >> 60))
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v21);
      }

LABEL_63:
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v3 != v4)
    {
      v22 = 0;
      v23 = 0;
      if (v5 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v5;
      }

      v25 = (*a1 + 88);
      do
      {
        *(v25 - 12) = 0;
        *v25 = 1;
        *(v25 - 8) = v22 + 1;
        *(v25 - 7) = v23;
        *(v25 - 2) = v22;
        *(v25 - 1) = v23++;
        v22 += 2;
        v25 += 24;
      }

      while (v24 != v23);
    }

    if (v6 != v7)
    {
      v26 = 0;
      v27 = a2[3];
      if (v20 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
      }

      do
      {
        v29 = (v27 + 24 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v31 - *v29;
        if (v32)
        {
          v33 = v32 >> 4;
          v34 = *a1;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v35 = *(v31 - 8);
          v36 = *(v31 - 16);
          v37 = (v30 + 8);
          do
          {
            v38 = *v37;
            v39 = (v35 != 0) | (2 * v36);
            v40 = *(v37 - 1);
            v41 = (*v37 == 0) | (2 * v40);
            *(v34 + 48 * v41 + 8) = v39;
            *(v34 + 48 * v39 + 16) = v41;
            v37 += 4;
            v36 = v40;
            v35 = v38;
            --v33;
          }

          while (v33);
        }

        ++v26;
      }

      while (v26 != v28);
    }

    v43 = *a1;
    v42 = *(a1 + 8);
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - *a1) >> 4);
    std::vector<BOOL>::vector(&__p, v44);
    v45 = __p;
    if (v42 == v43)
    {
      if (!__p)
      {
LABEL_61:
        *(a1 + 48) = 1;
        return;
      }
    }

    else
    {
      v46 = 0;
      if (v44 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44;
      }

      v61 = v47;
      do
      {
        if (((1 << v46) & v45[v46 >> 6]) == 0)
        {
          v48 = *(a1 + 24);
          v49 = *(a1 + 32);
          v50 = v49 - v48;
          v51 = (v49 - v48) >> 4;
          v52 = *(a1 + 40);
          if (v49 >= v52)
          {
            v54 = v51 + 1;
            if ((v51 + 1) >> 60)
            {
              goto LABEL_63;
            }

            v55 = v52 - v48;
            if (v55 >> 3 > v54)
            {
              v54 = v55 >> 3;
            }

            if (v55 >= 0x7FFFFFFFFFFFFFF0)
            {
              v56 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v56 = v54;
            }

            if (v56)
            {
              _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v56);
            }

            *(16 * v51) = xmmword_1E3062D70;
            v53 = 16 * v51 + 16;
            memcpy(0, v48, v50);
            v57 = *(a1 + 24);
            *(a1 + 24) = 0;
            *(a1 + 32) = v53;
            *(a1 + 40) = 0;
            if (v57)
            {
              operator delete(v57);
            }

            v47 = v61;
          }

          else
          {
            *v49 = xmmword_1E3062D70;
            v53 = (v49 + 16);
          }

          *(a1 + 32) = v53;
          *(v53 - 16) = v46;
          v58 = *a1;
          v59 = v46;
          v45 = __p;
          do
          {
            v60 = (v58 + 48 * v59);
            *v60 = v51;
            *(v45 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
            v59 = v60[1];
          }

          while (v59 != v46);
          v45[v46 >> 6] |= 1 << v46;
        }

        ++v46;
      }

      while (v46 != v47);
    }

    operator delete(v45);
    goto LABEL_61;
  }
}

uint64_t re::pathprocessing::BezierGraphInfo::BezierGraphInfo(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
  if (v3 != *a2)
  {
    if (!(v4 >> 61))
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](a1 + 48, v4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(a1 + 56) = 0x5555555555555558 * ((v3 - *a2) >> 3);
  v37 = v38;
  v38[0] = 0;
  v38[1] = 0;
  v38[2] = a2;
  v35 = 0u;
  v36 = 0u;
  *__p = 0u;
  v6 = *a1;
  v5 = *(a1 + 8);
  if (v5 != *a1)
  {
    if (!((0x8E38E38E38E38E39 * ((v5 - *a1) >> 3)) >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v32 = 0uLL;
  v33 = 0;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  while (v7 != v8)
  {
    v9 = *v7;
    v10 = *(v7 + 8);
    while (v9 != v10)
    {
      *v9 += *(8 * *v9);
      v9 += 2;
    }

    v7 += 24;
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  while (v11 != v12)
  {
    *v11 += *(8 * *v11);
    ++v11;
  }

  if (v6)
  {
    v13 = v6;
    if (v5 != v6)
    {
      do
      {
        v5 = std::deque<unsigned long>::~deque[abi:nn200100]((v5 - 72));
      }

      while (v5 != v6);
      v13 = *a1;
    }

    *(a1 + 8) = v6;
    operator delete(v13);
  }

  *a1 = v32;
  *(a1 + 16) = v33;
  v33 = 0;
  v32 = 0uLL;
  v39[0] = &v32;
  std::vector<re::pathprocessing::ContinuousEdge>::__destroy_vector::operator()[abi:nn200100](v39);
  v14 = *(a1 + 24);
  if (*(a1 + 32) != v14)
  {
    v15 = 0;
    do
    {
      v16 = (v14 + 24 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = 126 - 2 * __clz((v18 - *v16) >> 4);
      v20 = v18 == *v16;
      v39[0] = a1;
      v39[1] = a2;
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::ContinuousVertex::sort(std::vector<re::pathprocessing::Bezier2> const&,std::vector<re::pathprocessing::ContinuousEdge> const&)::$_0 &,std::pair<unsigned long,re::pathprocessing::ContinuousEdge::EdgeEnd> *,false>(v17, v18, v39, v21, 1);
      v22 = *v16;
      v23 = v16[1];
      if (*v16 != v23)
      {
        v24 = *a1;
        do
        {
          *(v24 + 72 * *v22 + 8 * *(v22 + 8) + 48) = v15;
          v22 += 16;
        }

        while (v22 != v23);
      }

      ++v15;
      v14 = *(a1 + 24);
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - v14) >> 3));
  }

  v25 = __p[1];
  v26 = v35;
  v27 = v35 - __p[1];
  if (v35 - __p[1] >= 0x11)
  {
    do
    {
      v28 = *v25++;
      operator delete(v28);
      v27 -= 8;
    }

    while (v27 > 0x10);
  }

  while (v25 != v26)
  {
    v29 = *v25++;
    operator delete(v29);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,std::__map_value_compare<re::Vector2<float>,std::__value_type<re::Vector2<float>,re::pathprocessing::Node>,re::pathprocessing::MathUtils::LexCompare,true>,std::allocator<std::__value_type<re::Vector2<float>,re::pathprocessing::Node>>>::destroy(v38[0]);
  return a1;
}

void *std::deque<unsigned long>::insert<std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>,0>(uint64_t a1, char *a2, uint64_t a3, void *a4, char *a5, void *a6, char *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a7;
  if (a7 == a5)
  {
    v12 = 0;
  }

  else
  {
    v12 = (&a7[-*a6] >> 3) + ((a6 - a4) << 6) - (&a5[-*a4] >> 3);
  }

  v13 = *(a1 + 32);
  v14 = v13 >> 9;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = (v15 + 8 * (v13 >> 9));
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v17 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = ((a3 - *a2) >> 3) + ((a2 - v17) << 6) - ((v18 - *v17) >> 3);
  }

  v20 = *(a1 + 40);
  if (v19 < v20 - v19)
  {
    if (v12 > v13)
    {
      std::deque<unsigned long>::__add_front_capacity(a1, v12 - v13);
      v13 = *(a1 + 32);
      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      v14 = v13 >> 9;
    }

    v21 = (v15 + 8 * v14);
    if (v16 == v15)
    {
      v22 = 0;
    }

    else
    {
      v22 = *v21 + 8 * (v13 & 0x1FF);
    }

    __dst[0] = (v15 + 8 * v14);
    __dst[1] = v22;
    if (v12 <= v19)
    {
      goto LABEL_55;
    }

    if (v19 >= v12 >> 1)
    {
      v28 = v12 - v19 + (&v8[-*v9] >> 3);
      if (v28 >= 1)
      {
        v9 += v28 >> 9;
        goto LABEL_37;
      }

      v35 = 511 - v28;
      v36 = ~v35;
      v9 -= v35 >> 9;
    }

    else
    {
      if (!v19)
      {
        v9 = v7;
        v33 = v11;
        goto LABEL_47;
      }

      v28 = (&v11[-*v7] >> 3) - v19;
      if (v28 >= 1)
      {
        v9 = &v7[v28 >> 9];
LABEL_37:
        v33 = *v9 + 8 * (v28 & 0x1FF);
LABEL_47:
        if (v33 != v8)
        {
          v40 = *v21;
          v41 = v9;
          v42 = v33;
          do
          {
            if (v22 == v40)
            {
              v43 = *--v21;
              v40 = v43;
              v22 = v43 + 4096;
            }

            if (v42 == *v41)
            {
              v44 = *--v41;
              v42 = (v44 + 4096);
            }

            v45 = *(v42 - 1);
            v42 -= 8;
            *(v22 - 1) = v45;
            v22 -= 8;
            *(a1 + 32) = vaddq_s64(*(a1 + 32), xmmword_1E309DBF0);
          }

          while (v42 != v8);
        }

        v8 = v33;
        v12 = v19;
LABEL_55:
        if (v12)
        {
          v112 = v19;
          v46 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](__dst, v12);
          v48 = v46;
          v49 = v47;
          v50 = __dst[1];
          if (__dst[1] != v47)
          {
            v51 = *v21;
            v52 = v46;
            v53 = v47;
            do
            {
              if (v22 == v51)
              {
                v54 = *--v21;
                v51 = v54;
                v22 = v54 + 4096;
              }

              if (v53 == *v52)
              {
                v55 = *--v52;
                v53 = (v55 + 4096);
              }

              v56 = *(v53 - 1);
              v53 -= 8;
              *(v22 - 1) = v56;
              v22 -= 8;
              *(a1 + 32) = vaddq_s64(*(a1 + 32), xmmword_1E309DBF0);
            }

            while (v53 != v50);
          }

          if (v12 >= v112)
          {
            v59 = __dst[0];
          }

          else
          {
            v57 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](__dst, v112);
            v114 = *__dst;
            std::__for_each_segment[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>>(v48, v49, v57, v58, &v114);
            v50 = v114.n128_u64[1];
            v59 = v114.n128_u64[0];
            *__dst = v114;
          }

          if (v9 == v7)
          {
            v60 = v8;
            v61 = v11;
          }

          else
          {
            *v111 = v11;
            v63 = *v9;
            v62 = v9 + 1;
            std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v8, (v63 + 4096), v59, v50);
            v64 = v114.n128_u64[1];
            v65 = v115;
            if (v62 != v7)
            {
              v66 = *v114.n128_u64[1];
              do
              {
                v67 = 0;
                v68 = *v62;
                for (++v64; ; ++v64)
                {
                  v69 = v66 - v65 + 4096;
                  if ((4096 - v67) >> 3 >= v69 >> 3)
                  {
                    v70 = v69 >> 3;
                  }

                  else
                  {
                    v70 = (4096 - v67) >> 3;
                  }

                  if (v70)
                  {
                    memmove(v65, &v68[v67], 8 * v70);
                  }

                  v67 += 8 * v70;
                  if (v67 == 4096)
                  {
                    break;
                  }

                  v71 = *v64;
                  v66 = v71;
                  v65 = v71;
                }

                v65 += 8 * v70;
                v66 = *(v64 - 1);
                if (v66 + 4096 == v65)
                {
                  v66 = *v64;
                  v65 = *v64;
                }

                else
                {
                  --v64;
                }

                ++v62;
              }

              while (v62 != v7);
            }

            v60 = *v62;
            v61 = *v111;
            v59 = v64;
            v50 = v65;
          }

          std::__copy_move_unwrap_iters[abi:nn200100]<std::__move_impl<std::_ClassicAlgPolicy>,unsigned long *,unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v60, v61, v59, v50);
          v19 = v112;
        }

        goto LABEL_128;
      }

      v39 = 511 - v28;
      v36 = ~v39;
      v9 = &v7[-(v39 >> 9)];
    }

    v33 = *v9 + 8 * (v36 & 0x1FF);
    goto LABEL_47;
  }

  v23 = ((v16 - v15) << 6) - 1;
  if (v16 == v15)
  {
    v23 = 0;
  }

  v24 = v20 + v13;
  v25 = v23 - v24;
  if (v12 > v25)
  {
    std::deque<unsigned long>::__add_back_capacity(a1, v12 - v25);
    v20 = *(a1 + 40);
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    v24 = *(a1 + 32) + v20;
  }

  v26 = (v15 + 8 * (v24 >> 9));
  if (v16 == v15)
  {
    v27 = 0;
  }

  else
  {
    v27 = (*v26 + 8 * (v24 & 0x1FF));
  }

  v29 = v20 - v19;
  if (v20 - v19 >= v12)
  {
    v31 = v27;
    v32 = v26;
    if (!v12)
    {
      goto LABEL_128;
    }

    goto LABEL_96;
  }

  if (v29 >= v12 >> 1)
  {
    v30 = v20 - v19 - v12 + (&v11[-*v7] >> 3);
    if (v30 >= 1)
    {
      v7 += v30 >> 9;
      goto LABEL_40;
    }

    v37 = 511 - v30;
    v38 = ~v37;
    v7 -= v37 >> 9;
  }

  else
  {
    if (!v29)
    {
      v7 = v9;
      v34 = v8;
      goto LABEL_86;
    }

    v30 = v29 + (&v8[-*v9] >> 3);
    if (v30 >= 1)
    {
      v7 = &v9[v30 >> 9];
LABEL_40:
      v34 = *v7 + 8 * (v30 & 0x1FF);
      goto LABEL_86;
    }

    v72 = 511 - v30;
    v38 = ~v72;
    v7 = &v9[-(v72 >> 9)];
  }

  v34 = *v7 + 8 * (v38 & 0x1FF);
LABEL_86:
  if (v34 == v11)
  {
    v31 = v27;
    v32 = v26;
  }

  else
  {
    v73 = *v26;
    v74 = v7;
    v75 = v34;
    v32 = v26;
    v31 = v27;
    do
    {
      *v31 = *v75;
      v31 += 8;
      if (v31 - v73 == 4096)
      {
        v76 = v32[1];
        ++v32;
        v73 = v76;
        v31 = v76;
      }

      v75 += 8;
      if (&v75[-*v74] == 4096)
      {
        v77 = v74[1];
        ++v74;
        v75 = v77;
      }

      ++*(a1 + 40);
    }

    while (v75 != v11);
  }

  v11 = v34;
  v12 = v29;
  if (v29)
  {
LABEL_96:
    v78 = &v27[-*v26] >> 3;
    v79 = v78 - v12;
    if ((v78 - v12) < 1)
    {
      v81 = 511 - v79;
      LOWORD(v79) = ~(511 - v79);
      v80 = &v26[-8 * (v81 >> 9)];
    }

    else
    {
      v80 = &v26[8 * (v79 >> 9)];
    }

    v82 = *v80;
    v83 = &(*v80)[8 * (v79 & 0x1FF)];
    if (v83 != v27)
    {
      v84 = *v32;
      v85 = v80;
      v86 = v83;
      do
      {
        *v31 = *v86;
        v31 += 8;
        if (v31 - v84 == 4096)
        {
          v87 = v32[1];
          ++v32;
          v84 = v87;
          v31 = v87;
        }

        v86 += 8;
        if (v86 - v82 == 4096)
        {
          v88 = v85[1];
          ++v85;
          v82 = v88;
          v86 = v88;
        }

        ++*(a1 + 40);
      }

      while (v86 != v27);
    }

    if (v12 < v29)
    {
      v89 = v78 - v29;
      if (v89 < 1)
      {
        v92 = 511 - v89;
        v90 = &v26[-8 * (v92 >> 9)];
        v91 = &(*v90)[8 * (~v92 & 0x1FF)];
      }

      else
      {
        v90 = &v26[8 * (v89 >> 9)];
        v91 = &(*v90)[8 * (v89 & 0x1FF)];
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v90, v91, v80, v83, v26, v27);
      v26 = v115;
      v27 = v116;
    }

    if (v9 == v7)
    {
      v93 = v8;
      v94 = v11;
      v95 = v26;
      v96 = v27;
    }

    else
    {
      v98 = *v7;
      v97 = v7 - 1;
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v98, v11, v26, v27);
      v99 = v114.n128_u64[1];
      v100 = v115;
      if (v97 != v9)
      {
        v101 = *v114.n128_u64[1];
        do
        {
          v102 = *v97;
          v103 = (*v97 + 4096);
          while (1)
          {
            v104 = v100 - v101;
            if ((v103 - v102) >> 3 >= v104 >> 3)
            {
              v105 = v104 >> 3;
            }

            else
            {
              v105 = (v103 - v102) >> 3;
            }

            v103 -= 8 * v105;
            v100 -= 8 * v105;
            if (v105)
            {
              memmove(v100, v103, 8 * v105);
            }

            if (v103 == v102)
            {
              break;
            }

            v106 = *(v99 - 1);
            v99 -= 8;
            v101 = v106;
            v100 = v106 + 4096;
          }

          v101 = *v99;
          if ((*v99 + 4096) == v100)
          {
            v107 = *(v99 + 1);
            v99 += 8;
            v101 = v107;
            v100 = v107;
          }

          --v97;
        }

        while (v97 != v9);
      }

      v94 = (*v97 + 4096);
      v93 = v8;
      v95 = v99;
      v96 = v100;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long *,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v114, v93, v94, v95, v96);
  }

LABEL_128:
  v108 = *(a1 + 8);
  if (*(a1 + 16) == v108)
  {
    v109 = 0;
  }

  else
  {
    v109 = *(v108 + 8 * (*(a1 + 32) >> 9)) + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  v114.n128_u64[0] = v108 + 8 * (*(a1 + 32) >> 9);
  v114.n128_u64[1] = v109;
  return std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v114, v19);
}

void *std::deque<unsigned long>::insert<std::reverse_iterator<std::__deque_iterator<unsigned long,unsigned long const*,unsigned long const&,unsigned long const* const*,long,512l>>,0>(int64x2_t *a1, char *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a4 + 16);
  v116 = *a4;
  v117 = v6;
  v7 = a5[1];
  v114 = *a5;
  v115 = v7;
  v8 = *(a4 + 24);
  v9 = *(a5 + 3);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v8 - **(a4 + 16)) >> 3) + ((*(a4 + 16) - *(a5 + 2)) << 6) - ((v9 - **(a5 + 2)) >> 3);
  }

  v11 = a1[2].u64[0];
  v12 = v11 >> 9;
  v13 = a1->i64[1];
  v14 = a1[1].i64[0];
  v15 = (v13 + 8 * (v11 >> 9));
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15 + 8 * (a1[2].i64[0] & 0x1FF);
  }

  if (a3 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = ((a3 - *a2) >> 3) + ((a2 - v15) << 6) - ((v16 - *v15) >> 3);
  }

  v18 = a1[2].i64[1];
  if (v17 >= v18 - v17)
  {
    v21 = ((v14 - v13) << 6) - 1;
    if (v14 == v13)
    {
      v21 = 0;
    }

    v22 = v18 + v11;
    v23 = v21 - v22;
    if (v10 > v23)
    {
      std::deque<unsigned long>::__add_back_capacity(a1, v10 - v23);
      v18 = a1[2].i64[1];
      v13 = a1->i64[1];
      v14 = a1[1].i64[0];
      v22 = a1[2].i64[0] + v18;
    }

    v24 = (v13 + 8 * (v22 >> 9));
    if (v14 == v13)
    {
      v25 = 0;
    }

    else
    {
      v25 = (*v24 + 8 * (v22 & 0x1FF));
    }

    v31 = *(&v115 + 1);
    v30 = v115;
    v32 = v18 - v17;
    if (v10 <= v18 - v17)
    {
      v35 = v25;
      v36 = v24;
      if (!v10)
      {
        goto LABEL_116;
      }

LABEL_54:
      v45 = &v25[-*v24] >> 3;
      v46 = v45 - v10;
      if ((v45 - v10) < 1)
      {
        v48 = 511 - v46;
        LOWORD(v46) = ~(511 - v46);
        v47 = &v24[-(v48 >> 9)];
      }

      else
      {
        v47 = &v24[v46 >> 9];
      }

      v49 = *v47;
      v50 = &(*v47)[8 * (v46 & 0x1FF)];
      if (v50 != v25)
      {
        v51 = *v36;
        v52 = v47;
        v53 = v50;
        do
        {
          *v35 = *v53;
          v35 += 8;
          if (v35 - v51 == 4096)
          {
            v54 = v36[1];
            ++v36;
            v51 = v54;
            v35 = v54;
          }

          v53 += 8;
          if (v53 - v49 == 4096)
          {
            v55 = v52[1];
            ++v52;
            v49 = v55;
            v53 = v55;
          }

          ++a1[2].i64[1];
        }

        while (v53 != v25);
      }

      if (v10 < v32)
      {
        v56 = v45 - v32;
        if (v56 < 1)
        {
          v59 = 511 - v56;
          v57 = &v24[-(v59 >> 9)];
          v58 = &(*v57)[8 * (~v59 & 0x1FF)];
        }

        else
        {
          v57 = &v24[v56 >> 9];
          v58 = &(*v57)[8 * (v56 & 0x1FF)];
        }

        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,0>(&v121, v57, v58, v47, v50, v24, v25);
        v24 = v122;
        v25 = v123;
      }

      v60 = *(&v117 + 1);
      if (*(&v117 + 1) == v31)
      {
        goto LABEL_116;
      }

      v61 = v117;
      v62 = *v24;
      v63 = (*(&v117 + 1) - *v117) >> 3;
      v64 = *v30;
      while (1)
      {
        if (v63 + ((v61 - v30) << 6) - ((v31 - v64) >> 3) >= (v25 - v62) >> 3)
        {
          v65 = (v25 - v62) >> 3;
        }

        else
        {
          v65 = v63 + ((v61 - v30) << 6) - ((v31 - v64) >> 3);
        }

        if (v65)
        {
          v66 = v65 + ((v31 - v64) >> 3);
          if (v66 < 1)
          {
            v67 = v30[-((511 - v66) >> 9)];
            v68 = ~(511 - v66) & 0x1FF;
          }

          else
          {
            v67 = *(v30 + ((v66 >> 6) & 0x3FFFFFFFFFFFFF8));
            v68 = v66 & 0x1FF;
          }

          v69 = v67 + 8 * v68;
          if (v69 != v31)
          {
            v70 = v25 - 8;
            v71 = v30;
            while (1)
            {
              v31 += 8;
              if (v31 - v64 == 4096)
              {
                break;
              }

              v73 = v31;
              if (v31 == v64)
              {
                goto LABEL_83;
              }

LABEL_84:
              *v70 = *(v73 - 8);
              v70 -= 8;
              if (v31 == v69)
              {
                goto LABEL_85;
              }
            }

            v72 = v71[1];
            ++v71;
            v31 = v72;
            v64 = v72;
LABEL_83:
            v73 = *(v71 - 1) + 4096;
            goto LABEL_84;
          }

LABEL_85:
          if (v66 < 1)
          {
            v74 = 511 - v66;
            LOWORD(v66) = ~(511 - v66);
            v30 -= v74 >> 9;
          }

          else
          {
            v30 += v66 >> 9;
          }

          v64 = *v30;
          v31 = *v30 + 8 * (v66 & 0x1FF);
        }

        if (v60 == v31)
        {
          goto LABEL_116;
        }

        v75 = *--v24;
        v62 = v75;
        v25 = v75 + 4096;
      }
    }

    if (v32 >= v10 >> 1)
    {
      v34 = v10 - (v18 - v17) + ((*(&v115 + 1) - *v115) >> 3);
    }

    else
    {
      v33 = *(&v117 + 1);
      v30 = v117;
      if (!v32)
      {
        goto LABEL_42;
      }

      v34 = ((*(&v117 + 1) - *v117) >> 3) - v32;
    }

    if (v34 < 1)
    {
      v38 = 511 - v34;
      v30 -= v38 >> 9;
      v33 = *v30 + 8 * (~v38 & 0x1FF);
    }

    else
    {
      v30 += v34 >> 9;
      v33 = *v30 + 8 * (v34 & 0x1FF);
    }

LABEL_42:
    if (*(&v115 + 1) == v33)
    {
      v35 = v25;
      v36 = v24;
    }

    else
    {
      v39 = *v30;
      v40 = v30;
      v41 = v33;
      v36 = v24;
      v35 = v25;
      do
      {
        v42 = v41;
        if (v41 == v39)
        {
          v42 = *(v40 - 1) + 4096;
        }

        *v35 = *(v42 - 8);
        v35 += 8;
        if (v35 - *v36 == 4096)
        {
          v43 = v36[1];
          ++v36;
          v35 = v43;
        }

        if (v41 == v39)
        {
          v44 = *--v40;
          v39 = v44;
          v41 = v44 + 4096;
        }

        v41 -= 8;
        ++a1[2].i64[1];
      }

      while (v31 != v41);
      v31 = v33;
    }

    v10 = v32;
    if (!v32)
    {
      goto LABEL_116;
    }

    goto LABEL_54;
  }

  if (v10 > v11)
  {
    std::deque<unsigned long>::__add_front_capacity(a1, v10 - v11);
    v11 = a1[2].u64[0];
    v13 = a1->i64[1];
    v14 = a1[1].i64[0];
    v12 = v11 >> 9;
  }

  v19 = (v13 + 8 * v12);
  if (v14 == v13)
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19 + 8 * (v11 & 0x1FF);
  }

  v119.n128_u64[0] = v13 + 8 * v12;
  v119.n128_u64[1] = v20;
  v118 = v116;
  v26 = *(&v117 + 1);
  v27 = v117;
  if (v17 >= v10)
  {
    v28 = *(&v117 + 1);
    if (!v10)
    {
      goto LABEL_116;
    }

    goto LABEL_105;
  }

  if (v17 >= v10 >> 1)
  {
    v37 = v17 - v10 + ((*(&v117 + 1) - *v117) >> 3);
    if (v37 < 1)
    {
      v76 = 511 - v37;
      v27 = (v117 - 8 * (v76 >> 9));
      v28 = *v27 + 8 * (~v76 & 0x1FF);
    }

    else
    {
      v27 = (v117 + 8 * (v37 >> 9));
      v28 = *v27 + 8 * (v37 & 0x1FF);
    }

    v77 = &v116;
  }

  else
  {
    v28 = *(&v115 + 1);
    v27 = v115;
    if (v17)
    {
      v29 = v17 + ((*(&v115 + 1) - *v115) >> 3);
      if (v29 < 1)
      {
        v78 = 511 - v29;
        v27 = (v115 - 8 * (v78 >> 9));
        v28 = *v27 + 8 * (~v78 & 0x1FF);
      }

      else
      {
        v27 = (v115 + 8 * (v29 >> 9));
        v28 = *v27 + 8 * (v29 & 0x1FF);
      }
    }

    v77 = &v114;
  }

  v118 = *v77;
  if (*(&v117 + 1) != v28)
  {
    v79 = *v19;
    v80 = v27;
    v81 = v28;
    while (1)
    {
      if (v20 == v79)
      {
        v82 = *--v19;
        v79 = v82;
        v20 = v82 + 4096;
      }

      v81 += 8;
      if (v81 - *v80 == 4096)
      {
        break;
      }

      v84 = v81;
      if (v81 == *v80)
      {
        goto LABEL_102;
      }

LABEL_103:
      *(v20 - 8) = *(v84 - 8);
      v20 -= 8;
      a1[2] = vaddq_s64(a1[2], xmmword_1E309DBF0);
      if (v26 == v81)
      {
        goto LABEL_104;
      }
    }

    v83 = v80[1];
    ++v80;
    v81 = v83;
LABEL_102:
    v84 = *(v80 - 1) + 4096;
    goto LABEL_103;
  }

LABEL_104:
  v10 = v17;
  if (v17)
  {
LABEL_105:
    v85 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v119, v10);
    v87 = v85;
    v88 = v86;
    v89 = v119.n128_u64[1];
    if (v119.n128_u64[1] != v86)
    {
      v90 = *v19;
      v91 = v85;
      v92 = v86;
      do
      {
        if (v20 == v90)
        {
          v93 = *--v19;
          v90 = v93;
          v20 = v93 + 4096;
        }

        if (v92 == *v91)
        {
          v94 = *--v91;
          v92 = (v94 + 4096);
        }

        v95 = *(v92 - 1);
        v92 -= 8;
        *(v20 - 8) = v95;
        v20 -= 8;
        a1[2] = vaddq_s64(a1[2], xmmword_1E309DBF0);
      }

      while (v92 != v89);
    }

    if (v10 >= v17)
    {
      v98 = v119.n128_u64[0];
    }

    else
    {
      v96 = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v119, v17);
      v121 = v119;
      std::__for_each_segment[abi:nn200100]<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>,std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>>>(v87, v88, v96, v97, &v121);
      v89 = v121.n128_u64[1];
      v98 = v121.n128_u64[0];
      v119 = v121;
    }

    v120 = v118;
    v99 = *(&v115 + 1);
    if (*(&v115 + 1) != v28)
    {
      v103 = v115;
      v104 = *v98;
      v105 = (*(&v115 + 1) - *v115) >> 3;
      while (1)
      {
        v106 = (v104 - v89 + 4096) >> 3;
        v107 = v28 - *v27;
        if (((v27 - v103) << 6) - v105 + (v107 >> 3) < v106)
        {
          v106 = ((v27 - v103) << 6) - v105 + (v107 >> 3);
        }

        v121 = v120;
        if (v106)
        {
          v108 = *v27;
          v109 = ((v28 - *v27) >> 3) - v106;
          if (v109 < 1)
          {
            v110 = v27[-((511 - v109) >> 9)] + 8 * (~(511 - v109) & 0x1FF);
          }

          else
          {
            v110 = *(v27 + ((v109 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v109 & 0x1FF);
          }

          while (v110 != v28)
          {
            if (v28 == v108)
            {
              v112 = *--v27;
              v108 = v112;
              v111 = (v112 + 4088);
              v28 = v112 + 4096;
            }

            else
            {
              v111 = (v28 - 8);
            }

            *v89 = *v111;
            v89 += 8;
            v28 -= 8;
          }
        }

        v120 = v121;
        if (v99 == v28)
        {
          break;
        }

        v113 = v98[1];
        ++v98;
        v104 = v113;
        v89 = v113;
      }
    }
  }

LABEL_116:
  v100 = a1->i64[1];
  if (a1[1].i64[0] == v100)
  {
    v101 = 0;
  }

  else
  {
    v101 = *(v100 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v121.n128_u64[0] = v100 + 8 * (a1[2].i64[0] >> 9);
  v121.n128_u64[1] = v101;
  return std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:nn200100](&v121, v17);
}