void sub_1AE733B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, const void *a13, const void *a14)
{
  __cxa_free_exception(v14);
  sub_1AE66A234(&a11);
  sub_1AE66A2A0(&a12);
  sub_1AE63109C(&a13);
  sub_1AE63109C(&a14);
  _Unwind_Resume(a1);
}

dispatch_queue_t sub_1AE733CA4()
{
  result = dispatch_queue_create("com.apple.LanguageModeling.KeyboardCollator", 0);
  qword_1EB5E0EF8 = result;
  return result;
}

uint64_t sub_1AE733CD0(const char *a1)
{
  if (!a1 || !strcmp(a1, "root"))
  {
    v2 = 1;
  }

  else
  {
    LODWORD(v5[0]) = 0;
    if (*a1 - 97 < 0x1A)
    {
      LOBYTE(v5[0]) = *a1;
      if (*(a1 + 1) - 97 <= 0x19)
      {
        BYTE1(v5[0]) = a1[1];
        if (*(a1 + 2) - 97 <= 0x19)
        {
          BYTE2(v5[0]) = a1[2];
          if (*(a1 + 3) - 97 <= 0x19)
          {
            BYTE3(v5[0]) = a1[3];
          }
        }
      }
    }

    if (LOWORD(v5[0]) ^ 0x6164 | BYTE2(v5[0]) && LOWORD(v5[0]) ^ 0x626E | BYTE2(v5[0]) && LOWORD(v5[0]) ^ 0x6966 | BYTE2(v5[0]) && LOWORD(v5[0]) ^ 0x7673 | BYTE2(v5[0]))
    {
      if (LOWORD(v5[0]) ^ 0x7363 | BYTE2(v5[0]) && LOWORD(v5[0]) ^ 0x6B73 | BYTE2(v5[0]))
      {
        v2 = 4;
        if (LOWORD(v5[0]) ^ 0x6C65 | BYTE2(v5[0]) && LODWORD(v5[0]) != 7823720 && LOWORD(v5[0]) ^ 0x7266 | BYTE2(v5[0]))
        {
          if (LOWORD(v5[0]) ^ 0x7274 | BYTE2(v5[0]))
          {
            if (LOWORD(v5[0]) ^ 0x6174 | BYTE2(v5[0]))
            {
              v2 = 1;
            }

            else
            {
              v2 = 5;
            }
          }

          else
          {
            v2 = 2;
          }
        }
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 3;
    }
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (qword_1EB5E0F00 != -1)
  {
    dispatch_once(&qword_1EB5E0F00, &unk_1F2430080);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = sub_1AE733378;
  v5[3] = &unk_1E7A2F4D0;
  v5[4] = &v7;
  v6 = v2;
  dispatch_sync(qword_1EB5E0EF8, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t sub_1AE733F44(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE733FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM22LexiconStringConverter22getDefaultConverterFcnEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM22LexiconStringConverter22getDefaultConverterFcnEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM22LexiconStringConverter22getDefaultConverterFcnEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM22LexiconStringConverter22getDefaultConverterFcnEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

CFTypeRef sub_1AE73403C@<X0>(const void **a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = 0;
  if (v2)
  {
    result = CFRetain(v2);
    *a2 = v2;
  }

  return result;
}

uint64_t sub_1AE73410C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

const __CFString *sub_1AE734178@<X0>(const __CFString **a1@<X1>, const __CFString **a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  result = sub_1AE755410(v3);
  if (result)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AE7341C0(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_1AE73423C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1AE7342B8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2430210;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1AE73435C(void *a1)
{
  *a1 = &unk_1F2430210;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE734404(void *result)
{
  *result = &unk_1F2430210;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_1AE734498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM22LexiconStringConverter21hangulStringConverterEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE734504(uint64_t a1@<X0>, const __CFString **a2@<X1>, CFMutableStringRef *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a3 = 0;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], Length);
    if (Mutable)
    {
      *(v3 + 24) = 0;
      *(v3 + 2) = 0;
      *(v3 + 8) = 0;
      *(v3 + 28) = 0;
      v157 = (v3 + 24);
      v7 = *(v3 + 16);
      if (v7)
      {
        v8.length = CFStringGetLength(v7);
        if (v8.length >= 1)
        {
          v8.location = 0;
          CFStringDelete(*(v3 + 16), v8);
        }
      }

      if (Length >= 1)
      {
        for (i = 0; i != Length; ++i)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v4, i);
          chars = CharacterAtIndex;
          if (CharacterAtIndex - 12592 > 0x5E)
          {
            v12 = 0;
            if (CharacterAtIndex - 4352 >= 0x5A && (CharacterAtIndex - 4449) >= 0x42u && (CharacterAtIndex - 4520) >= 0x52u)
            {
              *(v3 + 2) = 0;
              *(v3 + 8) = 0;
              *(v3 + 24) = 0;
              *(v3 + 28) = 0;
              v17 = *(v3 + 16);
              if (v17)
              {
                v18.length = CFStringGetLength(v17);
                if (v18.length >= 1)
                {
                  v18.location = 0;
                  CFStringDelete(*(v3 + 16), v18);
                }
              }

              CFStringAppendCharacters(Mutable, &chars, 1);
              continue;
            }
          }

          else
          {
            v11 = CharacterAtIndex <= 0x3186 && CharacterAtIndex - 12623 >= 0x15;
            v12 = !v11;
          }

          v13 = *(v3 + 8);
          if (v13 <= 2)
          {
            switch(v13)
            {
              case 0:
                if (v12)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = CharacterAtIndex;
                }

                if (v12)
                {
                  v35 = CharacterAtIndex;
                }

                else
                {
                  v35 = 0;
                }

                if (v12)
                {
                  v36 = 1;
                }

                else
                {
                  v36 = 2;
                }

                if ((v34 - 12593) <= 0x5Du)
                {
                  LOWORD(v34) = word_1AE79D3AC[v34 - 12593];
                }

                *v157 = v34;
                if (v35 - 12593 <= 0x5D)
                {
                  LOWORD(v35) = word_1AE79D088[v35 - 12593];
                }

                v37 = 0;
                v38 = 0;
                LODWORD(v14) = 0;
                *(v3 + 26) = v35;
                *(v3 + 28) = 0;
                *(v3 + 8) = v36;
                *(v3 + 2) = 1;
                v39 = *(v3 + 16);
                if (v39)
                {
                  goto LABEL_461;
                }

                goto LABEL_463;
              case 1:
                if (!v12)
                {
                  v74 = CharacterAtIndex - 12593;
                  goto LABEL_214;
                }

                v55 = *(v3 + 26);
                if ((v55 - 12593) <= 0x5D)
                {
                  LODWORD(v55) = word_1AE79D088[v55 - 12593];
                }

                v56 = CharacterAtIndex;
                if (CharacterAtIndex - 12593 <= 0x5D)
                {
                  v56 = word_1AE79D088[CharacterAtIndex - 12593];
                }

                v57 = 0;
                v58 = v56 | (v55 << 16);
                v59 = 25;
                while (1)
                {
                  v60 = (v57 + v59) >> 1;
                  v61 = (&unk_1AE79D2CE + 6 * v60);
                  v62 = v61[1] | (*v61 << 16);
                  if (v58 == v62)
                  {
                    break;
                  }

                  if (v58 <= v62)
                  {
                    v59 = v60 - 1;
                  }

                  else
                  {
                    v57 = v60 + 1;
                  }

                  if (v57 > v59)
                  {
                    goto LABEL_224;
                  }
                }

                v104 = v61[2];
                if (v61[2])
                {
                  v105 = v61[2];
                  if ((v104 - 12593) <= 0x5D)
                  {
                    v105 = word_1AE79D088[v104 - 12593];
                  }

                  if (!v105)
                  {
                    goto LABEL_370;
                  }

                  if ((v105 - 4449) <= 0x14)
                  {
                    v106 = word_1AE79D16A[v105 - 4449];
                    goto LABEL_366;
                  }

                  if (v105 == 4514)
                  {
                    v106 = 4514;
                  }

                  else
                  {
                    v106 = 0;
                  }

                  if (v105 == 4510)
                  {
LABEL_367:
                    *(v3 + 8) = 1;
                    *(v3 + 24) = 0;
                    if ((v104 - 12593) <= 0x5D)
                    {
                      LOWORD(v104) = word_1AE79D088[v104 - 12593];
                    }

                    CharacterAtIndex = 0;
                    v37 = 0;
                    *(v3 + 26) = v104;
                    *(v3 + 28) = 0;
                    v138 = 1;
                  }

                  else
                  {
LABEL_366:
                    if (v106)
                    {
                      goto LABEL_367;
                    }

LABEL_370:
                    if ((CharacterAtIndex - 12593) <= 0x5Du)
                    {
                      CharacterAtIndex = word_1AE79D088[CharacterAtIndex - 12593];
                    }

                    v138 = 0;
                    v37 = 1;
                    *(v3 + 8) = 1;
                  }

                  LODWORD(v14) = 0;
                  *(v3 + 4) = v138;
                  *(v3 + 2) = 1;
                  goto LABEL_414;
                }

LABEL_224:
                if ((CharacterAtIndex - 12593) <= 0x5Du)
                {
                  goto LABEL_412;
                }

                goto LABEL_413;
              case 2:
                v19 = *v157;
                v20 = v19 - 12593;
                if (!v12)
                {
                  if (v20 <= 0x5D)
                  {
                    LODWORD(v19) = word_1AE79D3AC[v19 - 12593];
                  }

                  LOWORD(v74) = CharacterAtIndex - 12593;
                  v82 = CharacterAtIndex;
                  if (CharacterAtIndex - 12593 <= 0x5D)
                  {
                    v82 = word_1AE79D3AC[CharacterAtIndex - 12593];
                  }

                  v83 = 0;
                  v84 = v82 | (v19 << 16);
                  v85 = 4;
                  while (1)
                  {
                    v86 = (v83 + v85) >> 1;
                    v87 = (&unk_1AE79D2B0 + 6 * v86);
                    v88 = v87[1] | (*v87 << 16);
                    if (v84 == v88)
                    {
                      break;
                    }

                    if (v84 <= v88)
                    {
                      v85 = v86 - 1;
                    }

                    else
                    {
                      v83 = v86 + 1;
                    }

                    if (v83 > v85)
                    {
                      goto LABEL_213;
                    }
                  }

                  v102 = v87[2];
                  if (v87[2])
                  {
                    if ((v102 - 12593) > 0x5D)
                    {
                      v37 = v102 - 4371 < 0xFFFFFFFFFFFFFFEDLL;
                      if (v102 - 4371 < 0xFFFFFFFFFFFFFFEDLL)
                      {
                        goto LABEL_257;
                      }

LABEL_259:
                      CharacterAtIndex = 0;
                      *(v3 + 24) = v102;
                      *(v3 + 26) = 0;
                      v53 = 1;
                    }

                    else
                    {
                      v102 = &word_1AE79D3AC[v102];
                      v103 = *(v102 - 25186) - 4371;
                      v37 = v103 < 0xFFFFFFFFFFFFFFEDLL;
                      if (v103 >= 0xFFFFFFFFFFFFFFEDLL)
                      {
                        LOWORD(v102) = *(v102 - 25186);
                        goto LABEL_259;
                      }

LABEL_257:
                      v53 = 0;
                      if ((CharacterAtIndex - 12593) <= 0x5Du)
                      {
                        CharacterAtIndex = word_1AE79D3AC[CharacterAtIndex - 12593];
                      }
                    }

                    v38 = 0;
                    v54 = 2;
LABEL_459:
                    *(v3 + 8) = v54;
                    *(v3 + 4) = v53;
                    LODWORD(v14) = CharacterAtIndex;
LABEL_460:
                    *(v3 + 2) = 1;
                    v39 = *(v3 + 16);
                    if (!v39)
                    {
                      goto LABEL_463;
                    }

LABEL_461:
                    v145.length = CFStringGetLength(v39);
                    if (v145.length >= 1)
                    {
                      v145.location = 0;
                      CFStringDelete(*(v3 + 16), v145);
                    }

                    goto LABEL_463;
                  }

LABEL_213:
                  v74 = v74;
LABEL_214:
                  if (v74 <= 0x5D)
                  {
                    CharacterAtIndex = word_1AE79D3AC[CharacterAtIndex - 12593];
                  }

                  v38 = 0;
                  *(v3 + 8) = 2;
                  v37 = 1;
                  *(v3 + 2) = 1;
                  LODWORD(v14) = CharacterAtIndex;
                  v39 = *(v3 + 16);
                  if (v39)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_463;
                }

                if (v20 <= 0x5D)
                {
                  LODWORD(v19) = word_1AE79D3AC[v19 - 12593];
                }

                v21 = *(v3 + 28);
                *(v3 + 30) = v19;
                v22 = CharacterAtIndex - 12593;
                v23 = CharacterAtIndex;
                if (CharacterAtIndex - 12593 <= 0x5D)
                {
                  v23 = word_1AE79D088[CharacterAtIndex - 12593];
                }

                *(v3 + 32) = v23;
                if ((v21 - 12593) <= 0x5D)
                {
                  LODWORD(v21) = word_1AE79D468[v21 - 12593];
                }

                *(v3 + 34) = v21;
                if (v19)
                {
                  if (v23)
                  {
                    v24 = 0;
                    if (v23 != 4510 && v23 != 4514)
                    {
                      v11 = v21 >= 0x11A7;
                      v25 = v21 - 4519;
                      if (!v11)
                      {
                        v25 = 0;
                      }

                      v24 = 28 * v23 + 588 * v19 + v25 - 18076;
                    }
                  }

                  else if (v21 || (v112 = v19 - 4352, v112 > 0x12))
                  {
                    v24 = 0;
                  }

                  else
                  {
                    v24 = word_1AE79D144[v112];
                  }
                }

                else
                {
                  v24 = 0;
                  if (v23 && !v21)
                  {
                    if (v23 - 4449 > 0x14)
                    {
                      if (v23 == 4514)
                      {
                        v139 = 4514;
                      }

                      else
                      {
                        v139 = 0;
                      }

                      if (v23 == 4510)
                      {
                        v24 = 12685;
                      }

                      else
                      {
                        v24 = v139;
                      }
                    }

                    else
                    {
                      v24 = word_1AE79D16A[v23 - 4449];
                    }
                  }
                }

                if (CharacterAtIndex == 12685 || v24)
                {
                  if (CharacterAtIndex == 12685)
                  {
                    v140 = 6;
                  }

                  else
                  {
                    v140 = 3;
                  }

                  *(v3 + 8) = v140;
                  if (v23 - 12593 <= 0x5D)
                  {
                    LOWORD(v23) = word_1AE79D088[v23 - 12593];
                  }

                  v37 = 0;
                  v38 = 0;
                  LODWORD(v14) = 0;
                  *(v3 + 26) = v23;
                  *(v3 + 28) = 0;
                  *(v3 + 4) = CharacterAtIndex != 12685;
                  goto LABEL_460;
                }

                goto LABEL_411;
            }

LABEL_78:
            LODWORD(v14) = 0;
            v38 = 0;
            v37 = 0;
            v40 = *(v3 + 2);
            if (v40 == 2)
            {
              goto LABEL_307;
            }

            goto LABEL_79;
          }

          if (v13 > 4)
          {
            if (v13 != 5)
            {
              if (v13 == 6)
              {
LABEL_51:
                if (!v12)
                {
                  v48 = *(v3 + 24);
                  if ((v48 - 12593) <= 0x5Du)
                  {
                    LODWORD(v48) = word_1AE79D3AC[v48 - 12593];
                  }

                  v49 = *(v3 + 26);
                  if ((v49 - 12593) <= 0x5D)
                  {
                    LODWORD(v49) = word_1AE79D088[v49 - 12593];
                  }

                  v50 = CharacterAtIndex;
                  if (CharacterAtIndex - 12593 > 0x5D || (v51 = CharacterAtIndex - 12593, (v50 = word_1AE79D468[v51]) != 0))
                  {
                    if (v48 && v49 && v49 != 4510 && v49 != 4514)
                    {
                      v11 = v50 >= 0x11A7;
                      v52 = v50 - 4519;
                      if (!v11)
                      {
                        v52 = 0;
                      }

                      if ((28 * v49 + 588 * v48 + v52) != 18076)
                      {
                        if ((CharacterAtIndex - 12593) <= 0x5Du)
                        {
                          LOWORD(CharacterAtIndex) = word_1AE79D468[CharacterAtIndex - 12593];
                        }

                        v37 = 0;
                        *(v3 + 28) = CharacterAtIndex;
                        v53 = 1;
                        v54 = 4;
                        CharacterAtIndex = 0;
                        goto LABEL_458;
                      }
                    }

                    if ((CharacterAtIndex - 12593) <= 0x5Du)
                    {
                      v51 = CharacterAtIndex - 12593;
                      goto LABEL_122;
                    }

                    v53 = 0;
                  }

                  else
                  {
LABEL_122:
                    v53 = 0;
                    CharacterAtIndex = word_1AE79D3AC[v51];
                  }

                  v37 = 1;
                  v54 = 2;
                  goto LABEL_458;
                }

                v26 = *(v3 + 26);
                if ((v26 - 12593) <= 0x5D)
                {
                  LODWORD(v26) = word_1AE79D088[v26 - 12593];
                }

                v22 = CharacterAtIndex - 12593;
                v27 = CharacterAtIndex;
                if (CharacterAtIndex - 12593 <= 0x5D)
                {
                  v27 = word_1AE79D088[CharacterAtIndex - 12593];
                }

                v28 = 0;
                v29 = v27 | (v26 << 16);
                v30 = 25;
                while (1)
                {
                  v31 = (v28 + v30) >> 1;
                  v32 = (&unk_1AE79D2CE + 6 * v31);
                  v33 = v32[1] | (*v32 << 16);
                  if (v29 == v33)
                  {
                    break;
                  }

                  if (v29 <= v33)
                  {
                    v30 = v31 - 1;
                  }

                  else
                  {
                    v28 = v31 + 1;
                  }

                  if (v28 > v30)
                  {
                    goto LABEL_411;
                  }
                }

                v63 = v32[2];
                if (!v32[2])
                {
LABEL_411:
                  if (v22 <= 0x5Du)
                  {
LABEL_412:
                    CharacterAtIndex = word_1AE79D088[CharacterAtIndex - 12593];
                  }

LABEL_413:
                  LODWORD(v14) = 0;
                  v37 = 1;
                  *(v3 + 8) = 1;
                  *(v3 + 2) = 1;
LABEL_414:
                  v38 = CharacterAtIndex;
                  v39 = *(v3 + 16);
                  if (v39)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_463;
                }

                v64 = *v157;
                if ((v64 - 12593) <= 0x5Du)
                {
                  LODWORD(v64) = word_1AE79D3AC[v64 - 12593];
                }

                *(v3 + 30) = v64;
                if ((v63 - 12593) <= 0x5D)
                {
                  LODWORD(v63) = word_1AE79D088[v63 - 12593];
                }

                *(v3 + 32) = v63;
                *(v3 + 34) = 0;
                if (v64)
                {
                  if (v63)
                  {
                    if (v63 != 4510 && v63 != 4514)
                    {
                      v66 = 28 * v63 + 588 * v64 - 18076;
                      goto LABEL_400;
                    }
                  }

                  else
                  {
                    v137 = v64 - 4352;
                    if (v137 <= 0x12)
                    {
                      v66 = word_1AE79D144[v137];
                      goto LABEL_400;
                    }
                  }
                }

                else if (v63)
                {
                  if ((v63 - 4449) > 0x14)
                  {
                    if (v63 == 4514)
                    {
                      v66 = 4514;
                    }

                    else
                    {
                      v66 = 0;
                    }

                    if (v63 == 4510)
                    {
LABEL_401:
                      v37 = 0;
                      v38 = 0;
                      LODWORD(v14) = 0;
                      if (v13 == 6)
                      {
                        v141 = 2;
                      }

                      else
                      {
                        v141 = 1;
                      }

                      *(v3 + 4) = v141;
                      *(v3 + 2) = 1;
                      *(v3 + 8) = 3;
                      *v157 = *(v3 + 30);
                      *(v3 + 28) = *(v3 + 34);
                      v39 = *(v3 + 16);
                      if (!v39)
                      {
                        goto LABEL_463;
                      }

                      goto LABEL_461;
                    }
                  }

                  else
                  {
                    v66 = word_1AE79D16A[(v63 - 4449)];
                  }

LABEL_400:
                  if (v66)
                  {
                    goto LABEL_401;
                  }
                }

                if (CharacterAtIndex == 12685)
                {
                  *(v3 + 2) = 65537;
                  if ((v63 - 12593) <= 0x5D)
                  {
                    LOWORD(v63) = word_1AE79D088[v63 - 12593];
                  }

                  v37 = 0;
                  v38 = 0;
                  LODWORD(v14) = 0;
                  *(v3 + 26) = v63;
                  *(v3 + 28) = 0;
                  *(v3 + 8) = 6;
                  v39 = *(v3 + 16);
                  if (v39)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_463;
                }

                goto LABEL_411;
              }

              goto LABEL_78;
            }

            v41 = *(v3 + 28);
            v42 = v41 - 12593;
            if (!v12)
            {
              if (v42 <= 0x5D)
              {
                LODWORD(v41) = word_1AE79D468[v41 - 12593];
              }

              v67 = CharacterAtIndex;
              if (CharacterAtIndex - 12593 <= 0x5D)
              {
                v67 = word_1AE79D468[CharacterAtIndex - 12593];
              }

              v68 = 0;
              v69 = v67 | (v41 << 16);
              v70 = 10;
              while (1)
              {
                v71 = (v68 + v70) >> 1;
                v72 = &word_1AE79D36A[3 * v71];
                v73 = v72[1] | (*v72 << 16);
                if (v69 == v73)
                {
                  break;
                }

                if (v69 <= v73)
                {
                  v70 = v71 - 1;
                }

                else
                {
                  v68 = v71 + 1;
                }

                if (v68 > v70)
                {
                  goto LABEL_194;
                }
              }

              v90 = v72[2];
              if (!v72[2])
              {
LABEL_194:
                v74 = (CharacterAtIndex - 12593);
                goto LABEL_214;
              }

              v91 = *(v3 + 24);
              if ((v91 - 12593) <= 0x5Du)
              {
                LODWORD(v91) = word_1AE79D3AC[v91 - 12593];
              }

              v92 = *(v3 + 26);
              if ((v92 - 12593) <= 0x5D)
              {
                LODWORD(v92) = word_1AE79D088[v92 - 12593];
              }

              v93 = v72[2];
              if ((v90 - 12593) <= 0x5D)
              {
                v93 = word_1AE79D468[v90 - 12593];
              }

              if (v91)
              {
                if (v92)
                {
                  if (v92 != 4510 && v92 != 4514)
                  {
                    v11 = v93 >= 0x11A7;
                    v94 = v93 - 4519;
                    if (!v11)
                    {
                      v94 = 0;
                    }

                    v95 = 28 * v92 + 588 * v91 + v94 - 18076;
                    goto LABEL_440;
                  }
                }

                else if (!v93)
                {
                  v143 = v91 - 4352;
                  if (v143 <= 0x12)
                  {
                    v95 = word_1AE79D144[v143];
                    goto LABEL_440;
                  }
                }
              }

              else if (v92 && !v93)
              {
                if ((v92 - 4449) <= 0x14)
                {
                  v95 = word_1AE79D16A[(v92 - 4449)];
                  goto LABEL_440;
                }

                if (v92 == 4514)
                {
                  v95 = 4514;
                }

                else
                {
                  v95 = 0;
                }

                if (v92 != 4510)
                {
LABEL_440:
                  if (!v95)
                  {
                    goto LABEL_444;
                  }
                }

                if ((v90 - 12593) <= 0x5Du)
                {
                  LOWORD(v90) = word_1AE79D468[v90 - 12593];
                }

                CharacterAtIndex = 0;
                v37 = 0;
                *(v3 + 28) = v90;
                goto LABEL_454;
              }

LABEL_444:
              if ((CharacterAtIndex - 12593) > 0x5Du)
              {
                goto LABEL_456;
              }

              goto LABEL_445;
            }

            v43 = *(v3 + 28);
            if (v42 <= 0x5D)
            {
              v43 = word_1AE79D468[v41 - 12593];
            }

            v44 = 0;
            v45 = 10;
            while (1)
            {
              v46 = v44 + v45;
              v47 = word_1AE79D36A[3 * ((v44 + v45) / 2) + 2];
              if (v47 == v43)
              {
                break;
              }

              if (v47 >= v43)
              {
                v45 = v46 / 2 - 1;
              }

              else
              {
                v44 = v46 / 2 + 1;
              }

              if (v44 > v45)
              {
                goto LABEL_172;
              }
            }

            if ((v46 + 3) < 2)
            {
LABEL_172:
              LODWORD(v14) = 0;
              goto LABEL_173;
            }

            v14 = word_1AE79D36A[3 * (v46 / 2) + 1];
            if ((v14 - 12592) >= 0x5Fu)
            {
              if ((v14 - 4352) >= 0x5A)
              {
                v107 = v14 - 4520;
                if ((v14 - 4520) < 0x52 && v107 <= 0x1A)
                {
                  v108 = &unk_1AE79D1F0;
LABEL_421:
                  LODWORD(v14) = v108[v107];
                }
              }

              else
              {
                v107 = v14 - 4352;
                if ((v14 - 4352) <= 0x12)
                {
                  v108 = &unk_1AE79D1CA;
                  goto LABEL_421;
                }
              }
            }

            if ((v14 - 12593) <= 0x5D)
            {
              LODWORD(v14) = word_1AE79D3AC[v14 - 12593];
            }

LABEL_173:
            v38 = CharacterAtIndex;
            if (CharacterAtIndex - 12593 <= 0x5D)
            {
              v38 = word_1AE79D088[CharacterAtIndex - 12593];
            }

            if (v14)
            {
              if (v38)
              {
                if (v38 != 4510 && v38 != 4514)
                {
                  v89 = 28 * v38 + 588 * v14 - 18076;
                  goto LABEL_280;
                }

LABEL_290:
                if (CharacterAtIndex == 12685)
                {
                  *(v3 + 8) = 6;
                  if (v42 <= 0x5D)
                  {
                    LODWORD(v41) = word_1AE79D468[v41 - 12593];
                  }

                  v118 = 0;
                  v119 = 10;
                  while (1)
                  {
                    v115 = v118 + v119;
                    v116 = (v115 + (v115 >> 31)) >> 1;
                    v120 = word_1AE79D36A[3 * ((v118 + v119) / 2) + 2];
                    if (v120 == v41)
                    {
                      goto LABEL_303;
                    }

                    if (v120 >= v41)
                    {
                      v119 = v115 / 2 - 1;
                    }

                    else
                    {
                      v118 = v115 / 2 + 1;
                    }

                    if (v118 > v119)
                    {
                      goto LABEL_304;
                    }
                  }
                }

                if ((CharacterAtIndex - 12593) <= 0x5Du)
                {
                  CharacterAtIndex = word_1AE79D088[CharacterAtIndex - 12593];
                }

                v121 = 0;
                LODWORD(v14) = 0;
                v40 = 1;
                *(v3 + 8) = 1;
                v38 = CharacterAtIndex;
LABEL_306:
                *(v3 + 4) = v121;
                *(v3 + 2) = v40;
                v37 = 1;
                if (v40 == 2)
                {
                  goto LABEL_307;
                }

                goto LABEL_79;
              }

              v110 = v14 - 4352;
              if (v110 > 0x12)
              {
                goto LABEL_290;
              }

              v89 = word_1AE79D144[v110];
LABEL_280:
              if (!v89)
              {
                goto LABEL_290;
              }
            }

            else
            {
              if (!v38)
              {
                goto LABEL_290;
              }

              if ((v38 - 4449) <= 0x14)
              {
                v89 = word_1AE79D16A[v38 - 4449];
                goto LABEL_280;
              }

              if (v38 == 4514)
              {
                v89 = 4514;
              }

              else
              {
                v89 = 0;
              }

              if (v38 != 4510)
              {
                goto LABEL_280;
              }
            }

            *(v3 + 8) = 3;
            if (v42 <= 0x5D)
            {
              LODWORD(v41) = word_1AE79D468[v41 - 12593];
            }

            v113 = 0;
            v114 = 10;
            while (1)
            {
              v115 = v113 + v114;
              v116 = (v115 + (v115 >> 31)) >> 1;
              v117 = word_1AE79D36A[3 * ((v113 + v114) / 2) + 2];
              if (v117 == v41)
              {
                break;
              }

              if (v117 >= v41)
              {
                v114 = v115 / 2 - 1;
              }

              else
              {
                v113 = v115 / 2 + 1;
              }

              if (v113 > v114)
              {
                goto LABEL_304;
              }
            }

LABEL_303:
            if ((v115 + 3) >= 2)
            {
              v122 = word_1AE79D36A[3 * v116];
              if ((v122 - 12593) <= 0x5D)
              {
                LOWORD(v122) = word_1AE79D468[v122 - 12593];
              }
            }

            else
            {
LABEL_304:
              LOWORD(v122) = 0;
            }

            *(v3 + 28) = v122;
            v40 = 2;
            v121 = 1;
            goto LABEL_306;
          }

          if (v13 == 3)
          {
            goto LABEL_51;
          }

          v14 = *(v3 + 28);
          if (!v12)
          {
            if ((v14 - 12593) <= 0x5D)
            {
              LODWORD(v14) = word_1AE79D468[v14 - 12593];
            }

            LOWORD(v74) = CharacterAtIndex - 12593;
            v75 = CharacterAtIndex;
            if (CharacterAtIndex - 12593 <= 0x5D)
            {
              v75 = word_1AE79D468[CharacterAtIndex - 12593];
            }

            v76 = 0;
            v77 = v75 | (v14 << 16);
            v78 = 10;
            while (1)
            {
              v79 = (v76 + v78) >> 1;
              v80 = &word_1AE79D36A[3 * v79];
              v81 = v80[1] | (*v80 << 16);
              if (v77 == v81)
              {
                break;
              }

              if (v77 <= v81)
              {
                v78 = v79 - 1;
              }

              else
              {
                v76 = v79 + 1;
              }

              if (v76 > v78)
              {
                goto LABEL_213;
              }
            }

            v96 = v80[2];
            if (v80[2])
            {
              v97 = *(v3 + 24);
              if ((v97 - 12593) <= 0x5Du)
              {
                LODWORD(v97) = word_1AE79D3AC[v97 - 12593];
              }

              v98 = *(v3 + 26);
              if ((v98 - 12593) <= 0x5D)
              {
                LODWORD(v98) = word_1AE79D088[v98 - 12593];
              }

              v99 = v80[2];
              if ((v96 - 12593) <= 0x5D)
              {
                v99 = word_1AE79D468[v96 - 12593];
              }

              if (v97)
              {
                if (v98)
                {
                  if (v98 != 4510 && v98 != 4514)
                  {
                    v11 = v99 >= 0x11A7;
                    v100 = v99 - 4519;
                    if (!v11)
                    {
                      v100 = 0;
                    }

                    v101 = 28 * v98 + 588 * v97 + v100 - 18076;
                    goto LABEL_450;
                  }
                }

                else if (!v99)
                {
                  v144 = v97 - 4352;
                  if (v144 <= 0x12)
                  {
                    v101 = word_1AE79D144[v144];
                    goto LABEL_450;
                  }
                }

LABEL_455:
                if ((CharacterAtIndex - 12593) > 0x5Du)
                {
LABEL_456:
                  v53 = 0;
LABEL_457:
                  v54 = 2;
                  v37 = 1;
LABEL_458:
                  v38 = 0;
                  goto LABEL_459;
                }

LABEL_445:
                v53 = 0;
                CharacterAtIndex = word_1AE79D3AC[CharacterAtIndex - 12593];
                goto LABEL_457;
              }

              if (!v98 || v99)
              {
                goto LABEL_455;
              }

              if ((v98 - 4449) <= 0x14)
              {
                v101 = word_1AE79D16A[(v98 - 4449)];
                goto LABEL_450;
              }

              if (v98 == 4514)
              {
                v101 = 4514;
              }

              else
              {
                v101 = 0;
              }

              if (v98 != 4510)
              {
LABEL_450:
                if (!v101)
                {
                  goto LABEL_455;
                }
              }

              if ((v96 - 12593) <= 0x5Du)
              {
                LOWORD(v96) = word_1AE79D468[v96 - 12593];
              }

              CharacterAtIndex = 0;
              v37 = 0;
              *(v3 + 28) = v96;
LABEL_454:
              v53 = 1;
              v54 = 5;
              goto LABEL_458;
            }

            goto LABEL_213;
          }

          if ((v14 - 12592) >= 0x5F)
          {
            if ((v14 - 4352) < 0x5A)
            {
              v15 = v14 - 4352;
              if ((v14 - 4352) > 0x12)
              {
                goto LABEL_241;
              }

              v16 = &unk_1AE79D1CA;
              goto LABEL_240;
            }

            if ((v14 - 4520) < 0x52)
            {
              v15 = v14 - 4520;
              if ((v14 - 4520) <= 0x1A)
              {
                v16 = &unk_1AE79D1F0;
LABEL_240:
                LODWORD(v14) = v16[v15];
              }
            }
          }

LABEL_241:
          if ((v14 - 12593) <= 0x5D)
          {
            LODWORD(v14) = word_1AE79D3AC[v14 - 12593];
          }

          v38 = CharacterAtIndex;
          if (CharacterAtIndex - 12593 <= 0x5D)
          {
            v38 = word_1AE79D088[CharacterAtIndex - 12593];
          }

          if (v14)
          {
            if (v38)
            {
              if (v38 == 4510 || v38 == 4514)
              {
                goto LABEL_347;
              }

              v109 = 28 * v38 + 588 * v14 - 18076;
            }

            else
            {
              v111 = v14 - 4352;
              if (v111 > 0x12)
              {
                goto LABEL_347;
              }

              v109 = word_1AE79D144[v111];
            }
          }

          else
          {
            if (!v38)
            {
              goto LABEL_347;
            }

            if ((v38 - 4449) > 0x14)
            {
              if (v38 == 4514)
              {
                v109 = 4514;
              }

              else
              {
                v109 = 0;
              }

              if (v38 == 4510)
              {
LABEL_346:
                *(v3 + 28) = 0;
                v40 = 2;
                v37 = 1;
                v134 = 3;
                v135 = 1;
                goto LABEL_355;
              }
            }

            else
            {
              v109 = word_1AE79D16A[v38 - 4449];
            }
          }

          if (v109)
          {
            goto LABEL_346;
          }

LABEL_347:
          if (CharacterAtIndex == 12685)
          {
            *(v3 + 28) = 0;
            v37 = 0;
            if ((v14 - 12593) <= 0x5D)
            {
              LODWORD(v14) = word_1AE79D3AC[v14 - 12593];
            }

            v40 = 2;
            v135 = 1;
            v38 = 4510;
            v134 = 6;
          }

          else
          {
            LODWORD(v14) = 0;
            v135 = 0;
            if ((CharacterAtIndex - 12593) > 0x5Du)
            {
              v134 = 1;
              v38 = CharacterAtIndex;
            }

            else
            {
              v38 = word_1AE79D088[CharacterAtIndex - 12593];
              v134 = 1;
            }

            v37 = 1;
            v40 = 1;
          }

LABEL_355:
          *(v3 + 8) = v134;
          *(v3 + 4) = v135;
          *(v3 + 2) = v40;
          if (v40 == 2)
          {
LABEL_307:
            v123 = *(v3 + 16);
            if (v123)
            {
              v124.length = CFStringGetLength(v123);
              if (v124.length >= 1)
              {
                v124.location = 0;
                CFStringDelete(*(v3 + 16), v124);
              }
            }

            v125 = *(v3 + 24);
            v126 = *(v3 + 26);
            if (*(v3 + 24))
            {
              if (*(v3 + 26))
              {
                v127 = 0;
                if (v126 != 4510 && v126 != 4514)
                {
                  v128 = *(v3 + 28);
                  v11 = v128 >= 0x11A7;
                  v129 = v128 - 4519;
                  if (!v11)
                  {
                    v129 = 0;
                  }

                  v127 = 28 * v126 + 588 * v125 + v129 - 18076;
                }

                goto LABEL_325;
              }

              if (!*(v3 + 28) && (v125 - 4352) <= 0x12)
              {
                v127 = word_1AE79D144[v125 - 4352];
                goto LABEL_325;
              }

LABEL_324:
              v127 = 0;
              goto LABEL_325;
            }

            if (!*(v3 + 26) || *(v3 + 28))
            {
              goto LABEL_324;
            }

            if ((v126 - 4449) > 0x14)
            {
              if (v126 == 4514)
              {
                v127 = 4514;
              }

              else
              {
                v127 = 0;
              }

              if (v126 == 4510)
              {
                v127 = 12685;
              }
            }

            else
            {
              v127 = word_1AE79D16A[v126 - 4449];
            }

LABEL_325:
            v159 = v127;
            v130 = *(v3 + 16);
            if (v130)
            {
              CFStringAppendCharacters(v130, &v159, 1);
            }

            if (*(v3 + 8) == 6)
            {
              v159 = v14;
              v131 = *(v3 + 16);
              if (v131)
              {
                CFStringAppendCharacters(v131, &v159, 1);
                v132 = *(v3 + 16);
                v159 = v38;
                if (v132)
                {
                  goto LABEL_495;
                }
              }

              goto LABEL_496;
            }

            if (v14)
            {
              if (v38)
              {
                v133 = 0;
                if (v38 != 4510 && v38 != 4514)
                {
                  v133 = 28 * v38 + 588 * v14 - 18076;
                }

                goto LABEL_394;
              }

              v136 = v14 - 4352;
              if (v136 <= 0x12)
              {
                v133 = word_1AE79D144[v136];
                goto LABEL_394;
              }
            }

            else if (v38)
            {
              if ((v38 - 4449) > 0x14)
              {
                if (v38 == 4514)
                {
                  v133 = 4514;
                }

                else
                {
                  v133 = 0;
                }

                if (v38 == 4510)
                {
                  v133 = 12685;
                }
              }

              else
              {
                v133 = word_1AE79D16A[v38 - 4449];
              }

LABEL_394:
              v159 = v133;
              v132 = *(v3 + 16);
              if (v132)
              {
                goto LABEL_495;
              }

              goto LABEL_496;
            }

            v133 = 0;
            goto LABEL_394;
          }

LABEL_79:
          if (v40 != 1)
          {
            goto LABEL_503;
          }

          v39 = *(v3 + 16);
          if (v39)
          {
            goto LABEL_461;
          }

LABEL_463:
          if (v37)
          {
            if (v14)
            {
              if (v38)
              {
                v146 = 0;
                if (v38 != 4510 && v38 != 4514)
                {
                  v146 = 28 * v38 + 588 * v14 - 18076;
                }

                goto LABEL_494;
              }

              v153 = v14 - 4352;
              if (v153 <= 0x12)
              {
                v146 = word_1AE79D144[v153];
                goto LABEL_494;
              }

LABEL_488:
              v146 = 0;
              goto LABEL_494;
            }

            if (!v38)
            {
              goto LABEL_488;
            }

            if ((v38 - 4449) > 0x14)
            {
              if (v38 == 4514)
              {
                v146 = 4514;
              }

              else
              {
                v146 = 0;
              }

              if (v38 == 4510)
              {
                v146 = 12685;
              }
            }

            else
            {
              v146 = word_1AE79D16A[v38 - 4449];
            }

LABEL_494:
            v159 = v146;
            v132 = *(v3 + 16);
            if (v132)
            {
LABEL_495:
              CFStringAppendCharacters(v132, &v159, 1);
            }

LABEL_496:
            *(v3 + 24) = v14;
            *(v3 + 26) = v38;
            *(v3 + 28) = 0;
            goto LABEL_503;
          }

          if (*(v3 + 8) == 6)
          {
            v159 = *(v3 + 26);
            v147 = *(v3 + 16);
            if (v147)
            {
              goto LABEL_502;
            }

            goto LABEL_503;
          }

          v148 = *(v3 + 24);
          v149 = *(v3 + 26);
          if (*(v3 + 24))
          {
            if (!*(v3 + 26))
            {
              if (!*(v3 + 28) && (v148 - 4352) <= 0x12)
              {
                v150 = word_1AE79D144[v148 - 4352];
                goto LABEL_501;
              }

LABEL_500:
              v150 = 0;
              goto LABEL_501;
            }

            v150 = 0;
            if (v149 != 4510 && v149 != 4514)
            {
              v151 = *(v3 + 28);
              v11 = v151 >= 0x11A7;
              v152 = v151 - 4519;
              if (!v11)
              {
                v152 = 0;
              }

              v150 = 28 * v149 + 588 * v148 + v152 - 18076;
            }
          }

          else
          {
            if (!*(v3 + 26) || *(v3 + 28))
            {
              goto LABEL_500;
            }

            if ((v149 - 4449) > 0x14)
            {
              if (v149 == 4514)
              {
                v150 = 4514;
              }

              else
              {
                v150 = 0;
              }

              if (v149 == 4510)
              {
                v150 = 12685;
              }
            }

            else
            {
              v150 = word_1AE79D16A[v149 - 4449];
            }
          }

LABEL_501:
          v159 = v150;
          v147 = *(v3 + 16);
          if (v147)
          {
LABEL_502:
            CFStringAppendCharacters(v147, &v159, 1);
          }

LABEL_503:
          v154 = CFStringGetLength(Mutable);
          if (v154)
          {
            v155.length = *(v3 + 4);
            if (v154 >= LODWORD(v155.length))
            {
              v155.location = v154 - v155.length;
              CFStringDelete(Mutable, v155);
            }
          }

          CFStringAppend(Mutable, *(v3 + 16));
        }
      }

      *a3 = Mutable;
    }
  }
}

void sub_1AE735EC8(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_1AE735F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1AE735FC0(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2430190;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1AE736064(void *a1)
{
  *a1 = &unk_1F2430190;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73610C(void *result)
{
  *result = &unk_1F2430190;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_1AE736198(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }
}

void sub_1AE7361CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2430140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE736240(uint64_t a1, CFDictionaryRef theDict)
{
  *(a1 + 48) = 0u;
  v3 = a1 + 48;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kLMRecordGivenNameKey);
    v6 = Value;
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      if (v7 == CFStringGetTypeID())
      {
        sub_1AE5CC874(v6, &v18);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = v18;
        *(a1 + 16) = v19;
      }
    }

    v8 = CFDictionaryGetValue(theDict, kLMRecordFamilyNameKey);
    v9 = v8;
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        sub_1AE5CC874(v9, &v18);
        if (*(a1 + 71) < 0)
        {
          operator delete(*v3);
        }

        *v3 = v18;
        *(v3 + 16) = v19;
      }
    }

    v11 = CFDictionaryGetValue(theDict, kLMRecordNicknameKey);
    v12 = v11;
    if (v11)
    {
      v13 = CFGetTypeID(v11);
      if (v13 == CFStringGetTypeID())
      {
        sub_1AE5CC874(v12, &v18);
        if (*(a1 + 95) < 0)
        {
          operator delete(*(a1 + 72));
        }

        *(a1 + 72) = v18;
        *(a1 + 88) = v19;
      }
    }

    v14 = CFDictionaryGetValue(theDict, kLMRecordHashKey);
    v15 = v14;
    if (v14)
    {
      v16 = CFGetTypeID(v14);
      if (v16 == CFStringGetTypeID())
      {
        sub_1AE5CC874(v15, &v18);
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        *(a1 + 24) = v18;
        *(a1 + 40) = v19;
      }
    }
  }

  return a1;
}

void sub_1AE73640C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE736478(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = (v6 - *a2) >> 2;
  if (v6 == *a2)
  {
    v8 = v6;
  }

  else
  {
    do
    {
      if ((*(**(a1 + 8) + 32))(*(a1 + 8), *a2, v7))
      {
        break;
      }

      --v7;
    }

    while (v7);
    v6 = *a2;
    v8 = a2[1];
  }

  if (v7 == (v8 - v6) >> 2)
  {
    (*(**(a1 + 8) + 64))(*(a1 + 8));
  }

  else
  {
    result = (*(*a1 + 136))(a1, a2, v7, a3);
    if (!result)
    {
      return result;
    }
  }

  v10 = (a2[1] - *a2) >> 2;
  v11 = *(a1 + 104);
  v12 = (*(a1 + 112) - v11) >> 2;
  if (v12 >= v10)
  {
    v12 = (a2[1] - *a2) >> 2;
  }

  if (v12)
  {
    memmove(v11, *a2, 4 * v12);
    v10 = (a2[1] - *a2) >> 2;
  }

  *(a1 + 176) = v10;
  return 1;
}

void *sub_1AE7365C4(void *result, uint64_t a2)
{
  v2 = result[9];
  if (v2)
  {
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    if (v4 != v3)
    {
      while (*v4 != a2)
      {
        v4 += 8;
        if (v4 == v3)
        {
          v4 = *(v2 + 88);
          break;
        }
      }
    }

    if (v3 != v4)
    {
      v5 = v3 - (v4 + 8);
      if (v3 != v4 + 8)
      {
        result = memmove(v4, v4 + 8, v3 - (v4 + 8));
      }

      *(v2 + 88) = &v4[v5];
    }
  }

  return result;
}

void sub_1AE736640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = a2;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    v3 = v2 + 80;
    if (v4 != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          goto LABEL_7;
        }
      }
    }

    if (v4 == v5)
    {
LABEL_7:
      sub_1AE671F84(v3, &v6);
    }
  }
}

