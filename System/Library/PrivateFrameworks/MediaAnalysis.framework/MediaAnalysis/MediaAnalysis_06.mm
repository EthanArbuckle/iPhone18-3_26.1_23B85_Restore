void MADPLLogStaticStickerCreation(double a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  if (v4 >= a1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:{a1, @"StartTimestamp"}];
    v8[1] = @"EndTimestamp";
    v9[0] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v9[1] = v6;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[StaticStickerCreation] Sending Power Log %@", buf, 0xCu);
    }

    PLLogRegisteredEvent();
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v11 = a1;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[StaticStickerCreation] Processing start time (%f) > end time (%f), failed to send Power Log", buf, 0x16u);
  }
}

void MADPLLogAnimatedStickerCreation(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSince1970];
  v6 = v5;

  if (v6 >= a2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:{a2, @"StartTimestamp"}];
    v12[0] = v7;
    v11[1] = @"EndTimestamp";
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
    v12[1] = v8;
    v11[2] = @"ProcessedFrameCount";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v12[2] = v9;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AnimatedStickerCreation] Sending Power Log %@", buf, 0xCu);
    }

    PLLogRegisteredEvent();
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v14 = a2;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AnimatedStickerCreation] Processing start time (%f) > end time (%f), failed to send Power Log", buf, 0x16u);
  }
}

uint64_t VCPProtoMovieTorsoResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(VCPProtoBounds);
        objc_storeStrong((a1 + 8), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
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

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(VCPProtoTimeRange);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

ma::Frame *ma::Frame::Frame(ma::Frame *this)
{
  *this = -1;
  v2 = MEMORY[0x1E6960C70];
  v3 = *MEMORY[0x1E6960C70];
  *(this + 20) = *(MEMORY[0x1E6960C70] + 16);
  *(this + 4) = v3;
  *(this + 28) = *v2;
  *(this + 44) = *(v2 + 16);
  ma::Translation::Translation(this + 52);
  ma::Translation::Translation(this + 64);
  *(this + 84) = 0;
  *(this + 76) = 0;
  ma::Translation::Translation(this + 92);
  *(this + 108) = 0;
  ma::Translation::Translation(this + 112);
  *(this + 31) = 0;
  ma::MotionResult::MotionResult((this + 128));
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 0;
  ma::Histogram::Histogram((this + 360));
  ma::MotionResult::Reset((this + 128));
  return this;
}

void sub_1C9DED5A8(_Unwind_Exception *a1)
{
  ma::Histogram::~Histogram((v1 + 360));
  ma::MotionResult::~MotionResult((v1 + 128));
  _Unwind_Resume(a1);
}

__n128 ma::Frame::Initialize(ma::Frame *this, CMTime *a2, CMTime *a3, CVPixelBufferRef pixelBuffer, int a5)
{
  if (!a5 || !ma::Histogram::Initialize((this + 360), pixelBuffer, 0))
  {
    ma::MotionResult::Reset((this + 128));
    v9 = *&a2->value;
    *(this + 20) = a2->epoch;
    *(this + 4) = v9;
    v10 = *&a3->value;
    *(this + 44) = a3->epoch;
    *(this + 28) = v10;
    result = *&a3->value;
    *(this + 292) = a3->epoch;
    *(this + 276) = result;
  }

  return result;
}

uint64_t VCPProtoFilesystemMovieClassificationResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        if ((v12 & 7) == 2)
        {
          v37[0] = 0;
          v37[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v19 = [a2 position];
            if (v19 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              v38 = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                v25 = [a2 data];
                [v25 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v22 |= (v38 & 0x7F) << v20;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v11 = v21++ >= 9;
              if (v11)
              {
                goto LABEL_40;
              }
            }

            [a2 hasError];
LABEL_40:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            LOBYTE(v37[0]) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v37[0] & 0x7F) << v26;
            if ((v37[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              goto LABEL_54;
            }
          }

          [a2 hasError];
LABEL_54:
          PBRepeatedUInt32Add();
        }

        goto LABEL_60;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        LODWORD(v37[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v37 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v33 = v37[0];
        v34 = 36;
LABEL_59:
        *(a1 + v34) = v33;
        goto LABEL_60;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_60:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    LODWORD(v37[0]) = 0;
    v16 = [a2 position] + 4;
    if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
    {
      v32 = [a2 data];
      [v32 getBytes:v37 range:{objc_msgSend(a2, "position"), 4}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
    }

    else
    {
      [a2 _setError];
    }

    v33 = v37[0];
    v34 = 32;
    goto LABEL_59;
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCPHumanGetflagsFromKeypoints(uint64_t *a1, float a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v3 == *a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = 0;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v12 = -13;
  do
  {
    if (*(*v2 + 8) > a2)
    {
      v13 = v12 + 8;
      v14 = result | 0x800000;
      if (v12 >= 2)
      {
        v14 = result;
      }

      if (v12 + 6 <= 1)
      {
        v15 = result | 0x400000;
      }

      else
      {
        v15 = v14;
      }

      if (v12 < 0xFFFFFFFE)
      {
        v16 = v7;
      }

      else
      {
        v15 = result;
        v16 = v7 + 1;
      }

      v17 = v13 > 1;
      if (v13 <= 1)
      {
        v18 = result;
      }

      else
      {
        v18 = v15;
      }

      if (v17)
      {
        v19 = v8;
      }

      else
      {
        v19 = v8 + 1;
      }

      if (!v17)
      {
        v16 = v7;
      }

      if (v5 <= 4)
      {
        ++v9;
      }

      else
      {
        result = v18;
      }

      if (v5 <= 4)
      {
        v6 |= v5 < 3;
      }

      else
      {
        v8 = v19;
        v7 = v16;
      }
    }

    ++v5;
    ++v12;
    v2 += 24;
  }

  while (v11 != v5);
  v20 = v6 & (v9 > 2);
  if (v8)
  {
    v21 = v7 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (v20 == 1)
  {
    if (v22)
    {
      return result | 0x300000;
    }

    else
    {
      return result | 0x100000;
    }
  }

  else if (v22)
  {
    return result | 0x200000;
  }

  return result;
}

void sub_1C9DEEE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPMotionFlowSubtleMotionAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9DEF370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9DEFE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float *std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(float *result, float *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v9 = result;
LABEL_2:
  v10 = v9;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v9 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v56 = v10[1];
          v57 = *(a2 - 1);
          if (v56 > v57)
          {
            v58 = *(v10 + 1);
          }

          else
          {
            v58 = *(a2 - 1);
          }

          if (v56 > v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          *(v10 + 1) = v58;
          v59 = *(a2 - 1);
          if (v59 > *v10)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = *v10;
          }

          if (v59 > *v10)
          {
            v59 = *v10;
          }

          *(a2 - 1) = v59;
          v62 = *v10;
          v61 = v10[1];
          if (v60 <= v61)
          {
            v62 = v10[1];
            v61 = v60;
          }

          *v10 = v62;
          v10[1] = v61;
          return result;
        case 4:
          v86 = v10[1];
          v85 = v10[2];
          if (*v10 > v85)
          {
            v87 = *v10;
          }

          else
          {
            v87 = v10[2];
          }

          if (*v10 <= v85)
          {
            v85 = *v10;
          }

          v10[2] = v85;
          *v10 = v87;
          v88 = *(a2 - 1);
          if (v86 > v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = *(a2 - 1);
          }

          if (v86 <= v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v10;
          if (*v10 > v89)
          {
            v91 = *v10;
          }

          else
          {
            v91 = v89;
          }

          if (*v10 > v89)
          {
            v90 = v89;
          }

          *v10 = v91;
          v10[1] = v90;
          v92 = v10[2];
          v93 = *(a2 - 1);
          if (v92 > v93)
          {
            v94 = v10[2];
          }

          else
          {
            v94 = *(a2 - 1);
          }

          if (v92 > v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v10[1];
          if (v95 > v94)
          {
            v96 = v10[1];
          }

          else
          {
            v96 = v94;
          }

          if (v95 > v94)
          {
            v95 = v94;
          }

          v10[1] = v96;
          v10[2] = v95;
          return result;
        case 5:
          v63 = *v10;
          v64 = v10[1];
          if (*v10 > v64)
          {
            v65 = *v10;
          }

          else
          {
            v65 = v10[1];
          }

          if (*v10 > v64)
          {
            v63 = v10[1];
          }

          *v10 = v65;
          v10[1] = v63;
          v66 = v10[3];
          v67 = *(a2 - 1);
          if (v66 > v67)
          {
            v68 = *(v10 + 3);
          }

          else
          {
            v68 = *(a2 - 1);
          }

          if (v66 > v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          *(v10 + 3) = v68;
          v69 = *(a2 - 1);
          v70 = v10[2];
          if (v69 > v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v10[2];
          }

          if (v69 > v70)
          {
            v69 = v10[2];
          }

          *(a2 - 1) = v69;
          v73 = *(v10 + 2);
          v72 = v10[3];
          v74 = v10[1];
          if (v71 <= v72)
          {
            v73 = *(v10 + 3);
            v72 = v71;
          }

          *(v10 + 2) = v73;
          v10[3] = v72;
          v75 = *(a2 - 1);
          if (v74 > v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = *(a2 - 1);
          }

          if (v74 <= v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v10;
          v79 = v10[2];
          v78 = v10[3];
          if (v78 > *v10)
          {
            v80 = v10[3];
          }

          else
          {
            v80 = *v10;
          }

          if (v78 > *v10)
          {
            v78 = *v10;
          }

          if (v80 <= v79)
          {
            v77 = v10[2];
            v79 = v80;
          }

          if (v78 > v76)
          {
            v81 = v78;
          }

          else
          {
            v81 = v76;
          }

          if (v78 > v76)
          {
            v78 = v76;
          }

          if (v81 <= v79)
          {
            v76 = v79;
          }

          *v10 = v77;
          v10[1] = v76;
          if (v81 > v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v10[2] = v82;
          v10[3] = v78;
          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v10;
        if (v83 > *v10)
        {
          *v10 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = *(a2 - 1);
    if (v13 < 0x81)
    {
      if (*v10 > v15)
      {
        v47 = *v10;
      }

      else
      {
        v47 = *(a2 - 1);
      }

      if (*v10 <= v15)
      {
        v15 = *v10;
      }

      *(a2 - 1) = v15;
      *v10 = v47;
      v48 = *(a2 - 1);
      v49 = v10[v14];
      if (v48 > v49)
      {
        v50 = *(a2 - 1);
      }

      else
      {
        v50 = v10[v14];
      }

      if (v48 > v49)
      {
        v48 = v10[v14];
      }

      *(a2 - 1) = v48;
      v51 = *v10;
      v52 = v50 <= *v10;
      if (v50 > *v10)
      {
        v51 = v10[v14];
      }

      v10[v14] = v51;
      *&a6 = *v10;
      if (v52)
      {
        *&a6 = v50;
      }

      *v10 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v16 = &v10[v14];
      if (*v16 > v15)
      {
        v17 = *v16;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (*v16 <= v15)
      {
        v15 = *v16;
      }

      *(a2 - 1) = v15;
      *v16 = v17;
      v18 = *(a2 - 1);
      if (v18 > *v10)
      {
        v19 = *(a2 - 1);
      }

      else
      {
        v19 = *v10;
      }

      if (v18 > *v10)
      {
        v18 = *v10;
      }

      *(a2 - 1) = v18;
      v20 = *v16;
      v21 = v19 <= *v16;
      if (v19 > *v16)
      {
        v20 = *v10;
      }

      *v10 = v20;
      v23 = *(v16 - 1);
      v22 = *v16;
      if (v21)
      {
        v22 = v19;
      }

      *v16 = v22;
      v24 = *(a2 - 2);
      if (v23 > v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = *(a2 - 2);
      }

      if (v23 <= v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v16 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v10[1];
      if (v26 > v27)
      {
        v28 = *(a2 - 2);
      }

      else
      {
        v28 = v10[1];
      }

      if (v26 > v27)
      {
        v26 = v10[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v16 - 1);
      v30 = v28 <= v29;
      if (v28 > v29)
      {
        v29 = v10[1];
      }

      v10[1] = v29;
      v31 = *(v16 - 1);
      if (v30)
      {
        v31 = v28;
      }

      *(v16 - 1) = v31;
      v32 = v16[1];
      v33 = *(a2 - 3);
      if (v32 > v33)
      {
        v34 = *(v16 + 1);
      }

      else
      {
        v34 = *(a2 - 3);
      }

      if (v32 > v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      *(v16 + 1) = v34;
      v35 = *(a2 - 3);
      v36 = v10[2];
      if (v35 > v36)
      {
        v37 = *(a2 - 3);
      }

      else
      {
        v37 = v10[2];
      }

      if (v35 > v36)
      {
        v35 = v10[2];
      }

      *(a2 - 3) = v35;
      v38 = v16[1];
      v39 = v37 <= v38;
      if (v37 > v38)
      {
        v38 = v10[2];
      }

      v10[2] = v38;
      v41 = *v16;
      v40 = v16[1];
      if (v39)
      {
        v40 = v37;
      }

      v42 = *(v16 - 1);
      if (v41 > v40)
      {
        v43 = *v16;
      }

      else
      {
        v43 = v40;
      }

      if (v41 <= v40)
      {
        v40 = *v16;
      }

      if (v40 > v42)
      {
        v44 = v40;
      }

      else
      {
        v44 = *(v16 - 1);
      }

      if (v40 > v42)
      {
        v45 = *(v16 - 1);
      }

      else
      {
        v45 = v40;
      }

      if (v44 > v43)
      {
        v46 = *(v16 - 1);
      }

      else
      {
        v46 = v43;
      }

      if (v44 > v43)
      {
        v44 = v43;
      }

      *(v16 - 1) = v46;
      *v16 = v44;
      v16[1] = v45;
      *&a6 = *v10;
      *v10 = v44;
      *v16 = *&a6;
      if (a5)
      {
        goto LABEL_90;
      }
    }

    *&a6 = *(v10 - 1);
    if (*&a6 <= *v10)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2);
      v10 = result;
      goto LABEL_95;
    }

LABEL_90:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(v10, a2, a6);
    if ((v54 & 1) == 0)
    {
      goto LABEL_93;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v10, v53);
    v10 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(v53 + 1, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v55)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<float> &,float *,true>(v9, v53, a3, -v12, a5 & 1);
      v10 = v53 + 1;
LABEL_95:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  v97 = v10 + 1;
  v99 = v10 == a2 || v97 == a2;
  if (a5)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v10;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 > v103)
        {
          v104 = v100;
          while (1)
          {
            *(v10 + v104 + 4) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v10 + v104 - 4);
            v104 -= 4;
            if (v102 <= v103)
            {
              v105 = (v10 + v104 + 4);
              goto LABEL_194;
            }
          }

          v105 = v10;
LABEL_194:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 4;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v9;
      v106 = v9[1];
      v9 = v97;
      if (v106 > v107)
      {
        v108 = v97;
        do
        {
          *v108 = v107;
          v107 = *(v108 - 2);
          --v108;
        }

        while (v106 > v107);
        *v108 = v106;
      }

      ++v97;
    }

    while (v9 + 1 != a2);
  }

  return result;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 > v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 <= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 > v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::greater<float> &>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 <= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 <= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 <= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 > v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1C9F609E0;
      v18 = xmmword_1C9F609D0;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(*(v7 + v12), v13));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_1C9F609E0;
    v27 = xmmword_1C9F609D0;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(vextq_s8(v29, v29, 8uLL), v13);
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 > *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] <= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 > v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 > v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 > *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 > *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 > v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 <= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 > v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 <= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 > v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 > v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 > v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 > v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 > v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 > v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 > v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 > v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 > v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 > v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 > v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 > v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 > v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 <= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 > *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 > *a1)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 > v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 > v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 > v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 > v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 <= v33)
  {
    v33 = a1[1];
  }

  if (v33 > v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 > v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 > v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 > *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<float> &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

void sub_1C9DF1FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t VCPImageHumanPoseAnalyzer::Init(VCPImageHumanPoseAnalyzer *this)
{
  {
    std::string::__init(&VCPImageHumanPoseAnalyzer::Init(void)::name, "cnn_human_pose.espresso.net", 0x1BuLL);
    __cxa_atexit(MEMORY[0x1E69E52C0], &VCPImageHumanPoseAnalyzer::Init(void)::name, &dword_1C9B70000);
  }

  return VCPCNNModelEspresso::LoadModel(&this->super._scaler.pool_.value_, &VCPImageHumanPoseAnalyzer::Init(void)::name);
}

uint64_t VCPImageHumanPoseAnalyzer::Analyze(VCPImageHumanPoseAnalyzer *this, CVPixelBufferRef pixelBuffer, __CFDictionary *a3)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (Height >= Width)
  {
    v7 = Width;
  }

  else
  {
    v7 = Height;
  }

  if (v7 >= 64)
  {
    VCPCNNModelEspresso::ExecuteModel(&this->super._scaler, pixelBuffer);
  }

  return 0;
}

void VCPImageHumanPoseAnalyzer::ParsePersons(VCPImageHumanPoseAnalyzer *this, float a2)
{
  v78 = *MEMORY[0x1E69E9840];
  inputData = this[1]._inputData;
  if (inputData)
  {
    v5 = *&this[1]._scaler.format_;
    value = this[1]._scaler.transfer_session_.value_;
    v7 = (v5 * value);
    v8 = 0x1100000000 * v7;
    std::vector<float>::vector[abi:ne200100](__dst, 17 * v7);
    v65 = this;
    memcpy(__dst[0], inputData, v8 >> 30);
    v9 = 0;
    v10 = 0;
    v11 = value * v5;
    v12 = __dst[0];
    v13 = __dst[0] - 12 * v5 - 12;
    v14 = 4 * v5;
    do
    {
      if (value >= 1)
      {
        v15 = 0;
        LODWORD(v16) = 0;
        v17 = &v13[4 * v9];
        v18 = &v12[4 * v11 * v10];
        do
        {
          if (v5 >= 1)
          {
            v19 = 0;
            v16 = v16;
            v20 = -3;
            v21 = v17;
            do
            {
              v22 = *&v18[4 * v16];
              if (v22 >= a2)
              {
                v23 = -3;
                v24 = v21;
                do
                {
                  v25 = 0;
                  v26 = v20;
                  while (v23 + v15 >= value || v26 >= v5 || *&v24[v25] <= v22)
                  {
                    ++v26;
                    v25 += 4;
                    if (v25 == 28)
                    {
                      goto LABEL_17;
                    }
                  }

                  v22 = v22 + -1.0;
                  *&v18[4 * v16] = v22;
LABEL_17:
                  ++v23;
                  v24 += v14;
                }

                while (v23 != 4);
              }

              else
              {
                *&v18[4 * v16] = v22 + -1.0;
              }

              ++v19;
              ++v16;
              ++v20;
              v21 += 4;
            }

            while (v19 != (v5 & 0x7FFFFFFF));
          }

          ++v15;
          v17 += v14;
        }

        while (v15 != (value & 0x7FFFFFFF));
      }

      ++v10;
      v9 += v11;
    }

    while (v10 != 17);
    v63 = inputData;
    v27 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    do
    {
      if (value >= 1)
      {
        v28 = 0;
        LODWORD(v29) = 0;
        v30 = __dst[0] + 4 * v11 * v27;
        v31 = &v63[v11 * (v27 + 17)];
        do
        {
          if (v5 >= 1)
          {
            v32 = 0;
            v64 = v28;
            v33 = v28;
            v29 = v29;
            do
            {
              if (*&v30[4 * v29] > a2)
              {
                v34 = v31[v29];
                if (v66 == v67)
                {
                  goto LABEL_36;
                }

                v35 = 0;
                v36 = -1;
                v37 = 3.4028e38;
                v38 = v66;
                do
                {
                  v39 = *v38;
                  v38 += 3;
                  v40 = vabds_f32(v34, *v39);
                  if (v40 < v37)
                  {
                    v37 = v40;
                    v36 = v35;
                  }

                  ++v35;
                }

                while (v38 != v67);
                if ((v36 & 0x80000000) != 0 || v37 >= 0.3)
                {
LABEL_36:
                  *&__src = v31[v29];
                  HIDWORD(__src) = 1065353216;
                  v76 = 0;
                  v77 = 0;
                  __p = 0;
                  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &__src, v74, 2uLL);
                  std::vector<std::vector<float>>::push_back[abi:ne200100](&v66, &__p);
                  if (__p)
                  {
                    v76 = __p;
                    operator delete(__p);
                  }

                  __p = 0;
                  v76 = 0;
                  v44 = 17;
                  v77 = 0;
                  do
                  {
                    v70 = 0;
                    v71 = 0;
                    v74[0] = 0;
                    v74[1] = 0;
                    __src = 0;
                    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__src, &v70, &v72, 3uLL);
                    std::vector<std::vector<float>>::push_back[abi:ne200100](&__p, &__src);
                    if (__src)
                    {
                      v74[0] = __src;
                      operator delete(__src);
                    }

                    --v44;
                  }

                  while (v44);
                  *&__src = v32;
                  *(&__src + 1) = v33;
                  LODWORD(v74[0]) = *&v30[4 * v29];
                  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(__p + 3 * v27, &__src, v74 + 4, 3uLL);
                  std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](&v65[2]._heatmapNms, &__p);
                  __src = &__p;
                  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
                }

                else
                {
                  v41 = &v66[3 * v36];
                  v42 = (*v41)[1];
                  *&__p = (v34 + (**v41 * v42)) / (v42 + 1.0);
                  *(&__p + 1) = v42 + 1.0;
                  std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v41, &__p, &v76, 2uLL);
                  v43 = (*&v65[2]._heatmapNms[6 * v36] + 24 * v27);
                  if (*&v30[4 * v29] > *(*v43 + 8))
                  {
                    *&__p = v32;
                    *(&__p + 1) = v33;
                    LODWORD(v76) = *&v30[4 * v29];
                    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v43, &__p, &v76 + 4, 3uLL);
                  }
                }
              }

              ++v32;
              ++v29;
            }

            while (v32 != v5);
            v28 = v64;
          }

          ++v28;
        }

        while (v28 != value);
      }

      ++v27;
    }

    while (v27 != 17);
    heatmapNms = v65[2]._heatmapNms;
    for (i = *&v65[2]._forceCPU; heatmapNms != i; heatmapNms += 6)
    {
      v47 = *heatmapNms;
      v48 = *(heatmapNms + 1);
      v49 = v48 - *heatmapNms;
      if (v48 != *heatmapNms)
      {
        v50 = 0;
        v51 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 3);
        if (v51 <= 1)
        {
          v51 = 1;
        }

        do
        {
          v52 = *(v47 + 24 * v50);
          if (v52[2] > 0.1)
          {
            v53 = v52[1];
            v54 = v5 * (v53 - 3);
            v55 = 0;
            v56 = 0;
            for (j = -3; j != 4; ++j)
            {
              v58 = j + v53;
              v59 = 7;
              v60 = *v52 - 3;
              do
              {
                if ((v58 & 0x80000000) == 0 && v58 < value && (v60 & 0x80000000) == 0 && v60 < v5)
                {
                  v61 = v63[v11 * v50 + v54 + v60];
                  if (v61 > 0.05)
                  {
                    *v56.i32 = *v56.i32 + v61;
                    v62.f32[0] = v60;
                    v62.f32[1] = v58;
                    v55 = vmla_n_f32(v55, v62, v61);
                  }
                }

                ++v60;
                --v59;
              }

              while (v59);
              v54 += v5;
            }

            if (*v56.i32 > 0.0)
            {
              *v52 = vadd_f32(vdiv_f32(v55, vdup_lane_s32(v56, 0)), 0x3F0000003F000000);
            }
          }

          ++v50;
        }

        while (v50 != v51);
      }
    }

    __p = &v66;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (__dst[0])
    {
      __dst[1] = __dst[0];
      operator delete(__dst[0]);
    }
  }
}

void VCPImageHumanPoseAnalyzer::ProcessPersons(VCPImageHumanPoseAnalyzer *this, float a2)
{
  v63 = *MEMORY[0x1E69E9840];
  heatmapNms = this[2]._heatmapNms;
  v4 = *&this[2]._forceCPU;
  if (heatmapNms != v4)
  {
    v54 = this[1]._scaler.transfer_session_.value_;
    v55 = *&this[1]._scaler.format_;
    v5 = 1.0;
    v6 = MEMORY[0x1E695E9C0];
    do
    {
      v7 = *heatmapNms;
      v8 = 0.0;
      v9 = 0.0;
      v10 = 1.0;
      v11 = 1.0;
      v12 = 0.0;
      v13 = 0.0;
      if (heatmapNms[1] != *heatmapNms)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = *(v7 + v14);
          v17 = v5 - (*(v16 + 4) / v54);
          *&__src = *v16 / v55;
          *(&__src + 1) = v17;
          v61 = *(v16 + 8);
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>((v7 + v14), &__src, v62, 3uLL);
          v7 = *heatmapNms;
          v18 = *(*heatmapNms + v14);
          v19 = v18[2];
          if (v19 > 0.1)
          {
            v20 = v18[1];
            if (v11 >= *v18)
            {
              v11 = *v18;
            }

            if (v10 >= v20)
            {
              v10 = v18[1];
            }

            if (*v18 >= v9)
            {
              v9 = *v18;
            }

            if (v20 >= v8)
            {
              v8 = v18[1];
            }

            v13 = v13 + v19;
            v12 = v12 + v5;
          }

          ++v15;
          v14 += 24;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((heatmapNms[1] - v7) >> 3) > v15);
      }

      v21 = VCPHumanGetflagsFromKeypoints(heatmapNms, 0.1);
      if ((v9 - v11) != 0.0 && (v8 - v10) != 0.0 && v12 > 4.0)
      {
        v22 = v21;
        if ((v21 & 0xFFFFFFFFFFEFFFFFLL) != 0)
        {
          v23 = vabds_f32(v9, v11);
          v24 = vabds_f32(v8, v10);
          v25 = v23 >= v24 ? v23 : v24;
          if (v25 > 0.1)
          {
            v26 = v10;
            v27 = v23;
            v28 = v24;
            v29 = v13 / v12;
            v30 = v11 - v27 * 0.150000006;
            v31 = v30 >= 0.0 ? v11 - v27 * 0.150000006 : 0.0;
            v32 = v26 - v28 * 0.150000006;
            v33 = v32 >= 0.0 ? v26 - v28 * 0.150000006 : 0.0;
            v34 = v11 + v27 * 1.14999998;
            v35 = v34 <= 1.0 ? v34 : 1.0;
            v36 = v26 + v28 * 1.14999998;
            v5 = 1.0;
            v37 = v36 <= 1.0 ? v26 + v28 * 1.14999998 : 1.0;
            if (v29 > a2)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              theDict = Mutable;
              *&valuePtr = v29;
              v39 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
              __src = v39;
              if (v39)
              {
                CFDictionaryAddValue(Mutable, @"humanConfidence", v39);
              }

              CF<__CVBuffer *>::~CF(&__src);
              v40 = theDict;
              v41 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, v31, 17, v33, 17, (v35 - v31), 17, (v37 - v33));
              __src = &v41->isa;
              if (v41)
              {
                CFDictionaryAddValue(v40, @"humanBounds", v41);
              }

              CF<__CVBuffer *>::~CF(&__src);
              if (BYTE1(this->super.super.isa) == 1)
              {
                v42 = CFArrayCreateMutable(0, 0, v6);
                valuePtr = v42;
                if (heatmapNms[1] != *heatmapNms)
                {
                  v43 = 0;
                  v44 = 0;
                  do
                  {
                    v45 = CFArrayCreateMutable(0, 0, v6);
                    value = v45;
                    v58 = **(*heatmapNms + v43);
                    v46 = CFNumberCreate(0, kCFNumberFloat32Type, &v58);
                    __src = v46;
                    if (v46)
                    {
                      CFArrayAppendValue(v45, v46);
                    }

                    CF<__CVBuffer *>::~CF(&__src);
                    v47 = value;
                    v58 = *(*(*heatmapNms + v43) + 4);
                    v48 = CFNumberCreate(0, kCFNumberFloat32Type, &v58);
                    __src = v48;
                    if (v48)
                    {
                      CFArrayAppendValue(v47, v48);
                    }

                    CF<__CVBuffer *>::~CF(&__src);
                    v49 = value;
                    v58 = *(*(*heatmapNms + v43) + 8);
                    v50 = CFNumberCreate(0, kCFNumberFloat32Type, &v58);
                    __src = v50;
                    if (v50)
                    {
                      CFArrayAppendValue(v49, v50);
                    }

                    CF<__CVBuffer *>::~CF(&__src);
                    CFArrayAppendValue(valuePtr, value);
                    CF<__CVBuffer *>::~CF(&value);
                    ++v44;
                    v43 += 24;
                  }

                  while (0xAAAAAAAAAAAAAAABLL * ((heatmapNms[1] - *heatmapNms) >> 3) > v44);
                  v42 = valuePtr;
                }

                CFDictionaryAddValue(theDict, @"humanKeypoints", v42);
                CF<__CVBuffer *>::~CF(&valuePtr);
              }

              v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              value = v51;
              valuePtr = v22;
              v52 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
              __src = v52;
              if (v52)
              {
                CFDictionaryAddValue(v51, @"flags", v52);
              }

              CF<__CVBuffer *>::~CF(&__src);
              CFDictionaryAddValue(value, @"attributes", theDict);
              CFArrayAppendValue(*&this[2]._inputHeight, value);
              CF<__CVBuffer *>::~CF(&value);
              CF<__CVBuffer *>::~CF(&theDict);
            }
          }
        }
      }

      heatmapNms += 3;
      v4 = *&this[2]._forceCPU;
    }

    while (heatmapNms != v4);
    heatmapNms = this[2]._heatmapNms;
  }

  while (v4 != heatmapNms)
  {
    v4 -= 3;
    __src = v4;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__src);
  }

  *&this[2]._forceCPU = heatmapNms;
}

