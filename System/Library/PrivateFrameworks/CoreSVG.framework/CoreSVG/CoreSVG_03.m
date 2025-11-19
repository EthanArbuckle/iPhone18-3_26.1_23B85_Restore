BOOL SVGViewBoxNode::ParseAspectRatio(uint64_t a1, uint64_t a2)
{
  *(a1 + 272) = 5;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  SVGParser::GetSeparatedWhitespaceComponents(v4, &v17, 1);
  v5 = v17;
  v6 = v18;
  v7 = (v18 - v17) >> 3;
  v8 = v7 - 1;
  if ((v7 - 1) >= 2 || v17 == v18)
  {
    if (v17)
    {
      goto LABEL_10;
    }

    return v8 < 2;
  }

  v15 = v7 - 1;
  do
  {
    std::string::basic_string(&v16, a2, *v5, v5[1], &v20);
    v11 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    v12 = v16.__r_.__value_.__r.__words[0];
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v16;
    }

    else
    {
      v13 = v16.__r_.__value_.__r.__words[0];
    }

    if (!strcasecmp(v13, "None"))
    {
      *(a1 + 272) = 0;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (!strcasecmp(v13, "xMinYMin"))
    {
      v14 = 1;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMidYMin"))
    {
      v14 = 2;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMaxYMin"))
    {
      v14 = 3;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMinYMid"))
    {
      v14 = 4;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMidYMid"))
    {
      v14 = 5;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMaxYMid"))
    {
      v14 = 6;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMinYMax"))
    {
      v14 = 7;
      goto LABEL_39;
    }

    if (!strcasecmp(v13, "xMidYMax"))
    {
      v14 = 8;
LABEL_39:
      *(a1 + 272) = v14;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (!strcasecmp(v13, "xMaxYMax"))
    {
      *(a1 + 272) = 9;
LABEL_42:
      if (v11 < 0)
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }

    if (strcasecmp(v13, "Meet"))
    {
      if (!strcasecmp(v13, "Slice"))
      {
        *(a1 + 276) = 1;
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

LABEL_40:
        operator delete(v12);
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    *(a1 + 276) = 0;
    if (v11 < 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    v5 += 2;
  }

  while (v5 != v6);
  v5 = v17;
  v8 = v15;
  if (!v17)
  {
    return v8 < 2;
  }

LABEL_10:
  v18 = v5;
  operator delete(v5);
  return v8 < 2;
}

void sub_1DF13E2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGViewBoxNode::print(SVGViewBoxNode *this, const char *a2)
{
  SVGUtilities::print("\n", a2);
  v4 = SVGUtilities::print("ViewBoxNode: Size: {%.2f, %.2f} Viewbox: ", v3, *(this + 28), *(this + 29));
  SVGUtilities::printIgnoringIndentation(v4, *(this + 240));

  return SVGUtilities::print("\n", v5);
}

CGPath *SVGShapeNode::createCGPath(SVGShapeNode *this)
{
  if (*(this + 74) != 42)
  {
    Mutable = CGPathCreateMutable();
    v7 = Mutable;
    v8 = *(this + 74);
    if (v8 <= 43)
    {
      switch(v8)
      {
        case 3:
          v29 = *(this + 36);
          if (v29 <= 0.0)
          {
            return v7;
          }

          v30 = *(this + 34) - v29;
          v31 = *(this + 35) - v29;
          v32 = v29 + v29;
          v33 = v32;
          break;
        case 16:
          v36 = *(this + 32);
          if (v36 <= 0.0)
          {
            return v7;
          }

          v37 = *(this + 33);
          if (v37 <= 0.0)
          {
            return v7;
          }

          v30 = *(this + 34) - v36;
          v31 = *(this + 35) - v37;
          v32 = v36 + v36;
          v33 = v37 + v37;
          break;
        case 32:
          CGPathMoveToPoint(Mutable, 0, *(this + 26), *(this + 27));
          CGPathAddLineToPoint(v7, 0, *(this + 28), *(this + 29));
          return v7;
        default:
LABEL_40:
          CGPathRelease(Mutable);
          v34 = SVGAtom::ToString(*(this + 74));
          SVGUtilities::error("Invalid shape primitive: %s", v35, v34);
          return 0;
      }

      CGPathAddEllipseInRect(Mutable, 0, *&v30);
      return v7;
    }

    if ((v8 - 44) < 2)
    {
      v9 = SVGShapeNode::pointList(this);
      if (v9)
      {
        v10 = v9;
        v11 = v9[1] - *v9;
        v12 = v11 >> 3;
        if ((v11 >> 3) >= 3)
        {
          v13 = malloc_type_malloc(v11, 0x100004000313F17uLL);
          memcpy(v13, *v10, v10[1] - *v10);
          CGPathMoveToPoint(v7, 0, *v13, v13[1]);
          v14 = 0;
          do
          {
            CGPathAddLineToPoint(v7, 0, v13[v14 + 2], v13[v14 + 3]);
            v15 = v14 + 4;
            v14 += 2;
          }

          while (v15 < v12);
          if (*(this + 74) == 44)
          {
            CGPathCloseSubpath(v7);
          }

          free(v13);
        }
      }

      return v7;
    }

    if (v8 == 49)
    {
      v16 = *(this + 30);
      if (v16 > 0.0)
      {
        v17 = *(this + 31);
        if (v17 > 0.0)
        {
          v18 = *(this + 32);
          v19 = *(this + 33);
          v20 = v18 <= 0.0;
          v21 = v18 > 0.0;
          if (v19 > 0.0)
          {
            v21 = 1;
            v20 = 1;
          }

          v22 = 0.0;
          if (v21)
          {
            v22 = *(this + 33);
          }

          if (v18 <= 0.0)
          {
            v23 = v22;
          }

          else
          {
            v23 = *(this + 32);
          }

          if (v20)
          {
            v24 = v22;
          }

          else
          {
            v24 = *(this + 32);
          }

          v25 = v16 * 0.5;
          if (v18 <= v16 * 0.5)
          {
            v25 = v23;
          }

          if (v19 <= v17 * 0.5)
          {
            v26 = v24;
          }

          else
          {
            v26 = v17 * 0.5;
          }

          v27 = *(this + 26);
          v28 = *(this + 27);
          CGPathAddRoundedRect(Mutable, 0, *(&v16 - 2), v25, v26);
        }
      }

      return v7;
    }

    goto LABEL_40;
  }

  v2 = SVGShapeNode::path(this);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 5);

  return CGSVGPathCreateCGPath(v4, v3);
}

_OWORD *SVGShapeNode::createSVGPath(SVGShapeNode *this)
{
  if (*(this + 74) == 42)
  {
    v2 = SVGShapeNode::path(this);
    if (v2)
    {
      SVGNode::transform(this, &v10);
      v3 = v11;
      v2[5] = v10;
      v2[6] = v3;
      v2[7] = v12;
      CFRetained::retain(v2);
    }
  }

  else
  {
    CGPath = SVGShapeNode::createCGPath(this);
    v5 = CGPath;
    if (CGPath)
    {
      v6 = CGSVGPathCreateWithCGPath(CGPath);
      v2 = CFRetained::getObject<SVGPath>(v6, v7);
      SVGNode::transform(this, &v10);
      v8 = v11;
      v2[5] = v10;
      v2[6] = v8;
      v2[7] = v12;
    }

    else
    {
      v2 = 0;
    }

    CGPathRelease(v5);
  }

  return v2;
}

double SVGShapeNode::boundingBox(SVGShapeNode *this, const char *a2)
{
  v2 = a2;
  v4 = MEMORY[0x1E695F058];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = *(this + 74);
  if (v9 > 43)
  {
    if ((v9 - 44) < 2)
    {
      v17 = SVGShapeNode::pointList(this);
      if (v17)
      {
        v18 = *v17;
        v19 = *(v17 + 8);
        if (*v17 == v19)
        {
          v6 = 3.40282347e38;
          v21 = 1.17549435e-38;
          v20 = 1.17549435e-38;
          v5 = 3.40282347e38;
        }

        else
        {
          v20 = 1.17549435e-38;
          v5 = 3.40282347e38;
          v6 = 3.40282347e38;
          v21 = 1.17549435e-38;
          do
          {
            v22 = *v18;
            v23 = v18[1];
            v18 += 2;
            v5 = fmin(v5, v22);
            v6 = fmin(v6, v23);
            v20 = fmax(v20, v22);
            v21 = fmax(v21, v23);
          }

          while (v18 != v19);
        }

        v7 = v20 - v5;
        v8 = v21 - v6;
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v9 == 10001)
    {
      goto LABEL_27;
    }

    if (v9 == 49)
    {
      v5 = *(this + 26);
      v6 = *(this + 27);
      v7 = *(this + 30);
      v8 = *(this + 31);
      goto LABEL_27;
    }
  }

  else if (v9 <= 31)
  {
    if (v9 == 3)
    {
      v24 = *(this + 36);
      v5 = *(this + 34) - v24;
      v6 = *(this + 35) - v24;
      v7 = v24 + v24;
      v8 = v24 + v24;
      goto LABEL_27;
    }

    if (v9 == 16)
    {
      v15 = *(this + 32);
      v16 = *(this + 33);
      v5 = *(this + 34) - v15;
      v6 = *(this + 35) - v16;
      v7 = v15 + v15;
      v8 = v16 + v16;
      goto LABEL_27;
    }
  }

  else
  {
    switch(v9)
    {
      case ' ':
        v32.origin.x = *(this + 26);
        v32.origin.y = *(this + 27);
        v32.size.width = *(this + 28) - v32.origin.x;
        v32.size.height = *(this + 29) - v32.origin.y;
        *&v11 = CGRectStandardize(v32);
        goto LABEL_22;
      case '$':
        goto LABEL_27;
      case '*':
        v10 = SVGShapeNode::path(this);
        if (v10)
        {
          v11 = SVGPath::boundingBox(v10);
LABEL_22:
          v5 = v11;
          v6 = v12;
          v7 = v13;
          v8 = v14;
          goto LABEL_27;
        }

LABEL_20:
        v5 = *v4;
        v6 = v4[1];
        v7 = v4[2];
        v8 = v4[3];
        goto LABEL_27;
    }
  }

  SVGUtilities::log("SVGShapeNode::boundingBox: unhandled type: %d", a2, *(this + 74));
LABEL_27:
  v25 = -SVGNode::calculateStrokeWidthForBoundingBox(this, v2);
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;

  *&result = CGRectInset(*&v26, v25, v25);
  return result;
}

uint64_t SVGShapeNode::print(SVGShapeNode *this)
{
  SVGNode::print(this);
  SVGUtilities::indent(v2);
  v3 = SVGAtom::ToString(*(this + 74));
  v5 = SVGUtilities::print("Shape: %s ", v4, v3);
  if (*(this + 74) == 10001)
  {
    v7 = *(this + 24);
    if (v7)
    {
      if ((*(v7 + 23) & 0x80000000) == 0 || *v7)
      {
        SVGUtilities::printIgnoringIndentation(" ", v6);
        v9 = *(this + 24);
        if (v9 && *(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        SVGUtilities::printIgnoringIndentation("%s", v8, v9);
        v5 = SVGUtilities::printIgnoringIndentation("", v10);
      }
    }
  }

  SVGUtilities::unindent(v5);

  return SVGUtilities::print("\n", v11);
}

BOOL SVGShapeNode::standardizeShape(SVGShapeNode *this, const SVGAttributeMap *a2)
{
  v2 = *(this + 74);
  if (v2 == 49)
  {
    v3.f64[0] = *(this + 32);
    v4 = *(this + 33);
    if (v4 > 0.0 && v3.f64[0] <= 0.0)
    {
      v3.f64[0] = *(this + 33);
    }

    if (v3.f64[0] > 0.0 && v4 <= 0.0)
    {
      v4 = v3.f64[0];
    }

    __asm { FMOV            V3.2D, #0.5 }

    v3.f64[1] = v4;
    *(this + 16) = vminnmq_f64(v3, vmulq_f64(*(this + 15), _Q3));
  }

  return v2 == 49;
}

double *CGSVGRootNodeSetSize(uint64_t a1, const char *a2, double a3, double a4)
{
  result = CFRetained::getObject<SVGRootNode>(a1, a2);
  if (result)
  {
    result[28] = a3;
    result[29] = a4;
  }

  return result;
}

void *CFRetained::getObject<SVGRootNode>(uint64_t a1, const char *a2)
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

double CGSVGRootNodeGetSize(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGRootNode>(a1, a2);
  v3 = v2 + 224;
  if (!v2)
  {
    v3 = MEMORY[0x1E695F060];
  }

  return *v3;
}

double *CGSVGRootNodeSetViewbox(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  result = CFRetained::getObject<SVGRootNode>(a1, a2);
  if (result)
  {
    result[30] = a3;
    result[31] = a4;
    result[32] = a5;
    result[33] = a6;
  }

  return result;
}

double CGSVGRootNodeGetViewbox(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGRootNode>(a1, a2);
  v3 = MEMORY[0x1E695F058];
  if (v2)
  {
    v3 = v2 + 240;
  }

  return *v3;
}

_DWORD *CGSVGRootNodeSetAspectRatio(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGRootNode>(a1, a2);
  if (result)
  {
    result[68] = v2;
  }

  return result;
}

unsigned int *CGSVGRootNodeGetAspectRatio(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGRootNode>(a1, a2);
  if (result)
  {
    return result[68];
  }

  return result;
}

_DWORD *CGSVGRootNodeSetAspectRatioMeetOrSlice(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGRootNode>(a1, a2);
  if (result)
  {
    result[69] = v2;
  }

  return result;
}

uint64_t CGSVGRootNodeGetAspectRatioMeetOrSlice(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGRootNode>(a1, a2);
  if (v2)
  {
    v3 = v2[69];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t SVGUtilities::shared(SVGUtilities *this)
{
  if (SVGUtilities::shared(void)::onceToken != -1)
  {
    SVGUtilities::shared();
  }

  return SVGUtilities::shared(void)::utilities;
}

void SVGUtilities::indent(SVGUtilities *this)
{
  if (SVGUtilities::shared(void)::onceToken != -1)
  {
    SVGUtilities::shared();
  }

  ++*SVGUtilities::shared(void)::utilities;
}

void SVGUtilities::unindent(SVGUtilities *this)
{
  if (SVGUtilities::shared(void)::onceToken != -1)
  {
    SVGUtilities::shared();
  }

  if (*SVGUtilities::shared(void)::utilities >= 1)
  {
    --*SVGUtilities::shared(void)::utilities;
  }
}

uint64_t SVGUtilities::print(SVGUtilities *this, const char *a2, ...)
{
  va_start(va, a2);
  if (SVGUtilities::shared(void)::onceToken != -1)
  {
    SVGUtilities::print();
  }

  printf("%.*s", 2 * *SVGUtilities::shared(void)::utilities, "                                      ");
  return vprintf(this, va);
}

void SVGUtilities::log(SVGUtilities *this, const char *a2, ...)
{
  va_start(va, a2);
  v4 = *MEMORY[0x1E69E9840];
  if (is_verbose_logging(void)::onceToken != -1)
  {
    SVGUtilities::log();
  }

  if (is_verbose_logging(void)::isVerbose == 1)
  {
    vsnprintf(__str, 0x400uLL, this, va);
    fprintf(*MEMORY[0x1E69E9848], "CoreSVG Warning: %s\n", __str);
  }
}

void SVGUtilities::error(SVGUtilities *this, const char *a2, ...)
{
  va_start(va, a2);
  v4 = *MEMORY[0x1E69E9840];
  if (is_verbose_logging(void)::onceToken != -1)
  {
    SVGUtilities::log();
  }

  if (is_verbose_logging(void)::isVerbose == 1)
  {
    vsnprintf(__str, 0x400uLL, this, va);
    fprintf(*MEMORY[0x1E69E9848], "CoreSVG Error: %s\n", __str);
  }
}

void SVGUtilities::CGPointListConvertToFloatList(__int128 **a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      v6 = v5;
      std::vector<double>::push_back[abi:ne200100](a2, &v6);
      std::vector<double>::push_back[abi:ne200100](a2, &v6 + 1);
    }

    while (v2 != v3);
  }
}

void SVGUtilities::CGPointListFromFloats(__int128 *a1, unint64_t a2, const void **a3)
{
  if (a2)
  {
    SVGUtilities::CGPointListFromFloats();
  }

  if (a2)
  {
    v6 = 0;
    v7 = a3[1];
    do
    {
      v8 = *a1;
      v9 = a3[2];
      if (v7 >= v9)
      {
        v10 = *a3;
        v11 = v7 - *a3;
        v12 = v11 >> 4;
        v13 = (v11 >> 4) + 1;
        if (v13 >> 60)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a3, v15);
        }

        *(16 * v12) = v8;
        v7 = (16 * v12 + 16);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v7;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7 = v8;
        v7 += 16;
      }

      a3[1] = v7;
      v6 += 2;
      ++a1;
    }

    while (v6 < a2);
  }
}

double SVGUtilities::CGSVGLengthToString@<D0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 == 1)
  {
    SVGParser::FormatString("%g%%", &v5, a1);
  }

  else
  {
    SVGParser::FormatString("%g", &v5, a1);
  }

  result = *&v5;
  *a3 = v5;
  a3[2] = v6;
  return result;
}

CFURLRef SVGUtilities::CreateCFURLFromString(uint64_t a1, const __CFURL *a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = (p_p + size);
  if (size)
  {
    v6 = size - 1;
    v7 = MEMORY[0x1E69E9830];
    while (1)
    {
      v8 = p_p->__r_.__value_.__s.__data_[0];
      if (v8 < 0 ? __maskrune(p_p->__r_.__value_.__s.__data_[0], 0x4000uLL) : *(v7 + 4 * v8 + 60) & 0x4000)
      {
        break;
      }

      p_p = (p_p + 1);
      --v6;
      if (p_p == v5)
      {
        goto LABEL_28;
      }
    }

    if (p_p == v5 || (&p_p->__r_.__value_.__l.__data_ + 1) == v5)
    {
      v5 = p_p;
    }

    else
    {
      v10 = 1;
      v5 = p_p;
      do
      {
        v11 = p_p->__r_.__value_.__s.__data_[v10];
        if (v11 < 0)
        {
          v12 = __maskrune(p_p->__r_.__value_.__s.__data_[v10], 0x4000uLL);
        }

        else
        {
          v12 = *(v7 + 4 * v11 + 60) & 0x4000;
        }

        if (!v12)
        {
          v5->__r_.__value_.__s.__data_[0] = p_p->__r_.__value_.__s.__data_[v10];
          v5 = (v5 + 1);
        }

        ++v10;
        --v6;
      }

      while (v6);
    }
  }

LABEL_28:
  v13 = &__p + HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v13 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&__p, v5 - v14, v13 - v5);
  v15 = *MEMORY[0x1E695E480];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x8000100u);
  if (v17)
  {
    v18 = CFURLCreateWithString(v15, v17, a2);
    CFRelease(v17);
  }

  else
  {
    v18 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v18;
}

void sub_1DF13F62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGUtilities::CGContextDrawSVGDefinitionNode(CGContext *a1, const char *a2, CFDictionaryRef theDict)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    v5 = CFDictionaryGetValue(theDict, @"removeAncestorTransforms") != *MEMORY[0x1E695E4C0];
  }

  else
  {
    v5 = 1;
  }

  v8[1] = @"removeAncestorTransforms";
  v9[0] = MEMORY[0x1E695E118];
  v8[0] = @"drawingDefinition";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  CGContextDrawSVGNodeWithOptions(a1, a2, v7);
}

void SVGUtilities::bitmapContextDebugInfo(SVGUtilities *this, CGContext *a2, const char *a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v32 = *MEMORY[0x1E69E9840];
  if (CGContextGetType() == 4)
  {
    memset(&v30, 0, sizeof(v30));
    CGContextGetCTM(&v30, this);
    Width = CGBitmapContextGetWidth(this);
    Height = CGBitmapContextGetHeight(this);
    printf("\n%s, context address: %p, width: %zu, height: %zu, Transforms: %g %g %g %g %g %g\n", a2, this, Width, Height, v30.a, v30.b, v30.c, v30.d, v30.tx, v30.ty);
    if (this)
    {
      if (v7)
      {
        BytesPerRow = CGBitmapContextGetBytesPerRow(this);
        v14 = CGBitmapContextGetHeight(this);
        v15 = v14 * BytesPerRow;
        v16 = malloc_type_calloc(v14 * BytesPerRow, 1uLL, 0x100004077774924uLL);
        Data = CGBitmapContextGetData(this);
        memcpy(v16, Data, v15);
        v18 = CGBitmapContextGetWidth(this);
        BitsPerComponent = CGBitmapContextGetBitsPerComponent(this);
        v20 = CGBitmapContextGetBytesPerRow(this);
        ColorSpace = CGBitmapContextGetColorSpace(this);
        BitmapInfo = CGBitmapContextGetBitmapInfo(this);
        v23 = CGBitmapContextCreate(v16, v18, v14, BitsPerComponent, v20, ColorSpace, BitmapInfo);
        CGContextCopyTopGState();
        CGContextReplaceTopGState();
        CGGStateRelease();
        if (CGContextGetType() == 4)
        {
          CGContextSaveGState(v23);
          CGContextSetRGBStrokeColor(v23, 0.5, 0.8, 0.8, 0.5);
          v25 = CGBitmapContextGetWidth(v23);
          CGBitmapContextGetHeight(v23);
          v26 = 0;
          do
          {
            CGContextMoveToPoint(v23, 0.0, v26);
            CGContextAddLineToPoint(v23, v25, v26);
            v26 += a5;
          }

          while (CGBitmapContextGetHeight(v23) >= v26);
          v27 = CGBitmapContextGetHeight(v23);
          CGBitmapContextGetWidth(v23);
          v28 = 0;
          do
          {
            CGContextMoveToPoint(v23, v28, 0.0);
            CGContextAddLineToPoint(v23, v28, v27);
            v28 += a4;
          }

          while (CGBitmapContextGetWidth(v23) >= v28);
          *lengths = xmmword_1DF145380;
          CGContextSetLineDash(v23, 0.0, lengths, 2uLL);
          CGContextStrokePath(v23);
          CGContextSetRGBFillColor(v23, 0.0, 0.0, 0.0, 0.7);
          CGContextAddArc(v23, (a4 * 0.1), (a5 * 0.1), (a4 * 0.1), 0.0, 6.28318531, 0);
          CGContextFillPath(v23);
          CGContextRestoreGState(v23);
        }

        else
        {
          SVGUtilities::log("drawGridLinesOnBitmapContext provides debug information for the bitmap contexts only", v24);
        }

        Image = CGBitmapContextCreateImage(v23);
        CGContextRelease(v23);
        free(v16);
      }

      else
      {
        Image = CGBitmapContextCreateImage(this);
      }

      snprintf(lengths, 0x400uLL, "*/%s.png", a2);
      if (Image)
      {
        CGImageWriteToFile();
        CGImageRelease(Image);
      }
    }
  }

  else
  {

    SVGUtilities::log("bitmapContextDebugInfo provides debug information for the bitmap contexts only", v10);
  }
}

void ___ZL18is_verbose_loggingv_block_invoke()
{
  if ((is_verbose_logging(void)::isVerbose & 1) == 0)
  {
    v0 = getenv("CORESVG_VERBOSE");
    is_verbose_logging(void)::isVerbose = v0 != 0;
    if (!v0)
    {
      fprintf(*MEMORY[0x1E69E9848], "CoreSVG has logged an error. Set environment variable %s to learn more.\n", "CORESVG_VERBOSE");
    }
  }
}

char *std::vector<double>::__insert_with_size[abi:ne200100]<double const*,double const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[-8 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 8;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v22);
    }

    v30 = 8 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 8;
    *v20 = v21;
    v20 += 8;
    v19 += 8;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[8 * a5];
    v27 = &v19[-8 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 8;
      *v28 = v29;
      v28 += 8;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t CGSVGNodeGetTypeID()
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

void sub_1DF13FEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGSVGNodeCreate(const __CFString *a1)
{
  if (a1)
  {
    SVGUtilities::StringWithCFString(a1, &__p);
    operator new();
  }

  return 0;
}

void sub_1DF13FF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = v15;
  MEMORY[0x1E12CE5D0](v16, 0x10B3C4060DEF9A3);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *CGSVGNodeCopy(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      return result[5];
    }
  }

  return result;
}

CFTypeRef CGSVGNodeRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGNodeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *CGSVGNodeIsRoot(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
  }

  return result;
}

CFStringRef CGSVGNodeCopyName(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E480];
    v5 = &v3[2];
    if (SHIBYTE(v3[2].data) < 0)
    {
      v5 = *v5;
    }

    return CFStringCreateWithCString(v4, v5, 0x8000100u);
  }

  return result;
}

CFTypeRef *CGSVGNodeSetAttributeMap(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (result)
  {
    v5 = result;
    result = CFRetained::getObject<SVGAttributeMap>(a2, v4);
    if (result)
    {

      return SVGNode::setAttributes(v5, result);
    }
  }

  return result;
}

void CGSVGNodeSetAttribute(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  if (v3)
  {
    v5 = v3;
    v6 = CFRetained::getObject<SVGAttribute>(a2, v4);
    if (v6)
    {

      SVGNode::setAttribute(v5, v6);
    }
  }
}

void CGSVGNodeSetCStringIdentifier(uint64_t a1, char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  if (a2 && v3)
  {

    SVGNode::setIdentifier(v3, a2);
  }
}

void CGSVGNodeSetStringIdentifier(uint64_t a1, const __CFString *this)
{
  if (this)
  {
    SVGUtilities::StringWithCFString(this, __p);
    v4 = CFRetained::getObject<SVGNode>(a1, v3);
    if (v4)
    {
      SVGNode::setIdentifier(v4, __p);
    }

    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DF1402DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef CGSVGNodeCopyStringIdentifier(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGNode>(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = SVGNode::identifier(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *MEMORY[0x1E695E4A8];

  return CFStringCreateWithCString(v5, v4, 0x8000100u);
}

void CGSVGNodeAddChild(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  v5 = CFRetained::getObject<SVGNode>(a2, v4);
  if (v3 && v5)
  {

    SVGNode::addChild(v3, v5);
  }
}

void CGSVGNodeRemoveChildAtIndex(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  if (v3)
  {

    SVGNode::removeChildAtIndex(v3, a2);
  }
}

double CGSVGNodeGetBoundingBoxWithOptions(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFRetained::getObject<SVGNode>(a1, a2);
  if (!v5)
  {
    return *MEMORY[0x1E695F058];
  }

  v7 = v5;
  if (a2)
  {
    v8 = CFRetained::getObject<SVGNode>(a2, v6);
    v5 = v7;
  }

  else
  {
    v8 = 0;
  }

  return SVGNode::getBoundingBox(v5, v8, a3);
}

void CGSVGNodeSetCStringComment(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  if (a2 && v3)
  {

    SVGNode::setComment(v3, a2);
  }
}

void CGSVGNodeSetStringComment(uint64_t a1, const __CFString *this)
{
  if (this)
  {
    SVGUtilities::StringWithCFString(this, __p);
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    CGSVGNodeSetCStringComment(a1, v3);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DF140518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CGSVGNodeSetCStringText(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  if (a2 && v3)
  {

    SVGNode::setText(v3, a2);
  }
}

void *CGSVGNodeSetStringText(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGNode>(a1, a2);
  if (a2)
  {
    if (result)
    {
      SVGUtilities::StringWithCFString(a2, &__p);
      SVGNode::setText();
    }
  }

  return result;
}

void sub_1DF1405E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef CGSVGNodeCopyText(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGNode>(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[24];
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

  v4 = *MEMORY[0x1E695E4A8];

  return CFStringCreateWithCString(v4, v3, 0x8000100u);
}

CGPath *CGSVGNodeCreateCompoundCGPath(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGNode>(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = v3;
  do
  {
    v6 = v5;
    v5 = v5[6];
  }

  while (v5);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x5802000000;
  v31[3] = __Block_byref_object_copy__3;
  v7 = MEMORY[0x1E695EFD0];
  if (a2)
  {
    v7 = a2;
  }

  v8 = *(v7 + 1);
  v32 = *v7;
  v31[4] = __Block_byref_object_dispose__3;
  v33 = v8;
  v34 = *(v7 + 2);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4002000000;
  v27[3] = __Block_byref_object_copy__1;
  v27[4] = __Block_byref_object_dispose__2;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__4;
  __p = 0;
  v25 = 0;
  v26 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __CGSVGNodeCreateCompoundCGPath_block_invoke;
  v16[3] = &unk_1E86AADE0;
  v16[4] = v27;
  v16[5] = v31;
  v16[7] = &v19;
  v16[8] = v4;
  v16[6] = v17;
  SVGNode::enumerate(v6, v16);
  if (v20[6] == v20[5])
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CGPathCreateMutable();
    v11 = v20[5];
    v12 = v20[6];
    while (v11 != v12)
    {
      v13 = *(v11 + 48);
      CGPath = CGSVGPathCreateCGPath(*(v13 + 40), v9);
      CFRetained::release(v13);
      CGPathAddPath(Mutable, v11, CGPath);
      CGPathRelease(CGPath);
      v11 += 56;
    }
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v27, 8);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  _Block_object_dispose(v31, 8);
  return Mutable;
}

void sub_1DF1408C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a30, 8);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__1(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__3(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __CGSVGNodeCreateCompoundCGPath_block_invoke(void *a1, void *a2, int a3)
{
  if (a3)
  {
    if (a1[8] == a2)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    v5 = *(*(a1[4] + 8) + 48);
    if (v5 != *(*(a1[4] + 8) + 40))
    {
      v6 = *(a1[5] + 8);
      v7 = *(v5 - 48);
      v8 = *(v5 - 32);
      *(v6 + 72) = *(v5 - 16);
      *(v6 + 56) = v8;
      *(v6 + 40) = v7;
      *(*(a1[4] + 8) + 48) -= 48;
    }
  }

  else
  {
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&v59.a = *MEMORY[0x1E695EFD0];
    *&v59.c = v9;
    *&v59.tx = *(MEMORY[0x1E695EFD0] + 32);
    v10 = a2[7];
    if (v10)
    {
      v11 = SVGAttributeMap::attribute(v10, 0x3Fu);
      if (v11)
      {
        SVGAttribute::transformValue(v11, &v59);
      }
    }

    v12 = *(a1[4] + 8);
    v13 = *(a1[5] + 8);
    v14 = v12[6];
    v15 = v12[7];
    if (v14 >= v15)
    {
      v19 = v12[5];
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v19) >> 4);
      v21 = v20 + 1;
      if (v20 + 1 > 0x555555555555555)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 4);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x2AAAAAAAAAAAAAALL)
      {
        v23 = 0x555555555555555;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGAffineTransform>>((v12 + 5), v23);
      }

      v24 = 48 * v20;
      v25 = *(v13 + 40);
      v26 = *(v13 + 72);
      *(v24 + 16) = *(v13 + 56);
      *(v24 + 32) = v26;
      *v24 = v25;
      v18 = 48 * v20 + 48;
      v27 = v12[5];
      v28 = v12[6] - v27;
      v29 = v24 - v28;
      memcpy((v24 - v28), v27, v28);
      v30 = v12[5];
      v12[5] = v29;
      v12[6] = v18;
      v12[7] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      v16 = *(v13 + 40);
      v17 = *(v13 + 72);
      v14[1] = *(v13 + 56);
      v14[2] = v17;
      *v14 = v16;
      v18 = (v14 + 3);
    }

    v12[6] = v18;
    t1 = v59;
    v31 = *(a1[5] + 8);
    v32 = *(v31 + 72);
    v33 = *(v31 + 56);
    *&v56.a = *(v31 + 40);
    *&v56.c = v33;
    *&v56.tx = v32;
    CGAffineTransformConcat(&v58, &t1, &v56);
    v35 = *&v58.c;
    v34 = *&v58.tx;
    *(v31 + 40) = *&v58.a;
    *(v31 + 56) = v35;
    *(v31 + 72) = v34;
    if (a1[8] == a2)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    if (*(*(a1[6] + 8) + 24) == 1)
    {
      if (v36)
      {
        SVGPath = SVGShapeNode::createSVGPath(v36);
        if (SVGPath)
        {
          v38 = *(a1[7] + 8);
          v39 = *(a1[5] + 8);
          v40 = *(v39 + 56);
          *&v58.a = *(v39 + 40);
          *&v58.c = v40;
          *&v58.tx = *(v39 + 72);
          v41 = v38[6];
          v42 = v38[7];
          if (v41 >= v42)
          {
            v46 = v38[5];
            v47 = 0x6DB6DB6DB6DB6DB7 * ((v41 - v46) >> 3);
            v48 = v47 + 1;
            if ((v47 + 1) > 0x492492492492492)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v49 = 0x6DB6DB6DB6DB6DB7 * ((v42 - v46) >> 3);
            if (2 * v49 > v48)
            {
              v48 = 2 * v49;
            }

            if (v49 >= 0x249249249249249)
            {
              v50 = 0x492492492492492;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CGAffineTransform,SVGPath *>>>((v38 + 5), v50);
            }

            v51 = 56 * v47;
            *v51 = v58;
            *(v51 + 48) = SVGPath;
            v45 = 56 * v47 + 56;
            v52 = v38[5];
            v53 = v38[6] - v52;
            v54 = 56 * v47 - v53;
            memcpy((v51 - v53), v52, v53);
            v55 = v38[5];
            v38[5] = v54;
            v38[6] = v45;
            v38[7] = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            v43 = *(v39 + 40);
            v44 = *(v39 + 72);
            *(v41 + 16) = *(v39 + 56);
            *(v41 + 32) = v44;
            *v41 = v43;
            *(v41 + 48) = SVGPath;
            v45 = v41 + 56;
          }

          v38[6] = v45;
        }
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGAffineTransform>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CGAffineTransform,SVGPath *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CGSVGAttributeGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF140EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGSVGAttributeCreateWithCString(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  return 0;
}

uint64_t CGSVGAttributeCreateWithString(int a1, const __CFString *this)
{
  if (this)
  {
    SVGUtilities::StringWithCFString(this, &__p);
    operator new();
  }

  return 0;
}

void sub_1DF140FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1E12CE5D0](v15, 0x10B3C405B4D0908);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *CGSVGAttributeCreateWithFilter(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGFilter>(a2, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t CGSVGAttributeCreateWithFloats(int a1, char *__src, uint64_t a3)
{
  if (__src)
  {
    memset(__p, 0, sizeof(__p));
    SVGUtilities::CGFloatListFromFloats(__src, a3, __p);
    operator new();
  }

  return 0;
}

void sub_1DF141214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1E12CE5D0](v11, 0x10B3C405B4D0908);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *CGSVGAttributeCreateWithMask(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGMask>(a2, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *CGSVGAttributeCreateWithGradient(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGGradient>(a2, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *CGSVGAttributeCreateWithClipPath(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGClipPath>(a2, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *CGSVGAttributeCreateWithPaint(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPaint>(a2, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *CGSVGAttributeCreateWithPath(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGPath>(a2, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

CFTypeRef CGSVGAttributeRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGAttributeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unsigned int *CGSVGAttributeGetType(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    return result[20];
  }

  return result;
}

unsigned int *CGSVGAttributeGetName(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    return result[12];
  }

  return result;
}

uint64_t CGSVGAttributeGetFilter(uint64_t a1, char *a2)
{
  v3 = CFRetained::getObject<SVGAttribute>(a1, a2);
  v5 = 0;
  LODWORD(result) = SVGAttribute::filterValue(v3, &v5);
  if (v5)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    *a2 = *(v5 + 5);
  }

  return result;
}

void *CGSVGAttributeGetLength(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {

    return SVGAttribute::lengthValue(result, a2);
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetMask(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v4 = 0;
    if (SVGAttribute::maskValue(result, &v4) && v4)
    {
      *a2 = *(v4 + 5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetRect(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {

    return SVGAttribute::rectValue(result, a2);
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetPaint(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v4 = 0;
    if (SVGAttribute::paintValue(result, &v4) && v4)
    {
      *a2 = *(v4 + 5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetClipPath(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v4 = 0;
    if (SVGAttribute::clipPathValue(result, &v4) && v4)
    {
      *a2 = *(v4 + 5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetPoint(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {

    return SVGAttribute::pointValue(result, a2);
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetPath(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v4 = 0;
    if (SVGAttribute::pathValue(result, &v4) && v4)
    {
      *a2 = *(v4 + 5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGSVGAttributeMapGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttributeMap::kSVGAttributeMapClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF141B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SVGAttributeMap *CGSVGAttributeMapCopy(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttributeMap>(a1, a2);
  if (result)
  {
    SVGAttributeMap::createShallowCopy(result);
  }

  return result;
}

CFTypeRef CGSVGAttributeMapRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGAttributeMapRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void CGSVGAttributeMapSetAttribute(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGAttributeMap>(a1, a2);
  if (v3)
  {
    v5 = v3;
    v6 = CFRetained::getObject<SVGAttribute>(a2, v4);
    if (v6)
    {

      SVGAttributeMap::setAttribute(v5, v6, 0);
    }
  }
}

void CGSVGAttributeMapRemoveAttribute(uint64_t a1, const char *a2)
{
  v2 = a2;
  v3 = CFRetained::getObject<SVGAttributeMap>(a1, a2);
  if (v3)
  {

    SVGAttributeMap::removeAttribute(v3, v2);
  }
}

double SVGWriter::SVGWriter(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

BOOL SVGWriter::write(SVGWriter *this, SVGRootNode *a2, const char *cStr, const SVGStyle *a4)
{
  if (!a2 || !cStr)
  {
    return 0;
  }

  *(this + 1) = a2;
  *(this + 2) = a4;
  v5 = *MEMORY[0x1E695E480];
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (v6)
  {
    v7 = v6;
    if (!CFStringHasSuffix(v6, @"file://"))
    {
      v8 = CFStringCreateWithFormat(v5, 0, @"file://%@", v7);
      CFRelease(v7);
      v7 = v8;
    }

    v9 = CFURLCreateWithString(v5, v7, 0);
    if (v9)
    {
      v10 = v9;
      *(this + 3) = CFWriteStreamCreateWithFile(v5, v9);
      CFRelease(v10);
    }

    CFRelease(v7);
  }

  v11 = SVGWriter::writeStream(this);
  SVGWriter::cleanupStream(this);
  return v11;
}

BOOL SVGWriter::writeStream(SVGWriter *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    CFWriteStreamOpen(*(this + 3));
    v3 = xmlBufferCreate();
    *(this + 5) = v3;
    v4 = xmlNewTextWriterMemory(v3, 0);
    *(this + 4) = v4;
    if (!*this || (*(*this + 1) & 1) == 0)
    {
      xmlTextWriterSetIndent(v4, 2);
      xmlTextWriterSetIndentString(*(this + 4), " ");
    }

    SVGWriter::writeComment(this, *(this + 1));
    xmlTextWriterStartDocument(*(this + 4), 0, "UTF-8", 0);
    if (!*this || (*(*this + 2) & 1) == 0)
    {
      SVGParser::FormatString("Generator: Apple Native CoreSVG %g", __p, 0x4075500000000000);
      v5 = v27 >= 0 ? __p : __p[0];
      xmlTextWriterWriteComment(*(this + 4), v5);
      xmlTextWriterStartDTD(*(this + 4), "svg", "-//W3C//DTD SVG 1.1//EN", "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd");
      xmlTextWriterEndDTD(*(this + 4));
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = *(this + 4);
    v7 = SVGAtom::ToString(0x3Du);
    xmlTextWriterStartElement(v6, v7);
    v8 = SVGAtom::ToString(0x40u);
    xmlTextWriterWriteAttribute(*(this + 4), v8, "1.1");
    if (!*this || (*(*this + 2) & 1) == 0)
    {
      xmlTextWriterWriteAttribute(*(this + 4), "xmlns", "http://www.w3.org/2000/svg");
      xmlTextWriterWriteAttribute(*(this + 4), "xmlns:xlink", "http://www.w3.org/1999/xlink");
    }

    v9 = *(this + 1);
    v11 = *(v9 + 224);
    v10 = *(v9 + 232);
    if (v11 == 0.0 || v10 == 0.0)
    {
      (*(*v9 + 32))(v9, 0);
      v13 = v14;
      v12 = v15;
      v9 = *(this + 1);
    }

    else
    {
      v12 = *(v9 + 232);
      v13 = *(v9 + 224);
    }

    v16 = 0.0;
    if (CGRectIsEmpty(*(v9 + 240)))
    {
      v17 = 0.0;
      v18 = v13;
      v19 = v12;
    }

    else
    {
      v20 = *(this + 1);
      v16 = v20[30];
      v17 = v20[31];
      v18 = v20[32];
      v19 = v20[33];
      if (v16 != 0.0 || v17 != 0.0 || v18 != v13 || v19 != v12)
      {
        if (v11 != 0.0)
        {
          SVGWriter::writeAttribute(this, 0x42u, v13);
        }

        if (v10 != 0.0)
        {
          SVGWriter::writeAttribute(this, 0x1Eu, v12);
        }
      }
    }

    SVGWriter::writeAttribute(this, 0x41u, v16, v17, v18, v19);
    SVGWriter::writeDefinitions(this);
    v21 = *(this + 1);
    v22 = *(v21 + 88);
    v23 = *(v21 + 96);
    while (v22 != v23)
    {
      v24 = *v22++;
      SVGWriter::writeNode(this, v24);
    }

    xmlTextWriterEndElement(*(this + 4));
    xmlTextWriterEndDocument(*(this + 4));
    CFWriteStreamWrite(*(this + 3), **(this + 5), *(*(this + 5) + 8));
  }

  return v1 != 0;
}

void sub_1DF1420CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGWriter::cleanupStream(SVGWriter *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFWriteStreamClose(v2);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  xmlFreeTextWriter(*(this + 4));
  *(this + 4) = 0;
  xmlBufferFree(*(this + 5));
  *(this + 5) = 0;
}

BOOL SVGWriter::write(SVGWriter *this, SVGRootNode *a2, __CFData *a3, const SVGStyle *a4)
{
  v4 = 0;
  if (a2 && a3)
  {
    *(this + 1) = a2;
    v8 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
    *(this + 2) = a4;
    *(this + 3) = v8;
    v4 = SVGWriter::writeStream(this);
    if (v4)
    {
      v9 = CFWriteStreamCopyProperty(*(this + 3), *MEMORY[0x1E695E900]);
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v9);
      CFDataAppendBytes(a3, BytePtr, Length);
      CFRelease(v9);
    }

    SVGWriter::cleanupStream(this);
  }

  return v4;
}

BOOL SVGWriter::write(SVGWriter *this, SVGRootNode *a2, CFURLRef fileURL, const SVGStyle *a4)
{
  if (!a2 || !fileURL)
  {
    return 0;
  }

  *(this + 1) = a2;
  v6 = CFWriteStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  *(this + 2) = a4;
  *(this + 3) = v6;
  v7 = SVGWriter::writeStream(this);
  SVGWriter::cleanupStream(this);
  return v7;
}

uint64_t SVGWriter::writeComment(uint64_t this, const SVGNode *a2)
{
  v2 = *(a2 + 23);
  if (v2)
  {
    if ((v2[23] & 0x80000000) == 0 || (v2 = *v2) != 0)
    {
      if (*v2)
      {
        return xmlTextWriterWriteComment(*(this + 32), v2);
      }
    }
  }

  return this;
}

uint64_t SVGWriter::writeBeginElement(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = SVGAtom::ToString(a2);

  return xmlTextWriterStartElement(v2, v3);
}

uint64_t SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, const xmlChar *a3)
{
  v5 = SVGAtom::ToString(a2);
  v6 = *(a1 + 32);

  return xmlTextWriterWriteAttribute(v6, v5, a3);
}

void SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, double a3)
{
  SVGParser::FormatString("%g", __p, *&a3);
  v5 = v10;
  v6 = __p[0];
  v7 = SVGAtom::ToString(a2);
  if (v5 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = v6;
  }

  xmlTextWriterWriteAttribute(*(a1 + 32), v7, v8);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DF1423A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*&a3);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  Width = CGRectGetWidth(v23);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  Height = CGRectGetHeight(v24);
  SVGParser::FormatString("%g %g %g %g", __p, *&MinX, *&MinY, *&Width, *&Height);
  v16 = v21;
  v17 = __p[0];
  v18 = SVGAtom::ToString(a2);
  if (v16 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = v17;
  }

  xmlTextWriterWriteAttribute(*(a1 + 32), v18, v19);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DF1424CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SVGWriter::writeDefinitions(void *this)
{
  v1 = this;
  if (*(this[1] + 176) || this[2])
  {
    v2 = this[4];
    v3 = SVGAtom::ToString(0xEu);
    xmlTextWriterStartElement(v2, v3);
    SVGWriter::writeGradients(v1);
    SVGWriter::writeImage(v1);
    SVGWriter::writeStyle(v1);
    SVGWriter::writePatterns(v1);
    SVGWriter::writeMask(v1);
    v4 = *(v1 + 32);

    return xmlTextWriterEndElement(v4);
  }

  return this;
}

uint64_t SVGWriter::writeNode(xmlTextWriterPtr *this, SVGAttributeMap **a2)
{
  SVGWriter::writeComment(this, a2);
  if (!a2)
  {
    __cxa_bad_typeid();
  }

  {
    SVGWriter::writeShapeNode(this, a2);
  }

  else
  {
    v7 = (a2 + 8);
    if (*(a2 + 87) < 0)
    {
      v7 = *v7;
    }

    v8 = SVGAtom::ToName(v7, v4);
    v9 = this[4];
    v10 = SVGAtom::ToString(v8);
    xmlTextWriterStartElement(v9, v10);
    SVGWriter::writeAttributeMap(this, a2[7]);
    v11 = a2[24];
    if (v11)
    {
      if ((*(v11 + 23) & 0x80000000) == 0 || (v11 = *v11) != 0)
      {
        if (*v11)
        {
          xmlTextWriterWriteString(this[4], v11);
        }
      }
    }

    v13 = a2[11];
    v12 = a2[12];
    while (v13 != v12)
    {
      v14 = *v13++;
      SVGWriter::writeNode(this, v14);
    }
  }

  v5 = this[4];

  return xmlTextWriterEndElement(v5);
}

uint64_t SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = SVGAtom::ToString(a3);
  v6 = SVGAtom::ToString(a2);
  v7 = *(a1 + 32);

  return xmlTextWriterWriteAttribute(v7, v6, v5);
}

void SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (!a5 || COERCE_DOUBLE(a3 & 0x7FFFFFFFFFFFFFFFLL) > 0.00000011920929)
  {
    SVGUtilities::CGSVGLengthToString(a3, a4, __p);
    v7 = v12;
    v8 = __p[0];
    v9 = SVGAtom::ToString(a2);
    if (v7 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = v8;
    }

    xmlTextWriterWriteAttribute(*(a1 + 32), v9, v10);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DF142774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  if (!CGSVGLengthEqualToLength(a3, a4, a5, a6))
  {
    SVGUtilities::CGSVGLengthToString(a3, a4, __p);
    v10 = v15;
    v11 = __p[0];
    v12 = SVGAtom::ToString(a2);
    if (v10 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = v11;
    }

    xmlTextWriterWriteAttribute(*(a1 + 32), v12, v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DF142834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGWriter::writeAttribute(uint64_t a1, unsigned int a2, char *__s1, char *__s2)
{
  result = strcmp(__s1, __s2);
  if (result)
  {
    v8 = SVGAtom::ToString(a2);
    v9 = *(a1 + 32);

    return xmlTextWriterWriteAttribute(v9, v8, __s1);
  }

  return result;
}

void SVGWriter::writeAttributeMap(xmlTextWriterPtr *this, SVGAttributeMap *a2)
{
  if (a2)
  {
    if (*this)
    {
      v3 = **this;
    }

    else
    {
      v3 = 0;
    }

    SVGAttributeMap::sorted(a2, v3 & 1, v8);
    v4 = v8[0];
    v5 = v8[1];
    while (v4 != v5)
    {
      v6 = v4;
      if (*(v4 + 23) < 0)
      {
        v6 = *v4;
      }

      v7 = (v4 + 24);
      if (*(v4 + 47) < 0)
      {
        v7 = *v7;
      }

      xmlTextWriterWriteAttribute(this[4], v6, v7);
      v4 += 48;
    }

    v9 = v8;
    std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](&v9);
  }
}

void sub_1DF14296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
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

void SVGWriter::writeShapeNode(SVGWriter *this, const SVGShapeNode *a2)
{
  v4 = (a2 + 64);
  if (*(a2 + 87) < 0)
  {
    v4 = *v4;
  }

  v5 = SVGAtom::ToName(v4, a2);
  if (!*this || **this != 1 || *(a2 + 74) != 10001)
  {
    v7 = *(this + 4);
    v8 = SVGAtom::ToString(v5);
    xmlTextWriterStartElement(v7, v8);
    operator new();
  }

  SVGUtilities::error("Text shapes are not allowed in strict mode.", v6);
}

xmlTextWriterPtr *SVGWriter::writeImage(xmlTextWriterPtr *this)
{
  v1 = this[1];
  v2 = *(v1 + 20);
  v3 = (v1 + 168);
  if (v2 != (v1 + 168))
  {
    v4 = this;
    do
    {
      this = v2[7];
      if (this)
      {
        if (this)
        {
          this = SVGWriter::writeNode(v4, this);
        }
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

  return this;
}

uint64_t SVGWriter::writeGradients(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(v1 + 160);
  v3 = (v1 + 168);
  if (v2 != (v1 + 168))
  {
    v4 = this;
    v44 = (v1 + 168);
    do
    {
      this = v2[7];
      if (this)
      {
        if (this)
        {
          v5 = this;
          if (*(this + 208))
          {
            v6 = 48;
          }

          else
          {
            v6 = 33;
          }

          v7 = *(v4 + 32);
          v8 = SVGAtom::ToString(v6);
          xmlTextWriterStartElement(v7, v8);
          v9 = SVGNode::identifier(v5);
          v10 = SVGAtom::ToString(0x1Fu);
          xmlTextWriterWriteAttribute(*(v4 + 32), v10, v9);
          if (*(v5 + 208))
          {
            v11 = *(v5 + 304);
            v12 = *(v5 + 312);
            v13 = *(v5 + 320);
            v14 = *(v5 + 328);
            v45 = *(v5 + 344);
            v46 = *(v5 + 336);
            v47 = *(v5 + 360);
            v48 = *(v5 + 352);
            v49 = *(v5 + 376);
            v50 = *(v5 + 368);
            CGSVGLengthMakeWithType();
            v16 = v15;
            v18 = v17;
            SVGWriter::writeAttribute(v4, 9u, v11, v12, v15, v17);
            SVGWriter::writeAttribute(v4, 0xAu, v13, v14, v16, v18);
            SVGWriter::writeAttribute(v4, 0x1Au, v46, v45, v11, v12);
            SVGWriter::writeAttribute(v4, 0x1Bu, v48, v47, v13, v14);
            SVGWriter::writeAttribute(v4, 0x2Fu, v50, v49, v16, v18);
          }

          else
          {
            v19 = *(v5 + 256);
            v20 = *(v5 + 264);
            v21 = *(v5 + 272);
            v22 = *(v5 + 280);
            v23 = *(v5 + 288);
            v24 = *(v5 + 296);
            SVGWriter::writeAttribute(v4, 0x44u, *(v5 + 240), *(v5 + 248), 1);
            SVGWriter::writeAttribute(v4, 0x47u, v19, v20, 1);
            SVGWriter::writeAttribute(v4, 0x45u, v21, v22, 1);
            SVGWriter::writeAttribute(v4, 0x48u, v23, v24, 1);
          }

          v25 = SVGAttributeMap::attribute(*(v5 + 56), 0x1Cu);
          if (v25)
          {
            v26 = SVGAttribute::stringValue(v25);
            if (*(v26 + 23) >= 0)
            {
              v27 = v26;
            }

            else
            {
              v27 = *v26;
            }

            v28 = SVGAtom::ToString(0x1Cu);
            xmlTextWriterWriteAttribute(*(v4 + 32), v28, v27);
          }

          v29 = SVGAttributeMap::attribute(*(v5 + 56), 0x4Eu);
          if (v29)
          {
            v30 = SVGAttribute::stringValue(v29);
            if (*(v30 + 23) >= 0)
            {
              v31 = v30;
            }

            else
            {
              v31 = *v30;
            }

            v32 = SVGAtom::ToString(0x4Eu);
            xmlTextWriterWriteAttribute(*(v4 + 32), v32, v31);
          }

          v33 = *(v5 + 216);
          v34 = *(v5 + 224);
          while (v33 != v34)
          {
            v35 = *v33;
            v36 = *(v4 + 32);
            v37 = SVGAtom::ToString(0x37u);
            xmlTextWriterStartElement(v36, v37);
            SVGWriter::writeAttribute(v4, 0x28u, *(v35 + 96), *(v35 + 104), 0);
            SVGColor::SVGColor(v51, v35 + 48);
            SVGColor::GetStringForColor(v51, __p);
            LODWORD(v36) = v53;
            v38 = __p[0];
            v39 = SVGAtom::ToString(0x38u);
            if (v36 >= 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = v38;
            }

            xmlTextWriterWriteAttribute(*(v4 + 32), v39, v40);
            SVGWriter::writeAttribute(v4, 0x53u, *(v35 + 88));
            xmlTextWriterEndElement(*(v4 + 32));
            if (v53 < 0)
            {
              operator delete(__p[0]);
            }

            ++v33;
          }

          this = xmlTextWriterEndElement(*(v4 + 32));
          v3 = v44;
        }
      }

      v41 = v2[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v2[2];
          v43 = *v42 == v2;
          v2 = v42;
        }

        while (!v43);
      }

      v2 = v42;
    }

    while (v42 != v3);
  }

  return this;
}

void sub_1DF143494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xmlTextWriterPtr *SVGWriter::writePatterns(xmlTextWriterPtr *this)
{
  v1 = this[1];
  v2 = *(v1 + 20);
  v3 = (v1 + 168);
  if (v2 != (v1 + 168))
  {
    v4 = this;
    do
    {
      this = v2[7];
      if (this)
      {
        if (this)
        {
          this = SVGWriter::writeNode(v4, this);
        }
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

  return this;
}

void SVGWriter::writeStyle(SVGWriter *this)
{
  v1 = *(this + 2);
  if (v1 && *(v1 + 16))
  {
    v3 = *(this + 4);
    v4 = SVGAtom::ToString(0x3Cu);
    xmlTextWriterStartElement(v3, v4);
    std::map<std::string,SVGAttributeMap *,CaseInsensitiveStringLess,std::allocator<std::pair<std::string const,SVGAttributeMap *>>>::map[abi:ne200100](&v31, *(this + 2));
    memset(&v30, 0, sizeof(v30));
    v5 = v31;
    if (v31 == v32)
    {
      v22 = &v30;
    }

    else
    {
      do
      {
        if (*(v5 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, v5[4], v5[5]);
        }

        else
        {
          v28 = *(v5 + 4);
        }

        v6 = v5[7];
        v29 = v6;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
          v6 = v29;
        }

        else
        {
          v27 = v28;
        }

        v7 = &v27;
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v7 = v27.__r_.__value_.__r.__words[0];
        }

        SVGParser::FormatString("%s{", &v26, v7);
        SVGAttributeMap::sorted(v6, 0, v25);
        v8 = v25[0];
        v9 = v25[1];
        while (v8 != v9)
        {
          v10 = v8;
          if (*(v8 + 23) < 0)
          {
            v10 = *v8;
          }

          v11 = v8 + 3;
          if (*(v8 + 47) < 0)
          {
            v11 = *v11;
          }

          SVGParser::FormatString("%s:%s;", __p, v10, v11);
          if ((v24 & 0x80u) == 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          if ((v24 & 0x80u) == 0)
          {
            v13 = v24;
          }

          else
          {
            v13 = __p[1];
          }

          v14 = std::string::append(&v26, v12, v13);
          std::string::operator=(&v26, v14);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }

          v8 += 6;
        }

        v15 = std::string::append(&v26, "}");
        std::string::operator=(&v26, v15);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v26;
        }

        else
        {
          v16 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v26.__r_.__value_.__l.__size_;
        }

        v18 = std::string::append(&v30, v16, size);
        std::string::operator=(&v30, v18);
        __p[0] = v25;
        std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](__p);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v19 = v5[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v5[2];
            v21 = *v20 == v5;
            v5 = v20;
          }

          while (!v21);
        }

        v5 = v20;
      }

      while (v20 != v32);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v30;
      }

      else
      {
        v22 = v30.__r_.__value_.__r.__words[0];
      }
    }

    xmlTextWriterWriteString(*(this + 4), v22);
    xmlTextWriterEndElement(*(this + 4));
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(&v31, v32[0]);
  }
}

void sub_1DF143860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 - 113) < 0)
  {
    operator delete(*(v39 - 136));
  }

  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(v39 - 112, *(v39 - 104));
  _Unwind_Resume(a1);
}

xmlTextWriterPtr *SVGWriter::writeMask(xmlTextWriterPtr *this)
{
  v1 = this[1];
  v2 = *(v1 + 20);
  v3 = (v1 + 168);
  if (v2 != (v1 + 168))
  {
    v4 = this;
    do
    {
      this = v2[7];
      if (this)
      {
        if (this)
        {
          this = SVGWriter::writeNode(v4, this);
        }
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

  return this;
}

uint64_t CGSVGClipPathGetTypeID()
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

void sub_1DF143ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGClipPathRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGClipPathRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

SVGClipPath *CGSVGClipPathGetCompositePath(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGClipPath>(a1, a2);
  if (result)
  {

    return SVGClipPath::getCGClippingPath(result, 0);
  }

  return result;
}

CGMutablePathRef CGSVGClipPathGetCompositePathRelativeToNode(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGClipPath>(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  v6 = CFRetained::getObject<SVGNode>(a2, v4);
  if (!v6)
  {
    return 0;
  }

  return SVGClipPath::getCGClippingPath(v5, v6);
}

void *CGSVGClipPathGetPath(uint64_t a1, const char *a2)
{
  ChildAtIndex = CGSVGNodeGetChildAtIndex(a1, a2);
  result = CFRetained::getObject<SVGNode>(ChildAtIndex, v3);
  if (result)
  {
    if (result)
    {
      result = SVGShapeNode::createSVGPath(result);
      if (result)
      {
        return result[5];
      }
    }
  }

  return result;
}

void CreateCFDataWithContentsOfURL()
{
  if (__cxa_guard_acquire(&qword_1ECDFEEC8))
  {
    _MergedGlobals = *MEMORY[0x1E69E9AC8];

    __cxa_guard_release(&qword_1ECDFEEC8);
  }
}

CGRect CGContextGetPathBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB95B0](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x1EEDBAC40](path);
  result.y = v2;
  result.x = v1;
  return result;
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

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x1EEDBF300](line, context);
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