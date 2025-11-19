void sub_1AE5EFFBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F1EA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5EFFD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 192))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F0038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F18C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5F0050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 200))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F00B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F00D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 208))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F0134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F1EFC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5F014C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F01B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5DB444(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5F01C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 152))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F022C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F0248@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F02AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F02C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 168))(&v3);
  return sub_1AE6089C0(&v3);
}

void sub_1AE5F032C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_1AE5F0348(uint64_t a1)
{
  v4 = 0.0;
  (*(*a1 + 224))(&v3);
  v1 = v4;
  sub_1AE6089C0(&v3);
  return v1;
}

void sub_1AE5F03AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &unk_1F2428D58;
  v12 = 0;
  v13 = 0;
  v11 = sub_1AE5FC1A0();
  v8 = sub_1AE5E187C(&v10);
  (*(*a1 + 232))(&v9, a1, a2, a3, v8);
  sub_1AE616E1C(v11, a4);
  sub_1AE6089C0(&v9);
  v10 = &unk_1F2428D58;
  if (v13)
  {
    sub_1AE5F1F70(v13);
  }
}

void sub_1AE5F0484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1AE6089C0(&a10);
  if (a14)
  {
    sub_1AE5F1F70(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5F04B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v14 = &unk_1F2428D58;
  v16 = 0;
  v17 = 0;
  v15 = sub_1AE5FC1A0();
  v12 = sub_1AE5E187C(&v14);
  (*(*a1 + 248))(&v13, a1, a2, a3, a4, v12, a6);
  sub_1AE616E1C(v15, a5);
  sub_1AE6089C0(&v13);
  v14 = &unk_1F2428D58;
  if (v17)
  {
    sub_1AE5F1F70(v17);
  }
}

void sub_1AE5F05A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1AE6089C0(&a10);
  if (a14)
  {
    sub_1AE5F1F70(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5F05CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = 0;
  v13 = 0;
  v12[0] = &unk_1F2428D78;
  v10 = sub_1AE5E199C(v12);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v10);
  sub_1AE5E1A00(v12, a5);
  sub_1AE6089C0(&v11);
  v12[0] = &unk_1F2428D78;
  if (v13)
  {
    sub_1AE5F1F70(v13);
  }
}

void sub_1AE5F06A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_1AE6089C0(&a9);
  if (a12)
  {
    sub_1AE5F1F70(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5F06D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, float a8@<S0>)
{
  v18[1] = 0;
  v19 = 0;
  v18[0] = &unk_1F2428D78;
  v16 = sub_1AE5E199C(v18);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v16, a8);
  sub_1AE5E1A00(v18, a7);
  sub_1AE6089C0(&v17);
  v18[0] = &unk_1F2428D78;
  if (v19)
  {
    sub_1AE5F1F70(v19);
  }
}

void sub_1AE5F07D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_1AE6089C0(&a9);
  if (a12)
  {
    sub_1AE5F1F70(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5F0804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_1F2428D58;
  v10 = 0;
  v11 = 0;
  v9 = sub_1AE5FC1A0();
  v6 = sub_1AE5E187C(&v8);
  (*(*a1 + 264))(&v7, a1, a2, v6);
  sub_1AE616E1C(v9, a3);
  sub_1AE6089C0(&v7);
  v8 = &unk_1F2428D58;
  if (v11)
  {
    sub_1AE5F1F70(v11);
  }
}

void sub_1AE5F08D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1AE6089C0(&a10);
  if (a14)
  {
    sub_1AE5F1F70(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5F0900(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_1F2428D58;
  v10 = 0;
  v11 = 0;
  v9 = sub_1AE5FC1A0();
  v6 = sub_1AE5E187C(&v8);
  (*(*a1 + 272))(&v7, a1, a2, v6);
  sub_1AE616E1C(v9, a3);
  sub_1AE6089C0(&v7);
  v8 = &unk_1F2428D58;
  if (v11)
  {
    sub_1AE5F1F70(v11);
  }
}

void sub_1AE5F09D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1AE6089C0(&a10);
  if (a14)
  {
    sub_1AE5F1F70(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1AE5F09FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = &unk_1F2428D58;
  v10 = 0;
  v11 = 0;
  v9 = sub_1AE5FC1A0();
  v6 = sub_1AE5E187C(&v8);
  (*(*a1 + 280))(&v7, a1, a2, v6);
  sub_1AE616E1C(v9, a3);
  sub_1AE6089C0(&v7);
  v8 = &unk_1F2428D58;
  if (v11)
  {
    sub_1AE5F1F70(v11);
  }
}

void sub_1AE5F0ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1AE6089C0(&a10);
  if (a14)
  {
    sub_1AE5F1F70(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5F0AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = &unk_1F2428D58;
  v8 = sub_1AE5FC1A0();
  a4[2] = 0;
  a4[3] = 0;
  a4[1] = v8;
  v9 = sub_1AE5E187C(a4);
  (*(*a1 + 232))(&v11, a1, a2, a3, v9);
  return sub_1AE6089C0(&v11);
}

void sub_1AE5F0BB0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F0BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, float a6@<S0>)
{
  *a5 = &unk_1F2428D58;
  v12 = sub_1AE5FC1A0();
  a5[2] = 0;
  a5[3] = 0;
  a5[1] = v12;
  v13 = sub_1AE5E187C(a5);
  (*(*a1 + 248))(&v15, a1, a2, a3, a4, v13, a6);
  return sub_1AE6089C0(&v15);
}

void sub_1AE5F0C9C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[1] = 0;
  a5[2] = 0;
  *a5 = &unk_1F2428D78;
  v9 = sub_1AE5E199C(a5);
  (*(*a1 + 240))(&v11, a1, a2, a3, a4, v9);
  return sub_1AE6089C0(&v11);
}

void sub_1AE5F0D70(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F0D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  a7[1] = 0;
  a7[2] = 0;
  *a7 = &unk_1F2428D78;
  v15 = sub_1AE5E199C(a7);
  (*(*a1 + 256))(&v17, a1, a2, a3, a4, a5, a6, v15, a8);
  return sub_1AE6089C0(&v17);
}

void sub_1AE5F0E74(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[2];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F0E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F2428D58;
  v6 = sub_1AE5FC1A0();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_1AE5E187C(a3);
  (*(*a1 + 264))(&v9, a1, a2, v7);
  return sub_1AE6089C0(&v9);
}

void sub_1AE5F0F40(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F0F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F2428D58;
  v6 = sub_1AE5FC1A0();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_1AE5E187C(a3);
  (*(*a1 + 272))(&v9, a1, a2, v7);
  return sub_1AE6089C0(&v9);
}

void sub_1AE5F100C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1AE5F1028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_1F2428D58;
  v6 = sub_1AE5FC1A0();
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = v6;
  v7 = sub_1AE5E187C(a3);
  (*(*a1 + 280))(&v9, a1, a2, v7);
  return sub_1AE6089C0(&v9);
}

void sub_1AE5F10D8(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    sub_1AE5F1F70(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5F10F4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AE5F11B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE5F11D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1AE5DBD94(a1, a2);
  }

  sub_1AE5CBB70();
}

uint64_t sub_1AE5F1210(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AE5F12D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5F12F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1B2705FF0](a1 + 2);

  return std::istream::~istream();
}

uint64_t sub_1AE5F13B8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_1AE5F14D4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AE5F1594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void *sub_1AE5F15B4(void *a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v9 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a5 && a3)
  {
    v9 = 0;
    v13 = (a2 + a3);
    while (2)
    {
      v14 = &v9[a2];
      v15 = &v9[a2];
LABEL_5:
      v16 = a5;
      v17 = a4;
      while (*v15 != *v17)
      {
        ++v17;
        if (!--v16)
        {
          if (++v15 != v13)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }
      }

      if (v15 != v13)
      {
        v18 = &v15[-a2];
        if (&v15[-a2] != -1)
        {
          v19 = (v18 - v9);
          v20 = v18 >= v9;
          if (!a6)
          {
            v20 = v18 > v9;
          }

          if (v20)
          {
            v21 = (a3 - v9);
            if (v21 >= v19)
            {
              v21 = v19;
            }

            *&v23 = v14;
            *(&v23 + 1) = v21;
            sub_1AE5F16F8(a1, &v23);
          }

          v9 = v18 + 1;
          if (a3 > (v18 + 1))
          {
            continue;
          }
        }
      }

      break;
    }
  }

LABEL_19:
  if (a3 > v9)
  {
    *&v23 = &v9[a2];
    *(&v23 + 1) = a3 - v9;
    sub_1AE5F16F8(a1, &v23);
  }

  return a1;
}

void sub_1AE5F16D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F16F8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1AE5CBB70();
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

    if (v10)
    {
      sub_1AE5DC850(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void *sub_1AE5F17D0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5F1874(result, a2);
  }

  return result;
}

void sub_1AE5F1874(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AE5DBCA8(a1, a2);
  }

  sub_1AE5CBB70();
}

void sub_1AE5F18C0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AE5E56A4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1AE5F1914(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5F198C(result, a2);
  }

  return result;
}

void sub_1AE5F1970(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F198C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1AE5DC850(a1, a2);
  }

  sub_1AE5CBB70();
}

_BYTE *sub_1AE5F19C8(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_1AE5F1A78(void *__src@<X0>, size_t __len@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AE5F19C8(&__dst, __src, __len);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = *a3;
  v6 = a3[1];
  while (v7 != v6)
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_1AE5F1B70(p_dst, size, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 1, a4);
    std::string::operator=(&__dst, a4);
    v7 += 32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1AE5F1B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1AE5F1B70(std::string::value_type *__s, std::string::size_type __n, char *a3, int64_t a4, const std::string::value_type *a5, std::string::size_type a6, char a7, std::string *this)
{
  if (a4)
  {
    v12 = 0;
    v13 = &__s[__n];
LABEL_3:
    v14 = __n - v12;
    if (__n < v12 || v14 < a4)
    {
LABEL_14:
      v14 = __n - v12;
    }

    else
    {
      v15 = *a3;
      v16 = (__n - v12);
      v17 = &__s[v12];
      do
      {
        v18 = &v16[-a4];
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v15, (v18 + 1));
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, a3, a4))
        {
          if (v20 != v13)
          {
            v21 = v20 - __s;
            if (v20 - __s != -1)
            {
              std::string::append(this, &__s[v12], v21 - v12);
              std::string::append(this, a5, a6);
              v12 = v21 + a4;
              if (a7)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_14;
        }

        v17 = v20 + 1;
        v16 = (v13 - (v20 + 1));
      }

      while (v16 >= a4);
    }

    v22 = &__s[v12];
    v23 = this;
    v24 = v14;
  }

  else
  {
    v23 = this;
    v22 = __s;
    v24 = __n;
  }

  return std::string::append(v23, v22, v24);
}

uint64_t sub_1AE5F1CAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F1D20(result, a4);
  }

  return result;
}

void sub_1AE5F1D04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F1D20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1AE5F1D5C(a1, a2);
  }

  sub_1AE5CBB70();
}

void sub_1AE5F1D5C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

void sub_1AE5F1DA4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AE5F1E00(exception, a1);
  __cxa_throw(exception, off_1E7A2D6D0, MEMORY[0x1E69E5280]);
}

