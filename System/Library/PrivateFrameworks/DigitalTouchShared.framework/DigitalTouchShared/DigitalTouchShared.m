uint64_t ETPHeaderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          *(a1 + 56) |= 4u;
          LODWORD(v43) = 0;
          v27 = [a2 position] + 4;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v43 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v43;
          v38 = 24;
LABEL_66:
          *(a1 + v38) = v25;
          goto LABEL_71;
        }

        if (v13 != 5)
        {
          goto LABEL_41;
        }

        v14 = PBReaderReadString();
        v15 = 32;
LABEL_26:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_71;
      }

      if (v13 == 6)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 56) |= 0x10u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v43 & 0x7F) << v29;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_63;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_63:
        *(a1 + 52) = v35;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_41:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_71;
        }

        *(a1 + 56) |= 2u;
        v43 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v43;
      }

LABEL_71:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 56) |= 8u;
      while (1)
      {
        LOBYTE(v43) = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v43 & 0x7F) << v19;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v11 = v20++ >= 9;
        if (v11)
        {
          v25 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v21;
      }

LABEL_61:
      v38 = 48;
      goto LABEL_66;
    }

    if (v13 == 2)
    {
      *(a1 + 56) |= 1u;
      v43 = 0;
      v36 = [a2 position] + 8;
      if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
      {
        v41 = [a2 data];
        [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v43;
      goto LABEL_71;
    }

    if (v13 != 3)
    {
      goto LABEL_41;
    }

    v14 = PBReaderReadData();
    v15 = 40;
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_248D066A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKViewClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SpriteKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SpriteKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F7A068;
    v6 = 0;
    SpriteKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SpriteKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKViewClass_block_invoke_cold_1();
  }

  getSKViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpriteKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t ETPHeartbeatReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 32) |= 0x10u;
            v40 = 0;
            v20 = [a2 position] + 4;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 24;
            break;
          case 5:
            *(a1 + 32) |= 0x20u;
            v40 = 0;
            v30 = [a2 position] + 4;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 28;
            break;
          case 6:
            *(a1 + 32) |= 4u;
            v40 = 0;
            v16 = [a2 position] + 4;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 16;
            break;
          default:
LABEL_36:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_65;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            *(a1 + 32) |= 1u;
            v40 = 0;
            v18 = [a2 position] + 4;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 8;
            break;
          case 2:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40 & 0x7F) << v23;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_53:
            *(a1 + 12) = v29;
            goto LABEL_65;
          case 3:
            *(a1 + 32) |= 8u;
            v40 = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 20;
            break;
          default:
            goto LABEL_36;
        }
      }

      *(a1 + v34) = v33;
LABEL_65:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

long double HueFromRadians(long double a1)
{
    ;
  }

  return fmod(a1, 6.28318531) / 6.28318531;
}

void RoundViewOriginToViewScale(void *a1)
{
  v8 = a1;
  [v8 frame];
  v2 = v1;
  v4 = v3;
  UIRoundToViewScale();
  v6 = v5;
  UIRoundToViewScale();
  [v8 setFrame:{v6, v7, v2, v4}];
}

void sub_248D08954(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x248D08900);
  }

  _Unwind_Resume(exc_buf);
}

void sub_248D08D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v19 - 56));

  _Unwind_Resume(a1);
}