void sub_1C9DF4408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, uint64_t a29, const void *a30)
{
  CF<__CVBuffer *>::~CF(&a30);
  CF<__CVBuffer *>::~CF(&a28);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

uint64_t std::vector<std::vector<std::vector<float>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::vector<float>>>::__emplace_back_slow_path<std::vector<std::vector<float>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::vector<float>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<float>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9DF484C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<std::vector<float>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::vector<float>> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<std::vector<float>>>::__emplace_back_slow_path<std::vector<std::vector<float>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1C9DF49F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<float>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void sub_1C9DF502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VCPMediaAnalyzer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9DF51A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C9DF5510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v23 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_1C9DF59D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9DF80F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9DF8B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C9DFCA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12)
{

  _Unwind_Resume(a1);
}

void sub_1C9DFD0E8(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_1C9E00408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{

  _Unwind_Resume(a1);
}

void sub_1C9E0ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  _Unwind_Resume(a1);
}

uint64_t VCPProtoMovieSafetyResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(VCPProtoClassification);
        [a1 addClassification:v21];
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !VCPProtoClassificationReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
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

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(VCPProtoTimeRange);
    objc_storeStrong((a1 + 24), v21);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

double ma::Histogram::Histogram(ma::Histogram *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void ma::Histogram::~Histogram(ma::Histogram *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1CCA95C10](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x1CCA95C10](v3, 0x1000C8052888210);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x1CCA95C10](v4, 0x1000C8052888210);
  }

  v5 = *(this + 4);
  if (v5)
  {
    MEMORY[0x1CCA95C10](v5, 0x1000C8052888210);
  }

  v6 = *(this + 5);
  if (v6)
  {
    MEMORY[0x1CCA95C10](v6, 0x1000C8052888210);
  }
}

unsigned __int8 *ma::Histogram::LumaHistogram(ma::Histogram *this, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  if (Height >= 1)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width >= 1)
      {
        v9 = 0;
        v10 = *(this + 1);
        do
        {
          ++*(v10 + 4 * result[v9++]);
        }

        while ((Width & 0x7FFFFFFF) != v9);
      }

      result += BytesPerRowOfPlane;
    }
  }

  return result;
}

char *ma::Histogram::ChromaHistogram(ma::Histogram *this, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  if (result && Height >= 2)
  {
    v8 = 0;
    v9 = (result + 1);
    do
    {
      if (Width >= 2)
      {
        v10 = *(this + 2);
        v11 = *(this + 3);
        v12 = (Width / 2);
        v13 = v9;
        do
        {
          ++*(v10 + 4 * *(v13 - 1));
          v14 = *v13;
          v13 += 2;
          ++*(v11 + 4 * v14);
          --v12;
        }

        while (v12);
      }

      ++v8;
      v9 += BytesPerRowOfPlane;
    }

    while (v8 != Height / 2);
  }

  return result;
}

float ma::Histogram::MomentsHistogram(ma::Histogram *this, CVPixelBufferRef pixelBuffer)
{
  v31 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  memset(v30, 0, 32);
  if (Width >= 0)
  {
    v8 = Width;
  }

  else
  {
    v8 = Width + 3;
  }

  memset(&v30[2], 0, 32);
  if (Height >= 0)
  {
    v9 = Height;
  }

  else
  {
    v9 = Height + 3;
  }

  memset(&v30[4], 0, 96);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  if (Height >= 4)
  {
    v10 = 0;
    v11 = v8 >> 2;
    LODWORD(v12) = 4 * v11;
    v13 = v9 >> 2;
    v14 = 4 * v13;
    if ((4 * v11) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v12;
    }

    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      if (Width >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v15 / (Width / 2) + 2 * (v10 / (Height / 2));
          v17 = BaseAddressOfPlane[v15];
          v18 = 4 * (v10 / v13) + 4 + v15 / v11;
          *(v30 + v16) += v17;
          *(v30 + v18) += v17;
          v19 = (v17 * v17);
          *(v29 + v16) += v19;
          *(v29 + v18) += v19;
          ++*(v28 + v16);
          ++*(v28 + v18);
          ++v15;
        }

        while (v12 != v15);
      }

      ++v10;
      BaseAddressOfPlane += BytesPerRowOfPlane;
    }

    while (v10 != v14);
  }

  v20 = 0;
  v21 = *(this + 4);
  v22 = *(this + 5);
  v23 = 0.5;
  do
  {
    v24 = *(v28 + v20);
    v25 = *(v30 + v20) / v24;
    v26 = (*(v29 + v20) / v24) - (v25 * v25);
    *(v21 + 4 * v20) = vcvtmd_s64_f64(v25 + 0.5);
    *(v22 + 4 * v20++) = vcvtmd_s64_f64(v26 + 0.5);
  }

  while (v20 != 20);
  return *&v23;
}

uint64_t ma::Histogram::Initialize(ma::Histogram *this, CVPixelBufferRef pixelBuffer, int a3)
{
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 875704438)
  {
    return 4294967246;
  }

  v6 = 8;
  v7 = MEMORY[0x1E69E5398];
  do
  {
    v8 = *(this + v6);
    if (!v8)
    {
      v8 = operator new[](0x400uLL, v7);
      *(this + v6) = v8;
      if (!v8)
      {
        return 4294967188;
      }
    }

    bzero(v8, 0x400uLL);
    v6 += 8;
  }

  while (v6 != 32);
  if (a3)
  {
    v9 = 0;
    v10 = this + 32;
    v11 = 1;
    v12 = MEMORY[0x1E69E5398];
    v13 = 0uLL;
    do
    {
      v14 = v11;
      v15 = *&v10[8 * v9];
      if (!v15)
      {
        v15 = operator new[](0x50uLL, v12);
        v13 = 0uLL;
        *&v10[8 * v9] = v15;
        if (!v15)
        {
          return 4294967188;
        }
      }

      v11 = 0;
      v15[3] = v13;
      v15[4] = v13;
      v15[1] = v13;
      v15[2] = v13;
      v9 = 1;
      *v15 = v13;
    }

    while ((v14 & 1) != 0);
  }

  pixelBuffera = pixelBuffer;
  unlockFlags = 1;
  if (pixelBuffer)
  {
    v16 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v28 = v16;
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2ma9Histogram10InitializeEP10__CVBufferb_block_invoke;
      block[3] = &__block_descriptor_tmp;
      if (a3)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      block[4] = this;
      block[5] = pixelBuffer;
      dispatch_apply(v18, 0, block);
      v17 = CVPixelBufferLock::Unlock(&v28);
      if (!v17)
      {
        v19 = 0;
        v20 = 1020;
        do
        {
          LODWORD(v17) = *(*(this + 1) + v19) + v17 + *(*(this + 1) + v20);
          v20 -= 4;
          v19 += 4;
        }

        while (v19 != 120);
        Width = CVPixelBufferGetWidth(pixelBuffer);
        *this = v17 / (CVPixelBufferGetHeight(pixelBuffer) * Width);
        v22 = *(this + 1);
        v23 = *(v22 + 940);
        v24 = *(v22 + 936);
        v25 = CVPixelBufferGetWidth(pixelBuffer);
        v17 = 0;
        *(this + 1) = (v24 + v23) / (CVPixelBufferGetHeight(pixelBuffer) * v25);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v17 = 4294967246;
    v28 = -50;
  }

  if (pixelBuffera && !v28 && CVPixelBufferUnlockBaseAddress(pixelBuffera, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ma::EncodeStats::GenerateSubMacroBlockStats();
  }

  return v17;
}

void sub_1C9E0DF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

float ___ZN2ma9Histogram10InitializeEP10__CVBufferb_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2 == 1)
  {
    ma::Histogram::ChromaHistogram(v4, v5);
  }

  else if (a2)
  {
    return ma::Histogram::MomentsHistogram(v4, v5);
  }

  else
  {
    ma::Histogram::LumaHistogram(v4, v5);
  }

  return result;
}

