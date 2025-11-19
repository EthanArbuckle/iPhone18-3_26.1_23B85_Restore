double NUAffineTransformDelta@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[2].f64[0] - a1[2].f64[0];
  v4 = vsubq_f64(a2[1], a1[1]);
  v6[0] = vdivq_f64(*a2, *a1);
  v6[1] = v4;
  v7 = v3;
  *&result = NUAffineTransformStandardize(v6, a3).n128_u64[0];
  return result;
}

__n128 NUAffineTransformStandardize@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 >= 0.0)
  {
    if (v5 >= 0.0)
    {
      v6 = *(a1 + 16);
      goto LABEL_14;
    }
  }

  else if (v5 < 0.0)
  {
    *a1 = vnegq_f64(v4);
    v6 = *(a1 + 16);
    if (v6 > 0.0)
    {
LABEL_12:
      v7 = -3.14159265;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  if (v6 >= -1.57079633)
  {
    if (v6 <= 1.57079633)
    {
      goto LABEL_14;
    }

    *a1 = vnegq_f64(v4);
    goto LABEL_12;
  }

  *a1 = vnegq_f64(v4);
LABEL_8:
  v7 = 3.14159265;
LABEL_13:
  v6 = v6 + v7;
  *(a1 + 16) = v6;
LABEL_14:
  v8 = -3.14159265;
  if (v6 <= -3.14159265)
  {
    v9 = 3.14159265;
    goto LABEL_18;
  }

  v8 = 3.14159265;
  if (v6 > 3.14159265)
  {
    v9 = -3.14159265;
LABEL_18:
    *(a1 + 16) = fmod(v6 + v8, 6.28318531) + v9;
  }

  result = *a1;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

CGFloat NUCGAffineTransformByMappingFromRectToRect@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v17 = MEMORY[0x1E695EFD0];
  v18 = *MEMORY[0x1E695EFD0];
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v19;
  v20 = *(v17 + 32);
  *(a1 + 32) = v20;
  *&v44.a = v18;
  *&v44.c = v19;
  *&v44.tx = v20;
  *&v18 = a6;
  *&v19 = a7;
  *&v20 = a8;
  MinX = CGRectGetMinX(*&v18);
  v45.origin.x = a6;
  v45.origin.y = a7;
  v45.size.width = a8;
  v45.size.height = a9;
  MinY = CGRectGetMinY(v45);
  CGAffineTransformTranslate(a1, &v44, MinX, MinY);
  v24 = *(a1 + 16);
  *&v43.a = *a1;
  *&v43.c = v24;
  *&v43.tx = *(a1 + 32);
  v25 = a6;
  *&v24 = a7;
  v26 = a8;
  v27 = a9;
  Width = CGRectGetWidth(*(&v24 - 8));
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  v29 = Width / CGRectGetWidth(v46);
  v47.origin.x = a6;
  v47.origin.y = a7;
  v47.size.width = a8;
  v47.size.height = a9;
  Height = CGRectGetHeight(v47);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  v31 = CGRectGetHeight(v48);
  CGAffineTransformScale(&v44, &v43, v29, Height / v31);
  v32 = *&v44.c;
  *a1 = *&v44.a;
  *(a1 + 16) = v32;
  *(a1 + 32) = *&v44.tx;
  v33 = *(a1 + 16);
  *&v43.a = *a1;
  *&v43.c = v33;
  *&v43.tx = *(a1 + 32);
  v34 = a2;
  *&v33 = a3;
  v35 = a4;
  v36 = a5;
  v37 = -CGRectGetMinX(*(&v33 - 8));
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  v38 = CGRectGetMinY(v49);
  CGAffineTransformTranslate(&v44, &v43, v37, -v38);
  v39 = *&v44.c;
  *a1 = *&v44.a;
  *(a1 + 16) = v39;
  result = v44.tx;
  *(a1 + 32) = *&v44.tx;
  return result;
}

__n128 NUCGAffineTransformFlipYInRect@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = a1[1];
  *&v22.a = *a1;
  *&v22.c = v12;
  *&v22.tx = a1[2];
  CGAffineTransformScale(&v23, &v22, 1.0, -1.0);
  v13 = *&v23.c;
  *a1 = *&v23.a;
  a1[1] = v13;
  a1[2] = *&v23.tx;
  v14 = a1[1];
  *&v22.a = *a1;
  *&v22.c = v14;
  *&v22.tx = a1[2];
  v15 = a3;
  v14.n128_f64[0] = a4;
  v16 = a5;
  v17 = a6;
  Height = CGRectGetHeight(*(&v14 - 8));
  CGAffineTransformTranslate(&v23, &v22, 0.0, -Height);
  v19 = *&v23.c;
  *a1 = *&v23.a;
  a1[1] = v19;
  a1[2] = *&v23.tx;
  v20 = a1[1];
  *a2 = *a1;
  a2[1] = v20;
  result = a1[2];
  a2[2] = result;
  return result;
}

double NUCGPointConvertFromRectToRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  NUCGAffineTransformByMappingFromRectToRect(&v27, a4, a5, a6, a7, a10, a11, a12, a13);
  if (a1)
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    NUCGAffineTransformFlipYInRect(v26, &v27, a4, a5, a6, a7);
  }

  *&result = *&vaddq_f64(v29, vmlaq_n_f64(vmulq_n_f64(v28, a3), v27, a2));
  return result;
}

void NUCGRectConvertFromRectToRect(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  NUCGAffineTransformByMappingFromRectToRect(&v30, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a1)
  {
    *&v29.a = v30;
    *&v29.c = v31;
    *&v29.tx = v32;
    NUCGAffineTransformFlipYInRect(&v29, &v30, a6, a7, a8, a9);
  }

  *&v29.a = v30;
  *&v29.c = v31;
  *&v29.tx = v32;
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectApplyAffineTransform(v33, &v29);
}

id NUAssertLogger_17661()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_150);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_18064()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18077);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C02E5D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

id NUAssertLogger_18155()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_100);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C02E7930(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18207(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_18325()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18358);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_18533()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18547);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_18635()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_18606);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_19699()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_149_19722);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void NUCopyCVBufferAttachment(__CVBuffer *a1, __CVBuffer *a2, CFStringRef key)
{
  attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
  v5 = CVBufferCopyAttachment(a1, key, &attachmentMode);
  if (v5)
  {
    v6 = v5;
    CVBufferSetAttachment(a2, key, v5, attachmentMode);
    CFRelease(v6);
  }

  else
  {
    CVBufferRemoveAttachment(a2, key);
  }
}

void sub_1C030A26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19744(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_19919()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_19933);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t NUImagePropertyAlphaFromCGBitmapInfo(char a1)
{
  if ((a1 & 0x1Fu) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1C03C41A0[a1 & 0x1F];
  }
}

uint64_t NUImagePropertyComponentFromCGBitmapInfo(unsigned int a1)
{
  if ((a1 & 0x100) != 0)
  {
    return 4;
  }

  v1 = (a1 >> 12) & 7;
  if (v1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1C03C41D8[v1];
  }
}

id NUAssertLogger_20065()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_20112);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_20189()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_75_20209);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__20218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_20452()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_20467);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t NU::Rational<long>::compare(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  v4 = v2 * *a1;
  v5 = v3 * *a2;
  if (v5 == v4)
  {
    return 0;
  }

  v7 = (v3 >> 63) + (v2 >> 63);
  v8 = v4 < v5;
  v9 = 1;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v8)
  {
    v9 = -1;
  }

  if (v7 == 1)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t NU::Rational<int>::compare(int *a1, int *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  v4 = v2 * *a1;
  v5 = v3 * *a2;
  if (v5 == v4)
  {
    return 0;
  }

  v7 = (v3 >> 31) + (v2 >> 31);
  v8 = v4 < v5;
  v9 = 1;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v8)
  {
    v9 = -1;
  }

  if (v7 == 1)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t NU::Rational<unsigned int>::compare(unsigned int *a1, unsigned int *a2)
{
  v2 = a2[1] * *a1;
  v3 = a1[1] * *a2;
  v4 = 1;
  if (v2 <= v3)
  {
    v4 = -1;
  }

  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

id NUAssertLogger_20556()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_298);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_20879()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_20901);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C0317C00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isLivePhotoMetadataTrack(AVAssetTrack *a1)
{
  v1 = [(AVAssetTrack *)a1 formatDescriptions];
  if ([v1 count] == 1 && (objc_msgSend(v1, "firstObject"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = CMMetadataFormatDescriptionGetIdentifiers(v2);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 containsObject:*MEMORY[0x1E6990A00]];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1C031AAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_21313()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21336);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_21429()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21385);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_21622()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21654);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_21877()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_21894);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C0323160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_22007()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22023);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C0325A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_22207()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22233);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__22220(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_22306()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22286);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_22348()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22361);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__22415(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_22421()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22434);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_22592()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22511);
  }

  v1 = _NUAssertLogger;

  return v1;
}