void sub_248D09094(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_248D0A144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
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

uint64_t _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE9push_backB8ne200100ERKS4_(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(a1, a2);
  }

  else
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE22__construct_one_at_endB8ne200100IJRKS4_EEEvDpOT_(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE5clearB8ne200100Ev(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE16__init_with_sizeB8ne200100IPS4_S8_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_248D0ACD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE16__destroy_vectorclB8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(a1, a2);
  }

  _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278F79DB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEPS5_S7_S7_EET2_RT_T0_T1_S8_(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      v4[1] = 0;
      v4[2] = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIDv2_fNS2_IS4_EEEEEEPS6_EEED2B8ne200100Ev(v8);
  return v4;
}

uint64_t _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIDv2_fNS2_IS4_EEEEEEPS6_EEED2B8ne200100Ev(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEPS5_EclB8ne200100Ev(a1);
  }

  return a1;
}

void _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEPS5_EclB8ne200100Ev(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE16__destroy_vectorclB8ne200100Ev(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE5clearB8ne200100Ev(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE18__assign_with_sizeB8ne200100IPS4_S8_EEvT_T0_l(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE13__vdeallocateEv(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE11__vallocateB8ne200100Em(a1, v10);
    }

    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    _ZNKSt3__111__copy_implclB8ne200100IPNS_6vectorIDv2_fNS_9allocatorIS3_EEEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    _ZNKSt3__111__copy_implclB8ne200100IPNS_6vectorIDv2_fNS_9allocatorIS3_EEEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_(&v18, a2, (a2 + v11), v8);
    a1[1] = _ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEPS5_S7_S7_EET2_RT_T0_T1_S8_(a1, (a2 + v11), a3, a1[1]);
  }
}

void _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE13__vdeallocateEv(uint64_t *a1)
{
  if (*a1)
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE5clearB8ne200100Ev(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **_ZNKSt3__111__copy_implclB8ne200100IPNS_6vectorIDv2_fNS_9allocatorIS3_EEEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_248D0B2A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(void *result, char *__src, char *a3, unint64_t a4)
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

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(v6, v10);
    }

    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
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

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_248D0B4D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE22__construct_one_at_endB8ne200100IJRKS4_EEEvDpOT_(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorINS0_IDv2_fNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne200100Ev();
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
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorINS_6vectorIDv2_fNS1_IS3_EEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
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
  _ZNSt3__114__split_bufferINS_6vectorIDv2_fNS_9allocatorIS2_EEEERNS3_IS5_EEED2Ev(&v14);
  return v8;
}

void sub_248D0B65C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__114__split_bufferINS_6vectorIDv2_fNS_9allocatorIS2_EEEERNS3_IS5_EEED2Ev(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__114__split_bufferINS_6vectorIDv2_fNS_9allocatorIS2_EEEERNS3_IS5_EEED2Ev(uint64_t a1)
{
  _ZNSt3__114__split_bufferINS_6vectorIDv2_fNS_9allocatorIS2_EEEERNS3_IS5_EEE17__destruct_at_endB8ne200100EPS5_(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _ZNSt3__114__split_bufferINS_6vectorIDv2_fNS_9allocatorIS2_EEEERNS3_IS5_EEE17__destruct_at_endB8ne200100EPS5_(uint64_t a1, uint64_t a2)
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

uint64_t ETPTapReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 2;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278F7A118[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t messageTypeFromETPMessageType(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0xFFFFLL;
  }

  else
  {
    return word_248D32CC8[a1 - 1];
  }
}

__CFString *NSStringFromETMessageType(uint64_t a1)
{
  if (a1 < 0xB && ((0x7C7u >> a1) & 1) != 0)
  {
    v2 = off_278F7A130[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%d)", a1];
  }

  return v2;
}

void sub_248D0DF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ETPKissReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_278F7A228[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ETPAngerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          *(a1 + 40) |= 4u;
          v30 = 0;
          v18 = [a2 position] + 4;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v30;
          v26 = 24;
LABEL_43:
          *(a1 + v26) = v25;
          goto LABEL_44;
        case 4:
          v14 = PBReaderReadData();
          v15 = 8;
          break;
        case 5:
          v14 = PBReaderReadData();
          v15 = 32;
          break;
        default:
          goto LABEL_35;
      }

      v20 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_44:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 40) |= 1u;
      v32 = 0;
      v21 = [a2 position] + 4;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      v25 = v32;
      v26 = 16;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_35:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_44;
      }

      *(a1 + 40) |= 2u;
      v31 = 0;
      v16 = [a2 position] + 4;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v31 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      v25 = v31;
      v26 = 20;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_248D13938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248D17A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSKSceneClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SpriteKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SpriteKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278F7A2E0;
    v6 = 0;
    SpriteKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SpriteKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKScene");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKSceneClass_block_invoke_cold_1();
  }

  getSKSceneClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpriteKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_248D19714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKActionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKActionClass_softClass;
  v7 = getSKActionClass_softClass;
  if (!getSKActionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKActionClass_block_invoke;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKActionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D19800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSKSetResourceBundleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpriteKitLibrary();
  result = dlsym(v2, "SKSetResourceBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKSetResourceBundleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpriteKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpriteKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpriteKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F7A2F8;
    v5 = 0;
    SpriteKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = SpriteKitLibraryCore_frameworkLibrary_1;
  v1 = v3[0];
  if (!SpriteKitLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SpriteKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getSKSpriteNodeClass_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKSpriteNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKSpriteNodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKSpriteNodeClass_block_invoke_cold_1();
    return __getSKActionClass_block_invoke(v3);
  }

  return result;
}

Class __getSKActionClass_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKActionClass_block_invoke_cold_1();
    return +[(ETColorStore *)v3];
  }

  return result;
}

id PaletteColorsDataArray()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 synchronize];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __PaletteColorsDataArray_block_invoke;
  block[3] = &unk_278F79ED0;
  v1 = v0;
  v7 = v1;
  if (PaletteColorsDataArray_onceToken != -1)
  {
    dispatch_once(&PaletteColorsDataArray_onceToken, block);
  }

  v2 = [v1 arrayForKey:@"ETColorPickerColorData"];
  if (!v2)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    for (i = 0; i != 7; ++i)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(DefaultPaletteColors[i])];
      [v2 addObject:v4];
    }

    [v1 setObject:v2 forKey:@"ETColorPickerColorData"];
  }

  return v2;
}

