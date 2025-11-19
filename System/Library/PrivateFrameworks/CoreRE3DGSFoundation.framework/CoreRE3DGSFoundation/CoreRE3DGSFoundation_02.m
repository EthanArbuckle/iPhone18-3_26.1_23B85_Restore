void sub_24742A9C4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<unsigned short>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D248;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<unsigned short>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D248;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedListProperty<unsigned short>::reserve(void *result, uint64_t a2)
{
  v2 = result[4];
  if (3 * a2 > ((result[6] - v2) >> 1))
  {
    if (((3 * a2) & 0x8000000000000000) == 0)
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v4 = result[7];
  if (a2 + 1 > ((result[9] - v4) >> 3))
  {
    if (!((a2 + 1) >> 61))
    {
      v5 = result[8] - v4;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedListProperty<unsigned short>::parseNext(void *a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v5 = a1[4];
  v6 = a1 + 4;
  v7 = (a1[5] - v5) >> 1;
  v8 = v37;
  v9 = MEMORY[0x277D82820];
  v28 = v7 + v37;
  v29 = a1;
  if (v7 >= v7 + v37)
  {
    v11 = MEMORY[0x277D82820];
    if (v7 > v7 + v37)
    {
      v29[5] = v5 + 2 * v28;
    }
  }

  else
  {
    std::vector<unsigned short>::__append((a1 + 4), v37);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    v13 = 2 * v7;
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1CF0](v32, &v31);
      *(*v6 + v13) = v31;
      ++*a3;
      v32[0] = v10;
      *(v32 + *(v10 - 24)) = v12;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      v13 += 2;
      --v8;
    }

    while (v8);
  }

  v15 = v29[8];
  v14 = v29[9];
  if (v15 >= v14)
  {
    v18 = v29[7];
    v19 = v15 - v18;
    v20 = (v15 - v18) >> 3;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v17 = v11;
    v22 = v14 - v18;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v24 = v20;
    v25 = (8 * v20);
    v26 = &v25[-v24];
    *v25 = v28;
    v16 = v25 + 1;
    memcpy(v26, v18, v19);
    v29[7] = v26;
    v29[8] = v16;
    v29[9] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = v28;
    v16 = v15 + 8;
    v17 = v11;
  }

  v29[8] = v16;
  v38[0] = *v17;
  *(v38 + *(v38[0] - 24)) = v17[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_24742B0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a48);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<unsigned short>::readNext(uint64_t a1)
{
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = (*(a1 + 40) - *(a1 + 32)) >> 1;
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v5 >= v4)
  {
    v7 = *(a1 + 56);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    *(a1 + 72) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  *(a1 + 64) = v6;
}

void happly::TypedListProperty<unsigned short>::readNextBigEndian(uint64_t a1)
{
  v37 = 0;
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v4 = bswap64(0);
      break;
    default:
      goto LABEL_8;
  }

  v37 = v4;
LABEL_8:
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = (a1 + 32);
  v8 = v7 - v6;
  v9 = (v7 - v6) >> 1;
  v10 = v9 + v4;
  if (v9 >= v9 + v4)
  {
    v11 = v4;
    if (v9 > v9 + v4)
    {
      *(a1 + 40) = v6 + 2 * v10;
      v11 = v4;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1 + 32, v4);
    v11 = v37;
  }

  if (v11)
  {
    v12 = *v5;
    std::istream::read();
  }

  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  if (v14 >= v13)
  {
    v35 = v7;
    v36 = v6;
    v15 = *(a1 + 56);
    v16 = v14 - v15;
    v17 = (v14 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v19 = v13 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (!(v20 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = (v14 - v15) >> 3;
    v22 = (8 * v17);
    v23 = (8 * v17 - 8 * v21);
    *v22 = v10;
    v24 = v22 + 1;
    memcpy(v23, v15, v16);
    *(a1 + 56) = v23;
    *(a1 + 64) = v24;
    *(a1 + 72) = 0;
    if (v15)
    {
      operator delete(v15);
    }

    v7 = v35;
    v6 = v36;
    *(a1 + 64) = v24;
    if (v9 >= v10)
    {
      return;
    }
  }

  else
  {
    *v14 = v10;
    *(a1 + 64) = v14 + 8;
    if (v9 >= v10)
    {
      return;
    }
  }

  v25 = *v5;
  v26 = v9;
  if (v4 < 4)
  {
    goto LABEL_41;
  }

  if (v4 < 0x10)
  {
    v27 = 0;
    goto LABEL_36;
  }

  v27 = v4 & 0xFFFFFFFFFFFFFFF0;
  v28 = (v8 + v25 + 16);
  v29 = v4 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v30 = vrev16q_s8(*v28);
    v28[-1] = vrev16q_s8(v28[-1]);
    *v28 = v30;
    v28 += 2;
    v29 -= 16;
  }

  while (v29);
  if (v4 != v27)
  {
    if ((v4 & 0xC) == 0)
    {
      v26 = v9 + v27;
      goto LABEL_41;
    }

LABEL_36:
    v26 = v9 + (v4 & 0xFFFFFFFFFFFFFFFCLL);
    v31 = (v25 + v7 + 2 * v27 - v6);
    v32 = v27 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v31 = vrev16_s8(*v31);
      ++v31;
      v32 += 4;
    }

    while (v32);
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return;
    }

LABEL_41:
    v33 = v4 + v9 - v26;
    v34 = (v25 + 2 * v26);
    do
    {
      *v34 = bswap32(*v34) >> 16;
      ++v34;
      --v33;
    }

    while (v33);
  }
}

void happly::TypedListProperty<unsigned short>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 6;
  strcpy(__p, "ushort");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 6);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742B58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<unsigned short>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1DD0](v9, *(*(a1 + 32) + 2 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedListProperty<unsigned short>::writeDataBinary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  if ((v3[1] - *v3) >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::ostream::write();
  v6 = *(a1 + 32) + 2 * v4;
  return std::ostream::write();
}

uint64_t happly::TypedListProperty<unsigned short>::writeDataBinaryBigEndian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      v9 = bswap32(*(*(a1 + 32) + 2 * v4)) >> 16;
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    bzero(v11, 2 * a2);
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

uint64_t happly::TypedProperty<unsigned short>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D2D0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<unsigned short>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D2D0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedProperty<unsigned short>::reserve(void *result, unint64_t a2)
{
  v2 = result[4];
  if (a2 > (result[6] - v2) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedProperty<unsigned short>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 1;
    if (v11 <= -2)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 1;
    v16 = (2 * v11);
    v17 = (2 * v11 - 2 * v15);
    *v16 = 0;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[4] = v17;
    a1[5] = v8;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 2;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v20, (*a2 + 24 * *a3), 8);
  v19 = 0;
  MEMORY[0x24C1A1CF0](v20, &v19);
  *(a1[5] - 2) = v19;
  ++*a3;
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v24);
}

void sub_24742BDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedProperty<unsigned short>::readNext(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 1;
    if (v7 <= -2)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v2 - v5;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (v3 - v5) >> 1;
    v12 = (2 * v7);
    v13 = (2 * v7 - 2 * v11);
    *v12 = 0;
    v4 = v12 + 1;
    memcpy(v13, v5, v6);
    a1[4] = v13;
    a1[5] = v4;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 2;
  }

  a1[5] = v4;

  return std::istream::read();
}

uint64_t happly::TypedProperty<unsigned short>::readNextBigEndian(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 1;
    if (v7 <= -2)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v2 - v5;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (v3 - v5) >> 1;
    v12 = (2 * v7);
    v13 = (2 * v7 - 2 * v11);
    *v12 = 0;
    v4 = v12 + 1;
    memcpy(v13, v5, v6);
    a1[4] = v13;
    a1[5] = v4;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 2;
  }

  a1[5] = v4;
  result = std::istream::read();
  *(a1[5] - 2) = bswap32(*(a1[5] - 2)) >> 16;
  return result;
}

void happly::TypedProperty<unsigned short>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 6;
  strcpy(__p, "ushort");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 6);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742C0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<unsigned short>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 0;
  v3 = *(*(a1 + 32) + 2 * a3);
  JUMPOUT(0x24C1A1DD0);
}

uint64_t happly::TypedListProperty<unsigned int>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D358;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_24742C254(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<unsigned int>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D358;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<unsigned int>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D358;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedListProperty<unsigned int>::reserve(void *result, uint64_t a2)
{
  v2 = result[4];
  if (3 * a2 > ((result[6] - v2) >> 2))
  {
    if (!((3 * a2) >> 62))
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v4 = result[7];
  if (a2 + 1 > ((result[9] - v4) >> 3))
  {
    if (!((a2 + 1) >> 61))
    {
      v5 = result[8] - v4;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedListProperty<unsigned int>::parseNext(uint64_t a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v5 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = (*(a1 + 40) - v5) >> 2;
  v8 = v37;
  v9 = MEMORY[0x277D82820];
  v28 = v7 + v37;
  v29 = a1;
  if (v7 >= v7 + v37)
  {
    v11 = MEMORY[0x277D82820];
    if (v7 > v7 + v37)
    {
      v29[5] = v5 + 4 * v28;
    }
  }

  else
  {
    std::vector<float>::__append((a1 + 32), v37);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    v13 = 4 * v7;
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1CC0](v32, &v31);
      *(*v6 + v13) = v31;
      ++*a3;
      v32[0] = v10;
      *(v32 + *(v10 - 24)) = v12;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      v13 += 4;
      --v8;
    }

    while (v8);
  }

  v15 = v29[8];
  v14 = v29[9];
  if (v15 >= v14)
  {
    v18 = v29[7];
    v19 = v15 - v18;
    v20 = (v15 - v18) >> 3;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v17 = v11;
    v22 = v14 - v18;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v24 = v20;
    v25 = (8 * v20);
    v26 = &v25[-v24];
    *v25 = v28;
    v16 = v25 + 1;
    memcpy(v26, v18, v19);
    v29[7] = v26;
    v29[8] = v16;
    v29[9] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = v28;
    v16 = v15 + 8;
    v17 = v11;
  }

  v29[8] = v16;
  v38[0] = *v17;
  *(v38 + *(v38[0] - 24)) = v17[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_24742C93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a48);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<unsigned int>::readNext(uint64_t a1)
{
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = (*(a1 + 40) - *(a1 + 32)) >> 2;
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v5 >= v4)
  {
    v7 = *(a1 + 56);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    *(a1 + 72) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  *(a1 + 64) = v6;
}

void happly::TypedListProperty<unsigned int>::readNextBigEndian(uint64_t a1)
{
  __n = 0;
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v4 = bswap64(0);
      break;
    default:
      goto LABEL_8;
  }

  __n = v4;
LABEL_8:
  v5 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = *(a1 + 40) - v5;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + v4;
  if (v8 >= v8 + v4)
  {
    v10 = v4;
    if (v8 > v8 + v4)
    {
      *(a1 + 40) = v5 + 4 * v9;
      v10 = v4;
    }
  }

  else
  {
    std::vector<float>::__append((a1 + 32), v4);
    v10 = __n;
  }

  if (v10)
  {
    v11 = *v6;
    std::istream::read();
  }

  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  if (v13 >= v12)
  {
    v15 = *(a1 + 56);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (!(v20 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = (v13 - v15) >> 3;
    v22 = (8 * v17);
    v23 = (8 * v17 - 8 * v21);
    *v22 = v9;
    v14 = v22 + 1;
    memcpy(v23, v15, v16);
    *(a1 + 56) = v23;
    *(a1 + 64) = v14;
    *(a1 + 72) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v9;
    v14 = v13 + 8;
  }

  *(a1 + 64) = v14;
  if (v8 < v9)
  {
    v24 = *v6;
    v25 = v7 >> 2;
    if (v4 <= 7)
    {
      goto LABEL_32;
    }

    v25 = v8 + (v4 & 0xFFFFFFFFFFFFFFF8);
    v26 = (v7 + v24 + 16);
    v27 = v4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v28 = vrev32q_s8(*v26);
      v26[-1] = vrev32q_s8(v26[-1]);
      *v26 = v28;
      v26 += 2;
      v27 -= 8;
    }

    while (v27);
    if (v4 != (v4 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_32:
      v29 = v4 + v8 - v25;
      v30 = (v24 + 4 * v25);
      do
      {
        *v30 = bswap32(*v30);
        ++v30;
        --v29;
      }

      while (v29);
    }
  }
}

void happly::TypedListProperty<unsigned int>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 4;
  strcpy(__p, "uint");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742CDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<unsigned int>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1DA0](v9, *(*(a1 + 32) + 4 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedListProperty<unsigned int>::writeDataBinary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  if ((v3[1] - *v3) >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::ostream::write();
  v6 = *(a1 + 32) + 4 * v4;
  return std::ostream::write();
}

uint64_t happly::TypedListProperty<unsigned int>::writeDataBinaryBigEndian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      v9 = bswap32(*(*(a1 + 32) + 4 * v4));
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t happly::TypedProperty<unsigned int>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D3E0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<unsigned int>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D3E0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedProperty<unsigned int>::reserve(void *result, unint64_t a2)
{
  v2 = result[4];
  if (a2 > (result[6] - v2) >> 2)
  {
    if (!(a2 >> 62))
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedProperty<unsigned int>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 2;
    v16 = (4 * v11);
    v17 = (4 * v11 - 4 * v15);
    *v16 = 0;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[4] = v17;
    a1[5] = v8;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 4;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v20, (*a2 + 24 * *a3), 8);
  v19 = 0;
  MEMORY[0x24C1A1CC0](v20, &v19);
  *(a1[5] - 4) = v19;
  ++*a3;
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v24);
}

void sub_24742D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedProperty<unsigned int>::readNext(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 2;
    v8 = v7 + 1;
    if ((v7 + 1) >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v2 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (v3 - v5) >> 2;
    v12 = (4 * v7);
    v13 = (4 * v7 - 4 * v11);
    *v12 = 0;
    v4 = v12 + 1;
    memcpy(v13, v5, v6);
    a1[4] = v13;
    a1[5] = v4;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 4;
  }

  a1[5] = v4;

  return std::istream::read();
}

uint64_t happly::TypedProperty<unsigned int>::readNextBigEndian(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 2;
    v8 = v7 + 1;
    if ((v7 + 1) >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v2 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (v3 - v5) >> 2;
    v12 = (4 * v7);
    v13 = (4 * v7 - 4 * v11);
    *v12 = 0;
    v4 = v12 + 1;
    memcpy(v13, v5, v6);
    a1[4] = v13;
    a1[5] = v4;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 4;
  }

  a1[5] = v4;
  result = std::istream::read();
  *(a1[5] - 4) = bswap32(*(a1[5] - 4));
  return result;
}

void happly::TypedProperty<unsigned int>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 4;
  strcpy(__p, "uint");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742D7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<unsigned int>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 0;
  v3 = *(*(a1 + 32) + 4 * a3);
  JUMPOUT(0x24C1A1DA0);
}

uint64_t happly::TypedListProperty<signed char>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D468;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_24742D930(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<signed char>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D468;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<signed char>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D468;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void happly::TypedListProperty<signed char>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 4;
  strcpy(__p, "char");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742DB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<signed char>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1D90](v9, *(*(a1 + 32) + v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedProperty<signed char>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D4F0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<signed char>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D4F0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void happly::TypedProperty<signed char>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 4;
  strcpy(__p, "char");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742DE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<signed char>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 0;
  v3 = *(*(a1 + 32) + a3);
  JUMPOUT(0x24C1A1D90);
}

uint64_t happly::TypedListProperty<short>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D578;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_24742DF8C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<short>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D578;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<short>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D578;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t happly::TypedListProperty<short>::parseNext(void *a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v5 = a1[4];
  v6 = a1 + 4;
  v7 = (a1[5] - v5) >> 1;
  v8 = v37;
  v9 = MEMORY[0x277D82820];
  v28 = v7 + v37;
  v29 = a1;
  if (v7 >= v7 + v37)
  {
    v11 = MEMORY[0x277D82820];
    if (v7 > v7 + v37)
    {
      v29[5] = v5 + 2 * v28;
    }
  }

  else
  {
    std::vector<unsigned short>::__append((a1 + 4), v37);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    v13 = 2 * v7;
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1CE0](v32, &v31);
      *(*v6 + v13) = v31;
      ++*a3;
      v32[0] = v10;
      *(v32 + *(v10 - 24)) = v12;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      v13 += 2;
      --v8;
    }

    while (v8);
  }

  v15 = v29[8];
  v14 = v29[9];
  if (v15 >= v14)
  {
    v18 = v29[7];
    v19 = v15 - v18;
    v20 = (v15 - v18) >> 3;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v17 = v11;
    v22 = v14 - v18;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v24 = v20;
    v25 = (8 * v20);
    v26 = &v25[-v24];
    *v25 = v28;
    v16 = v25 + 1;
    memcpy(v26, v18, v19);
    v29[7] = v26;
    v29[8] = v16;
    v29[9] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = v28;
    v16 = v15 + 8;
    v17 = v11;
  }

  v29[8] = v16;
  v38[0] = *v17;
  *(v38 + *(v38[0] - 24)) = v17[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_24742E52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a48);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<short>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 5;
  strcpy(__p, "short");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 5);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742E610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<short>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1DC0](v9, *(*(a1 + 32) + 2 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedProperty<short>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D600;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<short>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D600;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t happly::TypedProperty<short>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 1;
    if (v11 <= -2)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v12;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 1;
    v16 = (2 * v11);
    v17 = (2 * v11 - 2 * v15);
    *v16 = 0;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[4] = v17;
    a1[5] = v8;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 2;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v20, (*a2 + 24 * *a3), 8);
  v19 = 0;
  MEMORY[0x24C1A1CE0](v20, &v19);
  *(a1[5] - 2) = v19;
  ++*a3;
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v24);
}

void sub_24742EAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

void happly::TypedProperty<short>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 5;
  strcpy(__p, "short");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 5);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742EB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<short>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 0;
  v3 = *(*(a1 + 32) + 2 * a3);
  JUMPOUT(0x24C1A1DC0);
}