uint64_t sub_1AE7366F4(uint64_t a1)
{
  (*(**(a1 + 8) + 80))(*(a1 + 8));
  v2 = *(**(a1 + 40) + 56);

  return v2();
}

float32_t sub_1AE736794(void *a1, uint64_t a2, float32x4_t **a3, uint64_t a4)
{
  if (((*(*a1 + 120))(a1, a2, a4) & 1) == 0)
  {
    __assert_rtn("populateOutputLayer", "BaseLanguageModel.cpp", 205, "false");
  }

  v7 = a1[2];
  v8 = a1[3];
  v9 = (v8 - v7) >> 1;
  v10 = (a3[1] - *a3) >> 2;
  if (v9 <= v10)
  {
    if (v9 < v10)
    {
      a3[1] = (*a3 + 4 * v9);
    }
  }

  else
  {
    sub_1AE654188(a3, v9 - v10);
    v7 = a1[2];
    v8 = a1[3];
    v9 = (v8 - v7) >> 1;
  }

  if (v8 != v7)
  {
    v11 = *a3;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    if (v9 <= 3)
    {
      v13 = 0;
      goto LABEL_21;
    }

    if (v9 >= 0x10)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFF0;
      v14 = v11 + 2;
      v15 = v7 + 2;
      v16 = v12 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v17 = *v15[-2].i8;
        v18 = vcvtq_f32_f16(*v17.i8);
        _Q0 = vcvt_hight_f32_f16(v17);
        v19 = vcvtq_f32_f16(*v15);
        v20 = vcvt_hight_f32_f16(*v15->i8);
        v14[-2] = v18;
        v14[-1] = _Q0;
        *v14 = v19;
        v14[1] = v20;
        v14 += 4;
        v15 += 4;
        v16 -= 16;
      }

      while (v16);
      if (v9 == v13)
      {
        return _Q0.f32[0];
      }

      if ((v12 & 0xC) == 0)
      {
LABEL_21:
        v26 = v12 - v13;
        v27 = &v11->i32[v13];
        v28 = v7 + v13;
        do
        {
          v29 = *v28++;
          _H0 = v29;
          __asm { FCVT            S0, H0 }

          *v27++ = _Q0.i32[0];
          --v26;
        }

        while (v26);
        return _Q0.f32[0];
      }
    }

    else
    {
      v13 = 0;
    }

    v21 = v13;
    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - (v12 & 0xFFFFFFFFFFFFFFFCLL);
    v23 = (v11 + 4 * v21);
    v24 = (v7 + 2 * v21);
    do
    {
      v25 = *v24++;
      _Q0 = vcvtq_f32_f16(v25);
      *v23++ = _Q0;
      v22 += 4;
    }

    while (v22);
    if (v9 != v13)
    {
      goto LABEL_21;
    }
  }

  return _Q0.f32[0];
}

