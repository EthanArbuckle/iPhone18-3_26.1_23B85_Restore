_BYTE *cva::MatrixRasterizerEngine::getImageRGB@<X0>(cva::MatrixRasterizerEngine *this@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, float32x2_t a6@<D3>, float32x4_t a7@<Q4>)
{
  LODWORD(a3) = *(this + 2);
  LODWORD(a4) = 1.0;
  if (*&a3 < 1.0)
  {
    v8 = cva::MatrixRasterizerEngine::convertFloatImage(this, a3, a4, a5, a6, a7);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  if (*(this + 20) == 1)
  {
    v8 = cva::MatrixRasterizerEngine::transposeRGBImage(this);
    goto LABEL_5;
  }

  v9 = this + 24;
LABEL_7:
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = (3 * v11 + 15) & 0xFFFFFFF0;
  *a2 = 0;
  a2[1] = v11 | (v10 << 32);
  a2[2] = ((((3 * v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 3;
  if (v10 * v12)
  {
    result = malloc_type_malloc(v10 * v12, 0x100004033FC2DF1uLL);
    v14 = *(v9 + 2);
    LODWORD(v10) = *(v9 + 3);
  }

  else
  {
    result = 0;
    v14 = v11;
  }

  a2[3] = result;
  v15 = v10 * v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(v9 + 2);
    v19 = *(v9 + 3);
    if (v19)
    {
      v20 = (v19 + *v9);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v9 + 2);
    do
    {
      v22 = *v20;
      v23 = *v20 >> 8;
      *result = BYTE2(*v20);
      result[1] = v23;
      result[2] = v22;
      v20 = (v20 + v18);
      v24 = v16 + 1;
      if (v16 + 1 == v21)
      {
        v16 = 0;
      }

      else
      {
        ++v16;
      }

      if (v24 == v21)
      {
        v20 = (v20 + HIDWORD(v18) - (v24 * v18));
      }

      v25 = result + 3;
      v26 = v17 + 1;
      result = &result[v12 + 3 - (3 * (v17 + 1))];
      if (v17 + 1 == v11)
      {
        v17 = 0;
      }

      else
      {
        ++v17;
      }

      if (v26 != v11)
      {
        result = v25;
      }

      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t cva::MatrixRasterizerEngine::drawLargeElement(uint64_t this, int a2, int a3, unsigned int a4)
{
  v4 = (*(this + 8) + 0.5);
  if (*(this + 20))
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  if (*(this + 20))
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (a4 > 3)
  {
    v8 = 124;
    v7 = 144;
  }

  else
  {
    v7 = qword_24508AB60[a4];
    v8 = qword_24508AB80[a4];
  }

  v9 = v5 * v4;
  v10 = *(this + v8);
  v11 = v6 * v4;
  if (v4 < 2)
  {
    *(*(this + 48) + *(this + 24) + (*(this + 40) * v9 + *(this + 44) * v11)) = v10;
  }

  else
  {
    v12 = *(this + v7);
    v13 = *(this + 48) + *(this + 24);
    for (i = 1; i != v4; ++i)
    {
      v15 = v11 + 1;
      v16 = v4 - 1;
      do
      {
        *(v13 + (*(this + 40) * (i + v9) + *(this + 44) * v15++)) = v12;
        --v16;
      }

      while (v16);
    }

    v17 = v11 + v4;
    v18 = v9 + v4;
    v19 = v9;
    v20 = v11;
    do
    {
      *(v13 + (*(this + 40) * v19++ + *(this + 44) * v11)) = v10;
      *(v13 + (*(this + 40) * v19 + *(this + 44) * v17)) = v10;
      *(v13 + (*(this + 40) * v9 + *(this + 44) * (v20 + 1))) = v10;
      *(v13 + (*(this + 40) * v18 + *(this + 44) * v20++)) = v10;
      --v4;
    }

    while (v4);
  }

  return this;
}

float cva::MatrixRasterizerEngine::drawSubpixelElement(cva::MatrixRasterizerEngine *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 2);
  if (*(this + 20))
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  if (*(this + 20))
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  v7 = v4 * v6;
  v8 = v4 * v5;
  v9 = v8;
  v10 = v7;
  v11 = v8 - v8;
  v12 = v7 - v7;
  v13 = *(this + 18);
  v14 = *(this + 19);
  v15 = v13 * v9;
  v16 = v14 * v10;
  v17 = *(this + 10) + *(this + 7);
  *(v17 + (v16 + v15) + 4 * a4) = *(v17 + (v16 + v15) + 4 * a4) + ((1.0 - v11) * (1.0 - v12));
  *(v17 + (v13 + v15 + v16) + 4 * a4) = *(v17 + (v13 + v15 + v16) + 4 * a4) + (v11 * (1.0 - v12));
  v18 = v14 + v16;
  *(v17 + (v18 + v15) + 4 * a4) = *(v17 + (v18 + v15) + 4 * a4) + (v12 * (1.0 - v11));
  v19 = v17 + (v18 + v13 + v15);
  result = (v11 * v12) + *(v19 + 4 * a4);
  *(v19 + 4 * a4) = result;
  return result;
}

std::string *cva::Sprintf::sprintf@<X0>(std::string *this@<X0>, std::string *a2@<X8>, ...)
{
  va_start(va, a2);
  v3 = a2;
  if (!this)
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return this;
  }

  v4 = this;
  v5 = strlen(this);
  size = 0;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v7 = 2 * v5 + 50;
  v3->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    v8 = v7 + 1;
    if ((size & 0x80) != 0)
    {
      size = v3->__r_.__value_.__l.__size_;
      if (size < v8)
      {
LABEL_9:
        std::string::append(v3, v8 - size, 0);
        goto LABEL_12;
      }

      v9 = v3->__r_.__value_.__r.__words[0];
      v3->__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      if (size < v8)
      {
        goto LABEL_9;
      }

      *(&v3->__r_.__value_.__s + 23) = v8;
      v9 = v3;
    }

    v9->__r_.__value_.__s.__data_[v8] = 0;
LABEL_12:
    if ((v3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = v3;
    }

    else
    {
      v10 = v3->__r_.__value_.__r.__words[0];
    }

    this = vsnprintf(v10, v7 + 1, v4, va);
    if ((this & 0x80000000) != 0)
    {
      LODWORD(this) = 2 * v7;
      goto LABEL_4;
    }

    if (this <= v7)
    {
      break;
    }

LABEL_4:
    size = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v7 = this;
  }

  v11 = SHIBYTE(v3->__r_.__value_.__r.__words[2]);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v11 = v3->__r_.__value_.__l.__size_;
    if (v11 < this)
    {
      return std::string::append(v3, this - v11, 0);
    }

    v3->__r_.__value_.__l.__size_ = this;
    v3 = v3->__r_.__value_.__r.__words[0];
LABEL_24:
    v3->__r_.__value_.__s.__data_[this] = 0;
  }

  else
  {
    if (v11 >= this)
    {
      *(&v3->__r_.__value_.__s + 23) = this;
      goto LABEL_24;
    }

    return std::string::append(v3, this - v11, 0);
  }

  return this;
}

BOOL cva::experimental::copyPlane<unsigned char,2u>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v3 = *(a2 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v9 = vextq_s8(v4, v4, 8uLL);
  v10 = *(a2 + 20);
  v5 = (*(a1 + 24) + a3);
  destPlanarBuffers = &v8;
  srcChannels[0] = v5;
  result = vImageConvert_ChunkyToPlanar8(srcChannels, &destPlanarBuffers, 1u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::copyPlane<unsigned char,3u>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v3 = *(a2 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v9 = vextq_s8(v4, v4, 8uLL);
  v10 = *(a2 + 20);
  v5 = (*(a1 + 24) + a3);
  destPlanarBuffers = &v8;
  srcChannels[0] = v5;
  result = vImageConvert_ChunkyToPlanar8(srcChannels, &destPlanarBuffers, 1u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::copyPlane<unsigned char,4u>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v3 = *(a2 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v9 = vextq_s8(v4, v4, 8uLL);
  v10 = *(a2 + 20);
  v5 = (*(a1 + 24) + a3);
  destPlanarBuffers = &v8;
  srcChannels[0] = v5;
  result = vImageConvert_ChunkyToPlanar8(srcChannels, &destPlanarBuffers, 1u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::copyPlane<float,2u>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v3 = *(a2 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v9 = vextq_s8(v4, v4, 8uLL);
  v10 = *(a2 + 20);
  v5 = (*(a1 + 24) + 4 * a3);
  destPlanarBuffers = &v8;
  srcChannels[0] = v5;
  result = vImageConvert_ChunkyToPlanarF(srcChannels, &destPlanarBuffers, 1u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::copyPlane<float,3u>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v3 = *(a2 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v9 = vextq_s8(v4, v4, 8uLL);
  v10 = *(a2 + 20);
  v5 = (*(a1 + 24) + 4 * a3);
  destPlanarBuffers = &v8;
  srcChannels[0] = v5;
  result = vImageConvert_ChunkyToPlanarF(srcChannels, &destPlanarBuffers, 1u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::copyPlane<float,4u>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v3 = *(a2 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v9 = vextq_s8(v4, v4, 8uLL);
  v10 = *(a2 + 20);
  v5 = (*(a1 + 24) + 4 * a3);
  destPlanarBuffers = &v8;
  srcChannels[0] = v5;
  result = vImageConvert_ChunkyToPlanarF(srcChannels, &destPlanarBuffers, 1u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::extractPlanes<unsigned char,2u,2ul>(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = HIDWORD(v4);
  v6 = *(a2 + 8);
  if (v4 > v6 || v5 > HIDWORD(v6))
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      free(v8);
      *(a2 + 24) = 0;
    }

    *a2 = 0;
    *(a2 + 8) = v4;
    *(a2 + 16) = ((((v4 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v4 + 15) & 0xFFFFFFF0) * HIDWORD(v4);
    if (size)
    {
      v9 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v4) = *(a2 + 8);
      LODWORD(v5) = *(a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v4;
    v9 = *(a2 + 24);
  }

  srcChannels = *(a1 + 24);
  v23 = 0;
  v10 = *(a2 + 20);
  v19[0] = v9;
  v19[1] = v5;
  v19[2] = v4;
  v19[3] = v10;
  destPlanarBuffers = v19;
  v25 = 0;
  v11 = *(a1 + 8);
  v12 = HIDWORD(v11);
  v13 = *(a2 + 40);
  if (v11 > v13 || v12 > HIDWORD(v13))
  {
    v15 = *(a2 + 56);
    if (v15)
    {
      free(v15);
      *(a2 + 56) = 0;
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = ((((v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v11 + 15) & 0xFFFFFFF0) * HIDWORD(v11);
    if (size)
    {
      v14 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v11) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 44);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 56) = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    v14 = *(a2 + 56);
  }

  v23 = *(a1 + 24) + 1;
  v16 = *(a2 + 52);
  v20[0] = v14;
  v20[1] = v12;
  v20[2] = v11;
  v20[3] = v16;
  v25 = v20;
  result = vImageConvert_ChunkyToPlanar8(&srcChannels, &destPlanarBuffers, 2u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_24505454C(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = HIDWORD(v4);
  v6 = *(a2 + 8);
  if (v4 > v6 || v5 > HIDWORD(v6))
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      free(v8);
      *(a2 + 24) = 0;
    }

    *a2 = 0;
    *(a2 + 8) = v4;
    *(a2 + 16) = ((((v4 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v4 + 15) & 0xFFFFFFF0) * HIDWORD(v4);
    if (size)
    {
      v9 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v4) = *(a2 + 8);
      LODWORD(v5) = *(a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v4;
    v9 = *(a2 + 24);
  }

  v33 = 0;
  v34 = 0;
  v30 = 0;
  v31 = 0;
  srcChannels = *(a1 + 24);
  v10 = *(a2 + 20);
  v25[0] = v9;
  v25[1] = v5;
  v25[2] = v4;
  v25[3] = v10;
  destPlanarBuffers = v25;
  v11 = *(a1 + 8);
  v12 = HIDWORD(v11);
  v13 = *(a2 + 40);
  if (v11 > v13 || v12 > HIDWORD(v13))
  {
    v15 = *(a2 + 56);
    if (v15)
    {
      free(v15);
      *(a2 + 56) = 0;
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = ((((v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v11 + 15) & 0xFFFFFFF0) * HIDWORD(v11);
    if (size)
    {
      v14 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v11) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 44);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 56) = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    v14 = *(a2 + 56);
  }

  v30 = *(a1 + 24) + 1;
  v16 = *(a2 + 52);
  v26[0] = v14;
  v26[1] = v12;
  v26[2] = v11;
  v26[3] = v16;
  v33 = v26;
  v17 = *(a1 + 8);
  v18 = HIDWORD(v17);
  v19 = *(a2 + 72);
  if (v17 > v19 || v18 > HIDWORD(v19))
  {
    v21 = *(a2 + 88);
    if (v21)
    {
      free(v21);
      *(a2 + 88) = 0;
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    *(a2 + 80) = ((((v17 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v17 + 15) & 0xFFFFFFF0) * HIDWORD(v17);
    if (size)
    {
      v20 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v17) = *(a2 + 72);
      LODWORD(v18) = *(a2 + 76);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 88) = v20;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    v20 = *(a2 + 88);
  }

  v31 = *(a1 + 24) + 2;
  v22 = *(a2 + 84);
  v27[0] = v20;
  v27[1] = v18;
  v27[2] = v17;
  v27[3] = v22;
  v34 = v27;
  result = vImageConvert_ChunkyToPlanar8(&srcChannels, &destPlanarBuffers, 3u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_245054814(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = HIDWORD(v4);
  v6 = *(a2 + 8);
  if (v4 > v6 || v5 > HIDWORD(v6))
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      free(v8);
      *(a2 + 24) = 0;
    }

    *a2 = 0;
    *(a2 + 8) = v4;
    *(a2 + 16) = ((((v4 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v4 + 15) & 0xFFFFFFF0) * HIDWORD(v4);
    if (size)
    {
      v9 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v4) = *(a2 + 8);
      LODWORD(v5) = *(a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v4;
    v9 = *(a2 + 24);
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  srcChannels = *(a1 + 24);
  v10 = *(a2 + 20);
  v31[0] = v9;
  v31[1] = v5;
  v31[2] = v4;
  v31[3] = v10;
  destPlanarBuffers = v31;
  v11 = *(a1 + 8);
  v12 = HIDWORD(v11);
  v13 = *(a2 + 40);
  if (v11 > v13 || v12 > HIDWORD(v13))
  {
    v15 = *(a2 + 56);
    if (v15)
    {
      free(v15);
      *(a2 + 56) = 0;
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = ((((v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v11 + 15) & 0xFFFFFFF0) * HIDWORD(v11);
    if (size)
    {
      v14 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v11) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 44);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 56) = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    v14 = *(a2 + 56);
  }

  v37 = *(a1 + 24) + 1;
  v16 = *(a2 + 52);
  v32[0] = v14;
  v32[1] = v12;
  v32[2] = v11;
  v32[3] = v16;
  v41 = v32;
  v17 = *(a1 + 8);
  v18 = HIDWORD(v17);
  v19 = *(a2 + 72);
  if (v17 > v19 || v18 > HIDWORD(v19))
  {
    v21 = *(a2 + 88);
    if (v21)
    {
      free(v21);
      *(a2 + 88) = 0;
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    *(a2 + 80) = ((((v17 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v17 + 15) & 0xFFFFFFF0) * HIDWORD(v17);
    if (size)
    {
      v20 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v17) = *(a2 + 72);
      LODWORD(v18) = *(a2 + 76);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 88) = v20;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    v20 = *(a2 + 88);
  }

  v38 = *(a1 + 24) + 2;
  v22 = *(a2 + 84);
  v33[0] = v20;
  v33[1] = v18;
  v33[2] = v17;
  v33[3] = v22;
  v42 = v33;
  v23 = *(a1 + 8);
  v24 = HIDWORD(v23);
  v25 = *(a2 + 104);
  if (v23 > v25 || v24 > HIDWORD(v25))
  {
    v27 = *(a2 + 120);
    if (v27)
    {
      free(v27);
      *(a2 + 120) = 0;
    }

    *(a2 + 96) = 0;
    *(a2 + 104) = v23;
    *(a2 + 112) = ((((v23 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = ((v23 + 15) & 0xFFFFFFF0) * HIDWORD(v23);
    if (size)
    {
      v26 = malloc_type_malloc(size, 0x100004077774924uLL);
      LODWORD(v23) = *(a2 + 104);
      LODWORD(v24) = *(a2 + 108);
    }

    else
    {
      v26 = 0;
    }

    *(a2 + 120) = v26;
  }

  else
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = v23;
    v26 = *(a2 + 120);
  }

  v39 = *(a1 + 24) + 3;
  v28 = *(a2 + 116);
  v34[0] = v26;
  v34[1] = v24;
  v34[2] = v23;
  v34[3] = v28;
  v43 = v34;
  result = vImageConvert_ChunkyToPlanar8(&srcChannels, &destPlanarBuffers, 4u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::copyPlane<unsigned char,3u>(void *a1, uint64_t a2, unsigned int a3)
{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v10 = *(a2 + 24);
  v6 = *(a2 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  v11 = vextq_s8(v7, v7, 8uLL);
  v12 = *(a2 + 20);
  destPlanarBuffers = &v10;
  srcChannels[0] = (v5 + a3);
  result = vImageConvert_ChunkyToPlanar8(srcChannels, &destPlanarBuffers, 1u, v4, v3, HIDWORD(v3), HIDWORD(v4), 0) == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::extractPlanes<unsigned char,3u,3ul>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = 0;
  v5 = *(a1 + 8);
  v6 = v2;
  return sub_24505454C(&v4, a2);
}

BOOL cva::experimental::extractPlanes<unsigned char,4u,4ul>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = 0;
  v5 = *(a1 + 8);
  v6 = v2;
  return sub_245054814(&v4, a2);
}

BOOL cva::experimental::extractPlanes<float,2u,2ul>(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = HIDWORD(v4);
  v6 = *(a2 + 8);
  if (v4 > v6 || v5 > HIDWORD(v6))
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      free(v8);
      *(a2 + 24) = 0;
    }

    *a2 = 0;
    *(a2 + 8) = v4;
    *(a2 + 16) = ((((4 * v4 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v4 + 15) & 0xFFFFFFF0) * HIDWORD(v4);
    if (size)
    {
      v9 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v4) = *(a2 + 8);
      LODWORD(v5) = *(a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v4;
    v9 = *(a2 + 24);
  }

  srcChannels = *(a1 + 24);
  v23 = 0;
  v10 = *(a2 + 20);
  v19[0] = v9;
  v19[1] = v5;
  v19[2] = v4;
  v19[3] = v10;
  destPlanarBuffers = v19;
  v25 = 0;
  v11 = *(a1 + 8);
  v12 = HIDWORD(v11);
  v13 = *(a2 + 40);
  if (v11 > v13 || v12 > HIDWORD(v13))
  {
    v15 = *(a2 + 56);
    if (v15)
    {
      free(v15);
      *(a2 + 56) = 0;
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = ((((4 * v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v11 + 15) & 0xFFFFFFF0) * HIDWORD(v11);
    if (size)
    {
      v14 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v11) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 44);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 56) = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    v14 = *(a2 + 56);
  }

  v23 = *(a1 + 24) + 4;
  v16 = *(a2 + 52);
  v20[0] = v14;
  v20[1] = v12;
  v20[2] = v11;
  v20[3] = v16;
  v25 = v20;
  result = vImageConvert_ChunkyToPlanarF(&srcChannels, &destPlanarBuffers, 2u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::extractPlanes<float,3u,3ul>(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = HIDWORD(v4);
  v6 = *(a2 + 8);
  if (v4 > v6 || v5 > HIDWORD(v6))
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      free(v8);
      *(a2 + 24) = 0;
    }

    *a2 = 0;
    *(a2 + 8) = v4;
    *(a2 + 16) = ((((4 * v4 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v4 + 15) & 0xFFFFFFF0) * HIDWORD(v4);
    if (size)
    {
      v9 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v4) = *(a2 + 8);
      LODWORD(v5) = *(a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v4;
    v9 = *(a2 + 24);
  }

  v33 = 0;
  v34 = 0;
  v30 = 0;
  v31 = 0;
  srcChannels = *(a1 + 24);
  v10 = *(a2 + 20);
  v25[0] = v9;
  v25[1] = v5;
  v25[2] = v4;
  v25[3] = v10;
  destPlanarBuffers = v25;
  v11 = *(a1 + 8);
  v12 = HIDWORD(v11);
  v13 = *(a2 + 40);
  if (v11 > v13 || v12 > HIDWORD(v13))
  {
    v15 = *(a2 + 56);
    if (v15)
    {
      free(v15);
      *(a2 + 56) = 0;
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = ((((4 * v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v11 + 15) & 0xFFFFFFF0) * HIDWORD(v11);
    if (size)
    {
      v14 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v11) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 44);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 56) = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    v14 = *(a2 + 56);
  }

  v30 = *(a1 + 24) + 4;
  v16 = *(a2 + 52);
  v26[0] = v14;
  v26[1] = v12;
  v26[2] = v11;
  v26[3] = v16;
  v33 = v26;
  v17 = *(a1 + 8);
  v18 = HIDWORD(v17);
  v19 = *(a2 + 72);
  if (v17 > v19 || v18 > HIDWORD(v19))
  {
    v21 = *(a2 + 88);
    if (v21)
    {
      free(v21);
      *(a2 + 88) = 0;
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    *(a2 + 80) = ((((4 * v17 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v17 + 15) & 0xFFFFFFF0) * HIDWORD(v17);
    if (size)
    {
      v20 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v17) = *(a2 + 72);
      LODWORD(v18) = *(a2 + 76);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 88) = v20;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    v20 = *(a2 + 88);
  }

  v31 = *(a1 + 24) + 8;
  v22 = *(a2 + 84);
  v27[0] = v20;
  v27[1] = v18;
  v27[2] = v17;
  v27[3] = v22;
  v34 = v27;
  result = vImageConvert_ChunkyToPlanarF(&srcChannels, &destPlanarBuffers, 3u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::extractPlanes<float,4u,4ul>(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = HIDWORD(v4);
  v6 = *(a2 + 8);
  if (v4 > v6 || v5 > HIDWORD(v6))
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      free(v8);
      *(a2 + 24) = 0;
    }

    *a2 = 0;
    *(a2 + 8) = v4;
    *(a2 + 16) = ((((4 * v4 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v4 + 15) & 0xFFFFFFF0) * HIDWORD(v4);
    if (size)
    {
      v9 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v4) = *(a2 + 8);
      LODWORD(v5) = *(a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 24) = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v4;
    v9 = *(a2 + 24);
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  srcChannels = *(a1 + 24);
  v10 = *(a2 + 20);
  v31[0] = v9;
  v31[1] = v5;
  v31[2] = v4;
  v31[3] = v10;
  destPlanarBuffers = v31;
  v11 = *(a1 + 8);
  v12 = HIDWORD(v11);
  v13 = *(a2 + 40);
  if (v11 > v13 || v12 > HIDWORD(v13))
  {
    v15 = *(a2 + 56);
    if (v15)
    {
      free(v15);
      *(a2 + 56) = 0;
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    *(a2 + 48) = ((((4 * v11 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v11 + 15) & 0xFFFFFFF0) * HIDWORD(v11);
    if (size)
    {
      v14 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v11) = *(a2 + 40);
      LODWORD(v12) = *(a2 + 44);
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 56) = v14;
  }

  else
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = v11;
    v14 = *(a2 + 56);
  }

  v37 = *(a1 + 24) + 4;
  v16 = *(a2 + 52);
  v32[0] = v14;
  v32[1] = v12;
  v32[2] = v11;
  v32[3] = v16;
  v41 = v32;
  v17 = *(a1 + 8);
  v18 = HIDWORD(v17);
  v19 = *(a2 + 72);
  if (v17 > v19 || v18 > HIDWORD(v19))
  {
    v21 = *(a2 + 88);
    if (v21)
    {
      free(v21);
      *(a2 + 88) = 0;
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    *(a2 + 80) = ((((4 * v17 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v17 + 15) & 0xFFFFFFF0) * HIDWORD(v17);
    if (size)
    {
      v20 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v17) = *(a2 + 72);
      LODWORD(v18) = *(a2 + 76);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 88) = v20;
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 72) = v17;
    v20 = *(a2 + 88);
  }

  v38 = *(a1 + 24) + 8;
  v22 = *(a2 + 84);
  v33[0] = v20;
  v33[1] = v18;
  v33[2] = v17;
  v33[3] = v22;
  v42 = v33;
  v23 = *(a1 + 8);
  v24 = HIDWORD(v23);
  v25 = *(a2 + 104);
  if (v23 > v25 || v24 > HIDWORD(v25))
  {
    v27 = *(a2 + 120);
    if (v27)
    {
      free(v27);
      *(a2 + 120) = 0;
    }

    *(a2 + 96) = 0;
    *(a2 + 104) = v23;
    *(a2 + 112) = ((((4 * v23 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v23 + 15) & 0xFFFFFFF0) * HIDWORD(v23);
    if (size)
    {
      v26 = malloc_type_malloc(size, 0x100004052888210uLL);
      LODWORD(v23) = *(a2 + 104);
      LODWORD(v24) = *(a2 + 108);
    }

    else
    {
      v26 = 0;
    }

    *(a2 + 120) = v26;
  }

  else
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = v23;
    v26 = *(a2 + 120);
  }

  v39 = *(a1 + 24) + 12;
  v28 = *(a2 + 116);
  v34[0] = v26;
  v34[1] = v24;
  v34[2] = v23;
  v34[3] = v28;
  v43 = v34;
  result = vImageConvert_ChunkyToPlanarF(&srcChannels, &destPlanarBuffers, 4u, *(a1 + 16), *(a1 + 8), *(a1 + 12), *(a1 + 20), 0) == 0;
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL cva::experimental::convertPlanar16uToPlanar32f(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&src.height = vextq_s8(v7, v7, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&v10.height = vextq_s8(v7, v7, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v5;
  return vImageConvert_16UToF(&src, &v10, a4, (a3 - a4) / 65535.0, 0) == 0;
}

BOOL cva::experimental::convertPlanar32fToPlanar16u(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&src.height = vextq_s8(v7, v7, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&v10.height = vextq_s8(v7, v7, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v5;
  return vImageConvert_FTo16U(&src, &v10, a4, (a3 - a4) / 65535.0, 0) == 0;
}

BOOL cva::experimental::convertPlanar32fToPlanar8u(uint64_t a1, uint64_t a2, Pixel_F a3, Pixel_F a4)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v9.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v6, v6, 8uLL);
  v9.rowBytes = *(a2 + 20);
  src.data = v4;
  return vImageConvert_PlanarFtoPlanar8(&src, &v9, a3, a4, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToPlanar32f(uint64_t a1, uint64_t a2, Pixel_F a3, Pixel_F a4)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v9.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v6, v6, 8uLL);
  v9.rowBytes = *(a2 + 20);
  src.data = v4;
  return vImageConvert_Planar8toPlanarF(&src, &v9, a3, a4, 0) == 0;
}

BOOL cva::experimental::convertPlanar16uToPlanar8u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&src.height = vextq_s8(v4, v4, 8uLL);
  src.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  src.data = v2;
  return vImageConvert_Planar16UtoPlanar8_dithered(&src, &v7, 0, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToPlanar16u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&src.height = vextq_s8(v4, v4, 8uLL);
  src.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  src.data = v2;
  return vImageConvert_Planar8To16U(&src, &v7, 0) == 0;
}

uint64_t cva::experimental::convertPlanar16uToPlanar64f(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = (HIDWORD(v6) * HIDWORD(v5));
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = a3 - a4;
      v11 = 65535.0;
      v12 = (v4 + *a1);
      v13 = (v12 + v7);
      v14 = *(a2 + 16);
      v15 = *(a2 + 24);
      if (v15)
      {
        v16 = (v15 + *a2);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a2 + 8);
      v18 = v10 / 65535.0;
      do
      {
        LOWORD(v11) = *v12;
        v11 = a4 + *&v11 * v18;
        *v16 = v11;
        v12 = (v12 + v6);
        v19 = v9 + 1;
        if (v9 + 1 == v5)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        if (v19 == v5)
        {
          v12 = (v12 + HIDWORD(v6) - (v19 * v6));
        }

        v16 = (v16 + v14);
        v20 = v8 + 1;
        if (v8 + 1 == v17)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v20 == v17)
        {
          v16 = (v16 + HIDWORD(v14) - (v20 * v14));
        }
      }

      while (v12 != v13);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertPlanar64fToPlanar16u(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = (HIDWORD(v6) * HIDWORD(v5));
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v4 + *a1);
      v11 = (v10 + v7);
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
      if (v13)
      {
        v14 = (v13 + *a2);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a2 + 8);
      do
      {
        v16 = (*v10 - a4) * (65535.0 / (a3 - a4)) + 0.5;
        if (v16 < 0.0)
        {
          v17 = 0;
        }

        else
        {
          v17 = -1;
        }

        if (v16 <= 65535.0 && v16 >= 0.0)
        {
          v17 = v16;
        }

        *v14 = v17;
        v10 = (v10 + v6);
        v19 = v9 + 1;
        if (v9 + 1 == v5)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        if (v19 == v5)
        {
          v10 = (v10 + HIDWORD(v6) - (v19 * v6));
        }

        v14 = (v14 + v12);
        v20 = v8 + 1;
        if (v8 + 1 == v15)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v20 == v15)
        {
          v14 = (v14 + HIDWORD(v12) - (v20 * v12));
        }
      }

      while (v10 != v11);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertPlanar8uToPlanar64f(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = (HIDWORD(v6) * HIDWORD(v5));
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = a3 - a4;
      v11 = 255.0;
      v12 = (v4 + *a1);
      v13 = &v12[v7];
      v14 = *(a2 + 16);
      v15 = *(a2 + 24);
      if (v15)
      {
        v16 = (v15 + *a2);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a2 + 8);
      v18 = v10 / 255.0;
      do
      {
        LOBYTE(v11) = *v12;
        v11 = a4 + *&v11 * v18;
        *v16 = v11;
        v12 += v6;
        v19 = v9 + 1;
        if (v9 + 1 == v5)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        if (v19 == v5)
        {
          v12 = &v12[HIDWORD(v6) - (v19 * v6)];
        }

        v16 = (v16 + v14);
        v20 = v8 + 1;
        if (v8 + 1 == v17)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v20 == v17)
        {
          v16 = (v16 + HIDWORD(v14) - (v20 * v14));
        }
      }

      while (v12 != v13);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertPlanar64fToPlanar8u(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = a1[2];
    v7 = (HIDWORD(v6) * HIDWORD(v5));
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v4 + *a1);
      v11 = (v10 + v7);
      v12 = *(a2 + 16);
      v13 = *(a2 + 24);
      if (v13)
      {
        v14 = (v13 + *a2);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a2 + 8);
      do
      {
        v16 = (*v10 - a4) * (255.0 / (a3 - a4)) + 0.5;
        if (v16 < 0.0)
        {
          v17 = 0;
        }

        else
        {
          v17 = -1;
        }

        if (v16 <= 255.0 && v16 >= 0.0)
        {
          v17 = v16;
        }

        *v14 = v17;
        v10 = (v10 + v6);
        v19 = v9 + 1;
        if (v9 + 1 == v5)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        if (v19 == v5)
        {
          v10 = (v10 + HIDWORD(v6) - (v19 * v6));
        }

        v14 += v12;
        v20 = v8 + 1;
        if (v8 + 1 == v15)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v20 == v15)
        {
          v14 = &v14[HIDWORD(v12) - (v20 * v12)];
        }
      }

      while (v10 != v11);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertPlanar64fToPlanar32f(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = (HIDWORD(v4) * HIDWORD(v3));
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = (v2 + *a1);
      v9 = (v8 + v5);
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      if (v11)
      {
        v12 = (v11 + *a2);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 8);
      do
      {
        v14 = *v8;
        *v12 = v14;
        v8 = (v8 + v4);
        v15 = v7 + 1;
        if (v7 + 1 == v3)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v15 == v3)
        {
          v8 = (v8 + HIDWORD(v4) - (v15 * v4));
        }

        v12 = (v12 + v10);
        v16 = v6 + 1;
        if (v6 + 1 == v13)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }

        if (v16 == v13)
        {
          v12 = (v12 + HIDWORD(v10) - (v16 * v10));
        }
      }

      while (v8 != v9);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertPlanar32fToPlanar64f(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = (HIDWORD(v4) * HIDWORD(v3));
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = (v2 + *a1);
      v9 = (v8 + v5);
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      if (v11)
      {
        v12 = (v11 + *a2);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 8);
      do
      {
        *v12 = *v8;
        v8 = (v8 + v4);
        v14 = v7 + 1;
        if (v7 + 1 == v3)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v14 == v3)
        {
          v8 = (v8 + HIDWORD(v4) - (v14 * v4));
        }

        v12 = (v12 + v10);
        v15 = v6 + 1;
        if (v6 + 1 == v13)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }

        if (v15 == v13)
        {
          v12 = (v12 + HIDWORD(v10) - (v15 * v10));
        }
      }

      while (v8 != v9);
    }
  }

  return 1;
}

BOOL cva::experimental::convertARGB8uToPlanar32f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, const float *a7)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  *&src.height = vextq_s8(v9, v9, 8uLL);
  src.rowBytes = *(a1 + 20);
  alpha.data = *(a2 + 24);
  v10 = *(a2 + 8);
  v9.i64[0] = v10;
  v9.i64[1] = HIDWORD(v10);
  *&alpha.height = vextq_s8(v9, v9, 8uLL);
  alpha.rowBytes = *(a2 + 20);
  src.data = v7;
  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  v9.i64[0] = v12;
  v9.i64[1] = HIDWORD(v12);
  *&red.height = vextq_s8(v9, v9, 8uLL);
  red.rowBytes = *(a3 + 20);
  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  v9.i64[0] = v14;
  v9.i64[1] = HIDWORD(v14);
  *&green.height = vextq_s8(v9, v9, 8uLL);
  green.rowBytes = *(a4 + 20);
  red.data = v11;
  v17.data = *(a5 + 24);
  v15 = *(a5 + 8);
  v9.i64[0] = v15;
  v9.i64[1] = HIDWORD(v15);
  *&v17.height = vextq_s8(v9, v9, 8uLL);
  v17.rowBytes = *(a5 + 20);
  green.data = v13;
  return vImageConvert_ARGB8888toPlanarF(&src, &alpha, &red, &green, &v17, a6, a7, 0) == 0;
}

BOOL cva::experimental::convertRGBA8uToPlanar32f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, const float *a7)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  *&src.height = vextq_s8(v9, v9, 8uLL);
  src.rowBytes = *(a1 + 20);
  alpha.data = *(a2 + 24);
  v10 = *(a2 + 8);
  v9.i64[0] = v10;
  v9.i64[1] = HIDWORD(v10);
  *&alpha.height = vextq_s8(v9, v9, 8uLL);
  alpha.rowBytes = *(a2 + 20);
  src.data = v7;
  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  v9.i64[0] = v12;
  v9.i64[1] = HIDWORD(v12);
  *&red.height = vextq_s8(v9, v9, 8uLL);
  red.rowBytes = *(a3 + 20);
  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  v9.i64[0] = v14;
  v9.i64[1] = HIDWORD(v14);
  *&green.height = vextq_s8(v9, v9, 8uLL);
  green.rowBytes = *(a4 + 20);
  red.data = v11;
  v17.data = *(a5 + 24);
  v15 = *(a5 + 8);
  v9.i64[0] = v15;
  v9.i64[1] = HIDWORD(v15);
  *&v17.height = vextq_s8(v9, v9, 8uLL);
  v17.rowBytes = *(a5 + 20);
  green.data = v13;
  return vImageConvert_ARGB8888toPlanarF(&src, &alpha, &red, &green, &v17, a6, a7, 0) == 0;
}

BOOL cva::experimental::convertBGRA8uToPlanar32f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, const float *a7)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  *&src.height = vextq_s8(v9, v9, 8uLL);
  src.rowBytes = *(a1 + 20);
  alpha.data = *(a2 + 24);
  v10 = *(a2 + 8);
  v9.i64[0] = v10;
  v9.i64[1] = HIDWORD(v10);
  *&alpha.height = vextq_s8(v9, v9, 8uLL);
  alpha.rowBytes = *(a2 + 20);
  src.data = v7;
  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  v9.i64[0] = v12;
  v9.i64[1] = HIDWORD(v12);
  *&red.height = vextq_s8(v9, v9, 8uLL);
  red.rowBytes = *(a3 + 20);
  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  v9.i64[0] = v14;
  v9.i64[1] = HIDWORD(v14);
  *&green.height = vextq_s8(v9, v9, 8uLL);
  green.rowBytes = *(a4 + 20);
  red.data = v11;
  v17.data = *(a5 + 24);
  v15 = *(a5 + 8);
  v9.i64[0] = v15;
  v9.i64[1] = HIDWORD(v15);
  *&v17.height = vextq_s8(v9, v9, 8uLL);
  v17.rowBytes = *(a5 + 20);
  green.data = v13;
  return vImageConvert_ARGB8888toPlanarF(&src, &alpha, &red, &green, &v17, a6, a7, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToARGB8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&srcA.height = vextq_s8(v7, v7, 8uLL);
  srcA.rowBytes = *(a1 + 20);
  srcR.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&srcR.height = vextq_s8(v7, v7, 8uLL);
  srcR.rowBytes = *(a2 + 20);
  srcA.data = v5;
  v9 = *(a3 + 24);
  v10 = *(a3 + 8);
  v7.i64[0] = v10;
  v7.i64[1] = HIDWORD(v10);
  *&srcG.height = vextq_s8(v7, v7, 8uLL);
  srcG.rowBytes = *(a3 + 20);
  v11 = *(a4 + 24);
  v12 = *(a4 + 8);
  v7.i64[0] = v12;
  v7.i64[1] = HIDWORD(v12);
  *&srcB.height = vextq_s8(v7, v7, 8uLL);
  srcB.rowBytes = *(a4 + 20);
  srcG.data = v9;
  v15.data = *(a5 + 24);
  v13 = *(a5 + 8);
  v7.i64[0] = v13;
  v7.i64[1] = HIDWORD(v13);
  *&v15.height = vextq_s8(v7, v7, 8uLL);
  v15.rowBytes = *(a5 + 20);
  srcB.data = v11;
  return vImageConvert_Planar8toARGB8888(&srcA, &srcR, &srcG, &srcB, &v15, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToRGBA8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&srcA.height = vextq_s8(v7, v7, 8uLL);
  srcA.rowBytes = *(a1 + 20);
  srcR.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&srcR.height = vextq_s8(v7, v7, 8uLL);
  srcR.rowBytes = *(a2 + 20);
  srcA.data = v5;
  v9 = *(a3 + 24);
  v10 = *(a3 + 8);
  v7.i64[0] = v10;
  v7.i64[1] = HIDWORD(v10);
  *&srcG.height = vextq_s8(v7, v7, 8uLL);
  srcG.rowBytes = *(a3 + 20);
  v11 = *(a4 + 24);
  v12 = *(a4 + 8);
  v7.i64[0] = v12;
  v7.i64[1] = HIDWORD(v12);
  *&srcB.height = vextq_s8(v7, v7, 8uLL);
  srcB.rowBytes = *(a4 + 20);
  srcG.data = v9;
  v15.data = *(a5 + 24);
  v13 = *(a5 + 8);
  v7.i64[0] = v13;
  v7.i64[1] = HIDWORD(v13);
  *&v15.height = vextq_s8(v7, v7, 8uLL);
  v15.rowBytes = *(a5 + 20);
  srcB.data = v11;
  return vImageConvert_Planar8toARGB8888(&srcA, &srcR, &srcG, &srcB, &v15, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToBGRA8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&srcA.height = vextq_s8(v7, v7, 8uLL);
  srcA.rowBytes = *(a1 + 20);
  srcR.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&srcR.height = vextq_s8(v7, v7, 8uLL);
  srcR.rowBytes = *(a2 + 20);
  srcA.data = v5;
  v9 = *(a3 + 24);
  v10 = *(a3 + 8);
  v7.i64[0] = v10;
  v7.i64[1] = HIDWORD(v10);
  *&srcG.height = vextq_s8(v7, v7, 8uLL);
  srcG.rowBytes = *(a3 + 20);
  v11 = *(a4 + 24);
  v12 = *(a4 + 8);
  v7.i64[0] = v12;
  v7.i64[1] = HIDWORD(v12);
  *&srcB.height = vextq_s8(v7, v7, 8uLL);
  srcB.rowBytes = *(a4 + 20);
  srcG.data = v9;
  v15.data = *(a5 + 24);
  v13 = *(a5 + 8);
  v7.i64[0] = v13;
  v7.i64[1] = HIDWORD(v13);
  *&v15.height = vextq_s8(v7, v7, 8uLL);
  v15.rowBytes = *(a5 + 20);
  srcB.data = v11;
  return vImageConvert_Planar8toARGB8888(&srcA, &srcR, &srcG, &srcB, &v15, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToRGB8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  planarRed.data = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&planarRed.height = vextq_s8(v5, v5, 8uLL);
  planarRed.rowBytes = *(a1 + 20);
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  v5.i64[0] = v7;
  v5.i64[1] = HIDWORD(v7);
  *&planarGreen.height = vextq_s8(v5, v5, 8uLL);
  planarGreen.rowBytes = *(a2 + 20);
  v8 = *(a3 + 24);
  v9 = *(a3 + 8);
  v5.i64[0] = v9;
  v5.i64[1] = HIDWORD(v9);
  *&planarBlue.height = vextq_s8(v5, v5, 8uLL);
  planarBlue.rowBytes = *(a3 + 20);
  planarGreen.data = v6;
  v12.data = *(a4 + 24);
  v10 = *(a4 + 8);
  v5.i64[0] = v10;
  v5.i64[1] = HIDWORD(v10);
  *&v12.height = vextq_s8(v5, v5, 8uLL);
  v12.rowBytes = *(a4 + 20);
  planarBlue.data = v8;
  return vImageConvert_Planar8toRGB888(&planarRed, &planarGreen, &planarBlue, &v12, 0) == 0;
}

BOOL cva::experimental::convertPlanar8uToBGR8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  planarRed.data = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&planarRed.height = vextq_s8(v5, v5, 8uLL);
  planarRed.rowBytes = *(a1 + 20);
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  v5.i64[0] = v7;
  v5.i64[1] = HIDWORD(v7);
  *&planarGreen.height = vextq_s8(v5, v5, 8uLL);
  planarGreen.rowBytes = *(a2 + 20);
  v8 = *(a3 + 24);
  v9 = *(a3 + 8);
  v5.i64[0] = v9;
  v5.i64[1] = HIDWORD(v9);
  *&planarBlue.height = vextq_s8(v5, v5, 8uLL);
  planarBlue.rowBytes = *(a3 + 20);
  planarGreen.data = v6;
  v12.data = *(a4 + 24);
  v10 = *(a4 + 8);
  v5.i64[0] = v10;
  v5.i64[1] = HIDWORD(v10);
  *&v12.height = vextq_s8(v5, v5, 8uLL);
  v12.rowBytes = *(a4 + 20);
  planarBlue.data = v8;
  return vImageConvert_Planar8toRGB888(&planarRed, &planarGreen, &planarBlue, &v12, 0) == 0;
}

BOOL cva::experimental::convertPlanar32fToARGB8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, const float *a7)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  *&alpha.height = vextq_s8(v9, v9, 8uLL);
  alpha.rowBytes = *(a1 + 20);
  red.data = *(a2 + 24);
  v10 = *(a2 + 8);
  v9.i64[0] = v10;
  v9.i64[1] = HIDWORD(v10);
  *&red.height = vextq_s8(v9, v9, 8uLL);
  red.rowBytes = *(a2 + 20);
  alpha.data = v7;
  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  v9.i64[0] = v12;
  v9.i64[1] = HIDWORD(v12);
  *&green.height = vextq_s8(v9, v9, 8uLL);
  green.rowBytes = *(a3 + 20);
  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  v9.i64[0] = v14;
  v9.i64[1] = HIDWORD(v14);
  *&blue.height = vextq_s8(v9, v9, 8uLL);
  blue.rowBytes = *(a4 + 20);
  green.data = v11;
  v17.data = *(a5 + 24);
  v15 = *(a5 + 8);
  v9.i64[0] = v15;
  v9.i64[1] = HIDWORD(v15);
  *&v17.height = vextq_s8(v9, v9, 8uLL);
  v17.rowBytes = *(a5 + 20);
  blue.data = v13;
  return vImageConvert_PlanarFToARGB8888(&alpha, &red, &green, &blue, &v17, a6, a7, 0) == 0;
}

BOOL cva::experimental::convertPlanar32fToRGBA8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, const float *a7)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  *&alpha.height = vextq_s8(v9, v9, 8uLL);
  alpha.rowBytes = *(a1 + 20);
  red.data = *(a2 + 24);
  v10 = *(a2 + 8);
  v9.i64[0] = v10;
  v9.i64[1] = HIDWORD(v10);
  *&red.height = vextq_s8(v9, v9, 8uLL);
  red.rowBytes = *(a2 + 20);
  alpha.data = v7;
  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  v9.i64[0] = v12;
  v9.i64[1] = HIDWORD(v12);
  *&green.height = vextq_s8(v9, v9, 8uLL);
  green.rowBytes = *(a3 + 20);
  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  v9.i64[0] = v14;
  v9.i64[1] = HIDWORD(v14);
  *&blue.height = vextq_s8(v9, v9, 8uLL);
  blue.rowBytes = *(a4 + 20);
  green.data = v11;
  v17.data = *(a5 + 24);
  v15 = *(a5 + 8);
  v9.i64[0] = v15;
  v9.i64[1] = HIDWORD(v15);
  *&v17.height = vextq_s8(v9, v9, 8uLL);
  v17.rowBytes = *(a5 + 20);
  blue.data = v13;
  return vImageConvert_PlanarFToARGB8888(&alpha, &red, &green, &blue, &v17, a6, a7, 0) == 0;
}

BOOL cva::experimental::convertPlanar32fToBGRA8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const float *a6, const float *a7)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  *&alpha.height = vextq_s8(v9, v9, 8uLL);
  alpha.rowBytes = *(a1 + 20);
  red.data = *(a2 + 24);
  v10 = *(a2 + 8);
  v9.i64[0] = v10;
  v9.i64[1] = HIDWORD(v10);
  *&red.height = vextq_s8(v9, v9, 8uLL);
  red.rowBytes = *(a2 + 20);
  alpha.data = v7;
  v11 = *(a3 + 24);
  v12 = *(a3 + 8);
  v9.i64[0] = v12;
  v9.i64[1] = HIDWORD(v12);
  *&green.height = vextq_s8(v9, v9, 8uLL);
  green.rowBytes = *(a3 + 20);
  v13 = *(a4 + 24);
  v14 = *(a4 + 8);
  v9.i64[0] = v14;
  v9.i64[1] = HIDWORD(v14);
  *&blue.height = vextq_s8(v9, v9, 8uLL);
  blue.rowBytes = *(a4 + 20);
  green.data = v11;
  v17.data = *(a5 + 24);
  v15 = *(a5 + 8);
  v9.i64[0] = v15;
  v9.i64[1] = HIDWORD(v15);
  *&v17.height = vextq_s8(v9, v9, 8uLL);
  v17.rowBytes = *(a5 + 20);
  blue.data = v13;
  return vImageConvert_PlanarFToARGB8888(&alpha, &red, &green, &blue, &v17, a6, a7, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToARGB8u(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v11.height = vextq_s8(v4, v4, 8uLL);
  v11.rowBytes = *(a1 + 20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  v4.i64[0] = v6;
  v4.i64[1] = HIDWORD(v6);
  *&v10.height = vextq_s8(v4, v4, 8uLL);
  v10.rowBytes = *(a2 + 20);
  v9.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v4.i64[0] = v7;
  v4.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v4, v4, 8uLL);
  v9.rowBytes = *(a3 + 20);
  v10.data = v5;
  return vImageConvert_RGB888toARGB8888(&v11, &v10, 0, &v9, 0, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToARGB8u(uint64_t a1, uint64_t a2, Pixel_8 a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&v9.height = vextq_s8(v5, v5, 8uLL);
  v9.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  v9.data = v3;
  return vImageConvert_RGB888toARGB8888(&v9, 0, a3, &v8, 0, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToBGRA8u(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v11.height = vextq_s8(v4, v4, 8uLL);
  v11.rowBytes = *(a1 + 20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  v4.i64[0] = v6;
  v4.i64[1] = HIDWORD(v6);
  *&v10.height = vextq_s8(v4, v4, 8uLL);
  v10.rowBytes = *(a2 + 20);
  v9.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v4.i64[0] = v7;
  v4.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v4, v4, 8uLL);
  v9.rowBytes = *(a3 + 20);
  v10.data = v5;
  return vImageConvert_RGB888toBGRA8888(&v11, &v10, 0, &v9, 0, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToRGBA8u(uint64_t a1, uint64_t a2, Pixel_8 a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&v9.height = vextq_s8(v5, v5, 8uLL);
  v9.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  v9.data = v3;
  return vImageConvert_RGB888toRGBA8888(&v9, 0, a3, &v8, 0, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToRGBA8u(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v11.height = vextq_s8(v4, v4, 8uLL);
  v11.rowBytes = *(a1 + 20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  v4.i64[0] = v6;
  v4.i64[1] = HIDWORD(v6);
  *&v10.height = vextq_s8(v4, v4, 8uLL);
  v10.rowBytes = *(a2 + 20);
  v9.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v4.i64[0] = v7;
  v4.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v4, v4, 8uLL);
  v9.rowBytes = *(a3 + 20);
  v10.data = v5;
  return vImageConvert_RGB888toRGBA8888(&v11, &v10, 0, &v9, 0, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToBGRA8u(uint64_t a1, uint64_t a2, Pixel_8 a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&v9.height = vextq_s8(v5, v5, 8uLL);
  v9.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  v9.data = v3;
  return vImageConvert_RGB888toBGRA8888(&v9, 0, a3, &v8, 0, 0) == 0;
}

BOOL cva::experimental::convertBGR8uToBGRA8u(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v11.height = vextq_s8(v4, v4, 8uLL);
  v11.rowBytes = *(a1 + 20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  v4.i64[0] = v6;
  v4.i64[1] = HIDWORD(v6);
  *&v10.height = vextq_s8(v4, v4, 8uLL);
  v10.rowBytes = *(a2 + 20);
  v9.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v4.i64[0] = v7;
  v4.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v4, v4, 8uLL);
  v9.rowBytes = *(a3 + 20);
  v10.data = v5;
  return vImageConvert_RGB888toRGBA8888(&v11, &v10, 0, &v9, 0, 0) == 0;
}

BOOL cva::experimental::convertBGR8uToBGRA8u(uint64_t a1, uint64_t a2, Pixel_8 a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&v9.height = vextq_s8(v5, v5, 8uLL);
  v9.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  v9.data = v3;
  return vImageConvert_RGB888toRGBA8888(&v9, 0, a3, &v8, 0, 0) == 0;
}

BOOL cva::experimental::convertBGR8uToRGBA8u(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v11.height = vextq_s8(v4, v4, 8uLL);
  v11.rowBytes = *(a1 + 20);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  v4.i64[0] = v6;
  v4.i64[1] = HIDWORD(v6);
  *&v10.height = vextq_s8(v4, v4, 8uLL);
  v10.rowBytes = *(a2 + 20);
  v9.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v4.i64[0] = v7;
  v4.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v4, v4, 8uLL);
  v9.rowBytes = *(a3 + 20);
  v10.data = v5;
  return vImageConvert_RGB888toBGRA8888(&v11, &v10, 0, &v9, 0, 0) == 0;
}

BOOL cva::experimental::convertBGR8uToRGBA8u(uint64_t a1, uint64_t a2, Pixel_8 a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&v9.height = vextq_s8(v5, v5, 8uLL);
  v9.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  v9.data = v3;
  return vImageConvert_RGB888toBGRA8888(&v9, 0, a3, &v8, 0, 0) == 0;
}

BOOL cva::experimental::convertARGB8uToRGB8u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v8.height = vextq_s8(v4, v4, 8uLL);
  v8.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  v8.data = v2;
  return vImageConvert_ARGB8888toRGB888(&v8, &v7, 0) == 0;
}

BOOL cva::experimental::convertBGRA8uToRGB8u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v8.height = vextq_s8(v4, v4, 8uLL);
  v8.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  v8.data = v2;
  return vImageConvert_BGRA8888toRGB888(&v8, &v7, 0) == 0;
}

BOOL cva::experimental::convertRGBA8uToRGB8u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v8.height = vextq_s8(v4, v4, 8uLL);
  v8.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  v8.data = v2;
  return vImageConvert_RGBA8888toRGB888(&v8, &v7, 0) == 0;
}

BOOL cva::experimental::convertRGBA8uToBGR8u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v8.height = vextq_s8(v4, v4, 8uLL);
  v8.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  v8.data = v2;
  return vImageConvert_BGRA8888toRGB888(&v8, &v7, 0) == 0;
}

BOOL cva::experimental::convertBGRA8uToBGR8u(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&v8.height = vextq_s8(v4, v4, 8uLL);
  v8.rowBytes = *(a1 + 20);
  v7.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&v7.height = vextq_s8(v4, v4, 8uLL);
  v7.rowBytes = *(a2 + 20);
  v8.data = v2;
  return vImageConvert_RGBA8888toRGB888(&v8, &v7, 0) == 0;
}

BOOL cva::experimental::convertRGBA8uToPlanar8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&srcARGB.height = vextq_s8(v7, v7, 8uLL);
  srcARGB.rowBytes = *(a1 + 20);
  destA.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&destA.height = vextq_s8(v7, v7, 8uLL);
  destA.rowBytes = *(a2 + 20);
  srcARGB.data = v5;
  v9 = *(a3 + 24);
  v10 = *(a3 + 8);
  v7.i64[0] = v10;
  v7.i64[1] = HIDWORD(v10);
  *&destR.height = vextq_s8(v7, v7, 8uLL);
  destR.rowBytes = *(a3 + 20);
  v11 = *(a4 + 24);
  v12 = *(a4 + 8);
  v7.i64[0] = v12;
  v7.i64[1] = HIDWORD(v12);
  *&destG.height = vextq_s8(v7, v7, 8uLL);
  destG.rowBytes = *(a4 + 20);
  destR.data = v9;
  v15.data = *(a5 + 24);
  v13 = *(a5 + 8);
  v7.i64[0] = v13;
  v7.i64[1] = HIDWORD(v13);
  *&v15.height = vextq_s8(v7, v7, 8uLL);
  v15.rowBytes = *(a5 + 20);
  destG.data = v11;
  return vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &destG, &v15, 0) == 0;
}

BOOL cva::experimental::convertARGB8uToPlanar8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&srcARGB.height = vextq_s8(v7, v7, 8uLL);
  srcARGB.rowBytes = *(a1 + 20);
  destA.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&destA.height = vextq_s8(v7, v7, 8uLL);
  destA.rowBytes = *(a2 + 20);
  srcARGB.data = v5;
  v9 = *(a3 + 24);
  v10 = *(a3 + 8);
  v7.i64[0] = v10;
  v7.i64[1] = HIDWORD(v10);
  *&destR.height = vextq_s8(v7, v7, 8uLL);
  destR.rowBytes = *(a3 + 20);
  v11 = *(a4 + 24);
  v12 = *(a4 + 8);
  v7.i64[0] = v12;
  v7.i64[1] = HIDWORD(v12);
  *&destG.height = vextq_s8(v7, v7, 8uLL);
  destG.rowBytes = *(a4 + 20);
  destR.data = v9;
  v15.data = *(a5 + 24);
  v13 = *(a5 + 8);
  v7.i64[0] = v13;
  v7.i64[1] = HIDWORD(v13);
  *&v15.height = vextq_s8(v7, v7, 8uLL);
  v15.rowBytes = *(a5 + 20);
  destG.data = v11;
  return vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &destG, &v15, 0) == 0;
}

BOOL cva::experimental::convertBGRA8uToPlanar8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7.i64[0] = v6;
  v7.i64[1] = HIDWORD(v6);
  *&srcARGB.height = vextq_s8(v7, v7, 8uLL);
  srcARGB.rowBytes = *(a1 + 20);
  destA.data = *(a2 + 24);
  v8 = *(a2 + 8);
  v7.i64[0] = v8;
  v7.i64[1] = HIDWORD(v8);
  *&destA.height = vextq_s8(v7, v7, 8uLL);
  destA.rowBytes = *(a2 + 20);
  srcARGB.data = v5;
  v9 = *(a3 + 24);
  v10 = *(a3 + 8);
  v7.i64[0] = v10;
  v7.i64[1] = HIDWORD(v10);
  *&destR.height = vextq_s8(v7, v7, 8uLL);
  destR.rowBytes = *(a3 + 20);
  v11 = *(a4 + 24);
  v12 = *(a4 + 8);
  v7.i64[0] = v12;
  v7.i64[1] = HIDWORD(v12);
  *&destG.height = vextq_s8(v7, v7, 8uLL);
  destG.rowBytes = *(a4 + 20);
  destR.data = v9;
  v15.data = *(a5 + 24);
  v13 = *(a5 + 8);
  v7.i64[0] = v13;
  v7.i64[1] = HIDWORD(v13);
  *&v15.height = vextq_s8(v7, v7, 8uLL);
  v15.rowBytes = *(a5 + 20);
  destG.data = v11;
  return vImageConvert_ARGB8888toPlanar8(&srcARGB, &destA, &destR, &destG, &v15, 0) == 0;
}

BOOL cva::experimental::convertBGR8uToPlanar8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  rgbSrc.data = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&rgbSrc.height = vextq_s8(v5, v5, 8uLL);
  rgbSrc.rowBytes = *(a1 + 20);
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  v5.i64[0] = v7;
  v5.i64[1] = HIDWORD(v7);
  *&redDest.height = vextq_s8(v5, v5, 8uLL);
  redDest.rowBytes = *(a2 + 20);
  v8 = *(a3 + 24);
  v9 = *(a3 + 8);
  v5.i64[0] = v9;
  v5.i64[1] = HIDWORD(v9);
  *&greenDest.height = vextq_s8(v5, v5, 8uLL);
  greenDest.rowBytes = *(a3 + 20);
  redDest.data = v6;
  v12.data = *(a4 + 24);
  v10 = *(a4 + 8);
  v5.i64[0] = v10;
  v5.i64[1] = HIDWORD(v10);
  *&v12.height = vextq_s8(v5, v5, 8uLL);
  v12.rowBytes = *(a4 + 20);
  greenDest.data = v8;
  return vImageConvert_RGB888toPlanar8(&rgbSrc, &redDest, &greenDest, &v12, 0) == 0;
}

BOOL cva::experimental::convertRGB8uToPlanar8u(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  rgbSrc.data = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&rgbSrc.height = vextq_s8(v5, v5, 8uLL);
  rgbSrc.rowBytes = *(a1 + 20);
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  v5.i64[0] = v7;
  v5.i64[1] = HIDWORD(v7);
  *&redDest.height = vextq_s8(v5, v5, 8uLL);
  redDest.rowBytes = *(a2 + 20);
  v8 = *(a3 + 24);
  v9 = *(a3 + 8);
  v5.i64[0] = v9;
  v5.i64[1] = HIDWORD(v9);
  *&greenDest.height = vextq_s8(v5, v5, 8uLL);
  greenDest.rowBytes = *(a3 + 20);
  redDest.data = v6;
  v12.data = *(a4 + 24);
  v10 = *(a4 + 8);
  v5.i64[0] = v10;
  v5.i64[1] = HIDWORD(v10);
  *&v12.height = vextq_s8(v5, v5, 8uLL);
  v12.rowBytes = *(a4 + 20);
  greenDest.data = v8;
  return vImageConvert_RGB888toPlanar8(&rgbSrc, &redDest, &greenDest, &v12, 0) == 0;
}

uint64_t cva::experimental::convertRGB8uToGray8u(void *a1, uint64_t a2, unsigned __int8 ***a3)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v22 = a1[2];
    v5 = (HIDWORD(v22) * HIDWORD(v4));
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = v3 + *a1;
      v21 = v9 + v5;
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      if (v10)
      {
        v12 = (v10 + *a2);
      }

      else
      {
        v12 = 0;
      }

      v20 = *(a2 + 8);
      v13 = v11;
      v14 = *(a2 + 16);
      v15 = HIDWORD(v11);
      do
      {
        v26[0] = &v23;
        v23 = v9;
        v24[0] = v26;
        v24[1] = a3;
        v25 = 0;
        sub_245057254(&v25, v24);
        *v12 = HIBYTE(v25);
        v16 = v8 + 1;
        if (v8 + 1 == v4)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v16 == v4)
        {
          v9 = v9 + v22 - (v16 * v22) + HIDWORD(v22);
        }

        else
        {
          v9 += v22;
        }

        v17 = v7 + 1;
        if (v7 + 1 == v20)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v17 == v20)
        {
          v12 = &v12[v13 - (v17 * v14) + v15];
        }

        else
        {
          v12 += v13;
        }
      }

      while (v9 != v21);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_245057254(uint64_t result, unsigned __int8 ****a2)
{
  v2 = result;
  v3 = a2[1];
  if (v3 == result)
  {
    v5 = 0;
    result = sub_245057254(&v5);
    v4 = v5;
  }

  else
  {
    v4 = *v3 * ****a2 + v3[1] * (***a2)[1] + v3[2] * (***a2)[2];
  }

  *v2 = v4;
  return result;
}

uint64_t cva::experimental::convertBGR8uToGray8u(void *a1, uint64_t a2, unsigned __int8 ***a3)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v22 = a1[2];
    v5 = (HIDWORD(v22) * HIDWORD(v4));
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = v3 + *a1;
      v21 = v9 + v5;
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      if (v10)
      {
        v12 = (v10 + *a2);
      }

      else
      {
        v12 = 0;
      }

      v20 = *(a2 + 8);
      v13 = v11;
      v14 = *(a2 + 16);
      v15 = HIDWORD(v11);
      do
      {
        v26[0] = &v23;
        v23 = v9;
        v24[0] = v26;
        v24[1] = a3;
        v25 = 0;
        sub_245057254(&v25, v24);
        *v12 = HIBYTE(v25);
        v16 = v8 + 1;
        if (v8 + 1 == v4)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v16 == v4)
        {
          v9 = v9 + v22 - (v16 * v22) + HIDWORD(v22);
        }

        else
        {
          v9 += v22;
        }

        v17 = v7 + 1;
        if (v7 + 1 == v20)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v17 == v20)
        {
          v12 = &v12[v13 - (v17 * v14) + v15];
        }

        else
        {
          v12 += v13;
        }
      }

      while (v9 != v21);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t cva::experimental::convertGray8uToRGB8u(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = (HIDWORD(v4) * HIDWORD(v3));
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = (v2 + *a1);
      v9 = &v8[v5];
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      if (v11)
      {
        v12 = (v11 + *a2);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 8);
      do
      {
        v14 = *v8;
        *v12 = *v8;
        v12[1] = v14;
        v12[2] = v14;
        v8 += v4;
        v15 = v7 + 1;
        if (v7 + 1 == v3)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v15 == v3)
        {
          v8 = &v8[HIDWORD(v4) - (v15 * v4)];
        }

        v12 += v10;
        v16 = v6 + 1;
        if (v6 + 1 == v13)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }

        if (v16 == v13)
        {
          v12 = &v12[HIDWORD(v10) - (v16 * v10)];
        }
      }

      while (v8 != v9);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToBGR8u(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = a1[2];
    v5 = (HIDWORD(v4) * HIDWORD(v3));
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = (v2 + *a1);
      v9 = &v8[v5];
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      if (v11)
      {
        v12 = (v11 + *a2);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a2 + 8);
      do
      {
        v14 = *v8;
        *v12 = *v8;
        v12[1] = v14;
        v12[2] = v14;
        v8 += v4;
        v15 = v7 + 1;
        if (v7 + 1 == v3)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v15 == v3)
        {
          v8 = &v8[HIDWORD(v4) - (v15 * v4)];
        }

        v12 += v10;
        v16 = v6 + 1;
        if (v6 + 1 == v13)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }

        if (v16 == v13)
        {
          v12 = &v12[HIDWORD(v10) - (v16 * v10)];
        }
      }

      while (v8 != v9);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToRGBA8u(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = (v3 + *a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = a1[2];
    v8 = (HIDWORD(v7) * HIDWORD(v6));
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = a2[1];
      v13 = a2[2];
      v14 = (v5 + *a1);
      v15 = &v14[v8];
      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      if (v16)
      {
        v18 = (v16 + *a3);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a3 + 8);
      do
      {
        v20 = &v4[v13];
        v21 = v9 + 1;
        v22 = &v20[HIDWORD(v13) - ((v9 + 1) * v13)];
        if (v9 + 1 == v12)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        v23 = *v4;
        if (v21 == v12)
        {
          v20 = v22;
        }

        *v18 = (*v14 << 16) | (*v14 << 8) | (v23 << 24) | *v14;
        v14 += v7;
        v24 = v11 + 1;
        if (v11 + 1 == v6)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }

        if (v24 == v6)
        {
          v14 = &v14[HIDWORD(v7) - (v24 * v7)];
        }

        v25 = (v18 + v17);
        v26 = v10 + 1;
        if (v10 + 1 == v19)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        if (v26 == v19)
        {
          v18 = (v25 + HIDWORD(v17) - (v26 * v17));
        }

        else
        {
          v18 = v25;
        }

        v4 = v20;
      }

      while (v14 != v15);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToARGB8u(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = (v3 + *a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = a1[2];
    v8 = (HIDWORD(v7) * HIDWORD(v6));
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = a2[1];
      v13 = a2[2];
      v14 = (v5 + *a1);
      v15 = &v14[v8];
      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      if (v16)
      {
        v18 = (v16 + *a3);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a3 + 8);
      do
      {
        v20 = &v4[v13];
        v21 = v9 + 1;
        v22 = &v20[HIDWORD(v13) - ((v9 + 1) * v13)];
        if (v9 + 1 == v12)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        v23 = *v4;
        if (v21 == v12)
        {
          v20 = v22;
        }

        *v18 = (*v14 << 16) | (*v14 << 24) | (*v14 << 8) | v23;
        v14 += v7;
        v24 = v11 + 1;
        if (v11 + 1 == v6)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }

        if (v24 == v6)
        {
          v14 = &v14[HIDWORD(v7) - (v24 * v7)];
        }

        v25 = (v18 + v17);
        v26 = v10 + 1;
        if (v10 + 1 == v19)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        if (v26 == v19)
        {
          v18 = (v25 + HIDWORD(v17) - (v26 * v17));
        }

        else
        {
          v18 = v25;
        }

        v4 = v20;
      }

      while (v14 != v15);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToBGRA8u(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = (v3 + *a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = a1[2];
    v8 = (HIDWORD(v7) * HIDWORD(v6));
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = a2[1];
      v13 = a2[2];
      v14 = (v5 + *a1);
      v15 = &v14[v8];
      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      if (v16)
      {
        v18 = (v16 + *a3);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a3 + 8);
      do
      {
        v20 = &v4[v13];
        v21 = v9 + 1;
        v22 = &v20[HIDWORD(v13) - ((v9 + 1) * v13)];
        if (v9 + 1 == v12)
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }

        v23 = *v4;
        if (v21 == v12)
        {
          v20 = v22;
        }

        *v18 = (*v14 << 8) | (*v14 << 16) | (v23 << 24) | *v14;
        v14 += v7;
        v24 = v11 + 1;
        if (v11 + 1 == v6)
        {
          v11 = 0;
        }

        else
        {
          ++v11;
        }

        if (v24 == v6)
        {
          v14 = &v14[HIDWORD(v7) - (v24 * v7)];
        }

        v25 = (v18 + v17);
        v26 = v10 + 1;
        if (v10 + 1 == v19)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        if (v26 == v19)
        {
          v18 = (v25 + HIDWORD(v17) - (v26 * v17));
        }

        else
        {
          v18 = v25;
        }

        v4 = v20;
      }

      while (v14 != v15);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToARGB8u(void *a1, uint64_t a2, int a3)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = (HIDWORD(v5) * HIDWORD(v4));
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = (v3 + *a1);
      v10 = &v9[v6];
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
      if (v12)
      {
        v13 = (v12 + *a2);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a2 + 8);
      do
      {
        *v13 = (16843008 * *v9) | a3;
        v9 += v5;
        v15 = v8 + 1;
        if (v8 + 1 == v4)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v15 == v4)
        {
          v9 = &v9[HIDWORD(v5) - (v15 * v5)];
        }

        v13 = (v13 + v11);
        v16 = v7 + 1;
        if (v7 + 1 == v14)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v16 == v14)
        {
          v13 = (v13 + HIDWORD(v11) - (v16 * v11));
        }
      }

      while (v9 != v10);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToRGBA8u(void *a1, uint64_t a2, int a3)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = (HIDWORD(v5) * HIDWORD(v4));
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = (v3 + *a1);
      v10 = &v9[v6];
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
      if (v12)
      {
        v13 = (v12 + *a2);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a2 + 8);
      do
      {
        *v13 = (a3 << 24) | (*v9 << 16) | (*v9 << 8) | *v9;
        v9 += v5;
        v15 = v8 + 1;
        if (v8 + 1 == v4)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v15 == v4)
        {
          v9 = &v9[HIDWORD(v5) - (v15 * v5)];
        }

        v13 = (v13 + v11);
        v16 = v7 + 1;
        if (v7 + 1 == v14)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v16 == v14)
        {
          v13 = (v13 + HIDWORD(v11) - (v16 * v11));
        }
      }

      while (v9 != v10);
    }
  }

  return 1;
}

uint64_t cva::experimental::convertGray8uToBGRA8u(void *a1, uint64_t a2, int a3)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = (HIDWORD(v5) * HIDWORD(v4));
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = (v3 + *a1);
      v10 = &v9[v6];
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
      if (v12)
      {
        v13 = (v12 + *a2);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a2 + 8);
      do
      {
        *v13 = (a3 << 24) | (*v9 << 16) | (*v9 << 8) | *v9;
        v9 += v5;
        v15 = v8 + 1;
        if (v8 + 1 == v4)
        {
          v8 = 0;
        }

        else
        {
          ++v8;
        }

        if (v15 == v4)
        {
          v9 = &v9[HIDWORD(v5) - (v15 * v5)];
        }

        v13 = (v13 + v11);
        v16 = v7 + 1;
        if (v7 + 1 == v14)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v16 == v14)
        {
          v13 = (v13 + HIDWORD(v11) - (v16 * v11));
        }
      }

      while (v9 != v10);
    }
  }

  return 1;
}

BOOL cva::experimental::convertARGB8uToGray8u(uint64_t a1, uint64_t a2, void *a3)
{
  src.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&src.height = vextq_s8(v4, v4, 8uLL);
  src.rowBytes = *(a1 + 20);
  dest.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&dest.height = vextq_s8(v4, v4, 8uLL);
  dest.rowBytes = *(a2 + 20);
  *matrix = *a3;
  return vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, matrix, 256, 0, 0, 0) == 0;
}

BOOL cva::experimental::convertRGBA8uToGray8u(uint64_t a1, uint64_t a2, void *a3)
{
  src.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&src.height = vextq_s8(v4, v4, 8uLL);
  src.rowBytes = *(a1 + 20);
  dest.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&dest.height = vextq_s8(v4, v4, 8uLL);
  dest.rowBytes = *(a2 + 20);
  *matrix = *a3;
  return vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, matrix, 256, 0, 0, 0) == 0;
}

BOOL cva::experimental::convertBGRA8uToGray8u(uint64_t a1, uint64_t a2, void *a3)
{
  src.data = *(a1 + 24);
  v3 = *(a1 + 8);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  *&src.height = vextq_s8(v4, v4, 8uLL);
  src.rowBytes = *(a1 + 20);
  dest.data = *(a2 + 24);
  v5 = *(a2 + 8);
  v4.i64[0] = v5;
  v4.i64[1] = HIDWORD(v5);
  *&dest.height = vextq_s8(v4, v4, 8uLL);
  dest.rowBytes = *(a2 + 20);
  *matrix = *a3;
  return vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, matrix, 256, 0, 0, 0) == 0;
}

BOOL cva::experimental::overwriteChannels_ARGB8u(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t a4)
{
  newSrc.data = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&newSrc.height = vextq_s8(v5, v5, 8uLL);
  newSrc.rowBytes = *(a1 + 20);
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  v5.i64[0] = v7;
  v5.i64[1] = HIDWORD(v7);
  *&origSrc.height = vextq_s8(v5, v5, 8uLL);
  origSrc.rowBytes = *(a2 + 20);
  v10.data = *(a3 + 24);
  v8 = *(a3 + 8);
  v5.i64[0] = v8;
  v5.i64[1] = HIDWORD(v8);
  *&v10.height = vextq_s8(v5, v5, 8uLL);
  v10.rowBytes = *(a3 + 20);
  origSrc.data = v6;
  return vImageOverwriteChannels_ARGB8888(&newSrc, &origSrc, &v10, a4, 0) == 0;
}

BOOL cva::experimental::overwriteChannelsWithScalar_ARGB8u(Pixel_8 a1, uint64_t a2, uint64_t a3, uint8_t a4)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v9.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v9.height = vextq_s8(v6, v6, 8uLL);
  v9.rowBytes = *(a3 + 20);
  src.data = v4;
  return vImageOverwriteChannelsWithScalar_ARGB8888(a1, &src, &v9, a4, 0) == 0;
}

uint64_t cva::experimental::createImageWithCVPixelBuffer(CVPixelBufferRef *a1, uint64_t a2)
{
  if (!CVPixelBufferLockBaseAddress(*a1, 1uLL))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*a1);
    Width = CVPixelBufferGetWidth(*a1);
    Height = CVPixelBufferGetHeight(*a1);
    v8 = Height;
    if (*(a2 + 8) >= Width && *(a2 + 12) >= Height)
    {
      *a2 = 0;
      *(a2 + 8) = Width | (Height << 32);
    }

    else
    {
      v10 = *(a2 + 24);
      if (v10)
      {
        free(v10);
        *(a2 + 24) = 0;
      }

      *a2 = 0;
      *(a2 + 8) = Width | (v8 << 32);
      *(a2 + 16) = ((((3 * Width + 15) & 0xFFFFFFF0) >> 4) << 36) | 3;
      size.data = (((3 * Width + 15) & 0xFFFFFFF0) * v8);
      if (size.data)
      {
        v11 = malloc_type_malloc(size.data, 0x100004033FC2DF1uLL);
      }

      else
      {
        v11 = 0;
      }

      *(a2 + 24) = v11;
    }

    v4 = 0;
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType <= 846624120)
      {
        if (PixelFormatType == 24)
        {
          v17 = *a1;
          cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,3u,1u,false>>();
        }

        if (PixelFormatType == 32)
        {
          v13 = *a1;
          cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
        }

        goto LABEL_41;
      }

      if (PixelFormatType == 846624121)
      {
        goto LABEL_30;
      }

      v12 = 875704422;
    }

    else
    {
      if (PixelFormatType <= 1380401728)
      {
        if (PixelFormatType != 875704438)
        {
          if (PixelFormatType == 1111970369)
          {
            v14 = *a1;
            cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
          }

          goto LABEL_41;
        }

        goto LABEL_30;
      }

      if (PixelFormatType == 1380401729)
      {
        v18 = *a1;
        cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
      }

      if (PixelFormatType == 2037741158)
      {
LABEL_30:
        *(&v24 + 1) = 0;
        v25 = 0;
        v26 = 0;
        if (Width | v8)
        {
          v15 = (4 * Width + 15) & 0xFFFFFFF0;
          *&v24 = 0;
          *(&v24 + 1) = Width | (v8 << 32);
          v25 = ((((4 * Width + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
          size.data = (v15 * v8);
          if (size.data)
          {
            v16 = malloc_type_malloc(size.data, 0x100004052888210uLL);
          }

          else
          {
            v16 = 0;
          }

          v26 = v16;
          v19.i64[0] = DWORD2(v24);
          v19.i64[1] = HIDWORD(v24);
          v23 = v19;
        }

        else
        {
          v15 = 0;
          v16 = 0;
          v23 = 0u;
          v24 = 0u;
        }

        cva::pixelBufferConvertYCbCrToARGB(*a1, &v24, 1);
        *&size.height = vextq_s8(v23, v23, 8uLL);
        size.rowBytes = v15;
        v27.data = *(a2 + 24);
        v20 = *(a2 + 8);
        v21.i64[0] = v20;
        v21.i64[1] = HIDWORD(v20);
        *&v27.height = vextq_s8(v21, v21, 8uLL);
        v27.rowBytes = *(a2 + 20);
        size.data = v16;
        vImageConvert_ARGB8888toRGB888(&size, &v27, 0);
        if (v16)
        {
          free(v16);
        }

        v4 = 1;
        goto LABEL_41;
      }

      v12 = 2037741171;
    }

    if (PixelFormatType != v12)
    {
LABEL_41:
      CVPixelBufferUnlockBaseAddress(*a1, 1uLL);
      return v4;
    }

    goto LABEL_30;
  }

  return 0;
}

{
  if (!CVPixelBufferLockBaseAddress(*a1, 1uLL))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*a1);
    Width = CVPixelBufferGetWidth(*a1);
    Height = CVPixelBufferGetHeight(*a1);
    if (*(a2 + 8) >= Width && *(a2 + 12) >= Height)
    {
      *a2 = 0;
      *(a2 + 8) = Width | (Height << 32);
    }

    else
    {
      if (*(a2 + 24))
      {
        v9 = Height;
        free(*(a2 + 24));
        Height = v9;
        *(a2 + 24) = 0;
      }

      *a2 = 0;
      *(a2 + 8) = Width | (Height << 32);
      *(a2 + 16) = ((((4 * Width + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
      size = ((4 * Width + 15) & 0xFFFFFFF0) * Height;
      if (size)
      {
        v10 = malloc_type_malloc(size, 0x100004052888210uLL);
      }

      else
      {
        v10 = 0;
      }

      *(a2 + 24) = v10;
    }

    v4 = 0;
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType == 24)
      {
        v11 = *a1;
        cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,3u,1u,false>>();
      }

      if (PixelFormatType == 32)
      {
        v12 = *a1;
        cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>();
      }

      if (PixelFormatType != 846624121)
      {
        goto LABEL_28;
      }
    }

    else if (PixelFormatType > 2037741157)
    {
      if (PixelFormatType != 2037741158 && PixelFormatType != 2037741171)
      {
        goto LABEL_28;
      }
    }

    else if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_28;
    }

    v4 = 1;
    cva::pixelBufferConvertYCbCrToARGB(*a1, a2, 1);
LABEL_28:
    CVPixelBufferUnlockBaseAddress(*a1, 1uLL);
    return v4;
  }

  return 0;
}

{
  srcChannels[1] = *MEMORY[0x277D85DE8];
  if (!CVPixelBufferLockBaseAddress(*a1, 1uLL))
  {
    Width = CVPixelBufferGetWidth(*a1);
    Height = CVPixelBufferGetHeight(*a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(*a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*a1);
    BaseAddress = CVPixelBufferGetBaseAddress(*a1);
    if (*(a2 + 8) >= Width && *(a2 + 12) >= Height)
    {
      *a2 = 0;
      *(a2 + 8) = Width | (Height << 32);
    }

    else
    {
      v11 = *(a2 + 24);
      if (v11)
      {
        free(v11);
        *(a2 + 24) = 0;
      }

      *a2 = 0;
      *(a2 + 8) = Width | (Height << 32);
      *(a2 + 16) = ((((Width + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
      size = Height * ((Width + 15) & 0xFFFFFFF0);
      if (size)
      {
        v12 = malloc_type_malloc(size, 0x100004077774924uLL);
      }

      else
      {
        v12 = 0;
      }

      *(a2 + 24) = v12;
    }

    v4 = 0;
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType <= 846624120)
      {
        if (PixelFormatType == 24)
        {
          size = *(a2 + 24);
          v38 = *(a2 + 8);
          v39.i64[0] = v38;
          v39.i64[1] = HIDWORD(v38);
          v45 = vextq_s8(v39, v39, 8uLL);
          v46 = *(a2 + 20);
          destPlanarBuffers = &size;
          srcChannels[0] = BaseAddress + 1;
          v19 = Width;
          v20 = Height;
          v21 = BytesPerRow;
          v4 = 1;
          v22 = 3;
          goto LABEL_52;
        }

        if (PixelFormatType == 32)
        {
          size = *(a2 + 24);
          v14 = *(a2 + 8);
          v15.i64[0] = v14;
          v15.i64[1] = HIDWORD(v14);
          v45 = vextq_s8(v15, v15, 8uLL);
          v46 = *(a2 + 20);
          v16 = BaseAddress + 2;
LABEL_30:
          srcChannels[0] = v16;
          destPlanarBuffers = &size;
          v19 = Width;
          v20 = Height;
          v21 = BytesPerRow;
          v4 = 1;
          v22 = 4;
LABEL_52:
          vImageConvert_ChunkyToPlanar8(srcChannels, &destPlanarBuffers, 1u, v22, v19, v20, v21, 0);
        }

LABEL_53:
        CVPixelBufferUnlockBaseAddress(*a1, 1uLL);
        goto LABEL_54;
      }

      if (PixelFormatType == 846624121)
      {
        size = *(a2 + 24);
        v40 = *(a2 + 8);
        v41.i64[0] = v40;
        v41.i64[1] = HIDWORD(v40);
        v45 = vextq_s8(v41, v41, 8uLL);
        v46 = *(a2 + 20);
        srcChannels[0] = BaseAddress + 1;
LABEL_51:
        destPlanarBuffers = &size;
        v19 = Width;
        v20 = Height;
        v21 = BytesPerRow;
        v4 = 1;
        v22 = 2;
        goto LABEL_52;
      }

      if (PixelFormatType != 875704422)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (PixelFormatType > 1278226487)
      {
        if (PixelFormatType != 2037741171 && PixelFormatType != 2037741158)
        {
          if (PixelFormatType == 1278226488)
          {
            v13 = *a1;
            cva::imageViewFromPixelBuffer<unsigned char>();
          }

          goto LABEL_53;
        }

        size = *(a2 + 24);
        v36 = *(a2 + 8);
        v37.i64[0] = v36;
        v37.i64[1] = HIDWORD(v36);
        v45 = vextq_s8(v37, v37, 8uLL);
        v46 = *(a2 + 20);
        srcChannels[0] = BaseAddress;
        goto LABEL_51;
      }

      if (PixelFormatType != 875704438)
      {
        if (PixelFormatType == 1111970369)
        {
          size = *(a2 + 24);
          v17 = *(a2 + 8);
          v18.i64[0] = v17;
          v18.i64[1] = HIDWORD(v17);
          v45 = vextq_s8(v18, v18, 8uLL);
          v46 = *(a2 + 20);
          v16 = BaseAddress + 1;
          goto LABEL_30;
        }

        goto LABEL_53;
      }
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a1, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*a1, 0);
    if (BaseAddressOfPlane)
    {
      v25 = BytesPerRowOfPlane * Height;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = *(a2 + 8);
        v29 = *(a2 + 16);
        v30 = *(a2 + 24);
        v31 = &BaseAddressOfPlane[v25];
        if (v30)
        {
          v32 = (v30 + *a2);
        }

        else
        {
          v32 = 0;
        }

        do
        {
          v33 = *BaseAddressOfPlane++;
          *v32 = v33;
          v34 = (v27 + 1);
          if (v34 == Width)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          if (v34 == Width)
          {
            BaseAddressOfPlane = &BaseAddressOfPlane[BytesPerRowOfPlane - v34];
          }

          v32 += v29;
          v35 = v26 + 1;
          if (v26 + 1 == v28)
          {
            v26 = 0;
          }

          else
          {
            ++v26;
          }

          if (v35 == v28)
          {
            v32 = &v32[HIDWORD(v29) - (v35 * v29)];
          }
        }

        while (BaseAddressOfPlane != v31);
      }
    }

    v4 = 1;
    goto LABEL_53;
  }

  v4 = 0;
LABEL_54:
  v42 = *MEMORY[0x277D85DE8];
  return v4;
}

void cva::utils::string::increase_text_identifier(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_24505989C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    __p[2] = *(a1 + 16);
  }

  MEMORY[0x245D61420](&v2);
  v3 = std::locale::use_facet(&v2, MEMORY[0x277D82680]);
  v1 = std::locale::use_facet(&v2, MEMORY[0x277D826A0]);
  v5 = 0u;
  v6 = 0u;
  v4 = v1;
  v7 = 0;
  sub_245059938();
}

void *sub_24505989C(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

_BYTE *sub_24505A134(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

char *sub_24505A204(char **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_24504FAF4();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = *(a3 + 16);
    if (v12 == 1)
    {
      v16 = result;
    }

    else
    {
      v16 = &result[24 * (v12 & 0xFFFFFFFFFFFFFFFELL)];
      v17 = result + 24;
      v18 = v12 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 3) = v13;
        *(v17 - 2) = v14;
        *v17 = v13;
        *(v17 + 1) = v14;
        *(v17 - 8) = v15;
        v17[16] = v15;
        v17 += 48;
        v18 -= 2;
      }

      while (v18);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_23;
      }

      v12 &= 1u;
    }

    do
    {
      *v16 = v13;
      *(v16 + 1) = v14;
      v16[16] = v15;
      v16 += 24;
      --v12;
    }

    while (v12);
  }

LABEL_23:
  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v19 = &v10[24 * (a2 - v11)];
    v20 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v21 = *a3;
      *(v10 + 2) = a3[2];
      *v10 = v21;
      v10 += 24;
      v20 -= 24;
    }

    while (v20);
    a1[1] = v19;
  }

  return result;
}

uint64_t sub_24505A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return v6;
  }

  *&v56 = a3;
  *(&v56 + 1) = a3;
  v57 = 0;
  *v53 = 0;
  memset(&v53[8], 0, 48);
  *__p = 0u;
  memset(v55, 0, 21);
  v13 = sub_24505BF94(&v58, v53);
  v59 = v13;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v53[32])
  {
    operator delete(*&v53[32]);
  }

  v14 = *(v13 - 64);
  *(v13 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 56) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 56) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_24505C16C((v13 - 64), v15 - v16, &v56);
  }

  v17 = *(v13 - 40);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 32) - v17) >> 4;
  v52 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 32) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_24505C338(v13 - 40, v18 - v19);
  }

  *(v13 - 16) = v6;
  v20 = 1;
  *(v13 - 8) = a5;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v20 & 0xFFF) == 0 && (v20 >> 12) >= a3 - a2)
    {
      sub_24505A11C();
LABEL_62:
      sub_24505A11C();
LABEL_63:
      sub_24504FAF4();
    }

    v23 = (v13 - 16);
    v22 = *(v13 - 16);
    v24 = (v13 - 96);
    if (v22)
    {
      (*(*v22 + 16))(v22, v13 - 96);
    }

    v25 = *v24;
    if (*v24 <= -994)
    {
      break;
    }

    if (v25 == -993)
    {
      goto LABEL_29;
    }

    if (v25 != -992)
    {
      if (v25 != -991)
      {
        goto LABEL_62;
      }

      goto LABEL_16;
    }

    v30 = *(v13 - 80);
    *v53 = *v24;
    *&v53[16] = v30;
    memset(&v53[32], 0, 24);
    v32 = *(v13 - 64);
    v31 = *(v13 - 56);
    if (v31 != v32)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      goto LABEL_63;
    }

    __p[0] = 0;
    __p[1] = 0;
    v55[0] = 0;
    v34 = *(v13 - 40);
    v33 = *(v13 - 32);
    if (v33 != v34)
    {
      if (((v33 - v34) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v35 = *v23;
    *(&v55[1] + 5) = *(v13 - 11);
    v55[1] = v35;
    (*(**v23 + 24))(*v23, 1, v24);
    (*(*v55[1] + 24))(v55[1], 0, v53);
    v36 = v59;
    if (v59 >= v60)
    {
      v59 = sub_24505BF94(&v58, v53);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v37 = *&v53[16];
      *v59 = *v53;
      v36[1] = v37;
      *(v36 + 6) = 0;
      *(v36 + 7) = 0;
      *(v36 + 4) = 0;
      *(v36 + 5) = 0;
      v36[2] = *&v53[32];
      *(v36 + 6) = *&v53[48];
      *&v53[32] = 0;
      *&v53[40] = 0;
      *(v36 + 8) = 0;
      *(v36 + 9) = 0;
      *(v36 + 56) = *__p;
      *(v36 + 9) = v55[0];
      *&v53[48] = 0;
      __p[0] = 0;
      __p[1] = 0;
      v55[0] = 0;
      v38 = v55[1];
      *(v36 + 85) = *(&v55[1] + 5);
      *(v36 + 10) = v38;
      v59 = v36 + 6;
    }

    if (*&v53[32])
    {
      *&v53[40] = *&v53[32];
      operator delete(*&v53[32]);
    }

LABEL_16:
    v21 = v58;
    v13 = v59;
    ++v20;
    if (v58 == v59)
    {
      v6 = 0;
      if (!v58)
      {
        return v6;
      }

      goto LABEL_47;
    }
  }

  if ((v25 + 995) < 2)
  {
    goto LABEL_16;
  }

  if (v25 != -1000)
  {
    goto LABEL_62;
  }

  v26 = *(v13 - 80);
  if ((a5 & 0x20) != 0 && v26 == a2)
  {
LABEL_29:
    v27 = v59;
    v28 = *(v59 - 5);
    if (v28)
    {
      *(v59 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v59 = v27 - 6;
    goto LABEL_16;
  }

  v43 = *v52;
  *v43 = a2;
  *(v43 + 8) = v26;
  *(v43 + 16) = 1;
  v44 = *(v13 - 64);
  v45 = *(v13 - 56) - v44;
  if (v45)
  {
    v46 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 3);
    v47 = (v44 + 16);
    v48 = 1;
    do
    {
      v49 = v43 + 24 * v48;
      *v49 = *(v47 - 1);
      v50 = *v47;
      v47 += 24;
      *(v49 + 16) = v50;
    }

    while (v46 > v48++);
  }

  v6 = 1;
  v21 = v58;
  if (v58)
  {
LABEL_47:
    for (i = v59; i != v21; i -= 6)
    {
      v40 = *(i - 5);
      if (v40)
      {
        *(i - 4) = v40;
        operator delete(v40);
      }

      v41 = *(i - 8);
      if (v41)
      {
        *(i - 7) = v41;
        operator delete(v41);
      }
    }

    operator delete(v21);
  }

  return v6;
}

uint64_t sub_24505A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_107;
  }

  v89 = a3 - a2;
  memset(&v93[4], 0, 24);
  sub_24505C48C(&v99);
  v11 = *(*(&v99 + 1) + 8 * ((v101.i64[1] + v101.i64[0]) / 0x2AuLL)) - 4032 * ((v101.i64[1] + v101.i64[0]) / 0x2AuLL) + 96 * (v101.i64[1] + v101.i64[0]);
  *v11 = 0;
  *(v11 + 4) = *v93;
  *(v11 + 16) = *&v93[12];
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 77) = 0u;
  v12 = v101.i64[1];
  v13 = ++v101.i64[1];
  v14 = *(&v99 + 1);
  v15 = v101.i64[0] + v12;
  v16 = (v101.i64[0] + v12) / 0x2AuLL;
  v17 = *(*(&v99 + 1) + 8 * v16);
  v18 = v17 - 4032 * v16 + 96 * v15;
  *v18 = 0;
  *(v18 + 8) = a2;
  *(v18 + 16) = a2;
  v19 = v17 - 4032 * (v15 / 0x2A) + 96 * v15;
  v22 = *(v19 + 56);
  v20 = v19 + 56;
  v21 = v22;
  *(v18 + 24) = a3;
  v23 = *(a1 + 32);
  v24 = (*(v18 + 64) - v22) >> 4;
  if (v23 <= v24)
  {
    if (v23 < v24)
    {
      *(v18 + 64) = v21 + 16 * v23;
    }
  }

  else
  {
    sub_24505C338(v20, v23 - v24);
    v17 = *(v14 + 8 * v16);
  }

  v92 = 0;
  v25 = 0;
  v91 = 0;
  v26 = v17 - 4032 * v16 + 96 * v15;
  *(v26 + 80) = v6;
  *(v26 + 88) = a5;
  *(v26 + 92) = a6;
  do
  {
    if ((++v25 & 0xFFF) == 0 && (v25 >> 12) >= v89)
    {
      sub_24505A11C();
LABEL_122:
      sub_24505A11C();
LABEL_123:
      sub_24504FAF4();
    }

    v28 = *(*(&v99 + 1) + 8 * ((v13 + v101.i64[0] - 1) / 0x2AuLL)) - 4032 * ((v13 + v101.i64[0] - 1) / 0x2AuLL) + 96 * (v13 + v101.i64[0] - 1);
    v30 = (v28 + 80);
    v29 = *(v28 + 80);
    if (v29)
    {
      (*(*v29 + 16))(v29, v28);
    }

    v31 = *v28;
    if (*v28 <= -995)
    {
      if (v31 != -1000)
      {
        if (v31 == -999)
        {
          goto LABEL_9;
        }

        if (v31 != -995)
        {
          goto LABEL_122;
        }

        v32 = v101.i64[0];
        v33 = *(&v99 + 1);
        v34 = v100;
        if (!v101.i64[0])
        {
          v35 = 42 * ((v100 - *(&v99 + 1)) >> 3) - 1;
          if (v100 == *(&v99 + 1))
          {
            v35 = 0;
          }

          if ((v35 - v101.i64[1]) < 0x2A)
          {
            if (v100 - *(&v99 + 1) < *(&v100 + 1) - v99)
            {
              if (*(&v99 + 1) != v99)
              {
                operator new();
              }

              operator new();
            }

            if (*(&v100 + 1) == v99)
            {
              v68 = 1;
            }

            else
            {
              v68 = (*(&v100 + 1) - v99) >> 2;
            }

            if (!(v68 >> 61))
            {
              operator new();
            }

            sub_24504FAF4();
          }

          v101.i64[0] = 42;
          *v93 = *(v100 - 8);
          *&v100 = v100 - 8;
          sub_24505C7C8(&v99, v93);
          v32 = v101.i64[0];
          v33 = *(&v99 + 1);
          v34 = v100;
        }

        v69 = (v33 + 8 * (v32 / 0x2A));
        v70 = *v69 - 4032 * (v32 / 0x2A) + 96 * v32;
        if (v34 == v33)
        {
          v71 = 0;
        }

        else
        {
          v71 = v70;
        }

        if (v71 == *v69)
        {
          v71 = *(v69 - 1) + 4032;
        }

        v72 = *(v28 + 16);
        *(v71 - 96) = *v28;
        *(v71 - 80) = v72;
        *(v71 - 56) = 0;
        *(v71 - 48) = 0;
        *(v71 - 64) = 0;
        *(v71 - 64) = *(v28 + 32);
        *(v71 - 48) = *(v28 + 48);
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        *(v71 - 40) = 0;
        *(v71 - 32) = 0;
        *(v71 - 24) = 0;
        *(v71 - 40) = *(v28 + 56);
        *(v71 - 24) = *(v28 + 72);
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        v73 = *v30;
        *(v71 - 11) = *(v28 + 85);
        *(v71 - 16) = v73;
        v74 = vdupq_laneq_s64(v101, 1);
        v101 = vaddq_s64(v101, xmmword_24508A8F0);
        v37 = vaddq_s64(v74, v101).u64[0];
        v38 = *(*(&v99 + 1) + 8 * (v37 / 0x2A)) - 4032 * (v37 / 0x2A);
        goto LABEL_97;
      }

      v36 = *(v28 + 16);
      if ((a5 & 0x20) != 0 && v36 == a2)
      {
        goto LABEL_32;
      }

      v51 = v36 - *(v28 + 8);
      v52 = v91;
      if (v91 <= v51)
      {
        v52 = v51;
      }

      if (v92)
      {
        v51 = v52;
      }

      if (v51 == v89)
      {
        v53 = *(&v99 + 1);
        v54 = v100;
        if (v100 == *(&v99 + 1))
        {
          v54 = *(&v99 + 1);
        }

        else
        {
          v55 = (*(&v99 + 1) + 8 * (v101.i64[0] / 0x2AuLL));
          v56 = (*v55 - 4032 * (v101.i64[0] / 0x2AuLL) + 96 * v101.i64[0]);
          v57 = *(*(&v99 + 1) + 8 * ((v101.i64[1] + v101.i64[0]) / 0x2AuLL)) - 4032 * ((v101.i64[1] + v101.i64[0]) / 0x2AuLL) + 96 * (v101.i64[1] + v101.i64[0]);
          if (v56 != v57)
          {
            do
            {
              v58 = v56[7];
              if (v58)
              {
                v56[8] = v58;
                operator delete(v58);
              }

              v59 = v56[4];
              if (v59)
              {
                v56[5] = v59;
                operator delete(v59);
              }

              v56 += 12;
              if ((v56 - *v55) == 4032)
              {
                v60 = v55[1];
                ++v55;
                v56 = v60;
              }
            }

            while (v56 != v57);
            v53 = *(&v99 + 1);
            v54 = v100;
          }
        }

        v101.i64[1] = 0;
        v66 = (v54 - v53) >> 3;
        if (v66 >= 3)
        {
          do
          {
            operator delete(*v53);
            v53 = (*(&v99 + 1) + 8);
            *(&v99 + 1) = v53;
            v66 = (v100 - v53) >> 3;
          }

          while (v66 > 2);
        }

        if (v66 == 1)
        {
          v67 = 21;
LABEL_88:
          v101.i64[0] = v67;
        }

        else if (v66 == 2)
        {
          v67 = 42;
          goto LABEL_88;
        }

        v92 = 1;
        v91 = v89;
        goto LABEL_9;
      }

      v91 = v51;
      v61 = (*(*(&v99 + 1) + 8 * ((v101.i64[1] + v101.i64[0] - 1) / 0x2AuLL)) - 4032 * ((v101.i64[1] + v101.i64[0] - 1) / 0x2AuLL) + 96 * (v101.i64[1] + v101.i64[0] - 1));
      v62 = v61[7];
      if (v62)
      {
        v61[8] = v62;
        operator delete(v62);
      }

      v63 = v61[4];
      if (v63)
      {
        v61[5] = v63;
        operator delete(v63);
      }

      v64 = 42 * ((v100 - *(&v99 + 1)) >> 3) - 1;
      v65 = v101;
      --v101.i64[1];
      if (v100 == *(&v99 + 1))
      {
        v64 = 0;
      }

      if ((v64 - (v65.i64[1] + v65.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v100 - 8));
        *&v100 = v100 - 8;
      }

      v92 = 1;
    }

    else
    {
      if (v31 <= -993)
      {
        if (v31 == -994)
        {
          goto LABEL_9;
        }

        if (v31 != -993)
        {
          goto LABEL_122;
        }

LABEL_32:
        v37 = v101.i64[1] + v101.i64[0] - 1;
        v38 = *(*(&v99 + 1) + 8 * (v37 / 0x2A)) - 4032 * (v37 / 0x2A);
LABEL_97:
        v75 = (v38 + 96 * v37);
        v76 = v75[7];
        if (v76)
        {
          v75[8] = v76;
          operator delete(v76);
        }

        v77 = v75[4];
        if (v77)
        {
          v75[5] = v77;
          operator delete(v77);
        }

        v78 = 42 * ((v100 - *(&v99 + 1)) >> 3) - 1;
        v79 = v101;
        --v101.i64[1];
        if (v100 == *(&v99 + 1))
        {
          v78 = 0;
        }

        if ((v78 - (v79.i64[1] + v79.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v100 - 8));
          *&v100 = v100 - 8;
        }

        goto LABEL_9;
      }

      if (v31 == -992)
      {
        v39 = *(v28 + 16);
        *v93 = *v28;
        *&v93[16] = v39;
        v94[1] = 0;
        v95 = 0;
        v94[0] = 0;
        v41 = *(v28 + 32);
        v40 = *(v28 + 40);
        if (v40 != v41)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          goto LABEL_123;
        }

        __p[0] = 0;
        __p[1] = 0;
        v97 = 0;
        v43 = *(v28 + 56);
        v42 = *(v28 + 64);
        if (v42 != v43)
        {
          if (((v42 - v43) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_24504FAF4();
        }

        v44 = *v30;
        *(v98 + 5) = *(v28 + 85);
        v98[0] = v44;
        (*(**(v28 + 80) + 24))(*(v28 + 80), 1, v28);
        (*(*v98[0] + 24))(v98[0], 0, v93);
        v45 = *(&v99 + 1);
        if (v100 == *(&v99 + 1))
        {
          v46 = 0;
        }

        else
        {
          v46 = 42 * ((v100 - *(&v99 + 1)) >> 3) - 1;
        }

        v47 = v101.i64[1] + v101.i64[0];
        if (v46 == v101.i64[1] + v101.i64[0])
        {
          sub_24505C48C(&v99);
          v45 = *(&v99 + 1);
          v47 = v101.i64[1] + v101.i64[0];
        }

        v48 = *(v45 + 8 * (v47 / 0x2A)) - 4032 * (v47 / 0x2A) + 96 * v47;
        v49 = *&v93[16];
        *v48 = *v93;
        *(v48 + 16) = v49;
        *(v48 + 40) = 0;
        *(v48 + 48) = 0;
        *(v48 + 32) = 0;
        *(v48 + 32) = *v94;
        *(v48 + 48) = v95;
        v94[0] = 0;
        v94[1] = 0;
        v95 = 0;
        *(v48 + 56) = 0;
        *(v48 + 64) = 0;
        *(v48 + 72) = 0;
        *(v48 + 56) = *__p;
        *(v48 + 72) = v97;
        __p[0] = 0;
        __p[1] = 0;
        v97 = 0;
        v50 = v98[0];
        *(v48 + 85) = *(v98 + 5);
        *(v48 + 80) = v50;
        ++v101.i64[1];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v94[0])
        {
          v94[1] = v94[0];
          operator delete(v94[0]);
        }
      }

      else if (v31 != -991)
      {
        goto LABEL_122;
      }
    }

LABEL_9:
    v13 = v101.i64[1];
  }

  while (v101.i64[1]);
  if (v92)
  {
    v80 = *a4;
    *v80 = a2;
    *(v80 + 8) = a2 + v91;
    v81 = 1;
    *(v80 + 16) = 1;
    goto LABEL_108;
  }

LABEL_107:
  v81 = 0;
LABEL_108:
  v82 = *(&v99 + 1);
  v83 = v100;
  v101.i64[1] = 0;
  v84 = (v100 - *(&v99 + 1)) >> 3;
  if (v84 >= 3)
  {
    do
    {
      operator delete(*v82);
      v83 = v100;
      v82 = (*(&v99 + 1) + 8);
      *(&v99 + 1) = v82;
      v84 = (v100 - v82) >> 3;
    }

    while (v84 > 2);
  }

  if (v84 == 1)
  {
    v85 = 21;
LABEL_114:
    v101.i64[0] = v85;
  }

  else if (v84 == 2)
  {
    v85 = 42;
    goto LABEL_114;
  }

  if (v82 != v83)
  {
    do
    {
      v86 = *v82++;
      operator delete(v86);
    }

    while (v82 != v83);
    if (v100 != *(&v99 + 1))
    {
      *&v100 = v100 + ((*(&v99 + 1) - v100 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v99)
  {
    operator delete(v99);
  }

  return v81;
}

uint64_t sub_24505B564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_103;
  }

  *&v88 = a3;
  *(&v88 + 1) = a3;
  v89 = 0;
  *v85 = 0;
  memset(&v85[8], 0, 48);
  *__p = 0u;
  memset(v87, 0, 21);
  v11 = sub_24505BF94(&v90, v85);
  v91 = v11;
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v85[32])
  {
    operator delete(*&v85[32]);
  }

  v12 = *(v11 - 64);
  v13 = a3 - a2;
  *(v11 - 96) = 0;
  *(v11 - 88) = a2;
  *(v11 - 80) = a2;
  *(v11 - 72) = a3;
  v14 = *(a1 + 28);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 - 56) - v12) >> 3);
  if (v14 <= v15)
  {
    if (v14 < v15)
    {
      *(v11 - 56) = v12 + 24 * v14;
    }
  }

  else
  {
    sub_24505C16C((v11 - 64), v14 - v15, &v88);
  }

  v17 = *(v11 - 40);
  v18 = *(a1 + 32);
  v19 = (*(v11 - 32) - v17) >> 4;
  v80 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v11 - 32) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_24505C338(v11 - 40, v18 - v19);
  }

  v20 = 0;
  v82 = 0;
  v21 = 0;
  v22 = 0;
  *(v11 - 16) = v6;
  *(v11 - 8) = a5;
  *(v11 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v13;
    if (!v23)
    {
      sub_24505A11C();
LABEL_113:
      sub_24505A11C();
LABEL_114:
      sub_24504FAF4();
    }

    v25 = (v11 - 16);
    v24 = *(v11 - 16);
    v26 = (v11 - 96);
    if (v24)
    {
      (*(*v24 + 16))(v24, v11 - 96);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_17;
      }

      if (v27 != -1000)
      {
        goto LABEL_113;
      }

      v28 = *(v11 - 80);
      if ((a5 & 0x20) != 0 && v28 == a2)
      {
LABEL_33:
        v29 = v91;
        v30 = *(v91 - 5);
        if (v30)
        {
          *(v91 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v91 = v29 - 6;
        goto LABEL_17;
      }

      v41 = v28 - *(v11 - 88);
      if ((v82 & (v22 >= v41)) != 0)
      {
        v41 = v22;
        goto LABEL_67;
      }

      v43 = *(v11 - 64);
      v42 = *(v11 - 56);
      if (v42 != v43)
      {
        v44 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v43) >> 3);
        if (v44 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_115:
        sub_24504FAF4();
      }

      if (v43 == v42)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          *v20 = *v43;
          *(v20 + 16) = *(v43 + 16);
          v43 += 24;
          v20 += 24;
        }

        while (v43 != v42);
      }

      v46 = *(v11 - 40);
      v45 = *(v11 - 32);
      v47 = v45 - v46;
      if (v45 != v46)
      {
        if (!((v47 >> 4) >> 60))
        {
          operator new();
        }

        goto LABEL_114;
      }

      if (v46 == v45)
      {
        goto LABEL_67;
      }

      v48 = v41;
      v49 = v47 - 16;
      v50 = 0;
      if ((v47 - 16) >= 0xF0)
      {
        v57 = v49 & 0xFFFFFFFFFFFFFFF0 | 8;
        v58 = (v49 & 0xFFFFFFFFFFFFFFF0) + 16;
        v59 = &v46[v58] <= 8 || (v46 + 8) >= v58;
        v60 = !v59;
        v61 = v57 <= v46 || &v46[v57] == 0;
        if (v61 && !v60)
        {
          v62 = (v49 >> 4) + 1;
          v50 = (16 * (v62 & 0x1FFFFFFFFFFFFFFCLL));
          v63 = (v46 + 32);
          v64 = 32;
          v65 = v62 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v67 = *(v63 - 2);
            v66 = *(v63 - 1);
            v69 = *v63;
            v68 = v63[1];
            v63 += 4;
            *(v64 - 32) = v67;
            *(v64 - 16) = v66;
            *v64 = v69;
            *(v64 + 16) = v68;
            v64 += 64;
            v65 -= 4;
          }

          while (v65);
          if (v62 == (v62 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_66;
          }

          v46 += 16 * (v62 & 0x1FFFFFFFFFFFFFFCLL);
        }
      }

      do
      {
        *v50 = *v46;
        v50[1] = *(v46 + 1);
        v46 += 16;
        v50 += 2;
      }

      while (v46 != v45);