__CFString *NUSegmentationTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E810AEF8[a1 - 1];
  }
}

__CFString *NUVisionSegmentationPolicyDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"First";
  }

  else
  {
    return off_1E810AF10[a1 - 1];
  }
}

id NUAssertLogger_22743()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22758);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_22844()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_22865);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C032BDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_23019()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23034);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_23196()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_132_23210);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_23382()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23407);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_23497()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23521);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__23611(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_23901()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_23922);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_24020()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_24037);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__24318(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_24345()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_982);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C034260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

void sub_1C034285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0342A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

void sub_1C0343560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1C0346F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

BOOL NU::Region::includes(NU::Region *this, const NU::Region *a2)
{
  if (!*(a2 + 3))
  {
    return 0;
  }

  std::unordered_set<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::unordered_set(v5, a2);
  NU::Region::breakRects(this, v5);
  NU::Region::mergeRectsVertically(v5);
  v3 = v6 == 0;
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v5);
  return v3;
}

void sub_1C0347E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect const&>(a1, i + 2);
  }

  return a1;
}

uint64_t NU::Region::breakRects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (a2 + 16);
    do
    {
      v6 = 0u;
      v7 = 0u;
      v5 = v4;
      v8 = 1065353216;
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        NU::Region::breakRects(v5 + 2, v2 + 2, &v6);
      }

      if (&v6 != a2)
      {
        *(a2 + 32) = v8;
        std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(a2, v7);
      }

      result = std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v6);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t NU::Region::mergeRectsVertically(NU::Region *this)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__rehash<true>(&v13, *(this + 3));
  for (i = *(this + 2); i; i = *i)
  {
    v3 = *(i + 1);
    v4 = *(i + 2);
    v11 = v3;
    v12 = v4;
    v5 = v14;
    if (v14)
    {
      do
      {
        while (1)
        {
          v6 = v5[3];
          if ((*(&v12 + 1) + *(&v11 + 1) == v6 || *(&v11 + 1) == v5[5] + v6) && v11 == v5[2] && v12 == v5[4])
          {
            break;
          }

          v5 = *v5;
          if (!v5)
          {
            goto LABEL_16;
          }
        }

        if (v6 >= *(&v11 + 1))
        {
          v7 = *(&v11 + 1);
        }

        else
        {
          v7 = v5[3];
        }

        NU::RectT<long>::setYMin(&v11, v7);
        v8 = v5[5];
        if (*(&v12 + 1) + *(&v11 + 1) <= v8 + v5[3])
        {
          v9 = v8 + v5[3];
        }

        else
        {
          v9 = *(&v12 + 1) + *(&v11 + 1);
        }

        NU::RectT<long>::setYMax(&v11, v9);
        v5 = std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::erase(&v13, v5);
      }

      while (v5);
LABEL_16:
      v3 = v11;
      v4 = v12;
    }

    v16[0] = v3;
    v16[1] = v4;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(&v13, v16);
  }

  if (&v13 != this)
  {
    *(this + 8) = v15;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(this, v14);
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v13);
}

void sub_1C0348134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(uint64_t a1)
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

void std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      v6[48] = *(a2 + 48);
      *(v6 + 1) = v7;
      *(v6 + 2) = v8;
      v9 = *v6;
      std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__node_insert_multi(a1, v6);
      a2 = *a2;
      v6 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_1C03484E0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

void *std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(void *result, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = (COERCE__INT64(*a2) + 4095) & 0xFFFFFFFF00000000 ^ ((COERCE__INT64(v2) + 4095) >> 32 << 24) ^ ((COERCE__INT64(v3) + 4095) >> 32 << 8) ^ ((COERCE__INT64(v4) + 4095) >> 32);
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (COERCE__INT64(*a2) + 4095) & 0xFFFFFFFF00000000 ^ ((COERCE__INT64(v2) + 4095) >> 32 << 24) ^ ((COERCE__INT64(v3) + 4095) >> 32 << 8) ^ ((COERCE__INT64(v4) + 4095) >> 32);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (v10[2] != *a2 || v10[3] != v2 || v10[4] != v3 || v10[5] != v4)
  {
    goto LABEL_20;
  }

  return result;
}

void std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = vandq_s8(vshlq_u64(vaddq_s64(vcvtq_f64_s64(*(a2 + 24)), vdupq_n_s64(0xFFFuLL)), xmmword_1C03C29B0), xmmword_1C03C29C0);
  v5 = v4.i64[0] ^ (COERCE__INT64(*(a2 + 16)) + 4095) & 0xFFFFFFFF00000000 ^ v4.i64[1] ^ ((COERCE__INT64(*(a2 + 40)) + 4095) >> 32);
  *(a2 + 8) = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == *(a2 + 16) && v19[3] == *(a2 + 24) && v19[4] == *(a2 + 32) && v19[5] == *(a2 + 40);
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = *(a2 + 8);
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_60;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_59:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_60;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_59;
    }
  }

LABEL_60:
  ++*(a1 + 24);
}

void *NU::Region::breakRects(uint64_t *a1, uint64_t *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  result = NU::RectT<long>::intersects(a1, a2);
  if (!result)
  {
    v15 = *a1;
    v16 = *(a1 + 1);
    goto LABEL_11;
  }

  v7 = *a1;
  v8 = a1[1];
  *&v19 = *a1;
  *(&v19 + 1) = v8;
  v10 = a1[2];
  v9 = a1[3];
  *&v20 = v10;
  *(&v20 + 1) = v9;
  v11 = a2[1];
  if (v8 < v11)
  {
    *&v17 = v7;
    *(&v17 + 1) = v8;
    *&v18 = v10;
    *(&v18 + 1) = v9;
    NU::RectT<long>::setYMax(&v17, v11);
    NU::RectT<long>::setYMin(&v19, a2[1]);
    v21 = v17;
    v22 = v18;
    result = std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v21);
    v9 = a1[3];
    v11 = a2[1];
    v7 = *a1;
    v8 = a1[1];
  }

  v12 = a2[3] + v11;
  if (v9 + v8 > v12)
  {
    *&v17 = v7;
    *(&v17 + 1) = v8;
    *&v18 = a1[2];
    *(&v18 + 1) = v9;
    NU::RectT<long>::setYMin(&v17, v12);
    NU::RectT<long>::setYMax(&v19, a2[3] + a2[1]);
    v21 = v17;
    v22 = v18;
    result = std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v21);
    v7 = *a1;
  }

  v13 = *a2;
  if (v7 < *a2)
  {
    v17 = v19;
    v18 = v20;
    NU::RectT<long>::setXMax(&v17, v13);
    v21 = v17;
    v22 = v18;
    result = std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v21);
    v7 = *a1;
    v13 = *a2;
  }

  v14 = a2[2] + v13;
  if (a1[2] + v7 > v14)
  {
    v17 = v19;
    v18 = v20;
    NU::RectT<long>::setXMin(&v17, v14);
    v15 = v17;
    v16 = v18;
LABEL_11:
    v21 = v15;
    v22 = v16;
    return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v21);
  }

  return result;
}

void *std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect const&>(void *result, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = (COERCE__INT64(*a2) + 4095) & 0xFFFFFFFF00000000 ^ ((COERCE__INT64(v2) + 4095) >> 32 << 24) ^ ((COERCE__INT64(v3) + 4095) >> 32 << 8) ^ ((COERCE__INT64(v4) + 4095) >> 32);
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (COERCE__INT64(*a2) + 4095) & 0xFFFFFFFF00000000 ^ ((COERCE__INT64(v2) + 4095) >> 32 << 24) ^ ((COERCE__INT64(v3) + 4095) >> 32 << 8) ^ ((COERCE__INT64(v4) + 4095) >> 32);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (v10[2] != *a2 || v10[3] != v2 || v10[4] != v3 || v10[5] != v4)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL NU::Region::includes(NU::Region *a1, __int128 *a2)
{
  NU::Region::Region(v5, a2);
  v3 = NU::Region::includes(a1, v5);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v5);
  return v3;
}