uint64_t sub_1AE736914@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ((*(*a1[7] + 16))(a1[7]) == 2)
  {
    __assert_rtn("topNPredictions", "BaseLanguageModel.cpp", 165, "m_tokenIDMapper->modelType() != NNModelType::Fragment");
  }

  v10 = (*(*a1 + 152))(a1, a4);
  v11 = v10;
  v12 = HIDWORD(v10);
  v13 = (HIDWORD(v10) - v10);
  if (v13 + 1 < a3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = a3;
  }

  if (v12 >= a1[12])
  {
    __assert_rtn("topNPredictions", "BaseLanguageModel.cpp", 172, "range.max < m_sizeOutput && max value of Montreal token ID range exceeds model output size");
  }

  v69 = 0;
  v15 = *(a2 + 8) - *a2;
  v16 = a1[13];
  if (v15 != a1[14] - v16 || (result = memcmp(*a2, v16, v15), result))
  {
    result = (*(*a1 + 120))(a1, a2, &v69);
  }

  v18 = a1[23];
  if (v11 <= v12)
  {
    v19 = a1[2];
    v20 = v18 + 1;
    do
    {
      *(v20 - 1) = v11;
      *v20 = *(v19 + 2 * v11++);
      v20 += 4;
    }

    while (v11 <= v12);
  }

  if (a3)
  {
    v21 = &v18[2 * v14];
    v22 = 8 * v13 + 8;
    if (v14 >= 2)
    {
      v23 = (v14 - 2) >> 1;
      v24 = v23;
      do
      {
        if (v23 >= v24)
        {
          v26 = (8 * v24) >> 2;
          v27 = v26 | 1;
          v28 = &v18[2 * (v26 | 1)];
          v29 = v26 + 2;
          if (v29 < v14 && *(v28 + 2) > *(v28 + 6))
          {
            v28 += 2;
            v27 = v29;
          }

          v30 = &v18[2 * v24];
          v31 = *(v28 + 2);
          v32 = v30[2];
          if (v31 <= v32)
          {
            v33 = *v30;
            do
            {
              v34 = v30;
              v30 = v28;
              *v34 = *v28;
              v34[2] = v31;
              if (v23 < v27)
              {
                break;
              }

              v35 = 2 * v27;
              v27 = (2 * (v27 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v28 = &v18[2 * v27];
              v36 = v35 + 2;
              if (v36 < v14 && *(v28 + 2) > *(v28 + 6))
              {
                v28 += 2;
                v27 = v36;
              }

              v31 = *(v28 + 2);
            }

            while (v31 <= v32);
            *v30 = v33;
            v30[2] = v32;
          }
        }

        v25 = v24-- <= 0;
      }

      while (!v25);
    }

    if (8 * v14 != v22)
    {
      v52 = (v18 + v22);
      if (v14 >= 2)
      {
        v57 = &v18[2 * v14];
        do
        {
          v58 = *(v57 + 2);
          v59 = *(v18 + 2);
          if (v58 > v59)
          {
            v60 = *v57;
            *v57 = *v18;
            *v18 = v60;
            *(v57 + 2) = v59;
            *(v18 + 2) = v58;
            if (v14 == 2 || *(v18 + 6) <= *(v18 + 10))
            {
              v61 = v18 + 2;
              v62 = 1;
            }

            else
            {
              v61 = v18 + 4;
              v62 = 2;
            }

            v63 = *(v61 + 2);
            if (v63 <= v58)
            {
              v64 = *v18;
              v65 = v18;
              do
              {
                v66 = v65;
                v65 = v61;
                *v66 = *v61;
                *(v66 + 2) = v63;
                if (((v14 - 2) >> 1) < v62)
                {
                  break;
                }

                v67 = 2 * v62;
                v62 = (2 * v62) | 1;
                v61 = &v18[2 * v62];
                v68 = v67 + 2;
                if (v68 < v14 && *(v61 + 2) > *(v61 + 6))
                {
                  v61 += 2;
                  v62 = v68;
                }

                v63 = *(v61 + 2);
              }

              while (v63 <= v58);
              *v65 = v64;
              *(v65 + 2) = v58;
            }
          }

          v57 += 2;
        }

        while (v57 != v52);
      }

      else
      {
        v53 = *(v18 + 2);
        v54 = &v18[2 * v14];
        do
        {
          v55 = *(v54 + 2);
          if (v55 > v53)
          {
            v56 = *v54;
            *v54 = *v18;
            *v18 = v56;
            *(v54 + 2) = v53;
            *(v18 + 2) = v55;
            v53 = v55;
          }

          v54 += 2;
        }

        while (v54 != v52);
      }
    }

    if (v14 < 2)
    {
LABEL_48:
      operator new();
    }

    v37 = v14;
    while (1)
    {
      if (v37 >= 2)
      {
        v38 = 0;
        v39 = *v18;
        v40 = *(v18 + 2);
        v41 = v18;
        do
        {
          v42 = v41;
          v41 += 4 * v38 + 4;
          v43 = 2 * v38;
          v38 = (2 * v38) | 1;
          v44 = v43 + 2;
          if (v44 < v37 && v41[2] > v41[6])
          {
            v41 += 4;
            v38 = v44;
          }

          *v42 = *v41;
          v42[2] = v41[2];
        }

        while (v38 <= ((v37 - 2) >> 1));
        if (v41 == (v21 - 2))
        {
          *v41 = v39;
        }

        else
        {
          *v41 = *(v21 - 2);
          v41[2] = *(v21 - 2);
          *(v21 - 2) = v39;
          *(v21 - 2) = v40;
          v45 = (v41 - v18 + 8) >> 3;
          v25 = v45 < 2;
          v46 = v45 - 2;
          if (v25)
          {
            goto LABEL_33;
          }

          v47 = v46 >> 1;
          v48 = &v18[2 * v47];
          v49 = *(v48 + 2);
          v40 = v41[2];
          if (v49 <= v40)
          {
            goto LABEL_33;
          }

          v50 = *v41;
          do
          {
            v51 = v41;
            v41 = v48;
            *v51 = *v48;
            v51[2] = v49;
            if (!v47)
            {
              break;
            }

            v47 = (v47 - 1) >> 1;
            v48 = &v18[2 * v47];
            v49 = *(v48 + 2);
          }

          while (v49 > v40);
          *v41 = v50;
        }

        v41[2] = v40;
      }

LABEL_33:
      v21 -= 2;
      v25 = v37-- > 2;
      if (!v25)
      {
        goto LABEL_48;
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  return result;
}

uint64_t sub_1AE736F4C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v6 = *a2;
  v7 = a2[1];
  if (v7 - *a2 != a3[1] - *a3)
  {
    __assert_rtn("conditionalProbability", "BaseLanguageModel.cpp", 138, "tokens.size() == tokensMetadata.size()");
  }

  if (v7 != v6)
  {
    v8 = a6;
    v9 = a3;
    v10 = 0;
    v65 = *a6;
    while (1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24 * v10 + 8) - *(v6 + 24 * v10)) >> 3) != (*(*v9 + 24 * v10 + 8) - *(*v9 + 24 * v10)) >> 1)
      {
        __assert_rtn("conditionalProbability", "BaseLanguageModel.cpp", 140, "tokens[candidateTokens].size() == tokensMetadata[candidateTokens].size()");
      }

      v70 = v10;
      __p = 0;
      v77 = 0;
      v78 = 0;
      v12 = *a4;
      v11 = a4[1];
      v74 = 0;
      v75 = 0;
      __src = 0;
      if (v11 != v12)
      {
        if (((v11 - v12) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      *v8 = v65;
      v14 = (v6 + 24 * v10);
      v13 = *v14;
      if (v14[1] != *v14)
      {
        break;
      }

      v16 = 0;
LABEL_74:
      v61 = *(a5 + 8);
      if (v61 >= *(a5 + 16))
      {
        v62 = sub_1AE692CA8(a5, &__p);
        v9 = a3;
      }

      else
      {
        *v61 = 0;
        v61[1] = 0;
        v61[2] = 0;
        if (v16 != __p)
        {
          if (((v16 - __p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1AE5CBB70();
        }

        v62 = v61 + 3;
        *(a5 + 8) = v61 + 3;
        v9 = a3;
        v10 = v70;
      }

      *(a5 + 8) = v62;
      if (__src)
      {
        v74 = __src;
        operator delete(__src);
      }

      if (__p)
      {
        operator delete(__p);
      }

      ++v10;
      v6 = *a2;
      if (v10 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
      {
        return 1;
      }
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v72 = 1065353216;
      if (*(*(*v9 + 24 * v10) + 2 * v17) == 1)
      {
        v18 = (*(*a1 + 24))(a1, v13 + 24 * v17, &__src, &v72, v8);
        v16 = v77;
        v15 = v78;
        if ((v18 & 1) == 0)
        {
          if (v77 >= v78)
          {
            v19 = __p;
            v20 = v77 - __p;
            v25 = (v77 - __p) >> 2;
            v26 = v25 + 1;
            if ((v25 + 1) >> 62)
            {
              sub_1AE5CBB70();
            }

            if ((v78 - __p) >> 1 > v26)
            {
              v26 = (v78 - __p) >> 1;
            }

            if (v78 - __p >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v27 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              if (!(v27 >> 62))
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v28 = (4 * v25);
            v15 = 0;
            *v28 = 0;
            v16 = v28 + 1;
LABEL_40:
            memcpy(0, v19, v20);
            __p = 0;
            v78 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v77 = 0;
            ++v16;
          }

          v10 = v70;
          goto LABEL_43;
        }

        v10 = v70;
      }

      if (v16 >= v15)
      {
        v19 = __p;
        v20 = v16 - __p;
        v21 = (v16 - __p) >> 2;
        v22 = v21 + 1;
        if ((v21 + 1) >> 62)
        {
          sub_1AE5CBB70();
        }

        if ((v15 - __p) >> 1 > v22)
        {
          v22 = (v15 - __p) >> 1;
        }

        if (v15 - __p >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          if (!(v23 >> 62))
          {
            operator new();
          }

          sub_1AE5CB09C();
        }

        v24 = (4 * v21);
        v15 = 0;
        *v24 = v72;
        v16 = v24 + 1;
        goto LABEL_40;
      }

      *v16++ = v72;
LABEL_43:
      v77 = v16;
      if ((*(*(*v9 + 24 * v10) + 2 * v17 + 1) & 1) == 0)
      {
        v29 = (*(*a2 + 24 * v10) + 24 * v17);
        v31 = *v29;
        v30 = v29[1];
        v32 = v30 - v31;
        v33 = (v30 - v31) >> 2;
        if (v33 >= 1)
        {
          v34 = v74;
          if (v75 - v74 >= v32)
          {
            if (v31 != v30)
            {
              if ((v32 - 4) < 0x1C)
              {
                goto LABEL_97;
              }

              if ((v74 - v31) < 0x20)
              {
                goto LABEL_97;
              }

              v39 = ((v32 - 4) >> 2) + 1;
              v40 = 4 * (v39 & 0x7FFFFFFFFFFFFFF8);
              v41 = v74 + 16;
              v42 = (v31 + 4);
              v43 = v39 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v44 = *v42;
                *(v41 - 1) = *(v42 - 1);
                *v41 = v44;
                v41 += 2;
                v42 += 2;
                v43 -= 8;
              }

              while (v43);
              v34 += v40;
              v31 = (v31 + v40);
              if (v39 != (v39 & 0x7FFFFFFFFFFFFFF8))
              {
LABEL_97:
                do
                {
                  v45 = *v31++;
                  *v34 = v45;
                  v34 += 4;
                }

                while (v31 != v30);
              }
            }

            v74 = v34;
            v10 = v70;
            goto LABEL_12;
          }

          v35 = (v74 - __src) >> 2;
          v36 = v35 + v33;
          if (v36 >> 62)
          {
            sub_1AE5CBB70();
          }

          v37 = v75 - __src;
          if ((v75 - __src) >> 1 > v36)
          {
            v36 = v37 >> 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v38 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 62))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          v46 = 4 * v35;
          v47 = (v46 + v32);
          if ((v32 - 4) >= 0x1C)
          {
            v48 = v46;
            if ((v74 - __src - v31) < 0x20)
            {
              goto LABEL_70;
            }

            v49 = ((v32 - 4) >> 2) + 1;
            v50 = 4 * (v49 & 0x7FFFFFFFFFFFFFF8);
            v48 = (v46 + v50);
            v51 = (v31 + 4);
            v52 = (v46 + 16);
            v53 = v49 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v54 = *v51;
              *(v52 - 1) = *(v51 - 1);
              *v52 = v54;
              v51 += 2;
              v52 += 2;
              v53 -= 8;
            }

            while (v53);
            if (v49 != (v49 & 0x7FFFFFFFFFFFFFF8))
            {
              v31 = (v31 + v50);
              goto LABEL_70;
            }
          }

          else
          {
            v48 = v46;
            do
            {
LABEL_70:
              v55 = *v31++;
              *v48++ = v55;
            }

            while (v48 != v47);
          }

          v56 = v74 - v34;
          memcpy((v46 + v32), v34, v74 - v34);
          v57 = v47 + v56;
          v74 = v34;
          v58 = __src;
          v59 = v34 - __src;
          v60 = (v46 - (v34 - __src));
          memcpy(v60, __src, v59);
          __src = v60;
          v74 = v57;
          v75 = 0;
          v8 = a6;
          v9 = a3;
          v10 = v70;
          if (v58)
          {
            operator delete(v58);
          }
        }
      }

LABEL_12:
      ++v17;
      v13 = *(*a2 + 24 * v10);
      if (v17 >= 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v10 + 8) - v13) >> 3))
      {
        goto LABEL_74;
      }
    }
  }

  return 1;
}

void sub_1AE737654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22)
{
  v24 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v24;
    operator delete(v24);
  }

  *(a10 + 8) = v22;
  if (__p)
  {
    operator delete(__p);
    v25 = a22;
    if (!a22)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = a22;
    if (!a22)
    {
      goto LABEL_5;
    }
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE7376D0(uint64_t a1, unsigned int **a2, uint64_t *a3, float *a4, uint64_t a5)
{
  v6 = a4;
  v9 = *a3;
  v8 = a3[1];
  v31 = 0;
  v32 = 0;
  __p = 0;
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    v12 = 0.0;
LABEL_27:
    v24 = __exp10(v12);
LABEL_28:
    *v6 = v24;
    v25 = 1;
    v26 = __p;
    if (__p)
    {
LABEL_29:
      v31 = v26;
      operator delete(v26);
    }
  }

  else
  {
    v12 = 0.0;
    while (1)
    {
      v14 = *v10;
      v29 = 1.0;
      if (((*(*a1 + 16))(a1, v14, &__p, &v29, a5) & 1) == 0)
      {
        break;
      }

      v15 = v29;
      v16 = log10f(v29);
      if (v15 <= 0.0)
      {
        v16 = -10.0;
      }

      v12 = v16 + v12;
      if (v12 >= -10.0)
      {
        v17 = v31;
        if (v31 < v32)
        {
          *v31 = v14;
          v13 = (v17 + 4);
        }

        else
        {
          v18 = __p;
          v19 = v31 - __p;
          v20 = (v31 - __p) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            sub_1AE5CBB70();
          }

          v22 = v32 - __p;
          if ((v32 - __p) >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 62))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          *(4 * v20) = v14;
          v13 = 4 * v20 + 4;
          memcpy(0, v18, v19);
          __p = 0;
          v31 = v13;
          v32 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v31 = v13;
        if (++v10 != v11)
        {
          continue;
        }
      }

      v24 = 0.0;
      v6 = a4;
      if (v12 > -10.0)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v25 = 0;
    v26 = __p;
    if (__p)
    {
      goto LABEL_29;
    }
  }

  return v25;
}

