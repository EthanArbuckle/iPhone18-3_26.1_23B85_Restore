uint64_t SVG::PatternElement::appendChild(void *a1, const void **a2)
{
  v4 = *a2;
  v5 = **a2;
  {
    v6 = *a2;
    {
      return 0;
    }
  }

  return SVG::Element::appendChild(a1, a2);
}

void SVG::PatternElement::computePlaybackRect(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  SVG::PatternElement::specifiedState(a1, a2, v10);
  v12 = v11;
  v13 = *(&v10[3] + 8);
  v14 = v10[5];
  v15 = *(&v10[6] + 8);
  v16 = v10[8];
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  SVG::LengthRect::computeRect(&v12, v17);
}

void SVG::PatternElement::specifiedState(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X8>)
{
  a3[10] = xmmword_25D1D5EA0;
  a3[11] = unk_25D1D5EB0;
  a3[12] = xmmword_25D1D5EC0;
  a3[13] = unk_25D1D5ED0;
  a3[6] = xmmword_25D1D5E60;
  a3[7] = unk_25D1D5E70;
  a3[8] = xmmword_25D1D5E80;
  a3[9] = unk_25D1D5E90;
  a3[2] = xmmword_25D1D5E20;
  a3[3] = unk_25D1D5E30;
  a3[4] = xmmword_25D1D5E40;
  a3[5] = unk_25D1D5E50;
  *a3 = __const__ZNK3SVG14PatternElement17contentsTransformE6CGRectS1_RKNSt3__113unordered_mapIPK7__CFURLNS2_17reference_wrapperIKNS_7ElementEEENS2_4hashIS6_EENS2_8equal_toIS6_EENS2_9allocatorINS2_4pairIKS6_SA_EEEEEE_specifiedState;
  a3[1] = unk_25D1D5E10;
  *a3 = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v4 = a3 + 40;
  *(a3 + 56) = 0;
  v5 = a3 + 56;
  *(a3 + 48) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 104) = 0;
  v6 = a3 + 104;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v7 = a3 + 152;
  *(a3 + 144) = 0;
  *(a3 + 156) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  v8 = a3 + 168;
  *(a3 + 164) = 0;
  *(a3 + 216) = 0;
  memset(v24, 170, sizeof(v24));
  SVG::hrefChain<SVG::PatternElement>(a1, a2, v24);
  v9 = v24[0];
  v10 = v24[1];
  if (v24[1] == v24[0])
  {
    goto LABEL_31;
  }

  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
    v11 = v12;
    *v23 = v12[50];
    *&v23[16] = v12[51];
    *&v23[32] = v12[52];
    *&v23[48] = v12[53];
    *v20 = v12[46];
    *&v20[16] = v12[47];
    v21 = v12[48];
    v22 = v12[49];
    v17 = v12[42];
    *v18 = v12[43];
    *&v18[16] = v12[44];
    v19 = v12[45];
    v15 = v12[40];
    v16 = v12[41];
    if (v12[42] & 1) == 0 && (a3[2])
    {
      v15 = *a3;
      v16 = a3[1];
      LOBYTE(v17) = *(a3 + 32);
    }

    if ((v11[688] & 1) == 0 && *(a3 + 48) == 1)
    {
      *(&v17 + 1) = *v4;
      v18[0] = *(v4 + 8);
    }

    if ((v11[712] & 1) == 0 && *(a3 + 72) == 1)
    {
      *&v18[8] = *v5;
      v18[24] = *(v5 + 16);
    }

    if ((v11[736] & 1) == 0 && *(a3 + 96) == 1)
    {
      v19 = a3[5];
      v20[0] = *(a3 + 96);
    }

    if ((v11[760] & 1) == 0 && *(a3 + 120) == 1)
    {
      *&v20[8] = *v6;
      v20[24] = *(v6 + 16);
    }

    if ((v11[784] & 1) == 0 && *(a3 + 144) == 1)
    {
      v21 = a3[8];
      LOBYTE(v22) = *(a3 + 144);
    }

    if ((v11[796] & 1) == 0 && *(a3 + 156) == 1)
    {
      DWORD2(v22) = *v7;
      BYTE12(v22) = *(v7 + 4);
    }

    if ((v11[804] & 1) == 0 && *(a3 + 164) == 1)
    {
      *v23 = *(a3 + 40);
      v23[4] = *(a3 + 164);
    }

    if ((v11[856] & 1) == 0 && *(a3 + 216) == 1)
    {
      *&v23[8] = *v8;
      *&v23[24] = *(v8 + 16);
      *&v23[40] = *(v8 + 32);
      v23[56] = *(v8 + 48);
    }

    a3[10] = *v23;
    a3[11] = *&v23[16];
    a3[12] = *&v23[32];
    a3[13] = *&v23[48];
    a3[6] = *v20;
    a3[7] = *&v20[16];
    a3[8] = v21;
    a3[9] = v22;
    a3[2] = v17;
    a3[3] = *v18;
    a3[4] = *&v18[16];
    a3[5] = v19;
    *a3 = v15;
    a3[1] = v16;
  }

  while (v10 != v9);
  if ((a3[3] & 1) == 0)
  {
LABEL_31:
    *(a3 + 48) = 1;
    *(a3 + 5) = 5;
  }

  if ((*(a3 + 72) & 1) == 0)
  {
    *(a3 + 7) = 0;
    *(a3 + 16) = 0;
    *(a3 + 72) = 1;
  }

  if ((a3[6] & 1) == 0)
  {
    *(a3 + 10) = 0;
    *(a3 + 22) = 0;
    *(a3 + 96) = 1;
  }

  if ((*(a3 + 120) & 1) == 0)
  {
    *(a3 + 13) = 0;
    *(a3 + 28) = 0;
    *(a3 + 120) = 1;
  }

  if ((a3[9] & 1) == 0)
  {
    *(a3 + 16) = 0;
    *(a3 + 34) = 0;
    *(a3 + 144) = 1;
  }

  if ((*(a3 + 156) & 1) == 0)
  {
    *(a3 + 38) = 1;
    *(a3 + 156) = 1;
  }

  if ((*(a3 + 164) & 1) == 0)
  {
    *(a3 + 40) = 0;
    *(a3 + 164) = 1;
  }

  if ((*(a3 + 216) & 1) == 0)
  {
    v13 = MEMORY[0x277CBF2C0];
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    *v8 = *MEMORY[0x277CBF2C0];
    *(v8 + 16) = v14;
    *(v8 + 32) = *(v13 + 32);
    *(a3 + 216) = 1;
  }

  if (v9)
  {
    v24[1] = v9;
    operator delete(v9);
  }
}

void SVG::PatternElement::computeRecordingRect(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  SVG::PatternElement::specifiedState(a1, a2, v10);
  v12 = v11;
  v13 = *(&v10[3] + 8);
  v14 = v10[5];
  v15 = *(&v10[6] + 8);
  v16 = v10[8];
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  SVG::LengthRect::computePatternRecordingRect(&v12, v17);
}

CGAffineTransform *SVG::PatternElement::contentsTransform@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  v34 = xmmword_25D1D5EA0;
  v35 = unk_25D1D5EB0;
  v36 = xmmword_25D1D5EC0;
  v37 = unk_25D1D5ED0;
  v30 = xmmword_25D1D5E60;
  v31 = unk_25D1D5E70;
  v32 = xmmword_25D1D5E80;
  v33 = unk_25D1D5E90;
  v26 = xmmword_25D1D5E20;
  v27 = unk_25D1D5E30;
  v28 = xmmword_25D1D5E40;
  v29 = unk_25D1D5E50;
  v24 = __const__ZNK3SVG14PatternElement17contentsTransformE6CGRectS1_RKNSt3__113unordered_mapIPK7__CFURLNS2_17reference_wrapperIKNS_7ElementEEENS2_4hashIS6_EENS2_8equal_toIS6_EENS2_9allocatorINS2_4pairIKS6_SA_EEEEEE_specifiedState;
  v25 = unk_25D1D5E10;
  SVG::PatternElement::specifiedState(a1, a2, &v24);
  if (v26)
  {
    v20 = v24;
    v21 = v25;
    v22 = *(&v26 + 1);

    return SVG::computeViewBoxTransform(v22, a3, *&v20, *(&v20 + 1), *&v21, *(&v21 + 1), a8, a9, a10, a11);
  }

  else
  {
    result = SVG::unitTransform(v34, a3, a4, a5, a6, a7);
    *(a3 + 48) = 1;
  }

  return result;
}

uint64_t SVG::hrefChain<SVG::PatternElement>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *&v11[0] = a1;
  std::vector<std::reference_wrapper<SVG::PatternElement const>>::push_back[abi:nn200100](a3, v11);
  memset(v11, 0, sizeof(v11));
  v12 = 0xAAAAAAAA3F800000;
  i = a1;
  std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::__emplace_unique_key_args<SVG::PatternElement const*,SVG::PatternElement const*>(v11, &i);
  for (i = *(*(a3[1] - 8) + 864); i; i = *(*(a3[1] - 8) + 864))
  {
    v6 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(a2, &i);
    if (!v6)
    {
      break;
    }

    if (!v9)
    {
      break;
    }

    if (std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::find<SVG::PatternElement const*>(v11, &v9))
    {
      break;
    }

    std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::__emplace_unique_key_args<SVG::PatternElement const*,SVG::PatternElement const*>(v11, &v9);
    v8 = v9;
    std::vector<std::reference_wrapper<SVG::PatternElement const>>::push_back[abi:nn200100](a3, &v8);
  }

  return std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(v11);
}

void SVG::PatternElement::~PatternElement(SVG::PatternElement *this)
{
  *this = &unk_286EB9A08;
  v2 = *(this + 108);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 128);
  if (v3 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v3))(&v8, this + 480);
  }

  *(this + 128) = -1;
  v4 = *(this + 116);
  if (v4 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v4))(&v8, this + 416);
  }

  *(this + 116) = -1;
  v5 = *(this + 82);
  if (v5 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v5))(&v8, this + 312);
  }

  *(this + 82) = -1;
  v6 = *(this + 66);
  if (v6 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v6))(&v8, this + 216);
  }

  *(this + 66) = -1;
  v7 = *(this + 36);
  if (v7 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v7))(&v8, this + 128);
  }

  *(this + 36) = -1;

  SVG::Element::~Element(this);
}

{
  *this = &unk_286EB9A08;
  v2 = *(this + 108);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 128);
  if (v3 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v3))(&v8, this + 480);
  }

  *(this + 128) = -1;
  v4 = *(this + 116);
  if (v4 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v4))(&v8, this + 416);
  }

  *(this + 116) = -1;
  v5 = *(this + 82);
  if (v5 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v5))(&v8, this + 312);
  }

  *(this + 82) = -1;
  v6 = *(this + 66);
  if (v6 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v9 + v6))(&v8, this + 216);
  }

  *(this + 66) = -1;
  v7 = *(this + 36);
  if (v7 != -1)
  {
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v11 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v9 + v7))(&v8, this + 128);
  }

  *(this + 36) = -1;
  SVG::Element::~Element(this);
  MEMORY[0x25F894240]();
}

void std::vector<std::reference_wrapper<SVG::PatternElement const>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::reference_wrapper<SVG::Element const>>>(a1, v10);
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

void *std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::__emplace_unique_key_args<SVG::PatternElement const*,SVG::PatternElement const*>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::__rehash<true>(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<SVG::PatternElement const*,std::hash<SVG::PatternElement const*>,std::equal_to<SVG::PatternElement const*>,std::allocator<SVG::PatternElement const*>>::find<SVG::PatternElement const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t SVG::Recorder::updateCost(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 392) == 1)
  {
    v3 = result;
    if (*(result + 408) == 1)
    {
      v13 = a3;
      v14 = result;
      v6 = *(a2 + 120);
      if (v6 != -1)
      {
        v15 = &v13;
        (off_286EBA618[v6])(&v15, a2);
        if ((*(v3 + 392) & 1) == 0)
        {
          goto LABEL_13;
        }

        v8 = v7 + *(v3 + 384);
        *(v3 + 384) = v8;
        if (v8 > 200000.0)
        {
          *(v3 + 392) = 0;
        }

        v13 = a3;
        v14 = v3;
        v9 = *(a2 + 120);
        if (v9 != -1)
        {
          v15 = &v13;
          result = (off_286EBA688[v9])(&v15, a2);
          if (*(v3 + 408))
          {
            v11 = v10 + *(v3 + 400);
            *(v3 + 400) = v11;
            if (v11 > 134217728.0)
            {
              *(v3 + 408) = 0;
            }

            return result;
          }

LABEL_13:
          v12 = std::__throw_bad_optional_access[abi:nn200100]();
          return SVG::Recorder::recordGetCTM(v12);
        }
      }

      std::__throw_bad_variant_access[abi:nn200100]();
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t SVG::Recorder::recordGetCTM(SVG::Recorder *this)
{
  v5 = &unk_286EB9678;
  v3[0] = &unk_286EB9678;
  v4 = 13;
  SVG::Recorder::updateCost(this, v3, MEMORY[0x277CBF3A0]);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v4])(&v6, v3);
  }

  v3[0] = &unk_286EB9678;
  v4 = 13;
  SVG::Recording::append(this + 176, v3);
  if (v4 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v4])(&v6, v3);
  }

  result = *(this + 52);
  *(this + 52) = result + 1;
  return result;
}

uint64_t SVG::Recording::append(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__emplace_back_slow_path<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 120) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(v3, a2);
    result = v3 + 128;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t SVG::Recorder::setInitialState(SVG::Recorder *this)
{
  std::deque<SVG::Recorder::State>::push_back(this, this + 48);
  v3[0] = 0;
  v4 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(v3, this + 56);
  v5 = &unk_286EB9598;
  v6[0] = 0;
  v7 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(v6, v3);
  v8 = 9;
  result = SVG::Recording::append(this + 176, &v5);
  if (v8 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v8])(v10, &v5);
  }

  v8 = -1;
  if (v4 != -1)
  {
    v10[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v10[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v10[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    return (v10[v4])(&v9, v3);
  }

  return result;
}

uint64_t SVG::Recorder::Recorder(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int a4, double a5)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = *a2;
  *(a1 + 56) = 0;
  *(a1 + 160) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(a1 + 56, (a2 + 8));
  *(a1 + 168) = a2[120];
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a3;
  CGAffineTransformMakeScale((a1 + 208), a5 / a4, a5 / a4);
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  v10 = *(a1 + 208);
  v11 = *(a1 + 224);
  *(a1 + 288) = 0u;
  *(a1 + 304) = v10;
  v12 = *(a1 + 240);
  *(a1 + 320) = v11;
  *(a1 + 336) = v12;
  v16 = __const_BoundingRectState_initialState;
  v17 = unk_25D1D6198;
  v18 = xmmword_25D1D61A8;
  v19 = unk_25D1D61B8;
  v20 = xmmword_25D1D61C8;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *(MEMORY[0x277CBF2C0] + 32);
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v18 = v13;
  v16 = *MEMORY[0x277CBF2C0];
  LOBYTE(v19) = 0;
  LOBYTE(v21) = 0;
  std::deque<SVG::BoundingRectState::State>::emplace_back<SVG::BoundingRectState::State>((a1 + 256), &v16);
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  *(a1 + 352) = *MEMORY[0x277CBF3A0];
  *(a1 + 368) = v14;
  *(a1 + 384) = 0;
  *(a1 + 392) = 1;
  *(a1 + 400) = 0;
  *(a1 + 408) = 1;
  *(a1 + 416) = 0;
  SVG::Recorder::setInitialState(a1);
  return a1;
}

uint64_t SVG::Recorder::append(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v2 = *(a2 + 120);
  if (v2 == -1)
  {
    goto LABEL_7;
  }

  *&v19.a = &v27;
  v5 = (off_286EBA7D8[v2])(&v19);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v29.origin.x = v5;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  *(a1 + 352) = CGRectUnion(*(a1 + 352), v29);
  v12 = *(a1 + 224);
  *&v19.a = *(a1 + 208);
  *&v19.c = v12;
  *&v19.tx = *(a1 + 240);
  v13 = v5;
  *&v12 = v7;
  v14 = v9;
  v15 = v11;
  v28 = CGRectApplyAffineTransform(*(&v12 - 8), &v19);
  v19.a = v28.origin.x;
  v19.b = v28.origin.y;
  v19.c = v28.size.width;
  v19.d = v28.size.height;
  result = SVG::Recorder::updateCost(a1, a2, &v19);
  if (*(a1 + 392) == 1 && *(a1 + 408) == 1)
  {
    *&v19.a = a1;
    *&v19.b = a1;
    *&v19.c = a1;
    *&v19.d = a1;
    *&v19.tx = a1;
    *&v19.ty = a1;
    v20 = a1;
    v21 = a1;
    v22 = a1;
    v23 = a1;
    v24 = a1;
    v25 = a1;
    v26 = a1;
    v17 = *(a2 + 120);
    if (v17 != -1)
    {
      v27 = &v19;
      return (off_286EBA848[v17])(&v27, a2);
    }

LABEL_7:
    v18 = std::__throw_bad_variant_access[abi:nn200100]();
    return SVG::Recorder::takeRecording(v18);
  }

  return result;
}

void SVG::Recorder::takeRecording(SVG::Recorder *this@<X0>, void *a2@<X8>)
{
  SVG::Recorder::setInitialState(this);
  v4 = *(this + 22);
  v5 = *(this + 23);
  v8 = v4;
  v9 = v5;
  v6 = *(this + 24);
  v10 = v6;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  if (*(this + 392) == 1 && (*(this + 408) & 1) != 0)
  {
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  else
  {
    memcpy(v7, &unk_25D1D5F00, sizeof(v7));
    SVG::Recorder::Recorder(v7, this + 48, *(this + 25), 1u, 1.0);
    SVG::Recorder::takeRecording(v7);
    std::deque<SVG::BoundingRectState::State>::~deque[abi:nn200100](&v7[32]);
    v12[0] = &v7[22];
    std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__destroy_vector::operator()[abi:nn200100](v12);
    if (LODWORD(v7[20]) != -1)
    {
      v12[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      v12[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      v12[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      (v12[LODWORD(v7[20])])(&v11, &v7[7]);
    }

    LODWORD(v7[20]) = -1;
    std::deque<SVG::Recorder::State>::~deque[abi:nn200100](v7);
  }

  v7[0] = &v8;
  std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__destroy_vector::operator()[abi:nn200100](v7);
}

_DWORD *SVG::Recorder::getInitialState@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = xmmword_25D1D60E8;
  *(a2 + 80) = unk_25D1D60F8;
  *(a2 + 96) = xmmword_25D1D6108;
  *(a2 + 112) = unk_25D1D6118;
  *a2 = __const__ZN3SVG8Recorder15getInitialStateERKNS_12PresentationE_state;
  *(a2 + 16) = unk_25D1D60B8;
  *(a2 + 32) = xmmword_25D1D60C8;
  *(a2 + 48) = unk_25D1D60D8;
  *(a2 + 8) = 0;
  *(a2 + 112) = 0;
  if (result[23] == 2 && (*a2 = result[22] == 1, result[57] == 2))
  {
    *(a2 + 120) = result[56] == 1;
  }

  else
  {
    v2 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Recorder::updateCost(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&,CGRect const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(v2, v3);
  }

  return result;
}

void SVG::GetCTM::execute(int a1, CGContextRef c, void *a3)
{
  CGContextGetCTM(&t1, c);
  CGContextGetBaseCTM();
  CGAffineTransformInvert(&v21, &v23);
  CGAffineTransformConcat(&v23, &t1, &v21);
  v4 = a3[2];
  v5 = a3[3];
  if (v4 >= v5)
  {
    v9 = a3[1];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v9) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v9) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CGAffineTransform>>((a3 + 1), v13);
    }

    v14 = 48 * v10;
    v15 = *&v23.a;
    v16 = *&v23.tx;
    *(v14 + 16) = *&v23.c;
    *(v14 + 32) = v16;
    *v14 = v15;
    v8 = 48 * v10 + 48;
    v17 = a3[1];
    v18 = a3[2] - v17;
    v19 = 48 * v10 - v18;
    memcpy((v14 - v18), v17, v18);
    v20 = a3[1];
    a3[1] = v19;
    a3[2] = v8;
    a3[3] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *&v23.a;
    v7 = *&v23.tx;
    v4[1] = *&v23.c;
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  a3[2] = v8;
}

uint64_t SVG::GetCTM::dump(SVG::GetCTM *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "GetCTM", 6);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CGAffineTransform>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__emplace_back_slow_path<std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>(unsigned int **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v7 = v2 << 7;
  *v7 = 0;
  *(v7 + 120) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(v2 << 7, a2);
  v8 = (v2 << 7) + 128;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = 0;
      *(v13 + 120) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(v13, v12);
      v12 += 128;
      v13 += 128;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[30];
      if (v14 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v14])(&v16, v9);
      }

      v9[30] = -1;
      v9 += 32;
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

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 120);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 120) = -1;
  v5 = *(a2 + 120);
  if (v5 != -1)
  {
    v6 = v3;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_6__ctorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEEE19__generic_constructB8nn200100INS0_18__move_constructorISL_LNS0_6_TraitE1EEEEEvRSM_OT_EUlST_E_JSQ_EEEDcmST_DpOT0____fdiagonal[v5])(&v6, a2);
    *(v3 + 120) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB9490;
  result = *(a2 + 8);
  v4 = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 24) = v4;
  *(v2 + 8) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  *v2 = &unk_286EB9448;
  *(v2 + 8) = v3;
  result = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 16) = result;
  *(v2 + 32) = v5;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  *v2 = &unk_286EB9550;
  *(v2 + 8) = v3;
  *(v2 + 16) = *(a2 + 16);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  *v2 = &unk_286EB9888;
  *(v2 + 8) = v3;
  result = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = result;
  *(v2 + 32) = v5;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  *v2 = &unk_286EB9840;
  *(v2 + 8) = v3;
  result = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(v2 + 64) = *(a2 + 64);
  *(v2 + 32) = v5;
  *(v2 + 48) = v6;
  *(v2 + 16) = result;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB9CC0;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB9E98;
  *(v2 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  *(v2 + 40) = *(a2 + 40);
  *(v2 + 88) = v5;
  *(v2 + 72) = v4;
  *(v2 + 56) = v3;
  result = *(a2 + 24);
  *(v2 + 24) = result;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB9598;
  *(v2 + 112) = -1;
  *(v2 + 8) = 0;
  return std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(v2 + 8, a2 + 8);
}