void sub_1C0349294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::Region(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = *a2;
    v8 = v3;
    v9 = v4;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a1, &v7);
  }

  return a1;
}

uint64_t NU::Region::intersects(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a2 + 16);
    do
    {
      v4 = v3;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (NU::RectT<long>::intersects(v4 + 2, v2 + 2))
        {
          return 1;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t NU::Region::intersects(uint64_t a1, __int128 *a2)
{
  NU::Region::Region(v5, a2);
  v3 = NU::Region::intersects(a1, v5);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v5);
  return v3;
}

void NU::Region::getBounds(NU::Region *this@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  for (i = *(this + 2); i; i = *i)
  {
    v4 = *(i + 2);
    v5[0] = *(i + 1);
    v5[1] = v4;
    NU::RectT<long>::add(a2, v5);
  }
}

BOOL std::operator==[abi:ne200100]<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = (a1 + 16);
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = *&v3 - 1;
LABEL_3:
  v2 = *v2;
  result = v2 == 0;
  if (v2)
  {
    if (v3)
    {
      v8 = v2[2];
      v9 = v2[3];
      v11 = v2[4];
      v10 = v2[5];
      v12 = (COERCE__INT64(v8) + 4095) & 0xFFFFFFFF00000000 ^ ((COERCE__INT64(v9) + 4095) >> 32 << 24) ^ ((COERCE__INT64(v11) + 4095) >> 32 << 8) ^ ((COERCE__INT64(v10) + 4095) >> 32);
      if (v5.u32[0] > 1uLL)
      {
        v13 = (COERCE__INT64(v8) + 4095) & 0xFFFFFFFF00000000 ^ ((COERCE__INT64(v9) + 4095) >> 32 << 24) ^ ((COERCE__INT64(v11) + 4095) >> 32 << 8) ^ ((COERCE__INT64(v10) + 4095) >> 32);
        if (v12 >= *&v3)
        {
          v13 = v12 % *&v3;
        }
      }

      else
      {
        v13 = v12 & v6;
      }

      v14 = *(v4 + 8 * v13);
      if (v14)
      {
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          v15 = v14[1];
          if (v12 == v15)
          {
            if (v14[2] == v8 && v14[3] == v9 && v14[4] == v11 && v14[5] == v10)
            {
              if (v8 != v14[2] || v9 != v14[3] || v11 != v14[4])
              {
                return 0;
              }

              result = 0;
              if (v10 == v14[5])
              {
                goto LABEL_3;
              }

              return result;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v15 >= *&v3)
              {
                v15 %= *&v3;
              }
            }

            else
            {
              v15 &= v6;
            }

            if (v15 != v13)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t NU::Region::getHash(NU::Region *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = vdupq_n_s64(0xFFFuLL);
  do
  {
    v4 = vandq_s8(vshlq_u64(vaddq_s64(vcvtq_f64_s64(*(v1 + 3)), v3), xmmword_1C03C29B0), xmmword_1C03C29C0);
    result ^= 0x1D92AD94BE7929 * (v4.i64[0] ^ (COERCE__INT64(v1[2]) + 4095) & 0xFFFFFFFF00000000 ^ v4.i64[1] ^ ((COERCE__INT64(v1[5]) + 4095) >> 32));
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t NU::Region::applyAffineTransform(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v7 = *(i + 2);
    v21 = *(i + 1);
    v22 = v7;
    v8 = *(&v21 + 1);
    v9 = v21;
    v10 = v7;
    *&v7 = *(&v7 + 1);
    v11 = a2[1];
    *&v26.a = *a2;
    *&v26.c = v11;
    *&v26.tx = a2[2];
    v28 = CGRectApplyAffineTransform(*(&v7 - 24), &v26);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
    MinX = CGRectGetMinX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MinY = CGRectGetMinY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MaxX = CGRectGetMaxX(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    MaxY = CGRectGetMaxY(v31);
    NU::RectT<long>::setXYMinMax(&v21, a3, MinX, MinY, MaxX, MaxY);
    *&v26.a = v21;
    *&v26.c = v22;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(&v23, &v26);
  }

  if (&v23 != a1)
  {
    *(a1 + 32) = v25;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(a1, v24);
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v23);
}

void sub_1C0349A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::applyOrientation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v9 = *(i + 2);
    v11 = *(i + 1);
    v12 = v9;
    NU::RectT<long>::applyOrientation(&v11, a2, a3, a4);
    v16[0] = v11;
    v16[1] = v12;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(&v13, v16);
  }

  if (&v13 != a1)
  {
    *(a1 + 32) = v15;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(a1, v14);
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v13);
}

void sub_1C0349B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::shrinkInRect(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  NU::Region::Region(v20, a4);
  NU::Region::breakRects(a1, v20);
  NU::Region::mergeRectsVertically(v20);
  NU::Region::grow(v20, a2, a3);
  NU::Region::Region(&v15, a4);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::clear(a1);
  v8 = v15;
  v15 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v16;
  v11 = v17;
  *(a1 + 16) = v17;
  *(a1 + 8) = v10;
  v16 = 0;
  v12 = v18;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  if (v12)
  {
    v13 = *(v11 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v13 >= v10)
      {
        v13 %= v10;
      }
    }

    else
    {
      v13 &= v10 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    v17 = 0;
    v18 = 0;
  }

  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v15);
  NU::Region::breakRects(v20, a1);
  NU::Region::mergeRectsVertically(a1);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v20);
}

void sub_1C0349F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::grow(NU::Region *this, uint64_t a2, uint64_t a3)
{
  std::unordered_set<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::unordered_set(v10, this);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::clear(this);
  for (i = v11; i; i = *i)
  {
    v7 = *(i + 2);
    v9[0] = *(i + 1);
    v9[1] = v7;
    NU::RectT<long>::grow(v9, a2, a3);
    NU::Region::add(this, v9);
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v10);
}

void sub_1C034A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t NU::Region::add(NU::Region *a1, __int128 *a2)
{
  NU::Region::Region(v4, a2);
  NU::Region::add(a1, v4);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v4);
}

void sub_1C034A0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::add(NU::Region *this, const NU::Region *a2)
{
  std::unordered_set<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::unordered_set(v4, a2);
  NU::Region::breakRects(this, v4);
  NU::Region::mergeRects(this, v4);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v4);
}

void sub_1C034A130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::mergeRects(NU::Region *this, void *a2)
{
  while (a2[3])
  {
    v4 = a2[2];
    v5 = *(v4 + 32);
    v7[0] = *(v4 + 16);
    v7[1] = v5;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::erase(a2, v4);
    NU::Region::mergeRectsHorizontally(this, v7, a2);
  }

  return NU::Region::mergeRectsVertically(this);
}

void *NU::Region::mergeRectsHorizontally(uint64_t a1, __int128 *a2, void *a3)
{
  v5 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 16);
  do
  {
    v6 = *v6;
    if (!v6)
    {
      v19 = a2[1];
      v30 = *a2;
      v31 = v19;
      return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(v5, &v30);
    }

    LODWORD(a1) = NU::RectPartialHorizontallyAdjacentTo::operator()(a1, a2, v6 + 2);
  }

  while (!a1);
  v28 = 0u;
  v29 = 0u;
  v7 = v6[2];
  if (v7 >= *a2)
  {
    v8 = *a2;
  }

  else
  {
    v8 = v6[2];
  }

  v9 = v6[4] + v7;
  if (*(a2 + 2) + *a2 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a2 + 2) + *a2;
  }

  NU::RectT<long>::setXMinMax(&v28, v8, v10);
  v11 = *(a2 + 1);
  v12 = v6[3];
  if (v11 <= v12)
  {
    v13 = v6[3];
  }

  else
  {
    v13 = *(a2 + 1);
  }

  v14 = *(a2 + 3) + v11;
  v15 = v6[5] + v12;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  NU::RectT<long>::setYMinMax(&v28, v13, v16);
  v30 = v28;
  v31 = v29;
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v30);
  v17 = *(a2 + 1);
  v18 = v6[3];
  if (v17 >= v18)
  {
    if (v17 <= v18)
    {
      goto LABEL_22;
    }

    *&v26 = v6[2];
    *(&v26 + 1) = v18;
    v27 = *(v6 + 2);
  }

  else
  {
    *&v26 = *a2;
    *(&v26 + 1) = v17;
    v27 = a2[1];
    v17 = v18;
  }

  NU::RectT<long>::setYMax(&v26, v17);
  v30 = v26;
  v31 = v27;
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v30);
LABEL_22:
  v21 = *(a2 + 1);
  v22 = *(a2 + 3);
  v23 = v22 + v21;
  v24 = v6[3];
  v25 = v6[5];
  if (v22 + v21 < v25 + v24)
  {
    *&v26 = v6[2];
    *(&v26 + 1) = v24;
    *&v27 = v6[4];
    *(&v27 + 1) = v25;
LABEL_26:
    NU::RectT<long>::setYMin(&v26, v23);
    v30 = v26;
    v31 = v27;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(a3, &v30);
    return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::erase(v5, v6);
  }

  if (v22 + v21 > v25 + v24)
  {
    *&v26 = *a2;
    *(&v26 + 1) = v21;
    *&v27 = *(a2 + 2);
    *(&v27 + 1) = v22;
    v23 = v25 + v24;
    goto LABEL_26;
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::erase(v5, v6);
}