uint64_t ma::Histogram::InitializeAsIdealExposureHistogram(ma::Histogram *this, int a2)
{
  if (a2 < 1)
  {
    return 4294967246;
  }

  v17 = a2 / 80.212;
  v3 = 8;
  v4 = MEMORY[0x1E69E5398];
  do
  {
    v5 = *(this + v3);
    if (!v5)
    {
      v5 = operator new[](0x400uLL, v4);
      *(this + v3) = v5;
      if (!v5)
      {
        return 4294967188;
      }
    }

    bzero(v5, 0x400uLL);
    v3 += 8;
  }

  while (v3 != 32);
  v6 = 0;
  v7 = *(this + 1);
  v8 = xmmword_1C9F63350;
  do
  {
    v18 = v8;
    v9.i64[0] = 0xC3000000C3000000;
    v9.i64[1] = 0xC3000000C3000000;
    v10 = vaddq_f32(vcvtq_f32_u32(v8), v9);
    v9.i64[0] = 0xBA000000BA000000;
    v9.i64[1] = 0xBA000000BA000000;
    v22 = vmulq_f32(vmulq_f32(v10, v10), v9);
    v19 = expf(v22.f32[1]);
    v11.f32[0] = expf(v22.f32[0]);
    v11.f32[1] = v19;
    v20 = v11;
    v12 = expf(v22.f32[2]);
    v13 = v20;
    v13.f32[2] = v12;
    v21 = v13;
    v14 = expf(v22.f32[3]);
    v15 = v21;
    v15.f32[3] = v14;
    *(v7 + v6) = vcvtq_s32_f32(vrndaq_f32(vmulq_n_f32(v15, v17)));
    v15.i64[0] = 0x400000004;
    v15.i64[1] = 0x400000004;
    v8 = vaddq_s32(v18, v15);
    v6 += 16;
  }

  while (v6 != 1024);
  return 0;
}

float ma::Histogram::EarthMoverDistance(ma::Histogram *this, const ma::Histogram *a2)
{
  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *(*(this + v2 + 1) + v4);
      v9 = v7 + v8;
      v10 = *(*(a2 + v2 + 1) + v4);
      v7 = (v7 + v8) - v10;
      v5 = v5 + vabds_f32(v9, v10);
      v6 = v6 + v8;
      v4 += 4;
    }

    while (v4 != 1024);
    v3 = (v5 / v6) + v3;
    ++v2;
  }

  while (v2 != 3);
  return v3 / 3.0;
}

float ma::Histogram::EarthMoverDistance(ma::Histogram *this, const ma::Histogram *a2, int a3)
{
  v3 = 0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = *(*(this + a3 + 1) + v3);
    v8 = v6 + v7;
    v9 = *(*(a2 + a3 + 1) + v3);
    v6 = (v6 + v7) - v9;
    v4 = v4 + vabds_f32(v8, v9);
    v5 = v5 + v7;
    v3 += 4;
  }

  while (v3 != 1024);
  return v4 / v5;
}

void sub_1C9E0E34C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C9E0E4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = VCPPhotosSceneprintAssetProcessingTask;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9E120FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v34 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_1C9E14B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9E152D8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1C9E155C4(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

uint64_t MADProtoFaceAssetReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
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

      if (v13 == 4)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v35[0] & 0x7F) << v19;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 24) = v25;
        goto LABEL_56;
      }

      if (v13 == 5)
      {
        *(a1 + 56) |= 1u;
        v35[0] = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35[0];
        v31 = 8;
        goto LABEL_55;
      }

      if (v13 != 6)
      {
        goto LABEL_40;
      }

      v16 = objc_alloc_init(MADProtoDetectedFace);
      [a1 addDetectedFaces:v16];
      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !MADProtoDetectedFaceReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v17 = PBReaderReadString();
        v18 = 40;
LABEL_43:
        v26 = *(a1 + v18);
        *(a1 + v18) = v17;

        goto LABEL_56;
      case 2:
        v17 = PBReaderReadString();
        v18 = 32;
        goto LABEL_43;
      case 3:
        *(a1 + 56) |= 2u;
        v35[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v35[0];
        v31 = 16;
LABEL_55:
        *(a1 + v31) = v30;
        goto LABEL_56;
    }

LABEL_40:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E1738C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C9E17518(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E18F8C(_Unwind_Exception *a1)
{
  MEMORY[0x1CCA95C30](v3, MEMORY[0x1E69E5398]);

  _Unwind_Resume(a1);
}

uint64_t Scaler::InitializePixelBufferPool(Scaler *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[6] = *MEMORY[0x1E69E9840];
  this->width_ = a2;
  this->height_ = a3;
  this->format_ = a4;
  v17[0] = *MEMORY[0x1E6966130];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  v18[0] = v7;
  v17[1] = *MEMORY[0x1E6966208];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v18[1] = v8;
  v17[2] = *MEMORY[0x1E69660B8];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v18[2] = v9;
  v17[3] = *MEMORY[0x1E6966090];
  if ((a2 & 0xF) != 0)
  {
    v10 = 16 - (a2 & 0xF);
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v18[3] = v11;
  v17[4] = *MEMORY[0x1E6966078];
  if ((a3 & 0xF) != 0)
  {
    v12 = 16 - (a3 & 0xF);
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v17[5] = *MEMORY[0x1E69660D8];
  v18[4] = v13;
  v18[5] = MEMORY[0x1E695E0F8];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

  if (this->pool_.value_)
  {
    CFRelease(this->pool_.value_);
    this->pool_.value_ = 0;
  }

  v15 = CVPixelBufferPoolCreate(0, 0, v14, &this->pool_.value_);
  if (v15 && this->pool_.value_)
  {
    CFRelease(this->pool_.value_);
    this->pool_.value_ = 0;
  }

  return v15;
}

uint64_t Scaler::ScaleCropped(Scaler *this, CGRect a2, __CVBuffer *a3, __CVBuffer **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  *a4 = 0;
  v17 = CVPixelBufferGetWidth(a3);
  v18 = CVPixelBufferGetHeight(v11);
  cf = 0;
  if (*&this->width_ != __PAIR64__(a6, a5) || this->format_ != a7)
  {
    PixelBuffer = Scaler::InitializePixelBufferPool(this, a5, a6, a7);
    if (PixelBuffer)
    {
      goto LABEL_4;
    }
  }

  p_transfer_session = &this->transfer_session_;
  if (!this->transfer_session_.value_)
  {
    PixelBuffer = VTPixelTransferSessionCreate(0, &this->transfer_session_.value_);
    if (PixelBuffer)
    {
      goto LABEL_4;
    }
  }

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (CGRectIsEmpty(v33))
  {
    VTSessionSetProperty(p_transfer_session->value_, *MEMORY[0x1E6983E30], 0);
  }

  else
  {
    PixelBuffer = 4294967246;
    if (x < 0.0 || x > 1.0 || y < 0.0 || y > 1.0 || width < 0.0 || width > 1.0 || height < 0.0 || height > 1.0)
    {
      goto LABEL_4;
    }

    v22 = 1.0 - x;
    if (1.0 - x >= width)
    {
      v22 = width;
    }

    v23 = 1.0 - y;
    if (1.0 - y >= height)
    {
      v23 = height;
    }

    v24 = (v22 * v17) & 0xFFFFFFFE;
    v25 = (v23 * v18) & 0xFFFFFFFE;
    if (!v24 || v25 == 0)
    {
      goto LABEL_4;
    }

    v27 = x + v22 * 0.5;
    v28 = y + v23 * 0.5;
    value = CleanApertureDictionary(v24, v25, ((v27 + -0.5) * v17) & 0xFFFFFFFE, ((v28 + -0.5) * v18) & 0xFFFFFFFE);
    if (value)
    {
      IOSurface = CVPixelBufferGetIOSurface(v11);
      if (IOSurface)
      {
        PixelBuffer = CVPixelBufferCreateWithIOSurface(0, IOSurface, 0, &cf);
        if (PixelBuffer)
        {
          CF<__CVBuffer *>::~CF(&value);
          goto LABEL_4;
        }

        CVBufferPropagateAttachments(v11, cf);
        v11 = cf;
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Scaler: sets CleanAperture on input pixel buffer (not iosurface-backed)", v30, 2u);
      }

      CVBufferSetAttachment(v11, *MEMORY[0x1E6965D70], value, kCVAttachmentMode_ShouldNotPropagate);
    }

    VTSessionSetProperty(p_transfer_session->value_, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
    CF<__CVBuffer *>::~CF(&value);
  }

  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, this->pool_.value_, a4);
  if (!PixelBuffer)
  {
    PixelBuffer = VTPixelTransferSessionTransferImage(p_transfer_session->value_, v11, *a4);
    if (!PixelBuffer)
    {
      CVBufferPropagateAttachments(v11, *a4);
      PixelBuffer = 0;
      goto LABEL_6;
    }
  }

LABEL_4:
  if (*a4)
  {
    CFRelease(*a4);
    *a4 = 0;
  }

LABEL_6:
  CF<__CVBuffer *>::~CF(&cf);
  return PixelBuffer;
}

void sub_1C9E1A540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  CF<__CVBuffer *>::~CF(va);
  CF<__CVBuffer *>::~CF(va1);
  _Unwind_Resume(a1);
}

CFTypeRef CleanApertureDictionary(int a1, int a2, int a3, int a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = Mutable;
  if (!Mutable)
  {
    goto LABEL_19;
  }

  v9 = Mutable;
  valuePtr = a1;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = v10;
  if (v10)
  {
    CFDictionarySetValue(v9, *MEMORY[0x1E6965D80], v10);
    v11 = 0;
  }

  else
  {
    v11 = -108;
  }

  CF<__CVBuffer *>::~CF(&v22);
  valuePtr = a2;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = v12;
  if (v12)
  {
    CFDictionarySetValue(cf, *MEMORY[0x1E6965D60], v12);
    v13 = 0;
  }

  else
  {
    v13 = -108;
  }

  CF<__CVBuffer *>::~CF(&v22);
  valuePtr = a3;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = v14;
  if (v14)
  {
    CFDictionarySetValue(cf, *MEMORY[0x1E6965D68], v14);
    v15 = 0;
  }

  else
  {
    v15 = -108;
  }

  CF<__CVBuffer *>::~CF(&v22);
  valuePtr = a4;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = v16;
  if (v16)
  {
    CFDictionarySetValue(cf, *MEMORY[0x1E6965D78], v16);
    v17 = 0;
  }

  else
  {
    v17 = -108;
  }

  CF<__CVBuffer *>::~CF(&v22);
  if (!(v13 | v11 | v15 | v17))
  {
    if (cf)
    {
      v18 = CFRetain(cf);
      goto LABEL_20;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  if (!cf)
  {
    goto LABEL_19;
  }

  CFRelease(cf);
  v18 = 0;
  cf = 0;
LABEL_20:
  CF<__CVBuffer *>::~CF(&cf);
  return v18;
}

void sub_1C9E1A760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  CF<__CVBuffer *>::~CF(va1);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

double ma::LandmarkDetector::LandmarkDetector(ma::LandmarkDetector *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 21) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  return result;
}

void ma::LandmarkDetector::~LandmarkDetector(ma::LandmarkDetector *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x1CCA95C10](v2, 0x1000C8052888210);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x1CCA95C10](v3, 0x1000C8052888210);
  }

  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x1CCA95C10](v4, 0x1000C8052888210);
  }

  v5 = *(this + 7);
  if (v5)
  {
    MEMORY[0x1CCA95C10](v5, 0x1000C8052888210);
  }

  v6 = *(this + 8);
  if (v6)
  {
    MEMORY[0x1CCA95C10](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 9);
  if (v7)
  {
    MEMORY[0x1CCA95C10](v7, 0x1000C80D8EEE597);
  }
}

uint64_t ma::LandmarkDetector::Initialize(ma::LandmarkDetector *this, __sFILE *a2, int a3, int a4, int a5, int a6, int a7)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 2) = a5;
  *(this + 3) = a6;
  v12 = 1 << (a6 - 1);
  *(this + 4) = a7;
  *(this + 5) = v12 - 1;
  *(this + 6) = v12;
  if (a4 < 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * a4;
  }

  v14 = MEMORY[0x1E69E5398];
  v15 = operator new[](v13, MEMORY[0x1E69E5398]);
  *(this + 4) = v15;
  v16 = operator new[](v13, v14);
  *(this + 5) = v16;
  v17 = operator new[](v13, v14);
  *(this + 6) = v17;
  v18 = a7 * a3;
  if (a7 * a3 < 0)
  {
    v19 = -1;
  }

  else
  {
    v19 = 4 * v18;
  }

  v20 = 8 * v18;
  if (a7 * a3 < 0)
  {
    v21 = -1;
  }

  else
  {
    v21 = v20;
  }

  v22 = operator new[](v19, v14);
  *(this + 7) = v22;
  v23 = operator new[](v21, v14);
  *(this + 8) = v23;
  v24 = a5 * a3;
  if (is_mul_ok(v24, 0x1180uLL))
  {
    v25 = 4480 * v24;
  }

  else
  {
    v25 = -1;
  }

  v26 = operator new[](v25, v14);
  *(this + 9) = v26;
  result = 4294967188;
  if (v15 && v16 && v17 && v22 && v23 && v26)
  {
    result = ma::LandmarkDetector::Deserialize(this, a2);
    if (!result)
    {
      *(this + 10) = ma::AdjustLandmark_neon_;
    }
  }

  return result;
}

uint64_t ma::LandmarkDetector::Deserialize(ma::LandmarkDetector *this, __sFILE *a2)
{
  *&v49[10] = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = 2 * v4;
  if (v4 < 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = 2 * v5;
  }

  v7 = MEMORY[0x1E69E5398];
  v8 = operator new[](v6, MEMORY[0x1E69E5398]);
  v9 = operator new[](v6, v7);
  v10 = v9;
  if (v8)
  {
    _ZF = v9 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v12 = 0;
    v13 = 0;
    v14 = 4294967188;
    if (v8)
    {
      goto LABEL_63;
    }

    goto LABEL_10;
  }

  if (fread(v49, 0xAuLL, 1uLL, a2) != 1)
  {
    v13 = 0;
    v12 = 0;
    v14 = 4294967277;
    goto LABEL_63;
  }

  v16 = v5;
  if (fread(v10, 2uLL, v5, a2) != v5)
  {
    return 4294967277;
  }

  if (v4)
  {
    v17 = *(this + 5);
    if (v5 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v5;
    }

    v19 = v10;
    do
    {
      v20 = *v19++;
      _H0 = v20;
      __asm { FCVT            S0, H0 }

      *v17++ = _S0;
      --v18;
    }

    while (v18);
  }

  v26 = *this;
  if (*this >= 1)
  {
    v27 = 0;
    v28 = *(this + 2);
    while (v28 < 1)
    {
LABEL_40:
      if (++v27 >= v26)
      {
        goto LABEL_41;
      }
    }

    v29 = 0;
    v46 = v27;
    while (1)
    {
      v30 = v28 * v27 + v29;
      if (*(this + 5) >= 1)
      {
        break;
      }

LABEL_34:
      if (*(this + 6) >= 1)
      {
        v34 = 0;
        while (fread(v8, 2uLL, v16, a2) == v16)
        {
          ma::RegressionTree::SetLeaf(*(this + 9) + 4480 * v30, v34++, *(this + 1), v8);
          if (v34 >= *(this + 6))
          {
            goto LABEL_38;
          }
        }

        goto LABEL_60;
      }

LABEL_38:
      ++v29;
      v28 = *(this + 2);
      v27 = v46;
      if (v29 >= v28)
      {
        v26 = *this;
        goto LABEL_40;
      }
    }

    v31 = 0;
    while (1)
    {
      v47 = 0;
      if (fread(&v48, 4uLL, 1uLL, a2) != 1 || fread(&v47, 2uLL, 1uLL, a2) != 1)
      {
        break;
      }

      _H0 = v47;
      __asm { FCVT            S0, H0; float }

      ma::RegressionTree::SetNode(*(this + 9) + 4480 * v30, v31++, v48, SHIWORD(v48), _S0);
      if (v31 >= *(this + 5))
      {
        goto LABEL_34;
      }
    }

LABEL_60:
    v12 = 0;
    v13 = 0;
    goto LABEL_61;
  }

LABEL_41:
  v35 = *(this + 4) * v26;
  v36 = 2 * v35;
  if ((v35 & 0x80000000) != 0)
  {
    v37 = -1;
  }

  else
  {
    v37 = 2 * v35;
  }

  v38 = MEMORY[0x1E69E5398];
  if ((v35 & 0x80000000) != 0)
  {
    v39 = -1;
  }

  else
  {
    v39 = 4 * v35;
  }

  v13 = operator new[](v37, MEMORY[0x1E69E5398]);
  v12 = operator new[](v39, v38);
  if (fread(v13, 2uLL, v35, a2) != v35)
  {
LABEL_61:
    v14 = 4294967277;
    goto LABEL_62;
  }

  if (v35)
  {
    v40 = 0;
    v41 = *(this + 7);
    do
    {
      *(v41 + 4 * v40) = v13[v40];
      ++v40;
    }

    while (v35 != v40);
    v42 = fread(v12, 2uLL, v36, a2);
    if (v42 == v36)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4294967277;
    }

    if (v42 == v36)
    {
      v44 = 0;
      v45 = *(this + 8);
      do
      {
        v43.i32[0] = *(v12 + v44);
        v43 = vcvtq_f32_f16(v43).u64[0];
        *(v45 + 8 * v44++) = v43;
      }

      while (v35 != v44);
      v14 = 0;
    }
  }

  else if (fread(v12, 2uLL, v36, a2) == v36)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4294967277;
  }

LABEL_62:
  if (v8)
  {
LABEL_63:
    MEMORY[0x1CCA95C10](v8, 0x1000C80BDFB0063);
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (v10)
  {
LABEL_11:
    MEMORY[0x1CCA95C10](v10, 0x1000C80BDFB0063);
  }

LABEL_12:
  if (v13)
  {
    MEMORY[0x1CCA95C10](v13, 0x1000C80BDFB0063);
  }

  if (v12)
  {
    MEMORY[0x1CCA95C10](v12, 0x1000C80BDFB0063);
  }

  return v14;
}

void **ma::LandmarkDetector::SetPreviousLandmarks(void **this, float *__src)
{
  v3 = this;
  if (__src)
  {
    this = memcpy(this[4], __src, 8 * *(this + 1));
  }

  *(v3 + 28) = __src != 0;
  return this;
}