double std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB94D8;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 104);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 104) = -1;
  v5 = *(a2 + 104);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> &&>;
    v8 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> &&>;
    v9 = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> &&>;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 104) = v5;
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 64);
  v3 = *(a2 + 80);
  v5 = *(a2 + 48);
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 64) = v4;
  *(v2 + 80) = v3;
  *(v2 + 48) = v5;
  result = *(a2 + 16);
  v7 = *(a2 + 32);
  *(v2 + 16) = result;
  *(v2 + 32) = v7;
  return result;
}

CGFloat SVG::BeginTransparencyLayer::timeCost(SVG::BeginTransparencyLayer *this, const CGRect *a2, const SVG::BoundingRectState *a3)
{
  v9.origin.x = SVG::BoundingRectState::clipRectInPixels(a3);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v7 = CGRectGetWidth(v9) * 0.0025;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return v7 * CGRectGetHeight(v10);
}

CGFloat SVG::BeginTransparencyLayer::memoryCost(SVG::BeginTransparencyLayer *this, const CGRect *a2, const SVG::BoundingRectState *a3)
{
  v9.origin.x = SVG::BoundingRectState::clipRectInPixels(a3);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v7 = CGRectGetWidth(v9) * 4.0;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return v7 * CGRectGetHeight(v10);
}

uint64_t SVG::BeginTransparencyLayer::dump(SVG::BeginTransparencyLayer *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "BeginTransparencyLayer", 22);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t SVG::EndTransparencyLayer::dump(SVG::EndTransparencyLayer *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "EndTransparencyLayer", 20);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t SVG::SetAlpha::dump(SVG::SetAlpha *this)
{
  v2 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "SetAlpha ", 9);
  v3 = MEMORY[0x25F894150](v2, *(this + 1));
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 104);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 104) = -1;
  v5 = *(a2 + 104);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSC_SE_SF_EEEEEEDcSP_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSC_SE_SF_EEEEEEDcSP_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSC_SE_SF_EEEEEEDcSP_DpT0_;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 104) = v5;
  }

  return result;
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSC_SE_SF_EEEEEEDcSP_DpT0_(CFTypeRef **a1, CFTypeRef *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJSC_SE_SF_EEEEEEDcSP_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  *v2 = *a2;
  *(v2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 32);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 32) = v4;
  result = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  *(v2 + 96) = *(a2 + 96);
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 48) = result;
  return result;
}

uint64_t std::deque<SVG::BoundingRectState::State>::emplace_back<SVG::BoundingRectState::State>(void *a1, uint64_t a2)
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
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  *(v8 + 48) = v11;
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0x2E));
  v18 = *v17 + 88 * (v15 % 0x2E);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4048;
  }

  return v18 - 88;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(void ***a1)
{
  v1 = **a1;
  v4[0] = &unk_286EB9400;
  v5 = 0;
  SVG::Recording::append((v1 + 22), v4);
  if (v5 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v5])(&v6, v4);
  }

  v2 = v1[5] + v1[4] - 1;
  return std::deque<SVG::Recorder::State>::push_back(v1, (*(v1[1] + ((v2 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v2 & 0x1F) << 7)));
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v9[0] = &unk_286EB9AF8;
  v10 = 1;
  SVG::Recording::append((v1 + 22), v9);
  if (v10 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v10])(&v11, v9);
  }

  v2 = v1[5] - 1;
  v3 = v2 + v1[4];
  v4 = v1[1];
  v5 = *(v4 + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7);
  v6 = *(v5 + 112);
  if (v6 != -1)
  {
    v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v9[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v9[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v9[v6])(&v11, v5 + 8);
    v2 = v1[5] - 1;
    v4 = v1[1];
    v3 = v1[4] + v2;
  }

  v7 = v1[2];
  *(v5 + 112) = -1;
  v1[5] = v2;
  if (v7 == v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4 * (v7 - v4) - 1;
  }

  if (v8 - v3 >= 0x40)
  {
    operator delete(*(v7 - 8));
    v1[2] -= 8;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v5 = &unk_286EB9490;
  v3 = *(a2 + 24);
  v6 = *(a2 + 8);
  v7 = v3;
  v8 = *(a2 + 40);
  v9 = 2;
  result = SVG::Recording::append(v2 + 176, &v5);
  if (v9 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v9])(&v10, &v5);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 24);
  v4 = *(a2 + 8);
  v7[0] = &unk_286EB9448;
  v7[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 32);
  v8 = *(a2 + 16);
  v9 = v5;
  v10 = 3;
  result = SVG::Recording::append(v3 + 176, v7);
  if (v10 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v10])(&v11, v7);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  v6[0] = &unk_286EB9550;
  v6[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v7 = *(a2 + 16);
  v8 = 4;
  result = SVG::Recording::append(v3 + 176, v6);
  if (v8 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v8])(&v9, v6);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 40);
  v4 = *(a2 + 8);
  v7[0] = &unk_286EB9888;
  v7[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 32);
  v8 = *(a2 + 16);
  v9 = v5;
  v10 = *(a2 + 48);
  v11 = 5;
  result = SVG::Recording::append(v3 + 176, v7);
  if (v11 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v11])(&v12, v7);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 48);
  v4 = *(a2 + 8);
  v7[0] = &unk_286EB9840;
  v7[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 32);
  v8 = *(a2 + 16);
  v9 = v5;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = 6;
  result = SVG::Recording::append(v3 + 176, v7);
  if (v12 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v12])(&v13, v7);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 56);
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v6[0] = &unk_286EB9CC0;
  v6[1] = v4;
  v6[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 7;
  result = SVG::Recording::append(v2 + 176, v6);
  if (v7 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v7])(&v8, v6);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 64);
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v8[0] = &unk_286EB9E98;
  v8[1] = v4;
  v8[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  v10 = *(a2 + 40);
  v11 = v5;
  v6 = *(a2 + 88);
  v12 = *(a2 + 72);
  v13 = v6;
  v9 = *(a2 + 24);
  v14 = 8;
  result = SVG::Recording::append(v2 + 176, v8);
  if (v14 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v14])(&v15, v8);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 72);
  v4 = v3[5] + v3[4] - 1;
  v5 = *(v3[1] + ((v4 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v4 & 0x1F) << 7);
  LOBYTE(v15) = 0;
  v17 = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(&v15, a2 + 8);
  v7 = *(v5 + 112);
  v8 = v17;
  v9 = v17 != v7;
  if (v7 != -1 && v17 == v7)
  {
    v21 = &v20;
    v22 = std::__variant_detail::__visitation::__base::__dispatcher<0ul,0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const>;
    v23 = std::__variant_detail::__visitation::__base::__dispatcher<1ul,1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const>;
    v24 = std::__variant_detail::__visitation::__base::__dispatcher<2ul,2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const>;
    result = (*(&v22 + v7))(&v21, v5 + 8, &v15);
    v9 = result;
    v8 = v17;
  }

  if (v8 != -1)
  {
    v22 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v23 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (*(&v22 + v8))(&v21, &v15);
  }

  if (v9)
  {
    v15 = &unk_286EB9598;
    v16[0] = 0;
    v18 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(v16, a2 + 8);
    v19 = 9;
    SVG::Recording::append((v3 + 22), &v15);
    if (v19 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v19])(&v22, &v15);
    }

    LOBYTE(v15) = 0;
    v17 = -1;
    result = std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(&v15, a2 + 8);
    v11 = v3[5] + v3[4] - 1;
    v12 = *(v3[1] + ((v11 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v11 & 0x1F) << 7);
    v13 = v12 + 8;
    v14 = *(v12 + 112);
    if (v14 == -1)
    {
      if (v17 == -1)
      {
        return result;
      }
    }

    else if (v17 == -1)
    {
      v22 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      v23 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      result = (*(&v22 + v14))(&v21, v13);
      *(v13 + 104) = -1;
      goto LABEL_17;
    }

    v21 = (v12 + 8);
    v22 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJSC_SE_SF_EEEOSU_EEEDcSM_DpT0_;
    v23 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJSC_SE_SF_EEEOSU_EEEDcSM_DpT0_;
    v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJSC_SE_SF_EEEOSU_EEEDcSM_DpT0_;
    result = (*(&v22 + v17))(&v21, v13, &v15);
LABEL_17:
    if (v17 != -1)
    {
      v22 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      v23 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
      return (*(&v22 + v17))(&v21, &v15);
    }
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v3[0] = &unk_286EB9730;
  v4 = 10;
  result = SVG::Recording::append(v1 + 176, v3);
  if (v4 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v4])(&v5, v3);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1)
{
  v1 = *(*a1 + 88);
  v3[0] = &unk_286EB97F8;
  v4 = 11;
  result = SVG::Recording::append(v1 + 176, v3);
  if (v4 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v4])(&v5, v3);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_1,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_2,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_3,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_4,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_5,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_6,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_7,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_8,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_9,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_10,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_11,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_12,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_13,SVG::Recorder::append(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::$_14>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 96);
  v4[0] = &unk_286EB94D8;
  v4[1] = *(a2 + 8);
  v5 = 12;
  result = SVG::Recording::append(v2 + 176, v4);
  if (v5 != -1)
  {
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN3SVG9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSN_EEEDcOSO_DpOT0____fmatrix[v5])(&v6, v4);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul,0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = (v3 != 0) ^ (v4 == 0);
  }

  else
  {
    v6 = CFEqual(v3, v4) != 0;
  }

  return v6 ^ 1u;
}

BOOL std::__variant_detail::__visitation::__base::__dispatcher<2ul,2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::not_equal_to<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,std::__variant_detail::_Trait::SetFill::CurrentColor,SVG::CF<CGColor *>::PatternData> const>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 1;
  }

  v12 = v3;
  v13 = v4;
  if (!CGRectEqualToRect(*(a2 + 16), *(a3 + 16)) || *(a2 + 48) != *(a3 + 48))
  {
    return 1;
  }

  v8 = *(a2 + 72);
  *&t1.a = *(a2 + 56);
  *&t1.c = v8;
  *&t1.tx = *(a2 + 88);
  v9 = *(a3 + 72);
  *&v10.a = *(a3 + 56);
  *&v10.c = v9;
  *&v10.tx = *(a3 + 88);
  return !CGAffineTransformEqualToTransform(&t1, &v10);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJSC_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v10[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v10[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v10[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v10[v5])(&v9, v4);
LABEL_7:
    v8 = *a3;
    *a3 = 0;
    *v4 = v8;
    *(v4 + 104) = 0;
    return;
  }

  if (*a2)
  {
    CFRelease(*a2);
  }

  v7 = *a3;
  *a3 = 0;
  *a2 = v7;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJSC_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 104);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      *a2 = *a3;
      return result;
    }

    v7[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v7[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v7[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    result = (v7[v5])(&v6, v4);
  }

  *v4 = *a3;
  v4[26] = 1;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISG_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSK_1EJSC_SE_SF_EEEOSU_EEEDcSM_DpT0_(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 104);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    v17[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v17[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v17[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v17[v5])(&v16, v4);
LABEL_7:
    *(v4 + 104) = -1;
    *v4 = *a3;
    *a3 = 0;
    *(a3 + 1) = 0;
    v13 = a3[2];
    *(v4 + 16) = a3[1];
    *(v4 + 32) = v13;
    result = a3[3];
    v14 = a3[4];
    v15 = a3[5];
    *(v4 + 96) = *(a3 + 12);
    *(v4 + 64) = v14;
    *(v4 + 80) = v15;
    *(v4 + 48) = result;
    *(v4 + 104) = 2;
    return result;
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(a2 + 8);
  *a2 = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v9;
  result = a3[3];
  v11 = a3[4];
  v12 = a3[5];
  *(a2 + 96) = *(a3 + 12);
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 48) = result;
  return result;
}

uint64_t std::deque<SVG::Recorder::State>::push_back(void *a1, _BYTE *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x20)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v12);
    }

    a1[4] = v7 - 32;
    v15 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<SVG::Recorder::State *>::emplace_back<SVG::Recorder::State *&>(a1, &v15);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = *&v4[(v8 >> 2) & 0x3FFFFFFFFFFFFFF8] + ((v8 & 0x1F) << 7);
  *v13 = *a2;
  *(v13 + 8) = 0;
  *(v13 + 112) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData>,(std::__variant_detail::_Trait)1> const&>(v13 + 8, (a2 + 8));
  *(v13 + 120) = a2[120];
  ++a1[5];
  return result;
}

void *std::__split_buffer<SVG::Recorder::State *>::emplace_back<SVG::Recorder::State *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void SVG::createParallelBitmapContext(SVG *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGContext **a3@<X8>)
{
  if (a2.size.width == 0.0 || (height = a2.size.height, a2.size.height == 0.0))
  {
    *a3 = 0;
  }

  else
  {
    width = a2.size.width;
    y = a2.origin.y;
    x = a2.origin.x;
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *&v32.c = v9;
    *&v32.tx = v9;
    *&v32.a = v9;
    CGContextGetCTM(&v32, this);
    v30 = v32.ty + y * v32.d + v32.b * x;
    v31 = v32.tx + y * v32.c + v32.a * x;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MaxX = CGRectGetMaxX(v33);
    v29 = v32.tx + y * v32.c + v32.a * MaxX;
    v11 = v32.ty + y * v32.d + v32.b * MaxX;
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    MaxY = CGRectGetMaxY(v34);
    v13 = v32.tx + MaxY * v32.c + v32.a * x;
    v14 = v32.ty + MaxY * v32.d + v32.b * x;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v15 = CGRectGetMaxX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v16 = CGRectGetMaxY(v36);
    v17 = v32.tx + v16 * v32.c + v32.a * v15;
    v18 = v32.ty + v16 * v32.d + v32.b * v15;
    v19 = sqrt((v11 - v30) * (v11 - v30) + (v29 - v31) * (v29 - v31));
    v20 = sqrt((v18 - v14) * (v18 - v14) + (v17 - v13) * (v17 - v13));
    v21 = sqrt((v14 - v30) * (v14 - v30) + (v13 - v31) * (v13 - v31));
    v22 = sqrt((v18 - v11) * (v18 - v11) + (v17 - v29) * (v17 - v29));
    if (v19 >= v20)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    v24 = vcvtpd_u64_f64(v23);
    if (v21 >= v22)
    {
      v22 = v21;
    }

    v25 = vcvtpd_u64_f64(v22);
    v26 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (4 * v24 * v25 <= 0x200000)
    {
      v28 = CGBitmapContextCreate(0, v24, v25, 8uLL, 4 * v24, v26, 2u);
      v27 = v28;
      if (v28)
      {
        CGContextScaleCTM(v28, v24 / width, v25 / height);
        CGContextTranslateCTM(v27, -x, -y);
      }
    }

    else
    {
      v27 = 0;
    }

    *a3 = v27;
    if (v26)
    {
      CFRelease(v26);
    }
  }
}

void SVG::parseTransform(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v5;
  v19 = v5;
  do
  {
    v6 = v4;
    v4 = SVG::consumeWsp(a1, v4);
  }

  while ((v7 & 1) != 0);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *&v20.c = v8;
  *&v20.tx = v8;
  *&v20.a = v8;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeTransform(a1, v6, &v20);
  v9 = v22;
  if (v22)
  {
    operator new();
  }

  do
  {
    v10 = v6;
    v6 = SVG::consumeWsp(a1, v6);
  }

  while ((v11 & 1) != 0);
  v12 = *(a1 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 8);
  }

  if (v10 == v12)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v19 = 0;
    if (v9)
    {
      std::vector<CGAffineTransform>::__vallocate[abi:nn200100](__p, 0xAAAAAAAAAAAAAAAELL);
    }

    BYTE8(v19) = 1;
    v13 = *(MEMORY[0x277CBF2C0] + 8);
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    v15 = *(MEMORY[0x277CBF2C0] + 24);
    v16 = *(MEMORY[0x277CBF2C0] + 32);
    v17 = *(MEMORY[0x277CBF2C0] + 40);
    *a2 = *MEMORY[0x277CBF2C0];
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
    *(a2 + 48) = 1;
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    BYTE8(v19) = 0;
    if (v9)
    {
      operator delete(0xAAAAAAAAAAAAAA00);
    }

    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

CGAffineTransform *SVG::invert@<X0>(CGAffineTransform *this@<X0>, uint64_t a2@<X8>)
{
  if (fabs(this->a * this->d - this->b * this->c) <= 2.22044605e-16)
  {
    v5 = 0;
    *a2 = 0;
  }

  else
  {
    v4 = *&this->c;
    *&v6.a = *&this->a;
    *&v6.c = v4;
    *&v6.tx = *&this->tx;
    this = CGAffineTransformInvert(a2, &v6);
    v5 = 1;
  }

  *(a2 + 48) = v5;
  return this;
}