BOOL NU::RectPartialHorizontallyAdjacentTo::operator()(uint64_t a1, void *a2, void *a3)
{
  if ((a2[2] + *a2 == *a3 || *a2 == a3[2] + *a3) && (v3 = a2[1], v4 = a3[1], v3 < a3[3] + v4))
  {
    return a2[3] + v3 > v4;
  }

  else
  {
    return 0;
  }
}

uint64_t NU::Region::shrink(NU::Region *this, uint64_t a2, uint64_t a3)
{
  NU::Region::getBounds(this, v7);
  v8[0] = v7[0];
  v8[1] = v7[1];
  NU::RectT<long>::grow(v8, a2, a3);
  return NU::Region::shrinkInRect(this, a2, a3, v8);
}

uint64_t NU::Region::clip(NU::Region *a1, __int128 *a2)
{
  NU::Region::Region(v4, a2);
  NU::Region::clip(a1, v4);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v4);
}

void sub_1C034A9F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::clip(NU::Region *this, const NU::Region *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  for (i = *(this + 2); i; i = *i)
  {
    for (j = *(a2 + 2); j; j = *j)
    {
      NU::RectT<long>::Intersection(&v8, i + 2, j + 2);
      if (v9)
      {
        v6 = v10 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v14 = v8;
        v15 = v9;
        v16 = v10;
        std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect>(&v11, &v14);
      }
    }
  }

  if (&v11 != this)
  {
    *(this + 8) = v13;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(this, v12);
  }

  NU::Region::mergeRectsVertically(this);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v11);
}

void sub_1C034AB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *NU::Region::scale(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 == 0.0 || a4 == 0.0)
  {

    return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::clear(a1);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 1065353216;
    for (i = *(a1 + 16); i; i = *i)
    {
      v9 = *(i + 2);
      v14[0] = *(i + 1);
      v14[1] = v9;
      NU::RectT<long>::scale(v14, a2, a3, a4);
      std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect const&>(&v11, v14);
    }

    if (&v11 != a1)
    {
      *(a1 + 32) = v13;
      std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(a1, v12);
    }

    return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v11);
  }
}

uint64_t NU::Region::translate(NU::Region *this, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 1065353216;
  for (i = *(this + 2); i; i = *i)
  {
    v7 = i[2];
    v8 = i[3];
    v14 = *(i + 2);
    v13[0] = v7 + a2;
    v13[1] = v8 + a3;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect const&>(&v10, v13);
  }

  if (&v10 != this)
  {
    *(this + 8) = v12;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(this, v11);
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v10);
}

uint64_t NU::Region::flipInRect(uint64_t a1, void *a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[3];
    v6 = a2[1];
    v7 = i[2] - *a2;
    v8 = i[5];
    v14[2] = i[4];
    v14[3] = v8;
    v9 = v6 - (v8 + v5) + a2[3];
    v14[0] = v7;
    v14[1] = v9;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__emplace_unique_key_args<NU::RegionRect,NU::RegionRect const&>(&v11, v14);
  }

  if (&v11 != a1)
  {
    *(a1 + 32) = v13;
    std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<NU::RegionRect,void *> *>>(a1, v12);
  }

  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(&v11);
}

uint64_t NU::Region::diff(NU::Region *this, const NU::Region *a2)
{
  std::unordered_set<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::unordered_set(v5, a2);
  NU::Region::breakRects(this, v5);
  NU::Region::breakRects(a2, this);
  NU::Region::mergeRects(this, v5);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v5);
}

void sub_1C034B228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::diff(NU::Region *a1, __int128 *a2)
{
  NU::Region::Region(v4, a2);
  NU::Region::diff(a1, v4);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v4);
}

void sub_1C034B2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t NU::Region::remove(NU::Region *a1, __int128 *a2)
{
  NU::Region::Region(v4, a2);
  NU::Region::breakRects(v4, a1);
  NU::Region::mergeRectsVertically(a1);
  return std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(v4);
}

void sub_1C034B3E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<NU::RegionRect,NU::RectHash,NU::RectEqualTo,std::allocator<NU::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL NU::RectStrictVerticallyAdjacentTo::operator()(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  return (a2[3] + v3 == v4 || v3 == a3[3] + v4) && *a2 == *a3 && a2[2] == a3[2];
}

double NU::Region::getArea(NU::Region *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0.0;
  }

  result = 0.0;
  do
  {
    result = result + (v1[5] * v1[4]);
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t NU::Region::remove(NU::Region *this, const NU::Region *a2)
{
  NU::Region::breakRects(a2, this);

  return NU::Region::mergeRectsVertically(this);
}

uint64_t NU::Region::growInRect(NU::Region *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  NU::Region::grow(a1, a2, a3);

  return NU::Region::clip(a1, a4);
}

id NUAssertLogger_25303()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_25321);
  }

  v1 = _NUAssertLogger;

  return v1;
}

__CFString *NUSettingTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"???";
  }

  else
  {
    return off_1E810B208[a1 - 1];
  }
}

id NUAssertLogger_26027()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26042);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t NUIsPixelBufferProbablyAllZeros(__CVBuffer *a1)
{
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_86);
    }

    v2 = _NULogger;
    v3 = 0;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C0184000, v2, OS_LOG_TYPE_DEFAULT, "NUIsPixelBufferProbablyAllZeros could not lock CVPixelBufferRef.", v8, 2u);
      v3 = 0;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    *v8 = 0;
    v3 = 0;
    if (NUCVBufferGeometry(a1, &v11, &v10, &v9, v8))
    {
      if (v10 < 1)
      {
        v3 = 1;
      }

      else
      {
        v4 = 0;
        v5 = *v8;
        v3 = 1;
        do
        {
          if (v11 >= 1)
          {
            v6 = 0;
            while (v6 >= v10 * v9 || !*(v5 + v6))
            {
              if (v11 == ++v6)
              {
                goto LABEL_16;
              }
            }

            v3 = 0;
          }

LABEL_16:
          v4 += 100;
          v5 += 100 * v9;
        }

        while (v4 < v10);
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  return v3 & 1;
}

BOOL NUCVBufferGeometry(__CVBuffer *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  if (CVPixelBufferIsPlanar(a1))
  {
    *a2 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    *a3 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    *a4 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  }

  else
  {
    *a2 = CVPixelBufferGetWidth(a1);
    *a3 = CVPixelBufferGetHeight(a1);
    *a4 = CVPixelBufferGetBytesPerRow(a1);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(a1);
  }

  v11 = BaseAddressOfPlane;
  *a5 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_86);
    }

    v12 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C0184000, v12, OS_LOG_TYPE_DEFAULT, "NUCVBufferGeometry couldn't get address of plane.", v14, 2u);
    }
  }

  return v11 != 0;
}

uint64_t NUDebugWatermarkCVPixelBuffer(__CVBuffer *a1, int a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a2 >= 10)
  {
    v42 = NUAssertLogger_26027();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "numRectangles < MAX_RECTS"];
      *buf = 138543362;
      *&buf[4] = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_26027();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v46)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v49;
        v62 = 2114;
        v63 = v53;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("BOOL NUDebugWatermarkCVPixelBuffer(CVPixelBufferRef _Nonnull, int)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUCVPixelBuffer.m", 154, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "numRectangles < MAX_RECTS");
  }

  if (CVPixelBufferLockBaseAddress(a1, 0))
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_86);
    }

    v4 = _NULogger;
    v5 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      *buf = 0;
      v7 = "NUDebugWatermarkCVPixelBuffer could not lock CVPixelBufferRef.";
      v8 = buf;