uint64_t happly::TypedListProperty<int>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D688;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_24742EC90(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<int>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D688;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<int>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D688;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t happly::TypedListProperty<int>::parseNext(uint64_t a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v5 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = (*(a1 + 40) - v5) >> 2;
  v8 = v37;
  v9 = MEMORY[0x277D82820];
  v28 = v7 + v37;
  v29 = a1;
  if (v7 >= v7 + v37)
  {
    v11 = MEMORY[0x277D82820];
    if (v7 > v7 + v37)
    {
      v29[5] = v5 + 4 * v28;
    }
  }

  else
  {
    std::vector<float>::__append((a1 + 32), v37);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    v13 = 4 * v7;
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1CB0](v32, &v31);
      *(*v6 + v13) = v31;
      ++*a3;
      v32[0] = v10;
      *(v32 + *(v10 - 24)) = v12;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      v13 += 4;
      --v8;
    }

    while (v8);
  }

  v15 = v29[8];
  v14 = v29[9];
  if (v15 >= v14)
  {
    v18 = v29[7];
    v19 = v15 - v18;
    v20 = (v15 - v18) >> 3;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v17 = v11;
    v22 = v14 - v18;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v24 = v20;
    v25 = (8 * v20);
    v26 = &v25[-v24];
    *v25 = v28;
    v16 = v25 + 1;
    memcpy(v26, v18, v19);
    v29[7] = v26;
    v29[8] = v16;
    v29[9] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = v28;
    v16 = v15 + 8;
    v17 = v11;
  }

  v29[8] = v16;
  v38[0] = *v17;
  *(v38 + *(v38[0] - 24)) = v17[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_24742F230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a48);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<int>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 3;
  LODWORD(__p) = 7630441;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &__p, 3);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

void sub_24742F30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<int>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1D90](v9, *(*(a1 + 32) + 4 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedProperty<int>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D710;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<int>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D710;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t happly::TypedProperty<int>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 2;
    v16 = (4 * v11);
    v17 = (4 * v11 - 4 * v15);
    *v16 = 0;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[4] = v17;
    a1[5] = v8;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 4;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v20, (*a2 + 24 * *a3), 8);
  v19 = 0;
  MEMORY[0x24C1A1CB0](v20, &v19);
  *(a1[5] - 4) = v19;
  ++*a3;
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v24);
}

void sub_24742F7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

void happly::TypedProperty<int>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 3;
  LODWORD(__p) = 7630441;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &__p, 3);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

void sub_24742F87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<int>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 0;
  v3 = *(*(a1 + 32) + 4 * a3);
  JUMPOUT(0x24C1A1D90);
}

uint64_t happly::TypedListProperty<float>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D798;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_24742F984(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<float>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D798;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<float>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D798;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t happly::TypedListProperty<float>::parseNext(uint64_t a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v5 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = (*(a1 + 40) - v5) >> 2;
  v8 = v37;
  v9 = MEMORY[0x277D82820];
  v28 = v7 + v37;
  v29 = a1;
  if (v7 >= v7 + v37)
  {
    v11 = MEMORY[0x277D82820];
    if (v7 > v7 + v37)
    {
      v29[5] = v5 + 4 * v28;
    }
  }

  else
  {
    std::vector<float>::__append((a1 + 32), v37);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    v13 = 4 * v7;
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1CA0](v32, &v31);
      *(*v6 + v13) = v31;
      ++*a3;
      v32[0] = v10;
      *(v32 + *(v10 - 24)) = v12;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      v13 += 4;
      --v8;
    }

    while (v8);
  }

  v15 = v29[8];
  v14 = v29[9];
  if (v15 >= v14)
  {
    v18 = v29[7];
    v19 = v15 - v18;
    v20 = (v15 - v18) >> 3;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v17 = v11;
    v22 = v14 - v18;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v24 = v20;
    v25 = (8 * v20);
    v26 = &v25[-v24];
    *v25 = v28;
    v16 = v25 + 1;
    memcpy(v26, v18, v19);
    v29[7] = v26;
    v29[8] = v16;
    v29[9] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = v28;
    v16 = v15 + 8;
    v17 = v11;
  }

  v29[8] = v16;
  v38[0] = *v17;
  *(v38 + *(v38[0] - 24)) = v17[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_24742FF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a48);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<float>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 5;
  strcpy(__p, "float");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 5);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247430008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<float>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 9;
  if (v6 > v5)
  {
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      v9 = *(*(a1 + 32) + 4 * v5);
      result = std::ostream::operator<<();
      ++v5;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedProperty<float>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D820;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<float>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D820;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

uint64_t happly::TypedProperty<float>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 2;
    v16 = (4 * v11);
    v17 = (4 * v11 - 4 * v15);
    *v16 = 0;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[4] = v17;
    a1[5] = v8;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 4;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v20, (*a2 + 24 * *a3), 8);
  v19 = 0;
  MEMORY[0x24C1A1CA0](v20, &v19);
  *(a1[5] - 4) = v19;
  ++*a3;
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v24);
}

void sub_2474304B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

void happly::TypedProperty<float>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 5;
  strcpy(__p, "float");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 5);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24743058C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedProperty<float>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 9;
  v3 = *(*(a1 + 32) + 4 * a3);
  return std::ostream::operator<<();
}

