void sub_11E83D8(_Unwind_Exception *a1)
{
  sub_11DF114(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_11E840C(uint64_t a1, uint64_t a2)
{
  sub_14D4048(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_14D5848(a1, a2);
    }

    else
    {
      sub_14D5750(a1, a2);
    }
  }

  return a1;
}

void sub_11E8F1C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  sub_1959728(&STACK[0x3A8]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void *sub_11E90EC(void *a1)
{
  v2 = a1 + 14;
  v3 = a1[17];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[13];
    if (v4 != a1 + 10)
    {
      goto LABEL_5;
    }

LABEL_10:
    (*(*v4 + 32))(v4);
    v5 = a1[9];
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[13];
  if (v4 == a1 + 10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[9];
  if (v5)
  {
LABEL_11:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_13:
  v6 = a1[7];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[5];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void *sub_11E92CC(void *a1)
{
  *a1 = off_26762F0;
  sub_11E90EC(a1 + 1);
  return a1;
}

void sub_11E9310(void *a1)
{
  *a1 = off_26762F0;
  sub_11E90EC(a1 + 1);

  operator delete();
}

void sub_11E9420(void *a1)
{
  sub_11E90EC(a1 + 1);

  operator delete(a1);
}

void sub_11E945C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 248);
  sub_7EA60(a1 + 16);
  sub_2D577C(*(a1 + 40));
  sub_11E6940(v4, v5, v12);
  sub_11EC3DC(*(a1 + 56), v12);
  sub_7C9C0(1, v12, *(a1 + 72));
  v6 = v12[3];
  if (v12[3])
  {
    v7 = v12[4];
    v8 = v12[3];
    if (v12[4] != v12[3])
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v12[3];
    }

    v12[4] = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
LABEL_11:
      if (!*(a1 + 144))
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  sub_CFE344(v12, a2);
  sub_1792248(v15, 0, 0);
  sub_CFE344(v13, v12);
  sub_11E6F24(&v14, v15);
  sub_1792484(v15);
  sub_14CA828(v12);
  v10 = *(a1 + 112);
  if (!v10)
  {
    sub_2B7420();
  }

  (*(*v10 + 48))(v10, v13);
  sub_1792484(&v14);
  sub_14CA828(v13);
  if (*(a1 + 144))
  {
LABEL_16:
    sub_2D577C(*(a1 + 40));
    memcpy((*(a1 + 56) + 16), v12, 0x8F9uLL);
    memcpy(v12, *(a1 + 56), sizeof(v12));
    v11 = *(a1 + 144);
    if (!v11)
    {
      sub_2B7420();
    }

    (*(*v11 + 48))(v11, v12);
  }
}

void sub_11E9698(_Unwind_Exception *a1)
{
  sub_1792484(v1 + 256);
  sub_14CA828(&STACK[0x910]);
  _Unwind_Resume(a1);
}

uint64_t sub_11E96B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo323ETATrafficUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_24ETATrafficUpdateResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo323ETATrafficUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_24ETATrafficUpdateResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo323ETATrafficUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_24ETATrafficUpdateResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo323ETATrafficUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_24ETATrafficUpdateResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_11E972C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1 + 80;
  v9 = *(a2 + 13);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v9 != a2 + 5)
  {
    v9 = (*(*v9 + 16))(v9);
LABEL_10:
    *(a1 + 104) = v9;
    goto LABEL_12;
  }

  *(a1 + 104) = v8;
  (*(**(a2 + 13) + 24))(*(a2 + 13), a1 + 80);
LABEL_12:
  v10 = *(a2 + 17);
  if (!v10)
  {
LABEL_15:
    *(a1 + 136) = v10;
    return a1;
  }

  if (v10 != a2 + 7)
  {
    v10 = (*(*v10 + 16))(v10);
    goto LABEL_15;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 17) + 24))(*(a2 + 17));
  return a1;
}