LABEL_7:
      _os_log_impl(&dword_1C0184000, v4, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      return 0;
    }

    return result;
  }

  v60 = 0;
  *buf = 0;
  v59 = 0;
  if (!NUCVBufferGeometry(a1, &v60 + 1, &v60, &v59, buf))
  {
    CVPixelBufferUnlockBaseAddress(a1, 0);
    return 0;
  }

  if (a2 < 1)
  {
LABEL_55:
    CVPixelBufferUnlockBaseAddress(a1, 0);
    return 1;
  }

  if (SHIDWORD(v60) >= 210)
  {
    v9 = 0;
    v10 = 0;
    v11 = v60;
    v12 = v59;
    v13 = vdupq_n_s32(v60 * v59);
    v14 = SHIDWORD(v60) / 10;
    v15 = (v60 / 8);
    v16 = SHIDWORD(v60) / 10 - 20;
    v17 = *buf + 7;
    v18 = 1;
    v19 = -1;
    v20.i64[0] = 0x1000000010;
    v20.i64[1] = 0x1000000010;
    v21 = v16;
    do
    {
      if (v21 <= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v21;
      }

      if (v11 >= 8)
      {
        v23 = 0;
        v24 = v16 + v9;
        if ((v16 + v9) <= (v9 + 1))
        {
          v24 = v9 + 1;
        }

        v25 = v24 + ~(v14 * v10);
        v26 = v17 + v9;
        v27 = ((v22 + v19) + 16) & 0x1FFFFFFF0;
        v28 = vdupq_n_s32(v9);
        v29 = vaddq_s32(v28, xmmword_1C03C29D0);
        v30 = vaddq_s32(v28, xmmword_1C03C29E0);
        v31 = vaddq_s32(v28, xmmword_1C03C29F0);
        v32 = vaddq_s32(v28, xmmword_1C03C2A00);
        v33 = vdupq_n_s64(v25);
        do
        {
          v34 = 0;
          v35 = v32;
          v36 = v31;
          v37 = v30;
          v38 = v29;
          do
          {
            v39 = vdupq_n_s64(v34);
            v40 = vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C2740)), vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C2730))), vuzp1q_s32(vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C28D0)), vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C28C0)))), vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C2A40)), vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C2A30))), vuzp1q_s32(vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C2A20)), vcgeq_u64(v33, vorrq_s8(v39, xmmword_1C03C2A10))))), vuzp1q_s8(vuzp1q_s16(vcgtq_s32(v13, v35), vcgtq_s32(v13, v36)), vuzp1q_s16(vcgtq_s32(v13, v37), vcgtq_s32(v13, v38))));
            if (v40.i8[0])
            {
              *(v26 + v34 - 7) = -1;
            }

            if (v40.i8[1])
            {
              *(v26 + v34 - 6) = -1;
            }

            if (v40.i8[2])
            {
              *(v26 + v34 - 5) = -1;
            }

            if (v40.i8[3])
            {
              *(v26 + v34 - 4) = -1;
            }

            if (v40.i8[4])
            {
              *(v26 + v34 - 3) = -1;
            }

            if (v40.i8[5])
            {
              *(v26 + v34 - 2) = -1;
            }

            if (v40.i8[6])
            {
              *(v26 + v34 - 1) = -1;
            }

            if (v40.i8[7])
            {
              *(v26 + v34) = -1;
            }

            if (v40.i8[8])
            {
              *(v26 + v34 + 1) = -1;
            }

            if (v40.i8[9])
            {
              *(v26 + v34 + 2) = -1;
            }

            if (v40.i8[10])
            {
              *(v26 + v34 + 3) = -1;
            }

            if (v40.i8[11])
            {
              *(v26 + v34 + 4) = -1;
            }

            if (v40.i8[12])
            {
              *(v26 + v34 + 5) = -1;
            }

            if (v40.i8[13])
            {
              *(v26 + v34 + 6) = -1;
            }

            if (v40.i8[14])
            {
              *(v26 + v34 + 7) = -1;
            }

            if (v40.i8[15])
            {
              *(v26 + v34 + 8) = -1;
            }

            v34 += 16;
            v35 = vaddq_s32(v35, v20);
            v36 = vaddq_s32(v36, v20);
            v37 = vaddq_s32(v37, v20);
            v38 = vaddq_s32(v38, v20);
          }

          while (v27 != v34);
          ++v23;
          v26 += v12;
        }

        while (v23 != v15);
      }

      ++v10;
      v9 += v14;
      v21 += v14;
      v18 += v14;
      v19 -= v14;
    }

    while (v10 != a2);
    goto LABEL_55;
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_86);
  }

  v4 = _NULogger;
  v41 = os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v41)
  {
    v58 = 0;
    v7 = "NUDebugWatermarkCVPixelBuffer buffer too small.";
    v8 = &v58;
    goto LABEL_7;
  }

  return result;
}

id NUAssertLogger_26149()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26167);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_26332()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26361);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void std::default_delete<NU::Histogram<long,double>>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1C68D90D0);
}