uint64_t happly::TypedListProperty<double>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D8A8;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_247430694(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedListProperty<double>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D8A8;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<double>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D8A8;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedListProperty<double>::reserve(void *result, uint64_t a2)
{
  v2 = result[4];
  if (3 * a2 > ((result[6] - v2) >> 3))
  {
    if (!((3 * a2) >> 61))
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v4 = result[7];
  if (a2 + 1 > ((result[9] - v4) >> 3))
  {
    if (!((a2 + 1) >> 61))
    {
      v5 = result[8] - v4;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedListProperty<double>::parseNext(void *a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v5 = a1[4];
  v6 = a1 + 4;
  v7 = (a1[5] - v5) >> 3;
  v8 = v37;
  v9 = MEMORY[0x277D82820];
  v28 = v7 + v37;
  v29 = a1;
  if (v7 >= v7 + v37)
  {
    v11 = MEMORY[0x277D82820];
    if (v7 > v7 + v37)
    {
      v29[5] = v5 + 8 * v28;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm((a1 + 4), v37);
    v10 = *v9;
    v11 = v9;
    v12 = v9[3];
    v13 = 8 * v7;
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1C90](v32, &v31);
      *(*v6 + v13) = v31;
      ++*a3;
      v32[0] = v10;
      *(v32 + *(v10 - 24)) = v12;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      v13 += 8;
      --v8;
    }

    while (v8);
  }

  v15 = v29[8];
  v14 = v29[9];
  if (v15 >= v14)
  {
    v18 = v29[7];
    v19 = v15 - v18;
    v20 = (v15 - v18) >> 3;
    v21 = v20 + 1;
    if ((v20 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v17 = v11;
    v22 = v14 - v18;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (!(v23 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v24 = v20;
    v25 = (8 * v20);
    v26 = &v25[-v24];
    *v25 = v28;
    v16 = v25 + 1;
    memcpy(v26, v18, v19);
    v29[7] = v26;
    v29[8] = v16;
    v29[9] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = v28;
    v16 = v15 + 8;
    v17 = v11;
  }

  v29[8] = v16;
  v38[0] = *v17;
  *(v38 + *(v38[0] - 24)) = v17[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_247430D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::istringstream::~istringstream(&a13);
  std::istringstream::~istringstream(&a48);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<double>::readNext(uint64_t a1)
{
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = (*(a1 + 40) - *(a1 + 32)) >> 3;
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v5 >= v4)
  {
    v7 = *(a1 + 56);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    *(a1 + 72) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  *(a1 + 64) = v6;
}

void happly::TypedListProperty<double>::readNextBigEndian(uint64_t a1)
{
  v31 = 0;
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v4 = bswap64(0);
      break;
    default:
      goto LABEL_8;
  }

  v31 = v4;
LABEL_8:
  v5 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = *(a1 + 40) - v5;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + v4;
  if (v8 >= v8 + v4)
  {
    v10 = v4;
    if (v8 > v8 + v4)
    {
      *(a1 + 40) = v5 + 8 * v9;
      v10 = v4;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1 + 32, v4);
    v10 = v31;
  }

  if (v10)
  {
    v11 = *v6;
    std::istream::read();
  }

  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  if (v13 >= v12)
  {
    v15 = *(a1 + 56);
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (!(v20 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = (v13 - v15) >> 3;
    v22 = (8 * v17);
    v23 = (8 * v17 - 8 * v21);
    *v22 = v9;
    v14 = v22 + 1;
    memcpy(v23, v15, v16);
    *(a1 + 56) = v23;
    *(a1 + 64) = v14;
    *(a1 + 72) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v9;
    v14 = v13 + 8;
  }

  *(a1 + 64) = v14;
  if (v8 < v9)
  {
    v24 = *v6;
    v25 = v7 >> 3;
    if (v4 <= 3)
    {
      goto LABEL_32;
    }

    v25 = v8 + (v4 & 0xFFFFFFFFFFFFFFFCLL);
    v26 = (v7 + v24 + 16);
    v27 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v28 = vrev64q_s8(*v26);
      v26[-1] = vrev64q_s8(v26[-1]);
      *v26 = v28;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if (v4 != (v4 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      v29 = v4 + v8 - v25;
      v30 = (v24 + 8 * v25);
      do
      {
        *v30 = bswap64(*v30);
        ++v30;
        --v29;
      }

      while (v29);
    }
  }
}

void happly::TypedListProperty<double>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 6;
  strcpy(__p, "double");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 6);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2474311EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<double>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 17;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1D70](v9, *(*(a1 + 32) + 8 * v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedListProperty<double>::writeDataBinary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  if ((v3[1] - *v3) >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::ostream::write();
  v6 = *(a1 + 32) + 8 * v4;
  return std::ostream::write();
}

uint64_t happly::TypedListProperty<double>::writeDataBinaryBigEndian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      v9 = bswap64(*(*(a1 + 32) + 8 * v4));
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t happly::TypedProperty<double>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D930;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<double>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D930;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedProperty<double>::reserve(void *result, unint64_t a2)
{
  v2 = result[4];
  if (a2 > (result[6] - v2) >> 3)
  {
    if (!(a2 >> 61))
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedProperty<double>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v7 - v9) >> 3;
    v16 = (8 * v11);
    v17 = (8 * v11 - 8 * v15);
    *v16 = 0;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[4] = v17;
    a1[5] = v8;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 8;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v20, (*a2 + 24 * *a3), 8);
  v19 = 0;
  MEMORY[0x24C1A1C90](v20, &v19);
  *(a1[5] - 8) = v19;
  ++*a3;
  v20[0] = *MEMORY[0x277D82820];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v24);
}

void sub_247431904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedProperty<double>::readNext(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v2 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (v3 - v5) >> 3;
    v12 = (8 * v7);
    v13 = (8 * v7 - 8 * v11);
    *v12 = 0;
    v4 = v12 + 1;
    memcpy(v13, v5, v6);
    a1[4] = v13;
    a1[5] = v4;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  a1[5] = v4;

  return std::istream::read();
}

uint64_t happly::TypedProperty<double>::readNextBigEndian(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = v3 - v5;
    v7 = (v3 - v5) >> 3;
    v8 = v7 + 1;
    if ((v7 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v2 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (v3 - v5) >> 3;
    v12 = (8 * v7);
    v13 = (8 * v7 - 8 * v11);
    *v12 = 0;
    v4 = v12 + 1;
    memcpy(v13, v5, v6);
    a1[4] = v13;
    a1[5] = v4;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  a1[5] = v4;
  result = std::istream::read();
  *(a1[5] - 8) = bswap64(*(a1[5] - 8));
  return result;
}

void happly::TypedProperty<double>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 6;
  strcpy(__p, "double");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 6);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247431C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<double>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 17;
  v3 = *(*(a1 + 32) + 8 * a3);
  JUMPOUT(0x24C1A1D70);
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void happly::PLYData::~PLYData(happly::PLYData *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v9 = *--v6;
              v8 = v9;
              *v6 = 0;
              if (v9)
              {
                (*(*v8 + 8))(v8);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v10 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          operator delete(*v10);
        }

        v3 -= 7;
      }

      while (v10 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  v11 = *(this + 3);
  if (v11)
  {
    v12 = *(this + 4);
    v13 = *(this + 3);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *(this + 3);
    }

    *(this + 4) = v11;
    operator delete(v13);
  }

  v15 = *this;
  if (*this)
  {
    v16 = *(this + 1);
    v17 = *this;
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *this;
    }

    *(this + 1) = v15;
    operator delete(v17);
  }
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24743202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<float>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<std::vector<float>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t happly::PLYData::validate(uint64_t this)
{
  v1 = *(this + 48);
  v2 = *(this + 56);
  v26 = this;
  if (v2 != v1)
  {
    v3 = 0;
    v4 = -1;
    v5 = MEMORY[0x277D85DE0];
    for (i = 56; ; i += 56)
    {
      v6 = (v1 + 56 * v3);
      v7 = v6[23];
      if (v7 < 0)
      {
        v7 = *(v6 + 1);
        if (v7)
        {
          v6 = *v6;
          do
          {
LABEL_11:
            v8 = *v6;
            if ((v8 & 0x80000000) != 0)
            {
              this = __maskrune(v8, 0x4000uLL);
              if (this)
              {
                goto LABEL_43;
              }
            }

            else
            {
              this = *(v5 + 4 * v8 + 60) & 0x4000;
              if (this)
              {
LABEL_43:
                exception = __cxa_allocate_exception(0x10uLL);
                v25 = *(v26 + 48) + 56 * v3;
                std::operator+<char>();
                MEMORY[0x24C1A1B50](exception, v28);
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            ++v6;
            --v7;
          }

          while (v7);
          v1 = *(v26 + 48);
          v2 = *(v26 + 56);
        }
      }

      else if (v6[23])
      {
        goto LABEL_11;
      }

      v9 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v1) >> 3);
      if (v3 + 1 >= v9)
      {
        break;
      }

      v10 = (v1 + 56 * v3);
      if (*(v10 + 23) >= 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v10[1];
      }

      v12 = v4;
      v13 = v9 + v4;
      if ((*(v10 + 23) & 0x80) == 0)
      {
        v14 = v1 + i;
        while (1)
        {
          v15 = *(v14 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v14 + 8);
          }

          if (v11 == v15)
          {
            v17 = v16 >= 0 ? v14 : *v14;
            this = memcmp(v10, v17, v11);
            if (!this)
            {
              break;
            }
          }

          v14 += 56;
          if (!--v13)
          {
            goto LABEL_3;
          }
        }

LABEL_39:
        v22 = __cxa_allocate_exception(0x10uLL);
        v23 = *(v26 + 48) + 56 * v3;
        std::operator+<char>();
        MEMORY[0x24C1A1B50](v22, v28);
        __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v18 = v1 + i;
      do
      {
        v19 = *(v18 + 23);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v18 + 8);
        }

        if (v11 == v19)
        {
          v21 = v20 >= 0 ? v18 : *v18;
          this = memcmp(*v10, v21, v11);
          if (!this)
          {
            goto LABEL_39;
          }
        }

        v18 += 56;
        --v13;
      }

      while (v13);
LABEL_3:
      v4 = v12 - 1;
      ++v3;
    }
  }

  while (v1 != v2)
  {
    this = happly::Element::validate(v1);
    v1 += 56;
  }

  return this;
}

void sub_24743239C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x24C1A1C10](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_247432574(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x24C1A1F80](v1);
  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x24C1A1C20](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x24C1A1F80](a1 + 52);
  return a1;
}

uint64_t happly::Element::validate(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v41 = *(this + 40);
  if (v41 != v2)
  {
    v40 = this;
    v3 = 0;
    v4 = -1;
    v5 = 8;
    v6 = MEMORY[0x277D85DE0];
    while (1)
    {
      v7 = *(v2 + 8 * v3);
      v8 = *(v7 + 31);
      if (v8 < 0)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          v9 = *(v7 + 8);
          do
          {
LABEL_11:
            v10 = *v9;
            if ((v10 & 0x80000000) != 0)
            {
              this = __maskrune(v10, 0x4000uLL);
              if (this)
              {
                goto LABEL_46;
              }
            }

            else
            {
              this = *(v6 + 4 * v10 + 60) & 0x4000;
              if (this)
              {
LABEL_46:
                exception = __cxa_allocate_exception(0x10uLL);
                v36 = *(*(v40 + 32) + 8 * v3) + 8;
                std::operator+<char>();
                MEMORY[0x24C1A1B50](exception, &v43);
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }
            }

            ++v9;
            --v8;
          }

          while (v8);
          v2 = *(v40 + 32);
          v41 = *(v40 + 40);
        }
      }

      else if (*(v7 + 31))
      {
        v9 = (v7 + 8);
        goto LABEL_11;
      }

      v11 = (v41 - v2) >> 3;
      if (v3 + 1 >= v11)
      {
        break;
      }

      v12 = *(v2 + 8 * v3);
      if (*(v12 + 31) >= 0)
      {
        v13 = *(v12 + 31);
      }

      else
      {
        v13 = *(v12 + 16);
      }

      v14 = v4;
      v15 = v11 + v4;
      if ((*(v12 + 31) & 0x80) == 0)
      {
        v16 = (v2 + v5);
        while (1)
        {
          v17 = *v16;
          v18 = *(*v16 + 31);
          v19 = v18;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(*v16 + 16);
          }

          if (v13 == v18)
          {
            v22 = *(v17 + 8);
            v20 = v17 + 8;
            v21 = v22;
            v23 = (v19 >= 0 ? v20 : v21);
            this = memcmp((v12 + 8), v23, v13);
            if (!this)
            {
              break;
            }
          }

          ++v16;
          if (!--v15)
          {
            goto LABEL_3;
          }
        }

LABEL_39:
        v32 = __cxa_allocate_exception(0x10uLL);
        v33 = *(*(v40 + 32) + 8 * v3) + 8;
        std::operator+<char>();
        MEMORY[0x24C1A1B50](v32, &v43);
        __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v24 = v2;
      do
      {
        v25 = *(v24 + v5);
        v26 = *(v25 + 31);
        v27 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v26 = *(v25 + 16);
        }

        if (v13 == v26)
        {
          v30 = *(v25 + 8);
          v28 = v25 + 8;
          v29 = v30;
          v31 = (v27 >= 0 ? v28 : v29);
          this = memcmp(*(v12 + 8), v31, v13);
          if (!this)
          {
            goto LABEL_39;
          }
        }

        v24 += 8;
        --v15;
      }

      while (v15);
LABEL_3:
      v4 = v14 - 1;
      v5 += 8;
      ++v3;
    }

    v1 = v40;
  }

  if (v41 != v2)
  {
    v34 = 0;
    do
    {
      this = (*(**(v2 + 8 * v34) + 80))(*(v2 + 8 * v34));
      if (this != v1[3])
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        v38 = *(v1[4] + 8 * v34) + 8;
        std::operator+<char>();
        v39 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" does not match element size.", &v42, &v43);
        MEMORY[0x24C1A1B50](v37, &v43, v39);
        __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v34;
      v2 = v1[4];
    }

    while (v34 < (v1[5] - v2) >> 3);
  }

  return this;
}

void sub_247432C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v23)
  {
    __cxa_free_exception(v22);
  }

  _Unwind_Resume(exception_object);
}

void happly::PLYData::writeHeader(unsigned int *a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "ply\n", 4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "format ", 7);
  v4 = a1[21];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = "binary_big_endian ";
      v6 = a2;
      v7 = 18;
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_8;
      }

      v5 = "binary_little_endian ";
      v6 = a2;
      v7 = 21;
    }
  }

  else
  {
    v5 = "ascii ";
    v6 = a2;
    v7 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5, v7);
LABEL_8:
  v8 = MEMORY[0x24C1A1D90](a2, a1[18]);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ".", 1);
  v10 = MEMORY[0x24C1A1D90](v9, a1[19]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  operator new();
}

void *happly::Element::writeHeader(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "element ", 8);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  v10 = MEMORY[0x24C1A1DB0](v9, *(a1 + 24));
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  v13 = *(a1 + 32);
  for (i = *(a1 + 40); v13 != i; result = (*(*v14 + 48))(v14, a2))
  {
    v14 = *v13++;
  }

  return result;
}

void **avir::CDSPFracFilterBankLin<float>::~CDSPFracFilterBankLin(void **a1)
{
  free(a1[20]);
  free(a1[13]);
  free(a1[10]);
  free(a1[7]);
  return a1;
}

uint64_t *happly::Element::getPropertyPtr(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
LABEL_17:
    v16 = a2;
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" does not have property ", &v23, &v24);
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = *v16;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = v16[1];
    }

    v21 = std::string::append(&v24, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v26 = v21->__r_.__value_.__r.__words[2];
    v25 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A1B50](exception, &v25);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    v8 = *v3;
    v9 = *(*v3 + 31);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(*v3 + 16);
    }

    if (v9 == v6)
    {
      v13 = *(v8 + 8);
      v11 = v8 + 8;
      v12 = v13;
      v14 = (v10 >= 0 ? v11 : v12);
      if (!memcmp(v14, v7, v6))
      {
        return v3;
      }
    }

    if (++v3 == v4)
    {
      goto LABEL_17;
    }
  }
}

void sub_247433244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(a21);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if (a14 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if (a14 < 0)
  {
LABEL_4:
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    __cxa_free_exception(v26);
    goto LABEL_10;
  }

LABEL_8:
  if (!v27)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *happly::Element::getDataFromPropertyRecursive<unsigned char,unsigned char>@<X0>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cannot be coerced to requested type ", &v19, &v20);
    __s[23] = 5;
    strcpy(__s, "uchar");
    v9 = std::string::append(&v20, __s, 5uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(". Has type ", &v21, &v22);
    (*(*lpsrc + 11))(v16, lpsrc, v11);
    if ((v17 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16[1];
    }

    v14 = std::string::append(&v22, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v24 = v14->__r_.__value_.__r.__words[2];
    v23 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A1B50](exception, &v23);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = result[4];
  v7 = result[5];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  a2[2] = 0;
  *a2 = 0;
  return result;
}

void sub_2474335E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a44 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a39);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a33);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_7:
    if (a26 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_8:
    operator delete(__p);
    if ((v45 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v44);
    _Unwind_Resume(a1);
  }

LABEL_16:
  if (!v45)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

uint64_t happly::TypedProperty<unsigned char>::TypedProperty(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  *a1 = &unk_28593D1C0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_247433848(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<apple3dgs::loadTv(std::__fs::filesystem::path const&,unsigned int,objc_object  {objcproto9MTLDevice}*,apple3dgs::Asset::AttributeDescriptor const&,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError * {__autoreleasing}*>,void ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28593D9B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<apple3dgs::loadTv(std::__fs::filesystem::path const&,unsigned int,objc_object  {objcproto9MTLDevice}*,apple3dgs::Asset::AttributeDescriptor const&,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError * {__autoreleasing}*>,void ()(unsigned long)>::operator()(uint64_t a1, void *a2, float16x4_t a3)
{
  v3 = *(a1 + 16);
  v4 = **(a1 + 8) + 6 * (*a2 % *(*(a1 + 8) + 52));
  a3.i32[0] = *v4;
  a3.i16[2] = *(v4 + 4);
  _D0 = vdiv_f16(vadd_f16(a3, 0xB800B800B800B800), vdup_n_s16(0x3483u));
  v6 = v3[24];
  v7 = v3[25];
  v9 = v3[22];
  v8 = v3[23];
  v10 = v9 + v6 * *a2 + v7;
  switch(v8)
  {
    case 31:
      *&v19 = vcvtq_f32_f16(_D0).u64[0];
      _H0 = _D0.i16[2];
      __asm { FCVT            S0, H0 }

      *(&v19 + 1) = __PAIR64__(1.0, _D0.u32[0]);
      *v10 = v19;
      break;
    case 30:
      _H1 = _D0.i16[2];
      __asm { FCVT            S1, H1 }

      _H2 = _D0.i16[1];
      __asm
      {
        FCVT            S2, H2
        FCVT            S0, H0
      }

      *v10 = _D0.u32[0] | (_S2 << 32);
      *(v10 + 8) = _S1;
      break;
    case 26:
      *v10 = _D0.i32[0];
      *(v10 + 4) = _D0.i16[2];
      break;
  }

  return *_D0.i32;
}

uint64_t std::__function::__func<apple3dgs::loadTv(std::__fs::filesystem::path const&,unsigned int,objc_object  {objcproto9MTLDevice}*,apple3dgs::Asset::AttributeDescriptor const&,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError * {__autoreleasing}*>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9apple3dgs6loadTvERKNSt3__14__fs10filesystem4pathEjPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9apple3dgs6loadTvERKNSt3__14__fs10filesystem4pathEjPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9apple3dgs6loadTvERKNSt3__14__fs10filesystem4pathEjPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9apple3dgs6loadTvERKNSt3__14__fs10filesystem4pathEjPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void happly::Element::getDataFromPropertyRecursive<float,float>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cannot be coerced to requested type ", &v19, &v20);
    __s[23] = 5;
    strcpy(__s, "float");
    v9 = std::string::append(&v20, __s, 5uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(". Has type ", &v21, &v22);
    (*(*lpsrc + 11))(v16, lpsrc, v11);
    if ((v17 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16[1];
    }

    v14 = std::string::append(&v22, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v24 = v14->__r_.__value_.__r.__words[2];
    v23 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A1B50](exception, &v23);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = v5[4];
  v7 = v5[5];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  while (v6 != v7)
  {
    LODWORD(v23) = *v6;
    std::vector<float>::push_back[abi:ne200100](a2, &v23);
    v6 += 4;
  }
}

void sub_247433C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 81) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v40 - 81) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v40 - 104));
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a33);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_7:
    if (a26 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_8:
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v38);
    _Unwind_Resume(a1);
  }

LABEL_16:
  if (!v39)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

void happly::Element::getDataFromPropertyRecursive<unsigned int,unsigned int>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v7 = v5[4];
    v6 = v5[5];
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5[4];
    for (i = v5[5]; v9 != i; ++v9)
    {
      v10 = *v9;
      std::vector<unsigned int>::push_back[abi:ne200100](a2, &v10);
    }
  }

  else
  {

    happly::Element::getDataFromPropertyRecursive<unsigned int,unsigned short>(lpsrc, a2);
  }
}

