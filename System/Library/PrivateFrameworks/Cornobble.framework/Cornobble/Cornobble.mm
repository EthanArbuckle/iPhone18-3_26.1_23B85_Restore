void sub_247C162FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRCPSyntheticEventStreamClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPSyntheticEventStreamClass_softClass;
  v7 = getRCPSyntheticEventStreamClass_softClass;
  if (!getRCPSyntheticEventStreamClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPSyntheticEventStreamClass_block_invoke;
    v3[3] = &unk_278EDC538;
    v3[4] = &v4;
    __getRCPSyntheticEventStreamClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247C16508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore()
{
  if (!RecapLibraryCore_frameworkLibrary)
  {
    RecapLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary;
}

uint64_t __RecapLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRCPPlayerPlaybackOptionsClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPPlayerPlaybackOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPPlayerPlaybackOptionsClass_block_invoke_cold_1();
  }

  getRCPPlayerPlaybackOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void RecapLibrary()
{
  if (!RecapLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getRCPInlinePlayerClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPInlinePlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPInlinePlayerClass_block_invoke_cold_1();
  }

  getRCPInlinePlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRCPSyntheticEventStreamClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
  }

  getRCPSyntheticEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_247C16CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore_0()
{
  if (!RecapLibraryCore_frameworkLibrary_0)
  {
    RecapLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary_0;
}

uint64_t __RecapLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getRCPSyntheticEventStreamClass_block_invoke_0(uint64_t a1)
{
  if (!RecapLibraryCore_0())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
  }

  getRCPSyntheticEventStreamClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double CRNViewFrameInWindow(void *a1)
{
  v1 = a1;
  v2 = [v1 window];

  if (v2)
  {
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v1 window];
    v12 = [v11 screen];
    v13 = [v12 fixedCoordinateSpace];
    [v1 convertRect:v13 toCoordinateSpace:{v4, v6, v8, v10}];
    v15 = v14;
  }

  else
  {
    [v1 frame];
    v15 = v16;
  }

  return v15;
}

double CRNContentSizeAlongAxis(void *a1, uint64_t a2)
{
  [a1 contentSize];
  if (a2 != 1)
  {
    return v4;
  }

  return result;
}

double CRNSizeAlongAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    return a3;
  }

  return result;
}

double CRNContentSizeInDirection(void *a1, uint64_t a2)
{
  v2 = a2 - 1;
  [a1 contentSize];
  if ((v2 & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    return v4;
  }

  return result;
}

uint64_t CRNAxisFromScrollDirection(uint64_t a1)
{
  if (((a1 - 1) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t CRNPredominantAxisOfContentOf(void *a1)
{
  [a1 contentSize];
  if (v1 > v2)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 < v2);
  }
}

uint64_t CRNQuadrantOfContentOffsetFor(void *a1)
{
  v1 = a1;
  [v1 contentSize];
  if (v2 <= v3)
  {
    v9 = v2;
    v10 = v3;
    [v1 contentOffset];
    v12 = v11;
    v5 = v13;
    [v1 contentSize];
    if (v9 >= v10)
    {
      v7 = 4;
      v8 = 3;
      v5 = v12;
    }

    else
    {
      v6 = v14;
      v7 = 4;
      v8 = 3;
    }
  }

  else
  {
    [v1 contentOffset];
    v5 = v4;
    [v1 contentSize];
    v7 = 1;
    v8 = 2;
  }

  if (v5 >= v6 * 0.5)
  {
    v15 = v8;
  }

  else
  {
    v15 = v7;
  }

  return v15;
}

uint64_t CRNOppositeDirectionFrom(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 4;
  }

  else
  {
    return qword_247C1B340[a1 - 1];
  }
}

double CRNCGRectGetMidpoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double CRNCGRectGetMidpointAlongSide(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      MidX = CGRectGetMidX(*&a2);
      v13.origin.x = a2;
      v13.origin.y = a3;
      v13.size.width = a4;
      v13.size.height = a5;
      CGRectGetMaxY(v13);
      return MidX;
    }

    if (a1 == 4 || a1 == 5)
    {
      MinX = CGRectGetMidX(*&a2);
      goto LABEL_11;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        MinX = CGRectGetMinX(*&a2);
        goto LABEL_11;
      case 1:
        MidX = CGRectGetMidX(*&a2);
        v14.origin.x = a2;
        v14.origin.y = a3;
        v14.size.width = a4;
        v14.size.height = a5;
        CGRectGetMinY(v14);
        return MidX;
      case 2:
        MinX = CGRectGetMaxX(*&a2);
LABEL_11:
        MidX = MinX;
        v12.origin.x = a2;
        v12.origin.y = a3;
        v12.size.width = a4;
        v12.size.height = a5;
        CGRectGetMidY(v12);
        break;
    }
  }

  return MidX;
}

double CRNCGPointAdvanceInDirectionByAmount(uint64_t a1, double result, double a3, double a4)
{
  v4 = result;
  if (a1 == 5)
  {
    v4 = result;
  }

  if (a1 == 4)
  {
    v4 = result;
  }

  v5 = result + a4;
  if (a1 == 2)
  {
    result = result - a4;
  }

  if (a1 == 1)
  {
    result = v5;
  }

  if (a1 > 3)
  {
    return v4;
  }

  return result;
}