void SVG::consumeTransform(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *(a3 + 32) = v6;
  v7 = (a3 + 32);
  *(a3 + 48) = 0xAAAAAAAAAAAAAAAALL;
  v8 = (a3 + 48);
  *a3 = v6;
  *(a3 + 16) = v6;
  *(a3 + 56) = 0xAAAAAAAAAAAAAAAALL;
  v9 = SVG::consumeString<7ul>("matrix", a1, a2);
  if (v10)
  {
    do
    {
      v11 = v9;
      v9 = SVG::consumeWsp(a1, v9);
    }

    while ((v12 & 1) != 0);
    *&v13 = COERCE_DOUBLE(SVG::consumeString<2ul>("(", a1, v11));
    if (v14)
    {
      do
      {
        b = *&v13;
        *&v13 = COERCE_DOUBLE(SVG::consumeWsp(a1, v13));
      }

      while ((v16 & 1) != 0);
      v17 = 0;
      *&v18 = -1;
      *(&v18 + 1) = -1;
      *&v125.c = v18;
      *&v125.tx = v18;
      *&v125.a = v18;
      while (1)
      {
        if (v17)
        {
          *&v19 = COERCE_DOUBLE(SVG::consumeCommaWsp(a1, *&b));
          if (v20)
          {
            b = *&v19;
          }
        }

        v124.a = NAN;
        v124.b = -3.72066208e-103;
        v124.c = -3.72066208e-103;
        SVG::consumePathNumber(a1, *&b, &v124);
        if (LOBYTE(v124.c) != 1)
        {
          break;
        }

        *(&v125.a + v17) = v124.a;
        b = v124.b;
        v17 += 8;
        if (v17 == 48)
        {
          v118 = *&v125.c;
          v119 = *&v125.a;
          tx = v125.tx;
          ty = v125.ty;
          do
          {
            v23 = *&b;
            b = COERCE_DOUBLE(SVG::consumeWsp(a1, *&b));
          }

          while ((v24 & 1) != 0);
          v25 = SVG::consumeString<2ul>(")", a1, v23);
          *a3 = v119;
          *(a3 + 16) = v118;
          *(a3 + 32) = tx;
          *(a3 + 40) = ty;
          *(a3 + 48) = v25;
          goto LABEL_75;
        }
      }
    }
  }

  *&v26 = -1;
  *(&v26 + 1) = -1;
  *(a3 + 16) = v26;
  *(a3 + 32) = v26;
  *a3 = v26;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v27 = SVG::consumeString<10ul>("translate", a1, a2);
  if (v28)
  {
    do
    {
      v29 = v27;
      v27 = SVG::consumeWsp(a1, v27);
    }

    while ((v30 & 1) != 0);
    v31 = SVG::consumeString<2ul>("(", a1, v29);
    if (v32)
    {
      do
      {
        v33 = v31;
        v31 = SVG::consumeWsp(a1, v31);
      }

      while ((v34 & 1) != 0);
      v125.a = NAN;
      v125.b = -3.72066208e-103;
      v125.c = -3.72066208e-103;
      SVG::consumePathNumber(a1, v33, &v125);
      if (LOBYTE(v125.c) == 1)
      {
        a = v125.a;
        v36 = v125.b;
        v37 = SVG::consumeCommaWsp(a1, *&v125.b);
        if (v38)
        {
          v124.a = NAN;
          v124.b = -3.72066208e-103;
          v124.c = -3.72066208e-103;
          SVG::consumePathNumber(a1, v37, &v124);
          if (LOBYTE(v124.c))
          {
            v39 = v124.a;
          }

          else
          {
            v39 = 0.0;
          }

          if (LOBYTE(v124.c))
          {
            v36 = v124.b;
          }
        }

        else
        {
          v39 = 0.0;
        }

        do
        {
          v40 = *&v36;
          v36 = COERCE_DOUBLE(SVG::consumeWsp(a1, *&v36));
        }

        while ((v41 & 1) != 0);
        v42 = SVG::consumeString<2ul>(")", a1, v40);
        if (v43)
        {
          v44 = v42;
          CGAffineTransformMakeTranslation(a3, a, v39);
LABEL_74:
          *(a3 + 48) = v44;
LABEL_75:
          *(a3 + 56) = 1;
          return;
        }
      }
    }
  }

  *&v45 = -1;
  *(&v45 + 1) = -1;
  *(a3 + 16) = v45;
  *(a3 + 32) = v45;
  *a3 = v45;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v46 = SVG::consumeString<6ul>("scale", a1, a2);
  if (v47)
  {
    do
    {
      v48 = v46;
      v46 = SVG::consumeWsp(a1, v46);
    }

    while ((v49 & 1) != 0);
    v50 = SVG::consumeString<2ul>("(", a1, v48);
    if (v51)
    {
      do
      {
        v52 = v50;
        v50 = SVG::consumeWsp(a1, v50);
      }

      while ((v53 & 1) != 0);
      v125.a = NAN;
      v125.b = -3.72066208e-103;
      v125.c = -3.72066208e-103;
      SVG::consumePathNumber(a1, v52, &v125);
      if (LOBYTE(v125.c) == 1)
      {
        v54 = v125.a;
        v55 = v125.b;
        v56 = SVG::consumeCommaWsp(a1, *&v125.b);
        v57 = v54;
        if (v58)
        {
          v124.a = NAN;
          v124.b = -3.72066208e-103;
          v124.c = -3.72066208e-103;
          SVG::consumePathNumber(a1, v56, &v124);
          v57 = LOBYTE(v124.c) ? v124.a : v54;
          if (LOBYTE(v124.c))
          {
            v55 = v124.b;
          }
        }

        do
        {
          v59 = *&v55;
          v55 = COERCE_DOUBLE(SVG::consumeWsp(a1, *&v55));
        }

        while ((v60 & 1) != 0);
        v61 = SVG::consumeString<2ul>(")", a1, v59);
        if (v62)
        {
          v44 = v61;
          CGAffineTransformMakeScale(a3, v54, v57);
          goto LABEL_74;
        }
      }
    }
  }

  *&v63 = -1;
  *(&v63 + 1) = -1;
  *(a3 + 16) = v63;
  *(a3 + 32) = v63;
  *a3 = v63;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v64 = SVG::consumeString<7ul>("rotate", a1, a2);
  if (v65)
  {
    do
    {
      v66 = v64;
      v64 = SVG::consumeWsp(a1, v64);
    }

    while ((v67 & 1) != 0);
    v68 = SVG::consumeString<2ul>("(", a1, v66);
    if (v69)
    {
      do
      {
        v70 = v68;
        v68 = SVG::consumeWsp(a1, v68);
      }

      while ((v71 & 1) != 0);
      *&v121 = NAN;
      v122 = -3.72066208e-103;
      v123 = 0xAAAAAAAAAAAAAAAALL;
      SVG::consumePathNumber(a1, v70, &v121);
      if (v123 == 1)
      {
        v72 = *&v121;
        v73 = v122;
        v74 = SVG::consumeCommaWsp(a1, *&v122);
        v75 = 0.0;
        if ((v76 & 1) != 0 && (v125.a = NAN, v125.b = -3.72066208e-103, v125.c = -3.72066208e-103, SVG::consumePathNumber(a1, v74, &v125), LOBYTE(v125.c) == 1))
        {
          v77 = SVG::consumeCommaWsp(a1, *&v125.b);
          v78 = 0.0;
          if (v79)
          {
            v124.a = NAN;
            v124.b = -3.72066208e-103;
            v124.c = -3.72066208e-103;
            SVG::consumePathNumber(a1, v77, &v124);
            v75 = LOBYTE(v124.c) ? v124.a : 0.0;
            v78 = LOBYTE(v124.c) ? v125.a : 0.0;
            if (LOBYTE(v124.c))
            {
              v73 = v124.b;
            }
          }
        }

        else
        {
          v78 = 0.0;
        }

        do
        {
          v80 = *&v73;
          v73 = COERCE_DOUBLE(SVG::consumeWsp(a1, *&v73));
        }

        while ((v81 & 1) != 0);
        v82 = SVG::consumeString<2ul>(")", a1, v80);
        if (v83)
        {
          v44 = v82;
          *&v84 = -1;
          *(&v84 + 1) = -1;
          *&v120.c = v84;
          *&v120.tx = v84;
          *&v120.a = v84;
          CGAffineTransformMakeTranslation(&v120, v78, v75);
          v124 = v120;
          CGAffineTransformRotate(&v125, &v124, v72 / 180.0 * 3.14159265);
          v120 = v125;
          v124 = v125;
          CGAffineTransformTranslate(&v125, &v124, -v78, -v75);
          v86 = *&v125.c;
          v85 = *&v125.tx;
          v120 = v125;
          *a3 = *&v125.a;
          *(a3 + 16) = v86;
          *(a3 + 32) = v85;
          goto LABEL_74;
        }
      }
    }
  }

  *&v87 = -1;
  *(&v87 + 1) = -1;
  *(a3 + 16) = v87;
  *(a3 + 32) = v87;
  *a3 = v87;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v88 = SVG::consumeString<6ul>("skewX", a1, a2);
  if (v89)
  {
    do
    {
      v90 = v88;
      v88 = SVG::consumeWsp(a1, v88);
    }

    while ((v91 & 1) != 0);
    v92 = SVG::consumeString<2ul>("(", a1, v90);
    if (v93)
    {
      do
      {
        v94 = v92;
        v92 = SVG::consumeWsp(a1, v92);
      }

      while ((v95 & 1) != 0);
      v125.a = NAN;
      v125.b = -3.72066208e-103;
      v125.c = -3.72066208e-103;
      SVG::consumePathNumber(a1, v94, &v125);
      if (LOBYTE(v125.c) == 1)
      {
        v96 = v125.b;
        do
        {
          v97 = *&v96;
          v96 = COERCE_DOUBLE(SVG::consumeWsp(a1, *&v96));
        }

        while ((v98 & 1) != 0);
        v99 = SVG::consumeString<2ul>(")", a1, v97);
        if (v100)
        {
          v44 = v99;
          v101 = tan(v125.a / 180.0 * 3.14159265);
          *v7 = 0;
          v7[1] = 0;
          *a3 = xmmword_25D1D6200;
          *(a3 + 16) = v101;
          *(a3 + 24) = 0x3FF0000000000000;
          goto LABEL_74;
        }
      }
    }
  }

  *&v102 = -1;
  *(&v102 + 1) = -1;
  *(a3 + 16) = v102;
  *(a3 + 32) = v102;
  *a3 = v102;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v103 = SVG::consumeString<6ul>("skewY", a1, a2);
  if (v104)
  {
    do
    {
      v105 = v103;
      v103 = SVG::consumeWsp(a1, v103);
    }

    while ((v106 & 1) != 0);
    v107 = SVG::consumeString<2ul>("(", a1, v105);
    if (v108)
    {
      do
      {
        v109 = v107;
        v107 = SVG::consumeWsp(a1, v107);
      }

      while ((v110 & 1) != 0);
      v125.a = NAN;
      v125.b = -3.72066208e-103;
      v125.c = -3.72066208e-103;
      SVG::consumePathNumber(a1, v109, &v125);
      if (LOBYTE(v125.c) == 1)
      {
        v111 = v125.b;
        do
        {
          v112 = *&v111;
          v111 = COERCE_DOUBLE(SVG::consumeWsp(a1, *&v111));
        }

        while ((v113 & 1) != 0);
        v114 = SVG::consumeString<2ul>(")", a1, v112);
        if (v115)
        {
          v116 = v114;
          v117 = tan(v125.a / 180.0 * 3.14159265);
          *v7 = 0;
          v7[1] = 0;
          *a3 = 0x3FF0000000000000;
          *(a3 + 8) = v117;
          *(a3 + 16) = xmmword_25D1D61F0;
          *(a3 + 48) = v116;
          goto LABEL_75;
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 56) = 0;
}

unint64_t SVG::consumeCommaWspPlus(uint64_t *a1, unint64_t a2)
{
  v3 = SVG::consumeCommaWsp(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  do
  {
    v5 = v3;
    v3 = SVG::consumeCommaWsp(a1, v3);
  }

  while ((v6 & 1) != 0);
  return v5;
}

void std::vector<CGAffineTransform>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CGAffineTransform>>(a1, a2);
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t SVG::GElement::GElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9520;
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

uint64_t SVG::GElement::appendChild(void *a1, const void **a2)
{
  v4 = *a2;
  v5 = **a2;
  {
    v6 = *a2;
    {
      return 0;
    }
  }

  return SVG::Element::appendChild(a1, a2);
}

void SVG::GElement::~GElement(SVG::GElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

{
  v2 = *(this + 128);
  if (v2 != -1)
  {
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v8 + v2))(&v7, this + 480);
  }

  *(this + 128) = -1;
  v3 = *(this + 116);
  if (v3 != -1)
  {
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v8 + v3))(&v7, this + 416);
  }

  *(this + 116) = -1;
  v4 = *(this + 82);
  if (v4 != -1)
  {
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v8 + v4))(&v7, this + 312);
  }

  *(this + 82) = -1;
  v5 = *(this + 66);
  if (v5 != -1)
  {
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
    (*(&v8 + v5))(&v7, this + 216);
  }

  *(this + 66) = -1;
  v6 = *(this + 36);
  if (v6 != -1)
  {
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    v10 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
    (*(&v8 + v6))(&v7, this + 128);
  }

  *(this + 36) = -1;
  SVG::Element::~Element(this);
}

