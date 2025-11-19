uint64_t OTSVGTableRelease(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    }

    JUMPOUT(0x25F894240);
  }

  return result;
}

unint64_t SVG::ViewBox::parseViewBox@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a1, v4);
  }

  while ((v6 & 1) != 0);
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v14 = v7;
  v15 = v7;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = SVG::consumeWspCommaList<double,4ul>(a1, v5, SVG::consumeNumber, &v14);
  if (v17 != 1)
  {
    goto LABEL_10;
  }

  result = v16;
  do
  {
    v9 = result;
    result = SVG::consumeWsp(a1, result);
  }

  while ((v10 & 1) != 0);
  v11 = *(a1 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 8);
  }

  if (v9 == v11)
  {
    v12 = v15;
    *a2 = v14;
    *(a2 + 16) = v12;
    v13 = 1;
  }

  else
  {
LABEL_10:
    v13 = 0;
    *a2 = 0;
  }

  *(a2 + 32) = v13;
  return result;
}

unint64_t SVG::PreserveAspectRatio::parsePreserveAspectRatio(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v2 = SVG::consumeWsp(a1, v2);
  }

  while ((v4 & 1) != 0);
  memset(v12, 170, sizeof(v12));
  SVG::consumePreserveAspectRatio(a1, v3, v12);
  if (LOBYTE(v12[2]) != 1)
  {
    goto LABEL_10;
  }

  v5 = v12[1];
  do
  {
    v6 = v5;
    v5 = SVG::consumeWsp(a1, v5);
  }

  while ((v7 & 1) != 0);
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v6 == v8)
  {
    v9 = v12[0] & 0xFFFFFFFFFFFFFF00;
    v10 = LOBYTE(v12[0]);
  }

  else
  {
LABEL_10:
    v10 = 0;
    v9 = 0;
  }

  return v9 | v10;
}

unint64_t SVG::consumePreserveAspectRatio@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = SVG::consumeString<6ul>("defer", a1, a2);
  if (v7)
  {
    result = SVG::consumeWsp(a1, v6);
    if ((v9 & 1) == 0)
    {
      goto LABEL_29;
    }

    do
    {
      v3 = result;
      result = SVG::consumeWsp(a1, result);
    }

    while ((v10 & 1) != 0);
  }

  v11 = SVG::consumeString<5ul>("none", a1, v3);
  if ((v12 & 1) == 0)
  {
    v15 = SVG::consumeString<9ul>("xMinYMin", a1, v3);
    if (v16)
    {
      v13 = v15;
      v14 = 1;
      goto LABEL_24;
    }

    v17 = SVG::consumeString<9ul>("xMidYMin", a1, v3);
    if (v18)
    {
      v13 = v17;
      v14 = 2;
      goto LABEL_24;
    }

    v19 = SVG::consumeString<9ul>("xMaxYMin", a1, v3);
    if (v20)
    {
      v13 = v19;
      v14 = 3;
      goto LABEL_24;
    }

    v21 = SVG::consumeString<9ul>("xMinYMid", a1, v3);
    if (v22)
    {
      v13 = v21;
      v14 = 4;
      goto LABEL_24;
    }

    v23 = SVG::consumeString<9ul>("xMidYMid", a1, v3);
    if (v24)
    {
      v13 = v23;
      v14 = 5;
      goto LABEL_24;
    }

    v25 = SVG::consumeString<9ul>("xMaxYMid", a1, v3);
    if (v26)
    {
      v13 = v25;
      v14 = 6;
      goto LABEL_24;
    }

    v27 = SVG::consumeString<9ul>("xMinYMax", a1, v3);
    if (v28)
    {
      v13 = v27;
      v14 = 7;
      goto LABEL_24;
    }

    v29 = SVG::consumeString<9ul>("xMidYMax", a1, v3);
    if (v30)
    {
      v13 = v29;
      v14 = 8;
      goto LABEL_24;
    }

    result = SVG::consumeString<9ul>("xMaxYMax", a1, v3);
    if (v31)
    {
      v13 = result;
      v14 = 9;
      goto LABEL_24;
    }

LABEL_29:
    v37 = 0;
    *a3 = 0;
    goto LABEL_34;
  }

  v13 = v11;
  v14 = 0;
LABEL_24:
  result = SVG::consumeWsp(a1, v13);
  if (v32)
  {
    do
    {
      v33 = result;
      result = SVG::consumeWsp(a1, result);
    }

    while ((v34 & 1) != 0);
    result = SVG::consumeString<5ul>("meet", a1, v33);
    if (v35)
    {
      v36 = 0;
      v13 = result;
    }

    else
    {
      result = SVG::consumeString<6ul>("slice", a1, v33);
      if (v38)
      {
        v13 = result;
      }

      v36 = (v38 & 1) << 32;
    }
  }

  else
  {
    v36 = 0;
  }

  *a3 = v36 | v14;
  *(a3 + 8) = v13;
  v37 = 1;
LABEL_34:
  *(a3 + 16) = v37;
  return result;
}

CGAffineTransform *SVG::computeViewBoxTransform@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  if (a5 == 0.0 || a6 == 0.0)
  {
    goto LABEL_63;
  }

  v11 = a9 / a5;
  v12 = NAN;
  v13 = a10 / a6;
  if (result > 4)
  {
    if (result > 6)
    {
      switch(result)
      {
        case 7:
          v14 = 0.0;
          break;
        case 8:
          v14 = 0.5;
          break;
        case 9:
          v12 = 1.0;
          if (HIDWORD(result) == 1)
          {
            v15 = v11 < v13;
          }

          else
          {
            if (HIDWORD(result))
            {
              v11 = NAN;
              v13 = NAN;
LABEL_59:
              v14 = 1.0;
              goto LABEL_60;
            }

            v15 = v13 < v11;
          }

          if (v15)
          {
            v11 = a10 / a6;
          }

          v13 = v11;
          goto LABEL_59;
        default:
          goto LABEL_41;
      }

      v12 = 1.0;
      goto LABEL_33;
    }

    if (result != 5)
    {
      v14 = 1.0;
      goto LABEL_22;
    }

    v12 = 0.5;
    if (HIDWORD(result) == 1)
    {
      v17 = v11 < v13;
    }

    else
    {
      if (HIDWORD(result))
      {
        v11 = NAN;
        v13 = NAN;
LABEL_57:
        v14 = 0.5;
        goto LABEL_60;
      }

      v17 = v13 < v11;
    }

    if (v17)
    {
      v11 = a10 / a6;
    }

    v13 = v11;
    goto LABEL_57;
  }

  if (result <= 1)
  {
    if (!result)
    {
      v12 = 0.0;
      goto LABEL_55;
    }

    if (result == 1)
    {
      v12 = 0.0;
      if (HIDWORD(result) == 1)
      {
        v16 = v11 < v13;
        goto LABEL_43;
      }

      if (!HIDWORD(result))
      {
        v16 = v13 < v11;
LABEL_43:
        if (v16)
        {
          v11 = a10 / a6;
        }

        v13 = v11;
        goto LABEL_55;
      }

      v11 = NAN;
      v13 = NAN;
LABEL_55:
      v14 = 0.0;
      goto LABEL_60;
    }

LABEL_41:
    v14 = NAN;
    goto LABEL_60;
  }

  if (result == 2)
  {
    v14 = 0.5;
  }

  else
  {
    if (result != 3)
    {
      v14 = 0.0;
LABEL_22:
      v12 = 0.5;
      goto LABEL_33;
    }

    v14 = 1.0;
  }

  v12 = 0.0;
LABEL_33:
  if (HIDWORD(result) == 1)
  {
    v18 = v11 < v13;
  }

  else
  {
    if (HIDWORD(result))
    {
      v11 = NAN;
      v13 = NAN;
      goto LABEL_60;
    }

    v18 = v13 < v11;
  }

  if (v18)
  {
    v11 = a10 / a6;
  }

  v13 = v11;
LABEL_60:
  if (v11 == 0.0 || v13 == 0.0)
  {
LABEL_63:
    v26 = 0;
    *a2 = 0;
    goto LABEL_64;
  }

  *&v20 = -1;
  *(&v20 + 1) = -1;
  *&v32.c = v20;
  *&v32.tx = v20;
  *&v32.a = v20;
  v29 = v11;
  v30 = v13;
  CGAffineTransformMakeScale(&v32, v11, v13);
  v31 = v32;
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  v34 = CGRectApplyAffineTransform(v33, &v31);
  v31 = v32;
  result = CGAffineTransformTranslate(a2, &v31, (a7 + v14 * a9 - (v34.origin.x + v14 * v34.size.width)) / v29, (a8 + v12 * a10 - (v34.origin.y + v12 * v34.size.height)) / v30);
  v26 = 1;
LABEL_64:
  *(a2 + 48) = v26;
  return result;
}

void *SVG::consumeWspCommaList<double,4ul>@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t *, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v17 = v9;
  v18 = v9;
  while (1)
  {
    if (v8)
    {
      v10 = SVG::consumeCommaWsp(a1, a2);
      if (v11)
      {
        a2 = v10;
      }
    }

    v14 = -1;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    result = a3(&v14, a1, a2);
    if (v16 != 1)
    {
      break;
    }

    *(&v17 + v8) = v14;
    a2 = v15;
    v8 += 8;
    if (v8 == 32)
    {
      v13 = v18;
      *a4 = v17;
      *(a4 + 16) = v13;
      *(a4 + 32) = a2;
      *(a4 + 40) = 1;
      return result;
    }
  }

  *a4 = 0;
  *(a4 + 40) = 0;
  return result;
}

unint64_t SVG::consumeString<6ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 5;
  if (v3 >= a3 + 5)
  {
    v7 = a3;
    v10 = 5;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

unint64_t SVG::consumeString<5ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 4;
  if (v3 >= a3 + 4)
  {
    v7 = a3;
    v10 = 4;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

unint64_t SVG::consumeString<9ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 8;
  if (v3 >= a3 + 8)
  {
    v7 = a3;
    v10 = 8;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

uint64_t SVG::Presentation::defaultPresentation@<X0>(uint64_t a1@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  memcpy(a1, &unk_25D1D5338, 0x238uLL);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 100) = 0;
  *(a1 + 152) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 308) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  v15[0] = 0;
  v16[0] = 0;
  v17 = 2;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(a1 + 64, v15);
  if (v17 != -1)
  {
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v11 + v17))(&v6, v15);
  }

  *(a1 + 88) = 0x200000000;
  *(a1 + 100) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 2;
  *(a1 + 116) = xmmword_25D1D5320;
  *(a1 + 132) = 0x200000000;
  v12 = 2852126720;
  v14 = 2;
  v16[0] = 0;
  v20 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v16, &v12);
  v21 = 2;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(a1 + 152, v15);
  if (v21 != -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v6 + v21))(&v5, v15);
  }

  v21 = -1;
  if (v14 != -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    (*(&v6 + v14))(&v5, &v12);
  }

  *(a1 + 208) = 0x3FF0000000000000;
  *(a1 + 216) = 2;
  v4 = vdupq_n_s64(0x200000000uLL);
  *(a1 + 224) = v4;
  v15[0] = 0;
  v16[0] = 0;
  v17 = 2;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(a1 + 248, v15);
  if (v17 != -1)
  {
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v11 + v17))(&v6, v15);
  }

  *(a1 + 272) = 0x3FF0000000000000;
  *(a1 + 280) = 2;
  *(a1 + 288) = v4;
  *(a1 + 308) = 2852126720;
  *(a1 + 316) = 1;
  *(a1 + 320) = 2;
  *(a1 + 328) = 0x3FF0000000000000;
  *(a1 + 336) = 2;
  LODWORD(v12) = 0;
  v14 = 0;
  v16[0] = 0;
  v20 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v16, &v12);
  v21 = 2;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(a1 + 352, v15);
  if (v21 != -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v6 + v21))(&v5, v15);
  }

  v21 = -1;
  if (v14 != -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    (*(&v6 + v14))(&v5, &v12);
  }

  v15[0] = 0;
  v18 = 0;
  v19 = 2;
  result = std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1>>(a1 + 416, v15);
  if (v19 != -1)
  {
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v11 + v19))(&v6, v15);
  }

  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2;
  *(a1 + 488) = 0x200000000;
  *(a1 + 496) = 0x200000000;
  *(a1 + 504) = 0x4010000000000000;
  *(a1 + 512) = 2;
  *(a1 + 520) = 0x3FF0000000000000;
  *(a1 + 528) = 2;
  *(a1 + 544) = 0x3FF0000000000000;
  *(a1 + 552) = 0;
  *(a1 + 560) = 2;
  *(a1 + 568) = 0x200000000;
  return result;
}

void SVG::Presentation::inherit(SVG::Presentation *this@<X0>, const SVG::Presentation *a2@<X1>, const SVG::Presentation *a3@<X2>, _OWORD *a4@<X8>)
{
  memcpy(a4, &unk_25D1D5338, 0x240uLL);
  v9 = *(this + 1);
  *a4 = *this;
  a4[1] = v9;
  a4[2] = *(this + 2);
  *(a4 + 6) = *(this + 6);
  *(a4 + 64) = 0;
  *(a4 + 20) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>((a4 + 4), this + 64);
  *(a4 + 88) = *(this + 88);
  *(a4 + 104) = *(this + 104);
  *(a4 + 120) = *(this + 120);
  *(a4 + 34) = *(this + 34);
  *(a4 + 152) = 0;
  *(a4 + 50) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>(a4 + 152, this + 152);
  *(a4 + 248) = 0;
  v10 = *(this + 14);
  a4[13] = *(this + 13);
  a4[14] = v10;
  *(a4 + 66) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>(a4 + 248, this + 248);
  v11 = *(this + 17);
  a4[18] = *(this + 18);
  v12 = *(this + 20);
  a4[19] = *(this + 19);
  a4[20] = v12;
  *(a4 + 42) = *(this + 42);
  a4[17] = v11;
  *(a4 + 352) = 0;
  *(a4 + 100) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>((a4 + 22), this + 352);
  *(a4 + 416) = 0;
  *(a4 + 112) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1> const&>((a4 + 26), this + 416);
  v13 = *(this + 536);
  *(a4 + 520) = *(this + 520);
  *(a4 + 536) = v13;
  *(a4 + 552) = *(this + 552);
  *(a4 + 71) = *(this + 71);
  v14 = *(this + 472);
  *(a4 + 456) = *(this + 456);
  *(a4 + 472) = v14;
  v15 = *(this + 504);
  *(a4 + 488) = *(this + 488);
  *(a4 + 504) = v15;
  if (*(this + 23) <= 1u)
  {
    *(a4 + 11) = *(a2 + 11);
  }

  if (*(this + 28) <= 1u)
  {
    a4[6] = *(a2 + 6);
    *(a4 + 28) = *(a2 + 28);
  }

  if (*(this + 30) <= 1u)
  {
    *(a4 + 116) = *(a2 + 116);
  }

  if (*(this + 32) <= 1u)
  {
    *(a4 + 124) = *(a2 + 124);
  }

  if (*(this + 50) <= 1u)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>(a4 + 152, a2 + 152);
  }

  if (*(this + 54) <= 1u)
  {
    a4[13] = *(a2 + 13);
  }

  if (*(this + 57) <= 1u)
  {
    *(a4 + 28) = *(a2 + 28);
  }

  if (*(this + 59) <= 1u)
  {
    *(a4 + 29) = *(a2 + 29);
  }

  if (*(this + 75) <= 1u)
  {
    *(a4 + 37) = *(a2 + 37);
  }

  if (*(this + 100) <= 1u)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>((a4 + 22), a2 + 352);
  }

  if (*(this + 112) <= 1u)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1> const&>((a4 + 26), a2 + 416);
  }

  if (*(this + 120) <= 1u)
  {
    v16 = *(a2 + 472);
    *(a4 + 456) = *(a2 + 456);
    *(a4 + 472) = v16;
  }

  if (*(this + 123) <= 1u)
  {
    *(a4 + 61) = *(a2 + 61);
  }

  if (*(this + 125) <= 1u)
  {
    *(a4 + 62) = *(a2 + 62);
  }

  if (*(this + 128) <= 1u)
  {
    *(a4 + 504) = *(a2 + 504);
  }

  if (*(this + 132) <= 1u)
  {
    *(a4 + 520) = *(a2 + 520);
  }

  if (*(this + 140) <= 1u)
  {
    v17 = *(a2 + 552);
    *(a4 + 536) = *(a2 + 536);
    *(a4 + 552) = v17;
  }

  if (*(this + 143) <= 1u)
  {
    *(a4 + 71) = *(a2 + 71);
  }

  v18 = *(this + 12);
  v19 = a3;
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_41;
    }

    v19 = a2;
  }

  v20 = *(v19 + 1);
  *a4 = *v19;
  a4[1] = v20;
  a4[2] = *(v19 + 2);
  *(a4 + 6) = *(v19 + 6);
LABEL_41:
  v21 = *(this + 20);
  v22 = a3;
  if (v21)
  {
    if (v21 != 1)
    {
      goto LABEL_45;
    }

    v22 = a2;
  }

  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>((a4 + 4), v22 + 64);
LABEL_45:
  v23 = *(this + 34);
  v24 = a3;
  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_49;
    }

    v24 = a2;
  }

  *(a4 + 132) = *(v24 + 132);
LABEL_49:
  v25 = *(this + 66);
  v26 = a3;
  if (v25)
  {
    if (v25 != 1)
    {
      goto LABEL_53;
    }

    v26 = a2;
  }

  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>(a4 + 248, v26 + 248);
LABEL_53:
  v27 = *(this + 70);
  v28 = a3;
  if (v27)
  {
    if (v27 != 1)
    {
      goto LABEL_57;
    }

    v28 = a2;
  }

  a4[17] = *(v28 + 17);
LABEL_57:
  v29 = *(this + 73);
  v30 = a3;
  if (v29)
  {
    if (v29 != 1)
    {
      goto LABEL_61;
    }

    v30 = a2;
  }

  *(a4 + 36) = *(v30 + 36);
LABEL_61:
  v31 = *(this + 80);
  v32 = a3;
  if (v31)
  {
    if (v31 != 1)
    {
      goto LABEL_65;
    }

    v32 = a2;
  }

  a4[19] = *(v32 + 19);
  *(a4 + 80) = *(v32 + 80);