uint64_t ma::LandmarkDetector::ConvertPreviousPointsToCurrentPoints(uint64_t this, int a2, int a3, int a4, float *a5)
{
  v5 = *(this + 4);
  if (v5 >= 1)
  {
    v6 = a5[2] - *a5;
    v7 = (a5[3] - a5[1]);
    v8 = (*(this + 48) + 4);
    v9 = (*(this + 32) + 4);
    do
    {
      *(v8 - 1) = (*(v9 - 1) - a5[1]) / v7;
      v10 = *v9;
      v9 += 2;
      *v8 = (v10 - *a5) / v6;
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t ma::LandmarkDetector::DetectLandmarks(ma::LandmarkDetector *this, const unsigned __int8 *a2, int a3, int a4, int a5, float32x2_t *a6, float *a7)
{
  if (*(this + 28) == 1)
  {
    ma::LandmarkDetector::ConvertPreviousPointsToCurrentPoints(this, a2, a3, a4, a6);
  }

  else
  {
    memcpy(*(this + 6), *(this + 5), 8 * *(this + 1));
  }

  v14 = a6[1].f32[0];
  v13 = a6[1].f32[1];
  v15 = a6->f32[0];
  v16 = a6->f32[1];
  v17 = *(this + 4);
  if (v17 < 0)
  {
    v18 = -1;
  }

  else
  {
    v18 = 4 * v17;
  }

  v19 = MEMORY[0x1E69E5398];
  v20 = operator new[](v18, MEMORY[0x1E69E5398]);
  v21 = *(this + 2);
  if (v21 < 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = 8 * v21;
  }

  v23 = operator new[](v22, v19);
  v27 = v23;
  if (v20)
  {
    _ZF = v23 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v29 = 4294967188;
    if (v20)
    {
LABEL_25:
      MEMORY[0x1CCA95C10](v20, 0x1000C8052888210);
    }
  }

  else
  {
    v30 = 0;
    *&v24 = v14 - v15;
    do
    {
      ma::LandmarkDetector::GetFeaturePixelValues(this, a2, a3, a4, a5, v30, a6, v20, v24, v25, v26);
      LODWORD(v31) = *(this + 2);
      if (v31 >= 3)
      {
        v32 = 0;
        do
        {
          _X0 = (*(this + 9) + 4480 * (v32 + v30 * v31));
          __asm { PRFM            #0, [X0,#0x2300] }

          v27[v32++] = ma::RegressionTree::GetDelta(_X0, v20);
          v31 = *(this + 2);
        }

        while (v32 < v31 - 2);
      }

      (*(this + 10))(*(this + 6), v27, *(this + 1));
      ++v30;
    }

    while (v30 != 10);
    v38 = *(this + 1);
    if (v38 >= 1)
    {
      v39 = a7 + 1;
      v40 = (*(this + 6) + 4);
      do
      {
        *(v39 - 1) = a6->f32[1] + (*(v40 - 1) * (v13 - v16));
        v41 = *v40;
        v40 += 2;
        *v39 = a6->f32[0] + (v41 * (v14 - v15));
        v39 += 2;
        --v38;
      }

      while (v38);
    }

    v29 = 0;
    if (v20)
    {
      goto LABEL_25;
    }
  }

  if (v27)
  {
    MEMORY[0x1CCA95C10](v27, 0x80C80B8603338);
  }

  return v29;
}

void ma::LandmarkDetector::GetFeaturePixelValues(ma::LandmarkDetector *this, const unsigned __int8 *a2, int a3, int a4, int a5, int a6, float32x2_t *a7, float *a8, double a9, double a10, double a11)
{
  v43 = *MEMORY[0x1E69E9840];
  ma::LandmarkDetector::GetTransformCoefficients(this, v42, a9, a10, a11);
  v22 = *(this + 4);
  if (v22 >= 1)
  {
    v23 = *(this + 6);
    v24 = (*(this + 7) + 4 * v22 * a6);
    v26 = __PAIR64__(LODWORD(v42[1]), LODWORD(v42[3]));
    v25 = __PAIR64__(LODWORD(v42[0]), LODWORD(v42[2]));
    v27 = vcvt_f32_s32(vcvt_s32_f32(vsub_f32(a7[1], *a7)));
    v28 = (*(this + 8) + 8 * v22 * a6 + 4);
    do
    {
      v29 = *v24++;
      v30 = vmla_f32(*a7, v27, vadd_f32(vrev64_s32(*(v23 + 8 * v29)), vmla_n_f32(vmul_n_f32(v26, *v28), v25, *(v28 - 1))));
      if (v30.f32[0] < (a4 - 2))
      {
        v31 = v30.f32[0];
      }

      else
      {
        v31 = (a4 - 2);
      }

      v32 = vmvn_s8(vclez_f32(v30));
      if ((v32.i8[0] & 1) == 0)
      {
        v31 = 0.0;
      }

      v30.i32[0] = v30.i32[1];
      if (v30.f32[1] >= (a3 - 2))
      {
        v30.f32[0] = (a3 - 2);
      }

      if ((v32.i8[4] & 1) == 0)
      {
        v30.f32[0] = 0.0;
      }

      v33 = vcvtms_s32_f32(v30.f32[0]);
      *&v34 = floorf(v30.f32[0]);
      v35 = vcvtms_s32_f32(v31) * a5;
      v36 = v30.f32[0] - *&v34;
      v37 = &a2[v35 + v33];
      LOBYTE(v34) = *v37;
      v38 = 1.0 - v36;
      LOBYTE(v19) = v37[1];
      v39 = &a2[a5 + v35 + v33];
      LOBYTE(v20) = *v39;
      v20 = LODWORD(v20);
      LOBYTE(v21) = v39[1];
      v21 = v36 * LODWORD(v21);
      v40 = v36 * LODWORD(v19);
      v19 = v21 + (v20 * v38);
      v41 = v31 - floorf(v31);
      *a8++ = (v41 * v19) + ((v40 + (v34 * v38)) * (1.0 - v41));
      v28 += 2;
      --v22;
    }

    while (v22);
  }
}

void ma::LandmarkDetector::GetTransformCoefficients(ma::LandmarkDetector *this, float *a2, double a3, double a4, double a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = *(this + 1);
  v7 = 0;
  _D0 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0;
  if (v6 >= 1)
  {
    v12 = *(this + 5);
    v13 = (*(this + 6) + 4);
    v14 = *(this + 1);
    do
    {
      v15 = *v12++;
      HIDWORD(a5) = v15.i32[1];
      v11 = vadd_f32(v11, v15);
      v10 = v10 + *(v13 - 1);
      v9 = v9 + *v13;
      v13 += 2;
      --v14;
    }

    while (v14);
  }

  *&a5 = v6;
  v16 = vdup_lane_s32(*&a5, 0);
  v17 = 0.0;
  v18 = 0.0;
  if (v6 >= 1)
  {
    v19 = vdiv_f32(v11, v16);
    v20 = v10 / *&a5;
    v21 = *(this + 5);
    v22 = (*(this + 6) + 4);
    v7 = 0;
    HIDWORD(_D0) = 0;
    v23 = v9 / *&a5;
    do
    {
      v24 = *v21++;
      _D17 = vsub_f32(v24, v19);
      _S19 = *v22 - v23;
      v18 = v18 + (vmuls_lane_f32(_D17.f32[1], _D17, 1) + (_D17.f32[0] * _D17.f32[0]));
      v7 = vmla_n_f32(v7, _D17, *(v22 - 1) - v20);
      v17 = v17 + (_S19 * _D17.f32[0]);
      __asm { FMLA            S0, S19, V17.S[1] }

      v22 += 2;
      --v6;
    }

    while (v6);
  }

  v43 = COERCE_DOUBLE(vdiv_f32(v7, v16));
  v50 = v43;
  v31 = v17 / *&a5;
  v32 = *&_D0 / *&a5;
  v51 = v17 / *&a5;
  v52 = *&_D0 / *&a5;
  v33 = v18 / *&a5;
  ma::LandmarkDetector::GetSvd2x2(this, &v50, v47, &v46, v44, _D0, v43, a5);
  v35 = 1.0;
  v36 = 1.0;
  v37 = 1.0;
  if (((*&v43 * v32) - (*(&v43 + 1) * v31)) < 0.0)
  {
    if (v45 >= v44[0])
    {
      v36 = -1.0;
    }

    else
    {
      v36 = 1.0;
    }

    if (v45 >= v44[0])
    {
      v37 = 1.0;
    }

    else
    {
      v37 = -1.0;
    }
  }

  if (v33 > 0.000001)
  {
    v35 = (1.0 / v33) * (((v37 * v45) + (v44[2] * 0.0)) + ((v44[1] * 0.0) + (v44[0] * v36)));
  }

  v38.i64[0] = __PAIR64__(v48, LODWORD(v47[0]));
  v39.i64[0] = __PAIR64__(v49, LODWORD(v47[1]));
  v34.i32[0] = v46.i32[1];
  v40 = v46;
  v38.i64[1] = __PAIR64__(v48, LODWORD(v47[0]));
  v39.i64[1] = __PAIR64__(v49, LODWORD(v47[1]));
  v34.i32[1] = *(&v46 | 0xC);
  v40.i32[1] = v46.i32[2];
  v41 = vmulq_n_f32(vmlaq_f32(vmulq_f32(vzip1q_s32(v34, v34), vmlaq_f32(vmulq_n_f32(v39, v37), 0, v38)), vzip1q_s32(v40, v40), vmlaq_n_f32(vmulq_f32(v39, 0), v38, v36)), v35);
  v42 = vextq_s8(v41, v41, 8uLL).u64[0];
  vst2_f32(a2, v41);
}

float ma::LandmarkDetector::GetSvd2x2(ma::LandmarkDetector *this, float *a2, float *a3, float32x4_t *a4, float *a5, double a6, double a7, double a8)
{
  *&a6 = a2[2];
  v8 = a2[3];
  v9 = a2[1];
  *&a8 = (*&a6 * *&a6) + (*a2 * *a2);
  *&a6 = (*&a6 * v8) + (*a2 * v9);
  v10 = (v8 * v8) + (v9 * v9);
  v11 = *&a8 + v10;
  v12 = sqrtf((((*&a8 * v10) - (*&a6 * *&a6)) * -4.0) + (v11 * v11));
  v13.f32[0] = v11 + v12;
  v13.f32[1] = v11 - v12;
  a5[1] = 0.0;
  a5[2] = 0.0;
  v14 = vmul_f32(v13, 0x3F0000003F000000);
  *a5 = sqrtf(v14.f32[0]);
  a5[3] = sqrtf(v14.f32[1]);
  v15 = vdiv_f32(vneg_f32(vsub_f32(vdup_lane_s32(*&a8, 0), v14)), vdup_lane_s32(*&a6, 0));
  *v16.f32 = vmul_f32(v15, v15);
  v16.i64[1] = v16.i64[0];
  __asm { FMOV            V2.4S, #1.0 }

  v22 = vsqrtq_f32(vaddq_f32(v16, _Q2));
  __asm { FMOV            V2.2S, #1.0 }

  *&_Q2.u32[2] = v15;
  v23 = vdivq_f32(_Q2, v22);
  *a4 = v23;
  *a3 = (vmuls_lane_f32(a2[1], v23, 2) + (*a2 * v23.f32[0])) / *a5;
  a3[2] = ((a2[3] * a4->f32[2]) + (a2[2] * a4->f32[0])) / *a5;
  a3[1] = ((a2[1] * a4->f32[3]) + (*a2 * a4->f32[1])) / a5[3];
  result = ((a2[3] * a4->f32[3]) + (a2[2] * a4->f32[1])) / a5[3];
  a3[3] = result;
  return result;
}

uint64_t ma::AdjustLandmark_neon_(uint64_t result, uint64_t *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = (result + 4 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v5;
    v10 = v6[2];
    v11 = v6[3];
    v12 = v6[4];
    v13 = v6[5];
    v14 = v6[6];
    v15 = v6[7];
    v16 = v6[8];
    v17 = v6[9];
    v18 = v6[10];
    v19 = v6[11];
    v20 = v6[12];
    v21 = v6[13];
    v22 = v6[14];
    v23 = v6[15];
    v24 = v6[16];
    if (a4 >= 3)
    {
      _X14 = *a2;
      v26 = a2 + 1;
      v27 = (a4 - 2);
      do
      {
        v28 = (_X14 + 2 * v4);
        v29 = *v26++;
        _X14 = v29;
        __asm { PRFM            #0, [X14] }

        v7 = vaddq_f32(v7, vcvtq_f32_f16(*v28));
        v8 = vaddq_f32(v8, vcvtq_f32_f16(v28[1]));
        v10 = vaddq_f32(v10, vcvtq_f32_f16(v28[2]));
        v11 = vaddq_f32(v11, vcvtq_f32_f16(v28[3]));
        v12 = vaddq_f32(v12, vcvtq_f32_f16(v28[4]));
        v13 = vaddq_f32(v13, vcvtq_f32_f16(v28[5]));
        v14 = vaddq_f32(v14, vcvtq_f32_f16(v28[6]));
        v15 = vaddq_f32(v15, vcvtq_f32_f16(v28[7]));
        v16 = vaddq_f32(v16, vcvtq_f32_f16(v28[8]));
        v17 = vaddq_f32(v17, vcvtq_f32_f16(v28[9]));
        v18 = vaddq_f32(v18, vcvtq_f32_f16(v28[10]));
        v19 = vaddq_f32(v19, vcvtq_f32_f16(v28[11]));
        v20 = vaddq_f32(v20, vcvtq_f32_f16(v28[12]));
        v21 = vaddq_f32(v21, vcvtq_f32_f16(v28[13]));
        v22 = vaddq_f32(v22, vcvtq_f32_f16(v28[14]));
        v23 = vaddq_f32(v23, vcvtq_f32_f16(v28[15]));
        v24 = vaddq_f32(v24, vcvtq_f32_f16(v28[16]));
        --v27;
      }

      while (v27);
    }

    v5 = 0;
    *v6 = v7;
    v6[1] = v8;
    v6[2] = v10;
    v6[3] = v11;
    v6[4] = v12;
    v6[5] = v13;
    v6[6] = v14;
    v6[7] = v15;
    v6[8] = v16;
    v6[9] = v17;
    v6[10] = v18;
    v6[11] = v19;
    v6[12] = v20;
    v6[13] = v21;
    v6[14] = v22;
    v6[15] = v23;
    v6[16] = v24;
    v4 = 68;
  }

  while ((v9 & 1) != 0);
  return result;
}

uint64_t VCPProtoImagePetsResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v15 = objc_alloc_init(VCPProtoBounds);
        objc_storeStrong((a1 + 8), v15);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        LODWORD(v19[0]) = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v19[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E1D1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void transformLocation(CGPoint a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3 > 179)
  {
    if (a3 == 180 || a3 == 270)
    {
      return;
    }
  }

  else if (!a3 || a3 == 90)
  {
    return;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "invalid gesture rotation degrees %d", v4, 8u);
  }
}

uint64_t getRotationInDegrees(NSDictionary *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [(NSDictionary *)v1 objectForKeyedSubscript:@"rotationInDegrees"];

  if (v2)
  {
    v3 = [(NSDictionary *)v1 objectForKeyedSubscript:@"rotationInDegrees"];
    v4 = [v3 intValue];

    if (v4 % 360 >= 0)
    {
      v5 = v4 % 360;
    }

    else
    {
      v5 = v4 % 360 + 360;
    }

    v2 = 90 * ((v5 + 45) / 0x5Au);
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109376;
      v7[1] = v4;
      v8 = 1024;
      v9 = 90 * ((v5 + 45) / 0x5Au);
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPRequest : rotation degrees %d, mapped to %d", v7, 0xEu);
    }
  }

  return v2;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t VCPProtoClassificationReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v25 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 12) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E21AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t VCPProtoMovieFaceResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
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
        switch(v13)
        {
          case 1:
            v34 = objc_alloc_init(VCPProtoTimeRange);
            objc_storeStrong((a1 + 40), v34);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v34, a2))
            {
LABEL_89:

              return 0;
            }

            goto LABEL_62;
          case 2:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v45 & 0x7F) << v36;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v38;
            }

LABEL_85:
            v42 = 32;
            goto LABEL_86;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v45 & 0x7F) << v21;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_81:
            v42 = 36;
            goto LABEL_86;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 7)
        {
          v34 = objc_alloc_init(VCPProtoBounds);
          v35 = 24;
LABEL_60:
          objc_storeStrong((a1 + v35), v34);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v34, a2))
          {
            goto LABEL_89;
          }

LABEL_62:
          PBReaderRecallMark();

          goto LABEL_87;
        }

        if (v13 == 6)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v45 & 0x7F) << v28;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }

LABEL_77:
          v42 = 16;
LABEL_86:
          *(a1 + v42) = v27;
          goto LABEL_87;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v34 = objc_alloc_init(VCPProtoBounds);
          v35 = 8;
          goto LABEL_60;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v45 & 0x7F) << v14;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_73;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_73:
          *(a1 + 48) = v20;
          goto LABEL_87;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_87:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MAMovieAnalysisRequest::Start(MAMovieAnalysisRequest *this, void (*a2)(void *, int))
{
  v16 = 0;
  started = MAAssetByteStream_Create(0, *(this + 1), *(this + 2), *(this + 4), &v16);
  if (!started)
  {
    v15 = 0;
    started = FigAssetCreateWithByteStream();
    if (!started)
    {
      v14 = 0;
      started = FigAssetReaderCreateWithAsset();
      if (!started)
      {
        v13 = 0;
        v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v3)
        {
          started = v3(v14, &v13);
          if (!started)
          {
            v12 = 0;
            started = FigAssetCopyTrackByID(v15, v13, &v12);
            if (!started)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v4 = *MEMORY[0x1E6966130];
              LODWORD(sbuf[0]) = 875704422;
              CFDictionarySetNumber(Mutable, v4, kCFNumberSInt32Type, sbuf);
              v10 = 0;
              *sbuf = *MEMORY[0x1E6960C70];
              v9 = *(MEMORY[0x1E6960C70] + 16);
              started = FigAssetReaderEnableDecodedVideoExtractionFromTrack(v14, v13, Mutable, sbuf, &v10);
              if (!started)
              {
                *sbuf = *MEMORY[0x1E6960CC0];
                v9 = *(MEMORY[0x1E6960CC0] + 16);
                *obj = *MEMORY[0x1E6960C88];
                v7 = *(MEMORY[0x1E6960C88] + 16);
                started = FigAssetReaderStartExtractionForTimeRange(v14, sbuf, obj);
                if (!started)
                {
                  _ZNSt3__115allocate_sharedB8ne200100I25VCPImageHumanPoseAnalyzerNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
                }
              }

              CF<__CVBuffer *>::~CF(&Mutable);
            }

            CF<__CVBuffer *>::~CF(&v12);
          }
        }

        else
        {
          started = 4294954514;
        }
      }

      CF<__CVBuffer *>::~CF(&v14);
    }

    CF<__CVBuffer *>::~CF(&v15);
  }

  CF<__CVBuffer *>::~CF(&v16);
  return started;
}

void sub_1C9E22E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v16 = va_arg(va2, const void *);
  v18 = va_arg(va2, void);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  CF<__CVBuffer *>::~CF(va);
  CF<__CVBuffer *>::~CF(va1);
  CF<__CVBuffer *>::~CF(va2);
  CF<__CVBuffer *>::~CF((v12 - 96));
  CF<__CVBuffer *>::~CF((v12 - 88));
  _Unwind_Resume(a1);
}