uint64_t RecapLibraryCore_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = RecapLibraryCore_frameworkLibrary_1;
  v5 = RecapLibraryCore_frameworkLibrary_1;
  if (!RecapLibraryCore_frameworkLibrary_1)
  {
    v6 = xmmword_278EDC598;
    v7 = *off_278EDC5A8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    RecapLibraryCore_frameworkLibrary_1 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_247C18620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RecapLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  RecapLibraryCore_frameworkLibrary_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RecapLibrary_0()
{
  v0 = RecapLibraryCore_1();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getRCPInlinePlayerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPInlinePlayerClass_softClass_0;
  v7 = getRCPInlinePlayerClass_softClass_0;
  if (!getRCPInlinePlayerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPInlinePlayerClass_block_invoke_0;
    v3[3] = &unk_278EDC538;
    v3[4] = &v4;
    __getRCPInlinePlayerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247C187F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPInlinePlayerClass_block_invoke_0(uint64_t a1)
{
  RecapLibrary_0();
  result = objc_getClass("RCPInlinePlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPInlinePlayerClass_block_invoke_cold_1();
  }

  getRCPInlinePlayerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getRCPEventStreamClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPEventStreamClass_softClass;
  v7 = getRCPEventStreamClass_softClass;
  if (!getRCPEventStreamClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPEventStreamClass_block_invoke;
    v3[3] = &unk_278EDC538;
    v3[4] = &v4;
    __getRCPEventStreamClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247C1892C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPEventStreamClass_block_invoke(uint64_t a1)
{
  RecapLibrary_0();
  result = objc_getClass("RCPEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPEventStreamClass_block_invoke_cold_1();
  }

  getRCPEventStreamClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getRCPSyntheticEventStreamClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPSyntheticEventStreamClass_softClass_1;
  v7 = getRCPSyntheticEventStreamClass_softClass_1;
  if (!getRCPSyntheticEventStreamClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPSyntheticEventStreamClass_block_invoke_1;
    v3[3] = &unk_278EDC538;
    v3[4] = &v4;
    __getRCPSyntheticEventStreamClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247C18A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPSyntheticEventStreamClass_block_invoke_1(uint64_t a1)
{
  RecapLibrary_0();
  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
  }

  getRCPSyntheticEventStreamClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getRCPPlayerPlaybackOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPPlayerPlaybackOptionsClass_softClass_0;
  v7 = getRCPPlayerPlaybackOptionsClass_softClass_0;
  if (!getRCPPlayerPlaybackOptionsClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPPlayerPlaybackOptionsClass_block_invoke_0;
    v3[3] = &unk_278EDC538;
    v3[4] = &v4;
    __getRCPPlayerPlaybackOptionsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247C18B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPPlayerPlaybackOptionsClass_block_invoke_0(uint64_t a1)
{
  RecapLibrary_0();
  result = objc_getClass("RCPPlayerPlaybackOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPPlayerPlaybackOptionsClass_block_invoke_cold_1();
  }

  getRCPPlayerPlaybackOptionsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getRCPEventSenderPropertiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRCPEventSenderPropertiesClass_softClass;
  v7 = getRCPEventSenderPropertiesClass_softClass;
  if (!getRCPEventSenderPropertiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRCPEventSenderPropertiesClass_block_invoke;
    v3[3] = &unk_278EDC538;
    v3[4] = &v4;
    __getRCPEventSenderPropertiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247C18CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRCPEventSenderPropertiesClass_block_invoke(uint64_t a1)
{
  RecapLibrary_0();
  result = objc_getClass("RCPEventSenderProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPEventSenderPropertiesClass_block_invoke_cold_1();
  }

  getRCPEventSenderPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_247C1924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore_2()
{
  if (!RecapLibraryCore_frameworkLibrary_2)
  {
    RecapLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary_2;
}

uint64_t __RecapLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getRCPSyntheticEventStreamClass_block_invoke_2(uint64_t a1)
{
  if (!RecapLibraryCore_2())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
  }

  getRCPSyntheticEventStreamClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_247C196E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore_3()
{
  if (!RecapLibraryCore_frameworkLibrary_3)
  {
    RecapLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary_3;
}

uint64_t __RecapLibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getRCPSyntheticEventStreamClass_block_invoke_3(uint64_t a1)
{
  if (!RecapLibraryCore_3())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
  }

  getRCPSyntheticEventStreamClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_247C19F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore_4()
{
  if (!RecapLibraryCore_frameworkLibrary_4)
  {
    RecapLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary_4;
}

uint64_t __RecapLibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary_4 = result;
  return result;
}

Class __getRCPSyntheticEventStreamClass_block_invoke_4(uint64_t a1)
{
  if (!RecapLibraryCore_4())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("RCPSyntheticEventStream");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRCPSyntheticEventStreamClass_block_invoke_cold_1();
  }

  getRCPSyntheticEventStreamClass_softClass_4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}