LABEL_66:
      v41 = v48;
LABEL_67:
      v51 = v91;
      if (v41 == v13)
      {
        v52 = v90;
        while (v51 != v52)
        {
          v53 = *(v51 - 5);
          if (v53)
          {
            *(v51 - 4) = v53;
            operator delete(v53);
          }

          v54 = *(v51 - 8);
          if (v54)
          {
            *(v51 - 7) = v54;
            operator delete(v54);
          }

          v51 -= 6;
        }

        v91 = v52;
        v82 = 1;
        v22 = v13;
      }

      else
      {
        v55 = *(v91 - 5);
        if (v55)
        {
          *(v91 - 4) = v55;
          operator delete(v55);
        }

        v56 = *(v51 - 8);
        if (v56)
        {
          *(v51 - 7) = v56;
          operator delete(v56);
        }

        v91 = v51 - 6;
        v82 = 1;
        v22 = v41;
      }

      goto LABEL_17;
    }

    switch(v27)
    {
      case -993:
        goto LABEL_33;
      case -992:
        v84 = v22;
        v32 = *(v11 - 80);
        *v85 = *v26;
        *&v85[16] = v32;
        memset(&v85[32], 0, 24);
        v34 = *(v11 - 64);
        v33 = *(v11 - 56);
        if (v33 != v34)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_115;
        }

        __p[0] = 0;
        __p[1] = 0;
        v87[0] = 0;
        v36 = *(v11 - 40);
        v35 = *(v11 - 32);
        if (v35 != v36)
        {
          if (((v35 - v36) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_114;
        }

        v37 = *v25;
        *(&v87[1] + 5) = *(v11 - 11);
        v87[1] = v37;
        (*(**v25 + 24))(*v25, 1, v11 - 96);
        (*(*v87[1] + 24))(v87[1], 0, v85);
        v38 = v91;
        if (v91 >= v92)
        {
          v91 = sub_24505BF94(&v90, v85);
          v22 = v84;
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v39 = *&v85[16];
          *v91 = *v85;
          v38[1] = v39;
          *(v38 + 6) = 0;
          *(v38 + 7) = 0;
          *(v38 + 4) = 0;
          *(v38 + 5) = 0;
          v38[2] = *&v85[32];
          *(v38 + 6) = *&v85[48];
          *&v85[32] = 0;
          *&v85[40] = 0;
          *(v38 + 8) = 0;
          *(v38 + 9) = 0;
          *(v38 + 56) = *__p;
          *(v38 + 9) = v87[0];
          *&v85[48] = 0;
          __p[0] = 0;
          __p[1] = 0;
          v87[0] = 0;
          v40 = v87[1];
          *(v38 + 85) = *(&v87[1] + 5);
          *(v38 + 10) = v40;
          v91 = v38 + 6;
          v22 = v84;
        }

        if (*&v85[32])
        {
          *&v85[40] = *&v85[32];
          operator delete(*&v85[32]);
        }

        break;
      case -991:
        break;
      default:
        goto LABEL_113;
    }

LABEL_17:
    v11 = v91;
  }

  while (v90 != v91);
  if (v82)
  {
    v70 = *v80;
    *v70 = a2;
    *(v70 + 8) = a2 + v22;
    *(v70 + 16) = 1;
    if (v20)
    {
      v71 = 16;
      v72 = 1;
      do
      {
        v73 = v70 + 24 * v72;
        *v73 = *(v71 - 16);
        v74 = *v71;
        v71 += 24;
        *(v73 + 16) = v74;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3) > v72++;
      }

      while (v23);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_103:
  v75 = v90;
  if (v90)
  {
    for (i = v91; i != v75; i -= 6)
    {
      v77 = *(i - 5);
      if (v77)
      {
        *(i - 4) = v77;
        operator delete(v77);
      }

      v78 = *(i - 8);
      if (v78)
      {
        *(i - 7) = v78;
        operator delete(v78);
      }
    }

    operator delete(v75);
  }

  return v16;
}