uint64_t FigAssetCopyTrackByID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigAssetReaderEnableDecodedVideoExtractionFromTrack(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v10)
  {
    return 4294954514;
  }

  v12 = *a4;
  v13 = *(a4 + 2);
  return v10(a1, a2, a3, 0, &v12, 0, a5);
}

uint64_t FigAssetReaderStartExtractionForTimeRange(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v6)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *a3;
  v9 = *(a3 + 2);
  return v6(a1, &v10, &v8);
}

uint64_t FigAssetReaderExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, 1, a3, a4);
}

void MAMovieAnalysisRequest::~MAMovieAnalysisRequest(MAMovieAnalysisRequest *this)
{
  ma::MotionFilter::~MotionFilter(this);

  JUMPOUT(0x1CCA95C50);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E261D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CF<__CVBuffer *>::~CF(va);

  _Unwind_Resume(a1);
}

uint64_t VCPProtoLivePhotoKeyFrameStillResultReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 4)
      {
        v34 = 0;
        v26 = [a2 position] + 4;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v29 = v34;
        v30 = 12;
LABEL_50:
        *(a1 + v30) = v29;
        goto LABEL_51;
      }

      if (v13 != 3)
      {
LABEL_34:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_51;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v38 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v38 & 0x7F) << v16;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_43;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_43:
      *(a1 + 20) = v22;
LABEL_51:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v36 = 0;
      v24 = [a2 position] + 4;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
      {
        v31 = [a2 data];
        [v31 getBytes:&v36 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      v29 = v36;
      v30 = 8;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v35 = 0;
      v14 = [a2 position] + 4;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      v29 = v35;
      v30 = 16;
    }

    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E2CAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 232), 8);
  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E2E914(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C9E30C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1C9E30E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1C9E3169C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C9E31B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  CVPixelBufferLock::~CVPixelBufferLock(va1);
  CVPixelBufferLock::~CVPixelBufferLock(va2);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

void sub_1C9E31EB8(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v10 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v14 = va_arg(va3, const void *);

  CF<__CVBuffer *>::~CF(va);
  CF<__CVBuffer *>::~CF(va1);
  CF<__CVBuffer *>::~CF(va2);
  CF<__CVBuffer *>::~CF(va3);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E3340C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C9E37210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void sub_1C9E3906C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, void *a33, uint64_t a34, void *a35, void *a36, uint64_t a37, void *a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  _Block_object_dispose(&STACK[0x320], 8);

  _Unwind_Resume(a1);
}

void sub_1C9E39E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E3B730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, void *a46, void *a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, void *a54, void *a55, void *a56, void *a57, void *a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x360], 8);

  _Unwind_Resume(a1);
}

void sub_1C9E3C4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v43 - 224), 8);

  _Unwind_Resume(a1);
}

void sub_1C9E3DCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a42, 8);

  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);

  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);

  _Unwind_Resume(a1);
}

uint64_t VCPProtoPointReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___VCPProtoPoint__x;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___VCPProtoPoint__y;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9E40B5C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

ma::QualityAnalysis *ma::QualityAnalysis::QualityAnalysis(ma::QualityAnalysis *this, const ma::FrameBuffer *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = MEMORY[0x1E6960CC0];
  *(this + 24) = *MEMORY[0x1E6960CC0];
  *(this + 5) = *(v4 + 16);
  *(this + 48) = 1;
  *(this + 13) = 0;
  ma::HinkleyDetector::HinkleyDetector(this + 56);
  v5 = MEMORY[0x1E6960C70];
  *(this + 84) = *MEMORY[0x1E6960C70];
  *(this + 100) = *(v5 + 16);
  *(this + 27) = 0;
  *(this + 14) = a2;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 143) = 0;
  *(this + 21) = 0;
  *(this + 152) = ma::QualityAnalysis::kDefaultQualityScoreInterval;
  *(this + 22) = 0x3F8000003E19999ALL;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  return this;
}

void ma::QualityAnalysis::~QualityAnalysis(ma::QualityAnalysis *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  ma::MotionFilter::~MotionFilter((this + 56));

  MotionAnalysis<ma::ObstructionSegment>::~MotionAnalysis(this);
}

uint64_t ma::QualityAnalysis::Initialize(ma::QualityAnalysis *this, int a2, int a3, const __CFDictionary *a4, float a5)
{
  v6 = a3;
  if (a2)
  {
    v10 = 0.05;
  }

  else
  {
    v10 = 0.03;
  }

  if (a2)
  {
    v11 = 0.2;
  }

  else
  {
    v11 = 0.1;
  }

  if (a2 | a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = (a5 * 10.0);
  }

  v13 = MEMORY[0x1E695E9C0];
  *(this + 23) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Mutable = CFArrayCreateMutable(0, 0, v13);
  *(this + 24) = Mutable;
  result = 4294967188;
  if (*(this + 23) && Mutable)
  {
    v16 = &ma::QualityAnalysis::kDefaultQualityScoreInterval;
    if (a2)
    {
      v16 = &ma::QualityAnalysis::kIrisQualityScoreInterval;
    }

    *(this + 152) = *v16;
    *(this + 21) = *(v16 + 2);
    v17 = 0.15;
    if (a2)
    {
      v17 = *"\nף<";
    }

    *(this + 44) = v17;
    *(this + 149) = a2;
    *(this + 150) = v6;
    if (a2)
    {
      if (CFDictionaryContainsKey(a4, @"MetaFocusResults"))
      {
        *(this + 25) = CFDictionaryGetValue(a4, @"MetaFocusResults");
      }

      if (CFDictionaryContainsKey(a4, @"MetaMotionResults"))
      {
        *(this + 26) = CFDictionaryGetValue(a4, @"MetaMotionResults");
      }
    }

    ma::HinkleyDetector::Initialize(this + 56, v10, v11, v12);
    v18 = *(this + 152);
    CMTimeMultiplyByFloat64(&v19, &v18, a5);
    *(this + 152) = v19;
    *(this + 45) = a5;
    return MotionAnalysis<ma::QualitySegment>::Initialize(this);
  }

  return result;
}

uint64_t MotionAnalysis<ma::QualitySegment>::Initialize(uint64_t a1)
{
  if (*(a1 + 16) || *(a1 + 8))
  {
    return 4294967246;
  }

  *(a1 + 16) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = operator new(0x98uLL, MEMORY[0x1E69E5398]);
  if (v3)
  {
    v4 = v3;
    ma::QualitySegment::QualitySegment(v3);
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

uint64_t ma::QualityAnalysis::ProcessFrame(ma::QualityAnalysis *this, const ma::Frame *a2, Frame *a3)
{
  if (*(this + 48) == 1)
  {
    ma::QualitySegment::ResetStats(*(this + 1), a2, a3, *(this + 45));
    v6 = *(this + 1);
    v10 = *(this + 1);
    ma::Segment::SetStart(v6, 0, &v10);
    result = 0;
    *(this + 48) = 0;
    return result;
  }

  if (ma::QualityAnalysis::DecideSegmentPoint(this, *(this + 1), a2))
  {
    result = ma::QualityAnalysis::AddSegment(this, a2, 0);
    if (result)
    {
      return result;
    }

    ma::QualitySegment::ResetStats(*(this + 1), a2, a3, *(this + 45));
    v8 = *(this + 1);
    v9 = *a2;
    v10 = *(a2 + 4);
    ma::Segment::SetStart(v8, v9, &v10);
  }

  else
  {
    ma::QualitySegment::UpdateStats(*(this + 1), a2, a3, *(this + 45));
  }

  return 0;
}

BOOL ma::QualityAnalysis::DecideSegmentPoint(ma::QualityAnalysis *this, const ma::QualitySegment *a2, const ma::Frame *a3)
{
  v4 = *(a2 + 5);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (*(this + 16) >= *a3 - *(a2 + 3))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = ma::HinkleyDetector::Test((this + 56), a2 + 33, a3 + 19, v4 + 1);
    v7 = *(a2 + 5) == 0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (v7)
  {
LABEL_8:
    ma::HinkleyDetector::ResetStats((this + 56));
  }

  return v6;
}

uint64_t ma::QualityAnalysis::AddSegment(const __CFArray **this, const ma::Frame *a2, int a3)
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
    v13 = *(a2 + 28);
    CMTimeAdd(&v15, &lhs, &v13);
  }

  else
  {
    v15 = *(a2 + 4);
  }

  ma::Segment::Finalize(v7, Count, v10 + a3, &v15);
  v11 = *(this + 149);
  if (v11 == 1 && (a3 & 1) == 0)
  {
    if (*this)
    {
      v11 = CFArrayGetCount(*this) == 0;
    }

    else
    {
      v11 = 1;
    }
  }

  ma::QualitySegment::CalculateQualityScore(this[1], v11);
  return MotionAnalysis<ma::QualitySegment>::AddSegment(this);
}

uint64_t MotionAnalysis<ma::QualitySegment>::AddSegment(uint64_t a1)
{
  v2 = operator new(0x98uLL, MEMORY[0x1E69E5398]);
  if (!v2)
  {
    return 4294967188;
  }

  v3 = v2;
  ma::QualitySegment::QualitySegment(v2);
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

uint64_t ma::QualityAnalysis::FinalizeSegments(uint64_t a1, const ma::Frame *a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v11 = ma::QualityAnalysis::AddSegment(a1, a2, 1);
  if (v11)
  {
    return v11;
  }

  v11 = ma::QualityAnalysis::SplitSegment(a1, a3);
  if (v11)
  {
    return v11;
  }

  v11 = ma::QualityAnalysis::SplitSegment(a1, a4);
  if (v11)
  {
    return v11;
  }

  ma::QualityAnalysis::AdjustQualityScore(a1, a3);
  ma::QualityAnalysis::AdjustQualityScore(a1, a4);
  if (*(a1 + 149) != 1)
  {
    goto LABEL_15;
  }

  if (*(a1 + 208))
  {
    ma::QualityAnalysis::RefineQualityScore(a1, a3);
  }

  if (!*(a1 + 200))
  {
    goto LABEL_15;
  }

  ma::QualityAnalysis::GenerateDegradedScores(a1, &__p);
  v12 = ma::QualityAnalysis::SplitSegment(a1, &__p);
  if (!v12)
  {
    ma::QualityAnalysis::AdjustQualityScore(a1, &__p);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (!v12)
  {
LABEL_15:
    ma::QualityAnalysis::GetTrackSegment(a5, a6, &__p);
    v12 = ma::QualityAnalysis::SplitSegment(a1, &__p);
    if (!v12)
    {
      ma::QualityAnalysis::AdjustQualityScoreTracking(a1, &__p);
      v12 = ma::QualityAnalysis::MergeTrackingSegments(a1);
      if (!v12)
      {
        v12 = ma::QualityAnalysis::MergeSimilarSegments(a1);
        if (!v12)
        {
          v12 = ma::QualityAnalysis::MergeConsecutiveShortSegments(a1);
          if (!v12)
          {
            v12 = ma::QualityAnalysis::MergeSparseShortSegments(a1);
            if (!v12)
            {
              v12 = ma::QualityAnalysis::MergeSimilarSegments(a1);
              if (!v12)
              {
                if (*(a1 + 150) == 1)
                {
                  ma::QualityAnalysis::RecalculateQualityScore(a1);
                }

                v12 = ma::QualityAnalysis::QuantizeQualityAndMergeSameSegments(a1);
                if (!v12)
                {
                  v12 = ma::QualityAnalysis::StoreSegmentResult(a1);
                }
              }
            }
          }
        }
      }
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  return v12;
}

void sub_1C9E41560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFArray *ma::QualityAnalysis::SplitSegment(uint64_t a1, void *a2)
{
  result = *a1;
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v6 = Count & 0x7FFFFFFF;
      v7 = MEMORY[0x1E6960CC0];
      do
      {
        v8 = v6--;
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v6);
        v10 = *(*ValueAtIndex + 24);
        v11 = *(*ValueAtIndex + 56);
        v34[0] = *(*ValueAtIndex + 40);
        v34[1] = v11;
        v33 = v10;
        v12 = 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 2);
        if (v12 >= 1)
        {
          v13 = v12 & 0x7FFFFFFF;
          v14 = v13 + 1;
          v15 = 52 * v13;
          do
          {
            v16 = *a2 + v15;
            v17 = *(v16 - 52);
            v18 = *(v16 - 20);
            *&v32.start.epoch = *(v16 - 36);
            *&v32.duration.timescale = v18;
            *&range.start.value = v17;
            *&range.start.epoch = *&v32.start.epoch;
            *&range.duration.timescale = v18;
            *&v32.start.value = v17;
            CMTimeRangeGetEnd(&rhs.start, &range);
            *&range.start.value = *&rhs.start.value;
            range.start.epoch = rhs.start.epoch;
            *&time2.start.value = v33;
            time2.start.epoch = *&v34[0];
            if (CMTimeCompare(&range.start, &time2.start) < 0)
            {
              break;
            }

            if (*(*a2 + v15 - 4) != 0.0)
            {
              rhs = v32;
              *&time2.start.value = v33;
              *&time2.start.epoch = v34[0];
              *&time2.duration.timescale = v34[1];
              memset(&range, 0, sizeof(range));
              CMTimeRangeGetIntersection(&range, &time2, &rhs);
              if ((range.start.flags & 1) == 0 || (range.duration.flags & 1) == 0 || range.duration.epoch || range.duration.value < 0 || (time2.start = range.duration, *&rhs.start.value = *v7, rhs.start.epoch = *(v7 + 16), CMTimeCompare(&time2.start, &rhs.start)))
              {
                time2 = range;
                CMTimeRangeGetEnd(&v28, &time2);
                *&time2.start.value = v33;
                *&time2.start.epoch = v34[0];
                *&time2.duration.timescale = v34[1];
                CMTimeRangeGetEnd(&v27, &time2);
                time2.start = v28;
                rhs.start = v27;
                if (CMTimeCompare(&time2.start, &rhs.start) < 0)
                {
                  time2 = range;
                  CMTimeRangeGetEnd(&rhs.start, &time2);
                  v19 = *(a1 + 8);
                  *(v19 + 40) = rhs.start.epoch;
                  *(v19 + 24) = *&rhs.start.value;
                  *&time2.start.value = v33;
                  *&time2.start.epoch = v34[0];
                  *&time2.duration.timescale = v34[1];
                  CMTimeRangeGetEnd(&v27, &time2);
                  time2 = range;
                  CMTimeRangeGetEnd(&v26, &time2);
                  time2.start = v27;
                  rhs.start = v26;
                  CMTimeSubtract(&v28, &time2.start, &rhs.start);
                  *(*(a1 + 8) + 48) = v28;
                  *(*(a1 + 8) + 76) = *(*CFArrayGetValueAtIndex(*a1, v6) + 76);
                  v20 = CFArrayGetValueAtIndex(*a1, v6);
                  v21 = *(a1 + 8);
                  *(v21 + 80) = *(*v20 + 80);
                  *(v21 + 8) = v8;
                  *&time2.start.value = *(v34 + 8);
                  time2.start.epoch = *(&v34[1] + 1);
                  *&rhs.start.value = *(v21 + 48);
                  rhs.start.epoch = *(v21 + 64);
                  CMTimeSubtract((v34 + 8), &time2.start, &rhs.start);
                  result = MotionAnalysis<ma::QualitySegment>::InsertSegment(a1, v8);
                  if (result)
                  {
                    return result;
                  }
                }

                *&time2.start.value = *&range.start.value;
                time2.start.epoch = range.start.epoch;
                *&rhs.start.value = v33;
                rhs.start.epoch = *&v34[0];
                if (CMTimeCompare(&time2.start, &rhs.start) >= 1)
                {
                  v22 = *(a1 + 8);
                  *(v22 + 24) = *&range.start.value;
                  *(v22 + 40) = range.start.epoch;
                  *&time2.start.value = v33;
                  *&time2.start.epoch = v34[0];
                  *&time2.duration.timescale = v34[1];
                  CMTimeRangeGetEnd(&v27, &time2);
                  time2.start = v27;
                  *&rhs.start.value = *&range.start.value;
                  rhs.start.epoch = range.start.epoch;
                  CMTimeSubtract(&v28, &time2.start, &rhs.start);
                  *(*(a1 + 8) + 48) = v28;
                  *(*(a1 + 8) + 76) = *(*CFArrayGetValueAtIndex(*a1, v6) + 76);
                  v23 = CFArrayGetValueAtIndex(*a1, v6);
                  v24 = *(a1 + 8);
                  *(v24 + 80) = *(*v23 + 80);
                  *(v24 + 8) = v8;
                  *&time2.start.value = *(v34 + 8);
                  time2.start.epoch = *(&v34[1] + 1);
                  *&rhs.start.value = *(v24 + 48);
                  rhs.start.epoch = *(v24 + 64);
                  CMTimeSubtract(&v28, &time2.start, &rhs.start);
                  *(v34 + 8) = v28;
                  result = MotionAnalysis<ma::QualitySegment>::InsertSegment(a1, v8);
                  if (result)
                  {
                    return result;
                  }
                }
              }
            }

            --v14;
            v15 -= 52;
          }

          while (v14 > 1);
        }

        v25 = *CFArrayGetValueAtIndex(*a1, v6);
        *(v25 + 64) = *(&v34[1] + 1);
        *(v25 + 48) = *(v34 + 8);
      }

      while (v8 > 1);
    }

    return 0;
  }

  return result;
}

uint64_t ma::QualityAnalysis::AdjustQualityScore(CFArrayRef *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2[1] != *a2)
  {
    v3 = a1;
    for (i = 0; ; ++i)
    {
      v5 = *v3 ? CFArrayGetCount(*v3) : 0;
      if (i >= v5)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*v3, i);
      v7 = *ValueAtIndex;
      v33 = *(*ValueAtIndex + 24);
      v8 = *(v7 + 36);
      v34 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = *(v7 + 48);
      v11 = *(v7 + 56);
      v12 = *(v7 + 60);
      v13 = *(v7 + 64);
      if ((v8 & 1) != 0 && (v12 & 1) != 0 && !v13 && (v10 & 0x8000000000000000) == 0)
      {
        time1.start.value = *(v7 + 48);
        *&time1.start.timescale = __PAIR64__(v12, v11);
        time1.start.epoch = 0;
        *&time2.start.value = *MEMORY[0x1E6960CC0];
        time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&time1.start, &time2.start))
        {
          continue;
        }
      }

      v14 = *a2;
      if (a2[1] != *a2)
      {
        v28 = i;
        v15 = 0;
        v16 = 0;
        v17 = 0.0;
        do
        {
          v18 = v14 + v15;
          time1 = *v18;
          v19 = *(v18 + 48);
          memset(&time2, 0, sizeof(time2));
          range.start.value = v33;
          range.start.timescale = v34;
          range.start.flags = v8;
          range.start.epoch = v9;
          range.duration.value = v10;
          range.duration.timescale = v11;
          range.duration.flags = v12;
          range.duration.epoch = v13;
          otherRange = time1;
          CMTimeRangeGetIntersection(&time2, &range, &otherRange);
          if ((time2.start.flags & 1) == 0 || (time2.duration.flags & 1) == 0 || time2.duration.epoch || time2.duration.value < 0 || (range.start = time2.duration, *&otherRange.start.value = *MEMORY[0x1E6960CC0], otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&range.start, &otherRange.start)))
          {
            range.start = time2.duration;
            v17 = v17 + CMTimeGetSeconds(&range.start) * v19;
          }

          ++v16;
          v14 = *a2;
          v15 += 52;
        }

        while (0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 2) > v16);
        v3 = a1;
        i = v28;
        if (v17 != 0.0)
        {
          time1.start.value = v10;
          *&time1.start.timescale = __PAIR64__(v12, v11);
          time1.start.epoch = v13;
          v20 = v17 / CMTimeGetSeconds(&time1.start);
          v21 = expf((v20 * v20) / -0.05);
          v22 = CFArrayGetValueAtIndex(*a1, v28);
          v23 = (v21 * *(*v22 + 76)) + -0.45;
          if (v23 < 1.0)
          {
            v24 = (v21 * *(*v22 + 76)) + -0.45;
          }

          else
          {
            v24 = 1.0;
          }

          if (v23 <= 0.0)
          {
            v25 = 0.0;
          }

          else
          {
            v25 = v24;
          }

          *(*CFArrayGetValueAtIndex(*a1, v28) + 76) = v25;
          *(*CFArrayGetValueAtIndex(*a1, v28) + 72) = 1;
        }
      }
    }
  }

  return 0;
}