void sub_1AE73799C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE7379CC(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a3 + 8) - *a3;
  v12 = *(a1 + 104);
  if (v11 == *(a1 + 112) - v12 && !memcmp(*a3, v12, *(a3 + 8) - *a3))
  {
LABEL_6:
    _H0 = *(*(a1 + 16) + 2 * a2);
    __asm { FCVT            S0, H0 }

    goto LABEL_7;
  }

  if (!(*(**(a1 + 8) + 32))(*(a1 + 8), v10, v11 >> 2))
  {
    result = (*(*a1 + 120))(a1, a3, a5);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  (*(**(a1 + 8) + 72))(*(a1 + 8));
LABEL_7:
  *a4 = _S0;
  return 1;
}

void sub_1AE737AFC(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  *a1 = &unk_1F2432368;
  *(a1 + 24) = 0u;
  v8 = *(a6 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1AE68CD74(&theDict, *a2);
  if (!theDict)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Value = CFDictionaryGetValue(theDict, @"MontrealModelType");
  if (!Value || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(Value)))
  {
    LOBYTE(v20) = 0;
    v23 = 0;
    if (qword_1EB5E0F28 != -1)
    {
      dispatch_once(&qword_1EB5E0F28, &unk_1F2430290);
    }

    v12 = qword_1EB5E0F20;
    if (os_log_type_enabled(qword_1EB5E0F20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_1AE5C8000, v12, OS_LOG_TYPE_ERROR, "No model type configured; falling back on the legacy montreal model", &__p, 2u);
    }

    CFDictionaryGetValue(*a2, @"URL");
    sub_1AE61D968();
  }

  sub_1AE621740(&v20, Value);
  v23 = 1;
  if (v22 < 0)
  {
    if (v21 != 4)
    {
      if (v21 != 6)
      {
        goto LABEL_34;
      }

      v11 = v20;
      goto LABEL_18;
    }

    if (*v20 == 808333686)
    {
LABEL_32:
      CFDictionaryGetValue(*a2, @"URL");
      sub_1AE61D968();
    }

    if (*v20 != 808333942)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v22 != 4)
    {
      if (v22 != 6)
      {
        goto LABEL_34;
      }

      v11 = &v20;
LABEL_18:
      v13 = *v11;
      v14 = v11[2];
      if (v13 == 1701998403 && v14 == 19788)
      {
        if (a7)
        {
          operator new();
        }

        operator new();
      }

LABEL_34:
      v17 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v18 = std::string::append(&v25, "'", 1uLL);
      __p = *v18;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      sub_1AE660DB0(v17, &__p);
      __cxa_throw(v17, &unk_1F2432910, sub_1AE64FC40);
    }

    if (v20 != 808333942)
    {
      if (v20 != 808333686)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  operator new();
}

void sub_1AE739610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ED9AC850);
  sub_1AE622290(v69);
  sub_1AE622290(v68);
  sub_1AE622290(a23 + 40);
  v71 = *(a23 + 16);
  if (v71)
  {
    *(a23 + 24) = v71;
    operator delete(v71);
  }

  v72 = *a15;
  *a15 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE739C08()
{
  v7 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED9AC858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC858))
  {
    sub_1AE5CC990(__p, "NeuralNetworkForwardPassLimit");
    qword_1EB5E0B18 = sub_1AE6F78A4(__p);
    byte_1EB5E0F30 = v2;
    if (v6 < 0)
    {
      operator delete(*__p);
    }

    __cxa_guard_release(&qword_1ED9AC858);
  }

  if (byte_1EB5E0F30 != 1)
  {
    return 16;
  }

  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v0 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "NeuralNetworkForwardPassLimit";
    v4 = 2048;
    v5 = qword_1EB5E0B18;
    _os_log_impl(&dword_1AE5C8000, v0, OS_LOG_TYPE_DEFAULT, "Setting configuration value %s=%zu (overridden by user preferences)", __p, 0x16u);
  }

  return qword_1EB5E0B18;
}

void sub_1AE739D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1ED9AC858);
  _Unwind_Resume(a1);
}

void sub_1AE739D98(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 3)
  {
    if (!a2)
    {
LABEL_19:
      *(a1 + 8) = v3;
      return;
    }

    v9 = v3 + 8 * a2;
    if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v11 = v3 + 8;
      v12 = v10 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v11 - 8) = 0;
        *v11 = 0;
        *(v11 - 4) = 0;
        *(v11 + 4) = 0;
        v11 += 16;
        v12 -= 2;
      }

      while (v12);
      if (v10 == (v10 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_18;
      }

      v3 += 8 * (v10 & 0x3FFFFFFFFFFFFFFELL);
    }

    do
    {
      *v3 = 0;
      *(v3 + 4) = 0;
      v3 += 8;
    }

    while (v3 != v9);
LABEL_18:
    v3 = v9;
    goto LABEL_19;
  }

  v5 = (v3 - *a1) >> 3;
  v6 = v5 + a2;
  if ((v5 + a2) >> 61)
  {
    sub_1AE5CBB70();
  }

  v7 = v4 - *a1;
  if (v7 >> 2 > v6)
  {
    v6 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v13 = 8 * v5;
  v14 = 8 * v5 + 8 * a2;
  if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
  {
    v18 = 8 * v5;
    do
    {
LABEL_26:
      *v18 = 0;
      *(v18 + 4) = 0;
      v18 += 8;
    }

    while (v18 != v14);
    goto LABEL_27;
  }

  v15 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
  v16 = v13 + 8;
  v17 = v15 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    *(v16 - 8) = 0;
    *v16 = 0;
    *(v16 - 4) = 0;
    *(v16 + 4) = 0;
    v16 += 16;
    v17 -= 2;
  }

  while (v17);
  if (v15 != (v15 & 0x3FFFFFFFFFFFFFFELL))
  {
    v18 = v13 + 8 * (v15 & 0x3FFFFFFFFFFFFFFELL);
    goto LABEL_26;
  }

LABEL_27:
  v19 = *a1;
  v20 = *(a1 + 8) - *a1;
  v21 = v13 - v20;
  memcpy((v13 - v20), *a1, v20);
  *a1 = v21;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0;
  if (v19)
  {

    operator delete(v19);
  }
}

void sub_1AE739F88(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef *a4, uint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = sub_1AE73A6BC(a4, a5);
  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v7 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_INFO))
  {
    v8 = MEMORY[0x1B2705500](*(a5 + 176));
    v9 = 138412546;
    v10 = v8;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1AE5C8000, v7, OS_LOG_TYPE_INFO, "assembling monolithic cache for locale='%@': cacheSize=%lu", &v9, 0x16u);
  }

  operator new();
}

void sub_1AE73A190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AE73A864(&a9);
  MEMORY[0x1B2706400](v9, v10);
  _Unwind_Resume(a1);
}

void sub_1AE73A1BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CFDictionaryRef *a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = sub_1AE73A6BC(a5, a6);
  LOBYTE(v20[0]) = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MontrealSparseCacheSize", @"com.apple.LanguageModeling", v20);
  if (!LOBYTE(v20[0]))
  {
    AppIntegerValue = *(a6 + 384);
    if (!AppIntegerValue)
    {
      if (!CFDictionaryContainsKey(*a5, @"MontrealSparseCacheSize"))
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_1AE5CC990(valuePtr, "Montreal resource is missing the 'MontrealSparseCacheSize' configuration parameter.");
        sub_1AE660DB0(exception, valuePtr);
        __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
      }

      Value = CFDictionaryGetValue(*a5, @"MontrealSparseCacheSize");
      v14 = Value;
      if (!Value)
      {
        __assert_rtn("extractSize", "LMMontrealCacheFactory.hpp", 28, "false && missing dictionary entry");
      }

      v15 = CFGetTypeID(Value);
      if (v15 != CFNumberGetTypeID())
      {
        __assert_rtn("extractSize", "LMMontrealCacheFactory.hpp", 33, "false && wrong type for dictionary entry");
      }

      *valuePtr = 0;
      if (!CFNumberGetValue(v14, kCFNumberIntType, valuePtr))
      {
        __assert_rtn("extractSize", "LMMontrealCacheFactory.hpp", 39, "false && Failed to parse CFNumber as kCFNumberIntType");
      }

      AppIntegerValue = *valuePtr;
    }
  }

  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v16 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_INFO))
  {
    v17 = MEMORY[0x1B2705500](*(a6 + 176));
    *valuePtr = 138412802;
    *&valuePtr[4] = v17;
    *&valuePtr[12] = 2048;
    *&valuePtr[14] = v11;
    v22 = 2048;
    v23 = AppIntegerValue;
    _os_log_impl(&dword_1AE5C8000, v16, OS_LOG_TYPE_INFO, "assembling segregated cache for locale='%@': fullCacheSize=%lu, sparseCacheSize=%lu", valuePtr, 0x20u);
  }

  v20[0] = a2;
  v20[1] = a3;
  v18 = a4[1];
  v20[2] = *a4;
  v20[3] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20[4] = v11;
  v20[5] = AppIntegerValue;
  operator new();
}

void sub_1AE73A62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  _Unwind_Resume(a1);
}

CFIndex sub_1AE73A6BC(CFDictionaryRef *a1, uint64_t a2)
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"MontrealFullCacheSize", @"com.apple.LanguageModeling", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    result = *(a2 + 380);
    if (!result)
    {
      if (!CFDictionaryContainsKey(*a1, @"MontrealFullCacheSize"))
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_1AE5CC990(&v9, "Montreal resource is missing the 'MontrealFullCacheSize' configuration parameter.");
        sub_1AE660DB0(exception, &v9);
        __cxa_throw(exception, &unk_1F2432910, sub_1AE64FC40);
      }

      Value = CFDictionaryGetValue(*a1, @"MontrealFullCacheSize");
      if (!Value)
      {
        __assert_rtn("extractSize", "LMMontrealCacheFactory.hpp", 28, "false && missing dictionary entry");
      }

      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 != CFNumberGetTypeID())
      {
        __assert_rtn("extractSize", "LMMontrealCacheFactory.hpp", 33, "false && wrong type for dictionary entry");
      }

      LODWORD(v9) = 0;
      if (!CFNumberGetValue(v6, kCFNumberIntType, &v9))
      {
        __assert_rtn("extractSize", "LMMontrealCacheFactory.hpp", 39, "false && Failed to parse CFNumber as kCFNumberIntType");
      }

      return v9;
    }
  }

  return result;
}

void sub_1AE73A82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t sub_1AE73A864(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE73A8E4(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1AE73A91C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 72))(v2);
}

uint64_t sub_1AE73AA30(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 64))(v2);
}

uint64_t sub_1AE73AB54(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 56))(v2);
}

uint64_t sub_1AE73AC60(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 48))(v2);
}

uint64_t sub_1AE73AD6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 40))(v2);
}

uint64_t sub_1AE73AE78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 32))(v2);
}

uint64_t sub_1AE73AF84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      sub_1AE60819C();
    }

    (*(*v3 + 48))(&v8);
    v4 = v8;
    v8 = 0;
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    v2 = *(a1 + 40);
  }

  return (*(*v2 + 24))(v2);
}

uint64_t sub_1AE73B090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      sub_1AE60819C();
    }

    v7 = a4;
    v8 = a2;
    v9 = a3;
    (*(*v6 + 48))(&v18);
    v10 = v18;
    v18 = 0;
    v11 = *(a1 + 40);
    *(a1 + 40) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v12 = v18;
      v18 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    v5 = *(a1 + 40);
    a3 = v9;
    a2 = v8;
    a4 = v7;
  }

  v13 = *a4;
  *a4 = 0;
  v17 = v13;
  result = (*(*v5 + 16))(v5, a2, a3, &v17);
  v15 = v17;
  v17 = 0;
  if (v15)
  {
    v16 = result;
    (*(*v15 + 8))(v15);
    return v16;
  }

  return result;
}

void sub_1AE73B208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE73B244(void *a1)
{
  *a1 = &unk_1F2430628;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3 == a1 + 1)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73B334(void *a1)
{
  *a1 = &unk_1F2430628;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3 == a1 + 1)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