void sub_247433F44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void happly::Element::getDataFromPropertyRecursive<unsigned int,unsigned short>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v6 = v5[5] - v5[4];
    if (v6)
    {
      if (!((v6 >> 1) >> 62))
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5[4];
    for (i = v5[5]; v8 != i; ++v8)
    {
      v9 = *v8;
      std::vector<unsigned int>::push_back[abi:ne200100](a2, &v9);
    }
  }

  else
  {

    happly::Element::getDataFromPropertyRecursive<unsigned int,unsigned char>(lpsrc, a2);
  }
}

void sub_2474341E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void happly::Element::getDataFromPropertyRecursive<unsigned int,unsigned char>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cannot be coerced to requested type ", &v19, &v20);
    __s[23] = 4;
    strcpy(__s, "uint");
    v9 = std::string::append(&v20, __s, 4uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(". Has type ", &v21, &v22);
    (*(*lpsrc + 11))(v16, lpsrc, v11);
    if ((v17 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16[1];
    }

    v14 = std::string::append(&v22, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v24 = v14->__r_.__value_.__r.__words[2];
    v23 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A1B50](exception, &v23);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = v5[4];
  v7 = v5[5];
  if (v7 != v6)
  {
    if (!((v7 - v6) >> 62))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  while (v6 != v7)
  {
    LODWORD(v23) = *v6;
    std::vector<unsigned int>::push_back[abi:ne200100](a2, &v23);
    ++v6;
  }
}

void sub_24743441C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 65) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v40 - 65) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v40 - 88));
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a33);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_7:
    if (a26 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_8:
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v38);
    _Unwind_Resume(a1);
  }

LABEL_16:
  if (!v39)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

void *happly::Element::getDataFromPropertyRecursive<char,char>@<X0>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cannot be coerced to requested type ", &v19, &v20);
    __s[23] = 7;
    strcpy(__s, "unknown");
    v9 = std::string::append(&v20, __s, 7uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(". Has type ", &v21, &v22);
    (*(*lpsrc + 11))(v16, lpsrc, v11);
    if ((v17 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16[1];
    }

    v14 = std::string::append(&v22, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v24 = v14->__r_.__value_.__r.__words[2];
    v23 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A1B50](exception, &v23);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = result[4];
  v7 = result[5];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  a2[2] = 0;
  *a2 = 0;
  return result;
}

void sub_247434880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a44 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a39);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a33);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_7:
    if (a26 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_8:
    operator delete(__p);
    if ((v45 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v44);
    _Unwind_Resume(a1);
  }

LABEL_16:
  if (!v45)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_247434D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void happly::Element::getDataFromPropertyRecursive<int,int>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v7 = v5[4];
    v6 = v5[5];
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5[4];
    for (i = v5[5]; v9 != i; ++v9)
    {
      v10 = *v9;
      std::vector<unsigned int>::push_back[abi:ne200100](a2, &v10);
    }
  }

  else
  {

    happly::Element::getDataFromPropertyRecursive<int,short>(lpsrc, a2);
  }
}

void sub_247434EF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void happly::Element::getDataFromPropertyRecursive<int,short>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v6 = v5[5] - v5[4];
    if (v6)
    {
      if (!((v6 >> 1) >> 62))
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5[4];
    for (i = v5[5]; v8 != i; ++v8)
    {
      v9 = *v8;
      std::vector<unsigned int>::push_back[abi:ne200100](a2, &v9);
    }
  }

  else
  {

    happly::Element::getDataFromPropertyRecursive<int,signed char>(lpsrc, a2);
  }
}

void sub_247435078(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void happly::Element::getDataFromPropertyRecursive<int,signed char>(char **lpsrc@<X1>, void *a2@<X8>)
{
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cannot be coerced to requested type ", &v20, &v21);
    v19 = 3;
    strcpy(__s, "int");
    v9 = std::string::append(&v21, __s, 3uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(". Has type ", &v22, &v23);
    (*(*lpsrc + 11))(v16, lpsrc, v11);
    if ((v17 & 0x80u) == 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16[1];
    }

    v14 = std::string::append(&v23, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v25 = v14->__r_.__value_.__r.__words[2];
    v24 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C1A1B50](exception, &v24);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = v5[4];
  v7 = v5[5];
  if (v7 != v6)
  {
    if (!((v7 - v6) >> 62))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  while (v6 != v7)
  {
    LODWORD(v24) = *v6;
    std::vector<unsigned int>::push_back[abi:ne200100](a2, &v24);
    ++v6;
  }
}

void sub_2474352B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v40 - 65) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((*(v40 - 65) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v40 - 88));
  if ((a38 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a33);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_7:
    if (a26 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_8:
    operator delete(__p);
    if ((v39 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v38);
    _Unwind_Resume(a1);
  }

LABEL_16:
  if (!v39)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

__n128 std::__function::__func<apple3dgs::loadPly(std::__fs::filesystem::path const&,objc_object  {objcproto9MTLDevice}*,apple3dgs::Asset::AttributeDescriptor const&,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError * {__autoreleasing}*>,void ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28593DA38;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t *std::__function::__func<apple3dgs::loadPly(std::__fs::filesystem::path const&,objc_object  {objcproto9MTLDevice}*,apple3dgs::Asset::AttributeDescriptor const&,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError * {__autoreleasing}*>,void ()(unsigned long)>::operator()(uint64_t *result, uint64_t *a2, int16x4_t _D0)
{
  v3 = result;
  v4 = *a2;
  v5 = result[1];
  _S0 = *(*result[2] + 4 * *a2);
  _S2 = *(*result[3] + 4 * *a2);
  _S1 = *(*result[4] + 4 * *a2);
  v9 = v5[18];
  v10 = v5[17] + v5[19] * *a2 + v5[20];
  switch(v9)
  {
    case 30:
      *v10 = _S0 | (_S2 << 32);
      *(v10 + 8) = _S1;
      break;
    case 27:
      __asm
      {
        FCVT            H0, S0
        FCVT            H2, S2
      }

      HIWORD(v18) = 15360;
      LOWORD(v18) = _H0;
      __asm { FCVT            H0, S1 }

      WORD1(v18) = _H2;
      WORD2(v18) = _H0;
      *v10 = v18;
      break;
    case 26:
      __asm { FCVT            H1, S1 }

      v15 = _S1;
      __asm
      {
        FCVT            H1, S2
        FCVT            H0, S0
      }

      *v10 = _S0 | (_S1 << 16);
      *(v10 + 4) = v15;
      break;
  }

  v20 = result[1];
  v21 = *result[5];
  _S1 = *(*v21 + 4 * v4);
  _S2 = *(v21[3] + 4 * v4);
  _S0 = *(v21[6] + 4 * v4);
  v25 = v20[23];
  v26 = v20[22] + v20[24] * v4 + v20[25];
  switch(v25)
  {
    case 30:
      *v26 = _S1 | (_S2 << 32);
      *(v26 + 8) = _S0;
      v29 = result[1];
      if (*(v29 + 560) < 2u)
      {
        goto LABEL_23;
      }

      break;
    case 27:
      __asm
      {
        FCVT            H1, S1
        FCVT            H2, S2
      }

      HIWORD(v32) = 15360;
      LOWORD(v32) = _H1;
      __asm { FCVT            H0, S0 }

      WORD1(v32) = _H2;
      WORD2(v32) = _H0;
      *v26 = v32;
      break;
    case 26:
      __asm { FCVT            H0, S0 }

      v27 = _S0;
      __asm { FCVT            H0, S2 }

      v28 = _S0;
      __asm { FCVT            H0, S1 }

      *v26 = _S0 | (v28 << 16);
      *(v26 + 4) = v27;
      v29 = result[1];
      if (*(v29 + 560) < 2u)
      {
        goto LABEL_23;
      }

      break;
    default:
      v29 = result[1];
      if (*(v29 + 560) < 2u)
      {
        goto LABEL_23;
      }

      break;
  }

  v34 = 1;
  v35 = 1;
  do
  {
    v40 = v3[6];
    v80 = v34 - 1;
    v81 = &v80;
    _S8 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::vector<float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v40, &v80)[3] + 4 * v4);
    v42 = v3[6];
    v79 = v34;
    v81 = &v79;
    _S9 = *(std::__hash_table<std::__hash_value_type<unsigned int,std::vector<float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v42, &v79)[3] + 4 * v4);
    v44 = v3[6];
    v78 = v34;
    v81 = &v78;
    result = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<float>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<float>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v44, &v78);
    _D0.i32[0] = *(result[3] + 4 * v4);
    v45 = *(v29 + 184);
    v46 = *(v29 + 176) + *(v29 + 192) * v4 + *(v29 + 200) + *(v3[1] + 192) * v35 / *(v3[1] + 560);
    switch(v45)
    {
      case 30:
        *v46 = _S8 | (_S9 << 32);
        *(v46 + 8) = _D0.i32[0];
        break;
      case 27:
        __asm
        {
          FCVT            H1, S8
          FCVT            H2, S9
        }

        HIWORD(v38) = 15360;
        LOWORD(v38) = _H1;
        __asm { FCVT            H0, S0 }

        WORD1(v38) = _H2;
        WORD2(v38) = _H0;
        *v46 = v38;
        break;
      case 26:
        __asm { FCVT            H0, S0 }

        v47 = _D0.i16[0];
        __asm { FCVT            H0, S9 }

        v48 = _D0.i32[0];
        __asm { FCVT            H0, S8 }

        *v46 = _D0.i32[0] | (v48 << 16);
        *(v46 + 4) = v47;
        break;
    }

    ++v35;
    v29 = v3[1];
    v34 += 3;
  }

  while (v35 < *(v29 + 560));
LABEL_23:
  v49 = *v3[7];
  v50 = *(v29 + 240);
  v51 = *(v29 + 224);
  v52 = *(v29 + 216) + *(v29 + 232) * v4;
  if (v51 > 30)
  {
    if (v51 == 31)
    {
      v54 = (v49 + 4 * v4);
      v55 = vld1q_dup_f32(v54);
      *(v52 + v50) = v55;
    }

    else if (v51 == 53)
    {
      _S0 = *(v49 + 4 * v4);
      __asm { FCVT            H0, S0 }

      *(v52 + v50) = _S0;
    }
  }

  else if (v51 == 27)
  {
    _D0.i32[0] = *(v49 + 4 * v4);
    __asm { FCVT            H0, S0 }

    *(v52 + v50) = vdup_lane_s16(_D0, 0);
  }

  else if (v51 == 28)
  {
    *(v52 + v50) = *(v49 + 4 * v4);
  }

  v56 = v3[1];
  v57 = *v3[8];
  _S1 = *(*v57 + 4 * v4);
  _S2 = *(v57[3] + 4 * v4);
  _S0 = *(v57[6] + 4 * v4);
  v61 = v56[33];
  v62 = v56[32] + v56[34] * v4 + v56[35];
  switch(v61)
  {
    case 30:
      *v62 = _S1 | (_S2 << 32);
      *(v62 + 8) = _S0;
      break;
    case 27:
      __asm
      {
        FCVT            H1, S1
        FCVT            H2, S2
      }

      HIWORD(v67) = 15360;
      LOWORD(v67) = _H1;
      __asm { FCVT            H0, S0 }

      WORD1(v67) = _H2;
      WORD2(v67) = _H0;
      *v62 = v67;
      break;
    case 26:
      __asm { FCVT            H0, S0 }

      v63 = _S0;
      __asm { FCVT            H0, S2 }

      v64 = _S0;
      __asm { FCVT            H0, S1 }

      *v62 = _S0 | (v64 << 16);
      *(v62 + 4) = v63;
      break;
  }

  v69 = v3[1];
  v70 = *v3[9];
  v71.i32[0] = *(*v70 + 4 * v4);
  v72 = *(v70[3] + 4 * v4);
  v73 = *(v70[6] + 4 * v4);
  v74 = *(v70[9] + 4 * v4);
  v75 = v69[40];
  v76 = v69[38];
  v77 = v69[37] + v69[39] * v4;
  if (v76 == 31)
  {
    v71.i32[1] = v72;
    v71.i64[1] = __PAIR64__(v74, v73);
    *(v77 + v75) = v71;
  }

  else if (v76 == 27)
  {
    v71.i32[1] = v72;
    v71.i64[1] = __PAIR64__(v74, v73);
    *(v77 + v75) = vcvt_f16_f32(v71);
  }

  return result;
}

uint64_t std::__function::__func<apple3dgs::loadPly(std::__fs::filesystem::path const&,objc_object  {objcproto9MTLDevice}*,apple3dgs::Asset::AttributeDescriptor const&,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError * {__autoreleasing}*>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9apple3dgs7loadPlyERKNSt3__14__fs10filesystem4pathEPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9apple3dgs7loadPlyERKNSt3__14__fs10filesystem4pathEPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9apple3dgs7loadPlyERKNSt3__14__fs10filesystem4pathEPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9apple3dgs7loadPlyERKNSt3__14__fs10filesystem4pathEPU19objcproto9MTLDevice11objc_objectRKNS_5Asset19AttributeDescriptorEPU15__autoreleasingP7NSErrorE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<apple3dgs::savePly(std::__fs::filesystem::path const&,apple3dgs::Asset const&)::$_0,std::allocator<apple3dgs::savePly(std::__fs::filesystem::path const&,apple3dgs::Asset const&)::$_0>,void ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28593DAB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<apple3dgs::savePly(std::__fs::filesystem::path const&,apple3dgs::Asset const&)::$_0,std::allocator<apple3dgs::savePly(std::__fs::filesystem::path const&,apple3dgs::Asset const&)::$_0>,void ()(unsigned long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 144);
  v6 = *(v4 + 136) + *(v4 + 152) * *a2 + *(v4 + 160);
  _Q0.i64[0] = 0;
  _Q0.i32[2] = 0;
  if (v5 > 29)
  {
    if (v5 == 30)
    {
      _Q0.i64[0] = *v6;
      _Q0.i32[2] = *(v6 + 8);
    }

    else if (v5 == 53)
    {
      _Q0.i16[0] = *v6;
      __asm { FCVT            S0, H0 }

      _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
    }
  }

  else if (v5 == 26)
  {
    _Q0.i32[0] = *v6;
    _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
    _H1 = *(v6 + 4);
    __asm { FCVT            S1, H1 }

    _Q0.i32[2] = _S1;
  }

  else if (v5 == 28)
  {
    _Q0 = vld1q_dup_f32(v6);
  }

  v14 = **(a1 + 16);
  *(*v14 + 4 * v3) = _Q0.i32[0];
  *(v14[3] + 4 * v3) = _Q0.i32[1];
  *(v14[6] + 4 * v3) = _Q0.i32[2];
  v15 = *(v4 + 192);
  v16 = *(v4 + 184);
  v17 = *(v4 + 176) + v15 * v3 + *(v4 + 200);
  _Q0.i64[0] = 0;
  _Q0.i32[2] = 0;
  if (v16 > 29)
  {
    if (v16 == 30)
    {
      _Q0.i64[0] = *v17;
      _Q0.i32[2] = *(v17 + 8);
    }

    else if (v16 == 53)
    {
      _Q0.i16[0] = *v17;
      __asm { FCVT            S0, H0 }

      _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
    }
  }

  else if (v16 == 26)
  {
    _Q0.i32[0] = *v17;
    _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
    _H1 = *(v17 + 4);
    __asm { FCVT            S1, H1 }

    _Q0.i32[2] = _S1;
  }

  else if (v16 == 28)
  {
    _Q0 = vld1q_dup_f32(v17);
  }

  v20 = **(a1 + 24);
  *(*v20 + 4 * v3) = _Q0.i32[0];
  *(v20[3] + 4 * v3) = _Q0.i32[1];
  *(v20[6] + 4 * v3) = _Q0.i32[2];
  v21 = *(v4 + 560);
  if (v21 >= 2)
  {
    v22 = 0;
    v23 = **(a1 + 32);
    v24 = v15;
    do
    {
      v25 = v17 + v24 / v21;
      if (v16 > 29)
      {
        if (v16 == 30)
        {
          _Q0.i64[0] = *v25;
          _Q0.i32[2] = *(v25 + 8);
          goto LABEL_22;
        }

        if (v16 == 53)
        {
          _Q0.i16[0] = *v25;
          __asm { FCVT            S0, H0 }

          _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
          goto LABEL_22;
        }
      }

      else
      {
        if (v16 == 26)
        {
          _Q0.i32[0] = *v25;
          _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
          _H1 = *(v25 + 4);
          __asm { FCVT            S1, H1 }

          _Q0.i32[2] = _S1;
          goto LABEL_22;
        }

        if (v16 == 28)
        {
          _Q0 = vld1q_dup_f32(v25);
          goto LABEL_22;
        }
      }

      _Q0.i8[0] = 0;
LABEL_22:
      *(*(v23 + 24 * v22) + 4 * v3) = _Q0.i32[0];
      *(*(v23 + 24 * (v22 + 1)) + 4 * v3) = _Q0.i32[1];
      *(*(v23 + 24 * (v22 + 2)) + 4 * v3) = _Q0.i32[2];
      v22 += 3;
      v24 += v15;
    }

    while (3 * v21 - 3 != v22);
  }

  v28 = *(v4 + 240);
  v29 = *(v4 + 224);
  v30 = *(v4 + 216) + *(v4 + 232) * v3;
  if (v29 == 28)
  {
    v33 = *(v30 + v28);
LABEL_36:
    _S0 = v33;
    v35 = *(v4 + 568);
    if (v35 != 2)
    {
      goto LABEL_37;
    }

LABEL_40:
    __asm { FCVT            H0, S0 }

    _H0 = -_H0;
    __asm { FCVT            S0, H0; float }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0
    }

    _S0 = 1.0 / (_S0 + 1.0);
    goto LABEL_41;
  }

  if (v29 == 53)
  {
    _H0 = *(v30 + v28);
    __asm { FCVT            S0, H0 }

    v33 = _S0;
    goto LABEL_36;
  }

  _S0 = 0.0;
  v35 = *(v4 + 568);
  if (v35 == 2)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (v35 == 1)
  {
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0; float
    }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0
    }
  }

