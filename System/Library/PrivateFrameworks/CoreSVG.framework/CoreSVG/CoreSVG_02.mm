void sub_1DF12DBF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CGSVGDrawState::~CGSVGDrawState(va);
  _Unwind_Resume(a1);
}

void PopSVGNodeAttributes(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  CGSVGDrawState::CGSVGDrawState(v28, (*(a1 + 40) - 216));
  CGSVGDrawState::~CGSVGDrawState((*(a1 + 40) - 216));
  *(a1 + 40) = v6;
  if (v28[144] == 1)
  {
    CGContextEndTransparencyLayer(v4);
  }

  AttributeMap = CGSVGNodeGetAttributeMap(a2, v5);
  if (CGSVGAttributeMapGetAttribute(AttributeMap, 0x54))
  {
    v10 = CFRetained::getObject<SVGNode>(a2, v8);
    v11 = (v10 + 64);
    if (v10[87] < 0)
    {
      v11 = *v11;
    }

    v12 = *v11;
    if (v12 == 103)
    {
      if (!v11[1])
      {
        goto LABEL_13;
      }
    }

    else if (103 == v12)
    {
      goto LABEL_13;
    }

    v29 = 0;
    v13 = CGSVGNodeGetAttributeMap(a2, v9);
    Attribute = CGSVGAttributeMapGetAttribute(v13, 0x54);
    if (Attribute && CGSVGAttributeGetFilter(Attribute, &v29))
    {
      v16 = CFRetained::getObject<SVGFilter>(v29, v15);
      v17 = *a1;
      BoundingBoxWithOptions = CGSVGNodeGetBoundingBoxWithOptions(a2, 0, 0);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v31.origin.x = CGSVGNodeGetBoundingBoxWithOptions(a2, 0, 3);
      v31.origin.y = v25;
      v31.size.width = v26;
      v31.size.height = v27;
      v30.origin.x = BoundingBoxWithOptions;
      v30.origin.y = v20;
      v30.size.width = v22;
      v30.size.height = v24;
      SVGFilter::draw(v16, v17, v10, v30, v31);
    }
  }

LABEL_13:
  CGContextRestoreGState(v4);
  CGSVGDrawState::~CGSVGDrawState(v28);
}

void ___ZL20ApplyCGSVGAttributesP21CGSVGDrawStateContextP17CGSVGAttributeMapP9CGSVGNode_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a2 > 37)
  {
    if (a2 > 62)
    {
      if (a2 > 157)
      {
        if (a2 == 158)
        {
          v46.a = 0.0;
          if (CGSVGAttributeGetPaint(a3, &v46) && CGSVGPaintGetType(*&v46.a, v36) == 1)
          {
            CGSVGPaintGetColor(*&v46.a, v37, &width);
            v38 = *(*(a1 + 48) + 40);
            v39 = *&width.a;
            v40 = *&width.c;
            *(v38 - 24) = width.tx;
            *(v38 - 40) = v40;
            *(v38 - 56) = v39;
          }
        }

        else if (a2 == 10000)
        {
          width.a = 0.0;
          if (CGSVGAttributeGetFloat(a3, &width))
          {
            *(*(*(a1 + 48) + 40) - 192) = width.a;
          }
        }
      }

      else if (a2 == 63)
      {
        if (CGSVGAttributeGetFloatCount(a3, a2) == 6)
        {
          CGSVGAttributeGetFloats(a3, &width);
          v32 = *(a1 + 40);
          v46 = width;
          CGContextConcatCTM(v32, &v46);
        }
      }

      else if (a2 == 74)
      {
        width.a = 0.0;
        if (CGSVGAttributeGetMask(a3, &width))
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          v17 = *v15;
          v18 = CFRetained::getObject<SVGMask>(*&width.a, v14);
          v20 = CFRetained::getObject<SVGNode>(v16, v19);
          Mask = SVGMask::createMask(v18, v20);
          CGContextClipToMask(v17, *(v18 + 248), Mask);
          CGImageRelease(Mask);
        }
      }
    }

    else if (a2 > 56)
    {
      if (a2 == 57)
      {
        v34 = CGSVGAttributeCopyString(a3, a2);
        v6 = v34;
        if (!v34 || CFStringCompare(v34, @"currentColor", 0))
        {
          width.a = 0.0;
          if (!CGSVGAttributeGetPaint(a3, &width))
          {
            goto LABEL_64;
          }

          v7 = *(a1 + 48);
          a = width.a;
          v9 = 1;
LABEL_63:
          ApplyCGSVGPaint(v7, *&a, v9);
LABEL_64:
          if (!v6)
          {
            return;
          }

LABEL_77:
          CFRelease(v6);
          return;
        }

        v41 = *(a1 + 48);
        v42 = *(a1 + 56);
        v45 = *(v41 + 40);
        *&width.a = *(v45 - 56);
        *&width.c = *(v45 - 40);
        width.tx = *(v45 - 24);
        v44 = 1;
LABEL_76:
        ApplyCGSVGCurrentColor(v41, &width, v44, v42);
        goto LABEL_77;
      }

      if (a2 == 59)
      {
        width.a = 0.0;
        if (CGSVGAttributeGetFloat(a3, &width))
        {
          CGContextSetLineWidth(*(a1 + 40), width.a);
        }
      }
    }

    else if (a2 == 38)
    {
      width.a = 0.0;
      if (CGSVGAttributeGetFloat(a3, &width))
      {
        CGContextSetMiterLimit(*(a1 + 40), width.a);
      }
    }

    else if (a2 == 41)
    {
      width.a = 1.0;
      Float = CGSVGAttributeGetFloat(a3, &width);
      if (Float)
      {
        v11 = SVGUtilities::CGFloatClamp(Float, width.a, 0.0, 1.0);
        width.a = v11;
        if (v11 < 1.0)
        {
          v12 = *(*(a1 + 48) + 40);
          v13 = v11 * *(v12 - 80);
          *(v12 - 80) = v13;
          width.a = v13;
          CGContextSetAlpha(*(a1 + 40), v13);
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }
      }
    }
  }

  else if (a2 > 23)
  {
    if (a2 > 33)
    {
      if (a2 == 34)
      {
        LODWORD(width.a) = 0;
        if (!CGSVGAttributeGetAtom(a3, &width))
        {
          return;
        }

        switch(LODWORD(width.a))
        {
          case 2:
            v35 = kCGLineCapButt;
            break;
          case 0x36:
            v35 = kCGLineCapSquare;
            break;
          case 0x32:
            v35 = kCGLineCapRound;
            break;
          default:
            return;
        }

        CGContextSetLineCap(*(a1 + 40), v35);
      }

      else if (a2 == 35)
      {
        LODWORD(width.a) = 0;
        if (CGSVGAttributeGetAtom(a3, &width))
        {
          switch(LODWORD(width.a))
          {
            case 1:
              v23 = kCGLineJoinBevel;
              break;
            case 0x25:
              v23 = kCGLineJoinMiter;
              break;
            case 0x32:
              v23 = kCGLineJoinRound;
              break;
            default:
              return;
          }

          CGContextSetLineJoin(*(a1 + 40), v23);
        }
      }
    }

    else if (a2 == 24)
    {
      width.a = 16.0;
      if (CGSVGAttributeGetFloat(a3, &width))
      {
        *(*(*(a1 + 48) + 40) - 208) = width.a;
      }
    }

    else if (a2 == 25)
    {
      width.a = 0.0;
      if (CGSVGAttributeGetFloat(a3, &width))
      {
        *(*(*(a1 + 48) + 40) - 200) = width.a;
      }
    }
  }

  else if (a2 > 19)
  {
    if (a2 == 20)
    {
      LODWORD(width.a) = 0;
      if (CGSVGAttributeGetAtom(a3, &width))
      {
        if (LODWORD(width.a) == 39)
        {
          *(*(*(a1 + 48) + 40) - 212) = 0;
        }

        else if (LODWORD(width.a) == 17)
        {
          *(*(*(a1 + 48) + 40) - 212) = 1;
        }

        else
        {
          SVGUtilities::error("Given fill-rule was undefined", v33);
        }
      }
    }

    else if (a2 == 23)
    {
      v22 = CGSVGAttributeCopyString(a3, a2);
      CGSVGDrawState::setFontFamily((*(*(a1 + 48) + 40) - 216), v22);

      CFRelease(v22);
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 18)
      {
        return;
      }

      v5 = CGSVGAttributeCopyString(a3, a2);
      v6 = v5;
      if (!v5 || CFStringCompare(v5, @"currentColor", 0))
      {
        width.a = 0.0;
        if (!CGSVGAttributeGetPaint(a3, &width))
        {
          goto LABEL_64;
        }

        v7 = *(a1 + 48);
        a = width.a;
        v9 = 0;
        goto LABEL_63;
      }

      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = *(v41 + 40);
      *&width.a = *(v43 - 56);
      *&width.c = *(v43 - 40);
      width.tx = *(v43 - 24);
      v44 = 0;
      goto LABEL_76;
    }

    width.a = 0.0;
    if (CGSVGAttributeGetClipPath(a3, &width))
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      v27 = *v25;
      v28 = CFRetained::getObject<SVGClipPath>(*&width.a, v24);
      v30 = CFRetained::getObject<SVGNode>(v26, v29);
      CGClippingPath = SVGClipPath::getCGClippingPath(v28, v30);
      CGContextAddPath(v27, CGClippingPath);
      CGContextClip(v27);
    }
  }
}

void ApplyCGSVGCurrentColor(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v7 = *a1;
  AttributeMap = CGSVGNodeGetAttributeMap(a4, a2);
  Attribute = CGSVGAttributeMapGetAttribute(AttributeMap, 0x9E);
  if (!Attribute)
  {
    if (a3 == 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(a2 + 3) = *(*(a1 + 40) - 96) * *(a2 + 3);
    v15 = *(a2 + 1);
    v19 = *a2;
    v20 = v15;
    v21 = *(a2 + 4);
    CGColor = CGSVGColorCreateCGColor(&v19);
    goto LABEL_10;
  }

  v11 = CGSVGAttributeCopyString(Attribute, v10);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  CGSVGColorCreateFromString(v11, &v19);
  v17[0] = v19;
  v17[1] = v20;
  v18 = v21;
  CGColor = CGSVGColorCreateCGColor(v17);
  CFRelease(v11);
  if (a3 == 1)
  {
    if (CGColor)
    {
LABEL_7:
      CGContextSetStrokeColorWithColor(v7, CGColor);
      CGColorRelease(CGColor);
      v14 = *(a1 + 40);
      *(v14 - 160) = 0;
      *(v14 - 152) = 0;
      *(v14 - 216) = 1;
      return;
    }

LABEL_6:
    *(a2 + 3) = *(*(a1 + 40) - 88) * *(a2 + 3);
    v13 = *(a2 + 1);
    v19 = *a2;
    v20 = v13;
    v21 = *(a2 + 4);
    CGColor = CGSVGColorCreateCGColor(&v19);
    goto LABEL_7;
  }

  if (!CGColor)
  {
    goto LABEL_9;
  }

LABEL_10:
  CGContextSetFillColorWithColor(v7, CGColor);
  CGColorRelease(CGColor);
  v16 = *(a1 + 40);
  *(v16 - 184) = 0;
  *(v16 - 176) = 0;
  *(v16 - 215) = 1;
}

void ApplyCGSVGPaint(uint64_t a1, const char *a2, int a3)
{
  v6 = *a1;
  Type = CGSVGPaintGetType(a2, a2);
  if (Type == 1)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    CGSVGPaintGetColorAllowUntagged(a2, v8, &v24);
    if (v26 == 3)
    {
      LODWORD(v26) = *(a1 + 56);
    }

    v9 = *(a1 + 40);
    if (a3 == 1)
    {
      *(&v25 + 1) = *(v9 - 88) * *(&v25 + 1);
      v21 = v24;
      v22 = v25;
      v23 = v26;
      CGColor = CGSVGColorCreateCGColor(&v21);
      CGContextSetStrokeColorWithColor(v6, CGColor);
      CGColorRelease(CGColor);
      v11 = *(a1 + 40);
      *(v11 - 160) = 0;
      *(v11 - 152) = 0;
LABEL_18:
      *(v11 - 216) = 1;
      return;
    }

    *(&v25 + 1) = *(v9 - 96) * *(&v25 + 1);
    v21 = v24;
    v22 = v25;
    v23 = v26;
    v20 = CGSVGColorCreateCGColor(&v21);
    CGContextSetFillColorWithColor(v6, v20);
    CGColorRelease(v20);
    v11 = *(a1 + 40);
    *(v11 - 184) = 0;
    *(v11 - 176) = 0;
LABEL_20:
    *(v11 - 215) = 1;
    return;
  }

  v12 = Type;
  if ((Type & 0xFFFFFFFE) == 2)
  {
    Gradient = CGSVGPaintGetGradient(a2, v8);
    Pattern = CGSVGPaintGetPattern(a2, v14);
    if (v12 == 2)
    {
      Attribute = CGSVGNodeFindAttribute(Gradient, 0x1C);
      if (Attribute)
      {
        v18 = CGSVGAttributeCopyString(Attribute, v17);
        v19 = CFStringGetCharacterAtIndex(v18, 0) == 117;
        CFRelease(v18);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 1;
    }

    v11 = *(a1 + 40);
    if (a3 == 1)
    {
      *(v11 - 160) = Gradient;
      *(v11 - 152) = Pattern;
      *(v11 - 144) = v19;
      goto LABEL_18;
    }

    *(v11 - 184) = Gradient;
    *(v11 - 176) = Pattern;
    *(v11 - 168) = v19;
    goto LABEL_20;
  }

  if (!Type)
  {
    if (a3 == 1)
    {
      CGContextSetRGBStrokeColor(v6, 0.0, 0.0, 0.0, 1.0);
      *(*(a1 + 40) - 216) = 0;
    }

    else
    {
      CGContextSetRGBFillColor(v6, 0.0, 0.0, 0.0, 1.0);
      *(*(a1 + 40) - 215) = 0;
    }
  }
}

void *CFRetained::getObject<SVGClipPath>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

uint64_t std::vector<CGSVGDrawState>::__emplace_back_slow_path<CGSVGDrawState const&>(uint64_t a1, const CGSVGDrawState *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGSVGDrawState>>(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  CGSVGDrawState::CGSVGDrawState((216 * v2), a2);
  v15 = 216 * v2 + 216;
  v7 = *(a1 + 8);
  v8 = (216 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGSVGDrawState>,CGSVGDrawState*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CGSVGDrawState>::~__split_buffer(&v13);
  return v12;
}

void sub_1DF12E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CGSVGDrawState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGSVGDrawState>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGSVGDrawState>,CGSVGDrawState*>(int a1, CGSVGDrawState *a2, CGSVGDrawState *a3, CGSVGDrawState *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      CGSVGDrawState::CGSVGDrawState(this, v8);
      v8 = (v8 + 216);
      this = (this + 216);
      v7 -= 216;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      CGSVGDrawState::~CGSVGDrawState(v6);
      v6 = (v6 + 216);
    }
  }
}

void sub_1DF12E9A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 216);
    do
    {
      CGSVGDrawState::~CGSVGDrawState(v4);
      v4 = (v5 - 216);
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<CGSVGDrawState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    CGSVGDrawState::~CGSVGDrawState((i - 216));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZL11DrawSVGNodeP21CGSVGDrawStateContextP9CGSVGNodePK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3 == 1)
  {
    v135 = *(a1 + 32);
    v136 = v135[3];
    if (v136)
    {
      (*(v136 + 16))(v135[3], *v135, a2);
      v135 = *(a1 + 32);
    }

    PopSVGNodeAttributes(v135, v3);
  }

  else
  {
    if (a3)
    {
      return;
    }

    PushSVGNodeAttributes(*(a1 + 32), a2);
    v6 = *(a1 + 32);
    v7 = v6[2];
    if (v7)
    {
      (*(v7 + 16))(v7, *v6, v3);
    }

    if (CGSVGNodeGetType(v3, v5) == 2 && DrawFilterNodeWithDefsOnly(v3, *(a1 + 40)))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      v193 = (v10 - 216);
      v11 = 1;
      allocator = *MEMORY[0x1E695E480];
      key = *MEMORY[0x1E6965790];
      alloc = *MEMORY[0x1E695E4A8];
      v183 = *MEMORY[0x1E6965898];
      v184 = *MEMORY[0x1E6965970];
      v178 = *MEMORY[0x1E6965A60];
      v179 = *MEMORY[0x1E69659D8];
      v180 = *MEMORY[0x1E6965A58];
      v181 = *MEMORY[0x1E6965A18];
      v182 = *MEMORY[0x1E6965658];
      c = *v9;
      v195 = v9;
      while (1)
      {
        do
        {
          v196 = v11;
          v12 = v11 ^ 1;
          if ((v11 ^ 1))
          {
            break;
          }

          v11 = 0;
        }

        while (!*(v10 - 215));
        if (!(v196 & 1 | (*v193 != 0)))
        {
          return;
        }

        CGContextBeginPath(c);
        Primitive = CGSVGShapeNodeGetPrimitive(v3, v13);
        v16 = Primitive;
        if (Primitive > 31)
        {
          if (Primitive != 32)
          {
            if (Primitive == 49)
            {
              x[0].a = 0.0;
              y[0].a = 0.0;
              valuePtr = 0.0;
              matrix.a = 0.0;
              v197.a = 0.0;
              v203.__r_.__value_.__r.__words[0] = 0;
              CGSVGShapeNodeGetRectGeometry(v3, x, y, &matrix, &v197, &v203, &valuePtr);
              a = matrix.a;
              v17 = allocator;
              v18 = c;
              v19 = v196;
              if (matrix.a <= 0.0)
              {
                goto LABEL_86;
              }

              v21 = v197.a;
              if (v197.a <= 0.0)
              {
                goto LABEL_86;
              }

              v22 = *&v203.__r_.__value_.__l.__data_;
              v23 = valuePtr;
              if (*&v203.__r_.__value_.__l.__data_ > 0.0 || valuePtr > 0.0)
              {
                if (*&v203.__r_.__value_.__l.__data_ > 0.0)
                {
                  if (valuePtr <= 0.0)
                  {
                    valuePtr = *&v203.__r_.__value_.__l.__data_;
                    v23 = *&v203.__r_.__value_.__l.__data_;
                  }
                }

                else
                {
                  *&v203.__r_.__value_.__l.__data_ = valuePtr;
                  v22 = valuePtr;
                }
              }

              else
              {
                valuePtr = 0.0;
                v203.__r_.__value_.__r.__words[0] = 0;
                v23 = 0.0;
                v22 = 0.0;
              }

              if (v22 > matrix.a * 0.5)
              {
                *&v203.__r_.__value_.__l.__data_ = matrix.a * 0.5;
                v22 = matrix.a * 0.5;
              }

              if (v23 > v197.a * 0.5)
              {
                valuePtr = v197.a * 0.5;
                v23 = v197.a * 0.5;
              }

              v54 = x[0].a;
              v55 = y[0].a;
              CGPath = CGPathCreateWithRoundedRect(*(&a - 2), v22, v23, 0);
LABEL_85:
              v56 = CGPath;
              CGContextAddPath(v18, CGPath);
              CFRelease(v56);
              goto LABEL_86;
            }

LABEL_24:
            if ((Primitive & 0xFFFFFFFE) == 0x2C)
            {
              FloatCount = CGSVGShapeNodeGetFloatCount(v3, v15);
              v17 = allocator;
              v18 = c;
              v19 = v196;
              if (FloatCount >= 3)
              {
                v25 = FloatCount;
                v26 = malloc_type_malloc(8 * FloatCount, 0x100004000313F17uLL);
                CGSVGShapeNodeGetFloats(v3, v26);
                CGContextMoveToPoint(c, *v26, *(v26 + 1));
                v27 = 0;
                do
                {
                  CGContextAddLineToPoint(c, *(v26 + v27 + 2), *(v26 + v27 + 3));
                  v28 = v27 + 4;
                  v27 += 2;
                }

                while (v28 < v25);
                if (v16 == 44)
                {
                  CGContextClosePath(c);
                }

                free(v26);
              }

              goto LABEL_86;
            }

            if (Primitive != 10001)
            {
              v17 = allocator;
              v18 = c;
              v19 = v196;
              if (Primitive != 42)
              {
                goto LABEL_86;
              }

              Path = CGSVGShapeNodeGetPath(v3, v15);
              if (!Path)
              {
                goto LABEL_86;
              }

              CGPath = CGSVGPathCreateCGPath(Path, v30);
              if (!CGPath)
              {
                goto LABEL_86;
              }

              goto LABEL_85;
            }

            v32 = CGSVGShapeNodeCopyText(v3, v15);
            if (v32)
            {
              str = v32;
              AttributeMap = CGSVGNodeGetAttributeMap(v3, v33);
              CGSVGDrawState::CGSVGDrawState(x, (*(v195 + 40) - 216));
              v201 = 0.0;
              Attribute = CGSVGAttributeMapGetAttribute(AttributeMap, 0x43);
              if (Attribute && (CGSVGAttributeGetFloat(Attribute, &v201) & 1) == 0)
              {
                SVGUtilities::log("Text node x argument is unexpected type", v36);
              }

              v200 = 0.0;
              v37 = CGSVGAttributeMapGetAttribute(AttributeMap, 0x46);
              if (v37 && (CGSVGAttributeGetFloat(v37, &v200) & 1) == 0)
              {
                SVGUtilities::log("Text node y argument is unexpected type", v38);
              }

              ColorForNode = CreateColorForNode(v3, 0x39);
              v40 = CreateColorForNode(v3, 0x12);
              CGSVGDrawState::CGSVGDrawState(y, x);
              valuePtr = y[0].c / 400.0 + -1.0;
              SVGUtilities::StringWithCFString(v199, &matrix);
              v187 = v40;
              v190 = v3;
              if (matrix.c >= 0.0)
              {
                v41 = COERCE_DOUBLE(&matrix);
              }

              else
              {
                v41 = matrix.a;
              }

              memset(&v197, 0, 24);
              SVGParser::GetComponentsSeparatedByDelimiters(*&v41, ",", &v197);
              v43 = v197.a;
              b = v197.b;
              while (*&v43 != *&b)
              {
                if (*(*&v43 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v203, **&v43, *(*&v43 + 8));
                }

                else
                {
                  v44 = **&v43;
                  v203.__r_.__value_.__r.__words[2] = *(*&v43 + 16);
                  *&v203.__r_.__value_.__l.__data_ = v44;
                }

                if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = &v203;
                }

                else
                {
                  v45 = v203.__r_.__value_.__r.__words[0];
                }

                v46 = strlen(v45);
                if (!strncasecmp(v45, "monospace", v46))
                {
                  v47 = "Courier";
                }

                else if (!strncasecmp(v45, "serif", v46))
                {
                  v47 = "Times";
                }

                else if (!strncasecmp(v45, "sans-serif", v46))
                {
                  v47 = "Helvetica";
                }

                else if (!strncasecmp(v45, "cursive", v46))
                {
                  v47 = "Apple Chancery";
                }

                else if (!strncasecmp(v45, "fantasy", v46))
                {
                  v47 = "Papyrus";
                }

                else
                {
                  v47 = v45;
                }

                Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v49 = CFStringCreateWithCString(allocator, v47, 0x8000100u);
                CFDictionaryAddValue(Mutable, key, v49);
                CFRelease(v49);
                if (valuePtr != 0.0)
                {
                  v50 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  v51 = CFNumberCreate(alloc, kCFNumberCGFloatType, &valuePtr);
                  CFDictionaryAddValue(v50, v184, v51);
                  CFRelease(v51);
                  CFDictionaryAddValue(Mutable, v183, v50);
                  CFRelease(v50);
                }

                v52 = CTFontDescriptorCreateWithAttributes(Mutable);
                CFRelease(Mutable);
                v53 = CTFontCreateWithFontDescriptor(v52, y[0].b, 0);
                CFRelease(v52);
                if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v203.__r_.__value_.__l.__data_);
                }

                if (v53)
                {
                  goto LABEL_124;
                }

                *&v43 += 24;
              }

              v53 = 0;
LABEL_124:
              v203.__r_.__value_.__r.__words[0] = &v197;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v203);
              if (SHIBYTE(matrix.c) < 0)
              {
                operator delete(*&matrix.a);
              }

              CGSVGDrawState::~CGSVGDrawState(y);
              v3 = v190;
              v112 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFDictionarySetValue(v112, v182, v53);
              CFRelease(v53);
              if (ColorForNode)
              {
                CFDictionarySetValue(v112, v180, ColorForNode);
                CFRelease(ColorForNode);
                matrix.a = 0.0;
                v113 = CGSVGNodeFindAttribute(v190, 0x3B);
                CGSVGAttributeGetFloat(v113, &matrix);
                v114 = matrix.a;
                v115 = v114 * 100.0 / CTFontGetSize(v53);
                if (v187)
                {
                  v115 = -v115;
                }

                matrix.a = v115;
                v116 = CFNumberCreate(0, kCFNumberCGFloatType, &matrix);
                CFDictionarySetValue(v112, v178, v116);
                CFRelease(v116);
                v12 = 0;
              }

              if (v187)
              {
                CFDictionarySetValue(v112, v179, v187);
                CFRelease(v187);
              }

              else
              {
                v12 |= v196;
              }

              v117 = CFNumberCreate(alloc, kCFNumberCGFloatType, &x[0].d);
              CFDictionarySetValue(v112, v181, v117);
              CFRelease(v117);
              attrString = CFAttributedStringCreate(alloc, str, v112);
              CFRelease(str);
              CFRelease(v112);
              line = CTLineCreateWithAttributedString(attrString);
              memset(&matrix, 0, sizeof(matrix));
              CGAffineTransformMakeScale(&matrix, 1.0, -1.0);
              v177 = *v195;
              v118 = CGSVGNodeFindAttribute(v190, 0x9D);
              if (v118)
              {
                v120 = CGSVGAttributeCopyString(v118, v119);
                if (v120)
                {
                  ImageBounds = CTLineGetImageBounds(line, v177);
                  width = ImageBounds.size.width;
                  if (CFStringCompare(v120, @"end", 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_138;
                  }

                  if (CFStringCompare(v120, @"middle", 0) == kCFCompareEqualTo)
                  {
                    width >>= 1;
LABEL_138:
                    v201 = v201 - width;
                  }

                  CFRelease(v120);
                }
              }

              if (v12)
              {
                v122 = CGPathCreateMutable();
                GlyphRuns = CTLineGetGlyphRuns(line);
                Count = CFArrayGetCount(GlyphRuns);
                if (Count >= 1)
                {
                  v124 = 0;
                  stra = GlyphRuns;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v124);
                    GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
                    GlyphsPtr = CTRunGetGlyphsPtr(ValueAtIndex);
                    if (GlyphsPtr)
                    {
                      memset(&v197, 0, 24);
                      std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&v197, GlyphsPtr, &GlyphsPtr[GlyphCount], GlyphCount);
                      v128 = v197.a;
                    }

                    else
                    {
                      std::vector<unsigned short>::vector[abi:ne200100](&v197, GlyphCount);
                      v128 = v197.a;
                      v207.location = 0;
                      v207.length = GlyphCount;
                      CTRunGetGlyphs(ValueAtIndex, v207, *&v197.a);
                    }

                    PositionsPtr = CTRunGetPositionsPtr(ValueAtIndex);
                    if (PositionsPtr)
                    {
                      memset(&v197, 0, 24);
                      std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(&v197, PositionsPtr, &PositionsPtr[GlyphCount], GlyphCount);
                      v130 = v197.a;
                    }

                    else
                    {
                      std::vector<CGPoint>::vector[abi:ne200100](&v197, GlyphCount);
                      v130 = v197.a;
                      v208.location = 0;
                      v208.length = GlyphCount;
                      CTRunGetPositions(ValueAtIndex, v208, *&v197.a);
                    }

                    if (GlyphCount >= 1)
                    {
                      break;
                    }

                    if (v130 != 0.0)
                    {
                      goto LABEL_154;
                    }

LABEL_155:
                    if (v128 != 0.0)
                    {
                      operator delete(*&v128);
                    }

                    ++v124;
                    GlyphRuns = stra;
                    v3 = v190;
                    if (v124 == Count)
                    {
                      goto LABEL_158;
                    }
                  }

                  v131 = (*&v130 + 8);
                  v132 = *&v128;
                  do
                  {
                    v133 = *v132++;
                    v134 = CTFontCreatePathForGlyph(v53, v133, &matrix);
                    memset(&v197, 0, sizeof(v197));
                    CGAffineTransformMakeTranslation(&v197, v201 + *(v131 - 1), v200 + *v131);
                    CGPathAddPath(v122, &v197, v134);
                    CGPathRelease(v134);
                    v131 += 2;
                    --GlyphCount;
                  }

                  while (GlyphCount);
LABEL_154:
                  operator delete(*&v130);
                  goto LABEL_155;
                }

