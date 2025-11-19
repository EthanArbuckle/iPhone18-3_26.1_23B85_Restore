void cva::Buffer<float>::doResize(uint64_t a1, _DWORD *a2)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a1 + 16;
  if (*a2 > *(a1 + 16) || (a2[1] <= *(a1 + 20) ? (v5 = a2[2] > *(a1 + 24)) : (v5 = 1), v5))
  {
    CVPixelBufferRelease(*(a1 + 48));
    v6 = 4 * *a2;
    v7 = a2[2];
    v8 = (a2[1] * v6 + 63) & 0xFFFFFFC0;
    v9 = *a2;
    *(a1 + 8) = 0;
    *v4 = v9;
    *(v4 + 8) = v7;
    *(a1 + 28) = 4;
    *(a1 + 32) = v6;
    *(a1 + 36) = v8;
    v10 = *(a1 + 24);
    v11 = (*(a1 + 20) * *(a1 + 16));
    AttributeDictionary = cva::createAttributeDictionary(v11, *(a1 + 24), 1278226534, 64, 64, 0, 0, 0, v16[0]);
    v16[0] = 0;
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], v11, v10, 0x4C303066u, AttributeDictionary, v16);
    CFRelease(AttributeDictionary);
    *(a1 + 48) = v16[0];
  }

  else
  {
    v13 = a2[2];
    v14 = *a2;
    *(a1 + 8) = 0;
    *v4 = v14;
    *(a1 + 24) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void cva::Buffer<float>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD5E0;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));

  JUMPOUT(0x245D61480);
}

uint64_t cva::Buffer<float>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD5E0;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

{
  *a1 = &unk_2857FD5E0;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

void cva::Buffer<unsigned short>::doResize(uint64_t a1, _DWORD *a2)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a1 + 16;
  if (*a2 > *(a1 + 16) || (a2[1] <= *(a1 + 20) ? (v5 = a2[2] > *(a1 + 24)) : (v5 = 1), v5))
  {
    CVPixelBufferRelease(*(a1 + 48));
    v6 = 2 * *a2;
    v7 = a2[2];
    v8 = (a2[1] * v6 + 63) & 0xFFFFFFC0;
    v9 = *a2;
    *(a1 + 8) = 0;
    *v4 = v9;
    *(v4 + 8) = v7;
    *(a1 + 28) = 2;
    *(a1 + 32) = v6;
    *(a1 + 36) = v8;
    v10 = *(a1 + 24);
    v11 = (*(a1 + 20) * *(a1 + 16));
    AttributeDictionary = cva::createAttributeDictionary(v11, *(a1 + 24), 2037741158, 64, 64, 0, 0, 0, v16[0]);
    v16[0] = 0;
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], v11, v10, 0x79757666u, AttributeDictionary, v16);
    CFRelease(AttributeDictionary);
    *(a1 + 48) = v16[0];
  }

  else
  {
    v13 = a2[2];
    v14 = *a2;
    *(a1 + 8) = 0;
    *v4 = v14;
    *(a1 + 24) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void cva::Buffer<unsigned short>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD550;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));

  JUMPOUT(0x245D61480);
}

uint64_t cva::Buffer<unsigned short>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD550;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

{
  *a1 = &unk_2857FD550;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

void cva::Buffer<unsigned char>::doResize(uint64_t a1, int *a2)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a1 + 16;
  if (*a2 > *(a1 + 16) || (a2[1] <= *(a1 + 20) ? (v5 = a2[2] > *(a1 + 24)) : (v5 = 1), v5))
  {
    CVPixelBufferRelease(*(a1 + 48));
    v6 = *a2;
    v7 = a2[2];
    v8 = (a2[1] * *a2 + 63) & 0xFFFFFFC0;
    v9 = *a2;
    *(a1 + 8) = 0;
    *v4 = v9;
    *(v4 + 8) = v7;
    *(a1 + 28) = 1;
    *(a1 + 32) = v6;
    *(a1 + 36) = v8;
    v10 = *(a1 + 24);
    v11 = (*(a1 + 20) * *(a1 + 16));
    AttributeDictionary = cva::createAttributeDictionary(v11, *(a1 + 24), 1278226488, 64, 64, 0, 0, 0, v16[0]);
    v16[0] = 0;
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], v11, v10, 0x4C303038u, AttributeDictionary, v16);
    CFRelease(AttributeDictionary);
    *(a1 + 48) = v16[0];
  }

  else
  {
    v13 = a2[2];
    v14 = *a2;
    *(a1 + 8) = 0;
    *v4 = v14;
    *(a1 + 24) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void cva::Buffer<unsigned char>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD5B0;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));

  JUMPOUT(0x245D61480);
}

uint64_t cva::Buffer<unsigned char>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD5B0;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

{
  *a1 = &unk_2857FD5B0;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

void cva::Buffer<unsigned int>::doResize(uint64_t a1, _DWORD *a2)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a1 + 16;
  if (*a2 > *(a1 + 16) || (a2[1] <= *(a1 + 20) ? (v5 = a2[2] > *(a1 + 24)) : (v5 = 1), v5))
  {
    CVPixelBufferRelease(*(a1 + 48));
    v6 = 4 * *a2;
    v7 = a2[2];
    v8 = (a2[1] * v6 + 63) & 0xFFFFFFC0;
    v9 = *a2;
    *(a1 + 8) = 0;
    *v4 = v9;
    *(v4 + 8) = v7;
    *(a1 + 28) = 4;
    *(a1 + 32) = v6;
    *(a1 + 36) = v8;
    v10 = *(a1 + 24);
    v11 = (*(a1 + 20) * *(a1 + 16));
    AttributeDictionary = cva::createAttributeDictionary(v11, *(a1 + 24), 1111970369, 64, 64, 0, 0, 0, v16[0]);
    v16[0] = 0;
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], v11, v10, 0x42475241u, AttributeDictionary, v16);
    CFRelease(AttributeDictionary);
    *(a1 + 48) = v16[0];
  }

  else
  {
    v13 = a2[2];
    v14 = *a2;
    *(a1 + 8) = 0;
    *v4 = v14;
    *(a1 + 24) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void cva::Buffer<unsigned int>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD580;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));

  JUMPOUT(0x245D61480);
}

uint64_t cva::Buffer<unsigned int>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD580;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

{
  *a1 = &unk_2857FD580;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

void cva::Buffer<cva::half>::doResize(uint64_t a1, _DWORD *a2)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4 = a1 + 16;
  if (*a2 > *(a1 + 16) || (a2[1] <= *(a1 + 20) ? (v5 = a2[2] > *(a1 + 24)) : (v5 = 1), v5))
  {
    CVPixelBufferRelease(*(a1 + 48));
    v6 = 2 * *a2;
    v7 = a2[2];
    v8 = (a2[1] * v6 + 63) & 0xFFFFFFC0;
    v9 = *a2;
    *(a1 + 8) = 0;
    *v4 = v9;
    *(v4 + 8) = v7;
    *(a1 + 28) = 2;
    *(a1 + 32) = v6;
    *(a1 + 36) = v8;
    v10 = *(a1 + 24);
    v11 = (*(a1 + 20) * *(a1 + 16));
    AttributeDictionary = cva::createAttributeDictionary(v11, *(a1 + 24), 1278226536, 64, 64, 0, 0, 0, v16[0]);
    v16[0] = 0;
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], v11, v10, 0x4C303068u, AttributeDictionary, v16);
    CFRelease(AttributeDictionary);
    *(a1 + 48) = v16[0];
  }

  else
  {
    v13 = a2[2];
    v14 = *a2;
    *(a1 + 8) = 0;
    *v4 = v14;
    *(a1 + 24) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void cva::Buffer<cva::half>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD610;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));

  JUMPOUT(0x245D61480);
}