uint64_t sub_24505BF94(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_24504FAF4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_24504FAF4();
  }

  v6 = *(a2 + 16);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *v7 = *a2;
  *(v7 + 16) = v6;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 72) = v8;
  *(v7 + 80) = v9;
  v10 = 96 * v2 + 96;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v7 + *a1 - v12;
    do
    {
      v16 = *(v14 + 1);
      *v15 = *v14;
      *(v15 + 16) = v16;
      *(v15 + 48) = 0;
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v14[6];
      v14[4] = 0;
      v14[5] = 0;
      v14[6] = 0;
      *(v15 + 72) = 0;
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 72) = v14[9];
      v14[7] = 0;
      v14[8] = 0;
      v14[9] = 0;
      v17 = v14[10];
      *(v15 + 85) = *(v14 + 85);
      *(v15 + 80) = v17;
      v14 += 12;
      v15 += 96;
    }

    while (v14 != v12);
    do
    {
      v18 = v11[7];
      if (v18)
      {
        v11[8] = v18;
        operator delete(v18);
      }

      v19 = v11[4];
      if (v19)
      {
        v11[5] = v19;
        operator delete(v19);
      }

      v11 += 12;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_24505C16C(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24504FAF4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 + *a1 - v16;
    if (v16 != *a1)
    {
      v18 = 24 * v5 + *a1 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = 24 * v5 + 24 * a2;
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_24505C338(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_24504FAF4();
    }

    v8 = v3 - v5;
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
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_24505C48C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_24504FAF4();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_24505C95C(a1, &v11);
}

const void **sub_24505C7C8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void *sub_24505C95C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

uint64_t sub_24505CAE4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  if (*a2 == 94)
  {
    operator new();
  }

  if (a2 == a3)
  {
    v10 = a2;
  }

  else
  {
    while (1)
    {
      if (v3 == a3)
      {
        v10 = v3;
LABEL_11:
        if (v10 == a3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v6 = *(a1 + 56);
      v7 = *(a1 + 28);
      v8 = sub_245062930(a1, v3, a3);
      if (v8 == v3)
      {
        break;
      }

      v9 = *(a1 + 28);
      v10 = sub_245062C4C(a1, v8, a3);
      v11 = v10 == v3;
      v3 = v10;
      if (v11)
      {
        goto LABEL_11;
      }
    }

    v10 = v3;
    if (v3 == a3)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v10 + 1 == a3 && *v10 == 36)
    {
      operator new();
    }
  }

LABEL_18:
  v3 = v10;
  if (v10 == a3)
  {
    return v3;
  }

  v13 = sub_24505A11C();
  return sub_24505CC98(v13);
}

unsigned __int8 *sub_24505CC98(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_24505CE44(a1, a2, a3);
  if (v7 != a2)
  {
    do
    {
      v8 = v7;
      v7 = sub_24505CE44(a1, v7, a3);
    }

    while (v7 != v8);
    if (v8 != a2)
    {
      if (v8 == a3 || *v8 != 124)
      {
        return v8;
      }

      v9 = *(a1 + 56);
      v10 = v8 + 1;
      v11 = sub_24505CE44(a1, v8 + 1, a3);
      if (v11 != v8 + 1)
      {
        do
        {
          v12 = v11;
          v11 = sub_24505CE44(a1, v11, a3);
        }

        while (v11 != v12);
        if (v12 != v10)
        {
          operator new();
        }
      }
    }
  }

  v14 = sub_24505A11C();
  return sub_24505CE44(v14, v15, v16);
}

unsigned __int8 *sub_24505CE44(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 != a3)
  {
    v8 = *a2;
    v9 = (v8 - 36);
    if (v9 > 0x3A)
    {
      goto LABEL_21;
    }

    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
LABEL_22:
        sub_24505E184(a1);
      }
    }

    else
    {
LABEL_21:
      if ((v8 - 123) >= 2)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    v10 = sub_24505D1CC(a1, a2, a3);
    v11 = v10;
    if (v10 == a2)
    {
      if (*v10 == 46)
      {
        operator new();
      }

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v11 = sub_24505D1CC(a1, a2, a3);
  if (v11 == a2)
  {
LABEL_8:
    v11 = sub_24505D2AC(a1, a2, a3);
  }

LABEL_9:
  if (v11 == a2 && v11 != a3)
  {
    v12 = *v11;
    switch(v12)
    {
      case '$':
        operator new();
      case '(':
        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        v13 = *(a1 + 28);
        ++*(a1 + 36);
        v14 = sub_24505CC98(a1);
        if (v14 == a3 || *v14 != 41)
        {
          v17 = sub_24505A11C();
          return sub_24505D1CC(v17, v18, v19);
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          operator new();
        }

        --*(a1 + 36);
        v11 = v14 + 1;
        break;
      case '^':
        operator new();
    }
  }

  if (v11 == a2)
  {
    return v11;
  }

  v15 = (*(a1 + 28) + 1);

  return sub_24505E2EC(a1, v11, a3);
}

uint64_t sub_24505D1CC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return a2;
  }

  v3 = a2[1];
  v4 = (v3 - 36) > 0x3A || ((1 << (v3 - 36)) & 0x5800000080004F1) == 0;
  if (!v4 || (v3 - 123) < 3)
  {
    sub_24505E184(a1);
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v7 = a2;
    v8 = sub_2450621C0(a1, v3);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return &v7[v9];
  }

  v6 = a2 + 1;

  return sub_24506067C(a1, v6, a3, 0);
}