LABEL_158:
                CGContextAddPath(v177, v122);
                CGPathRelease(v122);
              }

              else
              {
                v197 = matrix;
                CGContextSetTextMatrix(v177, &v197);
                CGContextSetTextPosition(v177, v201, v200);
                CTLineDraw(line, v177);
              }

              CFRelease(attrString);
              CFRelease(line);
              CGSVGDrawState::~CGSVGDrawState(x);
            }

            v17 = allocator;
            v18 = c;
            goto LABEL_35;
          }

          x[0].a = 0.0;
          y[0].a = 0.0;
          matrix.a = 0.0;
          v197.a = 0.0;
          CGSVGShapeNodeGetLineGeometry(v3, x, y, &matrix, &v197.a);
          v18 = c;
          CGContextMoveToPoint(c, x[0].a, y[0].a);
          CGContextAddLineToPoint(c, matrix.a, v197.a);
        }

        else
        {
          if (Primitive != 3)
          {
            if (Primitive == 16)
            {
              x[0].a = 0.0;
              y[0].a = 0.0;
              matrix.a = 0.0;
              v197.a = 0.0;
              CGSVGShapeNodeGetEllipseGeometry(v3, x, y, &matrix, &v197.a);
              v17 = allocator;
              v18 = c;
              v19 = v196;
              if (matrix.a > 0.0 && v197.a > 0.0)
              {
                v213.origin.x = x[0].a - matrix.a;
                v213.origin.y = y[0].a - v197.a;
                v213.size.width = matrix.a + matrix.a;
                v213.size.height = v197.a + v197.a;
                CGContextAddEllipseInRect(c, v213);
              }

              goto LABEL_86;
            }

            goto LABEL_24;
          }

          x[0].a = 0.0;
          y[0].a = 0.0;
          matrix.a = 0.0;
          CGSVGShapeNodeGetCircleGeometry(v3, x, y, &matrix.a);
          v18 = c;
          if (matrix.a > 0.0)
          {
            v214.origin.x = x[0].a - matrix.a;
            v214.origin.y = y[0].a - matrix.a;
            v214.size.width = matrix.a + matrix.a;
            v214.size.height = matrix.a + matrix.a;
            CGContextAddEllipseInRect(c, v214);
          }
        }

        v17 = allocator;
LABEL_35:
        v19 = v196;
LABEL_86:
        v57 = *(v10 - 212);
        v58 = *(v10 - 160) != 0;
        if (v19)
        {
          v58 = *(v10 - 184) != 0;
        }

        if (v58)
        {
          CGContextSaveGState(v18);
          if ((v19 & 1) == 0)
          {
            CGContextReplacePathWithStrokedPath(v18);
          }

          *(v10 - 136) = CGContextGetPathBoundingBox(v18);
          if (v57)
          {
            if (v57 == 1)
            {
              CGContextEOClip(v18);
            }
          }

          else
          {
            CGContextClip(v18);
          }

          v59 = 56;
          if (v19)
          {
            v59 = 32;
          }

          v60 = 64;
          if (v19)
          {
            v60 = 40;
          }

          v61 = 72;
          if (v19)
          {
            v61 = 48;
          }

          v62 = 128;
          if (v19)
          {
            v62 = 120;
          }

          v63 = *&v193[v59];
          v64 = *&v193[v60];
          v65 = v193[v61];
          v66 = *&v193[v62];
          v67 = *v195;
          v68 = *(v10 - 136);
          v69 = *(v10 - 128);
          v70 = *(v10 - 120);
          v71 = *(v10 - 112);
          CGContextSaveGState(*v195);
          if ((v65 & 1) == 0)
          {
            CGContextTranslateCTM(v67, v68, v69);
            CGContextScaleCTM(v67, v70, v71);
          }

          if (v63)
          {
            NumberOfStops = CGSVGGradientGetNumberOfStops(v63, v72);
            v74 = CFArrayCreateMutable(v17, NumberOfStops, MEMORY[0x1E695E9C0]);
            v75 = malloc_type_malloc(8 * NumberOfStops, 0x100004000313F17uLL);
            if (NumberOfStops)
            {
              for (i = 0; i != NumberOfStops; ++i)
              {
                Stop = CGSVGGradientGetStop(v63, i);
                Opacity = CGSVGGradientStopGetOpacity(Stop, v78);
                CGSVGGradientStopGetOffset(Stop, v80);
                v75[i] = CGSVGLengthScaledLength(v81, v82, 1.0);
                memset(x, 0, 40);
                CGSVGGradientStopGetColorAllowUntagged(Stop, v83, x);
                if (LODWORD(x[0].tx) == 3)
                {
                  LODWORD(x[0].tx) = *(v195 + 56);
                }

                x[0].d = v66 * Opacity;
                *&y[0].a = *&x[0].a;
                *&y[0].c = *&x[0].c;
                y[0].tx = x[0].tx;
                CGColor = CGSVGColorCreateCGColor(y);
                CFArrayAppendValue(v74, CGColor);
                CFRelease(CGColor);
              }
            }

            v85 = CGGradientCreateWithColors(0, v74, v75);
            free(v75);
            CFRelease(v74);
            Type = CGSVGGradientGetType(v63, v86);
            memset(&matrix, 0, 32);
            if (Type)
            {
              CGSVGGradientGetCenter(v63, v88, &matrix);
              memset(&v197, 0, 32);
              CGSVGGradientGetFocal(v63, v89, &v197);
              CGSVGGradientGetRadius(v63, v90);
              v92 = v91;
              v94 = v93;
              *&x[0].a = *&matrix.a;
              *&x[0].c = *&matrix.c;
              v95 = CGSVGPointScaledPoint(x, 1.0);
              v97 = v96;
              *&x[0].a = *&v197.a;
              *&x[0].c = *&v197.c;
              v98 = CGSVGPointScaledPoint(x, 1.0);
              v100 = v99;
              v101 = CGSVGLengthScaledLength(v92, v94, 1.0);
              memset(x, 0, 48);
              CGSVGGradientGetGradientTransform(v63, v102, x);
              y[0] = x[0];
              CGContextConcatCTM(v67, y);
              v209.x = v98;
              v209.y = v100;
              v212.x = v95;
              v212.y = v97;
              CGContextDrawRadialGradient(v67, v85, v209, 0.0, v212, v101, 3u);
            }

            else
            {
              CGSVGGradientGetStart(v63, v88, &matrix);
              memset(&v197, 0, 32);
              CGSVGGradientGetEnd(v63, v104, &v197);
              *&x[0].a = *&matrix.a;
              *&x[0].c = *&matrix.c;
              v105 = CGSVGPointScaledPoint(x, 1.0);
              v107 = v106;
              *&x[0].a = *&v197.a;
              *&x[0].c = *&v197.c;
              v108 = CGSVGPointScaledPoint(x, 1.0);
              v110 = v109;
              memset(x, 0, 48);
              CGSVGGradientGetGradientTransform(v63, v111, x);
              y[0] = x[0];
              CGContextConcatCTM(v67, y);
              v210.x = v105;
              v210.y = v107;
              v211.x = v108;
              v211.y = v110;
              CGContextDrawLinearGradient(v67, v85, v210, v211, 3u);
            }

            v18 = c;
            v19 = v196;
            CGGradientRelease(v85);
          }

          else
          {
            v103 = CFRetained::getObject<SVGPattern>(v64, v72);
            SVGPattern::drawCells(v103, v67, *(v10 - 136), v66);
          }

          CGContextRestoreGState(v67);
          CGContextRestoreGState(v18);
          if ((v19 & 1) == 0)
          {
            *(v10 - 160) = 0;
            *(v10 - 152) = 0;
            return;
          }

          v11 = 0;
          *(v10 - 184) = 0;
          *(v10 - 176) = 0;
        }

        else
        {
          if ((v19 & 1) == 0)
          {
            CGContextStrokePath(v18);
            return;
          }

          if (v57)
          {
            v11 = 0;
            if (v57 == 1)
            {
              CGContextEOFillPath(c);
              v11 = 0;
            }
          }

          else
          {
            CGContextFillPath(v18);
            v11 = 0;
          }
        }
      }
    }

    if (CGSVGNodeTypeIsViewBoxNode(v3, v8) && DrawFilterNodeWithDefsOnly(v3, *(a1 + 40)))
    {
      v138 = *(a1 + 32);
      CanvasSize = GetCanvasSize(v3, v137);
      v141 = v140;
      Viewbox = CGSVGViewBoxNodeGetViewbox(v3, v142);
      v145 = v144;
      v147 = v146;
      v149 = v148;
      AspectRatio = CGSVGViewBoxNodeGetAspectRatio(v3, v150);
      AspectRatioMeetOrSlice = CGSVGViewBoxNodeGetAspectRatioMeetOrSlice(v3, v152);
      v154 = *(MEMORY[0x1E695EFD0] + 16);
      *&x[0].a = *MEMORY[0x1E695EFD0];
      *&x[0].c = v154;
      *&x[0].tx = *(MEMORY[0x1E695EFD0] + 32);
      if (v147 <= 0.0 || v149 <= 0.0)
      {
        v158 = *(MEMORY[0x1E695EFD0] + 16);
        *&y[0].a = *MEMORY[0x1E695EFD0];
        *&y[0].c = v158;
        *&y[0].tx = *(MEMORY[0x1E695EFD0] + 32);
        CGAffineTransformTranslate(x, y, -Viewbox, -v145);
LABEL_192:
        v170 = *v138;
        Position = CGSVGViewBoxNodeGetPosition(v3, v159);
        CGContextTranslateCTM(v170, Position, v172);
        v216.origin.x = 0.0;
        v216.origin.y = 0.0;
        v216.size.width = CanvasSize;
        v216.size.height = v141;
        CGContextClipToRect(v170, v216);
        y[0] = x[0];
        CGContextConcatCTM(v170, y);
        v174 = CFRetained::getObject<SVGViewBoxNode>(v3, v173);
        (*(*v174 + 72))(v174, v170);
        return;
      }

      if (!AspectRatio)
      {
        v160 = *(MEMORY[0x1E695EFD0] + 16);
        *&y[0].a = *MEMORY[0x1E695EFD0];
        *&y[0].c = v160;
        *&y[0].tx = *(MEMORY[0x1E695EFD0] + 32);
        CGAffineTransformScale(x, y, CanvasSize / v147, v141 / v149);
        matrix = x[0];
        v161 = -Viewbox;
        v162 = -v145;
LABEL_191:
        CGAffineTransformTranslate(y, &matrix, v161, v162);
        x[0] = y[0];
        goto LABEL_192;
      }

      v155 = CanvasSize / v147;
      v156 = v141 / v149;
      y[0].a = CanvasSize / v147;
      matrix.a = v141 / v149;
      if (AspectRatioMeetOrSlice)
      {
        v157 = v155 < v156;
      }

      else
      {
        v157 = v156 < v155;
      }

      p_matrix = y;
      if (v157)
      {
        p_matrix = &matrix;
      }

      v164 = p_matrix->a;
      v165 = v147 * p_matrix->a;
      v166 = *(MEMORY[0x1E695EFD0] + 16);
      *&y[0].a = *MEMORY[0x1E695EFD0];
      *&y[0].c = v166;
      *&y[0].tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformScale(x, y, v164, v164);
      matrix = x[0];
      CGAffineTransformTranslate(y, &matrix, -Viewbox, -v145);
      x[0] = y[0];
      if (AspectRatio <= 8)
      {
        v167 = 0.0;
        if (((1 << AspectRatio) & 0x92) != 0)
        {
LABEL_186:
          v168 = 0.0;
          if (AspectRatio >= 4)
          {
            v169 = v149 * v164;
            if (AspectRatio - 4 > 2)
            {
              v168 = v141 - v169;
            }

            else
            {
              v168 = v141 * 0.5 - v169 * 0.5;
            }
          }

          matrix = x[0];
          v161 = v167 / v164;
          v162 = v168 / v164;
          goto LABEL_191;
        }

        if (((1 << AspectRatio) & 0x124) != 0)
        {
          v167 = CanvasSize * 0.5 - v165 * 0.5;
          goto LABEL_186;
        }
      }

      v167 = CanvasSize - v165;
      goto LABEL_186;
    }
  }
}

