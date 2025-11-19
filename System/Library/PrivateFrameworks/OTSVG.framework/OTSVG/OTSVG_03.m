uint64_t SVG::consumeUnits@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = result;
  v6 = *(result + 23);
  v7 = v6;
  v8 = *(result + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(result + 23);
  }

  else
  {
    v9 = *(result + 8);
  }

  v10 = a2 + 14;
  if (v9 >= a2 + 14)
  {
    v11 = "userSpaceOnUse";
    v12 = 14;
    v13 = a2;
    while (1)
    {
      v14 = *(v4 + 23) >= 0 ? v4 : *v4;
      v15 = *(v14 + v13);
      v17 = *v11++;
      v16 = v17;
      result = __tolower(v17);
      if (result != v15)
      {
        v18 = *(v4 + 23) >= 0 ? v4 : *v4;
        v19 = *(v18 + v13);
        result = __toupper(v16);
        if (result != v19)
        {
          break;
        }
      }

      ++v13;
      if (!--v12)
      {
        *a3 = 0;
        *(a3 + 8) = v10;
        v20 = 1;
        goto LABEL_32;
      }
    }

    v6 = *(v4 + 23);
    v8 = *(v4 + 8);
    v7 = *(v4 + 23);
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v21 = v3 + 17;
  if (v6 >= v3 + 17)
  {
    v22 = "objectBoundingBox";
    v23 = 17;
    while (1)
    {
      v24 = *(v4 + 23) >= 0 ? v4 : *v4;
      v25 = *(v24 + v3);
      v27 = *v22++;
      v26 = v27;
      result = __tolower(v27);
      if (result != v25)
      {
        v28 = *(v4 + 23) >= 0 ? v4 : *v4;
        v29 = *(v28 + v3);
        result = __toupper(v26);
        if (result != v29)
        {
          break;
        }
      }

      ++v3;
      if (!--v23)
      {
        v20 = 1;
        *a3 = 1;
        *(a3 + 8) = v21;
        goto LABEL_32;
      }
    }
  }

  v20 = 0;
  *a3 = 0;
LABEL_32:
  *(a3 + 16) = v20;
  return result;
}

CGAffineTransform *SVG::unitTransform@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  if (result == 1)
  {
    CGAffineTransformMakeTranslation(&v11, a3, a4);
    return CGAffineTransformScale(a2, &v11, a5, a6);
  }

  else if (!result)
  {
    v7 = MEMORY[0x277CBF2C0];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    *a2 = *MEMORY[0x277CBF2C0];
    *(a2 + 16) = v8;
    *(a2 + 32) = *(v7 + 32);
  }

  return result;
}

uint64_t SVG::DefsElement::DefsElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9C90;
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

uint64_t SVG::DefsElement::appendChild(void *a1, const void **a2)
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

void SVG::DefsElement::~DefsElement(SVG::DefsElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

uint64_t SVG::SVGElement::SVGElement(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = SVG::Element::Element(a1, a3, a4);
  SVG::Presentation::Presentation(v7 + 64, a4);
  *a1 = &unk_286EB9D98;
  v8 = a2;
  *(a1 + 640) = 0u;
  *(a1 + 656) = a2;
  *(a1 + 664) = a2;
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  *(a1 + 672) = *MEMORY[0x277CBF3A0];
  *(a1 + 688) = v9;
  *(a1 + 704) = 5;
  std::string::basic_string[abi:nn200100]<0>(v22, "x");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a4, v22, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v10)
  {
    v22[0] = -1;
    v22[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v10 + 8), v22);
    if (v23 == 1)
    {
      *(a1 + 640) = SVG::Length::computeValue(v22, v8);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "y");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v11 = SVG::Element::findInAttributeMap(a4, v22, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v11)
  {
    v22[0] = -1;
    v22[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v11 + 8), v22);
    if (v23 == 1)
    {
      *(a1 + 648) = SVG::Length::computeValue(v22, v8);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "width");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v12 = SVG::Element::findInAttributeMap(a4, v22, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v12)
  {
    v22[0] = -1;
    v22[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v12 + 8), v22);
    if (v23 == 1)
    {
      *(a1 + 656) = SVG::Length::computeValue(v22, v8);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "height");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v13 = SVG::Element::findInAttributeMap(a4, v22, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v13)
  {
    v22[0] = -1;
    v22[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v13 + 8), v22);
    if (v23 == 1)
    {
      *(a1 + 664) = SVG::Length::computeValue(v22, v8);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "viewBox");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v14 = SVG::Element::findInAttributeMap(a4, v22, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  v15 = (a1 + 672);
  if (v14 && (*&v16 = -1, *(&v16 + 1) = -1, *v22 = v16, v23 = v16, v24 = 0xAAAAAAAAAAAAAAAALL, SVG::ViewBox::parseViewBox((v14 + 8), v22), v24 == 1))
  {
    v17 = v23;
    *v15 = *v22;
    *(a1 + 688) = v17;
  }

  else
  {
    *v15 = 0;
    *(a1 + 680) = 0;
    *(a1 + 688) = *(a1 + 656);
  }

  std::string::basic_string[abi:nn200100]<0>(v22, "preserveAspectRatio");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v18 = SVG::Element::findInAttributeMap(a4, v22, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v23) < 0)
  {
    operator delete(v22[0]);
  }

  if (v18)
  {
    v19 = SVG::PreserveAspectRatio::parsePreserveAspectRatio((v18 + 8));
    if (v20)
    {
      *(a1 + 704) = v19;
    }
  }

  return a1;
}

uint64_t SVG::SVGElement::appendChild(void *a1, const void **a2)
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