void __PaletteColorsDataArray_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"ETColorPickerColors"];

  if (v2)
  {
    [*(a1 + 32) removeObjectForKey:@"ETColorPickerColors"];
    v3 = *(a1 + 32);

    [v3 synchronize];
  }
}

uint64_t ETPDoodleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 8;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadData();
          v15 = 32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_40:
          *(a1 + 16) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_248D1B634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t ETPVideoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 4)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 24;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadData();
          v15 = 8;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ETPReadReceiptReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ETFrameworkBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

uint64_t __dateFormatterWithMilliseconds_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatterWithMilliseconds_dateFormatter;
  dateFormatterWithMilliseconds_dateFormatter = v0;

  v2 = dateFormatterWithMilliseconds_dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd-HH:mm:ss.SSS"];
}

CGPath *createCirclePath(CGFloat a1, CGFloat a2)
{
  if (a1 <= 1.0)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, 0.0, 0.0, a1, 0.0, 6.28318531, 1);
  CGPathCloseSubpath(Mutable);
  if (a2 > 1.0)
  {
    CGPathMoveToPoint(Mutable, 0, a2, 0.0);
    CGPathAddArc(Mutable, 0, 0.0, 0.0, a2, 0.0, 6.28318531, 0);
    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

CGPath *createSemiCirclePath(CGFloat a1, CGFloat a2)
{
  if (a1 <= 1.0)
  {
    return 0;
  }

  v4 = a2 + 3.14159265;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, 0.0, 0.0, a1, a2, v4, 1);
  return Mutable;
}

void sub_248D1FA80(_Unwind_Exception *a1, int a2)
{
  v6 = v4;

  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x248D1FA10);
  }

  _Unwind_Resume(a1);
}

void sub_248D1FF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);

  objc_destroyWeak((v32 - 144));
  _Unwind_Resume(a1);
}

id getSKActionClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKActionClass(void)::softClass;
  v7 = getSKActionClass(void)::softClass;
  if (!getSKActionClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL16getSKActionClassv_block_invoke;
    v3[3] = &unk_278F7A428;
    v3[4] = &v4;
    ___ZL16getSKActionClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D200F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248D2027C(_Unwind_Exception *a1, int a2)
{
  v5 = v3;

  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x248D201DCLL);
  }

  _Unwind_Resume(a1);
}