_BYTE *sub_24505D2AC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1];
      operator new();
    }

    sub_24505A11C();
    sub_24505A11C();
    sub_24504FAF4();
  }

  return a2;
}

void sub_24505E184(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned __int8 *sub_24505E2EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *(a1 + 24) & 0x1F0;
  v4 = *a2;
  if (v4 <= 0x3E)
  {
    if (v4 == 42)
    {
      v12 = a2 + 1;
      if (v3)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 == a3;
      }

      if (!v13 && *v12 == 63)
      {
        operator new();
      }

      operator new();
    }

    if (v4 == 43)
    {
      v5 = a2 + 1;
      if (!v3 && v5 != a3 && *v5 == 63)
      {
        operator new();
      }

      operator new();
    }

    return a2;
  }

  if (v4 == 63)
  {
    v14 = a2 + 1;
    if (v3)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 == a3;
    }

    if (!v15 && *v14 == 63)
    {
      operator new();
    }

    operator new();
  }

  if (v4 == 123)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_67;
    }

    v6 = a2[1];
    if ((v6 & 0xF8) != 0x30 && (v6 & 0xFE) != 0x38)
    {
      goto LABEL_67;
    }

    v7 = v6 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      do
      {
        v9 = *v8;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          goto LABEL_20;
        }

        if (v7 >= 214748364)
        {
          goto LABEL_67;
        }

        v7 = v9 + 10 * v7 - 48;
        ++v8;
      }

      while (v8 != a3);
      v8 = a3;
    }