void SVG::SVGElement::~SVGElement(SVG::SVGElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

void SVG::convertToMask(SVG *this@<X0>, CGImageRef *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  bitmapInfo = CGBitmapContextGetBitmapInfo(this);
  ColorSpace = CGBitmapContextGetColorSpace(this);
  Width = CGBitmapContextGetWidth(this);
  Height = CGBitmapContextGetHeight(this);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(this);
  CGBitmapContextGetBitsPerPixel(this);
  BytesPerRow = CGBitmapContextGetBytesPerRow(this);
  Data = CGBitmapContextGetData(this);
  if (BytesPerRow * Height)
  {
    if (((BytesPerRow * Height) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  dest.data = 0;
  dest.height = Height;
  dest.width = Width;
  dest.rowBytes = BytesPerRow;
  srcBottom.data = 0;
  srcBottom.height = Height;
  srcBottom.width = Width;
  srcBottom.rowBytes = BytesPerRow;
  src.data = Data;
  src.height = Height;
  src.width = Width;
  src.rowBytes = BytesPerRow;
  matrix = 255;
  v22 = 0;
  v23 = xmmword_25D1D7510;
  v24 = 1179666;
  v25 = 18;
  if (vImageMatrixMultiply_ARGB8888(&src, &dest, &matrix, 255, 0, 0, 0) || (*color = 255, vImageBufferFill_ARGB8888(&srcBottom, color, 0)) || vImageAlphaBlend_ARGB8888(&dest, &srcBottom, &dest, 0) || (*v17 = 0, v18 = 1, memset(v20, 0, sizeof(v20)), v19 = 0, vImageMatrixMultiply_ARGB8888(&dest, &dest, v17, 1, 0, 0, 0)))
  {
    *a2 = 0;
  }

  else
  {
    v11 = CGBitmapContextCreate(0, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, bitmapInfo);
    *a2 = CGBitmapContextCreateImage(v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

uint64_t SVG::UseElement::UseElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9D68;
  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *(a1 + 640) = *MEMORY[0x277CBF2C0];
  *(a1 + 656) = v7;
  *(a1 + 672) = *(v6 + 32);
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  std::string::basic_string[abi:nn200100]<0>(v24, "transform");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v8)
  {
    *&v9 = -1;
    *(&v9 + 1) = -1;
    v25 = v9;
    v26 = v9;
    *v24 = v9;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    SVG::parseTransform((v8 + 8), v24);
    if (v27 == 1)
    {
      v10 = v25;
      *(a1 + 640) = *v24;
      *(a1 + 656) = v10;
      *(a1 + 672) = v26;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v24, "x");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v11 = SVG::Element::findInAttributeMap(a3, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v11)
  {
    v24[0] = -1;
    v24[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v11 + 8), v24);
    if (v25 == 1)
    {
      *(a1 + 688) = *v24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v24, "y");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v12 = SVG::Element::findInAttributeMap(a3, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v12)
  {
    v24[0] = -1;
    v24[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v12 + 8), v24);
    if (v25 == 1)
    {
      *(a1 + 704) = *v24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v24, "width");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v13 = SVG::Element::findInAttributeMap(a3, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v13)
  {
    v24[0] = -1;
    v24[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v13 + 8), v24);
    if (v25 == 1)
    {
      *(a1 + 720) = *v24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v24, "height");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v14 = SVG::Element::findInAttributeMap(a3, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v14)
  {
    v24[0] = -1;
    v24[1] = 0xAAAAAAAAAAAAAAAALL;
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v14 + 8), v24);
    if (v25 == 1)
    {
      *(a1 + 736) = *v24;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v24, "href");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/1999/xlink");
  v15 = SVG::Element::findInAttributeMap(a3, v24, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (v15)
  {
    v16 = *MEMORY[0x277CBECE8];
    v17 = *(v15 + 87);
    if (v17 < 0)
    {
      v18 = v15[8];
      v17 = v15[9];
    }

    else
    {
      v18 = (v15 + 8);
    }

    v19 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v18, v17, 0x8000100u, 1u);
    if (v19)
    {
      v20 = v19;
      v21 = CFURLCreateWithString(v16, v19, 0);
      v22 = *(a1 + 752);
      if (v22)
      {
        CFRelease(v22);
      }

      *(a1 + 752) = v21;
      CFRelease(v20);
    }
  }

  return a1;
}

void SVG::UseElement::~UseElement(SVG::UseElement *this)
{
  *this = &unk_286EB9D68;
  v2 = *(this + 94);
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
  *this = &unk_286EB9D68;
  v2 = *(this + 94);
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

_OWORD *SVG::LineElement::LineElement(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = SVG::ShapeElement::ShapeElement(a1, a2, a3);
  *v5 = &unk_286EB9C50;
  *(v5 + 688) = 0;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0;
  *(v5 + 712) = 0;
  *(v5 + 720) = 0;
  *(v5 + 728) = 0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0;
  std::string::basic_string[abi:nn200100]<0>(v13, "x1");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v6)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v13);
    if (v14 == 1)
    {
      a1[43] = *v13;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "y1");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v7 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v7)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v7 + 8), v13);
    if (v14 == 1)
    {
      a1[44] = *v13;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "x2");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v8)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v13);
    if (v14 == 1)
    {
      a1[45] = *v13;
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "y2");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v9 = SVG::Element::findInAttributeMap(a3, v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (v9)
  {
    v13[0] = -1;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v9 + 8), v13);
    if (v14 == 1)
    {
      a1[46] = *v13;
    }
  }

  return a1;
}

void SVG::LineElement::path(SVG::LineElement *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, CGPath **a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  v15 = *MEMORY[0x277D85DE8];
  v7 = SVG::Length::computeValue((this + 688), a2.size.width);
  v8 = SVG::Length::computeValue((this + 704), height);
  v9 = SVG::Length::computeValue((this + 720), width);
  v10 = SVG::Length::computeValue((this + 736), height);
  Mutable = CGPathCreateMutable();
  points.x = v7;
  points.y = v8;
  v13 = v9;
  v14 = v10;
  CGPathAddLines(Mutable, 0, &points, 2uLL);
  *a3 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    CFRelease(Mutable);
  }
}