void SVG::GradientElement::parseAttributes(void *a1, void *a2)
{
  std::string::basic_string[abi:nn200100]<0>(v31, "gradientUnits");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v4 = SVG::Element::findInAttributeMap(a2, v31, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if (v4)
  {
    v5 = SVG::parseUnits((v4 + 8));
    if ((v5 & 0x100000000) != 0)
    {
      v6 = v5;
      v7 = (*(*a1 + 32))(a1);
      *v7 = v6;
      *(v7 + 4) = 1;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v31, "gradientTransform");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a2, v31, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if (v8)
  {
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *&v31[16] = v9;
    v32 = v9;
    *v31 = v9;
    v33 = 0xAAAAAAAAAAAAAAAALL;
    SVG::parseTransform((v8 + 8), v31);
    if (v33 == 1)
    {
      v10 = (*(*a1 + 32))(a1);
      v11 = *(v10 + 56);
      v12 = *&v31[16];
      *(v10 + 8) = *v31;
      *(v10 + 24) = v12;
      *(v10 + 40) = v32;
      if ((v11 & 1) == 0)
      {
        *(v10 + 56) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v31, "spreadMethod");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v13 = SVG::Element::findInAttributeMap(a2, v31, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = v14;
      v14 = SVG::consumeWsp(v13 + 8, v14);
    }

    while ((v16 & 1) != 0);
    memset(v31, 170, 24);
    SVG::consumeSpreadMethod((v13 + 8), v15, v31);
    if (v31[16] == 1)
    {
      v17 = *&v31[8];
      do
      {
        v18 = v17;
        v17 = SVG::consumeWsp(v13 + 8, v17);
      }

      while ((v19 & 1) != 0);
      v20 = *(v13 + 87);
      if ((v20 & 0x80u) != 0)
      {
        v20 = v13[9];
      }

      if (v18 == v20)
      {
        v21 = *v31;
        v22 = (*(*a1 + 32))(a1);
        *(v22 + 64) = v21;
        *(v22 + 68) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v31, "href");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/1999/xlink");
  v23 = SVG::Element::findInAttributeMap(a2, v31, __p);
  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if (v23)
  {
    v24 = *MEMORY[0x277CBECE8];
    v25 = *(v23 + 87);
    if (v25 < 0)
    {
      v26 = v23[8];
      v25 = v23[9];
    }

    else
    {
      v26 = (v23 + 8);
    }

    v27 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v26, v25, 0x8000100u, 1u);
    if (v27)
    {
      v28 = v27;
      v29 = CFURLCreateWithString(v24, v27, 0);
      v30 = a1[80];
      if (v30)
      {
        CFRelease(v30);
      }

      a1[80] = v29;
      CFRelease(v28);
    }
  }
}

uint64_t SVG::GradientElement::appendChild(void *a1, const void **a2)
{
  {
    return 0;
  }

  return SVG::Element::appendChild(a1, a2);
}

void SVG::GradientElement::getGradient(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *&__dst = a1;
  std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(a3, &__dst);
  memset(v5, 0, sizeof(v5));
  *&__dst = a1;
  std::vector<std::reference_wrapper<SVG::GradientElement const>>::push_back[abi:nn200100](v5, &__dst);
  __dst = 0u;
  __p = 0u;
  v8 = 0xAAAAAAAA3F800000;
  operator new();
}

unint64_t SVG::consumeSpreadMethod@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SVG::consumeString<4ul>("pad", a1, a2);
  if (v7)
  {
    *a3 = 0;
  }

  else
  {
    result = SVG::consumeString<8ul>("reflect", a1, a2);
    if (v9)
    {
      v8 = 1;
      *a3 = 1;
      *(a3 + 8) = result;
      goto LABEL_9;
    }

    result = SVG::consumeString<7ul>("repeat", a1, a2);
    if ((v10 & 1) == 0)
    {
      v8 = 0;
      *a3 = 0;
      goto LABEL_9;
    }

    *a3 = 2;
  }

  *(a3 + 8) = result;
  v8 = 1;
LABEL_9:
  *(a3 + 16) = v8;
  return result;
}

void std::vector<std::reference_wrapper<SVG::GradientElement const>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__hash_table<SVG::GradientElement const*,std::hash<SVG::GradientElement const*>,std::equal_to<SVG::GradientElement const*>,std::allocator<SVG::GradientElement const*>>::__rehash<true>(uint64_t a1, size_t __n)
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

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
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

uint64_t SVG::MaskElement::MaskElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9C20;
  *(a1 + 640) = 1;
  *(a1 + 648) = 0xC024000000000000;
  *(a1 + 656) = xmmword_25D1D6480;
  *(a1 + 672) = xmmword_25D1D6490;
  *(a1 + 688) = xmmword_25D1D6490;
  *(a1 + 704) = 1;
  *(a1 + 712) = 0;
  std::string::basic_string[abi:nn200100]<0>(v17, "x");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v6)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v17);
    if (v18 == 1)
    {
      *(a1 + 648) = *v17;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "y");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v7 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v7)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v7 + 8), v17);
    if (v18 == 1)
    {
      *(a1 + 664) = *v17;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "width");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v8)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v17);
    if (v18 == 1)
    {
      *(a1 + 680) = *v17;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "height");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v9 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v9)
  {
    v17[0] = -1;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v9 + 8), v17);
    if (v18 == 1)
    {
      *(a1 + 696) = *v17;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "maskUnits");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v10)
  {
    v11 = SVG::parseUnits((v10 + 8));
    if ((v11 & 0x100000000) != 0)
    {
      *(a1 + 640) = v11;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v17, "maskContentUnits");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v12 = SVG::Element::findInAttributeMap(a3, v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (v12)
  {
    v13 = SVG::parseUnits((v12 + 8));
    if ((v13 & 0x100000000) != 0)
    {
      *(a1 + 712) = v13;
    }
  }

  return a1;
}

uint64_t SVG::MaskElement::appendChild(void *a1, const void **a2)
{
  v4 = *a2;
  v5 = **a2;
  {
    v6 = *a2;
    {
      return 0;
    }
  }

  return SVG::Element::appendChild(a1, a2);
}

void SVG::MaskElement::~MaskElement(SVG::MaskElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

void SVG::analyzeDependencies(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  SVG::findDependentElements(&v41, a4);
  *__p = 0u;
  *v39 = 0u;
  v40 = 0xAAAAAAAA3F800000;
  v9 = v42;
  v27 = v41;
  if (v41 == v42)
  {
    goto LABEL_31;
  }

  v10 = v41;
  do
  {
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v11 = std::visit[abi:nn200100]<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&,void>(&v31, v10);
    if (!__p[1])
    {
      goto LABEL_28;
    }

    v12 = vcnt_s8(__p[1]);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v11;
      if (v11 >= __p[1])
      {
        v13 = v11 % __p[1];
      }
    }

    else
    {
      v13 = (__p[1] - 1) & v11;
    }

    v14 = *(__p[0] + v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_28:
      operator new();
    }

    v16 = *(v10 + 8);
    while (1)
    {
      v17 = *(v15 + 8);
      if (v17 != v11)
      {
        if (v12.u32[0] > 1uLL)
        {
          if (v17 >= __p[1])
          {
            v17 %= __p[1];
          }
        }

        else
        {
          v17 &= __p[1] - 1;
        }

        if (v17 != v13)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v18 = *(v15 + 24);
      if (v18 != 1)
      {
        break;
      }

      if (v16 == 1)
      {
        goto LABEL_26;
      }

LABEL_27:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    if (*(v15 + 24))
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0;
    }

    if (!v19)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (*(v15 + 16) != *v10)
    {
      goto LABEL_27;
    }

    v37 = v15;
    *&v31 = a2;
    *(&v31 + 1) = &v37;
    *&v32 = a1;
    *(&v32 + 1) = a3;
    v33 = a2;
    v34 = &v37;
    v35 = a1;
    v36 = a3;
    if (v18 == 0xFFFFFFFFLL)
    {
      std::__throw_bad_variant_access[abi:nn200100]();
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    v44 = &v31;
    *&v28[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_0,SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> &>;
    *(&v28[0] + 1) = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_0,SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> &>;
    (*(v28 + v18))(&v44, v10);
    v10 += 16;
  }

  while (v10 != v9);
LABEL_31:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0xAAAAAAAA3F800000;
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  v30 = -1431655766;
  if (v27 != v9)
  {
    v20 = v27;
    do
    {
      v21 = *v20;
      v22 = v20[1];
      v20 += 2;
      SVG::enqueue(a5, &v31, v28, __p, v21, v22);
    }

    while (v20 != v9);
  }

  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(v28);
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(&v31);
  v23 = v39[0];
  if (v39[0])
  {
    do
    {
      v24 = *v23;
      v25 = v23[4];
      if (v25)
      {
        v23[5] = v25;
        operator delete(v25);
      }

      operator delete(v23);
      v23 = v24;
    }

    while (v24);
  }

  v26 = __p[0];
  __p[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  if (v27)
  {
    operator delete(v27);
  }
}

void SVG::findDependentElements(uint64_t a1, void *a2)
{
  if (v4)
  {
    v5 = v4;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 < v6)
    {
      *v7 = v4;
      *(v7 + 8) = 0;
LABEL_7:
      v11 = v7 + 16;
LABEL_28:
      *(a1 + 8) = v11;
      goto LABEL_29;
    }

    v12 = *a1;
    v13 = v7 - *a1;
    v14 = (v13 >> 4) + 1;
    if (!(v14 >> 60))
    {
      v15 = v6 - v12;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>(v16);
      }

      v20 = v13 >> 4;
      v21 = 16 * (v13 >> 4);
      *v21 = v5;
      *(v21 + 8) = 0;
LABEL_26:
      v11 = v21 + 16;
      v22 = (v21 - 16 * v20);
      memcpy(v22, v12, v13);
      v23 = *a1;
      *a1 = v22;
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      if (v23)
      {
        operator delete(v23);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v8)
  {
    v9 = v8;
    v7 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (v7 < v10)
    {
      *v7 = v8;
      *(v7 + 8) = 1;
      goto LABEL_7;
    }

    v12 = *a1;
    v13 = v7 - *a1;
    v17 = (v13 >> 4) + 1;
    if (!(v17 >> 60))
    {
      v18 = v10 - v12;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>(v19);
      }

      v20 = v13 >> 4;
      v21 = 16 * (v13 >> 4);
      *v21 = v9;
      *(v21 + 8) = 1;
      goto LABEL_26;
    }

LABEL_33:
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

LABEL_29:
  v25 = a2[4];
  v24 = a2[5];
  while (v25 != v24)
  {
    v26 = *v25++;
    SVG::findDependentElements(a1, v26);
  }
}

uint64_t SVG::enqueue(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v43 = a5;
  *(&v43 + 1) = a6;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v44 = a5;
  *(&v44 + 1) = a6;
  v41 = v44;
  v10 = std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::find<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(a3, &v44);
  LOBYTE(v42) = v10 != 0;
  if (v10)
  {
    goto LABEL_2;
  }

  std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::__emplace_unique_key_args<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>&>(a3, &v44);
  if (std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::find<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(a2, &v43))
  {
    goto LABEL_44;
  }

  v12 = std::visit[abi:nn200100]<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&,void>(&v44, &v43);
  v13 = a4[1];
  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v12;
    if (v12 >= *&v13)
    {
      v15 = v12 % *&v13;
    }
  }

  else
  {
    v15 = (*&v13 - 1) & v12;
  }

  v16 = *(*a4 + 8 * v15);
  do
  {
    do
    {
      while (1)
      {
        do
        {
          v16 = *v16;
        }

        while (v12 != v16[1]);
        v17 = *(v16 + 6);
        if (v17 != 1)
        {
          break;
        }

        if (DWORD2(v43) == 1)
        {
          goto LABEL_18;
        }
      }

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = DWORD2(v43) == 0;
      }
    }

    while (!v18);
LABEL_18:
    ;
  }

  while (v16[2] != v43);
  v19 = *(a1 + 8);
  v20 = v16[4];
  v21 = v16[5];
  if (v20 == v21)
  {
LABEL_24:
    v24 = *(a1 + 16);
    if (v19 >= v24)
    {
      v26 = (v19 - *a1) >> 4;
      v27 = v26 + 1;
      if ((v26 + 1) >> 60)
      {
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      v28 = v24 - *a1;
      if (v28 >> 3 > v27)
      {
        v27 = v28 >> 3;
      }

      if (v28 >= 0x7FFFFFFFFFFFFFF0)
      {
        v29 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>(v29);
      }

      v35 = (16 * v26);
      *v35 = v43;
      v25 = 16 * v26 + 16;
      v36 = *(a1 + 8) - *a1;
      v37 = 16 * v26 - v36;
      memcpy(v35 - v36, *a1, v36);
      v38 = *a1;
      *a1 = v37;
      *(a1 + 8) = v25;
      *(a1 + 16) = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v19 = v43;
      v25 = (v19 + 1);
    }

    *(a1 + 8) = v25;
    std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::__emplace_unique_key_args<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>&>(a2, &v43);
LABEL_44:
    v11 = 0;
    goto LABEL_45;
  }

  v22 = v19 - *a1;
  v23 = v22 >> 4;
  while (!SVG::enqueue(a1, a2, a3, a4, *v20, v20[1]))
  {
    v20 += 2;
    if (v20 == v21)
    {
      v19 = *(a1 + 8);
      goto LABEL_24;
    }
  }

  v31 = *a1;
  v30 = *(a1 + 8);
  v32 = v30 - *a1;
  if (v22 < v32)
  {
    v33 = 16 * v23;
    do
    {
      std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::__erase_unique<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(a2, v31 + v33);
      ++v23;
      v31 = *a1;
      v30 = *(a1 + 8);
      v32 = v30 - *a1;
      v33 += 16;
    }

    while (v23 < v32 >> 4);
  }

  if (v32 > v22)
  {
    v34 = v30 - v31;
    do
    {
      v30 -= 16;
      v34 -= 16;
    }

    while (v34 > v22);
    *(a1 + 8) = v30;
  }

LABEL_2:
  v11 = 1;
LABEL_45:
  if ((v42 & 1) == 0)
  {
    std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::__erase_unique<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(a3, &v41);
  }

  return v11;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_0,SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> &>(void ***a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v8 = *(*a2 + 56);
  v5 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v4, &v8);
  v6 = *v2[1] + 32;
  v9 = *(v2 + 1);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v8 = &unk_286EB9E30;
  v12 = v6;
  v13 = 1;
  SVG::RecordBase::operator()(&v8, v3, (v5 + 3));
  v8 = &unk_286EB9DC8;
  return std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(v10);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_0,SVG::analyzeDependencies(std::unordered_map<__CFURL const*,std::reference_wrapper<SVG::Element const>> const&,std::unordered_map<SVG::Element const*,SVG::Presentation> const&,SVG::Presentation const&,SVG::Element const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> &>(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 32);
  v8 = *(*a2 + 56);
  v5 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v4, &v8);
  v6 = **(v2 + 40) + 32;
  v9 = *(v2 + 48);
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v8 = &unk_286EB9E30;
  v12 = v6;
  v13 = 1;
  SVG::RecordBase::operator()(&v8, v3, (v5 + 3));
  v8 = &unk_286EB9DC8;
  return std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(v10);
}

void SVG::Discoverer::~Discoverer(SVG::Discoverer *this)
{
  *this = &unk_286EB9DC8;
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(this + 24);
}

{
  *this = &unk_286EB9DC8;
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(this + 24);

  JUMPOUT(0x25F894240);
}

void SVG::Discoverer::processPatternElement(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  else
  {
    v3 = *(a1 + 64);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = *v3;
      v8 = v5 - *v3;
      v9 = v8 >> 4;
      v10 = (v8 >> 4) + 1;
      if (v10 >> 60)
      {
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>(v12);
      }

      v13 = 16 * v9;
      *v13 = a2;
      *(v13 + 8) = 0;
      v6 = 16 * v9 + 16;
      v14 = (v13 - 16 * (v8 >> 4));
      memcpy(v14, v7, v8);
      v15 = *v3;
      *v3 = v14;
      *(v3 + 8) = v6;
      *(v3 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v5 = a2;
      *(v5 + 8) = 0;
      v6 = v5 + 16;
    }

    *(v3 + 8) = v6;
  }
}

void SVG::Discoverer::processMaskElement(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  else
  {
    v3 = *(a1 + 64);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = *v3;
      v8 = v5 - *v3;
      v9 = v8 >> 4;
      v10 = (v8 >> 4) + 1;
      if (v10 >> 60)
      {
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>(v12);
      }

      v13 = 16 * v9;
      *v13 = a2;
      *(v13 + 8) = 1;
      v6 = 16 * v9 + 16;
      v14 = (v13 - 16 * (v8 >> 4));
      memcpy(v14, v7, v8);
      v15 = *v3;
      *v3 = v14;
      *(v3 + 8) = v6;
      *(v3 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v5 = a2;
      *(v5 + 8) = 1;
      v6 = v5 + 16;
    }

    *(v3 + 8) = v6;
  }
}

uint64_t *std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::find<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(void *a1, uint64_t a2)
{
  v4 = std::visit[abi:nn200100]<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&,void>(&v14, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (v8)
  {
    v8 = *v8;
    if (v8)
    {
      v9 = *(a2 + 8);
      do
      {
        v10 = v8[1];
        if (v10 == v4)
        {
          v11 = *(v8 + 6);
          if (v11 == 1)
          {
            if (v9 == 1)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v11)
            {
              v12 = 0;
            }

            else
            {
              v12 = v9 == 0;
            }

            if (v12)
            {
LABEL_24:
              if (v8[2] == *a2)
              {
                return v8;
              }
            }
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
          {
            if (v10 >= *&v5)
            {
              v10 %= *&v5;
            }
          }

          else
          {
            v10 &= *&v5 - 1;
          }

          if (v10 != v7)
          {
            return 0;
          }
        }

        v8 = *v8;
      }

      while (v8);
    }
  }

  return v8;
}

unint64_t std::visit[abi:nn200100]<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&,void>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>(v4, v5);
  }

  else
  {
    v6 = a1;
    v7[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>;
    v7[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&>;
    return (v7[v2])(&v6);
  }
}

void std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::__erase_unique<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::find<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }
  }

  else
  {
    v10 &= *&v4 - 1;
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = *(v5 + 8);
      if (v7.u32[0] > 1uLL)
      {
        v12 = *(v5 + 8);
        if (v11 >= *&v4)
        {
          v12 = v11 % *&v4;
        }
      }

      else
      {
        v12 = v11 & (*&v4 - 1);
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = *(v5 + 8);
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  operator delete(v3);
}

unint64_t std::__hash_table<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,SVG::DependentElementHash,SVG::DependentElementPredicate,std::allocator<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>>>::__emplace_unique_key_args<std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>>&>(void *a1, uint64_t a2)
{
  result = std::visit[abi:nn200100]<SVG::Visitor<SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::PatternElement const&)#1},SVG::DependentElementHash::operator()(std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&)::{lambda(SVG::MaskElement const&)#1}>,std::variant<std::reference_wrapper<SVG::PatternElement const>,std::reference_wrapper<SVG::MaskElement const>> const&,void>(&v14, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_27;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = result;
    if (result >= *&v5)
    {
      v7 = result % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & result;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_27:
    operator new();
  }

  v10 = *(a2 + 8);
  while (1)
  {
    v11 = v9[1];
    if (v11 != result)
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v12 = *(v9 + 6);
    if (v12 != 1)
    {
      break;
    }

    if (v10 == 1)
    {
      goto LABEL_25;
    }

LABEL_26:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (v9[2] != *a2)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t OTSVGTableCreateFromData(const __CFData *a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      Length = CFDataGetLength(a1);
      if (Length >= 10)
      {
        v4 = Length;
        *buffer = -21846;
        v22.location = 0;
        v22.length = 2;
        CFDataGetBytes(a1, v22, buffer);
        v5 = __rev16(*buffer);
        *buffer = -1431655766;
        v23.location = 2;
        v23.length = 4;
        CFDataGetBytes(a1, v23, buffer);
        if (!v5)
        {
          v6 = buffer[0] << 24;
          v7 = buffer[1];
          v8 = buffer[2];
          v9 = buffer[3];
          v10.location = v6 | (buffer[1] << 16) | (buffer[2] << 8) | buffer[3];
          v11 = v10.location + 2;
          if (v10.location + 2 <= v4)
          {
            *buffer = -21846;
            v10.length = 2;
            CFDataGetBytes(a1, v10, buffer);
            v12 = buffer[0];
            v13 = buffer[1];
            if (v11 + 12 * (buffer[1] | (buffer[0] << 8)) <= v4)
            {
              v15 = buffer[1] | (buffer[0] << 8);
              BytePtr = CFDataGetBytePtr(a1);
              if (v15)
              {
                v17 = 12 * v13 + 3072 * v12 - 12;
                v18 = &BytePtr[0x10000 * v7 + 16 + 256 * v8 + v6 + v9];
                while (v17)
                {
                  v19 = bswap32(*v18) >> 16;
                  v20 = bswap32(*(v18 - 7));
                  v17 -= 12;
                  v18 += 12;
                  if (v19 < HIWORD(v20))
                  {
                    return 0;
                  }
                }
              }

              memset(buffer, 170, sizeof(buffer));
              _ZNSt3__115allocate_sharedB8nn200100IN3SVG5TableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
            }
          }
        }
      }
    }
  }

  return 0;
}

void OTSVGTableEnumerateGlyphs(std::mutex **a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = *a1;
    std::mutex::lock(*a1);
    v5 = *(*a1)[1].__m_.__opaque;
    if (v5)
    {
      sig = (*a1)[1].__m_.__sig;
      v7 = &sig[6 * v5];
      do
      {
        if (bswap32(*sig) >> 16 <= bswap32(sig[1]) >> 16)
        {
          (*(a2 + 16))(a2);
        }

        sig += 6;
      }

      while (sig != v7);
    }

    std::mutex::unlock(v4);
  }
}

uint64_t OTSVGTableGetDocumentIndexForGlyph(std::mutex **a1, unsigned int a2)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *a1;
  std::mutex::lock(*a1);
  v5 = *a1;
  v6 = *(*a1)[1].__m_.__opaque;
  v7 = -1;
  if (v6)
  {
    sig = v5[1].__m_.__sig;
    v9 = &sig[6 * v6];
    v10 = sig;
    do
    {
      v11 = v6 >> 1;
      v12 = &v10[6 * (v6 >> 1)];
      v13 = bswap32(v12[1]) >> 16;
      v14 = v12 + 6;
      v6 += ~(v6 >> 1);
      if (v13 < a2)
      {
        v10 = v14;
      }

      else
      {
        v6 = v11;
      }
    }

    while (v6);
    if (v10 == v9 || a2 < bswap32(*v10) >> 16 || a2 > bswap32(v10[1]) >> 16)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v10 - sig) >> 2);
    }
  }

  std::mutex::unlock(v4);
  return v7;
}

void std::__shared_ptr_emplace<SVG::Table>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286EB9300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

void std::__shared_ptr_emplace<SVG::Table>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    CFRelease(v6);
  }

  std::mutex::~mutex((a1 + 24));
}

void SVG::playback(uint64_t a1, uint64_t *a2)
{
  v13 = a1;
  FillColorAsColor = CGContextGetFillColorAsColor();
  cf = FillColorAsColor;
  if (FillColorAsColor)
  {
    CFRetain(FillColorAsColor);
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (v4 != v5)
  {
    do
    {
      v14[0] = &v13;
      v14[1] = &cf;
      v6 = *(v4 + 120);
      if (v6 == -1)
      {
        v7 = std::__throw_bad_variant_access[abi:nn200100]();
        std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::playback(CGContext *,SVG::Recording const&)::$_0::operator() const(std::variant<SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&)::{lambda(SVG::Command const&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::SaveState,SVG::RestoreState,SVG::ConcatCTM,SVG::DrawImage,SVG::FillPath,SVG::DrawLinearGradient,SVG::DrawRadialGradient,SVG::ClipToPaths,SVG::ClipToMask,SVG::SetFill,SVG::BeginTransparencyLayer,SVG::EndTransparencyLayer,SVG::SetAlpha,SVG::GetCTM> const&>(v7, v8);
        return;
      }

      v15 = v14;
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIZZN3SVG8playbackEP9CGContextRKNS6_9RecordingEENK3__0clERKNS_7variantIJNS6_9SaveStateENS6_12RestoreStateENS6_9ConcatCTMENS6_9DrawImageENS6_8FillPathENS6_18DrawLinearGradientENS6_18DrawRadialGradientENS6_11ClipToPathsENS6_10ClipToMaskENS6_7SetFillENS6_22BeginTransparencyLayerENS6_20EndTransparencyLayerENS6_8SetAlphaENS6_6GetCTMEEEEEUlRKNS6_7CommandEE_EEJRKNS0_6__implIJSE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_SO_SP_SQ_SR_EEEEEEDcOT_DpOT0____fmatrix[v6])(&v15, v4);
      v4 += 128;
    }

    while (v4 != v5);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t SVG::SetFill::execute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = &v7;
  v6[1] = &v7;
  v6[2] = a3;
  v6[3] = a3;
  v6[4] = &v7;
  v7 = a2;
  v3 = *(a1 + 112);
  if (v3 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    return SVG::SetFill::dump(v5);
  }

  else
  {
    v8 = v6;
    v9[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_0,SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_1,SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>;
    v9[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_0,SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_1,SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>;
    v9[2] = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_0,SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_1,SVG::SetFill::execute(CGContext *,SVG::PlaybackState &)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>;
    return (v9[v3])(&v8, a1 + 8);
  }
}

void SVG::SetFill::dump(SVG::SetFill *this)
{
  v2 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "SetFill", 7);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  std::ostream::flush();
  v4 = *(this + 28);
  if (v4 == -1)
  {
    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    SVG::SetFill::~SetFill(v5);
  }

  else
  {
    v7 = &v6;
    v8.__locale_ = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::dump(void)::$_0,SVG::SetFill::dump(void)::$_1,SVG::SetFill::dump(void)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>;
    v9 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::dump(void)::$_0,SVG::SetFill::dump(void)::$_1,SVG::SetFill::dump(void)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>;
    v10 = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::dump(void)::$_0,SVG::SetFill::dump(void)::$_1,SVG::SetFill::dump(void)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>;
    (*(&v8.__locale_ + v4))(&v7, this + 8);
  }
}

void SVG::SetFill::~SetFill(SVG::SetFill *this)
{
  *this = &unk_286EB9598;
  v2 = *(this + 28);
  if (v2 != -1)
  {
    v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v4[v2])(&v3, this + 8);
  }

  *(this + 28) = -1;
}

{
  *this = &unk_286EB9598;
  v2 = *(this + 28);
  if (v2 != -1)
  {
    v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    v4[2] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG2CFIP7CGColorEENS8_7SetFill12CurrentColorENSD_11PatternDataEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSH_1EJSC_SE_SF_EEEEEEDcSJ_DpT0_;
    (v4[v2])(&v3, this + 8);
  }

  *(this + 28) = -1;
  MEMORY[0x25F894240](this, 0x10A3C40C258EA78);
}

void SVG::drawPattern(SVG *this, CGContextRef c, CGContext *a3)
{
  CGContextClipToRect(c, *(this + 16));
  v5 = *this;

  SVG::playback(c, v5);
}

uint64_t SVG::releaseInfo(uint64_t this, void *a2)
{
  if (this)
  {
    v2 = *(this + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    JUMPOUT(0x25F894240);
  }

  return this;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::dump(void)::$_0,SVG::SetFill::dump(void)::$_1,SVG::SetFill::dump(void)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>(uint64_t a1, CFTypeRef *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v2 = CFCopyDescription(*a2);
    memset(__b, 170, sizeof(__b));
    CFStringGetCString(v2, __b, 1024, 0x8000100u);
    v3 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "    ", 4);
    v4 = strlen(__b);
    v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, __b, v4);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v7);
    std::ostream::put();
    std::ostream::flush();
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::dump(void)::$_0,SVG::SetFill::dump(void)::$_1,SVG::SetFill::dump(void)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>()
{
  v0 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "    CurrentColor", 16);
  std::ios_base::getloc((v0 + *(*v0 - 24)));
  v1 = std::locale::use_facet(&v3, MEMORY[0x277D82680]);
  (v1->__vftable[2].~facet_0)(v1, 10);
  std::locale::~locale(&v3);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::SetFill::dump(void)::$_0,SVG::SetFill::dump(void)::$_1,SVG::SetFill::dump(void)::$_2>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::CF<CGColor *>,SVG::SetFill::CurrentColor,SVG::SetFill::PatternData> const&>()
{
  v0 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "    Pattern", 11);
  std::ios_base::getloc((v0 + *(*v0 - 24)));
  v1 = std::locale::use_facet(&v3, MEMORY[0x277D82680]);
  (v1->__vftable[2].~facet_0)(v1, 10);
  std::locale::~locale(&v3);
  std::ostream::put();
  return std::ostream::flush();
}

void SVG::RecordBase::operator()(void *a1, unint64_t a2, const SVG::Presentation *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 80))(a1) || std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::find<SVG::Element const*>(a1 + 3, a2))
  {
    return;
  }

  v6 = 0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = a1[4];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6)) >> 47));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = *(a1[3] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (v12[2] != a2)
  {
    goto LABEL_19;
  }

  if (v14)
  {
    v15 = v14;
    memcpy(__dst, &unk_25D1D6528, sizeof(__dst));
    SVG::Presentation::inherit(v15, a3, a1[2], __dst);
    (*(*a1 + 16))(a1, a2, __dst);
    if (LODWORD(__dst[28]) != -1)
    {
      v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS_6vectorINS8_6LengthENS_9allocatorISE_EEEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v31 + LODWORD(__dst[28])))(&v30, &__dst[26]);
    }

    LODWORD(__dst[28]) = -1;
    if (LODWORD(__dst[25]) != -1)
    {
      v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v31 + LODWORD(__dst[25])))(&v30, &__dst[22]);
    }

    LODWORD(__dst[25]) = -1;
    if (DWORD2(__dst[16]) != -1)
    {
      v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v31 + DWORD2(__dst[16])))(&v30, &__dst[15] + 8);
    }

    DWORD2(__dst[16]) = -1;
    if (DWORD2(__dst[12]) != -1)
    {
      v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_5PaintEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJSA_SB_SC_EEEEEEDcSG_DpT0_;
      (*(&v31 + DWORD2(__dst[12])))(&v30, &__dst[9] + 8);
    }

    DWORD2(__dst[12]) = -1;
    if (LODWORD(__dst[5]) != -1)
    {
      v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v32 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      v33 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG12Presentation12NotSpecifiedENS9_7InheritENS9_14ValueOrKeywordINS8_2CFIPK7__CFURLEEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSA_SB_SI_EEEEEEDcSM_DpT0_;
      (*(&v31 + LODWORD(__dst[5])))(&v30, &__dst[4]);
    }
  }

  else
  {
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    while (v21 != v22)
    {
      v23 = *v21++;
      SVG::RecordBase::operator()(a1, v23, a3);
    }
  }

  v16 = std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::find<SVG::Element const*>(a1 + 3, a2);
  if (v16)
  {
    v17 = a1[4];
    v18 = *v16;
    v19 = v16[1];
    v20 = vcnt_s8(v17);
    v20.i16[0] = vaddlv_u8(v20);
    if (v20.u32[0] > 1uLL)
    {
      if (v19 >= *&v17)
      {
        v19 %= *&v17;
      }
    }

    else
    {
      v19 &= *&v17 - 1;
    }

    v24 = a1[3];
    v25 = *(v24 + 8 * v19);
    do
    {
      v26 = v25;
      v25 = *v25;
    }

    while (v25 != v16);
    if (v26 == a1 + 5)
    {
      goto LABEL_53;
    }

    v27 = v26[1];
    if (v20.u32[0] > 1uLL)
    {
      if (v27 >= *&v17)
      {
        v27 %= *&v17;
      }
    }

    else
    {
      v27 &= *&v17 - 1;
    }

    if (v27 == v19)
    {
LABEL_55:
      if (v18)
      {
        v28 = *(v18 + 8);
        goto LABEL_57;
      }
    }

    else
    {
LABEL_53:
      if (!v18)
      {
        goto LABEL_54;
      }

      v28 = *(v18 + 8);
      if (v20.u32[0] > 1uLL)
      {
        v29 = *(v18 + 8);
        if (v28 >= *&v17)
        {
          v29 = v28 % *&v17;
        }
      }

      else
      {
        v29 = v28 & (*&v17 - 1);
      }

      if (v29 != v19)
      {
LABEL_54:
        *(v24 + 8 * v19) = 0;
        v18 = *v16;
        goto LABEL_55;
      }

LABEL_57:
      if (v20.u32[0] > 1uLL)
      {
        if (v28 >= *&v17)
        {
          v28 %= *&v17;
        }
      }

      else
      {
        v28 &= *&v17 - 1;
      }

      if (v28 != v19)
      {
        *(a1[3] + 8 * v28) = v26;
        v18 = *v16;
      }
    }

    *v26 = v18;
    *v16 = 0;
    --a1[6];
    operator delete(v16);
  }
}