const __CFArray *ma::QualityAnalysis::RefineQualityScore(CFArrayRef *a1, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  result = CFArrayGetCount(a1[26]);
  if (result)
  {
    for (i = 0; ; ++i)
    {
      result = *a1;
      if (*a1)
      {
        result = CFArrayGetCount(result);
        v6 = result;
      }

      else
      {
        v6 = 0;
      }

      if (i >= v6)
      {
        return result;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      v8 = *ValueAtIndex;
      v40 = *(*ValueAtIndex + 24);
      v9 = *(v8 + 36);
      v41 = *(v8 + 32);
      v10 = *(v8 + 48);
      v30 = *(v8 + 40);
      v11 = *(v8 + 60);
      v31 = *(v8 + 56);
      v32 = *(v8 + 64);
      if ((v9 & 1) == 0 || (v11 & 1) == 0 || v32 || v10 < 0 || (time1.start.value = *(v8 + 48), time1.start.timescale = v31, time1.start.flags = v11, time1.start.epoch = 0, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &time2.start)))
      {
        if (*(*CFArrayGetValueAtIndex(*a1, i) + 76) <= 0.6)
        {
          v12 = CFArrayGetValueAtIndex(*a1, i);
          v13 = *v12;
          time1.start.epoch = *(*v12 + 64);
          *&time1.start.value = *(v13 + 48);
          if (CMTimeGetSeconds(&time1.start) >= 0.5 && CFArrayGetCount(a1[26]) >= 1)
          {
            break;
          }
        }
      }

LABEL_45:
      ;
    }

    v29 = i;
    v14 = 0;
    v15 = -1.0;
    while (1)
    {
      v16 = CFArrayGetValueAtIndex(a1[26], v14);
      memset(&time1, 0, sizeof(time1));
      CMTimeRangeMakeFromDictionary(&time1, v16);
      Value = CFDictionaryGetValue(v16, @"quality");
      LODWORD(time2.start.value) = 0;
      CFNumberGetValue(Value, kCFNumberFloat32Type, &time2);
      v18 = *&time2.start.value;
      memset(&time2, 0, sizeof(time2));
      range.start.value = v40;
      range.start.timescale = v41;
      range.start.flags = v9;
      range.start.epoch = v30;
      range.duration.value = v10;
      range.duration.timescale = v31;
      range.duration.flags = v11;
      range.duration.epoch = v32;
      otherRange = time1;
      CMTimeRangeGetIntersection(&time2, &range, &otherRange);
      v20 = *a2;
      v19 = a2[1];
      if (v19 == *a2)
      {
        v27 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0.0;
        do
        {
          v24 = (v20 + v21);
          if (*(v20 + v21 + 48) == 0.0)
          {
            v25 = *v24;
            v26 = v24[2];
            *&range.start.epoch = v24[1];
            *&range.duration.timescale = v26;
            otherRange = time1;
            *&range.start.value = v25;
            CMTimeRangeGetEnd(&v33.start, &otherRange);
            *&otherRange.start.value = *&range.start.value;
            otherRange.start.epoch = range.start.epoch;
            *&time.start.value = *&v33.start.value;
            time.start.epoch = v33.start.epoch;
            if (CMTimeCompare(&otherRange.start, &time.start) <= 0)
            {
              otherRange = range;
              CMTimeRangeGetEnd(&v35, &otherRange);
              otherRange.start = v35;
              *&time.start.value = *&time1.start.value;
              time.start.epoch = time1.start.epoch;
              if ((CMTimeCompare(&otherRange.start, &time.start) & 0x80000000) == 0)
              {
                memset(&otherRange, 0, sizeof(otherRange));
                time = range;
                v33 = time2;
                CMTimeRangeGetIntersection(&otherRange, &time, &v33);
                if ((otherRange.start.flags & 1) == 0 || (otherRange.duration.flags & 1) == 0 || otherRange.duration.epoch || otherRange.duration.value < 0 || (time.start = otherRange.duration, *&v33.start.value = *MEMORY[0x1E6960CC0], v33.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time.start, &v33.start)))
                {
                  time.start = otherRange.duration;
                  v23 = CMTimeGetSeconds(&time.start) + v23;
                }
              }
            }

            v20 = *a2;
            v19 = a2[1];
          }

          ++v22;
          v21 += 52;
        }

        while (0x4EC4EC4EC4EC4EC5 * ((v19 - v20) >> 2) > v22);
        v27 = v23 > 0.5;
      }

      if ((time2.start.flags & 1) == 0 || (time2.duration.flags & 1) == 0 || time2.duration.epoch || time2.duration.value < 0)
      {
        if (v27)
        {
          goto LABEL_33;
        }
      }

      else
      {
        range.start = time2.duration;
        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (CMTimeCompare(&range.start, &otherRange.start) != 0 && v27)
        {
LABEL_33:
          if (v18 >= v15)
          {
            v15 = v18;
          }
        }
      }

      if (CFArrayGetCount(a1[26]) <= ++v14)
      {
        i = v29;
        if (v15 < 10.0 && v15 >= 0.0)
        {
          v28 = expf(v15 * -0.1);
          *(*CFArrayGetValueAtIndex(*a1, v29) + 76) = v28;
          *(*CFArrayGetValueAtIndex(*a1, v29) + 80) = 1;
        }

        goto LABEL_45;
      }
    }
  }

  return result;
}

CFIndex ma::QualityAnalysis::GenerateDegradedScores@<X0>(CFArrayRef *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  while (1)
  {
    result = CFArrayGetCount(this[25]);
    if (v4 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(this[25], v4);
    memset(&v10, 0, sizeof(v10));
    CMTimeRangeMakeFromDictionary(&v10, ValueAtIndex);
    Value = CFDictionaryGetValue(ValueAtIndex, @"quality");
    LODWORD(v8.start.value) = 0;
    CFNumberGetValue(Value, kCFNumberFloat32Type, &v8);
    if (*&v8.start.value != 1.0)
    {
      v8 = v10;
      v9 = 1065353216;
      std::vector<std::pair<CMTimeRange,float>>::push_back[abi:ne200100](a2, &v8.start.value);
    }

    ++v4;
  }

  return result;
}

void sub_1C9E423AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ma::QualityAnalysis::GetTrackSegment(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v3 = a2;
  v40 = *MEMORY[0x1E69E9840];
  {
    CMTimeMakeWithSeconds(&ma::QualityAnalysis::GetTrackSegment(std::vector<CMTimeRange> const&,std::vector<std::pair<CMTimeRange,float>> const&)::kMinTrackLength, 1.0, 600);
    v3 = a2;
  }

  *a3 = 0;
  a3[1] = 0;
  v29 = a3;
  a3[2] = 0;
  v6 = *v3;
  if (v3[1] != *v3)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    do
    {
      v9 = v6 + 52 * v7;
      value = *v9;
      flags = *(v9 + 12);
      timescale = *(v9 + 8);
      epoch = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      v14 = *(v9 + 36);
      v15 = *(v9 + 40);
      if ((flags & 1) == 0 || (v14 & 1) == 0 || v15 || v12 < 0 || (time1.start.value = *(v9 + 24), time1.start.timescale = v13, time1.start.flags = v14, time1.start.epoch = 0, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&time1.start, &time2.start)))
      {
        v16 = v8;
        v17 = 48 * v8;
        do
        {
          v8 = v16;
          if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) <= v16)
          {
            break;
          }

          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = epoch;
          time1.duration.value = v12;
          time1.duration.timescale = v13;
          time1.duration.flags = v14;
          time1.duration.epoch = v15;
          CMTimeRangeGetEnd(&rhs.start, &time1);
          v18 = *a1 + v17;
          *&time1.start.value = *&rhs.start.value;
          time1.start.epoch = rhs.start.epoch;
          v19 = *v18;
          time2.start.epoch = *(v18 + 16);
          *&time2.start.value = v19;
          if (CMTimeCompare(&time1.start, &time2.start) < 1)
          {
            break;
          }

          memset(&time2, 0, sizeof(time2));
          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = epoch;
          time1.duration.value = v12;
          time1.duration.timescale = v13;
          time1.duration.flags = v14;
          time1.duration.epoch = v15;
          v20 = (*a1 + v17);
          v22 = v20[1];
          v21 = v20[2];
          *&rhs.start.value = *v20;
          *&rhs.start.epoch = v22;
          *&rhs.duration.timescale = v21;
          CMTimeRangeGetIntersection(&time2, &time1, &rhs);
          if ((time2.start.flags & 1) != 0 && (time2.duration.flags & 1) != 0 && !time2.duration.epoch && (time2.duration.value & 0x8000000000000000) == 0)
          {
            time1.start = time2.duration;
            *&rhs.start.value = *MEMORY[0x1E6960CC0];
            rhs.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
            if (!CMTimeCompare(&time1.start, &rhs.start))
            {
              continue;
            }
          }

          time1.start = time2.duration;
          CMTimeGetSeconds(&time1.start);
          *&time1.start.value = *&time2.start.value;
          time1.start.epoch = time2.start.epoch;
          rhs.start.value = value;
          rhs.start.timescale = timescale;
          rhs.start.flags = flags;
          rhs.start.epoch = epoch;
          CMTimeSubtract(&end, &time1.start, &rhs.start);
          time1.start = end;
          *&rhs.start.value = ma::QualityAnalysis::GetTrackSegment(std::vector<CMTimeRange> const&,std::vector<std::pair<CMTimeRange,float>> const&)::kMinTrackLength;
          rhs.start.epoch = qword_1ED942578;
          if (CMTimeCompare(&time1.start, &rhs.start) >= 1)
          {
            memset(&rhs, 0, sizeof(rhs));
            time1.start.value = value;
            time1.start.timescale = timescale;
            time1.start.flags = flags;
            time1.start.epoch = epoch;
            end = time2.start;
            CMTimeRangeFromTimeToTime(&rhs, &time1.start, &end);
            v23 = *a2 + 52 * v7;
            time1 = rhs;
            v34 = *(v23 + 48);
            std::vector<std::pair<CMTimeRange,float>>::push_back[abi:ne200100](v29, &time1.start.value);
          }

          memset(&end, 0, sizeof(end));
          time1 = time2;
          CMTimeRangeGetEnd(&end, &time1);
          memset(&v32, 0, sizeof(v32));
          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = epoch;
          time1.duration.value = v12;
          time1.duration.timescale = v13;
          time1.duration.flags = v14;
          time1.duration.epoch = v15;
          CMTimeRangeGetEnd(&v32, &time1);
          time1.start = end;
          rhs.start = v32;
          if (CMTimeCompare(&time1.start, &rhs.start) <= 0)
          {
            rhs.start = end;
            v31 = v32;
            CMTimeRangeFromTimeToTime(&time1, &rhs.start, &v31);
            value = time1.start.value;
            flags = time1.start.flags;
            timescale = time1.start.timescale;
            epoch = time1.start.epoch;
            v12 = time1.duration.value;
            v13 = time1.duration.timescale;
            v14 = time1.duration.flags;
            v15 = time1.duration.epoch;
          }

          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = epoch;
          time1.duration.value = v12;
          time1.duration.timescale = v13;
          time1.duration.flags = v14;
          time1.duration.epoch = v15;
          CMTimeRangeGetEnd(&end, &time1);
          v24 = (*a1 + v17);
          v26 = v24[1];
          v25 = v24[2];
          *&time1.start.value = *v24;
          *&time1.start.epoch = v26;
          *&time1.duration.timescale = v25;
          CMTimeRangeGetEnd(&v32, &time1);
          time1.start = end;
          rhs.start = v32;
          v27 = CMTimeCompare(&time1.start, &rhs.start);
          v16 = v8 + 1;
          v17 += 48;
        }

        while (v27 >= 1);
        time1.start.value = v12;
        time1.start.timescale = v13;
        time1.start.flags = v14;
        time1.start.epoch = v15;
        *&time2.start.value = ma::QualityAnalysis::GetTrackSegment(std::vector<CMTimeRange> const&,std::vector<std::pair<CMTimeRange,float>> const&)::kMinTrackLength;
        time2.start.epoch = qword_1ED942578;
        v3 = a2;
        if (CMTimeCompare(&time1.start, &time2.start) >= 1)
        {
          v28 = *a2 + 52 * v7;
          time1.start.value = value;
          time1.start.timescale = timescale;
          time1.start.flags = flags;
          time1.start.epoch = epoch;
          time1.duration.value = v12;
          time1.duration.timescale = v13;
          time1.duration.flags = v14;
          time1.duration.epoch = v15;
          v34 = *(v28 + 48);
          std::vector<std::pair<CMTimeRange,float>>::push_back[abi:ne200100](v29, &time1.start.value);
        }
      }

      ++v7;
      v6 = *v3;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v3[1] - *v3) >> 2) > v7);
  }
}

const __CFArray *ma::QualityAnalysis::AdjustQualityScoreTracking(const __CFArray *result, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2[1] != *a2)
  {
    v3 = result;
    v4 = 0;
    LODWORD(v5) = 0;
    v35 = result;
    while (1)
    {
      result = *v3;
      if (*v3)
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
        return result;
      }

      v36 = v4;
      ValueAtIndex = CFArrayGetValueAtIndex(*v3, v4);
      v8 = *ValueAtIndex;
      v42 = *(*ValueAtIndex + 24);
      v9 = *(v8 + 36);
      v43 = *(v8 + 32);
      v10 = *(v8 + 40);
      v11 = *(v8 + 48);
      v13 = *(v8 + 56);
      v12 = *(v8 + 60);
      v14 = *(v8 + 64);
      if ((v9 & 1) != 0 && (v12 & 1) != 0 && !v14 && (v11 & 0x8000000000000000) == 0)
      {
        time1.start.value = *(v8 + 48);
        time1.start.timescale = v13;
        time1.start.flags = v12;
        time1.start.epoch = 0;
        *&time2.start.value = *MEMORY[0x1E6960CC0];
        time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&time1.start, &time2.start))
        {
          goto LABEL_32;
        }
      }

      v15 = v5;
      v16 = 52 * v5;
      v17 = 0.0;
      do
      {
        v5 = v15;
        if (0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 2) <= v15)
        {
          break;
        }

        time1.start.value = v42;
        time1.start.timescale = v43;
        time1.start.flags = v9;
        time1.start.epoch = v10;
        time1.duration.value = v11;
        time1.duration.timescale = v13;
        time1.duration.flags = v12;
        time1.duration.epoch = v14;
        CMTimeRangeGetEnd(&v39.start, &time1);
        v18 = *a2 + v16;
        *&time1.start.value = *&v39.start.value;
        time1.start.epoch = v39.start.epoch;
        v19 = *v18;
        time2.start.epoch = *(v18 + 16);
        *&time2.start.value = v19;
        if (CMTimeCompare(&time1.start, &time2.start) < 1)
        {
          break;
        }

        memset(&time1, 0, sizeof(time1));
        time2.start.value = v42;
        time2.start.timescale = v43;
        time2.start.flags = v9;
        time2.start.epoch = v10;
        time2.duration.value = v11;
        time2.duration.timescale = v13;
        time2.duration.flags = v12;
        time2.duration.epoch = v14;
        v20 = (*a2 + v16);
        v22 = v20[1];
        v21 = v20[2];
        *&v39.start.value = *v20;
        *&v39.start.epoch = v22;
        *&v39.duration.timescale = v21;
        CMTimeRangeGetIntersection(&time1, &time2, &v39);
        if ((time1.start.flags & 1) != 0 && (time1.duration.flags & 1) != 0 && !time1.duration.epoch && (time1.duration.value & 0x8000000000000000) == 0)
        {
          time2.start = time1.duration;
          *&v39.start.value = *MEMORY[0x1E6960CC0];
          v39.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&time2.start, &v39.start))
          {
            continue;
          }
        }

        time2.start = time1.duration;
        v17 = v17 + CMTimeGetSeconds(&time2.start) * *(*a2 + v16 + 48);
        time2.start.value = v42;
        time2.start.timescale = v43;
        time2.start.flags = v9;
        time2.start.epoch = v10;
        time2.duration.value = v11;
        time2.duration.timescale = v13;
        time2.duration.flags = v12;
        time2.duration.epoch = v14;
        CMTimeRangeGetEnd(&v38, &time2);
        v23 = (*a2 + v16);
        v25 = v23[1];
        v24 = v23[2];
        *&time2.start.value = *v23;
        *&time2.start.epoch = v25;
        *&time2.duration.timescale = v24;
        CMTimeRangeGetEnd(&v37, &time2);
        time2.start = v38;
        v39.start = v37;
        v26 = CMTimeCompare(&time2.start, &v39.start);
        v15 = v5 + 1;
        v16 += 52;
      }

      while (v26 > 0);
      if (v17 == 0.0)
      {
        break;
      }

      time1.start.value = v11;
      time1.start.timescale = v13;
      time1.start.flags = v12;
      time1.start.epoch = v14;
      v27 = v17 / CMTimeGetSeconds(&time1.start);
      v3 = v35;
      v28 = v36;
      *(*CFArrayGetValueAtIndex(*v35, v36) + 144) = v27;
      v29 = CFArrayGetValueAtIndex(*v35, v36);
      if (ma::QualitySegment::IsTracking(*v29))
      {
        v30 = CFArrayGetValueAtIndex(*v35, v36);
        *(*v30 + 76) = *(*v30 + 76) + (v27 * 0.8);
        v31 = CFArrayGetValueAtIndex(*v35, v36);
        v32 = *(*v31 + 76);
        if (v32 < 1.0)
        {
          v33 = *(*v31 + 76);
        }

        else
        {
          v33 = 1.0;
        }

        if (v32 <= 0.0)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v33;
        }

        *(*CFArrayGetValueAtIndex(*v35, v36) + 76) = v34;
      }