LABEL_65:
  v33 = *(this + 84);
  if (v33)
  {
    if (v33 != 1)
    {
      goto LABEL_69;
    }

    a3 = a2;
  }

  *(a4 + 328) = *(a3 + 328);
LABEL_69:
  if (*(a4 + 28) != 2)
  {
    goto LABEL_76;
  }

  SVG::resolveCurrentColor((a4 + 9), *(a4 + 100), *(a4 + 108));
  if (*(a4 + 28) != 2)
  {
    goto LABEL_76;
  }

  SVG::resolveCurrentColor(a4 + 344, *(a4 + 100), *(a4 + 108));
  if (*(a4 + 80) != 2)
  {
    goto LABEL_76;
  }

  if (*(a4 + 316))
  {
    return;
  }

  if (*(a4 + 28) != 2)
  {
LABEL_76:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  *(&v34 + 4) = *(a4 + 100);
  HIDWORD(v34) = *(a4 + 27);
  a4[19] = v34;
  *(a4 + 80) = 2;
}

void SVG::resolveCurrentColor(uint64_t a1, const void *a2, char a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) != 2)
  {
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v4 = *(a1 + 48);
  if (v4 == 3)
  {
    if (*(a1 + 40) == 1 && *(a1 + 36) == 1)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        CFRetain(*(a1 + 16));
        v7 = *(a1 + 41);
        v8 = *(a1 + 42);
        v9 = *(a1 + 43);
        v16 = v6;
        CFRetain(v6);
      }

      else
      {
        v7 = *(a1 + 41);
        v8 = *(a1 + 42);
        v9 = *(a1 + 43);
        v16 = 0;
      }

      v17 = 0;
      v18 = 0;
      v19 = 3;
      v20 = 1;
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = 3;
      v26[0] = 0;
      v27 = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v26, &v16);
      v28 = 2;
      std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(a1 + 8, &v25);
      if (v28 != -1)
      {
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
        (*(&v11 + v28))(&v10, &v25);
      }

      v28 = -1;
      if (v24 != -1)
      {
        v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
        v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
        v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
        v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
        v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
        (*(&v11 + v24))(&v10, &v16);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  else if (v4 == 1)
  {
    if (a3)
    {
      v16 = a2;
      v24 = 2;
    }

    else
    {
      LODWORD(v16) = 0;
      v24 = 4;
    }

    v26[0] = 0;
    v27 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v26, &v16);
    v28 = 2;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(a1 + 8, &v25);
    if (v28 != -1)
    {
      v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v11 + v28))(&v10, &v25);
    }

    v28 = -1;
    if (v24 != -1)
    {
      v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      (*(&v11 + v24))(&v10, &v16);
    }
  }
}

uint64_t SVG::Presentation::specifiedInherit@<X0>(SVG::Presentation *this@<X0>, const SVG::Presentation *a2@<X1>, _OWORD *a3@<X8>)
{
  memcpy(a3, &unk_25D1D5338, 0x240uLL);
  v7 = *(this + 1);
  *a3 = *this;
  a3[1] = v7;
  a3[2] = *(this + 2);
  *(a3 + 6) = *(this + 6);
  *(a3 + 64) = 0;
  *(a3 + 20) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>((a3 + 4), this + 64);
  *(a3 + 88) = *(this + 88);
  *(a3 + 104) = *(this + 104);
  *(a3 + 120) = *(this + 120);
  *(a3 + 34) = *(this + 34);
  *(a3 + 152) = 0;
  *(a3 + 50) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>(a3 + 152, this + 152);
  *(a3 + 248) = 0;
  v8 = *(this + 14);
  a3[13] = *(this + 13);
  a3[14] = v8;
  *(a3 + 66) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>(a3 + 248, this + 248);
  v9 = *(this + 17);
  a3[18] = *(this + 18);
  v10 = *(this + 20);
  a3[19] = *(this + 19);
  a3[20] = v10;
  *(a3 + 42) = *(this + 42);
  a3[17] = v9;
  *(a3 + 352) = 0;
  *(a3 + 100) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>((a3 + 22), this + 352);
  *(a3 + 416) = 0;
  *(a3 + 112) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1> const&>((a3 + 26), this + 416);
  v12 = *(this + 536);
  *(a3 + 520) = *(this + 520);
  *(a3 + 536) = v12;
  *(a3 + 552) = *(this + 552);
  *(a3 + 71) = *(this + 71);
  v13 = *(this + 472);
  *(a3 + 456) = *(this + 456);
  *(a3 + 472) = v13;
  v14 = *(this + 504);
  *(a3 + 488) = *(this + 488);
  *(a3 + 504) = v14;
  if (!*(this + 12) && *(a2 + 12))
  {
    v15 = *(a2 + 1);
    *a3 = *a2;
    a3[1] = v15;
    a3[2] = *(a2 + 2);
    *(a3 + 6) = *(a2 + 6);
  }

  if (!*(this + 20) && *(a2 + 20))
  {
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>((a3 + 4), a2 + 64);
  }

  if (!*(this + 23) && *(a2 + 23))
  {
    *(a3 + 11) = *(a2 + 11);
  }

  if (!*(this + 28) && *(a2 + 28))
  {
    a3[6] = *(a2 + 6);
    *(a3 + 28) = *(a2 + 28);
  }

  if (!*(this + 30) && *(a2 + 30))
  {
    *(a3 + 116) = *(a2 + 116);
  }

  if (!*(this + 32) && *(a2 + 32))
  {
    *(a3 + 124) = *(a2 + 124);
  }

  if (!*(this + 34) && *(a2 + 34))
  {
    *(a3 + 132) = *(a2 + 132);
  }

  if (!*(this + 50) && *(a2 + 50))
  {
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>(a3 + 152, a2 + 152);
  }

  if (!*(this + 54) && *(a2 + 54))
  {
    a3[13] = *(a2 + 13);
  }

  if (!*(this + 57) && *(a2 + 57))
  {
    *(a3 + 28) = *(a2 + 28);
  }

  if (!*(this + 59) && *(a2 + 59))
  {
    *(a3 + 29) = *(a2 + 29);
  }

  if (!*(this + 66) && *(a2 + 66))
  {
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>(a3 + 248, a2 + 248);
  }

  if (!*(this + 70) && *(a2 + 70))
  {
    a3[17] = *(a2 + 17);
  }

  if (!*(this + 73) && *(a2 + 73))
  {
    *(a3 + 36) = *(a2 + 36);
  }

  if (!*(this + 75) && *(a2 + 75))
  {
    *(a3 + 37) = *(a2 + 37);
  }

  if (!*(this + 80) && *(a2 + 80))
  {
    a3[19] = *(a2 + 19);
    *(a3 + 80) = *(a2 + 80);
  }

  if (!*(this + 84) && *(a2 + 84))
  {
    *(a3 + 328) = *(a2 + 328);
  }

  if (!*(this + 100) && *(a2 + 100))
  {
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>((a3 + 22), a2 + 352);
  }

  if (!*(this + 112) && *(a2 + 112))
  {
    result = std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1> const&>((a3 + 26), a2 + 416);
  }

  if (!*(this + 120) && *(a2 + 120))
  {
    v16 = *(a2 + 472);
    *(a3 + 456) = *(a2 + 456);
    *(a3 + 472) = v16;
  }

  if (!*(this + 123) && *(a2 + 123))
  {
    *(a3 + 61) = *(a2 + 61);
  }

  if (!*(this + 125) && *(a2 + 125))
  {
    *(a3 + 62) = *(a2 + 62);
  }

  if (!*(this + 128) && *(a2 + 128))
  {
    *(a3 + 504) = *(a2 + 504);
  }

  if (!*(this + 132) && *(a2 + 132))
  {
    *(a3 + 520) = *(a2 + 520);
  }

  if (!*(this + 140) && *(a2 + 140))
  {
    v17 = *(a2 + 552);
    *(a3 + 536) = *(a2 + 536);
    *(a3 + 552) = v17;
  }

  if (!*(this + 143))
  {
    if (*(a2 + 143))
    {
      *(a3 + 71) = *(a2 + 71);
    }
  }

  return result;
}