void SVG::RecordBase::operator()(void *a1, unint64_t **a2, const SVG::Presentation *a3)
{
  if ((*(*a1 + 80))(a1))
  {
    v7 = *a2;
    v6 = a2[1];
    while (v7 != v6)
    {
      v8 = *v7++;
      SVG::RecordBase::operator()(a1, v8, a3);
    }
  }
}

void SVG::RecordBase::processSpecificElement(SVG::RecordBase *this, unint64_t **lpsrc, const SVG::Presentation *a3)
{
  if (v6)
  {
    (*(*this + 24))(this, v6, a3);
    goto LABEL_5;
  }

  if (v7)
  {
    (*(*this + 32))(this, v7, a3);
LABEL_5:
    if ((*(*this + 80))(this))
    {
      v9 = lpsrc[4];
      v8 = lpsrc[5];
      while (v9 != v8)
      {
        v10 = *v9++;
        SVG::RecordBase::operator()(this, v10, a3);
      }
    }

    return;
  }

  if (!v11)
  {
    if (v16)
    {
      v17 = v16;
      v18 = *(*this + 48);
      v19 = this;
      v20 = a3;
    }

    else
    {
      if (v21)
      {
        v17 = v21;
        v18 = *(*this + 56);
        v19 = this;
        v20 = a3;
      }

      else
      {
        if (v22)
        {
          v17 = v22;
          v18 = *(*this + 64);
          v19 = this;
          v20 = a3;
        }

        else
        {
          if (!v23)
          {
            return;
          }

          v17 = v23;
          v18 = *(*this + 72);
          v19 = this;
          v20 = a3;
        }
      }
    }

    v18(v19, v17, v20);
    return;
  }

  v12 = v11;
  v13 = *(this + 1);
  v24 = v12[94];
  v14 = std::__hash_table<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::__unordered_map_hasher<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::hash<__CFURL const*>,std::equal_to<__CFURL const*>,true>,std::__unordered_map_equal<__CFURL const*,std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>,std::equal_to<__CFURL const*>,std::hash<__CFURL const*>,true>,std::allocator<std::__hash_value_type<__CFURL const*,std::reference_wrapper<SVG::Element const>>>>::find<__CFURL const*>(v13, &v24);
  if (v14)
  {
    v15 = v14;
    (*(*this + 40))(this, v12, a3);
    SVG::RecordBase::operator()(this, v15[3], a3);
  }
}