double SVG::LineElement::boundingBox(SVG::LineElement *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  v5 = SVG::Length::computeValue((this + 688), a2.size.width);
  SVG::Length::computeValue((this + 704), height);
  v6 = SVG::Length::computeValue((this + 720), width);
  SVG::Length::computeValue((this + 736), height);
  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void SVG::LineElement::~LineElement(SVG::LineElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

CGFloat SVG::Image::transformIntoVariant@<D0>(SVG::Image *this@<X0>, CGAffineTransform *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *&a2->c;
  *&v12.a = *&a2->a;
  *&v12.c = v5;
  *&v12.tx = *&a2->tx;
  v6 = *(this + 1);
  *&v5 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(this + 4);
  v13 = CGRectApplyAffineTransform(*(&v5 - 8), &v12);
  v9 = *(this + 5);
  *&v12.a = &unk_286EB96C0;
  *&v12.b = v13;
  *&v12.ty = v9;
  if (v9)
  {
    CFRetain(v9);
    ty = v12.ty;
  }

  else
  {
    ty = 0.0;
  }

  *a3 = &unk_286EB96C0;
  *(a3 + 8) = *&v12.b;
  result = v12.d;
  *(a3 + 24) = *&v12.d;
  *(a3 + 40) = ty;
  *(a3 + 48) = 0;
  return result;
}

void SVG::Image::~Image(SVG::Image *this)
{
  *this = &unk_286EB96C0;
  v1 = *(this + 5);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_286EB96C0;
  v1 = *(this + 5);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x25F894240);
}

void SVG::Path::transformIntoVariant(SVG::Path *this@<X0>, CGAffineTransform *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *&a2->c;
  v5[0] = *&a2->a;
  v5[1] = v4;
  v5[2] = *&a2->tx;
  SVG::Path::transform(v6, *(this + 8), *(this + 2), v5);
  *a3 = &unk_286EB96F8;
  *(a3 + 8) = v6[8];
  *(a3 + 16) = v7;
  *(a3 + 48) = 1;
}

void SVG::Path::transform(SVG::Path *this, CGAffineTransform *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v6 = MEMORY[0x25F893FB0](a3, a4);
  *this = &unk_286EB96F8;
  *(this + 8) = v4;
  *(this + 2) = v6;
  if (v6)
  {
    v7 = v6;
    CFRetain(v6);

    CFRelease(v7);
  }
}

void SVG::Path::~Path(SVG::Path *this)
{
  *this = &unk_286EB96F8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_286EB96F8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x25F894240);
}