uint64_t DrawFilterNodeWithDefsOnly(uint64_t a1, const char *a2)
{
  AttributeMap = CGSVGNodeGetAttributeMap(a1, a2);
  Attribute = CGSVGAttributeMapGetAttribute(AttributeMap, 0x54);
  v6 = 0;
  if (!Attribute || !CGSVGAttributeGetFilter(Attribute, &v6))
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a2, @"drawingDefinition");
  if (result)
  {
    return 1;
  }

  return result;
}

CGColorRef CreateColorForNode(uint64_t a1, const char *a2)
{
  Attribute = CGSVGNodeFindAttribute(a1, a2);
  v7 = 0;
  if (!CGSVGAttributeGetPaint(Attribute, &v7) || CGSVGPaintGetType(v7, v3) != 1)
  {
    return 0;
  }

  CGSVGPaintGetColor(v7, v4, v6);
  return CGSVGColorCreateCGColor(v6);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DF12FFD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DF1300C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CGPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DF130140(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DF1301F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *CFRetained::getObject<SVGPattern>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

void *CFRetained::getObject<SVGFilter>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

void std::vector<CGSVGDrawState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        CGSVGDrawState::~CGSVGDrawState((v4 - 216));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__split_buffer<CGSVGNode *>::emplace_back<CGSVGNode *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(result[4], v11);
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

uint64_t std::vector<CGSVGDrawState>::__emplace_back_slow_path<CGSVGDrawState>(uint64_t a1, const CGSVGDrawState *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGSVGDrawState>>(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  CGSVGDrawState::CGSVGDrawState((216 * v2), a2);
  v15 = 216 * v2 + 216;
  v7 = *(a1 + 8);
  v8 = (216 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGSVGDrawState>,CGSVGDrawState*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CGSVGDrawState>::~__split_buffer(&v13);
  return v12;
}

void sub_1DF1305CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CGSVGDrawState>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t CGSVGFilterGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF130638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGSVGFilterPrimitiveGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF1306AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGFilterPrimitiveRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGFilterPrimitiveRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef CGSVGFilterRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGFilterRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void SVGImage::SVGImage(SVGImage *this)
{
  v2 = 5;
  strcpy(__p, "image");
  SVGViewBoxNode::SVGViewBoxNode(this, __p);
}

void sub_1DF1308BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGImage::SVGImage(SVGImage *this, SVGDocument *a2)
{
  SVGImage::SVGImage(this);
}

{
  SVGImage::SVGImage(this);
}

void SVGImage::~SVGImage(SVGImage *this)
{
  *this = &unk_1F5A44210;
  v2 = *(this + 72);
  if (v2 == 2)
  {
    CFRetained::release(*(this + 37));
  }

  else if (v2 == 1)
  {
    CGImageRelease(*(this + 37));
  }

  v3 = *(this + 35);
  if (v3)
  {
    CFRelease(v3);
  }

  CGPathRelease(*(this + 39));

  SVGMask::~SVGMask(this);
}

{
  SVGImage::~SVGImage(this);

  JUMPOUT(0x1E12CE5D0);
}

void SVGImage::SVGImage(SVGImage *this, CGImage *a2)
{
  SVGImage::SVGImage(this);
}

{
  SVGImage::SVGImage(this);
}

BOOL SVGImage::rasterImage(SVGImage *this, CGImage **a2)
{
  v2 = *(this + 72);
  if (v2 == 1)
  {
    *a2 = *(this + 37);
  }

  return v2 == 1;
}

BOOL SVGImage::svgImage(SVGImage *this, SVGDocument **a2)
{
  v2 = *(this + 72);
  if (v2 == 2)
  {
    *a2 = *(this + 37);
  }

  return v2 == 2;
}

void SVGImage::draw(SVGImage *this, CGContextRef c)
{
  CGContextScaleCTM(c, 1.0, -1.0);
  v4 = *(this + 72);
  if (v4)
  {
    if (v4 == 2)
    {
      SVGDocument::canvasSize(*(this + 37));
      v12 = *(*(this + 37) + 40);
      CGContextTranslateCTM(c, 0.0, -v13);

      CGContextDrawSVGDocument(c, v12);
    }

    else if (v4 == 1)
    {
      Width = CGImageGetWidth(*(this + 37));
      Height = CGImageGetHeight(*(this + 37));
      CGContextTranslateCTM(c, 0.0, -Height);
      v7 = *(this + 37);
      v8 = 0;
      v9 = 0;
      v10 = Width;
      v11 = Height;

      CGContextDrawImage(c, *&v8, v7);
    }
  }

  else if (*(this + 304) == 1)
  {
    v14 = *(this + 29);
    CGContextSetRGBStrokeColor(c, 1.0, 0.0, 0.0, 1.0);
    CGContextTranslateCTM(c, 0.0, -v14);
    CGContextAddPath(c, *(this + 39));

    CGContextDrawPath(c, kCGPathStroke);
  }
}

uint64_t SVGImage::hasWideGamutColor(SVGImage *this)
{
  v2 = *(this + 72);
  if (v2 == 2)
  {
    v5 = *(this + 37);

    return SVGDocument::hasWideGamutContent(v5);
  }

  else if (v2 == 1)
  {
    ColorSpace = CGImageGetColorSpace(*(this + 37));

    return CGColorSpaceIsWideGamutRGB(ColorSpace);
  }

  else
  {
    return 0;
  }
}

uint64_t SVGImage::print(SVGImage *this, const char *a2)
{
  SVGUtilities::print("\n", a2);
  v4 = SVGUtilities::print("ImageNode: Size: {%.2f, %.2f} Viewbox: ", v3, *(this + 28), *(this + 29));
  SVGUtilities::printIgnoringIndentation(v4, *(this + 240));

  return SVGUtilities::print("\n", v5);
}

void SVGImage::updatedAttributes(SVGImage *this, SVGAttributeMap *a2)
{
  SVGViewBoxNode::updatedAttributes(this, a2);

  SVGImage::calcSize(this);
}

void SVGImage::calcSize(SVGImage *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 72);
  if (v2 == 2)
  {
    v3 = *(*(this + 37) + 48);
    v4 = v3[16];
    *(this + 15) = v3[15];
    *(this + 16) = v4;
    v3[13] = *MEMORY[0x1E695EFF8];
    SVGDocument::validateSizes(*(this + 37));
    v2 = *(this + 72);
  }

  if (!v2 && *(this + 304) == 1)
  {
    Mutable = CGPathCreateMutable();
    points.x = 0.0;
    points.y = 0.0;
    v14.size.width = *(this + 28);
    v14.size.height = *(this + 29);
    width = v14.size.width;
    height = v14.size.height;
    v10.x = 0.0;
    v10.y = v14.size.height;
    v11 = v14.size.width;
    v12 = 0;
    v6 = MEMORY[0x1E695EFD0];
    v14.origin.x = 0.0;
    v14.origin.y = 0.0;
    CGPathAddRect(Mutable, MEMORY[0x1E695EFD0], v14);
    CGPathAddLines(Mutable, v6, &points, 2uLL);
    CGPathAddLines(Mutable, v6, &v10, 2uLL);
    CGPathRelease(*(this + 39));
    *(this + 39) = Mutable;
  }
}

uint64_t SVGImage::updatedSpecificAttribute(uint64_t a1, int a2, SVGAttribute *this)
{
  if (a2 == 65)
  {
    return 1;
  }

  if (a2 != 20000)
  {
    return 0;
  }

  v5 = *(a1 + 280);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = SVGAttribute::stringValue(this);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v13.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&v13.__r_.__value_.__l.__data_ = v7;
  }

  CFURLFromString = SVGUtilities::CreateCFURLFromString(&v13, 0);
  v10 = CFURLFromString;
  *(a1 + 280) = CFURLFromString;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
    if (v10)
    {
      return 1;
    }

LABEL_14:
    v11 = SVGAtom::ToString(0x4E20u);
    SVGUtilities::error("Failed to parse %s for node name svg", v12, v11);
    return 1;
  }

  if (!CFURLFromString)
  {
    goto LABEL_14;
  }

  return 1;
}

void sub_1DF131110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGImage::hasMonochromeColor(SVGImage *this)
{
  v2 = *(this + 72);
  if (v2 == 1)
  {
    ColorSpace = CGImageGetColorSpace(*(this + 37));
    return CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelMonochrome;
  }

  else if (v2 == 2)
  {
    v3 = *(this + 37);

    return SVGDocument::hasMonochromeContent(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t CGSVGPaintGetTypeID()
{
  v0 = strlen(SVGPaint::kSVGPaintClassName);
  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v1 = v0;
  if (v0 >= 0x17)
  {
    operator new();
  }

  v5 = v0;
  if (v0)
  {
    memmove(&__dst, SVGPaint::kSVGPaintClassName, v0);
  }

  *(&__dst + v1) = 0;
  TypeID = CFRetained::getTypeID(&__dst);
  if (v5 < 0)
  {
    operator delete(__dst);
  }

  return TypeID;
}

void sub_1DF131328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CGSVGPaintCreateWithGradient(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *CGSVGPaintCreateWithPattern(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPattern>(a1, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

CFTypeRef CGSVGPaintRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGPaintRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unsigned int *CGSVGPaintGetType(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPaint>(a1, a2);
  if (result)
  {
    return result[12];
  }

  return result;
}

void *CFRetained::getObject<SVGPaint>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

double *CGSVGPaintIsVisible(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPaint>(a1, a2);
  if (result)
  {
    if (*(result + 12))
    {
      return (result[12] > 0.0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double CGSVGPaintGetOpacity(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGPaint>(a1, a2);
  if (v2)
  {
    return v2[12];
  }

  else
  {
    return 1.0;
  }
}

double *CGSVGPaintSetOpacity(uint64_t a1, const char *a2, double a3)
{
  result = CFRetained::getObject<SVGPaint>(a1, a2);
  if (result)
  {
    result[12] = a3;
  }

  return result;
}

void CGSVGPaintGetColor(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  CGSVGPaintGetColorAllowUntagged(a1, a2, a3);
  if (*(a3 + 32) == 3)
  {
    *(a3 + 32) = 0;
  }
}

void CGSVGPaintGetColorAllowUntagged(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = CFRetained::getObject<SVGPaint>(a1, a2);
  if (v4)
  {
    SVGColor::SVGColor(v7, v4 + 56);
    if (v8 == 73)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    if (v8 == 53)
    {
      v5 = 0;
    }

    if (v8 == 15)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    CGSVGColorCreateWithRGBA(v6, a3, v7[0], v7[1], v7[2], v7[3]);
  }

  else
  {

    CGSVGColorCreateRGBA(a3, 0.0, 0.0, 0.0, 0.0);
  }
}

void *CGSVGPaintGetGradient(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPaint>(a1, a2);
  if (result)
  {
    v3 = result[13];
    if (v3)
    {
      return *(v3 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *CGSVGPaintGetPattern(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPaint>(a1, a2);
  if (result)
  {
    v3 = result[14];
    if (v3)
    {
      return *(v3 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void SVGGradientStop::SVGGradientStop(SVGGradientStop *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGGradientStop::kSVGGradientStopClassName);
  CFRetained::CFRetained(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44288;
  SVGColor::SVGColor(this + 48, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 11) = 0x3FF0000000000000;
}

void sub_1DF131868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void SVGGradientStop::SVGGradientStop(SVGGradientStop *this, const SVGColor *a2, double a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGGradientStop::kSVGGradientStopClassName);
  CFRetained::CFRetained(this, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44288;
  SVGColor::SVGColor(this + 48, a2);
  *(this + 11) = 0x3FF0000000000000;
  CGSVGLengthMake();
  *(this + 12) = v5;
  *(this + 13) = v6;
}

void sub_1DF131960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *SVGGradientStop::SVGGradientStop(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGGradientStop::kSVGGradientStopClassName);
  CFRetained::CFRetained(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5A44288;
  SVGColor::SVGColor((a1 + 6), a2);
  a1[11] = 0x3FF0000000000000;
  a1[12] = a3;
  a1[13] = a4;
  return a1;
}

void sub_1DF131A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void SVGGradientStop::SVGGradientStop(SVGGradientStop *this, const SVGGradientStop *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGGradientStop::kSVGGradientStopClassName);
  CFRetained::CFRetained(this, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44288;
  v4 = SVGColor::SVGColor(this + 48, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 11) = 0x3FF0000000000000;
  *(this + 6) = *(a2 + 6);
  SVGColor::operator=(v4, a2 + 48);
  *(this + 11) = *(a2 + 11);
}

void sub_1DF131B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SVGGradientStop::~SVGGradientStop(void **this)
{
  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E12CE5D0);
}

BOOL SVGGradientStop::isEqual(SVGGradientStop *this, const SVGGradientStop *a2)
{
  result = CGSVGLengthEqualToLength(*(this + 12), *(this + 13), *(a2 + 12), *(a2 + 13));
  if (result)
  {
    result = SVGColor::isEqual((this + 48), (a2 + 48));
    if (result)
    {
      return *(this + 11) == *(a2 + 11);
    }
  }

  return result;
}

void SVGGradientStop::print(SVGGradientStop *this)
{
  SVGColor::SVGColor(v4, this + 48);
  SVGColor::GetStringForColor(v4, v5);
  if (v6 >= 0)
  {
    v3 = v5;
  }

  else
  {
    v3 = v5[0];
  }

  SVGUtilities::print("Stop: Offset: %g, Color: %s\n", v2, *(this + 12), v3);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1DF131E0C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF131F1C(_Unwind_Exception *a1, CFRetained *a2)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 28) = v5;
    operator delete(v5);
  }

  SVGNode::~SVGNode(v2, a2);
  _Unwind_Resume(a1);
}

void sub_1DF13206C(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10B3C40C1F8F287);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 28) = v6;
    operator delete(v6);
  }

  SVGNode::~SVGNode(v1, v5);
  _Unwind_Resume(a1);
}

uint64_t SVGGradient::addStop(SVGGradient *this, SVGGradientStop *a2)
{
  v6 = a2;
  v4 = *(this + 27);
  v3 = *(this + 28);
  v2 = this + 216;
  if (v3 != v4 && (*(a2 + 12) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    *(a2 + 6) = *(*(v3 - 8) + 96);
  }

  std::vector<SVGPathCommand *>::push_back[abi:ne200100](v2, &v6);
  return CFRetained::retain(v6);
}

void SVGGradient::~SVGGradient(SVGGradient *this, CFRetained *a2)
{
  *this = &unk_1F5A442A8;
  v3 = *(this + 27);
  v4 = *(this + 28);
  if (v3 != v4)
  {
    do
    {
      CFRetained::release(*v3++);
    }

    while (v3 != v4);
    v3 = *(this + 27);
  }

  if (v3)
  {
    *(this + 28) = v3;
    operator delete(v3);
  }

  SVGNode::~SVGNode(this, a2);
}

{
  SVGGradient::~SVGGradient(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGGradient::updatedAttributes(SVGGradient *this, SVGAttributeMap *a2)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x4802000000;
  v51 = __Block_byref_object_copy__1;
  v52 = __Block_byref_object_dispose__1;
  memset(v53, 0, sizeof(v53));
  CGSVGPointMake(v53, 0.0, 0.0);
  v42 = 0;
  v43 = &v42;
  v44 = 0x4802000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  memset(v47, 0, sizeof(v47));
  CGSVGPointMakeWithTypes(1, 1, v47, 100.0, 0.0);
  v36 = 0;
  v37 = &v36;
  v38 = 0x4802000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  memset(v41, 0, sizeof(v41));
  CGSVGPointMakeWithTypes(1, 1, v41, 50.0, 50.0);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x4802000000;
  v34[3] = __Block_byref_object_copy__1;
  v34[4] = __Block_byref_object_dispose__1;
  memset(v35, 0, sizeof(v35));
  CGSVGPointMakeWithTypes(1, 1, v35, 50.0, 50.0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3802000000;
  v30 = __Block_byref_object_copy__2;
  v32 = 0;
  v33 = 0;
  v31 = __Block_byref_object_dispose__3;
  CGSVGLengthMakeWithType();
  v32 = v4;
  v33 = v5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x5802000000;
  v22 = __Block_byref_object_copy__4;
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v24 = *MEMORY[0x1E695EFD0];
  v23 = __Block_byref_object_dispose__5;
  v25 = v6;
  v26 = *(MEMORY[0x1E695EFD0] + 32);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN11SVGGradient17updatedAttributesEP15SVGAttributeMap_block_invoke;
  v14[3] = &unk_1E86AAB50;
  v14[4] = &v48;
  v14[5] = &v42;
  v14[6] = &v36;
  v14[7] = v34;
  v14[8] = &v27;
  v14[9] = &v19;
  v14[10] = &v15;
  SVGAttributeMap::enumerate(a2, v14);
  v7 = *(v49 + 7);
  *(this + 15) = *(v49 + 5);
  *(this + 16) = v7;
  v8 = *(v43 + 7);
  *(this + 17) = *(v43 + 5);
  *(this + 18) = v8;
  v9 = *(v37 + 7);
  *(this + 19) = *(v37 + 5);
  *(this + 20) = v9;
  *(this + 23) = *(v28 + 5);
  if (SVGAttributeMap::hasAttribute(a2, 0x1Au))
  {
    v10 = v34;
  }

  else
  {
    v10 = &v36;
  }

  *(this + 21) = *(v10[1] + 40);
  if (SVGAttributeMap::hasAttribute(a2, 0x1Bu))
  {
    v11 = v34;
  }

  else
  {
    v11 = &v36;
  }

  *(this + 22) = *(v11[1] + 56);
  v12 = *(v20 + 9);
  v13 = *(v20 + 5);
  *(this + 408) = *(v20 + 7);
  *(this + 424) = v12;
  *(this + 392) = v13;
  *(this + 96) = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
}

void sub_1DF1325B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v52 - 208), 8);
  _Block_object_dispose((v52 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN11SVGGradient17updatedAttributesEP15SVGAttributeMap_block_invoke(void *a1, int a2, os_unfair_lock_s *this)
{
  os_unfair_lock_opaque = this[12]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque <= 67)
  {
    if (os_unfair_lock_opaque <= 25)
    {
      if (os_unfair_lock_opaque != 9)
      {
        if (os_unfair_lock_opaque != 10)
        {
          return;
        }

        v6 = a1[6];
        goto LABEL_30;
      }

      v7 = a1[6];
      goto LABEL_28;
    }

    if (os_unfair_lock_opaque == 26)
    {
      v7 = a1[7];
      goto LABEL_28;
    }

    if (os_unfair_lock_opaque != 27)
    {
      if (os_unfair_lock_opaque != 47)
      {
        return;
      }

      v7 = a1[8];
      goto LABEL_28;
    }

    v6 = a1[7];
LABEL_30:
    v10 = *(v6 + 8) + 56;
LABEL_31:
    if (SVGAttribute::lengthValue(this, v10))
    {
      return;
    }

    goto LABEL_32;
  }

  if (os_unfair_lock_opaque <= 71)
  {
    switch(os_unfair_lock_opaque)
    {
      case 'D':
        v7 = a1[4];
        break;
      case 'E':
        v7 = a1[5];
        break;
      case 'G':
        v6 = a1[4];
        goto LABEL_30;
      default:
        return;
    }

LABEL_28:
    v10 = *(v7 + 8) + 40;
    goto LABEL_31;
  }

  if (os_unfair_lock_opaque == 72)
  {
    v6 = a1[5];
    goto LABEL_30;
  }

  if (os_unfair_lock_opaque == 78)
  {
    if (SVGAttribute::transformValue(this, (*(a1[9] + 8) + 40)))
    {
      return;
    }

LABEL_32:
    v11 = SVGAtom::ToString(this[12]._os_unfair_lock_opaque);
    SVGUtilities::error("SVGGradient: Attribute parse error: %s", v12, v11);
    return;
  }

  if (os_unfair_lock_opaque != 130)
  {
    return;
  }

  v8 = SVGAttribute::stringValue(this);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (*(v8 + 8) != 3)
    {
      goto LABEL_40;
    }

    v8 = *v8;
  }

  else if (v9 != 3)
  {
    goto LABEL_40;
  }

  if (*v8 == 24944 && *(v8 + 2) == 100)
  {
    *(*(a1[10] + 8) + 24) = 0;
    return;
  }

LABEL_40:
  v14 = SVGAttribute::stringValue(this);
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    if (*(v14 + 8) != 7)
    {
      goto LABEL_49;
    }

    v14 = *v14;
  }

  else if (v15 != 7)
  {
    goto LABEL_49;
  }

  if (*v14 == 1818649970 && *(v14 + 3) == 1952671084)
  {
    v20 = *(a1[10] + 8);
    v21 = 1;
    goto LABEL_62;
  }

LABEL_49:
  v17 = SVGAttribute::stringValue(this);
  v18 = *(v17 + 23);
  if (v18 < 0)
  {
    if (*(v17 + 8) != 6)
    {
      return;
    }

    v17 = *v17;
  }

  else if (v18 != 6)
  {
    return;
  }

  if (*v17 == 1701864818 && *(v17 + 4) == 29793)
  {
    v20 = *(a1[10] + 8);
    v21 = 2;
LABEL_62:
    *(v20 + 24) = v21;
  }
}

BOOL SVGGradient::isEqual(SVGGradient *this, const SVGGradient *a2)
{
  v4 = *(this + 22);
  *&t1.a = *(this + 21);
  *&t1.c = v4;
  v5 = *(a2 + 22);
  *&v18.a = *(a2 + 21);
  *&v18.c = v5;
  result = CGSVGPointEqualToPoint(&t1, &v18);
  if (result)
  {
    v7 = *(this + 20);
    *&t1.a = *(this + 19);
    *&t1.c = v7;
    v8 = *(a2 + 20);
    *&v18.a = *(a2 + 19);
    *&v18.c = v8;
    result = CGSVGPointEqualToPoint(&t1, &v18);
    if (result)
    {
      v9 = *(this + 16);
      *&t1.a = *(this + 15);
      *&t1.c = v9;
      v10 = *(a2 + 16);
      *&v18.a = *(a2 + 15);
      *&v18.c = v10;
      result = CGSVGPointEqualToPoint(&t1, &v18);
      if (result)
      {
        v11 = *(this + 18);
        *&t1.a = *(this + 17);
        *&t1.c = v11;
        v12 = *(a2 + 18);
        *&v18.a = *(a2 + 17);
        *&v18.c = v12;
        result = CGSVGPointEqualToPoint(&t1, &v18);
        if (result)
        {
          if (*(this + 52) != *(a2 + 52) || *(this + 96) != *(a2 + 96))
          {
            return 0;
          }

          result = CGSVGLengthEqualToLength(*(this + 46), *(this + 47), *(a2 + 46), *(a2 + 47));
          if (!result)
          {
            return result;
          }

          v13 = *(this + 408);
          *&t1.a = *(this + 392);
          *&t1.c = v13;
          *&t1.tx = *(this + 424);
          v14 = *(a2 + 408);
          *&v18.a = *(a2 + 392);
          *&v18.c = v14;
          *&v18.tx = *(a2 + 424);
          result = CGAffineTransformEqualToTransform(&t1, &v18);
          if (!result)
          {
            return result;
          }

          if (*(this + 448) != *(a2 + 448))
          {
            return 0;
          }

          v16 = *(a2 + 27);
          v15 = *(a2 + 28);
          v17 = *(this + 27);
          if (v15 - v16 != *(this + 28) - v17)
          {
            return 0;
          }

          if (v16 != v15)
          {
            while (v17 != *(this + 28))
            {
              result = SVGGradientStop::isEqual(*v17, *v16);
              if (result)
              {
                ++v16;
                ++v17;
                result = 1;
                if (v16 != *(a2 + 28))
                {
                  continue;
                }
              }

              return result;
            }
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t SVGGradient::inheritParentGradient(SVGGradient *this)
{
  v2 = *(*(this + 55) + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN11SVGGradient21inheritParentGradientEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_11;
  v6[4] = this;
  SVGAttributeMap::enumerate(v2, v6);
  if (*(this + 12) == *(this + 11))
  {
    v4 = *(this + 55);
    v5 = *(v4 + 216);
    if (v5 != *(v4 + 224))
    {
      SVGGradientStop::copy(*v5);
    }
  }

  return (*(*this + 24))(this, *(this + 7));
}

uint64_t ___ZN11SVGGradient21inheritParentGradientEv_block_invoke(uint64_t a1, unsigned int a2)
{
  result = SVGAttributeMap::hasAttribute(*(*(a1 + 32) + 56), a2);
  if ((result & 1) == 0)
  {
    operator new();
  }

  return result;
}

void SVGGradient::print(SVGGradient *this, const char *a2)
{
  v3 = SVGUtilities::print("Gradient: %lu stop(s)\n", a2, (*(this + 28) - *(this + 27)) >> 3);
  SVGUtilities::indent(v3);
  v6 = *(this + 27);
  v5 = *(this + 28);
  while (v6 != v5)
  {
    v7 = *v6++;
    SVGGradientStop::print(v7);
  }

  SVGUtilities::unindent(v4);
}

uint64_t CGSVGImageGetTypeID()
{
  v0 = strlen(SVGNode::kSVGNodeClassName);
  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v1 = v0;
  if (v0 >= 0x17)
  {
    operator new();
  }

  v5 = v0;
  if (v0)
  {
    memmove(&__dst, SVGNode::kSVGNodeClassName, v0);
  }

  *(&__dst + v1) = 0;
  TypeID = CFRetained::getTypeID(&__dst);
  if (v5 < 0)
  {
    operator delete(__dst);
  }

  return TypeID;
}

void sub_1DF132DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGSVGImageCreateWithRasterImage(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t CGSVGImageCreateWithSVGDocument(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

CFTypeRef CGSVGImageRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGImageRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unsigned int *CGSVGImageGetType(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGImage>(a1, a2);
  if (result)
  {
    return result[72];
  }

  return result;
}

void *CFRetained::getObject<SVGImage>(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    SVGUtilities::error("NULL ref passed to getObject", a2, v2, v3);
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }
}

CGImage *CGSVGImageGetRasterImage(uint64_t a1, const char *a2)
{
  v3 = 0;
  result = CFRetained::getObject<SVGImage>(a1, a2);
  if (result)
  {
    SVGImage::rasterImage(result, &v3);
    return v3;
  }

  return result;
}

SVGImage *CGSVGImageGetSVGDocument(uint64_t a1, const char *a2)
{
  v3 = 0;
  result = CFRetained::getObject<SVGImage>(a1, a2);
  if (result)
  {
    SVGImage::svgImage(result, &v3);
    if (v3)
    {
      return *(v3 + 5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGSVGDocumentGetTypeID()
{
  v0 = strlen(SVGDocument::kSVGDocumentClassName);
  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v1 = v0;
  if (v0 >= 0x17)
  {
    operator new();
  }

  v5 = v0;
  if (v0)
  {
    memmove(&__dst, SVGDocument::kSVGDocumentClassName, v0);
  }

  *(&__dst + v1) = 0;
  TypeID = CFRetained::getTypeID(&__dst);
  if (v5 < 0)
  {
    operator delete(__dst);
  }

  return TypeID;
}

void sub_1DF133160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGDocumentRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGDocumentRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *CGSVGDocumentWriteToData(uint64_t a1, char *a2, const __CFDictionary *a3)
{
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (result)
  {
    v6 = result;
    v8 = CreateWriteOptions(a3);
    if ((v8 & 0x1000000) != 0)
    {
      v7 = &v8;
    }

    else
    {
      v7 = 0;
    }

    return SVGDocument::write(v6, a2, v7);
  }

  return result;
}

uint64_t CreateWriteOptions(const __CFDictionary *a1)
{
  if (a1 && CFDictionaryGetCount(a1))
  {
    Value = CFDictionaryGetValue(a1, @"kCGSVGPacked");
    v1 = Value && (v4 = Value, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v4)) && CFBooleanGetValue(v4) != 0;
    v8 = CFDictionaryGetValue(a1, @"kCGSVGOmitHeaders");
    if (v8 && (v9 = v8, v10 = CFBooleanGetTypeID(), v10 == CFGetTypeID(v9)))
    {
      v6 = (CFBooleanGetValue(v9) != 0) << 16;
    }

    else
    {
      v6 = 0;
    }

    v7 = 0x1000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | v7 | (v1 << 8);
}

BOOL CGSVGDocumentWriteToURL(uint64_t a1, const char *a2, const __CFDictionary *a3)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = CFRetained::getObject<SVGDocument>(a1, a2);
    v9 = CreateWriteOptions(a3);
    if ((v9 & 0x1000000) != 0)
    {
      v8 = &v9;
    }

    else
    {
      v8 = 0;
    }

    return SVGDocument::write(v7, a2, v8);
  }

  return result;
}

SVGDocument *CGSVGDocumentGetCanvas(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (result)
  {
    return *(SVGDocument::canvas(result) + 40);
  }

  return result;
}

SVGDocument *CGSVGDocumentGetPreferredColorSpace(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (result)
  {

    return SVGDocument::preferredColorSpace(result);
  }

  return result;
}

void *CGSVGDocumentSetPreferredColorSpace(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (v2 != 3 && result)
  {

    return SVGDocument::setPreferredColorSpace(result, v2);
  }

  return result;
}

SVGDocument *CGSVGDocumentContainsWideGamutContent(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (result)
  {

    return SVGDocument::hasWideGamutContent(result);
  }

  return result;
}

void CGSVGDocumentAddNamedStyle(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFRetained::getObject<SVGDocument>(a1, a2);
  if (v5)
  {
    v6 = v5;
    SVGUtilities::StringWithCFString(a2, __p);
    v8 = CFRetained::getObject<SVGAttributeMap>(a3, v7);
    if (v8)
    {
      SVGDocument::addNamedStyle(v6, __p, v8);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DF13371C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SVGDocument *CGSVGDocumentIsMonochrome(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGDocument>(a1, a2);
  if (result)
  {

    return SVGDocument::hasMonochromeContent(result);
  }

  return result;
}

void CGSVGDocumentDefsAddNode(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGDocument>(a1, a2);
  if (v3)
  {
    v5 = v3[6];
    if (v5)
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = CFRetained::getObject<SVGNode>(v6, v4);
        if (v7)
        {
          v9 = v7;
          v10 = CFRetained::getObject<SVGNode>(a2, v8);
          if (v10)
          {

            SVGNode::addDefinitionNode(v9, v9, v10);
          }
        }
      }
    }
  }
}

const __CFString *CGSVGDocumentDefsGetNode(uint64_t a1, const char *a2)
{
  v2 = a2;
  v3 = CFRetained::getObject<SVGDocument>(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v5 = v3[6];
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = CFRetained::getObject<SVGNode>(v6, v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  SVGUtilities::StringWithCFString(v2, __p);
  if (v14 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  DefinitionNode = SVGNode::findDefinitionNode(v8, v9);
  v11 = DefinitionNode;
  if (DefinitionNode)
  {
    v2 = *(DefinitionNode + 5);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v11)
  {
    return 0;
  }

  return v2;
}

void sub_1DF13388C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CGSVGDocumentDefsEnumerate(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGDocument>(a1, a2);
  if (v3)
  {
    v5 = v3[6];
    if (v5)
    {
      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = CFRetained::getObject<SVGNode>(v6, v4);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 0x40000000;
        v8[2] = __CGSVGDocumentDefsEnumerate_block_invoke;
        v8[3] = &unk_1E86AABC8;
        v8[4] = a2;
        SVGNode::enumerate(v7, v8);
      }
    }
  }
}

void __CGSVGDocumentDefsEnumerate_block_invoke(uint64_t a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*(a1 + 32) + 16))();

  CFRelease(v3);
}

void CGSVGDocumentGetColorOfPaint(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = CFRetained::getObject<SVGPaint>(a2, a2);
  if (v5)
  {
    SVGColor::SVGColor(v8, v5 + 56);
    switch(v9)
    {
      case 15:
        v7 = 1;
        break;
      case 53:
        v7 = 0;
        break;
      case 73:
        v7 = 2;
        break;
      default:
        v7 = CFRetained::getObject<SVGDocument>(a1, v6);
        if (v7)
        {
          v7 = SVGDocument::preferredColorSpace(v7);
        }

        break;
    }

    CGSVGColorCreateWithRGBA(v7, a3, v8[0], v8[1], v8[2], v8[3]);
  }

  else
  {

    CGSVGColorCreateRGBA(a3, 0.0, 0.0, 0.0, 0.0);
  }
}

void CGSVGDocumentGetColorOfGradientStop(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = CFRetained::getObject<SVGGradientStop>(a2, a2);
  if (v5)
  {
    SVGColor::SVGColor(v8, v5 + 48);
    switch(v9)
    {
      case 15:
        v7 = 1;
        break;
      case 53:
        v7 = 0;
        break;
      case 73:
        v7 = 2;
        break;
      default:
        v7 = CFRetained::getObject<SVGDocument>(a1, v6);
        if (v7)
        {
          v7 = SVGDocument::preferredColorSpace(v7);
        }

        break;
    }

    CGSVGColorCreateWithRGBA(v7, a3, v8[0], v8[1], v8[2], v8[3]);
  }

  else
  {

    CGSVGColorCreateRGBA(a3, 0.0, 0.0, 0.0, 0.0);
  }
}

void CopyOptionsIntoMap(const __CFString *a1, const __CFString *a2, void *a3)
{
  SVGUtilities::StringWithCFString(a1, v7);
  SVGUtilities::StringWithCFString(a2, &__p);
  if (v8 >= 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = v7[0];
  }

  SVGAtom::ToName(v5, v4);
  operator new();
}

void sub_1DF133C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1E12CE5D0](v20, 0x10B3C405B4D0908);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

SVGAtom *CGSVGAtomFromCString(SVGAtom *result, const char *a2)
{
  if (result)
  {
    return SVGAtom::ToName(result, a2);
  }

  return result;
}

void SVGClipPath::~SVGClipPath(SVGClipPath *this, CFRetained *a2)
{
  *this = &unk_1F5A44328;
  v3 = *(this + 26);
  if (v3)
  {
    CGPathRelease(v3);
    *(this + 26) = 0;
  }

  SVGNode::~SVGNode(this, a2);
}

{
  SVGClipPath::~SVGClipPath(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGClipPath::releaseCGPath(SVGClipPath *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    CGPathRelease(v2);
    *(this + 26) = 0;
  }
}

void SVGClipPath::updatedAttributes(SVGClipPath *this, SVGAttributeMap *a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11SVGClipPath17updatedAttributesEP15SVGAttributeMap_block_invoke;
  v3[3] = &unk_1E86AAC00;
  v3[4] = &v4;
  SVGAttributeMap::enumerate(a2, v3);
  *(this + 54) = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
}

void sub_1DF133F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN11SVGClipPath17updatedAttributesEP15SVGAttributeMap_block_invoke(uint64_t result, int a2, SVGAttribute *this)
{
  if (*(this + 12) == 7)
  {
    v3 = result;
    v4 = SVGAttribute::stringValue(this);
    result = std::string::compare(v4, "objectBoundingBox");
    if (!result)
    {
      *(*(*(v3 + 32) + 8) + 24) = 0;
    }
  }

  return result;
}

CGMutablePathRef SVGClipPath::getCGClippingPath(SVGClipPath *this, SVGNode *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v30, this + 55);
  v5 = *(this + 54);
  if (a2 || v5)
  {
    v7 = *MEMORY[0x1E695EFD0];
    v29 = *(MEMORY[0x1E695EFD0] + 8);
    if (v5)
    {
      v9 = *(MEMORY[0x1E695EFD0] + 24);
      BoundingBoxWithOptions = *(MEMORY[0x1E695EFD0] + 32);
      v10 = *(MEMORY[0x1E695EFD0] + 40);
    }

    else
    {
      BoundingBoxWithOptions = CGSVGNodeGetBoundingBoxWithOptions(*(a2 + 5), 0, 0);
      v10 = v11;
      v7 = v12;
      v9 = v13;
      v29 = 0uLL;
    }

    Mutable = *(this + 26);
    if (!Mutable)
    {
      Mutable = CGPathCreateMutable();
      *(this + 26) = Mutable;
      v15 = *(this + 11);
      v16 = *(this + 12);
      if (v15 != v16)
      {
        do
        {
          v17 = *v15;
          v18 = (*v15 + 64);
          if (*(*v15 + 87) < 0)
          {
            v18 = *v18;
          }

          v19 = SVGAtom::ToName(v18, v14);
          if (SVGShapeNode::IsValidShapePrimitive(v19))
          {
            if (v20)
            {
              SVGPath = SVGShapeNode::createSVGPath(v20);
              v22 = SVGPath;
              if (SVGPath)
              {
                CGPath = CGSVGPathCreateCGPath(*(SVGPath + 5), v14);
                memset(&m, 0, sizeof(m));
                *&t1.b = v29;
                t1.a = v7;
                t1.d = v9;
                t1.tx = BoundingBoxWithOptions;
                t1.ty = v10;
                v24 = *(v22 + 6);
                *&v26.a = *(v22 + 5);
                *&v26.c = v24;
                *&v26.tx = *(v22 + 7);
                CGAffineTransformConcat(&m, &t1, &v26);
                CGPathAddPath(*(this + 26), &m, CGPath);
                CGPathRelease(CGPath);
                CFRetained::release(v22);
              }
            }
          }

          v15 += 8;
        }

        while (v15 != v16);
        Mutable = *(this + 26);
      }
    }
  }

  else
  {
    SVGUtilities::error("objectBoundingBox option was given without a relative object.", v4);
    Mutable = 0;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v30);
  return Mutable;
}

uint64_t SVGClipPath::print(uint64_t this)
{
  v1 = *(this + 88);
  v2 = *(this + 96);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 48))(v3);
  }

  return this;
}

uint64_t CGSVGPathCommandGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPathCommand::kSVGPathCommandClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF134244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *CGSVGPathCommandGetType(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPathCommand>(a1, a2);
  if (result)
  {
    return result[12];
  }

  return result;
}

void CGSVGPathCommandAppendFloats(uint64_t a1, char *__src, uint64_t a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  SVGUtilities::CGFloatListFromFloats(__src, a3, &__p);
  v5 = CFRetained::getObject<SVGPathCommand>(a1, v4);
  if (v5)
  {
    SVGPathCommand::appendFloats(v5, &__p);
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1DF1342E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CGSVGPathCommandAppendPoint(uint64_t a1, const char *a2, double a3, double a4)
{
  v6 = CFRetained::getObject<SVGPathCommand>(a1, a2);
  if (v6)
  {
    v7 = a3;
    v8 = a4;

    SVGPathCommand::appendPoint(v6, *&v7);
  }
}

void *CGSVGPathCommandGetFloatCount(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPathCommand>(a1, a2);
  if (result)
  {
    v3 = result[7];
    if (v3)
    {
      return ((v3[1] - *v3) >> 3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGSVGPathGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPath::kSVGPathClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF1343E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGPathRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGPathRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *CGSVGPathAppendCommand(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPath>(a1, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *CGSVGPathGetCommandCount(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPath>(a1, a2);
  if (result)
  {
    return ((result[7] - result[6]) >> 3);
  }

  return result;
}

void *CGSVGPathGetCommandAtIndex(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPath>(a1, a2);
  if (result)
  {
    v4 = result[6];
    if (a2 >= (result[7] - v4) >> 3)
    {
      return 0;
    }

    else
    {
      return *(*(v4 + 8 * a2) + 40);
    }
  }

  return result;
}

uint64_t CGSVGPathCreateWithCGPath(uint64_t result)
{
  if (result)
  {
    operator new();
  }

  return result;
}

void __CGSVGPathCreateWithCGPath_block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (!v3)
    {
      operator new();
    }

    if (v3 == 1)
    {
      operator new();
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = v2[1];
        v9 = *v2;
        v10 = v4;
        v7 = 0;
        v8 = 0;
        __p = 0;
        std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(&__p, &v9, &v11, 2uLL);
        operator new();
      case 3:
        v5 = v2[1];
        v9 = *v2;
        v10 = v5;
        v11 = v2[2];
        v7 = 0;
        v8 = 0;
        __p = 0;
        std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(&__p, &v9, v12, 3uLL);
        operator new();
      case 4:
        operator new();
    }
  }
}

void sub_1DF134868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1E12CE5D0](v11, 0x10B3C40A582917CLL);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CGSVGPathCreateWithPathDescription(const __CFString *a1)
{
  if (a1)
  {
    SVGUtilities::StringWithCFString(a1, __p);
    if (v5 < 0)
    {
      if (__p[1])
      {
        v2 = __p[0];
LABEL_8:
        SVGParser::ParseCommandList(v2, v1);
      }

      operator delete(__p[0]);
    }

    else if (v5)
    {
      v2 = __p;
      goto LABEL_8;
    }
  }

  return 0;
}

void sub_1DF13494C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef CGSVGPathCreatePathDescription(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGPath>(a1, a2);
  if (!v2)
  {
    return 0;
  }

  SVGPath::createStringRepresentation(v2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1DF1349E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Vec2Angle(CGVector a1, CGVector a2)
{
  v2 = (a1.dy * a2.dy + a1.dx * a2.dx) / (sqrt(a1.dy * a1.dy + a1.dx * a1.dx) * sqrt(a2.dy * a2.dy + a2.dx * a2.dx));
  v3 = -1.0;
  if (v2 >= -1.0)
  {
    v3 = v2;
    if (v2 > 1.0)
    {
      v3 = 1.0;
    }
  }

  fabs(acos(v3));
}

void FilterResult::~FilterResult(FilterResult *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    free(v2);
  }
}

void SVGFilterPrimitive::~SVGFilterPrimitive(SVGFilterPrimitive *this, CFRetained *a2)
{
  SVGNode::~SVGNode(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

double SVGFilterPrimitive::draw(SVGFilterPrimitive *a1, const char *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *v33 = a5;
  *&v33[1] = a6;
  *v32 = a7;
  *&v32[1] = a8;
  *(a1 + 26) = a2;
  v10 = (a1 + 208);
  *(a1 + 27) = *a3;
  *(a1 + 28) = a4;
  *(a1 + 29) = v33;
  *(a1 + 30) = v32;
  v11 = SVGFilterPrimitive::selectPrimitive(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, &unk_1DF145996);
  SVGFilterPrimitive::stringAttr(a1, 0x5Au, __p, &v31);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(&v31.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (!v31.__r_.__value_.__l.__size_)
    {
      goto LABEL_58;
    }

    if (v31.__r_.__value_.__l.__size_ == 13 && *v31.__r_.__value_.__l.__data_ == 0x7247656372756F53 && *(v31.__r_.__value_.__r.__words[0] + 5) == 0x6369687061724765)
    {
      goto LABEL_58;
    }

    if (v31.__r_.__value_.__l.__size_ == 11 && *v31.__r_.__value_.__l.__data_ == 0x6C41656372756F53 && *(v31.__r_.__value_.__r.__words[0] + 3) == 0x6168706C41656372)
    {
      goto LABEL_58;
    }

    if (v31.__r_.__value_.__l.__size_ == 15 && *v31.__r_.__value_.__l.__data_ == 0x756F72676B636142 && *(v31.__r_.__value_.__r.__words[0] + 7) == 0x6567616D49646E75)
    {
      goto LABEL_58;
    }

    if (v31.__r_.__value_.__l.__size_ == 15 && *v31.__r_.__value_.__l.__data_ == 0x756F72676B636142 && *(v31.__r_.__value_.__r.__words[0] + 7) == 0x6168706C41646E75)
    {
      goto LABEL_58;
    }

    if (v31.__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_56;
    }

    v18 = v31.__r_.__value_.__r.__words[0];
    goto LABEL_44;
  }

  if (HIBYTE(v31.__r_.__value_.__r.__words[2]) <= 0xAu)
  {
    if (!*(&v31.__r_.__value_.__s + 23))
    {
      *a3 = v11;
      v10[4] = 0;
      result = 0.0;
      *v10 = 0u;
      *(v10 + 1) = 0u;
      return result;
    }

    if (HIBYTE(v31.__r_.__value_.__r.__words[2]) != 9)
    {
      goto LABEL_56;
    }

    v18 = &v31;
LABEL_44:
    v19 = v18->__r_.__value_.__r.__words[0];
    v20 = v18->__r_.__value_.__s.__data_[8];
    if (v19 == 0x6E6961506C6C6946 && v20 == 116)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (HIBYTE(v31.__r_.__value_.__r.__words[2]) == 11)
  {
    v22 = *(v31.__r_.__value_.__r.__words + 3);
    v23 = v31.__r_.__value_.__r.__words[0] == 0x6C41656372756F53;
    v24 = 0x6168706C41656372;
  }

  else
  {
    if (HIBYTE(v31.__r_.__value_.__r.__words[2]) != 13)
    {
      if (HIBYTE(v31.__r_.__value_.__r.__words[2]) == 15)
      {
        if (v31.__r_.__value_.__r.__words[0] == 0x756F72676B636142 && *(v31.__r_.__value_.__r.__words + 7) == 0x6567616D49646E75)
        {
          goto LABEL_58;
        }

        if (v31.__r_.__value_.__r.__words[0] == 0x756F72676B636142 && *(v31.__r_.__value_.__r.__words + 7) == 0x6168706C41646E75)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_56;
    }

    v22 = *(v31.__r_.__value_.__r.__words + 5);
    v23 = v31.__r_.__value_.__r.__words[0] == 0x7247656372756F53;
    v24 = 0x6369687061724765;
  }

  if (v23 && v22 == v24)
  {
    goto LABEL_58;
  }

LABEL_56:
  if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, "StrokePaint"))
  {
    v26 = *(a1 + 28);
    __p[0] = &v31;
    std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v26, &v31.__r_.__value_.__l.__data_)[5] = v11;
  }

LABEL_58:
  v27 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
  *a3 = v11;
  result = 0.0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[4] = 0;
  if (v27 < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return result;
}

void sub_1DF134EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGFilterPrimitive::selectPrimitive(SVGFilterPrimitive *this, const char *a2)
{
  v3 = (this + 64);
  if (*(this + 87) < 0)
  {
    v3 = *v3;
  }

  v4 = SVGAtom::ToName(v3, a2);
  if (v4 > 102)
  {
    switch(v4)
    {
      case 'x':
        operator new();
      case 'r':
        operator new();
      case 'g':
        operator new();
    }
  }

  else
  {
    switch(v4)
    {
      case '[':
        operator new();
      case '_':
        operator new();
      case 'e':
        operator new();
    }
  }

  return 0;
}

void SVGFilterPrimitive::stringAttr(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v6 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (v6)
  {
    v7 = SVGAttribute::stringValue(v6);
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      v8 = *v7;
      a4->__r_.__value_.__r.__words[2] = *(v7 + 16);
      *&a4->__r_.__value_.__l.__data_ = v8;
      return;
    }

    v9 = *v7;
    v10 = *(v7 + 8);
  }

  else
  {
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
      return;
    }

    v9 = *a3;
    v10 = *(a3 + 8);
  }

  std::string::__init_copy_ctor_external(a4, v9, v10);
}

id SVGFilterPrimitive::drawFeGaussianBlur(SVGFilterPrimitive *this)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = SVGFilterPrimitive::inputImage<CIImage>(this, 0x58u);
  if (v2)
  {
    v4 = fmin(SVGFilterPrimitive::pointAttr(this, 0x68u, *MEMORY[0x1E695EFF8]), 100.0);
    if (v4 != fmin(v5, 100.0))
    {
      SVGUtilities::log("Different radii for gaussian blur not supported", v3);
    }

    v10 = @"inputRadius";
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v2 imageByApplyingFilter:@"CIGaussianBlur" withInputParameters:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id SVGFilterPrimitive::drawFeOffset(double **this)
{
  v2 = SVGFilterPrimitive::inputImage<CIImage>(this, 0x58u);
  if (v2)
  {
    v3 = SVGFilterPrimitive::floatAttr(this, 0x60u, 0.0);
    v4 = *this[30];
    v5 = SVGFilterPrimitive::floatAttr(this, 0x61u, 0.0) * this[30][1];
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeTranslation(&v9, v3 * v4, v5);
    v8 = v9;
    v6 = [v2 imageByApplyingTransform:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SVGFilterPrimitive::drawFeFlood(SVGFilterPrimitive *this)
{
  SVGColor::SVGColor(&v12, 3u, 0.0, 0.0, 0.0, 1.0);
  SVGFilterPrimitive::colorAttr(this, 0x5Cu, &v12, v15);
  v16 = SVGFilterPrimitive::floatAttr(this, 0x5Du, 1.0);
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  CGSVGColorCreateRGBA(&v12, v15[0], v15[1], v15[2], v16);
  v10[0] = v12;
  v10[1] = v13;
  v11 = v14;
  CGColor = CGSVGColorCreateCGColor(v10);
  v3 = [MEMORY[0x1E695F610] colorWithCGColor:CGColor];
  CGColorRelease(CGColor);
  v4 = *(this + 29);
  v5 = *v4;
  v6 = v4[1];
  v7 = [MEMORY[0x1E695F658] imageWithColor:v3];
  v8 = [v7 imageByCroppingToRect:{0.0, 0.0, v5, v6}];

  return v8;
}

id SVGFilterPrimitive::drawFeComposite(SVGFilterPrimitive *this)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v2 = SVGFilterPrimitive::inputImage<CIImage>(this, 0x58u);
  v3 = SVGFilterPrimitive::inputImage<CIImage>(this, 0x59u);
  v4 = v3;
  v5 = 0;
  if (!v2 || !v3)
  {
    goto LABEL_47;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "over");
  SVGFilterPrimitive::stringAttr(this, 0x73u, __p, &v47);
  if (v46 < 0)
  {
    operator delete(__p[0]);
  }

  v62 = @"inputBackgroundImage";
  v63[0] = v4;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v47.__r_.__value_.__l.__size_ == 4 && *v47.__r_.__value_.__l.__data_ == 1919252079)
    {
      goto LABEL_40;
    }

    if (v47.__r_.__value_.__l.__size_ != 2 || *v47.__r_.__value_.__l.__data_ != 28265)
    {
      if (v47.__r_.__value_.__l.__size_ != 3 || (*v47.__r_.__value_.__l.__data_ == 30063 ? (v6 = *(v47.__r_.__value_.__r.__words[0] + 2) == 116) : (v6 = 0), !v6))
      {
        if (v47.__r_.__value_.__l.__size_ == 4 && *v47.__r_.__value_.__l.__data_ == 1886352481)
        {
          goto LABEL_43;
        }

        if (v47.__r_.__value_.__l.__size_ != 3)
        {
          goto LABEL_37;
        }

        v7 = v47.__r_.__value_.__r.__words[0];
LABEL_30:
        data_low = LOWORD(v7->__r_.__value_.__l.__data_);
        v10 = v7->__r_.__value_.__s.__data_[2];
        if (data_low == 28536 && v10 == 114)
        {
          v43 = [v2 imageByApplyingFilter:@"CISourceOutCompositing" withInputParameters:v44];
          v60 = @"inputBackgroundImage";
          v61 = v2;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v12 = [v4 imageByApplyingFilter:@"CISourceOutCompositing" withInputParameters:?];
          v58 = @"inputBackgroundImage";
          v59 = v12;
          v41 = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v5 = [v43 imageByApplyingFilter:@"CISourceOverCompositing" withInputParameters:v13];
LABEL_39:

          goto LABEL_45;
        }

        goto LABEL_37;
      }

LABEL_42:
      v39 = @"CISourceOutCompositing";
      goto LABEL_44;
    }

LABEL_41:
    v39 = @"CISourceInCompositing";
    goto LABEL_44;
  }

  if (HIBYTE(v47.__r_.__value_.__r.__words[2]) == 2)
  {
    if (LOWORD(v47.__r_.__value_.__l.__data_) != 28265)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (HIBYTE(v47.__r_.__value_.__r.__words[2]) == 3)
  {
    if (LOWORD(v47.__r_.__value_.__l.__data_) != 30063 || v47.__r_.__value_.__s.__data_[2] != 116)
    {
      v7 = &v47;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

  if (HIBYTE(v47.__r_.__value_.__r.__words[2]) != 4)
  {
    goto LABEL_37;
  }

  if (LODWORD(v47.__r_.__value_.__l.__data_) == 1886352481)
  {
LABEL_43:
    v39 = @"CISourceAtopCompositing";
    goto LABEL_44;
  }

  if (LODWORD(v47.__r_.__value_.__l.__data_) != 1919252079)
  {
LABEL_37:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v47, "arithmetic"))
    {
      v14 = SVGFilterPrimitive::floatAttr(this, 0x74u, 0.0);
      v15 = SVGFilterPrimitive::floatAttr(this, 0x75u, 0.0);
      v16 = SVGFilterPrimitive::floatAttr(this, 0x76u, 0.0);
      v17 = SVGFilterPrimitive::floatAttr(this, 0x77u, 0.0);
      v43 = [v2 imageByApplyingFilter:@"CIMultiplyCompositing" withInputParameters:v44];
      v56[0] = @"inputRVector";
      v18 = [MEMORY[0x1E695F688] vectorWithX:v14 Y:0.0 Z:0.0 W:0.0];
      v57[0] = v18;
      v56[1] = @"inputGVector";
      v19 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v14 Z:0.0 W:0.0];
      v57[1] = v19;
      v56[2] = @"inputBVector";
      v20 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v14 W:0.0];
      v57[2] = v20;
      v56[3] = @"inputAVector";
      v21 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v14];
      v57[3] = v21;
      v56[4] = @"inputBiasVector";
      v22 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v57[4] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:5];
      v42 = [v43 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v23];

      v54[0] = @"inputRVector";
      v24 = [MEMORY[0x1E695F688] vectorWithX:v15 Y:0.0 Z:0.0 W:0.0];
      v55[0] = v24;
      v54[1] = @"inputGVector";
      v25 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v15 Z:0.0 W:0.0];
      v55[1] = v25;
      v54[2] = @"inputBVector";
      v26 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v15 W:0.0];
      v55[2] = v26;
      v54[3] = @"inputAVector";
      v27 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v15];
      v55[3] = v27;
      v54[4] = @"inputBiasVector";
      v28 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v55[4] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:5];
      v41 = [v2 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v29];

      v52 = @"inputBackgroundImage";
      v53 = v41;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v13 = [v42 imageByApplyingFilter:@"CIAdditionCompositing" withInputParameters:v30];

      v50[0] = @"inputRVector";
      v31 = [MEMORY[0x1E695F688] vectorWithX:v16 Y:0.0 Z:0.0 W:0.0];
      v51[0] = v31;
      v50[1] = @"inputGVector";
      v32 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v16 Z:0.0 W:0.0];
      v51[1] = v32;
      v50[2] = @"inputBVector";
      v33 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v16 W:0.0];
      v51[2] = v33;
      v50[3] = @"inputAVector";
      v34 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v16];
      v51[3] = v34;
      v50[4] = @"inputBiasVector";
      v35 = [MEMORY[0x1E695F688] vectorWithX:v17 Y:v17 Z:v17 W:v17];
      v51[4] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:5];
      v37 = [v4 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v36];

      v48 = @"inputBackgroundImage";
      v49 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v5 = [v13 imageByApplyingFilter:@"CIAdditionCompositing" withInputParameters:v38];

      goto LABEL_39;
    }
  }

LABEL_40:
  v39 = @"CISourceOverCompositing";
LABEL_44:
  v5 = [v2 imageByApplyingFilter:v39 withInputParameters:v44];
LABEL_45:

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

LABEL_47:

  return v5;
}

void sub_1DF135DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id SVGFilterPrimitive::drawFeBlend(SVGFilterPrimitive *this)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = SVGFilterPrimitive::inputImage<CIImage>(this, 0x58u);
  v3 = SVGFilterPrimitive::inputImage<CIImage>(this, 0x59u);
  v4 = v3;
  v5 = 0;
  if (!v2 || !v3)
  {
    goto LABEL_53;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "normal");
  SVGFilterPrimitive::stringAttr(this, 0x66u, __p, &v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = @"inputBackgroundImage";
  v23[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v21.__r_.__value_.__r.__words[2]) != 6)
    {
      if (HIBYTE(v21.__r_.__value_.__r.__words[2]) != 7)
      {
        if (HIBYTE(v21.__r_.__value_.__r.__words[2]) == 8 && v21.__r_.__value_.__r.__words[0] == 0x796C7069746C756DLL)
        {
LABEL_56:
          v17 = @"CIMultiplyBlendMode";
          goto LABEL_51;
        }

LABEL_50:
        v17 = @"CISourceOverCompositing";
        goto LABEL_51;
      }

      v10 = &v21;
      goto LABEL_46;
    }

    if (LODWORD(v21.__r_.__value_.__l.__data_) == 1836216174 && WORD2(v21.__r_.__value_.__r.__words[0]) == 27745)
    {
      goto LABEL_50;
    }

    if (LODWORD(v21.__r_.__value_.__l.__data_) != 1701995379 || WORD2(v21.__r_.__value_.__r.__words[0]) != 28261)
    {
      if (LODWORD(v21.__r_.__value_.__l.__data_) != 1802658148 || WORD2(v21.__r_.__value_.__r.__words[0]) != 28261)
      {
        goto LABEL_50;
      }

      goto LABEL_59;
    }

LABEL_58:
    v17 = @"CIScreenBlendMode";
    goto LABEL_51;
  }

  if (v21.__r_.__value_.__l.__size_ == 6 && *v21.__r_.__value_.__l.__data_ == 1836216174 && *(v21.__r_.__value_.__r.__words[0] + 4) == 27745)
  {
    goto LABEL_50;
  }

  if (v21.__r_.__value_.__l.__size_ == 8 && *v21.__r_.__value_.__l.__data_ == 0x796C7069746C756DLL)
  {
    goto LABEL_56;
  }

  if (v21.__r_.__value_.__l.__size_ == 6 && *v21.__r_.__value_.__l.__data_ == 1701995379 && *(v21.__r_.__value_.__r.__words[0] + 4) == 28261)
  {
    goto LABEL_58;
  }

  if (v21.__r_.__value_.__l.__size_ == 6 && *v21.__r_.__value_.__l.__data_ == 1802658148 && *(v21.__r_.__value_.__r.__words[0] + 4) == 28261)
  {
LABEL_59:
    v17 = @"CIDarkenBlendMode";
    goto LABEL_51;
  }

  if (v21.__r_.__value_.__l.__size_ != 7)
  {
    goto LABEL_50;
  }

  v10 = v21.__r_.__value_.__r.__words[0];
LABEL_46:
  data = v10->__r_.__value_.__l.__data_;
  v15 = *(v10->__r_.__value_.__r.__words + 3);
  if (data != 1751607660 || v15 != 1852142696)
  {
    goto LABEL_50;
  }

  v17 = @"CILightenBlendMode";
LABEL_51:
  v5 = [v2 imageByApplyingFilter:v17 withInputParameters:v6];

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_53:

  return v5;
}

void sub_1DF1362A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SVGFilterPrimitive::drawFeConvolveMatrix(SVGFilterPrimitive *this@<X0>, _OWORD *a2@<X8>)
{
  v4 = SVGFilterPrimitive::inputImage<vImage_Buffer>(this, 0x58u);
  if (v4)
  {
    v5 = v4;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v6 = SVGFilterPrimitive::floatsAttr(this, 0x7Au, &v26);
    if (MEMORY[0x1E12CE990](&dest, v5->height, v5->width, *(*(*(this + 26) + 8) + 4), 0))
    {
      *a2 = 0;
    }

    else
    {
      v23.data = 0;
      v7 = &v24;
      v24 = dest;
      v8 = v6[1] - *v6;
      if (v8 && (v9 = v8 >> 3, v10 = sqrt((v8 >> 3)), v8 >> 3 == v10 * v10) && SVGFilterPrimitive::floatAttr(this, 0x79u, v10) == v10)
      {
        v12 = *v6;
        v13 = v6[1];
        if (*v6 == v13)
        {
          v16 = 0.0;
        }

        else
        {
          v14 = 0;
          do
          {
            v15 = *v12++;
            v14 = (v15 + v14);
          }

          while (v12 != v13);
          v16 = v14;
        }

        divisor = SVGFilterPrimitive::floatAttr(this, 0x7Bu, v16);
        if (divisor)
        {
          v18 = SVGFilterPrimitive::floatAttr(this, 0x7Cu, 0.0);
          *color = 0;
          v21 = 0;
          v22 = 0;
          std::vector<short>::reserve(color, v9);
          std::transform[abi:ne200100]<std::__wrap_iter<double *>,std::back_insert_iterator<std::vector<short>>,SVGFilterPrimitive::drawFeConvolveMatrix(void)::$_1>(*v6, v6[1], color);
          if (vImageConvolveWithBias_ARGB8888(v5, &dest, 0, 0, 0, *color, v10, v10, divisor, (v18 * divisor * 255.0), 0, 8u))
          {
            free(dest.data);
            *a2 = 0;
          }

          else
          {
            v19 = *&dest.width;
            *a2 = *&dest.data;
            a2[1] = v19;
          }

          if (*color)
          {
            v21 = *color;
            operator delete(*color);
          }
        }

        else
        {
          SVGFilterPrimitive::drawFeConvolveMatrix(void)const::$_0::operator()(&v23, a2);
        }
      }

      else
      {
        *color = 0;
        if (vImageBufferFill_ARGB8888(&v24, color, 0))
        {
          free(v24.data);
          v7 = &v23;
        }

        v11 = *&v7->width;
        *a2 = *&v7->data;
        a2[1] = v11;
      }
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1DF136584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v16 = *(v14 - 104);
  if (v16)
  {
    *(v14 - 96) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

const void **SVGFilterPrimitive::inputImage<FilterResult>(uint64_t a1, unsigned int a2)
{
  v3 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (v3)
  {
    v4 = SVGAttribute::stringValue(v3);
    result = std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::find<std::string>(*(a1 + 224), v4);
    if (!result)
    {
      return result;
    }

    v6 = result + 5;
  }

  else
  {
    v6 = (a1 + 216);
  }

  return *v6;
}

const void **SVGFilterPrimitive::inputImage<CIImage>(uint64_t a1, unsigned int a2)
{
  v3 = SVGFilterPrimitive::inputImage<FilterResult>(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    if (*v3)
    {
LABEL_3:
      v3 = v5;
      goto LABEL_6;
    }

    v11 = 0;
    v6 = MEMORY[0x1E12CE9C0](v3 + 1, *(*(a1 + 208) + 8), 0, 0, 0, &v11);
    v7 = v6;
    if (!v11)
    {
      v9 = [MEMORY[0x1E695F658] imageWithCGImage:v6];
      v10 = *v4;
      *v4 = v9;

      CGImageRelease(v7);
      v5 = *v4;
      goto LABEL_3;
    }

    CGImageRelease(v6);
    v3 = 0;
  }

LABEL_6:

  return v3;
}

_OWORD *SVGFilterPrimitive::inputImage<vImage_Buffer>(uint64_t a1, unsigned int a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = SVGFilterPrimitive::inputImage<FilterResult>(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3 + 1;
  if (!v3[1])
  {
    v5 = [**(a1 + 208) createCGImage:*v3 fromRect:{0.0, 0.0, **(a1 + 232), *(*(a1 + 232) + 8)}];
    memset(v11, 0, 24);
    v6 = MEMORY[0x1E12CE9A0](v10, *(*(a1 + 208) + 8), v11, v5, 0);
    CGImageRelease(v5);
    v7 = 0;
    if (!v6)
    {
      v8 = v10[1];
      *v4 = v10[0];
      v4[1] = v8;
      return v4;
    }

    return v7;
  }

  return v4;
}

double SVGFilterPrimitive::pointAttr(uint64_t a1, unsigned int a2, double a3)
{
  v5 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (v5)
  {
    v9 = 0;
    if (SVGAttribute::floatsValue(v5, &v9))
    {
      v6 = *v9;
      v7 = (*(v9 + 8) - *v9) >> 3;
      if (v7 == 2)
      {
        return *v6 * **(a1 + 240);
      }

      else if (v7 == 1)
      {
        return *v6 * **(a1 + 240);
      }
    }
  }

  return a3;
}

double SVGFilterPrimitive::floatAttr(uint64_t a1, unsigned int a2, double a3)
{
  v4 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (v4)
  {
    v6 = 0.0;
    if (SVGAttribute::floatValue(v4, &v6))
    {
      return v6;
    }
  }

  return a3;
}

uint64_t SVGFilterPrimitive::floatsAttr(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (v4)
  {
    v6 = 0;
    if (SVGAttribute::floatsValue(v4, &v6))
    {
      return v6;
    }
  }

  return a3;
}

double SVGFilterPrimitive::colorAttr@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (v6)
  {
    v9 = 0;
    if (SVGAttribute::paintValue(v6, &v9))
    {
      if (*(v9 + 12) == 1)
      {
        a3 = v9 + 56;
      }

      else
      {
        SVGUtilities::log("feFlood with non-color paint not supported", v7);
      }
    }

    *&result = SVGColor::SVGColor(a4, a3).n128_u64[0];
  }

  else
  {

    *&result = SVGColor::SVGColor(a4, a3).n128_u64[0];
  }

  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

__n128 SVGFilterPrimitive::drawFeConvolveMatrix(void)const::$_0::operator()@<Q0>(const vImage_Buffer *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  *color = 0;
  p_data = &a1[1].data;
  if (vImageBufferFill_ARGB8888(a1 + 1, color, 0))
  {
    free(*p_data);
  }

  else
  {
    v2 = p_data;
  }

  result = *&v2->data;
  v6 = *&v2->width;
  *a2 = *&v2->data;
  a2[1] = v6;
  return result;
}

void *std::vector<short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

const void **std::transform[abi:ne200100]<std::__wrap_iter<double *>,std::back_insert_iterator<std::vector<short>>,SVGFilterPrimitive::drawFeConvolveMatrix(void)::$_1>(double *a1, double *a2, const void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a3[1];
    do
    {
      v7 = llround(*v5);
      v8 = a3[2];
      if (v6 >= v8)
      {
        v9 = *a3;
        v10 = v6 - *a3;
        v11 = v10 >> 1;
        if (v10 >> 1 <= -2)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (v12 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v12;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a3, v14);
        }

        *(2 * v11) = v7;
        v6 = (2 * v11 + 2);
        memcpy(0, v9, v10);
        v15 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6 = v7;
        v6 += 2;
      }

      a3[1] = v6;
      ++v5;
    }

    while (v5 != a2);
  }

  return a3;
}

const void **std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1DF136EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,FilterResult *>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF136F6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,FilterResult *>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
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
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
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
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
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
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
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

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
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

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,FilterResult *>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

SVGPath *CGSVGShapeNodeSetPath(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGShapeNode>(a1, a2);
  result = CFRetained::getObject<SVGPath>(a2, v4);
  if (v3 && result)
  {

    SVGShapeNode::setPath(v3, result);
  }

  return result;
}

CGPath *CGSVGShapeNodeCreateCGPath(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {

    return SVGShapeNode::createCGPath(result);
  }

  return result;
}

void CGSVGShapeNodeSetFloats(uint64_t a1, __int128 *a2, unint64_t a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  SVGUtilities::CGPointListFromFloats(a2, a3, &__p);
  if (CFRetained::getObject<SVGShapeNode>(a1, v4))
  {
    SVGShapeNode::setPointList();
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1DF137788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *CGSVGShapeNodeSetRectGeometry(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    if (*(result + 74) == 49)
    {
      result[26] = a3;
      result[27] = a4;
      result[30] = a5;
      result[31] = a6;
      result[32] = a7;
      result[33] = a8;
    }
  }

  return result;
}

double CGSVGShapeNodeGetRectGeometry(uint64_t a1, char *a2, void *a3, void *a4, void *a5, void *a6, double *a7)
{
  v13 = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (v13)
  {
    if (*(v13 + 74) == 49)
    {
      *a2 = v13[26];
      *a3 = *(v13 + 27);
      *a4 = *(v13 + 30);
      *a5 = *(v13 + 31);
      *a6 = *(v13 + 32);
      result = v13[33];
      *a7 = result;
    }
  }

  return result;
}

double *CGSVGShapeNodeSetCircleGeometry(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    if (*(result + 74) == 3)
    {
      result[34] = a3;
      result[35] = a4;
      result[36] = a5;
    }
  }

  return result;
}

double *CGSVGShapeNodeSetEllipseGeometry(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    if (*(result + 74) == 16)
    {
      result[34] = a3;
      result[35] = a4;
      result[32] = a5;
      result[33] = a6;
    }
  }

  return result;
}

double CGSVGShapeNodeGetEllipseGeometry(uint64_t a1, char *a2, void *a3, void *a4, double *a5)
{
  v9 = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (v9)
  {
    if (*(v9 + 74) == 16)
    {
      *a2 = v9[34];
      *a3 = *(v9 + 35);
      *a4 = *(v9 + 32);
      result = v9[33];
      *a5 = result;
    }
  }

  return result;
}

double *CGSVGShapeNodeSetLineGeometry(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    if (*(result + 74) == 32)
    {
      result[26] = a3;
      result[27] = a4;
      result[28] = a5;
      result[29] = a6;
    }
  }

  return result;
}

double CGSVGShapeNodeGetLineGeometry(uint64_t a1, char *a2, void *a3, void *a4, double *a5)
{
  v9 = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (v9)
  {
    if (*(v9 + 74) == 32)
    {
      *a2 = v9[26];
      *a3 = *(v9 + 27);
      *a4 = *(v9 + 28);
      result = v9[29];
      *a5 = result;
    }
  }

  return result;
}

CFStringRef CGSVGShapeNodeCopyText(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (!v2)
  {
    return 0;
  }

  if (v2[74] != 10001)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  if (v3[23] < 0)
  {
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (!*v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];

  return CFStringCreateWithCString(v4, v3, 0x8000100u);
}

double CGSVGLengthScaledLength(uint64_t a1, int a2, double a3)
{
  result = *&a1;
  if (a2 == 1)
  {
    return *&a1 * a3 / 100.0;
  }

  return result;
}

void CGSVGPointMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
}

uint64_t CGSVGPointMakeWithTypes@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

void CGSVGPointMakeWithPoint(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
}

double CGSVGPointScaledPoint(uint64_t a1, double a2)
{
  result = *a1;
  if (*(a1 + 8) == 1)
  {
    return result * a2 / 100.0;
  }

  return result;
}

uint64_t CGSVGPatternGetTypeID()
{
  v0 = strlen(SVGNode::kSVGNodeClassName);
  if (v0 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v1 = v0;
  if (v0 >= 0x17)
  {
    operator new();
  }

  v5 = v0;
  if (v0)
  {
    memmove(&__dst, SVGNode::kSVGNodeClassName, v0);
  }

  *(&__dst + v1) = 0;
  TypeID = CFRetained::getTypeID(&__dst);
  if (v5 < 0)
  {
    operator delete(__dst);
  }

  return TypeID;
}

void sub_1DF137CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGPatternRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGPatternRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DF137F10(_Unwind_Exception *a1)
{
  v8 = v2;
  v10 = *v8;
  *v8 = 0;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8, v10);
  }

  v11 = *v6;
  *v6 = 0;
  if (v11)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6, v11);
  }

  v12 = *v5;
  *v5 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5, v12);
  }

  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(v4, *(v1 + 168));
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(v3, *(v1 + 144));
  v13 = *(v1 + 112);
  if (v13)
  {
    *(v1 + 120) = v13;
    operator delete(v13);
  }

  v14 = *v7;
  if (*v7)
  {
    *(v1 + 96) = v14;
    operator delete(v14);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void SVGNode::updateChildIdentifer(SVGNode *this, SVGNode *a2, char *__s)
{
  v6 = this + 136;
  v5 = *(this + 17);
  if (v5 == (this + 144))
  {
LABEL_9:
    if (!__s)
    {
      return;
    }

    goto LABEL_12;
  }

  while (*(v5 + 7) != a2)
  {
    v7 = *(v5 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v5 + 2);
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
    if (v8 == (this + 144))
    {
      goto LABEL_9;
    }
  }

  std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__erase_unique<std::string>(this + 17, v5 + 32);
  if (__s)
  {
LABEL_12:
    if (*__s)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, __s);
      v12 = a2;
      std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGNode *>>(v6, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1DF1381FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::setIdentifier(SVGNode *this, char *a2)
{
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    SVGAttributeMap::setAttribute();
  }

  v2 = *(this + 7);

  SVGAttributeMap::removeAttribute(v2, 0x1Fu);
}

void sub_1DF13829C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::setIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  v3 = *(a1 + 56);
  if (v2)
  {
    SVGAttributeMap::setAttribute();
  }

  SVGAttributeMap::removeAttribute(v3, 0x1Fu);
}

void SVGNode::addDefinitionChild(SVGNode *this, SVGNode *a2)
{
  v3 = a2;
  if (a2 == this)
  {

    SVGUtilities::error("Warning: attempted to add a node to itself, causing a cycle. Ignoring.", a2);
  }

  else if (a2)
  {
    std::vector<SVGPathCommand *>::push_back[abi:ne200100](this + 112, &v3);
    CFRetained::retain(v3);
    *(v3 + 6) = this;
  }
}

void SVGNode::replaceChildWithChild(SVGNode *this, CFTypeRef *a2, CFTypeRef *a3)
{
  v7 = *(this + 11);
  v6 = *(this + 12);
  if (v7 != v6)
  {
    while (*v7 != a2)
    {
      if (++v7 == v6)
      {
        return;
      }
    }
  }

  if (v7 != v6)
  {
    if (SVGNode::identifier(a2) && *SVGNode::identifier(a2))
    {
      v8 = SVGNode::identifier(a2);
      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      v9 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__count_unique<std::string>(this + 136, __p);
      v10 = v9;
      if ((v15 & 0x80000000) == 0)
      {
        if (!v9)
        {
          goto LABEL_14;
        }

LABEL_12:
        v11 = SVGNode::identifier(a2);
        std::string::basic_string[abi:ne200100]<0>(__p, v11);
        v12 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(this + 136, __p);
        std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::erase(this + 17, v12);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_14;
      }

      operator delete(__p[0]);
      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    CFRetained::release(*v7);
    *v7 = a3;
    CFRetained::retain(a3);
    a3[6] = this;
    if (SVGNode::identifier(a3) && *SVGNode::identifier(a3))
    {
      v13 = SVGNode::identifier(a3);
      std::string::basic_string[abi:ne200100]<0>(__p, v13);
      v16 = a3;
      std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGNode *>>(this + 136, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1DF1384D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::removeChildAtIndex(SVGNode *this, unint64_t a2)
{
  v2 = *(this + 11);
  if (a2 >= (*(this + 12) - v2) >> 3)
  {
    return;
  }

  v5 = *(v2 + 8 * a2);
  if (SVGNode::identifier(v5) && *SVGNode::identifier(v5))
  {
    v6 = SVGNode::identifier(v5);
    std::string::basic_string[abi:ne200100]<0>(__p, v6);
    v7 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__count_unique<std::string>(this + 136, __p);
    v8 = v7;
    if ((v15 & 0x80000000) == 0)
    {
      if (!v7)
      {
        goto LABEL_10;
      }

LABEL_8:
      v9 = SVGNode::identifier(v5);
      std::string::basic_string[abi:ne200100]<0>(__p, v9);
      v10 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(this + 136, __p);
      std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::erase(this + 17, v10);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_10;
    }

    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v11 = *(this + 12);
  v12 = *(this + 11) + 8 * a2;
  v13 = v11 - (v12 + 8);
  if (v11 != v12 + 8)
  {
    memmove(v12, (v12 + 8), v11 - (v12 + 8));
  }

  *(this + 12) = v12 + v13;
  CFRetained::release(v5);
}

void sub_1DF13860C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGNode::hasChildNodeWithName(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 87);
  if (v4 >= 0)
  {
    v5 = *(a1 + 87);
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 == v6)
  {
    if (v4 >= 0)
    {
      v8 = (a1 + 64);
    }

    else
    {
      v8 = *(a1 + 64);
    }

    if (v7 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(v8, a2, v5))
    {
      return 1;
    }
  }

  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  while (v9 != v10)
  {
    if (SVGNode::hasChildNodeWithName(*v9, v2))
    {
      return 1;
    }

    ++v9;
  }

  v11 = *(a1 + 160);
  v12 = (a1 + 168);
  if (v11 != v12)
  {
    while (1)
    {
      result = SVGNode::hasChildNodeWithName(v11[7], v2);
      if (result)
      {
        break;
      }

      v14 = v11[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v11[2];
          v16 = *v15 == v11;
          v11 = v15;
        }

        while (!v16);
      }

      v11 = v15;
      if (v15 == v12)
      {
        return result;
      }
    }

    return 1;
  }

  return 0;
}

void SVGNode::findChildNodesWithName(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 87);
  if (v6 >= 0)
  {
    v7 = *(a1 + 87);
  }

  else
  {
    v7 = *(a1 + 72);
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2[1];
  }

  if (v7 == v8)
  {
    if (v6 >= 0)
    {
      v10 = (a1 + 64);
    }

    else
    {
      v10 = *(a1 + 64);
    }

    if (v9 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(v10, a2, v7))
    {
      v12 = *(a3 + 8);
      v11 = *(a3 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *a3) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v15 = v11 - *a3;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(a3, v17);
        }

        *(8 * v14) = a1;
        v13 = 8 * v14 + 8;
        v18 = *(a3 + 8) - *a3;
        v19 = (8 * v14 - v18);
        memcpy(v19, *a3, v18);
        v20 = *a3;
        *a3 = v19;
        *(a3 + 8) = v13;
        *(a3 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v12 = a1;
        v13 = (v12 + 1);
      }

      *(a3 + 8) = v13;
    }
  }

  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  while (v21 != v22)
  {
    v23 = *v21++;
    SVGNode::findChildNodesWithName(v23, v4, a3);
  }

  v24 = *(a1 + 160);
  v25 = (a1 + 168);
  if (v24 != v25)
  {
    do
    {
      if (*(v24 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v24[4], v24[5]);
      }

      else
      {
        __p = *(v24 + 4);
      }

      v30 = v24[7];
      (SVGNode::findChildNodesWithName)();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v26 = v24[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v24[2];
          v28 = *v27 == v24;
          v24 = v27;
        }

        while (!v28);
      }

      v24 = v27;
    }

    while (v27 != v25);
  }
}

void sub_1DF138920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::findChildAttributesWithName(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = SVGAttributeMap::attribute(a1[7], a2);
  if (v6)
  {
    v8 = *(a3 + 8);
    v7 = *(a3 + 16);
    if (v8 >= v7)
    {
      v10 = (v8 - *a3) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v11 = v7 - *a3;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(a3, v13);
      }

      v14 = (8 * v10);
      *v14 = v6;
      v9 = 8 * v10 + 8;
      v15 = *(a3 + 8) - *a3;
      v16 = v14 - v15;
      memcpy(v14 - v15, *a3, v15);
      v17 = *a3;
      *a3 = v16;
      *(a3 + 8) = v9;
      *(a3 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = v6;
      v9 = (v8 + 1);
    }

    *(a3 + 8) = v9;
  }

  v18 = a1[11];
  v19 = a1[12];
  while (v18 != v19)
  {
    v20 = *v18++;
    SVGNode::findChildAttributesWithName(v20, a2, a3);
  }

  v21 = a1[20];
  v22 = a1 + 21;
  if (v21 != v22)
  {
    do
    {
      if (*(v21 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v21[4], v21[5]);
      }

      else
      {
        __p = *(v21 + 4);
      }

      v27 = v21[7];
      (SVGNode::findChildAttributesWithName)();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v23 = v21[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v21[2];
          v25 = *v24 == v21;
          v21 = v24;
        }

        while (!v25);
      }

      v21 = v24;
    }

    while (v24 != v22);
  }
}

void sub_1DF138AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::addDefinitionNode(SVGNode *this, SVGNode *a2, SVGNode *a3)
{
  if (*(this + 6))
  {
    v3 = "Add definition node should be called on root node";
LABEL_3:

    SVGUtilities::error(v3, a2, a3);
    return;
  }

  if (SVGAttributeMap::attribute(*(a3 + 7), 0x1Fu))
  {
    v7 = SVGNode::identifier(a3);
    if (!*v7)
    {
      v3 = "Invalid node Id for node";
      goto LABEL_3;
    }

    v8 = v7;
    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    v9 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(this + 160, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if ((this + 168) != v9)
    {
      v10 = v9[7];
      if (v10 == a3)
      {
        return;
      }

      CFRetained::release(v10);
      std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::erase(this + 20, v9);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v8);
    v13 = a3;
    std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGNode *>>(this + 160, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    CFRetained::retain(a3);
    SVGNode::addDefinitionChild(a2, a3);
  }

  else
  {

    SVGNode::addDefinitionChild(a2, a3);
  }
}

void sub_1DF138C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SVGNode *SVGNode::findDefinitionNode(SVGNode *this, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(this + 160, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 168) != v4)
  {
    return v4[7];
  }

  result = *(this + 6);
  if (result)
  {
    return SVGNode::findDefinitionNode(result, a2);
  }

  return result;
}

void sub_1DF138D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double SVGNode::boundingBox(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695F058];
  v2 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v4 = *(MEMORY[0x1E695F058] + 24);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  if (v6 == v7)
  {
    return *MEMORY[0x1E695F058];
  }

  do
  {
    v9 = *v6;
    v10 = (*(**v6 + 32))(*v6, a2);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    memset(&v23, 0, sizeof(v23));
    SVGNode::transform(v9, &v23);
    v22 = v23;
    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    v25 = CGRectApplyAffineTransform(v24, &v22);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v25.origin.x = v3;
    v25.origin.y = v2;
    v25.size.width = v5;
    v25.size.height = v4;
    if (!CGRectIsEmpty(v25))
    {
      v26.origin.x = v3;
      v26.origin.y = v2;
      v26.size.width = v5;
      v26.size.height = v4;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v27 = CGRectUnion(v26, v28);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
    }

    ++v6;
    v4 = height;
    v5 = width;
    v2 = y;
    v3 = x;
  }

  while (v6 != v7);
  return x;
}

uint64_t SVGNode::hasWideGamutColor(SVGNode *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v10 = 0;
    v3 = SVGAttributeMap::attribute(v2, 0x12u);
    if (v3)
    {
      if (SVGAttribute::paintValue(v3, &v10) && (SVGPaint::isWideGamut(v10) & 1) != 0)
      {
        return 1;
      }
    }

    v4 = SVGAttributeMap::attribute(*(this + 7), 0x39u);
    if (v4)
    {
      if (SVGAttribute::paintValue(v4, &v10) && SVGPaint::isWideGamut(v10))
      {
        return 1;
      }
    }
  }

  v6 = *(this + 11);
  v7 = *(this + 12);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = v6 + 8;
  do
  {
    result = (*(**(v8 - 8) + 40))(*(v8 - 8));
    if (result)
    {
      break;
    }

    v9 = v8 == v7;
    v8 += 8;
  }

  while (!v9);
  return result;
}

void SVGNode::print(SVGAttributeMap **this)
{
  v2 = this + 8;
  if (*(this + 87) < 0)
  {
    v2 = *v2;
  }

  v3 = SVGNode::identifier(this);
  v5 = SVGUtilities::print("Node: %s (id: %s), %lu children, %lu definitions\n", v4, v2, v3, (this[12] - this[11]) >> 3, this[22]);
  SVGUtilities::indent(v5);
  v6 = SVGAttributeMap::print(this[7]);
  v8 = this[11];
  v7 = this[12];
  while (v8 != v7)
  {
    v9 = *v8;
    v8 = (v8 + 8);
    v6 = (*(*v9 + 48))(v9);
  }

  SVGUtilities::unindent(v6);
}

void SVGNode::setComment(SVGNode *this, const char *a2)
{
  if (a2)
  {
    operator new();
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    v2 = this + 184;

    std::default_delete<std::string>::operator()[abi:ne200100](v2, v3);
  }
}

void SVGNode::setText(SVGNode *this, const char *a2)
{
  if (a2)
  {
    operator new();
  }

  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
    v2 = this + 192;

    std::default_delete<std::string>::operator()[abi:ne200100](v2, v3);
  }
}

BOOL SVGNode::isChildOf(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  do
  {
    a1 = *(a1 + 48);
    v2 = a1 != 0;
  }

  while (a1 != a2 && a1 != 0);
  return v2;
}

void SVGNode::SVGNode(SVGNode *this, const SVGNode *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  CFRetained::CFRetained(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A443F8;
  *(this + 6) = 0;
  operator new();
}

void sub_1DF139530(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10B3C4084D8EEBALL);
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t SVGNode::hasMonochromeColor(SVGNode *this)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 1;
  }

  v9 = 0;
  v3 = SVGAttributeMap::attribute(v2, 0x12u);
  if (!v3 || !SVGAttribute::paintValue(v3, &v9) || (SVGPaint::isMonochrome(v9, 0x12) & 1) != 0)
  {
    v8 = 0;
    v4 = SVGAttributeMap::attribute(*(this + 7), 0x39u);
    if (!v4 || !SVGAttribute::paintValue(v4, &v8) || SVGPaint::isMonochrome(v8, 0x39))
    {
      v6 = *(this + 11);
      v5 = *(this + 12);
      while (v6 != v5)
      {
        if (((*(**v6 + 56))() & 1) == 0)
        {
          return 0;
        }

        v6 += 8;
      }

      return 1;
    }
  }

  return 0;
}

void SVGNode::printTree(SVGNode *this)
{
  v2 = this + 64;
  if (*(this + 87) < 0)
  {
    v2 = *v2;
  }

  printf("\nNode: <%s>. ", v2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = (v3 + 64);
    if (*(v3 + 87) < 0)
    {
      v4 = *v4;
    }

    printf("Parent: <%s>", v4);
  }

  puts("\nAttributes: ");
  SVGAttributeMap::print(*(this + 7));
  v5 = *(this + 11);
  v6 = *(this + 12);
  while (v5 != v6)
  {
    v7 = *v5++;
    SVGNode::printTree(v7);
  }

  v8 = *(this + 20);
  if (v8 != (this + 168))
  {
    do
    {
      if (*(v8 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, *(v8 + 4), *(v8 + 5));
      }

      else
      {
        v12 = *(v8 + 32);
      }

      v13 = *(v8 + 7);
      printf("\nNodes under <defs>:");
      SVGNode::printTree(v13);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v9 = *(v8 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v8 + 2);
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != (this + 168));
  }
}

void sub_1DF13984C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGNode::enumerate(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v2 = *(a1 + 160);
  v3 = (a1 + 168);
  if (v2 != (a1 + 168))
  {
    do
    {
      if (*(v2 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v2[4], v2[5]);
      }

      else
      {
        __p = *(v2 + 4);
      }

      (*(a2 + 16))(a2, &__p, v2[7], &v9);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        break;
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_1DF139940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,SVGNode *>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__construct_node<std::pair<std::string const,SVGNode *>>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_1DF139C10(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1E12CE5D0);
  }
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::__erase_unique<std::string>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::erase(a1, v3);
  return 1;
}

void SVGPaint::SVGPaint(SVGPaint *this, SVGGradient *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPaint::kSVGPaintClassName);
  CFRetained::CFRetained(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44460;
  *(this + 12) = 2;
  SVGColor::SVGColor(this + 56, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 13) = a2;
  *(this + 14) = 0;
  *(this + 12) = 0x3FF0000000000000;
  CFRetained::retain(a2);
}

void sub_1DF139D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SVGPaint::SVGPaint(SVGPaint *this, const SVGGradient *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPaint::kSVGPaintClassName);
  CFRetained::CFRetained(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44460;
  *(this + 12) = 2;
  SVGColor::SVGColor(this + 56, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0x3FF0000000000000;
  operator new();
}

void sub_1DF139EAC(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10F3C40A581D00ALL);
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void SVGPaint::SVGPaint(SVGPaint *this, SVGPattern *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPaint::kSVGPaintClassName);
  CFRetained::CFRetained(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44460;
  *(this + 12) = 3;
  SVGColor::SVGColor(this + 56, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 12) = 0x3FF0000000000000;
  *(this + 13) = 0;
  *(this + 14) = a2;
  CFRetained::retain(a2);
}

void sub_1DF139FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SVGPaint::SVGPaint(SVGPaint *this, const SVGPaint *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPaint::kSVGPaintClassName);
  CFRetained::CFRetained(this, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A44460;
  *(this + 12) = *(a2 + 12);
  SVGColor::SVGColor(this + 56, 3u, 0.0, 0.0, 0.0, 1.0);
  *(this + 13) = 0;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 14) = 0;
  v4 = *(this + 12);
  switch(v4)
  {
    case 3:
      operator new();
    case 2:
      operator new();
    case 1:
      SVGColor::SVGColor(v5, a2 + 56);
      SVGColor::operator=(this + 56, v5);
      break;
  }
}

void sub_1DF13A168(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10F3C40BA4B7CADLL);
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t SVGPaint::isWideGamut(SVGPaint *this)
{
  v1 = *(this + 12);
  if (v1 == 3)
  {
    v8 = *(this + 14);
    v9 = *(v8 + 88);
    v10 = *(v8 + 96);
    if (v9 != v10)
    {
      v11 = v9 + 8;
      do
      {
        result = (*(**(v11 - 8) + 40))(*(v11 - 8));
        if (result)
        {
          break;
        }

        v7 = v11 == v10;
        v11 += 8;
      }

      while (!v7);
      return result;
    }

    return 0;
  }

  if (v1 != 2)
  {
    if (v1 == 1)
    {
      return *(this + 22) == 15;
    }

    return 0;
  }

  v3 = *(this + 13);
  v4 = *(v3 + 216);
  v5 = *(v3 + 224);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = v4 + 8;
  do
  {
    SVGColor::SVGColor(v12, *(v6 - 8) + 48);
    result = v13 == 15;
    v7 = v13 == 15 || v6 == v5;
    v6 += 8;
  }

  while (!v7);
  return result;
}

uint64_t SVGPaint::isEqual(SVGPaint *this, const SVGPaint *a2)
{
  v2 = *(this + 12);
  if (v2 != *(a2 + 12))
  {
    return 0;
  }

  switch(v2)
  {
    case 0:
      return 1;
    case 2:
      v5 = *(this + 13);
      v6 = *(a2 + 13);

      return SVGGradient::isEqual(v5, v6);
    case 1:
      SVGColor::SVGColor(v7, a2 + 56);
      return SVGColor::isEqual((this + 56), v7);
    default:

      return SVGPattern::isEqual();
  }
}

void SVGPaint::createStringRepresentation(SVGPaint *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "none");
  v4 = *(this + 12);
  if (v4 == 3)
  {
    v7 = SVGNode::identifier(*(this + 14));
    SVGParser::FormatString("url(#%s)", &v8, v7);
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v6 = SVGNode::identifier(*(this + 13));
    SVGParser::FormatString("url(#%s)", &v8, v6);
LABEL_9:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v8;
    v5 = v9;
    goto LABEL_12;
  }

  if (v4 != 1)
  {
    return;
  }

  SVGColor::SVGColor(&v8, this + 56);
  SVGColor::GetStringForColor(&v8, &v10);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v10;
  v5 = v11;
LABEL_12:
  *(a2 + 16) = v5;
}

void sub_1DF13A48C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGPaint::isMonochrome(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = *(a1 + 64);
        if (vabdd_f64(*(a1 + 56), v3) < 0.00000011920929)
        {
          return vabdd_f64(v3, *(a1 + 72)) < 0.00000011920929;
        }

        return 0;
      }

      goto LABEL_16;
    }

    return 1;
  }

  if (v2 == 2)
  {
    v10 = *(a1 + 104);
    v11 = *(v10 + 216);
    v12 = *(v10 + 224);
    if (v11 != v12)
    {
      for (i = v11 + 8; ; i += 8)
      {
        SVGColor::SVGColor(&v16, *(i - 8) + 48);
        if (vabdd_f64(v16, v17) >= 0.00000011920929)
        {
          break;
        }

        v14 = vabdd_f64(v17, v18);
        result = v14 < 0.00000011920929;
        if (v14 >= 0.00000011920929 || i == v12)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v2 != 3)
  {
LABEL_16:
    SVGUtilities::log("Unsupported paint type : %u", a2, *(a1 + 48));
    return 1;
  }

  v5 = *(a1 + 112);
  v6 = *(v5 + 88);
  v7 = *(v5 + 96);
  if (v6 == v7)
  {
    return 1;
  }

  v8 = v6 + 8;
  do
  {
    result = (*(**(v8 - 8) + 56))(*(v8 - 8));
    if (result)
    {
      v9 = v8 == v7;
    }

    else
    {
      v9 = 1;
    }

    v8 += 8;
  }

  while (!v9);
  return result;
}

uint64_t SVGParser::ParseBinary(uint64_t a1, double *a2, void *a3, _DWORD *a4)
{
  v7 = a1 + 1;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = *(v7 - 1);
    if (v9 <= 0x2E && ((1 << v9) & 0x680000000000) != 0)
    {
      return 0;
    }

    v11 = v9;
    if (v9 < 0)
    {
      result = __maskrune(v9, 0x4000uLL);
      if (!result)
      {
        return result;
      }

      goto LABEL_13;
    }

    v12 = *(v8 + 4 * v9 + 60);
    if ((v12 & 0x400) != 0)
    {
      break;
    }

    if (v11 != 44)
    {
      result = v12 & 0x4000;
      if ((v12 & 0x4000) == 0)
      {
        return result;
      }
    }

LABEL_13:
    ++v7;
  }

  if ((v11 & 0x7E) != 0x30)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = 1;
    LOBYTE(v11) = *(v7 - 1);
  }

  *a2 = (v11 - 48);
  if (a3)
  {
    *a3 = v7;
  }

  return 1;
}

uint64_t SVGParser::IsDigitCharacter(SVGParser *this)
{
  if (this <= 0x2E && ((1 << this) & 0x680000000000) != 0)
  {
    return 1;
  }

  if ((this & 0x80000000) != 0)
  {
    return 0;
  }

  return (*(MEMORY[0x1E69E9830] + 4 * this + 60) >> 10) & 1;
}

BOOL SVGParser::IsAllowedSeparator(SVGParser *this)
{
  if (this == 44)
  {
    return 1;
  }

  if ((this & 0x80000000) != 0)
  {
    v2 = __maskrune(this, 0x4000uLL);
  }

  else
  {
    v2 = *(MEMORY[0x1E69E9830] + 4 * this + 60) & 0x4000;
  }

  return v2 != 0;
}

BOOL SVGParser::ParseCGFloatListEllipticalArcCurve(char *a1, void *a2, uint64_t a3)
{
  v3 = 0;
  if (!a1 || !a3)
  {
    return v3;
  }

  v6 = 0;
  v13 = a1;
  v7 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      v8 = *a1;
      if (v8 == 44)
      {
        goto LABEL_7;
      }

      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      v9 = __maskrune(*a1, 0x4000uLL);
      a1 = v13;
      if (!v9)
      {
        goto LABEL_9;
      }

LABEL_7:
      v13 = ++a1;
    }

    if ((*(v7 + 4 * v8 + 60) & 0x4000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = *a1;
    if ((v10 - 45) >= 2 && v10 != 43 && (!*a1 || (v10 & 0x80) != 0 || (*(v7 + 4 * v10 + 60) & 0x400) == 0))
    {
      break;
    }

    v12 = 0;
    if ((v6 - 3) >= 2)
    {
      if ((SVGParser::ParseCGFloat(a1, &v12, &v13, 0) & 1) == 0)
      {
        break;
      }
    }

    else if ((SVGParser::ParseBinary(a1, &v12, &v13, 0) & 1) == 0)
    {
      break;
    }

    ++v6;
    std::vector<double>::push_back[abi:ne200100](a3, &v12);
    if (*(a3 + 8) - *a3 == 56)
    {
      v6 = 0;
    }

    a1 = v13;
  }

  if (a2)
  {
    *a2 = v13;
  }

  return *(a3 + 8) != *a3;
}

void SVGParser::GetSeparatedWhitespaceComponents(const char *a1, uint64_t a2, char a3)
{
  v6 = strlen(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E9830];
    do
    {
      v10 = a1[v8];
      if ((v10 & 0x80000000) != 0)
      {
        if (__maskrune(v10, 0x4000uLL))
        {
          goto LABEL_9;
        }
      }

      else if ((*(v9 + 4 * v10 + 60) & 0x4000) != 0)
      {
        goto LABEL_9;
      }

      if ((a3 & 1) != 0 || a1[v8] != 44)
      {
        v11 = v8;
        if (v8 < v7)
        {
          v11 = v8;
          while (1)
          {
            v12 = a1[v11];
            if ((v12 & 0x80000000) != 0)
            {
              if (__maskrune(v12, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v9 + 4 * v12 + 60) & 0x4000) != 0)
            {
              break;
            }

            if ((a3 & 1) == 0 && a1[v11] == 44)
            {
              break;
            }

            if (v7 == ++v11)
            {
              v11 = v7;
              break;
            }
          }
        }

        v13 = v11 - v8;
        v15 = *(a2 + 8);
        v14 = *(a2 + 16);
        if (v15 >= v14)
        {
          v17 = (v15 - *a2) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v18 = v14 - *a2;
          v19 = v18 >> 2;
          if (v18 >> 2 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v20);
          }

          v21 = (8 * v17);
          *v21 = v8 | (v13 << 32);
          v16 = 8 * v17 + 8;
          v22 = *(a2 + 8) - *a2;
          v23 = v21 - v22;
          memcpy(v21 - v22, *a2, v22);
          v24 = *a2;
          *a2 = v23;
          *(a2 + 8) = v16;
          *(a2 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v15 = v8 | (v13 << 32);
          v16 = (v15 + 1);
        }

        *(a2 + 8) = v16;
        goto LABEL_33;
      }

LABEL_9:
      v11 = v8;
LABEL_33:
      v8 = v11 + 1;
    }

    while (v11 + 1 < v7);
  }
}

BOOL SVGParser::GetParentheticalComponent(const char *a1, uint64_t a2)
{
  v4 = strlen(a1);
  v5 = &a1[v4];
  v6 = a1;
  if (v4 >= 1)
  {
    do
    {
      if (*v6 == 40)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v7 = v6 + 1;
  if ((v6 + 1) < v5)
  {
    v8 = &a1[v4] - v6 - 1;
    v7 = v6 + 1;
    while (*v7 != 41)
    {
      ++v7;
      if (!--v8)
      {
        v7 = &a1[v4];
        break;
      }
    }
  }

  v9 = v7 - v6;
  if (v7 - v6 >= 1)
  {
    MEMORY[0x1E12CE550](a2);
  }

  return v9 > 0;
}

void SVGParser::GetComponentsSeparatedByDelimiters(const char *a1, const char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = strlen(a1);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    v7 = &v4[v5];
    v8 = strlen(a2);
    v9 = 0;
    v10 = 0;
    v11 = &a2[v8];
    v12 = &v4[v6];
    v13 = MEMORY[0x1E69E9830];
    for (i = v4; i <= v7; ++i)
    {
      v15 = *i;
      if (v8 < 1)
      {
        v17 = 0;
      }

      else
      {
        v16 = a2 + 1;
        do
        {
          v17 = *(v16 - 1) == v15;
          v18 = *(v16 - 1) == v15 || v16 >= v11;
          ++v16;
        }

        while (!v18);
      }

      if (v15 == 39 || v15 == 34)
      {
        if (v9)
        {
          if (v15 == v9)
          {
            TrimmedString(v10 + 1, i - 1, __p);
            v19 = v31;
            v20 = v31;
            if ((v31 & 0x80u) != 0)
            {
              v19 = __p[1];
            }

            if (v19)
            {
              std::vector<std::string>::push_back[abi:ne200100](a3, __p);
              v20 = v31;
            }

            if ((v20 & 0x80) != 0)
            {
              operator delete(__p[0]);
            }

            v9 = 0;
            v10 = 0;
LABEL_52:
            v4 = i + 1;
            if ((i + 1) < v7)
            {
              do
              {
                v27 = *v4;
                v28 = a2;
                if (v8 < 1)
                {
LABEL_56:
                  if ((v27 & 0x80000000) != 0)
                  {
                    if (!__maskrune(v27, 0x4000uLL))
                    {
                      goto LABEL_63;
                    }
                  }

                  else if ((*(v13 + 4 * v27 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_63;
                  }
                }

                else
                {
                  while (*v28 != v27)
                  {
                    if (++v28 >= v11)
                    {
                      goto LABEL_56;
                    }
                  }
                }

                ++v4;
              }

              while (v4 != v7);
              v4 = v7;
            }
          }
        }

        else
        {
          v9 = *i;
          v10 = i;
        }
      }

      else
      {
        if (v9)
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        if (v4 >= i)
        {
          v21 = 0;
        }

        if (v7 == i || v21)
        {
          TrimmedString(v4, i - 1, __p);
          v22 = v31;
          if ((v31 & 0x80u) != 0)
          {
            v22 = __p[1];
          }

          if (v22)
          {
            std::vector<std::string>::push_back[abi:ne200100](a3, __p);
          }

          if (v7 != i && v4 < v7)
          {
            do
            {
              while (1)
              {
                v23 = *v4;
                v24 = a2;
                if (v8 >= 1)
                {
                  break;
                }

LABEL_39:
                if ((v23 & 0x80000000) != 0)
                {
                  v25 = __maskrune(v23, 0x4000uLL);
                }

                else
                {
                  v25 = *(v13 + 4 * v23 + 60) & 0x4000;
                }

                ++v4;
                if (v25)
                {
                  v26 = v4 == v12;
                }

                else
                {
                  v26 = 1;
                }

                if (v26)
                {
                  goto LABEL_49;
                }
              }

              while (*v24 != v23)
              {
                if (++v24 >= v11)
                {
                  goto LABEL_39;
                }
              }

              ++v4;
            }

            while (v4 != v12);
          }

LABEL_49:
          if (v31 < 0)
          {
            operator delete(__p[0]);
          }

          if (v7 == i)
          {
            return;
          }

          goto LABEL_52;
        }
      }

LABEL_63:
      ;
    }
  }
}

void sub_1DF13ADA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *TrimmedString@<X0>(char *__src@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v4 = __src;
  v6 = MEMORY[0x1E69E9830];
  if (__src < a2)
  {
    do
    {
      v7 = *v4;
      if ((v7 & 0x80000000) != 0)
      {
        if (!__maskrune(v7, 0x4000uLL))
        {
          goto LABEL_8;
        }
      }

      else if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = v3;
  }

LABEL_8:
  while (v3 > v4)
  {
    v8 = *v3;
    if ((v8 & 0x80000000) != 0)
    {
      if (!__maskrune(v8, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v6 + 4 * v8 + 60) & 0x4000) == 0)
    {
      break;
    }

    --v3;
  }

  return std::string::basic_string[abi:ne200100](a3, v4, v3 - v4 + 1);
}

void SVGReaderOptions::~SVGReaderOptions(CFTypeRef **this, CFRetained *a2)
{
  CFRetained::release(*this, a2);
  v3 = this[2];
  if (v3)
  {
    CFRelease(v3);
  }
}

void SVGReader::report(SVGReader *this, SVGParser *a2, uint64_t a3, uint64_t a4, ...)
{
  *v9 = &a4;
  SVGParser::FormatString(a2, v9, __p);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((a3 & 0x80000000) != 0)
  {
    SVGUtilities::error("Reader: %s", v5, v6);
  }

  else
  {
    SVGUtilities::error("Reader: Error on line %d: %s", v5, a3, v6);
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DF13AF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFURLRef SVGRootNode::setWorkingDir(SVGRootNode *this, CFURLRef relativeURL)
{
  v4 = *(this + 35);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFURLCopyAbsoluteURL(relativeURL);
  *(this + 35) = result;
  return result;
}

double ___ZN9SVGReader20parseXMLNodeGradientEP8_xmlNodeP7SVGNodeN7SVGAtom4NameE_block_invoke(uint64_t a1, int a2, os_unfair_lock_s *this)
{
  v7 = 0.0;
  v8 = 0;
  switch(a2)
  {
    case 'S':
      if (SVGAttribute::floatValue(this, &v7))
      {
        result = v7;
        *(*(*(*(a1 + 32) + 8) + 24) + 88) = v7;
      }

      break;
    case '8':
      if (SVGAttribute::paintValue(this, &v8) && *(v8 + 12) == 1)
      {
        v5 = *(*(*(a1 + 32) + 8) + 24);
        SVGColor::SVGColor(v6, v8 + 56);
        return SVGGradientStop::setColor(v5, v6);
      }

      break;
    case '(':
      if (SVGAttribute::lengthValue(this, v6))
      {
        result = v6[0];
        *(*(*(*(a1 + 32) + 8) + 24) + 96) = *v6;
      }

      break;
  }

  return result;
}

uint64_t ApplyVariablesToAttributes(const SVGAttributeMap *a1, SVGAttributeMap *a2)
{
  result = SVGAttributeMap::count(a1);
  if (result)
  {
    v3[0] = 0;
    v3[1] = v3;
    v3[2] = 0x2000000000;
    operator new();
  }

  return result;
}

void SetNodeTextIfAvailable(_xmlNode *a1, SVGNode *a2)
{
  Content = xmlNodeGetContent(a1);
  v3 = Content;
  if (Content && *Content)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, Content);
    SVGParser::StripLeadingTrailingWhitespace(&__p, &v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v6.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      SVGNode::setText();
    }

    if ((*(&v6.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  free(v3);
}

void sub_1DF13B6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF13C008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1E12CE5D0](v14, 0x10F3C406E4AB7DALL);
  SVGReaderOptions::~SVGReaderOptions(&__p, v16);
  _Unwind_Resume(a1);
}

void ResolveGradientHrefDefinition(uint64_t a1, const char *a2)
{
  v3 = (a1 + 64);
  v4 = *(a1 + 87);
  v5 = (a1 + 64);
  if (v4 < 0)
  {
    v5 = *v3;
  }

  if (SVGAtom::ToName(v5, a2) == 33)
  {
    goto LABEL_34;
  }

  if (*(a1 + 87) < 0)
  {
    v3 = *v3;
  }

  if (SVGAtom::ToName(v3, v6) == 48)
  {
LABEL_34:
    if (v7)
    {
      v8 = v7;
      if ((*(v7 + 448) & 1) == 0)
      {
        *(v7 + 448) = 1;
        v9 = SVGAttributeMap::attribute(*(a1 + 56), 0x4E20u);
        if (v9)
        {
          v11 = v9;
          if (!*(v9 + 20) && SVGAttribute::stringValueBeginsWith(v9, "#", v10))
          {
            v12 = SVGAttribute::stringValue(v11);
            if (*(v12 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, *v12, *(v12 + 8));
            }

            else
            {
              v13 = *v12;
              __str.__r_.__value_.__r.__words[2] = *(v12 + 16);
              *&__str.__r_.__value_.__l.__data_ = v13;
            }

            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            std::string::basic_string(&v21, &__str, 1uLL, size - 1, &v23);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              v15 = v21.__r_.__value_.__r.__words[0];
              if (!v21.__r_.__value_.__l.__size_)
              {
                v20 = v21.__r_.__value_.__r.__words[0];
LABEL_29:
                operator delete(v20);
LABEL_30:
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                return;
              }
            }

            else
            {
              if (!*(&v21.__r_.__value_.__s + 23))
              {
                goto LABEL_30;
              }

              v15 = &v21;
            }

            DefinitionNode = SVGNode::findDefinitionNode(a1, v15);
            v18 = DefinitionNode;
            if (DefinitionNode)
            {
              if (v19 && v8 != v19)
              {
                SVGGradient::setParentGradient(v8, v19);
                ResolveGradientHrefDefinition(v18);
              }
            }

            else
            {
              SVGUtilities::error("Failed to resolve gradient xlink:href definition", v17);
            }

            if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            v20 = v21.__r_.__value_.__r.__words[0];
            goto LABEL_29;
          }
        }
      }
    }
  }
}

void sub_1DF13C2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ResolvePatternHrefDefinition(uint64_t a1, const char *a2)
{
  v3 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v3 = *v3;
  }

  if (SVGAtom::ToName(v3, a2) == 79)
  {
    if (v4)
    {
      v5 = v4;
      if ((*(v4 + 288) & 1) == 0)
      {
        *(v4 + 288) = 1;
        v6 = SVGAttributeMap::attribute(*(a1 + 56), 0x4E20u);
        if (v6)
        {
          v8 = v6;
          if (!*(v6 + 20) && SVGAttribute::stringValueBeginsWith(v6, "#", v7))
          {
            v9 = SVGAttribute::stringValue(v8);
            if (*(v9 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, *v9, *(v9 + 8));
            }

            else
            {
              v10 = *v9;
              __str.__r_.__value_.__r.__words[2] = *(v9 + 16);
              *&__str.__r_.__value_.__l.__data_ = v10;
            }

            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            std::string::basic_string(&v20, &__str, 1uLL, size - 1, &v22);
            v12 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v20, &unk_1DF145996);
            v13 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
            if (!v12)
            {
              if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = &v20;
              }

              else
              {
                v14 = v20.__r_.__value_.__r.__words[0];
              }

              DefinitionNode = SVGNode::findDefinitionNode(a1, v14);
              v17 = DefinitionNode;
              if (DefinitionNode)
              {
                if (v18)
                {
                  v19 = v18;
                  if (v5 != v18)
                  {
                    *(v5 + 35) = v18;
                    SVGPattern::inheritParentPattern(v5);
                    ResolvePatternHrefDefinition(v17);
                    *(v5 + 35) = v19;
                    SVGPattern::inheritParentPattern(v5);
                  }
                }
              }

              else
              {
                SVGUtilities::error("Failed to resolve pattern xlink:href definition", v16);
              }

              v13 = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
            }

            if (v13 < 0)
            {
              operator delete(v20.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }
  }
}

void sub_1DF13C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL26ApplyVariablesToAttributesPK15SVGAttributeMapPS__block_invoke(uint64_t a1, int a2, SVGAttribute *this)
{
  v4 = SVGAttribute::stringValue(this);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *v4, *(v4 + 8));
  }

  else
  {
    v6 = *v4;
    v24.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v24.__r_.__value_.__l.__data_ = v6;
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v24;
  }

  else
  {
    v7 = v24.__r_.__value_.__r.__words[0];
  }

  if (SVGParser::StringBeginsWith(v7, "var(", v5))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v24;
    }

    else
    {
      v8 = v24.__r_.__value_.__r.__words[0];
    }

    SVGParser::GetComponentsSeparatedByDelimiters(v8, "())", &v21);
    if (v22 - v21 == 48)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v9 = (v21 + 24);
      if (*(v21 + 47) < 0)
      {
        v9 = *v9;
      }

      SVGParser::GetComponentsSeparatedByDelimiters(v9, ",", &v18);
      if (v19 != v18)
      {
        v11 = 0;
        if (0xAAAAAAAAAAAAAAABLL * (v19 - v18) <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * (v19 - v18);
        }

        do
        {
          v13 = &v18[v11];
          if (SHIBYTE(v18[v11 + 2]) < 0)
          {
            v13 = *v13;
          }

          if (!SVGParser::StringBeginsWith(v13, "--", v10))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, v13);
            SVGAttributeMap::setAttribute();
          }

          v15 = SVGAtom::ToName(v13, v14);
          v16 = SVGAttributeMap::attribute(*(a1 + 40), v15);
          if (v16)
          {
            SVGAttribute::stringValue(v16);
            SVGAttributeMap::setAttribute();
          }

          v11 += 3;
          --v12;
        }

        while (v12);
      }

      __p[0] = &v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    v18 = &v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1DF13C73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a16 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL28ConvertUseElementCoordinatesP15SVGAttributeMapR6CGRect_block_invoke(uint64_t result, int a2, os_unfair_lock_s *this)
{
  v3 = result;
  if (a2 > 66)
  {
    if (a2 == 70)
    {
      v4 = (*(result + 40) + 8);
    }

    else
    {
      if (a2 != 67)
      {
        return result;
      }

      v4 = *(result + 40);
    }
  }

  else if (a2 == 30)
  {
    v4 = (*(result + 40) + 24);
  }

  else
  {
    if (a2 != 66)
    {
      return result;
    }

    v4 = (*(result + 40) + 16);
  }

  result = SVGAttribute::floatValue(this, v4);
  *(*(*(v3 + 32) + 8) + 24) = 1;
  return result;
}

void SVGRootNode::print(SVGRootNode *this, const char *a2)
{
  SVGUtilities::print("\n", a2);
  v4 = SVGUtilities::print("RootNode: Size: {%.2f, %.2f} Viewbox: ", v3, *(this + 28), *(this + 29));
  SVGUtilities::printIgnoringIndentation(v4, *(this + 240));
  v6 = SVGUtilities::print("\n", v5);
  SVGUtilities::indent(v6);
  v9 = *(this + 11);
  v8 = *(this + 12);
  while (v9 != v8)
  {
    v10 = *v9++;
    v7 = (*(*v10 + 48))(v10);
  }

  SVGUtilities::unindent(v7);
}

void SVGRootNode::adjustSizeAndViewboxToFitContents(SVGRootNode *this, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v5.origin.x = (*(*this + 32))(this, 0);
  *(this + 28) = *&v5.size.width;
  *(this + 29) = *&v5.size.height;
  *(this + 240) = CGRectInset(v5, -width, -height);
}

void SVGFilter::~SVGFilter(SVGFilter *this, CFRetained *a2)
{
  SVGNode::~SVGNode(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGFilter::draw(SVGFilter *this, CGContext *a2, const SVGNode *a3, CGRect a4, CGRect a5)
{
  if (*(this + 60))
  {
    v8 = *(this + 26);
    v9 = *(this + 27);
    v10 = *(this + 28);
    v11 = *(this + 29);
  }

  else
  {
    v8 = a4.origin.x + *(this + 26) * a4.size.width;
    v9 = a4.origin.y + *(this + 27) * a4.size.height;
    v10 = a4.size.width * *(this + 28);
    v11 = a4.size.height * *(this + 29);
  }

  SourceImage = SVGFilter::createSourceImage(this, 0, a3, v8, v9, v10, v11);
  if (SourceImage)
  {
    v13 = SourceImage;
    v14 = [MEMORY[0x1E695F658] imageWithCGImage:SourceImage];
    CGImageRelease(v13);
    v15 = SVGFilter::createSourceImage(this, 1, a3, v8, v9, v10, v11);
    if (v15)
    {
      [MEMORY[0x1E695F658] imageWithCGImage:v15];
      objc_claimAutoreleasedReturnValue();
      CGImageRelease(v15);
      CGImageGetBitsPerComponent(v13);
      CGImageGetBitsPerPixel(v13);
      CGImageGetColorSpace(v13);
      CGImageGetBitmapInfo(v13);
      CGImageGetRenderingIntent(v13);
      [MEMORY[0x1E695F620] contextWithCGContext:a2 options:0];
      objc_claimAutoreleasedReturnValue();
      operator new();
    }
  }
}

void sub_1DF13D2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38)
{
  std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::~__hash_table(&a30);
  a30 = &a35;
  std::vector<std::unique_ptr<FilterResult>>::__destroy_vector::operator()[abi:ne200100](&a30);

  _Unwind_Resume(a1);
}

double SVGFilter::filterRegion(SVGFilter *this, CGRect a2)
{
  x = a2.origin.x;
  result = *(this + 26);
  if (!*(this + 60))
  {
    return x + result * a2.size.width;
  }

  return result;
}

CGImageRef SVGFilter::createSourceImage(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 248) & 1) == 0)
  {
    *(a1 + 248) = 1;
    v22 = @"removeAncestorTransforms";
    v23[0] = MEMORY[0x1E695E110];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    if (a2 == 1)
    {
      v19 = CGBitmapContextCreate(0, a6, a7, 8uLL, 0, 0, 7u);
      v20 = v19;
      if (v19)
      {
        CGContextTranslateCTM(v19, -a4, -a5);
        SVGUtilities::CGContextDrawSVGDefinitionNode(v20, *(a3 + 40), v16);
        Image = CGBitmapContextCreateImage(v20);
        CGContextRelease(v20);
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      SVGUtilities::log("Specified image source for the filter is currently not supported", v15);
    }

    else
    {
      v17 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      if (v17)
      {
        v18 = CGBitmapContextCreate(0, a6, a7, 8uLL, 0, v17, 1u);
        CGColorSpaceRelease(v17);
        if (v18)
        {
          CGContextTranslateCTM(v18, -a4, -a5);
          SVGUtilities::CGContextDrawSVGDefinitionNode(v18, *(a3 + 40), v16);
          Image = CGBitmapContextCreateImage(v18);
          CGContextRelease(v18);
LABEL_12:

          goto LABEL_13;
        }
      }
    }

    Image = 0;
    goto LABEL_12;
  }

  Image = 0;
LABEL_13:
  *(a1 + 248) = 0;
  return Image;
}

uint64_t SVGFilter::filterPrimitive(unsigned int a1)
{
  for (i = 0; i != 6; ++i)
  {
    if (SupportedFilters[i] == a1)
    {
      operator new();
    }
  }

  v2 = SVGAtom::ToString(a1);
  SVGUtilities::log("Filter primitive: <%s> is currently not supported.", v3, v2);
  return 0;
}

void SVGFilter::updatedAttributes(SVGFilter *this, SVGAttributeMap *a2)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x4012000000;
  v48 = __Block_byref_object_copy__2;
  v49 = __Block_byref_object_dispose__2;
  v50 = "";
  v51 = 0;
  v52 = 0;
  CGSVGLengthMakeWithType();
  v51 = v4;
  v52 = v5;
  v37 = 0;
  v38 = &v37;
  v39 = 0x4012000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = "";
  v43 = 0;
  v44 = 0;
  CGSVGLengthMakeWithType();
  v43 = v6;
  v44 = v7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4012000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = "";
  v35 = 0;
  v36 = 0;
  CGSVGLengthMakeWithType();
  v35 = v8;
  v36 = v9;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4012000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = "";
  v27 = 0;
  v28 = 0;
  CGSVGLengthMakeWithType();
  v27 = v10;
  v28 = v11;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN9SVGFilter17updatedAttributesEP15SVGAttributeMap_block_invoke;
  v12[3] = &unk_1E86AAD20;
  v12[4] = &v45;
  v12[5] = &v37;
  v12[6] = &v29;
  v12[7] = &v21;
  v12[8] = &v17;
  v12[9] = &v13;
  SVGAttributeMap::enumerate(a2, v12);
  *(this + 26) = CGSVGLengthScaledLength(v46[6], v46[7], 1.0);
  *(this + 27) = CGSVGLengthScaledLength(v38[6], v38[7], 1.0);
  *(this + 28) = CGSVGLengthScaledLength(v30[6], v30[7], 1.0);
  *(this + 29) = CGSVGLengthScaledLength(v22[6], v22[7], 1.0);
  *(this + 60) = *(v18 + 6);
  *(this + 61) = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v45, 8);
}

void sub_1DF13D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN9SVGFilter17updatedAttributesEP15SVGAttributeMap_block_invoke(void *a1, int a2, SVGAttribute *this)
{
  v5 = *(this + 12);
  if (v5 <= 69)
  {
    switch(v5)
    {
      case 30:
        v6 = a1[7];
        break;
      case 66:
        v6 = a1[6];
        break;
      case 67:
        v6 = a1[4];
        break;
      default:
        return;
    }

LABEL_15:
    if ((SVGAttribute::lengthValue(this, *(v6 + 8) + 48) & 1) == 0)
    {
      v9 = SVGAtom::ToString(*(this + 12));
      SVGUtilities::error("SVGFilter: Attribute parse error: %s", v10, v9);
    }

    return;
  }

  switch(v5)
  {
    case 'V':
      v7 = SVGAttribute::stringValue(this);
      v8 = *(v7 + 23);
      if (v8 < 0)
      {
        if (*(v7 + 8) != 17)
        {
          return;
        }

        v7 = *v7;
      }

      else if (v8 != 17)
      {
        return;
      }

      if (*v7 == 0x6F427463656A626FLL && *(v7 + 8) == 0x6F42676E69646E75 && *(v7 + 16) == 120)
      {
        *(*(a1[9] + 8) + 24) = 0;
      }

      break;
    case 'U':
      v11 = SVGAttribute::stringValue(this);
      v12 = *(v11 + 23);
      if (v12 < 0)
      {
        if (*(v11 + 8) != 14)
        {
          return;
        }

        v11 = *v11;
      }

      else if (v12 != 14)
      {
        return;
      }

      if (*v11 == 0x6361705372657375 && *(v11 + 6) == 0x6573556E4F656361)
      {
        *(*(a1[8] + 8) + 24) = 1;
      }

      break;
    case 'F':
      v6 = a1[5];
      goto LABEL_15;
    default:
      return;
  }
}

void std::vector<std::unique_ptr<FilterResult>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<FilterResult>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

FilterResult *std::vector<std::unique_ptr<FilterResult>>::__base_destruct_at_end[abi:ne200100](FilterResult *result, FilterResult **a2)
{
  v3 = result;
  for (i = *(result + 1); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<FilterResult>>>::destroy[abi:ne200100]<std::unique_ptr<FilterResult>,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

FilterResult *std::allocator_traits<std::allocator<std::unique_ptr<FilterResult>>>::destroy[abi:ne200100]<std::unique_ptr<FilterResult>,0>(uint64_t a1, FilterResult **a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    FilterResult::~FilterResult(result);

    JUMPOUT(0x1E12CE5D0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,FilterResult *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,FilterResult *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,FilterResult *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,FilterResult *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *std::__split_buffer<std::unique_ptr<FilterResult>>::~__split_buffer(uint64_t *a1)
{
  std::__split_buffer<std::unique_ptr<FilterResult>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

FilterResult *std::__split_buffer<std::unique_ptr<FilterResult>>::__destruct_at_end[abi:ne200100](FilterResult *result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 4);
    *(v3 + 2) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<FilterResult>>>::destroy[abi:ne200100]<std::unique_ptr<FilterResult>,0>(v5, (v4 - 8));
  }

  return result;
}