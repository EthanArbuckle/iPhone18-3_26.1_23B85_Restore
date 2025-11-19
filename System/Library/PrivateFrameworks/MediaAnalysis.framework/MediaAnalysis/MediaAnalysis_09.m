void std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::tuple<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long,unsigned long>&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__find_equal<std::tuple<unsigned long,unsigned long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__find_equal<std::tuple<unsigned long,unsigned long>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = v8[5];
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9EC7F30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VCPProtoLineReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(VCPProtoPoint);
        v14 = 8;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(VCPProtoPoint);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !VCPProtoPointReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCPProtoMovieStabilizationRecipeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___VCPVideoMetaFocusSegment__focusStatus;
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        while (1)
        {
          LOBYTE(v76) = 0;
          v9 = [a2 position] + 1;
          if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
          {
            v11 = [a2 data];
            [v11 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v8 |= (v76 & 0x7F) << v6;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v6 += 7;
          v12 = v7++ >= 9;
          if (v12)
          {
            v13 = 0;
            goto LABEL_16;
          }
        }

        v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
        if (([a2 hasError] & 1) == 0)
        {
          v14 = v13 & 7;
          if (v14 != 4)
          {
            switch((v13 >> 3))
            {
              case 1u:
                LODWORD(v76) = 0;
                v15 = [a2 position] + 4;
                if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 64;
                goto LABEL_123;
              case 2u:
                LODWORD(v76) = 0;
                v39 = [a2 position] + 4;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 4, v40 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 68;
                goto LABEL_123;
              case 3u:
                LODWORD(v76) = 0;
                v33 = [a2 position] + 4;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
                {
                  v66 = [a2 data];
                  [v66 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 56;
                goto LABEL_123;
              case 4u:
                LODWORD(v76) = 0;
                v35 = [a2 position] + 4;
                if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 4, v36 <= objc_msgSend(a2, "length")))
                {
                  v67 = [a2 data];
                  [v67 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = v5[351];
                goto LABEL_123;
              case 5u:
                LODWORD(v76) = 0;
                v25 = [a2 position] + 4;
                if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
                {
                  v62 = [a2 data];
                  [v62 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 80;
                goto LABEL_123;
              case 6u:
                LODWORD(v76) = 0;
                v41 = [a2 position] + 4;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 4, v42 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 84;
                goto LABEL_123;
              case 7u:
                LODWORD(v76) = 0;
                v43 = [a2 position] + 4;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 4, v44 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 72;
                goto LABEL_123;
              case 8u:
                LODWORD(v76) = 0;
                v37 = [a2 position] + 4;
                if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
                {
                  v68 = [a2 data];
                  [v68 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 76;
                goto LABEL_123;
              case 9u:
                LODWORD(v76) = 0;
                v52 = [a2 position] + 4;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
                {
                  v73 = [a2 data];
                  [v73 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 88;
                goto LABEL_123;
              case 0xAu:
                LODWORD(v76) = 0;
                v31 = [a2 position] + 4;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 = v76;
                v64 = 92;
LABEL_123:
                *(a1 + v64) = v63;
                goto LABEL_124;
              case 0xBu:
                v45 = 0;
                v46 = 0;
                v47 = 0;
                while (1)
                {
                  LOBYTE(v76) = 0;
                  v48 = [a2 position] + 1;
                  if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                  {
                    v50 = [a2 data];
                    [v50 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v47 |= (v76 & 0x7F) << v45;
                  if ((v76 & 0x80) == 0)
                  {
                    break;
                  }

                  v45 += 7;
                  v12 = v46++ >= 9;
                  if (v12)
                  {
                    v51 = 0;
                    goto LABEL_88;
                  }
                }

                if ([a2 hasError])
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v47;
                }

LABEL_88:
                *(a1 + 96) = v51;
                goto LABEL_124;
              case 0xCu:
                if (v14 != 2)
                {
                  v54 = 0;
                  v55 = 0;
                  v56 = 0;
                  while (1)
                  {
                    LOBYTE(v76) = 0;
                    v57 = [a2 position] + 1;
                    if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                    {
                      v59 = [a2 data];
                      [v59 getBytes:&v76 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v56 |= (v76 & 0x7F) << v54;
                    if ((v76 & 0x80) == 0)
                    {
                      break;
                    }

                    v54 += 7;
                    v12 = v55++ >= 9;
                    if (v12)
                    {
                      goto LABEL_102;
                    }
                  }

                  [a2 hasError];
LABEL_102:
                  PBRepeatedInt64Add();
                  v5 = &OBJC_IVAR___VCPVideoMetaFocusSegment__focusStatus;
                  goto LABEL_124;
                }

                v76 = 0;
                v77 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v18 = [a2 position];
                  if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_84;
                  }

                  v19 = 0;
                  v20 = 0;
                  v21 = 0;
                  while (1)
                  {
                    LOBYTE(v78) = 0;
                    v22 = [a2 position] + 1;
                    if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
                    {
                      v24 = [a2 data];
                      [v24 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v21 |= (v78 & 0x7F) << v19;
                    if ((v78 & 0x80) == 0)
                    {
                      break;
                    }

                    v19 += 7;
                    v12 = v20++ >= 9;
                    if (v12)
                    {
                      goto LABEL_36;
                    }
                  }

                  [a2 hasError];
LABEL_36:
                  PBRepeatedInt64Add();
                }

              case 0xDu:
                if (v14 == 2)
                {
                  v76 = 0;
                  v77 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v27 = [a2 position];
                    if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    v78 = 0;
                    v28 = [a2 position] + 4;
                    if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
                    {
                      v30 = [a2 data];
                      [v30 getBytes:&v78 range:{objc_msgSend(a2, "position"), 4}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    PBRepeatedFloatAdd();
                  }

LABEL_84:
                  PBReaderRecallMark();
                }

                else
                {
                  LODWORD(v76) = 0;
                  v60 = [a2 position] + 4;
                  if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
                  {
                    v75 = [a2 data];
                    [v75 getBytes:&v76 range:{objc_msgSend(a2, "position"), 4}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  PBRepeatedFloatAdd();
                }

LABEL_124:
                v74 = [a2 position];
                if (v74 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_124;
                }

                return 0;
            }
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9ECB14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void sub_1C9ECB81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ma::ObstructionAnalysis::CheckAndAddSegment(const __CFArray **this, const ma::Frame *a2)
{
  v4 = *this;
  v5 = this[1];
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v8 = *a2;
  v10 = *(a2 + 4);
  ma::Segment::Finalize(v5, Count, v8, &v10);
  if (!ma::ObstructionSegment::IsValid(this[1]) || (result = MotionAnalysis<ma::ObstructionSegment>::AddSegment(this), !result))
  {
    ma::ObstructionSegment::Reset(this[1]);
    return 0;
  }

  return result;
}

uint64_t MotionAnalysis<ma::ObstructionSegment>::AddSegment(uint64_t a1)
{
  v2 = operator new(0x50uLL, MEMORY[0x1E69E5398]);
  if (!v2)
  {
    return 4294967188;
  }

  v3 = v2;
  ma::ObstructionSegment::ObstructionSegment(v2);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v7 = v4;
  v5 = Vector<ma::Object *>::PushBack(a1);
  if (v5 && v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v5;
}

uint64_t ma::ObstructionAnalysis::ProcessFrame(const __CFArray **this, const ma::Frame *a2, const ma::EncodeStats *a3)
{
  v5 = *(a2 + 87);
  if (v5 <= 0.0)
  {
    if (ma::ObstructionSegment::TrackingStarted(this[1]))
    {
      result = ma::ObstructionAnalysis::CheckAndAddSegment(this, a2);
      if (result)
      {
        return result;
      }
    }

    else
    {
      *(this + 13) = 1065353216;
    }
  }

  else
  {
    v6 = v5 * v5;
    v7 = ma::ObstructionSegment::TrackingStarted(this[1]);
    v8 = this[1];
    if (v7)
    {
      ma::ObstructionSegment::UpdateStats(v8, v6);
      *(this + 13) = *(this[1] + 18);
    }

    else
    {
      ma::ObstructionSegment::ResetStats(v8, v6);
      v10 = this[1];
      v11 = *a2;
      v12 = *(a2 + 4);
      ma::Segment::SetStart(v10, SLODWORD(v11), &v12);
    }
  }

  return 0;
}

uint64_t ma::ObstructionAnalysis::Finalize(CFArrayRef *this, const ma::Frame *a2)
{
  if (!ma::ObstructionSegment::TrackingStarted(this[1]) || (*(a2 + 16) & 1) == 0 || (result = ma::ObstructionAnalysis::CheckAndAddSegment(this, a2), !result))
  {

    return ma::ObstructionAnalysis::StoreSegmentResult(this);
  }

  return result;
}

uint64_t ma::ObstructionAnalysis::StoreSegmentResult(CFArrayRef *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *this ? CFArrayGetCount(*this) : 0;
    if (i >= v3)
    {
      break;
    }

    time = *(*CFArrayGetValueAtIndex(*this, i) + 48);
    if (CMTimeGetSeconds(&time) > 0.0)
    {
      time = *(*CFArrayGetValueAtIndex(*this, i) + 24);
      v6 = *(*CFArrayGetValueAtIndex(*this, i) + 48);
      v5 = *(*CFArrayGetValueAtIndex(*this, i) + 72);
      result = AddResultDictionary(&time, &v6, &v5, 0, 0, this[2]);
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

const __CFArray *ma::ObstructionAnalysis::GetTimeRangesHasDegradedScore@<X0>(CFArrayRef *this@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  while (1)
  {
    result = *this;
    if (*this)
    {
      result = CFArrayGetCount(result);
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    if (v4 >= v6)
    {
      break;
    }

    if (*(*CFArrayGetValueAtIndex(*this, v4) + 72) < 1.0)
    {
      v7 = *CFArrayGetValueAtIndex(*this, v4);
      v8 = 1.0 - *(*CFArrayGetValueAtIndex(*this, v4) + 72);
      v21 = *(v7 + 40);
      v22 = *(v7 + 56);
      v9 = a2[1];
      v10 = a2[2];
      if (v9 >= v10)
      {
        v14 = *a2;
        v15 = v9 - *a2;
        v16 = 0x4EC4EC4EC4EC4EC5 * (v15 >> 2) + 1;
        if (v16 > 0x4EC4EC4EC4EC4ECLL)
        {
          std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
        }

        v17 = 0x4EC4EC4EC4EC4EC5 * ((v10 - v14) >> 2);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x276276276276276)
        {
          v16 = 0x4EC4EC4EC4EC4ECLL;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTimeRange,float>>>(a2, v16);
        }

        v18 = 4 * (v15 >> 2);
        *v18 = *(v7 + 24);
        *(v18 + 16) = v21;
        *(v18 + 32) = v22;
        *(v18 + 48) = v8;
        v13 = v18 + 52;
        v19 = v18 - v15;
        memcpy((v18 - v15), v14, v15);
        v20 = *a2;
        *a2 = v19;
        a2[1] = v13;
        a2[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        v11 = *(v7 + 24);
        v12 = *(v7 + 56);
        *(v9 + 1) = *(v7 + 40);
        *(v9 + 2) = v12;
        *v9 = v11;
        *(v9 + 12) = v8;
        v13 = (v9 + 52);
      }

      a2[1] = v13;
    }

    ++v4;
  }

  return result;
}

void sub_1C9ECE9B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9ED17C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

ma::FrameBuffer *ma::FrameBuffer::FrameBuffer(ma::FrameBuffer *this)
{
  v2 = 0;
  *this = 0;
  do
  {
    ma::Frame::Frame((this + v2 + 8));
    v2 += 408;
  }

  while (v2 != 14280);
  return this;
}

void sub_1C9ED23EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = v1;
    v5 = v2 - 272;
    v6 = -v4;
    do
    {
      ma::Histogram::~Histogram((v5 + 232));
      ma::MotionResult::~MotionResult(v5);
      v5 -= 408;
      v6 += 408;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

char *ma::FrameBuffer::GetNext(ma::FrameBuffer *this)
{
  v1 = *this;
  v2 = this + 408 * (*this % 35);
  *(v2 + 2) = *this;
  *this = v1 + 1;
  return v2 + 8;
}

uint64_t ma::FrameBuffer::Get(ma::FrameBuffer *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0 && *this > a2 && *this - a2 < 36)
  {
    return this + 408 * (a2 % 0x23u) + 8;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = *this;
    v6[0] = 67109632;
    v6[1] = a2;
    v7 = 1024;
    v8 = v5;
    v9 = 1024;
    v10 = 35;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requested unavailable frame %d (Frame Count: %d  Buffer Depth: %d)\n", v6, 0x14u);
  }

  return 0;
}

__n128 ma::Object::Object(ma::Object *this)
{
  *this = -1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 56) = result;
  *(this + 72) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 92) = 0;
  return result;
}

double ma::Object::Object(ma::Object *this, int a2, float a3, CGPoint a4, CGPoint a5)
{
  *this = a2;
  *(this + 19) = a3;
  *(this + 40) = a4;
  *(this + 72) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = a5;
  *(this + 10) = 0;
  *(this + 85) = 0;
  return result;
}

double ma::Object::Object(ma::Object *this, ma::Object *a2)
{
  *this = *a2;
  *(this + 72) = 1;
  *(this + 19) = *(a2 + 19);
  *(this + 40) = *(a2 + 40);
  v2 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v2;
  result = *(a2 + 84);
  *(this + 84) = result;
  *(this + 92) = *(a2 + 92);
  return result;
}

double ma::Object::SetOrigin(ma::Object *this, float a2, float a3)
{
  result = a2;
  *(this + 1) = result;
  *(this + 2) = a3;
  return result;
}

double ma::Object::SetBox(ma::Object *this, float a2, float a3, float a4, float a5)
{
  *(this + 1) = a2;
  *(this + 2) = a3;
  result = a5;
  *(this + 3) = a4;
  *(this + 4) = a5;
  return result;
}

float64x2_t ma::Object::ScaleBox(ma::Object *this, float32x2_t a2, float32_t a3)
{
  a2.f32[1] = a3;
  v3 = vcvtq_f64_f32(a2);
  *(this + 56) = v3;
  *(this + 8) = vmulq_f64(*(this + 8), v3);
  result = vmulq_f64(*(this + 24), v3);
  *(this + 24) = result;
  return result;
}

uint64_t ma::Object::CalculateAttentionScore(ma::Object *this)
{
  if (*(this + 7) == 0.0)
  {
    return 4294967246;
  }

  if (*(this + 8) == 0.0)
  {
    return 4294967246;
  }

  v3 = CGRectGetMidX(*(this + 8)) / *(this + 7);
  MidY = CGRectGetMidY(*(this + 8));
  result = 0;
  *&MidY = MidY / *(this + 8);
  *(this + 20) = *(this + 19) / (sqrtf(((*&MidY + -0.5) * (*&MidY + -0.5)) + ((v3 + -0.5) * (v3 + -0.5))) + 1.0);
  return result;
}

uint64_t ma::Object::SetMotion(uint64_t this, float a2, float a3)
{
  *(this + 84) = a2;
  *(this + 88) = a3;
  return this;
}

double ma::Object::Clear(ma::Object *this)
{
  *this = -1;
  *(this + 72) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t ma::Object::MapBoundingBox(ma::Object *this)
{
  v3.b = 0.0;
  v3.c = 0.0;
  v4 = *(this + 8);
  v3.a = 1.0;
  *&v3.d = xmmword_1C9F60600;
  v3.ty = 1.0;
  *(this + 8) = CGRectApplyAffineTransform(v4, &v3);
  *(this + 92) = 1;
  return 0;
}

uint64_t VCPProtoMovieMovingObjectResultReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(VCPProtoBounds);
    [a1 addBounds:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ma::InterestingnessAnalysis::Initialize(ma::InterestingnessAnalysis *this)
{
  ma::HinkleyDetector::Initialize(this + 56, 0.1, 0.35, 30);

  return MotionAnalysis<ma::InterestingnessSegment>::Initialize(this);
}

uint64_t MotionAnalysis<ma::InterestingnessSegment>::Initialize(uint64_t a1)
{
  if (*(a1 + 16) || *(a1 + 8))
  {
    return 4294967246;
  }

  *(a1 + 16) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = operator new(0x58uLL, MEMORY[0x1E69E5398]);
  if (v3)
  {
    v4 = v3;
    ma::InterestingnessSegment::InterestingnessSegment(v3);
    *(a1 + 8) = v4;
    if (*(a1 + 16))
    {
      return 0;
    }

    else
    {
      return 4294967188;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    return 4294967188;
  }
}

uint64_t ma::InterestingnessAnalysis::ProcessFrame(ma::InterestingnessAnalysis *this, Frame *a2)
{
  if (*(this + 48) == 1)
  {
    v4 = *(this + 1);
    v8 = *(this + 1);
    ma::Segment::SetStart(v4, 0, &v8);
    *(this + 48) = 0;
  }

  if (a2->frame_idx_)
  {
    if (ma::InterestingnessAnalysis::DecideSegmentPoint(this, *(this + 1), a2))
    {
      result = ma::InterestingnessAnalysis::AddSegment(this, a2, 0);
      if (result)
      {
        return result;
      }

      ma::InterestingnessSegment::Reset(*(this + 1));
      v6 = *(this + 1);
      frame_idx = a2->frame_idx_;
      v8 = *(&a2->frame_idx_ + 1);
      ma::Segment::SetStart(v6, frame_idx, &v8);
    }

    ma::InterestingnessSegment::Update(*(this + 1), a2);
  }

  return 0;
}

BOOL ma::InterestingnessAnalysis::DecideSegmentPoint(ma::InterestingnessAnalysis *this, const ma::InterestingnessSegment *a2, const Frame *a3)
{
  if (*(this + 16) >= a3->frame_idx_ - *(a2 + 3))
  {
    v6 = 0;
  }

  else
  {
    v5 = 0.0;
    if (*&a3->flow_ >= 1.0)
    {
      v5 = 1.0;
    }

    v8 = v5;
    v6 = ma::HinkleyDetector::Test((this + 56), a2 + 19, &v8, *(a2 + 5) + 1);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (!*(a2 + 5))
  {
LABEL_8:
    ma::HinkleyDetector::ResetStats((this + 56));
  }

  return v6;
}

uint64_t ma::InterestingnessAnalysis::AddSegment(const __CFArray **this, const ma::Frame *a2, int a3)
{
  v6 = *this;
  v7 = this[1];
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  v10 = *a2;
  if (a3)
  {
    lhs = *(a2 + 4);
    v12 = *(a2 + 28);
    CMTimeAdd(&v14, &lhs, &v12);
  }

  else
  {
    v14 = *(a2 + 4);
  }

  ma::Segment::Finalize(v7, Count, v10 + a3, &v14);
  ma::InterestingnessSegment::DetermineStatus(this[1], 0.343);
  return MotionAnalysis<ma::InterestingnessSegment>::AddSegment(this);
}

uint64_t ma::InterestingnessAnalysis::FinalizeSegments(ma::InterestingnessAnalysis *this, const Frame *a2)
{
  ma::InterestingnessSegment::Update(*(this + 1), a2);
  result = ma::InterestingnessAnalysis::AddSegment(this, a2, 1);
  if (!result)
  {
    result = ma::InterestingnessAnalysis::MergeSameTypeSegments(this);
    if (!result)
    {
      result = ma::InterestingnessAnalysis::MergeConsecutiveShortSegments(this);
      if (!result)
      {
        result = ma::InterestingnessAnalysis::MergeSparseShortSegments(this);
        if (!result)
        {

          return ma::InterestingnessAnalysis::StoreSegmentResult(this);
        }
      }
    }
  }

  return result;
}

uint64_t ma::InterestingnessAnalysis::MergeSameTypeSegments(CFArrayRef *this)
{
  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (CFArrayGetCount(v2) >= 2)
  {
    if (!*this)
    {
      return 0;
    }

    v4 = (v3 + 1);
    if (v4 >= CFArrayGetCount(*this))
    {
      break;
    }

    v5 = *CFArrayGetValueAtIndex(*this, v3);
    ValueAtIndex = CFArrayGetValueAtIndex(*this, (v3 + 1));
    v7 = *ValueAtIndex;
    if (*(*ValueAtIndex + 72) == v5[72])
    {
      ma::InterestingnessSegment::Merge(*ValueAtIndex, v5);
      ma::InterestingnessSegment::DetermineStatus(v7, 0.343);
      result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v3);
      v4 = v3;
      if (result)
      {
        return result;
      }
    }

    v2 = *this;
    v3 = v4;
    if (!*this)
    {
      return 0;
    }
  }

  if (!*this)
  {
    return 0;
  }

  Count = CFArrayGetCount(*this);
  v10 = Count;
  if (Count < 2)
  {
    return 0;
  }

  v11 = (Count - 1);
  v16 = *(*CFArrayGetValueAtIndex(*this, v11) + 48);
  if (CMTimeGetSeconds(&v16) >= 1.0)
  {
    return 0;
  }

  v12 = (v10 - 2);
  v13 = *CFArrayGetValueAtIndex(*this, v12);
  v14 = CFArrayGetValueAtIndex(*this, v11);
  ma::InterestingnessSegment::Merge(v13, *v14);
  v15 = CFArrayGetValueAtIndex(*this, v12);
  ma::InterestingnessSegment::DetermineStatus(*v15, 0.1);
  result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v11);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t ma::InterestingnessAnalysis::MergeConsecutiveShortSegments(CFArrayRef *this)
{
  v2 = 0;
  while (1)
  {
    v3 = v2;
    v4 = *this ? CFArrayGetCount(*this) - 1 : -1;
    if (v2 >= v4)
    {
      break;
    }

    ++v2;
    v5 = *CFArrayGetValueAtIndex(*this, v3);
    if (ma::InterestingnessSegment::IsShort(v5))
    {
      v6 = v3 + 1;
      v7 = v3;
      do
      {
        v8 = v7;
        if (*this)
        {
          Count = CFArrayGetCount(*this);
        }

        else
        {
          Count = 0;
        }

        if (v6 >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*this, v6);
        IsShort = ma::InterestingnessSegment::IsShort(*ValueAtIndex);
        ++v6;
        v7 = v8 + 1;
      }

      while (IsShort);
      while (v3 < v8)
      {
        v12 = CFArrayGetValueAtIndex(*this, v2);
        ma::InterestingnessSegment::Merge(v5, *v12);
        result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v3 + 1);
        --v8;
        if (result)
        {
          return result;
        }
      }

      ma::InterestingnessSegment::DetermineStatus(v5, 0.1);
      v2 = v8 + 1;
    }
  }

  return ma::InterestingnessAnalysis::MergeSameTypeSegments(this);
}

uint64_t ma::InterestingnessAnalysis::MergeSparseShortSegments(CFArrayRef *this)
{
  v2 = *this;
  if (!v2)
  {
    goto LABEL_43;
  }

  if (CFArrayGetCount(v2) >= 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*this, 0);
    if (ma::InterestingnessSegment::IsShort(*ValueAtIndex))
    {
      v4 = *CFArrayGetValueAtIndex(*this, 1);
      v5 = CFArrayGetValueAtIndex(*this, 0);
      ma::InterestingnessSegment::Merge(v4, *v5);
      result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, 0);
      if (result)
      {
        return result;
      }
    }
  }

  if (!*this)
  {
    goto LABEL_43;
  }

  Count = CFArrayGetCount(*this);
  v8 = *this;
  if (Count < 2 || (!v8 ? (v9 = -1) : (v9 = (CFArrayGetCount(v8) - 1), v8 = *this), v10 = CFArrayGetValueAtIndex(v8, v9), IsShort = ma::InterestingnessSegment::IsShort(*v10), v8 = *this, !IsShort))
  {
LABEL_23:
    if (v8)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        if (CFArrayGetCount(v8) < 3)
        {
          break;
        }

        v20 = *this ? CFArrayGetCount(*this) - 1 : -1;
        if (v19 >= v20)
        {
          break;
        }

        v21 = (v19 + 1);
        v22 = *CFArrayGetValueAtIndex(*this, v18);
        v23 = *CFArrayGetValueAtIndex(*this, v19);
        v24 = *CFArrayGetValueAtIndex(*this, v21);
        if (ma::InterestingnessSegment::IsShort(v22) || !ma::InterestingnessSegment::IsShort(v23) || ma::InterestingnessSegment::IsShort(v24))
        {
          v18 = v19;
        }

        else
        {
          ma::InterestingnessSegment::Merge(v23, v24);
          if (*(v22 + 72))
          {
            v25 = 0.0;
          }

          else
          {
            v25 = 1.0;
          }

          if (*(v22 + 72) != v24[72])
          {
            v25 = 0.1;
          }

          ma::InterestingnessSegment::DetermineStatus(v23, v25);
          result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v19 + 1);
          v21 = v19;
          if (result)
          {
            return result;
          }
        }

        v8 = *this;
        v19 = v21;
      }

      while (*this);
    }

LABEL_43:

    return ma::InterestingnessAnalysis::MergeSameTypeSegments(this);
  }

  if (v8)
  {
    v12 = (CFArrayGetCount(v8) - 2);
    v8 = *this;
  }

  else
  {
    v12 = -2;
  }

  v13 = *CFArrayGetValueAtIndex(v8, v12);
  v14 = *this;
  if (*this)
  {
    v15 = (CFArrayGetCount(v14) - 1);
    v14 = *this;
  }

  else
  {
    v15 = -1;
  }

  v16 = CFArrayGetValueAtIndex(v14, v15);
  ma::InterestingnessSegment::Merge(v13, *v16);
  if (*this)
  {
    v17 = CFArrayGetCount(*this) - 1;
  }

  else
  {
    v17 = -1;
  }

  result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v17);
  if (!result)
  {
    v8 = *this;
    goto LABEL_23;
  }

  return result;
}

uint64_t ma::InterestingnessAnalysis::StoreSegmentResult(CFArrayRef *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *this ? CFArrayGetCount(*this) : 0;
    if (i >= v3)
    {
      break;
    }

    v7 = *(*CFArrayGetValueAtIndex(*this, i) + 24);
    v6 = *(*CFArrayGetValueAtIndex(*this, i) + 48);
    v5 = *(*CFArrayGetValueAtIndex(*this, i) + 76);
    result = AddResultDictionary(&v7, &v6, &v5, 0, 0, this[2]);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t ma::InterestingnessAnalysis::CopyProperty(ma::InterestingnessAnalysis *this, CFTypeRef cf1, const __CFAllocator *a3, CFArrayRef *a4)
{
  if (!CFEqual(cf1, @"InterestingnessResults"))
  {
    return 4294967246;
  }

  v7 = *(this + 2);
  if (v7)
  {
    Copy = CFArrayCreateCopy(a3, v7);
  }

  else
  {
    Copy = 0;
  }

  result = 0;
  *a4 = Copy;
  return result;
}

uint64_t ma::InterestingnessAnalysis::CopyProperty(CFArrayRef *this, CMTimeRange *a2, CFTypeRef cf1, const __CFAllocator *a4, CFArrayRef *a5)
{
  if (!CFEqual(cf1, @"InterestingnessResults"))
  {
    return 4294967246;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v10 = 0;
  v21 = 0.0;
  while (1)
  {
    v11 = *this ? CFArrayGetCount(*this) : 0;
    if (v10 >= v11)
    {
      break;
    }

    v23 = *(*CFArrayGetValueAtIndex(*this, v10) + 24);
    v12 = *CFArrayGetValueAtIndex(*this, v10);
    start = v12[2];
    v19.start = v23;
    rhs = v12[2];
    CMTimeAdd(&v24, &v19.start, &rhs);
    v19.start = v24;
    rhs = a2->start;
    if ((CMTimeCompare(&v19.start, &rhs) & 0x80000000) == 0)
    {
      v19.start = v23;
      rhs = a2->start;
      if (CMTimeCompare(&v19.start, &rhs) < 0)
      {
        *&v19.start.value = *&a2->start.value;
        v19.start.epoch = a2->start.epoch;
        rhs = v23;
        CMTimeSubtract(&v20, &v19.start, &rhs);
        rhs = start;
        v24 = v20;
        CMTimeSubtract(&v19.start, &rhs, &v24);
        start = v19.start;
        v23 = a2->start;
      }

      v21 = *(*CFArrayGetValueAtIndex(*this, v10) + 76);
      v13 = AddResultDictionary(&v23, &start, &v21, 0, 0, Mutable);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    ++v10;
  }

  v23 = *(this[1] + 1);
  v14 = *&a2->start.epoch;
  *&v19.start.value = *&a2->start.value;
  *&v19.start.epoch = v14;
  *&v19.duration.timescale = *&a2->duration.timescale;
  CMTimeRangeGetEnd(&v20, &v19);
  v15 = this[1];
  v19.start = v20;
  rhs = v15[1];
  CMTimeSubtract(&v24, &v19.start, &rhs);
  start = v24;
  v21 = *(this[1] + 19);
  v19.start = v23;
  rhs = a2->start;
  if (CMTimeCompare(&v19.start, &rhs) < 0)
  {
    *&v19.start.value = *&a2->start.value;
    v19.start.epoch = a2->start.epoch;
    rhs = v23;
    CMTimeSubtract(&v20, &v19.start, &rhs);
    rhs = start;
    v24 = v20;
    CMTimeSubtract(&v19.start, &rhs, &v24);
    start = v19.start;
    v23 = a2->start;
  }

  v13 = AddResultDictionary(&v23, &start, &v21, 0, 0, Mutable);
  if (v13)
  {
LABEL_15:
    v16 = v13;
    if (!Mutable)
    {
      return v16;
    }

    goto LABEL_22;
  }

  if (Mutable)
  {
    Copy = CFArrayCreateCopy(a4, Mutable);
  }

  else
  {
    Copy = 0;
  }

  v16 = 0;
  *a5 = Copy;
  if (Mutable)
  {
LABEL_22:
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t MotionAnalysis<ma::InterestingnessSegment>::AddSegment(uint64_t a1)
{
  v2 = operator new(0x58uLL, MEMORY[0x1E69E5398]);
  if (!v2)
  {
    return 4294967188;
  }

  v3 = v2;
  ma::InterestingnessSegment::InterestingnessSegment(v2);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v7 = v4;
  v5 = Vector<ma::Object *>::PushBack(a1);
  if (v5 && v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v5;
}

void sub_1C9ED4848(uint64_t a1)
{
  *(v1 + 24) = a1;

  v6 = *(v1 + 40);
  _Unwind_Resume(*(v1 + 24));
}

void CAStreamBasicDescription::CAStreamBasicDescription(CAStreamBasicDescription *this, double a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  this->var0 = a2;
  this->var3 = a4;
  this->var4 = a5;
  this->var5 = a6;
  this->var6 = a7;
  this->var1 = a3;
  this->var2 = a9;
  this->var7 = a8;
  this->var8 = 0;
}

uint64_t MADProtoSceneClassificationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(VCPProtoBounds);
        objc_storeStrong((a1 + 24), v23);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v27[0] = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27[0];
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v27[0] & 0x7F) << v14;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_40:
        *(a1 + 16) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9ED6134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPMotionFlowAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9ED65C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9ED70CC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t VCPProtoLivePhotoSharpnessResultReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v18 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9EDB494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPImageCaptionAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1C9EDF558()
{
  v1 = *v0;
  sub_1C9F40240();
  MEMORY[0x1CCA94140](v1);
  return sub_1C9F40260();
}

uint64_t sub_1C9EDF5A0()
{
  v1 = *v0;
  sub_1C9F40240();
  MEMORY[0x1CCA94140](v1);
  return sub_1C9F40260();
}

id sub_1C9EDF5E4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C9EDF618()
{
  sub_1C9F3FCB0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCModelCatalogModel();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for _MADObjCModelCatalogModel()
{
  result = qword_1EC4312E0;
  if (!qword_1EC4312E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9EDF768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1C9F3F850();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C9F3F690();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E08);
  v14 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46 - v17;
  v49 = v7;
  v19 = *(v7 + 56);
  v51 = v6;
  v19(&v46 - v17, 1, 1, v6);
  if (a1)
  {
    v56[0] = a1;
    result = sub_1C9F401F0();
    __break(1u);
  }

  else
  {
    sub_1C9F3F780();
    sub_1C9EDFE30(v55, v56);
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    sub_1C9F3F810();
    v20 = v54;
    (*(v14 + 56))(v13, 0, 1, v54);
    (*(v14 + 32))(v52, v13, v20);
    v21 = sub_1C9F3F7E0();
    v22 = v50;
    MEMORY[0x1CCA93730](v21);
    (*(v48 + 8))(v5, v3);
    if (sub_1C9F3F660())
    {
      sub_1C9EE20E8(v18, &qword_1EC430E10);
      v23 = v49;
      v24 = *(v49 + 16);
      v25 = v51;
      v24(v18, v22, v51);
      v19(v18, 0, 1, v25);
      v26 = v47;
      v24(v47, v22, v25);
      v27 = sub_1C9F3FCA0();
      v28 = v22;
      v29 = sub_1C9F400E0();
      if (os_log_type_enabled(v27, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v55[0] = v31;
        *v30 = 136315138;
        sub_1C9EE1FE0();
        v32 = sub_1C9F401D0();
        v33 = v25;
        v35 = v34;
        v36 = *(v23 + 8);
        v36(v26, v33);
        v37 = sub_1C9EE1A38(v32, v35, v55);

        *(v30 + 4) = v37;
        _os_log_impl(&dword_1C9B70000, v27, v29, "Found model %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1CCA971A0](v31, -1, -1);
        MEMORY[0x1CCA971A0](v30, -1, -1);

        v36(v50, v51);
      }

      else
      {

        v44 = *(v23 + 8);
        v44(v26, v25);
        v44(v28, v25);
      }
    }

    else
    {
      v38 = sub_1C9F3FCA0();
      v39 = sub_1C9F400F0();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v51;
      v42 = v49;
      if (v40)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C9B70000, v38, v39, "Failed to find model", v43, 2u);
        MEMORY[0x1CCA971A0](v43, -1, -1);
      }

      (*(v42 + 8))(v22, v41);
    }

    (*(v14 + 8))(v52, v54);
    sub_1C9EDFE8C(v18, v53);
    return __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C9EDFE30(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C9EDFE8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9EDFF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1C9F3F690();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C9F3F870();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E18);
  v62 = *(v64 - 8);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v4;
  v17 = *(v4 + 56);
  v66 = &v54 - v18;
  v61 = v3;
  v59 = v17;
  v17();
  if (a1)
  {
    v77[0] = a1;
    result = sub_1C9F401F0();
    __break(1u);
  }

  else
  {
    sub_1C9F3F7C0();
    v19 = v78;
    v20 = v79;
    v21 = __swift_project_boxed_opaque_existential_1(v77, v78);
    v80[3] = v19;
    v80[4] = *(v20 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
    sub_1C9F3F7A0();
    v23 = v75;
    v24 = v76;
    v25 = __swift_project_boxed_opaque_existential_1(v74, v75);
    v81[3] = v23;
    v81[4] = *(v24 + 8);
    v26 = __swift_allocate_boxed_opaque_existential_1(v81);
    (*(*(v23 - 8) + 16))(v26, v25, v23);
    sub_1C9F3F7B0();
    v27 = v72;
    v28 = v73;
    v29 = __swift_project_boxed_opaque_existential_1(v71, v72);
    v82[3] = v27;
    v82[4] = *(v28 + 8);
    v30 = __swift_allocate_boxed_opaque_existential_1(v82);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    sub_1C9F3F790();
    v31 = v69;
    v32 = v70;
    v33 = __swift_project_boxed_opaque_existential_1(v68, v69);
    v83[3] = v31;
    v83[4] = *(v32 + 8);
    v34 = __swift_allocate_boxed_opaque_existential_1(v83);
    (*(*(v31 - 8) + 16))(v34, v33, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E20);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    sub_1C9F3F790();
    __swift_project_boxed_opaque_existential_1(v77, v78);
    sub_1C9F3F810();
    v35 = v64;
    v36 = sub_1C9F3F7E0();
    MEMORY[0x1CCA93750](v36);
    v56 = *(v60 + 8);
    v56(v7, v63);
    v37 = v66;
    sub_1C9EE20E8(v66, &qword_1EC430E10);
    v38 = v61;
    v59(v16, 0, 1, v61);
    sub_1C9EDFE8C(v16, v37);
    v39 = v62;
    (*(v62 + 16))(v10, v12, v35);
    v40 = sub_1C9F3FCA0();
    LODWORD(v60) = sub_1C9F400E0();
    v65 = v40;
    if (os_log_type_enabled(v40, v60))
    {
      v41 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74[0] = v59;
      *v41 = 136315138;
      v42 = sub_1C9F3F7E0();
      v55 = v10;
      v43 = v57;
      MEMORY[0x1CCA93750](v42);
      v56(v7, v63);
      sub_1C9EE1FE0();
      v44 = sub_1C9F401D0();
      v46 = v45;
      (*(v58 + 8))(v43, v38);
      v47 = *(v39 + 8);
      v48 = v64;
      v47(v55, v64);
      v49 = sub_1C9EE1A38(v44, v46, v74);

      *(v41 + 4) = v49;
      v50 = v65;
      _os_log_impl(&dword_1C9B70000, v65, v60, "fetchAsset succeeded, baseURL: %s", v41, 0xCu);
      v51 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1CCA971A0](v51, -1, -1);
      MEMORY[0x1CCA971A0](v41, -1, -1);

      v47(v12, v48);
    }

    else
    {

      v52 = *(v39 + 8);
      v52(v10, v35);
      v52(v12, v35);
    }

    sub_1C9EDFE8C(v37, v67);
    return __swift_destroy_boxed_opaque_existential_1Tm(v77);
  }

  return result;
}

id sub_1C9EE0768(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = a1;
  a4(a3);

  v11 = sub_1C9F3F690();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1C9F3F670();
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  return v14;
}

unsigned __int8 *sub_1C9EE08A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v54[-v2];
  v4 = sub_1C9F3F690();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54[-v9];
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))(0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C9EE20E8(v3, &qword_1EC430E10);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  sub_1C9F3F680();
  result = (*((*v11 & *v0) + 0x70))(&v55, v8, 0xD000000000000021, 0x80000001C9FE18C0, MEMORY[0x1E69E6158]);
  v13 = v56;
  if (!v56)
  {
    v23 = sub_1C9F3FCA0();
    v24 = sub_1C9F400F0();
    if (!os_log_type_enabled(v23, v24))
    {
LABEL_72:

      v45 = *(v5 + 8);
      v45(v8, v4);
      v45(v10, v4);
      return 0;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C9B70000, v23, v24, "Couldn’t load unified_embedding_encoder_version from metadata.json", v25, 2u);
    v26 = v25;
LABEL_70:
    MEMORY[0x1CCA971A0](v26, -1, -1);
    goto LABEL_72;
  }

  v14 = v55;
  v15 = HIBYTE(v56) & 0xF;
  v16 = v55 & 0xFFFFFFFFFFFFLL;
  if ((v56 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v56) & 0xF;
  }

  else
  {
    v17 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_68:

    v23 = sub_1C9F3FCA0();
    v41 = sub_1C9F400F0();

    if (!os_log_type_enabled(v23, v41))
    {

      goto LABEL_72;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55 = v43;
    *v42 = 136315138;
    v44 = sub_1C9EE1A38(v14, v13, &v55);

    *(v42 + 4) = v44;
    _os_log_impl(&dword_1C9B70000, v23, v41, "'%s' is not a valid integer", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1CCA971A0](v43, -1, -1);
    v26 = v42;
    goto LABEL_70;
  }

  if ((v56 & 0x1000000000000000) == 0)
  {
    if ((v56 & 0x2000000000000000) != 0)
    {
      v56 &= 0xFFFFFFFFFFFFFFuLL;
      if (v55 == 43)
      {
        if (v15)
        {
          if (--v15)
          {
            v19 = 0;
            v33 = &v55 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v15)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (v55 != 45)
      {
        if (v15)
        {
          v19 = 0;
          v38 = &v55;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v15)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v15)
      {
        if (--v15)
        {
          v19 = 0;
          v27 = &v55 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v15)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if ((v55 & 0x1000000000000000) != 0)
      {
        result = ((v56 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1C9F40190();
      }

      v18 = *result;
      if (v18 == 43)
      {
        if (v16 >= 1)
        {
          v15 = v16 - 1;
          if (v16 != 1)
          {
            v19 = 0;
            if (result)
            {
              v30 = result + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_66;
                }

                v32 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  goto LABEL_66;
                }

                v19 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_66;
                }

                ++v30;
                if (!--v15)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_81;
      }

      if (v18 != 45)
      {
        if (v16)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              v36 = *result - 48;
              if (v36 > 9)
              {
                goto LABEL_66;
              }

              v37 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_66;
              }

              v19 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_66;
              }

              ++result;
              if (!--v16)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_58;
        }

LABEL_66:
        v19 = 0;
        LOBYTE(v15) = 1;
LABEL_67:
        v54[8] = v15;
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_75;
      }

      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v20 = result + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_66;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_66;
              }

              v19 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                goto LABEL_66;
              }

              ++v20;
              if (!--v15)
              {
                goto LABEL_67;
              }
            }
          }

LABEL_58:
          LOBYTE(v15) = 0;
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v19 = sub_1C9EE2148(v14, v13, 10);
  v47 = v46;

  if (v47)
  {
    goto LABEL_68;
  }

LABEL_75:
  v48 = v19;

  v49 = sub_1C9F3FCA0();
  v50 = sub_1C9F400E0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v51 = 134218242;
    *(v51 + 4) = v48;
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_1C9EE1A38(7630409, 0xE300000000000000, &v55);
    _os_log_impl(&dword_1C9B70000, v49, v50, "Converted value is %ld (type: %s)", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1CCA971A0](v52, -1, -1);
    MEMORY[0x1CCA971A0](v51, -1, -1);
  }

  v53 = *(v5 + 8);
  v53(v8, v4);
  v53(v10, v4);
  return v48;
}

uint64_t sub_1C9EE1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a5;
  v83 = a3;
  v91[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1C9F3F690();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - v13;
  v87 = a4;
  v15 = sub_1C9F40100();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - v17;
  v84 = a1;
  v19 = sub_1C9F3F6A0();
  v79 = v14;
  v80 = v16;
  v81 = v18;
  v82 = v8;
  v32 = v19;
  v34 = v33;
  v35 = objc_opt_self();
  v36 = sub_1C9F3F6B0();
  *&v89 = 0;
  v37 = [v35 JSONObjectWithData:v36 options:0 error:&v89];

  v38 = v89;
  if (!v37)
  {
    v45 = v38;
    v46 = sub_1C9F3F650();

    swift_willThrow();
    sub_1C9EE26D4(v32, v34);
    v47 = v82;
    (*(v9 + 16))(v12, v84, v82);
    v20 = v46;
    v21 = sub_1C9F3FCA0();
    v22 = sub_1C9F400F0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v91[0] = v85;
      *v23 = 136315394;
      sub_1C9EE1FE0();
      v25 = sub_1C9F401D0();
      v27 = v26;
      (*(v9 + 8))(v12, v47);
      v28 = sub_1C9EE1A38(v25, v27, v91);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      v29 = v46;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v30;
      *v24 = v30;
      _os_log_impl(&dword_1C9B70000, v21, v22, "Error reading or parsing JSON at '%s': %@", v23, 0x16u);
      sub_1C9EE20E8(v24, &qword_1EC430E28);
      MEMORY[0x1CCA971A0](v24, -1, -1);
      v31 = v85;
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x1CCA971A0](v31, -1, -1);
      MEMORY[0x1CCA971A0](v23, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v47);
    }

    return (*(*(v87 - 8) + 56))(v86, 1, 1);
  }

  v77 = v32;
  v78 = v34;
  sub_1C9F40150();
  swift_unknownObjectRelease();
  sub_1C9EE2728(v91, &v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E30);
  if (!swift_dynamicCast())
  {
    v48 = v9;
    v49 = *(v9 + 16);
    v50 = v79;
    v51 = v82;
    v49(v79, v84, v82);
    v52 = sub_1C9F3FCA0();
    v53 = sub_1C9F400F0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v89 = v55;
      *v54 = 136315138;
      sub_1C9EE1FE0();
      v56 = sub_1C9F401D0();
      v58 = v57;
      (*(v48 + 8))(v50, v51);
      v59 = sub_1C9EE1A38(v56, v58, &v89);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1C9B70000, v52, v53, "JSON at '%s' isn’t a top-level dictionary.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1CCA971A0](v55, -1, -1);
      MEMORY[0x1CCA971A0](v54, -1, -1);
      sub_1C9EE26D4(v77, v78);
    }

    else
    {
      sub_1C9EE26D4(v77, v78);

      (*(v48 + 8))(v50, v51);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    return (*(*(v87 - 8) + 56))(v86, 1, 1);
  }

  v40 = v87;
  v39 = v88;
  if (*(v88 + 16))
  {
    v41 = a2;
    v42 = v83;
    v43 = sub_1C9EE2BF8(a2, v83);
    if (v44)
    {
      sub_1C9EE2728(*(v39 + 56) + 32 * v43, &v89);
    }

    else
    {

      v89 = 0u;
      v90 = 0u;
    }
  }

  else
  {

    v89 = 0u;
    v90 = 0u;
    v42 = v83;
    v41 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E38);
  v61 = v81;
  v62 = swift_dynamicCast();
  v63 = v80;
  if (v62)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    sub_1C9EE26D4(v77, v78);
    v64 = v61;
    v65 = *(v40 - 8);
    v66 = *(v65 + 56);
    v66(v64, 0, 1, v40);
    v67 = v86;
    (*(v65 + 32))(v86, v64, v40);
    return (v66)(v67, 0, 1, v40);
  }

  else
  {
    v68 = *(*(v40 - 8) + 56);
    v68(v61, 1, 1, v40);
    (*(v63 + 8))(v61, v15);

    v69 = sub_1C9F3FCA0();
    v70 = sub_1C9F400F0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v89 = v72;
      *v71 = 136315394;
      *(v71 + 4) = sub_1C9EE1A38(v41, v42, &v89);
      *(v71 + 12) = 2080;
      v73 = sub_1C9F40270();
      v75 = sub_1C9EE1A38(v73, v74, &v89);

      *(v71 + 14) = v75;
      v40 = v87;
      _os_log_impl(&dword_1C9B70000, v69, v70, "No value for key “%s” or type mismatch (expected %s).", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA971A0](v72, -1, -1);
      MEMORY[0x1CCA971A0](v71, -1, -1);
    }

    sub_1C9EE26D4(v77, v78);

    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    return (v68)(v86, 1, 1, v40);
  }
}

id sub_1C9EE1994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCModelCatalogModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C9EE1A38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C9EE1B04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C9EE2728(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C9EE1B04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C9EE1C10(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C9F40190();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C9EE1C10(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C9EE1C5C(a1, a2);
  sub_1C9EE1D8C(&unk_1F496ABB0);
  return v3;
}

uint64_t sub_1C9EE1C5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C9EE1E78(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C9F40190();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C9F3FFA0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C9EE1E78(v10, 0);
        result = sub_1C9F40160();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C9EE1D8C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C9EE1EEC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C9EE1E78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C9EE1EEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1C9EE1FE0()
{
  result = qword_1EC42F740;
  if (!qword_1EC42F740)
  {
    sub_1C9F3F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC42F740);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C9EE20E8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unsigned __int8 *sub_1C9EE2148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C9F40010();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C9EE2784();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C9F40190();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C9EE26D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C9EE2728(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C9EE2784()
{
  v0 = sub_1C9F40020();
  v4 = sub_1C9EE2804(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C9EE2804(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C9F40110();
    if (!v9 || (v10 = v9, v11 = sub_1C9EE1E78(v9, 0), v12 = sub_1C9EE295C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C9F3FF60();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C9F3FF60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C9F40190();
LABEL_4:

  return sub_1C9F3FF60();
}

unint64_t sub_1C9EE295C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C9EE2B7C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C9F3FFE0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C9F40190();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C9EE2B7C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C9F3FFB0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C9EE2B7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C9F3FFF0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCA93EB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1C9EE2BF8(uint64_t a1, uint64_t a2)
{
  sub_1C9F40240();
  sub_1C9F3FF70();
  v4 = sub_1C9F40260();

  return sub_1C9EE2E8C(a1, a2, v4);
}

unint64_t sub_1C9EE2C74()
{
  result = qword_1EC430E40;
  if (!qword_1EC430E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC430E40);
  }

  return result;
}

unint64_t sub_1C9EE2CCC()
{
  result = qword_1EC430E48;
  if (!qword_1EC430E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC430E48);
  }

  return result;
}

uint64_t sub_1C9EE2D48()
{
  result = sub_1C9F3FCC0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C9EE2E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C9F401E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C9EE2F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E58);
  __swift_allocate_value_buffer(v0, qword_1EC4318E8);
  __swift_project_value_buffer(v0, qword_1EC4318E8);
  return sub_1C9F3F770();
}

uint64_t sub_1C9EE2FBC()
{
  v0 = sub_1C9F3FCC0();
  __swift_allocate_value_buffer(v0, qword_1EC431908);
  __swift_project_value_buffer(v0, qword_1EC431908);
  return sub_1C9F3FCB0();
}

uint64_t sub_1C9EE3040()
{
  v0 = swift_allocObject();
  sub_1C9EE3078();
  return v0;
}

uint64_t sub_1C9EE3078()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  v6 = sub_1C9F3FC60();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C9EE8000(MEMORY[0x1E69E7CC0]);
  type metadata accessor for CollectionUnderstandingMultiModalInferenceProvider._ClientInfo(0);
  v11 = swift_allocObject();
  sub_1C9EE5228(0x80000001C9FE1920, v10);
  *(v1 + OBJC_IVAR____TtC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProvider__clientInfo) = v11;
  if (qword_1EC4318E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EC4318E8);
  (*(v3 + 16))(v5, v12, v2);
  sub_1C9EE816C(&unk_1F496AC18);
  sub_1C9EE20E8(&unk_1F496AC38, &qword_1EC430E60);
  sub_1C9F3FC50();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate, v9, v6);
  return v1;
}

uint64_t sub_1C9EE32DC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C9EEA998;

  return sub_1C9EE3388(a1, v2, a2);
}

uint64_t sub_1C9EE3388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F08);
  v3[31] = swift_task_alloc();
  v3[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F10);
  v3[33] = swift_task_alloc();
  v4 = sub_1C9F3FC00();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = sub_1C9F3FC10();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F18);
  v3[40] = swift_task_alloc();
  v6 = sub_1C9F3FC90();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v7 = sub_1C9F3FBD0();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v8 = sub_1C9F3FB40();
  v3[48] = v8;
  v3[49] = *(v8 - 8);
  v3[50] = swift_task_alloc();
  v9 = sub_1C9F3FB30();
  v3[51] = v9;
  v3[52] = *(v9 - 8);
  v3[53] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E68);
  v3[54] = v10;
  v3[55] = *(v10 - 8);
  v3[56] = swift_task_alloc();
  v11 = sub_1C9F3FB90();
  v3[57] = v11;
  v3[58] = *(v11 - 8);
  v3[59] = swift_task_alloc();
  v12 = sub_1C9F3FB80();
  v3[60] = v12;
  v3[61] = *(v12 - 8);
  v3[62] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E70);
  v3[63] = v13;
  v3[64] = *(v13 - 8);
  v3[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E78);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E80);
  v3[68] = v14;
  v3[69] = *(v14 - 8);
  v3[70] = swift_task_alloc();
  v15 = sub_1C9F3FE00();
  v3[71] = v15;
  v3[72] = *(v15 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9EE39A8, 0, 0);
}

uint64_t sub_1C9EE39A8()
{
  v47 = v0[78];
  v43 = v0[77];
  v32 = v0[76];
  v50 = v0[75];
  v20 = v0[74];
  v1 = v0[73];
  v51 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];
  v21 = v0[66];
  v22 = v0[68];
  v29 = v0[65];
  v30 = v0[64];
  v31 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v39 = v0[56];
  v40 = v0[55];
  v41 = v0[54];
  v34 = v0[53];
  v35 = v0[52];
  v33 = v0[51];
  v36 = v0[50];
  v37 = v0[49];
  v38 = v0[48];
  v44 = v0[46];
  v45 = v0[45];
  v46 = v0[47];
  v48 = v0[40];
  v6 = v0[30];
  v42 = v0[29];
  sub_1C9F3FE10();
  v0[80] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9F63E90;
  *(inited + 32) = 0x736567616D69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F28);
  *(inited + 80) = sub_1C9EEA814();
  *(inited + 48) = v6;

  sub_1C9EE84A4(inited);
  swift_setDeallocating();
  sub_1C9EE20E8(inited + 32, &qword_1EC430F38);
  v0[81] = sub_1C9EEA8D8(&qword_1EC430E88, MEMORY[0x1E69C61B8]);
  sub_1C9F3FEF0();

  v49 = *(v51 + 8);
  v0[82] = v49;
  v0[83] = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49(v1, v2);
  v8 = sub_1C9F3F8E0();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1C9EEA930(v5, v21, &qword_1EC430E78);
  sub_1C9F3F920();
  sub_1C9F3F910();
  sub_1C9F3F8F0();
  sub_1C9F3F900();
  sub_1C9EE20E8(v5, &qword_1EC430E78);
  v9 = *MEMORY[0x1E69A1380];
  LODWORD(v21) = *MEMORY[0x1E69A1380];
  (*(v4 + 104))(v3, v9, v22);
  sub_1C9F3FEC0();
  (*(v4 + 8))(v3, v22);
  v49(v20, v2);
  v10 = sub_1C9F3FBA0();
  (*(*(v10 - 8) + 56))(v23, 1, 1, v10);
  (*(v24 + 104))(v23, *MEMORY[0x1E69A13C0], v25);
  v11 = sub_1C9F3FB70();
  (*(*(v11 - 8) + 56))(v26, 1, 1, v11);
  (*(v27 + 104))(v26, *MEMORY[0x1E69A13D0], v28);
  sub_1C9F3FBB0();
  (*(v30 + 104))(v29, v9, v31);
  sub_1C9F3FEA0();
  (*(v30 + 8))(v29, v31);
  v49(v50, v2);
  v12 = sub_1C9F3FB50();
  (*(*(v12 - 8) + 56))(v34, 1, 1, v12);
  (*(v35 + 104))(v34, *MEMORY[0x1E69A1390], v33);
  v13 = sub_1C9F3FB20();
  (*(*(v13 - 8) + 56))(v36, 1, 1, v13);
  (*(v37 + 104))(v36, *MEMORY[0x1E69A1398], v38);
  sub_1C9F3FB60();
  (*(v40 + 104))(v39, v21, v41);
  sub_1C9F3FEB0();
  (*(v40 + 8))(v39, v41);
  v49(v32, v2);
  sub_1C9EE8000(MEMORY[0x1E69E7CC0]);
  sub_1C9F3FE90();

  v49(v43, v2);
  v14 = *(v42 + OBJC_IVAR____TtC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProvider__clientInfo);
  v0[84] = v14;
  v15 = OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v44 + 16))(v46, v14 + v15, v45);
  sub_1C9F3FED0();
  (*(v44 + 8))(v46, v45);
  v49(v47, v2);
  v16 = sub_1C9F3FC80();
  (*(*(v16 - 8) + 56))(v48, 1, 1, v16);
  sub_1C9F3FC70();
  v17 = swift_task_alloc();
  v0[85] = v17;
  *v17 = v0;
  v17[1] = sub_1C9EE4204;
  v18 = v0[31];

  return MEMORY[0x1EEE0B308](v18, 0xD00000000000001CLL, 0x80000001C9FE1950);
}

uint64_t sub_1C9EE4204()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_1C9EE48D8;
  }

  else
  {
    v2 = sub_1C9EE4318;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C9EE4318()
{
  v1 = v0[31];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1C9EE20E8(v1, &qword_1EC430F08);
  }

  else
  {
    v39 = v0[82];
    v34 = v0[78];
    v35 = v0[79];
    v37 = v0[71];
    v38 = v0[72];
    v3 = v0[43];
    v29 = v0[42];
    v30 = v0[41];
    v31 = v0[44];
    v40 = v0[39];
    v36 = v0[38];
    v4 = v0[37];
    v5 = v0[35];
    v33 = v5;
    v27 = v0[34];
    v28 = v0[36];
    v6 = v0[32];
    v7 = v0[33];
    v32 = v0[29];
    v25 = *(v6 + 48);
    v26 = *(v2 + 48);
    v8 = *(v36 + 32);
    v8(v7, v1, v4);
    v9 = *(v5 + 32);
    v9(v7 + v25, v1 + v26, v27);
    v10 = *(v6 + 48);
    v8(v40, v7, v4);
    v9(v28, v7 + v10, v27);
    sub_1C9F3FBF0();
    (*(v29 + 8))(v31, v30);
    (*(v29 + 32))(v31, v3, v30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9F63E90;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000001C9FE1B00;
    v12 = OBJC_IVAR____TtC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate;
    v13 = sub_1C9F3FC60();
    *(inited + 72) = v13;
    *(inited + 80) = sub_1C9EEA8D8(&qword_1EC430F48, MEMORY[0x1E69A14E8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v32 + v12, v13);
    sub_1C9EE84A4(inited);
    swift_setDeallocating();
    sub_1C9EE20E8(inited + 32, &qword_1EC430F38);
    sub_1C9EE85D8(MEMORY[0x1E69E7CC0]);
    sub_1C9F3FBE0();

    (*(v33 + 8))(v28, v27);
    (*(v36 + 8))(v40, v4);
    v39(v35, v37);
    (*(v38 + 32))(v35, v34, v37);
  }

  v23 = v0[84];
  v15 = v0[82];
  v16 = v0[79];
  v17 = v0[78];
  v18 = v0[71];
  v19 = v0[44];
  v20 = v0[42];
  v24 = v0[41];
  sub_1C9F3FE80();
  v0[27] = *(v23 + OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo__model);
  sub_1C9F3F8B0();
  sub_1C9F3FEE0();
  v15(v17, v18);
  (*(v20 + 8))(v19, v24);
  v15(v16, v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1C9EE48D8()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[71];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C9EE4AC4(uint64_t a1)
{
  v2 = sub_1C9F3FE70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate;
  v7 = sub_1C9F3FC60();
  v14[3] = v7;
  v14[4] = sub_1C9EEA8D8(&qword_1EC430F48, MEMORY[0x1E69A14E8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1 + v6, v7);
  v9 = MEMORY[0x1E69C6388];
  sub_1C9F3FE30();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F00);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C9F63E90;
  (*(v3 + 16))(v11 + v10, v5, v2);
  MEMORY[0x1CCA93D10](v11, v2, v9);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C9EE4CD8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E90);
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1C9EE4DEC;

  return sub_1C9EE3388(v5, v1, a1);
}

uint64_t sub_1C9EE4DEC()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9EE5160, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[7] = v3;
    v4 = sub_1C9EEA8D8(&qword_1EC430E98, MEMORY[0x1E69DA470]);
    *v3 = v2;
    v3[1] = sub_1C9EE4FA8;
    v5 = v2[2];

    return MEMORY[0x1EEE0A360](v5, v4);
  }
}

uint64_t sub_1C9EE4FA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9EE51C4, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_1C9EE5160()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C9EE51C4()
{

  v1 = *(v0 + 8);

  return v1();
}

unsigned __int8 *sub_1C9EE5228(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C9F3F8D0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52[1] = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C9F3FA40();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52[0] = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E58);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v52 - v12;
  v14 = sub_1C9F3FBD0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0xD000000000000023;
  *(v3 + 24) = a1;
  v52[2] = a1;

  sub_1C9EE8000(MEMORY[0x1E69E7CC0]);
  sub_1C9F3FBC0();
  (*(v15 + 32))(v3 + OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo_trackingConfig, v17, v14);
  if (!*(a2 + 16))
  {
    goto LABEL_67;
  }

  v18 = sub_1C9EE2BF8(0xD000000000000015, 0x80000001C9FE1B20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_67;
  }

  v20 = (*(a2 + 56) + 16 * v18);
  v22 = *v20;
  v21 = v20[1];

  v24 = HIBYTE(v21) & 0xF;
  v25 = v22 & 0xFFFFFFFFFFFFLL;
  if (!((v21 & 0x2000000000000000) != 0 ? HIBYTE(v21) & 0xF : v22 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_67;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    sub_1C9EE2148(v22, v21, 10);
    goto LABEL_67;
  }

  if ((v21 & 0x2000000000000000) != 0)
  {
    v53[0] = v22;
    v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
    if (v22 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v40 = 0;
          v41 = v53 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v40;
            if ((v40 * 10) >> 64 != (10 * v40) >> 63)
            {
              break;
            }

            v40 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v24)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_76:
      __break(1u);
      return result;
    }

    if (v22 != 45)
    {
      if (v24)
      {
        v47 = 0;
        v48 = v53;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v47;
          if ((v47 * 10) >> 64 != (10 * v47) >> 63)
          {
            break;
          }

          v47 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          ++v48;
          if (!--v24)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v24)
    {
      if (--v24)
      {
        v32 = 0;
        v33 = v53 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v24)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_74;
  }

  if ((v22 & 0x1000000000000000) != 0)
  {
    result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1C9F40190();
  }

  v27 = *result;
  if (v27 == 43)
  {
    if (v25 < 1)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v24 = v25 - 1;
    if (v25 != 1)
    {
      v36 = 0;
      if (result)
      {
        v37 = result + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            goto LABEL_65;
          }

          v39 = 10 * v36;
          if ((v36 * 10) >> 64 != (10 * v36) >> 63)
          {
            goto LABEL_65;
          }

          v36 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            goto LABEL_65;
          }

          ++v37;
          if (!--v24)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_57;
    }

LABEL_65:
    LOBYTE(v24) = 1;
    goto LABEL_66;
  }

  if (v27 != 45)
  {
    if (v25)
    {
      v44 = 0;
      if (result)
      {
        while (1)
        {
          v45 = *result - 48;
          if (v45 > 9)
          {
            goto LABEL_65;
          }

          v46 = 10 * v44;
          if ((v44 * 10) >> 64 != (10 * v44) >> 63)
          {
            goto LABEL_65;
          }

          v44 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            goto LABEL_65;
          }

          ++result;
          if (!--v25)
          {
            goto LABEL_57;
          }
        }
      }

      goto LABEL_57;
    }

    goto LABEL_65;
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v24 = v25 - 1;
  if (v25 == 1)
  {
    goto LABEL_65;
  }

  v28 = 0;
  if (result)
  {
    v29 = result + 1;
    while (1)
    {
      v30 = *v29 - 48;
      if (v30 > 9)
      {
        goto LABEL_65;
      }

      v31 = 10 * v28;
      if ((v28 * 10) >> 64 != (10 * v28) >> 63)
      {
        goto LABEL_65;
      }

      v28 = v31 - v30;
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_65;
      }

      ++v29;
      if (!--v24)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_57:
  LOBYTE(v24) = 0;
LABEL_66:
  v54 = v24;
LABEL_67:

  sub_1C9F3F8B0();
  if (qword_1EC4318E0 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v10, qword_1EC4318E8);
  (*(v11 + 16))(v13, v51, v10);
  sub_1C9F3F8C0();
  sub_1C9F3FA30();
  *(v3 + OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo__model) = sub_1C9F3F8A0();
  return v3;
}

uint64_t sub_1C9EE5874()
{

  v1 = OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo_trackingConfig;
  v2 = sub_1C9F3FBD0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C9EE5928()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1C9EE595C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_1C9F3FBD0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1C9EE59E8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProviderP33_C6D1110AB3E21F99DA0FD0ECE57E427D11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = sub_1C9F3FBD0();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_1C9EE5AF8()
{
  v1 = OBJC_IVAR____TtC13MediaAnalysis50CollectionUnderstandingMultiModalInferenceProvider_promptTemplate;
  v2 = sub_1C9F3FC60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1C9EE5BA4()
{
  v1 = v0;
  type metadata accessor for CollectionUnderstandingMultiModalInferenceProvider(0);
  v2 = swift_allocObject();
  sub_1C9EE3078();
  *&v1[OBJC_IVAR____MADObjCThemeGenerator_collectionUnderstandingMultiModalInferenceProvider] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for _MADObjCThemeGenerator();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1C9EE5C74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430E90);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1C9F3FE60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1C9F3FE50();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9EE5E1C, 0, 0);
}

uint64_t sub_1C9EE5E1C()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    result = sub_1C9F401B0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = v0[11];
  v4 = v0[8];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v34 = *MEMORY[0x1E69C62B0];
    v32 = (v4 + 104);
    v6 = MEMORY[0x1E69E7CC0];
    v35 = result;
    do
    {
      v8 = v0[14];
      v7 = v0[15];
      v10 = v0[9];
      v9 = v0[10];
      v11 = v0[7];
      MEMORY[0x1CCA94070](v5, v0[2]);
      (*v32)(v10, v34, v11);
      sub_1C9F3F6C0();
      sub_1C9F3FE40();
      (*(v3 + 16))(v8, v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C9EE76B8(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1C9EE76B8(v12 > 1, v13 + 1, 1, v6);
      }

      ++v5;
      v15 = v0[14];
      v14 = v0[15];
      v16 = v0[10];
      swift_unknownObjectRelease();
      (*(v3 + 8))(v14, v16);
      v6[2] = v13 + 1;
      (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v15, v16);
    }

    while (v35 != v5);
  }

  else
  {
    v17 = (v0[2] + 32);
    v33 = *(v4 + 104);
    v31 = *MEMORY[0x1E69C62B0];
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v36 = result;
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[10];
      v21 = *v17;
      v33(v0[9], v31, v0[7]);
      v22 = v21;
      sub_1C9F3F6C0();
      sub_1C9F3FE40();
      (*(v3 + 16))(v19, v18, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C9EE76B8(0, v6[2] + 1, 1, v6);
      }

      v24 = v6[2];
      v23 = v6[3];
      if (v24 >= v23 >> 1)
      {
        v6 = sub_1C9EE76B8(v23 > 1, v24 + 1, 1, v6);
      }

      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[10];

      (*(v3 + 8))(v25, v27);
      v6[2] = v24 + 1;
      (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v26, v27);
      ++v17;
      result = v36 - 1;
    }

    while (v36 != 1);
  }

LABEL_21:
  v0[16] = v6;
  v28 = *(v0[3] + OBJC_IVAR____MADObjCThemeGenerator_collectionUnderstandingMultiModalInferenceProvider);
  v29 = swift_task_alloc();
  v0[17] = v29;
  *v29 = v0;
  v29[1] = sub_1C9EE6268;
  v30 = v0[6];

  return sub_1C9EE3388(v30, v28, v6);
}

uint64_t sub_1C9EE6268()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9EE6628, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[19] = v3;
    v4 = sub_1C9EEA8D8(&qword_1EC430E98, MEMORY[0x1E69DA470]);
    *v3 = v2;
    v3[1] = sub_1C9EE6440;
    v5 = v2[4];

    return MEMORY[0x1EEE0A360](v5, v4);
  }
}

uint64_t sub_1C9EE6440(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[20] = v2;

  if (v2)
  {
    (*(v6[5] + 8))(v6[6], v6[4]);

    return MEMORY[0x1EEE6DFA0](sub_1C9EE66D0, 0, 0);
  }

  else
  {
    (*(v6[5] + 8))(v6[6], v6[4]);

    v7 = v6[1];

    return v7(a1, a2);
  }
}

uint64_t sub_1C9EE6628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C9EE66D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C9EE6778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_1C9EE6810;

  return sub_1C9EE5C74(a1);
}

uint64_t sub_1C9EE6810(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1C9EE69D8;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1C9EE6944;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C9EE6944()
{
  v1 = *(v0 + 32);
  v2 = sub_1C9F3FF30();

  v1(v2, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C9EE69D8()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EB0);
  sub_1C9EEA678(0, &qword_1EC430EB8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 32);

    v4 = *(v0 + 24);
    v5 = v4;
    v3(0, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C9EE6AE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if (a2)
  {
    sub_1C9F40090();
    v12 = sub_1C9F400B0();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    v13 = &unk_1C9F63F10;
  }

  else
  {
    v14 = sub_1C9F400B0();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v13 = &unk_1C9F63F00;
  }

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a1;
  v15[6] = a3;
  v15[7] = a4;
  v16 = v4;

  sub_1C9EE6D44(0, 0, v11, v13, v15);
}

uint64_t sub_1C9EE6C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1C9EEA998;

  return sub_1C9EE6778(a5, a6, a7);
}

uint64_t sub_1C9EE6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C9EEA930(a3, v22 - v9, &qword_1EC430EA8);
  v11 = sub_1C9F400B0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C9EE20E8(v10, &qword_1EC430EA8);
  }

  else
  {
    sub_1C9F400A0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C9F40080();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C9F3FF50() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C9EE20E8(a3, &qword_1EC430EA8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C9EE20E8(a3, &qword_1EC430EA8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C9EE6FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1C9EE70A4;

  return sub_1C9EE6778(a5, a6, a7);
}

uint64_t sub_1C9EE70A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1C9EE7294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCThemeGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C9EE72F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1C9F40020();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1C9EE7890(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1C9EE7890((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1C9F40000();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1C9F3FF80();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1C9F3FF80();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1C9F40020();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1C9EE7890(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1C9F40020();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1C9EE7890(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1C9EE7890((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1C9F3FF80();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1C9EE76B8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EC0);
  v10 = *(sub_1C9F3FE50() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1C9F3FE50() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C9EE7890(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_1C9EE799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1C9EEA794();

  result = sub_1C9F40010();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C9EE2784();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C9F40190();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C9EE7F34(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1C9F40190();
  }

  result = sub_1C9EE8708(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1C9EE8000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F70);
    v3 = sub_1C9F401C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C9EE2BF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C9EE816C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F68);
    v3 = sub_1C9F401C0();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C9EE2BF8(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C9EE82A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C9EE82FC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C9EE70A4;

  return sub_1C9EE6FF0(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C9EE83F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C9EEA998;

  return sub_1C9EE6C90(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1C9EE84A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F60);
    v3 = sub_1C9F401C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C9EEA930(v4, &v13, &qword_1EC430F38);
      v5 = v13;
      v6 = v14;
      result = sub_1C9EE2BF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C9EDFE30(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C9EE85D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F50);
    v3 = sub_1C9F401C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C9EEA930(v4, &v13, &qword_1EC430F58);
      v5 = v13;
      v6 = v14;
      result = sub_1C9EE2BF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C9EEA920(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C9EE8708(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C9EE2B7C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C9F3FFD0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C9EE2B7C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C9EE2B7C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1C9F3FFD0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1C9EE96EC()
{
  v85 = sub_1C9F3FA70();
  v83 = *(v85 - 8);
  v0 = MEMORY[0x1EEE9AC00](v85);
  v82 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v0);
  v84 = &v81 - v2;
  v98 = sub_1C9F3FAB0();
  v101 = *(v98 - 8);
  v3 = MEMORY[0x1EEE9AC00](v98);
  v86 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v81 - v5;
  v90 = sub_1C9F3FAA0();
  v88 = *(v90 - 8);
  v6 = MEMORY[0x1EEE9AC00](v90);
  v87 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v81 - v8;
  v96 = sub_1C9F3FAF0();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1C9F3FAD0();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C9F3FB10();
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430ED0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v103 = &v81 - v14;
  v104 = sub_1C9F3F740();
  v15 = *(v104 - 1);
  MEMORY[0x1EEE9AC00](v104);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C9F3F760();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v81 - v23;
  v25 = sub_1C9F3F710();
  v106 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9F3F720();
  sub_1C9F3F700();
  v27 = *(v19 + 8);
  v27(v22, v18);
  sub_1C9F3F6F0();
  sub_1C9F3F750();
  v28 = v24;
  v29 = v25;
  v30 = v103;
  v27(v28, v18);
  sub_1C9F3F730();
  v31 = v17;
  v32 = v106;
  (*(v15 + 8))(v31, v104);
  if ((*(v32 + 48))(v30, 1, v29) == 1)
  {
    sub_1C9EE20E8(v30, &qword_1EC430ED0);
    if (qword_1EC431900 != -1)
    {
      swift_once();
    }

    v33 = sub_1C9F3FCC0();
    __swift_project_value_buffer(v33, qword_1EC431908);
    v34 = sub_1C9F3FCA0();
    v35 = sub_1C9F400F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C9B70000, v34, v35, "Unable to get device language code", v36, 2u);
      MEMORY[0x1CCA971A0](v36, -1, -1);
    }

    return 0;
  }

  v37 = v105;
  (*(v32 + 32))(v105, v30, v29);
  v38 = v93;
  (*(v32 + 16))(v93, v37, v29);
  (*(v94 + 104))(v38, *MEMORY[0x1E69A12B0], v96);
  v39 = v91;
  sub_1C9F3FAC0();
  v40 = v102;
  sub_1C9F3FB00();
  (*(v92 + 8))(v39, v95);
  v41 = v97;
  sub_1C9F3FAE0();
  v42 = v101;
  v43 = *(v101 + 88);
  v44 = v98;
  if (v43(v41, v98) != *MEMORY[0x1E69A0F00])
  {
    v61 = *(v42 + 8);
    v61(v41, v44);
    v62 = v86;
    sub_1C9F3FAE0();
    if (v43(v62, v44) != *MEMORY[0x1E69A0EF8])
    {
      (*(v99 + 8))(v40, v100);
      (*(v32 + 8))(v105, v29);
      v61(v62, v44);
      return 1;
    }

    (*(v101 + 96))(v62, v44);
    v63 = v83;
    v64 = v84;
    v65 = v85;
    (*(v83 + 32))(v84, v62, v85);
    if (qword_1EC431900 != -1)
    {
      swift_once();
    }

    v66 = sub_1C9F3FCC0();
    __swift_project_value_buffer(v66, qword_1EC431908);
    v67 = v82;
    (*(v63 + 16))(v82, v64, v65);
    v68 = sub_1C9F3FCA0();
    v69 = sub_1C9F400F0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v107[0] = v71;
      *v70 = 136315138;
      sub_1C9F3FA60();
      sub_1C9F3FA50();
      sub_1C9EEA8D8(&qword_1EC430ED8, MEMORY[0x1E69A0F90]);
      v72 = sub_1C9F400C0();
      v74 = v73;

      v104 = *(v63 + 8);
      v75 = v67;
      v76 = v85;
      v104(v75, v85);
      v77 = sub_1C9EE1A38(v72, v74, v107);

      *(v70 + 4) = v77;
      _os_log_impl(&dword_1C9B70000, v68, v69, "PhotosLibraryUnderstanding adaptor is restricted with reasons: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1CCA971A0](v71, -1, -1);
      MEMORY[0x1CCA971A0](v70, -1, -1);

      v104(v84, v76);
      goto LABEL_17;
    }

    v80 = *(v63 + 8);
    v80(v67, v65);
    v80(v64, v65);
    (*(v99 + 8))(v102, v100);
LABEL_21:
    (*(v32 + 8))(v105, v29);
    return 0;
  }

  (*(v42 + 96))(v41, v44);
  v46 = v88;
  v45 = v89;
  v47 = v90;
  (*(v88 + 32))(v89, v41, v90);
  if (qword_1EC431900 != -1)
  {
    swift_once();
  }

  v48 = sub_1C9F3FCC0();
  __swift_project_value_buffer(v48, qword_1EC431908);
  v49 = v87;
  (*(v46 + 16))(v87, v45, v47);
  v50 = sub_1C9F3FCA0();
  v51 = sub_1C9F400F0();
  if (!os_log_type_enabled(v50, v51))
  {

    v78 = *(v46 + 8);
    v78(v49, v47);
    v78(v45, v47);
    (*(v99 + 8))(v40, v100);
    goto LABEL_21;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v107[0] = v53;
  *v52 = 136315138;
  LODWORD(v104) = v51;
  sub_1C9F3FA90();
  sub_1C9F3FA80();
  sub_1C9EEA8D8(&qword_1EC430EE0, MEMORY[0x1E69A1168]);
  v54 = sub_1C9F400C0();
  v56 = v55;

  v57 = *(v46 + 8);
  v58 = v49;
  v59 = v90;
  v57(v58, v90);
  v60 = sub_1C9EE1A38(v54, v56, v107);

  *(v52 + 4) = v60;
  _os_log_impl(&dword_1C9B70000, v50, v104, "PhotosLibraryUnderstanding adaptor is unavailable with reasons: %s", v52, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  MEMORY[0x1CCA971A0](v53, -1, -1);
  MEMORY[0x1CCA971A0](v52, -1, -1);

  v57(v89, v59);
LABEL_17:
  (*(v99 + 8))(v102, v100);
  (*(v106 + 8))(v105, v29);
  return 0;
}

uint64_t sub_1C9EEA4B8()
{
  result = sub_1C9F3FC60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9EEA55C()
{
  result = sub_1C9F3FBD0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9EEA678(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1C9EEA73C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9F401E0() & 1;
  }
}

unint64_t sub_1C9EEA794()
{
  result = qword_1EC430EF0;
  if (!qword_1EC430EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC430EF0);
  }

  return result;
}

unint64_t sub_1C9EEA814()
{
  result = qword_1EC430F30;
  if (!qword_1EC430F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC430F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC430F30);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C9EEA8D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1C9EEA920(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C9EEA930(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C9EEA9B4()
{
  v1 = *v0;
  sub_1C9F40240();
  MEMORY[0x1CCA94140](v1);
  return sub_1C9F40260();
}

uint64_t sub_1C9EEAA28()
{
  v1 = *v0;
  sub_1C9F40240();
  MEMORY[0x1CCA94140](v1);
  return sub_1C9F40260();
}

id sub_1C9EEAA7C()
{
  sub_1C9F3FCB0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCAlchemistService();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for _MADObjCAlchemistService()
{
  result = qword_1EC431BF0;
  if (!qword_1EC431BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *sub_1C9EEABC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = sub_1C9F3F630();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = 44;
  *(&v75 + 1) = 0xE100000000000000;
  v70 = &v75;

  v11 = sub_1C9EE72F8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C9EEA73C, v69, a1, a2, v10);
  if (*(v11 + 16) != 2)
  {

    v44 = MEMORY[0x1E698A8A8];
    goto LABEL_23;
  }

  v66 = a3;
  v12 = *(v11 + 48);
  v13 = *(v11 + 56);
  v75 = *(v11 + 32);
  v76 = v12;
  v77 = v13;
  v73 = 123;
  v74 = 0xE100000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  v68 = v11;
  sub_1C9EEE59C();
  sub_1C9EEE5F0();
  *&v75 = sub_1C9F40140();
  *(&v75 + 1) = v14;
  v73 = 125;
  v74 = 0xE100000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  v15 = sub_1C9F40140();
  v17 = v16;

  *&v75 = v15;
  *(&v75 + 1) = v17;
  sub_1C9F3F620();
  v67 = sub_1C9F40130();
  v19 = v18;
  v22 = *(v7 + 8);
  v20 = v7 + 8;
  v21 = v22;
  v22(v9, v6);

  if (*(v68 + 16) < 2uLL)
  {
    __break(1u);
LABEL_69:

    goto LABEL_67;
  }

  v64 = *(v68 + 64);
  v65 = v6;
  v23 = v19;
  v24 = *(v68 + 80);
  v25 = *(v68 + 88);

  v75 = v64;
  v76 = v24;
  v77 = v25;
  v73 = 123;
  v74 = 0xE100000000000000;
  v68 = v20;
  v71 = 0;
  v72 = 0xE000000000000000;
  v26 = sub_1C9F40140();
  v28 = v27;

  *&v75 = v26;
  *(&v75 + 1) = v28;
  v73 = 125;
  v74 = 0xE100000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  v29 = sub_1C9F40140();
  v31 = v30;

  *&v75 = v29;
  *(&v75 + 1) = v31;
  sub_1C9F3F620();
  v32 = sub_1C9F40130();
  v34 = v33;
  v21(v9, v65);

  v35 = HIBYTE(v23) & 0xF;
  result = v67;
  v37 = v67 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v38 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v38 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_69;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    LOBYTE(v73) = 0;
    v40 = sub_1C9EED804(v67, v23, 10);

    if ((v40 & 0x100000000) != 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    v62 = sub_1C9EEB2D8(v32, v34);
    if ((v62 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    a3 = v66;
    *v66 = v40;
    a3[1] = v62;
    v44 = MEMORY[0x1E698A8A0];
LABEL_23:
    v45 = *v44;
    v46 = sub_1C9F3F9B0();
    (*(*(v46 - 8) + 104))(a3, v45, v46);
LABEL_74:
    sub_1C9F3F9B0();
    return (*(*(v46 - 8) + 56))(a3, 0, 1, v46);
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v67 & 0x1000000000000000) != 0)
    {
      result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1C9F40190();
    }

    v39 = *result;
    if (v39 == 43)
    {
      if (v37 >= 1)
      {
        v35 = v37 - 1;
        if (v37 != 1)
        {
          LODWORD(v40) = 0;
          if (result)
          {
            v50 = result + 1;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                goto LABEL_65;
              }

              v52 = 10 * v40;
              if ((v52 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_65;
              }

              LODWORD(v40) = v52 + v51;
              if (__CFADD__(v52, v51))
              {
                goto LABEL_65;
              }

              ++v50;
              if (!--v35)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_78;
    }

    if (v39 != 45)
    {
      if (v37)
      {
        LODWORD(v40) = 0;
        if (result)
        {
          while (1)
          {
            v56 = *result - 48;
            if (v56 > 9)
            {
              goto LABEL_65;
            }

            v57 = 10 * v40;
            if ((v57 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_65;
            }

            LODWORD(v40) = v57 + v56;
            if (__CFADD__(v57, v56))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v37)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      LODWORD(v40) = 0;
      LOBYTE(v35) = 1;
LABEL_66:
      LOBYTE(v73) = v35;
      v61 = v35;

      if (v61)
      {
LABEL_67:

LABEL_73:
        v63 = *MEMORY[0x1E698A8A8];
        v46 = sub_1C9F3F9B0();
        a3 = v66;
        (*(*(v46 - 8) + 104))(v66, v63, v46);
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    if (v37 >= 1)
    {
      v35 = v37 - 1;
      if (v37 != 1)
      {
        LODWORD(v40) = 0;
        if (result)
        {
          v41 = result + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              goto LABEL_65;
            }

            v43 = 10 * v40;
            if ((v43 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_65;
            }

            LODWORD(v40) = v43 - v42;
            if (v43 < v42)
            {
              goto LABEL_65;
            }

            ++v41;
            if (!--v35)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v35) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *&v75 = v67;
  *(&v75 + 1) = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v67 != 43)
  {
    if (v67 != 45)
    {
      if (v35)
      {
        LODWORD(v40) = 0;
        v58 = &v75;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          v60 = 10 * v40;
          if ((v60 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v40) = v60 + v59;
          if (__CFADD__(v60, v59))
          {
            break;
          }

          ++v58;
          if (!--v35)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v35)
    {
      if (--v35)
      {
        LODWORD(v40) = 0;
        v47 = &v75 + 1;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v40;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v40) = v49 - v48;
          if (v49 < v48)
          {
            break;
          }

          ++v47;
          if (!--v35)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_77;
  }

  if (v35)
  {
    if (--v35)
    {
      LODWORD(v40) = 0;
      v53 = &v75 + 1;
      while (1)
      {
        v54 = *v53 - 48;
        if (v54 > 9)
        {
          break;
        }

        v55 = 10 * v40;
        if ((v55 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v40) = v55 + v54;
        if (__CFADD__(v55, v54))
        {
          break;
        }

        ++v53;
        if (!--v35)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1C9EEB2D8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C9EED804(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1C9F40190();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1C9EEB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 296) = a5;
  *(v6 + 48) = a1;
  v7 = sub_1C9F3F930();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  v8 = sub_1C9F3F890();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F90);
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_1C9F3F9B0();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F98);
  *(v6 + 176) = swift_task_alloc();
  v10 = sub_1C9F3FA10();
  *(v6 + 184) = v10;
  *(v6 + 192) = *(v10 - 8);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  v11 = sub_1C9F3F9F0();
  *(v6 + 216) = v11;
  *(v6 + 224) = *(v11 - 8);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9EEB884, 0, 0);
}

uint64_t sub_1C9EEB884()
{
  v1 = MTLCreateSystemDefaultDevice();
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    v5 = *(v0 + 56);
    sub_1C9F3FF40();
    sub_1C9F3FA00();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v7 = *(v0 + 192);
      v6 = *(v0 + 200);
      v8 = *(v0 + 184);
      sub_1C9EE20E8(*(v0 + 176), &qword_1EC430F98);
      (*(v7 + 104))(v6, *MEMORY[0x1E698A8D0], v8);
      sub_1C9F3F9E0();
      v9 = sub_1C9F3FCA0();
      v10 = sub_1C9F400E0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1C9B70000, v9, v10, "Use default preset: photosApp", v11, 2u);
        MEMORY[0x1CCA971A0](v11, -1, -1);
      }
    }

    else
    {
      v14 = *(v0 + 200);
      v13 = *(v0 + 208);
      v15 = *(v0 + 184);
      v16 = *(v0 + 192);
      v17 = *(v0 + 56);
      (*(v16 + 32))(v13, *(v0 + 176), v15);
      (*(v16 + 16))(v14, v13, v15);
      sub_1C9F3F9E0();
      v18 = v17;
      v19 = sub_1C9F3FCA0();
      v20 = sub_1C9F400E0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 56);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v21;
        *v23 = v5;
        v24 = v21;
        _os_log_impl(&dword_1C9B70000, v19, v20, "Use preset: %@", v22, 0xCu);
        sub_1C9EE20E8(v23, &qword_1EC430E28);
        MEMORY[0x1CCA971A0](v23, -1, -1);
        MEMORY[0x1CCA971A0](v22, -1, -1);
      }

      v25 = *(v0 + 208);
      v26 = *(v0 + 184);
      v27 = *(v0 + 192);

      (*(v27 + 8))(v25, v26);
    }

    v28 = *(v0 + 144);
    v29 = *(v0 + 152);
    v30 = *(v0 + 136);
    v31 = sub_1C9F3FF40();
    sub_1C9EEABC4(v31, v32, v30);

    if ((*(v29 + 48))(v30, 1, v28) == 1)
    {
      sub_1C9EE20E8(*(v0 + 136), &qword_1EC430F90);
    }

    else
    {
      v34 = *(v0 + 160);
      v33 = *(v0 + 168);
      v35 = *(v0 + 144);
      v36 = *(v0 + 152);
      (*(v36 + 32))(v33, *(v0 + 136), v35);
      (*(v36 + 16))(v34, v33, v35);
      v37 = sub_1C9F3F9D0();
      sub_1C9F3F9C0();
      v37(v0 + 16, 0);
      (*(v36 + 8))(v33, v35);
    }

    v38 = *(v0 + 80);
    (*(*(v0 + 224) + 16))(*(v0 + 232), *(v0 + 240), *(v0 + 216));
    *(swift_allocObject() + 16) = v38;
    sub_1C9F3F9A0();
    swift_allocObject();
    swift_unknownObjectRetain();
    v39 = v38;
    *(v0 + 256) = sub_1C9F3F990();
    v42 = *(v0 + 72);
    sub_1C9F3F880();
    v44 = *(v0 + 96);
    v43 = *(v0 + 104);
    v45 = *(v0 + 88);
    if (v42)
    {
      *v43 = sub_1C9F3FF40();
      v43[1] = v46;
      v47 = MEMORY[0x1E698A750];
    }

    else
    {
      v47 = MEMORY[0x1E698A748];
    }

    (*(v44 + 104))(v43, *v47, v45);
    v67 = *(v0 + 120);
    v68 = *(v0 + 128);
    v66 = *(v0 + 112);
    v70 = *(v0 + 96);
    v71 = *(v0 + 104);
    v69 = *(v0 + 88);
    v48 = *(v0 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430FA8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430FB0);
    v50 = *(*(v49 - 8) + 72);
    v51 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1C9F640E0;
    v53 = v52 + v51;
    v54 = v52 + v51 + *(v49 + 48);
    v55 = *MEMORY[0x1E698A828];
    v56 = sub_1C9F3F980();
    v57 = *(*(v56 - 8) + 104);
    (v57)(v53, v55, v56);
    *(v54 + 24) = MEMORY[0x1E69E6448];
    *v54 = v48;
    v58 = (v53 + v50 + *(v49 + 48));
    v57();
    v58[3] = v66;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    (*(v67 + 16))(boxed_opaque_existential_1, v68, v66);
    v60 = v53 + 2 * v50 + *(v49 + 48);
    v57();
    *(v60 + 24) = MEMORY[0x1E69E6370];
    *v60 = 0;
    v61 = (v53 + 3 * v50 + *(v49 + 48));
    v57();
    v61[3] = v69;
    v62 = __swift_allocate_boxed_opaque_existential_1(v61);
    (*(v70 + 16))(v62, v71, v69);
    v63 = sub_1C9EEDFB0(v52);
    *(v0 + 264) = v63;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v72 = (*MEMORY[0x1E698A878] + MEMORY[0x1E698A878]);
    v64 = swift_task_alloc();
    *(v0 + 272) = v64;
    *v64 = v0;
    v64[1] = sub_1C9EEC0EC;
    v65 = *(v0 + 48);

    return v72(v65, v63);
  }

  else
  {
    sub_1C9EEE4E4();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1C9EEC0EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_1C9EEC4F4;
  }

  else
  {
    v4 = sub_1C9EEC228;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C9EEC228(double a1)
{
  v2 = v1[36];
  sub_1C9F435C8(a1);
  swift_allocObject();
  sub_1C9F4359C(v3);
  sub_1C9F43570(v4);
  if (v2)
  {
    v5 = v1[35];
    v6 = v1[28];
    v26 = v1[27];
    v27 = v1[30];
    v7 = v1[15];
    v8 = v1[13];
    v24 = v1[14];
    v25 = v1[16];
    v9 = v1[11];
    v10 = v1[12];

    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    (*(v7 + 8))(v25, v24);
    (*(v6 + 8))(v27, v26);

    v11 = v1[1];

    return v11();
  }

  else
  {
    v13 = v1[30];
    v14 = v1[28];
    v23 = v1[27];
    v15 = v1[15];
    v21 = v1[14];
    v22 = v1[16];
    v16 = v1[12];
    v17 = v1[13];
    v18 = v1[11];

    swift_unknownObjectRelease();
    (*(v16 + 8))(v17, v18);
    (*(v15 + 8))(v22, v21);
    (*(v14 + 8))(v13, v23);

    v19 = v1[1];
    v20 = v1[35];

    return v19(v20);
  }
}

uint64_t sub_1C9EEC4F4()
{
  v11 = v0[30];
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v1);

  v9 = v0[1];

  return v9();
}

void sub_1C9EEC64C(uint64_t a1)
{
  v2 = sub_1C9F3F970();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x1E698A7F0])
  {
    if (v6 == *MEMORY[0x1E698A800])
    {
      v7 = sub_1C9F3FCA0();
      v8 = sub_1C9F400E0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Generation started";
LABEL_8:
        _os_log_impl(&dword_1C9B70000, v7, v8, v10, v9, 2u);
        MEMORY[0x1CCA971A0](v9, -1, -1);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v6 == *MEMORY[0x1E698A7E0])
    {
      v7 = sub_1C9F3FCA0();
      v8 = sub_1C9F400E0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Generation finished";
        goto LABEL_8;
      }

LABEL_9:

      return;
    }

    v11 = *MEMORY[0x1E698A7D8];
    v12 = v6;
    v13 = sub_1C9F3FCA0();
    v14 = sub_1C9F400E0();
    v15 = os_log_type_enabled(v13, v14);
    if (v12 == v11)
    {
      if (v15)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C9B70000, v13, v14, "\nGeneration failed", v16, 2u);
        MEMORY[0x1CCA971A0](v16, -1, -1);
      }
    }

    else
    {
      if (v15)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C9B70000, v13, v14, "\nUnknown event encountered!", v17, 2u);
        MEMORY[0x1CCA971A0](v17, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_1C9EEC948(void *a1, void *a2, void *a3, void *a4, void (*a5)(void, void), void *a6, float a7)
{
  v8 = v7;
  v50 = a3;
  v51 = a5;
  v47 = a4;
  v48 = a1;
  v49 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_1C9F3F950();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  sub_1C9F3F9A0();
  sub_1C9F3F960();
  (*(v15 + 104))(v18, *MEMORY[0x1E698A778], v14);
  v21 = sub_1C9F3F940();
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  if (v21)
  {
    v23 = sub_1C9F400B0();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v26 = v48;
    v25 = v49;
    *(v24 + 32) = v8;
    *(v24 + 40) = v26;
    *(v24 + 48) = a7;
    v28 = v50;
    v27 = v51;
    *(v24 + 56) = v25;
    *(v24 + 64) = v28;
    v29 = v47;
    *(v24 + 72) = v47;
    *(v24 + 80) = v27;
    *(v24 + 88) = a6;
    v30 = v29;

    v31 = v8;
    v32 = v26;
    v33 = v25;
    v34 = v28;
    sub_1C9EED188(0, 0, v13, &unk_1C9F64110, v24);
  }

  else
  {
    v50 = a6;
    v35 = sub_1C9F3FCA0();
    v36 = sub_1C9F400E0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C9B70000, v35, v36, "\nAlchemist service is not available.\n", v37, 2u);
      MEMORY[0x1CCA971A0](v37, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430F78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9F63E90;
    *(inited + 32) = sub_1C9F3FF40();
    *(inited + 40) = v39;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1C9F40170();
    MEMORY[0x1CCA93E80](0xD000000000000012, 0x80000001C9FE1B80);
    sub_1C9F3F960();
    sub_1C9F401A0();
    v22(v20, v14);
    MEMORY[0x1CCA93E80](46, 0xE100000000000000);
    v40 = v52;
    v41 = v53;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v40;
    *(inited + 56) = v41;
    sub_1C9EE85D8(inited);
    swift_setDeallocating();
    sub_1C9EE20E8(inited + 32, &qword_1EC430F58);
    v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v43 = sub_1C9F3FF30();
    v44 = sub_1C9F3FF00();

    v45 = [v42 initWithDomain:v43 code:3328 userInfo:v44];

    v46 = v45;
    v51(0, v45);
  }
}

uint64_t sub_1C9EECE14(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[4] = v18;
  v9[5] = v19;
  v15 = swift_task_alloc();
  v9[6] = v15;
  *v15 = v9;
  v15[1] = sub_1C9EECEEC;

  return sub_1C9EEB5B4(a6, a7, a8, a9, a1);
}

uint64_t sub_1C9EECEEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1C9EED09C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1C9EED014;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C9EED014()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C9EED09C()
{
  *(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EB0);
  sub_1C9EEEE04();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 24);
    v4 = v3;
    v2(0, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_1C9EED188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430EA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C9EEA930(a3, v25 - v10, &qword_1EC430EA8);
  v12 = sub_1C9F400B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C9EE20E8(v11, &qword_1EC430EA8);
  }

  else
  {
    sub_1C9F400A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C9F40080();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C9F3FF50() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C9EE20E8(a3, &qword_1EC430EA8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C9EE20E8(a3, &qword_1EC430EA8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1C9EED570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MADObjCAlchemistService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9EED614(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C9EED70C;

  return v6(a1);
}

uint64_t sub_1C9EED70C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unsigned __int8 *sub_1C9EED804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1C9F40010();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C9EE2784();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C9F40190();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_1C9EEDD80(uint64_t a1)
{
  sub_1C9F3F980();
  sub_1C9EEE558(&qword_1EC430FC0);
  v2 = sub_1C9F3FF10();

  return sub_1C9EEDE04(a1, v2);
}

unint64_t sub_1C9EEDE04(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1C9F3F980();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1C9EEE558(&qword_1EC430FC8);
      v15 = sub_1C9F3FF20();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1C9EEDFB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430FB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC430FB8);
    v7 = sub_1C9F401C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C9EEA930(v9, v5, &qword_1EC430FB0);
      result = sub_1C9EEDD80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C9F3F980();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1C9EEA920(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C9EEE19C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C9EEA998;

  return sub_1C9EECE14(v4, v8, v9, v10, v2, v3, v5, v6, v7);
}

unint64_t sub_1C9EEE278()
{
  result = qword_1EC430F80;
  if (!qword_1EC430F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC430F80);
  }

  return result;
}