__n128 __Block_byref_object_copy__105(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__106(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void NU::Histogram<long,double>::Kernel::box(void *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000001) != 1)
  {
    __assert_rtn("box", "Histogram.hpp", 292, "size % 2 == 1");
  }

  std::vector<long>::vector[abi:ne200100](&__p, a2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, __p, v5, (v5 - __p) >> 3);
  a1[3] = a2;
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1C0360390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK2NU9HistogramIldE16modalityAnalysisEmRKdS3_RU15__autoreleasingKU13block_pointerFllE_block_invoke(void *a1, unint64_t a2)
{
  v2 = a1[7] - a1[6];
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + (v2 >> 63);
  if (v3 != (v4 | 1))
  {
    __assert_rtn("sample", "Histogram.hpp", 376, "n == 2*k+1");
  }

  v7 = a1[9];
  if (v3 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = a1[5];
    v11 = (*(v10 + 24) - *(v10 + 16)) >> 3;
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = v11 - 1;
    v15 = vcvtmd_s64_f64((*a2 - v12) / (v13 - v12) * v11);
    if (v14 >= v15)
    {
      v14 = v15;
    }

    v16 = a1[10];
    v17 = (v14 & ~(v14 >> 63)) - (v4 >> 1);
    do
    {
      v9 += *(a1[6] + v8) * (*(*v16 + 16))();
      v8 += 8;
      ++v17;
      --v3;
    }

    while (v3);
  }

  v18 = *(a2 + 8);
  if (v18 - (v9 + v7 / 2) / v7 >= a1[11])
  {
    v19 = *(a1[4] + 8);
    v21 = v19[6];
    v20 = v19[7];
    v22 = v20 - v21;
    if (v20 == v21)
    {
      v24 = v19[7];
    }

    else
    {
      v23 = v22 >> 4;
      v24 = v19[6];
      do
      {
        v25 = v23 >> 1;
        v26 = &v24[16 * (v23 >> 1)];
        v27 = *(v26 + 1);
        v28 = v26 + 16;
        v23 += ~(v23 >> 1);
        if (v18 > v27)
        {
          v23 = v25;
        }

        else
        {
          v24 = v28;
        }
      }

      while (v23);
    }

    v29 = v19[8];
    if (v20 >= v29)
    {
      v32 = (v22 >> 4) + 1;
      if (v32 >> 60)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v33 = v24 - v21;
      v34 = v29 - v21;
      v35 = (v29 - v21) >> 3;
      if (v35 > v32)
      {
        v32 = v35;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF0)
      {
        v36 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v32;
      }

      v37 = v33 >> 4;
      if (v36)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<NU::Histogram<long,double>::Sample>>(v36);
      }

      v38 = (16 * v37);
      v39 = 16 * v37;
      if (!v37)
      {
        if (v33 < 1)
        {
          if (v24 == v21)
          {
            v42 = 1;
          }

          else
          {
            v42 = v33 >> 3;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<NU::Histogram<long,double>::Sample>>(v42);
        }

        v38 = (v38 - (((v33 >> 1) + 8) & 0xFFFFFFFFFFFFFFF0));
        v39 = v38;
      }

      *v38 = *a2;
      v43 = v39 + 16;
      memcpy((v39 + 16), v24, v19[7] - v24);
      v44 = v19[6];
      v52 = (v43 + v19[7] - v24);
      v19[7] = v24;
      v45 = v38 - (v24 - v44);
      memcpy(v45, v44, v24 - v44);
      v46 = v19[6];
      v19[6] = v45;
      *(v19 + 7) = v52;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else if (v24 == v20)
    {
      *v20 = *a2;
      v19[7] = v20 + 16;
    }

    else
    {
      v30 = v24 + 16;
      if (v20 < 0x10)
      {
        v31 = v19[7];
      }

      else
      {
        v31 = v20 + 16;
        *v20 = *(v20 - 1);
      }

      v19[7] = v31;
      if (v20 != v30)
      {
        memmove(v24 + 16, v24, v20 - v30);
        v31 = v19[7];
      }

      v40 = v31 <= a2 || v24 > a2;
      v41 = 16;
      if (v40)
      {
        v41 = 0;
      }

      *v24 = *(a2 + v41);
    }

    v47 = a1[12];
    while (1)
    {
      v48 = *(a1[4] + 8);
      v51 = *(v48 + 56);
      v49 = (v48 + 56);
      v50 = v51;
      if (v47 >= (v51 - *(v49 - 1)) >> 4)
      {
        break;
      }

      *v49 = v50 - 16;
    }
  }
}

void sub_1C0360720(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C0360798(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void NU::Histogram<long,double>::findAllModes(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = (*(*a2 + 16))();
  v9 = (*(*a2 + 16))();
  v10 = (v6 - v7) >> 3;
  v11 = v8 - v9;
  v12 = v8 == v9;
  v32 = v10;
  if (v10 < 0)
  {
    v33 = -2;
    if (v8 != v9)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  v13 = 0;
  v14 = v10 + 1;
  v33 = -2;
  v15 = v8;
  do
  {
    v8 = (*(*a2 + 16))();
    v16 = v8 - v15;
    if (v11 >= 1 && v16 < 0)
    {
      if (v13)
      {
        v17 = *(a1 + 8);
        v18 = (v17 - *a1) / ((*(a1 + 24) - *(a1 + 16)) >> 3);
        v19 = *a1 + (v13 - 1) * v18 + v11 / (v11 - v16) * v18;
        if (*a1 >= v19)
        {
          v19 = *a1;
        }

        if (v17 < v19)
        {
          v19 = *(a1 + 8);
        }

        v34 = v19;
        v35 = v15;
        (v5)[2](v5, &v34);
      }
    }

    else if (v11 < 1 || v16)
    {
      if (v11 | v16)
      {
        if (v11)
        {
          v20 = 0;
        }

        else
        {
          v20 = v16 < 0;
        }

        v21 = v20;
        if (v13 && (v21 & v12) != 0 && v13 - v33 < (*(a1 + 24) - *(a1 + 16)) >> 3)
        {
          v22 = NU::Histogram<long,double>::sample(a1, *a2, vcvtd_n_f64_s64(v33 + v13, 1uLL));
          v34 = v23;
          v35 = v24;
          (v5[2])(v5, &v34, v22);
        }

        v12 = 0;
      }

      else
      {
        v16 = 0;
        v8 = v15;
      }
    }

    else
    {
      v33 = v13 - 1;
      v12 = 1;
    }

    ++v13;
    v11 = v16;
    v15 = v8;
  }

  while (v14 != v13);
  if (v12)
  {
LABEL_31:
    v25 = (*(*a2 + 16))();
    if (v25 == v8)
    {
      v26 = *(a1 + 8);
      v27 = (v26 - *a1) / ((*(a1 + 24) - *(a1 + 16)) >> 3);
      v28 = *a1 + v32 * v27 + v27 * 0.0;
      if (*a1 >= v28)
      {
        v28 = *a1;
      }

      if (v26 < v28)
      {
        v28 = *(a1 + 8);
      }

      v34 = v28;
      v35 = v8;
      (v5)[2](v5, &v34);
    }

    else if (v25 < v8)
    {
      v29 = NU::Histogram<long,double>::sample(a1, *a2, vcvtd_n_f64_s64(v32 + 1 + v33, 1uLL));
      v34 = v30;
      v35 = v31;
      (v5[2])(v5, &v34, v29);
    }
  }

LABEL_39:
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NU::Histogram<long,double>::Sample>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double NU::Histogram<long,double>::sample(uint64_t a1, uint64_t a2, double a3)
{
  v4 = floor(a3);
  v5 = a3 - v4;
  (*(a2 + 16))(a2, vcvtmd_s64_f64(a3));
  result = *a1;
  v7 = *(a1 + 8);
  v8 = (v7 - *a1) / ((*(a1 + 24) - *(a1 + 16)) >> 3);
  v9 = *a1 + v4 * v8 + v5 * v8;
  if (*a1 < v9)
  {
    result = v9;
  }

  if (v7 < result)
  {
    return *(a1 + 8);
  }

  return result;
}

void std::vector<long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void __destroy_helper_block_ea8_48c30_ZTSN2NU9HistogramIldE6KernelE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t __copy_helper_block_ea8_48c30_ZTSN2NU9HistogramIldE6KernelE(void *a1, uint64_t *a2)
{
  a1[6] = 0;
  a1[7] = 0;
  v3 = a1 + 6;
  a1[8] = 0;
  result = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>((a1 + 6), a2[6], a2[7], (a2[7] - a2[6]) >> 3);
  v3[3] = a2[9];
  return result;
}

void *std::vector<long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C0360CE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id NU::Histogram<long,double>::edgeClamp(uint64_t a1)
{
  v1 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZNK2NU9HistogramIldE9edgeClampEv_block_invoke;
  v4[3] = &__block_descriptor_48_e8_q16__0q8l;
  v4[4] = a1;
  v4[5] = v1;
  v2 = MEMORY[0x1C68D98A0](v4);

  return v2;
}

uint64_t ___ZNK2NU9HistogramIldE6repeatEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (a2 >= 0)
  {
    v2 = -v3;
  }

  return *(*(*(a1 + 32) + 16) + 8 * v2 + 8 * a2);
}

uint64_t ___ZNK2NU9HistogramIldE6mirrorEv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = -a2;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 <= a2)
    {
      v3 = 2 * v2 - a2 - 2;
    }

    else
    {
      v3 = a2;
    }
  }

  return *(*(*(a1 + 32) + 16) + 8 * v3);
}

uint64_t ___ZNK2NU9HistogramIldE9edgeClampEv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = 0;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 <= a2)
    {
      v3 = v2 - 1;
    }

    else
    {
      v3 = a2;
    }
  }

  return *(*(*(a1 + 32) + 16) + 8 * v3);
}

uint64_t ___ZNK2NU9HistogramIldE9zeroClampEv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || *(a1 + 40) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(*(a1 + 32) + 16) + 8 * a2);
  }
}

void sub_1C03610D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__26562(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 ___ZNK2NU9HistogramIldE4modeEv_block_invoke(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (a2->n128_u64[1] > v2[3].n128_u64[1])
  {
    result = *a2;
    v2[3] = *a2;
  }

  return result;
}

double NU::Histogram<long,double>::maximum(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (v1 - *(a1 + 16)) >> 3;
  if (v2 < 1)
  {
    return *(a1 + 8);
  }

  v3 = 0;
  v4 = (v1 - 8);
  while (!*v4--)
  {
    if (v2 == ++v3)
    {
      return *(a1 + 8);
    }
  }

  return *a1 + (v2 - v3) * ((*(a1 + 8) - *a1) / v2);
}

double NU::Histogram<long,double>::minimum(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (*(a1 + 24) - v1) >> 3;
  if (v2 < 1)
  {
    return *a1;
  }

  v3 = 0;
  while (!*(v1 + 8 * v3))
  {
    if (v2 == ++v3)
    {
      return *a1;
    }
  }

  return *a1 + v3 * ((*(a1 + 8) - *a1) / v2);
}

void NU::Histogram<long,double>::convolve(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1] - *a2;
  v4 = v3 >> 3;
  v5 = (v3 >> 3) + (v3 >> 63);
  if (v3 >> 3 != (v5 | 1))
  {
    __assert_rtn("convolve", "Histogram.hpp", 314, "n == 2*k+1");
  }

  v8 = a1;
  v9 = a1 + 16;
  v10 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  std::vector<long>::vector[abi:ne200100](&__src, v10);
  v34 = v10;
  if (v10 <= 0)
  {
    v11 = 0;
    v19 = __src;
  }

  else
  {
    v31 = v9;
    v32 = v8;
    v11 = 0;
    v12 = 0;
    v33 = a2[3];
    v13 = -(v5 >> 1);
    do
    {
      if (v4 < 1)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = v13;
        v17 = v4;
        do
        {
          v15 += *(*a2 + v14) * (*(*a3 + 16))();
          v14 += 8;
          ++v16;
          --v17;
        }

        while (v17);
      }

      v18 = (v15 + v33 / 2) / v33;
      v19 = __src;
      *(__src + v12) = v18;
      v11 += v18;
      ++v12;
      ++v13;
    }

    while (v12 != v34);
    v9 = v31;
    v8 = v32;
  }

  if (v9 != &__src)
  {
    v20 = v36;
    v21 = v36 - v19;
    v22 = *(v8 + 32);
    v23 = *(v8 + 16);
    if (v22 - v23 < (v36 - v19))
    {
      v24 = v21 >> 3;
      if (v23)
      {
        *(v8 + 24) = v23;
        operator delete(v23);
        v22 = 0;
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
      }

      if (!(v24 >> 61))
      {
        v25 = v22 >> 2;
        if (v22 >> 2 <= v24)
        {
          v25 = v21 >> 3;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        std::vector<long>::__vallocate[abi:ne200100](v9, v26);
      }

      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v27 = *(v8 + 24);
    v28 = v27 - v23;
    if (v27 - v23 >= v21)
    {
      if (v36 != v19)
      {
        memmove(*(v8 + 16), v19, v36 - v19);
      }

      v30 = &v23[v21];
    }

    else
    {
      v29 = &v19[v28];
      if (v27 != v23)
      {
        memmove(*(v8 + 16), v19, v28);
        v27 = *(v8 + 24);
      }

      if (v20 != v29)
      {
        memmove(v27, v29, v20 - v29);
      }

      v30 = &v27[v20 - v29];
    }

    *(v8 + 24) = v30;
    v19 = __src;
  }

  *(v8 + 40) = v11;
  if (v19)
  {
    v36 = v19;
    operator delete(v19);
  }
}

void sub_1C0361DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__26675(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_26806()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_26825);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_27066()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27036);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_27316()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27330);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_27562()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27518);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_27696()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_27716);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_28024()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_28042);
  }

  v1 = _NUAssertLogger;

  return v1;
}