LABEL_41:
  *(**(a1 + 40) + 4 * v3) = logf(_S0 / (1.0 - _S0));
  v44 = *(v4 + 304);
  v45 = (*(v4 + 296) + *(v4 + 312) * v3 + *(v4 + 320));
  _Q0 = 0uLL;
  if (v44 > 29)
  {
    switch(v44)
    {
      case 30:
        *_Q0.f32 = *v45;
        _Q0.i32[2] = v45[1].i32[0];
        _Q0.i32[3] = 1.0;
        break;
      case 31:
        _Q0 = *v45->i8;
        break;
      case 53:
        _Q0.i16[0] = v45->i16[0];
        __asm { FCVT            S0, H0 }

        _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
        break;
    }
  }

  else
  {
    switch(v44)
    {
      case 26:
        _Q0.i32[0] = v45->i32[0];
        _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
        _H1 = v45->i16[2];
        __asm { FCVT            S1, H1 }

        _Q0.i64[1] = __PAIR64__(1.0, _S1);
        break;
      case 27:
        _Q0 = vcvtq_f32_f16(*v45);
        break;
      case 28:
        _Q0 = vld1q_dup_f32(v45);
        break;
    }
  }

  v49 = **(a1 + 48);
  *(*v49 + 4 * v3) = _Q0.i32[0];
  *(v49[3] + 4 * v3) = _Q0.i32[1];
  *(v49[6] + 4 * v3) = _Q0.i32[2];
  *(v49[9] + 4 * v3) = _Q0.i32[3];
  v50 = *(v4 + 264);
  v51 = *(v4 + 256) + *(v4 + 272) * v3 + *(v4 + 280);
  _Q1 = 0uLL;
  if (v50 > 29)
  {
    if (v50 == 30)
    {
      _Q1.i64[0] = *v51;
      _Q1.i32[2] = *(v51 + 8);
      v53 = *(v4 + 564);
      v54 = **(a1 + 56);
      v82 = _Q1;
      if (v53 != 2)
      {
        goto LABEL_65;
      }

LABEL_69:
      __asm { FCVT            H0, S1 }

      _H0 = -_H0;
      __asm { FCVT            S0, H0; float }

      _S0 = expf(_S0);
      __asm
      {
        FCVT            H0, S0
        FCVT            S0, H0
      }

      *(*v54 + 4 * v3) = logf(1.0 / (_S0 + 1.0));
      _S0 = v82.i32[1];
      __asm { FCVT            H0, S0 }

      *&_S0 = -*&_S0;
      __asm { FCVT            S0, H0; float }

      _S0 = expf(_S0);
      __asm
      {
        FCVT            H0, S0
        FCVT            S0, H0
      }

      *(v54[3] + 4 * v3) = logf(1.0 / (_S0 + 1.0));
      _S0 = v82.i32[2];
      __asm { FCVT            H0, S0 }

      *&_S0 = -*&_S0;
      __asm { FCVT            S0, H0; float }

      _S0 = expf(_S0);
      __asm
      {
        FCVT            H0, S0
        FCVT            S0, H0
      }

      _S0 = 1.0 / (_S0 + 1.0);
      goto LABEL_70;
    }

    if (v50 == 53)
    {
      _Q0.i16[0] = *v51;
      __asm { FCVT            S0, H0 }

      _Q1 = vdupq_lane_s32(*_Q0.f32, 0);
      v53 = *(v4 + 564);
      v54 = **(a1 + 56);
      v82 = _Q1;
      if (v53 == 2)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

LABEL_64:
    v53 = *(v4 + 564);
    v54 = **(a1 + 56);
    v82 = _Q1;
    if (v53 != 2)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  if (v50 == 26)
  {
    _Q0.i32[0] = *v51;
    _Q1 = vcvtq_f32_f16(*_Q0.f32);
    _H0 = *(v51 + 4);
    __asm { FCVT            S0, H0 }

    _Q1.i32[2] = _S0;
    goto LABEL_64;
  }

  if (v50 != 28)
  {
    goto LABEL_64;
  }

  _Q1 = vld1q_dup_f32(v51);
  v53 = *(v4 + 564);
  v54 = **(a1 + 56);
  v82 = _Q1;
  if (v53 == 2)
  {
    goto LABEL_69;
  }

LABEL_65:
  if (v53 == 1)
  {
    __asm
    {
      FCVT            H0, S1
      FCVT            S0, H0; float
    }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0; float
    }

    *(*v54 + 4 * v3) = logf(_S0);
    _S0 = v82.i32[1];
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0; float
    }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0; float
    }

    *(v54[3] + 4 * v3) = logf(_S0);
    _S0 = v82.i32[2];
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0; float
    }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0
    }
  }

  else
  {
    *(*v54 + 4 * v3) = logf(_Q1.f32[0]);
    *(v54[3] + 4 * v3) = logf(v82.f32[1]);
    _S0 = v82.f32[2];
  }

LABEL_70:
  *(v54[6] + 4 * v3) = logf(_S0);
}