uint64_t SVG::Record::shouldContinue(SVG::Record *this)
{
  v1 = *(this + 8);
  if (*(v1 + 392) == 1)
  {
    v2 = *(v1 + 408);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void SVG::Record::processPresentation(SVG::Record *this, const SVG::Element *a2, const SVG::Presentation *a3)
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = *(this + 8);
  v3[1] = 0xAAAAAAAAAAAAAA00;
  SVG::StateSaverRestorer::save(v3);
  operator new();
}

uint64_t SVG::Record::processGElement(SVG::Record *this, const SVG::GElement *a2, const SVG::Presentation *a3)
{
  v3 = *(this + 8);
  v5 = *(a2 + 40);
  v6 = *(a2 + 41);
  v7 = *(a2 + 42);
  v8 = &unk_286EB9490;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = 2;
  result = SVG::Recorder::append(v3, &v8);
  if (v12 != -1)
  {
    return (off_286EBA928[v12])(&v13, &v8);
  }

  return result;
}

uint64_t SVG::Record::processUseElement(SVG::Record *this, const SVG::UseElement *a2, const SVG::Presentation *a3)
{
  v5 = *(a2 + 84);
  v6 = *(a2 + 85);
  *v15 = *(a2 + 43);
  v12 = *(a2 + 41);
  v13 = *(a2 + 40);
  v7 = SVG::Length::computeValue(v15, *(this + 21));
  *v15 = *(a2 + 44);
  v8 = SVG::Length::computeValue(v15, *(this + 22));
  *&v14[16] = v12;
  *v14 = v13;
  *&v14[32] = v5;
  *&v14[40] = v6;
  CGAffineTransformTranslate(v15, v14, v7, v8);
  v9 = *(this + 8);
  *v14 = &unk_286EB9490;
  *&v14[8] = *v15;
  *&v14[24] = *&v15[16];
  *&v14[40] = *&v15[32];
  *v15 = &unk_286EB9490;
  v10 = *&v15[16];
  *&v15[8] = *&v14[8];
  *&v15[24] = v10;
  *&v15[40] = *&v14[40];
  v16 = 2;
  result = SVG::Recorder::append(v9, v15);
  if (v16 != -1)
  {
    return (off_286EBA928[v16])(&v17, v15);
  }

  return result;
}

void SVG::Record::processImageElement(SVG::Record *this, CGImageRef *a2, const SVG::Presentation *a3)
{
  if (*(a3 + 143) == 2)
  {
    if (!*(a3 + 142))
    {
      if (a2[96])
      {
        *&v5 = -1;
        *(&v5 + 1) = -1;
        v26 = v5;
        v27 = v5;
        v25 = v5;
        v28 = 0xAAAAAAAAAAAAAAAALL;
        *&v5 = *(this + 19);
        v6 = *(this + 20);
        v7 = *(this + 21);
        v8 = *(this + 22);
        SVG::ImageElement::totalTransform(a2, *&v5, &v25);
        if (v28 == 1)
        {
          v24 = 0xAAAAAAAAAAAAAAAALL;
          memset(&v23[2], 255, 32);
          v23[4] = xmmword_25D1D68B8;
          v23[0] = xmmword_25D1D6878;
          v23[1] = unk_25D1D6888;
          v9 = *(this + 8);
          v19 = v25;
          v20 = v26;
          v21 = v27;
          SVG::AffineTransformApplier::AffineTransformApplier(v23, v9, &v19);
          v10 = *(this + 8);
          v11 = a2[96];
          Width = CGImageGetWidth(v11);
          Height = CGImageGetHeight(a2[96]);
          if (v11)
          {
            CFRetain(v11);
            v14 = v11;
          }

          else
          {
            v14 = 0;
          }

          *&v18 = Width;
          *(&v18 + 1) = Height;
          *&v19 = &unk_286EB9448;
          *(&v19 + 1) = v14;
          v20 = 0uLL;
          v21 = v18;
          v22 = 3;
          SVG::Recorder::append(v10, &v19);
          if (v22 != -1)
          {
            (off_286EBA928[v22])(&v29, &v19);
          }

          v22 = -1;
          SVG::AffineTransformApplier::~AffineTransformApplier(v23);
        }
      }
    }
  }

  else
  {
    v15 = std::__throw_bad_variant_access[abi:nn200100]();
    SVG::Record::processShapeElement(v15, v16, v17);
  }
}

void SVG::Record::processShapeElement(SVG::Record *this, const SVG::ShapeElement *a2, const SVG::Presentation *a3)
{
  if (*(a3 + 143) != 2)
  {
    goto LABEL_73;
  }

  if (*(a3 + 142))
  {
    return;
  }

  v71[0] = 0xAAAAAAAAAAAAAAAALL;
  (*(*a2 + 32))(v71, a2, *(this + 19), *(this + 20), *(this + 21), *(this + 22));
  if (!v71[0])
  {
    return;
  }

  v9 = (*(*a2 + 40))(a2, *(this + 19), *(this + 20), *(this + 21), *(this + 22));
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v69 = unk_25D1D6818;
  memset(v70, 170, sizeof(v70));
  memset(v66, 170, sizeof(v66));
  v67 = unk_25D1D67F8;
  v68 = xmmword_25D1D6808;
  v61 = xmmword_25D1D6788;
  v62 = unk_25D1D6798;
  v63 = xmmword_25D1D67A8;
  v64 = unk_25D1D67B8;
  v65 = xmmword_25D1D67C8;
  *__src = xmmword_25D1D6768;
  v60 = unk_25D1D6778;
  if (*(a3 + 50) != 2)
  {
    goto LABEL_73;
  }

  if (*(a3 + 54) != 2)
  {
    goto LABEL_73;
  }

  memset(v50, 170, sizeof(v50));
  v51 = unk_25D1D6818;
  v52 = xmmword_25D1D67C8;
  v53 = xmmword_25D1D6808;
  if (*(a3 + 57) != 2)
  {
    goto LABEL_73;
  }

  v13 = *(this + 14) + *(this + 13) - 1;
  *&v47[8] = *(this + 10);
  *v47 = *(this + 19);
  SVG::ApplyPresentationFill::ApplyPresentationFill(__src, *(this + 8), *(this + 1), *(this + 15), *(this + 16), a3 + 152, *(a3 + 56) == 1, v71[0], *(a3 + 26), v9, v6, v7, v8, *v47, *(this + 21), *(this + 22), *(*(this + 10) + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13);
  phase = *(this + 8);
  *&cf = v71[0];
  if (v71[0])
  {
    CFRetain(v71[0]);
  }

  std::visit[abi:nn200100]<SVG::DrawShapeOfType,std::variant<SVG::ApplyPresentationFill::None,SVG::ApplyPresentationFill::FillPath,SVG::ApplyPresentationFill::Gradient> const&,void>(&phase, &v67);
  if (cf)
  {
    CFRelease(cf);
  }

  SVG::ApplyPresentationFill::~ApplyPresentationFill(__src);
  v14 = v71[0];
  if (v71[0])
  {
    CFRetain(v71[0]);
  }

  phase = NAN;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  cf = v15;
  v58 = v15;
  if (*(a3 + 120) != 2 || *(a3 + 112) != 2)
  {
    goto LABEL_73;
  }

  v16 = *(this + 21);
  v17 = SVG::Length::computeValue((a3 + 464), sqrt(*(this + 22) * *(this + 22) + v16 * v16) / 1.41421356);
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__src = v18;
  v60 = v18;
  LOBYTE(__src[0]) = 0;
  BYTE8(v60) = 0;
  if ((*(a3 + 440) & 1) == 0 || (__src[0] = 0, __src[1] = 0, *&v60 = 0, BYTE8(v60) = 1, v19 = *(a3 + 52), v20 = *(a3 + 53), v19 == v20))
  {
LABEL_35:
    v36 = 0;
    v37 = 0;
    phase = v17;
    LOBYTE(cf) = 0;
  }

  else
  {
    v49 = v11;
    v21 = v10;
    v22 = v9;
    v23 = 0.0;
    do
    {
      v24 = SVG::Length::computeValue(v19, v16);
      if (v24 < 0.0)
      {
        v36 = 0;
        v37 = 0;
        phase = v17;
        LOBYTE(cf) = 0;
        v9 = v22;
        v10 = v21;
        v11 = v49;
        goto LABEL_36;
      }

      v25 = v24;
      v26 = __src[1];
      if (__src[1] >= v60)
      {
        v28 = __src[0];
        v29 = __src[1] - __src[0];
        v30 = (__src[1] - __src[0]) >> 3;
        v31 = v30 + 1;
        if ((v30 + 1) >> 61)
        {
          goto LABEL_74;
        }

        v32 = v60 - __src[0];
        if ((v60 - __src[0]) >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(__src, v33);
        }

        *(8 * v30) = v24;
        v27 = (8 * v30 + 8);
        memcpy(0, v28, v29);
        v34 = __src[0];
        __src[0] = 0;
        __src[1] = v27;
        *&v60 = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *__src[1] = v24;
        v27 = v26 + 8;
      }

      v23 = v23 + v25;
      __src[1] = v27;
      v19 = (v19 + 16);
    }

    while (v19 != v20);
    v35 = v23 == 0.0;
    v9 = v22;
    v10 = v21;
    v11 = v49;
    if (v35)
    {
      goto LABEL_35;
    }

    phase = v17;
    LOBYTE(cf) = 0;
    BYTE8(v58) = 0;
    if ((BYTE8(v60) & 1) == 0)
    {
      goto LABEL_44;
    }

    cf = 0uLL;
    *&v58 = 0;
    if (v27 != __src[0])
    {
      std::vector<double>::__vallocate[abi:nn200100](&cf, (v27 - __src[0]) >> 3);
    }

    v36 = 1;
    v37 = 1;
  }

LABEL_36:
  BYTE8(v58) = v36;
  if ((BYTE8(v60) & 1) != 0 && __src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
    if ((BYTE8(v58) & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_41:
    CopyByDashingPath = CGPathCreateCopyByDashingPath(v71[0], 0, phase, cf, (*(&cf + 1) - cf) >> 3);
    if (v14)
    {
      CFRelease(v14);
    }

    v14 = CopyByDashingPath;
    goto LABEL_44;
  }

  if (v37)
  {
    goto LABEL_41;
  }

LABEL_44:
  if (v14)
  {
    if (*(a3 + 123) != 2)
    {
      goto LABEL_73;
    }

    v39 = *(a3 + 122) >= 2u ? kCGLineCapSquare : *(a3 + 122);
    if (*(a3 + 125) != 2)
    {
      goto LABEL_73;
    }

    v40 = *(a3 + 124);
    v41 = v40 == 2 ? kCGLineJoinBevel : v40 == 1;
    if (*(a3 + 128) != 2 || *(a3 + 140) != 2)
    {
      goto LABEL_73;
    }

    v42 = *(a3 + 63);
    v43 = SVG::Length::computeValue((a3 + 544), sqrt(*(this + 22) * *(this + 22) + *(this + 21) * *(this + 21)) / 1.41421356);
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v14, 0, v43, v39, v41, v42);
    if (CopyByStrokingPath)
    {
      *&v70[32] = 0xAAAAAAAAAAAAAAAALL;
      v69 = v51;
      *v70 = v50[3];
      *&v70[16] = v50[2];
      v66[0] = v50[1];
      v66[1] = v50[0];
      v67 = unk_25D1D67F8;
      v68 = v53;
      v61 = xmmword_25D1D6788;
      v62 = unk_25D1D6798;
      v63 = xmmword_25D1D67A8;
      v64 = unk_25D1D67B8;
      v65 = v52;
      *__src = xmmword_25D1D6768;
      v60 = unk_25D1D6778;
      if (*(a3 + 100) == 2 && *(a3 + 132) == 2)
      {
        v45 = CopyByStrokingPath;
        v46 = *(this + 14) + *(this + 13) - 1;
        *&v48[8] = *(this + 10);
        *v48 = *(this + 19);
        SVG::ApplyPresentationFill::ApplyPresentationFill(__src, *(this + 8), *(this + 1), *(this + 15), *(this + 16), a3 + 352, 0, CopyByStrokingPath, *(a3 + 65), v9, v10, v11, v12, *v48, *(this + 21), *(this + 22), *(*(this + 10) + ((v46 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v46);
        v54 = *(this + 8);
        v55 = v45;
        CFRetain(v45);
        std::visit[abi:nn200100]<SVG::DrawShapeOfType,std::variant<SVG::ApplyPresentationFill::None,SVG::ApplyPresentationFill::FillPath,SVG::ApplyPresentationFill::Gradient> const&,void>(&v54, &v67);
        if (v55)
        {
          CFRelease(v55);
        }

        SVG::ApplyPresentationFill::~ApplyPresentationFill(__src);
        CFRelease(v45);
        goto LABEL_61;
      }

LABEL_73:
      std::__throw_bad_variant_access[abi:nn200100]();
LABEL_74:
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }
  }

LABEL_61:
  if (BYTE8(v58) == 1 && cf)
  {
    *(&cf + 1) = cf;
    operator delete(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v71[0])
  {
    CFRelease(v71[0]);
  }
}

void std::visit[abi:nn200100]<SVG::DrawShapeOfType,std::variant<SVG::ApplyPresentationFill::None,SVG::ApplyPresentationFill::FillPath,SVG::ApplyPresentationFill::Gradient> const&,void>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    SVG::RecordBase::~RecordBase(v3);
  }

  else
  {
    v4 = a1;
    v5[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::DrawShapeOfType> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::ApplyPresentationFill::None,std::__variant_detail::_Trait::FillPath,std::__variant_detail::_Trait::Gradient> const&>;
    v5[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::DrawShapeOfType> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::ApplyPresentationFill::None,std::__variant_detail::_Trait::FillPath,std::__variant_detail::_Trait::Gradient> const&>;
    v5[2] = std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::DrawShapeOfType> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::ApplyPresentationFill::None,std::__variant_detail::_Trait::FillPath,std::__variant_detail::_Trait::Gradient> const&>;
    (v5[v2])(&v4);
  }
}

void SVG::RecordBase::~RecordBase(SVG::RecordBase *this)
{
  *this = &unk_286EB9DC8;
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(this + 24);
}

{
  *this = &unk_286EB9DC8;
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(this + 24);

  JUMPOUT(0x25F894240);
}

void SVG::Record::~Record(SVG::Record *this)
{
  *this = &unk_286EB9610;
  std::deque<SVG::ApplyPresentationState>::~deque[abi:nn200100](this + 9);
  *this = &unk_286EB9DC8;
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(this + 24);
}

{
  *this = &unk_286EB9610;
  std::deque<SVG::ApplyPresentationState>::~deque[abi:nn200100](this + 9);
  *this = &unk_286EB9DC8;
  std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::~__hash_table(this + 24);

  JUMPOUT(0x25F894240);
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::DrawShapeOfType> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::ApplyPresentationFill::None,std::__variant_detail::_Trait::FillPath,std::__variant_detail::_Trait::Gradient> const&>(void ***a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = v2[5] + v2[4] - 1;
  v4 = *(*(v2[1] + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7) + 120);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v7[0] = &unk_286EB9550;
  v7[1] = v5;
  v8 = v4;
  v9 = 4;
  SVG::Recorder::append(v2, v7);
  if (v9 != -1)
  {
    (off_286EBA928[v9])(&v10, v7);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::DrawShapeOfType> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::ApplyPresentationFill::None,std::__variant_detail::_Trait::FillPath,std::__variant_detail::_Trait::Gradient> const&>(uint64_t *a1)
{
  v1 = *a1;
  v2[1] = 0xAAAAAAAAAAAAAA00;
  v2[0] = *v1;
  SVG::StateSaverRestorer::save(v2);
  if (*(v1 + 8))
  {
    CFRetain(*(v1 + 8));
  }

  operator new();
}

void SVG::ClipToPaths::LeafClipNode::~LeafClipNode(SVG::ClipToPaths::LeafClipNode *this)
{
  *this = &unk_286EB9D28;
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_286EB9D48;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

{
  *this = &unk_286EB9D28;
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_286EB9D48;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x25F894240);
}

void SVG::ClipToPaths::BaseClipNode::~BaseClipNode(SVG::ClipToPaths::BaseClipNode *this)
{
  *this = &unk_286EB9D48;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

{
  *this = &unk_286EB9D48;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x25F894240);
}

void std::__shared_ptr_pointer<SVG::ClipToPaths::LeafClipNode  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F894240);
}

uint64_t std::__shared_ptr_pointer<SVG::ClipToPaths::LeafClipNode  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SVG::ClipToPaths::LeafClipNode  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ***std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::DrawShapeOfType::operator()(SVG::ApplyPresentationFill::Gradient const&)::{lambda(std::vector<SVG::DrawLinearGradient> const&)#1},SVG::DrawShapeOfType::operator()(SVG::ApplyPresentationFill::Gradient const&)::{lambda(std::vector<SVG::DrawRadialGradient> const&)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>> const&>(uint64_t ***result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = **result;
    do
    {
      v5 = *v4;
      v6 = *(v2 + 8);
      v9[0] = &unk_286EB9888;
      v9[1] = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = *(v2 + 16);
      v8 = *(v2 + 32);
      v12 = *(v2 + 48);
      v10 = v7;
      v11 = v8;
      v13 = 5;
      result = SVG::Recorder::append(v5, v9);
      if (v13 != -1)
      {
        result = (off_286EBA928[v13])(&v14, v9);
      }

      v2 += 56;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::DrawShapeOfType::operator()(SVG::ApplyPresentationFill::Gradient const&)::{lambda(std::vector<SVG::DrawLinearGradient> const&)#1},SVG::DrawShapeOfType::operator()(SVG::ApplyPresentationFill::Gradient const&)::{lambda(std::vector<SVG::DrawRadialGradient> const&)#1}>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::vector<SVG::DrawLinearGradient>,std::vector<SVG::DrawRadialGradient>> const&>(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *(*result + 8);
    do
    {
      v5 = *v4;
      v6 = *(v2 + 8);
      v10[0] = &unk_286EB9840;
      v10[1] = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = *(v2 + 16);
      v8 = *(v2 + 32);
      v9 = *(v2 + 48);
      v14 = *(v2 + 64);
      v12 = v8;
      v13 = v9;
      v11 = v7;
      v15 = 6;
      result = SVG::Recorder::append(v5, v10);
      if (v15 != -1)
      {
        result = (off_286EBA928[v15])(&v16, v10);
      }

      v2 += 72;
    }

    while (v2 != v3);
  }

  return result;
}

void *std::__hash_table<SVG::Element const*,std::hash<SVG::Element const*>,std::equal_to<SVG::Element const*>,std::allocator<SVG::Element const*>>::find<SVG::Element const*>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
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

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

__n128 std::__function::__func<SVG::Record::processPresentation(SVG::Element const&,SVG::Presentation const&)::$_0,std::allocator<SVG::Record::processPresentation(SVG::Element const&,SVG::Presentation const&)::$_0>,void ()(SVG::ApplyPresentationState const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EBA9A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<SVG::Record::processPresentation(SVG::Element const&,SVG::Presentation const&)::$_0,std::allocator<SVG::Record::processPresentation(SVG::Element const&,SVG::Presentation const&)::$_0>,void ()(SVG::ApplyPresentationState const&)>::operator()(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 11);
  v6 = *(v4 + 10);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v8 = *(v4 + 13);
  v9 = *(v4 + 14) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x100)
    {
      v10 = *(v4 + 12);
      v11 = *(v4 + 9);
      if (v5 - v6 < (v10 - v11))
      {
        operator new();
      }

      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v10 - v11) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::Recorder::State *>>(v12);
    }

    *(v4 + 13) = v8 - 256;
    v18 = *v6;
    *(v4 + 10) = v6 + 8;
    std::__split_buffer<SVG::Recorder::State *>::emplace_back<SVG::Recorder::State *&>(v4 + 9, &v18);
    v6 = *(v4 + 10);
    v9 = *(v4 + 14) + *(v4 + 13);
  }

  *(*&v6[(v9 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v9) = *a2;
  ++*(v4 + 14);
  SVG::RecordBase::processSpecificElement(v4, *(a1 + 16), *(a1 + 24));
  v14 = *(v4 + 10);
  v13 = *(v4 + 11);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 32 * (v13 - v14) - 1;
  }

  v16 = *(v4 + 13);
  v17 = *(v4 + 14) - 1;
  *(v4 + 14) = v17;
  if ((v15 - (v17 + v16)) >= 0x200)
  {
    operator delete(*(v13 - 8));
    *(v4 + 11) -= 8;
  }
}

uint64_t std::__function::__func<SVG::Record::processPresentation(SVG::Element const&,SVG::Presentation const&)::$_0,std::allocator<SVG::Record::processPresentation(SVG::Element const&,SVG::Presentation const&)::$_0>,void ()(SVG::ApplyPresentationState const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double SVG::PathElement::PathElement(uint64_t a1, uint64_t x1_0, void *a3)
{
  v3 = a3;
  v4 = a1;
  v5 = SVG::ShapeElement::ShapeElement(a1, x1_0, a3);
  *v5 = &unk_286EB9BE0;
  *(v5 + 688) = 0u;
  std::string::basic_string[abi:nn200100]<0>(__p, "d");
  std::string::basic_string[abi:nn200100]<0>(&v114, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(v3, __p, &v114);
  if (SBYTE7(v115) < 0)
  {
    operator delete(v114);
  }

  if (SHIBYTE(p_cf) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
LABEL_62:
      std::string::basic_string[abi:nn200100]<0>(__p, "pathLength");
      std::string::basic_string[abi:nn200100]<0>(&v114, "http://www.w3.org/2000/svg");
      v46 = SVG::Element::findInAttributeMap(v3, __p, &v114);
      if (SBYTE7(v115) < 0)
      {
        operator delete(v114);
      }

      if (SHIBYTE(p_cf) < 0)
      {
        operator delete(__p[0]);
      }

      if (v46)
      {
        v48 = SVG::consumeNumberAlone((v46 + 8));
        if (v49)
        {
          *(v4 + 696) = v48;
        }
      }

      return result;
    }
  }

  else if (!v6)
  {
    goto LABEL_62;
  }

  v7 = 0;
  v8 = (v4 + 688);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  do
  {
    v9 = v7;
    v7 = SVG::consumeWsp(v6 + 8, v7);
  }

  while ((v10 & 1) != 0);
  v108 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v106 = v11;
  v107 = v11;
  v116 = 0xAAAAAAAAAAAAAAAALL;
  v114 = v11;
  v115 = v11;
  SVG::consumeMovetoDrawtoCommandGroup(&v114, (v6 + 8), v9);
  if (v116 == 1)
  {
    v51 = (v4 + 688);
    v52 = v3;
    v53 = v4;
    memset(v113, 0, 24);
    v12 = *(&v115 + 1);
    v14 = *(&v114 + 1);
    v13 = v114;
    if (v114 != *(&v114 + 1))
    {
      v15 = 0;
      do
      {
        if (v15 >= *&v113[1])
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *&v113[0]) >> 4);
          v17 = v16 + 1;
          if (v16 + 1 > 0x555555555555555)
          {
LABEL_70:
            std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
          }

          if (0x5555555555555556 * ((*&v113[1] - *&v113[0]) >> 4) > v17)
          {
            v17 = 0x5555555555555556 * ((*&v113[1] - *&v113[0]) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*&v113[1] - *&v113[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v18 = 0x555555555555555;
          }

          else
          {
            v18 = v17;
          }

          v57 = v113;
          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>>(v18);
          }

          v19 = 48 * v16;
          *v19 = 0;
          *(v19 + 40) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(48 * v16, v13);
          v15 = 48 * v16 + 48;
          v20 = v19 + *&v113[0] - *(&v113[0] + 1);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>,std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*>(*&v113[0], *(&v113[0] + 1), v20);
          v21 = *&v113[0];
          v22 = *&v113[1];
          *&v113[0] = v20;
          *(&v113[0] + 1) = v15;
          *&v113[1] = 0;
          p_cf = v21;
          v56 = v22;
          __p[0] = v21;
          __p[1] = v21;
          std::__split_buffer<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::~__split_buffer(__p);
        }

        else
        {
          *v15 = 0;
          *(v15 + 40) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(v15, v13);
          v15 += 48;
        }

        *(&v113[0] + 1) = v15;
        v13 += 48;
      }

      while (v13 != v14);
    }

    while (1)
    {
      v33 = v12;
      do
      {
        v34 = v33;
        v33 = SVG::consumeWsp(v6 + 8, v33);
      }

      while ((v35 & 1) != 0);
      SVG::consumeMovetoDrawtoCommandGroup(__p, (v6 + 8), v34);
      if (v116 == v57)
      {
        if (v116)
        {
          std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__vdeallocate(&v114);
          v114 = *__p;
          v36 = p_cf;
          __p[1] = 0;
          p_cf = 0;
          __p[0] = 0;
          *&v115 = v36;
          *(&v115 + 1) = v56;
        }
      }

      else if (v116)
      {
        v117[0] = &v114;
        std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](v117);
        LOBYTE(v116) = 0;
      }

      else
      {
        v114 = *__p;
        v37 = p_cf;
        __p[1] = 0;
        p_cf = 0;
        __p[0] = 0;
        *&v115 = v37;
        *(&v115 + 1) = v56;
        LOBYTE(v116) = 1;
      }

      if (v57 == 1)
      {
        v117[0] = __p;
        std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](v117);
      }

      if (v116 != 1)
      {
        break;
      }

      v12 = *(&v115 + 1);
      v24 = *(&v114 + 1);
      v23 = v114;
      if (v114 != *(&v114 + 1))
      {
        v25 = *(&v113[0] + 1);
        do
        {
          if (v25 >= *&v113[1])
          {
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *&v113[0]) >> 4);
            if (v26 + 1 > 0x555555555555555)
            {
              goto LABEL_70;
            }

            v27 = 0x5555555555555556 * ((*&v113[1] - *&v113[0]) >> 4);
            if (v27 <= v26 + 1)
            {
              v27 = v26 + 1;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&v113[1] - *&v113[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v28 = 0x555555555555555;
            }

            else
            {
              v28 = v27;
            }

            v57 = v113;
            if (v28)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>>(v28);
            }

            v29 = 16 * ((v25 - *&v113[0]) >> 4);
            *v29 = 0;
            *(v29 + 40) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(48 * v26, v23);
            v25 = 48 * v26 + 48;
            v30 = 48 * v26 + *&v113[0] - *(&v113[0] + 1);
            std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>,std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*>(*&v113[0], *(&v113[0] + 1), v30);
            v31 = *&v113[0];
            v32 = *&v113[1];
            *&v113[0] = v30;
            *(&v113[0] + 1) = v25;
            *&v113[1] = 0;
            p_cf = v31;
            v56 = v32;
            __p[0] = v31;
            __p[1] = v31;
            std::__split_buffer<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::~__split_buffer(__p);
          }

          else
          {
            *v25 = 0;
            *(v25 + 40) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(v25, v23);
            v25 += 48;
          }

          *(&v113[0] + 1) = v25;
          v23 += 48;
        }

        while (v23 != v24);
      }
    }

    v38 = *&v113[0];
    *v112 = *&v113[0];
    *&v112[8] = *(v113 + 8);
    memset(v113, 0, 24);
    __p[1] = 0;
    p_cf = 0;
    __p[0] = 0;
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__init_with_size[abi:nn200100]<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*,std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*>(__p, v38, *&v112[8], 0xAAAAAAAAAAAAAAABLL * ((*&v112[8] - v38) >> 4));
    v39 = __p[0];
    v40 = __p[1];
    v106 = *__p;
    v41 = p_cf;
    p_cf = 0;
    v56 = v12;
    __p[0] = 0;
    __p[1] = 0;
    *&v107 = v41;
    *(&v107 + 1) = v12;
    LOBYTE(v108) = 1;
    v117[0] = __p;
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](v117);
    v117[0] = v112;
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](v117);
    __p[0] = v113;
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](__p);
    if (v116)
    {
      __p[0] = &v114;
      std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](__p);
    }

    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__vdeallocate(&v109);
    v109 = v39;
    v110 = v40;
    v111 = v41;
    *&v107 = 0;
    v106 = 0uLL;
    __p[0] = &v106;
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](__p);
    v3 = v52;
    v4 = v53;
    v8 = v51;
  }

  cf = CGPathCreateMutable();
  v113[0] = *MEMORY[0x277CBF348];
  *v112 = v113[0];
  *&v114 = -256;
  *(&v114 + 1) = -1;
  *&v115 = 0xAAAAAAAAAAAAAA00;
  *&v106 = -256;
  *(&v106 + 1) = -1;
  *&v107 = 0xAAAAAAAAAAAAAA00;
  v104 = v113;
  __p[0] = &v114;
  __p[1] = &v106;
  p_cf = &cf;
  v56 = v113;
  v57 = v112;
  v58 = &v114;
  v59 = &v106;
  v60 = v113;
  v61 = &v104;
  v62 = &cf;
  v63 = v112;
  v64 = &v114;
  v65 = &v106;
  v66 = v113;
  v67 = &v104;
  v68 = &cf;
  v69 = &v114;
  v70 = &v106;
  v71 = v113;
  v72 = &v104;
  v73 = &cf;
  v74 = &v114;
  v75 = &v106;
  v76 = v113;
  v77 = &v104;
  v78 = &cf;
  v79 = &v106;
  v80 = v113;
  v81 = &v104;
  v82 = &v114;
  v83 = &cf;
  v84 = &v106;
  v85 = v113;
  v86 = &v114;
  v87 = &v104;
  v88 = &cf;
  v89 = &v114;
  v90 = v113;
  v91 = &v104;
  v92 = &v106;
  v93 = &cf;
  v94 = &v114;
  v95 = v113;
  v96 = &v106;
  v97 = &v104;
  v98 = &cf;
  v99 = &v114;
  v100 = &v106;
  v101 = v113;
  v102 = &v104;
  v103 = &cf;
  v43 = v109;
  v42 = v110;
  if (v109 == v110)
  {
LABEL_56:
    v45 = cf;
    if (cf)
    {
      CFRetain(cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    __p[0] = &v109;
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](__p);
    if (*v8)
    {
      CFRelease(*v8);
    }

    *v8 = v45;
    goto LABEL_62;
  }

  while (1)
  {
    v44 = v43[10];
    if (v44 == -1)
    {
      break;
    }

    v117[0] = __p;
    (*(&off_286EBABA8 + v44))(v117, v43);
    v43 += 12;
    if (v43 == v42)
    {
      goto LABEL_56;
    }
  }

  v50 = std::__throw_bad_variant_access[abi:nn200100]();
  return SVG::PathElement::boundingBox(v50, v118);
}

double SVG::PathElement::boundingBox(SVG::PathElement *this, CGRect a2)
{
  v2 = *(this + 86);
  if (v2)
  {
    CFRetain(*(this + 86));
    PathBoundingBox = CGPathGetPathBoundingBox(v2);
    CFRelease(v2);
  }

  else
  {
    PathBoundingBox = CGPathGetPathBoundingBox(0);
  }

  return *&PathBoundingBox;
}