void sub_11E98C0(_Unwind_Exception *a1)
{
  sub_11E086C(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_11EA364(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  sub_1959728(&STACK[0x338]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void *sub_11EA534(void *a1)
{
  v2 = a1 + 14;
  v3 = a1[17];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[13];
    if (v4 != a1 + 10)
    {
      goto LABEL_5;
    }

LABEL_10:
    (*(*v4 + 32))(v4);
    v5 = a1[9];
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[13];
  if (v4 == a1 + 10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[9];
  if (v5)
  {
LABEL_11:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_13:
  v6 = a1[7];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[5];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void *sub_11EA714(void *a1)
{
  *a1 = off_2676380;
  sub_11EA534(a1 + 1);
  return a1;
}

void sub_11EA758(void *a1)
{
  *a1 = off_2676380;
  sub_11EA534(a1 + 1);

  operator delete();
}

void sub_11EA868(void *a1)
{
  sub_11EA534(a1 + 1);

  operator delete(a1);
}

void sub_11EA8A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 208);
  sub_7EA60(a1 + 16);
  sub_2D577C(*(a1 + 40));
  sub_11E6940(v4, v5, __src);
  sub_11EC3DC(*(a1 + 56), __src);
  sub_7C9C0(1, __src, *(a1 + 72));
  v6 = __src[3];
  if (__src[3])
  {
    v7 = __src[4];
    v8 = __src[3];
    if (__src[4] != __src[3])
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __src[3];
    }

    __src[4] = v6;
    operator delete(v8);
  }

  if (SHIBYTE(__src[2]) < 0)
  {
    operator delete(__src[0]);
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
LABEL_11:
      if (!*(a1 + 144))
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  sub_11EAD3C(__src, a2);
  sub_1792248(v15, 0, 0);
  sub_11EAD3C(v13, __src);
  sub_11E6F24(&v14, v15);
  sub_1792484(v15);
  sub_18FDA18(__src);
  v10 = *(a1 + 112);
  if (!v10)
  {
    sub_2B7420();
  }

  (*(*v10 + 48))(v10, v13);
  sub_1792484(&v14);
  sub_18FDA18(v13);
  if (*(a1 + 144))
  {
LABEL_16:
    sub_2D577C(*(a1 + 40));
    memcpy((*(a1 + 56) + 16), __src, 0x8F9uLL);
    memcpy(__src, *(a1 + 56), sizeof(__src));
    v11 = *(a1 + 144);
    if (!v11)
    {
      sub_2B7420();
    }

    (*(*v11 + 48))(v11, __src);
  }
}

void sub_11EAAB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

void sub_11EAACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9DA0(va);
  _Unwind_Resume(a1);
}

void sub_11EAAE0(_Unwind_Exception *a1)
{
  sub_1792484(v1 + 216);
  sub_18FDA18(&STACK[0x918]);
  _Unwind_Resume(a1);
}

uint64_t sub_11EAAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo39placedata12PlaceRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_13PlaceResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo39placedata12PlaceRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_13PlaceResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo39placedata12PlaceRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_13PlaceResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo39placedata12PlaceRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_13PlaceResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_11EAB74(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1 + 80;
  v9 = *(a2 + 13);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v9 != a2 + 5)
  {
    v9 = (*(*v9 + 16))(v9);
LABEL_10:
    *(a1 + 104) = v9;
    goto LABEL_12;
  }

  *(a1 + 104) = v8;
  (*(**(a2 + 13) + 24))(*(a2 + 13), a1 + 80);
LABEL_12:
  v10 = *(a2 + 17);
  if (!v10)
  {
LABEL_15:
    *(a1 + 136) = v10;
    return a1;
  }

  if (v10 != a2 + 7)
  {
    v10 = (*(*v10 + 16))(v10);
    goto LABEL_15;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 17) + 24))(*(a2 + 17));
  return a1;
}

void sub_11EAD08(_Unwind_Exception *a1)
{
  sub_11E1FC4(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_11EAD3C(uint64_t a1, uint64_t a2)
{
  sub_18FD3D0(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_18FF214(a1, a2);
    }

    else
    {
      sub_18FF0F0(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_11EADDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11EB8D8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_1959728(&STACK[0x218]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void *sub_11EBAA8(void *a1)
{
  v2 = a1 + 14;
  v3 = a1[17];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[13];
    if (v4 != a1 + 10)
    {
      goto LABEL_5;
    }

LABEL_10:
    (*(*v4 + 32))(v4);
    v5 = a1[9];
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[13];
  if (v4 == a1 + 10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[9];
  if (v5)
  {
LABEL_11:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_13:
  v6 = a1[7];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[5];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void *sub_11EBC88(void *a1)
{
  *a1 = off_2676410;
  sub_11EBAA8(a1 + 1);
  return a1;
}

void sub_11EBCCC(void *a1)
{
  *a1 = off_2676410;
  sub_11EBAA8(a1 + 1);

  operator delete();
}

void sub_11EBDDC(void *a1)
{
  sub_11EBAA8(a1 + 1);

  operator delete(a1);
}

void sub_11EBE18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 112);
  sub_7EA60(a1 + 16);
  sub_2D577C(*(a1 + 40));
  sub_11E6940(v4, v5, __src);
  sub_11EC3DC(*(a1 + 56), __src);
  sub_7C9C0(1, __src, *(a1 + 72));
  v6 = __src[3];
  if (__src[3])
  {
    v7 = __src[4];
    v8 = __src[3];
    if (__src[4] != __src[3])
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __src[3];
    }

    __src[4] = v6;
    operator delete(v8);
  }

  if (SHIBYTE(__src[2]) < 0)
  {
    operator delete(__src[0]);
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
LABEL_11:
      if (!*(a1 + 144))
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  sub_11EC2B0(__src, a2);
  sub_1792248(v15, 0, 0);
  sub_11EC2B0(v13, __src);
  sub_11E6F24(&v14, v15);
  sub_1792484(v15);
  sub_143B10C(__src);
  v10 = *(a1 + 112);
  if (!v10)
  {
    sub_2B7420();
  }

  (*(*v10 + 48))(v10, v13);
  sub_1792484(&v14);
  sub_143B10C(v13);
  if (*(a1 + 144))
  {
LABEL_16:
    sub_2D577C(*(a1 + 40));
    memcpy((*(a1 + 56) + 16), __src, 0x8F9uLL);
    memcpy(__src, *(a1 + 56), sizeof(__src));
    v11 = *(a1 + 144);
    if (!v11)
    {
      sub_2B7420();
    }

    (*(*v11 + 48))(v11, __src);
  }
}

void sub_11EC02C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_143B10C(va);
  _Unwind_Resume(a1);
}

void sub_11EC040(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9DA0(va);
  _Unwind_Resume(a1);
}

void sub_11EC054(_Unwind_Exception *a1)
{
  sub_1792484(v1 + 120);
  sub_143B10C(&STACK[0x918]);
  _Unwind_Resume(a1);
}

uint64_t sub_11EC070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo37transit18RouteUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_19RouteUpdateResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo37transit18RouteUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_19RouteUpdateResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo37transit18RouteUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_19RouteUpdateResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo37transit18RouteUpdateRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS5_19RouteUpdateResponseEEEEEENSB_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNSA_6vectorINSA_4pairINSA_12basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEESR_EENSP_ISS_EEEEENK3$_0clENSA_10shared_ptrINS_7routing18RoutingDataContextEEENSY_ISH_EEEUlOSD_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_11EC0E8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1 + 80;
  v9 = *(a2 + 13);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v9 != a2 + 5)
  {
    v9 = (*(*v9 + 16))(v9);
LABEL_10:
    *(a1 + 104) = v9;
    goto LABEL_12;
  }

  *(a1 + 104) = v8;
  (*(**(a2 + 13) + 24))(*(a2 + 13), a1 + 80);
LABEL_12:
  v10 = *(a2 + 17);
  if (!v10)
  {
LABEL_15:
    *(a1 + 136) = v10;
    return a1;
  }

  if (v10 != a2 + 7)
  {
    v10 = (*(*v10 + 16))(v10);
    goto LABEL_15;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 17) + 24))(*(a2 + 17));
  return a1;
}

void sub_11EC27C(_Unwind_Exception *a1)
{
  sub_11E3714(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_11EC2B0(uint64_t a1, uint64_t a2)
{
  sub_143ACEC(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_143BF08(a1, a2);
    }

    else
    {
      sub_143BE54(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_11EC350(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11EC3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *a2 = *"OfflineRoutingService";
  *(a2 + 16) = 0u;
  *(a2 + 23) = 21;
  *(a2 + 13) = *"gService";
  LOBYTE(v17) = 0;
  result = sub_CCEBC0((a2 + 24), "DataAge", &v17, (a1 + 8));
  v5 = *(a1 + 2312);
  *(a2 + 32) = result;
  if (v5)
  {
    v18 = 4;
    v17 = sub_32AC08(a1 + 16);
    v6 = *(a2 + 32);
    if (v6 >= *(a2 + 40))
    {
      v7 = sub_E22580((a2 + 24), "NumNonEmptyQuadNodes", &v18, &v17);
    }

    else
    {
      sub_E22734(*(a2 + 32), "NumNonEmptyQuadNodes", &v18, &v17);
      v7 = v6 + 48;
    }

    *(a2 + 32) = v7;
    v18 = 4;
    v17 = sub_32A9A0((a1 + 16));
    v8 = *(a2 + 32);
    if (v8 >= *(a2 + 40))
    {
      v9 = sub_11EC760((a2 + 24), "NumEmptyQuadNodes", &v18, &v17);
    }

    else
    {
      sub_11EC914(*(a2 + 32), "NumEmptyQuadNodes", &v18, &v17);
      v9 = v8 + 48;
    }

    *(a2 + 32) = v9;
    v18 = 4;
    v10 = sub_32AC08(a1 + 16);
    v17 = v10 + sub_32A9A0((a1 + 16));
    v11 = *(a2 + 32);
    if (v11 >= *(a2 + 40))
    {
      v12 = sub_11EC760((a2 + 24), "NumTotalQuadNodes", &v18, &v17);
    }

    else
    {
      sub_11EC914(*(a2 + 32), "NumTotalQuadNodes", &v18, &v17);
      v12 = v11 + 48;
    }

    *(a2 + 32) = v12;
    v18 = 3;
    v17 = sub_32AD80((a1 + 16));
    v13 = *(a2 + 32);
    if (v13 >= *(a2 + 40))
    {
      v14 = sub_11ECA6C((a2 + 24), "SmallQuadNodesSize", &v18, &v17);
    }

    else
    {
      sub_11ECC20(*(a2 + 32), "SmallQuadNodesSize", &v18, &v17);
      v14 = v13 + 48;
    }

    *(a2 + 32) = v14;
    v18 = 3;
    v17 = sub_32AC38((a1 + 16));
    v15 = *(a2 + 32);
    if (v15 >= *(a2 + 40))
    {
      v16 = sub_11ECA6C((a2 + 24), "TotalQuadNodesSize", &v18, &v17);
    }

    else
    {
      sub_11ECC20(*(a2 + 32), "TotalQuadNodesSize", &v18, &v17);
      v16 = v15 + 48;
    }

    *(a2 + 32) = v16;
    v18 = 1;
    v17 = *(a1 + 2288) + *(a1 + 2296);
    if (v16 >= *(a2 + 40))
    {
      result = sub_11ECA6C((a2 + 24), "QuadNodesFetchTime", &v18, &v17);
    }

    else
    {
      sub_11ECC20(v16, "QuadNodesFetchTime", &v18, &v17);
      result = v16 + 48;
    }

    *(a2 + 32) = result;
  }

  return result;
}

void sub_11EC6BC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_11EC760(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_11EC914(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_11EC900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11EC914(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_11ECA6C(uint64_t *a1, char *a2, char *a3, double *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_11ECC20(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_11ECC0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11ECC20(uint64_t a1, char *__s, char *a3, double *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

void sub_11ECD78(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  if (sub_3B795C(a2))
  {
LABEL_2:
    if (!sub_7E7E4(1u))
    {
      goto LABEL_40;
    }

    sub_19594F8(&v23);
    sub_4A5C(&v23, "Requested type or transport mode disabled.", 42);
    if ((v33 & 0x10) != 0)
    {
      v11 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v11 = v29;
      }

      v12 = v28;
      v6 = v11 - v28;
      if (v11 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v6 = 0;
        v22 = 0;
LABEL_35:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
        if (v22 < 0)
        {
          operator delete(__dst);
        }

        if (v31 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_40:
        sub_11ED8A0();
      }

      v12 = v26;
      v6 = v27 - v26;
      if (v27 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_48:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v22 = v6;
    if (v6)
    {
      memmove(&__dst, v12, v6);
    }

    goto LABEL_35;
  }

  v7 = a1[53];
  if (v7 > 38)
  {
    if (v7 != 39)
    {
      if (v7 == 57)
      {
        if (sub_3B70BC(a2) & 1) != 0 || (sub_3B7F28(a2))
        {
          goto LABEL_2;
        }
      }

      else if (v7 == 50 && ((sub_3B70BC(a2) & 1) != 0 || (sub_3B7C3C(a2) & 1) != 0))
      {
        goto LABEL_2;
      }

LABEL_22:
      v9 = sub_74700();
      sub_E893C4(a1);
      nullsub_1(v9);
      sub_E89404();
      nullsub_1(v9);
      v10 = a1[53];
      if (v10 <= 36)
      {
        if (v10 != 5 && v10 != 21 && v10 != 23)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v10 > 49)
        {
          if (v10 == 50)
          {
            v17 = *(a3 + 24);
            if (v17)
            {
              if (v17 == a3)
              {
                v46 = v45;
                (*(*v17 + 24))(v17, v45);
              }

              else
              {
                v46 = (*(*v17 + 16))(v17);
              }
            }

            else
            {
              v46 = 0;
            }

            v44 = 0;
            sub_E27A70();
          }

          if (v10 == 57)
          {
            v14 = *(a3 + 24);
            if (v14)
            {
              if (v14 == a3)
              {
                v43 = v42;
                (*(*v14 + 24))(v14, v42);
              }

              else
              {
                v43 = (*(*v14 + 16))(v14);
              }
            }

            else
            {
              v43 = 0;
            }

            v41 = 0;
            sub_E26290(a1, a2, v42, v40);
          }

LABEL_58:
          if (!sub_7E7E4(1u))
          {
            goto LABEL_94;
          }

          sub_19594F8(&v23);
          sub_4A5C(&v23, "Place request type not supported.", 33);
          if ((v33 & 0x10) != 0)
          {
            v18 = v32;
            if (v32 < v29)
            {
              v32 = v29;
              v18 = v29;
            }

            v19 = &v28;
          }

          else
          {
            if ((v33 & 8) == 0)
            {
              v15 = 0;
              v22 = 0;
LABEL_89:
              *(&__dst + v15) = 0;
              sub_7E854(&__dst, 1u);
              if (v22 < 0)
              {
                operator delete(__dst);
              }

              if (v31 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v25);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_94:
              sub_11ED8A0();
            }

            v19 = &v26;
            v18 = v27;
          }

          v20 = *v19;
          v15 = v18 - *v19;
          if (v15 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v15 >= 0x17)
          {
            operator new();
          }

          v22 = v18 - *v19;
          if (v15)
          {
            memmove(&__dst, v20, v15);
          }

          goto LABEL_89;
        }

        if (v10 == 37)
        {
          v16 = *(a3 + 24);
          if (v16)
          {
            if (v16 == a3)
            {
              v39 = v38;
              (*(*v16 + 24))(v16, v38);
            }

            else
            {
              v39 = (*(*v16 + 16))(v16);
            }
          }

          else
          {
            v39 = 0;
          }

          v37 = 0;
          sub_E2B9D0(a1, a2, v38, v36);
        }

        if (v10 != 39)
        {
          goto LABEL_58;
        }
      }

      v13 = *(a3 + 24);
      if (v13)
      {
        if (v13 == a3)
        {
          v49 = v48;
          (*(*v13 + 24))(v13, v48);
        }

        else
        {
          v49 = (*(*v13 + 16))(v13);
        }
      }

      else
      {
        v49 = 0;
      }

      v47 = 0;
      sub_DE5130();
    }
  }

  else if (v7 != 5 && v7 != 23)
  {
    if (v7 == 37 && ((sub_3B70BC(a2) & 1) != 0 || sub_3B8210(a2)))
    {
      goto LABEL_2;
    }

    goto LABEL_22;
  }

  if (sub_3B70BC(a2))
  {
    goto LABEL_2;
  }

  goto LABEL_22;
}

void sub_11ED7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_11ED9A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

void sub_11ED9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11ED9D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11EDA5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11EDAE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11EDB74(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11EDC00@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 7;
    strcpy(a2, "watchos");
  }

  else if (result)
  {
    a2[23] = 7;
    strcpy(a2, "unknown");
  }

  else
  {
    a2[23] = 3;
    *a2 = 28521;
    a2[2] = 115;
    a2[3] = 0;
  }

  return result;
}

void sub_11EDC7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_3B767C(a2) & 1) == 0 && !sub_3B70BC(a2))
  {
    v7 = sub_74700();
    sub_E82FB8(a1);
    nullsub_1(v7);
    sub_E893E4(a1);
    nullsub_1(v7);
    v8 = *(a3 + 24);
    if (v8)
    {
      if (v8 == a3)
      {
        v25 = v24;
        (*(*v8 + 24))(v8, v24);
      }

      else
      {
        v25 = (*(*v8 + 16))(v8);
      }
    }

    else
    {
      v25 = 0;
    }

    sub_E294A4();
  }

  if (!sub_7E7E4(1u))
  {
LABEL_23:
    operator new();
  }

  sub_19594F8(&v13);
  sub_4A5C(&v13, "Requested type or transport mode disabled.", 42);
  if ((v23 & 0x10) != 0)
  {
    v9 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v9 = v19;
    }

    v10 = v18;
    v6 = v9 - v18;
    if (v9 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v6 = 0;
      v12 = 0;
LABEL_18:
      *(&__dst + v6) = 0;
      sub_7E854(&__dst, 1u);
      if (v12 < 0)
      {
        operator delete(__dst);
      }

      if (v21 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v15);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_23;
    }

    v10 = v16;
    v6 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v6;
  if (v6)
  {
    memmove(&__dst, v10, v6);
  }

  goto LABEL_18;
}

void sub_11EE12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_11EE170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_143B10C(va);
  _Unwind_Resume(a1);
}

void sub_11EE184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_11EE1AC(void *result)
{
  *result = off_27215B8;
  v1 = result[1];
  if ((v1 & 2) != 0)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFCLL);
    if (v1)
    {
      v2 = *v2;
      if (v2)
      {
LABEL_4:
        sub_194E188(v2);
        operator delete();
      }
    }

    else if (v2)
    {
      goto LABEL_4;
    }
  }

  return result;
}

void *sub_11EE22C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11EE2CC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11EE38C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11EE3B0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v25 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v25;
      v5 = *(v25 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v12 = a1;
    v13 = v3;
    v14 = a3;
    v15 = sub_225EB68(a3, v13);
    a3 = v14;
    v3 = v15;
    a1 = v12;
    v11 = *(v12 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 28);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v16 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v17 = v11 >> 7;
    do
    {
      *(v3 - 1) = v17 | 0x80;
      v17 = v16 >> 7;
      *v3++ = v16 >> 7;
      v18 = v16 >> 14;
      v16 >>= 7;
    }

    while (v18);
  }

LABEL_17:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v3;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  v24 = v22;
  if (*a3 - v3 < v22)
  {

    return sub_1957130(a3, v23, v22, v3);
  }

  else
  {
    memcpy(v3, v23, v22);
    return &v3[v24];
  }
}

uint64_t sub_11EE5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v4 = *(a1 + 28);
    if (v4 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v5;
    goto LABEL_14;
  }

  v3 = *(a1 + 24);
  if (v3 < 0)
  {
    v2 = 11;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v10 = v9 + v2;
    *(a1 + 20) = v10;
    return v10;
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

std::string *sub_11EE668(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v2 & 2) != 0)
    {
      HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11EE720(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_11EE858(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  v5 = a1[11];
  if (v5 && !a1[9])
  {
    v6 = v5 + 2;
    v7 = *v5;
    if (v7 >= 1)
    {
      do
      {
        if (*v6)
        {
          sub_16E4E08();
          operator delete();
        }

        ++v6;
        --v7;
      }

      while (v7);
      v5 = a1[11];
    }

    operator delete(v5);
  }

  a1[11] = 0;
  sub_1956ABC((a1 + 7));
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  v8 = a1[1];
  if ((v8 & 2) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      if (*v9)
      {
LABEL_17:
        sub_194E188();
        operator delete();
      }
    }

    else if (v9)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void ***sub_11EE858(uint64_t a1)
{
  v3 = *(a1 + 96);
  result = (a1 + 96);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2733FF0)
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      v5 = v4[1];
      if ((v5 & 1) != 0 && !*(v5 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v4 + 1);
        v5 = v4[1];
      }

      *v4 = off_27215B8;
      if ((v5 & 2) != 0)
      {
        v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
        if (v5)
        {
          if (*v6)
          {
LABEL_9:
            sub_194E188();
            operator delete();
          }
        }

        else if (v6)
        {
          goto LABEL_9;
        }
      }

      operator delete();
    }

    v7 = *(a1 + 112);
    if (v7)
    {
      v8 = v7[1];
      if ((v8 & 1) != 0 && !*(v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v7 + 1);
        v8 = v7[1];
      }

      *v7 = off_27215B8;
      if ((v8 & 2) != 0)
      {
        v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
        if (v8)
        {
          if (*v9)
          {
LABEL_16:
            sub_194E188();
            operator delete();
          }
        }

        else if (v9)
        {
          goto LABEL_16;
        }
      }

      operator delete();
    }
  }

  return result;
}

void sub_11EEA0C(void *a1)
{
  sub_11EE720(a1);

  operator delete();
}

uint64_t sub_11EEA44(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  v2 = *(result + 80);
  if (v2 >= 1)
  {
    v3 = (*(result + 88) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E4E44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 80) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) != 0)
    {
LABEL_10:
      v7 = *(v1 + 104);
      if ((*(v7 + 16) & 3) != 0)
      {
        *(v7 + 24) = 0;
      }

      v8 = *(v7 + 8);
      result = v7 + 8;
      *(result + 8) = 0;
      if (v8)
      {
        result = sub_1957EA8(result);
      }
    }

LABEL_15:
    if ((v5 & 4) != 0)
    {
      v9 = *(v1 + 112);
      if ((*(v9 + 16) & 3) != 0)
      {
        *(v9 + 24) = 0;
      }

      v10 = *(v9 + 8);
      result = v9 + 8;
      *(result + 8) = 0;
      if (v10)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v5 & 0xF8) != 0)
  {
    *(v1 + 136) = 0u;
    *(v1 + 120) = 0u;
  }

  if ((v5 & 0x700) != 0)
  {
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
    *(v1 + 168) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_11EEBC0(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0 && (v8 = *(v7 + 8), v8 > 127) || *a3 - __dst + 14 < v8)
    {
      result = sub_19572D4(a3, 1, v7, __dst);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *__dst = 10;
      v9 = __dst + 2;
      __dst[1] = v8;
      if (*(v7 + 23) >= 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = *v7;
      }

      memcpy(v9, v10, v8);
      result = &v9[v8];
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    result = __dst;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v11 = *(a1 + 136);
    *result = 16;
    result[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = *(a1 + 136);
    *result = 16;
    result[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_13:
      result += 2;
      goto LABEL_20;
    }
  }

  result[1] = v11 | 0x80;
  v12 = v11 >> 7;
  result[2] = v11 >> 7;
  result += 3;
  if (v11 >= 0x4000)
  {
    v13 = v11 >> 7;
    do
    {
      *(result - 1) = v13 | 0x80;
      v13 = v12 >> 7;
      *result++ = v12 >> 7;
      v14 = v12 >> 14;
      v12 >>= 7;
    }

    while (v14);
  }

LABEL_20:
  if ((v5 & 8) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v15 = *(a1 + 120);
    *result = 25;
    *(result + 1) = v15;
    result += 9;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v16 = *(a1 + 128);
      *result = 32;
      result[1] = v16;
      if (v16 <= 0x7F)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = *(a1 + 128);
      *result = 32;
      result[1] = v16;
      if (v16 <= 0x7F)
      {
LABEL_27:
        result += 2;
        goto LABEL_32;
      }
    }

    result[1] = v16 | 0x80;
    v17 = v16 >> 7;
    result[2] = v16 >> 7;
    result += 3;
    if (v16 >= 0x4000)
    {
      v18 = v16 >> 7;
      do
      {
        *(result - 1) = v18 | 0x80;
        v18 = v17 >> 7;
        *result++ = v17 >> 7;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
    }
  }

LABEL_32:
  v20 = *(a1 + 24);
  if (v20 >= 1)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v20 = *(a1 + 24);
    }

    v21 = 8 * v20;
    *result = 42;
    v22 = result + 1;
    v23 = v21;
    if (v21 >= 0x80)
    {
      do
      {
        *v22++ = v23 | 0x80;
        v28 = v23 >> 14;
        v23 >>= 7;
      }

      while (v28);
      result = v22 - 1;
    }

    v24 = result + 2;
    *v22 = v23;
    v25 = *(a1 + 32);
    v26 = v21;
    if (*a3 - (result + 2) < v21)
    {
      result = sub_1957130(a3, v25, v21, v24);
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    memcpy(result + 2, v25, v21);
    result = &v24[v26];
  }

  if ((v5 & 0x40) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v27 = *(a1 + 140);
    *result = 48;
    result[1] = v27;
    if (v27 <= 0x7F)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v27 = *(a1 + 140);
    *result = 48;
    result[1] = v27;
    if (v27 <= 0x7F)
    {
LABEL_41:
      result += 2;
      goto LABEL_50;
    }
  }

  result[1] = v27 | 0x80;
  v29 = v27 >> 7;
  result[2] = v27 >> 7;
  result += 3;
  if (v27 >= 0x4000)
  {
    v30 = v27 >> 7;
    do
    {
      *(result - 1) = v29 | 0x80;
      v29 = v30 >> 7;
      *result++ = v30 >> 7;
      v31 = v30 >> 14;
      v30 >>= 7;
    }

    while (v31);
  }

LABEL_50:
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v32 = *(a1 + 144);
    *result = 57;
    *(result + 1) = v32;
    result += 9;
  }

  v33 = *(a1 + 40);
  if (v33 >= 1)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v33 = *(a1 + 40);
    }

    v34 = 4 * v33;
    *result = 66;
    v35 = result + 1;
    v36 = v34;
    if (v34 >= 0x80)
    {
      do
      {
        *v35++ = v36 | 0x80;
        v49 = v36 >> 14;
        v36 >>= 7;
      }

      while (v49);
      result = v35 - 1;
    }

    v37 = result + 2;
    *v35 = v36;
    v38 = *(a1 + 48);
    v39 = v34;
    if (*a3 - (result + 2) < v34)
    {
      result = sub_1957130(a3, v38, v34, v37);
      v40 = *(a1 + 56);
      if (v40 < 1)
      {
        goto LABEL_66;
      }

      goto LABEL_61;
    }

    memcpy(result + 2, v38, v34);
    result = &v37[v39];
  }

  v40 = *(a1 + 56);
  if (v40 < 1)
  {
    goto LABEL_66;
  }

LABEL_61:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v40 = *(a1 + 56);
  }

  v41 = 8 * v40;
  *result = 74;
  v42 = result + 1;
  v43 = v41;
  if (v41 >= 0x80)
  {
    do
    {
      *v42++ = v43 | 0x80;
      v50 = v43 >> 14;
      v43 >>= 7;
    }

    while (v50);
    result = v42 - 1;
  }

  v44 = result + 2;
  *v42 = v43;
  v45 = *(a1 + 64);
  v46 = v41;
  if (*a3 - (result + 2) < v41)
  {
    result = sub_1957130(a3, v45, v41, v44);
  }

  else
  {
    memcpy(result + 2, v45, v41);
    result = &v44[v46];
  }

LABEL_66:
  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v47 = *(a1 + 152);
    *result = 81;
    *(result + 1) = v47;
    result += 9;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v48 = *(a1 + 160);
      *result = 88;
      result[1] = v48;
      if (v48 <= 0x7F)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v48 = *(a1 + 160);
      *result = 88;
      result[1] = v48;
      if (v48 <= 0x7F)
      {
LABEL_73:
        result += 2;
        goto LABEL_85;
      }
    }

    result[1] = v48 | 0x80;
    v51 = v48 >> 7;
    result[2] = v48 >> 7;
    result += 3;
    if (v48 >= 0x4000)
    {
      v52 = v48 >> 7;
      do
      {
        *(result - 1) = v52 | 0x80;
        v52 = v51 >> 7;
        *result++ = v51 >> 7;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
    }
  }

LABEL_85:
  v54 = *(a1 + 80);
  if (v54)
  {
    for (i = 0; i != v54; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v57 = *(*(a1 + 88) + 8 * i + 8);
      *result = 98;
      v58 = *(v57 + 44);
      result[1] = v58;
      if (v58 <= 0x7F)
      {
        v56 = result + 2;
      }

      else
      {
        v56 = sub_19575D0(v58, result + 1);
      }

      result = sub_16E5070(v57, v56, a3);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
      v59 = *(a1 + 168);
      *result = 112;
      result[1] = v59;
      if (v59 <= 0x7F)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v59 = *(a1 + 168);
      *result = 112;
      result[1] = v59;
      if (v59 <= 0x7F)
      {
LABEL_96:
        result += 2;
        goto LABEL_101;
      }
    }

    result[1] = v59 | 0x80;
    v60 = v59 >> 7;
    result[2] = v59 >> 7;
    result += 3;
    if (v59 >= 0x4000)
    {
      v61 = v59 >> 7;
      do
      {
        *(result - 1) = v60 | 0x80;
        v60 = v61 >> 7;
        *result++ = v61 >> 7;
        v62 = v61 >> 14;
        v61 >>= 7;
      }

      while (v62);
    }
  }

LABEL_101:
  if ((v5 & 2) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v64 = *(a1 + 104);
    *result = 122;
    v65 = *(v64 + 20);
    result[1] = v65;
    if (v65 > 0x7F)
    {
      v66 = sub_19575D0(v65, result + 1);
      result = sub_11EE3B0(v64, v66, a3);
      if ((v5 & 4) != 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      result = sub_11EE3B0(v64, result + 2, a3);
      if ((v5 & 4) != 0)
      {
        goto LABEL_111;
      }
    }

LABEL_103:
    v63 = *(a1 + 8);
    if ((v63 & 1) == 0)
    {
      return result;
    }

    goto LABEL_117;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_103;
  }

LABEL_111:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v67 = *(a1 + 112);
  *result = 386;
  v68 = *(v67 + 20);
  result[2] = v68;
  if (v68 > 0x7F)
  {
    v69 = sub_19575D0(v68, result + 2);
    result = sub_11EE3B0(v67, v69, a3);
    v63 = *(a1 + 8);
    if ((v63 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_11EE3B0(v67, result + 3, a3);
    v63 = *(a1 + 8);
    if ((v63 & 1) == 0)
    {
      return result;
    }
  }

LABEL_117:
  v70 = v63 & 0xFFFFFFFFFFFFFFFCLL;
  v71 = *(v70 + 31);
  if (v71 < 0)
  {
    v72 = *(v70 + 8);
    v71 = *(v70 + 16);
  }

  else
  {
    v72 = (v70 + 8);
  }

  v73 = v71;
  if (*a3 - result < v71)
  {

    return sub_1957130(a3, v72, v71, result);
  }

  else
  {
    v74 = result;
    memcpy(result, v72, v71);
    return &v74[v73];
  }
}

uint64_t sub_11EF3EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = 8 * v2;
  if (v2)
  {
    if ((v3 & 0x80000000) != 0)
    {
      v3 += 11;
      v7 = *(a1 + 40);
      v5 = 4 * v7;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 += ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      v4 = *(a1 + 40);
      v5 = 4 * v4;
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = 4 * v6;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
LABEL_12:
  v9 = v3 + v5;
  v10 = *(a1 + 56);
  v11 = 8 * v10;
  if (v10)
  {
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
  }

  v13 = *(a1 + 80);
  v14 = v9 + v11 + v13;
  v15 = *(a1 + 88);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_16E51F0(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    if (v20)
    {
      v24 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v14 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v20 & 2) == 0)
      {
LABEL_26:
        if ((v20 & 4) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_63;
      }
    }

    else if ((v20 & 2) == 0)
    {
      goto LABEL_26;
    }

    v27 = *(a1 + 104);
    v28 = *(v27 + 16);
    if ((v28 & 3) == 0)
    {
      v29 = 0;
      goto LABEL_61;
    }

    if (v28)
    {
      v30 = *(v27 + 24);
      if (v30 < 0)
      {
        v29 = 11;
        if ((v28 & 2) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v29 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v28 & 2) == 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v29 = 0;
      if ((v28 & 2) == 0)
      {
        goto LABEL_61;
      }
    }

    v31 = *(v27 + 28);
    if (v31 < 0)
    {
      v32 = 11;
    }

    else
    {
      v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v29 += v32;
LABEL_61:
    v33 = *(v27 + 8);
    if (v33)
    {
      v48 = v33 & 0xFFFFFFFFFFFFFFFCLL;
      v49 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v49 < 0)
      {
        v49 = *(v48 + 16);
      }

      v29 += v49;
    }

    *(v27 + 20) = v29;
    v14 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 4) == 0)
    {
LABEL_27:
      v21 = v14 + 9;
      if ((v20 & 8) == 0)
      {
        v21 = v14;
      }

      if ((v20 & 0x10) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_80;
    }

LABEL_63:
    v34 = *(a1 + 112);
    v35 = *(v34 + 16);
    if ((v35 & 3) == 0)
    {
      v36 = 0;
      goto LABEL_76;
    }

    if (v35)
    {
      v37 = *(v34 + 24);
      if (v37 < 0)
      {
        v36 = 11;
        if ((v35 & 2) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v36 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v35 & 2) == 0)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      v36 = 0;
      if ((v35 & 2) == 0)
      {
        goto LABEL_76;
      }
    }

    v38 = *(v34 + 28);
    if (v38 < 0)
    {
      v39 = 11;
    }

    else
    {
      v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v36 += v39;
LABEL_76:
    v40 = *(v34 + 8);
    if (v40)
    {
      v50 = v40 & 0xFFFFFFFFFFFFFFFCLL;
      v51 = *((v40 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v51 < 0)
      {
        v51 = *(v50 + 16);
      }

      v36 += v51;
    }

    *(v34 + 20) = v36;
    v41 = v14 + v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
    v21 = v41 + 9;
    if ((v20 & 8) == 0)
    {
      v21 = v41;
    }

    if ((v20 & 0x10) == 0)
    {
LABEL_30:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_81;
    }

LABEL_80:
    v21 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v20 & 0x20) == 0)
    {
LABEL_31:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_81:
    v42 = *(a1 + 136);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v21 += v44;
    if ((v20 & 0x40) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v21 += ((9 * (__clz(*(a1 + 140) | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_33:
    if ((v20 & 0x80) != 0)
    {
      v14 = v21 + 9;
    }

    else
    {
      v14 = v21;
    }
  }

  if ((v20 & 0x700) != 0)
  {
    if ((v20 & 0x100) != 0)
    {
      v14 += 9;
    }

    if ((v20 & 0x200) != 0)
    {
      v14 += ((9 * (__clz(*(a1 + 160) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v20 & 0x400) != 0)
    {
      v14 += ((9 * (__clz(*(a1 + 168) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v45 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v46 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v46 < 0)
    {
      v46 = *(v45 + 16);
    }

    v47 = v46 + v14;
    *(a1 + 20) = v47;
    return v47;
  }

  else
  {
    *(a1 + 20) = v14;
    return v14;
  }
}

void sub_11EF898(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a1 + 40);
    sub_1958E5C((a1 + 40), v9 + v8);
    v10 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy((v10 + 4 * v9), *(a2 + 48), 4 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(a1 + 56);
    sub_1959094((a1 + 56), v12 + v11);
    v13 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy((v13 + 8 * v12), *(a2 + 64), 8 * *(a2 + 56));
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_11F1A54((a1 + 72), v16, (v15 + 8), v14, **(a1 + 88) - *(a1 + 80));
    v17 = *(a1 + 80) + v14;
    *(a1 + 80) = v17;
    v18 = *(a1 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    if (v19)
    {
      v20 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      sub_194EA1C((a1 + 96), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
    }

    if ((v19 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v25 = *v25;
        }

        v23 = sub_11F14C4(v25);
        *(a1 + 104) = v23;
      }

      v26 = *(a2 + 104);
      if (!v26)
      {
        v26 = &off_2733FD0;
      }

      v27 = *(v26 + 4);
      if ((v27 & 3) != 0)
      {
        if (v27)
        {
          *(v23 + 6) = *(v26 + 6);
        }

        if ((v27 & 2) != 0)
        {
          *(v23 + 7) = *(v26 + 7);
        }

        *(v23 + 4) |= v27;
      }

      v28 = v26[1];
      if (v28)
      {
        sub_1957EF4(v23 + 1, (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v19 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v29 = *(a1 + 112);
      if (!v29)
      {
        v30 = *(a1 + 8);
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v29 = sub_11F14C4(v31);
        *(a1 + 112) = v29;
      }

      v32 = *(a2 + 112);
      if (!v32)
      {
        v32 = &off_2733FD0;
      }

      v33 = *(v32 + 4);
      if ((v33 & 3) != 0)
      {
        if (v33)
        {
          *(v29 + 6) = *(v32 + 6);
        }

        if ((v33 & 2) != 0)
        {
          *(v29 + 7) = *(v32 + 7);
        }

        *(v29 + 4) |= v33;
      }

      v34 = v32[1];
      if (v34)
      {
        sub_1957EF4(v29 + 1, (v34 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }

    if ((v19 & 8) != 0)
    {
      *(a1 + 120) = *(a2 + 120);
      if ((v19 & 0x10) == 0)
      {
LABEL_47:
        if ((v19 & 0x20) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_64;
      }
    }

    else if ((v19 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    *(a1 + 128) = *(a2 + 128);
    if ((v19 & 0x20) == 0)
    {
LABEL_48:
      if ((v19 & 0x40) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(a1 + 136) = *(a2 + 136);
    if ((v19 & 0x40) == 0)
    {
LABEL_49:
      if ((v19 & 0x80) == 0)
      {
LABEL_51:
        *(a1 + 16) |= v19;
        goto LABEL_52;
      }

LABEL_50:
      *(a1 + 144) = *(a2 + 144);
      goto LABEL_51;
    }

LABEL_65:
    *(a1 + 140) = *(a2 + 140);
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_52:
  if ((v19 & 0x700) == 0)
  {
    goto LABEL_58;
  }

  if ((v19 & 0x100) == 0)
  {
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_55;
    }

LABEL_68:
    *(a1 + 160) = *(a2 + 160);
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  *(a1 + 152) = *(a2 + 152);
  if ((v19 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_55:
  if ((v19 & 0x400) != 0)
  {
LABEL_56:
    *(a1 + 168) = *(a2 + 168);
  }

LABEL_57:
  *(a1 + 16) |= v19;
LABEL_58:
  v35 = *(a2 + 8);
  if (v35)
  {

    sub_1957EF4((a1 + 8), (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_11EFC18(uint64_t a1)
{
  v2 = *(a1 + 80);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5370(*(*(a1 + 88) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_11EFCCC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11EFD6C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11EFE2C(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11EFE68(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*a3 <= __dst)
    {
      v39 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v39;
      v5 = *(v39 + 24);
      *v3 = 8;
      v3[1] = v5;
      if (v5 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v5;
      if (v5 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v5 | 0x80;
    v8 = v5 >> 7;
    v3[2] = v5 >> 7;
    v3 += 3;
    if (v5 >= 0x4000)
    {
      v9 = v5 >> 7;
      do
      {
        *(v3 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v3++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v4 & 2) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v3)
  {
    v40 = a1;
    v12 = v3;
    v13 = a3;
    v14 = sub_225EB68(a3, v12);
    a3 = v13;
    v3 = v14;
    a1 = v40;
    v11 = *(v40 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *(a1 + 32);
    *v3 = 16;
    v3[1] = v11;
    if (v11 <= 0x7F)
    {
LABEL_12:
      v3 += 2;
      goto LABEL_17;
    }
  }

  v3[1] = v11 | 0x80;
  v15 = v11 >> 7;
  v3[2] = v11 >> 7;
  v3 += 3;
  if (v11 >= 0x4000)
  {
    v16 = v11 >> 7;
    do
    {
      *(v3 - 1) = v16 | 0x80;
      v16 = v15 >> 7;
      *v3++ = v15 >> 7;
      v17 = v15 >> 14;
      v15 >>= 7;
    }

    while (v17);
  }

LABEL_17:
  if ((v4 & 4) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= v3)
  {
    v41 = a1;
    v19 = v3;
    v20 = a3;
    v21 = sub_225EB68(a3, v19);
    a3 = v20;
    v3 = v21;
    a1 = v41;
    v18 = *(v41 + 40);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *(a1 + 40);
    *v3 = 24;
    v3[1] = v18;
    if (v18 <= 0x7F)
    {
LABEL_20:
      v3 += 2;
      goto LABEL_25;
    }
  }

  v3[1] = v18 | 0x80;
  v22 = v18 >> 7;
  v3[2] = v18 >> 7;
  v3 += 3;
  if (v18 >= 0x4000)
  {
    v23 = v18 >> 7;
    do
    {
      *(v3 - 1) = v23 | 0x80;
      v23 = v22 >> 7;
      *v3++ = v22 >> 7;
      v24 = v22 >> 14;
      v22 >>= 7;
    }

    while (v24);
  }

LABEL_25:
  if ((v4 & 8) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= v3)
  {
    v26 = a1;
    v27 = v3;
    v28 = a3;
    v29 = sub_225EB68(a3, v27);
    a3 = v28;
    v3 = v29;
    a1 = v26;
    v25 = *(v26 + 48);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a1 + 48);
    *v3 = 32;
    v3[1] = v25;
    if (v25 <= 0x7F)
    {
LABEL_28:
      v3 += 2;
      goto LABEL_33;
    }
  }

  v3[1] = v25 | 0x80;
  v30 = v25 >> 7;
  v3[2] = v25 >> 7;
  v3 += 3;
  if (v25 >= 0x4000)
  {
    v31 = v25 >> 7;
    do
    {
      *(v3 - 1) = v30 | 0x80;
      v30 = v31 >> 7;
      *v3++ = v31 >> 7;
      v32 = v31 >> 14;
      v31 >>= 7;
    }

    while (v32);
  }

LABEL_33:
  v33 = *(a1 + 8);
  if ((v33 & 1) == 0)
  {
    return v3;
  }

  v35 = v33 & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v36 < 0)
  {
    v37 = *(v35 + 8);
    v36 = *(v35 + 16);
  }

  else
  {
    v37 = (v35 + 8);
  }

  v38 = v36;
  if (*a3 - v3 < v36)
  {

    return sub_1957130(a3, v37, v36, v3);
  }

  else
  {
    memcpy(v3, v37, v36);
    return &v3[v38];
  }
}

unint64_t sub_11F01AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = 0;
      if ((v1 & 2) == 0)
      {
LABEL_9:
        if ((v1 & 4) != 0)
        {
          v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
          if ((v1 & 8) == 0)
          {
LABEL_11:
            v3 = *(a1 + 8);
            if ((v3 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_15;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_11;
        }

        v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
        v3 = *(a1 + 8);
        if ((v3 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  v2 = 0;
  v3 = *(a1 + 8);
  if ((v3 & 1) == 0)
  {
LABEL_12:
    *(a1 + 20) = v2;
    return v2;
  }

LABEL_15:
  v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v2;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_11F02A8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_11F0388(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_2676620;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &qword_278E990;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_11F03E0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  else if (!v4)
  {
LABEL_3:
    v5 = (a1 + 72);
    if (*(a1 + 72) != &qword_278E990)
    {
      sub_194E89C(v5);
    }

    if (a1 != &off_27340A0)
    {
      if (*(a1 + 80))
      {
        sub_16E4E08();
        operator delete();
      }

      if (*(a1 + 88))
      {
        sub_16E4E08();
        operator delete();
      }

      if (*(a1 + 96))
      {
        sub_1207588();
        operator delete();
      }
    }

    if (*v3)
    {
      sub_11F19CC(v3);
    }
  }

  v6 = *(a1 + 64);
  if (!v6 || *(a1 + 48))
  {
    goto LABEL_32;
  }

  v7 = (v6 + 2);
  v8 = *v6;
  if (v8 < 1)
  {
    goto LABEL_31;
  }

  do
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = v9[1];
      if ((v10 & 1) != 0 && !*(v10 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v9 + 1);
        v10 = v9[1];
      }

      *v9 = off_27215B8;
      if ((v10 & 2) != 0)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          if (*v11)
          {
LABEL_25:
            sub_194E188();
            operator delete();
          }
        }

        else if (v11)
        {
          goto LABEL_25;
        }
      }

      operator delete();
    }

    ++v7;
    --v8;
  }

  while (v8);
  v6 = *(a1 + 64);
LABEL_31:
  operator delete(v6);
LABEL_32:
  *(a1 + 64) = 0;
  v12 = *(a1 + 40);
  if (v12 && !*(a1 + 24))
  {
    v15 = (v12 + 2);
    v16 = *v12;
    if (v16 >= 1)
    {
      do
      {
        if (*v15)
        {
          sub_11EE720(*v15);
          operator delete();
        }

        ++v15;
        --v16;
      }

      while (v16);
      v12 = *(a1 + 40);
    }

    operator delete(v12);
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v13 = *(a1 + 8);
    if ((v13 & 2) != 0)
    {
LABEL_35:
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        if (!*v14)
        {
          return a1;
        }
      }

      else if (!v14)
      {
        return a1;
      }

      sub_194E188();
      operator delete();
    }
  }

  else
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v13 = *(a1 + 8);
    if ((v13 & 2) != 0)
    {
      goto LABEL_35;
    }
  }

  return a1;
}

void sub_11F06A0(uint64_t a1)
{
  sub_11F03E0(a1);

  operator delete();
}

uint64_t sub_11F06D8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_11EEA44(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = *(v1 + 64) + 8;
    do
    {
      v7 = *v6;
      if ((*(*v6 + 16) & 0xF) != 0)
      {
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 48) = 0;
        *(v7 + 40) = 0;
      }

      v8 = *(v7 + 8);
      result = v7 + 8;
      *(result + 8) = 0;
      if (v8)
      {
        result = sub_1957EA8(result);
      }

      v6 += 8;
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v9 = *(v1 + 16);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = sub_16E4E44(*(v1 + 80));
    if ((v9 & 4) == 0)
    {
LABEL_17:
      if ((v9 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v12 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_16:
  if ((v9 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_30:
  result = sub_16E4E44(*(v1 + 88));
  if ((v9 & 8) != 0)
  {
LABEL_18:
    result = sub_12075C4(*(v1 + 96));
  }

LABEL_19:
  if ((v9 & 0xF0) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  v11 = *(v1 + 8);
  v10 = v1 + 8;
  *(v10 + 112) = 1;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_1957EA8(v10);
  }

  return result;
}

char *sub_11F087C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x100) == 0)
  {
    result = __dst;
    goto LABEL_10;
  }

  v7 = __dst;
  if (*a3 <= __dst)
  {
    v7 = sub_225EB68(a3, __dst);
    v8 = *(a1 + 120);
    *v7 = 8;
    v7[1] = v8;
    if (v8 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 120);
    *__dst = 8;
    __dst[1] = v8;
    if (v8 <= 0x7F)
    {
LABEL_5:
      result = v7 + 2;
      goto LABEL_10;
    }
  }

  v7[1] = v8 | 0x80;
  v9 = v8 >> 7;
  v7[2] = v8 >> 7;
  result = v7 + 3;
  if (v8 >= 0x4000)
  {
    v10 = v8 >> 7;
    do
    {
      *(result - 1) = v10 | 0x80;
      v10 = v9 >> 7;
      *result++ = v9 >> 7;
      v11 = v9 >> 14;
      v9 >>= 7;
    }

    while (v11);
  }

LABEL_10:
  if ((v5 & 2) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v12 = *(a1 + 80);
    *result = 18;
    v13 = *(v12 + 44);
    result[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, result + 1);
    }

    else
    {
      v14 = result + 2;
    }

    result = sub_16E5070(v12, v14, a3);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v18 = *(*(a1 + 40) + 8 * i + 8);
      *result = 26;
      v19 = *(v18 + 20);
      result[1] = v19;
      if (v19 <= 0x7F)
      {
        v17 = result + 2;
      }

      else
      {
        v17 = sub_19575D0(v19, result + 1);
      }

      result = sub_11EEBC0(v18, v17, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v20 = *(a1 + 88);
    *result = 34;
    v21 = *(v20 + 44);
    result[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, result + 1);
    }

    else
    {
      v22 = result + 2;
    }

    result = sub_16E5070(v20, v22, a3);
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    for (j = 0; j != v23; ++j)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v26 = *(*(a1 + 64) + 8 * j + 8);
      *result = 42;
      v27 = *(v26 + 20);
      result[1] = v27;
      if (v27 <= 0x7F)
      {
        v25 = result + 2;
      }

      else
      {
        v25 = sub_19575D0(v27, result + 1);
      }

      result = sub_11EFE68(v26, v25, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v28 = *(a1 + 104);
    *result = 48;
    result[1] = v28;
    result += 2;
    if ((v5 & 8) == 0)
    {
LABEL_42:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_42;
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v29 = *(a1 + 96);
  *result = 58;
  v30 = *(v29 + 20);
  result[1] = v30;
  if (v30 > 0x7F)
  {
    v31 = sub_19575D0(v30, result + 1);
    result = sub_12076CC(v29, v31, a3);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    result = sub_12076CC(v29, result + 2, a3);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_53:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v32 = *(a1 + 108);
    *result = 64;
    result[1] = v32;
    if (v32 <= 0x7F)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v32 = *(a1 + 108);
    *result = 64;
    result[1] = v32;
    if (v32 <= 0x7F)
    {
LABEL_55:
      result += 2;
      goto LABEL_60;
    }
  }

  result[1] = v32 | 0x80;
  v33 = v32 >> 7;
  result[2] = v32 >> 7;
  result += 3;
  if (v32 >= 0x4000)
  {
    v34 = v32 >> 7;
    do
    {
      *(result - 1) = v34 | 0x80;
      v34 = v33 >> 7;
      *result++ = v33 >> 7;
      v35 = v33 >> 14;
      v33 >>= 7;
    }

    while (v35);
  }

LABEL_60:
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_62;
    }

LABEL_71:
    if (*a3 <= result)
    {
      result = sub_225EB68(a3, result);
    }

    v40 = *(a1 + 112);
    *result = 397;
    *(result + 2) = v40;
    result += 6;
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_74;
  }

  v36 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  if (v37 < 0 && (v37 = *(v36 + 8), v37 > 127) || *a3 - result + 14 < v37)
  {
    result = sub_19572D4(a3, 9, v36, result);
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    *result = 74;
    v38 = result + 2;
    result[1] = v37;
    if (*(v36 + 23) >= 0)
    {
      v39 = v36;
    }

    else
    {
      v39 = *v36;
    }

    memcpy(result + 2, v39, v37);
    result = &v38[v37];
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_71;
    }
  }

LABEL_62:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_83;
  }

LABEL_74:
  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
    v41 = *(a1 + 116);
    *result = 400;
    result[2] = v41;
    if (v41 <= 0x7F)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v41 = *(a1 + 116);
    *result = 400;
    result[2] = v41;
    if (v41 <= 0x7F)
    {
LABEL_76:
      result += 3;
      goto LABEL_83;
    }
  }

  result[2] = v41 | 0x80;
  v42 = v41 >> 7;
  result[3] = v41 >> 7;
  result += 4;
  if (v41 >= 0x4000)
  {
    v43 = v41 >> 7;
    do
    {
      *(result - 1) = v42 | 0x80;
      v42 = v43 >> 7;
      *result++ = v43 >> 7;
      v44 = v43 >> 14;
      v43 >>= 7;
    }

    while (v44);
  }

LABEL_83:
  v45 = *(a1 + 8);
  if (v45)
  {
    v46 = v45 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *(v46 + 31);
    if (v47 < 0)
    {
      v48 = *(v46 + 8);
      v47 = *(v46 + 16);
    }

    else
    {
      v48 = (v46 + 8);
    }

    v49 = v47;
    if (*a3 - result < v47)
    {

      return sub_1957130(a3, v48, v47, result);
    }

    else
    {
      v50 = result;
      memcpy(result, v48, v47);
      return &v50[v49];
    }
  }

  return result;
}

uint64_t sub_11F0E30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
      v7 = sub_11EF3EC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_11F01AC(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  if (v15)
  {
    v22 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    v9 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 2) == 0)
    {
LABEL_18:
      if ((v15 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_37;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  v25 = sub_16E51F0(*(a1 + 80));
  v9 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 4) == 0)
  {
LABEL_19:
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v26 = sub_16E51F0(*(a1 + 88));
  v9 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v15 & 8) == 0)
  {
LABEL_20:
    v16 = v9 + ((v15 >> 3) & 2);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_39:
    v28 = *(a1 + 108);
    v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 11;
    }

    v31 = v30 + v16;
    if ((v15 & 0x40) != 0)
    {
      v9 = v31 + 6;
    }

    else
    {
      v9 = v31;
    }

    if ((v15 & 0x80) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_38:
  v27 = sub_1207CBC(*(a1 + 96));
  v16 = v9 + v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1 + ((v15 >> 3) & 2);
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_21:
  if ((v15 & 0x40) != 0)
  {
    v9 = v16 + 6;
  }

  else
  {
    v9 = v16;
  }

  if ((v15 & 0x80) != 0)
  {
LABEL_25:
    v9 += ((9 * (__clz(*(a1 + 116) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v15 & 0x100) != 0)
  {
    v9 += ((9 * (__clz(*(a1 + 120) | 1) ^ 0x3F) + 73) >> 6) + 1;
    v17 = *(a1 + 8);
    if ((v17 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = *(a1 + 8);
    if ((v17 & 1) == 0)
    {
LABEL_28:
      *(a1 + 20) = v9;
      return v9;
    }
  }

  v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
  v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v20 < 0)
  {
    v20 = *(v19 + 16);
  }

  v21 = v20 + v9;
  *(a1 + 20) = v21;
  return v21;
}

void sub_11F10EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_11F1AE0((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_11F1B6C((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    if (v14)
    {
      v17 = *(a2 + 72);
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_194EA1C((a1 + 72), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_35;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5828(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_277E5E8;
    }

    sub_16E527C(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5828(v26);
      *(a1 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_277E5E8;
    }

    sub_16E527C(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_51;
    }

LABEL_43:
    *(a1 + 16) |= 8u;
    v28 = *(a1 + 96);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      sub_120871C(v30);
      *(a1 + 96) = v28;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = &off_2734820;
    }

    sub_1207F94(v28, v31);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(a1 + 104) = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
LABEL_14:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(a1 + 108) = *(a2 + 108);
    if ((v14 & 0x40) == 0)
    {
LABEL_15:
      if ((v14 & 0x80) == 0)
      {
LABEL_17:
        *(a1 + 16) |= v14;
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 116) = *(a2 + 116);
      goto LABEL_17;
    }

LABEL_53:
    *(a1 + 112) = *(a2 + 112);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_18:
  if ((v14 & 0x100) != 0)
  {
    v15 = *(a2 + 120);
    *(a1 + 16) |= 0x100u;
    *(a1 + 120) = v15;
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F139C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    do
    {
      v3 = v2--;
      v4 = *(*(a1 + 40) + 8 * v2 + 8);
      v5 = *(v4 + 80);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        v7 = sub_16E5370(*(*(v4 + 88) + 8 * v5));
        v5 = v6;
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  v8 = *(a1 + 16);
  if ((v8 & 2) != 0)
  {
    result = sub_16E5370(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 16);
  }

  if ((v8 & 4) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_11F14C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26764A0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_11F153C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2676520;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = a1;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = &qword_278E990;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0u;
  *(result + 152) = 0u;
  *(result + 168) = 0;
  return result;
}

double sub_11F1614(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26765A0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_11F1694(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = off_2676620;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &qword_278E990;
  result = 0.0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 120) = 1;
  return result;
}

uint64_t sub_11F1920(uint64_t *a1)
{
  v2 = (*a1 & 0xFFFFFFFFFFFFFFFCLL);
  if (*a1)
  {
    v2 = *v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    operator new();
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v4 = v3;
  v4[1] = sub_11F19B8;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *a1 = *a1 & 2 | v3 | 1;
  *v3 = v2;
  return v3 + 8;
}

void sub_11F19B8(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void *sub_11F19CC(void *result)
{
  v1 = *result & 0xFFFFFFFFFFFFFFFCLL;
  if (*result)
  {
    if (*v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v1 == 0;
    }

    if (!v3)
    {
LABEL_12:
      if (*(v1 + 31) < 0)
      {
        operator delete(*(v1 + 8));
      }

      operator delete();
    }
  }

  else if ((*result & 0xFFFFFFFFFFFFFFFCLL) == 0 && v1 != 0)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_11F1A54(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_16F5828(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_11F1AD0(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_11F1AE0(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_11F153C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_11F1B5C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_11F1B6C(uint64_t *a1, uint64_t *a2, std::string **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_11F1614(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_11F1BE8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_11F1BE8(std::string *result, uint64_t a2)
{
  v2 = result->__r_.__value_.__r.__words[2];
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    *(a2 + 24) = result[1].__r_.__value_.__l.__data_;
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      *(a2 + 40) = *(&result[1].__r_.__value_.__l + 2);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a2 + 32) = result[1].__r_.__value_.__l.__size_;
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    *(a2 + 48) = result[2].__r_.__value_.__l.__data_;
  }

LABEL_7:
  *(a2 + 16) |= v2;
LABEL_8:
  size = result->__r_.__value_.__l.__size_;
  if (size)
  {
    return sub_1957EF4((a2 + 8), (size & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_11F1C5C(int a1@<W8>)
{
  v2 = *(v1 + 28) + a1;
  *(v1 + 28) = v2;
  *v1 = *(v1 + 8) + (v2 & (v2 >> 31));
}

char *sub_11F1D60(uint64_t a1, int a2)
{
  v4 = *(v2 + 92);

  return sub_225EF0C(v2, a2, v4);
}

uint64_t sub_11F1D78(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (a1 != &off_2734120 && *(a1 + 24))
  {
    sub_16E8374();
    operator delete();
  }

  if (v2)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_8:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_11:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_11;
    }
  }

  return a1;
}

void sub_11F1E60(uint64_t a1)
{
  sub_11F1D78(a1);

  operator delete();
}

uint64_t sub_11F1E98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_16E48B0(*(a1 + 24));
    a1 = v2;
  }

  if ((v1 & 0x1E) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F1F20(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
      v7 = *(a1 + 48);
      *v4 = 8;
      v4[1] = v7;
      if (v7 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *(a1 + 48);
      *__dst = 8;
      __dst[1] = v7;
      if (v7 <= 0x7F)
      {
LABEL_4:
        v4 += 2;
        goto LABEL_9;
      }
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    v4[2] = v7 >> 7;
    v4 += 3;
    if (v7 >= 0x4000)
    {
      v9 = v7 >> 7;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v9 = v8 >> 7;
        *v4++ = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
    *v4 = 16;
    v12 = (2 * v11) ^ (v11 >> 63);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v4[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v4[2] = v12 >> 7;
      v4 += 3;
      if (v12 >= 0x4000)
      {
        v14 = v12 >> 7;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v14 = v13 >> 7;
          *v4++ = v13 >> 7;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v16 = *(a1 + 24);
    *v4 = 26;
    v17 = *(v16 + 44);
    v4[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v4 + 1);
    }

    else
    {
      v18 = v4 + 2;
    }

    v4 = sub_16E886C(v16, v18, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v19 = *(a1 + 40);
      *v4 = 32;
      v4[1] = v19;
      if (v19 <= 0x7F)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = *(a1 + 40);
      *v4 = 32;
      v4[1] = v19;
      if (v19 <= 0x7F)
      {
LABEL_27:
        v4 += 2;
        goto LABEL_32;
      }
    }

    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v4[2] = v19 >> 7;
    v4 += 3;
    if (v19 >= 0x4000)
    {
      v21 = v19 >> 7;
      do
      {
        *(v4 - 1) = v20 | 0x80;
        v20 = v21 >> 7;
        *v4++ = v21 >> 7;
        v22 = v21 >> 14;
        v21 >>= 7;
      }

      while (v22);
    }
  }

LABEL_32:
  if ((v6 & 8) == 0)
  {
    goto LABEL_40;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v23 = *(a1 + 44);
    *v4 = 40;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = *(a1 + 44);
    *v4 = 40;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
LABEL_35:
      v4 += 2;
      goto LABEL_40;
    }
  }

  v4[1] = v23 | 0x80;
  v24 = v23 >> 7;
  v4[2] = v23 >> 7;
  v4 += 3;
  if (v23 >= 0x4000)
  {
    v25 = v23 >> 7;
    do
    {
      *(v4 - 1) = v24 | 0x80;
      v24 = v25 >> 7;
      *v4++ = v25 >> 7;
      v26 = v25 >> 14;
      v25 >>= 7;
    }

    while (v26);
  }

LABEL_40:
  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  v32 = v30;
  if (*a3 - v4 < v30)
  {

    return sub_1957130(a3, v31, v30, v4);
  }

  else
  {
    memcpy(v4, v31, v30);
    return &v4[v32];
  }
}

uint64_t sub_11F2290(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      v5 = sub_16E8DA4(*(a1 + 24));
      result = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = 0;
      if ((v2 & 2) == 0)
      {
LABEL_9:
        if ((v2 & 4) != 0)
        {
          result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v2 & 8) == 0)
          {
LABEL_11:
            if ((v2 & 0x10) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_16;
          }
        }

        else if ((v2 & 8) == 0)
        {
          goto LABEL_11;
        }

        result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 0x10) == 0)
        {
LABEL_12:
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_20;
        }

LABEL_16:
        v6 = *(a1 + 48);
        if (v6 < 0)
        {
          result += 11;
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result += ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_20;
      }
    }

    result += ((9 * (__clz((2 * *(a1 + 32)) ^ (*(a1 + 32) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  result = 0;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    *(a1 + 20) = result;
    return result;
  }

LABEL_20:
  v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v8 < 0)
  {
    v8 = *(v7 + 16);
  }

  result += v8;
  *(a1 + 20) = result;
  return result;
}

void sub_11F2404(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5BD8(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E738;
      }

      sub_16E4964(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_8;
    }

LABEL_23:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F250C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_11F25A0(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  v5 = a1[4];
  if (v5 && !a1[2])
  {
    v8 = v5 + 1;
    v9 = *v5;
    if (v9 >= 1)
    {
      do
      {
        if (*v8)
        {
          sub_11F1D78(*v8);
          operator delete();
        }

        ++v8;
        --v9;
      }

      while (v9);
      v5 = a1[4];
    }

    operator delete(v5);
    a1[4] = 0;
    *a1 = off_27215B8;
    v6 = a1[1];
    if ((v6 & 2) == 0)
    {
      return a1;
    }
  }

  else
  {
    a1[4] = 0;
    *a1 = off_27215B8;
    v6 = a1[1];
    if ((v6 & 2) == 0)
    {
      return a1;
    }
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    if (*v7)
    {
LABEL_7:
      sub_194E188();
      operator delete();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  return a1;
}

void sub_11F26E4(void *a1)
{
  sub_11F25A0(a1);

  operator delete();
}

uint64_t sub_11F271C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = *(result + 32) + 8;
    do
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      if (v5)
      {
        result = sub_16E48B0(*(v4 + 24));
      }

      if ((v5 & 0x1E) != 0)
      {
        *(v4 + 32) = 0;
        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
      }

      v7 = *(v4 + 8);
      v6 = v4 + 8;
      *(v6 + 8) = 0;
      if (v7)
      {
        result = sub_1957EA8(v6);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_11F27E4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = 0;
    result = __dst;
    do
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v9 = *(*(a1 + 32) + 8 * v6 + 8);
      *result = 10;
      v10 = *(v9 + 20);
      result[1] = v10;
      if (v10 <= 0x7F)
      {
        v8 = result + 2;
      }

      else
      {
        v8 = sub_19575D0(v10, result + 1);
      }

      result = sub_11F1F20(v9, v8, a3);
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    result = __dst;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *(v12 + 31);
    if (v13 < 0)
    {
      v14 = *(v12 + 8);
      v13 = *(v12 + 16);
    }

    else
    {
      v14 = (v12 + 8);
    }

    v15 = v13;
    if (*a3 - result < v13)
    {

      return sub_1957130(a3, v14, v13, result);
    }

    else
    {
      v16 = result;
      memcpy(result, v14, v13);
      return &v16[v15];
    }
  }

  return result;
}

uint64_t sub_11F2924(uint64_t a1)
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
      v7 = sub_11F2290(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
    v8 = *(a1 + 8);
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
    v8 = *(a1 + 8);
    if ((v8 & 1) == 0)
    {
LABEL_8:
      *(a1 + 40) = v2;
      return v2;
    }
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v11 < 0)
  {
    v11 = *(v10 + 16);
  }

  v12 = v11 + v2;
  *(a1 + 40) = v12;
  return v12;
}

void sub_11F29E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1201154((a1 + 16), v6, (v5 + 8), v4, **(a1 + 32) - *(a1 + 24));
    v7 = *(a1 + 24) + v4;
    *(a1 + 24) = v7;
    v8 = *(a1 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F2A9C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 32) + 8 * v1);
    if (*(v3 + 16))
    {
      result = sub_16E4B4C(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_11F2B6C(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if (a1 != &off_2734188 && *(a1 + 24))
  {
    sub_16E4E08();
    operator delete();
  }

  if (v2)
  {
    sub_11F19CC(v3);
    v2 = *v3;
  }

LABEL_8:
  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v5)
      {
LABEL_11:
        sub_194E188();
        operator delete();
      }
    }

    else if (v5)
    {
      goto LABEL_11;
    }
  }

  return a1;
}

void sub_11F2C54(uint64_t a1)
{
  sub_11F2B6C(a1);

  operator delete();
}

uint64_t sub_11F2C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_16E4E44(*(a1 + 24));
    a1 = v2;
  }

  if ((v1 & 0x3E) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F2D14(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *v4 = 8;
    v8 = (2 * v7) ^ (v7 >> 63);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      v4[2] = v8 >> 7;
      v4 += 3;
      if (v8 >= 0x4000)
      {
        v10 = v8 >> 7;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v10 = v9 >> 7;
          *v4++ = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 24);
    *v4 = 18;
    v13 = *(v12 + 44);
    v4[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v4 + 1);
    }

    else
    {
      v14 = v4 + 2;
    }

    v4 = sub_16E5070(v12, v14, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
      v15 = *(a1 + 40);
      *v4 = 24;
      v4[1] = v15;
      if (v15 <= 0x7F)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = *(a1 + 40);
      *v4 = 24;
      v4[1] = v15;
      if (v15 <= 0x7F)
      {
LABEL_19:
        v4 += 2;
        goto LABEL_24;
      }
    }

    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v4[2] = v15 >> 7;
    v4 += 3;
    if (v15 >= 0x4000)
    {
      v17 = v15 >> 7;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v16 = v17 >> 7;
        *v4++ = v17 >> 7;
        v18 = v17 >> 14;
        v17 >>= 7;
      }

      while (v18);
    }
  }

LABEL_24:
  if ((v6 & 8) == 0)
  {
    goto LABEL_32;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v19 = *(a1 + 44);
    *v4 = 32;
    v4[1] = v19;
    if (v19 <= 0x7F)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = *(a1 + 44);
    *v4 = 32;
    v4[1] = v19;
    if (v19 <= 0x7F)
    {
LABEL_27:
      v4 += 2;
      goto LABEL_32;
    }
  }

  v4[1] = v19 | 0x80;
  v20 = v19 >> 7;
  v4[2] = v19 >> 7;
  v4 += 3;
  if (v19 >= 0x4000)
  {
    v21 = v19 >> 7;
    do
    {
      *(v4 - 1) = v20 | 0x80;
      v20 = v21 >> 7;
      *v4++ = v21 >> 7;
      v22 = v21 >> 14;
      v21 >>= 7;
    }

    while (v22);
  }

LABEL_32:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_40;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v23 = *(a1 + 48);
    *v4 = 40;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = *(a1 + 48);
    *v4 = 40;
    v4[1] = v23;
    if (v23 <= 0x7F)
    {
LABEL_35:
      v4 += 2;
      goto LABEL_40;
    }
  }

  v4[1] = v23 | 0x80;
  v24 = v23 >> 7;
  v4[2] = v23 >> 7;
  v4 += 3;
  if (v23 >= 0x4000)
  {
    v25 = v23 >> 7;
    do
    {
      *(v4 - 1) = v24 | 0x80;
      v24 = v25 >> 7;
      *v4++ = v25 >> 7;
      v26 = v25 >> 14;
      v25 >>= 7;
    }

    while (v26);
  }

LABEL_40:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_48;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
    v27 = *(a1 + 52);
    *v4 = 48;
    v4[1] = v27;
    if (v27 <= 0x7F)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v27 = *(a1 + 52);
    *v4 = 48;
    v4[1] = v27;
    if (v27 <= 0x7F)
    {
LABEL_43:
      v4 += 2;
      goto LABEL_48;
    }
  }

  v4[1] = v27 | 0x80;
  v28 = v27 >> 7;
  v4[2] = v27 >> 7;
  v4 += 3;
  if (v27 >= 0x4000)
  {
    v29 = v27 >> 7;
    do
    {
      *(v4 - 1) = v28 | 0x80;
      v28 = v29 >> 7;
      *v4++ = v29 >> 7;
      v30 = v29 >> 14;
      v29 >>= 7;
    }

    while (v30);
  }

LABEL_48:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  v36 = v34;
  if (*a3 - v4 < v34)
  {

    return sub_1957130(a3, v35, v34, v4);
  }

  else
  {
    memcpy(v4, v35, v34);
    return &v4[v36];
  }
}

uint64_t sub_11F3118(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) != 0)
  {
    if (v2)
    {
      v5 = sub_16E51F0(*(a1 + 24));
      result = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = 0;
      if ((v2 & 2) == 0)
      {
LABEL_9:
        if ((v2 & 4) != 0)
        {
          result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v2 & 8) == 0)
          {
LABEL_11:
            if ((v2 & 0x10) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        else if ((v2 & 8) == 0)
        {
          goto LABEL_11;
        }

        result += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 0x10) == 0)
        {
LABEL_12:
          if ((v2 & 0x20) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }

LABEL_17:
        result += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 0x20) == 0)
        {
LABEL_13:
          v4 = *(a1 + 8);
          if ((v4 & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }

LABEL_18:
        result += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
        v4 = *(a1 + 8);
        if ((v4 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }
    }

    result += ((9 * (__clz((2 * *(a1 + 32)) ^ (*(a1 + 32) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_9;
  }

  result = 0;
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    *(a1 + 20) = result;
    return result;
  }

LABEL_19:
  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v7 = *(v6 + 16);
  }

  result += v7;
  *(a1 + 20) = result;
  return result;
}

void sub_11F32A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 24);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5828(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277E5E8;
      }

      sub_16E527C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(a1 + 44) = *(a2 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_9;
    }

LABEL_25:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_11F33B8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_11F344C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F34EC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11F35AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F35C4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v3 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v5 = a1;
      v6 = a3;
      v7 = sub_225EB68(a3, __dst);
      a3 = v6;
      v3 = v7;
      a1 = v5;
      v4 = *(v5 + 24);
      *v3 = 8;
      v3[1] = v4;
      if (v4 <= 0x7F)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(a1 + 24);
      *__dst = 8;
      __dst[1] = v4;
      if (v4 <= 0x7F)
      {
LABEL_4:
        v3 += 2;
        goto LABEL_9;
      }
    }

    v3[1] = v4 | 0x80;
    v8 = v4 >> 7;
    v3[2] = v4 >> 7;
    v3 += 3;
    if (v4 >= 0x4000)
    {
      v9 = v4 >> 7;
      do
      {
        *(v3 - 1) = v8 | 0x80;
        v8 = v9 >> 7;
        *v3++ = v9 >> 7;
        v10 = v9 >> 14;
        v9 >>= 7;
      }

      while (v10);
    }
  }

LABEL_9:
  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return v3;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  v16 = v14;
  if (*a3 - v3 < v14)
  {

    return sub_1957130(a3, v15, v14, v3);
  }

  else
  {
    memcpy(v3, v15, v14);
    return &v3[v16];
  }
}

uint64_t sub_11F370C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v6 = v5 + v1;
    *(a1 + 20) = v6;
    return v6;
  }

  else
  {
    *(a1 + 20) = v1;
    return v1;
  }
}

std::string *sub_11F3770(std::string *result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(result[1].__r_.__value_.__l.__data_) = v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F3814(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F38B4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t *sub_11F3974(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F3984(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  v9 = v7;
  if (*a3 - __dst < v7)
  {

    return sub_1957130(a3, v8, v7, __dst);
  }

  else
  {
    memcpy(__dst, v8, v7);
    return &__dst[v9];
  }
}

uint64_t sub_11F3A24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
LABEL_3:
    *(a1 + 16) = v2;
    return v2;
  }

  v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
  v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v4 + 16);
  *(a1 + 16) = v5;
  return v5;
}

std::string *sub_11F3A58(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_11F3AE0(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  else if (!v4)
  {
LABEL_3:
    v5 = (a1 + 48);
    if (*(a1 + 48) != &qword_278E990)
    {
      sub_194E89C(v5);
    }

    if (a1 != &off_27341E0)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = v6[1];
        if ((v7 & 1) != 0 && !*(v7 & 0xFFFFFFFFFFFFFFFCLL))
        {
          sub_11F19CC(v6 + 1);
          v7 = v6[1];
        }

        *v6 = off_27215B8;
        if ((v7 & 2) != 0)
        {
          v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (v7)
          {
            if (*v8)
            {
LABEL_11:
              sub_194E188();
              operator delete();
            }
          }

          else if (v8)
          {
            goto LABEL_11;
          }
        }

        operator delete();
      }
    }

    if (*v3)
    {
      sub_11F19CC(v3);
    }
  }

  v9 = *(a1 + 40);
  if (!v9 || *(a1 + 24))
  {
    *(a1 + 40) = 0;
    *a1 = off_27215B8;
    v10 = *(a1 + 8);
    if ((v10 & 2) == 0)
    {
      return a1;
    }

LABEL_18:
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      if (!*v11)
      {
        return a1;
      }
    }

    else if (!v11)
    {
      return a1;
    }

    sub_194E188();
    operator delete();
  }

  v12 = (v9 + 2);
  v13 = *v9;
  if (v13 < 1)
  {
    goto LABEL_36;
  }

  do
  {
    v14 = *v12;
    if (*v12)
    {
      v15 = v14[1];
      if ((v15 & 1) != 0 && !*(v15 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v14 + 1);
        v15 = v14[1];
      }

      *v14 = off_27215B8;
      if ((v15 & 2) != 0)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          if (*v16)
          {
LABEL_30:
            sub_194E188();
            operator delete();
          }
        }

        else if (v16)
        {
          goto LABEL_30;
        }
      }

      operator delete();
    }

    ++v12;
    --v13;
  }

  while (v13);
  v9 = *(a1 + 40);
LABEL_36:
  operator delete(v9);
  *(a1 + 40) = 0;
  *a1 = off_27215B8;
  v10 = *(a1 + 8);
  if ((v10 & 2) != 0)
  {
    goto LABEL_18;
  }

  return a1;
}

void sub_11F3D80(uint64_t a1)
{
  sub_11F3AE0(a1);

  operator delete();
}

uint64_t sub_11F3DB8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      result = *v3 + 8;
      if (*result)
      {
        result = sub_1957EA8(result);
      }

      ++v3;
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v4 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      *v5 = 0;
      *(v5 + 23) = 0;
    }

    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    v6 = *(v1 + 56);
    v7 = *(v6 + 8);
    result = v6 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v7)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_11F3EA4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 < 0 && (v8 = *(v7 + 8), v8 > 127) || *a3 - __dst + 14 < v8)
    {
      result = sub_19572D4(a3, 1, v7, __dst);
      if ((v5 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *__dst = 10;
      v9 = __dst + 2;
      __dst[1] = v8;
      if (*(v7 + 23) >= 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = *v7;
      }

      memcpy(v9, v10, v8);
      result = &v9[v8];
      if ((v5 & 2) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    result = __dst;
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  if (*a3 <= result)
  {
    result = sub_225EB68(a3, result);
  }

  v11 = *(a1 + 56);
  *result = 18;
  v12 = *(v11 + 20);
  result[1] = v12;
  if (v12 > 0x7F)
  {
    v13 = sub_19575D0(v12, result + 1);
  }

  else
  {
    v13 = result + 2;
  }

  result = sub_11F35C4(v11, v13, a3);
LABEL_17:
  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
      *result = 26;
      v17 = *(v16 + 16);
      result[1] = v17;
      if (v17 > 0x7F)
      {
        result = sub_19575D0(v17, result + 1);
      }

      else
      {
        result += 2;
      }

      v18 = *(v16 + 8);
      if (v18)
      {
        v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
        v20 = *(v19 + 31);
        if (v20 < 0)
        {
          v21 = *(v19 + 8);
          v20 = *(v19 + 16);
        }

        else
        {
          v21 = (v19 + 8);
        }

        v22 = v20;
        if (*a3 - result < v20)
        {
          result = sub_1957130(a3, v21, v20, result);
        }

        else
        {
          v23 = result;
          memcpy(result, v21, v20);
          result = &v23[v22];
        }
      }
    }
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = *(v25 + 31);
    if (v26 < 0)
    {
      v27 = *(v25 + 8);
      v26 = *(v25 + 16);
    }

    else
    {
      v27 = (v25 + 8);
    }

    v28 = v26;
    if (*a3 - result < v26)
    {

      return sub_1957130(a3, v27, v26, result);
    }

    else
    {
      v29 = result;
      memcpy(result, v27, v26);
      return &v29[v28];
    }
  }

  return result;
}

uint64_t sub_11F4120(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2 + 8;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = 8 * v1;
    do
    {
      v5 = *(*v3 + 8);
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
        v6 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v6 < 0)
        {
          v6 = *(v7 + 16);
        }
      }

      else
      {
        v6 = 0;
      }

      *(*v3 + 16) = v6;
      v1 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v1 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v1 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = *(a1 + 56);
      if (*(v12 + 16))
      {
        v13 = ((9 * (__clz(*(v12 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v12 + 8);
      if (v14)
      {
        v20 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v21 < 0)
        {
          v21 = *(v20 + 16);
        }

        v13 += v21;
      }

      *(v12 + 20) = v13;
      v1 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v19 = v18 + v1;
    *(a1 + 20) = v19;
    return v19;
  }

  else
  {
    *(a1 + 20) = v1;
    return v1;
  }
}

std::string *sub_11F42A0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_12011E0(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v12 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v12 = *v12;
      }

      result = sub_194EA1C(&v3[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      result = v3[2].__r_.__value_.__l.__size_;
      if (!result)
      {
        v13 = v3->__r_.__value_.__l.__size_;
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        result = sub_11FFC2C(v14);
        v3[2].__r_.__value_.__l.__size_ = result;
      }

      v15 = *(a2 + 56);
      if (!v15)
      {
        v15 = &off_27341C0;
      }

      if (v15[2])
      {
        v16 = *(v15 + 6);
        LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
        LODWORD(result[1].__r_.__value_.__l.__data_) = v16;
      }

      v17 = v15[1];
      if (v17)
      {
        result = sub_1957EF4(&result->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }
    }
  }

  v18 = *(a2 + 8);
  if (v18)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F4484(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  v5 = a1[1];
  if ((v5 & 2) != 0)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      if (*v6)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v6)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F4528(void *a1)
{
  sub_11F4484(a1);

  operator delete();
}

uint64_t sub_11F4560(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F4574(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      if (*a3 <= __dst)
      {
        v8 = a1;
        v9 = __dst;
        v10 = a3;
        v11 = sub_225EB68(a3, v9);
        a3 = v10;
        __dst = v11;
        a1 = v8;
      }

      v7 = *(*(a1 + 24) + v5);
      *__dst = 9;
      *(__dst + 1) = v7;
      __dst += 9;
      v5 += 8;
    }

    while (v6 != v5);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return __dst;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  v17 = v15;
  if (*a3 - __dst < v15)
  {

    return sub_1957130(a3, v16, v15, __dst);
  }

  else
  {
    memcpy(__dst, v16, v15);
    return &__dst[v17];
  }
}

uint64_t sub_11F46A0(uint64_t a1)
{
  v1 = 9 * *(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v6 = v5 + v1;
    *(a1 + 32) = v6;
    return v6;
  }

  else
  {
    *(a1 + 32) = v1;
    return v1;
  }
}

std::string *sub_11F46DC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = &result->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(result->__r_.__value_.__r.__words[2]);
    sub_1959094(&result->__r_.__value_.__r.__words[2], v6 + v4);
    data = v3[1].__r_.__value_.__l.__data_;
    *v5 += *(a2 + 16);
    result = memcpy(&data[8 * v6], *(a2 + 24), 8 * *(a2 + 16));
  }

  v8 = *(a2 + 8);
  if (v8)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F47EC(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  return a1;
}

void sub_11F488C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
    v2 = *v3;
  }

  *a1 = off_27215B8;
  if ((v2 & 2) != 0)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v4)
      {
LABEL_5:
        sub_194E188();
        operator delete();
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }
  }

  operator delete();
}

uint64_t sub_11F494C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_11F4974(uint64_t a1, unint64_t __dst, _DWORD *a3)
{
  v3 = __dst;
  v4 = *(a1 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (*a3 <= v3)
    {
      v27 = a1;
      v10 = v3;
      v11 = a3;
      v12 = sub_225EB68(a3, v10);
      a3 = v11;
      v3 = v12;
      a1 = v27;
    }

    v6 = *(a1 + 32);
    *v3 = 17;
    *(v3 + 1) = v6;
    v3 += 9;
    if ((v4 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    v26 = a1;
    v8 = a3;
    v9 = sub_225EB68(a3, __dst);
    a3 = v8;
    v3 = v9;
    a1 = v26;
  }

  v5 = *(a1 + 24);
  *v3 = 9;
  *(v3 + 1) = v5;
  v3 += 9;
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (*a3 <= v3)
  {
    v13 = a1;
    v14 = v3;
    v15 = a3;
    v16 = sub_225EB68(a3, v14);
    a3 = v15;
    v3 = v16;
    a1 = v13;
    v7 = *(v13 + 40);
    *v3 = 24;
    v3[1] = v7;
    if (v7 <= 0x7F)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *(a1 + 40);
    *v3 = 24;
    v3[1] = v7;
    if (v7 <= 0x7F)
    {
LABEL_13:
      v3 += 2;
      goto LABEL_18;
    }
  }

  v3[1] = v7 | 0x80;
  v17 = v7 >> 7;
  v3[2] = v7 >> 7;
  v3 += 3;
  if (v7 >= 0x4000)
  {
    v18 = v7 >> 7;
    do
    {
      *(v3 - 1) = v17 | 0x80;
      v17 = v18 >> 7;
      *v3++ = v18 >> 7;
      v19 = v18 >> 14;
      v18 >>= 7;
    }

    while (v19);
  }

LABEL_18:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v3;
  }

  v22 = v20 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = *((v20 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v23 < 0)
  {
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
  }

  else
  {
    v24 = (v22 + 8);
  }

  v25 = v23;
  if (*a3 - v3 < v23)
  {

    return sub_1957130(a3, v24, v23, v3);
  }

  else
  {
    memcpy(v3, v24, v23);
    return &v3[v25];
  }
}

uint64_t sub_11F4B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
  {
    v2 = 9;
    if ((v1 & 1) == 0)
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
      v3 = *(a1 + 8);
      if ((v3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(a1 + 8);
      if ((v3 & 1) == 0)
      {
LABEL_8:
        *(a1 + 20) = v2;
        return v2;
      }
    }
  }

  else
  {
    v2 = 0;
    v3 = *(a1 + 8);
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v6 < 0)
  {
    v6 = *(v5 + 16);
  }

  v7 = v6 + v2;
  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_11F4C00(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F4CDC(void *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  if ((v4 & 1) != 0 && !*(v3 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(v2);
  }

  v5 = a1[5];
  if (!v5 || a1[3])
  {
    a1[5] = 0;
    *a1 = off_27215B8;
    v6 = a1[1];
    if ((v6 & 2) == 0)
    {
      return a1;
    }

LABEL_5:
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      if (!*v7)
      {
        return a1;
      }
    }

    else if (!v7)
    {
      return a1;
    }

    sub_194E188();
    operator delete();
  }

  v8 = (v5 + 2);
  v9 = *v5;
  if (v9 < 1)
  {
    goto LABEL_23;
  }

  do
  {
    v10 = *v8;
    if (*v8)
    {
      v11 = v10[1];
      if ((v11 & 1) != 0 && !*(v11 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v10 + 1);
        v11 = v10[1];
      }

      *v10 = off_27215B8;
      if ((v11 & 2) != 0)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          if (*v12)
          {
LABEL_17:
            sub_194E188();
            operator delete();
          }
        }

        else if (v12)
        {
          goto LABEL_17;
        }
      }

      operator delete();
    }

    ++v8;
    --v9;
  }

  while (v9);
  v5 = a1[5];
LABEL_23:
  operator delete(v5);
  a1[5] = 0;
  *a1 = off_27215B8;
  v6 = a1[1];
  if ((v6 & 2) != 0)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_11F4EA0(void *a1)
{
  sub_11F4CDC(a1);

  operator delete();
}

uint64_t sub_11F4ED8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = *(result + 40) + 8;
    do
    {
      v4 = *v3;
      if ((*(*v3 + 16) & 7) != 0)
      {
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
        *(v4 + 40) = 0;
      }

      v5 = *(v4 + 8);
      result = v4 + 8;
      *(result + 8) = 0;
      if (v5)
      {
        result = sub_1957EA8(result);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 40) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_11F4F88(uint64_t a1, char *__dst, _DWORD *a3)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    result = __dst;
    goto LABEL_10;
  }

  v6 = __dst;
  if (*a3 <= __dst)
  {
    v6 = sub_225EB68(a3, __dst);
    v7 = *(a1 + 48);
    *v6 = 8;
    v6[1] = v7;
    if (v7 <= 0x7F)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *(a1 + 48);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 <= 0x7F)
    {
LABEL_5:
      result = v6 + 2;
      goto LABEL_10;
    }
  }

  v6[1] = v7 | 0x80;
  v8 = v7 >> 7;
  v6[2] = v7 >> 7;
  result = v6 + 3;
  if (v7 >= 0x4000)
  {
    v9 = v7 >> 7;
    do
    {
      *(result - 1) = v8 | 0x80;
      v8 = v9 >> 7;
      *result++ = v9 >> 7;
      v10 = v9 >> 14;
      v9 >>= 7;
    }

    while (v10);
  }

LABEL_10:
  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= result)
      {
        result = sub_225EB68(a3, result);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *result = 18;
      v15 = *(v14 + 20);
      result[1] = v15;
      if (v15 <= 0x7F)
      {
        v13 = result + 2;
      }

      else
      {
        v13 = sub_19575D0(v15, result + 1);
      }

      result = sub_11F4974(v14, v13, a3);
    }
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *(v17 + 31);
    if (v18 < 0)
    {
      v19 = *(v17 + 8);
      v18 = *(v17 + 16);
    }

    else
    {
      v19 = (v17 + 8);
    }

    v20 = v18;
    if (*a3 - result < v18)
    {

      return sub_1957130(a3, v19, v18, result);
    }

    else
    {
      v21 = result;
      memcpy(result, v19, v18);
      return &v21[v20];
    }
  }

  return result;
}

uint64_t sub_11F5160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = 8 * v1;
    do
    {
      v5 = *v3;
      v6 = *(*v3 + 16);
      if ((v6 & 7) != 0)
      {
        if (v6)
        {
          v7 = 9;
        }

        else
        {
          v7 = 0;
        }

        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v7 += ((9 * (__clz(*(v5 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v5 + 8);
      if (v8)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v10 < 0)
        {
          v10 = *(v9 + 16);
        }

        v7 += v10;
      }

      *(v5 + 20) = v7;
      v1 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v1 = 0;
  }

  if (*(a1 + 16))
  {
    v1 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    v11 = *(a1 + 8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = *(a1 + 8);
    if ((v11 & 1) == 0)
    {
LABEL_24:
      *(a1 + 20) = v1;
      return v1;
    }
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v14 < 0)
  {
    v14 = *(v13 + 16);
  }

  v15 = v14 + v1;
  *(a1 + 20) = v15;
  return v15;
}

std::string *sub_11F5294(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_1201278(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v7 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v4;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v7;
    v8 = v3[1].__r_.__value_.__r.__words[2];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_11F53D8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_11F55C8(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  v5 = a1[13];
  if (v5 && !a1[11])
  {
    v6 = (v5 + 2);
    v7 = *v5;
    if (v7 >= 1)
    {
      do
      {
        if (*v6)
        {
          sub_11F4CDC(*v6);
          operator delete();
        }

        ++v6;
        --v7;
      }

      while (v7);
      v5 = a1[13];
    }

    operator delete(v5);
  }

  a1[13] = 0;
  v8 = a1[10];
  if (v8 && !a1[8])
  {
    v9 = (v8 + 2);
    v10 = *v8;
    if (v10 >= 1)
    {
      do
      {
        if (*v9)
        {
          sub_11F4484(*v9);
          operator delete();
        }

        ++v9;
        --v10;
      }

      while (v10);
      v8 = a1[10];
    }

    operator delete(v8);
  }

  a1[10] = 0;
  v11 = a1[7];
  if (v11 && !a1[5])
  {
    v12 = v11 + 1;
    v13 = *v11;
    if (v13 >= 1)
    {
      do
      {
        if (*v12)
        {
          sub_11F3AE0(*v12);
          operator delete();
        }

        ++v12;
        --v13;
      }

      while (v13);
      v11 = a1[7];
    }

    operator delete(v11);
  }

  a1[7] = 0;
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  v14 = a1[1];
  if ((v14 & 2) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      if (*v15)
      {
LABEL_35:
        sub_194E188();
        operator delete();
      }
    }

    else if (v15)
    {
      goto LABEL_35;
    }
  }

  return a1;
}

void ***sub_11F55C8(uint64_t a1)
{
  v3 = *(a1 + 112);
  result = (a1 + 112);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2734248)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      sub_11F25A0(v4);
      operator delete();
    }

    v5 = *(a1 + 128);
    if (v5)
    {
      v6 = v5[1];
      if ((v6 & 1) != 0 && !*(v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
        sub_11F19CC(v5 + 1);
        v6 = v5[1];
      }

      *v5 = off_27215B8;
      if ((v6 & 2) != 0)
      {
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          if (*v7)
          {
LABEL_11:
            sub_194E188();
            operator delete();
          }
        }

        else if (v7)
        {
          goto LABEL_11;
        }
      }

      operator delete();
    }

    result = *(a1 + 136);
    if (result)
    {
      sub_11F4484(result);

      operator delete();
    }
  }

  return result;
}

void sub_11F571C(void *a1)
{
  sub_11F53D8(a1);

  operator delete();
}

uint64_t sub_11F5754(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 48);
  if (v2 >= 1)
  {
    v3 = (*(result + 56) + 8);
    do
    {
      v4 = *v3++;
      result = sub_11F3DB8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = *(v1 + 80) + 8;
    do
    {
      result = *v6 + 8;
      v7 = *result;
      *(*v6 + 16) = 0;
      if (v7)
      {
        result = sub_1957EA8(result);
      }

      v6 += 8;
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(v1 + 104) + 8;
    do
    {
      v11 = *(v10 + 8 * v9);
      v12 = *(v11 + 32);
      if (v12 >= 1)
      {
        v13 = *(v11 + 40) + 8;
        do
        {
          v14 = *v13;
          if ((*(*v13 + 16) & 7) != 0)
          {
            *(v14 + 24) = 0;
            *(v14 + 32) = 0;
            *(v14 + 40) = 0;
          }

          v15 = *(v14 + 8);
          result = v14 + 8;
          *(result + 8) = 0;
          if (v15)
          {
            result = sub_1957EA8(result);
          }

          v13 += 8;
          --v12;
        }

        while (v12);
        *(v11 + 32) = 0;
      }

      v17 = *(v11 + 8);
      v16 = v11 + 8;
      *(v16 + 40) = 0;
      *(v16 + 8) = 0;
      if (v17)
      {
        result = sub_1957EA8(v16);
      }

      ++v9;
    }

    while (v9 != v8);
    *(v1 + 96) = 0;
  }

  v18 = *(v1 + 16);
  if ((v18 & 0xF) != 0)
  {
    if (v18)
    {
      v19 = *(v1 + 112) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v19 + 23) < 0)
      {
        **v19 = 0;
        *(v19 + 8) = 0;
        if ((v18 & 2) != 0)
        {
          goto LABEL_30;
        }

        goto LABEL_43;
      }

      *v19 = 0;
      *(v19 + 23) = 0;
    }

    if ((v18 & 2) != 0)
    {
LABEL_30:
      v20 = *(v1 + 120);
      v21 = *(v20 + 24);
      if (v21 >= 1)
      {
        v22 = *(v20 + 32) + 8;
        do
        {
          v23 = *v22;
          v24 = *(*v22 + 16);
          if (v24)
          {
            result = sub_16E48B0(*(v23 + 24));
          }

          if ((v24 & 0x1E) != 0)
          {
            *(v23 + 32) = 0;
            *(v23 + 40) = 0;
            *(v23 + 48) = 1;
          }

          v26 = *(v23 + 8);
          v25 = v23 + 8;
          *(v25 + 8) = 0;
          if (v26)
          {
            result = sub_1957EA8(v25);
          }

          v22 += 8;
          --v21;
        }

        while (v21);
        *(v20 + 24) = 0;
      }

      v28 = *(v20 + 8);
      v27 = (v20 + 8);
      if (v28)
      {
        result = sub_1957EA8(v27);
      }
    }

LABEL_43:
    if ((v18 & 4) != 0)
    {
      v29 = *(v1 + 128);
      if ((*(v29 + 16) & 3) != 0)
      {
        *(v29 + 24) = 0;
      }

      v30 = *(v29 + 8);
      result = v29 + 8;
      *(result + 8) = 0;
      if (v30)
      {
        result = sub_1957EA8(result);
      }
    }

    if ((v18 & 8) != 0)
    {
      v31 = *(v1 + 136);
      v32 = *(v31 + 8);
      result = v31 + 8;
      *(result + 8) = 0;
      if (v32)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v34 = *(v1 + 8);
  v33 = v1 + 8;
  *(v33 + 136) = 0;
  *(v33 + 8) = 0;
  if (v34)
  {

    return sub_1957EA8(v33);
  }

  return result;
}