double NU::DataSet::abs(double **this)
{
  v1 = *this;
  v2 = this[1];
  while (v1 != v2)
  {
    result = fabs(*v1);
    *v1++ = result;
  }

  return result;
}

void NU::Abs(NU *this@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v7, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  v5 = v7;
  v4 = v8;
  if (v7 != v8)
  {
    v6 = v7;
    do
    {
      *v6 = fabs(*v6);
      ++v6;
    }

    while (v6 != v4);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, v5, v4, (v4 - v5) >> 3);
  if (v5)
  {

    operator delete(v5);
  }
}

void sub_1C03724C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void NU::Abs(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v6, *a1, a1[1], (a1[1] - *a1) >> 3);
  v4 = v6;
  v3 = v7;
  if (v6 != v7)
  {
    v5 = v6;
    do
    {
      *v5 = fabs(*v5);
      ++v5;
    }

    while (v5 != v3);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, v4, v3, (v3 - v4) >> 3);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1C0372584(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double NU::DataSet::square(double **this)
{
  v1 = *this;
  v2 = this[1];
  while (v1 != v2)
  {
    result = *v1 * *v1;
    *v1++ = result;
  }

  return result;
}

double NU::Square@<D0>(NU *this@<X0>, double **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    result = *v5 * *v5;
    *v5++ = result;
  }

  return result;
}

double NU::Square@<D0>(uint64_t *a1@<X0>, double **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *a1, a1[1], (a1[1] - *a1) >> 3);
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    result = *v4 * *v4;
    *v4++ = result;
  }

  return result;
}

NU::DataSet *NU::DataSet::pow(long double **this, long double a2)
{
  v3 = *this;
  v4 = this[1];
  if (*this != v4)
  {
    do
    {
      *v3 = pow(*v3, a2);
      ++v3;
    }

    while (v3 != v4);
  }

  return this;
}

NU::DataSet *NU::DataSet::log(long double **this)
{
  v2 = *this;
  v3 = this[1];
  while (v2 != v3)
  {
    *v2 = log(*v2);
    ++v2;
  }

  return this;
}

void NU::Log(NU *this@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v7, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  v4 = v7;
  v5 = v8;
  if (v7 != v8)
  {
    v6 = v7;
    do
    {
      *v6 = log(*v6);
      ++v6;
    }

    while (v6 != v5);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, v4, v5, (v5 - v4) >> 3);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1C03727CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void NU::Log(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v6, *a1, a1[1], (a1[1] - *a1) >> 3);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    v5 = v6;
    do
    {
      *v5 = log(*v5);
      ++v5;
    }

    while (v5 != v4);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, v3, v4, (v4 - v3) >> 3);
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_1C03728A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

NU::DataSet *NU::DataSet::exp(long double **this)
{
  v2 = *this;
  v3 = this[1];
  while (v2 != v3)
  {
    *v2 = exp(*v2);
    ++v2;
  }

  return this;
}

void NU::Exp(NU *this@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v7, *this, *(this + 1), (*(this + 1) - *this) >> 3);
  v4 = v7;
  v5 = v8;
  if (v7 != v8)
  {
    v6 = v7;
    do
    {
      *v6 = exp(*v6);
      ++v6;
    }

    while (v6 != v5);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, v4, v5, (v5 - v4) >> 3);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1C03729BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void NU::Exp(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v6, *a1, a1[1], (a1[1] - *a1) >> 3);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    v5 = v6;
    do
    {
      *v5 = exp(*v5);
      ++v5;
    }

    while (v5 != v4);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, v3, v4, (v4 - v3) >> 3);
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_1C0372A90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double **NU::DataSet::operator+=(double **result, double a2)
{
  v2 = *result;
  v3 = result[1];
  while (v2 != v3)
  {
    *v2 = *v2 + a2;
    ++v2;
  }

  return result;
}

double **NU::DataSet::operator-=(double **result, double a2)
{
  v2 = *result;
  v3 = result[1];
  while (v2 != v3)
  {
    *v2 = *v2 - a2;
    ++v2;
  }

  return result;
}

uint64_t NU::operator+@<X0>(uint64_t *a1@<X0>, double **a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a2, *a1, a1[1], (a1[1] - *a1) >> 3);
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    *v6 = *v6 + a3;
    ++v6;
  }

  return result;
}

double NU::DataSet::operator*=(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = *a2;
  if ((*(a2 + 8) - *a2) >> 3 >= (v3 >> 3))
  {
    v5 = v3 >> 3;
  }

  else
  {
    v5 = (*(a2 + 8) - *a2) >> 3;
  }

  for (; v5; --v5)
  {
    v6 = *v4++;
    result = v6 * *v2;
    *v2++ = result;
  }

  return result;
}

uint64_t __Block_byref_object_copy__28143(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t NUGetBytesAtPositionFromImageCallback(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 format];
  v9 = [v8 bytesPerPixel];
  v10 = [v7 size];
  v12 = v11;
  v13 = [v8 alignedRowBytesForWidth:v10];
  if (v13 * v12 <= a3)
  {
    a4 = 0;
  }

  else if (a4 >= 1)
  {
    v14 = a4 + a3;
    v15 = a3;
    while (1)
    {
      v16 = v15 / v13;
      v17 = v15 / v13 * v13;
      v18 = v17 + v13;
      if (v14 < v17 + v13)
      {
        v18 = a4 + a3;
      }

      v19 = (v18 - v17) / v9;
      v20 = __OFSUB__(v15, v17);
      v21 = v15 % v13;
      if (!v21)
      {
        break;
      }

      if (!((v21 < 0) ^ v20 | (v21 == 0)))
      {
        if (v21 == v21 / v9 * v9)
        {
          v21 /= v9;
        }

        else
        {
          v21 = v21 / v9 + 1;
        }

        if (v10 < v19)
        {
          v19 = v10;
        }

        v19 -= v21;
        goto LABEL_17;
      }

LABEL_19:
      v15 = v13 + v13 * v16;
      if (v15 >= v14)
      {
        goto LABEL_22;
      }
    }

    if (v10 < v19)
    {
      v19 = v10;
    }

LABEL_17:
    if (v19)
    {
      v23[0] = v21;
      v23[1] = v16;
      v23[2] = v19;
      v23[3] = 1;
      [NUImageUtilities copyPixelsFromImage:v7 rect:v23 destPtr:&a2[v17 - a3 + v21 * v9] destPtrRowBytes:v13];
    }

    goto LABEL_19;
  }

LABEL_22:

  return a4;
}