LABEL_20:
    if (v8 != a3)
    {
      v10 = *v8;
      if (v10 != 44)
      {
        if (v10 == 125)
        {
          v11 = v8 + 1;
          if (v3 || v11 == a3 || *v11 != 63)
          {
            operator new();
          }

          goto LABEL_64;
        }

        goto LABEL_67;
      }

      if (v8 + 1 == a3)
      {
        goto LABEL_67;
      }

      v16 = v8[1];
      if (v16 == 125)
      {
        v17 = v8 + 2;
        if (v3 || v17 == a3 || *v17 != 63)
        {
          operator new();
        }

        goto LABEL_64;
      }

      if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
      {
        v18 = v16 - 48;
        v19 = v8 + 2;
        if (v19 != a3)
        {
          do
          {
            v20 = *v19;
            if ((v20 & 0xF8) != 0x30 && (v20 & 0xFE) != 0x38)
            {
              goto LABEL_58;
            }

            if (v18 >= 214748364)
            {
              goto LABEL_67;
            }

            v18 = v20 + 10 * v18 - 48;
            ++v19;
          }

          while (v19 != a3);
          v19 = a3;
        }

LABEL_58:
        if (v19 != a3 && *v19 == 125)
        {
          if (v18 >= v7)
          {
            v21 = v19 + 1;
            if (v3 || v21 == a3 || *v21 != 63)
            {
              operator new();
            }

LABEL_64:
            sub_24505EBD8();
          }

LABEL_67:
          sub_24505A11C();
        }
      }
    }

    sub_24505A11C();
    sub_24505EBD8();
  }

  return a2;
}

