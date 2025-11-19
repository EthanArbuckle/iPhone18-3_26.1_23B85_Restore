void sub_242A3CF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A3D0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A3D374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_242A3FF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A400F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A41F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242A4254C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

double getLargestFaceRect(void *a1)
{
  v1 = a1;
  v2 = [v1 metadataObjectForKey:*MEMORY[0x277D41A60]];
  if (!v2)
  {
    v3 = [v1 metadataDict];
    v4 = [v3 objectForKeyedSubscript:@"PVFrameSetMetadataARMetadataKey"];

    v5 = [v4 faceAnchor];
    [v5 normalizedFaceRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    if (v1)
    {
      [v1 presentationTimeStamp];
    }

    else
    {
      memset(&v35, 0, sizeof(v35));
    }

    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    v14 = MakePVFaceDetectionFull(0, 0, 0.0, 0, 0.0, v37, AVCaptureVideoOrientationPortrait, &v35, 0);
    v2 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
  }

  v15 = [v2 count];
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0.0;
    do
    {
      v19 = [v2 objectAtIndexedSubscript:v17];
      [v19 boundingBox];
      v21 = v20;
      v22 = [v2 objectAtIndexedSubscript:v17];
      [v22 boundingBox];
      v24 = v21 * v23;

      if (v18 < v24)
      {
        v16 = v17;
        v18 = v24;
      }

      ++v17;
    }

    while (v15 != v17);
    v25 = [v2 objectAtIndexedSubscript:v16];
    [v25 boundingBox];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (v33 != -1.0)
    {
      v38.size.width = 0.99;
      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      v36.origin.x = v27;
      v36.origin.y = v29;
      v36.size.width = v31;
      v36.size.height = v33;
      v38.size.height = 0.99;
      *&v27 = CGRectIntersection(v36, v38);
    }
  }

  else
  {
    v27 = 0.0;
  }

  return v27;
}

void drawFaceRectOnAlphaMap(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{
  v87 = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) == 1278226488)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    CVPixelBufferLockBaseAddress(a1, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v14 = a4 * a5;
    if (v14 > 0.0)
    {
      v15 = BaseAddress;
      v16 = JFXLog_matting();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v81 = 134218496;
        v82 = a3;
        v83 = 2048;
        v84 = a2;
        v85 = 1024;
        v86 = llroundf(v14);
        _os_log_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEFAULT, "Face: (%.1f,%.1f) area=%d", &v81, 0x1Cu);
      }

      v17 = a4 * 0.5;
      v18 = a5 * 0.5;
      v19 = a2 + v17;
      v20 = a3 + v18;
      v21 = Width;
      v22 = Height;
      v23 = v19 - v17;
      v24 = v17 + v19;
      v25 = v20 - v18;
      if (v23 >= v24)
      {
        v28 = v18 + v20;
      }

      else
      {
        v26 = llroundf(v25 * v21);
        v27 = v26 + 5;
        v28 = v18 + v20;
        v29 = llroundf(v28 * v21);
        v30 = v29 + 5;
        v31 = v26 - 6;
        v32 = v29 - 6;
        v33 = v23;
        do
        {
          v34 = llroundf(v33 * v22);
          v35 = v34 - 5;
          v36 = v34 + 5;
          v37 = v35;
          do
          {
            v38 = v37;
            v39 = v15 + BytesPerRow * v37;
            v40 = v31;
            do
            {
              v41 = (v40 + 1);
              if (v40 + 1 >= 0 && (v38 & 0x80000000) == 0 && Width > v41 && Height > v38)
              {
                *(v39 + v41) = -56;
              }

              ++v40;
            }

            while (v40 < v27);
            v37 = v38 + 1;
          }

          while (v38 < v36);
          do
          {
            v43 = v35;
            v44 = v15 + BytesPerRow * v35;
            v45 = v32;
            do
            {
              v46 = (v45 + 1);
              if (v45 + 1 >= 0 && (v43 & 0x80000000) == 0 && Width > v46 && Height > v43)
              {
                *(v44 + v46) = -56;
              }

              ++v45;
            }

            while (v45 < v30);
            v35 = v43 + 1;
          }

          while (v43 < v36);
          v33 = v33 + 0.04;
        }

        while (v24 > v33);
      }

      if (v25 < v28)
      {
        v49 = llroundf(v23 * v22);
        v50 = v49 - 5;
        v51 = llroundf(v24 * v22);
        v52 = v49 + 5;
        v53 = v51 - 5;
        v54 = v51 + 5;
        do
        {
          v55 = llroundf(v25 * v21);
          v56 = v55 + 5;
          v57 = v55 - 6;
          v58 = v50;
          do
          {
            v59 = v58;
            v60 = v15 + BytesPerRow * v58;
            v61 = v57;
            do
            {
              v62 = (v61 + 1);
              if (v61 + 1 >= 0 && (v59 & 0x80000000) == 0 && Width > v62 && Height > v59)
              {
                *(v60 + v62) = -56;
              }

              ++v61;
            }

            while (v61 < v56);
            v58 = v59 + 1;
          }

          while (v59 < v52);
          v64 = v53;
          do
          {
            v65 = v64;
            v66 = v15 + BytesPerRow * v64;
            v67 = v57;
            do
            {
              v68 = (v67 + 1);
              if (v67 + 1 >= 0 && (v65 & 0x80000000) == 0 && Width > v68 && Height > v65)
              {
                *(v66 + v68) = -56;
              }

              ++v67;
            }

            while (v67 < v56);
            v64 = v65 + 1;
          }

          while (v65 < v54);
          v25 = v25 + 0.08;
        }

        while (v28 > v25);
      }

      v70 = llroundf(v19 * v22);
      v71 = v70 - 5;
      v72 = llroundf(v20 * v21);
      v73 = v70 + 5;
      v74 = v72 + 5;
      v75 = v72 - 6;
      do
      {
        v76 = v71;
        v77 = v15 + BytesPerRow * v71;
        v78 = v75;
        do
        {
          v79 = (v78 + 1);
          if (v78 + 1 >= 0 && (v76 & 0x80000000) == 0 && Width > v79 && Height > v76)
          {
            *(v77 + v79) = -56;
          }

          ++v78;
        }

        while (v78 < v74);
        v71 = v76 + 1;
      }

      while (v76 < v73);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
  }

  else
  {
    v48 = JFXLog_matting();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v81) = 0;
      _os_log_impl(&dword_242A3B000, v48, OS_LOG_TYPE_DEFAULT, "Error: wrong pixel format for matte", &v81, 2u);
    }
  }
}

double transformedPoint(unint64_t a1, double a2, float a3, uint64_t a4, uint64_t a5)
{
  if (a5 == 2)
  {
    a3 = 1.0 - a3;
  }

  return (a3 * a1);
}

id JFX_CaptureSessionInterruptionReasonsList()
{
  if (JFX_CaptureSessionInterruptionReasonsList_onceToken != -1)
  {
    JFX_CaptureSessionInterruptionReasonsList_cold_1();
  }

  v1 = JFX_CaptureSessionInterruptionReasonsList_interruptionReasonsArray;

  return v1;
}

uint64_t CFXCaptureCapabilitiesIsCTMSupported()
{
  v0 = CFXAspectRatioCropOverride();
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v2 = [MEMORY[0x277CF7E78] capabilities];
    v1 = [v2 isCTMSupported];
  }

  return v1;
}

uint64_t CFXCaptureCapabilitiesIsHDRSupported()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = [MEMORY[0x277CF7E78] capabilities];
    v2 = [v1 isHDR10BitVideoSupported];

    return v2;
  }

  return result;
}

void sub_242A43490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A4F2E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void EdgeLine::EdgeLine(EdgeLine *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void ContourMemoryPool::~ContourMemoryPool(ContourMemoryPool *this)
{
  var0 = this->var0;
  if (var0)
  {
    MEMORY[0x245D21BB0](var0, 0x1000C8077774924);
  }

  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x245D21BB0](var1, 0x1000C8077774924);
  }

  var2 = this->var2;
  if (var2)
  {
    MEMORY[0x245D21BB0](var2, 0x1000C8052888210);
  }

  var3 = this->var3;
  if (var3)
  {
    MEMORY[0x245D21BB0](var3, 0x1000C8052888210);
  }
}

void ContourProcessing::ContourProcessing(ContourProcessing *this, unsigned __int8 *a2, int a3, int a4, ContourMemoryPool *a5, char a6)
{
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *this = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 15) = a5;
  *(this + 116) = a6;
}

{
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *this = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 15) = a5;
  *(this + 116) = a6;
}

void ContourProcessing::~ContourProcessing(ContourProcessing *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

uint64_t ContourProcessing::contourExtraction(ContourProcessing *this, int *a2)
{
  ContourProcessing::tracingContours(this);
  v4 = *(this + 4);
  if (v4 >= 21)
  {
    ContourProcessing::contourSmoothClose(this);
  }

  *a2 = v4;
  return *(this + 3);
}

double ContourProcessing::tracingContours(ContourProcessing *this)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = **(this + 15);
  bzero(v3, *(this + 3) + 2);
  bzero(&v3[*(this + 3) + 2 + (*(this + 3) + 2) * *(this + 2)], *(this + 3) + 2);
  v4 = *(this + 2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3 + 1;
    do
    {
      v7 = v5 + 1;
      v3[(*(this + 3) + 2) * v7] = 0;
      memcpy(&v6[(*(this + 3) + 2) * (v5 + 1)], v2 + *(this + 3) * v5, *(this + 3));
      v6[*(this + 3) + (*(this + 3) + 2) * v7] = 0;
      v4 = *(this + 2);
      v5 = v7;
    }

    while (v7 < v4);
  }

  v8 = *(*(this + 15) + 8);
  bzero(v8, (*(this + 3) + 2) * (v4 + 2));
  *(this + 4) = 0;
  v9 = (this + 16);
  *(this + 3) = *(*(this + 15) + 16);
  v63 = 0x7FFFFFFFFLL;
  v10 = *(this + 3);
  v64 = -3 - v10;
  v65 = 7;
  v66 = -2 - v10;
  v67 = 1;
  v68 = ~v10;
  v69 = 0x100000001;
  v70 = 3;
  v71 = v10 + 3;
  v72 = 3;
  v73 = v10 + 2;
  v74 = 5;
  v75 = v10 + 1;
  v76 = 5;
  v61 = 0;
  v62 = v10;
  v11 = *(this + 2);
  v59 = 0;
  v60 = v11;
  if (v11 >= -1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v10 >= -1)
      {
        v14 = 0;
        v15 = v10 + 2;
        do
        {
          v16 = v14 + v15 * v13;
          if (v8[v16] == 255 && !v12)
          {
            v12 = 1;
            goto LABEL_41;
          }

          v17 = v3[v16];
          if (v17 != 255 || !v12)
          {
            if (v17 == 0 && v12)
            {
              v12 = 0;
              goto LABEL_41;
            }

            if (v17 == 255 && !v12)
            {
              v8[v16] = -1;
              std::vector<int>::push_back[abi:ne200100](this + 8, this + 4);
              std::vector<int>::push_back[abi:ne200100](this + 11, &v62);
              std::vector<int>::push_back[abi:ne200100](this + 11, &v61);
              std::vector<int>::push_back[abi:ne200100](this + 11, &v60);
              std::vector<int>::push_back[abi:ne200100](this + 11, &v59);
              v18 = 0;
              v20 = *(this + 2);
              v19 = *(this + 3);
              v61 = 0;
              v62 = v19;
              v59 = 0;
              v60 = v20;
              v21 = 1;
              for (i = v16; ; i = v25)
              {
                for (j = 0; ; ++j)
                {
                  v24 = 8 * (v21 - 1);
                  v25 = *(&v63 + v24) + i;
                  v12 = v3[v25] == 255;
                  if (v3[v25] == 255)
                  {
                    break;
                  }

                  if (j > 8)
                  {
                    goto LABEL_40;
                  }

                  v26 = -v21 < 0;
                  v27 = -v21 & 7;
                  v28 = v21 & 7;
                  if (v26)
                  {
                    v29 = v28;
                  }

                  else
                  {
                    v29 = -v27;
                  }

                  v21 = v29 + 1;
                }

                v21 = *(&v63 + v24 + 4);
                if (v25 == v16)
                {
                  v30 = v21 != 1 && v18 <= 1;
                  if (!v30)
                  {
LABEL_40:
                    v10 = *(this + 3);
                    break;
                  }

                  ++v18;
                }

                v8[v25] = -1;
                v31 = *(this + 3);
                *(v31 + 8 * *(this + 4) + 4) = v25 / (*(this + 3) + 2) - 1;
                *(v31 + 8 * *(this + 4)) = v25 + (*(this + 3) + 2) * ~*(v31 + 8 * *(this + 4) + 4) - 1;
                v32 = *(this + 4);
                v33 = *(v31 + 8 * v32);
                if (v33 >= v62)
                {
                  v33 = v62;
                }

                v62 = v33;
                v34 = *(v31 + 8 * v32);
                if (v61 > v34)
                {
                  v34 = v61;
                }

                v61 = v34;
                v35 = (2 * v32) | 1;
                v36 = *(v31 + 4 * v35);
                if (v36 >= v60)
                {
                  v36 = v60;
                }

                v60 = v36;
                v37 = *(v31 + 4 * v35);
                if (v59 > v37)
                {
                  v37 = v59;
                }

                v59 = v37;
                *(this + 4) = v32 + 1;
              }
            }
          }

LABEL_41:
          ++v14;
          v15 = v10 + 2;
        }

        while (v14 < v10 + 2);
        v11 = *(this + 2);
      }

      v30 = v13++ <= v11;
    }

    while (v30);
  }

  std::vector<int>::push_back[abi:ne200100](this + 8, this + 4);
  std::vector<int>::push_back[abi:ne200100](this + 11, &v62);
  std::vector<int>::push_back[abi:ne200100](this + 11, &v61);
  std::vector<int>::push_back[abi:ne200100](this + 11, &v60);
  std::vector<int>::push_back[abi:ne200100](this + 11, &v59);
  *(this + 4) = *(*(this + 15) + 24);
  if (*(this + 4) <= 50)
  {
    *v9 = 0;
  }

  else
  {
    v40 = *(this + 8);
    v39 = *(this + 9);
    v41 = (v39 - v40) >> 2;
    if (v41 >= 3)
    {
      if (v40[1] - *v40 < 51)
      {
        v42 = 0;
      }

      else
      {
        v42 = (*(*(this + 11) + 28) - *(*(this + 11) + 24)) * (*(*(this + 11) + 20) - *(*(this + 11) + 16));
      }

      v43 = v40 + 2;
      v44 = (*(this + 11) + 44);
      LODWORD(v45) = 1;
      for (k = 2; k != v41; ++k)
      {
        if ((*v44 - *(v44 - 1)) * (*(v44 - 2) - *(v44 - 3)) > v42 && *v43 - *(v43 - 1) > 50)
        {
          v42 = (*v44 - *(v44 - 1)) * (*(v44 - 2) - *(v44 - 3));
          v45 = k;
        }

        else
        {
          v45 = v45;
        }

        ++v43;
        v44 += 4;
      }

      v58 = 0;
      if ((v39 - v40) >= 5)
      {
        v47 = 1;
        do
        {
          if (v47 != v45)
          {
            v48 = &v40[v47];
            v49 = *(v48 - 1);
            if (*v48 - v49 >= 51)
            {
              if (*v48 > v49)
              {
                v50 = *(this + 4);
                v51 = v58;
                v52 = (*(this + 3) + 8 * v49 + 4);
                do
                {
                  *(v50 + 8 * v51) = *(v52 - 1);
                  v53 = *v52;
                  v52 += 2;
                  *(v50 + 8 * v58 + 4) = v53;
                  v51 = ++v58;
                  ++v49;
                }

                while (v49 < *v48);
              }

              std::vector<int>::push_back[abi:ne200100](this + 5, &v58);
              v40 = *(this + 8);
              v39 = *(this + 9);
            }
          }

          ++v47;
        }

        while (v47 < (v39 - v40) >> 2);
      }

      v54 = &v40[v45];
      *v9 = *v54 - *(v54 - 1);
      if (v45 != 1)
      {
        v55 = *(v54 - 1);
        if (v55 < *v54)
        {
          v56 = *(this + 3);
          v57 = *(v54 - 1);
          do
          {
            result = v56[v55];
            *v56++ = result;
            ++v57;
          }

          while (v57 < *v54);
        }
      }
    }
  }

  return result;
}

void ContourProcessing::contourExtractionProcessing(ContourProcessing *this, int *a2, int *a3)
{
  ContourProcessing::tracingContours(this);
  v6 = *(this + 4);
  if (v6 >= 21)
  {
    ContourProcessing::contourSmoothClose(this);
  }

  *a2 = v6;
  *a3 = *(this + 28);
}

void sub_242A53CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ContourProcessing::computeContourEdgeLine(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  LODWORD(v5) = a3;
  v8 = *(a2 + 4 * (2 * a3 - 2));
  v9 = *(a2 + 4 * (2 * a3 - 1));
  std::vector<EdgeLine>::reserve(a4, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) + a3);
  if (v5 >= 1)
  {
    v10 = *a1 + (*(a1 + 8) - 1) * *(a1 + 12);
    v11 = v8 << 16;
    v5 = v5;
    v12 = (a2 + 4);
    do
    {
      v20 = 0;
      v13 = *(v12 - 1);
      v14 = *v12;
      if (*v12 == *(a1 + 8) - 1)
      {
        *(v10 + v13) = -1;
      }

      if (v14 != v9)
      {
        v15 = v13 << 16;
        if (v9 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v9;
        }

        if (v9 <= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v9;
        }

        if (v14 <= v9)
        {
          v18 = v15;
        }

        else
        {
          v18 = v11;
        }

        *&v19 = __PAIR64__(v17, v16);
        DWORD2(v19) = v18;
        HIDWORD(v19) = (v15 - v11) / (v14 - v9);
        std::vector<EdgeLine>::push_back[abi:ne200100](a4, &v19);
        v11 = v15;
        v9 = v14;
      }

      v12 += 2;
      --v5;
    }

    while (v5);
  }
}