void SVG::ClipToPaths::execute(uint64_t a1, CGContext *a2)
{
  v11 = a2;
  SVG::simplify(&v9, *(a1 + 8), a2);
  v2 = v9;
  v3 = v10;
  if (v9 == v10)
  {
LABEL_4:
    v13[0] = &v9;
    std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v13);
  }

  else
  {
    while (1)
    {
      v8 = &v11;
      v4 = *(v2 + 48);
      if (v4 == -1)
      {
        break;
      }

      v12 = &v8;
      v13[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::ClipToPaths::execute(CGContext *,SVG::PlaybackState &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
      v13[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::ClipToPaths::execute(CGContext *,SVG::PlaybackState &)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
      (v13[v4])(&v12, v2);
      v2 += 56;
      if (v2 == v3)
      {
        goto LABEL_4;
      }
    }

    v5 = std::__throw_bad_variant_access[abi:nn200100]();
    SVG::simplify(v5, v6, v7);
  }
}

void SVG::simplify(SVG *this, const SVG::ClipToPaths::BaseClipNode *lpsrc, CGContext *a3)
{
  v145 = *MEMORY[0x277D85DE8];
  v138 = 0uLL;
  v139 = 0;
  v5 = *(lpsrc + 1);
  if (v5)
  {
    memset(v141, 170, 24);
    SVG::simplify(v141, v5, a3);
    v7 = *(&v141[0] + 1);
    v6 = *&v141[0];
    v8 = *(&v141[0] + 1) - *&v141[0];
    if ((*(&v141[0] + 1) - *&v141[0]) >= 1)
    {
      v9 = *(&v138 + 1);
      if ((v139 - *(&v138 + 1)) >= v8)
      {
        if (*&v141[0] == *(&v141[0] + 1))
        {
          v15 = *(&v138 + 1);
        }

        else
        {
          v15 = *(&v138 + 1);
          do
          {
            *v9 = 0;
            *(v9 + 48) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> const&>(v9, v6);
            v6 += 56;
            v9 += 56;
            v15 += 56;
          }

          while (v6 != v7);
        }

        *(&v138 + 1) = v15;
      }

      else
      {
        v10 = 0x6DB6DB6DB6DB6DB7 * ((*(&v138 + 1) - v138) >> 3);
        v11 = v10 + 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
        if (v11 > 0x492492492492492)
        {
          goto LABEL_142;
        }

        v12 = 0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3);
        if (v12 <= v11)
        {
          v12 = v10 + 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v139 - v138) >> 3)) >= 0x249249249249249)
        {
          v13 = 0x492492492492492;
        }

        else
        {
          v13 = v12;
        }

        *&v143[32] = &v138;
        v14 = this;
        if (v13)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>>(v13);
        }

        v16 = 8 * ((*(&v138 + 1) - v138) >> 3);
        v17 = v16 + v8;
        v18 = v16;
        do
        {
          *v18 = 0;
          *(v18 + 48) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> const&>(v18, v6);
          v18 += 56;
          v6 += 56;
        }

        while (v18 != v17);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(v9, *(&v138 + 1), v17);
        v19 = v17 + *(&v138 + 1) - v9;
        *(&v138 + 1) = v9;
        v20 = v16 + v138 - v9;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(v138, v9, v20);
        v21 = v138;
        v22 = v139;
        *&v138 = v20;
        *(&v138 + 1) = v19;
        v139 = 0;
        *&v143[16] = v21;
        *&v143[24] = v22;
        *v143 = v21;
        *&v143[8] = v21;
        std::__split_buffer<std::variant<SVG::Image,SVG::Path>>::~__split_buffer(v143);
        this = v14;
      }
    }

    *v143 = v141;
    std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v143);
  }

  v137 = v23;
  if (!v23)
  {
    if (v37)
    {
      v38 = v37;
      v39 = *(v37 + 80);
      v40 = v37[9];
      v136[0] = &unk_286EB96F8;
      LOBYTE(v136[1]) = v39;
      v136[2] = v40;
      if (v40)
      {
        CFRetain(v40);
        v39 = LOBYTE(v136[1]);
        v41 = v136[2];
      }

      else
      {
        v41 = 0;
      }

      *v143 = *(v38 + 3);
      v84 = *(v38 + 7);
      *&v143[16] = *(v38 + 5);
      *&v143[32] = v84;
      SVG::Path::transform(v141, v39, v41, v143);
      v85 = *(&v138 + 1);
      if (*(&v138 + 1) >= v139)
      {
        v88 = 0x492492492492492;
        v89 = v138;
        v90 = *(&v138 + 1) - v138;
        v91 = 0x6DB6DB6DB6DB6DB7 * ((*(&v138 + 1) - v138) >> 3);
        v92 = v91 + 1;
        if ((v91 + 1) > 0x492492492492492)
        {
          goto LABEL_142;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3) > v92)
        {
          v92 = 0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v139 - v138) >> 3)) < 0x249249249249249)
        {
          v88 = v92;
        }

        *&v143[32] = &v138;
        if (v88)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>>(v88);
        }

        memset(v143, 0, 32);
        v116 = 8 * ((*(&v138 + 1) - v138) >> 3);
        *v116 = &unk_286EB96F8;
        *(v116 + 8) = BYTE8(v141[0]);
        v117 = *&v141[1];
        *&v141[1] = 0;
        *(v116 + 16) = v117;
        *(v116 + 48) = 1;
        v87 = 56 * v91 + 56;
        v118 = 56 * v91 - v90;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(v89, v85, v116 - v90);
        v119 = v138;
        v120 = v139;
        *&v138 = v118;
        *(&v138 + 1) = v87;
        v139 = 0;
        *&v143[16] = v119;
        *&v143[24] = v120;
        *v143 = v119;
        *&v143[8] = v119;
        std::__split_buffer<std::variant<SVG::Image,SVG::Path>>::~__split_buffer(v143);
      }

      else
      {
        **(&v138 + 1) = &unk_286EB96F8;
        *(v85 + 8) = BYTE8(v141[0]);
        v86 = *&v141[1];
        *&v141[1] = 0;
        *(v85 + 16) = v86;
        *(v85 + 48) = 1;
        v87 = v85 + 56;
      }

      *(&v138 + 1) = v87;
      *&v141[0] = &unk_286EB96F8;
      if (*&v141[1])
      {
        CFRelease(*&v141[1]);
      }

      v136[0] = &unk_286EB96F8;
      if (v136[2])
      {
        CFRelease(v136[2]);
      }
    }

    goto LABEL_139;
  }

  v24 = v23[9];
  v129 = v23[10];
  v25 = (v129 - v24) >> 4;
  if (!v25)
  {
    goto LABEL_139;
  }

  v128 = this;
  if (v25 == 1)
  {
    SVG::simplify(v136, *v24, a3);
    v26 = v136[0];
    for (i = v136[1]; v26 != i; v26 += 56)
    {
      v135 = &v137;
      v28 = *(v26 + 48);
      if (v28 == -1)
      {
        goto LABEL_141;
      }

      c = &v135;
      *&v141[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
      *(&v141[0] + 1) = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
      (*(v141 + v28))(v143, &c, v26);
      v29 = *(&v138 + 1);
      if (*(&v138 + 1) >= v139)
      {
        v31 = 0x6DB6DB6DB6DB6DB7 * ((*(&v138 + 1) - v138) >> 3) + 1;
        if (v31 > 0x492492492492492)
        {
          goto LABEL_142;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3) > v31)
        {
          v31 = 0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v139 - v138) >> 3)) >= 0x249249249249249)
        {
          v32 = 0x492492492492492;
        }

        else
        {
          v32 = v31;
        }

        v142 = &v138;
        if (v32)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>>(v32);
        }

        v33 = 8 * ((*(&v138 + 1) - v138) >> 3);
        *v33 = 0;
        *(v33 + 48) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(v33, v143);
        v30 = v33 + 56;
        v34 = v33 + v138 - *(&v138 + 1);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(v138, *(&v138 + 1), v34);
        v35 = v138;
        v36 = v139;
        *&v138 = v34;
        *(&v138 + 1) = v30;
        v139 = 0;
        *&v141[1] = v35;
        *(&v141[1] + 1) = v36;
        *&v141[0] = v35;
        *(&v141[0] + 1) = v35;
        std::__split_buffer<std::variant<SVG::Image,SVG::Path>>::~__split_buffer(v141);
      }

      else
      {
        **(&v138 + 1) = 0;
        *(v29 + 48) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(v29, v143);
        v30 = v29 + 56;
      }

      *(&v138 + 1) = v30;
      if (v144 != -1)
      {
        *&v141[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        *(&v141[0] + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        (*(v141 + v144))(&c, v143);
      }
    }

    *v143 = v136;
    std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v143);
    goto LABEL_139;
  }

  v43 = *MEMORY[0x277CBF3A0];
  v42 = *(MEMORY[0x277CBF3A0] + 8);
  v45 = *(MEMORY[0x277CBF3A0] + 16);
  v44 = *(MEMORY[0x277CBF3A0] + 24);
  if (v24 != v129)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    while (1)
    {
      memset(v136, 170, sizeof(v136));
      SVG::simplify(v136, *v24, a3);
      memset(v143, 0, 24);
      v132 = v24;
      v133 = v48;
      v49 = v47 - v46;
      v50 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
      v51 = v50 + 1;
      if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      v52 = v46;
      if (0x5555555555555556 * (-v46 >> 3) > v51)
      {
        v51 = 0x5555555555555556 * (-v46 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v46 >> 3) >= 0x555555555555555)
      {
        v53 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (v53 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_143;
      }

      v54 = 24 * v50;
      *v54 = 0u;
      *(v54 + 16) = 0;
      memset(v143, 0, 24);
      v47 = 24 * v50 + 24;
      memcpy((24 * v50 - v49), v52, v49);
      if (v52)
      {
        operator delete(v52);
      }

      v131 = 24 * v50 - v49;
      *&v141[0] = v143;
      std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v141);
      v56 = v136[0];
      v55 = v136[1];
      if (v136[0] != v136[1])
      {
        break;
      }

LABEL_75:
      x = *MEMORY[0x277CBF390];
      y = *(MEMORY[0x277CBF390] + 8);
      width = *(MEMORY[0x277CBF390] + 16);
      height = *(MEMORY[0x277CBF390] + 24);
      v77 = *(v47 - 24);
      for (j = *(v47 - 16); v77 != j; v77 += 56)
      {
        v78 = *(v77 + 48);
        if (v78 == -1)
        {
          goto LABEL_141;
        }

        *&v141[0] = &c;
        *v143 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
        *&v143[8] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
        v152.origin.x = (*&v143[8 * v78])(v141, v77);
        v152.origin.y = v79;
        v152.size.width = v80;
        v152.size.height = v81;
        v146.origin.x = x;
        v146.origin.y = y;
        v146.size.width = width;
        v146.size.height = height;
        v147 = CGRectIntersection(v146, v152);
        x = v147.origin.x;
        y = v147.origin.y;
        width = v147.size.width;
        height = v147.size.height;
      }

      v148.origin.x = v43;
      v148.origin.y = v42;
      v148.size.width = v45;
      v148.size.height = v44;
      v153.origin.x = x;
      v153.origin.y = y;
      v153.size.width = width;
      v153.size.height = height;
      v149 = CGRectUnion(v148, v153);
      v43 = v149.origin.x;
      v42 = v149.origin.y;
      v45 = v149.size.width;
      v44 = v149.size.height;
      v82 = v133 >> 5;
      if (((v133 >> 5) + 1) >> 59)
      {
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      if (v133 >> 5 != -1)
      {
        if (!(((v133 >> 5) + 1) >> 59))
        {
          operator new();
        }

LABEL_143:
        std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
      }

      v83 = (32 * v82);
      *v83 = x;
      v83[1] = y;
      v83[2] = width;
      v83[3] = height;
      v48 = 32 * v82 + 32;
      memcpy(0, 0, v133);
      v46 = v131;
      *v143 = v136;
      std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v143);
      v24 = v132 + 2;
      if (v132 + 2 == v129)
      {
        goto LABEL_95;
      }
    }

    v57 = (v47 - 24);
    while (1)
    {
      v135 = &v137;
      v58 = *(v56 + 48);
      if (v58 == -1)
      {
        break;
      }

      c = &v135;
      *&v141[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
      *(&v141[0] + 1) = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
      (*(v141 + v58))(v143, &c, v56);
      v60 = *(v47 - 16);
      v59 = *(v47 - 8);
      if (v60 >= v59)
      {
        v62 = 0x6DB6DB6DB6DB6DB7 * ((v60 - *v57) >> 3);
        v63 = v62 + 1;
        if ((v62 + 1) > 0x492492492492492)
        {
          goto LABEL_142;
        }

        v64 = 0x6DB6DB6DB6DB6DB7 * ((v59 - *v57) >> 3);
        if (2 * v64 > v63)
        {
          v63 = 2 * v64;
        }

        if (v64 >= 0x249249249249249)
        {
          v65 = 0x492492492492492;
        }

        else
        {
          v65 = v63;
        }

        v142 = (v47 - 24);
        if (v65)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>>(v65);
        }

        v66 = 56 * v62;
        *v66 = 0;
        *(v66 + 48) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(v66, v143);
        v61 = v66 + 56;
        v67 = *(v47 - 24);
        v68 = *(v47 - 16);
        v69 = v66 + v67 - v68;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(v67, v68, v69);
        v70 = *(v47 - 24);
        *(v47 - 24) = v69;
        *(&v141[0] + 1) = v70;
        *(v47 - 16) = v61;
        *&v141[1] = v70;
        v71 = *(v47 - 8);
        *(v47 - 8) = 0;
        *(&v141[1] + 1) = v71;
        *&v141[0] = v70;
        std::__split_buffer<std::variant<SVG::Image,SVG::Path>>::~__split_buffer(v141);
      }

      else
      {
        *v60 = 0;
        *(v60 + 48) = -1;
        std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(v60, v143);
        v61 = v60 + 56;
      }

      *(v47 - 16) = v61;
      if (v144 != -1)
      {
        *&v141[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        *(&v141[0] + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        (*(v141 + v144))(&c, v143);
      }

      v56 += 56;
      if (v56 == v55)
      {
        goto LABEL_75;
      }
    }

LABEL_141:
    std::__throw_bad_variant_access[abi:nn200100]();
LABEL_142:
    std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
  }

  v46 = 0;
  v47 = 0;
LABEL_95:
  c = 0xAAAAAAAAAAAAAAAALL;
  v150.origin.x = v43;
  v150.origin.y = v42;
  v150.size.width = v45;
  v150.size.height = v44;
  SVG::createParallelBitmapContext(a3, v150, &c);
  v93 = c;
  if (!c)
  {
    *(&v141[0] + 1) = 0xAAAAAAAAAAAAAA01;
    v107 = CGPathCreateWithRect(*MEMORY[0x277CBF3A0], 0);
    *&v141[0] = &unk_286EB96F8;
    *&v141[1] = v107;
    if (v107)
    {
      v108 = v107;
      CFRetain(v107);
      CFRelease(v108);
      v109 = BYTE8(v141[0]);
      v110 = *&v141[1];
    }

    else
    {
      v110 = 0;
      v109 = 1;
    }

    *v143 = &unk_286EB96F8;
    v143[8] = v109;
    *&v141[1] = 0;
    *&v143[16] = v110;
    v144 = 1;
    operator new();
  }

  v94 = c;
  if (v47 != v46)
  {
    v134 = c;
    v95 = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3) <= 1)
    {
      v96 = 1;
    }

    else
    {
      v96 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
    }

    do
    {
      CGContextSaveGState(c);
      v97 = (v46 + 24 * v95);
      v98 = *v97;
      v99 = v97[1];
      while (v98 != v99)
      {
        v136[0] = &c;
        v100 = *(v98 + 48);
        if (v100 == -1)
        {
          goto LABEL_141;
        }

        *&v141[0] = v136;
        *v143 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
        *&v143[8] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_3> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>;
        (*&v143[8 * v100])(v141, v98);
        v98 += 56;
      }

      v151.origin.x = *(32 * v95);
      v151.origin.y = *(32 * v95 + 8);
      v151.size.width = *(32 * v95 + 0x10);
      v151.size.height = *(32 * v95 + 0x18);
      CGContextFillRect(c, v151);
      CGContextRestoreGState(c);
      ++v95;
    }

    while (v95 != v96);
    v94 = c;
    v93 = v134;
  }

  CGContextFlush(v94);
  Image = CGBitmapContextCreateImage(c);
  v102 = Image;
  *v143 = &unk_286EB96C0;
  *&v143[8] = v43;
  *&v143[16] = v42;
  *&v143[24] = v45;
  *&v143[32] = v44;
  *&v143[40] = Image;
  if (Image)
  {
    CFRetain(Image);
  }

  v103 = *(&v138 + 1);
  if (*(&v138 + 1) >= v139)
  {
    v111 = 0x492492492492492;
    v112 = v138;
    v113 = *(&v138 + 1) - v138;
    v114 = 0x6DB6DB6DB6DB6DB7 * ((*(&v138 + 1) - v138) >> 3);
    v115 = v114 + 1;
    if ((v114 + 1) > 0x492492492492492)
    {
      goto LABEL_142;
    }

    if (0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3) > v115)
    {
      v115 = 0xDB6DB6DB6DB6DB6ELL * ((v139 - v138) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((v139 - v138) >> 3)) < 0x249249249249249)
    {
      v111 = v115;
    }

    v142 = &v138;
    if (v111)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>>(v111);
    }

    v121 = v46;
    memset(v141, 0, sizeof(v141));
    v122 = 8 * ((*(&v138 + 1) - v138) >> 3);
    *v122 = &unk_286EB96C0;
    v123 = *&v143[8];
    *(v122 + 24) = *&v143[24];
    *(v122 + 8) = v123;
    v124 = *&v143[40];
    *&v143[40] = 0;
    *(v122 + 40) = v124;
    *(v122 + 48) = 0;
    v106 = 56 * v114 + 56;
    v125 = 56 * v114 - v113;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(v112, v103, v125);
    v126 = v138;
    v127 = v139;
    *&v138 = v125;
    *(&v138 + 1) = v106;
    v139 = 0;
    *&v141[1] = v126;
    *(&v141[1] + 1) = v127;
    *&v141[0] = v126;
    *(&v141[0] + 1) = v126;
    std::__split_buffer<std::variant<SVG::Image,SVG::Path>>::~__split_buffer(v141);
    v46 = v121;
  }

  else
  {
    **(&v138 + 1) = &unk_286EB96C0;
    v104 = *&v143[8];
    *(v103 + 24) = *&v143[24];
    *(v103 + 8) = v104;
    v105 = *&v143[40];
    *&v143[40] = 0;
    *(v103 + 40) = v105;
    *(v103 + 48) = 0;
    v106 = v103 + 56;
  }

  *(&v138 + 1) = v106;
  *v143 = &unk_286EB96C0;
  if (*&v143[40])
  {
    CFRelease(*&v143[40]);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (c)
  {
    CFRelease(c);
  }

  if (v46)
  {
    while (v47 != v46)
    {
      v47 -= 24;
      *v143 = v47;
      std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v143);
    }

    operator delete(v46);
  }

  this = v128;
  if (v93)
  {
LABEL_139:
    *this = v138;
    *(this + 2) = v139;
    v138 = 0uLL;
    v139 = 0;
  }

  *v143 = &v138;
  std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](v143);
}