_BYTE *SVG::Presentation::Presentation(uint64_t a1, void *a2)
{
  v203 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 100) = 0;
  *(a1 + 152) = 0;
  v5 = a1 + 152;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0;
  v6 = a1 + 248;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 308) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 400) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 112) = 0;
  v7 = a1 + 112;
  *(a1 + 224) = 0;
  v8 = (a1 + 224);
  *(a1 + 568) = 0;
  *(a1 + 288) = 0;
  v9 = (a1 + 288);
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 232) = 0;
  *(a1 + 296) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  std::string::basic_string[abi:nn200100]<0>(__p, "clip");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v10)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v10 + 8)))
    {
      v12 = 0;
      v13 = 1;
    }

    else if (SVG::consumeStringAlone<5ul>("auto", (v10 + 8)))
    {
      v11 = 0;
      v12 = 0;
      memset(__p, 0, 28);
      v13 = 2;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = v14;
        v14 = SVG::consumeWsp(v10 + 8, v14);
      }

      while ((v16 & 1) != 0);
      *&v17 = -1;
      *(&v17 + 1) = -1;
      *__p = v17;
      *&__p[16] = v17;
      memset(&__p[32], 170, 24);
      SVG::consumeClipRect(v10 + 8, v15, __p);
      if (__p[48] != 1)
      {
        goto LABEL_19;
      }

      v18 = *&__p[40];
      do
      {
        v19 = v18;
        v18 = SVG::consumeWsp(v10 + 8, v18);
      }

      while ((v20 & 1) != 0);
      v21 = *(v10 + 87);
      v11 = v21;
      if (v11 < 0)
      {
        v21 = v10[9];
      }

      if (v19 == v21)
      {
        v12 = *__p;
        *&__str[12] = *&__p[16];
        v11 = *&__p[32];
        *__p = *&__p[4];
        *__str = *__p;
        *&__p[12] = *&__str[12];
        v13 = 2;
      }

      else
      {
LABEL_19:
        v13 = 0;
        v12 = 0;
      }
    }

    *(a1 + 8) = v12;
    *(a1 + 12) = *__p;
    *(a1 + 24) = *&__p[12];
    *(a1 + 40) = v11;
    *(a1 + 48) = v13;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "clip-path");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v22 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v22)
  {
    SVG::consumeIRIOrNone(__p, (v22 + 8));
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(v4, &__p[8]);
    if (*&__p[24] != -1)
    {
      *__str = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&__str[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&__str[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*&__str[8 * *&__p[24]])(v195, &__p[8]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "clip-rule");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v23 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v23)
  {
    *(a1 + 88) = SVG::consumeFillRule((v23 + 8));
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "color");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v24 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v24)
    {
      goto LABEL_84;
    }
  }

  else if (!v24)
  {
    goto LABEL_84;
  }

  v25 = SVG::consumeColorAlone((v24 + 8));
  if (!HIDWORD(v26))
  {
    memset(__str, 170, 24);
    SVG::CSS::preprocess(v24 + 8, __str);
    v27 = 0;
    do
    {
      v28 = v27;
      v27 = SVG::CSS::consumeWhitespace(__str, v27);
    }

    while ((v29 & 1) != 0);
    v30 = SVG::consumeString<5ul>("var(", __str, v28);
    if ((v31 & 1) == 0)
    {
      *&v201[4] = 0;
      *&v201[12] = 0;
LABEL_70:
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v26 = *&v201[8];
      v25 = *v201;
      goto LABEL_73;
    }

    do
    {
      v32 = v30;
      v30 = SVG::CSS::consumeWhitespace(__str, v30);
    }

    while ((v33 & 1) != 0);
    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v34;
    *&__p[16] = v34;
    SVG::CSS::consumeAName(__str, v32, __p);
    *v195 = *__p;
    v35 = *&__p[24];
    v196 = *&__p[16];
    memset(__p, 0, 24);
    if (__str[23] >= 0)
    {
      v36 = __str[23];
    }

    else
    {
      v36 = *&__str[8];
    }

    do
    {
      SVG::CSS::consumeWhitespace(__str, --v36);
    }

    while ((v37 & 1) != 0);
    SVG::consumeString<2ul>(")", __str, v36);
    if (v38)
    {
      v39 = SVG::consumeString<8ul>("--color", v195, 0);
      if (v40)
      {
        memset(&v194, 170, sizeof(v194));
        SVG::consumeInteger(v195, v39, &v194);
        if (v194.__r_.__value_.__s.__data_[16] == 1)
        {
          v41 = 0xFFFFLL;
          if (v194.__r_.__value_.__r.__words[0] < 0xFFFF)
          {
            v41 = v194.__r_.__value_.__r.__words[0];
          }

          v42 = v41 | 0x1AAAA0000;
          if (v194.__r_.__value_.__l.__data_ >= 0)
          {
            v43 = v42;
          }

          else
          {
            v43 = 0x1AAAA0000;
          }

          *&v201[4] = v43;
          *&v201[12] = 2;
          goto LABEL_66;
        }
      }

      do
      {
        v44 = v35;
        v35 = SVG::CSS::consumeWhitespace(__str, v35);
      }

      while ((v45 & 1) != 0);
      v46 = SVG::consumeString<2ul>(",", __str, v44);
      if (v47)
      {
        v48 = v46;
        v49 = v36 - v46 + 1;
        do
        {
          SVG::CSS::consumeWhitespace(__str, v36--);
          --v49;
        }

        while ((v50 & 1) != 0);
        memset(&v194, 170, sizeof(v194));
        std::string::basic_string(&v194, __str, v48, v49, v201);
        *v201 = SVG::consumeColorAlone(&v194);
        *&v201[8] = v51;
        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

        goto LABEL_66;
      }
    }

    *&v201[4] = 0;
    *&v201[12] = 0;
LABEL_66:
    if (SHIBYTE(v196) < 0)
    {
      operator delete(v195[0]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_70;
  }

LABEL_73:
  *__p = v25;
  *&__p[8] = v26;
  if (HIDWORD(v26) == 2)
  {
    v52 = *&__p[4];
    if (*v7 != 2)
    {
      *v7 = 2;
    }

    *(a1 + 100) = v52;
    *(a1 + 108) = 1;
  }

  else
  {
    if (HIDWORD(v26) == 1)
    {
      if (*v7 != 1)
      {
        *v7 = 1;
      }
    }

    else
    {
      if (HIDWORD(v26))
      {
        v191 = std::__throw_bad_variant_access[abi:nn200100]();
        return std::string::basic_string[abi:nn200100]<0>(v191, v192);
      }

      if (*v7)
      {
        *v7 = 0;
      }
    }

    *(a1 + 100) = 0;
  }

LABEL_84:
  std::string::basic_string[abi:nn200100]<0>(__p, "color-interpolation");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v53 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v53)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v53 + 8)))
    {
      v54 = 0;
      v55 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<5ul>("auto", (v53 + 8)))
    {
      v54 = 0;
      v55 = 0x200000000;
    }

    else if (SVG::consumeStringAlone<5ul>("sRGB", (v53 + 8)))
    {
      v55 = 0x200000000;
      v54 = 1;
    }

    else
    {
      v56 = 0;
      do
      {
        v57 = v56;
        v56 = SVG::consumeWsp(v53 + 8, v56);
      }

      while ((v58 & 1) != 0);
      v59 = SVG::consumeString<10ul>("linearRGB", (v53 + 8), v57);
      if (v60)
      {
        do
        {
          v61 = v59;
          v59 = SVG::consumeWsp(v53 + 8, v59);
        }

        while ((v62 & 1) != 0);
        v63 = *(v53 + 87);
        if (*(v53 + 87) < 0)
        {
          v63 = v53[9];
        }

        v64 = v61 == v63;
        v54 = 2 * v64;
        v55 = v64 << 33;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }
    }

    *(a1 + 116) = v55 | v54;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "color-rendering");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v65 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v65)
  {
    *(a1 + 124) = SVG::consumeRenderingQuality((v65 + 8));
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "display");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v66 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v66)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v66 + 8)))
    {
      v67 = 0;
      v68 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<7ul>("inline", (v66 + 8)))
    {
      v67 = 0;
      v68 = 0x200000000;
    }

    else
    {
      v68 = 0x200000000;
      if (SVG::consumeStringAlone<6ul>("block", (v66 + 8)))
      {
        v67 = 1;
      }

      else
      {
        v69 = SVG::consumeStringAlone<5ul>("none", (v66 + 8));
        if (!v69)
        {
          v68 = 0;
        }

        v67 = 2;
        if (!v69)
        {
          v67 = 0;
        }
      }
    }

    *(a1 + 132) = v68 | v67;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fill");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v70 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v70)
  {
    SVG::parseAloneOrVar<SVG::Presentation::Paint>(__p, v70 + 8);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(v5, &__p[8]);
    if (v200 != -1)
    {
      *__str = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *&__str[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *&__str[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*&__str[8 * v200])(v195, &__p[8]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fill-opacity");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v71 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v71)
  {
    *(a1 + 208) = SVG::consumeOpacity((v71 + 8));
    *(a1 + 216) = v72;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "fill-rule");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v73 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v73)
  {
    *v8 = SVG::consumeFillRule((v73 + 8));
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "image-rendering");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v74 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v74)
  {
    *(a1 + 232) = SVG::consumeRenderingQuality((v74 + 8));
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "mask");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v75 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v75)
  {
    SVG::consumeIRIOrNone(__p, (v75 + 8));
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(v6, &__p[8]);
    if (*&__p[24] != -1)
    {
      *__str = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&__str[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&__str[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*&__str[8 * *&__p[24]])(v195, &__p[8]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "opacity");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v76 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v76)
  {
    *(a1 + 272) = SVG::consumeOpacity((v76 + 8));
    *(a1 + 280) = v77;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "overflow");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v78 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v78)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v78 + 8)))
    {
      v79 = 0;
      v80 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<8ul>("visible", (v78 + 8)))
    {
      v79 = 0;
      v80 = 0x200000000;
    }

    else
    {
      v80 = 0x200000000;
      if (SVG::consumeStringAlone<7ul>("hidden", (v78 + 8)))
      {
        v79 = 1;
      }

      else
      {
        v81 = SVG::consumeStringAlone<5ul>("auto", (v78 + 8));
        if (!v81)
        {
          v80 = 0;
        }

        v79 = 2;
        if (!v81)
        {
          v79 = 0;
        }
      }
    }

    *v9 = v80 | v79;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "shape-rendering");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v82 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v82)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v82 + 8)))
    {
      v83 = 0;
      v84 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<14ul>((v82 + 8)))
    {
      v84 = 0x200000000;
      v83 = 1;
    }

    else
    {
      v193 = v7;
      v85 = 0;
      do
      {
        v86 = v85;
        v85 = SVG::consumeWsp(v82 + 8, v85);
      }

      while ((v87 & 1) != 0);
      v88 = *(v82 + 87);
      if ((v88 & 0x80u) != 0)
      {
        v88 = v82[9];
      }

      v89 = v86 + 10;
      if (v88 >= v86 + 10)
      {
        v90 = "crispEdges";
        v91 = 10;
        while (1)
        {
          v92 = *(v82 + 87) >= 0 ? (v82 + 8) : v82[8];
          v93 = *(v92 + v86);
          v95 = *v90++;
          v94 = v95;
          if (__tolower(v95) != v93)
          {
            v96 = *(v82 + 87) >= 0 ? (v82 + 8) : v82[8];
            v97 = *(v96 + v86);
            if (__toupper(v94) != v97)
            {
              break;
            }
          }

          ++v86;
          if (!--v91)
          {
            do
            {
              v98 = v89;
              v89 = SVG::consumeWsp(v82 + 8, v89);
            }

            while ((v99 & 1) != 0);
            v100 = *(v82 + 87);
            if ((v100 & 0x80u) != 0)
            {
              v100 = v82[9];
            }

            if (v98 == v100)
            {
              v84 = 0x200000000;
              v83 = 2;
              goto LABEL_231;
            }

            break;
          }
        }
      }

      v101 = 0;
      do
      {
        v102 = v101;
        v101 = SVG::consumeWsp(v82 + 8, v101);
      }

      while ((v103 & 1) != 0);
      v104 = *(v82 + 87);
      if ((v104 & 0x80u) != 0)
      {
        v104 = v82[9];
      }

      v105 = v102 + 18;
      if (v104 >= v102 + 18)
      {
        v106 = "geometricPrecision";
        v107 = 18;
        while (1)
        {
          v108 = *(v82 + 87) >= 0 ? (v82 + 8) : v82[8];
          v109 = *(v108 + v102);
          v111 = *v106++;
          v110 = v111;
          if (__tolower(v111) != v109)
          {
            v112 = *(v82 + 87) >= 0 ? (v82 + 8) : v82[8];
            v113 = *(v112 + v102);
            if (__toupper(v110) != v113)
            {
              break;
            }
          }

          ++v102;
          if (!--v107)
          {
            do
            {
              v114 = v105;
              v105 = SVG::consumeWsp(v82 + 8, v105);
            }

            while ((v115 & 1) != 0);
            v116 = *(v82 + 87);
            if ((v116 & 0x80u) != 0)
            {
              v116 = v82[9];
            }

            if (v114 == v116)
            {
              v84 = 0x200000000;
              v83 = 3;
              goto LABEL_231;
            }

            break;
          }
        }
      }

      v117 = SVG::consumeStringAlone<5ul>("auto", (v82 + 8));
      v83 = 0;
      v84 = 0x200000000;
      if (!v117)
      {
        v84 = 0;
      }

LABEL_231:
      v7 = v193;
    }

    *(a1 + 296) = v84 | v83;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stop-color");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v118 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v118)
  {
    memset(v201, 170, sizeof(v201));
    SVG::consumeStopColor(v201, (v118 + 8));
    if (*&v201[16])
    {
      v197 = *v201;
      v198 = *&v201[16];
LABEL_271:
      *(v7 + 192) = v197;
      *(v7 + 208) = v198;
      goto LABEL_272;
    }

    memset(__str, 170, 24);
    SVG::CSS::preprocess(v118 + 8, __str);
    v119 = 0;
    do
    {
      v120 = v119;
      v119 = SVG::CSS::consumeWhitespace(__str, v119);
    }

    while ((v121 & 1) != 0);
    v122 = SVG::consumeString<5ul>("var(", __str, v120);
    if ((v123 & 1) == 0)
    {
      DWORD1(v197) = 0;
      v198 = 0;
LABEL_269:
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      goto LABEL_271;
    }

    do
    {
      v124 = v122;
      v122 = SVG::CSS::consumeWhitespace(__str, v122);
    }

    while ((v125 & 1) != 0);
    *&v126 = 0xAAAAAAAAAAAAAAAALL;
    *(&v126 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v126;
    *&__p[16] = v126;
    SVG::CSS::consumeAName(__str, v124, __p);
    *v195 = *__p;
    v127 = *&__p[24];
    v196 = *&__p[16];
    memset(__p, 0, 24);
    if (__str[23] >= 0)
    {
      v128 = __str[23];
    }

    else
    {
      v128 = *&__str[8];
    }

    do
    {
      SVG::CSS::consumeWhitespace(__str, --v128);
    }

    while ((v129 & 1) != 0);
    SVG::consumeString<2ul>(")", __str, v128);
    if (v130)
    {
      v131 = SVG::consumeString<8ul>("--color", v195, 0);
      if (v132)
      {
        memset(&v194, 170, sizeof(v194));
        SVG::consumeInteger(v195, v131, &v194);
        if (v194.__r_.__value_.__s.__data_[16] == 1)
        {
          v133 = 0xFFFFLL;
          if (v194.__r_.__value_.__r.__words[0] < 0xFFFF)
          {
            v133 = v194.__r_.__value_.__r.__words[0];
          }

          v134 = v133 | 0x1AAAA0000;
          if (v194.__r_.__value_.__l.__data_ >= 0)
          {
            v135 = v134;
          }

          else
          {
            v135 = 0x1AAAA0000;
          }

          *(&v197 + 4) = v135;
          BYTE12(v197) = 1;
          v198 = 2;
          goto LABEL_265;
        }
      }

      do
      {
        v136 = v127;
        v127 = SVG::CSS::consumeWhitespace(__str, v127);
      }

      while ((v137 & 1) != 0);
      v138 = SVG::consumeString<2ul>(",", __str, v136);
      if (v139)
      {
        v140 = v138;
        v141 = v128 - v138 + 1;
        do
        {
          SVG::CSS::consumeWhitespace(__str, v128--);
          --v141;
        }

        while ((v142 & 1) != 0);
        memset(&v194, 170, sizeof(v194));
        std::string::basic_string(&v194, __str, v140, v141, &v197);
        SVG::consumeStopColor(&v197, &v194);
        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

        goto LABEL_265;
      }
    }

    DWORD1(v197) = 0;
    v198 = 0;
LABEL_265:
    if (SHIBYTE(v196) < 0)
    {
      operator delete(v195[0]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_269;
  }

LABEL_272:
  std::string::basic_string[abi:nn200100]<0>(__p, "stop-opacity");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v143 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v143)
  {
    *(a1 + 328) = SVG::consumeOpacity((v143 + 8));
    *(a1 + 336) = v144;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v145 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v145)
  {
    SVG::parseAloneOrVar<SVG::Presentation::Paint>(__p, v145 + 8);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(a1 + 352, &__p[8]);
    if (v200 != -1)
    {
      *__str = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *&__str[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *&__str[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*&__str[8 * v200])(v195, &__p[8]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-dasharray");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v146 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (!v146)
  {
    goto LABEL_298;
  }

  if (SVG::consumeStringAlone<8ul>("inherit", (v146 + 8)))
  {
    v147 = 1;
    *&__p[8] = 0;
LABEL_295:
    *&__p[40] = v147;
    goto LABEL_296;
  }

  if (SVG::consumeStringAlone<5ul>("none", (v146 + 8)))
  {
    __p[8] = 0;
    __p[32] = 0;
LABEL_294:
    v147 = 2;
    goto LABEL_295;
  }

  v152 = 0;
  *&v153 = 0xAAAAAAAAAAAAAAAALL;
  *(&v153 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__str[16] = v153;
  *__str = v153;
  do
  {
    v154 = v152;
    v152 = SVG::consumeWsp(v146 + 8, v152);
  }

  while ((v155 & 1) != 0);
  *&__p[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v156 = 0xAAAAAAAAAAAAAAAALL;
  *(&v156 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v156;
  *&__p[16] = v156;
  SVG::consumeDashArrayValue(v146 + 8, v154, __p);
  if (__p[32])
  {
    v157 = *&__p[24];
    do
    {
      v158 = v157;
      v157 = SVG::consumeWsp(v146 + 8, v157);
    }

    while ((v159 & 1) != 0);
    v160 = *(v146 + 87);
    if ((v160 & 0x80u) != 0)
    {
      v160 = v146[9];
    }

    if (v158 == v160)
    {
      memset(__str, 0, 24);
      v161 = *__p;
      if (*&__p[8] != *__p)
      {
        std::vector<SVG::Length>::__vallocate[abi:nn200100](__str, (*&__p[8] - *__p) >> 4);
      }

      v162 = 1;
    }

    else
    {
      v162 = 0;
      __str[0] = 0;
      v161 = *__p;
    }

    __str[24] = v162;
    if (v161)
    {
      operator delete(v161);
      if (__str[24])
      {
LABEL_396:
        *&__p[8] = *__str;
        *&__p[24] = *&__str[16];
        __p[32] = 1;
        goto LABEL_294;
      }
    }

    else if (v162)
    {
      goto LABEL_396;
    }
  }

  *&__p[8] = 0;
  *&__p[40] = 0;
LABEL_296:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1>>(a1 + 416, &__p[8]);
  if (*&__p[40] != -1)
  {
    *__str = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    *&__str[8] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    *&__str[16] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*&__str[8 * *&__p[40]])(v195, &__p[8]);
  }

LABEL_298:
  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-dashoffset");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v148 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v148)
  {
    *__p = -1;
    *&__p[8] = 0xAAAAAAAAAAAAAAAALL;
    *&__p[16] = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeAlone<SVG::Length>((v148 + 8), SVG::consumeLength, __p);
    if (__p[16] == 1)
    {
      *&__str[8] = *__p;
      *(v7 + 344) = *__str;
      *(v7 + 360) = *&__str[16];
      *(a1 + 480) = 2;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-linecap");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v149 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v149)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v149 + 8)))
    {
      v150 = 0;
      v151 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<5ul>("butt", (v149 + 8)))
    {
      v150 = 0;
      v151 = 0x200000000;
    }

    else
    {
      v151 = 0x200000000;
      if (SVG::consumeStringAlone<6ul>("round", (v149 + 8)))
      {
        v150 = 1;
      }

      else
      {
        v163 = SVG::consumeStringAlone<7ul>("square", (v149 + 8));
        if (!v163)
        {
          v151 = 0;
        }

        v150 = 2;
        if (!v163)
        {
          v150 = 0;
        }
      }
    }

    *(v7 + 376) = v151 | v150;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-linejoin");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v164 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v164)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v164 + 8)))
    {
      v165 = 0;
      v166 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<6ul>("miter", (v164 + 8)))
    {
      v165 = 0;
      v166 = 0x200000000;
    }

    else
    {
      v166 = 0x200000000;
      if (SVG::consumeStringAlone<6ul>("round", (v164 + 8)))
      {
        v165 = 1;
      }

      else
      {
        v167 = SVG::consumeStringAlone<6ul>("bevel", (v164 + 8));
        if (!v167)
        {
          v166 = 0;
        }

        v165 = 2;
        if (!v167)
        {
          v165 = 0;
        }
      }
    }

    *(a1 + 496) = v166 | v165;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-miterlimit");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v168 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v168)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v168 + 8)))
    {
      v169 = 0;
      v170 = 1;
    }

    else
    {
      v171 = COERCE_DOUBLE(SVG::consumeAlone<double>((v168 + 8), SVG::consumeNumber));
      v172 = v171 >= 1.0;
      v174 = (v173 & v172) == 0;
      if ((v173 & v172) != 0)
      {
        v169 = *&v171;
      }

      else
      {
        v169 = *&v171 & 0xFFFFFFFF00000000;
      }

      v170 = 2;
      if (v174)
      {
        v170 = 0;
      }
    }

    *(a1 + 504) = v169;
    *(a1 + 512) = v170;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-opacity");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v175 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v175)
  {
    *(a1 + 520) = SVG::consumeOpacity((v175 + 8));
    *(a1 + 528) = v176;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "stroke-width");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v177 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v177)
  {
    *__p = -1;
    *&__p[8] = 0xAAAAAAAAAAAAAAAALL;
    *&__p[16] = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeAlone<SVG::Length>((v177 + 8), SVG::consumeLength, __p);
    if (__p[16] == 1)
    {
      *&__str[8] = *__p;
      *(v7 + 424) = *__str;
      *(v7 + 440) = *&__str[16];
      *(a1 + 560) = 2;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "visibility");
  std::string::basic_string[abi:nn200100]<0>(__str, "http://www.w3.org/2000/svg");
  v178 = SVG::Element::findInAttributeMap(a2, __p, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v178)
  {
    if (SVG::consumeStringAlone<8ul>("inherit", (v178 + 8)))
    {
      v179 = 0;
      v180 = 0x100000000;
    }

    else if (SVG::consumeStringAlone<8ul>("visible", (v178 + 8)))
    {
      v179 = 0;
      v180 = 0x200000000;
    }

    else if (SVG::consumeStringAlone<7ul>("hidden", (v178 + 8)))
    {
      v180 = 0x200000000;
      v179 = 1;
    }

    else
    {
      v181 = 0;
      do
      {
        v182 = v181;
        v181 = SVG::consumeWsp(v178 + 8, v181);
      }

      while ((v183 & 1) != 0);
      v184 = SVG::consumeString<9ul>("collapse", (v178 + 8), v182);
      if (v185)
      {
        do
        {
          v186 = v184;
          v184 = SVG::consumeWsp(v178 + 8, v184);
        }

        while ((v187 & 1) != 0);
        v188 = *(v178 + 87);
        if (*(v178 + 87) < 0)
        {
          v188 = v178[9];
        }

        v189 = v186 == v188;
        v179 = 2 * v189;
        v180 = v189 << 33;
      }

      else
      {
        v179 = 0;
        v180 = 0;
      }
    }

    *(a1 + 568) = v180 | v179;
  }

  return a1;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void SVG::consumeIRIOrNone(uint64_t a1, uint64_t a2)
{
  if (SVG::consumeStringAlone<8ul>("inherit", a2))
  {
    *(a1 + 8) = 0;
    v4 = 1;
LABEL_6:
    *(a1 + 24) = v4;
    return;
  }

  if (SVG::consumeStringAlone<5ul>("none", a2))
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_5:
    v4 = 2;
    goto LABEL_6;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    v5 = SVG::consumeWsp(a2, v5);
  }

  while ((v7 & 1) != 0);
  memset(cf, 170, sizeof(cf));
  SVG::consumeFuncIRI(a2, v6, cf);
  if (LOBYTE(cf[2]) != 1)
  {
LABEL_22:
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    return;
  }

  v8 = cf[1];
  do
  {
    v9 = v8;
    v8 = SVG::consumeWsp(a2, v8);
  }

  while ((v10 & 1) != 0);
  v11 = *(a2 + 23);
  if (v11 < 0)
  {
    v11 = *(a2 + 8);
  }

  v12 = cf[0];
  if (v9 != v11)
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_22;
  }

  if (!cf[0])
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    goto LABEL_5;
  }

  CFRetain(cf[0]);
  CFRelease(v12);
  CFRetain(v12);
  *(a1 + 8) = v12;
  *(a1 + 16) = 1;
  *(a1 + 24) = 2;

  CFRelease(v12);
}

uint64_t SVG::consumeFillRule(uint64_t a1)
{
  if (SVG::consumeStringAlone<8ul>("inherit", a1))
  {
    v2 = 0;
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0x200000000;
    if (SVG::consumeStringAlone<8ul>("nonzero", a1))
    {
      v2 = 0;
    }

    else
    {
      v4 = SVG::consumeStringAlone<8ul>("evenodd", a1);
      if (!v4)
      {
        v3 = 0;
      }

      v2 = v4;
    }
  }

  return v3 | v2;
}

uint64_t SVG::consumeColorAlone(uint64_t a1)
{
  if (SVG::consumeStringAlone<8ul>("inherit", a1))
  {
    HIDWORD(v8) = 0;
  }

  else
  {
    v2 = SVG::consumeAlone<SVG::Presentation::Color>(a1, SVG::consumeHexColor);
    if (v3 & 1) != 0 || (v2 = SVG::consumeAlone<SVG::Presentation::Color>(a1, SVG::consumeRGBColor), (v4) || (v2 = SVG::consumeAlone<SVG::Presentation::Color>(a1, SVG::consumePercentRGBColor), (v5) || (v2 = SVG::consumeAlone<SVG::Presentation::Color>(a1, SVG::consumeColorKeyword), (v6))
    {
      HIDWORD(v8) = v2;
    }

    else
    {
      HIDWORD(v8) = 0;
    }
  }

  return v8;
}

uint64_t SVG::consumeRenderingQuality(uint64_t a1)
{
  if (SVG::consumeStringAlone<8ul>("inherit", a1))
  {
    v2 = 0;
    v3 = 0x100000000;
  }

  else if (SVG::consumeStringAlone<5ul>("auto", a1))
  {
    v2 = 0;
    v3 = 0x200000000;
  }

  else if (SVG::consumeStringAlone<14ul>(a1))
  {
    v3 = 0x200000000;
    v2 = 1;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = v4;
      v4 = SVG::consumeWsp(a1, v4);
    }

    while ((v6 & 1) != 0);
    v7 = *(a1 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 8);
    }

    v8 = v5 + 15;
    if (v7 >= v5 + 15)
    {
      v9 = "optimizeQuality";
      v10 = 15;
      while (1)
      {
        v11 = *(a1 + 23) >= 0 ? a1 : *a1;
        v12 = *(v11 + v5);
        v14 = *v9++;
        v13 = v14;
        if (__tolower(v14) != v12)
        {
          v15 = *(a1 + 23) >= 0 ? a1 : *a1;
          v16 = *(v15 + v5);
          if (__toupper(v13) != v16)
          {
            break;
          }
        }

        ++v5;
        if (!--v10)
        {
          do
          {
            v17 = v8;
            v8 = SVG::consumeWsp(a1, v8);
          }

          while ((v18 & 1) != 0);
          v19 = *(a1 + 23);
          if (*(a1 + 23) < 0)
          {
            v19 = *(a1 + 8);
          }

          v20 = v17 == v19;
          v2 = 2 * v20;
          v3 = v20 << 33;
          return v3 | v2;
        }
      }
    }

    v2 = 0;
    v3 = 0;
  }

  return v3 | v2;
}

void SVG::parseAloneOrVar<SVG::Presentation::Paint>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[2] = v4;
  v42 = v4;
  v41[0] = v4;
  v41[1] = v4;
  SVG::consumePaint(v41, a2);
  v5 = DWORD2(v42);
  if (DWORD2(v42))
  {
    *(a1 + 8) = 0;
    *(a1 + 56) = -1;
    if (v5 != -1)
    {
      v38[0] = a1 + 8;
      v39.__r_.__value_.__l.__size_ = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint> &&>;
      v39.__r_.__value_.__r.__words[2] = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint> &&>;
      (*(&v39.__r_.__value_.__l.__data_ + v5))(v38, v41 + 8);
      *(a1 + 56) = v5;
    }

    goto LABEL_36;
  }

  memset(&__str, 170, sizeof(__str));
  SVG::CSS::preprocess(a2, &__str);
  v6 = 0;
  do
  {
    v7 = v6;
    v6 = SVG::CSS::consumeWhitespace(&__str, v6);
  }

  while ((v8 & 1) != 0);
  v9 = SVG::consumeString<5ul>("var(", &__str, v7);
  if (v10)
  {
    do
    {
      v11 = v9;
      v9 = SVG::CSS::consumeWhitespace(&__str, v9);
    }

    while ((v12 & 1) != 0);
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v34 = v13;
    v35 = v13;
    SVG::CSS::consumeAName(&__str, v11, v34);
    *__p = *v34;
    v14 = *(&v35 + 1);
    v33 = v35;
    v34[0] = 0;
    v34[1] = 0;
    *&v35 = 0;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    do
    {
      SVG::CSS::consumeWhitespace(&__str, --size);
    }

    while ((v16 & 1) != 0);
    SVG::consumeString<2ul>(")", &__str, size);
    if (v17)
    {
      v18 = SVG::consumeString<8ul>("--color", __p, 0);
      if (v19)
      {
        memset(v31, 170, sizeof(v31));
        SVG::consumeInteger(__p, v18, v31);
        if (LOBYTE(v31[2]) == 1)
        {
          v20 = 0xFFFFLL;
          if (v31[0] < 0xFFFFuLL)
          {
            v20 = v31[0];
          }

          v21 = v20 | 0x1AAAA0000;
          if (v31[0] >= 0)
          {
            v22 = v21;
          }

          else
          {
            v22 = 0x1AAAA0000;
          }

          v39.__r_.__value_.__l.__size_ = v22;
          v40 = 2;
          *(a1 + 16) = 0;
          v23 = a1 + 16;
          *(v23 + 32) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v23, &v39.__r_.__value_.__l.__size_);
          *(v23 + 40) = 2;
          if (v40 != -1)
          {
            v38[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
            v38[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
            v38[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
            v38[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
            v38[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
            (v38[v40])(&v37, &v39.__r_.__value_.__r.__words[1]);
          }

          goto LABEL_30;
        }
      }

      do
      {
        v24 = v14;
        v14 = SVG::CSS::consumeWhitespace(&__str, v14);
      }

      while ((v25 & 1) != 0);
      v26 = SVG::consumeString<2ul>(",", &__str, v24);
      if (v27)
      {
        v28 = v26;
        v29 = size - v26 + 1;
        do
        {
          SVG::CSS::consumeWhitespace(&__str, size--);
          --v29;
        }

        while ((v30 & 1) != 0);
        memset(&v39, 170, sizeof(v39));
        std::string::basic_string(&v39, &__str, v28, v29, v38);
        SVG::consumePaint(a1, &v39);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        goto LABEL_30;
      }
    }

    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
LABEL_30:
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34[0]);
    }

    goto LABEL_34;
  }

  *(a1 + 8) = 0;
  *(a1 + 56) = 0;
LABEL_34:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_36:
  if (DWORD2(v42) != -1)
  {
    v39.__r_.__value_.__r.__words[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v39.__r_.__value_.__l.__size_ = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v39.__r_.__value_.__r.__words[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v39.__r_.__value_.__l.__data_ + DWORD2(v42)))(v38, v41 + 8);
  }
}

void SVG::consumePaint(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (SVG::consumeStringAlone<8ul>("inherit", a2))
  {
    *(a1 + 8) = 0;
    *(a1 + 56) = 1;
    return;
  }

  if (SVG::consumeStringAlone<5ul>("none", a2))
  {
    *&cf[8] = 0;
    DWORD2(v27) = 0;
LABEL_7:
    *(a1 + 16) = 0;
    v4 = a1 + 16;
    *(v4 + 32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v4, &cf[8]);
    *(v4 + 40) = 2;
    goto LABEL_8;
  }

  if (SVG::consumeStringAlone<13ul>(a2))
  {
    *&cf[8] = 0;
    DWORD2(v27) = 1;
    goto LABEL_7;
  }

  v5 = SVG::consumeAlone<SVG::Presentation::Color>(a2, SVG::consumeColorWithICCColor);
  if (v6)
  {
    *&cf[8] = v5;
    DWORD2(v27) = 2;
    *(a1 + 16) = 0;
    v7 = a1 + 16;
    *(v7 + 32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v7, &cf[8]);
    *(v7 + 40) = 2;
LABEL_8:
    if (DWORD2(v27) != -1)
    {
      v21 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v22 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v23 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v25 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      (*(&v21 + DWORD2(v27)))(v19, &cf[8]);
    }

    return;
  }

  v8 = 0;
  memset(v19, 170, sizeof(v19));
  do
  {
    v9 = v8;
    v8 = SVG::consumeWsp(a2, v8);
  }

  while ((v10 & 1) != 0);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&cf[16] = v11;
  v27 = v11;
  *cf = v11;
  SVG::consumePaintIRI(a2, v9, cf);
  if ((BYTE8(v27) & 1) == 0)
  {
    goto LABEL_31;
  }

  v12 = v27;
  do
  {
    v13 = v12;
    v12 = SVG::consumeWsp(a2, v12);
  }

  while ((v14 & 1) != 0);
  v15 = *(a2 + 23) >= 0 ? *(a2 + 23) : *(a2 + 8);
  v16 = *cf;
  if (v13 == v15)
  {
    if (*cf)
    {
      CFRetain(*cf);
    }

    *v19 = *&cf[8];
    *&v19[16] = *&cf[24];
    v17 = v16;
  }

  else
  {
    v17 = 0xAAAAAAAAAAAAAA00;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13 == v15)
  {
    *&cf[8] = v17;
    *&cf[16] = *v19;
    LODWORD(v27) = *&v19[16];
    DWORD2(v27) = 3;
    *(a1 + 16) = 0;
    v18 = a1 + 16;
    *(v18 + 32) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v18, &cf[8]);
    *(v18 + 40) = 2;
    if (DWORD2(v27) != -1)
    {
      v21 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v22 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v23 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      v25 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
      (*(&v21 + DWORD2(v27)))(&v20, &cf[8]);
    }
  }

  else
  {
LABEL_31:
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
  }
}

uint64_t SVG::consumeOpacity(uint64_t a1)
{
  if (SVG::consumeStringAlone<8ul>("inherit", a1))
  {
    return 0;
  }

  v3 = COERCE_DOUBLE(SVG::consumeAlone<double>(a1, SVG::consumeNumber));
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = 1.0;
  if (v3 <= 1.0)
  {
    v5 = v3;
  }

  v6 = 0.0;
  if (v3 >= 0.0)
  {
    v6 = v5;
  }

  return *&v6;
}

unint64_t SVG::consumeStopColor(uint64_t a1, uint64_t a2)
{
  result = SVG::consumeStringAlone<8ul>("inherit", a2);
  if (result)
  {
    *(a1 + 4) = 0;
    v5 = 1;
LABEL_3:
    *(a1 + 16) = v5;
    return result;
  }

  result = SVG::consumeStringAlone<13ul>(a2);
  if (result)
  {
    *(a1 + 4) = 0;
    *(a1 + 12) = 0x200000000;
  }

  else
  {
    result = SVG::consumeAlone<SVG::Presentation::Color>(a2, SVG::consumeColorWithICCColor);
    if (v6)
    {
      *(a1 + 4) = result;
      *(a1 + 12) = 1;
      v5 = 2;
      goto LABEL_3;
    }

    *(a1 + 4) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void *SVG::consumeAlone<SVG::Length>@<X0>(uint64_t a1@<X0>, void *(*a2)(__int128 *__return_ptr, uint64_t, unint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  do
  {
    v7 = v6;
    v6 = SVG::consumeWsp(a1, v6);
  }

  while ((v8 & 1) != 0);
  *&v13 = -1;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = a2(&v13, a1, v7);
  if ((v15 & 1) == 0)
  {
    goto LABEL_10;
  }

  result = v14;
  do
  {
    v10 = result;
    result = SVG::consumeWsp(a1, result);
  }

  while ((v11 & 1) != 0);
  v12 = *(a1 + 23);
  if (v12 < 0)
  {
    v12 = *(a1 + 8);
  }

  if (v10 == v12)
  {
    *a3 = v13;
    *(a3 + 16) = 1;
  }

  else
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

CFTypeRef SVG::createColorObject@<X0>(CFArrayRef theArray@<X1>, uint64_t a2@<X0>, void *a3@<X8>, CGFloat a4@<D0>)
{
  v4 = a2;
  if (HIDWORD(a2))
  {
    if (HIDWORD(a2) == 1)
    {
      result = CFArrayGetCount(theArray);
      if (result <= v4)
      {
        *a3 = 0;
      }

      else
      {
        result = CFArrayGetValueAtIndex(theArray, v4);
        *a3 = result;
        if (result)
        {

          return CFRetain(result);
        }
      }
    }

    else
    {
      v8 = std::__throw_bad_variant_access[abi:nn200100]();
      return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(v8, v9);
    }
  }

  else
  {
    result = CGColorCreateSRGB(a2 / 255.0, BYTE1(a2) / 255.0, BYTE2(a2) / 255.0, a4);
    *a3 = result;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(a2 + 16);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 16) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEEOSX_EEEDcSP_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEEOSX_EEEDcSP_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEEOSX_EEEDcSP_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__assign_alt[abi:nn200100]<0ul,SVG::Presentation::NotSpecified,SVG::Presentation::NotSpecified>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = result;
  v5 = *(result + 16);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, result);
  }

  *v4 = *a3;
  v4[4] = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__assign_alt[abi:nn200100]<1ul,SVG::Presentation::Inherit,SVG::Presentation::Inherit>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = result;
  v5 = *(result + 16);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, result);
  }

  *v4 = *a3;
  v4[4] = 1;
  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__assign_alt[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 16) == 2)
  {
    std::__optional_storage_base<SVG::CF<__CFURL const*>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<SVG::CF<__CFURL const*>,false>>(a2, a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>(a1, a3);
  }
}

void std::__optional_storage_base<SVG::CF<__CFURL const*>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<SVG::CF<__CFURL const*>,false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v4 = *a1;
      if (*a1)
      {
        CFRelease(v4);
      }

      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
    }
  }

  else if (*(a1 + 8))
  {
    v6 = *a1;
    if (*a1)
    {
      CFRelease(v6);
    }

    *(a1 + 8) = 0;
  }

  else
  {
    v7 = *a2;
    *a2 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  if (v4 != -1)
  {
    v8[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (v8[v4])(&v7, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 8) == 1)
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }

  *(a1 + 16) = 2;
  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 48);
  v4 = *(a2 + 48);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 48) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEEOSR_EEEDcSJ_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 != -1)
  {
    v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v6[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v6[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v6[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v6[v3])(&v5, a2 + 8);
  }

  *(a2 + 40) = -1;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__assign_alt[abi:nn200100]<0ul,SVG::Presentation::NotSpecified,SVG::Presentation::NotSpecified>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = result;
  v5 = *(result + 48);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (v7[v5])(&v6, result);
  }

  *v4 = *a3;
  v4[12] = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__assign_alt[abi:nn200100]<1ul,SVG::Presentation::Inherit,SVG::Presentation::Inherit>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = result;
  v5 = *(result + 48);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (v7[v5])(&v6, result);
  }

  *v4 = *a3;
  v4[12] = 1;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__assign_alt[abi:nn200100]<2ul,SVG::Presentation::Paint,SVG::Presentation::Paint>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) == 2)
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(a2 + 8, a3 + 8);
  }

  else
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::Paint>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_;
  v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_;
  v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_(void *result, _DWORD *a2, _DWORD *a3)
{
  if (*(*result + 32))
  {
    v3[0] = *result;
    v3[1] = a3;
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<0ul,SVG::Presentation::None,SVG::Presentation::None>(std::__variant_detail::__alt<0ul,SVG::Presentation::None> &,SVG::Presentation::None &&)::{unnamed type#1}::operator()(v3);
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_(void *result, _DWORD *a2, _DWORD *a3)
{
  v5 = *result;
  if (*(*result + 32) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = v5;
    v6[1] = a3;
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<1ul,SVG::Presentation::CurrentColor,SVG::Presentation::CurrentColor>(std::__variant_detail::__alt<1ul,SVG::Presentation::CurrentColor> &,SVG::Presentation::CurrentColor &&)::{unnamed type#1}::operator()(v6);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_(uint64_t *a1, void *a2, void *a3)
{
  result = *a1;
  if (*(result + 32) != 2)
  {
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::Color>(result, a3);
  }

  *a2 = *a3;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEOST_EEEDcSL_DpT0_(void *result, _DWORD *a2, _DWORD *a3)
{
  v5 = *result;
  if (*(*result + 32) == 4)
  {
    *a2 = *a3;
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = v5;
    v6[1] = a3;
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<4ul,SVG::Presentation::FromContext,SVG::Presentation::FromContext>(std::__variant_detail::__alt<4ul,SVG::Presentation::FromContext> &,SVG::Presentation::FromContext &&)::{unnamed type#1}::operator()(v6);
  }

  return result;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<0ul,SVG::Presentation::None,SVG::Presentation::None>(std::__variant_detail::__alt<0ul,SVG::Presentation::None> &,SVG::Presentation::None &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 32);
  if (v3 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v5[v3])(&v4, v1);
  }

  *v1 = *v2;
  v1[8] = 0;
  return result;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<1ul,SVG::Presentation::CurrentColor,SVG::Presentation::CurrentColor>(std::__variant_detail::__alt<1ul,SVG::Presentation::CurrentColor> &,SVG::Presentation::CurrentColor &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 32);
  if (v3 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v5[v3])(&v4, v1);
  }

  *v1 = *v2;
  v1[8] = 1;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::Color>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    (v7[v4])(&v6, a1);
  }

  *(a1 + 32) = -1;
  *a1 = *a2;
  *(a1 + 32) = 2;
  return a1;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<3ul,SVG::Presentation::IRIWithFallback,SVG::Presentation::IRIWithFallback>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 3)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    v5 = *a3;
    *a3 = 0;
    *a2 = v5;
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 8) = v6;
  }

  else
  {

    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__emplace[abi:nn200100]<3ul,SVG::Presentation::IRIWithFallback>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__emplace[abi:nn200100]<3ul,SVG::Presentation::IRIWithFallback>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    (v9[v4])(&v8, a1);
  }

  *(a1 + 32) = -1;
  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  v6 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 8) = v6;
  *(a1 + 32) = 3;
  return a1;
}

void *std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__assign_alt[abi:nn200100]<4ul,SVG::Presentation::FromContext,SVG::Presentation::FromContext>(std::__variant_detail::__alt<4ul,SVG::Presentation::FromContext> &,SVG::Presentation::FromContext &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 32);
  if (v3 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v5[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v5[v3])(&v4, v1);
  }

  *v1 = *v2;
  v1[8] = 4;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::Paint>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 != -1)
  {
    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (v7[v4])(&v6, a1);
  }

  *(a1 + 48) = -1;
  *(a1 + 8) = 0;
  *(a1 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(a1 + 8, a2 + 8);
  *(a1 + 48) = 2;
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 32) = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> &&>;
    v8 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> &&>;
    v9 = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> &&>;
    v10 = std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> &&>;
    v11 = std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> &&>;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 32) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext> &&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  result = *(a2 + 1);
  *(v2 + 24) = *(a2 + 6);
  *(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEEOSX_EEEDcSP_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEEOSX_EEEDcSP_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEEOSX_EEEDcSP_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__assign_alt[abi:nn200100]<0ul,SVG::Presentation::NotSpecified,SVG::Presentation::NotSpecified>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = result;
  v5 = *(result + 32);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, result);
  }

  *v4 = *a3;
  v4[8] = 0;
  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__assign_alt[abi:nn200100]<1ul,SVG::Presentation::Inherit,SVG::Presentation::Inherit>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = result;
  v5 = *(result + 32);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, result);
  }

  *v4 = *a3;
  v4[8] = 1;
  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__assign_alt[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (*(a1 + 32) == 2)
  {
    std::__optional_storage_base<std::vector<SVG::Length>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<SVG::Length>,false>>(a2, a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>(a1, a3);
  }
}

__n128 std::__optional_storage_base<std::vector<SVG::Length>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::vector<SVG::Length>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

__n128 std::vector<SVG::Length>::__move_assign(uint64_t a1, __n128 *a2)
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

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (v7[v4])(&v6, a1);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 2;
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 16) = -1;
  v5 = *(a2 + 16);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 16) = v5;
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_(void *result, uint64_t a2)
{
  v2 = *result;
  *v2 = 0;
  v2[8] = 0;
  if (*(a2 + 8) == 1)
  {
    result = *a2;
    *v2 = *a2;
    if (result)
    {
      result = CFRetain(result);
    }

    v2[8] = 1;
  }

  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 48) = -1;
  v5 = *(a2 + 48);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 48) = v5;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISD_LNS0_6_TraitE1EEEEEvRSE_OT_EUlSN_E_JRKNS0_6__baseILSH_1EJSA_SB_SC_EEEEEEDcSM_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(v2 + 8) = 0;
  v2 += 8;
  *(v2 + 32) = -1;
  return std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> const&>(v2, a2 + 8);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 32) = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 32) = v5;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEEEEEDcSO_DpT0_(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  *v3 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  result = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 32) = -1;
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 32) = v5;
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISJ_LNS0_6_TraitE1EEEEEvRSK_OT_EUlST_E_JRKNS0_6__baseILSN_1EJSA_SB_SI_EEEEEEDcSS_DpT0_(void **a1, uint64_t a2)
{
  result = *a1;
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    result = std::vector<SVG::Length>::vector[abi:nn200100](result, a2);
    *(result + 24) = 1;
  }

  return result;
}