void ContourProcessing::fillContourEdgeLine(uint64_t a1, uint64_t *a2, int a3)
{
  v50 = 0uLL;
  v51 = 0;
  v5 = a2[1];
  v6 = *a2;
  v7 = (v5 - *a2) >> 3;
  v8 = 0xAAAAAAAAAAAAAAABLL * v7;
  if (-1431655765 * v7 >= 2)
  {
    v9 = v8 & 0x7FFFFFFF;
    v10 = (v6 + 8);
    v11 = 0x7FFFFFFF;
    v12 = 0x80000000;
    v13 = 0x80000000;
    v14 = 0x7FFFFFFF;
    do
    {
      v16 = *(v10 - 2);
      v15 = *(v10 - 1);
      if (v15 <= v16)
      {
        ContourProcessing::fillContourEdgeLine();
      }

      v17 = *v10;
      v18 = v10[1];
      v10 += 6;
      v19 = v17 + v18 * (v15 - v16);
      if (v11 >= v16)
      {
        v11 = v16;
      }

      if (v12 <= v15)
      {
        v12 = v15;
      }

      if (v14 >= v17)
      {
        v14 = v17;
      }

      if (v13 <= v17)
      {
        v13 = v17;
      }

      if (v14 >= v19)
      {
        v14 = v17 + v18 * (v15 - v16);
      }

      if (v13 <= v19)
      {
        v13 = v17 + v18 * (v15 - v16);
      }

      --v9;
    }

    while (v9);
    if ((v12 & 0x80000000) == 0 && v11 < *(a1 + 8) && (v13 & 0x80000000) == 0 && v14 < *(a1 + 12) << 16)
    {
      v20 = 126 - 2 * __clz(v8);
      if (v5 == v6)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v48 = a1;
      std::__introsort<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,false>(v6, v5, &v52, v21, 1);
      LODWORD(v50) = 0x7FFFFFFF;
      std::vector<EdgeLine>::push_back[abi:ne200100](a2, &v50);
      v22 = v48;
      v51 = 0;
      v23 = *a2;
      v24 = *(v48 + 8);
      if (v12 < v24)
      {
        v24 = v12;
      }

      v25 = *v23;
      v47 = v24;
      if (*v23 < v24)
      {
        v26 = 0;
LABEL_28:
        v27 = 0;
        v28 = &v50;
        v29 = v51;
        while (1)
        {
          v30 = v29;
          if (!v29)
          {
            break;
          }

          while (*(v30 + 4) == v25)
          {
            v30 = *(v30 + 16);
            *(v28 + 2) = v30;
            if (!v30)
            {
              goto LABEL_32;
            }
          }

          if (*v23 <= v25 && *(v30 + 8) >= *(v23 + 8))
          {
            if (v26 >= v8)
            {
              goto LABEL_58;
            }

LABEL_38:
            *(v28 + 2) = v23;
            *(v23 + 16) = v30;
            ++v26;
            v29 = v30;
            v30 = v23;
            v23 = *a2 + 24 * v26;
            if (!v27)
            {
              goto LABEL_56;
            }

            goto LABEL_43;
          }

          v29 = *(v30 + 16);
          if (!v27)
          {
            goto LABEL_56;
          }

LABEL_43:
          if ((v25 & 0x80000000) == 0)
          {
            v32 = *(v28 + 2);
            v33 = *(v30 + 8);
            if (v32 >= v33)
            {
              v34 = *(v30 + 8);
            }

            else
            {
              v34 = *(v28 + 2);
            }

            if (v32 <= v33)
            {
              v32 = *(v30 + 8);
            }

            v35 = v32 >> 16;
            if (((v32 >> 16) & 0x80000000) == 0)
            {
              v36 = *(v22 + 12);
              v37 = (v34 + 0xFFFF) >> 16;
              if (v37 < v36)
              {
                v38 = v37 & ~(v37 >> 31);
                if (v35 >= v36)
                {
                  v35 = v36 - 1;
                }

                v39 = __OFSUB__(v35, v38);
                v40 = v35 - v38;
                if (v40 < 0 == v39)
                {
                  memset((*v22 + v36 * v25 + v38), a3, v40 + 1);
                  v22 = v48;
                }
              }
            }
          }

          *(v28 + 2) += *(v28 + 3);
          *(v30 + 8) += *(v30 + 12);
LABEL_56:
          v27 ^= 1u;
          v28 = v30;
        }

LABEL_32:
        if (*v23 == v25 && v26 < v8)
        {
          v30 = 0;
          goto LABEL_38;
        }

LABEL_58:
        v41 = 0;
        v42 = 0;
        v43 = v51;
        while (1)
        {
          if (v43 == v41)
          {
            v45 = &v50;
LABEL_68:
            if (!v42)
            {
LABEL_73:
              if (++v25 == v47)
              {
                return;
              }

              goto LABEL_28;
            }
          }

          else
          {
            v44 = &v50;
            while (1)
            {
              v45 = *(v43 + 2);
              if (!v45)
              {
                break;
              }

              if (*(v43 + 2) <= *(v45 + 2))
              {
                v46 = *(v43 + 2);
                v45 = v43;
                v43 = v46;
              }

              else
              {
                *(v44 + 2) = v45;
                *(v43 + 2) = *(v45 + 2);
                *(v45 + 2) = v43;
                v42 = 1;
                v46 = v43;
              }

              v44 = v45;
              if (v46 == v41)
              {
                goto LABEL_68;
              }
            }

            v45 = v44;
            if (!v42)
            {
              goto LABEL_73;
            }
          }

          if (v45 != &v50)
          {
            v43 = v51;
            v42 = 1;
            v41 = v45;
            if (v45 != v51)
            {
              continue;
            }
          }

          goto LABEL_73;
        }
      }
    }
  }
}

uint64_t ContourProcessing::isHole(ContourProcessing *this, int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    for (i = a2 + 1; ; i += 2)
    {
      v6 = *i;
      if (*(*this + *(i - 1) + *(this + 3) * *i) != 255)
      {
        break;
      }

      v3 |= v6 < *(this + 28) + 90;
      if (!--v4)
      {
        return v3 & 1;
      }
    }
  }

  v3 = 0;
  return v3 & 1;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

void *std::vector<EdgeLine>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EdgeLine>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<EdgeLine>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EdgeLine>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278D79C50, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EdgeLine>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,false>(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v27 = &a2[-2].n128_i8[8];
        v28 = a2[-2].n128_i32[2];
        v29 = v28 < *v9;
        if (v28 == *v9)
        {
          v30 = a2[-1].n128_i32[0];
          v31 = *(v9 + 2);
          v29 = v30 < v31;
          if (v30 == v31)
          {
            v29 = a2[-1].n128_u32[1] < *(v9 + 3);
          }
        }

        if (v29)
        {
          v55 = *(v9 + 2);
          v52 = *v9;
          v32 = *v27;
          *(v9 + 2) = a2[-1].n128_u64[1];
          *v9 = v32;
          *v27 = v52;
          a2[-1].n128_u64[1] = v55;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(v9, v9 + 6, v9 + 3);
      v33 = &a2[-2].n128_i8[8];
      v34 = a2[-2].n128_i32[2];
      v35 = *(v9 + 12);
      v36 = v34 < v35;
      if (v34 == v35)
      {
        v37 = a2[-1].n128_i32[0];
        v38 = *(v9 + 14);
        v36 = v37 < v38;
        if (v37 == v38)
        {
          v36 = a2[-1].n128_u32[1] < *(v9 + 15);
        }
      }

      if (v36)
      {
        v39 = *(v9 + 8);
        v40 = v9[3];
        v41 = a2[-1].n128_u64[1];
        v9[3] = *v33;
        *(v9 + 8) = v41;
        *v33 = v40;
        a2[-1].n128_u64[1] = v39;
        v42 = *(v9 + 12);
        LODWORD(v39) = *(v9 + 6);
        v43 = v42 < v39;
        if (v42 == v39)
        {
          v44 = *(v9 + 14);
          v45 = *(v9 + 8);
          v43 = v44 < v45;
          if (v44 == v45)
          {
            v43 = *(v9 + 15) < *(v9 + 9);
          }
        }

        if (v43)
        {
          v46 = *(v9 + 5);
          v47 = *(v9 + 24);
          *(v9 + 24) = v9[3];
          *(v9 + 5) = *(v9 + 8);
          v9[3] = v47;
          *(v9 + 8) = v46;
          LODWORD(v46) = *(v9 + 6);
          v48 = v46 < *v9;
          if (v46 == *v9)
          {
            v49 = *(v9 + 8);
            v50 = *(v9 + 2);
            v48 = v49 < v50;
            if (v49 == v50)
            {
              v48 = *(v9 + 9) < *(v9 + 3);
            }
          }

          if (v48)
          {
            v56 = *(v9 + 2);
            v53 = *v9;
            *v9 = *(v9 + 24);
            *(v9 + 2) = *(v9 + 5);
            *(v9 + 24) = v53;
            *(v9 + 5) = v56;
          }
        }
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(v9, v9 + 24, (v9 + 3), v9 + 72, &a2[-2].n128_i64[1]);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,EdgeLine *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v9 + 6 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>((v9 + 24 * v14), v9, &a2[-2].n128_i8[8]);
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(v9, v9 + 6 * v14, &a2[-2].n128_i8[8]);
      v16 = 3 * v14;
      v17 = v9 + 6 * v14 - 6;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>((v9 + 24), v17, &a2[-3]);
      v18 = v9 + 2 * v16 + 6;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>((a1 + 48), v18, &a2[-5].n128_i8[8]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(v17, v15, v18);
      v54 = *(a1 + 16);
      v51 = *a1;
      v19 = *v15;
      *(a1 + 16) = *(v15 + 2);
      *a1 = v19;
      *(v15 + 2) = v54;
      *v15 = v51;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    v20 = *(a1 - 24);
    v21 = v20 < *a1;
    if (v20 == *a1)
    {
      v22 = *(a1 - 16);
      v23 = *(a1 + 8);
      v21 = v22 < v23;
      if (v22 == v23)
      {
        v21 = *(a1 - 12) < *(a1 + 12);
      }
    }

    if (!v21)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,EdgeLine *,cmpEdgeLine &>(a1, a2);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }

LABEL_21:
    v24 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,EdgeLine *,cmpEdgeLine &>(a1, a2);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

    v26 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(a1, v24);
    v9 = (v24 + 24);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(v24 + 24, a2))
    {
      a4 = -v11;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v26)
    {
LABEL_24:
      std::__introsort<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,false>(a1, v24, a3, -v11, a5 & 1);
      v9 = (v24 + 24);
      goto LABEL_25;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(v9, v9 + 6, &a2[-2].n128_i8[8]);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(__int128 *a1, int *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v5 = a2[2];
    v6 = *(a1 + 2);
    v4 = v5 < v6;
    if (v5 == v6)
    {
      v4 = a2[3] < *(a1 + 3);
    }
  }

  if (v4)
  {
    v7 = *a3 < v3;
    if (*a3 == v3)
    {
      v8 = *(a3 + 2);
      v9 = a2[2];
      v7 = v8 < v9;
      if (v8 == v9)
      {
        v7 = *(a3 + 3) < a2[3];
      }
    }

    if (v7)
    {
      v10 = *(a1 + 2);
      v11 = *a1;
      v12 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v12;
    }

    else
    {
      v25 = *(a1 + 2);
      v26 = *a1;
      v27 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v27;
      *a2 = v26;
      *(a2 + 2) = v25;
      v28 = *a3 < *a2;
      if (*a3 == *a2)
      {
        v29 = *(a3 + 2);
        v30 = a2[2];
        v28 = v29 < v30;
        if (v29 == v30)
        {
          v28 = *(a3 + 3) < a2[3];
        }
      }

      if (!v28)
      {
        return 1;
      }

      v10 = *(a2 + 2);
      v11 = *a2;
      v31 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v31;
    }

    *a3 = v11;
    *(a3 + 2) = v10;
  }

  else
  {
    v13 = *a3 < v3;
    if (*a3 == v3)
    {
      v14 = *(a3 + 2);
      v15 = a2[2];
      v13 = v14 < v15;
      if (v14 == v15)
      {
        v13 = *(a3 + 3) < a2[3];
      }
    }

    if (!v13)
    {
      return 0;
    }

    v16 = *(a2 + 2);
    v17 = *a2;
    v18 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v18;
    *a3 = v17;
    *(a3 + 2) = v16;
    v19 = *a2 < *a1;
    if (*a2 == *a1)
    {
      v20 = a2[2];
      v21 = *(a1 + 2);
      v19 = v20 < v21;
      if (v20 == v21)
      {
        v19 = a2[3] < *(a1 + 3);
      }
    }

    if (v19)
    {
      v22 = *(a1 + 2);
      v23 = *a1;
      v24 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v24;
      *a2 = v23;
      *(a2 + 2) = v22;
    }
  }

  return 1;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(a1, a2, a3);
  v11 = *a4 < *a3;
  if (*a4 == *a3)
  {
    v12 = *(a4 + 8);
    v13 = *(a3 + 8);
    v11 = v12 < v13;
    if (v12 == v13)
    {
      v11 = *(a4 + 12) < *(a3 + 12);
    }
  }

  if (v11)
  {
    v14 = *(a3 + 16);
    result = *a3;
    v15 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = result;
    *(a4 + 16) = v14;
    v16 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = *(a3 + 8);
      v18 = *(a2 + 8);
      v16 = v17 < v18;
      if (v17 == v18)
      {
        v16 = *(a3 + 12) < *(a2 + 12);
      }
    }

    if (v16)
    {
      v19 = *(a2 + 16);
      result = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = result;
      *(a3 + 16) = v19;
      v21 = *a2 < *a1;
      if (*a2 == *a1)
      {
        v22 = *(a2 + 8);
        v23 = *(a1 + 8);
        v21 = v22 < v23;
        if (v22 == v23)
        {
          v21 = *(a2 + 12) < *(a1 + 12);
        }
      }

      if (v21)
      {
        v24 = *(a1 + 16);
        result = *a1;
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = result;
        *(a2 + 16) = v24;
      }
    }
  }

  v26 = *a5 < *a4;
  if (*a5 == *a4)
  {
    v27 = *(a5 + 8);
    v28 = *(a4 + 8);
    v26 = v27 < v28;
    if (v27 == v28)
    {
      v26 = *(a5 + 12) < *(a4 + 12);
    }
  }

  if (v26)
  {
    v29 = *(a4 + 16);
    result = *a4;
    v30 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v30;
    *a5 = result;
    *(a5 + 16) = v29;
    v31 = *a4 < *a3;
    if (*a4 == *a3)
    {
      v32 = *(a4 + 8);
      v33 = *(a3 + 8);
      v31 = v32 < v33;
      if (v32 == v33)
      {
        v31 = *(a4 + 12) < *(a3 + 12);
      }
    }

    if (v31)
    {
      v34 = *(a3 + 16);
      result = *a3;
      v35 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v35;
      *a4 = result;
      *(a4 + 16) = v34;
      v36 = *a3 < *a2;
      if (*a3 == *a2)
      {
        v37 = *(a3 + 8);
        v38 = *(a2 + 8);
        v36 = v37 < v38;
        if (v37 == v38)
        {
          v36 = *(a3 + 12) < *(a2 + 12);
        }
      }

      if (v36)
      {
        v39 = *(a2 + 16);
        result = *a2;
        v40 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v40;
        *a3 = result;
        *(a3 + 16) = v39;
        v41 = *a2 < *a1;
        if (*a2 == *a1)
        {
          v42 = *(a2 + 8);
          v43 = *(a1 + 8);
          v41 = v42 < v43;
          if (v42 == v43)
          {
            v41 = *(a2 + 12) < *(a1 + 12);
          }
        }

        if (v41)
        {
          v44 = *(a1 + 16);
          result = *a1;
          v45 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v45;
          *a2 = result;
          *(a2 + 16) = v44;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 24);
        if (v6 == *v5)
        {
          v7 = *(v5 + 32);
          v8 = *(v5 + 8);
          v9 = v7 < v8;
          if (v7 == v8)
          {
            v9 = *(v5 + 36) < *(v5 + 12);
          }

          if (v9)
          {
            goto LABEL_11;
          }
        }

        else if (v6 < *v5)
        {
          v7 = *(v5 + 32);
LABEL_11:
          v10 = *(v5 + 28);
          v11 = *(v5 + 36);
          v12 = *(v5 + 40);
          *v4 = *v5;
          *(v4 + 16) = *(v5 + 16);
          v13 = result;
          if (v5 != result)
          {
            v14 = v3;
            do
            {
              v15 = result + v14;
              v16 = *(result + v14 - 24);
              v17 = v6 < v16;
              if (v6 == v16 && (v18 = *(v15 - 16), v17 = v7 < v18, v7 == v18))
              {
                v13 = result + v14;
                if (v11 >= *(result + v14 - 12))
                {
                  goto LABEL_21;
                }
              }

              else if (!v17)
              {
                v13 = v5;
                goto LABEL_21;
              }

              v5 -= 24;
              *v15 = *(result + v14 - 24);
              *(v15 + 16) = *(result + v14 - 8);
              v14 -= 24;
            }

            while (v14);
            v13 = result;
          }

LABEL_21:
          *v13 = v6;
          *(v13 + 4) = v10;
          *(v13 + 8) = v7;
          *(v13 + 12) = v11;
          *(v13 + 16) = v12;
        }

        v2 = v4 + 24;
        v3 += 24;
      }

      while (v4 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    while (1)
    {
      while (1)
      {
        if (result + 24 == a2)
        {
          return result;
        }

        v2 = result;
        result += 24;
        v3 = *(v2 + 24);
        if (v3 != *v2)
        {
          break;
        }

        v4 = *(v2 + 32);
        v5 = *(v2 + 8);
        v6 = v4 < v5;
        if (v4 == v5)
        {
          v6 = *(v2 + 36) < *(v2 + 12);
        }

        if (v6)
        {
LABEL_11:
          v7 = *(v2 + 28);
          v8 = *(v2 + 36);
          v9 = *(v2 + 40);
          do
          {
            v10 = v2;
            *(v2 + 24) = *v2;
            *(v2 + 40) = *(v2 + 16);
            v11 = *(v2 - 24);
            v2 -= 24;
            v12 = v3 < v11;
            if (v3 == v11)
            {
              v13 = *(v10 - 16);
              v12 = v4 < v13;
              if (v4 == v13)
              {
                v12 = v8 < *(v10 - 12);
              }
            }
          }

          while (v12);
          *v10 = v3;
          *(v10 + 4) = v7;
          *(v10 + 8) = v4;
          *(v10 + 12) = v8;
          *(v10 + 16) = v9;
        }
      }

      if (v3 < *v2)
      {
        v4 = *(v2 + 32);
        goto LABEL_11;
      }
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,EdgeLine *,cmpEdgeLine &>(__int128 *a1, __int128 *j)
{
  v2 = *a1;
  v3 = *(j - 6);
  v4 = *a1;
  v5 = v4 < v3;
  if (v4 == v3)
  {
    v6 = *(j - 4);
    v5 = SDWORD2(v2) < v6;
    if (DWORD2(v2) == v6)
    {
      v5 = SHIDWORD(v2) < *(j - 3);
    }
  }

  if (v5)
  {
    for (i = (a1 + 24); ; i = (i + 24))
    {
      v8 = v4 < *i;
      if (v4 == *i)
      {
        v9 = *(i + 2);
        v8 = SDWORD2(v2) < v9;
        if (DWORD2(v2) == v9)
        {
          v8 = SHIDWORD(v2) < *(i + 3);
        }
      }

      if (v8)
      {
        break;
      }
    }
  }

  else
  {
    for (i = (a1 + 24); i < j; i = (i + 24))
    {
      v10 = v4 < *i;
      if (v4 == *i)
      {
        v11 = *(i + 2);
        v10 = SDWORD2(v2) < v11;
        if (DWORD2(v2) == v11)
        {
          v10 = SHIDWORD(v2) < *(i + 3);
        }
      }

      if (v10)
      {
        break;
      }
    }
  }

  if (i < j)
  {
    for (j = (j - 24); ; j = (j - 24))
    {
      v12 = v4 < v3;
      if (v4 == v3)
      {
        v13 = *(j + 2);
        v12 = SDWORD2(v2) < v13;
        if (DWORD2(v2) == v13)
        {
          v12 = SHIDWORD(v2) < *(j + 3);
        }
      }

      if (!v12)
      {
        break;
      }

      v14 = *(j - 6);
      v3 = v14;
    }
  }

  v15 = *(a1 + 2);
  while (i < j)
  {
    v26 = *(i + 2);
    v25 = *i;
    v16 = *j;
    *(i + 2) = *(j + 2);
    *i = v16;
    *(j + 2) = v26;
    *j = v25;
    do
    {
      v17 = *(i + 6);
      i = (i + 24);
      v18 = v4 < v17;
      if (v4 == v17)
      {
        v19 = *(i + 2);
        v18 = SDWORD2(v2) < v19;
        if (DWORD2(v2) == v19)
        {
          v18 = SHIDWORD(v2) < *(i + 3);
        }
      }
    }

    while (!v18);
    do
    {
      v20 = *(j - 6);
      j = (j - 24);
      v21 = v4 < v20;
      if (v4 == v20)
      {
        v22 = *(j + 2);
        v21 = SDWORD2(v2) < v22;
        if (DWORD2(v2) == v22)
        {
          v21 = SHIDWORD(v2) < *(j + 3);
        }
      }
    }

    while (v21);
  }

  if ((i - 24) != a1)
  {
    v23 = *(i - 24);
    *(a1 + 2) = *(i - 1);
    *a1 = v23;
  }

  *(i - 24) = v2;
  *(i - 1) = v15;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,EdgeLine *,cmpEdgeLine &>(__int128 *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = HIDWORD(*a1);
  while (1)
  {
    v8 = *(a1 + v2 + 24);
    v9 = v8 < v5;
    if (v8 == v5)
    {
      v10 = *(a1 + v2 + 32);
      v9 = v10 < v6;
      if (v10 == v6)
      {
        v9 = *(a1 + v2 + 36) < v7;
      }
    }

    if (!v9)
    {
      break;
    }

    v2 += 24;
  }

  v11 = a1 + v2 + 24;
  if (v2)
  {
    do
    {
      v12 = *(a2 - 24);
      a2 -= 24;
      v13 = v12 < v5;
      if (v12 == v5)
      {
        v14 = *(a2 + 8);
        v13 = v14 < v6;
        if (v14 == v6)
        {
          v13 = *(a2 + 12) < v7;
        }
      }
    }

    while (!v13);
  }

  else if (v11 < a2)
  {
    do
    {
      v15 = *(a2 - 24);
      a2 -= 24;
      v16 = v15 < v5;
      if (v15 == v5)
      {
        v17 = *(a2 + 8);
        v16 = v17 < v6;
        if (v17 == v6)
        {
          v16 = *(a2 + 12) < v7;
        }
      }
    }

    while (!v16 && v11 < a2);
  }

  v19 = v11;
  if (v11 < a2)
  {
    v20 = a2;
    do
    {
      v31 = *(v19 + 16);
      v30 = *v19;
      v21 = *v20;
      *(v19 + 16) = *(v20 + 16);
      *v19 = v21;
      *(v20 + 16) = v31;
      *v20 = v30;
      do
      {
        v22 = *(v19 + 24);
        v19 += 24;
        v23 = v22 < v5;
        if (v22 == v5)
        {
          v24 = *(v19 + 8);
          v23 = v24 < v6;
          if (v24 == v6)
          {
            v23 = *(v19 + 12) < v7;
          }
        }
      }

      while (v23);
      do
      {
        v25 = *(v20 - 24);
        v20 -= 24;
        v26 = v25 < v5;
        if (v25 == v5)
        {
          v27 = *(v20 + 8);
          v26 = v27 < v6;
          if (v27 == v6)
          {
            v26 = *(v20 + 12) < v7;
          }
        }
      }

      while (!v26);
    }

    while (v19 < v20);
  }

  if ((v19 - 24) != a1)
  {
    v28 = *(v19 - 24);
    *(a1 + 2) = *(v19 - 8);
    *a1 = v28;
  }

  *(v19 - 24) = v3;
  *(v19 - 8) = v4;
  return v19 - 24;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(a1, (a1 + 24), (a1 + 48));
        v27 = (a2 - 24);
        v28 = *(a2 - 24);
        v29 = *(a1 + 48);
        v30 = v28 < v29;
        if (v28 == v29)
        {
          v31 = *(a2 - 16);
          v32 = *(a1 + 56);
          v30 = v31 < v32;
          if (v31 == v32)
          {
            v30 = *(a2 - 12) < *(a1 + 60);
          }
        }

        if (v30)
        {
          v33 = *(a1 + 64);
          v34 = *(a1 + 48);
          v35 = *(a2 - 8);
          *(a1 + 48) = *v27;
          *(a1 + 64) = v35;
          *v27 = v34;
          *(a2 - 8) = v33;
          v36 = *(a1 + 48);
          LODWORD(v33) = *(a1 + 24);
          v37 = v36 < v33;
          if (v36 == v33)
          {
            v38 = *(a1 + 56);
            v39 = *(a1 + 32);
            v37 = v38 < v39;
            if (v38 == v39)
            {
              v37 = *(a1 + 60) < *(a1 + 36);
            }
          }

          if (v37)
          {
            v40 = *(a1 + 40);
            v41 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v41;
            *(a1 + 64) = v40;
            LODWORD(v40) = *(a1 + 24);
            v42 = v40 < *a1;
            if (v40 == *a1)
            {
              v43 = *(a1 + 32);
              v44 = *(a1 + 8);
              v42 = v43 < v44;
              if (v43 == v44)
              {
                v42 = *(a1 + 36) < *(a1 + 12);
              }
            }

            if (v42)
            {
              v45 = *(a1 + 16);
              v46 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v46;
              *(a1 + 40) = v45;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 24);
      v6 = *(a2 - 24);
      v7 = v6 < *a1;
      if (v6 == *a1)
      {
        v8 = *(a2 - 16);
        v9 = *(a1 + 8);
        v7 = v8 < v9;
        if (v8 == v9)
        {
          v7 = *(a2 - 12) < *(a1 + 12);
        }
      }

      if (v7)
      {
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = *(a2 - 8);
        *a1 = *v5;
        *(a1 + 16) = v12;
        *v5 = v11;
        *(a2 - 8) = v10;
      }

      return 1;
    }
  }

  v13 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,0>(a1, (a1 + 24), (a1 + 48));
  v14 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = *v14;
    if (*v14 == *v13)
    {
      v18 = *(v14 + 8);
      v19 = *(v13 + 8);
      if (v18 == v19)
      {
        if (*(v14 + 12) >= *(v13 + 12))
        {
          goto LABEL_35;
        }
      }

      else if (v18 >= v19)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v17 >= *v13)
      {
        goto LABEL_35;
      }

      v18 = *(v14 + 8);
    }

    v20 = *(v14 + 4);
    v21 = *(v14 + 12);
    v22 = *(v14 + 16);
    *v14 = *v13;
    *(v14 + 16) = *(v13 + 16);
    v23 = v15;
    do
    {
      v24 = *(a1 + v23 + 24);
      v25 = v17 < v24;
      if (v17 != v24)
      {
        goto LABEL_28;
      }

      v26 = *(a1 + v23 + 32);
      if (v18 == v26)
      {
        v25 = v21 < *(a1 + v23 + 36);
LABEL_28:
        if (!v25)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      if (v18 >= v26)
      {
        v13 = a1 + v23 + 48;
        goto LABEL_34;
      }

LABEL_32:
      v13 -= 24;
      *(a1 + v23 + 48) = *(a1 + v23 + 24);
      *(a1 + v23 + 64) = *(a1 + v23 + 40);
      v23 -= 24;
    }

    while (v23 != -48);
    v13 = a1;
LABEL_34:
    *v13 = v17;
    *(v13 + 4) = v20;
    *(v13 + 8) = v18;
    *(v13 + 12) = v21;
    ++v16;
    *(v13 + 16) = v22;
    if (v16 != 8)
    {
LABEL_35:
      v13 = v14;
      v15 += 24;
      v14 += 24;
      if (v14 == a2)
      {
        return 1;
      }

      continue;
    }

    return v14 + 24 == a2;
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *,EdgeLine *>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 6 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(a1, a4, v9, v12);
        v12 -= 6;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = v13->n128_u32[0] < a1->n128_u32[0];
        if (v13->n128_u32[0] == a1->n128_u32[0])
        {
          v15 = v13->n128_i32[2];
          v16 = a1->n128_i32[2];
          v14 = v15 < v16;
          if (v15 == v16)
          {
            v14 = v13->n128_u32[3] < a1->n128_u32[3];
          }
        }

        if (v14)
        {
          v17 = v13[1].n128_u64[0];
          v18 = *v13;
          v19 = a1[1].n128_u64[0];
          *v13 = *a1;
          v13[1].n128_u64[0] = v19;
          *a1 = v18;
          a1[1].n128_u64[0] = v17;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v21 = (a2 - 24);
      do
      {
        v25 = *a1;
        v26 = a1[1].n128_u64[0];
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(a1, a4, v20);
        if (v21 == v22)
        {
          *v22 = v25;
          v22[1].n128_u64[0] = v26;
        }

        else
        {
          v23 = *v21;
          v22[1].n128_u64[0] = v21[1].n128_u64[0];
          *v22 = v23;
          *v21 = v25;
          v21[1].n128_u64[0] = v26;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(a1, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i8[8] - a1) >> 3));
        }

        v21 = (v21 - 24);
        v14 = v20-- <= 2;
      }

      while (!v14);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
  v6 = (result + 24 * v5);
  if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
  {
    v7 = *(v6 + 6);
    v8 = *v6 < v7;
    if (*v6 == v7)
    {
      v9 = *(v6 + 2);
      v10 = *(v6 + 8);
      v8 = v9 < v10;
      if (v9 == v10)
      {
        v8 = *(v6 + 3) < *(v6 + 9);
      }
    }

    if (v8)
    {
      v6 = (v6 + 24);
      v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
    }
  }

  v11 = *a4;
  if (*v6 == *a4)
  {
    v12 = *(v6 + 2);
    v13 = a4[2];
    v14 = v12 < v13;
    if (v12 == v13)
    {
      v13 = *(v6 + 2);
      v14 = *(v6 + 3) < a4[3];
    }

    if (v14)
    {
      return result;
    }
  }

  else
  {
    if (*v6 < v11)
    {
      return result;
    }

    v13 = a4[2];
  }

  v15 = a4[1];
  v16 = a4[3];
  v17 = *(a4 + 2);
  v18 = *(v6 + 2);
  *a4 = *v6;
  *(a4 + 2) = v18;
  if (v4 >= v5)
  {
    while (1)
    {
      v19 = v6;
      v20 = 2 * v5;
      v5 = (2 * v5) | 1;
      v6 = (result + 24 * v5);
      v21 = v20 + 2;
      if (v21 < a3)
      {
        v22 = *(v6 + 6);
        v23 = *v6 < v22;
        if (*v6 == v22)
        {
          v24 = *(v6 + 2);
          v25 = *(v6 + 8);
          v23 = v24 < v25;
          if (v24 == v25)
          {
            v23 = *(v6 + 3) < *(v6 + 9);
          }
        }

        if (v23)
        {
          v6 = (v6 + 24);
          v5 = v21;
        }
      }

      v26 = *v6 < v11;
      if (*v6 == v11)
      {
        v27 = *(v6 + 2);
        v26 = v27 < v13;
        if (v27 == v13)
        {
          v26 = *(v6 + 3) < v16;
        }
      }

      if (v26)
      {
        break;
      }

      v28 = *v6;
      *(v19 + 2) = *(v6 + 2);
      *v19 = v28;
      if (v4 < v5)
      {
        goto LABEL_33;
      }
    }

    v6 = v19;
  }

LABEL_33:
  *v6 = v11;
  *(v6 + 1) = v15;
  *(v6 + 2) = v13;
  *(v6 + 3) = v16;
  *(v6 + 2) = v17;
  return result;
}

__n128 std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1;
    v5 = a1 + 6 * v3;
    a1 = (v5 + 6);
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[12];
      v9 = v5[6];
      v10 = v9 < v8;
      if (v9 == v8)
      {
        v11 = v5[8];
        v12 = v5[14];
        v10 = v11 < v12;
        if (v11 == v12)
        {
          v10 = v5[9] < v5[15];
        }
      }

      if (v10)
      {
        a1 = (v5 + 12);
        v3 = v7;
      }
    }

    result = *a1;
    v4[1].n128_u64[0] = a1[1].n128_u64[0];
    *v4 = result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,cmpEdgeLine &,EdgeLine *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 24 * (v4 >> 1));
  v7 = *(a2 - 24);
  if (*v6 == v7)
  {
    v8 = *(v6 + 2);
    v9 = *(a2 - 16);
    v10 = v8 < v9;
    if (v8 == v9)
    {
      v9 = *(v6 + 2);
      v10 = *(v6 + 3) < *(a2 - 12);
    }

    if (!v10)
    {
      return result;
    }
  }

  else
  {
    if (*v6 >= v7)
    {
      return result;
    }

    v9 = *(a2 - 16);
  }

  v11 = *(a2 - 20);
  v12 = *(a2 - 12);
  v13 = *(a2 - 8);
  v14 = *(v6 + 2);
  *(a2 - 24) = *v6;
  *(a2 - 8) = v14;
  if (v4 >= 2)
  {
    while (1)
    {
      v15 = v6;
      v16 = v5 - 1;
      v5 = (v5 - 1) >> 1;
      v6 = (result + 24 * v5);
      v17 = *v6 < v7;
      if (*v6 == v7)
      {
        v18 = *(v6 + 2);
        v17 = v18 < v9;
        if (v18 == v9)
        {
          v17 = *(v6 + 3) < v12;
        }
      }

      if (!v17)
      {
        break;
      }

      v19 = *v6;
      *(v15 + 2) = *(v6 + 2);
      *v15 = v19;
      if (v16 <= 1)
      {
        goto LABEL_16;
      }
    }

    v6 = v15;
  }

LABEL_16:
  *v6 = v7;
  *(v6 + 1) = v11;
  *(v6 + 2) = v9;
  *(v6 + 3) = v12;
  *(v6 + 2) = v13;
  return result;
}

void sub_242A582C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A589B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A58AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A58D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A58E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A59154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A59364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_242A5A7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A5AE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A5AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A5B388(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_242A5B97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A5C844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A5CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A5D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_242A60378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A60538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A60680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A615B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A61EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242A65458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A6592C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AVTMorphTargetNameDefinesPose(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"__"] & 1) != 0 || (objc_msgSend(v1, "containsString:", @"_0_") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_backward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_forward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_rightward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_leftward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_downward") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"_upward"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 hasPrefix:@"variant_"] ^ 1;
  }

  return v2;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_242A66664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A6699C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A66FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromUIDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"UIDeviceOrientationUnknown";
  }

  else
  {
    return off_278D7A760[a1 - 1];
  }
}

__CFString *NSStringFromUIInterfaceOrientation(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_278D7A790[a1];
  }
}