uint64_t NUGetBytePointerCallback(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 layout];
  v3 = [v2 tileCount];

  if (v3 != 1)
  {
    v7 = NUAssertLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tile count must be 1 for GetBytePointerCallback"];
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = [MEMORY[0x1E696AF00] callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("const void * _Nullable NUGetBytePointerCallback(void *)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageFactory.mm", 134, @"Tile count must be 1 for GetBytePointerCallback", v17, v18, v19, v20, v21);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v24 = 0;
  v4 = [v1 validRegion];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZL24NUGetBytePointerCallbackPv_block_invoke;
  v22[3] = &unk_1E810B690;
  v22[4] = buf;
  [v1 readBufferRegion:v4 withBlock:v22];

  v5 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v5;
}

void ___ZL24NUGetBytePointerCallbackPv_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 buffer];
  *(*(*(a1 + 32) + 8) + 24) = [v3 bytes];
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1C0378DF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C03793EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28726(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C037B674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _NUImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _NUAssertFailHandler(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v14 = +[NUAssertionHandler currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v14 handleFailureInFunction:v15 file:v16 lineNumber:a3 currentlyExecutingJobName:v13 description:v12 arguments:&a9];

  abort();
}

void _NUAssertContinueHandler(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v14 = a4;
  v15 = +[NUAssertionHandler currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v15 continueAfterAssertInFunction:v16 file:v17 lineNumber:a3 currentlyExecutingJobName:v13 description:v14 arguments:&a9];
}

id NUAssertLogger_29205()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29220);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_29354()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29378);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C03815C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29385(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0381858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_29446()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29461);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_29707()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29649);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_29870()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_74);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_29926()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_29);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t NUProtocolEnumerateMethods(Protocol *a1, _BOOL8 a2, _BOOL8 a3, void *a4)
{
  v7 = a4;
  outCount = 0;
  v8 = protocol_copyMethodDescriptionList(a1, a2, a3, &outCount);
  if (v8)
  {
    v9 = v8;
    if (outCount)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = (v7)[2](v7, v11, a2, a3);
        if ((v12 & 1) == 0)
        {
          break;
        }

        ++v10;
        ++v11;
      }

      while (v10 < outCount);
    }

    else
    {
      v12 = 1;
    }

    free(v9);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

id NUDebugQuicklookWrapCGImage(uint64_t a1)
{
  v1 = [objc_alloc(NSClassFromString(&cfstr_Uiimage.isa)) initWithCGImage:a1];

  return v1;
}

void NUDispatchAsyncEnforceCurrentQoS(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1;
  v4 = qos_class_self();
  NUDispatchAsyncEnforceQoS(v5, v4, v3);
}

void NUDispatchAsyncEnforceQoS(void *a1, dispatch_qos_class_t a2, void *a3)
{
  v5 = a1;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, 0, a3);
  dispatch_async(v5, v6);
}

dispatch_time_t NUDispatchSeconds(double a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 < 0.0)
  {
    v2 = NUAssertLogger_29926();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "seconds >= 0.0"];
      *buf = 138543362;
      v19 = v3;
      _os_log_error_impl(&dword_1C0184000, v2, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v5 = NUAssertLogger_29926();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v6)
      {
        v9 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v10 = MEMORY[0x1E696AF00];
        v11 = v9;
        v12 = [v10 callStackSymbols];
        v13 = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v19 = v9;
        v20 = 2114;
        v21 = v13;
        _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v6)
    {
      v7 = [MEMORY[0x1E696AF00] callStackSymbols];
      v8 = [v7 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v19 = v8;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("dispatch_time_t NUDispatchSeconds(NSTimeInterval)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUUtilities.m", 154, @"Invalid parameter not satisfying: %s", v14, v15, v16, v17, "seconds >= 0.0");
  }

  return dispatch_time(0, (a1 * 1000000000.0));
}

uint64_t NUIsAppleInternal()
{
  if (NUIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&NUIsAppleInternal_onceToken, &__block_literal_global_18);
  }

  return NUIsAppleInternal_isAppleInternal;
}

uint64_t __NUIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_ui();
  NUIsAppleInternal_isAppleInternal = result;
  return result;
}

uint64_t NUDeepDictionaryHash(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:v7];
        v9 = NUDeepValueHash();
        v4 ^= (0x16FB702EBEEDA9 * v9) ^ (0x13D6D34D692409 * [v7 hash]);
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t NUDeepValueHash(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = NUDeepDictionaryHash(v1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = NUDeepMapTableHash(v1);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = NUDeepArrayHash(v1);
      }

      else
      {
        v2 = [v1 hash];
      }
    }
  }

  v3 = v2;

  return v3;
}

uint64_t NUDeepMapTableHash(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v1 objectForKey:v7];
        v9 = NUDeepValueHash();
        v4 ^= v9 ^ [v7 hash];
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t NUDeepArrayHash(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 ^= NUDeepValueHash(*(*(&v8 + 1) + 8 * i));
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t NUDeepSetHash(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 ^= 0xAC3036127B157 * NUDeepValueHash(*(*(&v8 + 1) + 8 * i));
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t NUMapTablePointerHash(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v1 objectForKey:v7];
        v4 ^= v8 ^ [v7 hash];
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NUFileTypeFromExtension(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v6 = NUAssertLogger_29926();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "ext != nil"];
      *buf = 138543362;
      v23 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_29926();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("NSString * _Nonnull NUFileTypeFromExtension(NSString *__strong _Nonnull)", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUUtilities.m", 273, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "ext != nil");
  }

  v2 = v1;
  v3 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v1];
  v4 = [v3 identifier];

  return v4;
}

id NUStringForTypeCode(int a1)
{
  v3[0] = HIBYTE(a1);
  v3[1] = BYTE2(a1);
  v3[2] = BYTE1(a1);
  v3[3] = a1;
  v3[4] = 0;
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v3 encoding:30];

  return v1;
}

uint64_t NUTypeCodeFromString(void *a1)
{
  result = [a1 getCString:v2 maxLength:5 encoding:30];
  if (result)
  {
    return (v2[1] << 16) | (v2[0] << 24) | (v2[2] << 8) | v2[3];
  }

  return result;
}

id NUDictionary(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(v27, 0, 128);
  memset(v26, 0, sizeof(v26));
  v24 = &a9;
  v9 = a1;
  v10 = v9;
  v11 = 0;
  if (v9)
  {
    v12 = v9;
    do
    {
      v13 = v24;
      v25 = v24 + 1;
      v14 = *v13;
      v15 = *v13;
      if (v15)
      {
        objc_storeStrong(&v27[v11], v12);
        objc_storeStrong(v26 + v11++, v14);
      }

      v16 = v25;
      v24 = v25 + 1;
      v17 = *v16;

      if (v17)
      {
        v18 = v11 >= 0x10;
      }

      else
      {
        v18 = 1;
      }

      v12 = v17;
    }

    while (!v18);

    if (v11 == 16)
    {
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Too many keys!" userInfo:0];
      objc_exception_throw(v23);
    }
  }

  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v27 count:v11];
  for (i = 120; i != -8; i -= 8)
  {
  }

  for (j = 15; j != -1; --j)
  {
  }

  return v19;
}

id _NUMakeDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [MEMORY[0x1E695DF90] dictionary];
  for (i = &a9; a1; --a1)
  {
    v11 = i;
    v12 = *i;
    i += 2;
    v13 = v11[1];
    v14 = v12;
    [v10 setObject:v13 forKeyedSubscript:v14];
  }

  return v10;
}

id NUAssertLogger_29985()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30003);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_30110()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_30130);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NULogger_30639()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_994);
  }

  v1 = _NULogger;

  return v1;
}

void sub_1C03988D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30803(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_31147()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31131);
  }

  v1 = _NUAssertLogger;

  return v1;
}

uint64_t __Block_byref_object_copy__31154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_31319()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_62_31336);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_31502()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31522);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_31566()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31579);
  }

  v1 = _NUAssertLogger;

  return v1;
}

id NUAssertLogger_31651()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31678);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C03A6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C03A7274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NUAssertLogger_31796()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_31881);
  }

  v1 = _NUAssertLogger;

  return v1;
}

void sub_1C03A9114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 200), 8);
  _Block_object_dispose((v36 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31886(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUAssertLogger_31991()
{
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_32008);
  }

  v1 = _NUAssertLogger;

  return v1;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  MEMORY[0x1EEDBBE38](videoDesc, originIsAtTopLeft);
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

void operator delete()
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
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}