void *std::vector<SVG::Length>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<SVG::Length>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<SVG::Length>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Length>>(a1, a2);
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Length>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 48);
  v4 = *(a2 + 48);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 48) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEERKST_EEEDcSL_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEERKST_EEEDcSL_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEERKST_EEEDcSL_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 48);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[12] = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 48);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[12] = 1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSL_OT0_E_JRNS0_6__baseILSH_1EJSA_SB_SC_EEERKST_EEEDcSL_DpT0_(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *result;
  v5 = *(*result + 48);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v12 + v5))(&v11, v4);
LABEL_7:
    *(v4 + 8) = 0;
    v10 = v4 + 8;
    *(v10 + 40) = -1;
    *(v10 + 32) = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1> const&>(v10, a3 + 8);
    *(v10 + 40) = 2;
    return result;
  }

  v7 = a2 + 8;
  v8 = *(a2 + 40);
  v9 = *(a3 + 40);
  if (v8 == -1)
  {
    if (v9 == -1)
    {
      return result;
    }
  }

  else if (v9 == -1)
  {
    v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (*(&v12 + v8))(&v11, v7);
    *(a2 + 40) = -1;
    return result;
  }

  v11 = v7;
  v12 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_;
  v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_;
  v14 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_;
  v15 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_;
  v16 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_;
  return (*(&v12 + v9))(&v11);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[8] = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[8] = 1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t result, void *a2, void *a3)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *(v4 + 32) = -1;
  *v4 = *a3;
  *(v4 + 32) = 2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5 != -1)
  {
    if (v5 == 3)
    {
      SVG::CF<__CFURL const*>::operator=(a2, a3);
      result = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 8) = result;
      return result;
    }

    v10[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v10[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    (v10[v5])(&v9, v4);
  }

  *(v4 + 32) = -1;
  v8 = *a3;
  *v4 = *a3;
  if (v8)
  {
    CFRetain(v8);
  }

  result = *(a3 + 8);
  *(v4 + 24) = *(a3 + 24);
  *(v4 + 8) = result;
  *(v4 + 32) = 3;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISF_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSJ_1EJSA_SB_SC_SD_SE_EEERKSV_EEEDcSN_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[3] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    v7[4] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation4NoneENS9_12CurrentColorENS9_5ColorENS9_15IRIWithFallbackENS9_11FromContextEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSA_SB_SC_SD_SE_EEEEEEDcSI_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[8] = 4;
  return result;
}