__CFString *NSStringFromJFXTrackingType(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"3D";
  }

  if (a1 == 2)
  {
    return @"Billboard";
  }

  else
  {
    return v1;
  }
}

id AXDurationStringForDuration(double a1)
{
  if (AXDurationStringForDuration_onceToken != -1)
  {
    AXDurationStringForDuration_cold_1();
  }

  v2 = 0.0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v2 = a1;
  }

  v3 = [AXDurationStringForDuration_formatter stringFromTimeInterval:v2];

  return v3;
}

uint64_t __AXDurationStringForDuration_block_invoke()
{
  v0 = objc_opt_new();
  v1 = AXDurationStringForDuration_formatter;
  AXDurationStringForDuration_formatter = v0;

  [AXDurationStringForDuration_formatter setZeroFormattingBehavior:1];
  [AXDurationStringForDuration_formatter setUnitsStyle:4];
  v2 = AXDurationStringForDuration_formatter;

  return [v2 setAllowedUnits:224];
}

void sub_242A6FA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id jfx_drawInRect(void *a1, int a2, double a3, double a4, double a5, double a6, float a7)
{
  v13 = a1;
  v14 = [MEMORY[0x277D75568] defaultFormat];
  [v14 setOpaque:0];
  [v14 setScale:a7];
  if (!a2)
  {
LABEL_8:
    [v14 setPreferredRange:2];
    goto LABEL_10;
  }

  if ([v14 preferredRange] != 1)
  {
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v15;
  if (v15 && (ColorSpace = CGImageGetColorSpace([v15 CGImage])) != 0)
  {
    if (jfx_isSRGB_onceToken != -1)
    {
      v23 = ColorSpace;
      jfx_drawInRect_cold_1();
      ColorSpace = v23;
    }

    v18 = CFEqual(ColorSpace, jfx_isSRGB_s_sRGB);

    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_10:
  v19 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:v14 format:{a3, a4, a5, a6}];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __jfx_drawInRect_block_invoke;
  v24[3] = &unk_278D7A8D8;
  v25 = v13;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v20 = v13;
  v21 = [v19 imageWithActions:v24];

  return v21;
}

CGColorSpaceRef __jfx_isSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  jfx_isSRGB_s_sRGB = result;
  return result;
}

void sub_242A71074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A711EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A71388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A71894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A71A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A71C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A72998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef CMTimeCopyDescriptionWithScale(CMTime *a1, int32_t a2)
{
  v7 = *a1;
  CMTimeConvertScale(&time, &v7, a2, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *&a1->value = *&time.value;
  epoch = time.epoch;
  v4 = MEMORY[0x277CBECE8];
  a1->epoch = time.epoch;
  v5 = *v4;
  *&time.value = *&a1->value;
  time.epoch = epoch;
  return CMTimeCopyDescription(v5, &time);
}

CFStringRef CMTimeRangeCopyDescriptionWithScale(_OWORD *a1, int32_t a2)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = a1[2];
  CMTimeRangeConvertScale(v8, a2, kCMTimeRoundingMethod_RoundHalfAwayFromZero, &range);
  v4 = *&range.start.epoch;
  *a1 = *&range.start.value;
  a1[1] = v4;
  a1[2] = *&range.duration.timescale;
  v5 = *MEMORY[0x277CBECE8];
  v6 = a1[1];
  *&range.start.value = *a1;
  *&range.start.epoch = v6;
  *&range.duration.timescale = a1[2];
  return CMTimeRangeCopyDescription(v5, &range);
}

__n128 CMTimeRangeConvertScale@<Q0>(uint64_t a1@<X0>, int32_t a2@<W1>, CMTimeRoundingMethod a3@<W2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  CMTimeConvertScale(&v11, &v10, a2, a3);
  *a1 = v11;
  v10 = *(a1 + 24);
  CMTimeConvertScale(&v11, &v10, a2, a3);
  *(a1 + 24) = v11;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  return result;
}

__n128 CMTimeGetDistanceToRange@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = MEMORY[0x277CC08F0];
  v15 = **&MEMORY[0x277CC08F0];
  v7 = *(a2 + 16);
  *&range.start.value = *a2;
  *&range.start.epoch = v7;
  *&range.duration.timescale = *(a2 + 32);
  v13 = *a1;
  if (!CMTimeRangeContainsTime(&range, &v13))
  {
    if ((*(a1 + 12) & 1) != 0 && (*(a2 + 12) & 1) != 0 && (*(a2 + 36) & 1) != 0 && !*(a2 + 40) && (*(a2 + 24) & 0x8000000000000000) == 0)
    {
      *&range.start.value = *a1;
      range.start.epoch = *(a1 + 16);
      v13 = *a2;
      if (CMTimeCompare(&range.start, &v13) < 0)
      {
        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        v13 = *a1;
        v6 = &v15;
        p_range = &range;
        v12 = &v13;
      }

      else
      {
        v9 = *(a2 + 16);
        *&range.start.value = *a2;
        *&range.start.epoch = v9;
        *&range.duration.timescale = *(a2 + 32);
        CMTimeRangeGetEnd(&v13, &range);
        *&range.start.value = *a1;
        range.start.epoch = *(a1 + 16);
        if (CMTimeCompare(&range.start, &v13) < 1)
        {
          v6 = &v15;
          goto LABEL_7;
        }

        v10 = *(a2 + 16);
        *&range.start.value = *a2;
        *&range.start.epoch = v10;
        *&range.duration.timescale = *(a2 + 32);
        CMTimeRangeGetEnd(&v13, &range);
        *&range.start.value = *a1;
        range.start.epoch = *(a1 + 16);
        v6 = &v15;
        p_range = &v13;
        v12 = &range;
      }

      CMTimeSubtract(&v15, &p_range->start, &v12->start);
    }

    else
    {
      v6 = MEMORY[0x277CC08B0];
    }
  }

LABEL_7:
  result = *v6;
  *a3 = *v6;
  a3[1].n128_u64[0] = v6[1].n128_u64[0];
  return result;
}

Float64 DurationSecondsFromFrameTime(int a1, int32_t a2)
{
  memset(&v4, 0, sizeof(v4));
  CMTimeMake(&v4, a1, a2);
  v3 = v4;
  return CMTimeGetSeconds(&v3);
}

Float64 SecondsFromFrameTime(int a1, int32_t a2)
{
  memset(&v4, 0, sizeof(v4));
  CMTimeMake(&v4, a1, a2);
  v3 = v4;
  return CMTimeGetSeconds(&v3);
}

uint64_t FrameTimeFromCMTime(void *a1, int32_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  memset(&v4, 0, sizeof(v4));
  v3 = *a1;
  CMTimeConvertScale(&v4, &v3, a2, kCMTimeRoundingMethod_RoundTowardZero);
  return LODWORD(v4.value);
}

double CMTimeRangeForStartAndDuration@<D0>(int32_t timescale@<W2>, int a2@<W0>, int a3@<W1>, uint64_t a4@<X8>)
{
  CMTimeMake(a4, a2, timescale);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  CMTimeMake(&v8, a3, timescale);
  result = *&v8.value;
  *(a4 + 24) = v8;
  return result;
}