uint64_t std::__function::__func<apple3dgs::savePly(std::__fs::filesystem::path const&,apple3dgs::Asset const&)::$_0,std::allocator<apple3dgs::savePly(std::__fs::filesystem::path const&,apple3dgs::Asset const&)::$_0>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9apple3dgs7savePlyERKNSt3__14__fs10filesystem4pathERKNS_5AssetEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9apple3dgs7savePlyERKNSt3__14__fs10filesystem4pathERKNS_5AssetEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9apple3dgs7savePlyERKNSt3__14__fs10filesystem4pathERKNS_5AssetEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9apple3dgs7savePlyERKNSt3__14__fs10filesystem4pathERKNS_5AssetEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t happly::TypedProperty<float>::TypedProperty(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  *a1 = &unk_28593D820;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_247436288(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedProperty<unsigned int>::TypedProperty(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  *a1 = &unk_28593D3E0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_2474363C8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedProperty<signed char>::TypedProperty(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  *a1 = &unk_28593D4F0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_247436508(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v1 = v3;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CImageResizer(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  *a1 = *a4;
  *(a1 + 16) = v5;
  v6 = *(a4 + 32);
  v7 = *(a4 + 48);
  v8 = *(a4 + 64);
  *(a1 + 80) = *(a4 + 80);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  *(a1 + 124) = -1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 264) = 0u;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  *(a1 + 88) = v9;
  *(a1 + 92) = a2;
  v18 = 0;
  v16 = 0uLL;
  v17 = 0uLL;
  *v15 = 0uLL;
  if (a2 > v9)
  {
    v9 = a2;
  }

  v10 = v9 > 8;
  v11 = vcvtpd_s64_f64(dbl_247478C60[v9 > 8] * exp(dbl_247478C50[v9 > 8] * ((v9 + 3) * -6.02)));
  if (v11 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  avir::CDSPFracFilterBankLin<float>::init((a1 + 96), v12, v10, v15, 4, 1, *(a1 + 32), *(a1 + 24), *(a1 + 16));
  free(v15[0]);
  avir::CDSPFracFilterBankLin<float>::createAllFilters(a1 + 96, v13);
  return a1;
}

void sub_247436684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  free(a9);
  avir::CDSPFracFilterBankLin<float>::~CDSPFracFilterBankLin((v9 + 96));
  _Unwind_Resume(a1);
}

void avir::CDSPFracFilterBankLin<float>::createAllFilters(uint64_t a1, __n128 a2)
{
  if (*(a1 + 24) >= 1)
  {
    for (i = 0; i < *(a1 + 24); ++i)
    {
      if ((*(a1 + 184) & 1) == 0)
      {
        avir::CDSPFracFilterBankLin<float>::buildSrcTable(a1);
      }

      if ((*(*(a1 + 88) + i) & 2) != 0)
      {
        continue;
      }

      v4 = *(a1 + 64);
      v5 = *(a1 + 44);
      a2.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(a1, i, a2);
      *(*(a1 + 88) + i) |= 2u;
      if (*(a1 + 28) < 1)
      {
        continue;
      }

      a2.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(a1, i + 1, a2);
      v6 = *(a1 + 40);
      if (v6 < 1)
      {
        continue;
      }

      v7 = *(a1 + 44);
      if (v6 >= 8 && ((v6 - v7) & 0x3FFFFFFFFFFFFFF8) != 0)
      {
        v8 = v6 & 0x7FFFFFF8;
        v9 = 4 * v5 * i;
        v10 = (v4 + 16 + v9 + 4 * v7);
        v11 = (v4 + 16 + v9 + 4 * v6);
        v12 = (v4 + 16 + v9);
        v13 = v8;
        do
        {
          a2 = vsubq_f32(v10[-1], v12[-1]);
          v14 = vsubq_f32(*v10, *v12);
          v11[-1] = a2;
          *v11 = v14;
          v10 += 2;
          v11 += 2;
          v12 += 2;
          v13 -= 8;
        }

        while (v13);
        if (v8 == v6)
        {
          continue;
        }
      }

      else
      {
        v8 = 0;
      }

      v15 = v6 - v8;
      v16 = (v4 + 4 * v8 + 4 * v5 * i);
      do
      {
        a2.n128_f32[0] = v16[v7] - *v16;
        v16[v6] = a2.n128_f32[0];
        ++v16;
        --v15;
      }

      while (v15);
    }
  }
}

void **avir::CDSPFracFilterBankLin<float>::init(void **result, int a2, int a3, uint64_t a4, int a5, int a6, double a7, double a8, double a9)
{
  v13 = result;
  v14 = a7 * 0.5 * a2;
  v15 = a8 * 3.14159265 / a2;
  if (*(result + 7) == a3 && v14 == *result && v15 == *(result + 1) && *(result + 2) == a9 && *(result + 6) == a2 && *(a4 + 24) == *(result + 16) && *(a4 + 32) == *(result + 17) && *(a4 + 40) == *(result + 18) && *(a4 + 48) == *(result + 19))
  {
    v16 = 0;
    goto LABEL_18;
  }

  *result = v14;
  *(result + 1) = v15;
  *(result + 2) = a9;
  *(result + 6) = a2;
  *(result + 7) = a3;
  *(result + 8) = a5;
  v17 = *(a4 + 20);
  v18 = *(a4 + 16);
  free(result[13]);
  if (!v17)
  {
    result = malloc_type_malloc(8 * v18, 0x100004000313F17uLL);
    v13[13] = result;
    v13[14] = result;
    *(v13 + 30) = v18;
    *(v13 + 31) = 0;
    if (v18 < 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = malloc_type_malloc(8 * v18 + v17, 0x100004000313F17uLL);
  result = (v19 + v17 - ((v17 - 1) & v19));
  v13[13] = v19;
  v13[14] = result;
  *(v13 + 30) = v18;
  *(v13 + 31) = v17;
  if (v18 >= 1)
  {
LABEL_13:
    result = memcpy(result, *(a4 + 8), 8 * v18);
    LODWORD(v18) = *(v13 + 30);
  }

LABEL_14:
  v20 = vcvtpd_s64_f64(*v13);
  v21 = *(a4 + 40);
  *(v13 + 8) = *(a4 + 24);
  *(v13 + 9) = v21;
  v22 = 2 * ((v20 - 1) / a2);
  v23 = v22 + 2;
  v24 = v18 + v22;
  if (v18 > 0)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = (a6 + v25 - 1) & -a6;
  *(v13 + 9) = v23;
  *(v13 + 10) = v26;
  *(v13 + 11) = v26 + v26 * a3;
  *(v13 + 184) = 0;
  v16 = 1;
LABEL_18:
  *(v13 + 48) = v16;
  return result;
}

void avir::CDSPFracFilterBankLin<float>::buildSrcTable(uint64_t a1)
{
  *(a1 + 184) = 1;
  *(a1 + 48) = 0;
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = vcvtpd_s64_f64(*a1);
  v6 = v5 - 1;
  v7 = *(a1 + 24) * *(a1 + 36);
  v8 = v7 + 1;
  v9 = v7 / 2;
  v10 = malloc_type_malloc(8 * (v7 + 1), 0x100004000313F17uLL);
  bzero(v10, 8 * (v9 - (v5 - 1)));
  bzero(&v10[8 * v9 + 8 * v5], 8 * (v8 - (v9 + v5)));
  v11 = 1.0 / v3;
  v12 = 1.57079633 / v3;
  v61 = cos(v12);
  v13 = cos(v2);
  v14 = 0.0;
  v63 = v11;
  v64 = v4;
  *&v10[8 * (v9 - (v5 - 1)) - 8 + 8 * v5] = v2 * (1.0 - pow(v11 * 0.0, v4));
  if (v5 >= 2)
  {
    v60 = v13 + v13;
    v15 = -(sin(0.0 - v2) - (v13 + v13) * 0.0);
    v62 = v61 + v61;
    v16 = v62 - sin(1.57079633 - v12);
    v17 = &v10[8 * v9];
    v18 = (v17 + 8);
    v19 = (v17 - 8);
    v20 = 1.0;
    v21 = 1.0;
    v22 = 1.0;
    do
    {
      v23 = v15;
      v15 = -(v14 - v60 * v15);
      v24 = pow(v63 * v22, v64);
      v22 = v22 + 1.0;
      v25 = v23 * (v16 * (1.0 - v24)) / v20;
      *v18++ = v25;
      *v19-- = v25;
      v26 = -(v21 - v62 * v16);
      v20 = v20 + 1.0;
      v14 = v23;
      v21 = v16;
      v16 = v26;
      --v6;
    }

    while (v6);
  }

  v27 = *(a1 + 36) + *(a1 + 36) * *(a1 + 24);
  free(*(a1 + 160));
  v28 = malloc_type_malloc(8 * v27, 0x100004000313F17uLL);
  *(a1 + 160) = v28;
  *(a1 + 168) = v28;
  *(a1 + 176) = v27;
  *(a1 + 180) = 0;
  v29 = *(a1 + 24) + 1;
  free(*(a1 + 80));
  v30 = malloc_type_malloc(v29, 0x100004077774924uLL);
  *(a1 + 80) = v30;
  *(a1 + 88) = v30;
  *(a1 + 96) = v29;
  v31 = *(a1 + 24);
  if ((v31 & 0x80000000) == 0)
  {
    v32 = *(a1 + 168);
    do
    {
      *(*(a1 + 88) + v31) = 0;
      v34 = *(a1 + 36);
      if (v34 >= 1)
      {
        v35 = 0;
        v36 = *(a1 + 36);
        v37 = &v10[8 * v31];
        v38 = *(a1 + 24);
        v39 = &v32[-v34 + 3];
        do
        {
          v40 = v39;
          *v32++ = *v37;
          v37 += 8 * v38;
          ++v35;
          v39 += 8;
        }

        while (v35 != v34);
        v41 = &v32[-v34];
        v42 = 0.0;
        v43 = v34;
        v44 = v41;
        if (v34 < 4)
        {
          goto LABEL_14;
        }

        v43 = v34 - (v34 & 0x7FFFFFFC);
        v44 = &v41[v34 & 0x7FFFFFFC];
        v45 = v34 & 0x7FFFFFFC;
        v46 = v40;
        do
        {
          v47 = *v46;
          v42 = v42 + v46[-1].f64[0] + v46[-1].f64[1] + v46->f64[0] + v46->f64[1];
          v46 += 2;
          v45 -= 4;
        }

        while (v45);
        if ((v34 & 0x7FFFFFFC) != v34)
        {
LABEL_14:
          v48 = v43 + 1;
          do
          {
            v49 = *v44++;
            v42 = v42 + v49;
            --v48;
          }

          while (v48 > 1);
        }

        v50 = 1.0 / v42;
        if (v34 < 4)
        {
          goto LABEL_20;
        }

        v51 = v34 & 0x7FFFFFFC;
        LODWORD(v34) = v34 - (v34 & 0x7FFFFFFC);
        v41 += v36 & 0x7FFFFFFC;
        v52 = v36 & 0x7FFFFFFC;
        do
        {
          v53 = vmulq_n_f64(*v40, v50);
          v40[-1] = vmulq_n_f64(v40[-1], v50);
          *v40 = v53;
          v40 += 2;
          v52 -= 4;
        }

        while (v52);
        if (v51 != v36)
        {
LABEL_20:
          v54 = v34 + 1;
          do
          {
            *v41 = v50 * *v41;
            ++v41;
            --v54;
          }

          while (v54 > 1);
        }
      }
    }

    while (v31-- > 0);
    LODWORD(v31) = *(a1 + 24);
  }

  v55 = *(a1 + 44) + *(a1 + 44) * v31;
  v56 = *(a1 + 32);
  free(*(a1 + 56));
  v57 = 4 * v55;
  if (v56)
  {
    v58 = malloc_type_malloc(v57 + v56, 0x100004052888210uLL);
    v59 = v58 + v56 - ((v56 - 1) & v58);
  }

  else
  {
    v58 = malloc_type_malloc(v57, 0x100004052888210uLL);
    v59 = v58;
  }

  *(a1 + 56) = v58;
  *(a1 + 64) = v59;
  *(a1 + 72) = v55;
  *(a1 + 76) = v56;

  free(v10);
}

float avir::CDSPFracFilterBankLin<float>::createFilter(uint64_t a1, int a2, __n128 a3)
{
  v3 = *(a1 + 88);
  if (!*(v3 + a2))
  {
    *(v3 + a2) = 1;
    v6 = *(a1 + 120);
    v7 = *(a1 + 36);
    v8 = *(a1 + 40);
    v9 = v7 / 2;
    if (v6 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v6 - 1;
    }

    v12 = (v11 + v7);
    v13 = v8 / 2;
    v10 = v6 / -2 - v7 / 2;
    v14 = v10 + v8 / 2;
    v15 = *(a1 + 44) * a2;
    v58 = *(a1 + 64);
    if (v14 >= 1)
    {
      v57 = v10 + v8 / 2;
      v16 = v11;
      bzero((v58 + 4 * v15), 4 * (v14 - 1) + 4);
      v13 = v8 / 2;
      v11 = v16;
      v9 = v7 / 2;
      v14 = v57;
    }

    if (v14 + v12 < v8)
    {
      v17 = v14;
      bzero((v58 + 4 * (v15 + (v14 + v12))), 4 * (v8 + ~v11 - (v7 - v9 + v6 / -2 + v13)) + 4);
      v14 = v17;
    }

    v18 = *(a1 + 168);
    v19 = v7 * a2;
    if (!v6)
    {
      if (v12 < 1)
      {
        return a3.n128_f32[0];
      }

      v42 = v14;
      if (v12 >= 8)
      {
        v43 = v12 & 0x7FFFFFF8;
        v44 = (v18 + 8 * v19 + 32);
        v45 = (4 * v15 + 4 * v42 + v58 + 16);
        v46 = v43;
        do
        {
          v48 = v44[-2];
          v47 = v44[-1];
          v50 = *v44;
          v49 = v44[1];
          v44 += 4;
          v51 = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
          a3 = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v49);
          v45[-1] = v51;
          *v45 = a3;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v43 == v12)
        {
          return a3.n128_f32[0];
        }
      }

      else
      {
        v43 = 0;
      }

      v52 = (v58 + 4 * v43 + 4 * v15 + 4 * v42);
      v53 = (v18 + 8 * v43 + 8 * v19);
      v54 = v12 - v43;
      do
      {
        v55 = *v53++;
        a3.n128_f32[0] = v55;
        *v52++ = a3.n128_u32[0];
        --v54;
      }

      while (v54);
      return a3.n128_f32[0];
    }

    if (v12 < 1)
    {
      return a3.n128_f32[0];
    }

    v20 = 0;
    v21 = v58 + 4 * v15 + 4 * v14;
    v22 = v18 + 8 * v7 * a2;
    v23 = *(a1 + 112);
    v24 = -v6;
    v25 = v18 + 8 * v19 + 16;
    v26 = 1;
    do
    {
      while (1)
      {
        v27 = v24 >= -1 ? -1 : v24;
        v28 = v7 >= v26 ? v26 : v7;
        v29 = v20 + 1;
        v30 = v20 - v6 >= -1 ? (v20 - v6 + 1) : 0;
        v31 = v29 >= v7 ? v7 : v20 + 1;
        v32 = (v31 - v30);
        if (v32 >= 1)
        {
          break;
        }

        a3.n128_u32[0] = 0;
        *(v21 + 4 * v20) = 0;
        ++v24;
        ++v26;
        ++v20;
        if (v29 == v12)
        {
          return a3.n128_f32[0];
        }
      }

      v33 = 8 * ~v27;
      if (v32 >= 4)
      {
        v35 = (v23 + 16 + v33);
        v34 = v32 & 0x7FFFFFFC;
        v36 = (v25 + 8 * v30);
        v37 = (v28 - v30) & 0x7FFFFFFC;
        a3.n128_u64[0] = 0;
        do
        {
          v38 = vmulq_f64(v35[-1], v36[-1]);
          v39 = vmulq_f64(*v35, *v36);
          a3.n128_f64[0] = a3.n128_f64[0] + v38.f64[0] + v38.f64[1] + v39.f64[0] + v39.f64[1];
          v35 += 2;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (v34 == v32)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v34 = 0;
        a3.n128_u64[0] = 0;
      }

      v40 = v23 + v33;
      v41 = v22 + 8 * v30;
      do
      {
        a3.n128_f64[0] = a3.n128_f64[0] + *(v40 + 8 * v34) * *(v41 + 8 * v34);
        ++v34;
      }

      while (v34 < v32);
LABEL_34:
      a3.n128_f32[0] = a3.n128_f64[0];
      *(v21 + 4 * v20) = a3.n128_u32[0];
      ++v24;
      ++v26;
      ++v20;
    }

    while (v29 != v12);
  }

  return a3.n128_f32[0];
}

void avir::CDSPPeakedCosineLPF::generateLPF<double>(int *a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 3);
  v7 = *(a1 + 1);
  v8 = 1.0 / v7;
  v9 = 1.57079633 / v7;
  v58 = sin(1.57079633 - 1.57079633 / v7);
  v10 = cos(v9);
  v11 = v10 + v10;
  v12 = *(a1 + 2);
  v13 = sin(0.0 - v12);
  v14 = cos(v12);
  v15 = v14 + v14;
  v16 = *a1;
  v17 = (a2 + 8 * *a1);
  v18 = -(v13 - v15 * 0.0);
  v19 = v15;
  v20 = v6;
  v21 = v12 * (1.0 - pow(v8 * 0.0, v6));
  *v17 = v21;
  v56 = a3;
  if (a3 <= 0.0)
  {
    v63 = v11;
    if (v16 >= 1)
    {
      v36 = v8;
      v37 = v19;
      v38 = v20;
      v39 = v63 - v58;
      v40 = a2 + 8 * v16;
      v41 = (v40 + 8);
      v42 = (v40 - 8);
      v43 = 0.0;
      v44 = 1.0;
      v45 = 1.0;
      v46 = 1.0;
      do
      {
        v47 = v18;
        v61 = -(v43 - v37 * v18);
        v48 = v38;
        v49 = pow(v36 * v46, v38);
        v38 = v48;
        v46 = v46 + 1.0;
        v50 = v47 * (v39 * (1.0 - v49)) / v44;
        *v41++ = v50;
        *v42-- = v50;
        v18 = v61;
        v51 = -(v45 - v63 * v39);
        v44 = v44 + 1.0;
        v43 = v47;
        v45 = v39;
        v39 = v51;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    if (v16 >= 1)
    {
      v60 = v6;
      v62 = v11;
      v22 = v11 - v58;
      v23 = (a2 + 8 * v16 + 8);
      v24 = 0.0;
      v25 = 1.0;
      v26 = 1.0;
      v57 = v19;
      v59 = v8;
      v27 = 1.0;
      do
      {
        v28 = v18;
        v18 = -(v24 - v57 * v18);
        v29 = pow(v59 * v27, v60);
        v27 = v27 + 1.0;
        v30 = -(v26 - v62 * v22);
        v31 = v28 * (v22 * (1.0 - v29)) / v25;
        *v23++ = v31;
        *--v17 = v31;
        v21 = v21 + v31 + v31;
        v25 = v25 + 1.0;
        v24 = v28;
        v26 = v22;
        v22 = v30;
        --v16;
      }

      while (v16);
    }

    v32 = a1[1];
    if (v32 >= 1)
    {
      v33 = v56 / v21;
      if (v32 < 4)
      {
        v34 = v17;
        v35 = a1[1];
LABEL_15:
        v55 = v35 + 1;
        do
        {
          *v34 = v33 * *v34;
          ++v34;
          --v55;
        }

        while (v55 > 1);
        return;
      }

      v34 = &v17[v32 & 0x7FFFFFFC];
      v35 = v32 - (v32 & 0x7FFFFFFC);
      v52 = (v17 + 2);
      v53 = v32 & 0x7FFFFFFC;
      do
      {
        v54 = vmulq_n_f64(*v52, v33);
        v52[-1] = vmulq_n_f64(v52[-1], v33);
        *v52 = v54;
        v52 += 2;
        v53 -= 4;
      }

      while (v53);
      if ((v32 & 0x7FFFFFFC) != v32)
      {
        goto LABEL_15;
      }
    }
  }
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::buildFilterSteps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a2;
  if (*a2 >= 1)
  {
    do
    {
      *a2 = --v8;
      v9 = *(*(a2 + 16) + 8 * v8);
      if (v9)
      {
        free(v9[22]);
        free(v9[19]);
        free(v9[4]);
        free(v9[1]);
        MEMORY[0x24C1A2010](v9, 0x10E0C4001F3B57ALL);
        v8 = *a2;
      }
    }

    while (v8 > 0);
  }

  v10 = *(a3 + 40);
  v11 = vcvtmd_s64_f64(v10);
  if (v10 <= 1.0)
  {
    avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::add(a2);
  }

  if (v11 < 2)
  {
    avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::add(a2);
  }

  v12 = vcvtmd_s64_f64(0.5 / (1.0 / v10));
  if ((a5 & 4) != 0 && v12 >= 2)
  {
    avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::add(a2);
  }

  avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::add(a2);
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::updateFilterStepBuffers(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v7 = *a1;
  if (*a1 <= 0)
  {
    *(*(*(a1 + 16) + 8 * v7 - 8) + 136) = 2;
    *(a2 + 60) = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = (a5 - 1);
    v13 = -1;
    do
    {
      v14 = *(*(a1 + 16) + 8 * v10);
      *(v14 + 104) = a2;
      *(v14 + 112) = a4;
      *(v14 + 116) = v11;
      v11 = (v11 & 1) == 0;
      *(v14 + 136) = v11;
      v15 = *(v14 + 4);
      if (*v14 == 1)
      {
        *(a2 + 40) = vmulq_n_f64(*(a2 + 40), v15);
        *(v14 + 120) = 0;
        a4 *= v15;
        *(v14 + 132) = a4;
        v16 = *(v14 + 96);
        v17 = *(v14 + 24) - (v16 + v15);
        *(v14 + 140) = v16;
        *(v14 + 144) = v17;
        v18 = *(v14 + 192);
        if (v18 + a4 > v16 + v17 + a4)
        {
          v17 = v18 - v16;
          *(v14 + 144) = v18 - v16;
        }

        v19 = v17 + a4;
        v20 = *(v14 + 168);
        if (v20 > v19)
        {
          *(v14 + 144) = v20 - a4;
        }

        v13 = v10;
      }

      else if (v15)
      {
        v21 = *(v14 + 200);
        v22 = *(a2 + 48) / v15 + v21;
        *(a2 + 40) = *(a2 + 40) / v15;
        *(a2 + 48) = v22;
        v23 = *(v14 + 96);
        v24 = (a4 + v15 - 1) / v15 + v21;
        v25 = *(v14 + 24) + ~v23 - a4 + (v24 - 1) * v15 + 1;
        *(v14 + 120) = v23 + v21 * v15;
        *(v14 + 124) = v25;
        a4 = v24 + v21;
        *(v14 + 132) = v24 + v21;
      }

      else
      {
        v26 = *(v14 + 216);
        v27 = *(v26 + 40) / 2;
        v29 = *(a2 + 40);
        v28 = *(a2 + 48);
        v30 = vcvtmd_s64_f64(v28) - v27;
        v31 = ((v30 + 1) >> 31) & ~v30;
        v32 = v27 + vcvtmd_s64_f64(v28 + v12 * v29);
        v33 = __OFSUB__(v32, a4);
        v34 = v32 - a4;
        if (v34 < 0 != v33)
        {
          v35 = 0;
        }

        else
        {
          v35 = v34 + 1;
        }

        *(v14 + 120) = v31;
        *(v14 + 124) = v35;
        *(v14 + 132) = a5;
        v36 = *(v26 + 24);
        v37 = *a3;
        if (v37 < 1)
        {
LABEL_25:
          avir::CStructArray<avir::CImageResizerFilterStep<float,float>::CRPosBuf>::add(a3);
        }

        v38 = *(a3 + 2);
        while (1)
        {
          v39 = *(*v38 + 24);
          v40 = v39 == v29 && *(*v38 + 32) == v28;
          if (v40 && *(*v38 + 40) == v36)
          {
            break;
          }

          v38 += 8;
          if (!--v37)
          {
            goto LABEL_25;
          }
        }

        *(v14 + 208) = *v38;
        avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::fillRPosBuf(v14, a2, v39);
        a4 = *(v14 + 132);
        v11 = *(v14 + 136);
        v7 = *a1;
      }

      ++v10;
    }

    while (v10 < v7);
    v42 = *(a1 + 16);
    *(*(v42 + 8 * v7 - 8) + 136) = 2;
    *(a2 + 60) = 0;
    if (v13 != -1)
    {
      v43 = *(v42 + 8 * v13);
      v44 = v13 + 1;
      v45 = *(v42 + 8 * v44);
      v46 = v43[1];
      v47 = (v46 - 1 + *(v45 + 120)) / v46;
      v48 = v43[36];
      v49 = v43[35] + v47 * v46;
      v50 = (*(v45 + 124) + v46 - 1) / v46;
      v43[30] = v47;
      v43[31] = v50;
      v43[35] = v49;
      v43[36] = v48 + v50 * v46;
      *(v45 + 120) = 0;
      if (v46 == 2 && *(a2 + 56) == v44 && v43[12] >= 1)
      {
        *(a2 + 60) = 1;
      }
    }
  }
}

uint64_t avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::calcComplexity(unsigned int *a1, int *a2, uint64_t a3, int a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2[5];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = *a1;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }

    v11 = *(a1 + 2);
    v12 = *a2;
    v13 = v10 * *a2;
    v14 = a2[14];
    v15 = *(a2 + 60);
    v16 = *(a3 + 8);
    while (1)
    {
      v17 = *(v11 + 8 * v7);
      v18 = *(v17 + 24);
      v8 += 65 * v18;
      if (*v17 == 1)
      {
        if (*(v17 + 48) <= 0)
        {
          v9 += (*(v17 + 192) + (*(v17 + 112) + *(v17 + 120) + *(v17 + 124)) * v18 + *(v17 + 168)) * v12;
        }

        goto LABEL_11;
      }

      if (!*(v17 + 4))
      {
        break;
      }

      v9 += v18 * v13 * *(v17 + 132) / v5;
LABEL_11:
      if (++v7 == v6)
      {
        goto LABEL_35;
      }
    }

    v19 = *(v17 + 216);
    v20 = *(v17 + 132);
    if (v7 == v14)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v23 = *(v19 + 36);
    v22 = *(v19 + 40);
    v25 = *(v19 + 24);
    v24 = *(v19 + 28);
    v26 = *(v19 + 120);
    v40[0] = 0;
    v40[1] = v24 * v22 + v26 * v23;
    if ((*(v19 + 48) & 1) == 0)
    {
      if (v25 < 1)
      {
        v27 = 0;
      }

      else
      {
        v29 = 0;
        v27 = 0;
        do
        {
          if (*(v16 + v29))
          {
            v27 += v40[*(*(v19 + 88) + v29) == 0];
          }

          ++v29;
        }

        while (v25 != v29);
      }

      goto LABEL_33;
    }

    v27 = 65 * v23 * v25;
    if (v25 >= 1)
    {
      if (v25 == 1)
      {
        v28 = 0;
      }

      else
      {
        v30 = 0;
        v28 = v25 & 0x7FFFFFFE;
        v31 = v28;
        v32 = (v16 + 1);
        do
        {
          v33 = *(v32 - 1);
          v34 = *v32;
          v32 += 2;
          v27 += v40[v33];
          v30 += v40[v34];
          v31 -= 2;
        }

        while (v31);
        v27 += v30;
        if (v28 == v25)
        {
          goto LABEL_33;
        }
      }

      v35 = v25 - v28;
      v36 = (v16 + v28);
      do
      {
        v37 = *v36++;
        v27 += v40[v37];
        --v35;
      }

      while (v35);
    }

LABEL_33:
    v9 = (v9 + (v12 + v24) * v22 * v20) >> v21;
    v8 += v27;
    goto LABEL_11;
  }

  v9 = 0;
  v8 = 0;
LABEL_35:
  v38 = *MEMORY[0x277D85DE8];
  return (v8 / a4 + v9);
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::updateBufLenAndRPosPtrs(unsigned int *a1, unsigned int *a2, int a3, __n128 a4)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v69 = 0;
  v70[0] = 0;
  v4 = *a1;
  if (v4 >= 1)
  {
    v5 = *(a1 + 2);
    v6 = *a1;
    do
    {
      v8 = *v5;
      v9 = *(*v5 + 112);
      v10 = *(*v5 + 116);
      v11 = *(v70 + v10);
      v13 = *(*v5 + 120);
      v12 = *(*v5 + 124);
      if (v13 > v11)
      {
        v11 = *(*v5 + 120);
      }

      *(v70 + v10) = v11;
      v14 = v12 + v9;
      v15 = *(&v70[-1] + v10);
      if (v14 > v15)
      {
        v15 = v14;
      }

      *(&v70[-1] + v10) = v15;
      *(v8 + 128) = v14 + v13;
      v16 = *(v8 + 136);
      if (v16 == 2)
      {
        break;
      }

      if (*v8 == 1)
      {
        v17 = *(v70 + v16);
        v18 = *(v8 + 144);
        if (*(v8 + 140) > v17)
        {
          v17 = *(v8 + 140);
        }

        *(v70 + v16) = v17;
        v7 = v18 + *(v8 + 132);
      }

      else
      {
        v7 = *(v8 + 132);
      }

      if (v7 <= *(&v70[-1] + v16))
      {
        v7 = *(&v70[-1] + v16);
      }

      *(&v70[-1] + v16) = v7;
      ++v5;
      --v6;
    }

    while (v6);
    v19 = (*(a1 + 2) + 8);
    while (1)
    {
      v20 = *(v19 - 1);
      if (*(v20 + 136) == 2)
      {
        break;
      }

      v21 = *v19;
      if (*v20 == 1)
      {
        v22 = *(v20 + 132) + *(v20 + 140) + *(v20 + 144);
        *(v20 + 148) = v22;
        v23 = *(v21 + 128);
        if (v22 <= v23)
        {
          *(v20 + 148) = v23;
        }

        else
        {
          *(v21 + 128) = v22;
        }
      }

      else
      {
        *(v20 + 148) = *(v21 + 128);
      }

      ++v19;
      if (!--v4)
      {
        goto LABEL_25;
      }
    }

    *(v20 + 148) = a3;
  }

LABEL_25:
  v24 = *a2;
  v25 = v70[0];
  v26 = v69 + LODWORD(v70[0]);
  if (a2[5])
  {
    a2[6] = v26 * v24;
    v27 = HIDWORD(v70[0]);
    v28 = HIDWORD(v69) + HIDWORD(v70[0]);
  }

  else
  {
    v25 = v24 * LODWORD(v70[0]);
    a2[6] = v26 * v24;
    v28 = HIDWORD(v69) + HIDWORD(v70[0]);
    v27 = v24 * HIDWORD(v70[0]);
  }

  a2[8] = v25;
  a2[9] = v27;
  a2[7] = v28 * v24;
  v29 = *(*(a1 + 2) + 8 * a2[14]);
  v30 = *(*(v29 + 208) + 8);
  v68 = *(*(v29 + 216) + 40);
  v31 = (v68 / 2 - 1);
  v32 = *(v29 + 132);
  if ((a2[15] & 1) == 0)
  {
    if (v32 < 1)
    {
      goto LABEL_65;
    }

    v52 = 0;
    while (1)
    {
      v53 = *(v30 + 4);
      *(v30 + 20) = (*v30 - v31) * v24;
      v54 = *(v29 + 216);
      if ((*(v54 + 184) & 1) == 0)
      {
        avir::CDSPFracFilterBankLin<float>::buildSrcTable(*(v29 + 216));
      }

      v55 = *(v54 + 64);
      v56 = *(v54 + 44) * v53;
      if ((*(*(v54 + 88) + v53) & 2) != 0)
      {
        goto LABEL_49;
      }

      a4.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(v54, v53, a4);
      *(*(v54 + 88) + v53) |= 2u;
      if (*(v54 + 28) < 1)
      {
        goto LABEL_49;
      }

      a4.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(v54, v53 + 1, a4);
      v57 = *(v54 + 40);
      if (v57 < 1)
      {
        goto LABEL_49;
      }

      v58 = *(v54 + 44);
      if (v57 >= 8 && ((v57 - v58) & 0x3FFFFFFFFFFFFFF8) != 0)
      {
        v59 = v57 & 0x7FFFFFF8;
        v60 = (v55 + 16 + 4 * v56 + 4 * v58);
        v61 = (v55 + 16 + 4 * v56 + 4 * v57);
        v62 = (v55 + 16 + 4 * v56);
        v63 = v59;
        do
        {
          a4 = vsubq_f32(v60[-1], v62[-1]);
          v64 = vsubq_f32(*v60, *v62);
          v61[-1] = a4;
          *v61 = v64;
          v60 += 2;
          v61 += 2;
          v62 += 2;
          v63 -= 8;
        }

        while (v63);
        if (v59 == v57)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v59 = 0;
      }

      v65 = v57 - v59;
      v66 = (v55 + 4 * v59 + 4 * v56);
      do
      {
        a4.n128_f32[0] = v66[v58] - *v66;
        v66[v57] = a4.n128_f32[0];
        ++v66;
        --v65;
      }

      while (v65);
LABEL_49:
      *(v30 + 8) = v55 + 4 * v56;
      v30 += 32;
      if (++v52 >= *(v29 + 132))
      {
        goto LABEL_65;
      }
    }
  }

  if (v32 >= 1)
  {
    v33 = 0;
    do
    {
      v34 = *(v30 + 4);
      v35 = v31;
      v36 = *v30 - v31;
      v37 = v36 & 1;
      v38 = v24;
      *(v30 + 20) = (v37 + v36) * v24;
      v39 = *(v29 + 216);
      if ((*(v39 + 184) & 1) == 0)
      {
        avir::CDSPFracFilterBankLin<float>::buildSrcTable(*(v29 + 216));
      }

      v40 = *(v39 + 64);
      v41 = *(v39 + 44) * v34;
      if ((*(*(v39 + 88) + v34) & 2) != 0)
      {
        goto LABEL_31;
      }

      a4.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(v39, v34, a4);
      *(*(v39 + 88) + v34) |= 2u;
      if (*(v39 + 28) < 1)
      {
        goto LABEL_31;
      }

      a4.n128_f32[0] = avir::CDSPFracFilterBankLin<float>::createFilter(v39, v34 + 1, a4);
      v42 = *(v39 + 40);
      if (v42 < 1)
      {
        goto LABEL_31;
      }

      v43 = *(v39 + 44);
      if (v42 >= 8 && ((v42 - v43) & 0x3FFFFFFFFFFFFFF8) != 0)
      {
        v44 = v42 & 0x7FFFFFF8;
        v45 = (v40 + 16 + 4 * v41 + 4 * v43);
        v46 = (v40 + 16 + 4 * v41 + 4 * v42);
        v47 = (v40 + 16 + 4 * v41);
        v48 = v44;
        do
        {
          a4 = vsubq_f32(v45[-1], v47[-1]);
          v49 = vsubq_f32(*v45, *v47);
          v46[-1] = a4;
          *v46 = v49;
          v45 += 2;
          v46 += 2;
          v47 += 2;
          v48 -= 8;
        }

        while (v48);
        if (v44 == v42)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v44 = 0;
      }

      v50 = v42 - v44;
      v51 = (v40 + 4 * v44 + 4 * v41);
      do
      {
        a4.n128_f32[0] = v51[v43] - *v51;
        v51[v42] = a4.n128_f32[0];
        ++v51;
        --v50;
      }

      while (v50);
LABEL_31:
      *(v30 + 8) = v40 + 4 * v41 + 4 * v37;
      *(v30 + 24) = v68 - v37;
      v30 += 32;
      ++v33;
      v31 = v35;
      v24 = v38;
    }

    while (v33 < *(v29 + 132));
  }

LABEL_65:
  v67 = *MEMORY[0x277D85DE8];
}

void avir::CStructArray<avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>>::setItemCount(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*a1 < a2)
  {
    v5 = *(a1 + 24);
    if (v5 > a2)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = 8 * a2;
    v9 = *(a1 + 28);
    if (v9)
    {
      v10 = malloc_type_malloc(v8 + v9, 0x2004093837F09uLL);
      v11 = (v10 + v9 - ((v9 - 1) & v10));
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 24) = a2;
      *(a1 + 28) = v9;
      if (v5 < 1)
      {
LABEL_6:
        free(v6);
        v4 = *a1;
LABEL_7:
        if (v4 < a2)
        {
          operator new();
        }

        return;
      }
    }

    else
    {
      v11 = malloc_type_malloc(v8, 0x2004093837F09uLL);
      *(a1 + 8) = v11;
      *(a1 + 16) = v11;
      *(a1 + 24) = a2;
      *(a1 + 28) = 0;
      if (v5 < 1)
      {
        goto LABEL_6;
      }
    }

    memcpy(v11, v7, 8 * v5);
    goto LABEL_6;
  }

  while (v4 > a2)
  {
    *a1 = --v4;
    v12 = *(*(a1 + 16) + 8 * v4);
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v4 = *a1;
    }
  }
}

uint64_t avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::initScanlineQueue(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = *(a1 + 24);
  v13 = v12[6];
  v14 = v12[7] + v13;
  if (*(a1 + 48) >= v14)
  {
    v16 = *(a1 + 40);
  }

  else
  {
    free(*(a1 + 32));
    v15 = malloc_type_malloc(4 * v14 + 4, 0x100004052888210uLL);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    *(a1 + 32) = v15;
    *(a1 + 40) = v16;
    *(a1 + 48) = v14;
    *(a1 + 52) = 4;
    v12 = *(a1 + 24);
    v13 = v12[6];
  }

  v17 = v16 + 4 * v12[8];
  v18 = v16 + 4 * v13 + 4 * v12[9];
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  v19 = *(a1 + 16);
  v20 = *v19;
  if (v20 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = *(v19 + 2);
    do
    {
      if (!*(*v22 + 4) && v21 <= *(*(*v22 + 216) + 40))
      {
        v21 = *(*(*v22 + 216) + 40);
      }

      v22 += 8;
      --v20;
    }

    while (v20);
  }

  free(*(a1 + 80));
  result = malloc_type_malloc(4 * v21 + 4, 0x100004052888210uLL);
  *(a1 + 80) = result;
  *(a1 + 88) = (result & 0xFFFFFFFFFFFFFFFCLL) + 4;
  *(a1 + 96) = v21;
  *(a1 + 100) = 4;
  *(a1 + 104) = a2;
  *(a1 + 108) = a4;
  *(a1 + 112) = a5;
  *(a1 + 116) = a6;
  *(a1 + 184) = 0;
  v24 = (a3 + *(a1 + 12) - 1) / *(a1 + 12);
  if (*(a1 + 176) <= v24)
  {
    free(*(a1 + 160));
    v25 = *(a1 + 180);
    v26 = 16 * v24;
    if (v25)
    {
      result = malloc_type_malloc(v26 + v25, 0x80040803F642BuLL);
      v27 = result + v25 - ((v25 - 1) & result);
    }

    else
    {
      result = malloc_type_malloc(v26, 0x80040803F642BuLL);
      v27 = result;
    }

    *(a1 + 160) = result;
    *(a1 + 168) = v27;
    *(a1 + 176) = v24;
    *(a1 + 180) = v25;
  }

  return result;
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::processScanlineQueue(uint64_t a1, __n128 a2, double a3, float32x2_t a4)
{
  v5 = *(a1 + 104);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1 && *(a1 + 184) >= 1)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::resizeScanlineV(a1, *(*(a1 + 168) + v6), *(*(a1 + 168) + v6 + 8), a2, a3, a4);
          ++v7;
          v6 += 16;
        }

        while (v7 < *(a1 + 184));
      }
    }

    else if (*(a1 + 184) >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>::resizeScanlineH(a1, *(*(a1 + 168) + v11), *(*(a1 + 168) + v11 + 8), a2.n128_f32[0]);
        ++v12;
        v11 += 16;
      }

      while (v12 < *(a1 + 184));
    }

    return;
  }

  if (v5 == 2)
  {
    v13 = *(a1 + 184);
    if (*(*(a1 + 24) + 104))
    {
      if (v13 < 1)
      {
        return;
      }

      v14 = 0;
      while (1)
      {
        avir::CImageResizerFilterStepINL<float,float>::applySRGBGamma(*(*(a1 + 168) + 16 * v14), *(a1 + 108), *(a1 + 24));
        v15 = *(a1 + 168);
        v16 = *(v15 + 16 * v14);
        v17 = *(a1 + 144);
        v18 = *(a1 + 152);
        *&v18 = v18;
        if (v17 == 1.0)
        {
          v19 = *(a1 + 136);
          if (v19 >= 1)
          {
            if (v19 < 8)
            {
              v20 = 0;
LABEL_33:
              v29 = v19 - v20;
              v30 = &v16[v20];
              do
              {
                v31 = -(0.5 - *v30);
                if (*v30 >= 0.0)
                {
                  v31 = (*v30 + 0.5);
                }

                if (v31 <= *&v18)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = *&v18;
                }

                if (v31 >= 0.0)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = 0.0;
                }

                *v30++ = v33;
                --v29;
              }

              while (v29);
              goto LABEL_22;
            }

            v20 = v19 & 0x7FFFFFF8;
            v23 = vdupq_lane_s32(*&v18, 0);
            v24 = (v16 + 4);
            v25 = v20;
            v26.i64[0] = 0x3F0000003F000000;
            v26.i64[1] = 0x3F0000003F000000;
            do
            {
              v27 = vbslq_s8(vcltzq_f32(v24[-1]), vnegq_f32(vcvtq_f32_s32(vcvtq_s32_f32(vsubq_f32(v26, v24[-1])))), vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(v24[-1], v26))));
              v28 = vbslq_s8(vcltzq_f32(*v24), vnegq_f32(vcvtq_f32_s32(vcvtq_s32_f32(vsubq_f32(v26, *v24)))), vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(*v24, v26))));
              v24[-1] = vbicq_s8(vbslq_s8(vcgtq_f32(v27, v23), v23, v27), vcltzq_f32(v27));
              *v24 = vbicq_s8(vbslq_s8(vcgtq_f32(v28, v23), v23, v28), vcltzq_f32(v28));
              v24 += 2;
              v25 -= 8;
            }

            while (v25);
            if (v20 != v19)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          v21 = *(a1 + 136);
          if (v21 >= 1)
          {
            *&v17 = v17;
            if (v21 < 4)
            {
              v22 = 0;
LABEL_47:
              v41 = v21 - v22;
              v42 = &v16[v22];
              do
              {
                v43 = *v42 / *&v17;
                v44 = v43 < 0.0;
                v45 = (v43 + 0.5);
                v46 = -(0.5 - v43);
                if (!v44)
                {
                  v46 = v45;
                }

                v47 = v46 * *&v17;
                if (v47 <= *&v18)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = *&v18;
                }

                if (v47 >= 0.0)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = 0.0;
                }

                *v42++ = v49;
                --v41;
              }

              while (v41);
              goto LABEL_22;
            }

            v22 = v21 & 0x7FFFFFFC;
            v34 = vdupq_lane_s32(*&v17, 0);
            v35 = vdupq_lane_s32(*&v18, 0);
            v36 = v22;
            v37 = *(v15 + 16 * v14);
            v38.i64[0] = 0x3F0000003F000000;
            v38.i64[1] = 0x3F0000003F000000;
            do
            {
              v39 = vdivq_f32(*v37, v34);
              v40 = vmulq_n_f32(vbslq_s8(vcltzq_f32(v39), vnegq_f32(vcvtq_f32_s32(vcvtq_s32_f32(vsubq_f32(v38, v39)))), vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(v39, v38)))), *&v17);
              *v37++ = vbicq_s8(vbslq_s8(vcgtq_f32(v40, v35), v35, v40), vcltzq_f32(v40));
              v36 -= 4;
            }

            while (v36);
            if (v22 != v21)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_22:
        avir::CImageResizerFilterStepINL<float,float>::unpackScanline<unsigned char>(v16, *(v15 + 16 * v14++ + 8), *(a1 + 108), *(a1 + 24));
        if (v14 >= *(a1 + 184))
        {
          return;
        }
      }
    }

    if (v13 < 1)
    {
      return;
    }

    v52 = 0;
    while (1)
    {
      v53 = *(a1 + 168);
      v54 = *(v53 + 16 * v52);
      v55 = *(a1 + 144);
      v56 = *(a1 + 152);
      *&v56 = v56;
      if (v55 == 1.0)
      {
        v57 = *(a1 + 136);
        if (v57 >= 1)
        {
          if (v57 < 8)
          {
            v58 = 0;
LABEL_75:
            v67 = v57 - v58;
            v68 = &v54[v58];
            do
            {
              v69 = -(0.5 - *v68);
              if (*v68 >= 0.0)
              {
                v69 = (*v68 + 0.5);
              }

              if (v69 <= *&v56)
              {
                v70 = v69;
              }

              else
              {
                v70 = *&v56;
              }

              if (v69 >= 0.0)
              {
                v71 = v70;
              }

              else
              {
                v71 = 0.0;
              }

              *v68++ = v71;
              --v67;
            }

            while (v67);
            goto LABEL_64;
          }

          v58 = v57 & 0x7FFFFFF8;
          v61 = vdupq_lane_s32(*&v56, 0);
          v62 = (v54 + 4);
          v63 = v58;
          v64.i64[0] = 0x3F0000003F000000;
          v64.i64[1] = 0x3F0000003F000000;
          do
          {
            v65 = vbslq_s8(vcltzq_f32(v62[-1]), vnegq_f32(vcvtq_f32_s32(vcvtq_s32_f32(vsubq_f32(v64, v62[-1])))), vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(v62[-1], v64))));
            v66 = vbslq_s8(vcltzq_f32(*v62), vnegq_f32(vcvtq_f32_s32(vcvtq_s32_f32(vsubq_f32(v64, *v62)))), vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(*v62, v64))));
            v62[-1] = vbicq_s8(vbslq_s8(vcgtq_f32(v65, v61), v61, v65), vcltzq_f32(v65));
            *v62 = vbicq_s8(vbslq_s8(vcgtq_f32(v66, v61), v61, v66), vcltzq_f32(v66));
            v62 += 2;
            v63 -= 8;
          }

          while (v63);
          if (v58 != v57)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
        v59 = *(a1 + 136);
        if (v59 >= 1)
        {
          *&v55 = v55;
          if (v59 < 4)
          {
            v60 = 0;
LABEL_89:
            v79 = v59 - v60;
            v80 = &v54[v60];
            do
            {
              v81 = *v80 / *&v55;
              v44 = v81 < 0.0;
              v82 = (v81 + 0.5);
              v83 = -(0.5 - v81);
              if (!v44)
              {
                v83 = v82;
              }

              v84 = v83 * *&v55;
              if (v84 <= *&v56)
              {
                v85 = v84;
              }

              else
              {
                v85 = *&v56;
              }

              if (v84 >= 0.0)
              {
                v86 = v85;
              }

              else
              {
                v86 = 0.0;
              }

              *v80++ = v86;
              --v79;
            }

            while (v79);
            goto LABEL_64;
          }

          v60 = v59 & 0x7FFFFFFC;
          v72 = vdupq_lane_s32(*&v55, 0);
          v73 = vdupq_lane_s32(*&v56, 0);
          v74 = v60;
          v75 = *(v53 + 16 * v52);
          v76.i64[0] = 0x3F0000003F000000;
          v76.i64[1] = 0x3F0000003F000000;
          do
          {
            v77 = vdivq_f32(*v75, v72);
            v78 = vmulq_n_f32(vbslq_s8(vcltzq_f32(v77), vnegq_f32(vcvtq_f32_s32(vcvtq_s32_f32(vsubq_f32(v76, v77)))), vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(v77, v76)))), *&v55);
            *v75++ = vbicq_s8(vbslq_s8(vcgtq_f32(v78, v73), v73, v78), vcltzq_f32(v78));
            v74 -= 4;
          }

          while (v74);
          if (v60 != v59)
          {
            goto LABEL_89;
          }
        }
      }