uint64_t sub_24505ED18(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_24505ED44(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      goto LABEL_9;
    }

    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != v10)
    {
      v6 += v10;
LABEL_9:
      v13 = v5 - v6;
      v14 = (v8 + 24 * v6 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_24505EE04(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_40;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v22 = *(result + 44);
      v23 = *(result + 48);
      if (v22 == v23)
      {
        return result;
      }

      v24 = (v23 - 1);
      v25 = (v22 - 1);
      v26 = *(a2 + 24);
      v27 = *(a2 + 32);
      v28 = v24 - v25;
      if ((v24 - v25) >= 2)
      {
        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        v30 = v27 + 24 * v25 + 24;
        v31 = v28 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v30 - 24) = v26;
          *(v30 - 16) = v26;
          *v30 = v26;
          *(v30 + 8) = v26;
          *(v30 - 8) = 0;
          *(v30 + 16) = 0;
          v30 += 48;
          v31 -= 2;
        }

        while (v31);
        if (v28 == v29)
        {
          return result;
        }

        v25 += v29;
      }

      v32 = v24 - v25;
      v33 = (v27 + 24 * v25 + 16);
      do
      {
        *(v33 - 2) = v26;
        *(v33 - 1) = v26;
        *v33 = 0;
        v33 += 24;
        --v32;
      }

      while (v32);
      return result;
    }