id JFXNSStringForCMTime(CMTime *a1)
{
  timescale = a1->timescale;
  time = *a1;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", time.value, timescale, CMTimeGetSeconds(&time)];

  return v2;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

double CGRectGetCenterPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double CGRectFillRectToAspectInRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a3 <= a4)
  {
    v8 = a4 / a8;
    if (a7 * v8 < a3)
    {
      v9 = a3 / a7;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = a3 / a7;
    if (a8 * v8 < a4)
    {
      v9 = a4 / a8;
LABEL_6:
      v8 = v9;
    }
  }

  return a1 + floor((a3 - a7 * v8) * 0.5);
}

BOOL CGRectCouldContainRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  Width = CGRectGetWidth(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (Width > CGRectGetWidth(v20))
  {
    return 0;
  }

  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  Height = CGRectGetHeight(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  return Height <= CGRectGetHeight(v22);
}

CGFloat CGRectMoveToKeepCenterWithinRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v16 = a4;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  CGRectGetMinY(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = v16;
  CGRectGetMidY(v28);
  if (MidX >= MinX)
  {
    v18 = *MEMORY[0x277CBF348];
    if (MidX > MaxX)
    {
      v18 = MaxX - MidX;
    }
  }

  else
  {
    v18 = MinX - MidX;
  }

  return a1 + v18;
}

double CGRectScaleAndCenter(int a1, double result, double a3, double a4, double a5, double a6)
{
  v7 = a4 * a6;
  if (a1)
  {
    return result + (a4 - v7) * 0.5;
  }

  return result;
}

CGFloat CGRectStraighten(double *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = atan2(a1[3] - v5, a1[2] - *a1);
  v7 = v6;
  if (a2)
  {
    *a2 = v6;
    v4 = *a1;
    v5 = a1[1];
  }

  v8 = a1[4];
  v9 = a1[5];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&t1, -(v4 + (v8 - v4) * 0.5), -(v5 + (v9 - v5) * 0.5));
  CGAffineTransformMakeRotation(&v11, -v7);
  CGAffineTransformConcat(&v13, &t1, &v11);
  CGAffineTransformMakeTranslation(&t1, v4 + (v8 - v4) * 0.5, v5 + (v9 - v5) * 0.5);
  CGAffineTransformConcat(&v14, &v13, &t1);
  return v14.tx + v5 * v14.c + v14.a * v4;
}

double CGRectRotate(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v23[0] = a2;
  v23[1] = a3;
  v24 = a2 + a4;
  v25 = a3;
  v26 = a2 + a4;
  v27 = a3 + a5;
  v28 = a2;
  v29 = a3 + a5;
  MidX = CGRectGetMidX(*&a2);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  MidY = CGRectGetMidY(v31);
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
  CGAffineTransformMakeRotation(&v19, a6);
  CGAffineTransformConcat(&v21, &t1, &v19);
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  CGAffineTransformConcat(&v22, &v21, &t1);
  v14 = 0;
  v15 = *&v22.a;
  v16 = *&v22.c;
  v17 = *&v22.tx;
  do
  {
    *&v23[v14] = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v16, v23[v14 + 1]), v15, v23[v14]));
    *(a1 + v14 * 8) = *&v23[v14];
    v14 += 2;
  }

  while (v14 != 8);
  return fmin(v23[0], fmin(v24, fmin(v26, v28)));
}

void sub_242A7B8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id JFXEffectClassForType(int a1)
{
  if (a1 == 1 || a1 == 7 || a1 == 2)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

os_signpost_id_t JFXSignpostIDFromObject(void *a1)
{
  v1 = a1;
  v2 = JFXPlaybackIntervalSignpostCategory();
  v3 = os_signpost_id_make_with_pointer(v2, v1);

  return v3;
}

id JFXPlaybackIntervalSignpostCategory()
{
  if (JFXIsPlaybackSignpostsEnabled_onceToken != -1)
  {
    JFXPlaybackIntervalSignpostCategory_cold_1();
  }

  if (JFXIsPlaybackSignpostsEnabled_s_enableSignposts == 1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __JFXSignPostIntervalCategory_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = &JFXPlaybackIntervalSignpostCategory_s_Category;
    v2[5] = "playback-interval";
    if (JFXPlaybackIntervalSignpostCategory_onceToken != -1)
    {
      dispatch_once(&JFXPlaybackIntervalSignpostCategory_onceToken, v2);
    }
  }

  else
  {
    objc_storeStrong(&JFXPlaybackIntervalSignpostCategory_s_Category, MEMORY[0x277D86228]);
  }

  v0 = JFXPlaybackIntervalSignpostCategory_s_Category;

  return v0;
}

uint64_t JFXIsPlaybackSignpostsEnabled()
{
  if (JFXIsPlaybackSignpostsEnabled_onceToken != -1)
  {
    JFXPlaybackIntervalSignpostCategory_cold_1();
  }

  return JFXIsPlaybackSignpostsEnabled_s_enableSignposts;
}

void __JFXIsPlaybackSignpostsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  JFXIsPlaybackSignpostsEnabled_s_enableSignposts = [v0 jfxBoolForKey:@"JFXEnablePlaybackSignposts" defaultValue:1];
}

id JFXPlaybackEventSignpostPointCategory()
{
  if (JFXIsPlaybackSignpostsEnabled_onceToken != -1)
  {
    JFXPlaybackIntervalSignpostCategory_cold_1();
  }

  if (JFXIsPlaybackSignpostsEnabled_s_enableSignposts == 1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __JFXSignPostIntervalCategory_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = &JFXPlaybackEventSignpostPointCategory_s_Category;
    v2[5] = "PointsOfInterest";
    if (JFXPlaybackEventSignpostPointCategory_onceToken != -1)
    {
      dispatch_once(&JFXPlaybackEventSignpostPointCategory_onceToken, v2);
    }
  }

  else
  {
    objc_storeStrong(&JFXPlaybackEventSignpostPointCategory_s_Category, MEMORY[0x277D86228]);
  }

  v0 = JFXPlaybackEventSignpostPointCategory_s_Category;

  return v0;
}

uint64_t JFXIsMediaDataReaderSignpostsEnabled()
{
  if (JFXIsMediaDataReaderSignpostsEnabled_onceToken != -1)
  {
    JFXIsMediaDataReaderSignpostsEnabled_cold_1();
  }

  return JFXIsMediaDataReaderSignpostsEnabled_s_enableSignposts;
}

void __JFXIsMediaDataReaderSignpostsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  JFXIsMediaDataReaderSignpostsEnabled_s_enableSignposts = [v0 jfxBoolForKey:@"JFXEnableMediaDataReaderSignposts" defaultValue:1];
}

id JFXMediaDataReaderEventSignpostPointCategory()
{
  if (JFXIsMediaDataReaderSignpostsEnabled_onceToken != -1)
  {
    JFXIsMediaDataReaderSignpostsEnabled_cold_1();
  }

  if (JFXIsMediaDataReaderSignpostsEnabled_s_enableSignposts == 1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __JFXSignPostIntervalCategory_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = &JFXMediaDataReaderEventSignpostPointCategory_s_Category;
    v2[5] = "PointsOfInterest";
    if (JFXMediaDataReaderEventSignpostPointCategory_onceToken != -1)
    {
      dispatch_once(&JFXMediaDataReaderEventSignpostPointCategory_onceToken, v2);
    }
  }

  else
  {
    objc_storeStrong(&JFXMediaDataReaderEventSignpostPointCategory_s_Category, MEMORY[0x277D86228]);
  }

  v0 = JFXMediaDataReaderEventSignpostPointCategory_s_Category;

  return v0;
}

id JFXMediaDataReaderIntervalSignpostCategory()
{
  if (JFXIsMediaDataReaderSignpostsEnabled_onceToken != -1)
  {
    JFXIsMediaDataReaderSignpostsEnabled_cold_1();
  }

  if (JFXIsMediaDataReaderSignpostsEnabled_s_enableSignposts == 1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __JFXSignPostIntervalCategory_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = &JFXMediaDataReaderIntervalSignpostCategory_s_Category;
    v2[5] = "mediaDataReader-interval";
    if (JFXMediaDataReaderIntervalSignpostCategory_onceToken != -1)
    {
      dispatch_once(&JFXMediaDataReaderIntervalSignpostCategory_onceToken, v2);
    }
  }

  else
  {
    objc_storeStrong(&JFXMediaDataReaderIntervalSignpostCategory_s_Category, MEMORY[0x277D86228]);
  }

  v0 = JFXMediaDataReaderIntervalSignpostCategory_s_Category;

  return v0;
}

uint64_t JFXIsVideoWriterSignpostsEnabled()
{
  if (JFXIsVideoWriterSignpostsEnabled_onceToken != -1)
  {
    JFXIsVideoWriterSignpostsEnabled_cold_1();
  }

  return JFXIsVideoWriterSignpostsEnabled_s_enableSignposts;
}

void __JFXIsVideoWriterSignpostsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  JFXIsVideoWriterSignpostsEnabled_s_enableSignposts = [v0 jfxBoolForKey:@"JFXEnableVideoWriterSignposts" defaultValue:1];
}

id JFXVideoWriterEventSignpostPointCategory()
{
  if (JFXIsVideoWriterSignpostsEnabled_onceToken != -1)
  {
    JFXIsVideoWriterSignpostsEnabled_cold_1();
  }

  if (JFXIsVideoWriterSignpostsEnabled_s_enableSignposts == 1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __JFXSignPostIntervalCategory_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = &JFXVideoWriterEventSignpostPointCategory_s_Category;
    v2[5] = "PointsOfInterest";
    if (JFXVideoWriterEventSignpostPointCategory_onceToken != -1)
    {
      dispatch_once(&JFXVideoWriterEventSignpostPointCategory_onceToken, v2);
    }
  }

  else
  {
    objc_storeStrong(&JFXVideoWriterEventSignpostPointCategory_s_Category, MEMORY[0x277D86228]);
  }

  v0 = JFXVideoWriterEventSignpostPointCategory_s_Category;

  return v0;
}

id JFXVideoWriterIntervalSignpostCategory()
{
  if (JFXIsVideoWriterSignpostsEnabled_onceToken != -1)
  {
    JFXIsVideoWriterSignpostsEnabled_cold_1();
  }

  if (JFXIsVideoWriterSignpostsEnabled_s_enableSignposts == 1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __JFXSignPostIntervalCategory_block_invoke;
    v2[3] = &__block_descriptor_48_e5_v8__0l;
    v2[4] = &JFXVideoWriterIntervalSignpostCategory_s_Category;
    v2[5] = "videoWriter-interval";
    if (JFXVideoWriterIntervalSignpostCategory_onceToken != -1)
    {
      dispatch_once(&JFXVideoWriterIntervalSignpostCategory_onceToken, v2);
    }
  }

  else
  {
    objc_storeStrong(&JFXVideoWriterIntervalSignpostCategory_s_Category, MEMORY[0x277D86228]);
  }

  v0 = JFXVideoWriterIntervalSignpostCategory_s_Category;

  return v0;
}

uint64_t __JFXSignPostIntervalCategory_block_invoke(uint64_t a1)
{
  **(a1 + 32) = os_log_create("com.apple.CameraEffectsKit", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

id CFXLog_action()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &CFXLog_action_logObj;
  v2[5] = "action";
  if (CFXLog_action_onceToken != -1)
  {
    dispatch_once(&CFXLog_action_onceToken, v2);
  }

  v0 = CFXLog_action_logObj;

  return v0;
}

id CFXLog_DebugEffectEditorRenderer()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &CFXLog_DebugEffectEditorRenderer_logObj;
  v2[5] = "DebugEffectEditorRenderer";
  if (CFXLog_DebugEffectEditorRenderer_onceToken != -1)
  {
    dispatch_once(&CFXLog_DebugEffectEditorRenderer_onceToken, v2);
  }

  v0 = CFXLog_DebugEffectEditorRenderer_logObj;

  return v0;
}

id CFXLog_DebugEffectEditingUI()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &CFXLog_DebugEffectEditingUI_logObj;
  v2[5] = "DebugEffectEditingUI";
  if (CFXLog_DebugEffectEditingUI_onceToken != -1)
  {
    dispatch_once(&CFXLog_DebugEffectEditingUI_onceToken, v2);
  }

  v0 = CFXLog_DebugEffectEditingUI_logObj;

  return v0;
}

id CFXLog_DebugFeedback()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &CFXLog_DebugFeedback_logObj;
  v2[5] = "DebugFeedback";
  if (CFXLog_DebugFeedback_onceToken != -1)
  {
    dispatch_once(&CFXLog_DebugFeedback_onceToken, v2);
  }

  v0 = CFXLog_DebugFeedback_logObj;

  return v0;
}

id CFXLog_DebugReview()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &CFXLog_DebugReview_logObj;
  v2[5] = "DebugReview";
  if (CFXLog_DebugReview_onceToken != -1)
  {
    dispatch_once(&CFXLog_DebugReview_onceToken, v2);
  }

  v0 = CFXLog_DebugReview_logObj;

  return v0;
}

void VTDecompressionOutputCallbackImpl(void *a1, void *a2, int a3, unsigned int a4, __CVBuffer *a5, CMTime *a6, CMTime *a7)
{
  v8 = a1;
  if (a5)
  {
    [v8 setImageBuffer:CVPixelBufferRetain(a5)];
  }

  else
  {
    v9 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      VTDecompressionOutputCallbackImpl();
    }
  }

  v10 = [v8 frameSemaphore];
  dispatch_semaphore_signal(v10);
}

void sub_242A832E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = JFXVideoDecoderInterface;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double CGSizeFitToAspectInSize(double a1, double a2, double a3, double a4)
{
  v4 = a1 / a3;
  v5 = v4;
  if (a4 * v5 > a2)
  {
    v6 = a2 / a4;
    v5 = v6;
  }

  return floor(a3 * v5);
}

double CGSizeFillSizeToAspectInSize(double a1, double a2, double a3, double a4)
{
  if (a1 <= a2)
  {
    v4 = a2 / a4;
    if (a3 * v4 < a1)
    {
      v5 = a1 / a3;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = a1 / a3;
    if (a4 * v4 < a2)
    {
      v5 = a2 / a4;
LABEL_6:
      v4 = v5;
    }
  }

  return floor(a3 * v4);
}

void CGSizeFillingTargetSizeLimitedToMaxSize(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = CGSizeFillSizeToAspectInSize(a2, a3, a4, a5);
  if (a1)
  {
    *a1 = v6;
    *(a1 + 8) = v7;
  }
}

void CGSizeAngleAndDistance(double *a1, double *a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    v7 = 4.71238898;
    if (a4 >= 0.0)
    {
      v7 = 0.0;
    }

    if (a4 > 0.0)
    {
      v7 = 1.57079633;
    }

    v8 = fabs(a4);
    if (a1)
    {
LABEL_7:
      *a1 = v7;
    }
  }

  else
  {
    v7 = atan(a4 / a3);
    if ((a3 >= 0.0 || a4 <= 0.0) && (a3 >= 0.0 || a4 >= 0.0))
    {
      if (a4 < 0.0 && a3 > 0.0)
      {
        v7 = v7 + 6.28318531;
      }
    }

    else
    {
      v7 = v7 + 3.14159265;
    }

    v8 = fabs(a3);
    v11 = sqrt(a3 * a3 + a4 * a4);
    if (a4 != 0.0)
    {
      v8 = v11;
    }

    if (a1)
    {
      goto LABEL_7;
    }
  }

  if (a2)
  {
    *a2 = v8;
  }
}

void VTCompressionOutputCallbackImpl(void *a1, void *a2, int a3, unsigned int a4, opaqueCMSampleBuffer *a5)
{
  v7 = a1;
  v8 = v7;
  if (a5)
  {
    [v7 writeSampleBuffer:a5];
  }

  else
  {
    v9 = JFXLog_depthCodec();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      VTCompressionOutputCallbackImpl(a3, v9);
    }

    [v8 skipFrame];
  }
}

void sub_242A881FC(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x245D21BD0](v3, 0x1020C40322220F4);

  _Unwind_Resume(a1);
}

void sub_242A88514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::future<opaqueCMSampleBuffer *>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<opaqueCMSampleBuffer *>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_242A885E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<opaqueCMSampleBuffer *>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::promise<opaqueCMSampleBuffer *>::set_value(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<opaqueCMSampleBuffer *>::set_value<opaqueCMSampleBuffer *>(v3, a2);
}

{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<opaqueCMSampleBuffer *>::set_value<opaqueCMSampleBuffer * const&>(v3, a2);
}

void std::__assoc_state<opaqueCMSampleBuffer *>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x245D21BD0);
}

uint64_t *std::promise<opaqueCMSampleBuffer *>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x245D21AE0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x245D21AF0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x277D82838] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2821F74F8](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x245D21AE0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<opaqueCMSampleBuffer *>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_242A88C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void std::__assoc_state<opaqueCMSampleBuffer *>::set_value<opaqueCMSampleBuffer *>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<opaqueCMSampleBuffer *>::set_value<opaqueCMSampleBuffer * const&>(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t useMirroredFrontCameraInStreamMode()
{
  if (useMirroredFrontCameraInStreamMode_onceToken != -1)
  {
    useMirroredFrontCameraInStreamMode_cold_1();
  }

  return useMirroredFrontCameraInStreamMode_useMirroredFrontCameraInStreamMode;
}

void __useMirroredFrontCameraInStreamMode_block_invoke()
{
  v3 = 0;
  JFX_getFrontAndBackCameras(0, &v3, 0);
  if (v3)
  {
    v0 = JFXDeviceIsiPhone() ^ 1;
  }

  else
  {
    v0 = 1;
  }

  useMirroredFrontCameraInStreamMode_useMirroredFrontCameraInStreamMode = v0;
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v1 objectForKey:@"CFX_DEMO_UseMirroredFrontCameraInStreamMode"];

  if (v2)
  {
    useMirroredFrontCameraInStreamMode_useMirroredFrontCameraInStreamMode = [v2 BOOLValue];
  }
}

uint64_t isDrawEffectsEditorBoundsEnabled()
{
  if (isDrawEffectsEditorBoundsEnabled_onceToken != -1)
  {
    isDrawEffectsEditorBoundsEnabled_cold_1();
  }

  return isDrawEffectsEditorBoundsEnabled_drawEffectEditorBounds;
}

void __isDrawEffectsEditorBoundsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"CFX_DEBUG_DrawEffectEditorBounds"];

  v1 = v2;
  if (v2)
  {
    isDrawEffectsEditorBoundsEnabled_drawEffectEditorBounds = [v2 BOOLValue];
    v1 = v2;
  }
}

uint64_t isShowPlayerScrubbingControlsEnabled()
{
  if (isShowPlayerScrubbingControlsEnabled_onceToken != -1)
  {
    isShowPlayerScrubbingControlsEnabled_cold_1();
  }

  return isShowPlayerScrubbingControlsEnabled_s_showPlayerScrubControls;
}

void __isShowPlayerScrubbingControlsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"CFX_DEBUG_ShowPlayerScrubbingControls"];

  v1 = v2;
  if (v2)
  {
    isShowPlayerScrubbingControlsEnabled_s_showPlayerScrubControls = [v2 BOOLValue];
    v1 = v2;
  }
}

id CFXAspectRatioCropOverride()
{
  if (CFXAspectRatioCropOverride_onceToken != -1)
  {
    CFXAspectRatioCropOverride_cold_1();
  }

  v1 = CFXAspectRatioCropOverride_aspectRatioCropOverride;

  return v1;
}

void __CFXAspectRatioCropOverride_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"CFX_AspectRatioCrop"];
  v1 = CFXAspectRatioCropOverride_aspectRatioCropOverride;
  CFXAspectRatioCropOverride_aspectRatioCropOverride = v0;
}

