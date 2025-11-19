void sub_255A1BE10(uint64_t a1)
{
  *a1 = &unk_2867BEFC8;
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      MEMORY[0x259C46AE0](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x259C46B00);
}

void *sub_255A1BE9C(void *a1, uint64_t a2)
{
  v4 = a1[8];
  result = (*(*a1 + 80))(a1);
  v6 = result + a2 + a1[4] - a1[2];
  if (*(v4 + 16) < v6)
  {

    return sub_255A1983C(v4, (v4 + 24), v6, 1);
  }

  return result;
}

void sub_255A1BF44(void *a1, uint64_t a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v40 = v42;
    v41 = xmmword_255A1ED10;
    v31 = 0;
    v35 = 0;
    v36 = 0;
    v38 = &v40;
    v37 = 0;
    v30 = &unk_2867BF178;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    (*(**a1 + 24))(*a1, &v30);
    v4 = a1[2];
    v5 = v41;
    v6 = v4 - v41;
    if (v4 > v41)
    {
      v7 = *(a1 + 2);
      if (!v7)
      {
        sub_255A1AEE4(a2, v40, v41);
        if (v6)
        {
          v16 = 0;
          do
          {
            v17 = *(a1 + 24);
            while (1)
            {
              v18 = *(a2 + 32);
              if (v18 < *(a2 + 24))
              {
                goto LABEL_29;
              }

              v19 = *(a2 + 16);
              if (v19)
              {
                *(a2 + 32) = v19;
                sub_255A1AD7C(a2);
                v18 = *(a2 + 32);
LABEL_29:
                *(a2 + 32) = v18 + 1;
                *v18 = v17;
                goto LABEL_30;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_255A1A964(a2);
            }

            v39 = v17;
            sub_255A1AD7C(a2);
LABEL_30:
            ++v16;
          }

          while (v16 != v6);
        }

        goto LABEL_58;
      }

      if (v7 == 1)
      {
        v8 = v6 >> 1;
        if ((v6 >> 1))
        {
          v9 = 0;
          do
          {
            v10 = *(a1 + 24);
            while (1)
            {
              v11 = *(a2 + 32);
              if (v11 < *(a2 + 24))
              {
                goto LABEL_13;
              }

              v12 = *(a2 + 16);
              if (v12)
              {
                *(a2 + 32) = v12;
                sub_255A1AD7C(a2);
                v11 = *(a2 + 32);
LABEL_13:
                *(a2 + 32) = v11 + 1;
                *v11 = v10;
                goto LABEL_14;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_255A1A964(a2);
            }

            v39 = v10;
            sub_255A1AD7C(a2);
LABEL_14:
            ++v9;
          }

          while (v9 != v8);
          v5 = v41;
        }

        sub_255A1AEE4(a2, v40, v5);
        v24 = v6 - v8;
        if (v24)
        {
          for (i = 0; i != v24; ++i)
          {
            v26 = *(a1 + 24);
            while (1)
            {
              v27 = *(a2 + 32);
              if (v27 < *(a2 + 24))
              {
                goto LABEL_53;
              }

              v28 = *(a2 + 16);
              if (v28)
              {
                *(a2 + 32) = v28;
                sub_255A1AD7C(a2);
                v27 = *(a2 + 32);
LABEL_53:
                *(a2 + 32) = v27 + 1;
                *v27 = v26;
                goto LABEL_54;
              }

              if (!*(a2 + 56))
              {
                break;
              }

              sub_255A1A964(a2);
            }

            v39 = v26;
            sub_255A1AD7C(a2);
LABEL_54:
            ;
          }
        }

        goto LABEL_58;
      }

      if (v6)
      {
        v20 = 0;
        do
        {
          v21 = *(a1 + 24);
          while (1)
          {
            v22 = *(a2 + 32);
            if (v22 < *(a2 + 24))
            {
              goto LABEL_41;
            }

            v23 = *(a2 + 16);
            if (v23)
            {
              *(a2 + 32) = v23;
              sub_255A1AD7C(a2);
              v22 = *(a2 + 32);
LABEL_41:
              *(a2 + 32) = v22 + 1;
              *v22 = v21;
              goto LABEL_42;
            }

            if (!*(a2 + 56))
            {
              break;
            }

            sub_255A1A964(a2);
          }

          v39 = v21;
          sub_255A1AD7C(a2);
LABEL_42:
          ++v20;
        }

        while (v20 != v6);
        v5 = v41;
      }
    }

    sub_255A1AEE4(a2, v40, v5);
LABEL_58:
    v30 = &unk_2867BEFC8;
    if (v37 == 1 && v32)
    {
      MEMORY[0x259C46AE0](v32, 0x1000C8077774924);
    }

    if (v40 != v42)
    {
      free(v40);
    }

    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *a1;
  v14 = *(**a1 + 24);
  v15 = *MEMORY[0x277D85DE8];

  v14();
}

void sub_255A1C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  sub_255A1B334(&a9);
  if (a19 != v19)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_255A1C3A0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *(result + 33);
      if (v7 == 1)
      {
        v8 = result;
        result = *result;
        v7 = v8[1];
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = result;
      *(a3 + 8) = v7;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

uint64_t *sub_255A1C46C(uint64_t **a1)
{
  result = *a1;
  if (result)
  {
    v2 = sub_255A115A0(result);
    return (*(v3 + 8))(v2);
  }

  return result;
}

uint64_t *sub_255A1C4AC(uint64_t *a1)
{
  result = sub_255A115AC(a1);
  if (result)
  {
    v5 = sub_255A115A0(result);
    result = (*(v6 + 8))(v5);
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_255A1C500(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = sub_255A115A0(v4);
    (*(v6 + 8))(v5);
  }

  return MEMORY[0x259C46B00](a2, 0xA1C4030951706);
}

uint64_t *sub_255A1C598(uint64_t **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    v3 = sub_255A115A0(result);
    return (*(v4 + 8))(v3);
  }

  return result;
}

uint64_t *sub_255A1C5E0(uint64_t *a1)
{
  result = sub_255A115AC(a1);
  if (result)
  {
    v5 = sub_255A115A0(result);
    result = (*(v6 + 8))(v5);
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

void sub_255A1C634(uint64_t a1, _BYTE *a2, uint64_t **a3)
{
  if (*a2)
  {
    v3 = *a3;
    *a3 = 0;
    if (v3)
    {
      v4 = sub_255A115A0(v3);
      (*(v5 + 8))(v4);
    }
  }
}

void sub_255A1C680()
{
  if (__cxa_guard_acquire(qword_27F7DAF68))
  {
    dword_27F7DAF60 = getpagesize();

    __cxa_guard_release(qword_27F7DAF68);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}