LABEL_64:
      avir::CImageResizerFilterStepINL<float,float>::unpackScanline<unsigned char>(v54, *(v53 + 16 * v52++ + 8), *(a1 + 108), *(a1 + 24));
      if (v52 >= *(a1 + 184))
      {
        return;
      }
    }
  }

  if (v5 == 3)
  {
    v8 = *(a1 + 184);
    if (*(*(a1 + 24) + 104))
    {
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          avir::CImageResizerFilterStepINL<float,float>::applySRGBGamma(*(*(a1 + 168) + v9), *(a1 + 108), *(a1 + 24));
          avir::CImageResizerFilterStepINL<float,float>::unpackScanline<unsigned char>(*(*(a1 + 168) + v9), *(*(a1 + 168) + v9 + 8), *(a1 + 108), *(a1 + 24));
          ++v10;
          v9 += 16;
        }

        while (v10 < *(a1 + 184));
      }
    }

    else if (v8 >= 1)
    {
      v50 = 0;
      v51 = 0;
      do
      {
        avir::CImageResizerFilterStepINL<float,float>::unpackScanline<unsigned char>(*(*(a1 + 168) + v50), *(*(a1 + 168) + v50 + 8), *(a1 + 108), *(a1 + 24));
        ++v51;
        v50 += 16;
      }

      while (v51 < *(a1 + 184));
    }
  }
}