LABEL_33:
      v4 = v28 + 1;
    }

    v3 = v35;
LABEL_32:
    v28 = v36;
    goto LABEL_33;
  }

  return result;
}

const __CFArray *ma::QualityAnalysis::MergeTrackingSegments(ma::QualityAnalysis *this)
{
  result = *this;
  if (result)
  {
    v3 = 0;
    while (CFArrayGetCount(result) >= 2)
    {
      result = *this;
      if (!*this)
      {
        return result;
      }

      v4 = (v3 + 1);
      if (v4 >= CFArrayGetCount(result))
      {
        break;
      }

      v5 = *CFArrayGetValueAtIndex(*this, v3);
      v6 = *CFArrayGetValueAtIndex(*this, (v3 + 1));
      if (!ma::QualitySegment::IsTracking(v6) || !ma::QualitySegment::IsTracking(v5) || (ma::QualitySegment::Merge(v6, v5, *(this + 149), 1), result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v3), v4 = v3, !result))
      {
        result = *this;
        v3 = v4;
        if (*this)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

const __CFArray *ma::QualityAnalysis::MergeSimilarSegments(ma::QualityAnalysis *this)
{
  result = *this;
  if (result)
  {
    v3 = 0;
    while (CFArrayGetCount(result) >= 2)
    {
      result = *this;
      if (!*this)
      {
        return result;
      }

      v4 = (v3 + 1);
      if (v4 >= CFArrayGetCount(result))
      {
        break;
      }

      v5 = *CFArrayGetValueAtIndex(*this, v3);
      ValueAtIndex = CFArrayGetValueAtIndex(*this, (v3 + 1));
      v7 = *ValueAtIndex;
      if (vabds_f32(*(*ValueAtIndex + 19), v5[19]) >= *(this + 44) || (IsTracking = ma::QualitySegment::IsTracking(*ValueAtIndex), IsTracking != ma::QualitySegment::IsTracking(v5)) || (ma::QualitySegment::Merge(v7, v5, *(this + 149), 1), result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v3), v4 = v3, !result))
      {
        result = *this;
        v3 = v4;
        if (*this)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

const __CFArray *ma::QualityAnalysis::MergeConsecutiveShortSegments(ma::QualityAnalysis *this)
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

    ValueAtIndex = CFArrayGetValueAtIndex(*this, v2);
    if (*(this + 149))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(this + 150);
    }

    ++v2;
    v7 = *ValueAtIndex;
    if (ma::QualitySegment::IsShort(*ValueAtIndex, v6 & 1, *(this + 45)))
    {
      v8 = v3;
      for (i = v2; ; ++i)
      {
        v10 = *this ? CFArrayGetCount(*this) : 0;
        if (i >= v10)
        {
          break;
        }

        v11 = CFArrayGetValueAtIndex(*this, i);
        v12 = (*(this + 149) & 1) != 0 ? 1 : *(this + 150);
        if (!ma::QualitySegment::IsShort(*v11, v12 & 1, *(this + 45)) || *(*CFArrayGetValueAtIndex(*this, i) + 72) != *(v7 + 72))
        {
          break;
        }

        ++v8;
      }

      while (v3 < v8)
      {
        v13 = CFArrayGetValueAtIndex(*this, v2);
        ma::QualitySegment::Merge(v7, *v13, *(this + 149), 1);
        result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v3 + 1);
        --v8;
        if (result)
        {
          return result;
        }
      }

      v2 = v8 + 1;
    }
  }

  return ma::QualityAnalysis::MergeSimilarSegments(this);
}

const __CFArray *ma::QualityAnalysis::MergeSparseShortSegments(ma::QualityAnalysis *this)
{
  result = *this;
  if (result)
  {
    if (CFArrayGetCount(result) < 2 || ((v3 = *CFArrayGetValueAtIndex(*this, 0), (*(this + 149) & 1) == 0) ? (v4 = *(this + 150)) : (v4 = 1), !ma::QualitySegment::IsShort(v3, v4 & 1, *(this + 45)) || *(*CFArrayGetValueAtIndex(*this, 0) + 76) <= 0.3 || (v5 = *CFArrayGetValueAtIndex(*this, 1), v6 = CFArrayGetValueAtIndex(*this, 0), ma::QualitySegment::Merge(v5, *v6, *(this + 149), 1), result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, 0), !result)))
    {
      result = *this;
      if (*this)
      {
        Count = CFArrayGetCount(result);
        result = *this;
        if (Count < 2)
        {
          goto LABEL_33;
        }

        if (result)
        {
          v8 = (CFArrayGetCount(result) - 1);
          result = *this;
        }

        else
        {
          v8 = -1;
        }

        v9 = *CFArrayGetValueAtIndex(result, v8);
        v10 = (*(this + 149) & 1) != 0 ? 1 : *(this + 150);
        IsShort = ma::QualitySegment::IsShort(v9, v10 & 1, *(this + 45));
        result = *this;
        if (!IsShort)
        {
          goto LABEL_33;
        }

        if (result)
        {
          v12 = (CFArrayGetCount(result) - 1);
          result = *this;
        }

        else
        {
          v12 = -1;
        }

        v13 = *(*CFArrayGetValueAtIndex(result, v12) + 76);
        result = *this;
        if (v13 <= 0.3)
        {
          goto LABEL_33;
        }

        if (result)
        {
          v14 = (CFArrayGetCount(result) - 2);
          result = *this;
        }

        else
        {
          v14 = -2;
        }

        v15 = *CFArrayGetValueAtIndex(result, v14);
        v16 = *this;
        if (*this)
        {
          v17 = (CFArrayGetCount(v16) - 1);
          v16 = *this;
        }

        else
        {
          v17 = -1;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v16, v17);
        ma::QualitySegment::Merge(v15, *ValueAtIndex, *(this + 149), 1);
        if (*this)
        {
          v19 = CFArrayGetCount(*this) - 1;
        }

        else
        {
          v19 = -1;
        }

        result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v19);
        if (!result)
        {
          result = *this;
LABEL_33:
          if (!result)
          {
            return result;
          }

          v20 = 0;
          v21 = 1;
          while (1)
          {
            if (CFArrayGetCount(result) < 3)
            {
              return 0;
            }

            v22 = *this ? CFArrayGetCount(*this) - 1 : -1;
            if (v21 >= v22)
            {
              return 0;
            }

            v23 = (v21 + 1);
            v24 = *CFArrayGetValueAtIndex(*this, v20);
            v25 = *CFArrayGetValueAtIndex(*this, v21);
            v26 = CFArrayGetValueAtIndex(*this, v23);
            v27 = (*(this + 149) & 1) != 0 ? 1 : *(this + 150);
            v28 = *v26;
            v29 = ma::QualitySegment::IsShort(v24, v27 & 1, *(this + 45));
            v30 = (*(this + 149) & 1) != 0 ? 1 : *(this + 150);
            v31 = ma::QualitySegment::IsShort(v25, v30 & 1, *(this + 45));
            v32 = (*(this + 149) & 1) != 0 ? 1 : *(this + 150);
            v33 = ma::QualitySegment::IsShort(v28, v32 & 1, *(this + 45));
            v34 = v33;
            v35 = *(this + 150) == 1 && v24[19] > 0.7 && v28[19] > 0.7 && *(v25 + 76) < 0.5;
            if ((*(v25 + 72) & 1) == 0 && v31 && !v35)
            {
              break;
            }

            v20 = v21;
LABEL_70:
            result = *this;
            v21 = v23;
            if (!*this)
            {
              return result;
            }
          }

          if (v29 || v33)
          {
            v36 = *(this + 149);
            if (!v29)
            {
LABEL_67:
              ma::QualitySegment::Merge(v24, v25, v36, 1);
              v39 = this;
              v40 = v21;
              goto LABEL_68;
            }

            ma::QualitySegment::Merge(v25, v28, v36, 1);
            result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v21 + 1);
            if (!v34)
            {
              goto LABEL_69;
            }

            if (result)
            {
              return result;
            }
          }

          else
          {
            v37 = v24[19];
            v38 = v28[19];
            if (vabds_f32(v37, v38) < *(this + 44) || vabds_f32(v37, *(v25 + 76)) > vabds_f32(v38, *(v25 + 76)))
            {
              ma::QualitySegment::Merge(v25, v28, *(this + 149), 1);
              v39 = this;
              v40 = v21 + 1;
LABEL_68:
              result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(v39, v40);
LABEL_69:
              v23 = v21;
              if (result)
              {
                return result;
              }

              goto LABEL_70;
            }
          }

          v36 = *(this + 149);
          goto LABEL_67;
        }
      }
    }
  }

  return result;
}

uint64_t ma::QualityAnalysis::RecalculateQualityScore(CFArrayRef *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *this ? CFArrayGetCount(*this) : 0;
    if (i >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*this, i);
    ma::QualitySegment::ReviseQualityScoreForTimelapse(*ValueAtIndex);
  }

  return 0;
}

uint64_t ma::QualityAnalysis::QuantizeQualityAndMergeSameSegments(ma::QualityAnalysis *this)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*this, 0);
  ma::QualitySegment::QuantizeQualityScore(*ValueAtIndex);
  LODWORD(v3) = 0;
LABEL_2:
  v4 = v3;
  v3 = (v3 + 1);
  while (1)
  {
    v5 = *this;
    if (*this)
    {
      LODWORD(v5) = CFArrayGetCount(v5);
    }

    if (v4 >= v5)
    {
      return 0;
    }

    v6 = *this;
    if (*this)
    {
      LODWORD(v6) = CFArrayGetCount(v6);
    }

    if (v3 >= v6)
    {
      return 0;
    }

    v7 = *CFArrayGetValueAtIndex(*this, v4);
    v8 = *CFArrayGetValueAtIndex(*this, v3);
    ma::QualitySegment::QuantizeQualityScore(v8);
    if (v8[19] != v7[19])
    {
      goto LABEL_2;
    }

    ma::QualitySegment::Merge(v8, v7, *(this + 149), 0);
    result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v4);
    if (result)
    {
      return result;
    }
  }
}

uint64_t ma::QualityAnalysis::StoreSegmentResult(CFArrayRef *this)
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
      v5 = *(*CFArrayGetValueAtIndex(*this, i) + 76);
      result = AddResultDictionary(&time, &v6, &v5, 0, 0, this[2]);
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t ma::QualityAnalysis::CopyProperty(CFArrayRef *this, CMTimeRange *a2, CFTypeRef cf1, const __CFAllocator *a4, CFArrayRef *a5)
{
  if (!CFEqual(cf1, @"QualityResults"))
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
  ma::QualitySegment::CalculateQualityScore(this[1], *(this + 149));
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

uint64_t ma::QualityAnalysis::CopyProperty(ma::QualityAnalysis *this, CFTypeRef cf1, const __CFAllocator *a3, CFArrayRef *a4)
{
  if (!CFEqual(cf1, @"QualityResults"))
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

uint64_t ma::QualityAnalysis::CopyQualitySceneProperty(ma::QualityAnalysis *this, CFAllocatorRef allocator, CFArrayRef *a3)
{
  v4 = *(this + 23);
  if (v4)
  {
    Copy = CFArrayCreateCopy(allocator, v4);
  }

  else
  {
    Copy = 0;
  }

  *a3 = Copy;
  return 0;
}

uint64_t ma::QualityAnalysis::CopyMetaMotionProperty(ma::QualityAnalysis *this, CFAllocatorRef allocator, CFArrayRef *a3)
{
  v4 = *(this + 24);
  if (v4)
  {
    Copy = CFArrayCreateCopy(allocator, v4);
  }

  else
  {
    Copy = 0;
  }

  *a3 = Copy;
  return 0;
}

uint64_t ma::QualityAnalysis::GenerateSceneResultsFromQualityScore(CFArrayRef *this)
{
  v2 = 0;
  v24 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v27 = **&MEMORY[0x1E6960C70];
  v26 = **&MEMORY[0x1E6960CC0];
  v25 = 0.0;
  while (1)
  {
    v3 = *this ? CFArrayGetCount(*this) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*this, v2);
    v5 = *ValueAtIndex;
    v31 = *(*ValueAtIndex + 24);
    v6 = *(v5 + 36);
    v32 = *(v5 + 32);
    v7 = *(v5 + 40);
    v8 = *(v5 + 48);
    v10 = *(v5 + 56);
    v9 = *(v5 + 60);
    v11 = *(v5 + 64);
    v12 = *(*CFArrayGetValueAtIndex(*this, v2) + 76);
    v13 = *(*CFArrayGetValueAtIndex(*this, v2) + 80);
    if ((v6 & 1) == 0 || (v9 & 1) == 0 || v11 || v8 < 0 || (time1.value = v8, time1.timescale = v10, time1.flags = v9, time1.epoch = 0, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2)))
    {
      if ((v27.flags & 1) == 0)
      {
        goto LABEL_18;
      }

      v14 = v25;
      time1 = v26;
      if (v12 <= 0.3 == v14 / CMTimeGetSeconds(&time1) > 0.300000012)
      {
        time1 = v26;
        Seconds = CMTimeGetSeconds(&time1);
        *&Seconds = v25 / Seconds;
        v25 = *&Seconds;
        if (*(this + 149) & v24)
        {
          v17 = AddResultDictionary(&v27, &v26, 0, 0, 0, this[24]);
          if (v17)
          {
            goto LABEL_23;
          }
        }

        v17 = AddResultDictionary(&v27, &v26, &v25, 0, 0, this[23]);
        if (v17)
        {
          goto LABEL_23;
        }

LABEL_18:
        v27.value = v31;
        v27.timescale = v32;
        v27.flags = v6;
        v27.epoch = v7;
        v26.value = v8;
        v26.timescale = v10;
        v26.flags = v9;
        v26.epoch = v11;
        time1.value = v8;
        time1.timescale = v10;
        time1.flags = v9;
        time1.epoch = v11;
        v18 = CMTimeGetSeconds(&time1) * v12;
        v25 = v18;
        v24 = v13;
        goto LABEL_19;
      }

      time2 = v26;
      rhs.value = v8;
      rhs.timescale = v10;
      rhs.flags = v9;
      rhs.epoch = v11;
      CMTimeAdd(&time1, &time2, &rhs);
      v26 = time1;
      time1.value = v8;
      time1.timescale = v10;
      time1.flags = v9;
      time1.epoch = v11;
      v15 = CMTimeGetSeconds(&time1);
      *&v15 = v25 + v12 * v15;
      v25 = *&v15;
      v24 |= v13;
    }

LABEL_19:
    ++v2;
  }

  time1 = v26;
  if (CMTimeGetSeconds(&time1) <= 0.0)
  {
    return 0;
  }

  time1 = v26;
  v19 = CMTimeGetSeconds(&time1);
  *&v19 = v25 / v19;
  v25 = *&v19;
  if (*(this + 149) & v24)
  {
    v17 = AddResultDictionary(&v27, &v26, 0, 0, 0, this[24]);
    if (v17)
    {
LABEL_23:
      v20 = v17;
      goto LABEL_26;
    }
  }

  v20 = AddResultDictionary(&v27, &v26, &v25, 0, 0, this[23]);
  if (!v20)
  {
    return v20;
  }

LABEL_26:
  v21 = this[23];
  if (v21)
  {
    CFRelease(v21);
    this[23] = 0;
  }

  v22 = this[24];
  if (v22)
  {
    CFRelease(v22);
    this[24] = 0;
  }

  return v20;
}

uint64_t MotionAnalysis<ma::QualitySegment>::InsertSegment(uint64_t a1, int a2)
{
  v4 = *a1;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  result = 4294967246;
  if ((a2 & 0x80000000) == 0 && Count >= a2)
  {
    v7 = operator new(0x98uLL, MEMORY[0x1E69E5398]);
    if (v7)
    {
      v8 = v7;
      ma::QualitySegment::QualitySegment(v7);
      *(a1 + 8) = v8;
      return Vector<ma::QualitySegment *>::Insert(a1);
    }

    else
    {
      return 4294967188;
    }
  }

  return result;
}

float ma::QualityAnalysis::currentSegmentScore(ma::QualitySegment **this)
{
  ma::QualitySegment::CalculateQualityScore(this[1], *(this + 149));
  v2 = this[1];
  if (*(v2 + 5) < 1)
  {
    return -1.0;
  }

  else
  {
    return *(v2 + 19);
  }
}

uint64_t Vector<ma::QualitySegment *>::Insert(CFMutableArrayRef *a1)
{
  if (*a1 || (Mutable = CFArrayCreateMutable(0, 0, 0), (*a1 = Mutable) != 0))
  {
    operator new();
  }

  return 4294967188;
}

void sub_1C9E44500(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_1C9E44860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E47978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, char a55)
{
  _Block_object_dispose(&a43, 8);

  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1C9E4874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9E48B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_1C9E48CD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9E4A670(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, const void *);
  v14 = va_arg(va1, id);
  v15 = va_arg(va1, void);

  CF<__CVBuffer *>::~CF(va);
  CF<__CVBuffer *>::~CF(va1);
  _Unwind_Resume(a1);
}

void sub_1C9E4DDAC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C9E4F4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VCPMotionFlowObservation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

int8x16_t VCPProtoBoundsFromCGRect(const CGRect *a1, VCPProtoBounds *a2)
{
  *&a2->_x0 = a1->origin;
  result = vextq_s8(a1->size, a1->size, 8uLL);
  *&a2->_height = result;
  return result;
}

ma::ObjectTracking *ma::ObjectTracking::ObjectTracking(ma::ObjectTracking *this)
{
  ma::Object::Object(this);
  ma::Object::Object((v2 + 96));
  *(this + 192) = 1;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 76) = 0;
  return this;
}

const __CFArray *ma::ObjectTracking::Destroy(ma::ObjectTracking *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x1CCA95C10](v2, 0x1000C8052888210);
  }

  v3 = *(this + 27);
  if (v3)
  {
    MEMORY[0x1CCA95C10](v3, 0x1000C8052888210);
  }

  v4 = *(this + 28);
  if (v4)
  {
    MEMORY[0x1CCA95C10](v4, 0x1000C8052888210);
  }

  v5 = *(this + 29);
  if (v5)
  {
    MEMORY[0x1CCA95C10](v5, 0x1000C8052888210);
  }

  v6 = *(this + 30);
  if (v6)
  {
    MEMORY[0x1CCA95C10](v6, 0x1000C8052888210);
  }

  v7 = *(this + 31);
  if (v7)
  {
    MEMORY[0x1CCA95C10](v7, 0x1000C8052888210);
  }

  v8 = *(this + 32);
  if (v8)
  {
    MEMORY[0x1CCA95C10](v8, 0x1000C8052888210);
  }

  return ma::ObjectTracking::ClearExperts(this);
}