CFTypeRef SVG::PathElement::path@<X0>(SVG::PathElement *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, void *a3@<X8>)
{
  result = *(this + 86);
  *a3 = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void SVG::PathElement::~PathElement(SVG::PathElement *this)
{
  *this = &unk_286EB9BE0;
  v2 = *(this + 86);
  if (v2)
  {
    CFRelease(v2);
  }

  SVG::GElement::~GElement(this);
}

{
  *this = &unk_286EB9BE0;
  v2 = *(this + 86);
  if (v2)
  {
    CFRelease(v2);
  }

  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

_BYTE *SVG::consumeMovetoDrawtoCommandGroup(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = v4;
  v9 = v4;
  v8[0] = v4;
  result = SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(v8, a2, a3, 0x4Du, 0x6Du, SVG::consumeMovetoArgumentSequence);
  if (BYTE8(v9))
  {
    v6 = 0;
    v7 = 0uLL;
    *&v9 = &v6;
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>>(1uLL);
  }

  *a1 = 0;
  a1[32] = 0;
  return result;
}

_BYTE *SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(_BYTE *result, uint64_t a2, unint64_t a3, unsigned __int8 a4, unsigned __int8 a5, void *(*a6)(__int128 *__return_ptr, uint64_t, unint64_t))
{
  v6 = result;
  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7 > a3 && ((v10 = a5, v8 >= 0) ? (v11 = a2) : (v11 = *a2), (v12 = *(v11 + a3), v12 != a4) ? (v13 = v12 == a5) : (v13 = 1), v13))
  {
    v15 = a3 + 1;
    do
    {
      v16 = v15;
      v15 = SVG::consumeWsp(a2, v15);
    }

    while ((v17 & 1) != 0);
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21 = v18;
    v22 = v18;
    result = a6(&v21, a2, v16);
    if (v23)
    {
      v19 = v22;
      *v6 = v21;
      *(v6 + 1) = v19;
      v6[32] = v12 != v10;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      *v6 = 0;
    }

    v6[40] = v20;
  }

  else
  {
    *result = 0;
    result[40] = 0;
  }

  return result;
}

void SVG::consumeOneOrMoreGeneric<CGPoint>(_BYTE *a1, uint64_t *a2, unint64_t a3)
{
  v4[0] = -1;
  v4[1] = -1;
  v4[2] = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeCoordinatePair(a2, a3, v4);
  if (v5)
  {
    operator new();
  }

  *a1 = 0;
  a1[32] = 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void *std::vector<CGPoint>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CGPoint>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<CGPoint>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>,std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = result;
    do
    {
      *a3 = 0;
      *(a3 + 40) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(a3, v8);
      v8 += 48;
      a3 += 48;
    }

    while (v8 != a2);
    do
    {
      v9 = *(v7 + 40);
      if (v9 != -1)
      {
        result = (*(&off_286EBAA18 + v9))(&v10, v7);
      }

      *(v7 + 40) = -1;
      v7 += 48;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4 != -1)
  {
    result = (*(&off_286EBAA18 + v4))(&v7, result);
  }

  *(v3 + 40) = -1;
  v5 = *(a2 + 40);
  if (v5 != -1)
  {
    v6 = v3;
    result = (*(&off_286EBAA68 + v5))(&v6, a2);
    *(v3 + 40) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSJ_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSL_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &&>(uint64_t *a1, __n128 *a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v4 = a2[1].n128_u64[1];
  *(v2 + 32) = a2[2].n128_u8[0];
  *(v2 + 24) = v4;
  return result;
}

uint64_t std::__split_buffer<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 48;
      *(a1 + 16) = v3 - 48;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (*(&off_286EBAA18 + v5))(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void SVG::consumeDrawtoCommand(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6 > a3)
  {
    v8 = v7 >= 0 ? a2 : *a2;
    if ((*(v8 + a3) | 0x20) == 0x7A)
    {
      __dst[0] = (a3 + 1);
      DWORD2(v42) = 0;
      *a1 = 0;
      *(a1 + 40) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(a1, __dst);
      *(a1 + 48) = 1;
      if (DWORD2(v42) != -1)
      {
        (*(&off_286EBAA18 + DWORD2(v42)))(v35, __dst);
      }

      return;
    }
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v9;
  v42 = v9;
  *__dst = v9;
  SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(__dst, a2, a3, 0x4Cu, 0x6Cu, SVG::consumeLinetoArgumentSequence);
  if (BYTE8(v42) == 1)
  {
    v11 = __dst[0];
    v10 = __dst[1];
    v35[0] = *(&v41 + 1);
    LOBYTE(v35[1]) = v42;
    __dst[0] = 0;
    __dst[1] = 0;
    *&v41 = 0;
    if (v10 != v11)
    {
      std::vector<CGPoint>::__vallocate[abi:nn200100](__dst, (v10 - v11) >> 4);
    }

    *(&v41 + 1) = v35[0];
    LOBYTE(v42) = v35[1];
    v12 = 2;
    goto LABEL_43;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v13;
  v42 = v13;
  *__dst = v13;
  SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(__dst, a2, a3, 0x48u, 0x68u, SVG::consumeHorizontalLinetoArgumentSequence);
  if (BYTE8(v42) == 1)
  {
    v11 = __dst[0];
    v14 = __dst[1];
    v35[0] = *(&v41 + 1);
    LOBYTE(v35[1]) = v42;
    __dst[0] = 0;
    __dst[1] = 0;
    *&v41 = 0;
    if (v14 != v11)
    {
      std::vector<double>::__vallocate[abi:nn200100](__dst, (v14 - v11) >> 3);
    }

    *(&v41 + 1) = v35[0];
    LOBYTE(v42) = v35[1];
    v12 = 3;
    goto LABEL_43;
  }

  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v15;
  v42 = v15;
  *__dst = v15;
  SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(__dst, a2, a3, 0x56u, 0x76u, SVG::consumeVerticalLinetoArgumentSequence);
  if (BYTE8(v42) == 1)
  {
    v11 = __dst[0];
    v16 = __dst[1];
    v35[0] = *(&v41 + 1);
    LOBYTE(v35[1]) = v42;
    __dst[0] = 0;
    __dst[1] = 0;
    *&v41 = 0;
    if (v16 != v11)
    {
      std::vector<double>::__vallocate[abi:nn200100](__dst, (v16 - v11) >> 3);
    }

    *(&v41 + 1) = v35[0];
    LOBYTE(v42) = v35[1];
    v12 = 4;
    goto LABEL_43;
  }

  v17 = *(a2 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 8);
  }

  if (v17 > a3)
  {
    v19 = v18 >= 0 ? a2 : *a2;
    if ((*(v19 + a3) | 0x20) == 0x63)
    {
      v20 = a3 + 1;
      do
      {
        v21 = v20;
        v20 = SVG::consumeWsp(a2, v20);
      }

      while ((v22 & 1) != 0);
      *&v23 = -1;
      *(&v23 + 1) = -1;
      v41 = v23;
      v42 = v23;
      *__dst = v23;
      v43 = 0xAAAAAAAAAAAAAAAALL;
      v44 = 0xAAAAAAAAAAAAAAAALL;
      SVG::consumeCurvetoArgument(a2, v21, __dst);
      if (v44 == 1)
      {
        operator new();
      }
    }
  }

  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v24;
  v42 = v24;
  *__dst = v24;
  SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(__dst, a2, a3, 0x53u, 0x73u, SVG::consumeSmoothCurvetoArgumentSequence);
  if (BYTE8(v42) == 1)
  {
    v11 = __dst[0];
    v25 = __dst[1];
    v35[0] = *(&v41 + 1);
    LOBYTE(v35[1]) = v42;
    __dst[0] = 0;
    __dst[1] = 0;
    *&v41 = 0;
    v26 = v25 - v11;
    if (v25 != v11)
    {
      if (!((v26 >> 5) >> 59))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<CGPoint,2ul>>>(v26 >> 5);
      }

      goto LABEL_60;
    }

    *(&v41 + 1) = v35[0];
    LOBYTE(v42) = v35[1];
    v12 = 6;
  }

  else
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41 = v27;
    v42 = v27;
    *__dst = v27;
    SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(__dst, a2, a3, 0x51u, 0x71u, SVG::consumeQuadraticBezierCurvetoArgumentSequence);
    if (BYTE8(v42) != 1)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41 = v30;
      v42 = v30;
      *__dst = v30;
      SVG::consumeSmoothQuadraticBezierCurveto(__dst, a2, a3);
      if (BYTE8(v42) == 1)
      {
        v35[0] = 0;
        v35[1] = 0;
        v36 = 0;
        v11 = __dst[0];
        if (__dst[1] != __dst[0])
        {
          std::vector<CGPoint>::__vallocate[abi:nn200100](v35, (__dst[1] - __dst[0]) >> 4);
        }

        v37 = *(&v41 + 1);
        v38 = v42;
        v31 = 8;
      }

      else
      {
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v41 = v32;
        v42 = v32;
        *__dst = v32;
        SVG::consumeEllipticalArc(__dst, a2, a3);
        if (BYTE8(v42) != 1)
        {
          *a1 = 0;
          *(a1 + 48) = 0;
          return;
        }

        v35[0] = 0;
        v35[1] = 0;
        v36 = 0;
        v11 = __dst[0];
        if (__dst[1] != __dst[0])
        {
          v33 = 0xAAAAAAAAAAAAAAABLL * ((__dst[1] - __dst[0]) >> 4);
          if (v33 <= 0x555555555555555)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::EllipticalArcArgument>>(v33);
          }

          std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
        }

        v37 = *(&v41 + 1);
        v38 = v42;
        v31 = 9;
      }

      v39 = v31;
      *a1 = 0;
      *(a1 + 40) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(a1, v35);
      *(a1 + 48) = 1;
      if (v39 != -1)
      {
        (*(&off_286EBAA18 + v39))(&v34, v35);
      }

      goto LABEL_45;
    }

    v11 = __dst[0];
    v28 = __dst[1];
    v35[0] = *(&v41 + 1);
    LOBYTE(v35[1]) = v42;
    __dst[0] = 0;
    __dst[1] = 0;
    *&v41 = 0;
    v29 = v28 - v11;
    if (v28 != v11)
    {
      if (!((v29 >> 5) >> 59))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<CGPoint,2ul>>>(v29 >> 5);
      }

LABEL_60:
      std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
    }

    *(&v41 + 1) = v35[0];
    LOBYTE(v42) = v35[1];
    v12 = 7;
  }

LABEL_43:
  DWORD2(v42) = v12;
  *a1 = 0;
  *(a1 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>,(std::__variant_detail::_Trait)1>>(a1, __dst);
  *(a1 + 48) = 1;
  if (DWORD2(v42) != -1)
  {
    (*(&off_286EBAA18 + DWORD2(v42)))(&v34, __dst);
  }

LABEL_45:
  if (v11)
  {
    operator delete(v11);
  }
}

_BYTE *SVG::consumeSmoothQuadraticBezierCurveto(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v4;
  v11 = v4;
  v9 = v4;
  result = SVG::consumeSingleDrawtoCommand<std::vector<CGPoint>>(&v9, a2, a3, 0x54u, 0x74u, SVG::consumeSmoothQuadraticBezierCurvetoArgumentSequence);
  if (BYTE8(v11) == 1)
  {
    v7 = *(&v10 + 1);
    v6 = v10;
    *(a1 + 32) = v11;
    *a1 = v9;
    *(a1 + 16) = __PAIR128__(v7, v6);
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *a1 = 0;
  }

  *(a1 + 40) = v8;
  return result;
}

void SVG::consumeEllipticalArc(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4 > a3)
  {
    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if ((*(v7 + a3) | 0x20) == 0x61)
    {
      v8 = a3 + 1;
      do
      {
        v9 = v8;
        v8 = SVG::consumeWsp(a2, v8);
      }

      while ((v10 & 1) != 0);
      memset(v11, 255, sizeof(v11));
      v12 = 0xAAAAAAAAAAAAAAAALL;
      v13 = -1;
      v14 = -1;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v16 = 0xAAAAAAAAAAAAAAAALL;
      SVG::consumeEllipticalArcArgument(a2, v9, v11);
      if (v16 == 1)
      {
        operator new();
      }
    }
  }

  *a1 = 0;
  a1[40] = 0;
}

void SVG::consumeCurvetoArgument(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v15 = v7;
  v16 = v7;
  v14 = v7;
  while (1)
  {
    if (v6)
    {
      v8 = SVG::consumeCommaWsp(a1, a2);
      if (v9)
      {
        a2 = v8;
      }
    }

    *&v11 = -1;
    *(&v11 + 1) = -1;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeCoordinatePair(a1, a2, &v11);
    if (v13 != 1)
    {
      break;
    }

    *(&v14 + v6) = v11;
    a2 = v12;
    v6 += 16;
    if (v6 == 48)
    {
      v10 = v15;
      *a3 = v14;
      *(a3 + 16) = v10;
      *(a3 + 32) = v16;
      *(a3 + 48) = a2;
      *(a3 + 56) = 1;
      return;
    }
  }

  *a3 = 0;
  *(a3 + 56) = 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<CGPoint,3ul>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void *SVG::consumeOneOrMoreGeneric<std::array<CGPoint,2ul>>(_BYTE *a1, uint64_t a2, uint64_t a3, void *(*a4)(_OWORD *__return_ptr, uint64_t, uint64_t))
{
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v7[0] = v5;
  v7[1] = v5;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = a4(v7, a2, a3);
  if (v9)
  {
    operator new();
  }

  *a1 = 0;
  a1[32] = 0;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<CGPoint,2ul>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void *std::vector<std::array<CGPoint,2ul>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 5) >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<CGPoint,2ul>>>(v3 >> 5);
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void SVG::consumeWspCommaList<CGPoint,2ul>(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = 0;
  v7 = &v17;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v17 = v8;
  v18 = v8;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    if (v6)
    {
      v11 = SVG::consumeCommaWsp(a2, a3);
      if (v12)
      {
        a3 = v11;
      }
    }

    *&v14 = -1;
    *(&v14 + 1) = -1;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeCoordinatePair(a2, a3, &v14);
    v6 = v16;
    if (v16 != 1)
    {
      break;
    }

    v9 = 0;
    *v7 = v14;
    a3 = v15;
    v7 = &v18;
    if ((v10 & 1) == 0)
    {
      v13 = v18;
      *a1 = v17;
      *(a1 + 16) = v13;
      *(a1 + 32) = a3;
      *(a1 + 40) = v6;
      return;
    }
  }

  *a1 = 0;
  *(a1 + 40) = 0;
}

void SVG::consumeEllipticalArcArgument(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x277D85DE8];
  v45 = -1;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeNonnegativeNumber(&v45, a1, a2);
  if ((v47 & 1) == 0)
  {
    goto LABEL_33;
  }

  v5 = v46;
  v6 = SVG::consumeCommaWsp(a1, v46);
  v8 = (v7 & 1) != 0 ? v6 : v5;
  v42 = -1;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeNonnegativeNumber(&v42, a1, v8);
  if ((v44 & 1) == 0)
  {
    goto LABEL_33;
  }

  v9 = v43;
  v10 = SVG::consumeCommaWsp(a1, v43);
  v12 = (v11 & 1) != 0 ? v10 : v9;
  v39 = NAN;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumePathNumber(a1, v12, &v39);
  if ((v41 & 1) == 0)
  {
    goto LABEL_33;
  }

  v13 = SVG::consumeCommaWsp(a1, v40);
  if ((v14 & 1) == 0)
  {
    goto LABEL_33;
  }

  v15 = v13;
  v16 = *(a1 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a1 + 8);
  }

  if (v16 <= v13)
  {
    goto LABEL_33;
  }

  if (v17 >= 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = *a1;
  }

  v19 = *(v18 + v13);
  if (v19 == 48)
  {
    v20 = 0;
  }

  else
  {
    if (v19 != 49)
    {
      goto LABEL_33;
    }

    v20 = 1;
  }

  v21 = SVG::consumeCommaWsp(a1, v13 + 1);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v15 + 1;
  }

  v24 = *(a1 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a1 + 8);
  }

  if (v24 <= v23)
  {
    goto LABEL_33;
  }

  if (v25 >= 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = *a1;
  }

  v27 = *(v26 + v23);
  if (v27 == 48)
  {
    v28 = 0;
    goto LABEL_36;
  }

  if (v27 != 49)
  {
LABEL_33:
    *a3 = 0;
    *(a3 + 56) = 0;
    return;
  }

  v28 = 1;
LABEL_36:
  v29 = SVG::consumeCommaWsp(a1, v23 + 1);
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = v23 + 1;
  }

  *&v36 = -1;
  *(&v36 + 1) = -1;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeCoordinatePair(a1, v31, &v36);
  if (v38)
  {
    v32 = v37;
    v33 = v42;
    *&v48[6] = v36;
    v34 = v39 / 180.0 * 3.14159265;
    *a3 = v45;
    *(a3 + 8) = v33;
    *(a3 + 16) = v34;
    *(a3 + 24) = v20;
    *(a3 + 25) = v28;
    *(a3 + 26) = *v48;
    *(a3 + 40) = *&v48[14];
    *(a3 + 48) = v32;
    v35 = 1;
  }

  else
  {
    v35 = 0;
    *a3 = 0;
  }

  *(a3 + 56) = v35;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::EllipticalArcArgument>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

void SVG::consumeNonnegativeNumber(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v9 = -1;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  SVG::consumeFloatingPointConstant(a2, a3, &v9);
  if (v11 == 1)
  {
    v6 = *&v9;
    v7 = v10;
LABEL_5:
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = 1;
    return;
  }

  memset(v8, 170, sizeof(v8));
  SVG::consumeIntegerConstant(a2, a3, v8);
  if (LOBYTE(v8[2]) == 1)
  {
    v6 = v8[0];
    v7 = v8[1];
    goto LABEL_5;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t result, void *a2, void *a3)
{
  v4 = *result;
  v5 = *(*result + 40);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    result = (*(&off_286EBAA18 + v5))(&v6, v4);
  }

  *v4 = *a3;
  *(v4 + 40) = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 1;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 2)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 2;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 3)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 3;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 4)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 4;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5ELm5EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 5)
  {
    (*(&off_286EBAA18 + v5))(&v11, v4);
LABEL_7:
    *(v4 + 40) = -1;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    v10 = a3[1].n128_u64[1];
    *(v4 + 32) = a3[2].n128_u8[0];
    *(v4 + 24) = v10;
    *(v4 + 40) = 5;
    return result;
  }

  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *a3;
  *a2 = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(a2 + 32) = a3[2].n128_u8[0];
  *(a2 + 24) = v9;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6ELm6EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 6)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 6;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7ELm7EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 7)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 7;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8ELm8EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 != -1)
  {
    if (v5 == 8)
    {
      result.n128_u64[0] = std::vector<SVG::Length>::__move_assign(a2, a3).n128_u64[0];
      v8 = a3[1].n128_u64[1];
      *(a2 + 32) = a3[2].n128_u8[0];
      *(a2 + 24) = v8;
      return result;
    }

    (*(&off_286EBAA18 + v5))(&v10, v4);
  }

  *(v4 + 40) = -1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  result = *a3;
  *v4 = *a3;
  *(v4 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(v4 + 32) = a3[2].n128_u8[0];
  *(v4 + 24) = v9;
  *(v4 + 40) = 8;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9ELm9EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE16__generic_assignB8nn200100INS0_17__move_assignmentISI_LNS0_6_TraitE1EEEEEvOT_EUlRSO_OT0_E_JRNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEOSW_EEEDcSO_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 9)
  {
    (*(&off_286EBAA18 + v5))(&v11, v4);
LABEL_7:
    *(v4 + 40) = -1;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    v10 = a3[1].n128_u64[1];
    *(v4 + 32) = a3[2].n128_u8[0];
    *(v4 + 24) = v10;
    *(v4 + 40) = 9;
    return result;
  }

  v7 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v7;
    operator delete(v7);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  result = *a3;
  *a2 = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  v9 = a3[1].n128_u64[1];
  *(a2 + 32) = a3[2].n128_u8[0];
  *(a2 + 24) = v9;
  return result;
}

void std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__init_with_size[abi:nn200100]<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*,std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>>(a4);
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<CGPoint>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<CGPoint>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<double>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<double>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 4);
    if (v4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::array<CGPoint,3ul>>>(v4);
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a2 + 24);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 24) = v5;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<std::array<CGPoint,2ul>>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<std::array<CGPoint,2ul>>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(void **a1, uint64_t a2)
{
  result = std::vector<CGPoint>::vector[abi:nn200100](*a1, a2);
  v4 = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  result[3] = v4;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJmN3SVG6MovetoENS8_6LinetoENS8_16HorizontalLinetoENS8_14VerticalLinetoENS8_7CurvetoENS8_13SmoothCurvetoENS8_22QuadraticBezierCurvetoENS8_28SmoothQuadraticBezierCurvetoENS8_13EllipticalArcEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISI_LNS0_6_TraitE1EEEEEvRSJ_OT_EUlSS_E_JRKNS0_6__baseILSM_1EJmS9_SA_SB_SC_SD_SE_SF_SG_SH_EEEEEEDcSR_DpT0_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 4);
    if (v4 < 0x555555555555556)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<SVG::EllipticalArcArgument>>(v4);
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a2 + 24);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 24) = v5;
  return result;
}