const void **SVG::CF<__CFURL const*>::operator=(const void **a1, const void **a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 32) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[8] = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 32);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[8] = 1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_(uint64_t *a1, uint64_t a2, char **a3)
{
  v3 = *a1;
  if (*(*a1 + 32) == 2)
  {
    if (*(a2 + 24) == *(a3 + 24))
    {
      if (a2 != a3 && *(a2 + 24))
      {
        v5 = *a3;
        v6 = a3[1];
        v7 = v6 - *a3;
        v8 = *(a2 + 16);
        v9 = *a2;
        if (v8 - *a2 < v7)
        {
          v10 = v7 >> 4;
          if (v9)
          {
            *(a2 + 8) = v9;
            operator delete(v9);
            v8 = 0;
            *a2 = 0;
            *(a2 + 8) = 0;
            *(a2 + 16) = 0;
          }

          if (!(v10 >> 60))
          {
            v11 = v8 >> 3;
            if (v8 >> 3 <= v10)
            {
              v11 = v7 >> 4;
            }

            if (v8 >= 0x7FFFFFFFFFFFFFF0)
            {
              v12 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            std::vector<SVG::Length>::__vallocate[abi:nn200100](a2, v12);
          }

          std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
        }

        v14 = *(a2 + 8);
        v15 = v14 - v9;
        if (v14 - v9 >= v7)
        {
          if (v6 != v5)
          {
            memmove(v9, v5, v7);
          }

          v17 = &v9[v7];
        }

        else
        {
          v16 = &v5[v15];
          if (v14 != v9)
          {
            memmove(*a2, v5, v15);
            v14 = *(a2 + 8);
          }

          if (v6 != v16)
          {
            memmove(v14, v16, v6 - v16);
          }

          v17 = &v14[v6 - v16];
        }

        *(a2 + 8) = v17;
      }
    }

    else if (*(a2 + 24))
    {
      v13 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v13;
        operator delete(v13);
      }

      *(a2 + 24) = 0;
    }

    else
    {
      std::vector<SVG::Length>::vector[abi:nn200100](a2, a3);
      *(a2 + 24) = 1;
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v19 = 0;
    if (*(a3 + 24) == 1)
    {
      std::vector<SVG::Length>::vector[abi:nn200100](__p, a3);
      v19 = 1;
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>>::__emplace[abi:nn200100]<2ul,SVG::Presentation::ValueOrKeyword<std::vector<SVG::Length>>>(v3, __p);
    if (v19 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::ValueOrKeyword<SVG::CF<__CFURL const*>>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  v4 = *(a2 + 16);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (*(&v6 + v3))(&v5, result, a2);
    *(v2 + 16) = -1;
    return result;
  }

  v5 = result;
  v6 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_;
  v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_;
  v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_;
  return (*(&v6 + v4))(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[4] = 0;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[4] = 1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISJ_LNS0_6_TraitE1EEEEEvOT_EUlRSR_OT0_E_JRNS0_6__baseILSN_1EJSA_SB_SI_EEERKSZ_EEEDcSR_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      if (*(a2 + 8) == *(a3 + 8))
      {
        if (*(a2 + 8))
        {

          SVG::CF<__CFURL const*>::operator=(a2, a3);
        }
      }

      else if (*(a2 + 8))
      {
        if (*a2)
        {
          CFRelease(*a2);
        }

        *(a2 + 8) = 0;
      }

      else
      {
        v8 = *a3;
        *a2 = *a3;
        if (v8)
        {
          CFRetain(v8);
        }

        *(a2 + 8) = 1;
      }

      return;
    }

    v10[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (v10[v5])(&v9, v4);
  }

  *(v4 + 16) = -1;
  *v4 = 0;
  *(v4 + 8) = 0;
  if (*(a3 + 8) == 1)
  {
    v7 = *a3;
    *v4 = *a3;
    if (v7)
    {
      CFRetain(v7);
    }

    *(v4 + 8) = 1;
  }

  *(v4 + 16) = 2;
}

BOOL SVG::consumeStringAlone<8ul>(char *a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a2, v4);
  }

  while ((v6 & 1) != 0);
  v7 = SVG::consumeString<8ul>(a1, a2, v5);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v9 = v7;
    v7 = SVG::consumeWsp(a2, v7);
  }

  while ((v10 & 1) != 0);
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  return v9 == v11;
}

BOOL SVG::consumeStringAlone<5ul>(char *a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a2, v4);
  }

  while ((v6 & 1) != 0);
  v7 = SVG::consumeString<5ul>(a1, a2, v5);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v9 = v7;
    v7 = SVG::consumeWsp(a2, v7);
  }

  while ((v10 & 1) != 0);
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  return v9 == v11;
}