LABEL_38:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_38;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_40:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    goto LABEL_24;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v18 = v15 + 24 * v13 + 24;
  v19 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v18 - 24) = v14;
    *(v18 - 16) = v14;
    *v18 = v14;
    *(v18 + 8) = v14;
    *(v18 - 8) = 0;
    *(v18 + 16) = 0;
    v18 += 48;
    v19 -= 2;
  }

  while (v19);
  if (v16 != v17)
  {
    v13 += v17;
LABEL_24:
    v20 = v12 - v13;
    v21 = (v15 + 24 * v13 + 16);
    do
    {
      *(v21 - 2) = v14;
      *(v21 - 1) = v14;
      *v21 = 0;
      v21 += 24;
      --v20;
    }

    while (v20);
  }

  return result;
}

void sub_24505EFCC(void *a1)
{
  *a1 = &unk_2857FD288;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2857FD2B8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x245D61480);
}

void sub_24505F0A4(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505F134(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_24505F1A8(void *a1)
{
  *a1 = &unk_2857FD288;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2857FD2B8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505F27C(void *a1)
{
  *a1 = &unk_2857FD288;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2857FD2B8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void *sub_24505F330(void *a1)
{
  *a1 = &unk_2857FD288;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2857FD2B8;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_24505F3E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void sub_24505F42C(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505F4BC(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_24505F530(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void sub_24505F578(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD168;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245D61480);
}

std::locale *sub_24505F624(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD168;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_24505F6B0(uint64_t result, uint64_t a2)
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

void sub_24505F744(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD1F8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245D61480);
}

std::locale *sub_24505F7F0(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD1F8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_24505F87C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_24505F8B4(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505F944(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_24505F9B8(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_24505F9E8(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505FA78(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_24505FAEC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_24505FB40(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505FBD0(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_24505FC44(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
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

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void sub_24505FCAC(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24505FD3C(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_24505FDB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_2857FD1C8;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
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

void sub_24505FEC4(uint64_t a1, char a2)
{
  if (*(a1 + 169) != 1)
  {
    v7 = *(a1 + 170);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    if (v9 < v8)
    {
      *v9 = a2;
      v6 = (v9 + 1);
      goto LABEL_26;
    }

    v10 = *(a1 + 40);
    v14 = v9 - v10 + 1;
    if (v14 >= 0)
    {
      v15 = v8 - v10;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v17 = v9 - v10;
      *(v9 - v10) = a2;
      v6 = v9 - v10 + 1;
      goto LABEL_24;
    }

LABEL_27:
    sub_24504FAF4();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    v6 = (v5 + 1);
    goto LABEL_26;
  }

  v10 = *(a1 + 40);
  v11 = v5 - v10 + 1;
  if (v11 < 0)
  {
    goto LABEL_27;
  }

  v12 = v4 - v10;
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    operator new();
  }

  v17 = v5 - v10;
  *(v5 - v10) = v3;
  v6 = v5 - v10 + 1;
LABEL_24:
  memcpy(0, v10, v17);
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0;
  if (v10)
  {
    operator delete(v10);
  }

LABEL_26:
  *(a1 + 48) = v6;
}

void sub_24506008C(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  HIBYTE(v16) = a4 - __src;
  if (a4 != __src)
  {
    memcpy(&__dst, __src, v4);
  }

  *(&__dst + v4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (SHIBYTE(v16) < 0)
  {
    if (!*(&__dst + 1))
    {
      goto LABEL_15;
    }

    p_dst = __dst;
  }

  else
  {
    if (!HIBYTE(v16))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v14, p_dst);
  *a1 = *&v14.__r_.__value_.__l.__data_;
  v8 = v14.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v14.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v16) >= 3)
    {
      return;
    }

    goto LABEL_21;
  }

  if (*(&__dst + 1) < 3uLL)
  {
LABEL_21:
    (*(**(a2 + 16) + 32))(&v14);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v14;
    if (*(a1 + 23) < 0)
    {
      v11 = *(a1 + 8);
      if (v11 == 1 || v11 == 12)
      {
        if (&__dst != a1)
        {
          if (v16 >= 0)
          {
            v12 = &__dst;
          }

          else
          {
            v12 = __dst;
          }

          if (v16 >= 0)
          {
            v13 = HIBYTE(v16);
          }

          else
          {
            v13 = *(&__dst + 1);
          }

          sub_24506122C(a1, v12, v13);
        }
      }

      else
      {
        **a1 = 0;
        *(a1 + 8) = 0;
      }
    }

    else
    {
      v10 = *(a1 + 23);
      if (v10 == 1 || v10 == 12)
      {
        if (&__dst != a1)
        {
          if (SHIBYTE(v16) < 0)
          {
            sub_24505A134(a1, __dst, *(&__dst + 1));
          }

          else
          {
            *a1 = __dst;
            *(a1 + 16) = v16;
          }
        }
      }

      else
      {
        *a1 = 0;
        *(a1 + 23) = 0;
      }
    }
  }

LABEL_15:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }
}

void **sub_2450602F4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_24505A11C();
    goto LABEL_60;
  }

  v5 = *a2;
  if (v5 <= 0x61)
  {
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
        return (a2 + 1);
      }

      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return (a2 + 1);
      }

      goto LABEL_26;
    }

    if (v5 == 83)
    {
      *(a5 + 164) |= 0x4000u;
      return (a2 + 1);
    }

    if (v5 != 87)
    {
      goto LABEL_26;
    }

    *(a5 + 164) |= 0x500u;
    if (*(a5 + 169) != 1)
    {
      v15 = *(a5 + 170);
      v17 = *(a5 + 72);
      v16 = *(a5 + 80);
      if (v17 >= v16)
      {
        v24 = *(a5 + 64);
        v25 = (v17 - v24);
        v26 = v17 - v24 + 1;
        if (v26 < 0)
        {
          goto LABEL_60;
        }

        v27 = a2;
        v28 = v16 - v24;
        if (2 * v28 > v26)
        {
          v26 = 2 * v28;
        }

        if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v29 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v26;
        }

        if (v29)
        {
          operator new();
        }

        v31 = a5;
        v32 = v17 - v24;
        *v25 = 95;
        v18 = v25 + 1;
        memcpy(0, v24, v32);
        a5 = v31;
        v31[8] = 0;
        v31[9] = v25 + 1;
        v31[10] = 0;
        if (v24)
        {
          operator delete(v24);
          a5 = v31;
        }

        a2 = v27;
      }

      else
      {
        *v17 = 95;
        v18 = v17 + 1;
      }

      *(a5 + 72) = v18;
      return (a2 + 1);
    }

    v6 = a2;
    v7 = a5;
    v8 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v9 = v7;
    v11 = v7[9];
    v10 = v7[10];
    if (v11 < v10)
    {
      *v11 = v8;
      v12 = v11 + 1;
LABEL_53:
      a2 = v6;
      v9[9] = v12;
      return (a2 + 1);
    }

    v19 = v7[8];
    v20 = (v11 - v19);
    v21 = v11 - v19 + 1;
    if (v21 >= 0)
    {
      v22 = v10 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v30 = v11 - v19;
      *v20 = v8;
      v12 = v20 + 1;
      memcpy(0, v19, v30);
      v7[8] = 0;
      v7[9] = v20 + 1;
      v7[10] = 0;
      if (v19)
      {
        operator delete(v19);
      }

      v9 = v7;
      goto LABEL_53;
    }

LABEL_60:
    sub_24504FAF4();
  }

  if (*a2 > 0x72u)
  {
    if (v5 == 115)
    {
      *(a5 + 160) |= 0x4000u;
      return (a2 + 1);
    }

    if (v5 == 119)
    {
      *(a5 + 160) |= 0x500u;
      v13 = a2;
      sub_24505FEC4(a5, 95);
      return (v13 + 1);
    }
  }

  else
  {
    if (v5 == 98)
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
      return (a2 + 1);
    }

    if (v5 == 100)
    {
      *(a5 + 160) |= 0x400u;
      return (a2 + 1);
    }
  }

LABEL_26:

  return sub_245060E04(a1, a2, a3, a4);
}

uint64_t sub_24506067C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_70;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
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

          v10 = 12;
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      if (v4 == 110)
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

          v10 = 10;
          goto LABEL_67;
        }

        goto LABEL_51;
      }
    }

    else
    {
      switch(v4)
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

            v10 = 13;
            goto LABEL_67;
          }

          goto LABEL_51;
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

            v10 = 9;
            goto LABEL_67;
          }

          goto LABEL_51;
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

            v10 = 11;
            goto LABEL_67;
          }

          goto LABEL_51;
      }
    }

    goto LABEL_40;
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_40;
    }
  }

  else if (v4 != 92)
  {
    if (v4 == 97)
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

        v10 = 7;
        goto LABEL_67;
      }

LABEL_51:
      sub_24505E184(a1);
    }

    if (v4 == 98)
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

        v10 = 8;
LABEL_67:
        *a4 = v10;
        return (a2 + 1);
      }

      goto LABEL_51;
    }

LABEL_40:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
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

      if (!a4)
      {
        sub_24505E184(a1);
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      result = v7;
      *a4 = v6;
      *(a4 + 1) = 0;
      return result;
    }

LABEL_70:
    v11 = sub_24505A11C();
    return sub_245060998(v11, v12);
  }

  if (!a4)
  {
    goto LABEL_51;
  }

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
  return (a2 + 1);
}

_BYTE *sub_245060998(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
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
    sub_24505A11C();
  }

  else
  {
    sub_24506008C(&v13, a1, __src, v6);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v13;
    v9 = v14;
    *(a4 + 16) = v14;
    v10 = HIBYTE(v9);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (v10 - 1 < 2)
    {
      return v6 + 2;
    }
  }

  v12 = sub_24505A11C();
  return sub_245060A68(v12);
}