id JFXAddShapeWithIdentifierNotificationUserInfoForEffectIdentifier(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXAddShapeNotificationEffectIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAddEffectWithIdentifierNotificationUserInfoForEffectIdentifier(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXAddEffectNotificationEffectIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAddEffectWithNameNotificationUserInfoForEffectName(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXAddEffectNotificationEffectNameUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAddAREffectWithIdentifierNotificationUserInfoForEffectIdentifier(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"JFXAddAREffectNotificationEffectIdentifierUserInfoKey";
  v8[1] = @"JFXAddAREffectNotificationReplayFilenameUserInfoKey";
  v9[0] = a1;
  v9[1] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

id JFXAddPosterWithIdentifierNotificationUserInfoForPosterIdentifier(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXAddPosterNotificationPosterIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAddPosterWithNameNotificationUserInfoForPosterName(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXAddPosterNotificationPosterNameUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXRemoveEffectsNotificationUserInfoForEffectTypes(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXRemoveEffectsNotificationEffectTypeIdentifiersUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXSetAnimojiNotificationUserInfoForEffect(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXSetAnimojiNotificationEffectIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXSetMemojiNotificationUserInfoForFile(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXSetMemojiNotificationFileUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXSetFilterWithIdentifierNotificationUserInfoForEffect(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXSetFilterNotificationEffectIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAddStickerNotificationUserInfo(void *a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v18[0] = a1;
  v17[0] = @"JFXAddStickerNotificationDataUserInfoKey";
  v17[1] = @"JFXAddStickerNotificationOffsetUserInfoKey";
  v9 = a1;
  v20.x = a2;
  v20.y = a3;
  v10 = NSStringFromCGPoint(v20);
  v18[1] = v10;
  v17[2] = @"JFXAddStickerNotificationScaleUserInfoKey";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v12 = [v11 stringValue];
  v18[2] = v12;
  v17[3] = @"JFXAddStickerNotificationRotationUserInfoKey";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v14 = [v13 stringValue];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

id JFXAddStickerNotificationUserInfoForEffect(void *a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v18[0] = a1;
  v17[0] = @"JFXAddStickerNotificationEffectIdentifierUserInfoKey";
  v17[1] = @"JFXAddStickerNotificationOffsetUserInfoKey";
  v9 = a1;
  v20.x = a2;
  v20.y = a3;
  v10 = NSStringFromCGPoint(v20);
  v18[1] = v10;
  v17[2] = @"JFXAddStickerNotificationScaleUserInfoKey";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v12 = [v11 stringValue];
  v18[2] = v12;
  v17[3] = @"JFXAddStickerNotificationRotationUserInfoKey";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v14 = [v13 stringValue];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

id JFXAddTextNotificationUserInfoForEffect(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"JFXAddTextNotificationEffectIdentifierUserInfoKey";
  v8[1] = @"JFXAddTextNotificationEffectStringUserInfoKey";
  v9[0] = a1;
  v9[1] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

id JFXOpenProjectNotificationUserInfo(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXOpenProjectIndexIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXPlayClipAtIndexNotificationUserInfo(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXPlayClipIndexIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXRecordNotificationUserInfo(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXRecordProjectIndexIdentifierUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXExportNotificationUserInfo(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"JFXExportProjectIndexIdentifierUserInfoKey";
  v8[1] = @"JFXExportAsMovieIdentifierUserInfoKey";
  v9[0] = a1;
  v9[1] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

id JFXEffectsRequestNotificationUserInfoForEffectsType(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXEffectsRequestNotificationUserInfoForEffectsTypeKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAspectRatioNotificationUserInfo(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"JFXAspectRatioRequestNotificationUserInfoKey";
  v6[0] = a1;
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id JFXAddShapeWithIdentifierNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddShapeNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXAddEffectWithIdentifierNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddEffectNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXAddEffectWithNameNotificationGetEffectName(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddEffectNotificationEffectNameUserInfoKey"];

  return v2;
}

id JFXAddAREffectWithIdentifierNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddAREffectNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXAddAREffectWithIdentifierNotificationGetReplayFilename(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddAREffectNotificationReplayFilenameUserInfoKey"];

  return v2;
}

id JFXAddPosterWithIdentifierNotificationGetPosterIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddPosterNotificationPosterIdentifierUserInfoKey"];

  return v2;
}

id JFXAddPosterWithNameNotificationGetPosterName(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddPosterNotificationPosterNameUserInfoKey"];

  return v2;
}

id JFXRemoveEffectsNotificationGetEffectTypeIdentifiers(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXRemoveEffectsNotificationEffectTypeIdentifiersUserInfoKey"];

  return v2;
}

id JFXSetAnimojiNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXSetAnimojiNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXSetMemojiNotificationGetFile(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXSetMemojiNotificationFileUserInfoKey"];

  return v2;
}

id JFXSetFilterNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXSetFilterNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXSetFilterNotificationGetEffectName(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXSetFilterNotificationEffectNameUserInfoKey"];

  return v2;
}

double JFXAddStickerNotificationGetOffset(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddStickerNotificationOffsetUserInfoKey"];

  *&v3 = *&CGPointFromString(v2);
  return v3;
}

double JFXAddStickerNotificationGetRotation(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddStickerNotificationRotationUserInfoKey"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

double JFXAddStickerNotificationGetScale(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddStickerNotificationScaleUserInfoKey"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id JFXAddStickerNotificationGetData(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddStickerNotificationDataUserInfoKey"];

  return v2;
}

id JFXAddStickerNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddStickerNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXAddTextNotificationGetEffectIdentifier(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddTextNotificationEffectIdentifierUserInfoKey"];

  return v2;
}

id JFXAddTextNotificationGetEffectString(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAddTextNotificationEffectStringUserInfoKey"];

  return v2;
}

id JFXOpenProjectGetProjectIndex(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXOpenProjectIndexIdentifierUserInfoKey"];

  return v2;
}

id JFXPlayGetClipIndex(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXPlayClipIndexIdentifierUserInfoKey"];

  return v2;
}

id JFXRecordGetDuration(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXRecordProjectIndexIdentifierUserInfoKey"];

  return v2;
}

id JFXExportGetProjectIndex(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXExportProjectIndexIdentifierUserInfoKey"];

  return v2;
}

id JFXExportGetAsMovie(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXExportAsMovieIdentifierUserInfoKey"];

  return v2;
}

id JFXEffectsRequestGetEffectsType(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXEffectsRequestNotificationUserInfoForEffectsTypeKey"];

  return v2;
}

id JFXGetAspectRatio(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"JFXAspectRatioRequestNotificationUserInfoKey"];

  return v2;
}

id stringForAspectRatio(unint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] jfxBundle];
  v3 = v2;
  if (a1 > 4)
  {
    v4 = @"ASPECT_RATIO_UNKNOWN";
  }

  else
  {
    v4 = off_278D7AF50[a1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_28553D028 table:0];

  return v5;
}

uint64_t aspectRatioForString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] jfxBundle];
  v3 = [v2 localizedStringForKey:@"ASPECT_RATIO_9X16" value:&stru_28553D028 table:0];

  v4 = [v1 localizedStandardCompare:v3];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] jfxBundle];
    v6 = [v5 localizedStringForKey:@"ASPECT_RATIO_3X4" value:&stru_28553D028 table:0];

    v7 = [v1 localizedStandardCompare:v6];
    if (v7)
    {
      v8 = [MEMORY[0x277CCA8D8] jfxBundle];
      v9 = [v8 localizedStringForKey:@"SQUARE" value:&stru_28553D028 table:0];

      v10 = [v1 localizedStandardCompare:v9];
      if (v10)
      {
        v11 = [MEMORY[0x277CCA8D8] jfxBundle];
        v12 = [v11 localizedStringForKey:@"ASPECT_RATIO_16X9" value:&stru_28553D028 table:0];

        v13 = [v1 localizedStandardCompare:v12];
        if (v13)
        {
          v14 = [MEMORY[0x277CCA8D8] jfxBundle];
          v15 = [v14 localizedStringForKey:@"ASPECT_RATIO_4X3" value:&stru_28553D028 table:0];

          v16 = [v1 localizedStandardCompare:v15];
          if (v16)
          {
            v4 = 5;
          }

          else
          {
            v4 = 4;
          }
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

double multiplierForAspectRatio(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 4)
  {
    return dbl_242B5BA00[a1];
  }

  return result;
}

uint64_t aspectRatioForMultiplier(double a1)
{
  for (result = 0; result != 5; ++result)
  {
    if (vabdd_f64(dbl_242B5BA00[result], a1) < 0.00000011920929)
    {
      break;
    }
  }

  return result;
}

double sizeForAspectRatio(unint64_t a1)
{
  v1 = &unk_242B5B9B0 + 8 * a1;
  if (a1 >= 5)
  {
    v1 = MEMORY[0x277CBF3A8];
  }

  return *v1;
}

uint64_t PVViewContentModeFromAspectRatioPreservationMode(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 1);
  }
}

uint64_t aspectRatioPreservationModeFromPVViewContentMode(int a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

double rectWithAspectRatioAndPreservationModeInRectWithSize(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = 0.0;
  if (a1 <= 4)
  {
    v4 = dbl_242B5BA00[a1];
  }

  if ((a2 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = a3 / v4;
    if (a4 * v4 < a3)
    {
      v7 = a3 / v4;
    }

    else
    {
      v7 = a4;
    }

    if (v6 < a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a3 / v4;
    }

    if (a3 > a4)
    {
      v7 = v8;
    }

    if (v6 > a4)
    {
      v6 = a4;
    }

    if (a2 != 1)
    {
      v6 = v7;
    }

    v5 = v4 * v6;
  }

  else
  {
    v5 = a3;
  }

  return (a3 - v5) * 0.5 + 0.0;
}

uint64_t aspectRatioAdjustedForOrientation(uint64_t result, uint64_t a2)
{
  if (result <= 1)
  {
    if (!result)
    {
      v2 = 607.5;
      goto LABEL_13;
    }

    if (result == 1)
    {
      v2 = 810.0;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0.0;
    goto LABEL_13;
  }

  if (result == 2)
  {
    return result;
  }

  if (result == 3)
  {
    v2 = 1920.0;
    goto LABEL_13;
  }

  if (result != 4)
  {
    goto LABEL_12;
  }

  v2 = 1440.0;
LABEL_13:
  if ((a2 - 3) > 1)
  {
    if ((a2 - 1) > 1)
    {
      v3 = 1080.0;
    }

    else
    {
      if (v2 >= 1080.0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 1080.0;
      }

      v2 = fmin(v2, 1080.0);
    }
  }

  else
  {
    v3 = fmin(v2, 1080.0);
    if (v2 < 1080.0)
    {
      v2 = 1080.0;
    }
  }

  return aspectRatioForMultiplier(v2 / v3);
}

BOOL aspectRatioIsLandscape(unint64_t a1)
{
  v1 = 0.0;
  if (a1 <= 4)
  {
    v1 = dbl_242B5BA00[a1];
  }

  return fabs(v1 + -1.0) >= 0.00000011920929 && v1 > 1.0;
}

BOOL aspectRatioIsPortrait(unint64_t a1)
{
  v1 = 0.0;
  if (a1 <= 4)
  {
    v1 = dbl_242B5BA00[a1];
  }

  return fabs(v1 + -1.0) < 0.00000011920929 || v1 < 1.0;
}

uint64_t complementaryAspectRatio(unint64_t a1)
{
  if (a1 > 4)
  {
    return 2;
  }

  else
  {
    return qword_242B5BA28[a1];
  }
}

void sub_242A96128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242A97B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A97FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_242A9A170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242A9DD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A9E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9E5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9E818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9E990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9EC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9EE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242A9F474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9FBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242A9FED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AA0444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AA05EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isFaceTrackingEnabledOnBackCamera()
{
  if (isFaceTrackingEnabledOnBackCamera_onceToken != -1)
  {
    isFaceTrackingEnabledOnBackCamera_cold_1();
  }

  return isFaceTrackingEnabledOnBackCamera_result;
}

void __isFaceTrackingEnabledOnBackCamera_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"JFX_EnableFaceTrackingBackCamera"];

  v1 = v2;
  if (v2)
  {
    isFaceTrackingEnabledOnBackCamera_result = [v2 BOOLValue];
    v1 = v2;
  }
}

uint64_t JFX_isDrawInstructionGraphNodesEnabled()
{
  if (JFX_isDrawInstructionGraphNodesEnabled_onceToken != -1)
  {
    JFX_isDrawInstructionGraphNodesEnabled_cold_1();
  }

  return JFX_isDrawInstructionGraphNodesEnabled_enabled;
}

uint64_t JFX_isShowHDRBadgeInPreviewEnabled()
{
  if (JFX_isShowHDRBadgeInPreviewEnabled_onceToken != -1)
  {
    JFX_isShowHDRBadgeInPreviewEnabled_cold_1();
  }

  return JFX_isShowHDRBadgeInPreviewEnabled_showHDRBadgeInPreview;
}

uint64_t JFX_isDrawOverlayBoundsEnabled()
{
  if (JFX_isDrawOverlayBoundsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsEnabled_cold_1();
  }

  return JFX_isDrawOverlayBoundsEnabled_drawOverlayBounds;
}

id JFX_getDrawOverlayBoundsOptionsDictionary()
{
  if (JFX_isDrawOverlayBoundsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsEnabled_cold_1();
  }

  if (JFX_isDrawOverlayBoundsEnabled_drawOverlayBounds == 1)
  {
    v0 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:11];
    v1 = JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled();
    if (v1)
    {
      [v0 setObject:v1 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowDocumentBoundingBox"];
    }

    v2 = JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled();
    if (v2)
    {
      [v0 setObject:v2 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowObjectAlignedBoundingBox"];
    }

    v3 = JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled();
    if (v3)
    {
      [v0 setObject:v3 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTextBoundingBoxes"];
    }

    v4 = JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled();
    if (v4)
    {
      [v0 setObject:v4 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowHitAreaBoundingBox"];
    }

    v5 = JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled();
    if (v5)
    {
      [v0 setObject:v5 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowFaceRect"];
    }

    v6 = JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled();
    if (v6)
    {
      [v0 setObject:v6 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTapPoints"];
    }

    v7 = JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled();
    if (v7)
    {
      [v0 setObject:v7 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowCornerPoints"];
    }

    v8 = JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled();
    if (v8)
    {
      [v0 setObject:v8 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTextCornerPoints"];
    }

    v9 = JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled();
    if (v9)
    {
      [v0 setObject:v9 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowHitAreaPoints"];
    }

    v10 = JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled();
    if (v10)
    {
      [v0 setObject:v10 forKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowAdditionalRects"];
    }
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled_n;

  return v1;
}

id JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled()
{
  if (JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled_onceToken != -1)
  {
    JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled_cold_1();
  }

  v1 = JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled_n;

  return v1;
}

void sub_242AAF2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242AB0B94(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = JFXLog_playback();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 description];
      [JFXCompositionTrackGroup commitVolumeRampFromStartVolume:v5 toEndVolume:(v2 - 160) timeRange:v4];
    }

    objc_end_catch();
    JUMPOUT(0x242AB08C4);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_242AB3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AB3798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AB38B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AB3A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id CoreGraphicsSerializationQueue()
{
  if (CoreGraphicsSerializationQueue_onceToken != -1)
  {
    CoreGraphicsSerializationQueue_cold_1();
  }

  v1 = CoreGraphicsSerializationQueue_sCGSerializationQueue;

  return v1;
}

void __CoreGraphicsSerializationQueue_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"MiroDisableCGSerialization"];

  if (v1)
  {
    attr = MEMORY[0x277D85CD8];
    v2 = MEMORY[0x277D85CD8];
  }

  else
  {
    attr = 0;
  }

  v3 = dispatch_queue_create("com.apple.VEiOSCommon.CGSerialization", attr);
  v4 = CoreGraphicsSerializationQueue_sCGSerializationQueue;
  CoreGraphicsSerializationQueue_sCGSerializationQueue = v3;
}

void compositeCGImageRefInRect(CGImage *a1, CGBlendMode a2, CGFloat a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, float a11)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetBlendMode(CurrentContext, a2);
  CGContextSetAlpha(CurrentContext, a11);
  CGContextTranslateCTM(CurrentContext, a3, a4 + a6);
  CGContextScaleCTM(CurrentContext, a5 / a9, -a6 / a10);
  v29.origin.x = a7;
  v29.origin.y = a8;
  v29.size.width = a9;
  v29.size.height = a10;
  v30 = CGRectOffset(v29, -a7, -a8);
  CGContextDrawImage(CurrentContext, v30, a1);

  CGContextRestoreGState(CurrentContext);
}

void sub_242AB5478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AB56D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242AB5AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AB5D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void JFX_getFrontAndBackCameras(void *a1, void *a2, void *a3)
{
  if (JFX_getFrontAndBackCameras_onceToken == -1)
  {
    if (!a1)
    {
LABEL_3:
      if (!a2 && !a3)
      {
        return;
      }
    }
  }

  else
  {
    +[JFXVideoCameraController initialize];
    if (!a1)
    {
      goto LABEL_3;
    }
  }

  dispatch_group_wait(JFX_getFrontAndBackCameras_s_group, 0xFFFFFFFFFFFFFFFFLL);
  if (a1)
  {
    *a1 = JFX_getFrontAndBackCameras_s_frontCamera;
  }

  if (a2)
  {
    *a2 = JFX_getFrontAndBackCameras_s_frontUltraWideCamera;
  }

  if (a3)
  {
    *a3 = JFX_getFrontAndBackCameras_s_backCamera;
  }

  if (a2)
  {
    *a2 = JFX_getFrontAndBackCameras_s_frontUltraWideCamera;
  }
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void JFX_configureCaptureDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = 0;
  v5 = [v3 lockForConfiguration:&v9];
  v6 = v9;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = JFXLog_DebugCamera();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      JFX_configureCaptureDevice_cold_1(v5);
    }
  }

  else
  {
    v4[2](v4, v3);
    [v3 unlockForConfiguration];
  }
}

void JFX_configureCaptureSession(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 beginConfiguration];
  v3[2](v3, v4);

  [v4 commitConfiguration];
}

void sub_242ABEC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice(uint64_t a1)
{
  if (JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice_onceToken != -1)
  {
    JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice_cold_1();
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;
  v4 = JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice_s_isStreamingMode;

  if ((v3 & v4) != 0)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

void sub_242AC061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void JFX_logCameraIntrinsics(simd_float3x3 a1)
{
  pv_focal_length_from_intrinsics(a1);
  v2 = v1;
  pv_principal_point_from_intrinsics(a1);
  v4 = v3;
  v5 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    JFX_logCameraIntrinsics_cold_1();
  }

  v6 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    JFX_logCameraIntrinsics_cold_2(v2);
  }

  v7 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    JFX_logCameraIntrinsics_cold_3();
  }

  v8 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    JFX_logCameraIntrinsics_cold_4(v4);
  }

  pv_resolution_from_principal_point();
  pv_fov_from_intrinsics();
  v10 = v9;
  v11 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    JFX_logCameraIntrinsics_cold_5(v10);
  }

  v12 = JFXLog_DebugFaceAnchor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    JFX_logCameraIntrinsics_cold_6(v10);
  }
}

void sub_242AC23E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_242AC3244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AC3674(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x242AC3530);
}

void JFXDistanceTransformEuclidean(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if ((a4 & 3) == 0)
  {
    if ((-858993459 * a3 + 429496729) < 0x33333333)
    {
      operator new[]();
    }

    JFXDistanceTransformEuclidean_cold_2();
  }

  JFXDistanceTransformEuclidean_cold_1();
}

uint64_t __JFXDistanceTransformEuclidean_block_invoke(uint64_t result, double a2, double a3, double a4, double a5, int8x16_t a6)
{
  v6 = result;
  v7 = *(result + 48);
  v8 = v7 + 7;
  if (v7 >= 0)
  {
    v8 = *(result + 48);
  }

  v9 = v8 & 0xFFFFFFF8;
  if (v7 >= 8)
  {
    v10 = 0;
    do
    {
      result = distancesForWColumns<(SIMDWidth)8>(*(v6 + 32), v10, *(v6 + 40), *(v6 + 52), *(v6 + 56), *(v6 + 60));
      v10 += 8;
    }

    while (v10 < v9);
    v7 = *(v6 + 48);
  }

  if (v9 < v7)
  {
    v11 = v9;
    v12 = 4 * v9;
    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    do
    {
      v14 = *(v6 + 56);
      if (v14 >= 1)
      {
        v15 = *(v6 + 32);
        v16 = *(v6 + 40);
        v17 = vdupq_n_s32(v14);
        v18 = *(v6 + 52);
        v19 = (v16 + v12);
        v20 = *&vdup_n_s16(-*(v6 + 60)) & 0xFF00FF00FF00FFLL;
        v21 = v15;
        v22 = *(v6 + 56);
        v23 = v17;
        do
        {
          a6.i32[0] = *(v21 + v11);
          a6 = vmovl_s16(vceq_s16(*&vmovl_u8(*a6.i8), v20));
          v23 = vandq_s8(vaddq_s32(v23, v13), a6);
          *v19 = v23;
          v19 = (v19 + 4 * v18);
          v21 += v18;
          --v22;
        }

        while (v22);
        v24 = v14 + 1;
        v25 = (v14 - 1) * v18;
        v26 = v16 + 4 * v25;
        v27 = -4 * v18;
        v28 = v15 + v25;
        v29 = -v18;
        do
        {
          v23.i32[0] = *(v28 + v11);
          v17 = vandq_s8(vaddq_s32(v17, v13), vmovl_s16(vceq_s16(*&vmovl_u8(*v23.i8), v20)));
          v30 = vminq_s32(v17, *(v26 + v12));
          v23 = vmulq_s32(v30, v30);
          *(v26 + v12) = v23;
          --v24;
          v26 += v27;
          v28 += v29;
        }

        while (v24 > 1);
        v7 = *(v6 + 48);
      }

      v11 += 4;
      v12 += 16;
    }

    while (v11 < v7);
  }

  return result;
}

uint64_t distancesForWColumns<(SIMDWidth)8>(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5, int a6)
{
  if (a5 >= 1)
  {
    v6 = vdup_n_s8(a6 << 31 >> 31);
    v7 = vdupq_n_s32(a5);
    v8 = (result + a2);
    v9 = (a3 + 4 * a2);
    v10.i64[0] = 0x100000001;
    v10.i64[1] = 0x100000001;
    v11 = a5;
    v12 = v7;
    v13 = v7;
    do
    {
      v14 = vmovl_s8(vceq_s8(*v8, v6));
      v12 = vandq_s8(vaddq_s32(v12, v10), vmovl_s16(*v14.i8));
      v13 = vandq_s8(vaddq_s32(v13, v10), vmovl_high_s16(v14));
      *v9 = v12;
      v9[1] = v13;
      v8 = (v8 + a4);
      v9 = (v9 + 4 * a4);
      --v11;
    }

    while (v11);
    v15 = a5 + 1;
    v16 = (a5 - 1) * a4;
    v17 = (result + a2 + v16);
    v18 = (a3 + 4 * v16 + 4 * a2);
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20 = v7;
    do
    {
      v21 = vmovl_s8(vceq_s8(*v17, v6));
      v7 = vandq_s8(vaddq_s32(v7, v19), vmovl_s16(*v21.i8));
      v20 = vandq_s8(vaddq_s32(v20, v19), vmovl_high_s16(v21));
      v22 = vminq_s32(v18[1], v20);
      v23 = vminq_s32(*v18, v7);
      *v18 = vmulq_s32(v23, v23);
      v18[1] = vmulq_s32(v22, v22);
      --v15;
      v17 = (v17 - a4);
      v18 = (v18 - 4 * a4);
    }

    while (v15 > 1);
  }

  return result;
}

uint64_t __JFXDistanceTransformEuclidean_block_invoke_2(uint64_t result, int a2)
{
  v2 = *(result + 52);
  v3 = *(result + 48) + 8 * a2;
  if (v3 < v2)
  {
    v4 = result;
    do
    {
      result = distancesForWColumns<(SIMDWidth)8>(*(v4 + 32), v3, *(v4 + 40), v2, *(v4 + 56), *(v4 + 60));
      v3 += 40;
      v2 = *(v4 + 52);
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t __JFXDistanceTransformEuclidean_block_invoke_3()
{
  result = MEMORY[0x28223BE20]();
  if (*(result + 56) >= 5)
  {
    operator new[]();
  }

  return result;
}

void sub_242AC7468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromJFXEffectType(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"None";
  }

  else
  {
    return off_278D7BEB8[a1 - 1];
  }
}

uint64_t effectTypesIncompatibleWithType(int a1)
{
  if ((a1 - 1) > 7)
  {
    return MEMORY[0x277CBEBF8];
  }

  else
  {
    return qword_278D7BEF8[a1 - 1];
  }
}

BOOL isAddedMediaCompatibleWithEffectType(int a1, uint64_t a2)
{
  if ((a1 - 1) < 2)
  {
    return 1;
  }

  if (a1 != 7)
  {
    return a1 == 5;
  }

  return a2;
}

void SetError(void *a1, void *a2, uint64_t a3, void *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = a4;
    v8 = MEMORY[0x277CBEAC0];
    v9 = a4;
    v10 = a2;
    v11 = [v8 dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v7 errorWithDomain:v10 code:a3 userInfo:v11];

    v13 = v12;
    *a1 = v12;
  }
}

id BrightnessIdentifier()
{
  if (BrightnessIdentifier_onceToken != -1)
  {
    BrightnessIdentifier_cold_1();
  }

  v1 = BrightnessIdentifier_s_brightnessIdentifier;

  return v1;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242AD5464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __BrightnessIdentifier_block_invoke()
{
  BrightnessIdentifier_s_brightnessIdentifier = [MEMORY[0x277CE6520] identifierForKey:@"com.apple.clips.exif.brightness" keySpace:*MEMORY[0x277CE5FA8]];

  return MEMORY[0x2821F96F8]();
}

double CFXAspectRatioForAspectRatioCrop(uint64_t a1)
{
  result = 1.33333333;
  if (a1 == 2)
  {
    result = 1.0;
  }

  if (a1 == 1)
  {
    return 1.77777778;
  }

  return result;
}

uint64_t CFXCanonicalAspectRatioCropForCaptureModeAndDesiredAspectRatioCrop(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = CFXAspectRatioCropOverride();
  v4 = v3;
  if (v3)
  {
    v2 = [v3 integerValue];
  }

  return v2;
}

uint64_t CFXPreviewAspectRatioForAspectRatioCrop(uint64_t a1)
{
  v1 = 3;
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t JFXCameraModeForCaptureModeAndAspectRatioCrop(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    if (JFXLowResolutionDevice())
    {
      v5 = 2;
    }

    else
    {
      v6 = [MEMORY[0x277CF7EC0] preferences];
      v7 = [v6 videoConfiguration];

      if (v7 == 6)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }
    }

    if (CFXCaptureCapabilitiesIsHDRSupported())
    {
      v8 = [MEMORY[0x277CF7EC0] preferences];
      v9 = [v8 HDR10BitVideoEnabled];

      v10 = 4;
      if (v5 != 2)
      {
        v10 = 5;
      }

      if (v9)
      {
        return v10;
      }
    }
  }

  else if (a1)
  {
    return 0;
  }

  else
  {
    IsCTMSupported = CFXCaptureCapabilitiesIsCTMSupported();
    v4 = 6;
    if (a2 == 2)
    {
      v4 = 9;
    }

    if (a2 == 1)
    {
      v4 = 8;
    }

    if (IsCTMSupported)
    {
      return v4;
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

__CFString *NSStringFromCFXAspectRatioCrop(uint64_t a1)
{
  v1 = @"None (4:3)";
  if (a1 == 2)
  {
    v1 = @"1:1";
  }

  if (a1 == 1)
  {
    return @"16:9";
  }

  else
  {
    return v1;
  }
}

id JFXLog_animoji()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_animoji_logObj;
  v2[5] = "animoji";
  if (JFXLog_animoji_onceToken != -1)
  {
    dispatch_once(&JFXLog_animoji_onceToken, v2);
  }

  v0 = JFXLog_animoji_logObj;

  return v0;
}

id JFXLog_camera()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_camera_logObj;
  v2[5] = "camera";
  if (JFXLog_camera_onceToken != -1)
  {
    dispatch_once(&JFXLog_camera_onceToken, v2);
  }

  v0 = JFXLog_camera_logObj;

  return v0;
}

id JFXLog_clip()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_clip_logObj;
  v2[5] = "clip";
  if (JFXLog_clip_onceToken != -1)
  {
    dispatch_once(&JFXLog_clip_onceToken, v2);
  }

  v0 = JFXLog_clip_logObj;

  return v0;
}

id JFXLog_composition()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_composition_logObj;
  v2[5] = "composition";
  if (JFXLog_composition_onceToken != -1)
  {
    dispatch_once(&JFXLog_composition_onceToken, v2);
  }

  v0 = JFXLog_composition_logObj;

  return v0;
}

id JFXLog_compositionAudio()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_compositionAudio_logObj;
  v2[5] = "compositionAudio";
  if (JFXLog_compositionAudio_onceToken != -1)
  {
    dispatch_once(&JFXLog_compositionAudio_onceToken, v2);
  }

  v0 = JFXLog_compositionAudio_logObj;

  return v0;
}

id JFXLog_core()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_core_logObj;
  v2[5] = "core";
  if (JFXLog_core_onceToken != -1)
  {
    dispatch_once(&JFXLog_core_onceToken, v2);
  }

  v0 = JFXLog_core_logObj;

  return v0;
}

id JFXLog_depthCodec()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_depthCodec_logObj;
  v2[5] = "depthCodec";
  if (JFXLog_depthCodec_onceToken != -1)
  {
    dispatch_once(&JFXLog_depthCodec_onceToken, v2);
  }

  v0 = JFXLog_depthCodec_logObj;

  return v0;
}

id JFXLog_effectAssetDownloading()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_effectAssetDownloading_logObj;
  v2[5] = "effectAssetDownloading";
  if (JFXLog_effectAssetDownloading_onceToken != -1)
  {
    dispatch_once(&JFXLog_effectAssetDownloading_onceToken, v2);
  }

  v0 = JFXLog_effectAssetDownloading_logObj;

  return v0;
}

id JFXLog_effects()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_effects_logObj;
  v2[5] = "effects";
  if (JFXLog_effects_onceToken != -1)
  {
    dispatch_once(&JFXLog_effects_onceToken, v2);
  }

  v0 = JFXLog_effects_logObj;

  return v0;
}

id JFXLog_export()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_export_logObj;
  v2[5] = "export";
  if (JFXLog_export_onceToken != -1)
  {
    dispatch_once(&JFXLog_export_onceToken, v2);
  }

  v0 = JFXLog_export_logObj;

  return v0;
}

id JFXLog_facetracking()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_facetracking_logObj;
  v2[5] = "facetracking";
  if (JFXLog_facetracking_onceToken != -1)
  {
    dispatch_once(&JFXLog_facetracking_onceToken, v2);
  }

  v0 = JFXLog_facetracking_logObj;

  return v0;
}

id JFXLog_file()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_file_logObj;
  v2[5] = "file";
  if (JFXLog_file_onceToken != -1)
  {
    dispatch_once(&JFXLog_file_onceToken, v2);
  }

  v0 = JFXLog_file_logObj;

  return v0;
}

id JFXLog_pickerUI()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_pickerUI_logObj;
  v2[5] = "pickerUI";
  if (JFXLog_pickerUI_onceToken != -1)
  {
    dispatch_once(&JFXLog_pickerUI_onceToken, v2);
  }

  v0 = JFXLog_pickerUI_logObj;

  return v0;
}

id JFXLog_playback()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_playback_logObj;
  v2[5] = "playback";
  if (JFXLog_playback_onceToken != -1)
  {
    dispatch_once(&JFXLog_playback_onceToken, v2);
  }

  v0 = JFXLog_playback_logObj;

  return v0;
}

id JFXLog_matting()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_matting_logObj;
  v2[5] = "matting";
  if (JFXLog_matting_onceToken != -1)
  {
    dispatch_once(&JFXLog_matting_onceToken, v2);
  }

  v0 = JFXLog_matting_logObj;

  return v0;
}