unint64_t SVG::consumeClipRect@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SVG::consumeString<5ul>("rect", a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  do
  {
    v7 = result;
    result = SVG::consumeWsp(a1, result);
  }

  while ((v8 & 1) != 0);
  result = SVG::consumeString<2ul>("(", a1, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

  do
  {
    v10 = result;
    result = SVG::consumeWsp(a1, result);
  }

  while ((v11 & 1) != 0);
  *&v12 = -1;
  *(&v12 + 1) = -1;
  v19 = v12;
  v20 = v12;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  result = SVG::consumeWspCommaList<double,4ul>(a1, v10, SVG::consumeAutoOrCSSLength, &v19);
  if (v22 != 1)
  {
    goto LABEL_10;
  }

  v13 = v21;
  do
  {
    v14 = v13;
    v13 = SVG::consumeWsp(a1, v13);
  }

  while ((v15 & 1) != 0);
  result = SVG::consumeString<2ul>(")", a1, v14);
  if (v16)
  {
    v17 = v20;
    *a3 = v19;
    *(a3 + 16) = v17;
    v18 = 1;
    *(a3 + 32) = 1;
    *(a3 + 40) = result;
  }

  else
  {
LABEL_10:
    v18 = 0;
    *a3 = 0;
  }

  *(a3 + 48) = v18;
  return result;
}

unint64_t SVG::consumeString<8ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 7;
  if (v3 >= a3 + 7)
  {
    v7 = a3;
    v10 = 7;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

unint64_t SVG::consumeString<2ul>(char *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = a3 + 1;
  if (v3 >= a3 + 1 && (v4 >= 0 ? (v11 = a2) : (v11 = *a2), (v12 = *(v11 + a3), __tolower(*a1) == v12) || (*(a2 + 23) >= 0 ? (v13 = a2) : (v13 = *a2), v14 = *(v13 + a3), __toupper(*a1) == v14)))
  {
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    v6 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

void SVG::consumeAutoOrCSSLength(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = SVG::consumeString<5ul>("auto", a1, a2);
  if (v7)
  {
    *a3 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {

    SVG::consumeCSSLength(a1, a2, a3);
  }
}

void SVG::consumeFuncIRI(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = SVG::consumeString<4ul>("url", a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  do
  {
    v7 = v5;
    v5 = SVG::consumeWsp(a1, v5);
  }

  while ((v8 & 1) != 0);
  v9 = SVG::consumeString<2ul>("(", a1, v7);
  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

  do
  {
    v11 = v9;
    v9 = SVG::consumeWsp(a1, v9);
  }

  while ((v12 & 1) != 0);
  v13 = *(a1 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 8);
  }

  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v15 = v14 >= 0 ? a1 : *a1;
    v16 = v11;
    while (*(v15 + v16) != 41)
    {
      if (v13 == ++v16)
      {
        v16 = v13;
        break;
      }
    }
  }

  v17 = v14 >= 0 ? a1 : *a1;
  v18 = CFURLCreateWithBytes(*MEMORY[0x277CBECE8], (v17 + v11), v16 - v11, 0x8000100u, 0);
  if (v18)
  {
    v19 = v18;
    CFRetain(v18);
    CFRelease(v19);
    do
    {
      v20 = v16;
      v16 = SVG::consumeWsp(a1, v16);
    }

    while ((v21 & 1) != 0);
    v22 = SVG::consumeString<2ul>(")", a1, v20);
    if (v23)
    {
      v24 = v22;
      CFRetain(v19);
      *a3 = v19;
      *(a3 + 8) = v24;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 16) = 0;
    }

    CFRelease(v19);
  }

  else
  {
LABEL_24:
    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

unint64_t SVG::consumeString<4ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 3;
  if (v3 >= a3 + 3)
  {
    v7 = a3;
    v10 = 3;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

unint64_t SVG::consumeAlone<SVG::Presentation::Color>(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, unint64_t))
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a1, v4);
  }

  while ((v6 & 1) != 0);
  memset(v14, 170, sizeof(v14));
  a2(v14, a1, v5);
  if (LOBYTE(v14[2]) != 1)
  {
    goto LABEL_10;
  }

  v7 = v14[1];
  do
  {
    v8 = v7;
    v7 = SVG::consumeWsp(a1, v7);
  }

  while ((v9 & 1) != 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  if (v8 == v10)
  {
    v11 = v14[0] & 0xFFFFFFFFFFFFFF00;
    v12 = LOBYTE(v14[0]);
  }

  else
  {
LABEL_10:
    v12 = 0;
    v11 = 0;
  }

  return v11 | v12;
}

unint64_t SVG::consumeHexColor@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SVG::consumeString<2ul>("#", a1, a2);
  if (v6 & 1) != 0 && (memset(v14, 170, sizeof(v14)), result = SVG::consumeHexDigit(v14, a1, result), (v14[2]) && (memset(v13, 170, sizeof(v13)), result = SVG::consumeHexDigit(v13, a1, v14[1]), (v13[2]) && (memset(v12, 170, sizeof(v12)), result = SVG::consumeHexDigit(v12, a1, v13[1]), (v12[2]))
  {
    memset(v11, 170, sizeof(v11));
    v7 = v12[1];
    result = SVG::consumeHexDigit(v11, a1, v12[1]);
    if (LOBYTE(v11[2]) == 1 && (memset(v10, 170, sizeof(v10)), result = SVG::consumeHexDigit(v10, a1, v11[1]), LOBYTE(v10[2]) == 1) && (memset(v9, 170, sizeof(v9)), result = SVG::consumeHexDigit(v9, a1, v10[1]), LOBYTE(v9[2]) == 1))
    {
      v8 = v9[1];
      *a3 = (LOBYTE(v13[0]) | (16 * LOBYTE(v14[0]))) | ((LOBYTE(v11[0]) | (16 * LOBYTE(v12[0]))) << 8) | ((LOBYTE(v9[0]) | (16 * LOBYTE(v10[0]))) << 16) | 0xAA000000;
      *(a3 + 8) = v8;
    }

    else
    {
      *a3 = (LOBYTE(v14[0]) | (16 * LOBYTE(v14[0]))) | ((LOBYTE(v13[0]) | (16 * LOBYTE(v13[0]))) << 8) | ((LOBYTE(v12[0]) | (16 * LOBYTE(v12[0]))) << 16) | 0xAA000000;
      *(a3 + 8) = v7;
    }

    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t SVG::consumeHexDigit(uint64_t result, uint64_t *a2, unint64_t a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  if (v3 <= a3)
  {
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = *(v5 + a3);
  if ((v6 - 48) > 9)
  {
    if ((v6 - 65) <= 5)
    {
      v7 = v6 - 55;
LABEL_13:
      *result = v7;
      *(result + 8) = a3 + 1;
      goto LABEL_14;
    }

    if ((v6 - 97) <= 5)
    {
      v7 = v6 - 87;
      goto LABEL_13;
    }

LABEL_15:
    v8 = 0;
    *result = 0;
    goto LABEL_16;
  }

  *result = v6 - 48;
  *(result + 8) = a3 + 1;
LABEL_14:
  v8 = 1;
LABEL_16:
  *(result + 16) = v8;
  return result;
}

void *SVG::consumeFunction<SVG::Presentation::Color,4ul>(uint64_t a1, uint64_t *a2, uint64_t a3, void *(*a4)(void *__return_ptr, uint64_t *, void *))
{
  result = SVG::consumeString<4ul>("rgb", a2, a3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  do
  {
    v9 = result;
    result = SVG::consumeWsp(a2, result);
  }

  while ((v10 & 1) != 0);
  result = SVG::consumeString<2ul>("(", a2, v9);
  if (v11)
  {
    do
    {
      v12 = result;
      result = SVG::consumeWsp(a2, result);
    }

    while ((v13 & 1) != 0);
    memset(v19, 170, sizeof(v19));
    result = a4(v19, a2, v12);
    if ((v19[2] & 1) == 0)
    {
      goto LABEL_11;
    }

    v14 = v19[1];
    do
    {
      v15 = v14;
      v14 = SVG::consumeWsp(a2, v14);
    }

    while ((v16 & 1) != 0);
    result = SVG::consumeString<2ul>(")", a2, v15);
    if (v17)
    {
      *a1 = v19[0];
      *(a1 + 8) = result;
      v18 = 1;
    }

    else
    {
LABEL_11:
      v18 = 0;
      *a1 = 0;
    }

    *(a1 + 16) = v18;
  }

  else
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void SVG::consumeRGBColorValue(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v20, 170, sizeof(v20));
  SVG::consumeInteger(a1, a2, v20);
  if (v20[2] & 1) != 0 && (v5 = SVG::consumeCommaSpace(a1, v20[1]), (v6) && (memset(v19, 170, sizeof(v19)), SVG::consumeInteger(a1, v5, v19), (v19[2]) && (v7 = SVG::consumeCommaSpace(a1, v19[1]), (v8))
  {
    memset(v18, 170, sizeof(v18));
    SVG::consumeInteger(a1, v7, v18);
    if (v18[2])
    {
      v9 = 255;
      if (v20[0] >= 0xFFuLL)
      {
        v10 = 255;
      }

      else
      {
        v10 = v20[0];
      }

      if (v19[0] >= 0xFFuLL)
      {
        v11 = 255;
      }

      else
      {
        v11 = v19[0];
      }

      v12 = v18[1];
      if (v18[0] < 0xFFuLL)
      {
        v9 = v18[0];
      }

      v13 = v11 << 8;
      if (v19[0] < 0)
      {
        v13 = 0;
      }

      if (v20[0] >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13 | v14;
      v16 = (v9 << 16) | 0xAA000000;
      if (v18[0] < 0)
      {
        v16 = 2852126720;
      }

      *a3 = v15 | v16;
      *(a3 + 8) = v12;
      v17 = 1;
    }

    else
    {
      v17 = 0;
      *a3 = 0;
    }

    *(a3 + 16) = v17;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

unint64_t SVG::consumeCommaSpace(uint64_t *a1, unint64_t a2)
{
  do
  {
    v4 = a2;
    a2 = SVG::consumeWsp(a1, a2);
  }

  while ((v5 & 1) != 0);
  v6 = SVG::consumeString<2ul>(",", a1, v4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v8 = v6;
    v6 = SVG::consumeWsp(a1, v6);
  }

  while ((v9 & 1) != 0);
  return v8;
}

void SVG::consumePercentRGBColorValue(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = NAN;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumePathNumber(a1, a2, &v30);
  if (v32 & 1) != 0 && (v5 = SVG::consumeString<2ul>("%", a1, v31), (v6) && (v7 = SVG::consumeCommaSpace(a1, v5), (v8) && (v27 = NAN, v28 = 0xAAAAAAAAAAAAAAAALL, v29 = 0xAAAAAAAAAAAAAAAALL, SVG::consumePathNumber(a1, v7, &v27), (v29) && (v9 = SVG::consumeString<2ul>("%", a1, v28), (v10) && (v11 = SVG::consumeCommaSpace(a1, v9), (v12))
  {
    v24 = NAN;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v26 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumePathNumber(a1, v11, &v24);
    if (v26 & 1) != 0 && (v13 = SVG::consumeString<2ul>("%", a1, v25), (v14))
    {
      if (v30 <= 100.0)
      {
        v15 = v30;
      }

      else
      {
        v15 = 100.0;
      }

      v16 = v15 * 255.0 / 100.0;
      v17 = 0.0;
      if (v30 < 0.0)
      {
        v16 = 0.0;
      }

      v18 = v16;
      if (v27 <= 100.0)
      {
        v19 = v27;
      }

      else
      {
        v19 = 100.0;
      }

      v20 = v19 * 255.0 / 100.0;
      if (v27 >= 0.0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0.0;
      }

      if (v24 <= 100.0)
      {
        v22 = v24;
      }

      else
      {
        v22 = 100.0;
      }

      if (v24 >= 0.0)
      {
        v17 = v22 * 255.0 / 100.0;
      }

      *a3 = v18 | (v21 << 8) | (v17 << 16) | 0xAA000000;
      *(a3 + 8) = v13;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *a3 = 0;
    }

    *(a3 + 16) = v23;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }
}

unint64_t SVG::consumeString<10ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 9;
  if (v3 >= a3 + 9)
  {
    v7 = a3;
    v10 = 9;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

BOOL SVG::consumeStringAlone<14ul>(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v2 = SVG::consumeWsp(a1, v2);
  }

  while ((v4 & 1) != 0);
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  v6 = v3 + 13;
  if (v5 >= v3 + 13)
  {
    v8 = "optimizeSpeed";
    v9 = 13;
    while (1)
    {
      v10 = *(a1 + 23) >= 0 ? a1 : *a1;
      v11 = *(v10 + v3);
      v13 = *v8++;
      v12 = v13;
      if (__tolower(v13) != v11)
      {
        v14 = *(a1 + 23) >= 0 ? a1 : *a1;
        v15 = *(v14 + v3);
        if (__toupper(v12) != v15)
        {
          break;
        }
      }

      ++v3;
      if (!--v9)
      {
        do
        {
          v16 = v6;
          v6 = SVG::consumeWsp(a1, v6);
        }

        while ((v17 & 1) != 0);
        v18 = *(a1 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(a1 + 8);
        }

        return v16 == v18;
      }
    }
  }

  return 0;
}

BOOL SVG::consumeStringAlone<7ul>(char *a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a2, v4);
  }

  while ((v6 & 1) != 0);
  v7 = SVG::consumeString<7ul>(a1, a2, v5);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v9 = v7;
    v7 = SVG::consumeWsp(a2, v7);
  }

  while ((v10 & 1) != 0);
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  return v9 == v11;
}

BOOL SVG::consumeStringAlone<6ul>(char *a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a2, v4);
  }

  while ((v6 & 1) != 0);
  v7 = SVG::consumeString<6ul>(a1, a2, v5);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v9 = v7;
    v7 = SVG::consumeWsp(a2, v7);
  }

  while ((v10 & 1) != 0);
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  return v9 == v11;
}

unint64_t SVG::consumeString<7ul>(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  v4 = a3 + 6;
  if (v3 >= a3 + 6)
  {
    v7 = a3;
    v10 = 6;
    while (1)
    {
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      v12 = *(v11 + v7);
      if (__tolower(*a1) != v12)
      {
        v13 = *(a2 + 23) >= 0 ? a2 : *a2;
        v14 = *(v13 + v7);
        if (__toupper(*a1) != v14)
        {
          break;
        }
      }

      ++a1;
      ++v7;
      if (!--v10)
      {
        v6 = v4 & 0xFFFFFFFFFFFFFF00;
        v5 = v4;
        return v6 | v5;
      }
    }
  }

  v5 = 0;
  v6 = 0;
  return v6 | v5;
}

BOOL SVG::consumeStringAlone<13ul>(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v2 = SVG::consumeWsp(a1, v2);
  }

  while ((v4 & 1) != 0);
  v5 = SVG::consumeString<13ul>(a1, v3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v7 = v5;
    v5 = SVG::consumeWsp(a1, v5);
  }

  while ((v8 & 1) != 0);
  v9 = *(a1 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 8);
  }

  return v7 == v9;
}

void SVG::consumeColorWithICCColor(std::string *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72[4] = *MEMORY[0x277D85DE8];
  memset(v54, 170, sizeof(v54));
  SVG::consumeHexColor(a1, a2, v54);
  if ((v54[2] & 1) == 0)
  {
    memset(v54, 170, sizeof(v54));
    SVG::consumeFunction<SVG::Presentation::Color,4ul>(v54, a1, a2, SVG::consumeRGBColorValue);
    if ((v54[2] & 1) == 0)
    {
      memset(v54, 170, sizeof(v54));
      SVG::consumeFunction<SVG::Presentation::Color,4ul>(v54, a1, a2, SVG::consumePercentRGBColorValue);
      if ((v54[2] & 1) == 0)
      {
        memset(v54, 170, sizeof(v54));
        SVG::consumeColorKeyword(a1, a2, v54);
        if ((v54[2] & 1) == 0)
        {
          *a3 = 0;
          *(a3 + 16) = 0;
          return;
        }
      }
    }
  }

  v6 = v54[1];
  v7 = v54[1];
  do
  {
    v8 = v7;
    v7 = SVG::consumeWsp(a1, v7);
  }

  while ((v9 & 1) != 0);
  v10 = SVG::consumeString<10ul>("icc-color", a1, v8);
  if ((v11 & 1) == 0)
  {
    goto LABEL_55;
  }

  do
  {
    v12 = v10;
    v10 = SVG::consumeWsp(a1, v10);
  }

  while ((v13 & 1) != 0);
  v14 = SVG::consumeString<2ul>("(", a1, v12);
  if ((v15 & 1) == 0)
  {
    goto LABEL_55;
  }

  do
  {
    v16 = v14;
    v14 = SVG::consumeWsp(a1, v14);
  }

  while ((v17 & 1) != 0);
  memset(v72, 170, 15);
  memset(&v72[2], 170, 15);
  v18 = SVG::consumeWsp(a1, v16);
  v20 = v19;
  v21 = SVG::consumeString<2ul>(",", a1, v16);
  v23 = v22;
  v24 = SVG::consumeString<2ul>("(", a1, v16);
  v26 = v25;
  v27 = SVG::consumeString<2ul>(")", a1, v16);
  if (v20 & 1) != 0 || (v23)
  {
    goto LABEL_55;
  }

  v53 = v6;
  v29 = v16;
  if ((v26 & 1) == 0)
  {
    v29 = v16;
    do
    {
      if (v28)
      {
        break;
      }

      if (v18 <= v21)
      {
        v31 = v21;
      }

      else
      {
        v31 = v18;
      }

      if (v31 <= v24)
      {
        v31 = v24;
      }

      v29 = v31 <= v27 ? v27 : v31;
      v18 = SVG::consumeWsp(a1, v29);
      v33 = v32;
      v21 = SVG::consumeString<2ul>(",", a1, v29);
      v35 = v34;
      v24 = SVG::consumeString<2ul>("(", a1, v29);
      v37 = v36;
      v27 = SVG::consumeString<2ul>(")", a1, v29);
      if (v33)
      {
        break;
      }
    }

    while ((v35 & 1) == 0 && (v37 & 1) == 0);
  }

  v6 = v53;
  if (v29 == v16)
  {
    goto LABEL_55;
  }

  std::string::basic_string(&v69, a1, v16, v29 - v16, &v65);
  if (SBYTE7(v70) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v69, *(&v69 + 1));
    v30 = SBYTE7(v70) < 0;
  }

  else
  {
    v30 = 0;
    *&v65.__r_.__value_.__l.__data_ = v69;
    v65.__r_.__value_.__r.__words[2] = v70;
  }

  v72[2] = v65.__r_.__value_.__l.__size_;
  v38 = v65.__r_.__value_.__r.__words[0];
  *(&v72[2] + 7) = *(&v65.__r_.__value_.__r.__words[1] + 7);
  v39 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
  *&v66 = v29;
  memset(&v65, 0, sizeof(v65));
  if (v30)
  {
    operator delete(v69);
  }

  v71 = 0xAAAAAAAAAAAAAAAALL;
  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v40;
  v70 = v40;
  SVG::consumeOneOrMoreGeneric<double>(SVG::consumeNumber, &v69);
  if (v71 != 1)
  {
    if ((v39 & 0x80000000) == 0)
    {
LABEL_55:
      *a3 = v54[0];
      *(a3 + 8) = v6;
      *(a3 + 16) = 1;
      return;
    }

LABEL_54:
    operator delete(v38);
    goto LABEL_55;
  }

  v60 = v38;
  *v61 = v72[2];
  *&v61[7] = *(&v72[2] + 7);
  v62 = v39;
  *__p = v69;
  v64 = v70;
  v69 = 0uLL;
  *&v70 = 0;
  SVG::ValueWithOffset<SVG::ICCColor>::ValueWithOffset(&v65, &v60, *(&v70 + 1));
  v72[0] = v65.__r_.__value_.__l.__size_;
  v38 = v65.__r_.__value_.__r.__words[0];
  *(v72 + 7) = *(&v65.__r_.__value_.__r.__words[1] + 7);
  v41 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
  memset(&v65, 0, sizeof(v65));
  v52 = v66;
  v66 = 0uLL;
  v43 = v67;
  v42 = v68;
  v67 = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v62 < 0)
  {
    operator delete(v60);
  }

  if ((v71 & 1) != 0 && v69)
  {
    *(&v69 + 1) = v69;
    operator delete(v69);
  }

  do
  {
    v44 = v42;
    v42 = SVG::consumeWsp(a1, v42);
  }

  while ((v45 & 1) != 0);
  v46 = SVG::consumeString<2ul>(")", a1, v44);
  if ((v47 & 1) == 0)
  {
    if (v52)
    {
      operator delete(v52);
    }

    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v55 = v38;
  *v56 = v72[0];
  *&v56[7] = *(v72 + 7);
  v57 = v41;
  *v58 = v52;
  v59 = v43;
  SVG::ValueWithOffset<SVG::ICCColor>::ValueWithOffset(&v65, &v55, v46);
  v48 = v65.__r_.__value_.__r.__words[0];
  v49 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
  memset(&v65, 0, sizeof(v65));
  v50 = v66;
  v51 = v68;
  v66 = 0uLL;
  v67 = 0;
  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (v57 < 0)
  {
    operator delete(v55);
  }

  *a3 = v54[0];
  *(a3 + 8) = v51;
  *(a3 + 16) = 1;
  if (v50)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }
}

void SVG::consumePaintIRI(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(cf, 170, sizeof(cf));
  SVG::consumeFuncIRI(a1, a2, cf);
  if ((cf[2] & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 40) = 0;
    return;
  }

  v5 = cf[1];
  v6 = cf[1];
  do
  {
    v7 = v6;
    v6 = SVG::consumeWsp(a1, v6);
  }

  while ((v8 & 1) != 0);
  v9 = SVG::consumeString<5ul>("none", a1, v7);
  if ((v10 & 1) == 0)
  {
    v13 = SVG::consumeString<13ul>(a1, v7);
    if ((v14 & 1) == 0)
    {
      memset(v18, 170, sizeof(v18));
      SVG::consumeColorWithICCColor(a1, v7, v18);
      if (LOBYTE(v18[2]) == 1)
      {
        v15 = cf[0];
        v17 = v18[0];
        v16 = v18[1];
        if (cf[0])
        {
          CFRetain(cf[0]);
          CFRelease(v15);
        }

        *a3 = v15;
        *(a3 + 12) = v17;
        *(a3 + 20) = 2;
        *(a3 + 24) = 1;
        *(a3 + 32) = v16;
      }

      else
      {
        v12 = cf[0];
        if (cf[0])
        {
          CFRetain(cf[0]);
          *a3 = v12;
          *(a3 + 8) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = v5;
          goto LABEL_12;
        }

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = v5;
      }

LABEL_24:
      *(a3 + 40) = 1;
      return;
    }

    v11 = v13;
    v12 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
      *a3 = v12;
      *(a3 + 12) = 0;
      *(a3 + 20) = 1;
      goto LABEL_11;
    }

    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 20) = 1;
LABEL_23:
    *(a3 + 24) = 1;
    *(a3 + 32) = v11;
    goto LABEL_24;
  }

  v11 = v9;
  v12 = cf[0];
  if (!cf[0])
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 20) = 0;
    goto LABEL_23;
  }

  CFRetain(cf[0]);
  *a3 = v12;
  *(a3 + 12) = 0;
  *(a3 + 20) = 0;
LABEL_11:
  *(a3 + 24) = 1;
  *(a3 + 32) = v11;
LABEL_12:
  *(a3 + 40) = 1;

  CFRelease(v12);
}

unint64_t SVG::consumeString<13ul>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  v3 = a2 + 12;
  if (v2 >= a2 + 12)
  {
    v6 = a2;
    v8 = "currentColor";
    v9 = 12;
    while (1)
    {
      v10 = *(a1 + 23) >= 0 ? a1 : *a1;
      v11 = *(v10 + v6);
      v13 = *v8++;
      v12 = v13;
      if (__tolower(v13) != v11)
      {
        v14 = *(a1 + 23) >= 0 ? a1 : *a1;
        v15 = *(v14 + v6);
        if (__toupper(v12) != v15)
        {
          break;
        }
      }

      ++v6;
      if (!--v9)
      {
        v5 = v3 & 0xFFFFFFFFFFFFFF00;
        v4 = v3;
        return v5 | v4;
      }
    }
  }

  v4 = 0;
  v5 = 0;
  return v5 | v4;
}

std::string *SVG::ValueWithOffset<SVG::ICCColor>::ValueWithOffset(std::string *this, __int128 *a2, std::string::size_type a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  std::vector<double>::vector[abi:nn200100](this[1].__r_.__value_.__r.__words, a2 + 3);
  this[2].__r_.__value_.__r.__words[0] = a3;
  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *std::vector<double>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<double>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<double>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void *SVG::consumeOneOrMoreGeneric<double>@<X0>(void *(*a1)(void *__return_ptr)@<X2>, _BYTE *a2@<X8>)
{
  v4[0] = -1;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = a1(v4);
  if (v5)
  {
    operator new();
  }

  *a2 = 0;
  a2[32] = 0;
  return result;
}

uint64_t SVG::consumeAlone<double>(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, unint64_t))
{
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = SVG::consumeWsp(a1, v4);
  }

  while ((v6 & 1) != 0);
  v12 = -1;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  a2(&v12, a1, v5);
  if (v14 != 1)
  {
    return 0;
  }

  v7 = v13;
  do
  {
    v8 = v7;
    v7 = SVG::consumeWsp(a1, v7);
  }

  while ((v9 & 1) != 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  if (v8 == v10)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

void SVG::consumeDashArrayValue(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a3 = v5;
  *(a3 + 16) = v5;
  v6[0] = -1;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeLength(a1, a2, v6);
  if (v7)
  {
    operator new();
  }

  *a3 = 0;
  *(a3 + 32) = 0;
  if ((*(a3 + 32) & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = a2;
    *(a3 + 32) = 1;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Presentation::NotSpecified,SVG::Presentation::Inherit,SVG::Presentation::Paint> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(v2 + 8) = 0;
  v2 += 8;
  *(v2 + 32) = -1;
  return std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Presentation::None,SVG::Presentation::CurrentColor,SVG::Presentation::Color,SVG::Presentation::IRIWithFallback,SVG::Presentation::FromContext>,(std::__variant_detail::_Trait)1>>(v2, a2 + 8);
}

uint64_t SVG::ShapeElement::ShapeElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9AB8;
  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *(a1 + 640) = *MEMORY[0x277CBF2C0];
  *(a1 + 656) = v7;
  *(a1 + 672) = *(v6 + 32);
  std::string::basic_string[abi:nn200100]<0>(__p, "transform");
  std::string::basic_string[abi:nn200100]<0>(v16, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, __p, v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    *&v9 = -1;
    *(&v9 + 1) = -1;
    v13 = v9;
    v14 = v9;
    *__p = v9;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    SVG::parseTransform((v8 + 8), __p);
    if (v15 == 1)
    {
      v10 = v13;
      *(a1 + 640) = *__p;
      *(a1 + 656) = v10;
      *(a1 + 672) = v14;
    }
  }

  return a1;
}

uint64_t OTSVGGlyphRecordingCreate(std::mutex **a1, uint64_t a2)
{
  v4 = *a1;
  std::mutex::lock(*a1);
  v5 = *&(*a1)[5].__m_.__opaque[16];
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = a2;
      if (v5 <= a2)
      {
        v7 = a2 % *&(*a1)[5].__m_.__opaque[16];
      }
    }

    else
    {
      v7 = (v5 - 1) & a2;
    }

    v8 = *(*&(*a1)[5].__m_.__opaque[8] + 8 * v7);
    if (v8)
    {
      for (i = *v8; i; i = *i)
      {
        v10 = i[1];
        if (v10 == a2)
        {
          if (*(i + 8) == a2)
          {
            if (i[3])
            {
              operator new();
            }

            v18 = 0;
            std::mutex::unlock(v4);
            return v18;
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
          {
            if (v10 >= v5)
            {
              v10 %= v5;
            }
          }

          else
          {
            v10 &= v5 - 1;
          }

          if (v10 != v7)
          {
            break;
          }
        }
      }
    }
  }

  std::mutex::unlock(v4);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[7] = v11;
  v38[8] = v11;
  v38[5] = v11;
  v38[6] = v11;
  v38[3] = v11;
  v38[4] = v11;
  v38[1] = v11;
  v38[2] = v11;
  v38[0] = v11;
  v36 = v11;
  v37 = v11;
  *__src = v11;
  *__p = v11;
  v32 = v11;
  v33 = v11;
  v31 = v11;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v31);
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v31, "glyph", 5);
  MEMORY[0x25F894170](v12, a2);
  v13 = *a1;
  if ((BYTE8(v37) & 0x10) != 0)
  {
    v15 = v37;
    if (v37 < __src[1])
    {
      *&v37 = __src[1];
      v15 = __src[1];
    }

    v16 = __src[0];
    goto LABEL_24;
  }

  if ((BYTE8(v37) & 8) != 0)
  {
    v16 = *(&v32 + 1);
    v15 = *(&v33 + 1);
LABEL_24:
    v14 = v15 - v16;
    if ((v15 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v30 = v15 - v16;
    if (v14)
    {
      memmove(&__dst, v16, v14);
    }

    goto LABEL_30;
  }

  v14 = 0;
  v30 = 0;
LABEL_30:
  *(&__dst + v14) = 0;
  v17 = std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(&v13[1].__m_.__opaque[24], &__dst);
  v18 = v17;
  if (v30 < 0)
  {
    operator delete(__dst);
    if (!v18)
    {
      goto LABEL_61;
    }
  }

  else if (!v17)
  {
    goto LABEL_61;
  }

  v18 = SVG::GlyphRecordingCreateWithElement(*a1);
  v19 = *a1;
  std::mutex::lock(*a1);
  v20 = *a1;
  if (v18)
  {
    v21 = *(v18 + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v20[5].__m_.__opaque[16];
  if (!v22)
  {
    goto LABEL_55;
  }

  v23 = vcnt_s8(v22);
  v23.i16[0] = vaddlv_u8(v23);
  if (v23.u32[0] > 1uLL)
  {
    v24 = a2;
    if (v22 <= a2)
    {
      v24 = a2 % *&v20[5].__m_.__opaque[16];
    }
  }

  else
  {
    v24 = (v22 - 1) & a2;
  }

  v25 = *(*&v20[5].__m_.__opaque[8] + 8 * v24);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_55:
    operator new();
  }

  while (1)
  {
    v27 = v26[1];
    if (v27 == a2)
    {
      break;
    }

    if (v23.u32[0] > 1uLL)
    {
      if (v27 >= v22)
      {
        v27 %= v22;
      }
    }

    else
    {
      v27 &= v22 - 1;
    }

    if (v27 != v24)
    {
      goto LABEL_55;
    }

LABEL_54:
    v26 = *v26;
    if (!v26)
    {
      goto LABEL_55;
    }
  }

  if (*(v26 + 8) != a2)
  {
    goto LABEL_54;
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::mutex::unlock(v19);
LABEL_61:
  *&v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v31 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v31 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v32);
  std::ostream::~ostream();
  MEMORY[0x25F894220](v38);
  return v18;
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x277D82828] + 16);
  v6 = *(MEMORY[0x277D82828] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x277D82868] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x25F8941E0](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

uint64_t SVG::GlyphRecordingCreateWithElement(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_25D1D5808, sizeof(__dst));
  SVG::Presentation::defaultPresentation(__dst);
  memcpy(v19, &unk_25D1D5608, sizeof(v19));
  SVG::Recorder::getInitialState(__dst, t1);
  SVG::Recorder::Recorder(v19, t1, *(a1 + 88), *(a1 + 72), 72.0);
  if (LODWORD(t1[2].c) != -1)
  {
    *&t2.a = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&t2.b = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    *&t2.c = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (*(&t2.a + LODWORD(t1[2].c)))(&v17, &t1[0].b);
  }

  *&v2 = -1;
  *(&v2 + 1) = -1;
  *&v17.c = v2;
  *&v17.tx = v2;
  *&v17.a = v2;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(a1 + 64);
  SVG::computeViewBoxTransform(*(v3 + 704), &v17, *(v3 + 672), *(v3 + 680), *(v3 + 688), *(v3 + 696), 0.0, 0.0, *(v3 + 656), *(v3 + 664));
  if (v18 != 1)
  {
LABEL_18:
    operator new();
  }

  *&v4 = -1;
  *(&v4 + 1) = -1;
  *&v16.c = v4;
  *&v16.tx = v4;
  *&v16.a = v4;
  t1[0] = v17;
  CGAffineTransformMakeScale(&t2, 1.0, -1.0);
  CGAffineTransformConcat(&v16, t1, &t2);
  t2 = *byte_25D1D57B0;
  v13 = unk_25D1D57E0;
  v14 = xmmword_25D1D57F0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  t1[0] = v16;
  SVG::AffineTransformApplier::AffineTransformApplier(&t2, v19, t1);
  memcpy(t1, &unk_25D1D5808, sizeof(t1));
  SVG::Presentation::inherit((*(a1 + 64) + 64), __dst, __dst, t1);
  if (LODWORD(t1[2].ty) == 2)
  {
    if (HIDWORD(t1[2].tx) != 2)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v8 = v5;
      v9 = v5;
      v10 = -1;
      v11 = 0xAAAAAAAAAAAAAAAALL;
      operator new();
    }

    if (LODWORD(t1[9].c) != -1)
    {
      *&v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *(&v8 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v8 + LODWORD(t1[9].c)))(&v20, &t1[8].tx);
    }

    LODWORD(t1[9].c) = -1;
    if (LODWORD(t1[8].c) != -1)
    {
      *&v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *(&v8 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *&v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v8 + LODWORD(t1[8].c)))(&v20, &t1[7].c);
    }

    LODWORD(t1[8].c) = -1;
    if (LODWORD(t1[5].d) != -1)
    {
      *&v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *(&v8 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v8 + LODWORD(t1[5].d)))(&v20, &t1[5].b);
    }

    LODWORD(t1[5].d) = -1;
    if (LODWORD(t1[4].b) != -1)
    {
      *&v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *(&v8 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      *&v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v8 + LODWORD(t1[4].b)))(&v20, &t1[3].b);
    }

    LODWORD(t1[4].b) = -1;
    if (LODWORD(t1[1].tx) != -1)
    {
      *&v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *(&v8 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      *&v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v8 + LODWORD(t1[1].tx)))(&v20, &t1[1].c);
    }

    SVG::AffineTransformApplier::~AffineTransformApplier(&t2);
    goto LABEL_18;
  }

  v6 = std::__throw_bad_variant_access[abi:nn200100]();
  return OTSVGGlyphRecordingCreateFromDocument(v6);
}