std::logic_error *sub_1AE5F1E00(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void sub_1AE5F1E34(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_1AE5F18C0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1AE5F1EA8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AE5E6970(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AE5F1EFC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        sub_1AE5F18C0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1AE5F1F70(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1AE5F1FDC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1727);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1728);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AE5F209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void *sub_1AE5F2118(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2429060;
  sub_1AE5FC03C(a1 + 3, 0);
  return a1;
}

void sub_1AE5F2198(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2429060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE5F2254(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F24290B0;
  sub_1AE5FCB04(a1 + 3, 0);
  return a1;
}

void sub_1AE5F22D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F24290B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE5F2334(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, char *a4@<X3>, void **a5@<X4>, std::string *a6@<X8>)
{
  sub_1AE5F19C8(&__dst, __src, __len);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  sub_1AE5F2438(v11, v12, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&__dst, p_p, size);
  *a6 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1AE5F2404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F2438(void *__src@<X0>, size_t __len@<X1>, char *a3@<X2>, void **a4@<X3>, std::string *a5@<X8>)
{
  sub_1AE5F19C8(&__dst, __src, __len);
  v8 = strlen(a3);
  sub_1AE5F252C(a3, v8, a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&__dst, p_p, size);
  *a5 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1AE5F24F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F252C(void *__src@<X0>, size_t __len@<X1>, void **a3@<X2>, std::string *a4@<X8>)
{
  sub_1AE5F19C8(&__dst, __src, __len);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  sub_1AE5F19C8(__p, v7, v8);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&__dst, v9, v10);
  *a4 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1AE5F25E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE5F2618(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1AE5F269C(a1, v4, v6);
      v6 += 16;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_1AE5F269C(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1AE5F2734(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1AE5F2734(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1AE5DC468(a1, a5, (a2 + 4)))
  {
    if (!sub_1AE5DC468(a1, (a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1AE5DC468(a1, a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1AE5DC468(a1, (v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1AE5DC374(a1, a3, a5);
}

uint64_t sub_1AE5F28D8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_1AE5DC468(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_1AE5DC468(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_1AE5F2968(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1AE5D95D0((a1 + 3), 24);
  return a1;
}

void sub_1AE5F2BE4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B2706340](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5F2C0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_1AE5F2D5C(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AE5DBF1C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1AE5F2DBC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1AE5F2F58(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1AE5F2E1C(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1AE5F3120(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1AE5F2F58(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1AE5F3178(&v14);
  return v8;
}

void sub_1AE5F2F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F3178(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5F2F58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F1874(result, a4);
  }

  return result;
}

void sub_1AE5F2FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1AE5F18C0(&a9);
  _Unwind_Resume(a1);
}

char *sub_1AE5F2FE0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1AE5DBF1C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1AE5F30A0(v9);
  return v4;
}

uint64_t sub_1AE5F30A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1AE5F30D8(a1);
  }

  return a1;
}

void sub_1AE5F30D8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_1AE5F3120(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AE5CB09C();
}

void **sub_1AE5F3178(void **a1)
{
  sub_1AE5F31AC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE5F31AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1AE5F18C0(&v5);
  }
}

uint64_t sub_1AE5F3200(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_1AE5F3384(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_1AE5F3254(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1AE5F3400(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1AE5F3384(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1AE5F3458(&v14);
  return v8;
}

void sub_1AE5F3370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F3458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5F3384(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F11D4(result, a4);
  }

  return result;
}

void sub_1AE5F33E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F3400(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5F3458(uint64_t a1)
{
  sub_1AE5F3490(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE5F3490(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void **sub_1AE5F34F0(void **a1)
{
  sub_1AE5F3524(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE5F3524(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1AE5F18C0(&v5);
  }
}

float sub_1AE5F3578(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_1AE5F2F58(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_1AE5F35EC(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_1AE5DB188(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1AE5F2F58(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AE5F34F0(&v17);
  return v11;
}

void sub_1AE5F3700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F34F0(va);
  _Unwind_Resume(a1);
}

void sub_1AE5F3714(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5F375C(uint64_t a1)
{
  sub_1AE5F3794(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE5F3794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

float sub_1AE5F37F4(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_1AE5F3384(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_1AE5F385C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_1AE5F3714(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1AE5F3384(v10, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AE5F375C(&v17);
  return v11;
}

void sub_1AE5F3964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F375C(va);
  _Unwind_Resume(a1);
}

void *sub_1AE5F3978(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5F11D4(result, a2);
  }

  return result;
}

void sub_1AE5F3A70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE5F3A8C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1AE5F3BF4(a1, a2, a3, (a3 - a2) >> 2);
  sub_1AE5F3AE8(a1);
  return a1;
}

void sub_1AE5F3ACC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F3AE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      sub_1AE5F3CA8(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      sub_1AE5F3D7C(&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t sub_1AE5F3BF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F3C6C(result, a4);
  }

  return result;
}

void sub_1AE5F3C50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F3C6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1AE5DC12C(a1, a2);
  }

  sub_1AE5CBB70();
}

void sub_1AE5F3CA8(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1AE5DC12C(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_1AE5F3D7C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5F3C6C(result, a2);
  }

  return result;
}

void sub_1AE5F3DD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1AE5F3DF4(uint64_t a1, uint64_t a2, double **a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = sub_1AE5F3EA4(a2);
  v8 = sub_1AE5F3EA4(a2);
  if (v6 != v5)
  {
    v9 = v6 - v5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v5[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if ((v7 + v8 * 4294967300.0) * 5.42101086e-20 < v13)
      {
        v9 = v10;
      }

      else
      {
        v5 = v12;
      }
    }

    while (v9);
    v6 = v5;
  }

  return (v6 - *a3) >> 3;
}

uint64_t sub_1AE5F3EA4(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_1AE5F3F44(uint64_t a1)
{
  sub_1AE5D9464(&v3);
  MEMORY[0x1B2706100](&v3, a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x1E69E54E8];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v4 = MEMORY[0x1E69E5548] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x1B2706340](&v7);
}

void sub_1AE5F4094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F13B8(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B2706340](v2 + 112);
  _Unwind_Resume(a1);
}

void *sub_1AE5F40B8(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_1AE5F413C(a1, v4, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1AE5F413C(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1AE5F2734(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1AE5F41E0(void *a1)
{
  sub_1AE5F4218(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE5F4218(void *a1)
{
  *a1 = &unk_1F2429100;
  sub_1AE5F4260(a1);
  return a1;
}

void *sub_1AE5F4260(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

double sub_1AE5F42A8@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

double sub_1AE5F4370@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void *sub_1AE5F4438(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = sub_1AE5DB608(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1AE5F451C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1AE5F453C(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_1AE5F459C(this, v3, v4);
  return this;
}

void sub_1AE5F4580(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1AE5F459C(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_1AE5F4714(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1AE5F46F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1AE5F4714(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

uint64_t sub_1AE5F47F0(uint64_t a1)
{
  *a1 = &unk_1F2429130;
  sub_1AE5F9A98((a1 + 96));
  v4 = (a1 + 72);
  sub_1AE5F1EA8(&v4);
  v4 = (a1 + 48);
  sub_1AE5F1EA8(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1AE5F4874(uint64_t a1)
{
  sub_1AE5F47F0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE5F48AC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 48 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_1AE5F4988(void *a1)
{
  sub_1AE5E6970(a1 + 6);
  sub_1AE5E6970(a1 + 9);
  a1[1] = "";
  a1[2] = 0;
  a1[4] = a1[3];

  sub_1AE5F49E0((a1 + 12));
}

void sub_1AE5F49E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 + 1 < ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      bzero(*(*(a1 + 8) + v4), 48 * *(a1 + 48));
      v4 += 8;
    }

    while (v5 != v4);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

void sub_1AE5F4A5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_1AE5F4988(a1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_1AE5E0E64((a1 + 24), a3 + 1);
  for (; a3; a3 -= v6)
  {
    if (a3 >= asc_1AE7C16A4[*a2 >> 4])
    {
      v6 = asc_1AE7C16A4[*a2 >> 4];
    }

    else
    {
      v6 = a3;
    }

    v15 = a2;
    sub_1AE5F4BDC(a1 + 24, &v15);
    a2 += v6;
  }

  v15 = a2;
  sub_1AE5F4BDC(a1 + 24, &v15);
  v7 = ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
  v8 = v7 & ~(v7 >> 31);
  sub_1AE5F4CB0((a1 + 48), v8 + 1);
  sub_1AE5F4CB0((a1 + 72), v8 + 1);
  v9 = 0;
  do
  {
    sub_1AE5F4D58((*(a1 + 48) + v9), 0x10uLL);
    sub_1AE5F4D58((*(a1 + 72) + v9), 0x10uLL);
    v9 += 24;
  }

  while (24 * v8 + 24 != v9);
  v10 = sub_1AE5F48AC((a1 + 96));
  v11 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v15 = v10;
  v10[6] = v11;
  v10[7] = -1;
  v10[4] = 0;
  sub_1AE5F4DF8(*(a1 + 72), &v15);
  v12 = sub_1AE5F48AC((a1 + 96));
  v13 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v14 = v12;
  v12[6] = v13;
  v12[7] = -1;
  v12[4] = v8;
  sub_1AE5F4DF8(*(a1 + 48) + 24 * v8, &v14);
}

void sub_1AE5F4BDC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1AE5CBB70();
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
      sub_1AE5DC994(a1, v10);
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

void sub_1AE5F4CB0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1AE5F9B2C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *sub_1AE5F4D58(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1AE5DA258(result, a2);
    }

    sub_1AE5CBB70();
  }

  return result;
}

void sub_1AE5F4DF8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1AE5CBB70();
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
      sub_1AE5DA258(a1, v10);
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

uint64_t sub_1AE5F4ECC(uint64_t a1, int a2, int a3)
{
  v6 = sub_1AE5F48AC((a1 + 96));
  v7 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  *(v6 + 20) = a3;
  *(v6 + 24) = v7;
  v12 = v6;
  *(v6 + 16) = a2;
  v8 = *(a1 + 24);
  v9 = *(v8 + 8 * (a3 + a2));
  v10 = *(v8 + 8 * a2);
  *v6 = v10;
  *(v6 + 8) = v9 - v10;
  sub_1AE5F4DF8(*(a1 + 48) + 24 * a2, &v12);
  sub_1AE5F4DF8(*(a1 + 72) + 24 * (*(v12 + 20) + a2), &v12);
  return v12;
}

void sub_1AE5F4F7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = ((a1[4] - a1[3]) >> 3) - 1;
  v5 = v4 & ~(v4 >> 31);
  v6 = a1[6];
  while (1)
  {
    v7 = (v6 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    if (v8 != v9)
    {
      break;
    }

LABEL_14:
    if (++v3 == v5 + 1)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      v21 = *(v6 + 24 * v5);
      v22 = *(*v21 + 36);
      while (1)
      {
        v37 = *(*v21 + 40);
        if (!*(v37 + 40))
        {
          break;
        }

        v21 = &v37;
        sub_1AE5F4DF8(&__p, &v37);
      }

      v30 = __p;
      v31 = v39;
      v32 = v39 - 8;
      if (__p != v39 && v32 > __p)
      {
        v34 = __p + 8;
        do
        {
          v35 = *(v34 - 1);
          *(v34 - 1) = *v32;
          *v32 = v35;
          v32 -= 8;
          v36 = v34 >= v32;
          v34 += 8;
        }

        while (!v36);
        v30 = __p;
        v31 = v39;
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_1AE5F992C(a2, v30, v31, (v31 - v30) >> 3);
      *(a2 + 24) = v22;
      if (__p)
      {
        v39 = __p;
        operator delete(__p);
      }

      return;
    }
  }

  v10 = (a1[9] + 24 * v3);
  v11 = *v10;
  v12 = v10[1];
  while (1)
  {
    v13 = *v8;
    *(*v8 + 40) = 0;
    if (v11 == v12)
    {
      break;
    }

    v14 = 0;
    v15 = 0.0;
    v16 = v11;
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = *(v18 + 36) + *(v13 + 32);
      if (v19 > v15 || v14 == 0)
      {
        v14 = v17;
        v15 = v19;
      }
    }

    while (v16 != v12);
    if (!v14)
    {
      break;
    }

    *(v13 + 40) = v14;
    *(v13 + 36) = v15;
    if (++v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (sub_1AE606A34() <= 2)
  {
    LOBYTE(__p) = 0;
    v23 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v24 = sub_1AE5DB608(v23, "(", 1);
    v25 = MEMORY[0x1B2706100](v24, 179);
    v26 = sub_1AE5DB608(v25, ") ", 2);
    v27 = sub_1AE5DB608(v26, "LOG(", 4);
    v28 = sub_1AE5DB608(v27, "ERROR", 5);
    v29 = sub_1AE5DB608(v28, ") ", 2);
    sub_1AE5DB608(v29, "Failed to find the best path in Viterbi.", 40);
    sub_1AE5D9794(&__p);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void sub_1AE5F51A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F51D8(void *a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>)
{
  v5 = ((a1[4] - a1[3]) >> 3) - 1;
  sub_1AE5F3978(a2, a1[16] + a1[17] * a1[18]);
  v6 = 0;
  v25 = a1[6];
  v23 = a1;
  v24 = (v5 & ~(v5 >> 31)) + 1;
  do
  {
    v7 = (v25 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = v23[9] + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *a2;
      do
      {
        if (v12 != v11)
        {
          v14 = *(*v8 + 24);
          v15 = *v12;
          v16 = *(v13 + 4 * v14);
          v17 = v12;
          do
          {
            v18 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
            if (*v17 != v15)
            {
              if (v18 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
              }

              if (v16 >= v18)
              {
                v18 = v16;
              }

              if (v18 <= (v19 + 50.0))
              {
                v20 = v18;
                v21 = exp((v19 - v18));
                v18 = log(v21 + 1.0) + v20;
              }
            }

            *(v13 + 4 * v14) = v18;
            ++v17;
            v16 = v18;
          }

          while (v17 != v11);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }

    ++v6;
  }

  while (v6 != v24);
}

float sub_1AE5F5360(void *a1, float a2)
{
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[16] + a1[17] * a1[18];
  LODWORD(__p[0]) = 0;
  sub_1AE5F3978(v29, v6);
  sub_1AE5F51D8(a1, __p, a2);
  v7 = 0;
  v27 = a1[6];
  v25 = (((v4 - v5) >> 3) - 1) & ~((((v4 - v5) >> 3) - 1) >> 31);
  v26 = a1;
  do
  {
    v8 = (v27 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      v11 = (v26[9] + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = __p[0];
      v15 = v29[0];
      do
      {
        if (v12 != v13)
        {
          v16 = *(*v9 + 24);
          v17 = v15[v16];
          v18 = v12;
          do
          {
            v19 = *v18++;
            v20 = *(v19 + 24);
            v21 = (v14[v20] + (a2 * *(v19 + 32))) - v14[v16];
            v17 = v17 + (expf(v21) * (v21 + v15[v20]));
            v15[v16] = v17;
          }

          while (v18 != v13);
        }

        v9 += 8;
      }

      while (v9 != v10);
    }

    ++v7;
  }

  while (v7 != v25 + 1);
  v22 = v29[0];
  v23 = *(v29[0] + *(**(v27 + 24 * v25) + 24));
  if (!__p[0] || (__p[1] = __p[0], operator delete(__p[0]), (v22 = v29[0]) != 0))
  {
    v29[1] = v22;
    operator delete(v22);
  }

  return -v23;
}

void sub_1AE5F5504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F5520(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>, float a5@<S0>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v156 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    if ((a3 & 1) == 0)
    {
      sub_1AE5F4F7C(a1, &v152);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_1AE5F9DF0(a4, &v152, &v154[1], 1uLL);
      if (v152)
      {
        *&v153 = v152;
        operator delete(v152);
      }

      return;
    }
  }

  else if (!a2)
  {
    if (sub_1AE606A34() <= 1)
    {
      LOBYTE(v152) = 0;
      v10 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
      v11 = sub_1AE5DB608(v10, "(", 1);
      v12 = MEMORY[0x1B2706100](v11, 351);
      v13 = sub_1AE5DB608(v12, ") ", 2);
      v14 = sub_1AE5DB608(v13, "LOG(", 4);
      v15 = sub_1AE5DB608(v14, "WARNING", 7);
      v16 = sub_1AE5DB608(v15, ") ", 2);
      sub_1AE5DB608(v16, "nbest_size >= 1. Returns empty result.", 38);
      sub_1AE5D9794(&v152);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v153 = 0u;
  memset(v154, 0, sizeof(v154));
  v152 = &unk_1F24292A8;
  v155 = 512;
  v150 = 0;
  v151 = 0uLL;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v17 = sub_1AE5F6628(&v152);
  v146 = v17;
  v18 = ((v8[4] - v8[3]) >> 3) - 1;
  *v17 = **(v8[6] + 24 * (v18 & ~(v18 >> 31)));
  *(v17 + 8) = 0;
  *(v17 + 20) = 0;
  v19 = v8[16] + v8[17] * v8[18];
  *v138 = 0;
  sub_1AE5F3978(__p, v19);
  if (v6)
  {
    sub_1AE5F51D8(v8, v138, a5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v138;
    __p[2] = *&v138[16];
    v20 = sub_1AE606B94();
    v21 = sub_1AE5F3EA4(v20);
    v22 = logf((vcvts_n_f32_u32(v21, 0x20uLL) + 0.0) + 0.0000001);
    v23 = -logf(-v22);
  }

  else
  {
    sub_1AE5F4F7C(v8, v144);
    if (v144[0])
    {
      v144[1] = v144[0];
      operator delete(v144[0]);
    }

    v23 = *(*v17 + 36);
  }

  *(v17 + 16) = v23;
  sub_1AE5F9CF0(&v150, &v146);
  v24 = v151;
  sub_1AE5FA028(v150, v151, (v151 - v150) >> 3);
  v129 = 0;
  v128 = (10 * v7);
  if (10 * v7 >= 512)
  {
    v25 = 512;
  }

  else
  {
    v25 = 10 * v7;
  }

  v127 = v25;
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v132 = v26;
  v133 = v6;
  while (1)
  {
    v27 = v150;
    if (v150 == v24)
    {
      break;
    }

    v28 = *v150;
    v29 = (v24 - v150) >> 3;
    if (v29 >= 2)
    {
      v30 = 0;
      v31 = v150;
      do
      {
        v32 = v31;
        v31 += v30 + 1;
        v33 = 2 * v30;
        v30 = (2 * v30) | 1;
        v34 = v33 + 2;
        if (v34 < v29 && *(*v31 + 16) < *(v31[1] + 16))
        {
          ++v31;
          v30 = v34;
        }

        *v32 = *v31;
      }

      while (v30 <= ((v29 - 2) >> 1));
      v35 = v24 - 8;
      if (v31 == (v24 - 8))
      {
        *v31 = v28;
      }

      else
      {
        *v31 = *v35;
        *v35 = v28;
        sub_1AE5FA028(v27, (v31 + 1), ((v31 + 1) - v27) >> 3);
      }
    }

    v24 = (v151 - 8);
    *&v151 = v151 - 8;
    v36 = *v28;
    v37 = v8[9];
    if (*v28 == **v37)
    {
      sub_1AE5F66E8(a4, ((a4[1] - *a4) >> 5) + 1);
      v38 = (v28 + 1);
      while (1)
      {
        v39 = *v38;
        v40 = *v38;
        v41 = v40[1];
        v38 = (v40 + 1);
        if (!v41)
        {
          break;
        }

        sub_1AE5F4DF8(a4[1] - 32, v39);
      }

      v42 = a4[1];
      *(v42 - 8) = *(v28 + 4);
      if (v7 == (v42 - *a4) >> 5)
      {
        break;
      }
    }

    else
    {
      v43 = (v37[3 * *(v36 + 16) + 1] - v37[3 * *(v36 + 16)]);
      *v138 = 0;
      sub_1AE5F3978(v143, v43);
      *v138 = 0;
      sub_1AE5F3978(v142, v43);
      v130 = v7;
      *v138 = 0;
      sub_1AE5FA1AC(&v140, v43);
      v44 = *(v36 + 16);
      v45 = v8[9];
      if (v6)
      {
        v46 = *(v45 + 24 * v44);
        v47 = -100000000.0;
        if (*(v45 + 24 * v44 + 8) != v46)
        {
          v48 = 0;
          v49 = *(__p[0] + *(v36 + 24));
          v47 = -100000000.0;
          do
          {
            v50 = ((*(v28 + 5) + *(__p[0] + *(*(v46 + 8 * v48) + 24))) + (a5 * *(*(v46 + 8 * v48) + 32))) - v49;
            *(v143[0] + v48) = v50;
            v51 = sub_1AE606B94();
            v52 = sub_1AE5F3EA4(v51);
            v53 = logf((vcvts_n_f32_u32(v52, 0x20uLL) + 0.0) + 0.0000001);
            v54 = v50 - logf(-v53);
            *(v142[0] + v48) = v54;
            if (v54 > v47)
            {
              v47 = v54;
            }

            ++v48;
            v55 = *(v36 + 16);
            v45 = v8[9];
            v46 = *(v45 + 24 * v55);
          }

          while (v48 < (*(v45 + 24 * v55 + 8) - v46) >> 3);
          v44 = *(v36 + 16);
        }

        v56 = v140;
        if (v141 != v140)
        {
          v57 = *(v28 + 4);
          v58 = v142[0];
          if (((v141 - v140) >> 3) <= 1)
          {
            v59 = 1;
          }

          else
          {
            v59 = (v141 - v140) >> 3;
          }

          do
          {
            v60 = *v58++;
            v61 = expf(v60 - v47);
            v62 = (v57 - v60) + log1pf(-v61);
            v63 = v57 - fmaxf(v62, 0.0);
            v64 = expf(-fabsf(v62));
            *v56++ = (v63 - log1pf(v64));
            --v59;
          }

          while (v59);
        }

        v6 = v133;
      }

      v65 = *(v45 + 24 * v44);
      if (*(v45 + 24 * v44 + 8) != v65)
      {
        v66 = 0;
        do
        {
          v67 = *(v65 + 8 * v66);
          v68 = sub_1AE5F6628(&v152);
          *v138 = v68;
          *v68 = v67;
          if (v6)
          {
            *(v68 + 20) = *(v143[0] + v66);
            v69 = *(v140 + v66);
          }

          else
          {
            *(v68 + 20) = *(v67 + 32) + *(v28 + 5);
            v69 = *(v67 + 36) + *(v28 + 5);
          }

          *(v68 + 16) = v69;
          *(v68 + 8) = v28;
          sub_1AE5F9CF0(&v150, v138);
          v24 = v151;
          sub_1AE5FA028(v150, v151, (v151 - v150) >> 3);
          ++v66;
          v65 = *(v8[9] + 24 * *(v36 + 16));
        }

        while (v66 < (*(v8[9] + 24 * *(v36 + 16) + 8) - v65) >> 3);
      }

      v7 = v130;
      if (!(((v154[1] + v154[2] * v155) < 0x3B9ACA00) | v129 & 1))
      {
        if (sub_1AE606A34() <= 1)
        {
          v138[0] = 0;
          v70 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
          v71 = sub_1AE5DB608(v70, "(", 1);
          v72 = MEMORY[0x1B2706100](v71, 475);
          v73 = sub_1AE5DB608(v72, ") ", 2);
          v74 = sub_1AE5DB608(v73, "LOG(", 4);
          v75 = sub_1AE5DB608(v74, "WARNING", 7);
          v76 = sub_1AE5DB608(v75, ") ", 2);
          v77 = sub_1AE5DB608(v76, "Allocator size exceeds ", 23);
          v78 = MEMORY[0x1B2706100](v77, 1000000000);
          v79 = sub_1AE5DB608(v78, " with an example of length ", 27);
          v80 = ((v8[4] - v8[3]) >> 3) - 1;
          MEMORY[0x1B2706100](v79, v80 & ~(v80 >> 31));
          sub_1AE5D9794(v138);
        }

        v129 = 1;
      }

      v81 = v150;
      if (((v24 - v150) >> 3) >> 4 < 0x271)
      {
        v6 = v133;
      }

      else
      {
        v148 = 0;
        v149 = 0uLL;
        memset(&v138[8], 0, 40);
        *v138 = &unk_1F24292A8;
        v139 = 512;
        *v135 = 0u;
        v136 = 0u;
        v137 = 1065353216;
        ++HIDWORD(v128);
        if (sub_1AE606A34() <= 1)
        {
          LOBYTE(v147) = 0;
          v82 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
          v83 = sub_1AE5DB608(v82, "(", 1);
          v84 = MEMORY[0x1B2706100](v83, 495);
          v85 = sub_1AE5DB608(v84, ") ", 2);
          v86 = sub_1AE5DB608(v85, "LOG(", 4);
          v87 = sub_1AE5DB608(v86, "WARNING", 7);
          v88 = sub_1AE5DB608(v87, ") ", 2);
          v89 = sub_1AE5DB608(v88, "Too big agenda size ", 20);
          v90 = MEMORY[0x1B2706120](v89, (v24 - v81) >> 3);
          v91 = sub_1AE5DB608(v90, ". Shrinking (round ", 19);
          v92 = MEMORY[0x1B2706100](v91, HIDWORD(v128));
          v93 = sub_1AE5DB608(v92, ") down to ", 10);
          v94 = MEMORY[0x1B2706100](v93, v127);
          sub_1AE5DB608(v94, ".", 1);
          sub_1AE5D9794(&v147);
        }

        if (v128 >= 1)
        {
          v126 = v8;
          v95 = 0;
          while (1)
          {
            v96 = v150;
            v97 = *v150;
            v147 = 0;
            if (!v97)
            {
              goto LABEL_101;
            }

            v98 = &v147;
            do
            {
              v99 = 0x9DDFEA08EB382D69 * ((8 * (v97 & 0x1FFFFFFF) + 8) ^ HIDWORD(v97));
              v100 = 0x9DDFEA08EB382D69 * (HIDWORD(v97) ^ (v99 >> 47) ^ v99);
              v101 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
              if (v135[1])
              {
                v102 = vcnt_s8(v135[1]);
                v102.i16[0] = vaddlv_u8(v102);
                if (v102.u32[0] > 1uLL)
                {
                  v103 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
                  if (v101 >= v135[1])
                  {
                    v103 = v101 % v135[1];
                  }
                }

                else
                {
                  v103 = v101 & (v135[1] - 1);
                }

                v104 = *(v135[0] + v103);
                if (v104)
                {
                  for (i = *v104; i; i = *i)
                  {
                    v106 = i[1];
                    if (v106 == v101)
                    {
                      if (i[2] == v97)
                      {
                        *v98 = i[3];
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                      if (v102.u32[0] > 1uLL)
                      {
                        if (v106 >= v135[1])
                        {
                          v106 %= v135[1];
                        }
                      }

                      else
                      {
                        v106 &= v135[1] - 1;
                      }

                      if (v106 != v103)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v107 = sub_1AE5F6628(v138);
              v108 = *v97;
              *(v107 + 16) = *(v97 + 16);
              *v107 = v108;
              *v98 = v107;
              if (!v135[1])
              {
                goto LABEL_99;
              }

              v109 = vcnt_s8(v135[1]);
              v109.i16[0] = vaddlv_u8(v109);
              if (v109.u32[0] > 1uLL)
              {
                v110 = v101;
                if (v101 >= v135[1])
                {
                  v110 = v101 % v135[1];
                }
              }

              else
              {
                v110 = (v135[1] - 1) & v101;
              }

              v111 = *(v135[0] + v110);
              if (!v111 || (v112 = *v111) == 0)
              {
LABEL_99:
                operator new();
              }

              while (1)
              {
                v113 = v112[1];
                if (v113 == v101)
                {
                  break;
                }

                if (v109.u32[0] > 1uLL)
                {
                  if (v113 >= v135[1])
                  {
                    v113 %= v135[1];
                  }
                }

                else
                {
                  v113 &= v135[1] - 1;
                }

                if (v113 != v110)
                {
                  goto LABEL_99;
                }

LABEL_98:
                v112 = *v112;
                if (!v112)
                {
                  goto LABEL_99;
                }
              }

              if (v112[2] != v97)
              {
                goto LABEL_98;
              }

              v97 = *(v97 + 8);
              v98 = (v107 + 8);
            }

            while (v97);
LABEL_101:
            v134 = v147;
            sub_1AE5F9CF0(&v148, &v134);
            sub_1AE5FA028(v148, v149, (v149 - v148) >> 3);
            v114 = (v24 - v96) >> 3;
            v6 = v133;
            v7 = v130;
            if (v114 >= 2)
            {
              v115 = 0;
              v116 = *v96;
              v117 = v96;
              do
              {
                v118 = v117;
                v117 += v115 + 1;
                v119 = 2 * v115;
                v115 = (2 * v115) | 1;
                v120 = v119 + 2;
                if (v120 < v114 && *(*v117 + 16) < *(v117[1] + 16))
                {
                  ++v117;
                  v115 = v120;
                }

                *v118 = *v117;
              }

              while (v115 <= ((v114 - 2) >> 1));
              v121 = v24 - 8;
              if (v117 == (v24 - 8))
              {
                *v117 = v116;
              }

              else
              {
                *v117 = *v121;
                *v121 = v116;
                sub_1AE5FA028(v96, (v117 + 1), v117 + 1 - v96);
              }
            }

            v24 = (v151 - 8);
            *&v151 = v151 - 8;
            if (++v95 == v132)
            {
              v81 = v150;
              v8 = v126;
              goto LABEL_114;
            }
          }
        }

        v6 = v133;
LABEL_114:
        if (v81)
        {
          *&v151 = v81;
          operator delete(v81);
        }

        v150 = v148;
        v131 = v149;
        v151 = v149;
        v122 = v153;
        v153 = *&v138[8];
        *&v138[8] = v122;
        v123 = *&v138[24];
        v124 = v155;
        *&v138[24] = v154[0];
        v125 = *&v154[1];
        *&v154[1] = *&v138[32];
        *&v138[32] = v125;
        v154[0] = v123;
        v155 = v139;
        v139 = v124;
        sub_1AE5F6784(v135);
        sub_1AE5F67D0(v138);
        v24 = v131;
      }

      if (v140)
      {
        v141 = v140;
        operator delete(v140);
      }

      if (v142[0])
      {
        v142[1] = v142[0];
        operator delete(v142[0]);
      }

      if (v143[0])
      {
        v143[1] = v143[0];
        operator delete(v143[0]);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v150)
  {
    operator delete(v150);
  }

  sub_1AE5F67D0(&v152);
}

void sub_1AE5F64D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51)
{
  sub_1AE5F6784(&a19);
  sub_1AE5F67D0(&a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  v53 = *(v51 - 256);
  sub_1AE5DB444(&a25);
  if (v53)
  {
    operator delete(v53);
  }

  sub_1AE5F67D0((v51 - 224));
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5F6628(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 24 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_1AE5F66E8(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1AE5FA084(a1, v5);
  }
}

uint64_t sub_1AE5F6784(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1AE5F67D0(void *a1)
{
  *a1 = &unk_1F24292A8;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B27063D0](*v2, 0x1020C8062D53EE8);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1AE5F6864(void *a1@<X0>, unint64_t *a2@<X8>, float a3@<S0>)
{
  if ((((a1[4] - a1[3]) >> 3) - 1) <= 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6 = a1[16] + a1[17] * a1[18];
    LODWORD(__src[0]) = 0;
    sub_1AE5F3978(__p, v6);
    sub_1AE5F51D8(a1, __src, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v42 = v40;
    v7 = sub_1AE606B94();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    __src[0] = 0;
    __src[1] = 0;
    v40 = 0;
    v8 = ((a1[4] - a1[3]) >> 3) - 1;
    v9 = **(a1[6] + 24 * (v8 & ~(v8 >> 31)));
    v10 = *(__p[0] + *(v9 + 24));
    v38 = v9;
    do
    {
      v11 = __src[0];
      __src[1] = __src[0];
      v12 = (a1[9] + 24 * *(v38 + 16));
      v13 = *v12;
      v14 = v12[1];
      v15 = __src[0];
      if (*v12 != v14)
      {
        do
        {
          v16 = exp(((*(__p[0] + *(*v13 + 24)) + (a3 * *(*v13 + 32))) - v10));
          if (v11 >= v40)
          {
            v17 = __src[0];
            v18 = v11 - __src[0];
            v19 = (v11 - __src[0]) >> 2;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              sub_1AE5CBB70();
            }

            v21 = v40 - __src[0];
            if ((v40 - __src[0]) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              sub_1AE5DBD94(__src, v22);
            }

            v23 = v19;
            v24 = (4 * v19);
            v25 = &v24[-v23];
            *v24 = v16;
            v11 = v24 + 1;
            memcpy(v25, v17, v18);
            v26 = __src[0];
            __src[0] = v25;
            __src[1] = v11;
            v40 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v11++ = v16;
          }

          __src[1] = v11;
          v13 += 8;
        }

        while (v13 != v14);
        v15 = __src[0];
      }

      sub_1AE5F3A8C(v37, v15, v11);
      v27 = *(v38 + 16);
      v28 = a1[9];
      v29 = *(*(v28 + 24 * v27) + 8 * sub_1AE5F3DF4(v37, v7, v37));
      v38 = v29;
      v30 = **a1[9];
      if (v29 != v30)
      {
        v10 = *(__p[0] + *(v29 + 24));
        sub_1AE5F4DF8(a2, &v38);
      }

      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }
    }

    while (v29 != v30);
    v32 = *a2;
    v31 = a2[1];
    if (*a2 != v31)
    {
      v33 = (v31 - 8);
      if (v33 > v32)
      {
        v34 = v32 + 8;
        do
        {
          v35 = *(v34 - 8);
          *(v34 - 8) = *v33;
          *v33-- = v35;
          v36 = v34 >= v33;
          v34 += 8;
        }

        while (!v36);
      }
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1AE5F6B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F6BDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  v5 = ((a2[4] - a2[3]) >> 3) - 1;
  v6 = a2[1];
  v7 = a2[2];
  sub_1AE5DB998(&__p, *(a1 + 92) + 1);
  v43 = v5;
  if (v5 < 1)
  {
    goto LABEL_40;
  }

  v44 = 0;
  v8 = 0;
  v9 = v4 + -10.0;
  v42 = v6 + v7;
  do
  {
    v10 = *(a2[3] + 8 * v8);
    v11 = __p;
    v12 = (v47 - __p) >> 4;
    v13 = *(a1 + 40);
    v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
    if ((v42 - v10) << 32)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v10[v15];
        v18 = v14 ^ v17;
        v19 = v13[v18];
        if ((v19 & 0x800000FF) != v17)
        {
          break;
        }

        v14 = v18 ^ (v19 >> 10 << ((v19 >> 6) & 8));
        if ((v19 & 0x100) != 0)
        {
          if (v16 < v12)
          {
            v20 = &v11[16 * v16];
            *v20 = v13[v14] & 0x7FFFFFFF;
            *(v20 + 1) = v15 + 1;
          }

          ++v16;
        }

        ++v15;
      }

      while (v42 - v10 != v15);
    }

    else
    {
      v21 = *v10;
      if (*v10)
      {
        v16 = 0;
        v22 = 1;
        do
        {
          v23 = v14 ^ v21;
          v24 = v13[v23];
          if ((v24 & 0x800000FF) != v21)
          {
            break;
          }

          v14 = v23 ^ (v24 >> 10 << ((v24 >> 6) & 8));
          if ((v24 & 0x100) != 0)
          {
            if (v16 < v12)
            {
              v25 = &v11[16 * v16];
              *v25 = v13[v14] & 0x7FFFFFFF;
              *(v25 + 1) = v22;
            }

            ++v16;
          }

          v21 = v10[v22++];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }
    }

    if (v16 >= v12)
    {
      v45 = 1;
      v26 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
      v27 = sub_1AE5DB608(v26, "(", 1);
      v28 = MEMORY[0x1B2706100](v27, 572);
      v29 = sub_1AE5DB608(v28, ") [", 3);
      v30 = sub_1AE5DB608(v29, "(num_nodes) < (trie_results.size())", 35);
      sub_1AE5DB608(v30, "] ", 2);
      sub_1AE5D9794(&v45);
    }

    if (!v16)
    {
LABEL_38:
      v41 = sub_1AE5F4ECC(a2, v8, 1);
      *(v41 + 28) = *(a1 + 88);
      *(v41 + 32) = v9;
      goto LABEL_39;
    }

    v31 = 0;
    v32 = 0;
    do
    {
      while (1)
      {
        v33 = (__p + 16 * v31);
        v34 = (a2[3] + v44);
        v35 = -1;
        do
        {
          v36 = *v34++;
          ++v35;
        }

        while (v36 < &v10[*(v33 + 1)]);
        v37 = *v33;
        if ((*(**(a1 + 8) + 128))(*(a1 + 8), v37))
        {
          break;
        }

        v38 = v8;
        v39 = sub_1AE5F4ECC(a2, v8, v35);
        *(v39 + 28) = v37;
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v37))
        {
          v40 = (*(a1 + 108) * v35) + -0.1;
        }

        else
        {
          v40 = (*(**(a1 + 8) + 96))(*(a1 + 8), v37);
        }

        *(v39 + 32) = v40;
        if (!v32)
        {
          v32 = *(v39 + 20) == 1;
          v8 = v38;
          break;
        }

        ++v31;
        v32 = 1;
        v8 = v38;
        if (v31 == v16)
        {
          goto LABEL_39;
        }
      }

      ++v31;
    }

    while (v31 != v16);
    if (!v32)
    {
      goto LABEL_38;
    }

LABEL_39:
    ++v8;
    v44 += 8;
  }

  while (v8 != v43);
LABEL_40:
  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }
}

void sub_1AE5F6FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5F6FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE5F7144(a1);
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *v4 = &unk_1F2429150;
  *(v4 + 8) = a2 + 16;
  sub_1AE5D7658(v4);
  v5 = 0;
  *(a1 + 104) = 0x8000007F7FFFFFLL;
  while (v5 < (*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if ((*(**(a1 + 8) + 104))(*(a1 + 8), v5))
    {
      v6 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (v6 >= *(a1 + 104))
      {
        v6 = *(a1 + 104);
      }

      *(a1 + 104) = v6;
      v7 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (*(a1 + 108) >= v7)
      {
        v7 = *(a1 + 108);
      }

      *(a1 + 108) = v7;
    }

    ++v5;
  }

  return a1;
}

uint64_t sub_1AE5F7144(uint64_t a1)
{
  *a1 = &unk_1F2428B70;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F2428C90;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F2428C90;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_1AE6089B8((a1 + 96));
  return a1;
}

void sub_1AE5F71E8(_Unwind_Exception *a1)
{
  sub_1AE5D5584(v3);
  sub_1AE5D5584(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    sub_1AE5DB58C(v1, v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5F721C(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v7 = a4 > 7;
  if (a4 <= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - 8;
  }

  if (v7)
  {
    v9 = (a3 + 2);
  }

  else
  {
    v9 = "";
  }

  v10 = sub_1AE5D55E8(a1, a2, v9, v8);
  *v10 = &unk_1F2429150;
  *(v10 + 104) = 0;
  v11 = (v10 + 104);
  *(v10 + 108) = 0;
  v12 = (v10 + 108);
  *(v10 + 112) = 0;
  sub_1AE608BD4(&v16, a1 + 12);
  v13 = v16;
  sub_1AE6089C0(&v16);
  if (!v13)
  {
    sub_1AE5F738C(a3, a4, v11, &v16);
    sub_1AE608BD8(a1 + 12, &v16);
    sub_1AE6089C0(&v16);
    (*(*a1 + 16))(&v16, a1);
    v14 = v16;
    sub_1AE6089C0(&v16);
    if (!v14)
    {
      sub_1AE5F738C(a3 + 1, a4 - 4, v12, &v16);
      sub_1AE608BD8(a1 + 12, &v16);
      sub_1AE6089C0(&v16);
    }
  }

  return a1;
}

void sub_1AE5F7358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6089C0(va);
  sub_1AE5D64F8(v2);
  _Unwind_Resume(a1);
}

void *sub_1AE5F738C@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1AE5D9464(&v8);
    sub_1AE5DB608(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1AE5DB608(&v8, "(", 1);
    MEMORY[0x1B2706100](&v8, 448);
    sub_1AE5DB608(&v8, ") [", 3);
    sub_1AE5DB608(&v8, "string.size() >= sizeof(T)", 26);
    sub_1AE5DB608(&v8, "] ", 2);
    sub_1AE5D624C(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1B2706340](&v12);
  }

  else
  {
    *a3 = *a1;

    return sub_1AE6089B8(a4);
  }
}

void sub_1AE5F75A0(void *a1)
{
  sub_1AE5D64F8(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE5F75D8(_DWORD *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1[28])
  {
    (*(*a1 + 16))(&v23, a1);
    if (v23)
    {
      sub_1AE6089C0(&v23);
LABEL_4:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    sub_1AE6089C0(&v23);
    if (!a3)
    {
      goto LABEL_4;
    }

    v23 = &unk_1F2429130;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = &unk_1F2429278;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v34 = 1024;
    sub_1AE5F4A5C(&v23, a2, a3);
    sub_1AE5F6BDC(a1, &v23);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sub_1AE5F4F7C(&v23, &v21);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = *(a4 + 8);
      do
      {
        v11 = *v8;
        v12 = *(a4 + 16);
        if (v10 >= v12)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1AE5CBB70();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            sub_1AE5DB364(a4, v16);
          }

          v17 = 24 * v13;
          *v17 = *v11;
          *(v17 + 16) = *(v11 + 28);
          v10 = 24 * v13 + 24;
          v18 = *(a4 + 8) - *a4;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a4, v18);
          v20 = *a4;
          *a4 = v19;
          *(a4 + 8) = v10;
          *(a4 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = *v11;
          *(v10 + 16) = *(v11 + 28);
          v10 += 24;
        }

        *(a4 + 8) = v10;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }

    sub_1AE5F47F0(&v23);
  }

  else
  {

    sub_1AE5F78C8(a1, a2, a3, a4);
  }
}

void sub_1AE5F7880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sub_1AE5F47F0(&a13);
  _Unwind_Resume(a1);
}

void sub_1AE5F78C8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  (*(*a1 + 16))(&v52);
  if (v52)
  {
    sub_1AE6089C0(&v52);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sub_1AE6089C0(&v52);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a3 << 32 != 0xFFFFFFFF00000000)
  {
    if ((((a3 << 32) + 0x100000000) >> 32) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  if (a3 <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 104) + -10.0;
    v10 = a3 & 0x7FFFFFFF;
    v49 = -v10;
    v50 = a4;
    v51 = a3;
    v47 = v10;
    v48 = a2;
    do
    {
      v11 = *(12 * v8 + 4);
      if (a3 - v8 >= asc_1AE7C16A4[*(a2 + v8) >> 4])
      {
        v12 = asc_1AE7C16A4[*(a2 + v8) >> 4];
      }

      else
      {
        v12 = a3 - v8;
      }

      if (v10 <= v8)
      {
        goto LABEL_27;
      }

      v13 = 0;
      v14 = 0;
      v15 = (12 * v8 + 20);
      v16 = 1;
      do
      {
        v17 = *(a1 + 40);
        v18 = *(a2 + v8 + v16 - 1);
        LODWORD(v14) = (*(v17 + 4 * v14) >> 10 << ((*(v17 + 4 * v14) >> 6) & 8)) ^ v14 ^ v18;
        v19 = *(v17 + 4 * v14);
        if ((v19 & 0x800000FF) != v18)
        {
          break;
        }

        if ((v19 & 0x100) != 0)
        {
          v20 = *(v17 + 4 * ((v19 >> 10 << ((v19 >> 6) & 8)) ^ v14)) & 0x7FFFFFFF;
          if (((*(**(a1 + 8) + 128))(*(a1 + 8), v20) & 1) == 0)
          {
            if ((*(**(a1 + 8) + 136))(*(a1 + 8), v20))
            {
              v21 = (*(a1 + 108) * v16) + -0.1;
            }

            else
            {
              v21 = (*(**(a1 + 8) + 96))(*(a1 + 8), v20);
            }

            v22 = v21 + v11;
            if (*v15 == -1 || v22 > *(v15 - 1))
            {
              v23 = v22;
              *(v15 - 1) = v23;
              *v15 = v8;
              *(v15 - 2) = v20;
            }

            v13 |= v12 == v16;
          }
        }

        ++v16;
        v15 += 3;
      }

      while (v49 + v8 + v16 != 1);
      a3 = v51;
      v10 = v47;
      a2 = v48;
      if ((v13 & 1) == 0)
      {
LABEL_27:
        v24 = v9 + v11;
        if (*(12 * (v12 + v8) + 8) == -1 || v24 > *(12 * (v12 + v8) + 4))
        {
          *(12 * (v12 + v8) + 4) = v24;
          *(12 * (v12 + v8) + 8) = v8;
          *(12 * (v12 + v8)) = *(a1 + 88);
        }
      }

      v8 += v12;
    }

    while (v8 < a3);
    v26 = 0;
    v27 = v50;
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
    v28 = a3;
    do
    {
      v29 = 12 * v28;
      v30 = *(v29 + 8);
      if (a3 < v30)
      {
        sub_1AE5F1DA4("string_view::substr");
      }

      v31 = v28 - v30;
      v32 = a2 + v30;
      if (a3 - v30 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = a3 - v30;
      }

      v34 = v27[2];
      if (v26 >= v34)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v27) >> 3);
        v36 = v35 + 1;
        if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v27) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          sub_1AE5DB364(v27, v38);
        }

        v39 = 24 * v35;
        *v39 = v32;
        *(v39 + 8) = v33;
        *(v39 + 16) = *v29;
        v26 = 24 * v35 + 24;
        v40 = v50[1] - *v50;
        v41 = v39 - v40;
        memcpy((v39 - v40), *v50, v40);
        v42 = *v50;
        *v50 = v41;
        v50[1] = v26;
        v50[2] = 0;
        v27 = v50;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v26 = v32;
        *(v26 + 8) = v33;
        *(v26 + 16) = *v29;
        v26 += 24;
      }

      a3 = v51;
      v27[1] = v26;
      v28 = *(v29 + 8);
    }

    while (v28 > 0);
    v43 = *v27;
    if (*v27 == v26 || (v44 = v26 - 24, v26 - 24 <= v43))
    {
      operator delete(0);
    }

    else
    {
      do
      {
        v52 = *v43;
        v45 = v52;
        *v43 = *v44;
        *v44 = v45;
        v46 = *(v43 + 16);
        *(v43 + 16) = *(v44 + 16);
        *(v44 + 16) = v46;
        v43 += 24;
        v44 -= 24;
      }

      while (v43 < v44);
    }
  }
}

void sub_1AE5F7DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  v17 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v17;
    operator delete(v17);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1AE5F7E28(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(__p);
  if (__p[0])
  {
    sub_1AE6089C0(__p);
LABEL_3:
    memset(__p, 0, 24);
    sub_1AE5DB298(__p, 0, 0, 0);
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_1AE5DB0C4(a5, __p, &__p[4], 1uLL);
    v10 = __p[0];
    if (!__p[0])
    {
      return;
    }

    __p[1] = __p[0];
    goto LABEL_5;
  }

  sub_1AE6089C0(__p);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a4 >= 1024)
  {
    v11 = 1024;
  }

  else
  {
    v11 = a4;
  }

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (a4 > 1)
  {
    __p[0] = &unk_1F2429130;
    memset(&__p[1], 0, 88);
    __p[12] = &unk_1F2429278;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v36 = 1024;
    sub_1AE5F4A5C(__p, a2, a3);
    sub_1AE5F6BDC(a1, __p);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_1AE5F5520(__p, v12, 0, &v30, 0.0);
    v26 = *(&v30 + 1);
    for (i = v30; i != v26; i += 32)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v14 = *i;
      v15 = *(i + 8);
      if (*i != v15)
      {
        v16 = 0;
        do
        {
          v17 = *v14;
          if (v16 >= v29)
          {
            v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v27) >> 3);
            v19 = v18 + 1;
            if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1AE5CBB70();
            }

            if (0x5555555555555556 * ((v29 - v27) >> 3) > v19)
            {
              v19 = 0x5555555555555556 * ((v29 - v27) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v29 - v27) >> 3) >= 0x555555555555555)
            {
              v20 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              sub_1AE5DB364(&v27, v20);
            }

            v21 = 24 * v18;
            *v21 = *v17;
            *(v21 + 16) = *(v17 + 28);
            v16 = 24 * v18 + 24;
            v22 = (v21 - (v28 - v27));
            memcpy(v22, v27, v28 - v27);
            v23 = v27;
            v27 = v22;
            v28 = v16;
            v29 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v16 = *v17;
            *(v16 + 16) = *(v17 + 28);
            v16 += 24;
          }

          v28 = v16;
          ++v14;
        }

        while (v14 != v15);
      }

      v24 = a5[1];
      if (v24 >= a5[2])
      {
        v25 = sub_1AE5FA2F8(a5, &v27, (i + 24));
      }

      else
      {
        sub_1AE5FA284(a5, &v27, (i + 24));
        v25 = (v24 + 32);
      }

      a5[1] = v25;
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }
    }

    v27 = &v30;
    sub_1AE5DB444(&v27);
    sub_1AE5F47F0(__p);
  }

  else
  {
    (*(*a1 + 40))(&v30, a1, a2, a3);
    *__p = v30;
    __p[2] = v31;
    v31 = 0;
    v30 = 0uLL;
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_1AE5DB0C4(a5, __p, &__p[4], 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = v30;
    if (v30)
    {
      *(&v30 + 1) = v30;
LABEL_5:
      operator delete(v10);
    }
  }
}

void sub_1AE5F8228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a12 = a11;
  sub_1AE5DB444(&a12);
  sub_1AE5F47F0(&__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5F82D0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(&v26);
  if (v26)
  {
    result = sub_1AE6089C0(&v26);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  result = sub_1AE6089C0(&v26);
  if (!a3)
  {
    goto LABEL_3;
  }

  v26 = &unk_1F2429130;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = &unk_1F2429278;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 1024;
  sub_1AE5F4A5C(&v26, a2, a3);
  sub_1AE5F6BDC(a1, &v26);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_1AE5F6864(&v26, &v24, a5);
  v11 = v24;
  v12 = v25;
  if (v24 != v25)
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = *(a4 + 16);
      if (v13 >= v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_1AE5DB364(a4, v19);
        }

        v20 = 24 * v16;
        *v20 = *v14;
        *(v20 + 16) = *(v14 + 28);
        v13 = 24 * v16 + 24;
        v21 = *(a4 + 8) - *a4;
        v22 = v20 - v21;
        memcpy((v20 - v21), *a4, v21);
        v23 = *a4;
        *a4 = v22;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v13 = *v14;
        *(v13 + 16) = *(v14 + 28);
        v13 += 24;
      }

      *(a4 + 8) = v13;
      ++v11;
    }

    while (v11 != v12);
    v11 = v24;
  }

  if (v11)
  {
    v25 = v11;
    operator delete(v11);
  }

  return sub_1AE5F47F0(&v26);
}

void sub_1AE5F8580(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t *j@<X8>, float a8@<S0>)
{
  v14 = a1;
  (*(*a1 + 16))(&v123);
  if (v123)
  {
    sub_1AE6089C0(&v123);
LABEL_3:
    *j = 0;
    j[1] = 0;
    j[2] = 0;
    return;
  }

  sub_1AE6089C0(&v123);
  if (!a3)
  {
    goto LABEL_3;
  }

  v135 = 0;
  v136 = 0;
  v137 = 0;
  v123 = &unk_1F2429130;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0;
  v130 = &unk_1F2429278;
  v131 = 0u;
  v132 = 0u;
  v133 = 0;
  v134 = 1024;
  sub_1AE5F4A5C(&v123, a2, a3);
  sub_1AE5F6BDC(v14, &v123);
  sub_1AE5F51D8(&v123, v122, a8);
  v16 = *(v122[0] + *(**(*(&v126 + 1) + 24 * ((((*(&v125 + 1) - v125) >> 3) - 1) & ~((((*(&v125 + 1) - v125) >> 3) - 1) >> 31))) + 24));
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v97 = a2;
    v99 = a3;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    sub_1AE5F4F7C(&v123, &__p);
    v101 = v14;
    v17 = __p;
    v18 = v106;
    if (__p != v106)
    {
      v19 = v120;
      do
      {
        v20 = *v17;
        if (v19 >= v121)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v119) >> 3);
          v22 = v21 + 1;
          if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1AE5CBB70();
          }

          if (0x5555555555555556 * ((v121 - v119) >> 3) > v22)
          {
            v22 = 0x5555555555555556 * ((v121 - v119) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v121 - v119) >> 3) >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_1AE5DB364(&v119, v23);
          }

          v24 = 24 * v21;
          *v24 = *v20;
          *(v24 + 16) = v20[1].n128_u32[3];
          v19 = (24 * v21 + 24);
          v25 = (v24 - (v120 - v119));
          memcpy(v25, v119, v120 - v119);
          v26 = v119;
          v119 = v25;
          v120 = v19;
          v121 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v19 = *v20;
          v19[1].n128_u32[0] = v20[1].n128_u32[3];
          v19 = (v19 + 24);
        }

        v120 = v19;
        ++v17;
      }

      while (v17 != v18);
    }

    v117 = 0.0;
    v27 = v136;
    if (v136 >= v137)
    {
      v29 = sub_1AE5FA420(&v135, &v119, &v117);
    }

    else
    {
      *v136 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      sub_1AE5DB298(v27, v119, v120, 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3));
      v28 = v117;
      *(v27 + 24) = v28;
      v29 = (v27 + 32);
    }

    a2 = v97;
    a3 = v99;
    v14 = v101;
    v136 = v29;
    if (__p)
    {
      *&v106 = __p;
      operator delete(__p);
    }

    if (v119)
    {
      v120 = v119;
      operator delete(v119);
    }

LABEL_31:
    if (a5)
    {
      sub_1AE5F5520(&v123, a4 + 1, 1, &v119, a8);
      v96 = j;
      if (a6)
      {
        sub_1AE5FA54C(&v117, (v120 - v119) >> 5);
        v38 = v119;
        v37 = v120;
        if (v120 != v119)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          do
          {
            if (&v38[v39] != (*&v117 + v40))
            {
              sub_1AE5FA63C((*&v117 + v40), v38[v39].n128_u64[0], v38[v39].n128_u64[1], (v38[v39].n128_u64[1] - v38[v39].n128_u64[0]) >> 3);
              v38 = v119;
              v37 = v120;
            }

            ++v41;
            v40 += 24;
            v39 += 2;
          }

          while (v41 < (v37 - v38) >> 5);
        }

        sub_1AE5F4F7C(&v123, &__p);
        v42 = v117;
        v43 = v118;
        if (*&v117 == *&v118)
        {
          v46 = v117;
        }

        else
        {
          v44 = __p;
          v45 = v106 - __p;
          v46 = v117;
          while (*(*&v46 + 8) - **&v46 != v45 || memcmp(**&v46, v44, v45))
          {
            *&v46 += 24;
            if (*&v46 == *&v43)
            {
              v46 = v43;
              break;
            }
          }
        }

        v62 = 0xAAAAAAAAAAAAAAABLL * ((*&v46 - *&v42) >> 3);
        v63 = v120;
        if (v62 == (v120 - v119) >> 5)
        {
          v65 = v120 - 2;
          v64 = v120[-2].n128_u64[0];
          if (v64)
          {
            v120[-2].n128_u64[1] = v64;
            operator delete(v64);
          }
        }

        else
        {
          v65 = &v119[2 * v62];
          if (&v65[2] != v120)
          {
            do
            {
              v66 = v65 + 2;
              sub_1AE5FA768(v65, v65 + 2);
              v65[1].n128_u32[2] = v65[3].n128_u32[2];
              v67 = v65 + 4;
              v65 += 2;
            }

            while (v67 != v63);
            v63 = v120;
            v65 = v66;
          }

          if (v63 != v65)
          {
            v68 = v63;
            do
            {
              v70 = v68[-2].n128_u64[0];
              v68 -= 2;
              v69 = v70;
              if (v70)
              {
                v63[-2].n128_u64[1] = v69;
                operator delete(v69);
              }

              v63 = v68;
            }

            while (v68 != v65);
          }
        }

        v120 = v65;
        if (__p)
        {
          *&v106 = __p;
          operator delete(__p);
        }

        __p = &v117;
        sub_1AE5F1EA8(&__p);
      }

      v71 = v120[-2].n128_u64[0];
      v103 = v120 - 2;
      v72 = v120[-1].n128_f32[2];
      if (v71)
      {
        v120[-2].n128_u64[1] = v71;
        operator delete(v71);
      }

      v120 = v103;
      for (i = v119; i != v103; i += 2)
      {
        __p = 0;
        v106 = 0uLL;
        v74 = i->n128_u64[0];
        v75 = i->n128_i64[1];
        if (i->n128_u64[0] == v75)
        {
          v77 = 0.0;
        }

        else
        {
          v76 = 0;
          v77 = 0.0;
          do
          {
            v78 = *v74;
            v79 = *(*v74 + 32);
            if (v76 >= *(&v106 + 1))
            {
              v80 = 0xAAAAAAAAAAAAAAABLL * ((v76 - __p) >> 3);
              v81 = v80 + 1;
              if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1AE5CBB70();
              }

              if (0x5555555555555556 * ((*(&v106 + 1) - __p) >> 3) > v81)
              {
                v81 = 0x5555555555555556 * ((*(&v106 + 1) - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v106 + 1) - __p) >> 3) >= 0x555555555555555)
              {
                v82 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v82 = v81;
              }

              if (v82)
              {
                sub_1AE5DB364(&__p, v82);
              }

              v83 = 24 * v80;
              *v83 = *v78;
              *(v83 + 16) = *(v78 + 28);
              v76 = 24 * v80 + 24;
              v84 = (v83 - (v106 - __p));
              memcpy(v84, __p, v106 - __p);
              v85 = __p;
              __p = v84;
              v106 = v76;
              if (v85)
              {
                operator delete(v85);
              }
            }

            else
            {
              *v76 = *v78;
              *(v76 + 16) = *(v78 + 28);
              v76 += 24;
            }

            *&v106 = v76;
            v77 = v77 + (a8 * v79);
            ++v74;
          }

          while (v74 != v75);
        }

        *&v117 = v77 - v16;
        v86 = v136;
        if (v136 >= v137)
        {
          v87 = sub_1AE5FA7BC(&v135, &__p, &v117);
        }

        else
        {
          *v136 = 0;
          *(v86 + 8) = 0;
          *(v86 + 16) = 0;
          sub_1AE5DB298(v86, __p, v106, 0xAAAAAAAAAAAAAAABLL * ((v106 - __p) >> 3));
          *(v86 + 24) = LODWORD(v117);
          v87 = (v86 + 32);
        }

        v136 = v87;
        if (__p)
        {
          *&v106 = __p;
          operator delete(__p);
        }
      }

      v88 = v135;
      v89 = v136;
      for (j = v96; v88 != v89; v88 += 32)
      {
        v90 = *(v88 + 24);
        if (v90 != 0.0)
        {
          v91 = v90 - v72;
          v92 = exp(v91);
          if (v91 <= -10.0)
          {
            v94 = v91 + v92 * -0.5 + v92 * v92 / 24.0 + pow(v92, 4.0) / -2880.0;
          }

          else
          {
            v93 = expm1(-v92);
            v94 = log(-v93);
          }

          v95 = v94;
          *(v88 + 24) = v95;
        }
      }

      __p = &v119;
      sub_1AE5DB444(&__p);
      v48 = v135;
      v47 = v136;
    }

    else
    {
      v48 = v135;
      v47 = v136;
      if (a4 > (&v136[-v135] >> 5))
      {
        v98 = a2;
        v100 = a3;
        v102 = v14;
        do
        {
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0;
          __p = &unk_1F2429130;
          v112 = &unk_1F2429278;
          v113 = 0u;
          v114 = 0u;
          v115 = 0;
          v116 = 1024;
          sub_1AE5F4A5C(&__p, a2, a3);
          sub_1AE5F6BDC(v14, &__p);
          v119 = 0;
          v120 = 0;
          v121 = 0;
          sub_1AE5F6864(&__p, &v117, a8);
          v50 = v117;
          v49 = v118;
          v51 = 0.0;
          if (*&v117 != *&v118)
          {
            v52 = v120;
            do
            {
              v53 = **&v50;
              if (v52 >= v121)
              {
                v54 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v119) >> 3);
                v55 = v54 + 1;
                if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1AE5CBB70();
                }

                if (0x5555555555555556 * ((v121 - v119) >> 3) > v55)
                {
                  v55 = 0x5555555555555556 * ((v121 - v119) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v121 - v119) >> 3) >= 0x555555555555555)
                {
                  v56 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v56 = v55;
                }

                if (v56)
                {
                  sub_1AE5DB364(&v119, v56);
                }

                v57 = 24 * v54;
                *v57 = *v53;
                *(v57 + 16) = v53[1].n128_u32[3];
                v52 = (24 * v54 + 24);
                v58 = (v57 - (v120 - v119));
                memcpy(v58, v119, v120 - v119);
                v59 = v119;
                v119 = v58;
                v120 = v52;
                v121 = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v52 = *v53;
                v52[1].n128_u32[0] = v53[1].n128_u32[3];
                v52 = (v52 + 24);
              }

              v120 = v52;
              v51 = v51 + (a8 * v53[2].n128_f32[0]);
              *&v50 += 8;
            }

            while (*&v50 != *&v49);
          }

          v104 = v51 - v16;
          v60 = v136;
          if (v136 >= v137)
          {
            v61 = sub_1AE5FA7BC(&v135, &v119, &v104);
            v14 = v102;
          }

          else
          {
            *v136 = 0;
            *(v60 + 8) = 0;
            *(v60 + 16) = 0;
            sub_1AE5DB298(v60, v119, v120, 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3));
            v14 = v102;
            *(v60 + 24) = v104;
            v61 = (v60 + 32);
          }

          a2 = v98;
          a3 = v100;
          v136 = v61;
          if (v117 != 0.0)
          {
            v118 = v117;
            operator delete(*&v117);
          }

          if (v119)
          {
            v120 = v119;
            operator delete(v119);
          }

          sub_1AE5F47F0(&__p);
          v48 = v135;
          v47 = v136;
        }

        while (a4 > (&v136[-v135] >> 5));
      }
    }

    *j = v48;
    j[1] = v47;
    j[2] = v137;
    j = &v135;
    goto LABEL_120;
  }

  if (sub_1AE606A34() <= 2)
  {
    LOBYTE(__p) = 0;
    v30 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v31 = sub_1AE5DB608(v30, "(", 1);
    v32 = MEMORY[0x1B2706100](v31, 717);
    v33 = sub_1AE5DB608(v32, ") ", 2);
    v34 = sub_1AE5DB608(v33, "LOG(", 4);
    v35 = sub_1AE5DB608(v34, "ERROR", 5);
    v36 = sub_1AE5DB608(v35, ") ", 2);
    sub_1AE5DB608(v36, "include_best not supported for wor false", 40);
    sub_1AE5D9794(&__p);
  }

LABEL_120:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  if (v122[0])
  {
    v122[1] = v122[0];
    operator delete(v122[0]);
  }

  sub_1AE5F47F0(&v123);
  v123 = &v135;
  sub_1AE5DB444(&v123);
}

void sub_1AE5F908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  v49 = v46[22];
  if (v49)
  {
    v46[23] = v49;
    operator delete(v49);
  }

  v50 = v46[25];
  if (v50)
  {
    v46[26] = v50;
    operator delete(v50);
  }

  sub_1AE5F47F0(&a46);
  a46 = (v47 - 160);
  sub_1AE5DB444(&a46);
  _Unwind_Resume(a1);
}

float sub_1AE5F91DC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, float a4)
{
  v8 = &unk_1F2429130;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = &unk_1F2429278;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = 1024;
  sub_1AE5F4A5C(&v8, a2, a3);
  sub_1AE5F6BDC(a1, &v8);
  v6 = sub_1AE5F5360(&v8, a4);
  sub_1AE5F47F0(&v8);
  return v6;
}

void sub_1AE5F929C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F47F0(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AE5F92B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  strcpy(__s, " ");
  v10 = strlen(__s);
  sub_1AE5F15B4(&v44, a2, a3, __s, v10, 0);
  v47 = 0;
  v48 = 0;
  __p = 0;
  sub_1AE5F99E4(&__p, v44, v45, (v45 - v44) >> 4);
  v11 = __p;
  v12 = v47;
  if (__p == v47)
  {
    v14 = 0.0;
    if (__p)
    {
LABEL_11:
      v47 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v13 = *(a1 + 104) + -10.0;
    v14 = 0.0;
    do
    {
      v15 = v11[1];
      v16 = (*(*a1 + 112))(a1, *v11, v15);
      if (v16 == *(a1 + 88))
      {
        v14 = v13 + v14;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v16))
        {
          v17 = (*(a1 + 108) * v15) + -0.1;
        }

        else
        {
          v17 = (*(**(a1 + 8) + 96))(*(a1 + 8), v16);
        }

        v14 = v17 + v14;
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  strcpy(__s, " ");
  v18 = strlen(__s);
  sub_1AE5F15B4(&v44, a4, a5, __s, v18, 0);
  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_1AE5F99E4(&v41, v44, v45, (v45 - v44) >> 4);
  v19 = v41;
  v20 = v42;
  if (v41 != v42)
  {
    v21 = *(a1 + 104) + -10.0;
    v22 = 0.0;
    do
    {
      v23 = v19[1];
      v24 = (*(*a1 + 112))(a1, *v19, v23);
      if (v24 == *(a1 + 88))
      {
        v22 = v21 + v22;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v24))
        {
          v25 = (*(a1 + 108) * v23) + -0.1;
        }

        else
        {
          v25 = (*(**(a1 + 8) + 96))(*(a1 + 8), v24);
        }

        v22 = v25 + v22;
      }

      v19 += 2;
    }

    while (v19 != v20);
    v19 = v41;
    if (!v41)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v22 = 0.0;
  if (v41)
  {
LABEL_24:
    v42 = v19;
    operator delete(v19);
  }

LABEL_25:
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v26 = vabds_f32(v14, v22);
  if (v26 > 0.0000001 && sub_1AE606A34() <= 1)
  {
    LOBYTE(v44) = 0;
    v27 = sub_1AE5DB608(MEMORY[0x1E69E5300], "unigram_model.cc", 16);
    v28 = sub_1AE5DB608(v27, "(", 1);
    v29 = MEMORY[0x1B2706100](v28, 840);
    v30 = sub_1AE5DB608(v29, ") ", 2);
    v31 = sub_1AE5DB608(v30, "LOG(", 4);
    v32 = sub_1AE5DB608(v31, "WARNING", 7);
    v33 = sub_1AE5DB608(v32, ") ", 2);
    v34 = sub_1AE5DB608(v33, "Two sentence piece sequences are not equivalent! Left: ", 55);
    v35 = sub_1AE5DB608(v34, a2, a3);
    sub_1AE5DB608(v35, ", Score: ", 9);
    v36 = std::ostream::operator<<();
    v37 = sub_1AE5DB608(v36, ". Right: ", 9);
    v38 = sub_1AE5DB608(v37, a4, a5);
    sub_1AE5DB608(v38, ", Score: ", 9);
    v39 = std::ostream::operator<<();
    sub_1AE5DB608(v39, ".", 1);
    sub_1AE5D9794(&v44);
  }

  return v26 <= 0.0000001;
}

void sub_1AE5F9718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F9774(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_1AE5D8440(a1, &v13);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = *(a1 + 104);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 108);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1AE5F98B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5F992C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F99A8(result, a4);
  }

  return result;
}

void sub_1AE5F998C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F99A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1AE5DA258(a1, a2);
  }

  sub_1AE5CBB70();
}

uint64_t sub_1AE5F99E4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F198C(result, a4);
  }

  return result;
}

void sub_1AE5F9A44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5F9A60(void *a1)
{
  sub_1AE5F9A98(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE5F9A98(void *a1)
{
  *a1 = &unk_1F2429278;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B27063D0](*v2, 0x1070C8005A2B047);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1AE5F9B2C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AE5CBB70();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      sub_1AE5F9C98(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1AE5F3458(v18);
  }
}

void sub_1AE5F9C98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AE5CB09C();
}

void sub_1AE5F9CF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1AE5CBB70();
    }

    v9 = v3 - v6;
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

      sub_1AE5CB09C();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_1AE5F9DF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1AE5F9E78(result, a4);
  }

  return result;
}

void sub_1AE5F9E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1AE5DB444(&a9);
  _Unwind_Resume(a1);
}

void sub_1AE5F9E78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1AE5F9EB4(a1, a2);
  }

  sub_1AE5CBB70();
}

void sub_1AE5F9EB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE5F9EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_1AE5F992C(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1AE5F9FB8(v8);
  return v4;
}

uint64_t sub_1AE5F9FB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1AE5DB3F4(a1);
  }

  return a1;
}

void sub_1AE5F9FF0(void *a1)
{
  sub_1AE5F67D0(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE5FA028(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 16);
    if (*(*v4 + 16) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 16) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t sub_1AE5FA084(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_1AE5CBB70();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21[4] = result;
    if (v10)
    {
      sub_1AE5F9EB4(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = *(result + 8) - *result;
    v18 = v13 - v17;
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return sub_1AE5F375C(v21);
  }

  return result;
}

void *sub_1AE5FA1AC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5F3C6C(result, a2);
  }

  return result;
}

void sub_1AE5FA268(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_1AE5FA284(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_1AE5DB298(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_1AE5FA2F8(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_1AE5DB188(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1AE5DB298(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AE5F375C(&v17);
  return v11;
}

void sub_1AE5FA40C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F375C(va);
  _Unwind_Resume(a1);
}

char *sub_1AE5FA420(uint64_t a1, uint64_t *a2, double *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    sub_1AE5DB188(a1, v9);
  }

  v10 = 32 * v3;
  v18 = 0;
  v19 = v10;
  v20 = v10;
  v21 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1AE5DB298(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v11 = *a3;
  *(v10 + 24) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = &v19[-v13];
  memcpy(&v19[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_1AE5F375C(&v18);
  return v12;
}

void sub_1AE5FA538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F375C(va);
  _Unwind_Resume(a1);
}

void *sub_1AE5FA54C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1AE5FA5F0(result, a2);
  }

  return result;
}

void sub_1AE5FA5F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1AE5F9C98(a1, a2);
  }

  sub_1AE5CBB70();
}

void *sub_1AE5FA63C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1AE5F99A8(v6, v10);
    }

    sub_1AE5CBB70();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 sub_1AE5FA768(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

char *sub_1AE5FA7BC(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_1AE5DB188(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_1AE5DB298(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AE5F375C(&v17);
  return v11;
}

void sub_1AE5FA8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5F375C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5FA8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE5F7144(a1);
  *v4 = &unk_1F24292D8;
  v4[1] = a2 + 16;
  sub_1AE5D7658(v4);
  return a1;
}

void sub_1AE5FA950(void *a1)
{
  sub_1AE5D64F8(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE5FA988(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v21);
  if (v21)
  {
    sub_1AE6089C0(&v21);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sub_1AE6089C0(&v21);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  do
  {
    v8 = sub_1AE5E0894(a1[2], a2, a3, 0);
    v9 = (*(*a1 + 112))(a1, a2, v8);
    v11 = *(a4 + 8);
    v10 = *(a4 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_1AE5DB364(a4, v16);
      }

      v17 = 24 * v13;
      *v17 = a2;
      *(v17 + 8) = v8;
      *(v17 + 16) = v9;
      v12 = 24 * v13 + 24;
      v18 = *(a4 + 8) - *a4;
      v19 = v17 - v18;
      memcpy((v17 - v18), *a4, v18);
      v20 = *a4;
      *a4 = v19;
      *(a4 + 8) = v12;
      *(a4 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = a2;
      *(v11 + 8) = v8;
      v12 = v11 + 24;
      *(v11 + 16) = v9;
    }

    *(a4 + 8) = v12;
    a2 += v8;
    a3 -= v8;
  }

  while (a3);
}

void sub_1AE5FAB64(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE5FAB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE5F7144(a1);
  *v4 = &unk_1F24293F0;
  v4[1] = a2 + 16;
  sub_1AE5D7658(v4);
  return a1;
}

void sub_1AE5FABF4(void *a1)
{
  sub_1AE5D64F8(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE5FAC2C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v22);
  if (v22)
  {
    sub_1AE6089C0(&v22);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sub_1AE6089C0(&v22);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_1AE5D8780(a2, a3, 0, 0, &v22);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    do
    {
      v10 = (*(*a1 + 112))(a1, *v8, v8[1]);
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1AE5CBB70();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_1AE5DB364(a4, v17);
        }

        v18 = 24 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        v13 = 24 * v14 + 24;
        v19 = *(a4 + 8) - *a4;
        v20 = v18 - v19;
        memcpy((v18 - v19), *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = *v8;
        *(v12 + 16) = v10;
        v13 = v12 + 24;
      }

      *(a4 + 8) = v13;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v22;
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

void sub_1AE5FAE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE5FAE54()
{
  sub_1AE60AAC0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_1AE5FCA80(&unk_1EB5E1280, 0);

  sub_1AE616E8C(sub_1AE616350, &unk_1EB5E1280);
}

void sub_1AE5FAEC4()
{
  sub_1AE60AAC0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_1AE5FBF90(&unk_1ED9AC4D8, 0);

  sub_1AE616E8C(sub_1AE616350, &unk_1ED9AC4D8);
}

void sub_1AE5FAF34()
{
  sub_1AE60AAC0(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_1AE5FAFA4(&unk_1ED9AC488, 0);

  sub_1AE616E8C(sub_1AE616350, &unk_1ED9AC488);
}

uint64_t sub_1AE5FAFA4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2429508;
  *(a1 + 8) = a2;
  sub_1AE60B444(a1 + 16, a2);
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_1ED9AC408, memory_order_acquire))
  {
    sub_1AE6165C0(dword_1ED9AC408);
  }

  *(a1 + 48) = &qword_1EB5E0FA8;
  *(a1 + 56) = &qword_1EB5E0FA8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_1AE5FB034(uint64_t a1)
{
  sub_1AE5FB070(a1);
  sub_1AE5FB190((a1 + 8));
  sub_1AE60B510(a1 + 16);
  return a1;
}

uint64_t *sub_1AE5FB070(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AE60AE24(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 140);
    v3 = sub_1AE60AE3C(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_1AE60AF78(&v11, &v3->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v12);
  }

LABEL_4:
  result = (a1 + 48);
  if (*(a1 + 48) != &qword_1EB5E0FA8)
  {
    v5 = sub_1AE5FD4D8(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x1B2706400](v6, 0x1012C40EC159624);
  }

  v8 = *(a1 + 56);
  v7 = (a1 + 56);
  if (v8 != &qword_1EB5E0FA8)
  {
    v9 = sub_1AE5FD4D8(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x1B2706400](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_1AE5FB178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5FB190(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      JUMPOUT(0x1B2706400);
    }
  }

  return result;
}

void sub_1AE5FB20C(uint64_t a1)
{
  sub_1AE5FB034(a1);

  JUMPOUT(0x1B2706400);
}

unsigned __int8 *sub_1AE5FB244(uint64_t a1)
{
  result = sub_1AE60EEC4((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_11:
  if ((v3 & 0x1C) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 40) = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 31) < 0)
    {
      **(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AE5FB314(uint64_t a1, char *a2, int32x2_t *a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_1AE5FD5AC(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v36 + 1;
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v26 = sub_1AE617CC0(v36, v9 - 128);
      v36 = v26;
      if (!v26)
      {
        goto LABEL_62;
      }

      v7 = v26;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 40) |= 1u;
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (a1 + 48);
LABEL_39:
            v23 = sub_1AE609BE8(v19, v18);
            v24 = sub_1AE617D04(v23, v36, a3);
LABEL_40:
            v36 = v24;
            if (!v24)
            {
              goto LABEL_62;
            }

            goto LABEL_41;
          }

LABEL_43:
          if (v8)
          {
            v25 = (v8 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x640)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v29 = (v28 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v29 = sub_1AE5FD6EC((a1 + 8));
              v7 = v36;
            }

            v24 = sub_1AE6181C0(v8, v29, v7, a3);
          }

          else
          {
            v24 = sub_1AE6103F8((a1 + 16), v8, v7, &unk_1ED9AC488, (a1 + 8), a3);
          }

          goto LABEL_40;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v15 = v7 + 1;
        v16 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = v16 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v15 = v7 + 2;
LABEL_25:
          v36 = v15;
          *(a1 + 64) = v16;
          goto LABEL_41;
        }

        v34 = sub_1AE617C0C(v7, v16);
        v36 = v34;
        *(a1 + 64) = v35;
        if (!v34)
        {
LABEL_62:
          v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 40) |= 2u;
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (a1 + 56);
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_43;
          }

          v5 |= 8u;
          v20 = v7 + 1;
          v21 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v20;
          v21 = v21 + (v22 << 7) - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
LABEL_34:
            v36 = v20;
            *(a1 + 68) = v21;
            goto LABEL_41;
          }

          v30 = sub_1AE617C0C(v7, v21);
          v36 = v30;
          *(a1 + 68) = v31;
          if (!v30)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_43;
          }

          v5 |= 0x10u;
          v11 = v7 + 1;
          v12 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          v13 = *v11;
          v12 = v12 + (v13 << 7) - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v11 = v7 + 2;
LABEL_15:
            v36 = v11;
            *(a1 + 72) = v12;
            goto LABEL_41;
          }

          v32 = sub_1AE617C0C(v7, v12);
          v36 = v32;
          *(a1 + 72) = v33;
          if (!v32)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_41:
      if (sub_1AE5FD5AC(a3, &v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v36 + 2;
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v36;
}

char *sub_1AE5FB624(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_1AE60A398(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v4 = sub_1AE5FB8D8(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  v4 = sub_1AE5FB8D8(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_1AE60A398(a3, v4);
  }

  v15 = *(a1 + 68);
  *v4 = 32;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v4;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = sub_1AE60A398(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_39:
  v19 = sub_1AE6111AC(a1 + 16, 200, 0x20000000, v4, a3);
  v20 = v19;
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v20;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v19) >= v24)
  {
    v26 = v24;
    memcpy(v19, v25, v24);
    v20 += v26;
    return v20;
  }

  return sub_1AE60A4B0(a3, v25, v24, v19);
}

char *sub_1AE5FB8D8(unint64_t *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if ((v5 - a4 + 14) >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return sub_1AE60A6F8(a1, a2, a3, a4);
}

uint64_t sub_1AE5FBA04(uint64_t a1)
{
  result = sub_1AE613DCC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 8) == 0)
      {
LABEL_6:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1AE5FBB70(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_1F242A040, &unk_1F2429678, 0))
  {
    sub_1AE5FDEF0();
  }

  sub_1AE5FBBF8(a1, lpsrc);
}

void sub_1AE5FBBF8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 375);
    v4 = sub_1AE60AE3C(v19, "CHECK failed: (&from) != (this): ");
    sub_1AE60AF78(&v18, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
  }

  sub_1AE797318(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AE5FD6EC((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 0x1F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1AE609BB0((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_1AE609BB0((a1 + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 64) = *(a2 + 64);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
LABEL_20:
        *(a1 + 40) |= v13;
        return;
      }

LABEL_19:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_20;
    }

LABEL_29:
    *(a1 + 68) = *(a2 + 68);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }
}

void sub_1AE5FBD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE5FBD9C(uint64_t a1, uint64_t a2)
{
  sub_1AE60FE64(a1 + 16, a2 + 16);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = sub_1AE5FD6EC((a2 + 8));
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = sub_1AE5FD6EC((a1 + 8));
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v8;
    goto LABEL_9;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
  v11 = *(v10 + 16);
  v12 = *v10;
  v13 = *(v9 + 16);
  *v10 = *v9;
  *(v10 + 16) = v13;
  *v9 = v12;
  *(v9 + 16) = v11;
  v5 = *(a1 + 8);
  LODWORD(v11) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (a1 + 48);
  if (*(a1 + 48) != &qword_1EB5E0FA8 || *(a2 + 48) != &qword_1EB5E0FA8)
  {
    v16 = sub_1AE609BE8(result, v14);
    result = sub_1AE609BE8((a2 + 48), v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 56) != &qword_1EB5E0FA8 || *(a2 + 56) != &qword_1EB5E0FA8)
  {
    v20 = sub_1AE609BE8((a1 + 56), v5);
    result = sub_1AE609BE8((a2 + 56), v5);
    v21 = v20[2];
    v22 = *v20;
    v23 = result[2];
    *v20 = *result;
    v20[2] = v23;
    *result = v22;
    result[2] = v21;
  }

  v24 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v24;
  LODWORD(v24) = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v24;
  return result;
}

uint64_t sub_1AE5FBF90(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2429588;
  *(a1 + 8) = a2;
  sub_1AE60B444(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_1ED9AC3E8, memory_order_acquire))
  {
    sub_1AE6165C0(dword_1ED9AC3E8);
  }

  *(a1 + 72) = &qword_1EB5E0FA8;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1AE5FC020(_Unwind_Exception *a1)
{
  sub_1AE5FD928(v2);
  sub_1AE60B510(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5FC040(uint64_t a1)
{
  sub_1AE5FC084(a1);
  sub_1AE5FB190((a1 + 8));
  sub_1AE5FD928((a1 + 48));
  sub_1AE60B510(a1 + 16);
  return a1;
}

uint64_t sub_1AE5FC084(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AE60AE24(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 486);
    v3 = sub_1AE60AE3C(v9, "CHECK failed: GetArena() == nullptr: ");
    sub_1AE60AF78(&v8, &v3->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v9);
  }

LABEL_4:
  v5 = *(v1 + 72);
  v4 = (v1 + 72);
  if (v5 != &qword_1EB5E0FA8)
  {
    v6 = sub_1AE5FD4D8(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    return MEMORY[0x1B2706400](v7, 0x1012C40EC159624);
  }

  return result;
}

void sub_1AE5FC14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE5FC168(uint64_t a1)
{
  sub_1AE5FC040(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE5FC1A0()
{
  if (atomic_load_explicit(dword_1ED9AC3E8, memory_order_acquire))
  {
    sub_1AE6165C0(dword_1ED9AC3E8);
  }

  return &unk_1ED9AC4D8;
}

unsigned __int8 *sub_1AE5FC1E0(uint64_t a1)
{
  sub_1AE60EEC4((a1 + 16));
  result = sub_1AE5FD7C8((a1 + 48));
  if (*(a1 + 40))
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AE5FC274(uint64_t a1, char *a2, int32x2_t *a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_1AE5FD5AC(a3, &v28, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v28 + 1;
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v24 = sub_1AE617CC0(v28, v9 - 128);
      v28 = v24;
      if (!v24)
      {
        goto LABEL_48;
      }

      v7 = v24;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v5 |= 2u;
          *(a1 + 80) = *v7;
          v28 = v7 + 4;
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = v7 - 1;
          while (1)
          {
            v15 = v14 + 1;
            v28 = v14 + 1;
            v16 = *(a1 + 64);
            if (!v16)
            {
              break;
            }

            v21 = *(a1 + 56);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(a1 + 56) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(a1 + 60))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = sub_1AE5FD218(*(a1 + 48));
            v19 = *(a1 + 56);
            v20 = *(a1 + 64) + 8 * v19;
            *(a1 + 56) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v28;
LABEL_27:
            v14 = sub_1AE795D30(a3, v18, v15);
            v28 = v14;
            if (!v14)
            {
              goto LABEL_48;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_44;
            }
          }

          v17 = *(a1 + 60);
LABEL_23:
          sub_1AE61CF88(a1 + 48, v17 + 1);
          v16 = *(a1 + 64);
          v17 = *v16;
          goto LABEL_24;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          a3[10].i32[0] = v8 - 1;
          goto LABEL_2;
        }

        if (v8 < 0x640)
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v27 = (v26 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v27 = sub_1AE5FD6EC((a1 + 8));
            v7 = v28;
          }

          v13 = sub_1AE6181C0(v8, v27, v7, a3);
        }

        else
        {
          v13 = sub_1AE6103F8((a1 + 16), v8, v7, &unk_1ED9AC4D8, (a1 + 8), a3);
        }

        goto LABEL_43;
      }

      if (v10 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 1u;
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_1AE609BE8((a1 + 72), v22);
      v13 = sub_1AE617D04(v23, v28, a3);
LABEL_43:
      v28 = v13;
      if (!v13)
      {
LABEL_48:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_1AE5FD5AC(a3, &v28, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v28 + 2;
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v28;
}

char *sub_1AE5FC50C(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_1AE5FB8D8(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_1AE60A398(a3, v4);
      }

      v9 = sub_1AE5F10F4(a1 + 48, i);
      *v4 = 18;
      v10 = *(v9 + 44);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = sub_1AE5FB624(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_1AE60A398(a3, v4);
    }

    v15 = *(a1 + 80);
    *v4 = 29;
    *(v4 + 1) = v15;
    v4 += 5;
  }

  v16 = sub_1AE6111AC(a1 + 16, 200, 0x20000000, v4, a3);
  v17 = v16;
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v17;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v16) >= v21)
  {
    v23 = v21;
    memcpy(v16, v22, v21);
    v17 += v23;
    return v17;
  }

  return sub_1AE60A4B0(a3, v22, v21, v16);
}

uint64_t sub_1AE5FC6F8(uint64_t a1)
{
  v2 = sub_1AE613DCC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_1AE5FBA04(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += 5;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v4 += v17;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_1AE5FC7FC(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_1F242A040, &unk_1F2429690, 0))
  {
    sub_1AE5FDEF0();
  }

  sub_1AE5FC884(a1, lpsrc);
}

void sub_1AE5FC884(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AE60AE24(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 674);
    v4 = sub_1AE60AE3C(v17, "CHECK failed: (&from) != (this): ");
    sub_1AE60AF78(&v16, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v17);
  }

  sub_1AE797318(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AE5FD6EC((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_1AE5FDAD8(a1 + 48, a2 + 48);
  v13 = *(a2 + 40);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1AE609BB0((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v13;
  }
}

void sub_1AE5FC9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5FC9CC(uint64_t a1)
{
  result = sub_1AE610054(a1 + 16);
  if (result)
  {

    return sub_1AE5FCA18(a1 + 48);
  }

  return result;
}

BOOL sub_1AE5FCA18(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_1AE5F10F4(a1, v2);
  }

  while ((sub_1AE610054(v5 + 16) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1AE5FCA80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2429608;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_1EE7BD138, memory_order_acquire))
  {
    sub_1AE6165C0(dword_1EE7BD138);
  }

  return a1;
}

uint64_t sub_1AE5FCB08(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_1AE60AE24(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 755);
    v4 = sub_1AE60AE3C(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_1AE60AF78(&v6, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v7);
  }

LABEL_4:
  sub_1AE5FB190(v3);
  sub_1AE5FDC84((a1 + 16));
  return a1;
}

void sub_1AE5FCBA0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  sub_1AE6090F0(a1);
}

void sub_1AE5FCBC4(uint64_t a1)
{
  sub_1AE5FCB08(a1);

  JUMPOUT(0x1B2706400);
}

unsigned __int8 *sub_1AE5FCBFC(uint64_t a1)
{
  result = sub_1AE5FD878((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AE5FCC50(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_1AE5FD5AC(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v22 + 1;
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_1AE617CC0(v22, v7 - 128);
      v22 = v19;
      if (!v19)
      {
        return 0;
      }

      v5 = v19;
      v6 = v20;
LABEL_6:
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = v11 + 1;
          v22 = v11 + 1;
          v13 = *(a1 + 32);
          if (!v13)
          {
            break;
          }

          v18 = *(a1 + 24);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(a1 + 24) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_23;
          }

          if (v14 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v14 + 1;
          v15 = sub_1AE5FD2E8(*(a1 + 16));
          v16 = *(a1 + 24);
          v17 = *(a1 + 32) + 8 * v16;
          *(a1 + 24) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v22;
LABEL_23:
          v11 = sub_1AE795DF8(a3, v15, v12);
          v22 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(a1 + 28);
LABEL_19:
        sub_1AE61CF88(a1 + 16, v14 + 1);
        v13 = *(a1 + 32);
        v14 = *v13;
        goto LABEL_20;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v22;
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v10 = sub_1AE5FD6EC((a1 + 8));
        v5 = v22;
      }

      v22 = sub_1AE6181C0(v6, v10, v5, a3);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1AE5FD5AC(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v5 = v22 + 2;
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

char *sub_1AE5FCE20(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_1AE60A398(a3, __dst);
      }

      v8 = sub_1AE5F1210(a1 + 16, i);
      *__dst = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = __dst + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          __dst[2] = v11;
          v10 = __dst + 3;
        }
      }

      else
      {
        __dst[1] = v9;
        v10 = __dst + 2;
      }

      __dst = sub_1AE5FC50C(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1AE60A4B0(a3, v18, v17, __dst);
}

uint64_t sub_1AE5FCF88(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1AE5FC6F8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

void sub_1AE5FD02C(uint64_t a1, void *lpsrc)
{
  if (!__dynamic_cast(lpsrc, &unk_1F242A040, &unk_1F24296A8, 0))
  {
    sub_1AE5FDEF0();
  }

  sub_1AE5FD0B4(a1, lpsrc);
}

void sub_1AE5FD0B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AE60AE24(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 877);
    v4 = sub_1AE60AE3C(v14, "CHECK failed: (&from) != (this): ");
    sub_1AE60AF78(&v13, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v14);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AE5FD6EC((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_1AE5FDD44(a1 + 16, a2 + 16);
}

void sub_1AE5FD180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AE5FD1A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_1AE5F1210(a1, v2);
    if (!sub_1AE610054(v5 + 16))
    {
      break;
    }
  }

  while (sub_1AE5FCA18(v5 + 48));
  return v3 < 1;
}

uint64_t sub_1AE5FD218(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F2429678, 80);
  }

  v2 = sub_1AE609720(a1, 80);
  sub_1AE5FAFA4(v2, a1);
  return v2;
}

uint64_t sub_1AE5FD2E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F2429690, 88);
  }

  v2 = sub_1AE609720(a1, 88);
  sub_1AE5FBF90(v2, a1);
  return v2;
}

uint64_t sub_1AE5FD3B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F24296A8, 48);
  }

  v2 = sub_1AE609720(a1, 48);
  sub_1AE5FCA80(v2, a1);
  return v2;
}

uint64_t sub_1AE5FD4D8(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_1AE60AE24(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = sub_1AE60AE3C(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    sub_1AE60AF78(&v5, &v3->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v6);
    result = *a1;
  }

  if (!result)
  {
    sub_1AE60AE24(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = sub_1AE60AE3C(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    sub_1AE60AF78(&v5, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v6);
    return *a1;
  }

  return result;
}

void sub_1AE5FD58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE5FD5AC(uint64_t a1, char **a2, int a3)
{
  v6 = *a2;
  if (!*a2)
  {
    sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 209);
    v7 = sub_1AE60AE3C(v13, "CHECK failed: *ptr: ");
    sub_1AE60AF78(&v12, &v7->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v13);
    v6 = *a2;
  }

  if (v6 >= *a1)
  {
    v10 = v6 - *(a1 + 8);
    if (v10 >= 17)
    {
      sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 212);
      v11 = sub_1AE60AE3C(v13, "CHECK failed: (overrun) <= (kSlopBytes): ");
      sub_1AE60AF78(&v12, &v11->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v13);
    }

    if (*(a1 + 28) == v10)
    {
      if (v10 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v8 = 1;
    }

    else
    {
      *a2 = sub_1AE61777C(a1, v10, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1AE5FD6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1AE5FD6EC(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 24))
  {
    (*(**(*(v2 + 32) + 32) + 40))(*(*(v2 + 32) + 32), &unk_1F24296D0, 32);
  }

  v3 = sub_1AE609424(v2, 0x20uLL, sub_1AE5FD7B4);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 8;
}