void sub_248D2034C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_248D203E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_248D21934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

id getSKNodeClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKNodeClass(void)::softClass;
  v7 = getSKNodeClass(void)::softClass;
  if (!getSKNodeClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL14getSKNodeClassv_block_invoke;
    v3[3] = &unk_278F7A428;
    v3[4] = &v4;
    ___ZL14getSKNodeClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D21EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL16getSKActionClassv_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKActionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSKActionClass_block_invoke_cold_1();
    return SpriteKitLibrary();
  }

  return result;
}

uint64_t SpriteKitLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpriteKitLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = ___ZL20SpriteKitLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F7A448;
    v5 = 0;
    SpriteKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = SpriteKitLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!SpriteKitLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL20SpriteKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL19getSKFieldNodeClassv_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKFieldNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKFieldNodeClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL19getSKFieldNodeClassv_block_invoke_cold_1();
    return ___ZL14getSKNodeClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL14getSKNodeClassv_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKNodeClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL14getSKNodeClassv_block_invoke_cold_1();
    return ___ZL19getSKShapeNodeClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL19getSKShapeNodeClassv_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKShapeNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKShapeNodeClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL19getSKShapeNodeClassv_block_invoke_cold_1();
    return ET_SKSetResourceBundle(v3);
  }

  return result;
}