uint64_t sub_1AE73B410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73B670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  *v8 = &unk_1F24305B0;
  sub_1AE73BACC(v8 + 2);
  sub_1AE73B6D0(va1);
  MEMORY[0x1B2706400](v8, v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE73B6D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_1AE73B750(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F24305B0;
  a1[1] = a3;
  a1[2] = 0;
  v5 = (a1 + 2);
  a1[3] = 0;
  a1[4] = 0;
  if (a2)
  {
    v8 = 1;
    do
    {
      v10 = *(a4 + 24);
      if (!v10)
      {
        sub_1AE60819C();
      }

      (*(*v10 + 48))(&v24);
      v12 = a1[3];
      v11 = a1[4];
      if (v12 >= v11)
      {
        v15 = *v5;
        v16 = v12 - *v5;
        v17 = v16 >> 3;
        v18 = (v16 >> 3) + 1;
        if (v18 >> 61)
        {
          sub_1AE5CBB70();
        }

        v19 = v11 - v15;
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

          sub_1AE5CB09C();
        }

        v21 = v24;
        v24 = 0;
        *(8 * v17) = v21;
        v14 = 8 * v17 + 8;
        memcpy(0, v15, v16);
        a1[2] = 0;
        a1[3] = v14;
        a1[4] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        v13 = v24;
        v24 = 0;
        *v12 = v13;
        v14 = (v12 + 8);
      }

      a1[3] = v14;
      v22 = v24;
      v24 = 0;
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      v9 = v8++;
    }

    while (v9 < a2);
  }

  return a1;
}

void sub_1AE73B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  sub_1AE73BACC(v10);
  _Unwind_Resume(a1);
}

void *sub_1AE73B984(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE73BED0;
    v6[4] = &unk_1E7A2F5C0;
    v6[5] = v6;
    v7 = xmmword_1E7A2F5A8;
    v8 = 0;
    qword_1EB5E0AB8 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AB8;
    if (qword_1EB5E0AB8)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AB8;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkIncrementalStateCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC558 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE73BACC(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE73BB60(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_1AE73BBE8(a1, a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    __assert_rtn("getProbability", "LRUStateBaseCache.hpp", 138, "false && client requested a probability for a context that's not in the cache");
  }

  v5 = *(**(a1[2] + 8 * v4) + 24);

  return v5();
}

uint64_t sub_1AE73BBE8(void *a1, char *__s2, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[2];
  v5 = a1[3] - v4;
  if (v5)
  {
    v8 = 0;
    v9 = 4 * a3;
    v10 = v5 >> 3;
    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    while (1)
    {
      v12 = *(v4 + 8 * v8);
      v13 = *(v12 + 8);
      if (a3 == (*(v12 + 16) - v13) >> 2 && !memcmp(v13, __s2, v9))
      {
        break;
      }

      if (v11 == ++v8)
      {
        LODWORD(v8) = -1;
        goto LABEL_13;
      }
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      return v8;
    }

LABEL_13:
    v14 = 0;
    v5 = 0;
    do
    {
      v16 = *(v4 + 8 * v14);
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      if (v18 == v17)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v19 = v18 - 1;
        v20 = v9 - 4;
        do
        {
          if (*v19 != *&__s2[v20])
          {
            break;
          }

          ++v15;
          if (v19 == v17)
          {
            break;
          }

          --v19;
          v21 = v20;
          v20 -= 4;
        }

        while (v21);
      }

      if (v15 > v5)
      {
        v5 = v15;
        LODWORD(v8) = v14;
      }

      ++v14;
    }

    while (v14 != v11);
  }

  else
  {
    LODWORD(v8) = -1;
  }

  if (v5 < a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1AE73BD20(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_1AE73BBE8(a1, a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    __assert_rtn("populateProbabilities", "LRUStateBaseCache.hpp", 125, "false && client requested probabilities for a context that's not in the cache");
  }

  v5 = *(**(a1[2] + 8 * v4) + 16);

  return v5();
}

uint64_t sub_1AE73BDB8(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_1AE73BBE8(a1, a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return *(*(a1[2] + 8 * v4) + 8);
  }
}

BOOL sub_1AE73BE20(uint64_t a1, void *__s2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24) - v3;
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 4 * a3;
  v9 = v4 >> 3;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  while (1)
  {
    v11 = *(v3 + 8 * v7);
    v12 = *(v11 + 8);
    if (a3 == (*(v11 + 16) - v12) >> 2 && !memcmp(v12, __s2, v8))
    {
      break;
    }

    if (v10 == ++v7)
    {
      return 0;
    }
  }

  return v7 >= 0;
}

uint64_t sub_1AE73BED0()
{
  result = _sl_dlopen();
  qword_1EB5E0AB8 = result;
  return result;
}

float sub_1AE73BF44(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AE73BBE8(a1, a2, a3);
  if ((v6 & 0x80000000) != 0)
  {
    __assert_rtn("getProbability", "LRUIncrementalStateCache.hpp", 190, "false && client requested a probability for a context that's not in the cache");
  }

  v7 = v6;
  v8 = *(a1[2] + 8 * v6);
  v9 = (*(*v8 + 24))(v8, a4);
  v10 = *(a1[2] + 8 * v7);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return v9;
}

void sub_1AE73C0E8(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1AE73BBE8(a1, a2, a3);
  if ((v8 & 0x80000000) != 0)
  {
    __assert_rtn("populateProbabilities", "LRUIncrementalStateCache.hpp", 174, "false && client requested probabilities for a context that's not in the cache");
  }

  v9 = v8;
  v10 = *(a1[2] + 8 * v8);
  (*(*v10 + 16))(v10, a4, a5);
  v11 = *(a1[2] + 8 * v9);
  v13 = *(v11 + 8);
  v12 = *(v11 + 16);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }
}

uint64_t sub_1AE73C2AC(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_1AE73BBE8(a1, a2, a3);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1[2] + 8 * v4);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    sub_1AE73C530(a1[5], 1);
    __assert_rtn("getLastIncrementalState", "LRUIncrementalStateCache.hpp", 153, "index >= 0");
  }

  return 0;
}

void sub_1AE73C4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1B2706400](v3, 0x10E1C406EE1D4F3);
  sub_1AE650924(va);
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE73C530(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v4 = off_1ED9AC568;
  v11 = off_1ED9AC568;
  if (!off_1ED9AC568)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = sub_1AE73C868;
    v7[3] = &unk_1E7A2F5E8;
    v7[4] = &v8;
    sub_1AE73C868(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  return v4(a1, a2);
}

uint64_t sub_1AE73C628(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v4 = off_1ED9AC560;
  v11 = off_1ED9AC560;
  if (!off_1ED9AC560)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = sub_1AE73C720;
    v7[3] = &unk_1E7A2F610;
    v7[4] = &v8;
    sub_1AE73C720(v7);
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v6 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v6);
  }

  return v4(a1, a2);
}

void *sub_1AE73C720(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE73BED0;
    v6[4] = &unk_1E7A2F5C0;
    v6[5] = v6;
    v7 = xmmword_1E7A2F5A8;
    v8 = 0;
    qword_1EB5E0AB8 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AB8;
    if (qword_1EB5E0AB8)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AB8;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkAppendIncrementalState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC560 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE73C868(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0AB8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE73BED0;
    v6[4] = &unk_1E7A2F5C0;
    v6[5] = v6;
    v7 = xmmword_1E7A2F5A8;
    v8 = 0;
    qword_1EB5E0AB8 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0AB8;
    if (qword_1EB5E0AB8)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0AB8;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkResetIncrementalState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED9AC568 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE73C9B0(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_1AE73BBE8(a1, a2, a3);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1[2] + 8 * v4);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v6 != v7)
    {
      if (((v6 - v7) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    sub_1AE73C530(a1[5], 0);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, a1[5]);
    operator new();
  }

  return 0;
}

void sub_1AE73CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, const void *a12)
{
  MEMORY[0x1B2706400](v13, 0x10E1C406EE1D4F3);
  sub_1AE650924(&a12);
  if (__p)
  {
    operator delete(__p);
  }

  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AE73CD40(uint64_t a1, void *__src, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v7 = *a4;
  if (!*a4)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 16);
  if (v10 == v9 || a6 == 0)
  {
    return 0;
  }

  v13 = a3;
  v15 = 0;
  v16 = 4 * a3;
  if ((v9 - v10) <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v9 - v10;
  }

  while (1)
  {
    v18 = v10[v15];
    v19 = *(v18 + 8);
    if (v13 == (*(v18 + 16) - v19) >> 2 && !memcmp(v19, __src, v16))
    {
      break;
    }

    if (v17 == ++v15)
    {
      goto LABEL_26;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v20 = *(a1 + 16);
      v21 = *(a1 + 24) - v20;
      if (!v21)
      {
        break;
      }

      v22 = 0;
      v23 = v21 >> 3;
      v24 = v23 <= 1 ? 1 : v23;
      while (1)
      {
        v25 = *(v20 + 8 * v22);
        v26 = *(v25 + 8);
        if (v13 == (*(v25 + 16) - v26) >> 2 && !memcmp(v26, __src, 4 * v13))
        {
          break;
        }

        if (v24 == ++v22)
        {
          return 1;
        }
      }

      if (v22 < 0)
      {
        break;
      }

      v27 = *(v20 + 8 * v22);
      result = 1;
      *(v27 + 40) = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
      if (!--v13)
      {
        return result;
      }
    }

    return 1;
  }

LABEL_26:
  v28 = v10 + 1;
  if (v10 + 1 != v9)
  {
    v29 = *v10;
    v30 = v10 + 1;
    do
    {
      v32 = *v30++;
      v31 = v32;
      if (*(v32 + 40) < *(v29 + 40))
      {
        v29 = v31;
        v10 = v28;
      }

      v28 = v30;
    }

    while (v30 != v9);
  }

  if (v10 == v9)
  {
    __assert_rtn("getOldestEntry", "LRUStateBaseCache.hpp", 31, "entryIterator != m_cache.end()");
  }

  v33 = *v10;
  v34 = *(v33 + 8);
  v35 = (*(v33 + 16) - v34) >> 2;
  if (*(v33 + 16) != v34 && v35 <= v13)
  {
    if (v35 <= 1)
    {
      v35 = 1;
    }

    v47 = __src;
    while (1)
    {
      v49 = *v34++;
      v48 = v49;
      v50 = *v47++;
      if (v48 != v50)
      {
        break;
      }

      if (!--v35)
      {
        return 0;
      }
    }
  }

  *a4 = 0;
  sub_1AE6EC330((v33 + 8), __src, __src + v16, v13);
  add = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL);
  v38 = *(v33 + 32);
  *(v33 + 32) = v7;
  *(v33 + 40) = add + 1;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  (*(*v33 + 32))(v33, a5, a6);
  while (1)
  {
    v39 = *(a1 + 16);
    v40 = *(a1 + 24) - v39;
    if (!v40)
    {
      break;
    }

    v41 = 0;
    v42 = v40 >> 3;
    v43 = v42 <= 1 ? 1 : v42;
    while (1)
    {
      v44 = *(v39 + 8 * v41);
      v45 = *(v44 + 8);
      if (v13 == (*(v44 + 16) - v45) >> 2 && !memcmp(v45, __src, 4 * v13))
      {
        break;
      }

      if (v43 == ++v41)
      {
        return 1;
      }
    }

    if (v41 < 0)
    {
      break;
    }

    v46 = *(v39 + 8 * v41);
    result = 1;
    *(v46 + 40) = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
    if (!--v13)
    {
      return result;
    }
  }

  return 1;
}