uint64_t cva::Buffer<cva::half>::~Buffer(uint64_t a1)
{
  *a1 = &unk_2857FD610;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

{
  *a1 = &unk_2857FD610;
  v2 = *(a1 + 56);
  if (v2)
  {

    MEMORY[0x245D61480](v2, 0xE0C400670D255);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    MEMORY[0x245D61480](v3, 0xE0C400670D255);
  }

  CVPixelBufferRelease(*(a1 + 48));
  return a1;
}

double cva::Buffer<float>::Buffer(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD5E0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD5E0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t cva::Buffer<float>::Buffer(uint64_t a1, _DWORD *a2)
{
  v3 = 4 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5E0;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1278226534, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x4C303066u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

{
  v3 = 4 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5E0;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1278226534, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x4C303066u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

_DWORD *cva::Buffer<float>::defaultStride@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[1];
  v3 = 4 * *result;
  *a2 = 4;
  a2[1] = v3;
  a2[2] = (v2 * v3 + 63) & 0xFFFFFFC0;
  return result;
}

CVPixelBufferRef cva::Buffer<float>::allocate(_DWORD *a1)
{
  v1 = (a1[1] * *a1);
  v2 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v1, v2, 1278226534, 64, 64, 0, 0, 0, v5);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v1, v2, 0x4C303066u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

uint64_t cva::Buffer<float>::Buffer(uint64_t a1, int a2, int a3, unsigned int a4)
{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 4;
  *(a1 + 32) = 4 * a2;
  *(a1 + 36) = (4 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5E0;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1278226534, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x4C303066u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 4;
  *(a1 + 32) = 4 * a2;
  *(a1 + 36) = (4 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5E0;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1278226534, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x4C303066u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

double cva::Buffer<float>::Buffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD5E0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD5E0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

__n128 cva::Buffer<float>::operator=(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 36);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v3;
  LODWORD(v3) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v7;
  *(a2 + 36) = v8;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  result = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::Buffer<float>::Buffer(uint64_t a1, uint64_t a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = 4 * *(a2 + 16);
  v7 = (*(a2 + 20) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5E0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1278226534, 64, 64, 0, 0, 0, v40[0]);
  v40[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303066u, AttributeDictionary, v40);
  CFRelease(AttributeDictionary);
  *(a1 + 48) = v40[0];
  v11 = *(a2 + 48);
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v12 = *(a1 + 48);
    if (v12 && !CVPixelBufferLockBaseAddress(v12, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v14 = *(a1 + 36);
      v15 = *(a2 + 36);
      if (*(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && v14 == v15)
      {
        memcpy(BaseAddress, *(a2 + 40), (*(a2 + 24) * v14));
      }

      else
      {
        v16 = *(a2 + 40);
        if (v16)
        {
          v17 = (v16 + *(a2 + 8));
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = (v16 + *(a2 + 8) + (*(a2 + 24) * v15));
        }

        else
        {
          v18 = 0;
        }

        if (v17 != v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = *(a2 + 16);
          v24 = *(a2 + 20);
          v25 = *(a1 + 16);
          v26 = *(a1 + 20);
          v27 = *(a1 + 28);
          v28 = *(a2 + 28);
          if (BaseAddress)
          {
            v29 = &BaseAddress[*(a1 + 8)];
          }

          else
          {
            v29 = 0;
          }

          v30 = v28;
          v31 = HIDWORD(v28);
          v32 = v27;
          v33 = HIDWORD(v27);
          v34 = -(v23 * v28);
          v35 = -(v25 * v27);
          do
          {
            *v29 = *v17;
            v17 = (v17 + v30);
            if (++v20 == v23)
            {
              v20 = 0;
              v17 = (v17 + v34 + v31);
              v36 = v19 + 1;
              if (v19 + 1 == v24)
              {
                v19 = 0;
              }

              else
              {
                ++v19;
              }

              if (v36 == v24)
              {
                v17 = (v17 + v15 - (v36 * v31));
              }
            }

            v29 += v32;
            if (++v22 == v25)
            {
              v22 = 0;
              v29 += v35 + v33;
              v37 = v21 + 1;
              if (v21 + 1 == v26)
              {
                v21 = 0;
              }

              else
              {
                ++v21;
              }

              if (v37 == v26)
              {
                v29 = &v29[v14 - (v37 * v33)];
              }
            }
          }

          while (v17 != v18);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  pixelBuffer[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  v6 = 4 * *(a2 + 8);
  v7 = (*(a2 + 12) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5E0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1278226534, 64, 64, 0, 0, 0, pixelBuffer[0]);
  pixelBuffer[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303066u, AttributeDictionary, pixelBuffer);
  CFRelease(AttributeDictionary);
  v11 = pixelBuffer[0];
  *(a1 + 48) = pixelBuffer[0];
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v13 = *(a1 + 36);
    v14 = *(a2 + 28);
    if (*(a1 + 28) == *(a2 + 20) && *(a1 + 32) == *(a2 + 24) && v13 == v14)
    {
      memcpy(BaseAddress, *(a2 + 32), (*(a2 + 16) * v13));
    }

    else
    {
      v15 = *(a2 + 32);
      if (v15)
      {
        v16 = (v15 + *a2);
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = (v15 + *a2 + (*(a2 + 16) * v14));
      }

      else
      {
        v17 = 0;
      }

      if (v16 != v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *(a2 + 8);
        v23 = *(a2 + 12);
        v24 = *(a1 + 16);
        v25 = *(a1 + 20);
        v26 = *(a1 + 28);
        v27 = *(a2 + 20);
        if (BaseAddress)
        {
          v28 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v28 = 0;
        }

        v29 = v27;
        v30 = HIDWORD(v27);
        v31 = v26;
        v32 = HIDWORD(v26);
        v33 = -(v22 * v27);
        v34 = -(v24 * v26);
        do
        {
          *v28 = *v16;
          v16 = (v16 + v29);
          if (++v19 == v22)
          {
            v19 = 0;
            v16 = (v16 + v33 + v30);
            v35 = v18 + 1;
            if (v18 + 1 == v23)
            {
              v18 = 0;
            }

            else
            {
              ++v18;
            }

            if (v35 == v23)
            {
              v16 = (v16 + v14 - (v35 * v30));
            }
          }

          v28 += v31;
          if (++v21 == v24)
          {
            v21 = 0;
            v28 += v34 + v32;
            v36 = v20 + 1;
            if (v20 + 1 == v25)
            {
              v20 = 0;
            }

            else
            {
              ++v20;
            }

            if (v36 == v25)
            {
              v28 = &v28[v13 - (v36 * v32)];
            }
          }
        }

        while (v16 != v17);
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return a1;
}

__CVBuffer *cva::Buffer<float>::lock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  result = *(a1 + 48);
  if (result)
  {
    if (CVPixelBufferLockBaseAddress(result, a2))
    {
      return 0;
    }

    else
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      *(a1 + 40) = CVPixelBufferGetBaseAddress(*(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL cva::Buffer<float>::unlock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  v3 = CVPixelBufferUnlockBaseAddress(*(a1 + 48), a2);
  if (!v3)
  {
    *(a1 + 40) = 0;
  }

  return v3 == 0;
}

uint64_t cva::Buffer<float>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v5 = *(a1 + 48);
    if (v5 && !CVPixelBufferLockBaseAddress(v5, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v7 = *(a2 + 40);
      v8 = *(a2 + 36);
      if (v7)
      {
        v9 = (v7 + *(a2 + 8));
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = (v7 + *(a2 + 8) + (*(a2 + 24) * v8));
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = *(a1 + 28);
        v16 = *(a2 + 28);
        v17 = *(a1 + 16);
        v18 = *(a1 + 20);
        v20 = *(a2 + 16);
        v19 = *(a2 + 20);
        v21 = HIDWORD(v16);
        v22 = HIDWORD(v15);
        v23 = *(a1 + 36);
        if (BaseAddress)
        {
          v24 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v24 = 0;
        }

        v25 = v16;
        v26 = v15;
        v27 = -(v20 * v16);
        v28 = -(v17 * v15);
        do
        {
          *v24 = *v9;
          v9 = (v9 + v25);
          if (++v13 == v20)
          {
            v13 = 0;
            v9 = (v9 + v27 + v21);
            v29 = v14 + 1;
            if (v14 + 1 == v19)
            {
              v14 = 0;
            }

            else
            {
              ++v14;
            }

            if (v29 == v19)
            {
              v9 = (v9 + v8 - (v29 * v21));
            }
          }

          v24 += v26;
          if (++v11 == v17)
          {
            v11 = 0;
            v24 += v28 + v22;
            v30 = v12 + 1;
            if (v12 + 1 == v18)
            {
              v12 = 0;
            }

            else
            {
              ++v12;
            }

            if (v30 == v18)
            {
              v24 = &v24[v23 - (v30 * v22)];
            }
          }
        }

        while (v9 != v10);
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  return a1;
}

{
  v3 = *(a1 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v6 = *(a2 + 32);
    v7 = *(a2 + 28);
    if (v6)
    {
      v8 = (v6 + *a2);
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = (v6 + *a2 + (*(a2 + 16) * v7));
    }

    else
    {
      v9 = 0;
    }

    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 28);
      v15 = *(a2 + 20);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v19 = *(a2 + 8);
      v18 = *(a2 + 12);
      v20 = HIDWORD(v15);
      v21 = HIDWORD(v14);
      v22 = *(a1 + 36);
      if (BaseAddress)
      {
        v23 = &BaseAddress[*(a1 + 8)];
      }

      else
      {
        v23 = 0;
      }

      v24 = v15;
      v25 = v14;
      v26 = -(v19 * v15);
      v27 = -(v16 * v14);
      do
      {
        *v23 = *v8;
        v8 = (v8 + v24);
        if (++v12 == v19)
        {
          v12 = 0;
          v8 = (v8 + v26 + v20);
          v28 = v13 + 1;
          if (v13 + 1 == v18)
          {
            v13 = 0;
          }

          else
          {
            ++v13;
          }

          if (v28 == v18)
          {
            v8 = (v8 + v7 - (v28 * v20));
          }
        }

        v23 += v25;
        if (++v10 == v16)
        {
          v10 = 0;
          v23 += v27 + v21;
          v29 = v11 + 1;
          if (v11 + 1 == v17)
          {
            v11 = 0;
          }

          else
          {
            ++v11;
          }

          if (v29 == v17)
          {
            v23 = &v23[v22 - (v29 * v21)];
          }
        }
      }

      while (v8 != v9);
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t cva::Buffer<float>::resize(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {

    MEMORY[0x245D61480](v4, 0xE0C400670D255);
  }

  a1[7] = 0;
  v5 = a1[8];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[8] = 0;
  v6 = *(*a1 + 16);

  return v6(a1, a2);
}

uint64_t cva::Buffer<float>::resize(void *a1, int a2, int a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = a1[7];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[7] = 0;
  v6 = a1[8];
  if (v6)
  {

    MEMORY[0x245D61480](v6, 0xE0C400670D255);
  }

  a1[8] = 0;
  return (*(*a1 + 16))(a1, v8);
}

CVPixelBufferRef cva::Buffer<float>::allocate(_DWORD *a1, OSType a2)
{
  v3 = (a1[1] * *a1);
  v4 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v3, v4, a2, 64, 64, 0, 0, 0, v7);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v4, a2, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

double cva::Buffer<unsigned short>::Buffer(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD550;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD550;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t cva::Buffer<unsigned short>::Buffer(uint64_t a1, _DWORD *a2)
{
  v3 = 2 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD550;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 2037741158, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x79757666u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

{
  v3 = 2 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD550;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 2037741158, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x79757666u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

_DWORD *cva::Buffer<unsigned short>::defaultStride@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[1];
  v3 = 2 * *result;
  *a2 = 2;
  a2[1] = v3;
  a2[2] = (v2 * v3 + 63) & 0xFFFFFFC0;
  return result;
}

CVPixelBufferRef cva::Buffer<unsigned short>::allocate(_DWORD *a1)
{
  v1 = (a1[1] * *a1);
  v2 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v1, v2, 2037741158, 64, 64, 0, 0, 0, v5);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v1, v2, 0x79757666u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

uint64_t cva::Buffer<unsigned short>::Buffer(uint64_t a1, int a2, int a3, unsigned int a4)
{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2;
  *(a1 + 32) = 2 * a2;
  *(a1 + 36) = (2 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD550;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 2037741158, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x79757666u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2;
  *(a1 + 32) = 2 * a2;
  *(a1 + 36) = (2 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD550;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 2037741158, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x79757666u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

double cva::Buffer<unsigned short>::Buffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD550;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD550;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

__n128 cva::Buffer<unsigned short>::operator=(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 36);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v3;
  LODWORD(v3) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v7;
  *(a2 + 36) = v8;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  result = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::Buffer<unsigned short>::Buffer(uint64_t a1, uint64_t a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = 2 * *(a2 + 16);
  v7 = (*(a2 + 20) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD550;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 2037741158, 64, 64, 0, 0, 0, v40[0]);
  v40[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x79757666u, AttributeDictionary, v40);
  CFRelease(AttributeDictionary);
  *(a1 + 48) = v40[0];
  v11 = *(a2 + 48);
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v12 = *(a1 + 48);
    if (v12 && !CVPixelBufferLockBaseAddress(v12, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v14 = *(a1 + 36);
      v15 = *(a2 + 36);
      if (*(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && v14 == v15)
      {
        memcpy(BaseAddress, *(a2 + 40), (*(a2 + 24) * v14));
      }

      else
      {
        v16 = *(a2 + 40);
        if (v16)
        {
          v17 = (v16 + *(a2 + 8));
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = (v16 + *(a2 + 8) + (*(a2 + 24) * v15));
        }

        else
        {
          v18 = 0;
        }

        if (v17 != v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = *(a2 + 16);
          v24 = *(a2 + 20);
          v25 = *(a1 + 16);
          v26 = *(a1 + 20);
          v27 = *(a1 + 28);
          v28 = *(a2 + 28);
          if (BaseAddress)
          {
            v29 = &BaseAddress[*(a1 + 8)];
          }

          else
          {
            v29 = 0;
          }

          v30 = v28;
          v31 = HIDWORD(v28);
          v32 = v27;
          v33 = HIDWORD(v27);
          v34 = -(v23 * v28);
          v35 = -(v25 * v27);
          do
          {
            *v29 = *v17;
            v17 = (v17 + v30);
            if (++v20 == v23)
            {
              v20 = 0;
              v17 = (v17 + v34 + v31);
              v36 = v19 + 1;
              if (v19 + 1 == v24)
              {
                v19 = 0;
              }

              else
              {
                ++v19;
              }

              if (v36 == v24)
              {
                v17 = (v17 + v15 - (v36 * v31));
              }
            }

            v29 += v32;
            if (++v22 == v25)
            {
              v22 = 0;
              v29 += v35 + v33;
              v37 = v21 + 1;
              if (v21 + 1 == v26)
              {
                v21 = 0;
              }

              else
              {
                ++v21;
              }

              if (v37 == v26)
              {
                v29 = &v29[v14 - (v37 * v33)];
              }
            }
          }

          while (v17 != v18);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  pixelBuffer[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  v6 = 2 * *(a2 + 8);
  v7 = (*(a2 + 12) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD550;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 2037741158, 64, 64, 0, 0, 0, pixelBuffer[0]);
  pixelBuffer[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x79757666u, AttributeDictionary, pixelBuffer);
  CFRelease(AttributeDictionary);
  v11 = pixelBuffer[0];
  *(a1 + 48) = pixelBuffer[0];
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v13 = *(a1 + 36);
    v14 = *(a2 + 28);
    if (*(a1 + 28) == *(a2 + 20) && *(a1 + 32) == *(a2 + 24) && v13 == v14)
    {
      memcpy(BaseAddress, *(a2 + 32), (*(a2 + 16) * v13));
    }

    else
    {
      v15 = *(a2 + 32);
      if (v15)
      {
        v16 = (v15 + *a2);
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = (v15 + *a2 + (*(a2 + 16) * v14));
      }

      else
      {
        v17 = 0;
      }

      if (v16 != v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *(a2 + 8);
        v23 = *(a2 + 12);
        v24 = *(a1 + 16);
        v25 = *(a1 + 20);
        v26 = *(a1 + 28);
        v27 = *(a2 + 20);
        if (BaseAddress)
        {
          v28 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v28 = 0;
        }

        v29 = v27;
        v30 = HIDWORD(v27);
        v31 = v26;
        v32 = HIDWORD(v26);
        v33 = -(v22 * v27);
        v34 = -(v24 * v26);
        do
        {
          *v28 = *v16;
          v16 = (v16 + v29);
          if (++v19 == v22)
          {
            v19 = 0;
            v16 = (v16 + v33 + v30);
            v35 = v18 + 1;
            if (v18 + 1 == v23)
            {
              v18 = 0;
            }

            else
            {
              ++v18;
            }

            if (v35 == v23)
            {
              v16 = (v16 + v14 - (v35 * v30));
            }
          }

          v28 += v31;
          if (++v21 == v24)
          {
            v21 = 0;
            v28 += v34 + v32;
            v36 = v20 + 1;
            if (v20 + 1 == v25)
            {
              v20 = 0;
            }

            else
            {
              ++v20;
            }

            if (v36 == v25)
            {
              v28 = &v28[v13 - (v36 * v32)];
            }
          }
        }

        while (v16 != v17);
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return a1;
}

__CVBuffer *cva::Buffer<unsigned short>::lock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  result = *(a1 + 48);
  if (result)
  {
    if (CVPixelBufferLockBaseAddress(result, a2))
    {
      return 0;
    }

    else
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      *(a1 + 40) = CVPixelBufferGetBaseAddress(*(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL cva::Buffer<unsigned short>::unlock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  v3 = CVPixelBufferUnlockBaseAddress(*(a1 + 48), a2);
  if (!v3)
  {
    *(a1 + 40) = 0;
  }

  return v3 == 0;
}

uint64_t cva::Buffer<unsigned short>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v5 = *(a1 + 48);
    if (v5 && !CVPixelBufferLockBaseAddress(v5, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v7 = *(a2 + 40);
      v8 = *(a2 + 36);
      if (v7)
      {
        v9 = (v7 + *(a2 + 8));
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = (v7 + *(a2 + 8) + (*(a2 + 24) * v8));
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = *(a1 + 28);
        v16 = *(a2 + 28);
        v17 = *(a1 + 16);
        v18 = *(a1 + 20);
        v20 = *(a2 + 16);
        v19 = *(a2 + 20);
        v21 = HIDWORD(v16);
        v22 = HIDWORD(v15);
        v23 = *(a1 + 36);
        if (BaseAddress)
        {
          v24 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v24 = 0;
        }

        v25 = v16;
        v26 = v15;
        v27 = -(v20 * v16);
        v28 = -(v17 * v15);
        do
        {
          *v24 = *v9;
          v9 = (v9 + v25);
          if (++v13 == v20)
          {
            v13 = 0;
            v9 = (v9 + v27 + v21);
            v29 = v14 + 1;
            if (v14 + 1 == v19)
            {
              v14 = 0;
            }

            else
            {
              ++v14;
            }

            if (v29 == v19)
            {
              v9 = (v9 + v8 - (v29 * v21));
            }
          }

          v24 += v26;
          if (++v11 == v17)
          {
            v11 = 0;
            v24 += v28 + v22;
            v30 = v12 + 1;
            if (v12 + 1 == v18)
            {
              v12 = 0;
            }

            else
            {
              ++v12;
            }

            if (v30 == v18)
            {
              v24 = &v24[v23 - (v30 * v22)];
            }
          }
        }

        while (v9 != v10);
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  return a1;
}

{
  v3 = *(a1 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v6 = *(a2 + 32);
    v7 = *(a2 + 28);
    if (v6)
    {
      v8 = (v6 + *a2);
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = (v6 + *a2 + (*(a2 + 16) * v7));
    }

    else
    {
      v9 = 0;
    }

    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 28);
      v15 = *(a2 + 20);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v19 = *(a2 + 8);
      v18 = *(a2 + 12);
      v20 = HIDWORD(v15);
      v21 = HIDWORD(v14);
      v22 = *(a1 + 36);
      if (BaseAddress)
      {
        v23 = &BaseAddress[*(a1 + 8)];
      }

      else
      {
        v23 = 0;
      }

      v24 = v15;
      v25 = v14;
      v26 = -(v19 * v15);
      v27 = -(v16 * v14);
      do
      {
        *v23 = *v8;
        v8 = (v8 + v24);
        if (++v12 == v19)
        {
          v12 = 0;
          v8 = (v8 + v26 + v20);
          v28 = v13 + 1;
          if (v13 + 1 == v18)
          {
            v13 = 0;
          }

          else
          {
            ++v13;
          }

          if (v28 == v18)
          {
            v8 = (v8 + v7 - (v28 * v20));
          }
        }

        v23 += v25;
        if (++v10 == v16)
        {
          v10 = 0;
          v23 += v27 + v21;
          v29 = v11 + 1;
          if (v11 + 1 == v17)
          {
            v11 = 0;
          }

          else
          {
            ++v11;
          }

          if (v29 == v17)
          {
            v23 = &v23[v22 - (v29 * v21)];
          }
        }
      }

      while (v8 != v9);
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t cva::Buffer<unsigned short>::resize(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {

    MEMORY[0x245D61480](v4, 0xE0C400670D255);
  }

  a1[7] = 0;
  v5 = a1[8];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[8] = 0;
  v6 = *(*a1 + 16);

  return v6(a1, a2);
}

uint64_t cva::Buffer<unsigned short>::resize(void *a1, int a2, int a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = a1[7];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[7] = 0;
  v6 = a1[8];
  if (v6)
  {

    MEMORY[0x245D61480](v6, 0xE0C400670D255);
  }

  a1[8] = 0;
  return (*(*a1 + 16))(a1, v8);
}

CVPixelBufferRef cva::Buffer<unsigned short>::allocate(_DWORD *a1, OSType a2)
{
  v3 = (a1[1] * *a1);
  v4 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v3, v4, a2, 64, 64, 0, 0, 0, v7);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v4, a2, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

double cva::Buffer<unsigned char>::Buffer(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD5B0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD5B0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t cva::Buffer<unsigned char>::Buffer(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 1;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5B0;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1278226488, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x4C303038u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

{
  v3 = *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 1;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5B0;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1278226488, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x4C303038u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

int *cva::Buffer<unsigned char>::defaultStride@<X0>(int *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = 1;
  a2[1] = v2;
  a2[2] = (v3 * v2 + 63) & 0xFFFFFFC0;
  return result;
}

CVPixelBufferRef cva::Buffer<unsigned char>::allocate(_DWORD *a1)
{
  v1 = (a1[1] * *a1);
  v2 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v1, v2, 1278226488, 64, 64, 0, 0, 0, v5);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v1, v2, 0x4C303038u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

uint64_t cva::Buffer<unsigned char>::Buffer(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v6 = (a3 * a2);
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1;
  *(a1 + 32) = a2;
  *(a1 + 36) = (v6 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5B0;
  *(a1 + 8) = 0;
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1278226488, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x4C303038u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

{
  v6 = (a3 * a2);
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1;
  *(a1 + 32) = a2;
  *(a1 + 36) = (v6 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5B0;
  *(a1 + 8) = 0;
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1278226488, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x4C303038u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

double cva::Buffer<unsigned char>::Buffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD5B0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD5B0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

__n128 cva::Buffer<unsigned char>::operator=(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 36);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v3;
  LODWORD(v3) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v7;
  *(a2 + 36) = v8;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  result = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::Buffer<unsigned char>::Buffer(uint64_t a1, uint64_t a2)
{
  v39[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 16);
  v7 = (*(a2 + 20) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 1;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5B0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1278226488, 64, 64, 0, 0, 0, v39[0]);
  v39[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303038u, AttributeDictionary, v39);
  CFRelease(AttributeDictionary);
  *(a1 + 48) = v39[0];
  v11 = *(a2 + 48);
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v12 = *(a1 + 48);
    if (v12 && !CVPixelBufferLockBaseAddress(v12, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v14 = *(a1 + 28);
      v15 = *(a1 + 32);
      v16 = *(a1 + 36);
      v17 = *(a2 + 28);
      v18 = *(a2 + 32);
      v19 = *(a2 + 36);
      if (__PAIR64__(v15, v14) == __PAIR64__(v18, v17) && v16 == v19)
      {
        memcpy(BaseAddress, *(a2 + 40), (*(a2 + 24) * v16));
      }

      else
      {
        v20 = *(a2 + 40);
        v21 = *(a2 + 8);
        v22 = v20 + v21;
        v23 = v20 == 0;
        if (v20)
        {
          v24 = (v20 + v21);
        }

        else
        {
          v24 = 0;
        }

        v25 = (v22 + (v19 * *(a2 + 24)));
        if (v23)
        {
          v25 = 0;
        }

        if (BaseAddress)
        {
          v26 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v26 = 0;
        }

        if (v24 != v25)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = *(a2 + 16);
          v32 = *(a2 + 20);
          v33 = *(a1 + 16);
          v34 = *(a1 + 20);
          do
          {
            *v26 = *v24;
            v24 += v17;
            if (++v27 == v31)
            {
              v27 = 0;
              v24 = &v24[v18 - (v17 * v31)];
              v35 = v28 + 1;
              if (v28 + 1 == v32)
              {
                v28 = 0;
              }

              else
              {
                ++v28;
              }

              if (v35 == v32)
              {
                v24 = &v24[v19 - (v18 * v35)];
              }
            }

            v26 += v14;
            if (++v29 == v33)
            {
              v29 = 0;
              v26 = &v26[v15 - (v14 * v33)];
              v36 = v30 + 1;
              if (v30 + 1 == v34)
              {
                v30 = 0;
              }

              else
              {
                ++v30;
              }

              if (v36 == v34)
              {
                v26 = &v26[v16 - (v15 * v36)];
              }
            }
          }

          while (v24 != v25);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  pixelBuffer[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 8);
  v7 = (*(a2 + 12) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 1;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD5B0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1278226488, 64, 64, 0, 0, 0, pixelBuffer[0]);
  pixelBuffer[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303038u, AttributeDictionary, pixelBuffer);
  CFRelease(AttributeDictionary);
  v11 = pixelBuffer[0];
  *(a1 + 48) = pixelBuffer[0];
  if (!v11 || CVPixelBufferLockBaseAddress(v11, 0))
  {
    goto LABEL_32;
  }

  CVPixelBufferGetWidth(*(a1 + 48));
  CVPixelBufferGetHeight(*(a1 + 48));
  CVPixelBufferGetBytesPerRow(*(a1 + 48));
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
  *(a1 + 40) = BaseAddress;
  v13 = *(a1 + 28);
  v14 = *(a1 + 32);
  v15 = *(a1 + 36);
  v16 = *(a2 + 20);
  v17 = *(a2 + 24);
  v18 = *(a2 + 28);
  if (__PAIR64__(v14, v13) == __PAIR64__(v17, v16) && v15 == v18)
  {
    memcpy(BaseAddress, *(a2 + 32), (*(a2 + 16) * v15));
    goto LABEL_30;
  }

  v19 = *(a2 + 32);
  v20 = v19 == 0;
  if (v19)
  {
    v21 = (v19 + *a2);
  }

  else
  {
    v21 = 0;
  }

  v22 = (v19 + *a2 + (v18 * *(a2 + 16)));
  if (v20)
  {
    v22 = 0;
  }

  if (!BaseAddress)
  {
    v23 = 0;
    if (v21 == v22)
    {
      goto LABEL_30;
    }

LABEL_15:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = *(a2 + 8);
    v29 = *(a2 + 12);
    v30 = *(a1 + 16);
    v31 = *(a1 + 20);
    do
    {
      *v23 = *v21;
      v21 += v16;
      if (++v24 == v28)
      {
        v24 = 0;
        v21 = &v21[v17 - (v16 * v28)];
        v32 = v25 + 1;
        if (v25 + 1 == v29)
        {
          v25 = 0;
        }

        else
        {
          ++v25;
        }

        if (v32 == v29)
        {
          v21 = &v21[v18 - (v17 * v32)];
        }
      }

      v23 += v13;
      if (++v26 == v30)
      {
        v26 = 0;
        v23 = &v23[v14 - (v13 * v30)];
        v33 = v27 + 1;
        if (v27 + 1 == v31)
        {
          v27 = 0;
        }

        else
        {
          ++v27;
        }

        if (v33 == v31)
        {
          v23 = &v23[v15 - (v14 * v33)];
        }
      }
    }

    while (v21 != v22);
    goto LABEL_30;
  }

  v23 = &BaseAddress[*(a1 + 8)];
  if (v21 != v22)
  {
    goto LABEL_15;
  }

LABEL_30:
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
  {
    *(a1 + 40) = 0;
  }

LABEL_32:
  v34 = *MEMORY[0x277D85DE8];
  return a1;
}

__CVBuffer *cva::Buffer<unsigned char>::lock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  result = *(a1 + 48);
  if (result)
  {
    if (CVPixelBufferLockBaseAddress(result, a2))
    {
      return 0;
    }

    else
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      *(a1 + 40) = CVPixelBufferGetBaseAddress(*(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL cva::Buffer<unsigned char>::unlock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  v3 = CVPixelBufferUnlockBaseAddress(*(a1 + 48), a2);
  if (!v3)
  {
    *(a1 + 40) = 0;
  }

  return v3 == 0;
}

uint64_t cva::Buffer<unsigned char>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v5 = *(a1 + 48);
    if (v5 && !CVPixelBufferLockBaseAddress(v5, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v7 = *(a2 + 40);
      v8 = *(a2 + 36);
      if (v7)
      {
        v9 = (v7 + *(a2 + 8));
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = (v7 + *(a2 + 8) + (*(a2 + 24) * v8));
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = *(a1 + 16);
        v16 = *(a1 + 20);
        v17 = *(a2 + 16);
        v18 = *(a2 + 20);
        v19 = *(a2 + 28);
        v20 = *(a1 + 36);
        v21 = *(a1 + 28);
        if (BaseAddress)
        {
          v22 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v22 = 0;
        }

        v23 = v19;
        v24 = HIDWORD(v19);
        v25 = v21;
        v26 = HIDWORD(v21);
        v27 = -(v17 * v19);
        v28 = -(v15 * v21);
        do
        {
          v29 = &v9[v23];
          v30 = v14 + 1;
          v31 = &v9[v23 + v27 + v24];
          *v22 = *v9;
          v9 = &v31[v8 - (v18 * v24)];
          if (v13 + 1 == v18)
          {
            v32 = 0;
          }

          else
          {
            v32 = v13 + 1;
          }

          if (v13 + 1 != v18)
          {
            v9 = v31;
          }

          if (v30 == v17)
          {
            v13 = v32;
            v14 = 0;
          }

          else
          {
            ++v14;
          }

          if (v30 != v17)
          {
            v9 = v29;
          }

          v22 += v25;
          v33 = v12 + 1;
          v34 = &v22[v28 + v26];
          if (v11 + 1 == v16)
          {
            v35 = 0;
          }

          else
          {
            v35 = v11 + 1;
          }

          if (v11 + 1 == v16)
          {
            v34 = &v34[v20 - (v16 * v26)];
          }

          if (v33 == v15)
          {
            v11 = v35;
            v12 = 0;
          }

          else
          {
            ++v12;
          }

          if (v33 == v15)
          {
            v22 = v34;
          }
        }

        while (v9 != v10);
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  return a1;
}

{
  v3 = *(a1 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v6 = *(a2 + 32);
    v7 = *(a2 + 28);
    if (v6)
    {
      v8 = (v6 + *a2);
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = (v6 + *a2 + (*(a2 + 16) * v7));
    }

    else
    {
      v9 = 0;
    }

    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 16);
      v15 = *(a1 + 20);
      v16 = *(a2 + 8);
      v17 = *(a2 + 12);
      v18 = *(a2 + 20);
      v19 = *(a1 + 36);
      v20 = *(a1 + 28);
      if (BaseAddress)
      {
        v21 = &BaseAddress[*(a1 + 8)];
      }

      else
      {
        v21 = 0;
      }

      v22 = v18;
      v23 = HIDWORD(v18);
      v24 = v20;
      v25 = HIDWORD(v20);
      v26 = -(v16 * v18);
      v27 = -(v14 * v20);
      do
      {
        v28 = &v8[v22];
        v29 = v13 + 1;
        v30 = &v8[v22 + v26 + v23];
        *v21 = *v8;
        v8 = &v30[v7 - (v17 * v23)];
        if (v12 + 1 == v17)
        {
          v31 = 0;
        }

        else
        {
          v31 = v12 + 1;
        }

        if (v12 + 1 != v17)
        {
          v8 = v30;
        }

        if (v29 == v16)
        {
          v12 = v31;
          v13 = 0;
        }

        else
        {
          ++v13;
        }

        if (v29 != v16)
        {
          v8 = v28;
        }

        v21 += v24;
        v32 = v11 + 1;
        v33 = &v21[v27 + v25];
        if (v10 + 1 == v15)
        {
          v34 = 0;
        }

        else
        {
          v34 = v10 + 1;
        }

        if (v10 + 1 == v15)
        {
          v33 = &v33[v19 - (v15 * v25)];
        }

        if (v32 == v14)
        {
          v10 = v34;
          v11 = 0;
        }

        else
        {
          ++v11;
        }

        if (v32 == v14)
        {
          v21 = v33;
        }
      }

      while (v8 != v9);
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t cva::Buffer<unsigned char>::resize(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {

    MEMORY[0x245D61480](v4, 0xE0C400670D255);
  }

  a1[7] = 0;
  v5 = a1[8];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[8] = 0;
  v6 = *(*a1 + 16);

  return v6(a1, a2);
}

uint64_t cva::Buffer<unsigned char>::resize(void *a1, int a2, int a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = a1[7];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[7] = 0;
  v6 = a1[8];
  if (v6)
  {

    MEMORY[0x245D61480](v6, 0xE0C400670D255);
  }

  a1[8] = 0;
  return (*(*a1 + 16))(a1, v8);
}

CVPixelBufferRef cva::Buffer<unsigned char>::allocate(_DWORD *a1, OSType a2)
{
  v3 = (a1[1] * *a1);
  v4 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v3, v4, a2, 64, 64, 0, 0, 0, v7);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v4, a2, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

double cva::Buffer<unsigned int>::Buffer(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD580;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD580;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t cva::Buffer<unsigned int>::Buffer(uint64_t a1, _DWORD *a2)
{
  v3 = 4 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD580;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1111970369, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x42475241u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

{
  v3 = 4 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD580;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1111970369, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x42475241u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

_DWORD *cva::Buffer<unsigned int>::defaultStride@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[1];
  v3 = 4 * *result;
  *a2 = 4;
  a2[1] = v3;
  a2[2] = (v2 * v3 + 63) & 0xFFFFFFC0;
  return result;
}

CVPixelBufferRef cva::Buffer<unsigned int>::allocate(_DWORD *a1)
{
  v1 = (a1[1] * *a1);
  v2 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v1, v2, 1111970369, 64, 64, 0, 0, 0, v5);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v1, v2, 0x42475241u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

uint64_t cva::Buffer<unsigned int>::Buffer(uint64_t a1, int a2, int a3, unsigned int a4)
{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 4;
  *(a1 + 32) = 4 * a2;
  *(a1 + 36) = (4 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD580;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1111970369, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x42475241u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 4;
  *(a1 + 32) = 4 * a2;
  *(a1 + 36) = (4 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD580;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1111970369, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x42475241u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

double cva::Buffer<unsigned int>::Buffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD580;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD580;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

__n128 cva::Buffer<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 36);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v3;
  LODWORD(v3) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v7;
  *(a2 + 36) = v8;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  result = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::Buffer<unsigned int>::Buffer(uint64_t a1, uint64_t a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = 4 * *(a2 + 16);
  v7 = (*(a2 + 20) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD580;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1111970369, 64, 64, 0, 0, 0, v40[0]);
  v40[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x42475241u, AttributeDictionary, v40);
  CFRelease(AttributeDictionary);
  *(a1 + 48) = v40[0];
  v11 = *(a2 + 48);
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v12 = *(a1 + 48);
    if (v12 && !CVPixelBufferLockBaseAddress(v12, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v14 = *(a1 + 36);
      v15 = *(a2 + 36);
      if (*(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && v14 == v15)
      {
        memcpy(BaseAddress, *(a2 + 40), (*(a2 + 24) * v14));
      }

      else
      {
        v16 = *(a2 + 40);
        if (v16)
        {
          v17 = (v16 + *(a2 + 8));
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = (v16 + *(a2 + 8) + (*(a2 + 24) * v15));
        }

        else
        {
          v18 = 0;
        }

        if (v17 != v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = *(a2 + 16);
          v24 = *(a2 + 20);
          v25 = *(a1 + 16);
          v26 = *(a1 + 20);
          v27 = *(a1 + 28);
          v28 = *(a2 + 28);
          if (BaseAddress)
          {
            v29 = &BaseAddress[*(a1 + 8)];
          }

          else
          {
            v29 = 0;
          }

          v30 = v28;
          v31 = HIDWORD(v28);
          v32 = v27;
          v33 = HIDWORD(v27);
          v34 = -(v23 * v28);
          v35 = -(v25 * v27);
          do
          {
            *v29 = *v17;
            v17 = (v17 + v30);
            if (++v20 == v23)
            {
              v20 = 0;
              v17 = (v17 + v34 + v31);
              v36 = v19 + 1;
              if (v19 + 1 == v24)
              {
                v19 = 0;
              }

              else
              {
                ++v19;
              }

              if (v36 == v24)
              {
                v17 = (v17 + v15 - (v36 * v31));
              }
            }

            v29 += v32;
            if (++v22 == v25)
            {
              v22 = 0;
              v29 += v35 + v33;
              v37 = v21 + 1;
              if (v21 + 1 == v26)
              {
                v21 = 0;
              }

              else
              {
                ++v21;
              }

              if (v37 == v26)
              {
                v29 = &v29[v14 - (v37 * v33)];
              }
            }
          }

          while (v17 != v18);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  pixelBuffer[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  v6 = 4 * *(a2 + 8);
  v7 = (*(a2 + 12) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 4;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD580;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1111970369, 64, 64, 0, 0, 0, pixelBuffer[0]);
  pixelBuffer[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x42475241u, AttributeDictionary, pixelBuffer);
  CFRelease(AttributeDictionary);
  v11 = pixelBuffer[0];
  *(a1 + 48) = pixelBuffer[0];
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v13 = *(a1 + 36);
    v14 = *(a2 + 28);
    if (*(a1 + 28) == *(a2 + 20) && *(a1 + 32) == *(a2 + 24) && v13 == v14)
    {
      memcpy(BaseAddress, *(a2 + 32), (*(a2 + 16) * v13));
    }

    else
    {
      v15 = *(a2 + 32);
      if (v15)
      {
        v16 = (v15 + *a2);
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = (v15 + *a2 + (*(a2 + 16) * v14));
      }

      else
      {
        v17 = 0;
      }

      if (v16 != v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *(a2 + 8);
        v23 = *(a2 + 12);
        v24 = *(a1 + 16);
        v25 = *(a1 + 20);
        v26 = *(a1 + 28);
        v27 = *(a2 + 20);
        if (BaseAddress)
        {
          v28 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v28 = 0;
        }

        v29 = v27;
        v30 = HIDWORD(v27);
        v31 = v26;
        v32 = HIDWORD(v26);
        v33 = -(v22 * v27);
        v34 = -(v24 * v26);
        do
        {
          *v28 = *v16;
          v16 = (v16 + v29);
          if (++v19 == v22)
          {
            v19 = 0;
            v16 = (v16 + v33 + v30);
            v35 = v18 + 1;
            if (v18 + 1 == v23)
            {
              v18 = 0;
            }

            else
            {
              ++v18;
            }

            if (v35 == v23)
            {
              v16 = (v16 + v14 - (v35 * v30));
            }
          }

          v28 += v31;
          if (++v21 == v24)
          {
            v21 = 0;
            v28 += v34 + v32;
            v36 = v20 + 1;
            if (v20 + 1 == v25)
            {
              v20 = 0;
            }

            else
            {
              ++v20;
            }

            if (v36 == v25)
            {
              v28 = &v28[v13 - (v36 * v32)];
            }
          }
        }

        while (v16 != v17);
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return a1;
}

__CVBuffer *cva::Buffer<unsigned int>::lock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  result = *(a1 + 48);
  if (result)
  {
    if (CVPixelBufferLockBaseAddress(result, a2))
    {
      return 0;
    }

    else
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      *(a1 + 40) = CVPixelBufferGetBaseAddress(*(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL cva::Buffer<unsigned int>::unlock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  v3 = CVPixelBufferUnlockBaseAddress(*(a1 + 48), a2);
  if (!v3)
  {
    *(a1 + 40) = 0;
  }

  return v3 == 0;
}

uint64_t cva::Buffer<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v5 = *(a1 + 48);
    if (v5 && !CVPixelBufferLockBaseAddress(v5, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v7 = *(a2 + 40);
      v8 = *(a2 + 36);
      if (v7)
      {
        v9 = (v7 + *(a2 + 8));
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = (v7 + *(a2 + 8) + (*(a2 + 24) * v8));
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = *(a1 + 28);
        v16 = *(a2 + 28);
        v17 = *(a1 + 16);
        v18 = *(a1 + 20);
        v20 = *(a2 + 16);
        v19 = *(a2 + 20);
        v21 = HIDWORD(v16);
        v22 = HIDWORD(v15);
        v23 = *(a1 + 36);
        if (BaseAddress)
        {
          v24 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v24 = 0;
        }

        v25 = v16;
        v26 = v15;
        v27 = -(v20 * v16);
        v28 = -(v17 * v15);
        do
        {
          *v24 = *v9;
          v9 = (v9 + v25);
          if (++v13 == v20)
          {
            v13 = 0;
            v9 = (v9 + v27 + v21);
            v29 = v14 + 1;
            if (v14 + 1 == v19)
            {
              v14 = 0;
            }

            else
            {
              ++v14;
            }

            if (v29 == v19)
            {
              v9 = (v9 + v8 - (v29 * v21));
            }
          }

          v24 += v26;
          if (++v11 == v17)
          {
            v11 = 0;
            v24 += v28 + v22;
            v30 = v12 + 1;
            if (v12 + 1 == v18)
            {
              v12 = 0;
            }

            else
            {
              ++v12;
            }

            if (v30 == v18)
            {
              v24 = &v24[v23 - (v30 * v22)];
            }
          }
        }

        while (v9 != v10);
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  return a1;
}

{
  v3 = *(a1 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v6 = *(a2 + 32);
    v7 = *(a2 + 28);
    if (v6)
    {
      v8 = (v6 + *a2);
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = (v6 + *a2 + (*(a2 + 16) * v7));
    }

    else
    {
      v9 = 0;
    }

    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 28);
      v15 = *(a2 + 20);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v19 = *(a2 + 8);
      v18 = *(a2 + 12);
      v20 = HIDWORD(v15);
      v21 = HIDWORD(v14);
      v22 = *(a1 + 36);
      if (BaseAddress)
      {
        v23 = &BaseAddress[*(a1 + 8)];
      }

      else
      {
        v23 = 0;
      }

      v24 = v15;
      v25 = v14;
      v26 = -(v19 * v15);
      v27 = -(v16 * v14);
      do
      {
        *v23 = *v8;
        v8 = (v8 + v24);
        if (++v12 == v19)
        {
          v12 = 0;
          v8 = (v8 + v26 + v20);
          v28 = v13 + 1;
          if (v13 + 1 == v18)
          {
            v13 = 0;
          }

          else
          {
            ++v13;
          }

          if (v28 == v18)
          {
            v8 = (v8 + v7 - (v28 * v20));
          }
        }

        v23 += v25;
        if (++v10 == v16)
        {
          v10 = 0;
          v23 += v27 + v21;
          v29 = v11 + 1;
          if (v11 + 1 == v17)
          {
            v11 = 0;
          }

          else
          {
            ++v11;
          }

          if (v29 == v17)
          {
            v23 = &v23[v22 - (v29 * v21)];
          }
        }
      }

      while (v8 != v9);
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t cva::Buffer<unsigned int>::resize(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {

    MEMORY[0x245D61480](v4, 0xE0C400670D255);
  }

  a1[7] = 0;
  v5 = a1[8];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[8] = 0;
  v6 = *(*a1 + 16);

  return v6(a1, a2);
}

uint64_t cva::Buffer<unsigned int>::resize(void *a1, int a2, int a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = a1[7];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[7] = 0;
  v6 = a1[8];
  if (v6)
  {

    MEMORY[0x245D61480](v6, 0xE0C400670D255);
  }

  a1[8] = 0;
  return (*(*a1 + 16))(a1, v8);
}

CVPixelBufferRef cva::Buffer<unsigned int>::allocate(_DWORD *a1, OSType a2)
{
  v3 = (a1[1] * *a1);
  v4 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v3, v4, a2, 64, 64, 0, 0, 0, v7);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v4, a2, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

double cva::Buffer<cva::half>::Buffer(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD610;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = &unk_2857FD610;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t cva::Buffer<cva::half>::Buffer(uint64_t a1, _DWORD *a2)
{
  v3 = 2 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD610;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1278226536, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x4C303068u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

{
  v3 = 2 * *a2;
  *(a1 + 8) = 0;
  v4 = a2[2];
  v5 = (a2[1] * v3 + 63) & 0xFFFFFFC0;
  v6 = *a2;
  *(a1 + 16) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v3;
  *(a1 + 36) = v5;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD610;
  v7 = (HIDWORD(v6) * v6);
  AttributeDictionary = cva::createAttributeDictionary(v7, v4, 1278226536, 64, 64, 0, 0, 0, v11);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v7, v4, 0x4C303068u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v9 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v9;
  return a1;
}

_DWORD *cva::Buffer<cva::half>::defaultStride@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[1];
  v3 = 2 * *result;
  *a2 = 2;
  a2[1] = v3;
  a2[2] = (v2 * v3 + 63) & 0xFFFFFFC0;
  return result;
}

CVPixelBufferRef cva::Buffer<cva::half>::allocate(_DWORD *a1)
{
  v1 = (a1[1] * *a1);
  v2 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v1, v2, 1278226536, 64, 64, 0, 0, 0, v5);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v1, v2, 0x4C303068u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

uint64_t cva::Buffer<cva::half>::Buffer(uint64_t a1, int a2, int a3, unsigned int a4)
{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2;
  *(a1 + 32) = 2 * a2;
  *(a1 + 36) = (2 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD610;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1278226536, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x4C303068u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 2;
  *(a1 + 32) = 2 * a2;
  *(a1 + 36) = (2 * a2 * a3 + 63) & 0xFFFFFFC0;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD610;
  *(a1 + 8) = 0;
  v6 = (a3 * a2);
  AttributeDictionary = cva::createAttributeDictionary(v6, a4, 1278226536, 64, 64, 0, 0, 0, v10);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v6, a4, 0x4C303068u, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  v8 = pixelBufferOut;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v8;
  return a1;
}

double cva::Buffer<cva::half>::Buffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD610;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v2;
  v3 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v3;
  *a1 = &unk_2857FD610;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
  *(a2 + 36) = 0;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

__n128 cva::Buffer<cva::half>::operator=(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 36);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v3;
  LODWORD(v3) = *(a2 + 36);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v7;
  *(a2 + 36) = v8;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  result = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::Buffer<cva::half>::Buffer(uint64_t a1, uint64_t a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  v6 = 2 * *(a2 + 16);
  v7 = (*(a2 + 20) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD610;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1278226536, 64, 64, 0, 0, 0, v40[0]);
  v40[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303068u, AttributeDictionary, v40);
  CFRelease(AttributeDictionary);
  *(a1 + 48) = v40[0];
  v11 = *(a2 + 48);
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v12 = *(a1 + 48);
    if (v12 && !CVPixelBufferLockBaseAddress(v12, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v14 = *(a1 + 36);
      v15 = *(a2 + 36);
      if (*(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && v14 == v15)
      {
        memcpy(BaseAddress, *(a2 + 40), (*(a2 + 24) * v14));
      }

      else
      {
        v16 = *(a2 + 40);
        if (v16)
        {
          v17 = (v16 + *(a2 + 8));
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = (v16 + *(a2 + 8) + (*(a2 + 24) * v15));
        }

        else
        {
          v18 = 0;
        }

        if (v17 != v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = *(a2 + 16);
          v24 = *(a2 + 20);
          v25 = *(a1 + 16);
          v26 = *(a1 + 20);
          v27 = *(a1 + 28);
          v28 = *(a2 + 28);
          if (BaseAddress)
          {
            v29 = &BaseAddress[*(a1 + 8)];
          }

          else
          {
            v29 = 0;
          }

          v30 = v28;
          v31 = HIDWORD(v28);
          v32 = v27;
          v33 = HIDWORD(v27);
          v34 = -(v23 * v28);
          v35 = -(v25 * v27);
          do
          {
            *v29 = *v17;
            v17 = (v17 + v30);
            if (++v20 == v23)
            {
              v20 = 0;
              v17 = (v17 + v34 + v31);
              v36 = v19 + 1;
              if (v19 + 1 == v24)
              {
                v19 = 0;
              }

              else
              {
                ++v19;
              }

              if (v36 == v24)
              {
                v17 = (v17 + v15 - (v36 * v31));
              }
            }

            v29 += v32;
            if (++v22 == v25)
            {
              v22 = 0;
              v29 += v35 + v33;
              v37 = v21 + 1;
              if (v21 + 1 == v26)
              {
                v21 = 0;
              }

              else
              {
                ++v21;
              }

              if (v37 == v26)
              {
                v29 = &v29[v14 - (v37 * v33)];
              }
            }
          }

          while (v17 != v18);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

{
  pixelBuffer[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  v6 = 2 * *(a2 + 8);
  v7 = (*(a2 + 12) * v6 + 63) & 0xFFFFFFC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 28) = 2;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = 0;
  *a1 = &unk_2857FD610;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a1 + 24);
  v9 = (*(a1 + 20) * *(a1 + 16));
  AttributeDictionary = cva::createAttributeDictionary(v9, v8, 1278226536, 64, 64, 0, 0, 0, pixelBuffer[0]);
  pixelBuffer[0] = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v9, v8, 0x4C303068u, AttributeDictionary, pixelBuffer);
  CFRelease(AttributeDictionary);
  v11 = pixelBuffer[0];
  *(a1 + 48) = pixelBuffer[0];
  if (v11 && !CVPixelBufferLockBaseAddress(v11, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v13 = *(a1 + 36);
    v14 = *(a2 + 28);
    if (*(a1 + 28) == *(a2 + 20) && *(a1 + 32) == *(a2 + 24) && v13 == v14)
    {
      memcpy(BaseAddress, *(a2 + 32), (*(a2 + 16) * v13));
    }

    else
    {
      v15 = *(a2 + 32);
      if (v15)
      {
        v16 = (v15 + *a2);
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = (v15 + *a2 + (*(a2 + 16) * v14));
      }

      else
      {
        v17 = 0;
      }

      if (v16 != v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *(a2 + 8);
        v23 = *(a2 + 12);
        v24 = *(a1 + 16);
        v25 = *(a1 + 20);
        v26 = *(a1 + 28);
        v27 = *(a2 + 20);
        if (BaseAddress)
        {
          v28 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v28 = 0;
        }

        v29 = v27;
        v30 = HIDWORD(v27);
        v31 = v26;
        v32 = HIDWORD(v26);
        v33 = -(v22 * v27);
        v34 = -(v24 * v26);
        do
        {
          *v28 = *v16;
          v16 = (v16 + v29);
          if (++v19 == v22)
          {
            v19 = 0;
            v16 = (v16 + v33 + v30);
            v35 = v18 + 1;
            if (v18 + 1 == v23)
            {
              v18 = 0;
            }

            else
            {
              ++v18;
            }

            if (v35 == v23)
            {
              v16 = (v16 + v14 - (v35 * v30));
            }
          }

          v28 += v31;
          if (++v21 == v24)
          {
            v21 = 0;
            v28 += v34 + v32;
            v36 = v20 + 1;
            if (v20 + 1 == v25)
            {
              v20 = 0;
            }

            else
            {
              ++v20;
            }

            if (v36 == v25)
            {
              v28 = &v28[v13 - (v36 * v32)];
            }
          }
        }

        while (v16 != v17);
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return a1;
}

__CVBuffer *cva::Buffer<cva::half>::lock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  result = *(a1 + 48);
  if (result)
  {
    if (CVPixelBufferLockBaseAddress(result, a2))
    {
      return 0;
    }

    else
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      *(a1 + 40) = CVPixelBufferGetBaseAddress(*(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL cva::Buffer<cva::half>::unlock(uint64_t a1, CVPixelBufferLockFlags a2)
{
  v3 = CVPixelBufferUnlockBaseAddress(*(a1 + 48), a2);
  if (!v3)
  {
    *(a1 + 40) = 0;
  }

  return v3 == 0;
}

uint64_t cva::Buffer<cva::half>::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 1uLL))
  {
    CVPixelBufferGetWidth(*(a2 + 48));
    CVPixelBufferGetHeight(*(a2 + 48));
    CVPixelBufferGetBytesPerRow(*(a2 + 48));
    *(a2 + 40) = CVPixelBufferGetBaseAddress(*(a2 + 48));
    v5 = *(a1 + 48);
    if (v5 && !CVPixelBufferLockBaseAddress(v5, 0))
    {
      CVPixelBufferGetWidth(*(a1 + 48));
      CVPixelBufferGetHeight(*(a1 + 48));
      CVPixelBufferGetBytesPerRow(*(a1 + 48));
      BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
      *(a1 + 40) = BaseAddress;
      v7 = *(a2 + 40);
      v8 = *(a2 + 36);
      if (v7)
      {
        v9 = (v7 + *(a2 + 8));
      }

      else
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = (v7 + *(a2 + 8) + (*(a2 + 24) * v8));
      }

      else
      {
        v10 = 0;
      }

      if (v9 != v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = *(a1 + 28);
        v16 = *(a2 + 28);
        v17 = *(a1 + 16);
        v18 = *(a1 + 20);
        v20 = *(a2 + 16);
        v19 = *(a2 + 20);
        v21 = HIDWORD(v16);
        v22 = HIDWORD(v15);
        v23 = *(a1 + 36);
        if (BaseAddress)
        {
          v24 = &BaseAddress[*(a1 + 8)];
        }

        else
        {
          v24 = 0;
        }

        v25 = v16;
        v26 = v15;
        v27 = -(v20 * v16);
        v28 = -(v17 * v15);
        do
        {
          *v24 = *v9;
          v9 = (v9 + v25);
          if (++v13 == v20)
          {
            v13 = 0;
            v9 = (v9 + v27 + v21);
            v29 = v14 + 1;
            if (v14 + 1 == v19)
            {
              v14 = 0;
            }

            else
            {
              ++v14;
            }

            if (v29 == v19)
            {
              v9 = (v9 + v8 - (v29 * v21));
            }
          }

          v24 += v26;
          if (++v11 == v17)
          {
            v11 = 0;
            v24 += v28 + v22;
            v30 = v12 + 1;
            if (v12 + 1 == v18)
            {
              v12 = 0;
            }

            else
            {
              ++v12;
            }

            if (v30 == v18)
            {
              v24 = &v24[v23 - (v30 * v22)];
            }
          }
        }

        while (v9 != v10);
      }

      if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
      {
        *(a1 + 40) = 0;
      }
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a2 + 48), 1uLL))
    {
      *(a2 + 40) = 0;
    }
  }

  return a1;
}

{
  v3 = *(a1 + 48);
  if (v3 && !CVPixelBufferLockBaseAddress(v3, 0))
  {
    CVPixelBufferGetWidth(*(a1 + 48));
    CVPixelBufferGetHeight(*(a1 + 48));
    CVPixelBufferGetBytesPerRow(*(a1 + 48));
    BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 48));
    *(a1 + 40) = BaseAddress;
    v6 = *(a2 + 32);
    v7 = *(a2 + 28);
    if (v6)
    {
      v8 = (v6 + *a2);
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = (v6 + *a2 + (*(a2 + 16) * v7));
    }

    else
    {
      v9 = 0;
    }

    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 28);
      v15 = *(a2 + 20);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v19 = *(a2 + 8);
      v18 = *(a2 + 12);
      v20 = HIDWORD(v15);
      v21 = HIDWORD(v14);
      v22 = *(a1 + 36);
      if (BaseAddress)
      {
        v23 = &BaseAddress[*(a1 + 8)];
      }

      else
      {
        v23 = 0;
      }

      v24 = v15;
      v25 = v14;
      v26 = -(v19 * v15);
      v27 = -(v16 * v14);
      do
      {
        *v23 = *v8;
        v8 = (v8 + v24);
        if (++v12 == v19)
        {
          v12 = 0;
          v8 = (v8 + v26 + v20);
          v28 = v13 + 1;
          if (v13 + 1 == v18)
          {
            v13 = 0;
          }

          else
          {
            ++v13;
          }

          if (v28 == v18)
          {
            v8 = (v8 + v7 - (v28 * v20));
          }
        }

        v23 += v25;
        if (++v10 == v16)
        {
          v10 = 0;
          v23 += v27 + v21;
          v29 = v11 + 1;
          if (v11 + 1 == v17)
          {
            v11 = 0;
          }

          else
          {
            ++v11;
          }

          if (v29 == v17)
          {
            v23 = &v23[v22 - (v29 * v21)];
          }
        }
      }

      while (v8 != v9);
    }

    if (!CVPixelBufferUnlockBaseAddress(*(a1 + 48), 0))
    {
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t cva::Buffer<cva::half>::resize(void *a1, uint64_t a2)
{
  v4 = a1[7];
  if (v4)
  {

    MEMORY[0x245D61480](v4, 0xE0C400670D255);
  }

  a1[7] = 0;
  v5 = a1[8];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[8] = 0;
  v6 = *(*a1 + 16);

  return v6(a1, a2);
}

uint64_t cva::Buffer<cva::half>::resize(void *a1, int a2, int a3, int a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = a1[7];
  if (v5)
  {

    MEMORY[0x245D61480](v5, 0xE0C400670D255);
  }

  a1[7] = 0;
  v6 = a1[8];
  if (v6)
  {

    MEMORY[0x245D61480](v6, 0xE0C400670D255);
  }

  a1[8] = 0;
  return (*(*a1 + 16))(a1, v8);
}

CVPixelBufferRef cva::Buffer<cva::half>::allocate(_DWORD *a1, OSType a2)
{
  v3 = (a1[1] * *a1);
  v4 = a1[2];
  AttributeDictionary = cva::createAttributeDictionary(v3, v4, a2, 64, 64, 0, 0, 0, v7);
  pixelBufferOut = 0;
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], v3, v4, a2, AttributeDictionary, &pixelBufferOut);
  CFRelease(AttributeDictionary);
  return pixelBufferOut;
}

size_t cva::imageViewFromPixelBuffer<unsigned char>@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v17, v5);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v7 = PlaneCount;
  if (PlaneCount)
  {
    v8 = 0;
    memset(v15, 0, sizeof(v15));
    do
    {
      v15[v8] = CVPixelBufferGetBaseAddressOfPlane(a1, v8);
      v16[v8] = CVPixelBufferGetBytesPerRowOfPlane(a1, v8);
      ++v8;
    }

    while (v7 != v8);
    BytesPerRow = v16[0];
    BaseAddress = v15[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  }

  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  v13 = v17[0] | (BytesPerRow << 32);
  *a2 = 0;
  a2[1] = Width | (result << 32);
  a2[2] = v13;
  a2[3] = BaseAddress;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::formatDescription(OSType pixelFormat, uint64_t a2, unsigned int *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v29 = 0;
  valuePtr = 0;
  v27 = 0;
  v26 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], pixelFormat);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, *MEMORY[0x277CC4F70]);
    if (Value)
    {
      v7 = Value;
      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
        v15 = 0;
      }

      else
      {
        v9 = Count;
        v10 = *MEMORY[0x277CC4EF0];
        v11 = *MEMORY[0x277CC4ED0];
        LODWORD(valuePtr) = 1;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        v13 = CFDictionaryGetValue(ValueAtIndex, v10);
        if (v13)
        {
          CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
        }

        v14 = CFDictionaryGetValue(ValueAtIndex, v11);
        if (v14)
        {
          CFNumberGetValue(v14, kCFNumberIntType, &v26);
          v15 = 0;
        }

        else
        {
          v15 = 4294960636;
        }

        *a2 = (v26 / valuePtr) >> 3;
        if (v9 != 1)
        {
          HIDWORD(valuePtr) = 1;
          v18 = CFArrayGetValueAtIndex(v7, 1);
          v19 = CFDictionaryGetValue(v18, v10);
          if (v19)
          {
            CFNumberGetValue(v19, kCFNumberIntType, &valuePtr + 4);
          }

          v20 = CFDictionaryGetValue(v18, v11);
          if (v20)
          {
            CFNumberGetValue(v20, kCFNumberIntType, &v26 + 4);
          }

          else
          {
            v15 = 4294960636;
          }

          *(a2 + 4) = (SHIDWORD(v26) / SHIDWORD(valuePtr)) >> 3;
          if (v9 != 2)
          {
            v29 = 1;
            v21 = CFArrayGetValueAtIndex(v7, 2);
            v22 = CFDictionaryGetValue(v21, v10);
            if (v22)
            {
              CFNumberGetValue(v22, kCFNumberIntType, &v29);
            }

            v23 = CFDictionaryGetValue(v21, v11);
            if (v23)
            {
              CFNumberGetValue(v23, kCFNumberIntType, &v27);
            }

            else
            {
              v15 = 4294960636;
            }

            *(a2 + 8) = (v27 / v29) >> 3;
          }
        }
      }
    }

    else
    {
      LODWORD(valuePtr) = 1;
      v16 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4EF0]);
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
      }

      v17 = CFDictionaryGetValue(v5, *MEMORY[0x277CC4ED0]);
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberIntType, &v26);
        v15 = 0;
      }

      else
      {
        v15 = 4294960636;
      }

      *a2 = (v26 / valuePtr) >> 3;
    }

    CFRelease(v5);
  }

  else
  {
    v15 = 4294960636;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

size_t cva::imageViewFromPixelBuffer<unsigned short>@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v17, v5);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v7 = PlaneCount;
  if (PlaneCount)
  {
    v8 = 0;
    memset(v15, 0, sizeof(v15));
    do
    {
      v15[v8] = CVPixelBufferGetBaseAddressOfPlane(a1, v8);
      v16[v8] = CVPixelBufferGetBytesPerRowOfPlane(a1, v8);
      ++v8;
    }

    while (v7 != v8);
    BytesPerRow = v16[0];
    BaseAddress = v15[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  }

  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  v13 = v17[0] | (BytesPerRow << 32);
  *a2 = 0;
  a2[1] = Width | (result << 32);
  a2[2] = v13;
  a2[3] = BaseAddress;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<float>@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v17, v5);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v7 = PlaneCount;
  if (PlaneCount)
  {
    v8 = 0;
    memset(v15, 0, sizeof(v15));
    do
    {
      v15[v8] = CVPixelBufferGetBaseAddressOfPlane(a1, v8);
      v16[v8] = CVPixelBufferGetBytesPerRowOfPlane(a1, v8);
      ++v8;
    }

    while (v7 != v8);
    BytesPerRow = v16[0];
    BaseAddress = v15[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  }

  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  v13 = v17[0] | (BytesPerRow << 32);
  *a2 = 0;
  a2[1] = Width | (result << 32);
  a2[2] = v13;
  a2[3] = BaseAddress;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,3u,1u,false>>@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v17, v5);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v7 = PlaneCount;
  if (PlaneCount)
  {
    v8 = 0;
    memset(v15, 0, sizeof(v15));
    do
    {
      v15[v8] = CVPixelBufferGetBaseAddressOfPlane(a1, v8);
      v16[v8] = CVPixelBufferGetBytesPerRowOfPlane(a1, v8);
      ++v8;
    }

    while (v7 != v8);
    BytesPerRow = v16[0];
    BaseAddress = v15[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  }

  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  v13 = v17[0] | (BytesPerRow << 32);
  *a2 = 0;
  a2[1] = Width | (result << 32);
  a2[2] = v13;
  a2[3] = BaseAddress;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>@<X0>(__CVBuffer *a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v17, v5);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v7 = PlaneCount;
  if (PlaneCount)
  {
    v8 = 0;
    memset(v15, 0, sizeof(v15));
    do
    {
      v15[v8] = CVPixelBufferGetBaseAddressOfPlane(a1, v8);
      v16[v8] = CVPixelBufferGetBytesPerRowOfPlane(a1, v8);
      ++v8;
    }

    while (v7 != v8);
    BytesPerRow = v16[0];
    BaseAddress = v15[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  }

  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  v13 = v17[0] | (BytesPerRow << 32);
  *a2 = 0;
  a2[1] = Width | (result << 32);
  a2[2] = v13;
  a2[3] = BaseAddress;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<unsigned char>@<X0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v19, v7);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v9 = PlaneCount;
  if (PlaneCount)
  {
    v10 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v17[v10] = CVPixelBufferGetBaseAddressOfPlane(a1, v10);
      v18[v10] = CVPixelBufferGetBytesPerRowOfPlane(a1, v10);
      ++v10;
    }

    while (v9 != v10);
    result = v18[0];
    BaseAddress = v17[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    result = CVPixelBufferGetBytesPerRow(a1);
  }

  v13 = v19[0] | (result << 32);
  v14 = &BaseAddress[*a2 * v19[0] + *(a2 + 4) * result];
  v15 = *(a2 + 8);
  *a3 = 0;
  a3[1] = v15;
  a3[2] = v13;
  a3[3] = v14;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<unsigned short>@<X0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v19, v7);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v9 = PlaneCount;
  if (PlaneCount)
  {
    v10 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v17[v10] = CVPixelBufferGetBaseAddressOfPlane(a1, v10);
      v18[v10] = CVPixelBufferGetBytesPerRowOfPlane(a1, v10);
      ++v10;
    }

    while (v9 != v10);
    result = v18[0];
    BaseAddress = v17[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    result = CVPixelBufferGetBytesPerRow(a1);
  }

  v13 = v19[0] | (result << 32);
  v14 = &BaseAddress[*a2 * v19[0] + *(a2 + 4) * result];
  v15 = *(a2 + 8);
  *a3 = 0;
  a3[1] = v15;
  a3[2] = v13;
  a3[3] = v14;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<float>@<X0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v19, v7);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v9 = PlaneCount;
  if (PlaneCount)
  {
    v10 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v17[v10] = CVPixelBufferGetBaseAddressOfPlane(a1, v10);
      v18[v10] = CVPixelBufferGetBytesPerRowOfPlane(a1, v10);
      ++v10;
    }

    while (v9 != v10);
    result = v18[0];
    BaseAddress = v17[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    result = CVPixelBufferGetBytesPerRow(a1);
  }

  v13 = v19[0] | (result << 32);
  v14 = &BaseAddress[*a2 * v19[0] + *(a2 + 4) * result];
  v15 = *(a2 + 8);
  *a3 = 0;
  a3[1] = v15;
  a3[2] = v13;
  a3[3] = v14;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,3u,1u,false>>@<X0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v19, v7);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v9 = PlaneCount;
  if (PlaneCount)
  {
    v10 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v17[v10] = CVPixelBufferGetBaseAddressOfPlane(a1, v10);
      v18[v10] = CVPixelBufferGetBytesPerRowOfPlane(a1, v10);
      ++v10;
    }

    while (v9 != v10);
    result = v18[0];
    BaseAddress = v17[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    result = CVPixelBufferGetBytesPerRow(a1);
  }

  v13 = v19[0] | (result << 32);
  v14 = &BaseAddress[*a2 * v19[0] + *(a2 + 4) * result];
  v15 = *(a2 + 8);
  *a3 = 0;
  a3[1] = v15;
  a3[2] = v13;
  a3[3] = v14;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

size_t cva::imageViewFromPixelBuffer<cva::Matrix<unsigned char,4u,1u,false>>@<X0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  cva::formatDescription(PixelFormatType, v19, v7);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v9 = PlaneCount;
  if (PlaneCount)
  {
    v10 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v17[v10] = CVPixelBufferGetBaseAddressOfPlane(a1, v10);
      v18[v10] = CVPixelBufferGetBytesPerRowOfPlane(a1, v10);
      ++v10;
    }

    while (v9 != v10);
    result = v18[0];
    BaseAddress = v17[0];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    result = CVPixelBufferGetBytesPerRow(a1);
  }

  v13 = v19[0] | (result << 32);
  v14 = &BaseAddress[*a2 * v19[0] + *(a2 + 4) * result];
  v15 = *(a2 + 8);
  *a3 = 0;
  a3[1] = v15;
  a3[2] = v13;
  a3[3] = v14;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cva::getPixelBufferType()
{
  return 1278226488;
}

{
  return 1647392359;
}

{
  return 1278226534;
}

{
  return 24;
}

{
  return 32;
}

uint64_t cva::createCVPixelBufferFromImageCopy<unsigned char>(uint64_t a1, CVPixelBufferRef *pixelBufferOut)
{
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(a1 + 8), *(a1 + 12), 0x4C303038u, 0, pixelBufferOut);
  if (!result)
  {
    CVPixelBufferLockBaseAddress(*pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*pixelBufferOut);
    if (*(a1 + 12))
    {
      v7 = BytesPerRow;
      v8 = 0;
      do
      {
        memcpy(BaseAddress, (*(a1 + 24) + *a1 + *(a1 + 20) * v8), *(a1 + 8));
        BaseAddress += v7;
        ++v8;
      }

      while (v8 < *(a1 + 12));
    }

    CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 0);
    return 0;
  }

  return result;
}

uint64_t cva::createCVPixelBufferFromImageCopy<unsigned short>(uint64_t a1, CVPixelBufferRef *pixelBufferOut)
{
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(a1 + 8), *(a1 + 12), 0x62313667u, 0, pixelBufferOut);
  if (!result)
  {
    CVPixelBufferLockBaseAddress(*pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*pixelBufferOut);
    if (*(a1 + 12))
    {
      v7 = BytesPerRow;
      v8 = 0;
      do
      {
        memcpy(BaseAddress, (*(a1 + 24) + *a1 + *(a1 + 20) * v8), 2 * *(a1 + 8));
        BaseAddress += v7;
        ++v8;
      }

      while (v8 < *(a1 + 12));
    }

    CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 0);
    return 0;
  }

  return result;
}

uint64_t cva::createCVPixelBufferFromImageCopy<float>(uint64_t a1, CVPixelBufferRef *pixelBufferOut)
{
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(a1 + 8), *(a1 + 12), 0x4C303066u, 0, pixelBufferOut);
  if (!result)
  {
    CVPixelBufferLockBaseAddress(*pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*pixelBufferOut);
    if (*(a1 + 12))
    {
      v7 = BytesPerRow;
      v8 = 0;
      do
      {
        memcpy(BaseAddress, (*(a1 + 24) + *a1 + *(a1 + 20) * v8), 4 * *(a1 + 8));
        BaseAddress += v7;
        ++v8;
      }

      while (v8 < *(a1 + 12));
    }

    CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 0);
    return 0;
  }

  return result;
}

uint64_t cva::createCVPixelBufferFromImageCopy<cva::Matrix<unsigned char,3u,1u,false>>(uint64_t a1, CVPixelBufferRef *pixelBufferOut)
{
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(a1 + 8), *(a1 + 12), 0x18u, 0, pixelBufferOut);
  if (!result)
  {
    CVPixelBufferLockBaseAddress(*pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*pixelBufferOut);
    if (*(a1 + 12))
    {
      v7 = BytesPerRow;
      v8 = 0;
      do
      {
        memcpy(BaseAddress, (*(a1 + 24) + *a1 + *(a1 + 20) * v8), 3 * *(a1 + 8));
        BaseAddress += v7;
        ++v8;
      }

      while (v8 < *(a1 + 12));
    }

    CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 0);
    return 0;
  }

  return result;
}

uint64_t cva::createCVPixelBufferFromImageCopy<cva::Matrix<unsigned char,4u,1u,false>>(uint64_t a1, CVPixelBufferRef *pixelBufferOut)
{
  result = CVPixelBufferCreate(*MEMORY[0x277CBECE8], *(a1 + 8), *(a1 + 12), 0x20u, 0, pixelBufferOut);
  if (!result)
  {
    CVPixelBufferLockBaseAddress(*pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(*pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(*pixelBufferOut);
    if (*(a1 + 12))
    {
      v7 = BytesPerRow;
      v8 = 0;
      do
      {
        memcpy(BaseAddress, (*(a1 + 24) + *a1 + *(a1 + 20) * v8), 4 * *(a1 + 8));
        BaseAddress += v7;
        ++v8;
      }

      while (v8 < *(a1 + 12));
    }

    CVPixelBufferUnlockBaseAddress(*pixelBufferOut, 0);
    return 0;
  }

  return result;
}

vImage_Error cva::pixelBufferConvertYCbCrToARGB(__CVBuffer *a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a1 || ((PixelFormatType = CVPixelBufferGetPixelFormatType(a1), Width = CVPixelBufferGetWidth(a1), Height = CVPixelBufferGetHeight(a1), v9 = Height, *(a2 + 8) >= Width) ? (v10 = *(a2 + 12) >= Height) : (v10 = 0), !v10))
  {
    result = 4294960635;
    goto LABEL_29;
  }

  v12 = MEMORY[0x277CB86F0];
  if (!a3)
  {
    v12 = MEMORY[0x277CB86E0];
  }

  v13 = *v12;
  *permuteMap = 50462976;
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType == 846624121)
    {
      v22 = v9;
      pixelRange = *ymmword_24508A930;
      if (vImageConvert_YpCbCrToARGB_GenerateConversion(v13, &pixelRange, &outInfo, kvImage422CbYpCrYp8, kvImageARGB8888, 0))
      {
        goto LABEL_28;
      }

      srcYp.data = CVPixelBufferGetBaseAddress(a1);
      srcYp.height = v22;
      srcYp.width = Width;
      srcYp.rowBytes = CVPixelBufferGetBytesPerRow(a1);
      srcCbCr.data = *(a2 + 24);
      srcCbCr.height = v22;
      v24 = *(a2 + 20);
      srcCbCr.width = Width;
      srcCbCr.rowBytes = v24;
      if (!srcYp.data)
      {
        goto LABEL_28;
      }

      result = vImageConvert_422CbYpCrYp8ToARGB8888(&srcYp, &srcCbCr, &outInfo, permuteMap, 0xFFu, 0);
      if (result)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (PixelFormatType != 875704422)
    {
      goto LABEL_28;
    }

    v16 = v9;
    v17 = &xmmword_24508A950;
  }

  else
  {
    if (PixelFormatType != 875704438)
    {
      if (PixelFormatType == 2037741158)
      {
        v14 = v9;
        v15 = &xmmword_24508A950;
      }

      else
      {
        if (PixelFormatType != 2037741171)
        {
          goto LABEL_28;
        }

        v14 = v9;
        v15 = ymmword_24508A930;
      }

      v20 = v15[1];
      *&pixelRange.Yp_bias = *v15;
      *&pixelRange.YpMax = v20;
      if (!vImageConvert_YpCbCrToARGB_GenerateConversion(v13, &pixelRange, &outInfo, kvImage422YpCbYpCr8, kvImageARGB8888, 0))
      {
        srcYp.data = CVPixelBufferGetBaseAddress(a1);
        srcYp.height = v14;
        srcYp.width = Width;
        srcYp.rowBytes = CVPixelBufferGetBytesPerRow(a1);
        srcCbCr.data = *(a2 + 24);
        srcCbCr.height = v14;
        v21 = *(a2 + 20);
        srcCbCr.width = Width;
        srcCbCr.rowBytes = v21;
        if (srcYp.data)
        {
          result = vImageConvert_422YpCbYpCr8ToARGB8888(&srcYp, &srcCbCr, &outInfo, permuteMap, 0xFFu, 0);
          if (!result)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_28:
      result = 4294960636;
      goto LABEL_29;
    }

    v16 = v9;
    v17 = ymmword_24508A930;
  }

  v18 = v17[1];
  *&pixelRange.Yp_bias = *v17;
  *&pixelRange.YpMax = v18;
  if (vImageConvert_YpCbCrToARGB_GenerateConversion(v13, &pixelRange, &outInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0))
  {
    goto LABEL_28;
  }

  srcYp.data = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  srcYp.height = v16;
  srcYp.width = Width;
  srcYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  srcCbCr.data = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  srcCbCr.height = v16;
  srcCbCr.width = Width;
  srcCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  v25.data = *(a2 + 24);
  v25.height = v16;
  v19 = *(a2 + 20);
  v25.width = Width;
  v25.rowBytes = v19;
  if (!srcYp.data)
  {
    goto LABEL_28;
  }

  result = vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &v25, &outInfo, permuteMap, 0xFFu, 0);
  if (result)
  {
    goto LABEL_28;
  }

LABEL_29:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

vImage_Error cva::pixelBufferConvertARGBToYpCbCr(uint64_t a1, CVPixelBufferRef pixelBuffer, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!pixelBuffer || ((PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer), Width = CVPixelBufferGetWidth(pixelBuffer), Height = CVPixelBufferGetHeight(pixelBuffer), v9 = Height, *(a1 + 8) <= Width) ? (v10 = *(a1 + 12) > Height) : (v10 = 1), v10))
  {
    result = 4294960635;
    goto LABEL_25;
  }

  v12 = MEMORY[0x277CB86D8];
  if (!a3)
  {
    v12 = MEMORY[0x277CB86C8];
  }

  v13 = *v12;
  *permuteMap = 50462976;
  if (PixelFormatType <= 2037741157)
  {
    if (PixelFormatType == 875704422)
    {
      v14 = v9;
      v15 = &xmmword_24508A950;
    }

    else
    {
      if (PixelFormatType != 875704438)
      {
        goto LABEL_24;
      }

      v14 = v9;
      v15 = &xmmword_24508A930;
    }

    v18 = v15[1];
    *&pixelRange.Yp_bias = *v15;
    *&pixelRange.YpMax = v18;
    if (!vImageConvert_ARGBToYpCbCr_GenerateConversion(v13, &pixelRange, &outInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0))
    {
      destYp.data = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
      destYp.height = v14;
      destYp.width = Width;
      destYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
      destCbCr.data = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
      destCbCr.height = v14;
      destCbCr.width = Width;
      destCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
      v23.data = *(a1 + 24);
      v23.height = v14;
      v19 = *(a1 + 20);
      v23.width = Width;
      v23.rowBytes = v19;
      if (destYp.data)
      {
        result = vImageConvert_ARGB8888To420Yp8_CbCr8(&v23, &destYp, &destCbCr, &outInfo, permuteMap, 0);
        if (!result)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_24:
    result = 4294960636;
    goto LABEL_25;
  }

  if (PixelFormatType == 2037741158)
  {
    v16 = v9;
    v17 = &xmmword_24508A950;
  }

  else
  {
    if (PixelFormatType != 2037741171)
    {
      goto LABEL_24;
    }

    v16 = v9;
    v17 = &xmmword_24508A930;
  }

  v20 = v17[1];
  *&pixelRange.Yp_bias = *v17;
  *&pixelRange.YpMax = v20;
  if (vImageConvert_ARGBToYpCbCr_GenerateConversion(v13, &pixelRange, &outInfo, kvImageARGB8888, kvImage422YpCbYpCr8, 0))
  {
    goto LABEL_24;
  }

  destYp.data = CVPixelBufferGetBaseAddress(pixelBuffer);
  destYp.height = v16;
  destYp.width = Width;
  destYp.rowBytes = CVPixelBufferGetBytesPerRow(pixelBuffer);
  destCbCr.data = *(a1 + 24);
  destCbCr.height = v16;
  v22 = *(a1 + 20);
  destCbCr.width = Width;
  destCbCr.rowBytes = v22;
  if (!destYp.data)
  {
    goto LABEL_24;
  }

  result = vImageConvert_ARGB8888To422YpCbYpCr8(&destCbCr, &destYp, &outInfo, permuteMap, 0);
  if (result)
  {
    goto LABEL_24;
  }

LABEL_25:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

__CFDictionary *cva::createAttributeDictionary(cva *this, int a2, int a3, int a4, int a5, int a6, char a7, int a8, BOOL a9)
{
  v33 = a2;
  valuePtr = this;
  v31 = a4;
  v32 = a3;
  v29 = a6;
  v30 = a5;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v13 = CFNumberCreate(v11, kCFNumberIntType, &valuePtr);
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = v13;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v13);
    CFRelease(v14);
    v15 = CFNumberCreate(v11, kCFNumberIntType, &v33);
    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = v15;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v15);
    CFRelease(v16);
    v17 = CFNumberCreate(v11, kCFNumberIntType, &v32);
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = v17;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v17);
    CFRelease(v18);
    v19 = CFNumberCreate(v11, kCFNumberIntType, &v31);
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v19;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v19);
    CFRelease(v20);
    v21 = CFNumberCreate(v11, kCFNumberIntType, &v30);
    if (!v21)
    {
      goto LABEL_13;
    }

    v22 = v21;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E38], v21);
    CFRelease(v22);
    v23 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v23)
    {
      v24 = *MEMORY[0x277CBED28];
      v25 = v23;
      CFDictionarySetValue(v23, *MEMORY[0x277CD2A40], *MEMORY[0x277CBED28]);
      if ((a7 & 1) == 0)
      {
        CFDictionarySetValue(v25, *MEMORY[0x277CD2B60], *MEMORY[0x277CBED10]);
      }

      if (a8)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E08], v24);
      }

      v26 = CFNumberCreate(v11, kCFNumberIntType, &v29);
      CFDictionarySetValue(v25, *MEMORY[0x277CD2970], v26);
      CFRelease(v26);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v25);
      v27 = v25;
    }

    else
    {
LABEL_13:
      v27 = Mutable;
      Mutable = 0;
    }

    CFRelease(v27);
  }

  return Mutable;
}

uint64_t cva::pixelBufferPoolCreate(cva *this, int a2, int a3, CVPixelBufferPoolRef *a4, __CVPixelBufferPool **a5)
{
  AttributeDictionary = cva::createAttributeDictionary(this, a2, a3, 16, 16, 0, 1, 0, v10);
  if (!AttributeDictionary)
  {
    result = 4294960636;
    goto LABEL_5;
  }

  v7 = AttributeDictionary;
  v8 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, AttributeDictionary, a4);
  CFRelease(v7);
  result = v8;
  if (v8)
  {
LABEL_5:
    *a4 = 0;
  }

  return result;
}

uint64_t cva::pixelBufferCreate(cva *this, unsigned int a2, OSType a3, CVPixelBufferRef *a4, __CVBuffer **a5, int a6, int a7, char a8, BOOL a9, BOOL a10)
{
  v13 = this;
  AttributeDictionary = cva::createAttributeDictionary(this, a2, a3, a5, a6, a7, a8, a9, v18);
  if (!AttributeDictionary)
  {
    result = 4294960636;
    goto LABEL_5;
  }

  v15 = AttributeDictionary;
  v16 = CVPixelBufferCreate(0, v13, a2, a3, AttributeDictionary, a4);
  CFRelease(v15);
  result = v16;
  if (v16)
  {
LABEL_5:
    *a4 = 0;
  }

  return result;
}

void cva::setNumberValue(cva *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(this, a2, v5);
  CFRelease(v5);
}

void cva::setDataValue(cva *this, __CFDictionary *a2, const __CFString *a3, UInt8 *bytes, const unsigned __int8 *a5)
{
  v7 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, a3);
  CFDictionarySetValue(this, a2, v7);

  CFRelease(v7);
}

BOOL cva::experimental::ResizeStrategyLanczos<unsigned char,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_Planar8(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<unsigned char,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_Planar8(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245031B04(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245031B5C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<unsigned char,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_Planar8(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<unsigned char,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_Planar8(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245031D74(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245031DCC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<unsigned short,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_Planar16U(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<unsigned short,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16U(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245031FEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245032044(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<unsigned short,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_Planar16U(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<unsigned short,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16U(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_24503225C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_2450322B4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<short,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_Planar16S(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<short,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16S(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_2450324D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_24503252C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<short,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_Planar16S(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<short,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16S(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245032744(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_24503279C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<float,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_PlanarF(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<float,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_PlanarF(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_2450329BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245032A14(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<float,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_PlanarF(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<float,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_PlanarF(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245032C2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245032C84(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned char,4u,1u,false>,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGB8888(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned char,4u,1u,false>,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB8888(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245032EA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245032EFC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned char,4u,1u,false>,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGB8888(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned char,4u,1u,false>,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB8888(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245033114(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_24503316C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<float,4u,1u,false>,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGBFFFF(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<float,4u,1u,false>,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGBFFFF(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_24503338C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_2450333E4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<float,4u,1u,false>,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGBFFFF(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<float,4u,1u,false>,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGBFFFF(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_2450335FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245033654(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned short,4u,1u,false>,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGB16U(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned short,4u,1u,false>,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16U(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245033874(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_2450338CC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned short,4u,1u,false>,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGB16U(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<unsigned short,4u,1u,false>,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16U(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245033AE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245033B3C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<short,4u,1u,false>,true>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGB16S(&src, &v9, v3, 0x28u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<short,4u,1u,false>,true>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16S(&src, &v13, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245033D5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245033DB4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::ResizeStrategyLanczos<cva::Matrix<short,4u,1u,false>,false>::Resize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
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
  return vImageScale_ARGB16S(&src, &v9, v3, 8u) >= 0;
}

void cva::experimental::ResizeStrategyLanczos<cva::Matrix<short,4u,1u,false>,false>::Setup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a2 + 20);
  v13.data = *(a3 + 24);
  v7 = *(a3 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v13.height = vextq_s8(v6, v6, 8uLL);
  v13.rowBytes = *(a3 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16S(&src, &v13, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = v8 - (v9 - v10);
    if (v8 <= v9 - v10)
    {
      if (v8 < v9 - v10)
      {
        *(a1 + 16) = v10 + v8;
      }
    }

    else
    {
      if (*(a1 + 24) - v9 < v11)
      {
        operator new();
      }

      v12 = v8 + v10;
      bzero(*(a1 + 16), v11);
      *(a1 + 16) = v12;
    }
  }
}

void sub_245033FCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245D61480);
}

uint64_t sub_245034024(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<unsigned char>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_Planar8(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<unsigned char>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_Planar8(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<unsigned char>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_Planar8(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<unsigned char>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_Planar8(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<unsigned short>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16U(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<unsigned short>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16U(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<unsigned short>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_Planar16U(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<unsigned short>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_Planar16U(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<short>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16S(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<short>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_Planar16S(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<short>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_Planar16S(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<short>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_Planar16S(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<float>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_PlanarF(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<float>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_PlanarF(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<float>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_PlanarF(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<float>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_PlanarF(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<cva::Matrix<unsigned char,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB8888(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<cva::Matrix<unsigned char,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB8888(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<cva::Matrix<unsigned char,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGB8888(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<cva::Matrix<unsigned char,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGB8888(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<cva::Matrix<float,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGBFFFF(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<cva::Matrix<float,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGBFFFF(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<cva::Matrix<float,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGBFFFF(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<cva::Matrix<float,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGBFFFF(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<cva::Matrix<unsigned short,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16U(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<cva::Matrix<unsigned short,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16U(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<cva::Matrix<unsigned short,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGB16U(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<cva::Matrix<unsigned short,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGB16U(&src, &v8, a3, 0x28u) >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos5<cva::Matrix<short,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16S(&src, &v10, 0, 0xA8u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::getTempBufferSizeLanczos3<cva::Matrix<short,4u,1u,false>>(uint64_t a1, uint64_t a2, vImage_Error *a3)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6.i64[0] = v5;
  v6.i64[1] = HIDWORD(v5);
  *&src.height = vextq_s8(v6, v6, 8uLL);
  src.rowBytes = *(a1 + 20);
  v10.data = *(a2 + 24);
  v7 = *(a2 + 8);
  v6.i64[0] = v7;
  v6.i64[1] = HIDWORD(v7);
  *&v10.height = vextq_s8(v6, v6, 8uLL);
  v10.rowBytes = *(a2 + 20);
  src.data = v4;
  v8 = vImageScale_ARGB16S(&src, &v10, 0, 0x88u);
  if ((v8 & 0x8000000000000000) == 0)
  {
    *a3 = v8;
  }

  return v8 >= 0;
}

BOOL cva::experimental::resizeLanczos3<cva::Matrix<short,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGB16S(&src, &v8, a3, 8u) >= 0;
}

BOOL cva::experimental::resizeLanczos5<cva::Matrix<short,4u,1u,false>>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5.i64[0] = v4;
  v5.i64[1] = HIDWORD(v4);
  *&src.height = vextq_s8(v5, v5, 8uLL);
  src.rowBytes = *(a1 + 20);
  v8.data = *(a2 + 24);
  v6 = *(a2 + 8);
  v5.i64[0] = v6;
  v5.i64[1] = HIDWORD(v6);
  *&v8.height = vextq_s8(v5, v5, 8uLL);
  v8.rowBytes = *(a2 + 20);
  src.data = v3;
  return vImageScale_ARGB16S(&src, &v8, a3, 0x28u) >= 0;
}

float cva::normalizeSO3Coefficients<float>(float32x2_t *a1)
{
  v1 = *a1;
  v2 = a1[1].f32[0];
  v3 = (COERCE_FLOAT(vmul_f32(v1, v1).i32[1]) + (v1.f32[0] * v1.f32[0])) + (v2 * v2);
  result = 1.0;
  if (v3 > 9.8696)
  {
    v5 = sqrtf(v3) / 3.1416;
    v6 = ceilf(v5) + -1.0;
    v7 = v6;
    v8 = v5 - v6;
    if (v7)
    {
      v8 = v8 + -1.0;
    }

    result = v8 / v5;
    *a1 = vmul_n_f32(v1, result);
    a1[1].f32[0] = v2 * result;
  }

  return result;
}

double cva::normalizeSO3Coefficients<double>(float64x2_t *a1)
{
  v1 = *a1;
  v2 = a1[1].f64[0];
  v3 = COERCE_DOUBLE(*&vmulq_f64(v1, v1).f64[1]) + v1.f64[0] * v1.f64[0] + v2 * v2;
  result = 1.0;
  if (v3 > 9.8696044)
  {
    v5 = sqrt(v3) / 3.14159265;
    v6 = ceil(v5) + -1.0;
    v7 = v6;
    v8 = v5 - v6;
    if (v7)
    {
      v8 = v8 + -1.0;
    }

    result = v8 / v5;
    *a1 = vmulq_n_f64(v1, result);
    a1[1].f64[0] = v2 * result;
  }

  return result;
}

float *cva::ExponentialCoefficients<float,2>::ExponentialCoefficients(float *a1, float a2)
{
  v4 = __sincosf_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  *a1 = a2 * a2;
  if ((a2 * a2) >= 0.0061)
  {
    v6 = (1.0 / a2) * v4.__sinval;
    v7 = (1.0 / a2) * (1.0 - v4.__cosval);
  }

  else
  {
    v6 = 1.0 - (v5 * ((v5 / -120.0) + 0.16667));
    v7 = ((v5 / -24.0) + 0.5) * a2;
  }

  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

{
  v4 = __sincosf_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  *a1 = a2 * a2;
  if ((a2 * a2) >= 0.0061)
  {
    v6 = (1.0 / a2) * v4.__sinval;
    v7 = (1.0 / a2) * (1.0 - v4.__cosval);
  }

  else
  {
    v6 = 1.0 - (v5 * ((v5 / -120.0) + 0.16667));
    v7 = ((v5 / -24.0) + 0.5) * a2;
  }

  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

float cva::ExponentialCoefficients<float,2>::compute(float *a1, float a2)
{
  v2 = a2 * a2;
  *a1 = a2 * a2;
  if ((a2 * a2) >= 0.0061)
  {
    v4 = 1.0 / a2;
    v5 = v4 * a1[2];
    result = v4 * (1.0 - a1[1]);
    a1[3] = v5;
  }

  else
  {
    result = ((v2 / -24.0) + 0.5) * a2;
    a1[3] = 1.0 - (v2 * ((v2 / -120.0) + 0.16667));
  }

  a1[4] = result;
  return result;
}

double *cva::ExponentialCoefficients<double,2>::ExponentialCoefficients(double *a1, double a2)
{
  v4 = __sincos_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  *a1 = a2 * a2;
  if (a2 * a2 >= 0.0000002635)
  {
    v6 = 1.0 / a2 * v4.__sinval;
    v7 = 1.0 / a2 * (1.0 - v4.__cosval);
  }

  else
  {
    v6 = 1.0 - v5 * (v5 / -120.0 + 0.166666667);
    v7 = (v5 / -24.0 + 0.5) * a2;
  }

  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

{
  v4 = __sincos_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  *a1 = a2 * a2;
  if (a2 * a2 >= 0.0000002635)
  {
    v6 = 1.0 / a2 * v4.__sinval;
    v7 = 1.0 / a2 * (1.0 - v4.__cosval);
  }

  else
  {
    v6 = 1.0 - v5 * (v5 / -120.0 + 0.166666667);
    v7 = (v5 / -24.0 + 0.5) * a2;
  }

  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

double cva::ExponentialCoefficients<double,2>::compute(double *a1, double a2)
{
  v2 = a2 * a2;
  *a1 = a2 * a2;
  if (a2 * a2 >= 0.0000002635)
  {
    v4 = 1.0 / a2;
    v5 = v4 * a1[2];
    result = v4 * (1.0 - a1[1]);
    a1[3] = v5;
  }

  else
  {
    result = (v2 / -24.0 + 0.5) * a2;
    a1[3] = 1.0 - v2 * (v2 / -120.0 + 0.166666667);
  }

  a1[4] = result;
  return result;
}

float32x2_t cva::ExponentialCoefficients<float,3>::ExponentialCoefficients(float32x2_t *a1, float a2, double a3, double a4)
{
  *&a4 = a2;
  if (a2 >= 0.0061)
  {
    v10 = sqrtf(a2);
    v13 = __sincosf_stret(v10);
    v12.f32[0] = v13.__cosval;
    v12.f32[1] = v13.__sinval / v10;
    __asm { FMOV            V0.2S, #1.0 }

    result = vmul_n_f32(vsub_f32(_D0, v12), 1.0 / a2);
    *a1 = v12;
    a1[1] = result;
  }

  else
  {
    result = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a4, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a4, 0);
    __asm { FMOV            V1.2S, #1.0 }

    *a1 = vmls_lane_f32(_D1, result, *&a4, 0);
    a1[1] = result;
  }

  return result;
}

{
  *&a4 = a2;
  if (a2 >= 0.0061)
  {
    v10 = sqrtf(a2);
    v13 = __sincosf_stret(v10);
    v12.f32[0] = v13.__cosval;
    v12.f32[1] = v13.__sinval / v10;
    __asm { FMOV            V0.2S, #1.0 }

    result = vmul_n_f32(vsub_f32(_D0, v12), 1.0 / a2);
    *a1 = v12;
    a1[1] = result;
  }

  else
  {
    result = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a4, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a4, 0);
    __asm { FMOV            V1.2S, #1.0 }

    *a1 = vmls_lane_f32(_D1, result, *&a4, 0);
    a1[1] = result;
  }

  return result;
}

void cva::ExponentialCoefficients<float,3>::compute(float32x2_t *a1, float a2, double a3, double a4)
{
  *&a4 = a2;
  if (a2 >= 0.0061)
  {
    v12 = sqrtf(a2);
    v13 = __sincosf_stret(v12);
    v11.f32[0] = v13.__cosval;
    v11.f32[1] = v13.__sinval / v12;
    __asm { FMOV            V0.2S, #1.0 }

    v5 = vmul_n_f32(vsub_f32(_D0, v11), 1.0 / a2);
  }

  else
  {
    v5 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a4, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a4, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v11 = vmls_lane_f32(_D1, v5, *&a4, 0);
  }

  *a1 = v11;
  a1[1] = v5;
}

float64x2_t cva::ExponentialCoefficients<double,3>::ExponentialCoefficients(float64x2_t *a1, double a2)
{
  if (a2 >= 0.0000002635)
  {
    v9 = sqrt(a2);
    v12 = __sincos_stret(v9);
    v11.f64[0] = v12.__cosval;
    v11.f64[1] = v12.__sinval / v9;
    __asm { FMOV            V0.2D, #1.0 }

    result = vmulq_n_f64(vsubq_f64(_Q0, v11), 1.0 / a2);
    *a1 = v11;
    a1[1] = result;
  }

  else
  {
    result = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_24508A7D0), xmmword_24508A7E0), a2, 0);
    __asm { FMOV            V1.2D, #1.0 }

    *a1 = vmlsq_lane_f64(_Q1, result, a2, 0);
    a1[1] = result;
  }

  return result;
}

{
  if (a2 >= 0.0000002635)
  {
    v9 = sqrt(a2);
    v12 = __sincos_stret(v9);
    v11.f64[0] = v12.__cosval;
    v11.f64[1] = v12.__sinval / v9;
    __asm { FMOV            V0.2D, #1.0 }

    result = vmulq_n_f64(vsubq_f64(_Q0, v11), 1.0 / a2);
    *a1 = v11;
    a1[1] = result;
  }

  else
  {
    result = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_24508A7D0), xmmword_24508A7E0), a2, 0);
    __asm { FMOV            V1.2D, #1.0 }

    *a1 = vmlsq_lane_f64(_Q1, result, a2, 0);
    a1[1] = result;
  }

  return result;
}

void cva::ExponentialCoefficients<double,3>::compute(float64x2_t *a1, double a2)
{
  if (a2 >= 0.0000002635)
  {
    v11 = sqrt(a2);
    v12 = __sincos_stret(v11);
    v10.f64[0] = v12.__cosval;
    v10.f64[1] = v12.__sinval / v11;
    __asm { FMOV            V0.2D, #1.0 }

    v4 = vmulq_n_f64(vsubq_f64(_Q0, v10), 1.0 / a2);
  }

  else
  {
    v4 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_24508A7D0), xmmword_24508A7E0), a2, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v10 = vmlsq_lane_f64(_Q1, v4, a2, 0);
  }

  *a1 = v10;
  a1[1] = v4;
}

float *cva::DifferentialExponentialCoefficients<float,2>::DifferentialExponentialCoefficients(float *a1, float a2)
{
  v4 = __sincosf_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  if ((a2 * a2) >= 0.0061)
  {
    v8 = (1.0 / a2) * v4.__sinval;
    v10 = (1.0 / a2) * (1.0 - v4.__cosval);
    v6 = (1.0 / a2) * v10;
    v9 = (1.0 / a2) * (1.0 - v8);
  }

  else
  {
    v6 = 0.5 - (v5 * ((v5 / -720.0) + 0.041667));
    v7 = 0.16667 - (v5 * ((v5 / -5040.0) + 0.0083333));
    v8 = 1.0 - (v5 * v7);
    v9 = v7 * a2;
    v10 = v6 * a2;
  }

  *a1 = v5;
  a1[5] = v6;
  a1[6] = v9;
  a1[3] = v8;
  a1[4] = v10;
  return a1;
}

{
  v4 = __sincosf_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  if ((a2 * a2) >= 0.0061)
  {
    v8 = (1.0 / a2) * v4.__sinval;
    v10 = (1.0 / a2) * (1.0 - v4.__cosval);
    v6 = (1.0 / a2) * v10;
    v9 = (1.0 / a2) * (1.0 - v8);
  }

  else
  {
    v6 = 0.5 - (v5 * ((v5 / -720.0) + 0.041667));
    v7 = 0.16667 - (v5 * ((v5 / -5040.0) + 0.0083333));
    v8 = 1.0 - (v5 * v7);
    v9 = v7 * a2;
    v10 = v6 * a2;
  }

  *a1 = v5;
  a1[5] = v6;
  a1[6] = v9;
  a1[3] = v8;
  a1[4] = v10;
  return a1;
}

float *cva::DifferentialExponentialCoefficients<float,2>::compute(float *result, float a2)
{
  v2 = a2 * a2;
  *result = a2 * a2;
  if ((a2 * a2) >= 0.0061)
  {
    v8 = 1.0 / a2;
    v5 = (1.0 / a2) * result[2];
    v7 = (1.0 / a2) * (1.0 - result[1]);
    v3 = v8 * v7;
    v6 = v8 * (1.0 - v5);
  }

  else
  {
    v3 = 0.5 - (v2 * ((v2 / -720.0) + 0.041667));
    v4 = 0.16667 - (v2 * ((v2 / -5040.0) + 0.0083333));
    v5 = 1.0 - (v2 * v4);
    v6 = v4 * a2;
    v7 = v3 * a2;
  }

  result[5] = v3;
  result[6] = v6;
  result[3] = v5;
  result[4] = v7;
  return result;
}

double *cva::DifferentialExponentialCoefficients<double,2>::DifferentialExponentialCoefficients(double *a1, double a2)
{
  v4 = __sincos_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  if (a2 * a2 >= 0.0000002635)
  {
    v8 = 1.0 / a2 * v4.__sinval;
    v10 = 1.0 / a2 * (1.0 - v4.__cosval);
    v6 = 1.0 / a2 * v10;
    v9 = 1.0 / a2 * (1.0 - v8);
  }

  else
  {
    v6 = 0.5 - v5 * (v5 / -720.0 + 0.0416666667);
    v7 = 0.166666667 - v5 * (v5 / -5040.0 + 0.00833333333);
    v8 = 1.0 - v5 * v7;
    v9 = v7 * a2;
    v10 = v6 * a2;
  }

  *a1 = v5;
  a1[5] = v6;
  a1[6] = v9;
  a1[3] = v8;
  a1[4] = v10;
  return a1;
}

{
  v4 = __sincos_stret(a2);
  a1[1] = v4.__cosval;
  a1[2] = v4.__sinval;
  v5 = a2 * a2;
  if (a2 * a2 >= 0.0000002635)
  {
    v8 = 1.0 / a2 * v4.__sinval;
    v10 = 1.0 / a2 * (1.0 - v4.__cosval);
    v6 = 1.0 / a2 * v10;
    v9 = 1.0 / a2 * (1.0 - v8);
  }

  else
  {
    v6 = 0.5 - v5 * (v5 / -720.0 + 0.0416666667);
    v7 = 0.166666667 - v5 * (v5 / -5040.0 + 0.00833333333);
    v8 = 1.0 - v5 * v7;
    v9 = v7 * a2;
    v10 = v6 * a2;
  }

  *a1 = v5;
  a1[5] = v6;
  a1[6] = v9;
  a1[3] = v8;
  a1[4] = v10;
  return a1;
}

double *cva::DifferentialExponentialCoefficients<double,2>::compute(double *result, double a2)
{
  v2 = a2 * a2;
  *result = a2 * a2;
  if (a2 * a2 >= 0.0000002635)
  {
    v8 = 1.0 / a2;
    v5 = 1.0 / a2 * result[2];
    v7 = 1.0 / a2 * (1.0 - result[1]);
    v3 = v8 * v7;
    v6 = v8 * (1.0 - v5);
  }

  else
  {
    v3 = 0.5 - v2 * (v2 / -720.0 + 0.0416666667);
    v4 = 0.166666667 - v2 * (v2 / -5040.0 + 0.00833333333);
    v5 = 1.0 - v2 * v4;
    v6 = v4 * a2;
    v7 = v3 * a2;
  }

  result[5] = v3;
  result[6] = v6;
  result[3] = v5;
  result[4] = v7;
  return result;
}

uint64_t cva::DifferentialExponentialCoefficients<float,3>::DifferentialExponentialCoefficients(uint64_t result, float a2, double a3, double a4, double a5, double a6, double a7, double _D6)
{
  *&_D6 = a2;
  if (a2 >= 0.0061)
  {
    v17 = sqrtf(a2);
    v18 = result;
    v19 = __sincosf_stret(v17);
    cosval = v19.__cosval;
    result = v18;
    _S0 = v19.__sinval / v17;
    __asm { FMOV            V2.2S, #1.0 }

    _D2 = vmul_n_f32(vsub_f32(_D2, __PAIR64__(v19.__sinval / v17, LODWORD(v19.__cosval))), 1.0 / a2);
    LODWORD(v15) = vsub_f32(vdup_lane_s32(_D2, 1), _D2).u32[0];
    v16 = vmul_n_f32(vmla_f32(vext_s8(__PAIR64__(v19.__sinval / v17, LODWORD(v19.__cosval)), _D2, 4uLL), 0xC0400000C0000000, _D2), 1.0 / a2);
  }

  else
  {
    _D2 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&_D6, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&_D6, 0);
    __asm { FMLS            S0, S6, V2.S[1] }

    cosval = 1.0 - (_D2.f32[0] * *&_D6);
    v15 = (*&_D6 * ((*&_D6 * -0.0011905) + 0.033333)) + -0.33333;
    v16 = vmla_n_f32(0xBC888889BDAAAAABLL, vmls_lane_f32(0x3A500D013BB60B61, 0x378AB356391C09C1, *&_D6, 0), *&_D6);
  }

  *(result + 8) = _D2;
  *result = cosval;
  *(result + 4) = _S0;
  *(result + 16) = v15;
  *(result + 20) = v16;
  return result;
}

{
  *&_D6 = a2;
  if (a2 >= 0.0061)
  {
    v17 = sqrtf(a2);
    v18 = result;
    v19 = __sincosf_stret(v17);
    cosval = v19.__cosval;
    result = v18;
    _S0 = v19.__sinval / v17;
    __asm { FMOV            V2.2S, #1.0 }

    _D2 = vmul_n_f32(vsub_f32(_D2, __PAIR64__(v19.__sinval / v17, LODWORD(v19.__cosval))), 1.0 / a2);
    LODWORD(v15) = vsub_f32(vdup_lane_s32(_D2, 1), _D2).u32[0];
    v16 = vmul_n_f32(vmla_f32(vext_s8(__PAIR64__(v19.__sinval / v17, LODWORD(v19.__cosval)), _D2, 4uLL), 0xC0400000C0000000, _D2), 1.0 / a2);
  }

  else
  {
    _D2 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&_D6, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&_D6, 0);
    __asm { FMLS            S0, S6, V2.S[1] }

    cosval = 1.0 - (_D2.f32[0] * *&_D6);
    v15 = (*&_D6 * ((*&_D6 * -0.0011905) + 0.033333)) + -0.33333;
    v16 = vmla_n_f32(0xBC888889BDAAAAABLL, vmls_lane_f32(0x3A500D013BB60B61, 0x378AB356391C09C1, *&_D6, 0), *&_D6);
  }

  *(result + 8) = _D2;
  *result = cosval;
  *(result + 4) = _S0;
  *(result + 16) = v15;
  *(result + 20) = v16;
  return result;
}

void cva::DifferentialExponentialCoefficients<float,3>::compute(uint64_t a1, float a2, double a3, double a4, double a5, double a6, double a7, double _D6)
{
  *&_D6 = a2;
  if (a2 >= 0.0061)
  {
    v18 = sqrtf(a2);
    v19 = __sincosf_stret(v18);
    cosval = v19.__cosval;
    _S0 = v19.__sinval / v18;
    __asm { FMOV            V2.2S, #1.0 }

    _D2 = vmul_n_f32(vsub_f32(_D2, __PAIR64__(v19.__sinval / v18, LODWORD(v19.__cosval))), 1.0 / a2);
    LODWORD(v16) = vsub_f32(vdup_lane_s32(_D2, 1), _D2).u32[0];
    v17 = vmul_n_f32(vmla_f32(vext_s8(__PAIR64__(v19.__sinval / v18, LODWORD(v19.__cosval)), _D2, 4uLL), 0xC0400000C0000000, _D2), 1.0 / a2);
  }

  else
  {
    _D2 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&_D6, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&_D6, 0);
    __asm { FMLS            S0, S6, V2.S[1] }

    cosval = 1.0 - (_D2.f32[0] * *&_D6);
    v16 = (*&_D6 * ((*&_D6 * -0.0011905) + 0.033333)) + -0.33333;
    v17 = vmla_n_f32(0xBC888889BDAAAAABLL, vmls_lane_f32(0x3A500D013BB60B61, 0x378AB356391C09C1, *&_D6, 0), *&_D6);
  }

  *(a1 + 8) = _D2;
  *a1 = cosval;
  *(a1 + 4) = _S0;
  *(a1 + 16) = v16;
  *(a1 + 20) = v17;
}

uint64_t cva::DifferentialExponentialCoefficients<double,3>::DifferentialExponentialCoefficients(uint64_t result, double a2)
{
  _D6 = a2;
  if (a2 >= 0.0000002635)
  {
    v12 = sqrt(a2);
    v13 = result;
    v14 = __sincos_stret(v12);
    cosval = v14.__cosval;
    result = v13;
    _D0 = v14.__sinval / v12;
    v15.f64[0] = v14.__cosval;
    v15.f64[1] = v14.__sinval / v12;
    __asm { FMOV            V2.2D, #1.0 }

    _Q2 = vmulq_n_f64(vsubq_f64(_Q2, v15), 1.0 / a2);
    *&v10 = *&vsubq_f64(vdupq_laneq_s64(_Q2, 1), _Q2);
    v11 = vmulq_n_f64(vmlaq_f64(vextq_s8(v15, _Q2, 8uLL), xmmword_24508A800, _Q2), 1.0 / a2);
  }

  else
  {
    _Q2 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_24508A7D0), xmmword_24508A7E0), a2, 0);
    cosval = 1.0 - _Q2.f64[0] * a2;
    __asm { FMLS            D0, D6, V2.D[1] }

    v10 = _D6 * (_D6 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v11 = vmlaq_n_f64(xmmword_24508A830, vmlsq_lane_f64(xmmword_24508A820, xmmword_24508A810, _D6, 0), _D6);
  }

  *(result + 16) = _Q2;
  *result = cosval;
  *(result + 8) = _D0;
  *(result + 32) = v10;
  *(result + 40) = v11;
  return result;
}

{
  _D6 = a2;
  if (a2 >= 0.0000002635)
  {
    v12 = sqrt(a2);
    v13 = result;
    v14 = __sincos_stret(v12);
    cosval = v14.__cosval;
    result = v13;
    _D0 = v14.__sinval / v12;
    v15.f64[0] = v14.__cosval;
    v15.f64[1] = v14.__sinval / v12;
    __asm { FMOV            V2.2D, #1.0 }

    _Q2 = vmulq_n_f64(vsubq_f64(_Q2, v15), 1.0 / a2);
    *&v10 = *&vsubq_f64(vdupq_laneq_s64(_Q2, 1), _Q2);
    v11 = vmulq_n_f64(vmlaq_f64(vextq_s8(v15, _Q2, 8uLL), xmmword_24508A800, _Q2), 1.0 / a2);
  }

  else
  {
    _Q2 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_24508A7D0), xmmword_24508A7E0), a2, 0);
    cosval = 1.0 - _Q2.f64[0] * a2;
    __asm { FMLS            D0, D6, V2.D[1] }

    v10 = _D6 * (_D6 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v11 = vmlaq_n_f64(xmmword_24508A830, vmlsq_lane_f64(xmmword_24508A820, xmmword_24508A810, _D6, 0), _D6);
  }

  *(result + 16) = _Q2;
  *result = cosval;
  *(result + 8) = _D0;
  *(result + 32) = v10;
  *(result + 40) = v11;
  return result;
}

void cva::DifferentialExponentialCoefficients<double,3>::compute(uint64_t a1, double a2)
{
  _D6 = a2;
  if (a2 >= 0.0000002635)
  {
    v13 = sqrt(a2);
    v14 = __sincos_stret(v13);
    cosval = v14.__cosval;
    _D0 = v14.__sinval / v13;
    v15.f64[0] = v14.__cosval;
    v15.f64[1] = v14.__sinval / v13;
    __asm { FMOV            V2.2D, #1.0 }

    _Q2 = vmulq_n_f64(vsubq_f64(_Q2, v15), 1.0 / a2);
    *&v11 = *&vsubq_f64(vdupq_laneq_s64(_Q2, 1), _Q2);
    v12 = vmulq_n_f64(vmlaq_f64(vextq_s8(v15, _Q2, 8uLL), xmmword_24508A800, _Q2), 1.0 / a2);
  }

  else
  {
    _Q2 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_24508A7D0), xmmword_24508A7E0), a2, 0);
    cosval = 1.0 - _Q2.f64[0] * a2;
    __asm { FMLS            D0, D6, V2.D[1] }

    v11 = _D6 * (_D6 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v12 = vmlaq_n_f64(xmmword_24508A830, vmlsq_lane_f64(xmmword_24508A820, xmmword_24508A810, _D6, 0), _D6);
  }

  *(a1 + 16) = _Q2;
  *a1 = cosval;
  *(a1 + 8) = _D0;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
}

double cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::SO3GroupStorage(uint64_t a1)
{
  *(a1 + 32) = 1065353216;
  *&result = 1065353216;
  *a1 = xmmword_24508A970;
  *(a1 + 16) = unk_24508A980;
  return result;
}

{
  *(a1 + 32) = 1065353216;
  *&result = 1065353216;
  *a1 = xmmword_24508A970;
  *(a1 + 16) = unk_24508A980;
  return result;
}

float cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::angleInDegrees(float32x2_t *a1)
{
  memset(v3, 0, 12);
  sub_245036594(a1, v3);
  v1 = vmul_f32(*(v3 + 4), *(v3 + 4));
  return (sqrtf(((v3[0].f32[0] * v3[0].f32[0]) + v1.f32[0]) + v1.f32[1]) * 180.0) / 3.1416;
}

void sub_245036594(float32x2_t *a1, float *a2)
{
  v4 = (a1[2].f32[1] - a1[3].f32[1]) * 0.5;
  *a2 = v4;
  v5 = (a1[3].f32[0] - a1[1].f32[0]) * 0.5;
  a2[1] = v5;
  v6 = (a1->f32[1] - a1[1].f32[1]) * 0.5;
  a2[2] = v6;
  v7 = a1->f32[0];
  v8 = a1[2].f32[0];
  v9 = a1[4].f32[0];
  v10 = -1.0;
  v11 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
  v12 = ((v5 * v5) + (v4 * v4)) + (v6 * v6);
  if (v11 >= -1.0 || (v11 + 1.0) <= -0.00001)
  {
    v15 = (v11 + -1.0) < 0.00001 && v11 > 1.0;
    if (v11 > 0.99 || v15)
    {
      v16 = (v12 * ((v12 * (((v12 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
      *a2 = v4 * v16;
      a2[1] = v5 * v16;
    }

    else
    {
      if (v11 <= -0.99)
      {
        v10 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
        goto LABEL_19;
      }

      v16 = acosf(v11) / sqrtf(v12);
      *a2 = v4 * v16;
      a2[1] = v5 * v16;
    }

    a2[2] = v6 * v16;
    return;
  }

LABEL_19:
  v17 = asinf(sqrtf(v12));
  v18 = ((3.1416 - v17) * (3.1416 - v17)) / (1.0 - v10);
  v19 = (v7 - v10) * v18;
  v20 = (v8 - v10) * v18;
  v21 = (v9 - v10) * v18;
  if (v19 <= v20)
  {
    v26 = v18 * 0.5;
    if (v20 <= v21)
    {
      v33 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v33 = -v33;
      }

      a2[2] = v33;
      v34.i32[0] = a1[1].i32[0];
      v34.i32[1] = a1[2].i32[1];
      *a2 = vmul_n_f32(vmul_n_f32(vadd_f32(a1[3], v34), v26), 1.0 / v33);
    }

    else
    {
      v27 = sqrtf(v20);
      if (v5 < 0.0)
      {
        v27 = -v27;
      }

      a2[1] = v27;
      v28 = 1.0 / v27;
      v29 = a1[3].f32[1] + a1[2].f32[1];
      *a2 = v28 * (v26 * (a1[1].f32[1] + a1->f32[1]));
      a2[2] = v28 * (v26 * v29);
    }
  }

  else
  {
    v22 = v18 * 0.5;
    v23 = v22 * (a1[3].f32[0] + a1[1].f32[0]);
    if (v19 <= v21)
    {
      v30 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v30 = -v30;
      }

      a2[2] = v30;
      v31 = 1.0 / v30;
      v32 = v31 * (v22 * (a1[3].f32[1] + a1[2].f32[1]));
      *a2 = v31 * v23;
      a2[1] = v32;
    }

    else
    {
      v24 = sqrtf(v19);
      if (v4 < 0.0)
      {
        v24 = -v24;
      }

      *a2 = v24;
      v25 = 1.0 / v24;
      a2[1] = v25 * (v22 * (a1[1].f32[1] + a1->f32[1]));
      a2[2] = v25 * v23;
    }
  }
}

float cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::angleInRadians(float32x2_t *a1)
{
  memset(v3, 0, 12);
  sub_245036594(a1, v3);
  v1 = vmul_f32(*(v3 + 4), *(v3 + 4));
  return sqrtf(((v3[0].f32[0] * v3[0].f32[0]) + v1.f32[0]) + v1.f32[1]);
}

void cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::log(float32x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  sub_245036594(a1, a2);
}

double cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::lplus(uint64_t a1, float *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = ((v4 * v4) + (v3 * v3)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v10 = sqrtf(v6);
    v11 = __sincosf_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = (1.0 / v6) * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 1.0 - (v6 * (0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v6 * v7);
  }

  v12 = v3 * v7;
  v13 = cosval + ((v4 * v7) * v4);
  v14 = cosval + ((v3 * v7) * v3);
  *&v23[8] = cosval + ((v5 * v7) * v5);
  v15 = v3 * (v4 * v7);
  v16 = v5 * (v4 * v7);
  v17 = v5 * v12;
  v18 = v4 * v8;
  v19 = v5 * v8;
  *v23 = v13;
  *&v23[1] = v15 + (v5 * v8);
  v20 = v3 * v8;
  *&v23[6] = v20 + v16;
  *&v23[7] = v17 - v18;
  *&v23[2] = v16 - v20;
  *&v23[3] = v15 - v19;
  *&v23[4] = v14;
  *&v23[5] = v17 + v18;
  v24[0] = v23;
  v24[1] = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_245036A80(&v25, v24);
  result = *&v25;
  v22 = v26;
  *a1 = v25;
  *(a1 + 16) = v22;
  *(a1 + 32) = v27;
  return result;
}

__n64 sub_245036A80(uint64_t a1, float **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_245036A80(&v7);
    result.n64_u64[0] = v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  else
  {
    result.n64_u32[1] = 0;
    *a1 = (((*v3 * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[6] * v4[2]);
    *(a1 + 4) = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[1])) + (v3[7] * v4[2]);
    *(a1 + 8) = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[1])) + (v3[8] * v4[2]);
    *(a1 + 12) = (((*v3 * v4[3]) + 0.0) + (v3[3] * v4[4])) + (v3[6] * v4[5]);
    *(a1 + 16) = (((v3[1] * v4[3]) + 0.0) + (v3[4] * v4[4])) + (v3[7] * v4[5]);
    *(a1 + 20) = (((v3[2] * v4[3]) + 0.0) + (v3[5] * v4[4])) + (v3[8] * v4[5]);
    *(a1 + 24) = (((*v3 * v4[6]) + 0.0) + (v3[3] * v4[7])) + (v3[6] * v4[8]);
    *(a1 + 28) = (((v3[1] * v4[6]) + 0.0) + (v3[4] * v4[7])) + (v3[7] * v4[8]);
    result.n64_f32[0] = (((v3[2] * v4[6]) + 0.0) + (v3[5] * v4[7])) + (v3[8] * v4[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

double cva::SO3AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::SO3AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::exp@<S0>(float **a1@<X0>, float *a2@<X8>)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = ((v3 * v3) + (v4 * v4)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v10 = sqrtf(v6);
    v11 = __sincosf_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = (1.0 / v6) * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 1.0 - (v6 * (0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v6 * v7);
  }

  v12 = v3 * v7;
  v13 = v4 * v7;
  v14 = cosval + ((v3 * v7) * v3);
  v15 = cosval + ((v5 * v7) * v5);
  v16 = cosval + (v13 * v4);
  a2[8] = v15;
  v17 = v4 * v12;
  v18 = v5 * v12;
  v19 = v5 * v13;
  v20 = v3 * v8;
  v21 = v4 * v8;
  v22 = v5 * v8;
  *a2 = v14;
  a2[1] = v17 + v22;
  a2[6] = v21 + v18;
  a2[7] = v19 - v20;
  a2[2] = v18 - v21;
  a2[3] = v17 - v22;
  result = v19 + v20;
  a2[4] = v16;
  a2[5] = v19 + v20;
  return result;
}

double cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::rplus(uint64_t a1, float *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = ((v4 * v4) + (v3 * v3)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v10 = sqrtf(v6);
    v11 = __sincosf_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = (1.0 / v6) * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 1.0 - (v6 * (0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v6 * v7);
  }

  v12 = v3 * v7;
  v13 = cosval + ((v4 * v7) * v4);
  v14 = cosval + ((v3 * v7) * v3);
  *&v23[8] = cosval + ((v5 * v7) * v5);
  v15 = v3 * (v4 * v7);
  v16 = v5 * (v4 * v7);
  v17 = v5 * v12;
  v18 = v4 * v8;
  v19 = v5 * v8;
  *v23 = v13;
  *&v23[1] = v15 + (v5 * v8);
  v20 = v3 * v8;
  *&v23[6] = v20 + v16;
  *&v23[7] = v17 - v18;
  *&v23[2] = v16 - v20;
  *&v23[3] = v15 - v19;
  *&v23[4] = v14;
  *&v23[5] = v17 + v18;
  v24[0] = a1;
  v24[1] = v23;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_245036A80(&v25, v24);
  result = *&v25;
  v22 = v26;
  *a1 = v25;
  *(a1 + 16) = v22;
  *(a1 + 32) = v27;
  return result;
}

float *cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::transform@<X0>(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_245036F44(a3, v4);
}

float *sub_245036F44(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v6 = 0;
    v5 = 0;
    result = sub_245036F44(&v5);
    *v2 = v5;
    *(v2 + 2) = v6;
  }

  else
  {
    *result = (((*v3 * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[6] * v4[2]);
    result[1] = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[1])) + (v3[7] * v4[2]);
    result[2] = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[1])) + (v3[8] * v4[2]);
  }

  return result;
}

float *cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::inverseTransform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_245037054(a3, v5);
}

float *sub_245037054(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 == result)
  {
    v6 = 0;
    v5 = 0;
    result = sub_245037054(&v5);
    *v2 = v5;
    *(v2 + 2) = v6;
  }

  else
  {
    v4 = **a2;
    *result = (((v4[1] * v3[1]) + (*v4 * *v3)) + 0.0) + (v4[2] * v3[2]);
    result[1] = (((v4[4] * v3[1]) + (v4[3] * *v3)) + 0.0) + (v4[5] * v3[2]);
    result[2] = (((v4[7] * v3[1]) + (v4[6] * *v3)) + 0.0) + (v4[8] * v3[2]);
  }

  return result;
}

float32x2_t cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::transformJacobian@<D0>(float32x2_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1].f32[0];
  *a2 = 0;
  *(a2 + 4) = -v2;
  *(a2 + 12) = v2;
  *(a2 + 16) = 0;
  result = *a1;
  v4 = vneg_f32(*a1);
  *(a2 + 8) = HIDWORD(*a1);
  *(a2 + 20) = v4;
  *(a2 + 28) = result.u32[0];
  return result;
}

float cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::inverseTransformJacobian@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a2[1];
  v11 = a2[2];
  v13 = (v3 * v11) - (v4 * v12);
  v14 = (v6 * v11) - (v7 * v12);
  v15 = (v9 * v11) - (v10 * v12);
  v16 = (v4 * *a2) - (*a1 * v11);
  v17 = (v7 * *a2) - (v5 * v11);
  v18 = (v10 * *a2) - (v8 * v11);
  result = (*a1 * v12) - (v3 * *a2);
  v20 = (v5 * v12) - (v6 * *a2);
  v21 = v9 * *a2;
  *a3 = v13;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v17;
  a3[5] = v18;
  a3[6] = result;
  a3[7] = v20;
  a3[8] = (v8 * v12) - v21;
  return result;
}

uint64_t cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::SO3AlgebraStorage(uint64_t result)
{
  *(result + 8) = 0;
  *result = 0;
  return result;
}

{
  *(result + 8) = 0;
  *result = 0;
  return result;
}

float cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::logJacobian@<S0>(float32x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_245036594(a1, a2);
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 8);
  v6 = ((v3 * v3) + (v4 * v4)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v11 = sqrtf(v6);
    v12 = __sincosf_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v7 = (1.0 / v6) * (1.0 - v12.__cosval);
    v8 = (1.0 / v6) * (1.0 - (v12.__sinval / v11));
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333));
    v9 = 1.0 - (v6 * v8);
    cosval = 1.0 - (v6 * v7);
  }

  v13 = -(v8 - (v7 * 0.5)) / v9;
  v14 = (v7 + (v9 * -0.5)) / (1.0 - cosval);
  if (cosval >= 0.9)
  {
    v14 = v13;
  }

  v15 = 1.0 - (v6 * v14);
  v16 = v3 * v14;
  v17 = v4 * v14;
  v18 = v15 + ((v3 * v14) * v3);
  v19 = v15 + ((v5 * v14) * v5);
  v20 = v15 + (v17 * v4);
  *(a2 + 44) = v19;
  v21 = v16 * v4;
  v22 = v16 * v5;
  v23 = v17 * v5;
  *(a2 + 12) = v18;
  *(a2 + 16) = v21 + (v5 * -0.5);
  *(a2 + 36) = (v4 * -0.5) + v22;
  *(a2 + 40) = v23 - (v3 * -0.5);
  *(a2 + 20) = v22 - (v4 * -0.5);
  *(a2 + 24) = v21 - (v5 * -0.5);
  result = v23 + (v3 * -0.5);
  *(a2 + 28) = v20;
  *(a2 + 32) = result;
  return result;
}

float cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::inverse@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  v4 = vtrn2q_s32(vextq_s8(v3, *a1, 4uLL), *a1);
  v5 = vtrn2q_s32(vextq_s8(*a1, v3, 4uLL), v3);
  *a2 = vextq_s8(v4, v4, 8uLL);
  *(a2 + 16) = vextq_s8(v5, v5, 8uLL);
  *(a2 + 32) = result;
  return result;
}

__n128 cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::adjoint@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

float32_t cva::SO3GroupStorage<float,cva::Matrix<float,3u,3u,false>>::enforce(float32x2_t *a1)
{
  v30 = 0.0;
  v29 = 0;
  sub_245036594(a1, &v29);
  v2 = *(&v29 + 1);
  v3 = *&v29;
  v4 = *(&v29 + 1) * *(&v29 + 1);
  v5 = v30;
  v6 = ((*(&v29 + 1) * *(&v29 + 1)) + (v3 * v3)) + (v5 * v5);
  if (v6 > 9.8696)
  {
    v7 = sqrtf(v6) / 3.1416;
    v8 = ceilf(v7) + -1.0;
    v9 = v8;
    v10 = v7 - v8;
    if (v9)
    {
      v10 = v10 + -1.0;
    }

    v11 = v10 / v7;
    v3 = *&v29 * v11;
    v2 = *(&v29 + 1) * v11;
    v5 = v30 * v11;
    v4 = v2 * v2;
  }

  v12 = ((v3 * v3) + v4) + (v5 * v5);
  if (v12 >= 0.0061)
  {
    v16 = sqrtf(v12);
    v17 = __sincosf_stret(v16);
    cosval = v17.__cosval;
    v14 = v17.__sinval / v16;
    v13 = (1.0 / v12) * (1.0 - v17.__cosval);
  }

  else
  {
    v13 = 0.5 - (v12 * ((v12 / -720.0) + 0.041667));
    v14 = 1.0 - (v12 * (0.16667 - (v12 * ((v12 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v12 * v13);
  }

  v18 = v3 * v13;
  v19 = v2 * v13;
  v20 = cosval + ((v3 * v13) * v3);
  v21 = cosval + ((v2 * v13) * v2);
  result = cosval + ((v5 * v13) * v5);
  v23 = v2 * v18;
  v24 = v5 * v18;
  v25 = v5 * v19;
  v26 = v3 * v14;
  v27 = v2 * v14;
  v28 = v5 * v14;
  a1->f32[0] = v20;
  a1->f32[1] = v23 + v28;
  a1[1].f32[0] = v24 - v27;
  a1[1].f32[1] = v23 - v28;
  a1[2].f32[0] = v21;
  a1[2].f32[1] = v25 + v26;
  a1[3].f32[0] = v27 + v24;
  a1[3].f32[1] = v25 - v26;
  a1[4].f32[0] = result;
  return result;
}

float32_t cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::enforce(float32x2_t *a1)
{
  v1 = *a1;
  v2 = vmul_f32(v1, v1);
  v3 = a1[1].f32[0];
  v4 = (v2.f32[1] + (v1.f32[0] * v1.f32[0])) + (v3 * v3);
  if (v4 > 9.8696)
  {
    v5 = sqrtf(v4) / 3.1416;
    v6 = ceilf(v5) + -1.0;
    v7 = v6;
    v8 = v5 - v6;
    if (v7)
    {
      v8 = v8 + -1.0;
    }

    v9 = v8 / v5;
    *a1 = vmul_n_f32(v1, v9);
    v1.f32[0] = v3 * v9;
    a1[1].f32[0] = v3 * v9;
  }

  return v1.f32[0];
}

float cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::exp@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = ((v3 * v3) + (v4 * v4)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v10 = sqrtf(v6);
    v11 = __sincosf_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = (1.0 / v6) * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 1.0 - (v6 * (0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v6 * v7);
  }

  v12 = v3 * v7;
  v13 = v4 * v7;
  v14 = cosval + ((v3 * v7) * v3);
  v15 = cosval + ((v5 * v7) * v5);
  v16 = cosval + (v13 * v4);
  a2[8] = v15;
  v17 = v4 * v12;
  v18 = v5 * v12;
  v19 = v5 * v13;
  v20 = v3 * v8;
  v21 = v4 * v8;
  v22 = v5 * v8;
  *a2 = v14;
  a2[1] = v17 + v22;
  a2[6] = v21 + v18;
  a2[7] = v19 - v20;
  a2[2] = v18 - v21;
  a2[3] = v17 - v22;
  result = v19 + v20;
  a2[4] = v16;
  a2[5] = v19 + v20;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::SO3GroupStorage(uint64_t a1)
{
  *(a1 + 64) = 0x3FF0000000000000;
  *a1 = xmmword_24508A998;
  *(a1 + 16) = unk_24508A9A8;
  result = 1.0;
  *(a1 + 32) = xmmword_24508A9B8;
  *(a1 + 48) = unk_24508A9C8;
  return result;
}

{
  *(a1 + 64) = 0x3FF0000000000000;
  *a1 = xmmword_24508A998;
  *(a1 + 16) = unk_24508A9A8;
  result = 1.0;
  *(a1 + 32) = xmmword_24508A9B8;
  *(a1 + 48) = unk_24508A9C8;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::angleInDegrees(float64x2_t *a1)
{
  v3 = 0.0;
  v4 = 0uLL;
  sub_245037840(a1, &v3);
  v1 = vmulq_f64(v4, v4);
  return sqrt(v3 * v3 + v1.f64[0] + v1.f64[1]) * 180.0 / 3.14159265;
}

void sub_245037840(float64x2_t *a1, double *a2)
{
  v4 = (a1[2].f64[1] - a1[3].f64[1]) * 0.5;
  *a2 = v4;
  v5 = (a1[3].f64[0] - a1[1].f64[0]) * 0.5;
  a2[1] = v5;
  v6 = (a1->f64[1] - a1[1].f64[1]) * 0.5;
  a2[2] = v6;
  v7 = a1->f64[0];
  v8 = a1[2].f64[0];
  v9 = a1[4].f64[0];
  v10 = -1.0;
  v11 = (a1->f64[0] + v8 + v9 + -1.0) * 0.5;
  v12 = v5 * v5 + v4 * v4 + v6 * v6;
  if (v11 >= -1.0 || v11 + 1.0 <= -0.00001)
  {
    v22 = v11 > 1.0;
    if (v11 + -1.0 >= 0.00001)
    {
      v22 = 0;
    }

    if (v11 <= 0.99 && !v22)
    {
      if (v11 <= -0.99)
      {
        v10 = (a1->f64[0] + v8 + v9 + -1.0) * 0.5;
        goto LABEL_3;
      }

      v24 = acos(v11) / sqrt(v12);
    }

    else
    {
      v24 = v12 * (v12 * (v12 * 5.0 / 112.0 + 0.075) + 0.166666667) + 1.0;
    }

    *a2 = v4 * v24;
    a2[1] = v5 * v24;
    a2[2] = v6 * v24;
    return;
  }

LABEL_3:
  v13 = asin(sqrt(v12));
  v14 = (3.14159265 - v13) * (3.14159265 - v13) / (1.0 - v10);
  v15 = (v7 - v10) * v14;
  v16 = (v8 - v10) * v14;
  v17 = (v9 - v10) * v14;
  if (v15 <= v16)
  {
    v25 = v14 * 0.5;
    if (v16 <= v17)
    {
      v32 = sqrt(v17);
      if (v6 < 0.0)
      {
        v32 = -v32;
      }

      a2[2] = v32;
      v33.f64[0] = a1[1].f64[0];
      v33.f64[1] = a1[2].f64[1];
      *a2 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(a1[3], v33), v25), 1.0 / v32);
    }

    else
    {
      v26 = sqrt(v16);
      if (v5 < 0.0)
      {
        v26 = -v26;
      }

      a2[1] = v26;
      v27 = 1.0 / v26;
      v28 = a1[3].f64[1] + a1[2].f64[1];
      *a2 = v27 * (v25 * (a1[1].f64[1] + a1->f64[1]));
      a2[2] = v27 * (v25 * v28);
    }
  }

  else
  {
    v18 = v14 * 0.5;
    v19 = v18 * (a1[3].f64[0] + a1[1].f64[0]);
    if (v15 <= v17)
    {
      v29 = sqrt(v17);
      if (v6 < 0.0)
      {
        v29 = -v29;
      }

      a2[2] = v29;
      v30 = 1.0 / v29;
      v31 = v30 * (v18 * (a1[3].f64[1] + a1[2].f64[1]));
      *a2 = v30 * v19;
      a2[1] = v31;
    }

    else
    {
      v20 = sqrt(v15);
      if (v4 < 0.0)
      {
        v20 = -v20;
      }

      *a2 = v20;
      v21 = 1.0 / v20;
      a2[1] = v21 * (v18 * (a1[1].f64[1] + a1->f64[1]));
      a2[2] = v21 * v19;
    }
  }
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::angleInRadians(float64x2_t *a1)
{
  v3 = 0.0;
  v4 = 0uLL;
  sub_245037840(a1, &v3);
  v1 = vmulq_f64(v4, v4);
  return sqrt(v3 * v3 + v1.f64[0] + v1.f64[1]);
}

void cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::log(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_245037840(a1, a2);
}

__n128 cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::lplus(uint64_t a1, double *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = v4 * v4 + v3 * v3 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v10 = sqrt(v6);
    v11 = __sincos_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = 1.0 / v6 * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 1.0 - v6 * (0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v6 * v7;
  }

  v12 = v3 * v7;
  v13 = cosval + v4 * v7 * v4;
  v14 = cosval + v3 * v7 * v3;
  *&v23[8] = cosval + v5 * v7 * v5;
  v15 = v3 * (v4 * v7);
  v16 = v5 * (v4 * v7);
  v17 = v5 * v12;
  v18 = v4 * v8;
  v19 = v5 * v8;
  *v23 = v13;
  *&v23[1] = v15 + v5 * v8;
  v20 = v3 * v8;
  *&v23[6] = v20 + v16;
  *&v23[7] = v17 - v18;
  *&v23[2] = v16 - v20;
  *&v23[3] = v15 - v19;
  *&v23[4] = v14;
  *&v23[5] = v17 + v18;
  v24[0] = v23;
  v24[1] = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  sub_245037D34(&v25, v24);
  result = v26;
  v22 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v22;
  *(a1 + 64) = v29;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_245037D34(uint64_t a1, double **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    sub_245037D34(&v7);
    v6 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v6;
    *(a1 + 64) = v11;
    result = v8;
    *a1 = v7;
    *(a1 + 16) = result;
  }

  else
  {
    *a1 = *v3 * *v4 + 0.0 + v3[3] * v4[1] + v3[6] * v4[2];
    *(a1 + 8) = v3[1] * *v4 + 0.0 + v3[4] * v4[1] + v3[7] * v4[2];
    *(a1 + 16) = v3[2] * *v4 + 0.0 + v3[5] * v4[1] + v3[8] * v4[2];
    *(a1 + 24) = *v3 * v4[3] + 0.0 + v3[3] * v4[4] + v3[6] * v4[5];
    *(a1 + 32) = v3[1] * v4[3] + 0.0 + v3[4] * v4[4] + v3[7] * v4[5];
    *(a1 + 40) = v3[2] * v4[3] + 0.0 + v3[5] * v4[4] + v3[8] * v4[5];
    *(a1 + 48) = *v3 * v4[6] + 0.0 + v3[3] * v4[7] + v3[6] * v4[8];
    *(a1 + 56) = v3[1] * v4[6] + 0.0 + v3[4] * v4[7] + v3[7] * v4[8];
    result.n128_f64[0] = v3[2] * v4[6] + 0.0 + v3[5] * v4[7] + v3[8] * v4[8];
    *(a1 + 64) = result.n128_u64[0];
  }

  return result;
}