void ET_SKSetResourceBundle(NSBundle *a1)
{
  v1 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v2 = getSKSetResourceBundleSymbolLoc(void)::ptr;
  v7 = getSKSetResourceBundleSymbolLoc(void)::ptr;
  if (!getSKSetResourceBundleSymbolLoc(void)::ptr)
  {
    v3 = SpriteKitLibrary();
    v5[3] = dlsym(v3, "SKSetResourceBundle");
    getSKSetResourceBundleSymbolLoc(void)::ptr = v5[3];
    v2 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

void sub_248D225A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

id getSKEmitterNodeClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKEmitterNodeClass(void)::softClass;
  v7 = getSKEmitterNodeClass(void)::softClass;
  if (!getSKEmitterNodeClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL21getSKEmitterNodeClassv_block_invoke;
    v3[3] = &unk_278F7A428;
    v3[4] = &v4;
    ___ZL21getSKEmitterNodeClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D22690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKKeyframeSequenceClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKKeyframeSequenceClass(void)::softClass;
  v7 = getSKKeyframeSequenceClass(void)::softClass;
  if (!getSKKeyframeSequenceClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL26getSKKeyframeSequenceClassv_block_invoke;
    v3[3] = &unk_278F7A428;
    v3[4] = &v4;
    ___ZL26getSKKeyframeSequenceClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D22770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL31getSKSetResourceBundleSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = SpriteKitLibrary();
  result = dlsym(v2, "SKSetResourceBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKSetResourceBundleSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL21getSKEmitterNodeClassv_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKEmitterNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKEmitterNodeClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL21getSKEmitterNodeClassv_block_invoke_cold_1();
    return ___ZL26getSKKeyframeSequenceClassv_block_invoke(v3);
  }

  return result;
}

Class ___ZL26getSKKeyframeSequenceClassv_block_invoke(uint64_t a1)
{
  SpriteKitLibrary();
  result = objc_getClass("SKKeyframeSequence");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = ___ZL26getSKKeyframeSequenceClassv_block_invoke_cold_1();
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(v3, v4);
  }

  getSKKeyframeSequenceClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id getSKNodeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKNodeClass_softClass;
  v7 = getSKNodeClass_softClass;
  if (!getSKNodeClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKNodeClass_block_invoke;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKNodeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D23B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKTextureClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKTextureClass_softClass;
  v7 = getSKTextureClass_softClass;
  if (!getSKTextureClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKTextureClass_block_invoke;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKTextureClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D23C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKShaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKShaderClass_softClass;
  v7 = getSKShaderClass_softClass;
  if (!getSKShaderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKShaderClass_block_invoke;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKShaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D23D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKUniformClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKUniformClass_softClass;
  v7 = getSKUniformClass_softClass;
  if (!getSKUniformClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKUniformClass_block_invoke;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKUniformClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D23DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKSpriteNodeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKSpriteNodeClass_softClass_0;
  v7 = getSKSpriteNodeClass_softClass_0;
  if (!getSKSpriteNodeClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKSpriteNodeClass_block_invoke_0;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKSpriteNodeClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D23ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKActionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKActionClass_softClass_0;
  v7 = getSKActionClass_softClass_0;
  if (!getSKActionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKActionClass_block_invoke_0;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKActionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D23FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248D24A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSKNodeClass_block_invoke(uint64_t a1)
{
  SpriteKitLibrary_0();
  result = objc_getClass("SKNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKNodeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL14getSKNodeClassv_block_invoke_cold_1();
    return SpriteKitLibrary_0();
  }

  return result;
}

uint64_t SpriteKitLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpriteKitLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpriteKitLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F7A500;
    v5 = 0;
    SpriteKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = SpriteKitLibraryCore_frameworkLibrary_2;
  v1 = v3[0];
  if (!SpriteKitLibraryCore_frameworkLibrary_2)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SpriteKitLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void *__getSKSetResourceBundleSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SpriteKitLibrary_0();
  result = dlsym(v2, "SKSetResourceBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKSetResourceBundleSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSKTextureClass_block_invoke(uint64_t a1)
{
  SpriteKitLibrary_0();
  result = objc_getClass("SKTexture");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKTextureClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKTextureClass_block_invoke_cold_1();
    return __getSKShaderClass_block_invoke(v3);
  }

  return result;
}

Class __getSKShaderClass_block_invoke(uint64_t a1)
{
  SpriteKitLibrary_0();
  result = objc_getClass("SKShader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKShaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKShaderClass_block_invoke_cold_1();
    return __getSKUniformClass_block_invoke(v3);
  }

  return result;
}

Class __getSKUniformClass_block_invoke(uint64_t a1)
{
  SpriteKitLibrary_0();
  result = objc_getClass("SKUniform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKUniformClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKUniformClass_block_invoke_cold_1();
    return __getSKSpriteNodeClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSKSpriteNodeClass_block_invoke_0(uint64_t a1)
{
  SpriteKitLibrary_0();
  result = objc_getClass("SKSpriteNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKSpriteNodeClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKSpriteNodeClass_block_invoke_cold_1();
    return __getSKActionClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSKActionClass_block_invoke_0(uint64_t a1)
{
  SpriteKitLibrary_0();
  result = objc_getClass("SKAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKActionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKActionClass_block_invoke_cold_1();
    return +[(ETAngerMessage *)v3];
  }

  return result;
}

void sub_248D2607C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v38 - 176));
  _Unwind_Resume(a1);
}

id getSKUniformClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKUniformClass_softClass_0;
  v7 = getSKUniformClass_softClass_0;
  if (!getSKUniformClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKUniformClass_block_invoke_0;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKUniformClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D261C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSKActionClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKActionClass_softClass_1;
  v7 = getSKActionClass_softClass_1;
  if (!getSKActionClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKActionClass_block_invoke_1;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKActionClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D262A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248D266F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getSKSetResourceBundleSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = SpriteKitLibrary_1();
  result = dlsym(v2, "SKSetResourceBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKSetResourceBundleSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpriteKitLibrary_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpriteKitLibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpriteKitLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F7A540;
    v5 = 0;
    SpriteKitLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = SpriteKitLibraryCore_frameworkLibrary_3;
  v1 = v3[0];
  if (!SpriteKitLibraryCore_frameworkLibrary_3)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SpriteKitLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getSKUniformClass_block_invoke_0(uint64_t a1)
{
  SpriteKitLibrary_1();
  result = objc_getClass("SKUniform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKUniformClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKUniformClass_block_invoke_cold_1();
    return __getSKTextureClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSKTextureClass_block_invoke_0(uint64_t a1)
{
  SpriteKitLibrary_1();
  result = objc_getClass("SKTexture");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKTextureClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKTextureClass_block_invoke_cold_1();
    return __getSKShaderClass_block_invoke_0(v3);
  }

  return result;
}

Class __getSKShaderClass_block_invoke_0(uint64_t a1)
{
  SpriteKitLibrary_1();
  result = objc_getClass("SKShader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKShaderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKShaderClass_block_invoke_cold_1();
    return __getSKSpriteNodeClass_block_invoke_1(v3);
  }

  return result;
}

Class __getSKSpriteNodeClass_block_invoke_1(uint64_t a1)
{
  SpriteKitLibrary_1();
  result = objc_getClass("SKSpriteNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKSpriteNodeClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKSpriteNodeClass_block_invoke_cold_1();
    return __getSKActionClass_block_invoke_1(v3);
  }

  return result;
}

Class __getSKActionClass_block_invoke_1(uint64_t a1)
{
  SpriteKitLibrary_1();
  result = objc_getClass("SKAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKActionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKActionClass_block_invoke_cold_1();
    return _endOfCurrentDay(v3);
  }

  return result;
}

id _endOfCurrentDay()
{
  v0 = [MEMORY[0x277CBEA80] currentCalendar];
  v1 = [MEMORY[0x277CBEAA8] date];
  v2 = [v0 components:28 fromDate:v1];

  [v2 setDay:{objc_msgSend(v2, "day") + 1}];
  v3 = [v0 dateFromComponents:v2];

  return v3;
}

uint64_t _logUniqueSenderCount(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v10 = v1;
    if (!_logUniqueSenderCount_senderSet || (v2 = _logUniqueSenderCount_endOfDay, [MEMORY[0x277CBEAA8] date], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "compare:", v3), v3, v4 == -1))
    {
      v5 = [MEMORY[0x277CBEB58] set];
      v6 = _logUniqueSenderCount_senderSet;
      _logUniqueSenderCount_senderSet = v5;

      v7 = _endOfCurrentDay();
      v8 = _logUniqueSenderCount_endOfDay;
      _logUniqueSenderCount_endOfDay = v7;
    }

    if (([_logUniqueSenderCount_senderSet containsObject:v10] & 1) == 0)
    {
      [_logUniqueSenderCount_senderSet addObject:v10];
      [_logUniqueSenderCount_senderSet count];
      ADClientSetValueForDistributionKey();
    }
  }

  return MEMORY[0x2821F96F8]();
}

CFStringRef _createLogKeyForReceivedMessage(uint64_t a1, double a2)
{
  if (a2 < 0.0)
  {
    return 0;
  }

  HIDWORD(v5) = 1078853632;
  if (a2 > 60.0)
  {
    v6 = @">60s";
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", a1, v6);
  }

  if (a2 > 30.0)
  {
    v6 = @"30-60s";
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", a1, v6);
  }

  if (a2 > 20.0)
  {
    v6 = @"20-30s";
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", a1, v6);
  }

  if (a2 > 10.0)
  {
    v6 = @"10-20s";
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@.%@", a1, v6);
  }

  LODWORD(v5) = vcvtmd_s64_f64(a2);
  LODWORD(v2) = vcvtpd_s64_f64(a2);
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d-%ds", v5, v2);
  v9 = CFStringCreateWithFormat(v7, 0, @"%@.%@", a1, v8);
  CFRelease(v8);
  return v9;
}

void ETAggdLogMessageReceived(uint64_t a1, unsigned int a2, void *a3, double a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a4 != 0.0)
  {
    v8 = CFAbsoluteTimeGetCurrent() - a4;
    if (a1 == 1)
    {
      v9 = @"com.apple.et.message.received.transportTime.toApp";
    }

    else
    {
      v9 = @"com.apple.et.message.received.transportTime.toDaemon";
    }

    LogKeyForReceivedMessage = _createLogKeyForReceivedMessage(v9, v8);
    if (LogKeyForReceivedMessage)
    {
      v11 = LogKeyForReceivedMessage;
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = 138412546;
          v14 = v11;
          v15 = 2048;
          v16 = v8;
          _os_log_impl(&dword_248D00000, v12, OS_LOG_TYPE_INFO, "Aggd Log Key %@ : transportTime is %f", &v13, 0x16u);
        }
      }

      ADClientAddValueForScalarKey();
      CFRelease(v11);
    }

    if (!a1)
    {
      if (a2 <= 8 && ((0x147u >> a2) & 1) != 0)
      {
        ADClientAddValueForScalarKey();
      }

      _logUniqueSenderCount(v7);
    }
  }
}

void sub_248D27240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248D27C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ET_SKSetResourceBundle(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = getSKSetResourceBundleSymbolLoc_ptr_2;
  v8 = getSKSetResourceBundleSymbolLoc_ptr_2;
  if (!getSKSetResourceBundleSymbolLoc_ptr_2)
  {
    v3 = SpriteKitLibrary_2();
    v6[3] = dlsym(v3, "SKSetResourceBundle");
    getSKSetResourceBundleSymbolLoc_ptr_2 = v6[3];
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    v4 = [ETMessage displayInScene:];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2(v1);
}

id getSKUniformClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKUniformClass_softClass_1;
  v7 = getSKUniformClass_softClass_1;
  if (!getSKUniformClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKUniformClass_block_invoke_1;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKUniformClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D27E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248D28504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id getSKActionClass_2()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKActionClass_softClass_2;
  v7 = getSKActionClass_softClass_2;
  if (!getSKActionClass_softClass_2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKActionClass_block_invoke_2;
    v3[3] = &unk_278F7A048;
    v3[4] = &v4;
    __getSKActionClass_block_invoke_2(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_248D2862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKSpriteNodeClass_block_invoke_2(uint64_t a1)
{
  SpriteKitLibrary_2();
  result = objc_getClass("SKSpriteNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKSpriteNodeClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSKSpriteNodeClass_block_invoke_cold_1();
    return SpriteKitLibrary_2();
  }

  return result;
}

uint64_t SpriteKitLibrary_2()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpriteKitLibraryCore_frameworkLibrary_4)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpriteKitLibraryCore_block_invoke_4;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278F7A6C8;
    v5 = 0;
    SpriteKitLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v0 = SpriteKitLibraryCore_frameworkLibrary_4;
  v1 = v3[0];
  if (!SpriteKitLibraryCore_frameworkLibrary_4)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SpriteKitLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  SpriteKitLibraryCore_frameworkLibrary_4 = result;
  return result;
}

void *__getSKSetResourceBundleSymbolLoc_block_invoke_2(uint64_t a1)
{
  v2 = SpriteKitLibrary_2();
  result = dlsym(v2, "SKSetResourceBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSKSetResourceBundleSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSKTextureClass_block_invoke_1(uint64_t a1)
{
  SpriteKitLibrary_2();
  result = objc_getClass("SKTexture");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKTextureClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKTextureClass_block_invoke_cold_1();
    return __getSKUniformClass_block_invoke_1(v3);
  }

  return result;
}

Class __getSKUniformClass_block_invoke_1(uint64_t a1)
{
  SpriteKitLibrary_2();
  result = objc_getClass("SKUniform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKUniformClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKUniformClass_block_invoke_cold_1();
    return __getSKActionClass_block_invoke_2(v3);
  }

  return result;
}

Class __getSKActionClass_block_invoke_2(uint64_t a1)
{
  SpriteKitLibrary_2();
  result = objc_getClass("SKAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKActionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKActionClass_block_invoke_cold_1();
    return __getSKShaderClass_block_invoke_1(v3);
  }

  return result;
}

Class __getSKShaderClass_block_invoke_1(uint64_t a1)
{
  SpriteKitLibrary_2();
  result = objc_getClass("SKShader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSKShaderClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSKShaderClass_block_invoke_cold_1();
    return +[(DTSCanvasViewController *)v3];
  }

  return result;
}

void sub_248D2C350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}