const __CFArray *ma::ObjectTracking::ClearExperts(ma::ObjectTracking *this)
{
  for (result = *(this + 39); result; result = *(this + 39))
  {
    result = CFArrayGetCount(result);
    if (!result)
    {
      break;
    }

    v3 = *Vector<ma::Object *>::Back(this + 39);
    if (v3)
    {
      MEMORY[0x1CCA95C50](v3, 0x1000C40F014A944);
    }

    Vector<ma::Object *>::PopBack(this + 39);
  }

  return result;
}

size_t ma::ObjectTracking::ConfigureFrame(ma::ObjectTracking *this, CVPixelBufferRef pixelBuffer)
{
  *(this + 49) = CVPixelBufferGetWidth(pixelBuffer);
  *(this + 50) = CVPixelBufferGetHeight(pixelBuffer);
  *(this + 33) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  result = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  *(this + 34) = result;
  return result;
}

uint64_t ma::ObjectTracking::SetForegroundMap(uint64_t this, float *a2, int a3, int a4, uint64_t a5, int a6)
{
  *(this + 280) = a2;
  *(this + 288) = a3;
  *(this + 292) = a4;
  *(this + 296) = a5;
  *(this + 304) = a6;
  return this;
}

void ma::ObjectTracking::AdjustTrackingScore(ma::ObjectTracking *this, float *a2, BOOL *a3)
{
  v5 = *(this + 35);
  v6 = *(this + 37);
  v7 = *(this + 72);
  MinX = CGRectGetMinX(*(this + 8));
  v9 = *(this + 76);
  v10 = *(this + 73);
  v11 = (CGRectGetMinY(*(this + 8)) / v9 + 0.5);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v11 <= 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(this + 72);
  MaxX = CGRectGetMaxX(*(this + 8));
  v16 = *(this + 76);
  v17 = *(this + 73);
  v18 = (CGRectGetMaxY(*(this + 8)) / v16 + 0.5);
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v18 <= 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = 0.0;
  if (v13 >= v20)
  {
    goto LABEL_37;
  }

  v22 = 0;
  v23 = (MaxX / v16 + 0.5);
  v24 = v23 >= v14 ? v14 : (MaxX / v16 + 0.5);
  v25 = v23 <= 0 ? 0 : v24;
  v26 = (MinX / v9 + 0.5);
  v27 = v26 >= v7 ? v7 : (MinX / v9 + 0.5);
  v28 = v26 <= 0 ? 0 : v27;
  v29 = v13;
  v30 = (v5 + 4 * v6 * v13 + 4 * v28);
  v21 = 0.0;
  do
  {
    if (v25 > v28)
    {
      v31 = v25 - v28;
      v32 = v30;
      do
      {
        v33 = *v32++;
        v34 = v33;
        if (v33 <= 0.3)
        {
          v34 = 0.0;
        }

        v21 = v21 + v34;
        --v31;
      }

      while (v31);
      v22 += v25 - v28;
    }

    ++v29;
    v30 += v6;
  }

  while (v29 != v20);
  if (v22)
  {
    v21 = v21 / v22;
  }

  if (v21 < 0.2)
  {
LABEL_37:
    *a2 = *a2 * 0.8;
    *a3 = 1;
  }

  if (*(this + 320) == 1)
  {
    printf("sum = %6.2f, tracking_score = %6.2f\n", v21, *a2);
  }
}

const __CFArray *ma::ObjectTracking::CleanObjectTags(ma::ObjectTracking *this, ma::MotionResult *a2)
{
  for (i = 0; ; ++i)
  {
    result = *(a2 + 23);
    if (result)
    {
      result = CFArrayGetCount(result);
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (i >= v5)
    {
      break;
    }

    **CFArrayGetValueAtIndex(*(a2 + 23), i) = -1;
  }

  return result;
}

uint64_t ma::ObjectTracking::CatchMostInterestedObject(ma::ObjectTracking *this, ma::MotionResult *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  while (1)
  {
    v8 = *(a2 + 23);
    v9 = v8 ? CFArrayGetCount(v8) : 0;
    if (v5 >= v9)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 23), v5);
    v11 = *(*ValueAtIndex + 24) * *(*ValueAtIndex + 32);
    if (v7 >= v11)
    {
      v6 = v6;
    }

    else
    {
      v7 = *(*ValueAtIndex + 24) * *(*ValueAtIndex + 32);
      v6 = v5;
    }

    *(*CFArrayGetValueAtIndex(*(a2 + 23), v5) + 72) = 0;
    **CFArrayGetValueAtIndex(*(a2 + 23), v5++) = -1;
  }

  *(*CFArrayGetValueAtIndex(*(a2 + 23), v6) + 72) = 1;
  **CFArrayGetValueAtIndex(*(a2 + 23), v6) = a3;
  return v6;
}

uint64_t ma::ObjectTracking::CatchMostProbableObject(ma::ObjectTracking *this, ma::MotionResult *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = *(this + 1);
  v9 = *(this + 3);
  v10 = ((v9 * 0.5) + v8);
  v11 = *(this + 2);
  v12 = *(this + 4);
  v13 = ((v12 * 0.5) + v11);
  v14 = 0x7FFFFFFF;
  while (1)
  {
    v15 = *(a2 + 23);
    v16 = v15 ? CFArrayGetCount(v15) : 0;
    if (v6 >= v16)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 23), v6);
    v18 = *ValueAtIndex;
    v20 = (*ValueAtIndex)[4];
    v19 = (*ValueAtIndex)[5];
    v21 = (*ValueAtIndex)[3];
    v33 = (*ValueAtIndex)[2];
    v34 = v21;
    v35 = v20;
    v36 = v19;
    v22 = v18[1];
    v31 = *v18;
    v32 = v22;
    *&v22 = *(this + 49);
    ma::Object::ScaleBox(&v31, *&v22, *(this + 50));
    v23 = *(&v31 + 1);
    v24 = *(&v32 + 1);
    v25 = ((v24 * 0.5) + v23);
    v26 = *&v32;
    v27 = *&v33;
    v28 = ((v13 - ((v27 * 0.5) + v26)) * (v13 - ((v27 * 0.5) + v26)) + (v10 - v25) * (v10 - v25));
    v29 = v14 <= v28;
    if (v14 >= v28)
    {
      v14 = ((v13 - ((v27 * 0.5) + v26)) * (v13 - ((v27 * 0.5) + v26)) + (v10 - v25) * (v10 - v25));
    }

    if (v29)
    {
      v7 = v7;
    }

    else
    {
      v7 = v6;
    }

    *(*CFArrayGetValueAtIndex(*(a2 + 23), v6) + 72) = 0;
    **CFArrayGetValueAtIndex(*(a2 + 23), v6++) = -1;
  }

  *(*CFArrayGetValueAtIndex(*(a2 + 23), v7) + 72) = 1;
  **CFArrayGetValueAtIndex(*(a2 + 23), v7) = a3;
  return v7;
}

uint64_t ma::ObjectTracking::BuildTarget(ma::ObjectTracking *this, float a2, float a3, float32x2_t a4, float32_t a5, unsigned __int8 *a6, unsigned __int8 *a7, int a8)
{
  v8 = *(this + 196);
  a4.f32[1] = a5;
  v9 = vcvt_f32_s32(v8);
  v10 = vcvt_s32_f32(vrnda_f32(vmul_f32(a4, v9)));
  v11 = vand_s8(vmin_s32(v10, v8), vcgtz_s32(v10));
  v12 = vclez_s32(v11);
  if ((v12.i32[0] | v12.i32[1]))
  {
    return 4294967246;
  }

  v18 = llroundf(vmuls_lane_f32(a3, v9, 1));
  v19 = HIDWORD(*(this + 196));
  if (v18 < v8.i32[1])
  {
    v19 = v18;
  }

  if (v18 <= 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = llroundf(a2 * v9.f32[0]);
  v22 = *(this + 196);
  if (v21 < v8.i32[0])
  {
    v22 = v21;
  }

  if (v21 <= 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  ma::Object::SetBox(this, v23, v20, v11.u32[0], v11.u32[1]);
  *(this + 192) = 0;
  v24 = *(this + 4);
  if (v24 <= 0.0)
  {
    return 4294967246;
  }

  v25 = *(this + 3);
  if (v25 <= 0.0)
  {
    return 4294967246;
  }

  v26 = v25;
  v27 = v24;
  ma::ObjectTracking::PrepareKernels(this, v26, v27);
  v28 = *(this + 1);
  v29 = v28;
  v30 = *(this + 2);
  v31 = v30;
  v32 = *(this + 3);
  v33 = v32;
  v34 = *(this + 4);
  result = ma::ObjectTracking::EstimateDensity(this, v29, v31, v33, v34, a6, a7, *(this + 31));
  if (!result)
  {
    if (*(this + 320) == 1)
    {
      v35 = *(this + 1);
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(this + 4);
      printf("Target Captured @ [%5.0f, %5.0f, %5.0f, %5.0f]\n", v35, v36, v37, v38);
    }

    if (!a8)
    {
      return 0;
    }

    ma::ObjectTracking::ClearExperts(this);
    result = ma::ObjectTracking::UpdateExperts(this, *(this + 31), 1.0);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ma::ObjectTracking::PrepareKernels(void **this, signed int a2, signed int a3)
{
  v6 = 4 * a2 * a3;
  bzero(this[26], v6);
  bzero(this[27], v6);
  bzero(this[28], v6);
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = vcvts_n_f32_s32(a3, 1uLL);
    v10 = vcvts_n_f32_s32(a2, 1uLL);
    v11 = (v9 / 3.0) * (v9 / 3.0);
    *v7.i32 = (v10 / 3.0) * (v10 / 3.0);
    v41 = vdupq_lane_s64(COERCE__INT64(a2), 0);
    v42 = vdupq_n_s64(a2 - 1);
    v12 = vdup_lane_s32(v7, 0);
    v40 = vdupq_n_s64(2uLL);
    v13 = 4;
    __asm { FMOV            V0.2D, #-0.5 }

    v39 = _Q0;
    do
    {
      if (a2 >= 1)
      {
        v19 = v8 + a3 * -0.5;
        *&v19 = v19;
        *&v19 = (*&v19 * *&v19) / v11;
        v20 = vdup_lane_s32(*&v19, 0);
        v21 = (this[26] + v13);
        v22 = (a2 + 1) & 0xFFFFFFFE;
        v23 = xmmword_1C9F609E0;
        v24 = 0x100000000;
        do
        {
          v45 = vmovn_s64(vcgeq_u64(v42, v23));
          v46 = v23;
          v25.i64[0] = v24.u32[0];
          v25.i64[1] = v24.u32[1];
          v26 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_u64(v25), v39, v41));
          __x = vmulq_f64(vcvtq_f64_f32(vadd_f32(v20, vdiv_f32(vmul_f32(v26, v26), v12))), v39);
          v44 = exp(__x.f64[1]);
          v27 = exp(__x.f64[0]);
          if (v45.i8[0])
          {
            v28 = v27;
            *(v21 - 1) = v28;
          }

          if (v45.i8[4])
          {
            v29 = v44;
            *v21 = v29;
          }

          v23 = vaddq_s64(v46, v40);
          v24 = vadd_s32(v24, 0x200000002);
          v21 += 2;
          v22 -= 2;
        }

        while (v22);
      }

      ++v8;
      v13 += 4 * a2;
    }

    while (v8 != a3);
    if (a3 != 1)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        if (a2 >= 2)
        {
          v32 = (this[26] + v30);
          v33 = (this[28] + v30);
          v34 = (this[27] + v30);
          v35 = (a2 - 1);
          v36 = v32;
          do
          {
            v37 = v36[1];
            ++v36;
            *v34++ = *v32 - v37;
            *v33++ = *v32 - v32[a2];
            v32 = v36;
            --v35;
          }

          while (v35);
        }

        ++v31;
        v30 += 4 * a2;
      }

      while (v31 != a3 - 1);
    }
  }

  return 0;
}

uint64_t ma::ObjectTracking::EstimateDensity(ma::ObjectTracking *this, int a2, int a3, int a4, int a5, unsigned __int8 *a6, unsigned __int8 *a7, float *a8)
{
  bzero(a8, 0x2000uLL);
  if (a5 < 1)
  {
    return 4294967246;
  }

  v17 = 0;
  v18 = 0;
  v30 = a4;
  *v31 = a2;
  v29 = a3;
  *&v16 = 0;
  v32 = a5;
  v33 = 4 * a4;
  v34 = a4;
  do
  {
    if (a4 >= 1)
    {
      v19 = v30;
      v20 = v18 + v29;
      v21 = *v31;
      v22 = v17;
      do
      {
        if ((v21 & 0x8000000000000000) == 0 && v21 < *(this + 49) && (v20 & 0x8000000000000000) == 0 && v20 < *(this + 50))
        {
          v35 = v16;
          ColorIndex = ma::ObjectTracking::GetColorIndex(this, v21, v20, a6, a7);
          v24 = *(this + 26);
          a8[ColorIndex] = *(v24 + v22) + a8[ColorIndex];
          v25 = v35;
          *&v25 = *&v35 + *(v24 + v22);
          v16 = v25;
        }

        v22 += 4;
        ++v21;
        --v19;
      }

      while (v19);
    }

    ++v18;
    v17 += v33;
    a4 = v34;
  }

  while (v18 != v32);
  if (*&v16 == 0.0)
  {
    return 4294967246;
  }

  v27 = 0;
  v28 = vdupq_lane_s32(*&v16, 0);
  do
  {
    *&a8[v27] = vdivq_f32(*&a8[v27], v28);
    v27 += 4;
  }

  while (v27 != 2048);
  return 0;
}

uint64_t ma::ObjectTracking::UpdateExperts(ma::ObjectTracking *this, float *a2, float a3)
{
  v6 = *(this + 39);
  if (v6 && CFArrayGetCount(v6) >= 10)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1.0;
    while (1)
    {
      v13 = *(this + 39);
      v14 = v13 ? CFArrayGetCount(v13) : 0;
      if (v10 >= v14)
      {
        break;
      }

      if (*(*CFArrayGetValueAtIndex(*(this + 39), v10) + 0x2000) < v12)
      {
        v12 = *(*CFArrayGetValueAtIndex(*(this + 39), v10) + 0x2000);
        v11 = v10;
      }

      ++v10;
    }

    if (*(*CFArrayGetValueAtIndex(*(this + 39), v11) + 0x2000) <= a3)
    {
      if (*(this + 320) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(this + 39), v11);
        printf("expert %d was replaced: voting weight(%6.2f --> %6.2f)!\n", v11, *(*ValueAtIndex + 0x2000), a3);
      }

      v16 = CFArrayGetValueAtIndex(*(this + 39), v11);
      memcpy(*v16, a2, 0x2000uLL);
      *(*CFArrayGetValueAtIndex(*(this + 39), v11) + 0x2000) = a3;
      v9 = 0;
      *(*CFArrayGetValueAtIndex(*(this + 39), v11) + 8196) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = operator new(0x2008uLL, MEMORY[0x1E69E5398]);
    v18 = v7;
    if (v7)
    {
      v8 = v7;
      memcpy(v7, a2, 0x2000uLL);
      v8[2048] = a3;
      v8[2049] = 0.0;
      v9 = Vector<ma::Object *>::PushBack(this + 39);
      if (v9 && v18)
      {
        MEMORY[0x1CCA95C50](v18, 0x1000C40F014A944);
      }

      if (*(this + 320) == 1)
      {
        printf("add new expert with weight %6.2f\n", a3);
      }
    }

    else
    {
      return 4294967188;
    }
  }

  return v9;
}

uint64_t ma::ObjectTracking::MeanShiftTracking(ma::ObjectTracking *this, const ma::Object *a2, uint64_t a3, int a4, unsigned __int8 *a5, unsigned __int8 *a6, ma::Object *a7, BOOL *a8, float *a9)
{
  v16 = *(this + 2);
  v17 = *(this + 1);
  v18 = v17;
  v44 = 0.0;
  v19 = v16;
  v20 = v19;
  v21 = *(a2 + 1);
  *a7 = *a2;
  *(a7 + 1) = v21;
  v22 = *(a2 + 77);
  v23 = *(a2 + 4);
  v24 = *(a2 + 2);
  *(a7 + 3) = *(a2 + 3);
  *(a7 + 4) = v23;
  *(a7 + 77) = v22;
  *(a7 + 2) = v24;
  *a8 = 0;
  result = ma::ObjectTracking::EstimateDensity(this, v18, v20, a3, a4, a5, a6, *(this + 32));
  if (!result)
  {
    result = ma::ObjectTracking::CalculateSimilarityWeights(this, v18, v20, a3, a4, a5, a6, &v44);
    if (!result)
    {
      v41 = a7;
      if (*(this + 320) == 1)
      {
        printf("initial @ [%d %d] s = %6.5f\n", v18, v20, v44);
      }

      *v43 = v18;
      v26 = 0;
      while (1)
      {
        v27 = v44;
        if (v44 >= 0.96 || v26 > 4)
        {
          break;
        }

        v29 = *v43;
        v30 = v20;
        if (a4 >= 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0.0;
          v34 = 0.0;
          v35 = 0.0;
          do
          {
            if (a3 >= 1)
            {
              v36 = 0;
              do
              {
                v37 = *(*(this + 29) + v31 + 4 * v36);
                v38 = *(*(this + 27) + v31 + 4 * v36);
                v35 = v35 + ((v37 * v32) * v38);
                v39 = *(*(this + 28) + v31 + 4 * v36);
                v34 = v34 + ((v37 * v36) * v39);
                v33 = v33 + (v37 * sqrtf((v39 * v39) + (v38 * v38)));
                ++v36;
              }

              while (a3 != v36);
            }

            ++v32;
            v31 += 4 * a3;
          }

          while (v32 != a4);
          if (v33 != 0.0)
          {
            v29 = v43[0] + llroundf(v35 / v33);
            v30 = v20 + llroundf(v34 / v33);
          }
        }

        if (v29 <= -a3 || (v29 < *(this + 49) ? (v40 = v30 <= -a4) : (v40 = 1), v40 || v30 >= *(this + 50)))
        {
          *a8 = 1;
          goto LABEL_29;
        }

        v42 = v26;
        result = ma::ObjectTracking::EstimateDensity(this, v29, v30, a3, a4, a5, a6, *(this + 32));
        if (!result)
        {
          *v43 = v29;
          v20 = v30;
          result = ma::ObjectTracking::CalculateSimilarityWeights(this, v29, v30, a3, a4, a5, a6, &v44);
          v26 = v42 + 1;
          if (!result)
          {
            continue;
          }
        }

        return result;
      }

      LODWORD(v29) = v43[0];
      LODWORD(v30) = v20;
LABEL_29:
      ma::Object::SetOrigin(v41, v29, v30);
      if (*(this + 320) == 1)
      {
        printf("stop    @ [%d %d] s = %6.5f\n", v29, v30, v27);
        printf("lost = %d\n", *(this + 192));
      }

      result = 0;
      *a9 = v27;
    }
  }

  return result;
}