id JFXLog_metadata()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_metadata_logObj;
  v2[5] = "metadata";
  if (JFXLog_metadata_onceToken != -1)
  {
    dispatch_once(&JFXLog_metadata_onceToken, v2);
  }

  v0 = JFXLog_metadata_logObj;

  return v0;
}

id JFXLog_mediaDataReader()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_mediaDataReader_logObj;
  v2[5] = "mediaDataReader";
  if (JFXLog_mediaDataReader_onceToken != -1)
  {
    dispatch_once(&JFXLog_mediaDataReader_onceToken, v2);
  }

  v0 = JFXLog_mediaDataReader_logObj;

  return v0;
}

id JFXLog_model()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_model_logObj;
  v2[5] = "model";
  if (JFXLog_model_onceToken != -1)
  {
    dispatch_once(&JFXLog_model_onceToken, v2);
  }

  v0 = JFXLog_model_logObj;

  return v0;
}

id JFXLog_modelAssetManagement()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_modelAssetManagement_logObj;
  v2[5] = "modelAssetManagement";
  if (JFXLog_modelAssetManagement_onceToken != -1)
  {
    dispatch_once(&JFXLog_modelAssetManagement_onceToken, v2);
  }

  v0 = JFXLog_modelAssetManagement_logObj;

  return v0;
}

id JFXLog_thermals()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_thermals_logObj;
  v2[5] = "thermals";
  if (JFXLog_thermals_onceToken != -1)
  {
    dispatch_once(&JFXLog_thermals_onceToken, v2);
  }

  v0 = JFXLog_thermals_logObj;

  return v0;
}

id JFXLog_viewerUI()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_viewerUI_logObj;
  v2[5] = "viewerUI";
  if (JFXLog_viewerUI_onceToken != -1)
  {
    dispatch_once(&JFXLog_viewerUI_onceToken, v2);
  }

  v0 = JFXLog_viewerUI_logObj;

  return v0;
}

id JFXLog_writer()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_writer_logObj;
  v2[5] = "writer";
  if (JFXLog_writer_onceToken != -1)
  {
    dispatch_once(&JFXLog_writer_onceToken, v2);
  }

  v0 = JFXLog_writer_logObj;

  return v0;
}

id JFXLog_DebugAnalytics()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugAnalytics_logObj;
  v2[5] = "DebugAnalytics";
  if (JFXLog_DebugAnalytics_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugAnalytics_onceToken, v2);
  }

  v0 = JFXLog_DebugAnalytics_logObj;

  return v0;
}

id JFXLog_DebugAnimoji()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugAnimoji_logObj;
  v2[5] = "DebugAnimoji";
  if (JFXLog_DebugAnimoji_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugAnimoji_onceToken, v2);
  }

  v0 = JFXLog_DebugAnimoji_logObj;

  return v0;
}

id JFXLog_DebugAnimojiPlayback()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugAnimojiPlayback_logObj;
  v2[5] = "DebugAnimojiPlayback";
  if (JFXLog_DebugAnimojiPlayback_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugAnimojiPlayback_onceToken, v2);
  }

  v0 = JFXLog_DebugAnimojiPlayback_logObj;

  return v0;
}

id JFXLog_DebugAudio()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugAudio_logObj;
  v2[5] = "DebugAudio";
  if (JFXLog_DebugAudio_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugAudio_onceToken, v2);
  }

  v0 = JFXLog_DebugAudio_logObj;

  return v0;
}

id JFXLog_DebugCamera()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugCamera_logObj;
  v2[5] = "DebugCamera";
  if (JFXLog_DebugCamera_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugCamera_onceToken, v2);
  }

  v0 = JFXLog_DebugCamera_logObj;

  return v0;
}

id JFXLog_DebugCapture()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugCapture_logObj;
  v2[5] = "DebugCapture";
  if (JFXLog_DebugCapture_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugCapture_onceToken, v2);
  }

  v0 = JFXLog_DebugCapture_logObj;

  return v0;
}

id JFXLog_DebugClip()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugClip_logObj;
  v2[5] = "DebugClip";
  if (JFXLog_DebugClip_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugClip_onceToken, v2);
  }

  v0 = JFXLog_DebugClip_logObj;

  return v0;
}

id JFXLog_DebugComposition()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugComposition_logObj;
  v2[5] = "DebugComposition";
  if (JFXLog_DebugComposition_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugComposition_onceToken, v2);
  }

  v0 = JFXLog_DebugComposition_logObj;

  return v0;
}

id JFXLog_DebugDataModel()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugDataModel_logObj;
  v2[5] = "DebugDataModel";
  if (JFXLog_DebugDataModel_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugDataModel_onceToken, v2);
  }

  v0 = JFXLog_DebugDataModel_logObj;

  return v0;
}

id JFXLog_DebugDepthCodec()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugDepthCodec_logObj;
  v2[5] = "DebugDepthCodec";
  if (JFXLog_DebugDepthCodec_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugDepthCodec_onceToken, v2);
  }

  v0 = JFXLog_DebugDepthCodec_logObj;

  return v0;
}

id JFXLog_DebugEffect()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugEffect_logObj;
  v2[5] = "DebugEffect";
  if (JFXLog_DebugEffect_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugEffect_onceToken, v2);
  }

  v0 = JFXLog_DebugEffect_logObj;

  return v0;
}

id JFXLog_DebugEffectAssetDownloading()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugEffectAssetDownloading_logObj;
  v2[5] = "DebugEffectAssetDownloading";
  if (JFXLog_DebugEffectAssetDownloading_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugEffectAssetDownloading_onceToken, v2);
  }

  v0 = JFXLog_DebugEffectAssetDownloading_logObj;

  return v0;
}

id JFXLog_DebugExport()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugExport_logObj;
  v2[5] = "DebugExport";
  if (JFXLog_DebugExport_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugExport_onceToken, v2);
  }

  v0 = JFXLog_DebugExport_logObj;

  return v0;
}

id JFXLog_DebugExposure()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugExposure_logObj;
  v2[5] = "DebugExposure";
  if (JFXLog_DebugExposure_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugExposure_onceToken, v2);
  }

  v0 = JFXLog_DebugExposure_logObj;

  return v0;
}

id JFXLog_DebugFaceAnchor()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugFaceAnchor_logObj;
  v2[5] = "DebugFaceAnchor";
  if (JFXLog_DebugFaceAnchor_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugFaceAnchor_onceToken, v2);
  }

  v0 = JFXLog_DebugFaceAnchor_logObj;

  return v0;
}

id JFXLog_DebugFaceTrackingPlayback()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugFaceTrackingPlayback_logObj;
  v2[5] = "DebugFaceTrackingPlayback";
  if (JFXLog_DebugFaceTrackingPlayback_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugFaceTrackingPlayback_onceToken, v2);
  }

  v0 = JFXLog_DebugFaceTrackingPlayback_logObj;

  return v0;
}

id JFXLog_DebugMatting()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugMatting_logObj;
  v2[5] = "DebugMatting";
  if (JFXLog_DebugMatting_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugMatting_onceToken, v2);
  }

  v0 = JFXLog_DebugMatting_logObj;

  return v0;
}

id JFXLog_DebugMediaDataReader()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugMediaDataReader_logObj;
  v2[5] = "DebugMediaDataReader";
  if (JFXLog_DebugMediaDataReader_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugMediaDataReader_onceToken, v2);
  }

  v0 = JFXLog_DebugMediaDataReader_logObj;

  return v0;
}

id JFXLog_DebugPlayback()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugPlayback_logObj;
  v2[5] = "DebugPlayback";
  if (JFXLog_DebugPlayback_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugPlayback_onceToken, v2);
  }

  v0 = JFXLog_DebugPlayback_logObj;

  return v0;
}

id JFXLog_DebugPickerPreviewing()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugPickerPreviewing_logObj;
  v2[5] = "DebugPickerPreviewing";
  if (JFXLog_DebugPickerPreviewing_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugPickerPreviewing_onceToken, v2);
  }

  v0 = JFXLog_DebugPickerPreviewing_logObj;

  return v0;
}