void sub_1AE73D048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE73D080(void *a1)
{
  *a1 = &unk_1F24309E8;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[5] = 0;
  *a1 = &unk_1F24305B0;
  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[2];
    if (v5 != v4)
    {
      do
      {
        v8 = *--v5;
        v7 = v8;
        *v5 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      while (v5 != v4);
      v6 = a1[2];
    }

    a1[3] = v4;
    operator delete(v6);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73D1AC(void *a1)
{
  *a1 = &unk_1F24309E8;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[5] = 0;
  *a1 = &unk_1F24305B0;
  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[2];
    if (v5 != v4)
    {
      do
      {
        v8 = *--v5;
        v7 = v8;
        *v5 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      while (v5 != v4);
      v6 = a1[2];
    }

    a1[3] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1AE73D2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN2LML24assembleIncrementalCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73D404(_Unwind_Exception *a1)
{
  v4 = sub_1AE73D420(v2);
  MEMORY[0x1B2706400](v4, v1);
  _Unwind_Resume(a1);
}

void *sub_1AE73D420(void *a1)
{
  *a1 = &unk_1F24304C0;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_1AE73D4A0(void *result, const void *a2, uint64_t a3)
{
  *(result + 5) = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  if (2 * a3)
  {
    return memmove(*(result + 6), a2, 2 * a3);
  }

  return result;
}

float sub_1AE73D4D4(uint64_t a1, unsigned int a2)
{
  *(a1 + 40) = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  _H0 = *(*(a1 + 48) + 2 * a2);
  __asm { FCVT            S0, H0 }

  return result;
}

void *sub_1AE73D4FC(void *result, void *__dst, uint64_t a3)
{
  *(result + 5) = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  if (a3)
  {
    return memmove(__dst, *(result + 6), 2 * a3);
  }

  return result;
}

void sub_1AE73D530(void *a1)
{
  *a1 = &unk_1F2430460;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    MEMORY[0x1B27063D0](v2, 0x1000C80BDFB0063);
  }

  *a1 = &unk_1F24304C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73D60C(void *a1)
{
  *a1 = &unk_1F2430460;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    MEMORY[0x1B27063D0](v2, 0x1000C80BDFB0063);
  }

  *a1 = &unk_1F24304C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE73D6D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2430968;
  a2[1] = v2;
  return result;
}

__n128 sub_1AE73D774(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24308F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE73D820(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_1AE73D898(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73DC24(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_1AE73DCA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE73B6D0(va);
  MEMORY[0x1B2706400](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE73DD50(uint64_t a1)
{
  (*(**(a1 + 16) + 80))(*(a1 + 16));
  v2 = *(**(a1 + 8) + 80);

  return v2();
}

uint64_t sub_1AE73DDCC(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v3 = 8;
  if (v2)
  {
    v3 = 16;
  }

  v4 = *(**(a1 + v3) + 72);

  return v4();
}

uint64_t sub_1AE73DE78(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v3 = 8;
  if (v2)
  {
    v3 = 16;
  }

  v4 = *(**(a1 + v3) + 64);

  return v4();
}

uint64_t sub_1AE73DF3C(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v3 = 8;
  if (v2)
  {
    v3 = 16;
  }

  v4 = *(**(a1 + v3) + 48);

  return v4();
}

uint64_t sub_1AE73DFE0(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v3 = 8;
  if (v2)
  {
    v3 = 16;
  }

  v4 = *(**(a1 + v3) + 40);

  return v4();
}

uint64_t sub_1AE73E084(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v3 = 8;
  if (v2)
  {
    v3 = 16;
  }

  v4 = *(**(a1 + v3) + 32);

  return v4();
}

uint64_t sub_1AE73E128(uint64_t a1)
{
  v2 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v3 = 8;
  if (v2)
  {
    v3 = 16;
  }

  v4 = *(**(a1 + v3) + 24);

  return v4();
}

uint64_t sub_1AE73E1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v13 = *a4;
  if (!v12)
  {
    v17 = *(a1 + 8);
    *a4 = 0;
    v19 = v13;
    result = (*(*v17 + 16))(v17, a2, a3, &v19, a5, a6);
    v16 = v19;
    v19 = 0;
    if (!v16)
    {
      return result;
    }

    goto LABEL_5;
  }

  v14 = *(a1 + 16);
  *a4 = 0;
  v20 = v13;
  result = (*(*v14 + 16))(v14, a2, a3, &v20, a5, a6);
  v16 = v20;
  v20 = 0;
  if (v16)
  {
LABEL_5:
    v18 = result;
    (*(*v16 + 8))(v16);
    return v18;
  }

  return result;
}

void sub_1AE73E31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE73E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    JUMPOUT(0x1AE73E350);
  }

  JUMPOUT(0x1AE73E32CLL);
}

void sub_1AE73E36C(void *a1)
{
  *a1 = &unk_1F2430868;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73E474(void *a1)
{
  *a1 = &unk_1F2430868;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sub_1AE73E568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73E678(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  v7 = (a1 + 6);
  v6 = a1[6];
  a1[5] = v5;
  v8 = a1[8] - v6;
  v9 = (a1[7] - v6) >> 3;
  if (v8 >> 3 <= v9)
  {
    if (v8 >> 3 < v9)
    {
      a1[7] = a1[8];
    }
  }

  else
  {
    sub_1AE739D98((a1 + 6), (v8 >> 3) - v9);
  }

  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      __asm { FCMP            H0, #0 }

      if (!(_NF ^ _VF | _ZF))
      {
        v19 = a1[6];
        v18 = a1[7];
        v20 = v18 - v19;
        v21 = (v18 - v19) >> 3;
        if (v21 > v11)
        {
          v12 = &v19[8 * v11];
          *v12 = v10;
          *(v12 + 2) = _H0;
        }

        else
        {
          v22 = a1[8];
          if (v18 >= v22)
          {
            v23 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1AE5CBB70();
            }

            v24 = v22 - v19;
            if (v24 >> 2 > v23)
            {
              v23 = v24 >> 2;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFF8)
            {
              v25 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              if (!(v25 >> 61))
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v26 = 8 * v21;
            *v26 = v10;
            *(v26 + 4) = _H0;
            v27 = 8 * v21 + 8;
            memcpy(0, v19, v20);
            a1[6] = 0;
            a1[7] = v27;
            a1[8] = 0;
            if (v19)
            {
              operator delete(v19);
            }

            a1[7] = v27;
          }

          else
          {
            *v18 = v10;
            *(v18 + 4) = _H0;
            a1[7] = v18 + 8;
          }
        }

        ++v11;
      }

      ++v10;
    }

    while (a3 != v10);
    v28 = v11;
    v29 = a1[6];
    v30 = (a1[7] - v29) >> 3;
    if (v11 > v30)
    {

      sub_1AE739D98(v7, v11 - v30);
      return;
    }
  }

  else
  {
    v28 = 0;
    v29 = a1[6];
    v30 = (a1[7] - v29) >> 3;
  }

  if (v30 > v28)
  {
    a1[7] = v29 + 8 * v28;
  }
}

float sub_1AE73E8A0(void *a1, unsigned int a2)
{
  a1[5] = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  v2 = a1[6];
  v3 = a1[7];
  result = 0.0;
  if (v3 != v2)
  {
    v5 = (v3 - v2) >> 3;
    do
    {
      v6 = v5 >> 1;
      v7 = &v2[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 2);
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v2 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    if (v2 != v3 && *v2 == a2)
    {
      _H0 = *(v2 + 2);
      __asm { FCVT            S0, H0 }
    }
  }

  return result;
}

__int16 sub_1AE73E910@<H0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>)
{
  a1[5] = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  if (2 * a3 >= 1)
  {
    bzero(a2, 2 * a3);
  }

  v6 = a1[6];
  for (i = a1[7]; v6 != i; *(a2 + v8) = result)
  {
    result = *(v6 + 2);
    v8 = *v6;
    v6 += 2;
  }

  return result;
}

void sub_1AE73E980(void *a1)
{
  *a1 = &unk_1F2430808;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F24304C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73EA4C(void *a1)
{
  *a1 = &unk_1F2430808;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1F24304C0;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE73EB88(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_1AE73BBE8(a1, a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *(a1[2] + 8 * v4);
  *(v5 + 40) = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL) + 1;
  return *(v5 + 32);
}

uint64_t sub_1AE73EBDC(uint64_t a1, void *__src, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    return 0;
  }

  v7 = *a4;
  if (!*a4)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 16);
  if (v10 == v9 || a6 == 0)
  {
    return 0;
  }

  v15 = 0;
  v16 = 4 * a3;
  if ((v9 - v10) <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v9 - v10;
  }

  while (1)
  {
    v18 = v10[v15];
    v19 = *(v18 + 8);
    if (a3 == (*(v18 + 16) - v19) >> 2 && !memcmp(v19, __src, v16))
    {
      break;
    }

    if (v17 == ++v15)
    {
      goto LABEL_16;
    }
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    return 0;
  }

LABEL_16:
  v20 = v10 + 1;
  if (v10 + 1 != v9)
  {
    v21 = *v10;
    v22 = v10 + 1;
    do
    {
      v24 = *v22++;
      v23 = v24;
      if (*(v24 + 40) < *(v21 + 40))
      {
        v21 = v23;
        v10 = v20;
      }

      v20 = v22;
    }

    while (v22 != v9);
  }

  if (v10 == v9)
  {
    __assert_rtn("getOldestEntry", "LRUStateBaseCache.hpp", 31, "entryIterator != m_cache.end()");
  }

  v25 = *v10;
  *a4 = 0;
  sub_1AE6EC330((v25 + 8), __src, __src + v16, a3);
  add = atomic_fetch_add(&qword_1ED9AC7E0, 1uLL);
  v27 = *(v25 + 32);
  *(v25 + 32) = v7;
  *(v25 + 40) = add + 1;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  (*(*v25 + 32))(v25, a5, a6);
  return 1;
}

void sub_1AE73EDD8(void *a1)
{
  *a1 = &unk_1F24305B0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73EEA4(void *a1)
{
  *a1 = &unk_1F24305B0;
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = a1[2];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[2];
    }

    a1[3] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE73EF5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN2LML23assembleSegregatedCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS1_10shared_ptrINS_21MontrealTokenIDMapperEEERKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73F09C(_Unwind_Exception *a1)
{
  v4 = sub_1AE73D420(v2);
  MEMORY[0x1B2706400](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE73F0C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2430718;
  a2[1] = v2;
  return result;
}

void sub_1AE73F154(void *a1)
{
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_1AE73F1D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_1AE73F24C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F24306A8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void sub_1AE73F310(void *a1)
{
  *a1 = &unk_1F24306A8;
  v1 = a1[4];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE73F3B8(void *result)
{
  *result = &unk_1F24306A8;
  v1 = result[4];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_1AE73F44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73F5FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE73B6D0(va);
  MEMORY[0x1B2706400](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE73F628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN2LML23assembleMonolithicCacheIDhEENSt3__110unique_ptrINS_18MontrealStateCacheIT_EENS1_14default_deleteIS5_EEEEmmRKNS_8ResourceERKNS_10ParametersEENKUlvE_clEvEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE73F768(_Unwind_Exception *a1)
{
  v4 = sub_1AE73D420(v2);
  MEMORY[0x1B2706400](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE73F78C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F24303E0;
  a2[1] = v2;
  return result;
}

__n128 sub_1AE73F828(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2430360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE73F8FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2430310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE73F998(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F24302C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

os_log_t sub_1AE73FA0C()
{
  result = os_log_create("com.apple.LanguageModeling", "BaseLanguageModel");
  qword_1EB5E0F20 = result;
  return result;
}

BOOL sub_1AE73FA3C(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 292) == 1 && *(a1 + 288) == a2)
  {
    return 0;
  }

  if (*(a1 + 80) == a2)
  {
    return 1;
  }

  v3 = *(a1 + 8) + 24 * a2;
  v4 = *(v3 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *v3;
    v4 = *(*(a1 + 8) + 24 * a2 + 8);
    if (v4 < 3)
    {
      return 0;
    }
  }

  else if (v4 < 3)
  {
    return 0;
  }

  v5 = v4 + v3;
  v6 = *(v5 - 3);
  v7 = *(v5 - 1);
  return v6 == 38626 && v7 == 129;
}

uint64_t sub_1AE73FB60(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= (a2[1] - *a2) >> 2)
  {
    __assert_rtn("isWordBoundaryIndex", "CoreLMSuffixCoder.cpp", 76, "index < encoding.size()");
  }

  v3 = *(*a2 + 4 * a3);
  v4 = *(a1 + 8) + 24 * v3;
  v5 = *(v4 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v4 = *v4;
    v5 = *(*(a1 + 8) + 24 * v3 + 8);
    if (v5 < 3)
    {
      return *(a1 + 76) == v3;
    }
  }

  else if (v5 < 3)
  {
    return *(a1 + 76) == v3;
  }

  v6 = v5 + v4;
  v7 = *(v6 - 3);
  v8 = *(v6 - 1);
  v9 = v7 == 38626 && v8 == 129;
  if (!v9 || *(a1 + 292) == 1 && *(a1 + 288) == v3)
  {
    return *(a1 + 76) == v3;
  }

  return 1;
}

uint64_t sub_1AE73FC6C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % v2;
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(a1 + 88) + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (*(v6 + 4) == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
            {
              return 0;
            }

            v6 = *v6;
            if (!v6)
            {
              return 0;
            }
          }
        }

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (*(v6 + 4) == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

unsigned int *sub_1AE73FD70(unsigned int *result, int a2)
{
  switch(a2)
  {
    case 2:
      return result[20];
    case 1:
      return result[19];
    case 0:
      return result[17];
  }

  return result;
}

BOOL sub_1AE73FDA0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (v3)
  {
    if (*(a1 + 292) != 1 || *(a1 + 288) != a2)
    {
      return sub_1AE7402E8(a1, a2, a3);
    }

    if ((*(a1 + 64) | 2) == 2)
    {
      return sub_1AE73FDF4(a1, a3);
    }
  }

  return 1;
}

BOOL sub_1AE73FDF4(uint64_t a1, uint64_t a2)
{
  if (sub_1AE70D964((a1 + 392), a2))
  {
    return 0;
  }

  v6 = *(a2 + 23);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = (v6 & 0x80u) == 0 ? *(a2 + 23) : *(a2 + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 328);
  if (v10 != 2)
  {
    goto LABEL_42;
  }

  if (v6 < 0)
  {
    v11 = *(a2 + 8);
    if (v8 == 1)
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a2 + 23);
    if (v6 == 1)
    {
      return 0;
    }
  }

  if ((*(a1 + 360) & 1) == 0)
  {
    sub_1AE64BF84();
  }

  v12 = (a1 + 336);
  v13 = *(a1 + 359);
  if (*(a1 + 359) < 0)
  {
    v15 = *(a1 + 344);
    if (v11 != v15 + 1)
    {
      goto LABEL_27;
    }

    v14 = *v12;
  }

  else
  {
    if (v11 != v13 + 1)
    {
LABEL_25:
      *__p = *v12;
      v44 = *(a1 + 352);
      goto LABEL_28;
    }

    v14 = (a1 + 336);
    v15 = *(a1 + 359);
  }

  v16 = v9 >= v15;
  v17 = v9 - v15;
  if (v16)
  {
    v18 = *a2;
    if ((v6 & 0x80u) == 0)
    {
      v18 = a2;
    }

    if (!memcmp(&v18[v17], v14, v15))
    {
      return 0;
    }
  }

  if ((v13 & 0x80) == 0)
  {
    goto LABEL_25;
  }

  v15 = *(a1 + 344);
LABEL_27:
  sub_1AE5DBF1C(__p, *v12, v15);
  v6 = *(a2 + 23);
  v8 = *(a2 + 8);
  v7 = *(a2 + 23);
LABEL_28:
  if (v44 >= 0)
  {
    v19 = HIBYTE(v44);
  }

  else
  {
    v19 = __p[1];
  }

  if (v7 >= 0)
  {
    v20 = v6;
  }

  else
  {
    v20 = v8;
  }

  if (v20 < v19 || ((v21 = *a2, v7 >= 0) ? (v22 = a2) : (v22 = *a2), v44 >= 0 ? (v23 = __p) : (v23 = __p[0]), memcmp(&v22[v20 - v19], v23, v19)))
  {
LABEL_42:
    if (v7 < 0)
    {
      sub_1AE5DBF1C(__dst, *a2, v8);
    }

    else
    {
      *__dst = *a2;
      v46 = *(a2 + 16);
    }

    if (v10 != 2)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (*(a1 + 360) == 1)
  {
    if (*(a1 + 359) < 0)
    {
      sub_1AE5DBF1C(theString, *(a1 + 336), *(a1 + 344));
      v6 = *(a2 + 23);
      v21 = *a2;
      v8 = *(a2 + 8);
      v7 = *(a2 + 23);
    }

    else
    {
      *theString = *v12;
      v42 = *(a1 + 352);
    }
  }

  else
  {
    HIBYTE(v42) = 0;
    LOBYTE(theString[0]) = 0;
  }

  v36 = HIBYTE(v42);
  if (v42 < 0)
  {
    v36 = theString[1];
  }

  v37 = v20 - v36;
  if (v7 >= 0)
  {
    v38 = v6;
  }

  else
  {
    v38 = v8;
  }

  if (v7 >= 0)
  {
    v39 = a2;
  }

  else
  {
    v39 = v21;
  }

  if (v38 >= v37)
  {
    v40 = v37;
  }

  else
  {
    v40 = v38;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v40 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v46) = v40;
  if (v40)
  {
    memmove(__dst, v39, v40);
  }

  *(__dst + v40) = 0;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(theString[0]);
  }

LABEL_46:
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_48:
  if (v46 >= 0)
  {
    v24 = __dst;
  }

  else
  {
    v24 = __dst[0];
  }

  if (v24)
  {
    if (v46 >= 0)
    {
      v25 = HIBYTE(v46);
    }

    else
    {
      v25 = __dst[1];
    }

    v26 = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
    theString[0] = v26;
    if (!v26)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v26 = 0;
    theString[0] = 0;
  }

  v28 = *(a1 + 56);
  Length = CFStringGetLength(v26);
  v30 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], Length, v26);
  CFStringLowercase(MutableCopy, v28);
  v32 = theString[0];
  v33 = *(a1 + 56);
  v34 = CFStringGetLength(theString[0]);
  v35 = CFStringCreateMutableCopy(v30, v34, v32);
  CFStringCapitalize(v35, v33);
  if (CFStringCompare(theString[0], v35, 0))
  {
    v4 = 0;
    if (!v35)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v4 = CFStringCompare(theString[0], MutableCopy, 0) != kCFCompareEqualTo;
  if (v35)
  {
LABEL_62:
    CFRelease(v35);
  }

LABEL_63:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (theString[0])
  {
    CFRelease(theString[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(__dst[0]);
  }

  return v4;
}

void sub_1AE740234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AE7402E8(uint64_t a1, unsigned int a2, void *__s2)
{
  v3 = *(__s2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = __s2[1];
  }

  if (!v3)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v5) >> 3) <= a2)
  {
    __assert_rtn("fragmentString", "SentencePieceCoder.hpp", 107, "fragmentID < m_tokenIDToFragmentStrMap.size()");
  }

  v6 = (v5 + 24 * a2);
  if (*(v6 + 23) < 0)
  {
    v9 = __s2;
    sub_1AE5DBF1C(&v18, *v6, *(v6 + 1));
    __s2 = v9;
    v4 = v9[23];
  }

  else
  {
    v7 = *v6;
    v19 = *(v6 + 2);
    v18 = v7;
  }

  v10 = SHIBYTE(v19);
  v11 = *(&v18 + 1);
  if (v19 >= 0)
  {
    v11 = HIBYTE(v19);
  }

  if ((v4 & 0x80) == 0)
  {
    v12 = v4;
    if (v11 >= v4)
    {
      goto LABEL_23;
    }

LABEL_15:
    if ((v4 & 0x80u) == 0)
    {
      v13 = __s2;
    }

    else
    {
      v13 = *__s2;
    }

    v14 = v18;
    if (v19 >= 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18;
    }

    v16 = v11;
    goto LABEL_27;
  }

  v12 = __s2[1];
  if (v11 < v12)
  {
    goto LABEL_15;
  }

  __s2 = *__s2;
LABEL_23:
  v14 = v18;
  if (v19 >= 0)
  {
    v13 = &v18;
  }

  else
  {
    v13 = v18;
  }

  v15 = __s2;
  v16 = v12;
LABEL_27:
  result = memcmp(v13, v15, v16) == 0;
  if (v10 < 0)
  {
    v17 = result;
    operator delete(v14);
    return v17;
  }

  return result;
}

void *sub_1AE740448@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[5] - result[4]) >> 3) <= a2)
  {
    __assert_rtn("fragmentStringWithDelimiters", "SentencePieceCoder.hpp", 99, "fragmentID < m_tokenIDToFragmentStrMap.size()");
  }

  v4 = result[1] + 24 * a2;
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 8);

    return sub_1AE5DBF1C(a3, v6, v7);
  }

  else
  {
    v5 = *v4;
    *(a3 + 16) = *(v4 + 16);
    *a3 = v5;
  }

  return result;
}

void *sub_1AE7404D8@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result[4];
  if (0xAAAAAAAAAAAAAAABLL * ((result[5] - v4) >> 3) <= a2)
  {
    __assert_rtn("fragmentString", "SentencePieceCoder.hpp", 107, "fragmentID < m_tokenIDToFragmentStrMap.size()");
  }

  v5 = (v4 + 24 * a2);
  if (*(v5 + 23) < 0)
  {
    v7 = *v5;
    v8 = *(v5 + 1);

    return sub_1AE5DBF1C(a3, v7, v8);
  }

  else
  {
    v6 = *v5;
    *(a3 + 16) = *(v5 + 2);
    *a3 = v6;
  }

  return result;
}

void sub_1AE740564(_BYTE *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v269 = *MEMORY[0x1E69E9840];
  v5 = v214;
  sub_1AE7432E8(a1, a2, a3, v214);
  v6 = HIBYTE(v215);
  if (v215 < 0)
  {
    v5 = v214[0];
    v6 = v214[1];
  }

  v7 = v6;
  *v205 = a4;
  do
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(v5 + --v7);
  }

  while (v8 == 32);
  if (v7 == -1)
  {
LABEL_14:
    if (SHIBYTE(v215) < 0)
    {
      sub_1AE5DBF1C(a4, v214[0], v214[1]);
    }

    else
    {
      *a4 = *v214;
      *(a4 + 16) = v215;
    }

    goto LABEL_20;
  }

  if (v6 >= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v6;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v9;
  if (v6)
  {
    memmove(a4, v5, v9);
  }

  *(a4 + v9) = 0;
LABEL_20:
  i = a4;
  if (a1[360] != 1)
  {
    goto LABEL_313;
  }

  v11 = a1 + 336;
  if (a1[359] < 0)
  {
    v11 = *v11;
  }

  v12 = strlen(v11);
  v13 = *(a4 + 23);
  v14 = v13 >= 0 ? a4 : *a4;
  v15 = v13 >= 0 ? *(a4 + 23) : *(a4 + 8);
  if (!v15 || !v12)
  {
    goto LABEL_313;
  }

  v16 = &v14[v15];
  v17 = v15 - 1;
  v18 = v14;
  while (1)
  {
    v19 = v16;
    v20 = v11;
    if (v18 != v16)
    {
      v21 = v17;
      v22 = v12 - 1;
      v20 = v11;
      v19 = v18;
      do
      {
        if (*v19 != *v20)
        {
          break;
        }

        ++v19;
        ++v20;
        if (!v21)
        {
          break;
        }

        v23 = v22--;
        --v21;
      }

      while (v23);
    }

    if (v20 == &v11[v12])
    {
      break;
    }

    ++v18;
    --v17;
    if (v18 == v16)
    {
      goto LABEL_313;
    }
  }

  if (v18 == v19)
  {
    goto LABEL_313;
  }

  v249 = 0u;
  v250 = 0u;
  __p = 0u;
  v24 = v14;
  v210 = v11;
  v207 = v12 - 1;
  alloc = &v11[v12];
  while (1)
  {
    v25 = sub_1AE743FCC(&__p, v14, v24, v18);
    v26 = v250.i64[1];
    v27 = v250.i16[0];
    v28 = v250.i64[0] + v250.i64[1];
    v29 = (v250.i64[0] + v250.i64[1]) >> 12;
    v30 = __p.i64[1];
    v31 = v249;
    v32 = v249 - __p.i64[1];
    if (v249 == __p.i64[1])
    {
      v37 = 0;
      v34 = v250.i64[0] >> 12;
    }

    else
    {
      v33 = *(__p.i64[1] + 8 * v29) + (v28 & 0xFFF);
      v34 = v250.i64[0] >> 12;
      v35 = 8 * (v250.i64[0] >> 12);
      v36 = *(__p.i64[1] + v35) + (v250.i16[0] & 0xFFF);
      v37 = v33 == v36 ? 0 : v33 + ((8 * v29 - v35) << 9) - (v36 + *(__p.i64[1] + 8 * v29)) + *(__p.i64[1] + v35);
    }

    v211 = v25;
    if (v37 >= v250.i64[1] - v37)
    {
      v47 = (v32 << 9) - 1;
      v48 = v249 - __p.i64[1];
      if (v249 == __p.i64[1])
      {
        v47 = 0;
      }

      v49 = v47 - v28;
      if (v49 <= 1)
      {
        v50 = (v249 == __p.i64[1]) - v49 + 2;
        if ((v50 & 0xFFF) != 0)
        {
          v51 = (v50 >> 12) + 1;
        }

        else
        {
          v51 = v50 >> 12;
        }

        if (v51 >= v34)
        {
          v52 = v34;
        }

        else
        {
          v52 = v51;
        }

        if (v51 <= v34)
        {
          for (v250.i64[0] -= v52 << 12; v52; --v52)
          {
            v240.__r_.__value_.__r.__words[0] = *__p.i64[1];
            __p.i64[1] += 8;
            sub_1AE74463C(&__p, &v240);
          }
        }

        else
        {
          v53 = v51 - v52;
          v54 = v48 >> 3;
          if (v51 - v52 > ((*(&v249 + 1) - __p.i64[0]) >> 3) - (v48 >> 3))
          {
            if ((*(&v249 + 1) - __p.i64[0]) >> 2 <= v53 + v54)
            {
              v55 = v53 + v54;
            }

            else
            {
              v55 = (*(&v249 + 1) - __p.i64[0]) >> 2;
            }

            if (!v55)
            {
              operator new();
            }

            if (!(v55 >> 61))
            {
              operator new();
            }

LABEL_418:
            sub_1AE5CB09C();
          }

          if (v53)
          {
            if (*(&v249 + 1) != v249)
            {
              operator new();
            }

            operator new();
          }

          v250.i64[0] -= v52 << 12;
          for (i = *v205; v52; --v52)
          {
            v240.__r_.__value_.__r.__words[0] = *__p.i64[1];
            __p.i64[1] += 8;
            sub_1AE74463C(&__p, &v240);
          }
        }

        v26 = v250.i64[1];
        v30 = __p.i64[1];
        v31 = v249;
        LOWORD(v28) = v250.i16[0] + v250.i16[4];
        v29 = (v250.i64[0] + v250.i64[1]) >> 12;
      }

      v106 = (v30 + 8 * v29);
      if (v31 == v30)
      {
        v107 = 0;
      }

      else
      {
        v107 = (*v106 + (v28 & 0xFFF));
      }

      v108 = v26 - v37;
      if (v26 - v37 > 1)
      {
        v109 = 2;
        v110 = "";
        v112 = v106;
        v113 = v107;
LABEL_191:
        v115 = &v107[-v109 - *v106];
        if (v115 < 1)
        {
          v118 = 4095 - v115;
          v116 = &v106[-(v118 >> 12)];
          v117 = (*v116 + (~v118 & 0xFFF));
        }

        else
        {
          v116 = &v106[v115 >> 12];
          v117 = (*v116 + (v115 & 0xFFF));
        }

        v119 = v116;
        for (j = v117; j != v107; ++v250.i64[1])
        {
          *v113++ = *j;
          if (&v113[-*v112] == 4096)
          {
            v129 = v112[1];
            ++v112;
            v113 = v129;
          }

          if (&(++j)[-*v119] == 4096)
          {
            v130 = v119[1];
            ++v119;
            j = v130;
          }
        }

        if (v109 < v108)
        {
          v121 = *v106;
          v122 = &v107[-v108 - *v106];
          if (v122 < 1)
          {
            v144 = 4095 - v122;
            v123 = &v106[-(v144 >> 12)];
            v124 = (*v123 + (~v144 & 0xFFF));
            if (v123 == v116)
            {
              goto LABEL_235;
            }

LABEL_198:
            v125 = *v116;
            if (*v116 != v117)
            {
              while (1)
              {
                v126 = (v107 - v121);
                if (v117 - v125 >= v126)
                {
                  v127 = v126;
                }

                else
                {
                  v127 = v117 - v125;
                }

                v117 -= v127;
                v107 -= v127;
                if (v127)
                {
                  memmove(v107, v117, v127);
                }

                if (v117 == v125)
                {
                  break;
                }

                v128 = *--v106;
                v121 = v128;
                v107 = v128 + 4096;
              }

              v121 = *v106;
              if ((*v106 + 4096) == v107)
              {
                v131 = v106[1];
                ++v106;
                v121 = v131;
                v107 = v131;
              }
            }

            for (k = v116 - 1; k != v123; --k)
            {
              v138 = *k;
              v139 = (*k + 4096);
              while (1)
              {
                v140 = (v107 - v121);
                if (v139 - v138 >= v140)
                {
                  v141 = v140;
                }

                else
                {
                  v141 = v139 - v138;
                }

                v139 -= v141;
                v107 -= v141;
                if (v141)
                {
                  memmove(v107, v139, v141);
                }

                if (v139 == v138)
                {
                  break;
                }

                v142 = *--v106;
                v121 = v142;
                v107 = v142 + 4096;
              }

              v121 = *v106;
              if ((*v106 + 4096) == v107)
              {
                v143 = v106[1];
                ++v106;
                v121 = v143;
                v107 = v143;
              }
            }

            v133 = (*k + 4096);
            if (v133 != v124)
            {
              v134 = *v106;
              while (1)
              {
                v135 = &v107[-v134];
                if (v133 - v124 >= v135)
                {
                  v136 = v135;
                }

                else
                {
                  v136 = v133 - v124;
                }

                v133 -= v136;
                v107 -= v136;
                if (v136)
                {
                  memmove(v107, v133, v136);
                }

                if (v133 == v124)
                {
                  break;
                }

                v137 = *--v106;
                v134 = v137;
                v107 = (v137 + 4096);
              }

              goto LABEL_243;
            }

            i = *v205;
          }

          else
          {
            v123 = &v106[v122 >> 12];
            v124 = (*v123 + (v122 & 0xFFF));
            if (v123 != v116)
            {
              goto LABEL_198;
            }

LABEL_235:
            if (v124 == v117)
            {
              i = *v205;
            }

            else
            {
              while (1)
              {
                v145 = (v107 - v121);
                if (v117 - v124 >= v145)
                {
                  v146 = v145;
                }

                else
                {
                  v146 = v117 - v124;
                }

                v117 -= v146;
                v107 -= v146;
                if (v146)
                {
                  memmove(v107, v117, v146);
                }

                if (v117 == v124)
                {
                  break;
                }

                v147 = *--v106;
                v121 = v147;
                v107 = v147 + 4096;
              }

LABEL_243:
              if ((*v106 + 4096) == v107)
              {
                v148 = v106[1];
                ++v106;
                v107 = v148;
              }

              i = *v205;
            }
          }
        }

        if (v110 != "'s")
        {
          v151 = *v106;
          v150 = v106 - 1;
          v149 = v151;
          while (1)
          {
            v152 = &v107[-v149];
            if (v110 - "'s" >= v152)
            {
              v153 = v152;
            }

            else
            {
              v153 = v110 - "'s";
            }

            v110 -= v153;
            if (v153)
            {
              memmove(&v107[-v153], v110, v153);
            }

            if (v110 == "'s")
            {
              break;
            }

            v154 = *v150--;
            v149 = v154;
            v107 = (v154 + 4096);
          }
        }

        goto LABEL_257;
      }

      v109 = v26 - v37;
      v110 = &aS_1[v108];
      v111 = v108;
      v112 = v106;
      v113 = v107;
      do
      {
        *v113++ = aS_1[v111];
        if (&v113[-*v112] == 4096)
        {
          v114 = v112[1];
          ++v112;
          v113 = v114;
        }

        ++v250.i64[1];
        ++v111;
      }

      while (v111 != 2);
      if (v108)
      {
        goto LABEL_191;
      }
    }

    else
    {
      if (v250.i64[0] <= 1uLL)
      {
        v206 = v37;
        v38 = (v32 << 9) - 1;
        if (v249 == __p.i64[1])
        {
          v38 = 0;
        }

        v39 = (v249 == __p.i64[1]) - v250.i64[0] + 2;
        if ((v39 & 0xFFF) != 0)
        {
          v40 = (v39 >> 12) + 1;
        }

        else
        {
          v40 = v39 >> 12;
        }

        v41 = (v38 - v28) >> 12;
        if (v40 >= v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v40;
        }

        if (v40 <= v41)
        {
          for (v250.i64[0] |= v42 << 12; v42; --v42)
          {
            v240.__r_.__value_.__r.__words[0] = *(v249 - 8);
            *&v249 = v249 - 8;
            sub_1AE7447C4(&__p, &v240);
          }
        }

        else
        {
          v43 = v40 - v42;
          v44 = *(&v249 + 1) - __p.i64[0];
          v45 = (v249 - __p.i64[1]) >> 3;
          if (v40 - v42 > ((*(&v249 + 1) - __p.i64[0]) >> 3) - v45)
          {
            if (v44 >> 2 <= v43 + v45)
            {
              v46 = v43 + v45;
            }

            else
            {
              v46 = v44 >> 2;
            }

            if (!v46)
            {
              operator new();
            }

            if (!(v46 >> 61))
            {
              operator new();
            }

            goto LABEL_418;
          }

          if (v43)
          {
            if (__p.i64[1] != __p.i64[0])
            {
              operator new();
            }

            operator new();
          }

          v250.i64[0] += v42 << 12;
          for (i = *v205; v42; --v42)
          {
            v240.__r_.__value_.__r.__words[0] = *(v249 - 8);
            *&v249 = v249 - 8;
            sub_1AE7447C4(&__p, &v240);
          }
        }

        v27 = v250.i16[0];
        v30 = __p.i64[1];
        v31 = v249;
        v34 = v250.i64[0] >> 12;
        v37 = v206;
      }

      v56 = (v30 + 8 * v34);
      if (v31 == v30)
      {
        v57 = 0;
      }

      else
      {
        v57 = *v56 + (v27 & 0xFFF);
      }

      if (v37 > 1)
      {
        v60 = v37;
        v65 = 2;
        v59 = "'s";
        v62 = (v30 + 8 * v34);
        v63 = v57;
LABEL_112:
        v66 = v57 - *v56 + v65;
        if (v66 < 1)
        {
          v69 = 4095 - v66;
          v67 = &v56[-(v69 >> 12)];
          v68 = *v67 + (~v69 & 0xFFF);
        }

        else
        {
          v67 = &v56[v66 >> 12];
          v68 = *v67 + (v66 & 0xFFF);
        }

        v70 = v67;
        for (m = v68; m != v57; v250 = vaddq_s64(v250, xmmword_1AE79A700))
        {
          if (v63 == *v62)
          {
            v81 = *--v62;
            v63 = (v81 + 4096);
          }

          if (m == *v70)
          {
            v82 = *--v70;
            m = (v82 + 4096);
          }

          v80 = *--m;
          *--v63 = v80;
        }

        if (v65 < v60)
        {
          v72 = *v56;
          v73 = v57 - *v56 + v60;
          if (v73 < 1)
          {
            v96 = 4095 - v73;
            v74 = &v56[-(v96 >> 12)];
            v75 = *v74 + (~v96 & 0xFFF);
            if (v67 == v74)
            {
              goto LABEL_156;
            }

LABEL_119:
            v76 = *v67 + 4096;
            if (v76 != v68)
            {
              while (1)
              {
                v77 = v72 - v57 + 4096;
                if (v76 - v68 >= v77)
                {
                  v78 = v77;
                }

                else
                {
                  v78 = v76 - v68;
                }

                if (v78)
                {
                  memmove(v57, v68, v78);
                }

                v68 += v78;
                if (v68 == v76)
                {
                  break;
                }

                v79 = v56[1];
                ++v56;
                v72 = v79;
                v57 = v79;
              }

              v57 += v78;
              v72 = *v56;
              if (*v56 + 4096 == v57)
              {
                v83 = v56[1];
                ++v56;
                v72 = v83;
                v57 = v83;
              }
            }

            for (n = v67 + 1; n != v74; ++n)
            {
              v90 = 0;
              v91 = *n;
              while (1)
              {
                v92 = v72 - v57 + 4096;
                if (4096 - v90 >= v92)
                {
                  v93 = v92;
                }

                else
                {
                  v93 = 4096 - v90;
                }

                if (v93)
                {
                  memmove(v57, &v91[v90], v93);
                }

                v90 += v93;
                if (v90 == 4096)
                {
                  break;
                }

                v94 = v56[1];
                ++v56;
                v72 = v94;
                v57 = v94;
              }

              v57 += v93;
              v72 = *v56;
              if (*v56 + 4096 == v57)
              {
                v95 = v56[1];
                ++v56;
                v72 = v95;
                v57 = v95;
              }
            }

            v85 = *n;
            if (*n != v75)
            {
              v86 = *v56;
              while (1)
              {
                v87 = v86 - v57 + 4096;
                if (v75 - v85 >= v87)
                {
                  v88 = v87;
                }

                else
                {
                  v88 = v75 - v85;
                }

                if (v88)
                {
                  memmove(v57, v85, v88);
                }

                v85 += v88;
                if (v85 == v75)
                {
                  break;
                }

                v89 = v56[1];
                ++v56;
                v86 = v89;
                v57 = v89;
              }

              goto LABEL_164;
            }

LABEL_166:
            i = *v205;
          }

          else
          {
            v74 = &v56[v73 >> 12];
            v75 = *v74 + (v73 & 0xFFF);
            if (v67 != v74)
            {
              goto LABEL_119;
            }

LABEL_156:
            if (v68 != v75)
            {
              while (1)
              {
                v97 = v72 - v57 + 4096;
                if (v75 - v68 >= v97)
                {
                  v88 = v97;
                }

                else
                {
                  v88 = v75 - v68;
                }

                if (v88)
                {
                  memmove(v57, v68, v88);
                }

                v68 += v88;
                if (v68 == v75)
                {
                  break;
                }

                v98 = v56[1];
                ++v56;
                v72 = v98;
                v57 = v98;
              }

LABEL_164:
              v57 += v88;
              if (*v56 + 4096 == v57)
              {
                v99 = v56[1];
                ++v56;
                v57 = v99;
              }

              goto LABEL_166;
            }

            i = *v205;
          }
        }

        if (v59 != "")
        {
          v102 = *v56;
          v101 = v56 + 1;
          v100 = v102;
          while (1)
          {
            v103 = v100 - v57 + 4096;
            if ("'s" - v59 + 2 >= v103)
            {
              v104 = v103;
            }

            else
            {
              v104 = "'s" - v59 + 2;
            }

            if (v104)
            {
              memmove(v57, v59, v104);
            }

            v59 += v104;
            if (v59 == "")
            {
              break;
            }

            v105 = *v101++;
            v100 = v105;
            v57 = v105;
          }
        }

        goto LABEL_257;
      }

      v58 = v37;
      v59 = &aS_1[-v37 + 2];
      v60 = v58;
      v61 = -v58;
      v62 = (v30 + 8 * v34);
      v63 = v57;
      do
      {
        if (v63 == *v62)
        {
          v64 = *--v62;
          v63 = (v64 + 4096);
        }

        *--v63 = aS_1[v61 + 1];
        v250 = vaddq_s64(v250, xmmword_1AE79A700);
        --v61;
      }

      while (v61 != -2);
      v65 = v60;
      if (v60)
      {
        goto LABEL_112;
      }
    }

LABEL_257:
    v155 = *(i + 23);
    if ((v155 & 0x80u) == 0)
    {
      v156 = i;
    }

    else
    {
      v156 = *i;
    }

    if ((v155 & 0x80u) != 0)
    {
      v155 = i[1];
    }

    v157 = (v156 + v155);
    v158 = v157;
    v18 = v19;
    v14 = v211;
    if (v19 != v157)
    {
      break;
    }

LABEL_42:
    v24 = v19;
    v19 = v158;
    if (v18 == v158)
    {
      goto LABEL_271;
    }
  }

  v18 = v19;
  do
  {
    v159 = v207;
    v160 = v210;
    v158 = v18;
    do
    {
      if (*v158 != *v160)
      {
        break;
      }

      ++v158;
      ++v160;
      if (v158 == v157)
      {
        break;
      }
    }

    while (v159--);
    if (v160 == alloc)
    {
      goto LABEL_42;
    }

    ++v18;
  }

  while (v18 != v157);
  v24 = v19;
LABEL_271:
  v162 = sub_1AE743FCC(&__p, v211, v24, v157);
  v163 = *(i + 23);
  if (v163 >= 0)
  {
    v164 = *(i + 23);
  }

  else
  {
    v164 = i[1];
  }

  if (v250.i64[1])
  {
    if (v249 != __p.i64[1])
    {
      v165 = (v250.i64[0] >> 9) & 0x7FFFFFFFFFFFF8;
      v166 = (__p.i64[1] + v165);
      v167 = (*(__p.i64[1] + v165) + (v250.i16[0] & 0xFFF));
      v168 = ((v250.i64[0] + v250.i64[1]) >> 9) & 0x7FFFFFFFFFFFF8;
      v169 = *(__p.i64[1] + v168) + ((v250.i64[0] + v250.i64[1]) & 0xFFF);
      if (v169 != v167)
      {
        v170 = ((v250.i16[0] + v250.i16[4]) & 0xFFF) + ((v168 - v165) << 9) - (v250.i16[0] & 0xFFF);
        if (v170)
        {
          memset(&v240, 0, sizeof(v240));
          if (v167 == v169)
          {
            size = 0;
            v172 = 0;
            v173 = 0;
          }

          else
          {
            do
            {
              std::string::push_back(&v240, *v167++);
              if (&v167[-*v166] == 4096)
              {
                v174 = v166[1];
                ++v166;
                v167 = v174;
              }
            }

            while (v167 != v169);
            v173 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
            size = v240.__r_.__value_.__l.__size_;
            v172 = v240.__r_.__value_.__r.__words[0];
          }

          if ((v173 & 0x80u) == 0)
          {
            v179 = &v240;
          }

          else
          {
            v179 = v172;
          }

          if ((v173 & 0x80u) == 0)
          {
            size = v173;
          }

          sub_1AE69EC00(*v205, v170, v164, v179, v179 + size);
          if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v240.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  else
  {
    v175 = *i;
    if (v163 >= 0)
    {
      v176 = i;
    }

    else
    {
      v176 = *i;
    }

    v177 = &v162[-v176];
    if (v164 < &v162[-v176])
    {
      sub_1AE61F754();
    }

    v178 = v176 + v164 - v162;
    if (v178 == -1)
    {
      if (v163 < 0)
      {
        i[1] = v177;
        *(v175 + v177) = 0;
      }

      else
      {
        *(i + 23) = v177 & 0x7F;
        *(i + v177) = 0;
      }
    }

    else
    {
      sub_1AE7444E4(i, v177, v178);
    }
  }

  v180 = __p.i64[1];
  v181 = v249;
  v250.i64[1] = 0;
  v182 = (v249 - __p.i64[1]) >> 3;
  if (v182 >= 3)
  {
    do
    {
      operator delete(*v180);
      v181 = v249;
      v180 = (__p.i64[1] + 8);
      __p.i64[1] = v180;
      v182 = (v249 - v180) >> 3;
    }

    while (v182 > 2);
  }

  i = *v205;
  if (v182 == 1)
  {
    v183 = 2048;
LABEL_306:
    v250.i64[0] = v183;
  }

  else if (v182 == 2)
  {
    v183 = 4096;
    goto LABEL_306;
  }

  if (v180 != v181)
  {
    do
    {
      v184 = *v180++;
      operator delete(v184);
    }

    while (v180 != v181);
    if (v249 != __p.i64[1])
    {
      *&v249 = v249 + ((__p.i64[1] - v249 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p.i64[0])
  {
    operator delete(__p.i64[0]);
  }

LABEL_313:
  if (a1[292] == 1)
  {
    v218 = 0uLL;
    v219 = 0;
    v185 = *(i + 23);
    v186 = *i;
    if (v185 >= 0)
    {
      v186 = i;
    }

    v189 = i[1];
    v188 = i + 1;
    v187 = v189;
    if (v185 >= 0)
    {
      v190 = v185;
    }

    else
    {
      v190 = v187;
    }

    v191 = v186 + v190;
    if (v190)
    {
      v192 = 0;
      while (1)
      {
        if (v190 != v192)
        {
          v193 = v186 + v192;
          if (*(v186 + v192) == 95 && v190 - 1 != v192 && *(v193 + 1) == 85 && v190 - 2 != v192 && *(v186 + v192 + 2) == 95 && v190 - 3 != v192 && *(v186 + v192 + 3) == 67 && v190 - 4 != v192 && *(v186 + v192 + 4) == 65 && v190 - 5 != v192 && *(v186 + v192 + 5) == 80 && v190 - 6 != v192)
          {
            v197 = v186 + v192 + 7;
            if (*(v186 + v192 + 6) == 95)
            {
              break;
            }
          }
        }

        if (v190 == ++v192)
        {
          v197 = v186 + v190;
          v193 = v186 + v190;
          break;
        }
      }

      LOBYTE(v190) = v197 == v191 && v193 == v191 && v197 == v186;
    }

    else
    {
      v193 = v186;
      v197 = v186;
    }

    __p.i64[0] = off_1F2430D78 + 1;
    __p.i64[1] = "_U_CAP_";
    *&v249 = "";
    v250.i64[0] = v186;
    v250.i64[1] = v193;
    v251 = v197;
    v252 = v191;
    v253 = v190;
    v240.__r_.__value_.__r.__words[0] = 0;
    v242 = 0u;
    v243 = 0u;
    v244 = 1;
    *&cf = off_1F2430D78 + 1;
    *(&cf + 1) = "_U_CAP_";
    v234 = "";
    v235 = v186;
    v236 = v193;
    v237 = v197;
    v238 = v191;
    v239 = v190;
    v229 = 0;
    *&v230[24] = 0u;
    v231 = 0u;
    v232 = 1;
    sub_1AE743654(&v220, &cf, &v229);
    if (v229)
    {
      if ((v229 & 1) == 0 && *v229)
      {
        (*v229)(v230, v230, 2);
      }

      v229 = 0;
    }

    if (cf)
    {
      if ((cf & 1) == 0 && *cf)
      {
        (*cf)(&cf + 8, &cf + 8, 2);
      }

      *&cf = 0;
    }

    v200 = v220;
    v218 = v220;
    v219 = v221;
    if (v240.__r_.__value_.__r.__words[0] && (v240.__r_.__value_.__s.__data_[0] & 1) == 0 && *v240.__r_.__value_.__l.__data_)
    {
      v212 = v220;
      (*v240.__r_.__value_.__l.__data_)(&v240.__r_.__value_.__l.__size_, &v240.__r_.__value_.__l.__size_, 2);
      v200 = v212;
    }

    if (__p.i64[0] && (__p.i8[0] & 1) == 0 && *__p.i64[0])
    {
      v213 = v200;
      (*__p.i64[0])(&__p.u64[1], &__p.u64[1], 2);
      v200 = v213;
    }

    v201 = *(&v200 + 1);
    v202 = v200;
    if (*(&v200 + 1) - v200 != 24)
    {
      if (*(&v200 + 1) != v200)
      {
        v216 = 0uLL;
        v217 = 0;
        __n = 1;
        __src = 32;
        std::__sort<std::__less<char,char> &,char *>();
        v225 = __n;
        v224[0] = 0;
        if (__n < 0x11)
        {
          memcpy(v224, &__src, __n);
          *&v249 = v225;
          __p.i64[0] = 0;
          if (v225 < 0x11)
          {
            memcpy(&__p, v224, v225);
            v227 = v249;
            __dst[0] = 0;
            if (v249 <= 0x10)
            {
              memcpy(__dst, &__p, v249);
              v228 = 1;
              v246 = v227;
              v245[0] = 0;
              if (v227 < 0x11)
              {
                memcpy(v245, __dst, v227);
                v247 = 1;
                v255 = v246;
                v254[0] = 0;
                if (v246 < 0x11)
                {
                  memcpy(v254, v245, v246);
                  v256 = 1;
                  v258 = v255;
                  v257[0] = 0;
                  if (v255 < 0x11)
                  {
                    memcpy(v257, v254, v255);
                    v259 = 1;
                    *&v220 = 0;
                    v261 = v258;
                    v260[0] = 0;
                    if (v258 < 0x11)
                    {
                      memcpy(v260, v257, v258);
                      v262 = 1;
                      v264 = v261;
                      v263[0] = 0;
                      if (v261 < 0x11)
                      {
                        memcpy(v263, v260, v261);
                        v265 = 1;
                        v267 = v264;
                        v266[0] = 0;
                        if (v264 < 0x11)
                        {
                          memcpy(v266, v263, v264);
                          v268 = 1;
                          v240.__r_.__value_.__r.__words[2] = v267;
                          v240.__r_.__value_.__r.__words[0] = 0;
                          if (v267 < 0x11)
                          {
                            memcpy(&v240, v266, v267);
                            v241 = 1;
                            operator new();
                          }

                          operator new[]();
                        }

                        operator new[]();
                      }

                      operator new[]();
                    }

                    operator new[]();
                  }

                  operator new[]();
                }

                operator new[]();
              }

              operator new[]();
            }

            operator new[]();
          }

          operator new[]();
        }

        operator new[]();
      }

      *&cf = 0;
      *(&cf + 7) = 0;
      __p = 0uLL;
      *&v249 = 0;
      if (*(*v205 + 23) < 0)
      {
        operator delete(**v205);
        v203 = SBYTE7(v249);
        **v205 = 0;
        *v188 = cf;
        *(v188 + 7) = *(&cf + 7);
        *(*v205 + 23) = 0;
        if (v203 < 0)
        {
          operator delete(__p.i64[0]);
        }
      }

      else
      {
        **v205 = 0;
        *v188 = cf;
        *(v188 + 7) = *(&cf + 7);
        *(*v205 + 23) = 0;
      }
    }

    if (v202)
    {
      while (v201 != v202)
      {
        v204 = *(v201 - 1);
        v201 -= 3;
        if (v204 < 0)
        {
          operator delete(*v201);
        }
      }

      operator delete(v202);
    }
  }

  if (SHIBYTE(v215) < 0)
  {
    operator delete(v214[0]);
  }
}

void sub_1AE742DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  sub_1AE744570(&STACK[0x280]);
  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1AE742DF8()
{
  if (v0)
  {
    operator delete(v0);
  }

  sub_1AE744570(&STACK[0x280]);
  JUMPOUT(0x1AE7432BCLL);
}

void sub_1AE742F18(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE742F24);
  }

  JUMPOUT(0x1AE7432E0);
}

void sub_1AE742FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AE743B20(&a65);
  sub_1AE743B20(&STACK[0x210]);
  sub_1AE743B20(&STACK[0x280]);
  if (v65 >= 0x11 && a51)
  {
    MEMORY[0x1B27063D0](a51, 0x1000C8077774924);
  }

  if (a21 >= 0x11 && a48)
  {
    MEMORY[0x1B27063D0](a48, 0x1000C8077774924);
  }

  if (a47 >= 0x11 && a45)
  {
    MEMORY[0x1B27063D0](a45, 0x1000C8077774924);
  }

  sub_1AE645234(&a27);
  sub_1AE645234(&a31);
  JUMPOUT(0x1AE7432BCLL);
}

void sub_1AE743290(void *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  JUMPOUT(0x1AE7432E0);
}

void sub_1AE7432E8(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 == 1 && *a2 == *(a1 + 68))
  {
    *(a4 + 23) = 5;
    strcpy(a4, "<unk>");
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&v8.__r_.__value_.__r.__words[1] = 0uLL;
    v9 = 0;
    if (4 * a3)
    {
      if (((4 * a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    sub_1AE5E5E2C(a1 + 128, &v8.__r_.__value_.__l.__size_, a4, &v8);
    if (v8.__r_.__value_.__r.__words[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1AE608CE4(&v8, v6);
      if (v7 >= 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = v6[0];
      }

      MEMORY[0x1B2705EB0](exception, v5);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_1AE6089C0(&v8);
    if (v8.__r_.__value_.__l.__size_)
    {
      v8.__r_.__value_.__r.__words[2] = v8.__r_.__value_.__l.__size_;
      operator delete(v8.__r_.__value_.__l.__size_);
    }
  }
}

void sub_1AE7434B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    if ((*(v18 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v18 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v18);
  _Unwind_Resume(exception_object);
}

void sub_1AE743538(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 != a3)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    sub_1AE69E4D0(a1, a1, v7, &v7[v8], v8);
    v4 += 24;
  }

  for (; v4 != a3; v4 += 24)
  {
    v9 = *(a1 + 23);
    if ((v9 & 0x80u) == 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 8);
    }

    sub_1AE69E788(a1, v10 + v9, " ", "", 1uLL);
    v11 = *(a1 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a1 + 8);
    }

    v13 = *(v4 + 23);
    if (v13 >= 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = *v4;
    }

    if (v13 >= 0)
    {
      v15 = *(v4 + 23);
    }

    else
    {
      v15 = *(v4 + 8);
    }

    sub_1AE69E4D0(a1, v12 + v11, v14, &v14[v15], v15);
  }
}

void sub_1AE743630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1AE743654(void **a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v37 = 0;
  v5 = *a2;
  if (*a2)
  {
    v37 = *a2;
    if (v5)
    {
      v38 = *(a2 + 8);
      v39 = *(a2 + 24);
    }

    else
    {
      v6 = a2;
      (*v5)(a2 + 8, &v38, 0);
      a2 = v6;
    }
  }

  v7 = *(a2 + 48);
  v40 = *(a2 + 32);
  v41 = v7;
  v42 = *(a2 + 64);
  v31 = 0;
  v8 = *a3;
  if (*a3)
  {
    v31 = *a3;
    if (v8)
    {
      v32 = *(a3 + 8);
      v33 = *(a3 + 24);
    }

    else
    {
      (*v8)(a3 + 8, &v32, 0);
    }
  }

  v9 = *(a3 + 48);
  v34 = *(a3 + 32);
  v35 = v9;
  v36 = *(a3 + 64);
  v29 = a1;
  v30 = 0;
  while (1)
  {
    v10 = v37;
    v11 = v31;
    if (!v31)
    {
      if ((v37 == 0) | v42 & 1)
      {
        goto LABEL_49;
      }

      goto LABEL_20;
    }

    if (!((v37 == 0) | v42 & 1 | v36 & 1))
    {
      break;
    }

    if (((((v37 == 0) | v42) ^ v36) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_20:
    v12 = *(&v40 + 1) - v40;
    if (*(&v40 + 1) - v40 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      sub_1AE5DB4F0();
    }

    if (v12 > 0x16)
    {
      operator new();
    }

    HIBYTE(v28) = BYTE8(v40) - v40;
    if (*(&v40 + 1) != v40)
    {
      memmove(&__dst, v40, v12);
    }

    *(&__dst + v12) = 0;
    v14 = a1[1];
    v13 = a1[2];
    if (v14 >= v13)
    {
      v16 = *a1;
      v17 = v14 - *a1;
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) + 1;
      if (v18 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v21 = 8 * (v17 >> 3);
      *v21 = __dst;
      *(v21 + 16) = v28;
      v15 = v21 + 24;
      v22 = v21 - v17;
      memcpy((v21 - v17), v16, v17);
      *a1 = v22;
      a1[1] = v15;
      a1[2] = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v14 = __dst;
      *(v14 + 2) = v28;
      v15 = (v14 + 24);
    }

    a1[1] = v15;
    v23 = *(&v41 + 1);
    if (v37)
    {
      v24 = (*((v37 & 0xFFFFFFFFFFFFFFFELL) + 8))(&v38, v41, *(&v41 + 1));
      v23 = *(&v41 + 1);
      if (v24 != *(&v41 + 1))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = *(&v41 + 1);
      v24 = *(&v41 + 1);
    }

    if (v25 == v23 && *(&v40 + 1) == v23)
    {
      v42 = 1;
    }

LABEL_10:
    *&v40 = v41;
    *(&v40 + 1) = v24;
    *&v41 = v25;
  }

  if (*(&v40 + 1) - v40 != *(&v34 + 1) - v34 || memcmp(v40, v34, *(&v40 + 1) - v40) || v41 != v35)
  {
    goto LABEL_20;
  }

LABEL_45:
  if ((v11 & 1) == 0 && *v11)
  {
    (*v11)(&v32, &v32, 2);
    v10 = v37;
  }

  v31 = 0;
LABEL_49:
  if (v10 && (v10 & 1) == 0 && *v10)
  {
    (*v10)(&v38, &v38, 2);
  }

  return a1;
}

void sub_1AE743A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE743A88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void ***a16, uint64_t a17, void (**a18)(void, void, void))
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AE645348(&a16);
  sub_1AE743B20(&a18);
  JUMPOUT(0x1AE743AC0);
}

void (***sub_1AE743AD0(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_1AE743B20(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_1AE743B70(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

char *sub_1AE743BC0(uint64_t a1, char *a2, char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(*a1 + 16);
  v40 = v6;
  v39[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v39, v5, v6);
  if (a3 != a2)
  {
    if (v40 > 0x10)
    {
      while (1)
      {
        v14 = *a2;
        v15 = v39[0];
        v16 = v40;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[v16 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v16 += ~(v16 >> 1);
          if (v20 < v14)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != (v39[0] + v40) && *v15 <= v14)
        {
          break;
        }

        if (++a2 == a3)
        {
LABEL_27:
          a2 = a3;
          break;
        }
      }
    }

    else
    {
      if (!v40)
      {
        return a3;
      }

      while (1)
      {
        v7 = *a2;
        v8 = v39;
        v9 = v40;
        do
        {
          v10 = v9 >> 1;
          v11 = v8 + (v9 >> 1);
          v13 = *v11;
          v12 = v11 + 1;
          v9 += ~(v9 >> 1);
          if (v13 < v7)
          {
            v8 = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        while (v9);
        if (v8 != (v39 + v40) && *v8 <= v7)
        {
          break;
        }

        if (++a2 == a3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (v40 >= 0x11 && v39[0])
  {
    MEMORY[0x1B27063D0](v39[0], 0x1000C8077774924);
  }

  if (a2 != a3)
  {
    if (*(v5 + 6))
    {
      return a2;
    }

    else
    {
      v21 = v5[2];
      if (v21 > 0x10)
      {
        v30 = a2;
        while (1)
        {
          v31 = *v30;
          v32 = *v5;
          v33 = v5[2];
          do
          {
            v34 = v33 >> 1;
            v35 = &v32[v33 >> 1];
            v37 = *v35;
            v36 = v35 + 1;
            v33 += ~(v33 >> 1);
            if (v37 < v31)
            {
              v32 = v36;
            }

            else
            {
              v33 = v34;
            }
          }

          while (v33);
          if (v32 == (*v5 + v21) || *v32 > v31)
          {
            break;
          }

          if (++v30 == a3)
          {
            return a2;
          }
        }
      }

      else
      {
        if (!v21)
        {
          return a2;
        }

        v22 = a2;
        while (1)
        {
          v23 = *v22;
          v24 = v5;
          v25 = v5[2];
          do
          {
            v26 = v25 >> 1;
            v27 = &v24[v25 >> 1];
            v29 = *v27;
            v28 = v27 + 1;
            v25 += ~(v25 >> 1);
            if (v29 < v23)
            {
              v24 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
          if (v24 == v5 + v21 || *v24 > v23)
          {
            break;
          }

          if (++v22 == a3)
          {
            return a2;
          }
        }
      }

      return a2;
    }
  }

  return a3;
}

unsigned __int8 *sub_1AE743E90(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = a1[1];
    if (*a1 != v3)
    {
      while (1)
      {
        if (a2 == a3)
        {
          v4 = *a1;
        }

        else
        {
          v4 = *a1;
          v5 = a2;
          do
          {
            if (*v5 != *v4)
            {
              break;
            }

            ++v5;
            ++v4;
            if (v5 == a3)
            {
              break;
            }
          }

          while (v4 != v3);
        }

        if (v4 == v3)
        {
          break;
        }

        if (++a2 == a3)
        {
          return a3;
        }
      }

      return a2;
    }
  }

  return a3;
}

__int128 *sub_1AE743F14(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *a2 = &unk_1F2430D88;
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == ("N5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEE" & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, ("N5boost9algorithm6detail13first_finderFIPKcNS0_8is_equalEEE" & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

_BYTE *sub_1AE743FCC(int64x2_t *a1, _BYTE *__dst, _BYTE *__src, _BYTE *a4)
{
  v6 = __dst;
  v8 = a1[2].i64[1];
  if (v8)
  {
    v9 = __dst == __src;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v23 = a1->i64[1];
    v24 = a1[2].u64[0];
    v25 = xmmword_1AE79A710;
    do
    {
      *v6 = (*(v23 + ((v24 >> 9) & 0x7FFFFFFFFFFFF8)))[v24 & 0xFFF];
      v23 = a1->i64[1];
      v27 = vaddq_s64(a1[2], v25);
      a1[2] = v27;
      v24 = v27.i64[0];
      if (v27.i64[0] >= 0x2000uLL)
      {
        operator delete(*v23);
        v25 = xmmword_1AE79A710;
        v23 = (a1->i64[1] + 8);
        a1->i64[1] = v23;
        v8 = a1[2].i64[1];
        v24 = a1[2].i64[0] - 4096;
        a1[2].i64[0] = v24;
      }

      else
      {
        v8 = v27.i64[1];
      }

      ++v6;
      if (v8)
      {
        v26 = v6 == __src;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
  }

  if (v8)
  {
    if (v6 != a4)
    {
      v10 = a1->i64[1];
      v11 = a1[2].u64[0];
      do
      {
        v12 = a1[1].i64[0];
        if (v12 == v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = ((v12 - v10) << 9) - 1;
        }

        v14 = a1[2].i64[1] + v11;
        if (v13 == v14)
        {
          v15 = v11 >= 0x1000;
          v16 = v11 - 4096;
          if (!v15)
          {
            v17 = a1[1].i64[1];
            v18 = v17 - a1->i64[0];
            if (v12 - v10 < v18)
            {
              if (v17 != v12)
              {
                operator new();
              }

              operator new();
            }

            v19 = v18 >> 2;
            if (v17 == a1->i64[0])
            {
              v20 = 1;
            }

            else
            {
              v20 = v19;
            }

            if (!(v20 >> 61))
            {
              operator new();
            }

            sub_1AE5CB09C();
          }

          a1[2].i64[0] = v16;
          v29 = *v10;
          a1->i64[1] = (v10 + 1);
          sub_1AE74463C(a1, &v29);
          v10 = a1->i64[1];
          v14 = a1[2].i64[1] + a1[2].i64[0];
        }

        (*(v10 + ((v14 >> 9) & 0x7FFFFFFFFFFFF8)))[v14 & 0xFFF] = *v6;
        v21 = a1[2].u64[0];
        ++a1[2].i64[1];
        *v6 = *(*(a1->i64[1] + ((v21 >> 9) & 0x7FFFFFFFFFFFF8)) + (v21 & 0xFFF));
        v10 = a1->i64[1];
        v22 = vaddq_s64(a1[2], xmmword_1AE79A710);
        a1[2] = v22;
        v11 = v22.i64[0];
        if (v22.i64[0] >= 0x2000uLL)
        {
          operator delete(*v10);
          v10 = (a1->i64[1] + 8);
          a1->i64[1] = v10;
          v11 = a1[2].i64[0] - 4096;
          a1[2].i64[0] = v11;
        }

        ++v6;
      }

      while (v6 != a4);
    }
  }

  else if (v6 != __src)
  {
    if (a4 != __src)
    {
      memmove(v6, __src, a4 - __src);
    }

    return &v6[a4 - __src];
  }

  return a4;
}

void sub_1AE7444B4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE7444E4(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
    }

    if (v4 - a2 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v4 - a2;
    }

    if (v4 - a2 > a3)
    {
      v7 = result;
      memmove(v5 + a2, v5 + a2 + v6, v4 - a2 - v6);
      result = v7;
      LOBYTE(v3) = *(v7 + 23);
    }

    v8 = v4 - v6;
    if ((v3 & 0x80) != 0)
    {
      result[1] = v8;
    }

    else
    {
      *(result + 23) = v8 & 0x7F;
    }

    *(v5 + v8) = 0;
  }

  return result;
}