void *avir::CDSPFracFilterBankLin<float>::copyInitParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 184) = 0;
  v4 = *(a2 + 124);
  v5 = *(a2 + 120);
  free(*(a1 + 104));
  if (v4)
  {
    v6 = malloc_type_malloc(8 * v5 + v4, 0x100004000313F17uLL);
    v7 = (v6 + v4 - ((v4 - 1) & v6));
    *(a1 + 104) = v6;
    *(a1 + 112) = v7;
    *(a1 + 120) = v5;
    *(a1 + 124) = v4;
    if (v5 < 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  *(a1 + 104) = v7;
  *(a1 + 112) = v7;
  *(a1 + 120) = v5;
  *(a1 + 124) = 0;
  if (v5 >= 1)
  {
LABEL_3:
    memcpy(v7, *(a2 + 112), 8 * v5);
  }

LABEL_4:
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  v9 = *(a2 + 96);
  free(*(a1 + 80));
  result = malloc_type_malloc(v9, 0x100004077774924uLL);
  *(a1 + 80) = result;
  *(a1 + 88) = result;
  *(a1 + 96) = v9;
  if (v9 >= 1)
  {
    v11 = 0;
    do
    {
      *(*(a1 + 88) + v11) = 4 * *(*(a2 + 88) + v11);
      ++v11;
    }

    while (v11 < *(a1 + 96));
  }

  return result;
}