uint64_t OTSVGGlyphRecordingCreateFromID(uint64_t *a1, CFStringRef theString)
{
  maxBufLen = 0;
  v8.length = CFStringGetLength(theString);
  v8.location = 0;
  CFStringGetBytes(theString, v8, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  if (maxBufLen)
  {
    if ((maxBufLen & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v9.length = CFStringGetLength(theString);
  v9.location = 0;
  CFStringGetBytes(theString, v9, 0x8000100u, 0, 0, 0, maxBufLen, 0);
  memset(__dst, 170, sizeof(__dst));
  HIBYTE(__dst[2]) = 0;
  LOBYTE(__dst[0]) = 0;
  if (std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>((*a1 + 96), __dst))
  {
    v4 = SVG::GlyphRecordingCreateWithElement(*a1);
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  return v4;
}

uint64_t OTSVGGlyphRecordingRelease(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    }

    JUMPOUT(0x25F894240);
  }

  return result;
}

void OTSVGGlyphRecordingPlaybackRecordingsAtPositions(uint64_t ***a1, uint64_t a2, uint64_t a3, CGContextRef c)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a3;
      if (a3)
      {
        v6 = a1;
        v7 = (a2 + 8);
        do
        {
          if (*v6)
          {
            CGContextSaveGState(c);
            v8 = **v6;
            LODWORD(v9) = *(v8 + 14);
            v10 = *(v8 + 8) / v9;
            CGAffineTransformMakeTranslation(&v11, *(v7 - 1), *v7);
            CGAffineTransformScale(&transform, &v11, v10, v10);
            CGContextConcatCTM(c, &transform);
            SVG::playback(c, **v6);
            CGContextRestoreGState(c);
          }

          v7 += 2;
          ++v6;
          --v4;
        }

        while (v4);
      }
    }
  }
}

double OTSVGGlyphRecordingGetBoundingRect(void *a1)
{
  if (a1)
  {
    v1 = *a1 + 24;
  }

  else
  {
    v1 = MEMORY[0x277CBF3A0];
  }

  return *v1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t SVG::AffineTransformApplier::AffineTransformApplier(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  v7 = a3[1];
  *v14 = *a3;
  *&v14[16] = v7;
  *&v14[32] = a3[2];
  SVG::invert(v14, a1 + 24);
  v8 = a3[1];
  *v14 = *a3;
  *&v14[16] = v8;
  *&v14[32] = a3[2];
  IsIdentity = CGAffineTransformIsIdentity(v14);
  *(a1 + 80) = IsIdentity;
  if (!IsIdentity)
  {
    if ((*(a1 + 72) & 1) == 0 && (*(a1 + 16) & 1) == 0)
    {
      SVG::StateSaverRestorer::save(v6);
    }

    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    *v14 = &unk_286EB9490;
    *&v14[8] = v11;
    *&v14[24] = v12;
    *&v14[40] = v13;
    v15 = 2;
    SVG::Recorder::append(a2, v14);
    if (v15 != -1)
    {
      (off_286EBA5A8[v15])(&v16, v14);
    }
  }

  return a1;
}

uint64_t SVG::StateSaverRestorer::save(SVG::StateSaverRestorer *this)
{
  v2 = *this;
  v4[0] = &unk_286EB9400;
  v5 = 0;
  result = SVG::Recorder::append(v2, v4);
  if (v5 != -1)
  {
    result = (off_286EBA5A8[v5])(&v6, v4);
  }

  *(this + 8) = 1;
  return result;
}

double SVG::SaveState::boundingRect(SVG::SaveState *this, SVG::BoundingRectState *a2)
{
  v2 = *(a2 + 5) + *(a2 + 4) - 1;
  std::deque<SVG::BoundingRectState::State>::push_back(a2, *(*(a2 + 1) + 8 * (v2 / 0x2E)) + 88 * (v2 % 0x2E));
  return *MEMORY[0x277CBF3A0];
}

uint64_t SVG::SaveState::dump(SVG::SaveState *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "SaveState", 9);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

__n128 std::deque<SVG::BoundingRectState::State>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 46 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<SVG::BoundingRectState::State>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2E)) + 88 * (v7 % 0x2E);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  result = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  *(v8 + 32) = result;
  ++a1[5];
  return result;
}

void *std::deque<SVG::BoundingRectState::State>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2E;
  v3 = v1 - 46;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<SVG::BoundingRectState::State *>::emplace_back<SVG::BoundingRectState::State *&>(a1, &v10);
}

void *std::__split_buffer<SVG::BoundingRectState::State *>::emplace_back<SVG::BoundingRectState::State *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<SVG::BoundingRectState::State *>::emplace_front<SVG::BoundingRectState::State *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<SVG::BoundingRectState::State *>::emplace_back<SVG::BoundingRectState::State *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<SVG::BoundingRectState::State *>::emplace_front<SVG::BoundingRectState::State *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::BoundingRectState::State *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void SVG::ConcatCTM::execute(uint64_t a1, CGContextRef c)
{
  v2 = *(a1 + 24);
  *&v3.a = *(a1 + 8);
  *&v3.c = v2;
  *&v3.tx = *(a1 + 40);
  CGContextConcatCTM(c, &v3);
}

double SVG::ConcatCTM::boundingRect(SVG::ConcatCTM *this, SVG::BoundingRectState *a2)
{
  v2 = *(this + 24);
  *&v4.a = *(this + 8);
  *&v4.c = v2;
  *&v4.tx = *(this + 40);
  SVG::BoundingRectState::concatCTM(a2, &v4);
  return *MEMORY[0x277CBF3A0];
}

uint64_t SVG::ConcatCTM::dump(SVG::ConcatCTM *this)
{
  v2 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "ConcatCTM ", 10);
  v3 = MEMORY[0x25F894150](v2, *(this + 1));
  v4 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, " ", 1);
  v5 = MEMORY[0x25F894150](v4, *(this + 2));
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, " ", 1);
  v7 = MEMORY[0x25F894150](v6, *(this + 3));
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " ", 1);
  v9 = MEMORY[0x25F894150](v8, *(this + 4));
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, " ", 1);
  v11 = MEMORY[0x25F894150](v10, *(this + 5));
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, " ", 1);
  v13 = MEMORY[0x25F894150](v12, *(this + 6));
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, " ", 1);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  return std::ostream::flush();
}