id JFXLog_DebugThermals()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugThermals_logObj;
  v2[5] = "DebugThermals";
  if (JFXLog_DebugThermals_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugThermals_onceToken, v2);
  }

  v0 = JFXLog_DebugThermals_logObj;

  return v0;
}

id JFXLog_DebugViewerUI()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugViewerUI_logObj;
  v2[5] = "DebugViewerUI";
  if (JFXLog_DebugViewerUI_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugViewerUI_onceToken, v2);
  }

  v0 = JFXLog_DebugViewerUI_logObj;

  return v0;
}

id JFXLog_DebugWriter()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugWriter_logObj;
  v2[5] = "DebugWriter";
  if (JFXLog_DebugWriter_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugWriter_onceToken, v2);
  }

  v0 = JFXLog_DebugWriter_logObj;

  return v0;
}

id JFXLog_DebugWriterReorder()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_DebugWriterReorder_logObj;
  v2[5] = "DebugWriterReorder";
  if (JFXLog_DebugWriterReorder_onceToken != -1)
  {
    dispatch_once(&JFXLog_DebugWriterReorder_onceToken, v2);
  }

  v0 = JFXLog_DebugWriterReorder_logObj;

  return v0;
}

id JFXLog_automation()
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __JFX_LogCategory_block_invoke_0;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &JFXLog_automation_logObj;
  v2[5] = "automation";
  if (JFXLog_automation_onceToken != -1)
  {
    dispatch_once(&JFXLog_automation_onceToken, v2);
  }

  v0 = JFXLog_automation_logObj;

  return v0;
}

void JFXAutomationLogForUserDefault(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEBD0];
  v5 = a1;
  v6 = [v4 standardUserDefaults];
  v7 = [v6 BOOLForKey:v5];

  if (v7)
  {
    v8 = JFXLog_automation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "[AUTO]: %@", &v9, 0xCu);
    }
  }
}

void JFXAutomationLogCameraPosition(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"Camera orientation set to Front";
  }

  else
  {
    v1 = @"Camera orientation set to Back";
  }

  JFXAutomationLogForUserDefault(@"autoLogCameraState", v1);
}

uint64_t isFrameMetricsLoggingEnabled()
{
  if (isFrameMetricsLoggingEnabled_onceToken != -1)
  {
    isFrameMetricsLoggingEnabled_cold_1();
  }

  return isFrameMetricsLoggingEnabled_isFrameMetricsLoggingEnabled;
}

void __isFrameMetricsLoggingEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"JFX_EnableFrameMetricsLogging"];

  v1 = v2;
  if (v2)
  {
    isFrameMetricsLoggingEnabled_isFrameMetricsLoggingEnabled = [v2 BOOLValue];
    v1 = v2;
  }
}

void JFXAutomationLogFrameMetrics(void *a1, CMTime *a2, CMTime *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (isFrameMetricsLoggingEnabled_onceToken != -1)
  {
    isFrameMetricsLoggingEnabled_cold_1();
  }

  if (isFrameMetricsLoggingEnabled_isFrameMetricsLoggingEnabled == 1)
  {
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    time = *a3;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frame Metrics - { event: %@, timestamp: %f, latency: %f }", v5, *&Seconds, CMTimeGetSeconds(&time)];
    v8 = JFXLog_automation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(time.value) = 138412290;
      *(&time.value + 4) = v7;
      _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "%@", &time, 0xCu);
    }
  }
}

uint64_t JFX_descriptionForEffectAssetContentType(uint64_t a1)
{
  if (JFX_descriptionForEffectAssetContentType_onceToken != -1)
  {
    JFX_descriptionForEffectAssetContentType_cold_1();
  }

  v2 = JFX_descriptionForEffectAssetContentType_values;

  return [v2 objectAtIndexedSubscript:a1];
}

uint64_t JFX_descriptionForEffectAssetAspectRatio(uint64_t a1)
{
  if (JFX_descriptionForEffectAssetAspectRatio_onceToken != -1)
  {
    JFX_descriptionForEffectAssetAspectRatio_cold_1();
  }

  v2 = JFX_descriptionForEffectAssetAspectRatio_values;

  return [v2 objectAtIndexedSubscript:a1];
}

uint64_t JFX_descriptionForEffectAssetUsageMode(uint64_t a1)
{
  if (JFX_descriptionForEffectAssetUsageMode_onceToken != -1)
  {
    JFX_descriptionForEffectAssetUsageMode_cold_1();
  }

  v2 = JFX_descriptionForEffectAssetUsageMode_values;

  return [v2 objectAtIndexedSubscript:a1];
}

void sub_242ADD3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242ADDDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242ADE674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242ADE810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242ADFB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

JFXFaceTrackedEffectTransform *JFXMakeFaceTrackedEffectTransformFaceCamera(void *x0_0)
{
  v1 = x0_0;
  [v1 cameraTransform];
  pv_simd_matrix_get_rotation_matrix(v38);
  [v1 onFaceTransform];
  pv_simd_matrix_translate();
  v35 = v3;
  v36 = v2;
  v33 = v5;
  v34 = v4;
  v6 = [JFXFaceTrackedEffectTransform alloc];
  [v1 cameraProjection];
  v31 = v8;
  v32 = v7;
  v29 = v10;
  v30 = v9;
  [v1 cameraTransform];
  v27 = v12;
  v28 = v11;
  v25 = v14;
  v26 = v13;
  [v1 billboardTransform];
  v23 = v16;
  v24 = v15;
  v21 = v18;
  v22 = v17;

  v19 = [(JFXFaceTrackedEffectTransform *)v6 initWithCameraProjection:v32 cameraTransform:v31 onFaceTransform:v30 billboardTransform:v29, v28, v27, v26, v25, v36, v35, v34, v33, v24, v23, v22, v21];

  return v19;
}

void sub_242AE7AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE7C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE7FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE8390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE89B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE8DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE9A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AE9E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AEA308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AEB858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_242AEBAC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_242AEC688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AEC808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242AEEC5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_242AF1368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AF6BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_242AF6E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_242AF8888(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x242AF8878);
}

void sub_242AF93D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_242AF9554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_242AF97B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_242B087CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

id exifMetadataForCVPixelBuffer(const void *a1)
{
  attachmentModeOut = 1;
  v1 = CMGetAttachment(a1, *MEMORY[0x277CD3038], &attachmentModeOut);

  return v1;
}

id exifMetadataForCMSampleBuffer(const void *a1)
{
  attachmentModeOut = 1;
  v1 = CMGetAttachment(a1, *MEMORY[0x277CD3038], &attachmentModeOut);

  return v1;
}

float exifBrightnessFromEXIFMetadata(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 objectForKeyedSubscript:@"BrightnessValue"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

float shutterSpeedFromEXIFMetadata(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 objectForKeyedSubscript:@"ShutterSpeedValue"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

float exposureTimeFromEXIFMetadata(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 objectForKeyedSubscript:@"ExposureTime"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = NAN;
  }

  return v6;
}

float isoFromEXIFMetadata(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 objectForKeyedSubscript:@"ISOSpeedRatings"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v8 = NAN;
  }

  return v8;
}

void exposureOffsetFromEXIFMetadata(void *a1)
{
  v1 = exifBrightnessFromEXIFMetadata(a1);
  exp(v1 * -0.5 + -2.0);
  exp((v1 + 3.0));
}

void logMetadataFromEXIFMetadata(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = JFXLog_DebugExposure();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      logMetadataFromEXIFMetadata_cold_1(v1, v2);
    }
  }
}

uint64_t createReadonlyCMBlockBufferFromNSData(CMBlockBufferRef *a1, void *a2)
{
  HIDWORD(customBlockSource.AllocateBlock) = 0;
  *&customBlockSource.version = 0;
  customBlockSource.FreeBlock = releaseNSData;
  customBlockSource.refCon = a2;
  v3 = customBlockSource.refCon;
  v4 = [v3 bytes];
  v5 = [v3 length];
  v6 = [v3 length];

  return CMBlockBufferCreateWithMemoryBlock(0, v4, v5, 0, &customBlockSource, 0, v6, 0, a1);
}

CVPixelBufferRef createFloat32DepthImageForAVDepthData(void *a1)
{
  v1 = a1;
  if ([v1 depthDataType] == 1717855600)
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 depthDataByConvertingToDepthDataType:1717855600];
  }

  v3 = v2;
  v4 = CVPixelBufferRetain([v2 depthDataMap]);

  return v4;
}

CVPixelBufferRef createContiguousFloat32DepthImageForAVDepthData(void *a1)
{
  v23[4] = *MEMORY[0x277D85DE8];
  Float32DepthImageForAVDepthData = createFloat32DepthImageForAVDepthData(a1);
  v2 = Float32DepthImageForAVDepthData;
  if (Float32DepthImageForAVDepthData && CVPixelBufferGetPixelFormatType(Float32DepthImageForAVDepthData) == 1717855600)
  {
    Width = CVPixelBufferGetWidth(v2);
    Height = CVPixelBufferGetHeight(v2);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
    if (BytesPerRow == 4 * Width)
    {
      v6 = JFXLog_DebugDepthCodec();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        createContiguousFloat32DepthImageForAVDepthData_cold_1();
      }

      return CVPixelBufferRetain(v2);
    }

    else
    {
      v7 = BytesPerRow;
      pixelBuffer = 0;
      v8 = *MEMORY[0x277CC4DE8];
      v23[0] = MEMORY[0x277CBEC10];
      v9 = *MEMORY[0x277CC4EC8];
      v22[0] = v8;
      v22[1] = v9;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Width];
      v23[1] = v10;
      v22[2] = *MEMORY[0x277CC4DD8];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:Height];
      v23[2] = v11;
      v22[3] = *MEMORY[0x277CC4E30];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1717855600];
      v23[3] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

      CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x66646570u, v13, &pixelBuffer);
      if (pixelBuffer)
      {
        CVPixelBufferLockBaseAddress(v2, 1uLL);
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        if (Height >= 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 4 * Width;
          v17 = Height & 0x7FFFFFFF;
          do
          {
            BaseAddress = CVPixelBufferGetBaseAddress(v2);
            v19 = CVPixelBufferGetBaseAddress(pixelBuffer);
            memcpy(&v19[v15], &BaseAddress[v14], v16);
            v15 += v16;
            v14 += v7;
            --v17;
          }

          while (v17);
        }

        CVPixelBufferUnlockBaseAddress(v2, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        v2 = pixelBuffer;
      }
    }
  }

  return v2;
}

BOOL JFXOSVersionIsAbove(void *a1)
{
  v1 = JFXOSVersionIsAbove_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    JFXOSVersionIsAbove_cold_1();
  }

  v3 = [JFXOSVersionIsAbove_systemVersion compare:v2 options:64];

  return v3 < 2;
}

void __JFXOSVersionIsAbove_block_invoke()
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v0 = [v2 systemVersion];
  v1 = JFXOSVersionIsAbove_systemVersion;
  JFXOSVersionIsAbove_systemVersion = v0;
}

void HEVCLosslessEncoder::HEVCLosslessEncoder(HEVCLosslessEncoder *this)
{
  *&this->var6 = 0x800000000;
  *&this->var0 = 0x2D000000500;
  this->var2 = 30.0;
  this->var3 = 0;
  *&this->var4.var0 = xmmword_242B5CC40;
  this->var4.var4 = 1.0;
  *&this->var4.var5 = 65792;
}

{
  *&this->var6 = 0x800000000;
  *&this->var0 = 0x2D000000500;
  this->var2 = 30.0;
  this->var3 = 0;
  *&this->var4.var0 = xmmword_242B5CC40;
  this->var4.var4 = 1.0;
  *&this->var4.var5 = 65792;
}

uint64_t HEVCLosslessEncoder::Open(HEVCLosslessEncoder *a1, int32_t a2, int32_t a3, int a4, void (__cdecl *a5)(void *, void *, OSStatus, VTEncodeInfoFlags, CMSampleBufferRef), void *a6, double a7)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2 < 64 || a3 <= 63)
  {
    v14 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::Open();
    }
  }

  a1->var0 = a2;
  a1->var1 = a3;
  a1->var2 = a7;
  a1->var8 = 1752589105;
  v15 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v29 = 2048;
    v30 = a7;
    _os_log_debug_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEBUG, "########### HEVCLosslessEncoder::Open w = %d, h = %d, frameRate=%f", buf, 0x18u);
  }

  if (a1->var3)
  {
LABEL_9:
    if (a4 > 5)
    {
      if (a4 > 8)
      {
        if (a4 == 9)
        {
          a1->var7 = 10;
          a1->var4.var0 = 9;
          v16 = 1010;
          goto LABEL_31;
        }

        if (a4 == 10)
        {
          a1->var7 = 8;
          a1->var4.var0 = 10;
          v16 = 1008;
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      if ((a4 - 7) < 2)
      {
LABEL_22:
        a1->var7 = 10;
        v16 = 1310;
        goto LABEL_31;
      }

      if (a4 != 6)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a4 <= 2)
      {
        if ((a4 - 1) < 2)
        {
          a1->var7 = 8;
          v16 = 1308;
LABEL_31:
          a1->var4.var2 = v16;
          v21 = JFXLog_DebugDepthCodec();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            HEVCLosslessEncoder::Open();
          }

          a1->var4.var5 = 1;
          HEVCLosslessEncoder::ConfigEncoder(a1, &a1->var4);
          return 0;
        }

LABEL_29:
        a1->var7 = 8;
        v16 = 1;
        goto LABEL_31;
      }

      if ((a4 - 4) < 2)
      {
        goto LABEL_22;
      }

      if (a4 != 3)
      {
        goto LABEL_29;
      }
    }

    a1->var7 = 10;
    v16 = 2;
    goto LABEL_31;
  }

  v17 = *MEMORY[0x277CE2BB0];
  v23[0] = *MEMORY[0x277CE2BA8];
  v23[1] = v17;
  v24[0] = MEMORY[0x277CBEC38];
  v24[1] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v19 = VTCompressionSessionCreate(*MEMORY[0x277CBECE8], a2, a3, a1->var8, v18, 0, 0, a5, a6, &a1->var3);
  if (!v19)
  {

    goto LABEL_9;
  }

  v20 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::Open();
  }

  return v19;
}

uint64_t HEVCLosslessEncoder::ConfigEncoder(HEVCLosslessEncoder *this, EncoderConfig *a2)
{
  v4 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  v5 = *&a2->var0;
  *&this->var4.var4 = *&a2->var4;
  *&this->var4.var0 = v5;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &a2->var1);
  v8 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  v9 = VTSessionSetProperty(this->var3, *MEMORY[0x277CE2608], v7);
  CFRelease(v7);
  if (v9)
  {
    v10 = JFXLog_DebugDepthCodec();
    v11 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_78;
  }

  var2 = a2->var2;
  if (var2 > 121)
  {
    if (var2 > 1009)
    {
      switch(var2)
      {
        case 1010:
          v13 = MEMORY[0x277CE29B8];
          goto LABEL_35;
        case 1308:
          v13 = MEMORY[0x277CE29A0];
          goto LABEL_35;
        case 1310:
          v13 = MEMORY[0x277CE2998];
          goto LABEL_35;
      }
    }

    else
    {
      switch(var2)
      {
        case 122:
          v13 = MEMORY[0x277CE2928];
          goto LABEL_35;
        case 244:
          v13 = MEMORY[0x277CE2930];
          goto LABEL_35;
        case 1008:
          v13 = MEMORY[0x277CE29C0];
          goto LABEL_35;
      }
    }

LABEL_53:
    v10 = JFXLog_DebugDepthCodec();
    v11 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_78;
  }

  if (var2 > 65)
  {
    switch(var2)
    {
      case 'B':
        v13 = MEMORY[0x277CE2918];
        goto LABEL_35;
      case 'M':
        v13 = MEMORY[0x277CE2988];
        goto LABEL_35;
      case 'd':
        v13 = MEMORY[0x277CE2938];
        goto LABEL_35;
    }

    goto LABEL_53;
  }

  if (var2 == 1)
  {
    v13 = MEMORY[0x277CE29B0];
    goto LABEL_35;
  }

  if (var2 == 2)
  {
    v13 = MEMORY[0x277CE2990];
    goto LABEL_35;
  }

  if (var2 != 3)
  {
    goto LABEL_53;
  }

  v13 = MEMORY[0x277CE29A8];
LABEL_35:
  v14 = *v13;
  v15 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  if (VTSessionSetProperty(this->var3, *MEMORY[0x277CE25D8], v14))
  {
    v10 = JFXLog_DebugDepthCodec();
    v11 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_78;
  }

  v16 = *MEMORY[0x277CBED28];
  v17 = *MEMORY[0x277CBED10];
  if (a2->var8)
  {
    v18 = *MEMORY[0x277CBED28];
  }

  else
  {
    v18 = *MEMORY[0x277CBED10];
  }

  v19 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  if (VTSessionSetProperty(this->var3, *MEMORY[0x277CE2500], v18))
  {
    v10 = JFXLog_DebugDepthCodec();
    v11 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_78;
  }

  v20 = CFNumberCreate(v6, kCFNumberDoubleType, &a2->var4);
  v21 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  v22 = VTSessionSetProperty(this->var3, *MEMORY[0x277CE25A8], v20);
  CFRelease(v20);
  if (v22)
  {
    v10 = JFXLog_DebugDepthCodec();
    v11 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_78;
  }

  v23 = CFNumberCreate(v6, kCFNumberDoubleType, &this->var2);
  v24 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  v25 = VTSessionSetProperty(this->var3, *MEMORY[0x277CE2548], v23);
  CFRelease(v23);
  if (v25)
  {
    v10 = JFXLog_DebugDepthCodec();
    v11 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_78;
  }

  if (a2->var5)
  {
    v26 = &unk_28556D828;
  }

  else
  {
    v26 = &unk_28556D838;
  }

  v10 = v26;
  v27 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  if (VTSessionSetProperty(this->var3, *MEMORY[0x277CE25E0], v10))
  {
    v28 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

LABEL_77:
    v11 = 2;
    goto LABEL_78;
  }

  if (a2->var6)
  {
    v29 = v16;
  }

  else
  {
    v29 = v17;
  }

  v30 = JFXLog_DebugDepthCodec();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  v31 = VTSessionSetProperty(this->var3, *MEMORY[0x277CE25F0], v29);
  v10 = JFXLog_DebugDepthCodec();
  v32 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v31)
  {
    if (v32)
    {
      HEVCLosslessEncoder::ConfigEncoder();
    }

    goto LABEL_77;
  }

  if (v32)
  {
    HEVCLosslessEncoder::ConfigEncoder();
  }

  v11 = 0;
LABEL_78:

  return v11;
}

uint64_t HEVCLosslessEncoder::Close(HEVCLosslessEncoder *this)
{
  var3 = this->var3;
  var5 = this->var5;
  VTCompressionSessionCompleteFrames(var3, &var5);
  v3 = this->var3;
  if (v3)
  {
    CFRelease(v3);
    this->var3 = 0;
  }

  return 0;
}

uint64_t HEVCLosslessEncoder::EncodeFrame(HEVCLosslessEncoder *this, __CVBuffer *a2, CMTime *a3, CFDictionaryRef frameProperties)
{
  infoFlagsOut = 0;
  var3 = this->var3;
  presentationTimeStamp = *a3;
  v11 = **&MEMORY[0x277CC0898];
  v7 = VTCompressionSessionEncodeFrame(var3, a2, &presentationTimeStamp, &v11, frameProperties, 0, &infoFlagsOut);
  if (v7)
  {
    v8 = JFXLog_DebugDepthCodec();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      HEVCLosslessEncoder::EncodeFrame();
    }
  }

  else
  {
    v9 = *&a3->value;
    this->var5.var3 = a3->epoch;
    *&this->var5.var0 = v9;
    ++this->var6;
  }

  return v7;
}

__n128 HEVCLosslessEncoder::GetEncoderConfig(HEVCLosslessEncoder *this, EncoderConfig *a2)
{
  if (a2)
  {
    result = *&this->var4.var0;
    v3 = *&this->var4.var4;
    *&a2->var0 = result;
    *&a2->var4 = v3;
  }

  return result;
}