void sub_245060A68(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_24504FAF4();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_24504FAF4();
    }

    *(2 * v8) = *a2;
    v5 = 2 * v8 + 2;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_245060B64(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  v9 = a4 - __src;
  if (a4 != __src)
  {
    memmove(__dst, __src, v4);
  }

  *(__dst + v4) = 0;
  v6 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if ((v9 & 0x80u) != 0)
  {
    v6 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_245060C90(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_24504FAF4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_24504FAF4();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

void **sub_245060E04(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
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

          *a4 = 12;
          return ++a2;
        }

        goto LABEL_76;
      }

      if (v4 == 110)
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

          *a4 = 10;
          return ++a2;
        }

        goto LABEL_76;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
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
            return ++a2;
          }

          goto LABEL_76;
        case 'c':
          if (a2 + 1 != a3)
          {
            v5 = a2[1];
            if (((v5 & 0xDF) - 65) <= 0x19u)
            {
              v6 = v5 & 0x1F;
              if (!a4)
              {
                sub_24505E184(a1);
              }

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
              a2 += 2;
              return a2;
            }
          }

          goto LABEL_94;
        case '_':
          goto LABEL_94;
      }
    }

    goto LABEL_71;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
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

        *a4 = 13;
        return ++a2;
      }

      goto LABEL_76;
    }

    if (v4 == 116)
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

        *a4 = 9;
        return ++a2;
      }

      goto LABEL_76;
    }

LABEL_71:
    if (v4 < 0 || (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) == 0)
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

        *a4 = v4;
        *(a4 + 1) = 0;
        return ++a2;
      }

      goto LABEL_76;
    }

    goto LABEL_94;
  }

  switch(v4)
  {
    case 'u':
      if (a2 + 1 == a3)
      {
        goto LABEL_94;
      }

      v7 = a2[1];
      if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 && (v7 | 0x20u) - 97 >= 6)
      {
        goto LABEL_94;
      }

      a2 += 2;
      if (a2 == a3)
      {
        goto LABEL_94;
      }

      v8 = *a2;
      if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
      {
        goto LABEL_94;
      }

      break;
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

        *a4 = 11;
        return ++a2;
      }

LABEL_76:
      sub_24505E184(a1);
    case 'x':
      break;
    default:
      goto LABEL_71;
  }

  if (a2 + 1 != a3)
  {
    v9 = a2[1];
    v10 = -48;
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
    {
      v9 |= 0x20u;
      if ((v9 - 97) >= 6u)
      {
        goto LABEL_94;
      }

      v10 = -87;
    }

    if (a2 + 2 != a3)
    {
      v11 = a2[2];
      v12 = -48;
      if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
      {
        v11 |= 0x20u;
        if ((v11 - 97) >= 6u)
        {
          goto LABEL_94;
        }

        v12 = -87;
      }

      v13 = v12 + v11 + 16 * (v10 + v9);
      if (!a4)
      {
        sub_24505E184(a1);
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v13;
      *(a4 + 1) = 0;
      a2 += 3;
      return a2;
    }
  }

LABEL_94:
  v15 = sub_24505A11C();
  return sub_24506122C(v15, v16, v17);
}

void **sub_24506122C(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_24504FAF4();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void sub_245061354(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v11 = 0;
    v12 = *(a1 + 168);
    goto LABEL_63;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_40;
  }

  v6 = *v4;
  v7 = v4[1];
  if (*(a1 + 169) == 1)
  {
    LODWORD(v6) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
    LODWORD(v7) = (*(**(a1 + 24) + 40))(*(a1 + 24), v7);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  v8 = v6 | (v7 << 8);
  LOWORD(__s.__r_.__value_.__l.__data_) = v8;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v122, &__s);
  __p = v122;
  size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(v122.__r_.__value_.__r.__words[2]);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v122.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
    {
      goto LABEL_14;
    }

    goto LABEL_156;
  }

  if (__s.__r_.__value_.__l.__size_ < 3)
  {
LABEL_156:
    (*(**(a1 + 32) + 32))(&v122);
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v122;
    if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
      {
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = __s.__r_.__value_.__l.__size_;
        }

        sub_24506122C(&__p.__r_.__value_.__l.__data_, p_s, v75);
      }

      else
      {
        *__p.__r_.__value_.__l.__data_ = 0;
        __p.__r_.__value_.__l.__size_ = 0;
      }
    }

    else if (HIBYTE(v122.__r_.__value_.__r.__words[2]) == 1 || HIBYTE(v122.__r_.__value_.__r.__words[2]) == 12)
    {
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_24505A134(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __s;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
    }
  }

LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_40:
    v12 = 0;
    v11 = 1;
    goto LABEL_41;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_40;
  }

LABEL_16:
  v13 = *(a1 + 112);
  v14 = *(a1 + 120) - v13;
  if (v14)
  {
    v15 = v14 >> 1;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = (v13 + 1);
    v11 = 2;
    do
    {
      if (*(v16 - 1) == v6 && *v16 == v7)
      {
        goto LABEL_62;
      }

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  if (*(a1 + 170) != 1 || *(a1 + 88) == *(a1 + 96))
  {
    goto LABEL_211;
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  __s.__r_.__value_.__s.__data_[0] = v6;
  __s.__r_.__value_.__s.__data_[1] = v7;
  __s.__r_.__value_.__s.__data_[2] = 0;
  (*(**(a1 + 32) + 32))(&v122);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v17 = *(a1 + 88);
  v18 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  v19 = *(a1 + 96) - v17;
  if (!v19)
  {
    v27 = 0;
    LODWORD(v24) = 0;
    goto LABEL_207;
  }

  v109 = v6 | (v7 << 8);
  v111 = v7;
  v118 = v6;
  v114 = v2;
  v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v122;
  }

  else
  {
    v21 = v122.__r_.__value_.__r.__words[0];
  }

  v22 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v122.__r_.__value_.__l.__size_;
  }

  if (v20 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  }

  v25 = (v17 + 47);
  v26 = 1;
  v27 = 1;
  while (1)
  {
    v64 = *(v25 - 24);
    v65 = v64 >= 0 ? (v25 - 47) : *(v25 - 47);
    v66 = v64 >= 0 ? *(v25 - 24) : *(v25 - 39);
    v67 = v23 >= v66 ? v66 : v23;
    v68 = memcmp(v65, v21, v67);
    if (v68)
    {
      if ((v68 & 0x80000000) == 0)
      {
        goto LABEL_125;
      }
    }

    else if (v66 > v23)
    {
      goto LABEL_125;
    }

    v69 = *v25;
    v70 = v69 >= 0 ? (v25 - 23) : *(v25 - 23);
    v71 = v69 >= 0 ? *v25 : *(v25 - 15);
    v72 = v71 >= v23 ? v23 : v71;
    v73 = memcmp(v21, v70, v72);
    if (v73)
    {
      break;
    }

    if (v23 <= v71)
    {
      goto LABEL_150;
    }

LABEL_125:
    v27 = v26++ < v20;
    v25 += 48;
    if (!--v24)
    {
      goto LABEL_151;
    }
  }

  if ((v73 & 0x80000000) == 0)
  {
    goto LABEL_125;
  }

LABEL_150:
  LODWORD(v24) = 5;
LABEL_151:
  v2 = v114;
  v8 = v109;
  LODWORD(v7) = v111;
  LODWORD(v6) = v118;
  v18 = v22;
LABEL_207:
  if (v18 < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  if (!v27)
  {
LABEL_211:
    if (*(a1 + 136) == *(a1 + 144))
    {
      v90 = 0;
      goto LABEL_253;
    }

    *(&__s.__r_.__value_.__s + 23) = 2;
    LOWORD(__s.__r_.__value_.__l.__data_) = v8;
    __s.__r_.__value_.__s.__data_[2] = 0;
    (*(**(a1 + 32) + 32))(&v122);
    v91 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v91 = v122.__r_.__value_.__l.__size_;
    }

    if (v91 != 1)
    {
      if (v91 == 12)
      {
        v92 = &v122;
        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v92 = v122.__r_.__value_.__r.__words[0];
        }

        v92->__r_.__value_.__s.__data_[11] = v92->__r_.__value_.__s.__data_[3];
      }

      else if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        *v122.__r_.__value_.__l.__data_ = 0;
        v122.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v122.__r_.__value_.__s.__data_[0] = 0;
        *(&v122.__r_.__value_.__s + 23) = 0;
      }
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v93 = *(a1 + 136);
    v94 = *(a1 + 144) - v93;
    if (v94)
    {
      v120 = v6;
      v117 = v2;
      v95 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
      v96 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v97 = v122.__r_.__value_.__l.__size_;
      }

      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &v122;
      }

      else
      {
        v98 = v122.__r_.__value_.__r.__words[0];
      }

      if (v95 <= 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = 0xAAAAAAAAAAAAAAABLL * (v94 >> 3);
      }

      v100 = 1;
      v101 = 1;
      do
      {
        v102 = *(v93 + 23);
        v103 = v102;
        if ((v102 & 0x80u) != 0)
        {
          v102 = *(v93 + 8);
        }

        if (v97 == v102)
        {
          v104 = v103 >= 0 ? v93 : *v93;
          if (!memcmp(v98, v104, v97))
          {
            v90 = 1;
            LODWORD(v24) = 5;
            goto LABEL_248;
          }
        }

        v101 = v100++ < v95;
        v93 += 24;
        --v99;
      }

      while (v99);
      LODWORD(v24) = 0;
      v90 = 0;
LABEL_248:
      v2 = v117;
      LODWORD(v6) = v120;
      if (v96 < 0)
      {
        goto LABEL_249;
      }
    }

    else
    {
      v101 = 0;
      LODWORD(v24) = 0;
      v90 = 0;
      if ((*(&v122.__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_249:
        operator delete(v122.__r_.__value_.__l.__data_);
      }
    }

    if (v101)
    {
      goto LABEL_251;
    }

LABEL_253:
    if ((v6 & 0x80000000) != 0)
    {
      v108 = *(a1 + 164);
    }

    else
    {
      v105 = *(a1 + 160);
      v106 = *(*(a1 + 24) + 16);
      v107 = *(v106 + 4 * v6);
      if (((v107 & v105) != 0 || v6 == 95 && (v105 & 0x80) != 0) && (v7 & 0x80000000) == 0 && ((*(v106 + 4 * v7) & v105) != 0 || (v105 & 0x80) != 0 && v7 == 95))
      {
        goto LABEL_271;
      }

      v108 = *(a1 + 164);
      if ((v107 & v108) != 0 || v6 == 95 && (v108 & 0x80) != 0)
      {
LABEL_270:
        v11 = 2;
        v12 = v90;
        goto LABEL_63;
      }
    }

    if ((v7 & 0x80000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v7) & v108) == 0)
      {
        v12 = 1;
        v11 = 2;
        if (v7 != 95 || (v108 & 0x80) == 0)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_270;
    }

LABEL_271:
    v12 = 1;
    v11 = 2;
    goto LABEL_63;
  }

  v90 = 1;
LABEL_251:
  v11 = 2;
  v12 = v90;
  if (v24)
  {
    goto LABEL_63;
  }

LABEL_41:
  v29 = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    v29 = (*(**(a1 + 24) + 40))(*(a1 + 24), **(v2 + 16));
  }

  v30 = *(a1 + 40);
  v31 = *(a1 + 48) - v30;
  if (v31)
  {
    if (v31 <= 1)
    {
      v31 = 1;
    }

    do
    {
      v32 = *v30++;
      if (v32 == v29)
      {
        goto LABEL_62;
      }

      --v31;
    }

    while (v31);
  }

  v33 = *(a1 + 164);
  if (v33 || *(a1 + 64) != *(a1 + 72))
  {
    if (v29 < 0 || (*(*(*(a1 + 24) + 16) + 4 * v29) & v33) == 0)
    {
      v34 = (v29 == 95) & (v33 >> 7);
    }

    else
    {
      LOBYTE(v34) = 1;
    }

    v35 = *(a1 + 72);
    v36 = memchr(*(a1 + 64), v29, v35 - *(a1 + 64));
    v37 = !v36 || v36 == v35;
    v38 = !v37;
    if ((v34 & 1) == 0 && !v38)
    {
      goto LABEL_62;
    }
  }

  v119 = v12;
  v41 = *(a1 + 88);
  v42 = *(a1 + 96);
  if (v41 == v42)
  {
    goto LABEL_113;
  }

  if (*(a1 + 170) != 1)
  {
    v43 = 1;
    *(&v122.__r_.__value_.__s + 23) = 1;
    LOWORD(v122.__r_.__value_.__l.__data_) = v29;
    v44 = v42 - v41;
    if (v44)
    {
      goto LABEL_72;
    }

LABEL_122:
    v51 = 0;
    if ((v43 & 0x80) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_111;
  }

  *(&__s.__r_.__value_.__s + 23) = 1;
  LOWORD(__s.__r_.__value_.__l.__data_) = v29;
  (*(**(a1 + 32) + 32))(&v122);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v41 = *(a1 + 88);
  v43 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  v44 = *(a1 + 96) - v41;
  if (!v44)
  {
    goto LABEL_122;
  }

LABEL_72:
  v112 = v11;
  v115 = v2;
  v45 = 0xAAAAAAAAAAAAAAABLL * (v44 >> 4);
  v110 = v43;
  if ((v43 & 0x80u) == 0)
  {
    v46 = &v122;
  }

  else
  {
    v46 = v122.__r_.__value_.__r.__words[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v47 = v43;
  }

  else
  {
    v47 = v122.__r_.__value_.__l.__size_;
  }

  if (v45 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * (v44 >> 4);
  }

  v49 = (v41 + 47);
  v50 = 1;
  v51 = 1;
  while (1)
  {
    v52 = *(v49 - 24);
    v53 = v52 >= 0 ? (v49 - 47) : *(v49 - 47);
    v54 = v52 >= 0 ? *(v49 - 24) : *(v49 - 39);
    v55 = v47 >= v54 ? v54 : v47;
    v56 = memcmp(v53, v46, v55);
    if (v56)
    {
      if ((v56 & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if (v54 > v47)
    {
      goto LABEL_83;
    }

    v57 = *v49;
    v58 = v57 >= 0 ? (v49 - 23) : *(v49 - 23);
    v59 = v57 >= 0 ? *v49 : *(v49 - 15);
    v60 = v59 >= v47 ? v47 : v59;
    v61 = memcmp(v46, v58, v60);
    if (v61)
    {
      break;
    }

    if (v47 <= v59)
    {
      goto LABEL_108;
    }

LABEL_83:
    v51 = v50++ < v45;
    v49 += 48;
    if (!--v48)
    {
      goto LABEL_109;
    }
  }

  if ((v61 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_108:
  v119 = 1;
LABEL_109:
  v11 = v112;
  v2 = v115;
  if (v110 < 0)
  {
LABEL_110:
    operator delete(v122.__r_.__value_.__l.__data_);
  }

LABEL_111:
  if (v51)
  {
    v12 = v119;
    goto LABEL_63;
  }

LABEL_113:
  if (*(a1 + 136) == *(a1 + 144))
  {
    v12 = v119;
    goto LABEL_199;
  }

  *(&__s.__r_.__value_.__s + 23) = 1;
  LOWORD(__s.__r_.__value_.__l.__data_) = v29;
  (*(**(a1 + 32) + 32))(&v122);
  v62 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v62 = v122.__r_.__value_.__l.__size_;
  }

  if (v62 != 1)
  {
    if (v62 == 12)
    {
      v63 = &v122;
      if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = v122.__r_.__value_.__r.__words[0];
      }

      v63->__r_.__value_.__s.__data_[11] = v63->__r_.__value_.__s.__data_[3];
    }

    else if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
    {
      *v122.__r_.__value_.__l.__data_ = 0;
      v122.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v122.__r_.__value_.__s.__data_[0] = 0;
      *(&v122.__r_.__value_.__s + 23) = 0;
    }
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v76 = *(a1 + 136);
  v77 = *(a1 + 144) - v76;
  if (v77)
  {
    v113 = v11;
    v116 = v2;
    v78 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
    v79 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v122.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v122.__r_.__value_.__l.__size_;
    }

    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &v122;
    }

    else
    {
      v81 = v122.__r_.__value_.__r.__words[0];
    }

    if (v78 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
    }

    v83 = 1;
    v84 = 1;
    do
    {
      v85 = *(v76 + 23);
      v86 = v85;
      if ((v85 & 0x80u) != 0)
      {
        v85 = *(v76 + 8);
      }

      if (v80 == v85)
      {
        v87 = v86 >= 0 ? v76 : *v76;
        if (!memcmp(v81, v87, v80))
        {
          v12 = 1;
          v11 = v113;
          v2 = v116;
          goto LABEL_196;
        }
      }

      v84 = v83++ < v78;
      v76 += 24;
      --v82;
    }

    while (v82);
    v11 = v113;
    v2 = v116;
    v12 = v119;
LABEL_196:
    if (v79 < 0)
    {
LABEL_197:
      operator delete(v122.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v84 = 0;
    v12 = v119;
    if ((*(&v122.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_197;
    }
  }

  if (!v84)
  {
LABEL_199:
    v88 = *(a1 + 160);
    if (v29 < 0 || (*(*(*(a1 + 24) + 16) + 4 * v29) & v88) == 0)
    {
      v89 = (v88 >> 7) & 1;
      if (v29 != 95)
      {
        LOBYTE(v89) = 0;
      }

      v12 |= v89;
      goto LABEL_63;
    }

LABEL_62:
    v12 = 1;
  }

LABEL_63:
  if (*(a1 + 168) == (v12 & 1))
  {
    v39 = 0;
    v40 = -993;
  }

  else
  {
    *(v2 + 16) += v11;
    v39 = *(a1 + 8);
    v40 = -995;
  }

  *v2 = v40;
  *(v2 + 80) = v39;
}

void sub_245061ED4(std::locale *a1)
{
  sub_245061F0C(a1);

  JUMPOUT(0x245D61480);
}

std::locale *sub_245061F0C(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD1C8;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 != v7)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 3));
        }

        v10 = (v8 - 48);
        if (*(v8 - 25) < 0)
        {
          operator delete(*v10);
        }

        v8 = (v8 - 48);
      }

      while (v10 != v7);
      v9 = a1[11].__locale_;
    }

    a1[12].__locale_ = v7;
    operator delete(v9);
  }

  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

uint64_t sub_24506207C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void sub_2450620BC(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_24506214C(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_2450621C0(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_245062224(a1);
    }

    v3 = sub_24505A11C();
    sub_245062224(v3);
  }

  return 0;
}

void sub_245062224(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_245062350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    v13 = sub_24505A11C();
    sub_245062414(v13);
  }

  else
  {
    v4 = v3 + 24 * (v2 - 1);
    if (*(v4 + 16) == 1 && (v6 = v4, v5 = *v4, v7 = *(v6 + 8) - v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (v10 = a2, v11 = memcmp(v5, *(a2 + 16), v7), a2 = v10, !v11))
    {
      *v10 = -994;
      *(v10 + 16) = v8 + v7;
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 0;
      *a2 = -993;
    }

    *(a2 + 80) = v12;
  }
}

void sub_245062414(void *a1)
{
  *a1 = &unk_2857FD2B8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

void *sub_2450624A4(void *result)
{
  *result = &unk_2857FD2B8;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

uint64_t sub_245062518(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_2450625A4(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD228;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x245D61480);
}

std::locale *sub_245062650(std::locale *a1)
{
  a1->__locale_ = &unk_2857FD228;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2857FD2B8;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_2450626DC(uint64_t result, uint64_t a2)
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