__n128 SVG::BoundingRectState::concatCTM(SVG::BoundingRectState *this, CGAffineTransform *a2)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *&v12.c = v2;
  *&v12.tx = v2;
  *&v12.a = v2;
  v3 = *&a2->c;
  *&t1.a = *&a2->a;
  *&t1.c = v3;
  *&t1.tx = *&a2->tx;
  v4 = *(this + 5) + *(this + 4) - 1;
  v5 = (*(*(this + 1) + 8 * (v4 / 0x2E)) + 88 * (v4 % 0x2E));
  v7 = v5[1];
  v6 = v5[2];
  *&v10.a = *v5;
  *&v10.c = v7;
  *&v10.tx = v6;
  CGAffineTransformConcat(&v12, &t1, &v10);
  result = *&v12.a;
  v9 = *&v12.tx;
  v5[1] = *&v12.c;
  v5[2] = v9;
  *v5 = result;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB9448;
  v2 = a2[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB9550;
  v2 = a2[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB9888;
  v2 = a2[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB9840;
  v2 = a2[1];
  if (v2)
  {
    CFRelease(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB9CC0;
  v2 = a2[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB9E98;
  v2 = a2[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS8_12RestoreStateENS8_9ConcatCTMENS8_9DrawImageENS8_8FillPathENS8_18DrawLinearGradientENS8_18DrawRadialGradientENS8_11ClipToPathsENS8_10ClipToMaskENS8_7SetFillENS8_22BeginTransparencyLayerENS8_20EndTransparencyLayerENS8_8SetAlphaENS8_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSO_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_EEEEEEDcSQ_DpT0_(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EB9598;
  v3 = *(a2 + 112);
  if (v3 != -1)
  {
    v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v6[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (v6[v3])(&v5, a2 + 8);
  }

  *(a2 + 112) = -1;
  return result;
}

void SVG::DrawImage::~DrawImage(SVG::DrawImage *this)
{
  *this = &unk_286EB9448;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_286EB9448;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x25F894240);
}

void SVG::DrawImage::execute(uint64_t a1, CGContext *a2)
{
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *&v12.c = v4;
  *&v12.tx = v4;
  *&v12.a = v4;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *&v4 = v6;
  MaxY = CGRectGetMaxY(*&v4);
  CGAffineTransformMakeTranslation(&transform, v6, MaxY);
  CGAffineTransformScale(&v12, &transform, 1.0, -1.0);
  transform = v12;
  CGContextConcatCTM(a2, &transform);
  v13.size.width = *(a1 + 32);
  v13.size.height = *(a1 + 40);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  CGContextDrawImage(a2, v13, *(a1 + 8));
  v10 = v12;
  CGAffineTransformInvert(&transform, &v10);
  CGContextConcatCTM(a2, &transform);
}

uint64_t SVG::DrawImage::dump(SVG::DrawImage *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DrawImage", 9);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

double SVG::BoundingRectState::deviceRect(SVG::BoundingRectState *this, CGRect a2)
{
  v2 = *(this + 5) + *(this + 4) - 1;
  v3 = *(*(this + 1) + 8 * (v2 / 0x2E)) + 88 * (v2 % 0x2E);
  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  *&v8.a = *v3;
  *&v8.c = v5;
  *&v8.tx = v4;
  v9 = CGRectApplyAffineTransform(a2, &v8);
  v6 = (v3 + 48);
  if (!*(v3 + 80))
  {
    v6 = MEMORY[0x277CBF390];
  }

  *&result = CGRectIntersection(v9, *v6);
  return result;
}

void SVG::FillPath::~FillPath(SVG::FillPath *this)
{
  *this = &unk_286EB9550;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_286EB9550;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x25F894240);
}

void SVG::FillPath::execute(uint64_t a1, CGContextRef c)
{
  CGContextAddPath(c, *(a1 + 8));
  if (*(a1 + 16) == 1)
  {

    CGContextEOFillPath(c);
  }

  else
  {

    CGContextFillPath(c);
  }
}

double SVG::FillPath::boundingRect(SVG::FillPath *this, SVG::BoundingRectState *a2)
{
  BoundingBox = CGPathGetBoundingBox(*(this + 1));

  return SVG::BoundingRectState::deviceRect(a2, BoundingBox);
}

CGFloat SVG::FillPath::timeCost(CGPathRef *this, const CGRect *a2, const SVG::BoundingRectState *a3)
{
  info = 0;
  CGPathApply(this[1], &info, SVG::FillPath::countContours);
  v4 = info;
  v5 = CGRectGetWidth(*a2) * 0.000411595;
  return v5 * CGRectGetHeight(*a2) + v4 * 0.125484 + 12.6893;
}

void SVG::FillPath::dump(SVG::FillPath *this)
{
  __b[128] = *MEMORY[0x277D85DE8];
  v2 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "FillPath", 8);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(__b, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(__b);
  std::ostream::put();
  std::ostream::flush();
  v4 = *(this + 1);
  if (v4)
  {
    v5 = CFCopyDescription(v4);
    memset(__b, 170, 0x400uLL);
    CFStringGetCString(v5, __b, 1024, 0x8000100u);
    v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "    ", 4);
    v7 = strlen(__b);
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, __b, v7);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v10);
    std::ostream::put();
    std::ostream::flush();
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void SVG::DrawLinearGradient::~DrawLinearGradient(SVG::DrawLinearGradient *this)
{
  *this = &unk_286EB9888;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_286EB9888;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x25F894240);
}

uint64_t SVG::DrawLinearGradient::dump(SVG::DrawLinearGradient *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DrawLinearGradient", 18);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

double SVG::BoundingRectState::clipRect(SVG::BoundingRectState *this)
{
  v1 = *(this + 5) + *(this + 4) - 1;
  v2 = *(*(this + 1) + 8 * (v1 / 0x2E)) + 88 * (v1 % 0x2E);
  if (*(v2 + 80) == 1)
  {
    return *(v2 + 48);
  }

  else
  {
    return 0.0;
  }
}

void SVG::DrawRadialGradient::~DrawRadialGradient(SVG::DrawRadialGradient *this)
{
  *this = &unk_286EB9840;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_286EB9840;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x25F894240);
}

uint64_t SVG::DrawRadialGradient::dump(SVG::DrawRadialGradient *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "DrawRadialGradient", 18);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

void SVG::ClipToMask::~ClipToMask(SVG::ClipToMask *this)
{
  *this = &unk_286EB9E98;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

{
  *this = &unk_286EB9E98;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x25F894240);
}

void SVG::ClipToMask::execute(uint64_t a1, SVG *this)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  SVG::createParallelBitmapContext(this, *(a1 + 72), &v6);
  if (v6)
  {
    v4 = *(a1 + 40);
    *&mask.a = *(a1 + 24);
    *&mask.c = v4;
    *&mask.tx = *(a1 + 56);
    CGContextConcatCTM(v6, &mask);
    SVG::playback(v6, *(a1 + 8));
    CGContextFlush(v6);
    mask.a = -3.72066208e-103;
    SVG::convertToMask(v6, &mask);
    if (*&mask.a)
    {
      CGContextClipToMask(this, *(a1 + 72), *&mask.a);
    }

    else
    {
      CGContextAddRect(this, *MEMORY[0x277CBF3A0]);
      CGContextClip(this);
    }

    if (*&mask.a)
    {
      CFRelease(*&mask.a);
    }
  }

  else
  {
    CGContextAddRect(this, *MEMORY[0x277CBF3A0]);
    CGContextClip(this);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

double SVG::ClipToMask::boundingRect(SVG::ClipToMask *this, SVG::BoundingRectState *a2)
{
  v4.origin.x = SVG::BoundingRectState::deviceRect(a2, *(this + 72));
  SVG::BoundingRectState::clip(a2, v4);
  return *MEMORY[0x277CBF3A0];
}

CGFloat SVG::ClipToMask::timeCost(SVG::ClipToMask *this, const CGRect *a2, const SVG::BoundingRectState *a3)
{
  v8.origin.x = SVG::BoundingRectState::clipRectInPixels(a3);
  v8.origin.y = v3;
  v8.size.width = v4;
  v8.size.height = v5;
  return SVG::ClipToMask::staticTimeCost(&v8, v6);
}

uint64_t SVG::ClipToMask::dump(SVG::ClipToMask *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "ClipToMask", 10);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

void SVG::BoundingRectState::clip(SVG::BoundingRectState *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v7 = *(this + 5) + *(this + 4) - 1;
  v8 = *(*(this + 1) + 8 * (v7 / 0x2E)) + 88 * (v7 % 0x2E);
  if (*(v8 + 80))
  {
    v9 = (v8 + 48);
  }

  else
  {
    v9 = MEMORY[0x277CBF390];
  }

  v14 = CGRectIntersection(*v9, *&x);
  v10 = *(this + 5) + *(this + 4) - 1;
  v11 = *(*(this + 1) + 8 * (v10 / 0x2E)) + 88 * (v10 % 0x2E);
  *(v11 + 48) = v14.origin.x;
  v12 = v11 + 48;
  v13 = *(v12 + 32);
  *(v12 + 8) = v14.origin.y;
  *(v12 + 16) = v14.size.width;
  *(v12 + 24) = v14.size.height;
  if ((v13 & 1) == 0)
  {
    *(v12 + 32) = 1;
  }
}

double SVG::BoundingRectState::clipRectInPixels(SVG::BoundingRectState *this)
{
  v5.origin.x = SVG::BoundingRectState::clipRect(this);
  v2 = *(this + 4);
  *&v4.a = *(this + 3);
  *&v4.c = v2;
  *&v4.tx = *(this + 5);
  *&result = CGRectApplyAffineTransform(v5, &v4);
  return result;
}

__n128 std::__function::__func<SVG::GlyphRecordingCreateWithElement(SVG::Document const&,SVG::Element const&)::$_0,std::allocator<SVG::GlyphRecordingCreateWithElement(SVG::Document const&,SVG::Element const&)::$_0>,void ()(SVG::ApplyPresentationState const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EB93A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<SVG::GlyphRecordingCreateWithElement(SVG::Document const&,SVG::Element const&)::$_0,std::allocator<SVG::GlyphRecordingCreateWithElement(SVG::Document const&,SVG::Element const&)::$_0>,void ()(SVG::ApplyPresentationState const&)>::operator()(void *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  memset(v22, 170, 48);
  *&v22[48] = unk_25D1D5B18;
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(v2 + 64);
  *&v22[8] = v2 + 136;
  *&v22[16] = v3;
  memset(&v22[24], 0, 32);
  *&v22[56] = 1065353216;
  memset(v24, 0, sizeof(v24));
  v5 = v4[43];
  v29 = v4[42];
  *v22 = &unk_286EB9610;
  v23 = v1;
  v25 = v2 + 176;
  v26 = v2 + 216;
  v27 = v2 + 256;
  v28 = v2 + 296;
  v30 = v5;
  v6 = a1[4];
  if (v6 == v4)
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    if (v7 != v8)
    {
      v10 = 0;
      do
      {
        v11 = *v7;
        if (v10 >= v21)
        {
          v12 = (v10 - __p) >> 3;
          if ((v12 + 1) >> 61)
          {
            std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
          }

          v13 = (v21 - __p) >> 2;
          if (v13 <= v12 + 1)
          {
            v13 = v12 + 1;
          }

          if (v21 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::reference_wrapper<SVG::Element const>>>(&__p, v14);
          }

          v15 = (8 * v12);
          *v15 = v11;
          v10 = (8 * v12 + 8);
          v16 = v15 - (v20 - __p);
          memcpy(v16, __p, v20 - __p);
          v17 = __p;
          __p = v16;
          v20 = v10;
          v21 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v10 = v11;
          v10 += 8;
        }

        v20 = v10;
        ++v7;
      }

      while (v7 != v8);
      v3 = a1[3];
      v4 = *(a1[2] + 64);
    }

    SVG::Presentation::inherit((v4 + 4), v3, v3, v35);
    SVG::RecordBase::operator()(v22, &__p, v35);
    if (v45 != -1)
    {
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v32 + v45))(&v31, &v44);
    }

    v45 = -1;
    if (v43 != -1)
    {
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v32 + v43))(&v31, &v42);
    }

    v43 = -1;
    if (v41 != -1)
    {
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v32 + v41))(&v31, &v40);
    }

    v41 = -1;
    if (v39 != -1)
    {
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v32 + v39))(&v31, &v38);
    }

    v39 = -1;
    if (v37 != -1)
    {
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v34 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v32 + v37))(&v31, &v36);
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  else
  {
    SVG::RecordBase::operator()(v22, v6, v3);
  }

  *v22 = &unk_286EB9610;
  std::deque<SVG::ApplyPresentationState>::~deque[abi:nn200100](v24);
  *v22 = &unk_286EB9DC8;
  return std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(&v22[24]);
}

uint64_t std::__function::__func<SVG::GlyphRecordingCreateWithElement(SVG::Document const&,SVG::Element const&)::$_0,std::allocator<SVG::GlyphRecordingCreateWithElement(SVG::Document const&,SVG::Element const&)::$_0>,void ()(SVG::ApplyPresentationState const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::reference_wrapper<SVG::Element const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t std::deque<SVG::ApplyPresentationState>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<SVG::ApplyPresentationState *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<SVG::ApplyPresentationState *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(uint64_t a1)
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

BOOL std::type_info::operator==[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(SVG::ApplyPresentationState const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void SVG::AffineTransformApplier::~AffineTransformApplier(SVG::AffineTransformApplier *this)
{
  if ((*(this + 80) & 1) == 0 && *(this + 72) == 1)
  {
    v2 = *this;
    v3 = *(this + 24);
    v4 = *(this + 40);
    v5 = *(this + 56);
    v6 = &unk_286EB9490;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = 2;
    SVG::Recorder::append(v2, &v6);
    if (v10 != -1)
    {
      (off_286EBA5A8[v10])(&v11, &v6);
    }
  }

  SVG::StateSaverRestorer::~StateSaverRestorer((this + 8));
}

void SVG::StateSaverRestorer::~StateSaverRestorer(SVG::StateSaverRestorer *this)
{
  if (*(this + 8) == 1)
  {
    v1 = *this;
    v2[0] = &unk_286EB9AF8;
    v3 = 1;
    SVG::Recorder::append(v1, v2);
    if (v3 != -1)
    {
      (off_286EBA5A8[v3])(&v4, v2);
    }
  }
}

double SVG::RestoreState::boundingRect(SVG::RestoreState *this, SVG::BoundingRectState *a2)
{
  --*(a2 + 5);
  std::deque<SVG::BoundingRectState::State>::__maybe_remove_back_spare[abi:nn200100](a2, 1);
  return *MEMORY[0x277CBF3A0];
}

uint64_t SVG::RestoreState::dump(SVG::RestoreState *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "RestoreState", 12);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t std::deque<SVG::BoundingRectState::State>::__maybe_remove_back_spare[abi:nn200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 46 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2E)
  {
    a2 = 1;
  }

  if (v5 < 0x5C)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void std::__shared_ptr_pointer<SVG::GlyphRecording *,std::shared_ptr<SVG::GlyphRecording>::__shared_ptr_default_delete<SVG::GlyphRecording,SVG::GlyphRecording>,std::allocator<SVG::GlyphRecording>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

uint64_t std::__shared_ptr_pointer<SVG::GlyphRecording *,std::shared_ptr<SVG::GlyphRecording>::__shared_ptr_default_delete<SVG::GlyphRecording,SVG::GlyphRecording>,std::allocator<SVG::GlyphRecording>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 24);
    std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__destroy_vector::operator()[abi:nn200100](&v2);
    return MEMORY[0x25F894240](v1, 0x1020C402710001DLL);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SVG::GlyphRecording *,std::shared_ptr<SVG::GlyphRecording>::__shared_ptr_default_delete<SVG::GlyphRecording,SVG::GlyphRecording>,std::allocator<SVG::GlyphRecording>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 128;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        result = (off_286EBA5A8[v5])(&v6, v3 - 128);
      }

      *(v3 - 8) = -1;
      v3 -= 128;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::deque<SVG::BoundingRectState::State>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 23;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 46;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<SVG::ApplyPresentationState *>::~__split_buffer(a1);
}

uint64_t std::deque<SVG::Recorder::State>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v8 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 >> 5];
    v6 = *v5;
    v7 = *v5 + 128 * (v4 & 0x1F);
    v8 = a1 + 5;
    v9 = *(v2 + (((a1[5] + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((a1[5] + v4) & 0x1F);
    if (v7 != v9)
    {
      do
      {
        v10 = *(v7 + 28);
        if (v10 != -1)
        {
          v17[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
          v17[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
          v17[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
          (v17[v10])(&v16, v7 + 8);
          v6 = *v5;
        }

        *(v7 + 28) = -1;
        v7 += 128;
        if (v7 - v6 == 4096)
        {
          v11 = v5[1];
          ++v5;
          v6 = v11;
          v7 = v11;
        }
      }

      while (v7 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v8 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 16;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 32;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<SVG::ApplyPresentationState *>::~__split_buffer(a1);
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x25F894120](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F894130](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2]) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::reference_wrapper<SVG::Element>>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v8 == v14)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void SVG::unzipData(SVG *this@<X0>, void *a2@<X8>)
{
  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  if (Length < 10 || *BytePtr != 31 || BytePtr[1] != 139 || BytePtr[2] != 8)
  {
    goto LABEL_22;
  }

  if ((BytePtr[3] & 4) != 0)
  {
    if (Length > 0xB)
    {
      v7 = *(BytePtr + 5) + 12;
      if ((BytePtr[3] & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_22:
    *a2 = 0;
    return;
  }

  v7 = 10;
  if ((BytePtr[3] & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (Length > v7)
  {
    while (BytePtr[v7++])
    {
      if (Length == v7)
      {
LABEL_18:
        v7 = Length;
        goto LABEL_19;
      }
    }
  }

LABEL_14:
  if ((BytePtr[3] & 0x10) != 0 && Length > v7)
  {
    while (BytePtr[v7++])
    {
      if (Length == v7)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v10 = v7 + (BytePtr[3] & 2);
  v11 = Length - v10;
  if (Length <= v10)
  {
    goto LABEL_22;
  }

  v12 = (v11 * 1.5);
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  v19.state = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v19.dst_ptr = v14;
  *&v19.src_ptr = v14;
  if (compression_stream_init(&v19, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
  {
    v15 = 0;
  }

  else
  {
    v16 = 0;
    v19.dst_ptr = v13;
    v19.dst_size = (v11 * 1.5);
    v19.src_ptr = &BytePtr[v10];
    v19.src_size = v11;
    v17 = v13;
    while (1)
    {
      v18 = compression_stream_process(&v19, 1);
      v16 += v19.dst_ptr - v13;
      if (v18)
      {
        break;
      }

      v12 = (v12 * 1.5 + 1.0);
      v15 = reallocf(v17, v12);
      if (!v15)
      {
        goto LABEL_30;
      }

      v17 = v15;
      v13 = &v15[v16];
      v19.dst_ptr = &v15[v16];
      v19.dst_size = v12 - v16;
    }

    if (v18 == COMPRESSION_STATUS_END)
    {
      if (compression_stream_destroy(&v19) == COMPRESSION_STATUS_OK)
      {
        v15 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v17, v16, *MEMORY[0x277CBECF0]);
LABEL_30:
        v13 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      compression_stream_destroy(&v19);
    }

    v15 = 0;
    v13 = v17;
  }

LABEL_33:
  *a2 = v15;
  free(v13);
}

double SVG::Length::computeValue(SVG::Length *this, double a2)
{
  v7 = a2;
  v6 = &v7;
  v2 = *(this + 2);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Length::computeValue(double)::$_0,SVG::Length::computeValue(double)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Length::Value,SVG::Length::Percentage> const&>(v4, v5);
  }

  else
  {
    v8 = &v6;
    v9[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Length::computeValue(double)::$_0,SVG::Length::computeValue(double)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Length::Value,SVG::Length::Percentage> const&>;
    v9[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Length::computeValue(double)::$_0,SVG::Length::computeValue(double)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,SVG::Length::Value,SVG::Length::Percentage> const&>;
    (v9[v2])(&v8, this);
  }

  return result;
}

uint64_t SVG::PatternElement::PatternElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9A08;
  *(a1 + 640) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  std::string::basic_string[abi:nn200100]<0>(v38, "viewBox");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v6)
  {
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *v38 = v7;
    v39 = v7;
    *&v40 = 0xAAAAAAAAAAAAAAAALL;
    SVG::ViewBox::parseViewBox((v6 + 8), v38);
    if (v40 == 1)
    {
      v8 = *(a1 + 672);
      v9 = v39;
      *(a1 + 640) = *v38;
      *(a1 + 656) = v9;
      if ((v8 & 1) == 0)
      {
        *(a1 + 672) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "preserveAspectRatio");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v10)
  {
    v11 = SVG::PreserveAspectRatio::parsePreserveAspectRatio((v10 + 8));
    if (v12)
    {
      if ((*(a1 + 688) & 1) == 0)
      {
        *(a1 + 688) = 1;
      }

      *(a1 + 680) = v11;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "x");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v13 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v13)
  {
    v38[0] = -1;
    v38[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v13 + 8), v38);
    if (v39 == 1)
    {
      v14 = *(a1 + 712);
      *(a1 + 696) = *v38;
      if ((v14 & 1) == 0)
      {
        *(a1 + 712) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "y");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v15 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v15)
  {
    v38[0] = -1;
    v38[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v15 + 8), v38);
    if (v39 == 1)
    {
      v16 = *(a1 + 736);
      *(a1 + 720) = *v38;
      if ((v16 & 1) == 0)
      {
        *(a1 + 736) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "width");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v17 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v17)
  {
    v38[0] = -1;
    v38[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v17 + 8), v38);
    if (v39 == 1)
    {
      v18 = *(a1 + 760);
      *(a1 + 744) = *v38;
      if ((v18 & 1) == 0)
      {
        *(a1 + 760) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "height");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v19 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v19)
  {
    v38[0] = -1;
    v38[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v19 + 8), v38);
    if (v39 == 1)
    {
      v20 = *(a1 + 784);
      *(a1 + 768) = *v38;
      if ((v20 & 1) == 0)
      {
        *(a1 + 784) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "patternUnits");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v21 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v21)
  {
    v22 = SVG::parseUnits((v21 + 8));
    if ((v22 & 0x100000000) != 0)
    {
      *(a1 + 792) = v22;
      *(a1 + 796) = 1;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "patternContentUnits");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v23 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v23)
  {
    v24 = SVG::parseUnits((v23 + 8));
    if ((v24 & 0x100000000) != 0)
    {
      *(a1 + 800) = v24;
      *(a1 + 804) = 1;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "patternTransform");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v25 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v25)
  {
    *&v26 = -1;
    *(&v26 + 1) = -1;
    v39 = v26;
    v40 = v26;
    *v38 = v26;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    SVG::parseTransform((v25 + 8), v38);
    if (v41 == 1)
    {
      v27 = *(a1 + 856);
      v28 = v39;
      *(a1 + 808) = *v38;
      *(a1 + 824) = v28;
      *(a1 + 840) = v40;
      if ((v27 & 1) == 0)
      {
        *(a1 + 856) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v38, "href");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/1999/xlink");
  v29 = SVG::Element::findInAttributeMap(a3, v38, __p);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v29)
  {
    v30 = *MEMORY[0x277CBECE8];
    v31 = *(v29 + 87);
    if (v31 < 0)
    {
      v32 = v29[8];
      v31 = v29[9];
    }

    else
    {
      v32 = (v29 + 8);
    }

    v33 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v32, v31, 0x8000100u, 1u);
    if (v33)
    {
      v34 = v33;
      v35 = CFURLCreateWithString(v30, v33, 0);
      v36 = *(a1 + 864);
      if (v36)
      {
        CFRelease(v36);
      }

      *(a1 + 864) = v35;
      CFRelease(v34);
    }
  }

  return a1;
}