uint64_t JFX_createImageRefFromAuxiliaryImageInfo(const __CFDictionary *a1, uint64_t a2, CGFloat a3)
{
  texture = 0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CD2C68]);
  v7 = [CFDictionaryGetValue(Value *MEMORY[0x277CD2DF8])];
  v8 = [CFDictionaryGetValue(Value *MEMORY[0x277CD3520])];
  v9 = [CFDictionaryGetValue(Value *MEMORY[0x277CD3370])];
  LODWORD(Value) = [CFDictionaryGetValue(Value *MEMORY[0x277CD3440])];
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CD2C60]);
  CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, Value, [v10 bytes], v7, JFX_auxiliaryImageCVPixelBufferReleaseBytesCallback, v10, 0, &texture);
  if (!texture)
  {
    return 0;
  }

  v11 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:?];
  v12 = [v11 imageByApplyingCGOrientation:a2];

  if (vabdd_f64(1.0, a3) > 2.22044605e-16)
  {
    CGAffineTransformMakeScale(&v17, a3, a3);
    v13 = [v12 imageByApplyingTransform:&v17];

    v12 = v13;
  }

  CVPixelBufferRelease(texture);
  if (!v12)
  {
    return 0;
  }

  v14 = [MEMORY[0x277CBF740] context];
  [v12 extent];
  v15 = [v14 createCGImage:v12 fromRect:?];

  return v15;
}

uint64_t createGainMapImageRefFromAssetURL(const __CFURL *a1)
{
  v1 = CGImageSourceCreateWithURL(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v1, 0, *MEMORY[0x277CD2C98]);
  if (v3)
  {
    v4 = v3;
    v5 = 1;
    valuePtr = 1;
    v6 = CGImageSourceCopyPropertiesAtIndex(v2, 0, 0);
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(v6, *MEMORY[0x277CD3410]);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v7);
      v5 = valuePtr;
    }

    ImageRefFromAuxiliaryImageInfo = JFX_createImageRefFromAuxiliaryImageInfo(v4, v5, 1.0);
    CFRelease(v4);
  }

  else
  {
    ImageRefFromAuxiliaryImageInfo = 0;
  }

  CFRelease(v2);
  return ImageRefFromAuxiliaryImageInfo;
}

BOOL hasGainMap(CGImageSource *a1)
{
  v1 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a1, 0, *MEMORY[0x277CD2C98]);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

void JFX_auxiliaryImageCVPixelBufferReleaseBytesCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t JFXToVImage@<X0>(__CVBuffer *a1@<X0>, void **a2@<X8>)
{
  *a2 = CVPixelBufferGetBaseAddress(a1);
  a2[1] = CVPixelBufferGetHeight(a1);
  a2[2] = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetBytesPerRow(a1);
  a2[3] = result;
  return result;
}

size_t JFXPlanarToVImage@<X0>(__CVBuffer *a1@<X0>, size_t a2@<X1>, void **a3@<X8>)
{
  *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  a3[1] = CVPixelBufferGetHeightOfPlane(a1, a2);
  a3[2] = CVPixelBufferGetWidthOfPlane(a1, a2);
  result = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  a3[3] = result;
  return result;
}

uint64_t JFXCreatePixelBufferPool(uint64_t a1, uint64_t a2, uint64_t a3, CVPixelBufferPoolRef *a4)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v17[0] = MEMORY[0x277CBEC10];
  v7 = *MEMORY[0x277CC4E30];
  v16[0] = *MEMORY[0x277CC4DE8];
  v16[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v17[1] = v8;
  v16[2] = *MEMORY[0x277CC4EC8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  v17[2] = v9;
  v16[3] = *MEMORY[0x277CC4DD8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  v16[4] = *MEMORY[0x277CC4E08];
  v17[3] = v10;
  v17[4] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v12 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, a4);
  if (v12)
  {
    v13 = JFXLog_matting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_242A3B000, v13, OS_LOG_TYPE_DEFAULT, "Unable to create pixelbuffer pool", v15, 2u);
    }

    *a4 = 0;
  }

  return v12;
}

uint64_t JFXConvertFloatDepthImageToFixedPointAtQuarterResolution(__CVBuffer *a1, int32x4_t *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v18 = 0u;
  v19 = 0u;
  JFXToVImage(a1, &v18);
  if (v19)
  {
    v4 = (v19 & 7) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    JFXConvertFloatDepthImageToFixedPointAtQuarterResolution_cold_3();
  }

  if (*(&v18 + 1))
  {
    v5 = (BYTE8(v18) & 3) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    JFXConvertFloatDepthImageToFixedPointAtQuarterResolution_cold_2();
  }

  if (*(&v19 + 1) < (4 * v19))
  {
    JFXConvertFloatDepthImageToFixedPointAtQuarterResolution_cold_1();
  }

  v6 = 0;
  v7 = v18;
  v8 = (2 * v19) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *(&v18 + 1) >> 2;
  v10 = v19 >> 3;
  v11 = 4 * *(&v19 + 1);
  v12 = vdupq_n_s32(0x447A0000u);
  do
  {
    v13 = v7;
    v14 = a2;
    v15 = v10;
    do
    {
      v16 = vld2q_f32(v13);
      v13 += 8;
      *v14++ = vcvtq_s32_f32(vmulq_f32(v16, v12));
      --v15;
    }

    while (v15);
    ++v6;
    a2 = (a2 + v8);
    v7 = (v7 + v11);
  }

  while (v6 != v9);

  return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

uint64_t JFXConvertFloatDepthImageToFixedPointAndTranspose(__CVBuffer *a1, int32x4_t *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v25 = 0u;
  v26 = 0u;
  JFXToVImage(a1, &v25);
  if (*(&v26 + 1) != 4 * v26)
  {
    JFXConvertFloatDepthImageToFixedPointAndTranspose_cold_1();
  }

  if (v26)
  {
    v4 = (v26 & 3) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    JFXConvertFloatDepthImageToFixedPointAndTranspose_cold_4();
  }

  v5 = *(&v25 + 1);
  if (!*(&v25 + 1) || (BYTE8(v25) & 3) != 0)
  {
    JFXConvertFloatDepthImageToFixedPointAndTranspose_cold_3();
  }

  v6 = v25;
  if (v25 == a2)
  {
    JFXConvertFloatDepthImageToFixedPointAndTranspose_cold_2();
  }

  v7 = 0;
  v8 = v26 >> 2;
  v9 = 16 * v26;
  v10 = v25 + 4 * v26;
  v11 = vdupq_n_s32(0x447A0000u);
  v12 = v25 + 48 * (v26 >> 2);
  v13 = v25 + 8 * v26;
  do
  {
    v14 = 0;
    v15 = a2;
    do
    {
      v16 = *(v6 + 16 * v14);
      v17 = *(v10 + 16 * v14);
      v18 = *(v13 + 16 * v14);
      v19 = *(v12 + 16 * v14);
      v20 = vzip1q_s32(v16, v18);
      v21 = vzip2q_s32(v16, v18);
      v22 = vzip1q_s32(v17, v19);
      v23 = vzip2q_s32(v17, v19);
      *v15 = vcvtq_s32_f32(vmulq_f32(vzip1q_s32(v20, v22), v11));
      v15[v5 >> 2] = vcvtq_s32_f32(vmulq_f32(vzip2q_s32(v20, v22), v11));
      v15[2 * (v5 >> 2)] = vcvtq_s32_f32(vmulq_f32(vzip1q_s32(v21, v23), v11));
      v15[3 * (v5 >> 2)] = vcvtq_s32_f32(vmulq_f32(vzip2q_s32(v21, v23), v11));
      ++v14;
      v15 += 4 * (v5 >> 2);
    }

    while (v8 != v14);
    v7 += 4;
    ++a2;
    v6 += v9;
    v10 += v9;
    v13 += v9;
    v12 += v9;
  }

  while (v7 < v5);

  return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

CVPixelBufferRef copyFloatDepthBufferToL010(__CVBuffer *a1, __CVPixelBufferPool *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  pixelBufferPool = 0;
  if (!a1)
  {
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Error: src raw depth is invalid (null)";
LABEL_7:
      v10 = v8;
      v11 = 2;
LABEL_10:
      _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }

LABEL_11:

    goto LABEL_12;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1717855600)
  {
    v12 = PixelFormatType;
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v27 = HIBYTE(v12);
      v28 = 1024;
      v29 = HIWORD(v12);
      v30 = 1024;
      v31 = v12 >> 8;
      v32 = 1024;
      v33 = v12;
      v9 = "Error: can't create 'L010' quantized depth buffer for pixelFormat %c%c%c%c";
      v10 = v8;
      v11 = 26;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (a2)
  {
    pixelBufferPool = a2;
    goto LABEL_14;
  }

  JFXCreatePixelBufferPool(Width, Height, 1278226736, &pixelBufferPool);
  a2 = pixelBufferPool;
  if (!pixelBufferPool)
  {
    v8 = JFXLog_matting();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "Error: could not create pixelbuffer pool";
    goto LABEL_7;
  }

LABEL_14:
  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a2, &pixelBuffer);
  if (pixelBuffer)
  {
    v14 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    if (Height)
    {
      v15 = 0;
      v16 = 0;
      for (i = 0; i != Height; ++i)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v19 = CVPixelBufferGetBaseAddress(pixelBuffer);
        if (Width)
        {
          v20 = &v19[v16];
          v21 = &BaseAddress[v15];
          v22 = Width;
          do
          {
            v23 = *v21++;
            *v20 = vcvtms_s32_f32((fminf(fmaxf(v23, 0.0), 1.0) * 65535.0) + 0.5) & 0xFFC0;
            v20 += 2;
            --v22;
          }

          while (v22);
        }

        v16 += v14;
        v15 += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

LABEL_12:
  CVPixelBufferPoolRelease(pixelBufferPool);
  return pixelBuffer;
}

CVPixelBufferRef copyBGRAToFloatDepthBuffer(__CVBuffer *a1, __CVPixelBufferPool *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  pixelBufferPool = 0;
  if (!a1)
  {
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Error: 10-bit quantized src depth is invalid (null)";
LABEL_7:
      v10 = v8;
      v11 = 2;
LABEL_10:
      _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }

LABEL_11:

    goto LABEL_12;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1111970369)
  {
    v12 = PixelFormatType;
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v23 = HIBYTE(v12);
      v24 = 1024;
      v25 = HIWORD(v12);
      v26 = 1024;
      v27 = v12 >> 8;
      v28 = 1024;
      v29 = v12;
      v9 = "Error: wrong pixelFormat %c%c%c%c expect 'L010'.";
      v10 = v8;
      v11 = 26;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (a2)
  {
    pixelBufferPool = a2;
    goto LABEL_14;
  }

  JFXCreatePixelBufferPool(Width, Height, 1717855600, &pixelBufferPool);
  a2 = pixelBufferPool;
  if (!pixelBufferPool)
  {
    v8 = JFXLog_matting();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "Error: could not create pixelbuffer pool";
    goto LABEL_7;
  }

LABEL_14:
  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a2, &pixelBuffer);
  if (pixelBuffer)
  {
    v14 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    if (Height)
    {
      v15 = 0;
      v16 = 0;
      v17 = 4 * Width;
      do
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v19 = CVPixelBufferGetBaseAddress(pixelBuffer);
        memcpy(&v19[v16], &BaseAddress[v15], v17);
        v16 += v14;
        v15 += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

LABEL_12:
  CVPixelBufferPoolRelease(pixelBufferPool);
  return pixelBuffer;
}

CVPixelBufferRef copyL010ToFloatDepthBuffer(__CVBuffer *a1, __CVPixelBufferPool *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  pixelBufferPool = 0;
  if (!a1)
  {
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Error: 10-bit quantized src depth is invalid (null)";
LABEL_7:
      v10 = v8;
      v11 = 2;
LABEL_10:
      _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }

LABEL_11:

    goto LABEL_12;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1278226736)
  {
    v12 = PixelFormatType;
    v8 = JFXLog_matting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v29 = HIBYTE(v12);
      v30 = 1024;
      v31 = HIWORD(v12);
      v32 = 1024;
      v33 = v12 >> 8;
      v34 = 1024;
      v35 = v12;
      v9 = "Error: wrong pixelFormat %c%c%c%c expect 'L010'.";
      v10 = v8;
      v11 = 26;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (a2)
  {
    pixelBufferPool = a2;
    goto LABEL_14;
  }

  JFXCreatePixelBufferPool(Width, Height, 1717855600, &pixelBufferPool);
  a2 = pixelBufferPool;
  if (!pixelBufferPool)
  {
    v8 = JFXLog_matting();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "Error: could not create pixelbuffer pool";
    goto LABEL_7;
  }

LABEL_14:
  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], a2, &pixelBuffer);
  if (pixelBuffer)
  {
    v14 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    if (Height)
    {
      v15 = 0;
      v16 = 0;
      for (i = 0; i != Height; ++i)
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v19 = CVPixelBufferGetBaseAddress(pixelBuffer);
        if (Width)
        {
          v20 = &v19[v16];
          v21 = &BaseAddress[v15];
          v22 = Width;
          do
          {
            v23 = *v21;
            v21 += 2;
            v24 = v23 * 0.0000152590219;
            v25 = v24 + 0.0;
            if (!v23)
            {
              v25 = NAN;
            }

            *v20++ = v25;
            --v22;
          }

          while (v22);
        }

        v16 += v14;
        v15 += BytesPerRow;
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

LABEL_12:
  CVPixelBufferPoolRelease(pixelBufferPool);
  return pixelBuffer;
}

CVPixelBufferRef copyDepthToHalfWidthHalfHeight(__CVBuffer *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  pixelBufferPool = 0;
  if (!a1)
  {
    v18 = JFXLog_matting();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Error: 'fdep' src depth is invalid (null)";
LABEL_18:
      v21 = v18;
      v22 = 2;
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1717855600)
  {
    v20 = PixelFormatType;
    v18 = JFXLog_matting();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v27 = HIBYTE(v20);
      v28 = 1024;
      v29 = HIWORD(v20);
      v30 = 1024;
      v31 = v20 >> 8;
      v32 = 1024;
      v33 = v20;
      v19 = "Error: wrong pixelFormat %c%c%c%c expect 'fdep'.";
      v21 = v18;
      v22 = 26;
LABEL_19:
      _os_log_impl(&dword_242A3B000, v21, OS_LOG_TYPE_DEFAULT, v19, buf, v22);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v5 = Height >> 1;
  JFXCreatePixelBufferPool(Width >> 1, Height >> 1, 1717855600, &pixelBufferPool);
  if (!pixelBufferPool)
  {
    v18 = JFXLog_matting();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Error: unable to create pixelbuffer pool";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pixelBufferPool, &pixelBuffer);
  if (pixelBuffer)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v7 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    if (Height >= 2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 2 * BytesPerRow;
      do
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v13 = CVPixelBufferGetBaseAddress(pixelBuffer);
        if (Width >= 2)
        {
          v14 = &v13[v9];
          v15 = &BaseAddress[v8];
          v16 = Width >> 1;
          do
          {
            v17 = *v15;
            v15 += 8;
            *v14 = v17;
            v14 += 4;
            --v16;
          }

          while (v16);
        }

        ++v10;
        v9 += v7;
        v8 += v11;
      }

      while (v10 != v5);
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

LABEL_21:
  CVPixelBufferPoolRelease(pixelBufferPool);
  return pixelBuffer;
}

CVPixelBufferRef copyDepthToDoubleWidthDoubleHeight(__CVBuffer *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  pixelBuffer = 0;
  pixelBufferPool = 0;
  if (!a1)
  {
    v16 = JFXLog_matting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Error: 'fdep' src depth is invalid (null)";
LABEL_19:
      v19 = v16;
      v20 = 2;
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != 1717855600)
  {
    v18 = PixelFormatType;
    v16 = JFXLog_matting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v25 = HIBYTE(v18);
      v26 = 1024;
      v27 = HIWORD(v18);
      v28 = 1024;
      v29 = v18 >> 8;
      v30 = 1024;
      v31 = v18;
      v17 = "Error: wrong pixelFormat %c%c%c%c expect 'fdep'.";
      v19 = v16;
      v20 = 26;
LABEL_20:
      _os_log_impl(&dword_242A3B000, v19, OS_LOG_TYPE_DEFAULT, v17, buf, v20);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  JFXCreatePixelBufferPool(2 * Width, 2 * Height, 1717855600, &pixelBufferPool);
  if (!pixelBufferPool)
  {
    v16 = JFXLog_matting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Error: could not create pixelbuffer pool";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pixelBufferPool, &pixelBuffer);
  if (pixelBuffer)
  {
    if ((CVPixelBufferGetBytesPerRow(a1) & 3) != 0)
    {
      copyDepthToDoubleWidthDoubleHeight_cold_1();
    }

    if ((CVPixelBufferGetBytesPerRow(pixelBuffer) & 3) != 0)
    {
      copyDepthToDoubleWidthDoubleHeight_cold_2();
    }

    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v6 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v8 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height)
    {
      v9 = 0;
      v10 = v8 + 4;
      do
      {
        v11 = v10;
        v12 = BaseAddress;
        for (i = Width; i; --i)
        {
          v14 = *v12++;
          *(v11 - 1) = v14;
          *v11 = v14;
          v15 = &v11[v6 >> 2];
          *(v15 - 1) = v14;
          *v15 = v14;
          v11 += 2;
        }

        ++v9;
        BaseAddress += 4 * (BytesPerRow >> 2);
        v10 += 2 * (v6 >> 2);
      }

      while (v9 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

LABEL_22:
  CVPixelBufferPoolRelease(pixelBufferPool);
  return pixelBuffer;
}

CVPixelBufferRef copySimulatedL010RoundtripImage(__CVBuffer *a1)
{
  v1 = copyFloatDepthBufferToL010(a1, 0);
  if (v1)
  {
    v2 = v1;
    v3 = copyL010ToFloatDepthBuffer(v1, 0);
    CVPixelBufferRelease(v2);
    return v3;
  }

  else
  {
    v5 = JFXLog_matting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "Error: copySimulatedL010RoundtripImage got null tmpImage", v6, 2u);
    }

    return 0;
  }
}

float calculatePSNRForDepthImage(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferGetPixelFormatType(a1) != 1717855600)
  {
    v23 = JFXLog_matting();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v31 = 0;
    v24 = "calculatePSNRForDepthImage received image with unexpected pixel format";
    v25 = &v31;
LABEL_18:
    _os_log_impl(&dword_242A3B000, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 2u);
    goto LABEL_19;
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1717855600)
  {
    v23 = JFXLog_matting();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v30 = 0;
    v24 = "calculatePSNRForDepthImage received image with unexpected pixel format";
    v25 = &v30;
    goto LABEL_18;
  }

  if (!Width || !Height)
  {
    v23 = JFXLog_matting();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "calculatePSNRForDepthImage received image with unexpected dimension";
      v25 = buf;
      goto LABEL_18;
    }

LABEL_19:

    return 0.0;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v7 = CVPixelBufferGetBytesPerRow(a2);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  v28 = Height;
  if (Height < 1)
  {
    v14 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v7 >> 2;
    v12 = Height & 0x7FFFFFFF;
    v13 = 4 * v11;
    v14 = 0.0;
    v15 = 4 * (BytesPerRow >> 2);
    do
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v17 = CVPixelBufferGetBaseAddress(a2);
      if (Width >= 1)
      {
        v18 = &v17[v9];
        v19 = &BaseAddress[v8];
        v20 = Width & 0x7FFFFFFF;
        do
        {
          v21 = fminf(fmaxf(*v19, 0.0), 1.0);
          v22 = fminf(fmaxf(*v18, 0.0), 1.0);
          v14 = v14 + ((v21 - v22) * (v21 - v22));
          ++v18;
          ++v19;
          --v20;
        }

        while (v20);
      }

      ++v10;
      v9 += v13;
      v8 += v15;
    }

    while (v10 != v12);
  }

  v26 = log10f(v14 / (v28 * Width)) * -10.0 + 0.0;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v26;
}