void std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__vdeallocate(void **a1)
{
  if (*a1)
  {
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 48;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        result = (*(&off_286EBAA18 + v5))(&v6, v3 - 48);
      }

      *(v3 - 8) = -1;
      v3 -= 48;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 0;
  }

  v3 = v1[1];
  if (*(v3 + 16) == 1)
  {
    *(v3 + 16) = 0;
  }

  CGPathCloseSubpath(*v1[2]);
  v4 = v1[4];
  result = *v4;
  *v1[3] = *v4;
  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *(v3 + 48);
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 16 * v7);
      if ((a2[4] & 1) == 0)
      {
        v8 = vaddq_f64(v8, ***(v3 + 64));
      }

      v9 = **(v3 + 72);
      v10 = v8.f64[1];
      v13 = v8;
      if (v7)
      {
        CGPathAddLineToPoint(v9, 0, v8.f64[0], v8.f64[1]);
        v11 = v13;
      }

      else
      {
        CGPathMoveToPoint(v9, 0, v8.f64[0], v8.f64[1]);
        v11 = v13;
        v12 = *(v3 + 80);
        *v12 = v13.f64[0];
        v12[1] = v10;
      }

      **(v3 + 56) = v11;
      ++v7;
      v6 = *a2;
    }

    while (v7 < (a2[1] - *a2) >> 4);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 88);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *(v3 + 96);
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  while (v6 != v7)
  {
    v8 = *v6;
    v9 = v6[1];
    if ((*(a2 + 32) & 1) == 0)
    {
      v10 = **(v3 + 112);
      v8 = v8 + *v10;
      v9 = v9 + v10[1];
    }

    CGPathAddLineToPoint(**(v3 + 120), 0, v8, v9);
    v11 = *(v3 + 104);
    *v11 = v8;
    v11[1] = v9;
    v6 += 2;
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *(v3 + 136);
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 != v7)
  {
    do
    {
      v8 = *v6;
      if (*(a2 + 32) == 1)
      {
        v9 = *(*(v3 + 144) + 8);
      }

      else
      {
        v10 = **(v3 + 152);
        v8 = v8 + *v10;
        v9 = v10[1] + 0.0;
      }

      CGPathAddLineToPoint(**(v3 + 160), 0, v8, v9);
      v11 = *(v3 + 144);
      *v11 = v8;
      v11[1] = v9;
      ++v6;
    }

    while (v6 != v7);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 168);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *(v3 + 176);
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 != v7)
  {
    do
    {
      v8 = *v6;
      if (*(a2 + 32) == 1)
      {
        v9 = **(v3 + 184);
      }

      else
      {
        v10 = **(v3 + 192);
        v9 = *v10 + 0.0;
        v8 = v8 + v10[1];
      }

      CGPathAddLineToPoint(**(v3 + 200), 0, v9, v8);
      v11 = *(v3 + 184);
      *v11 = v9;
      v11[1] = v8;
      ++v6;
    }

    while (v6 != v7);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 208);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    v6 = (*a2 + 16);
    do
    {
      v7 = v6 - 1;
      v8 = v6[-1];
      if (*(a2 + 32) == 1)
      {
        v9 = *v6;
      }

      else
      {
        v10 = **(v3 + 224);
        v8 = vaddq_f64(v8, *v10);
        v9 = vaddq_f64(*v10, *v6);
      }

      v11 = *(v3 + 232);
      v12 = *(v11 + 16);
      *v11 = v9;
      if ((v12 & 1) == 0)
      {
        *(v11 + 16) = 1;
      }

      v13 = v6[1].f64[0];
      v14 = v6[1].f64[1];
      if ((*(a2 + 32) & 1) == 0)
      {
        v15 = **(v3 + 224);
        v13 = v13 + *v15;
        v14 = v14 + v15[1];
      }

      CGPathAddCurveToPoint(**(v3 + 240), 0, v8.f64[0], v8.f64[1], v9.f64[0], v9.f64[1], v13, v14);
      v16 = *(v3 + 216);
      *v16 = v13;
      v16[1] = v14;
      v6 += 3;
    }

    while (&v7[3] != v5);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 248);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      v8 = *(v3 + 256);
      v7 = *(v3 + 264);
      v9 = *(v7 + 16);
      if (v9 == 1)
      {
        v10 = vaddq_f64(*v8, vsubq_f64(*v8, *v7));
      }

      else
      {
        v10 = *v8;
      }

      v11 = *v5;
      if ((*(a2 + 32) & 1) == 0)
      {
        v11 = vaddq_f64(v11, ***(v3 + 272));
      }

      *v7 = v11;
      if ((v9 & 1) == 0)
      {
        *(v7 + 16) = 1;
      }

      v12 = v5[1].f64[0];
      v13 = v5[1].f64[1];
      if ((*(a2 + 32) & 1) == 0)
      {
        v14 = **(v3 + 272);
        v12 = v12 + *v14;
        v13 = v13 + v14[1];
      }

      CGPathAddCurveToPoint(**(v3 + 280), 0, v10.f64[0], v10.f64[1], v11.f64[0], v11.f64[1], v12, v13);
      v15 = *(v3 + 256);
      *v15 = v12;
      v15[1] = v13;
      v5 += 2;
    }

    while (v5 != v6);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 288);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      v7 = *v5;
      if ((*(a2 + 32) & 1) == 0)
      {
        v7 = vaddq_f64(v7, ***(v3 + 304));
      }

      v8 = *(v3 + 312);
      v9 = *(v8 + 16);
      *v8 = v7;
      if ((v9 & 1) == 0)
      {
        *(v8 + 16) = 1;
      }

      v10 = v5[1].f64[0];
      v11 = v5[1].f64[1];
      if ((*(a2 + 32) & 1) == 0)
      {
        v12 = **(v3 + 304);
        v10 = v10 + *v12;
        v11 = v11 + v12[1];
      }

      CGPathAddQuadCurveToPoint(**(v3 + 320), 0, v7.f64[0], v7.f64[1], v10, v11);
      v13 = *(v3 + 296);
      *v13 = v10;
      v13[1] = v11;
      v5 += 2;
    }

    while (v5 != v6);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 328);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      v8 = *(v3 + 336);
      v7 = *(v3 + 344);
      if (*(v7 + 16) == 1)
      {
        v9 = vaddq_f64(*v8, vsubq_f64(*v8, *v7));
      }

      else
      {
        v9 = *v8;
        *(v7 + 16) = 1;
      }

      *v7 = v9;
      v10 = *v5;
      v11 = v5[1];
      if ((*(a2 + 32) & 1) == 0)
      {
        v12 = **(v3 + 352);
        v10 = v10 + *v12;
        v11 = v11 + v12[1];
      }

      CGPathAddQuadCurveToPoint(**(v3 + 360), 0, v9.f64[0], v9.f64[1], v10, v11);
      v13 = *(v3 + 336);
      *v13 = v10;
      v13[1] = v11;
      v5 += 2;
    }

    while (v5 != v6);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::Visitor<SVG::parsePath(std::string const&)::$_0,SVG::parsePath(std::string const&)::$_1,SVG::parsePath(std::string const&)::$_2,SVG::parsePath(std::string const&)::$_3,SVG::parsePath(std::string const&)::$_4,SVG::parsePath(std::string const&)::$_5,SVG::parsePath(std::string const&)::$_6,SVG::parsePath(std::string const&)::$_7,SVG::parsePath(std::string const&)::$_8,SVG::parsePath(std::string const&)::$_9> &> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc> &>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 368);
  if (*(v4 + 16) == 1)
  {
    *(v4 + 16) = 0;
  }

  v5 = *(v3 + 376);
  if (*(v5 + 16) == 1)
  {
    *(v5 + 16) = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = **(v3 + 384);
    v9 = 0.5;
    do
    {
      v10 = *(v6 + 32);
      if ((a2[4] & 1) == 0)
      {
        v10 = vaddq_f64(v10, ***(v3 + 392));
      }

      v11 = *v6;
      v12 = v10.f64[1];
      v60 = v10;
      if (*v6 == 0.0 || (v13 = *(v6 + 8), v13 == 0.0))
      {
        CGPathAddLineToPoint(**(v3 + 400), 0, v10.f64[0], v10.f64[1]);
      }

      else
      {
        v14 = fabs(v11);
        v15 = fabs(v13);
        v59 = v8;
        v16 = v9 * vsubq_f64(v8, v10).f64[0];
        v56 = v8.f64[1];
        v17 = (v8.f64[1] - v10.f64[1]) * 0.5;
        angle = fmod(*(v6 + 16), 6.28318531);
        v18 = __sincos_stret(angle);
        v54 = v17 * v18.__sinval;
        v19 = v17 * v18.__sinval + v16 * v18.__cosval;
        v51 = v16;
        v52 = v17 * v18.__cosval;
        v20 = v17 * v18.__cosval - v16 * v18.__sinval;
        v21 = v19 * v19 / (v11 * v11) + v20 * v20 / (v13 * v13);
        v22 = sqrt(v21);
        v23 = v14 * v22;
        v24 = v15 * v22;
        if (v21 <= 1.0)
        {
          v25 = v14;
        }

        else
        {
          v15 = v24;
          v25 = v23;
        }

        v26 = sqrt(fmax((v15 * (v25 * v25) * v15 - v20 * (v25 * v25) * v20 - v19 * (v15 * v15) * v19) / (v19 * (v19 * (v15 * v15)) + v20 * (v25 * v25) * v20), 0.0));
        v27 = *(v6 + 25);
        if (*(v6 + 24) == v27)
        {
          v26 = -v26;
        }

        v28 = v20 * (v25 * v26) / v15;
        v29 = v19 * -(v15 * v26) / v25;
        v30 = (v19 - v28) / v25;
        v31 = (v20 - v29) / v15;
        v32 = sqrt(v31 * v31 + v30 * v30);
        v33 = (v30 + v31 * 0.0) / v32;
        v34 = 1.0;
        if (v33 <= 1.0)
        {
          v34 = (v30 + v31 * 0.0) / v32;
        }

        if (v33 >= -1.0)
        {
          v35 = v34;
        }

        else
        {
          v35 = -1.0;
        }

        v36 = acos(v35);
        if (v31 - v30 * 0.0 < 0.0)
        {
          v36 = -v36;
        }

        startAngle = v36;
        v37 = -(v54 + v51 * v18.__cosval);
        v55 = v28;
        v38 = (v37 - v28) / v25;
        sx = v25;
        v39 = (-(v52 + v51 * -v18.__sinval) - v29) / v15;
        v40 = (v31 * v39 + v30 * v38) / (v32 * sqrt(v39 * v39 + v38 * v38));
        v41 = 1.0;
        if (v40 <= 1.0)
        {
          v41 = v40;
        }

        if (v40 >= -1.0)
        {
          v42 = v41;
        }

        else
        {
          v42 = -1.0;
        }

        v43 = acos(v42);
        if (v30 * v39 - v31 * v38 < 0.0)
        {
          v43 = -v43;
        }

        if ((v27 & 1) != 0 || v43 <= 0.0)
        {
          if ((v27 & (v43 < 0.0)) != 0)
          {
            v44 = v43 + 6.28318531;
          }

          else
          {
            v44 = v43;
          }
        }

        else
        {
          v44 = v43 + -6.28318531;
        }

        v9 = 0.5;
        v45 = 0.5 * vaddq_f64(v59, v60).f64[0] + v55 * v18.__cosval - v18.__sinval * v29;
        *&v46 = -1;
        *(&v46 + 1) = -1;
        *&v63.c = v46;
        *&v63.tx = v46;
        v47 = (v56 + v12) * 0.5 + v18.__cosval * v29 + v55 * v18.__sinval;
        *&v63.a = v46;
        CGAffineTransformMakeRotation(&m, angle);
        CGAffineTransformScale(&v63, &m, sx, v15);
        v61 = v63;
        CGAffineTransformInvert(&m, &v61);
        v48 = m.tx + v47 * m.c + m.a * v45;
        v49 = m.ty + v47 * m.d + m.b * v45;
        *&v50 = -1;
        *(&v50 + 1) = -1;
        *&m.c = v50;
        *&m.tx = v50;
        v61 = v63;
        *&m.a = v50;
        CGAffineTransformTranslate(&m, &v61, v48, v49);
        CGPathAddArc(**(v3 + 400), &m, 0.0, 0.0, 1.0, startAngle, startAngle + v44, v44 < 0.0);
      }

      v8 = v60;
      **(v3 + 384) = v60;
      v6 += 48;
    }

    while (v6 != v7);
  }
}

void std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::variant<unsigned long,SVG::Moveto,SVG::Lineto,SVG::HorizontalLineto,SVG::VerticalLineto,SVG::Curveto,SVG::SmoothCurveto,SVG::QuadraticBezierCurveto,SVG::SmoothQuadraticBezierCurveto,SVG::EllipticalArc>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t SVG::PolyLineElement::PolyLineElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::ShapeElement::ShapeElement(a1, a2, a3);
  *v5 = &unk_286EB98D0;
  v5[86] = 0;
  v5[88] = 0;
  v5[87] = 0;
  std::string::basic_string[abi:nn200100]<0>(v24, "points");
  std::string::basic_string[abi:nn200100]<0>(&__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v24, &__p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
    if (!v6)
    {
      return a1;
    }
  }

  else if (!v6)
  {
    return a1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v24 = v7;
  v25 = v7;
  SVG::consumeListOfCoordinates((v6 + 8), v24);
  if (BYTE8(v25) == 1)
  {
    v8 = 0;
    v9 = 0;
    __p = 0;
    v27 = 0;
    v28 = 0;
    v10 = v24[0];
    if ((v24[1] - v24[0]) >= 9)
    {
      v9 = 0;
      v11 = 0;
      do
      {
        v12 = v10[v11];
        if (v9 >= v28)
        {
          v13 = __p;
          v14 = v9 - __p;
          v15 = (v9 - __p) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
          }

          v17 = v28 - __p;
          if ((v28 - __p) >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(&__p, v18);
          }

          v19 = v15;
          v20 = (16 * v15);
          v21 = &v20[-v19];
          *v20 = v12;
          v9 = (v20 + 1);
          memcpy(v21, v13, v14);
          v22 = __p;
          __p = v21;
          v27 = v9;
          v28 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v9 = v12;
          v9 += 16;
        }

        v27 = v9;
        ++v11;
        v10 = v24[0];
      }

      while (v11 < ((v24[1] - v24[0]) >> 3) >> 1);
      v8 = __p;
    }

    if ((a1 + 688) != &__p)
    {
      std::vector<CGPoint>::__assign_with_size[abi:nn200100]<CGPoint*,CGPoint*>((a1 + 688), v8, v9, (v9 - v8) >> 4);
      v8 = __p;
    }

    if (v8)
    {
      v27 = v8;
      operator delete(v8);
    }

    if ((BYTE8(v25) & 1) != 0 && v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }
  }

  return a1;
}

void SVG::PolyLineElement::path(const CGPoint **this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGPath **a3@<X8>)
{
  Mutable = CGPathCreateMutable();
  CGPathAddLines(Mutable, 0, this[86], this[87] - this[86]);
  *a3 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);

    CFRelease(Mutable);
  }
}

float64_t SVG::PolyLineElement::boundingBox(SVG::PolyLineElement *this, CGRect a2)
{
  v2 = *(this + 87);
  v3 = *(this + 86);
  if (v2 == v3)
  {
    v5.f64[0] = *MEMORY[0x277CBF3A0];
  }

  else
  {
    v4 = *v3;
    v5 = *v3;
    do
    {
      v6 = *v3++;
      v5 = vbslq_s8(vcgtq_f64(v5, v6), v6, v5);
      v4 = vbslq_s8(vcgtq_f64(v6, v4), v6, v4);
    }

    while (v3 != v2);
  }

  return v5.f64[0];
}

void SVG::PolyLineElement::~PolyLineElement(SVG::PolyLineElement *this)
{
  *this = &unk_286EB98D0;
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  SVG::GElement::~GElement(this);
}

{
  *this = &unk_286EB98D0;
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

void *std::vector<CGPoint>::__assign_with_size[abi:nn200100]<CGPoint*,CGPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGPoint>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

unint64_t SVG::consumeWsp(uint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (v2 <= a2 || (v3 >= 0 ? (v4 = a1) : (v4 = *a1), (v5 = *(v4 + a2), v6 = v5 > 0x20, v7 = (1 << v5) & 0x100002600, !v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = (a2 + 1) & 0xFFFFFFFFFFFFFF00;
    v10 = (a2 + 1);
  }

  return v9 | v10;
}

void SVG::consumeFloatingPointConstant(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v6;
  *&__p[16] = v6;
  SVG::consumeDigitSequence(a1, a2, __p);
  if (v47 == 1)
  {
    v7 = SVG::consumeString<2ul>(".", a1, *&__p[24]);
    if ((v8 & 1) == 0)
    {
      v27 = 0;
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v26 = NAN;
      v12 = *__p;
      if (!*__p)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v9 = v7;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v44 = v10;
    *&v44[16] = v10;
    SVG::consumeDigitSequence(a1, v7, v44);
    if (v45 == 1)
    {
      v12 = *__p;
      v13 = *v44;
      v14 = SVG::digitsToFloat(*__p, *&__p[8], *v44, *&v44[8], v11);
      if (v15)
      {
        v16 = v14;
        v9 = *&v44[24];
        if (v13)
        {
          operator delete(v13);
        }

        goto LABEL_19;
      }

      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      v41 = 0;
      std::vector<unsigned char>::vector[abi:nn200100](&v42, &v41, 1);
      v12 = *__p;
      v28 = v42;
      *&v16 = COERCE_DOUBLE(SVG::digitsToFloat(*__p, *&__p[8], v42, v43, v29));
      v31 = v30;
      if (v28)
      {
        v43 = v28;
        operator delete(v28);
      }

      if (v31)
      {
LABEL_19:
        v26 = *&v16;
        v27 = 1;
        if (!v12)
        {
LABEL_25:
          if (v27)
          {
LABEL_26:
            memset(__p, 170, 24);
            SVG::consumeExponent(__p, a1, v9);
            if (__p[16] == 1)
            {
              v26 = v26 * __exp10(*__p);
              v9 = *&__p[8];
            }

            *a3 = v26;
            *(a3 + 8) = v9;
            *(a3 + 16) = 1;
            return;
          }

          goto LABEL_31;
        }

LABEL_24:
        operator delete(v12);
        goto LABEL_25;
      }
    }

    v27 = 0;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v26 = NAN;
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v17 = SVG::consumeString<2ul>(".", a1, a2);
  if (v18)
  {
    v45 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v44 = v19;
    *&v44[16] = v19;
    SVG::consumeDigitSequence(a1, v17, v44);
    if (v45 == 1)
    {
      v41 = 0;
      std::vector<unsigned char>::vector[abi:nn200100](&v42, &v41, 1);
      v20 = v42;
      v21 = *v44;
      *&v23 = COERCE_DOUBLE(SVG::digitsToFloat(v42, v43, *v44, *&v44[8], v22));
      v25 = v24;
      if (v20)
      {
        v43 = v20;
        operator delete(v20);
      }

      if (v25)
      {
        v9 = *&v44[24];
        v26 = *&v23;
        if (v21)
        {
          operator delete(v21);
        }

        goto LABEL_26;
      }

      if (v21)
      {
        operator delete(v21);
      }
    }
  }

LABEL_31:
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v32;
  *&__p[16] = v32;
  SVG::consumeDigitSequence(a1, a2, __p);
  if ((v47 & 1) == 0)
  {
    goto LABEL_44;
  }

  v33 = *__p;
  v34 = *&__p[8] - *__p;
  if (*&__p[8] != *__p)
  {
    v35 = 0;
    v36 = 0;
    if (v34 <= 1)
    {
      v34 = 1;
    }

    while (1)
    {
      v37 = *(*__p + v35) + 10 * v36;
      if (v37 < v36)
      {
        goto LABEL_43;
      }

      ++v35;
      v36 = v37;
      if (v34 == v35)
      {
        v38 = v37;
        goto LABEL_39;
      }
    }
  }

  v38 = 0.0;
LABEL_39:
  memset(v44, 170, 24);
  SVG::consumeExponent(v44, a1, *&__p[24]);
  if (v44[16] != 1)
  {
    if (v33)
    {
LABEL_43:
      operator delete(v33);
    }

LABEL_44:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v39 = __exp10(*v44);
  v40 = *&v44[8];
  *a3 = v38 * v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = 1;
  if (v33)
  {
    operator delete(v33);
  }
}

void SVG::consumeExponent(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4 <= a3)
  {
    goto LABEL_19;
  }

  v6 = *a2;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  if ((*(v6 + a3) | 0x20) != 0x65)
  {
    goto LABEL_19;
  }

  v7 = a3 + 1;
  if (v4 <= a3 + 1)
  {
    v9 = 1;
  }

  else
  {
    v8 = *(v6 + v7);
    v9 = 1;
    if (v8 != 43)
    {
      if (v8 != 45)
      {
        goto LABEL_13;
      }

      v9 = 0;
    }

    v7 = a3 + 2;
  }

LABEL_13:
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v10;
  v16 = v10;
  SVG::consumeDigitSequence(a2, v7, __p);
  if (v17 != 1)
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 16) = 0;
    return;
  }

  v11 = SVG::digitsToInt(v9, __p);
  if ((v12 & 1) == 0)
  {
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    goto LABEL_19;
  }

  v13 = *(&v16 + 1);
  v14 = __p[0];
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = 1;
  if (v14)
  {
    operator delete(v14);
  }
}