double SVG::ClipToPaths::boundingRect(SVG **this, SVG::BoundingRectState *a2)
{
  v4.origin.x = SVG::boundingRect(this[1], a2);
  v5.origin.x = SVG::BoundingRectState::deviceRect(a2, v4);
  SVG::BoundingRectState::clip(a2, v5);
  return *MEMORY[0x277CBF3A0];
}

double SVG::boundingRect(SVG *this, const SVG::ClipToPaths::BaseClipNode *a2)
{
  x = *MEMORY[0x277CBF390];
  y = *(MEMORY[0x277CBF390] + 8);
  width = *(MEMORY[0x277CBF390] + 16);
  height = *(MEMORY[0x277CBF390] + 24);
  v7 = *(this + 1);
  if (v7)
  {
    SVG::boundingRect(v7, a2);
    v36.origin.x = v8;
    v36.origin.y = v9;
    v36.size.width = v10;
    v36.size.height = v11;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectIntersection(v28, v36);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  if (v12)
  {
    v14 = v12;
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = v12[9];
    v20 = v12[10];
    while (v19 != v20)
    {
      v21 = *v19;
      v19 += 2;
      SVG::boundingRect(v21, v13);
      v22 = *(v14 + 5);
      *&v27.a = *(v14 + 3);
      *&v27.c = v22;
      *&v27.tx = *(v14 + 7);
      v37 = CGRectApplyAffineTransform(v30, &v27);
      v31.origin.x = v15;
      v31.origin.y = v16;
      v31.size.width = v17;
      v31.size.height = v18;
      v32 = CGRectUnion(v31, v37);
      v15 = v32.origin.x;
      v16 = v32.origin.y;
      v17 = v32.size.width;
      v18 = v32.size.height;
    }

    goto LABEL_9;
  }

  if (v23)
  {
    v24 = v23;
    BoundingBox = CGPathGetBoundingBox(v23[9]);
    v25 = *(v24 + 5);
    *&v27.a = *(v24 + 3);
    *&v27.c = v25;
    *&v27.tx = *(v24 + 7);
    v34 = CGRectApplyAffineTransform(BoundingBox, &v27);
    v15 = v34.origin.x;
    v16 = v34.origin.y;
    v17 = v34.size.width;
    v18 = v34.size.height;
LABEL_9:
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v38.origin.x = v15;
    v38.origin.y = v16;
    v38.size.width = v17;
    v38.size.height = v18;
    *&x = CGRectIntersection(v35, v38);
  }

  return x;
}

double SVG::ClipToPaths::timeCost(SVG **this, const CGRect *a2, const SVG::BoundingRectState *a3)
{
  v9[0] = SVG::BoundingRectState::clipRectInPixels(a3);
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  return SVG::timeCost(this[1], v9, v7);
}

double SVG::timeCost(SVG *this, const SVG::ClipToPaths::BaseClipNode *a2, const CGRect *a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    SVG::timeCost(v5, a2, a3);
    v7 = v6 + 0.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (v8)
  {
    v11 = v8;
    v12 = v8[9];
    v13 = v8[10];
    if (v12 == v13)
    {
      v16 = v8[9];
    }

    else
    {
      do
      {
        v14 = *v12;
        v12 += 2;
        SVG::timeCost(v14, a2, v10);
        v7 = v7 + v15;
      }

      while (v12 != v13);
      v12 = v11[9];
      v16 = v11[10];
    }

    if ((v16 - v12) > 0x10)
    {
      v18 = SVG::ClipToMask::staticTimeCost(a2, v9);
      return v7 + v18;
    }
  }

  {
    v17 = CGRectGetWidth(*a2) * 0.0008;
    v18 = v17 * CGRectGetHeight(*a2) + 100.93;
    return v7 + v18;
  }

  return v7;
}

void SVG::ClipToPaths::memoryCost(SVG **this, const CGRect *a2, const SVG::BoundingRectState *a3)
{
  v8[0] = SVG::BoundingRectState::clipRectInPixels(a3);
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  SVG::memoryCost(this[1], v8, v7);
}

void SVG::memoryCost(SVG *this, const SVG::ClipToPaths::BaseClipNode *a2, const CGRect *a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    SVG::memoryCost(v5, a2, a3);
    v7 = v6 + 0.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (v8)
  {
    v10 = v8;
    v11 = v8[9];
    v12 = v8[10];
    if (v11 == v12)
    {
      v15 = v8[9];
    }

    else
    {
      do
      {
        v13 = *v11;
        v11 += 2;
        SVG::memoryCost(v13, a2, v9);
        v7 = v7 + v14;
      }

      while (v11 != v12);
      v11 = v10[9];
      v15 = v10[10];
    }

    if ((v15 - v11) > 0x10)
    {
      CGRectGetWidth(*a2);
      CGRectGetHeight(*a2);
    }
  }
}

void SVG::ClipToPaths::~ClipToPaths(SVG::ClipToPaths *this)
{
  *this = &unk_286EB9CC0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

{
  *this = &unk_286EB9CC0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x25F894240);
}

uint64_t SVG::ClipToPaths::dump(SVG::ClipToPaths *this)
{
  v1 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "ClipToPaths", 11);
  std::ios_base::getloc((v1 + *(*v1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  return std::ostream::flush();
}

void SVG::Path::clip(CGPathRef *this, CGContextRef c)
{
  CGContextAddPath(c, this[2]);
  if (*(this + 8) == 1)
  {

    CGContextEOClip(c);
  }

  else
  {

    CGContextClip(c);
  }
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 48) = -1;
  v5 = *(a2 + 48);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 48) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB96C0;
  v2 = a2[5];
  if (v2)
  {
    CFRelease(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, void *a2)
{
  *a2 = &unk_286EB96F8;
  v2 = a2[2];
  if (v2)
  {
    CFRelease(v2);
  }
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB96C0;
  v3 = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 8) = v3;
  result = *(a2 + 40);
  *(v2 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB96F8;
  *(v2 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(v2 + 16) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4 != -1)
  {
    v7 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
    result = (*(&v7 + v4))(&v6, result);
  }

  *(v3 + 48) = -1;
  v5 = *(a2 + 48);
  if (v5 != -1)
  {
    v6 = v3;
    v7 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> &&>;
    v8 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> &&>;
    result = (*(&v7 + v5))(&v6, a2);
    *(v3 + 48) = v5;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> &&>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_286EB96C0;
  result = *(a2 + 8);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 8) = result;
  v4 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v2 + 40) = v4;
  return result;
}

uint64_t *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> &&>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = &unk_286EB96F8;
  *(v2 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(v2 + 16) = v3;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<SVG::Length>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::variant<SVG::Image,SVG::Path>>,std::variant<SVG::Image,SVG::Path>*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v11[8] = v3;
    v11[9] = v4;
    v7 = result;
    v8 = result;
    do
    {
      *a3 = 0;
      *(a3 + 48) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<SVG::Image,SVG::Path>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<SVG::Image,SVG::Path>,(std::__variant_detail::_Trait)1>>(a3, v8);
      v8 += 56;
      a3 += 56;
    }

    while (v8 != a2);
    do
    {
      v9 = *(v7 + 48);
      if (v9 != -1)
      {
        v11[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        v11[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        result = (v11[v9])(&v10, v7);
      }

      *(v7 + 48) = -1;
      v7 += 56;
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::variant<SVG::Image,SVG::Path>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 56;
      *(a1 + 16) = v3 - 56;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        v8[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        v8[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
        (v8[v5])(&v7);
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

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>(uint64_t ***a1, uint64_t a2)
{
  v2 = ***a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v6[1] = *(v2 + 40);
  v6[2] = v4;
  v6[0] = v3;
  return (*(*a2 + 32))(a2, v6);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>(uint64_t ***a1, uint64_t a2)
{
  v2 = ***a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v6[1] = *(v2 + 40);
  v6[2] = v4;
  v6[0] = v3;
  return (*(*a2 + 32))(a2, v6);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>(uint64_t ***a1, uint64_t a2)
{
  v2 = ***a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v6[1] = *(v2 + 40);
  v6[2] = v4;
  v6[0] = v3;
  return (*(*a2 + 32))(a2, v6);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<SVG::simplify(SVG::ClipToPaths::BaseClipNode const&,CGContext *)::$_1> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,SVG::Image,SVG::Path> const&>(uint64_t ***a1, uint64_t a2)
{
  v2 = ***a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v6[1] = *(v2 + 40);
  v6[2] = v4;
  v6[0] = v3;
  return (*(*a2 + 32))(a2, v6);
}

void std::vector<std::variant<SVG::Image,SVG::Path>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 56;
        v7 = *(v4 - 2);
        if (v7 != -1)
        {
          v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
          v9[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3SVG5ImageENS8_4PathEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_;
          (v9[v7])(&v8, v4 - 56);
        }

        *(v4 - 2) = -1;
        v4 -= 56;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t SVG::RadialGradientElement::RadialGradientElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *(a1 + 640) = 0;
  *a1 = &unk_286EB9778;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 656) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  SVG::GradientElement::parseAttributes(a1, a3);
  std::string::basic_string[abi:nn200100]<0>(v19, "cx");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v19, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v6)
  {
    v19[0] = -1;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v19);
    if (v20 == 1)
    {
      v7 = *(a1 + 736);
      *(a1 + 720) = *v19;
      if ((v7 & 1) == 0)
      {
        *(a1 + 736) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v19, "cy");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v8 = SVG::Element::findInAttributeMap(a3, v19, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v8)
  {
    v19[0] = -1;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v8 + 8), v19);
    if (v20 == 1)
    {
      v9 = *(a1 + 760);
      *(a1 + 744) = *v19;
      if ((v9 & 1) == 0)
      {
        *(a1 + 760) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v19, "r");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v10 = SVG::Element::findInAttributeMap(a3, v19, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v10)
  {
    v19[0] = -1;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v10 + 8), v19);
    if (v20 == 1)
    {
      v11 = *(a1 + 784);
      *(a1 + 768) = *v19;
      if ((v11 & 1) == 0)
      {
        *(a1 + 784) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v19, "fx");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v12 = SVG::Element::findInAttributeMap(a3, v19, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v12)
  {
    v19[0] = -1;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v12 + 8), v19);
    if (v20 == 1)
    {
      v13 = *(a1 + 808);
      *(a1 + 792) = *v19;
      if ((v13 & 1) == 0)
      {
        *(a1 + 808) = 1;
      }
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v19, "fy");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v14 = SVG::Element::findInAttributeMap(a3, v19, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (v14)
  {
    v19[0] = -1;
    v19[1] = 0xAAAAAAAAAAAAAAAALL;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v14 + 8), v19);
    if (v20 == 1)
    {
      v15 = *(a1 + 832);
      *(a1 + 816) = *v19;
      if ((v15 & 1) == 0)
      {
        *(a1 + 832) = 1;
      }
    }
  }

  return a1;
}

void SVG::RadialGradientElement::specifiedRadialState(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = xmmword_25D1D7618;
  *(a2 + 144) = unk_25D1D7628;
  *(a2 + 160) = xmmword_25D1D7638;
  *(a2 + 176) = unk_25D1D7648;
  *(a2 + 64) = xmmword_25D1D75D8;
  *(a2 + 80) = unk_25D1D75E8;
  *(a2 + 96) = xmmword_25D1D75F8;
  *(a2 + 112) = unk_25D1D7608;
  *a2 = xmmword_25D1D7598;
  *(a2 + 16) = unk_25D1D75A8;
  *(a2 + 32) = xmmword_25D1D75B8;
  *(a2 + 48) = unk_25D1D75C8;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 4) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 68) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 112) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 168) = 0;
  *(a2 + 160) = 0;
  *(a2 + 184) = 0;
  memset(v5, 0, sizeof(v5));
  v2[0] = a1;
  std::vector<std::reference_wrapper<SVG::GradientElement const>>::push_back[abi:nn200100](v5, v2);
  *v2 = 0u;
  *__p = 0u;
  *&v4 = 0xAAAAAAAA3F800000;
  operator new();
}

void SVG::RadialGradientElement::~RadialGradientElement(SVG::RadialGradientElement *this)
{
  *this = &unk_286EB9910;
  v2 = *(this + 80);
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
  *this = &unk_286EB9910;
  v2 = *(this + 80);
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

uint64_t SVG::StopElement::StopElement(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SVG::Element::Element(a1, a2, a3);
  SVG::Presentation::Presentation(v5 + 64, a3);
  *a1 = &unk_286EB9B70;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  std::string::basic_string[abi:nn200100]<0>(v10, "offset");
  std::string::basic_string[abi:nn200100]<0>(__p, "http://www.w3.org/2000/svg");
  v6 = SVG::Element::findInAttributeMap(a3, v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v6)
  {
    v10[0] = -1;
    v10[1] = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    SVG::consumeLengthAlone((v6 + 8), v10);
    if (v11 == 1)
    {
      *(a1 + 640) = *v10;
    }
  }

  return a1;
}

void SVG::StopElement::~StopElement(SVG::StopElement *this)
{
  SVG::GElement::~GElement(this);

  JUMPOUT(0x25F894240);
}

uint64_t SVG::decodeBase64@<X0>(SVG *this@<X0>, void *a2@<X8>)
{
  result = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:this options:1];
  *a2 = result;
  return result;
}

size_t SVG::consumeColorKeyword@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v6 = *(a1 + 23);
  v7 = a1[1];
  v37 = v7;
  v38 = v6;
  if ((v6 & 0x80u) == 0)
  {
    v7 = *(a1 + 23);
  }

  v36 = *a1;
  if ((v6 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v7 >= a2;
  v10 = v7 - a2;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 + a2;
  v13 = 147;
  do
  {
    v14 = v13 >> 1;
    v15 = v5 + 16 * (v13 >> 1);
    v16 = *(&SVG::colorKeywords + v15);
    result = strlen(v16);
    if (result)
    {
      v18 = result - 1;
      v19 = v11;
      v20 = v12;
      while (v19)
      {
        v21 = *v16;
        v22 = *v20;
        if (v21 < v22)
        {
          v5 = v15 + 16;
          v14 = v13 + ~v14;
          break;
        }

        ++v20;
        ++v16;
        v23 = v21 > v22 || v18-- == 0;
        --v19;
        if (v23)
        {
          break;
        }
      }
    }

    v13 = v14;
  }

  while (v14);
  if (v5 == 2352)
  {
    goto LABEL_28;
  }

  result = strlen(*(&SVG::colorKeywords + v5));
  v24 = result + a2;
  if ((v38 & 0x80) != 0)
  {
    v25 = v36;
    if (v37 < v24)
    {
LABEL_28:
      v26 = 0;
      v27 = a3;
      *a3 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v25 = a1;
    if (v24 > v38)
    {
      goto LABEL_28;
    }
  }

  result = memcmp(v25 + a2, *(&SVG::colorKeywords + v5), result);
  if (result)
  {
    goto LABEL_28;
  }

  v28 = v5 - 2336;
  v29 = &SVG::colorKeywords + v5 + 8;
  do
  {
    v30 = v29;
    if (!v28)
    {
      break;
    }

    v31 = *(v29 + 1);
    v32 = strlen(v31);
    v33 = v32 + a2;
    if ((v38 & 0x80) != 0)
    {
      v34 = v36;
      if (v37 < v33)
      {
        break;
      }
    }

    else
    {
      v34 = a1;
      if (v33 > v38)
      {
        break;
      }
    }

    v35 = memcmp(v34 + a2, v31, v32);
    v28 += 16;
    v29 = (v30 + 8);
  }

  while (!v35);
  result = strlen(*(v30 - 1));
  *a3 = *v30 | (*(v30 + 2) << 16);
  *(a3 + 8) = result + a2;
  v27 = a3;
  v26 = 1;
LABEL_29:
  *(v27 + 16) = v26;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7928]();
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
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}