void *CFRetained::getObject<SVGPath>(uint64_t a1, const char *a2)
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

uint64_t SVGPath::copyCachedCGPath(SVGPath *this)
{
  os_unfair_lock_lock(this + 32);
  v2 = *(this + 9);
  if (v2)
  {
    CFRetain(*(this + 9));
  }

  os_unfair_lock_unlock(this + 32);
  return v2;
}

void *CFRetained::getObject<SVGPathCommand>(uint64_t a1, const char *a2)
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

double CGSVGPathCommandGetFloatAtIndex(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGPathCommand>(a1, a2);
  result = 0.0;
  if (v3)
  {
    v5 = v3[7];
    if (v5)
    {
      v6 = *v5;
      if (a2 < (*(v3[7] + 8) - v6) >> 3)
      {
        return *(v6 + 8 * a2);
      }
    }
  }

  return result;
}

void SVGPath::setCGPath(os_unfair_lock_s *this, const CGPath *a2)
{
  os_unfair_lock_lock(this + 32);
  v4 = *&this[18]._os_unfair_lock_opaque;
  if (v4)
  {
    CFRelease(v4);
    *&this[18]._os_unfair_lock_opaque = 0;
  }

  if (a2)
  {
    *&this[18]._os_unfair_lock_opaque = a2;
    CFRetain(a2);
  }

  os_unfair_lock_unlock(this + 32);
}

SVGAtom *CGSVGAtomFromString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = v5;
  SVGUtilities::StringWithCFString(a1, v5);
  if (v6 < 0)
  {
    v1 = v5[0];
    if (!v5[0])
    {
      v3 = 0;
      goto LABEL_8;
    }
  }

  v1 = SVGAtom::ToName(v1, v2);
  if (v6 < 0)
  {
    v3 = v5[0];
LABEL_8:
    operator delete(v3);
  }

  return v1;
}

void sub_1DF1216A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGSVGAttributeGetFloat(uint64_t a1, char *a2)
{
  v3 = CFRetained::getObject<SVGAttribute>(a1, a2);

  return SVGAttribute::floatValue(v3, a2);
}

SVGAttributeMap *CGSVGAttributeMapGetCount(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttributeMap>(a1, a2);
  if (result)
  {

    return SVGAttributeMap::count(result);
  }

  return result;
}

void *CGSVGAttributeMapEnumerate(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttributeMap>(a1, a2);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __CGSVGAttributeMapEnumerate_block_invoke;
    v4[3] = &unk_1E86AAE08;
    v4[4] = a2;
    return SVGAttributeMap::enumerate(result, v4);
  }

  return result;
}

os_unfair_lock_s *CGSVGAttributeGetAtom(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v4 = 0;
    result = SVGAttribute::nameValue(result, &v4);
    if (result)
    {
      *a2 = v4;
      return 1;
    }
  }

  return result;
}

BOOL SVGAttribute::nameValue(os_unfair_lock_s *a1, uint32_t *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v7, a1 + 27);
  v5 = SVGAttribute::resolveAsName(a1, v4);
  if (v5)
  {
    *a2 = a1[22]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v7);
  return v5;
}

void sub_1DF121874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

BOOL SVGAttribute::resolveAsName(SVGAttribute *this, const char *a2)
{
  v2 = *(this + 20);
  if (v2 != 2)
  {
    if (*(this + 79) < 0)
    {
      if (*(this + 8))
      {
        *(this + 20) = 2;
        v4 = *(this + 7);
        goto LABEL_7;
      }
    }

    else if (*(this + 79))
    {
      v4 = (this + 56);
      *(this + 20) = 2;
LABEL_7:
      *(this + 22) = SVGAtom::ToName(v4, a2);
      v2 = *(this + 20);
    }
  }

  return v2 == 2;
}

CFStringRef CGSVGAtomCopyString(unsigned int a1)
{
  result = SVGAtom::ToString(a1);
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x1E695E4A8];

    return CFStringCreateWithCString(v3, v2, 0x8000100u);
  }

  return result;
}

void sub_1DF121A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SVGShapeNode *CGSVGShapeNodeGetFloatCount(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    result = SVGShapeNode::pointList(result);
    if (result)
    {
      return ((*(result + 1) - *result) >> 3);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,SVGNode *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGNode *>>>::find<std::string>(uint64_t a1, uint64_t a2)
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
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, v3 + 32, a2);
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
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,SVGNode *>,CaseInsensitiveStringLess,true>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

double SVGNode::getBoundingBox(SVGNode *a1, const SVGNode *a2, uint64_t a3)
{
  v3 = a3;
  v6 = SVGNode::calculateBoundingBox(a1, a3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v3 != 3)
  {
    memset(&v15, 0, sizeof(v15));
    SVGNode::ancestorTransforms(a1, a2, &v15);
    v14 = v15;
    v16.origin.x = v6;
    v16.origin.y = v8;
    v16.size.width = v10;
    v16.size.height = v12;
    *&v6 = CGRectApplyAffineTransform(v16, &v14);
  }

  return v6;
}

uint64_t SVGAttribute::pointsValue(uint64_t a1, void *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v7, (a1 + 108));
  v4 = *(a1 + 96);
  if (v4)
  {
    *a2 = v4;
    v5 = 1;
  }

  else
  {
    if (SVGAttribute::resolveAsFloats(a1) && ((*(*(a1 + 88) + 8) - **(a1 + 88)) >> 3) >= 2)
    {
      operator new();
    }

    v5 = 0;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v7);
  return v5;
}

void sub_1DF121CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGShapeNode::pointList(SVGShapeNode *this)
{
  v2 = SVGAttributeMap::attribute(*(this + 7), 0x2Bu);
  v7 = 0;
  if (v2)
  {
    if (SVGAttribute::pointsValue(v2, &v7))
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((*(this + 74) & 0xFFFFFFFE) == 0x2C)
    {
      __p = 0;
      v5 = 0;
      v6 = 0;
      operator new();
    }

    return 0;
  }
}

void sub_1DF121DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  MEMORY[0x1E12CE5D0](v10, 0x10B3C405B4D0908);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CGFloat SVGNode::calculateBoundingBox(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (a1)
  {
    if (v8)
    {
      v9 = v8;
      v10 = SVGShapeNode::path(v8);
      if (v10)
      {
        CGPath = CGSVGPathCreateCGPath(*(v10 + 5), v11);
        BoundingBox = CGPathGetBoundingBox(CGPath);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
        v17 = -SVGNode::calculateStrokeWidthForBoundingBox(a1, a2);
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        v44 = CGRectInset(v43, v17, v17);
        v18 = v44.origin.x;
        v19 = v44.origin.y;
        v20 = v44.size.width;
        v21 = v44.size.height;
        CGPathRelease(CGPath);
LABEL_15:
        SVGNode::transform(a1, &v41);
        v49.origin.x = v18;
        v49.origin.y = v19;
        v49.size.width = v20;
        v49.size.height = v21;
        *&v36 = CGRectApplyAffineTransform(v49, &v41);
        return v36;
      }

      v23 = (*(*v9 + 32))(v9, a2);
LABEL_14:
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v21 = v26;
      goto LABEL_15;
    }

    {
      v23 = (*(*v22 + 32))(v22, 0);
      goto LABEL_14;
    }
  }

  v27 = a1[11];
  v28 = a1[12];
  if (v27 == v28)
  {
    return v5;
  }

  do
  {
    v29 = SVGNode::calculateBoundingBox(*v27, a2);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    SVGNode::transform(a1, &v41);
    v45.origin.x = v29;
    v45.origin.y = v31;
    v45.size.width = v33;
    v45.size.height = v35;
    v46 = CGRectApplyAffineTransform(v45, &v41);
    v36 = v46.origin.x;
    v37 = v46.origin.y;
    v38 = v46.size.width;
    v39 = v46.size.height;
    v46.origin.x = v5;
    v46.origin.y = v4;
    v46.size.width = v7;
    v46.size.height = v6;
    if (!CGRectIsEmpty(v46))
    {
      v47.origin.x = v5;
      v47.origin.y = v4;
      v47.size.width = v7;
      v47.size.height = v6;
      v50.origin.x = v36;
      v50.origin.y = v37;
      v50.size.width = v38;
      v50.size.height = v39;
      v48 = CGRectUnion(v47, v50);
      v36 = v48.origin.x;
      v37 = v48.origin.y;
      v38 = v48.size.width;
      v39 = v48.size.height;
    }

    ++v27;
    v6 = v39;
    v7 = v38;
    v4 = v37;
    v5 = v36;
  }

  while (v27 != v28);
  return v36;
}

double CGSVGShapeNodeGetCircleGeometry(uint64_t a1, char *a2, void *a3, double *a4)
{
  v7 = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (v7)
  {
    if (*(v7 + 74) == 3)
    {
      *a2 = v7[34];
      *a3 = *(v7 + 35);
      result = v7[36];
      *a4 = result;
    }
  }

  return result;
}

void std::vector<CGPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double SVGNode::calculateStrokeWidthForBoundingBox(uint64_t a1, int a2)
{
  v2 = 0.0;
  if (a2)
  {
    v3 = a1;
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v4 = a1;
    while (1)
    {
      v5 = SVGAttributeMap::attribute(*(v4 + 56), 0x39u);
      if (v5)
      {
        break;
      }

      v4 = *(v4 + 48);
      if (!v4)
      {
        *&v15 = 0.0;
        goto LABEL_8;
      }
    }

    *&v15 = 0.0;
    SVGAttribute::paintValue(v5, &v15);
LABEL_8:
    v6 = v3;
    while (1)
    {
      v7 = SVGAttributeMap::attribute(*(v6 + 56), 0x3Au);
      if (v7)
      {
        break;
      }

      v6 = *(v6 + 48);
      if (!v6)
      {
        v14 = 1.0;
        goto LABEL_13;
      }
    }

    v14 = 1.0;
    SVGAttribute::floatValue(v7, &v14);
LABEL_13:
    v8 = v3;
    while (1)
    {
      v9 = SVGAttributeMap::attribute(*(v8 + 56), 0x29u);
      if (v9)
      {
        break;
      }

      v8 = *(v8 + 48);
      if (!v8)
      {
        v13 = 1.0;
        goto LABEL_18;
      }
    }

    v13 = 1.0;
    SVGAttribute::floatValue(v9, &v13);
LABEL_18:
    if (*&v15 != 0.0 && *(v15 + 12) && v14 != 0.0 && v13 != 0.0)
    {
LABEL_22:
      v10 = v3;
      while (!SVGAttributeMap::attribute(*(v10 + 56), 0x39u))
      {
        v10 = *(v10 + 48);
        if (!v10)
        {
          return v2;
        }
      }

      do
      {
        v11 = SVGAttributeMap::attribute(*(v3 + 56), 0x3Bu);
        if (v11)
        {
          *&v15 = 0.0;
          SVGAttribute::floatValue(v11, &v15);
          return *&v15 * 0.5;
        }

        v3 = *(v3 + 48);
      }

      while (v3);
      return 0.5;
    }
  }

  return v2;
}

BOOL SVGAttribute::paintValue(os_unfair_lock_s *this, SVGPaint **a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v6, this + 27);
  v4 = SVGAttribute::resolveAsPaint(this);
  if (v4)
  {
    *a2 = *&this[22]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v6);
  return v4;
}

void sub_1DF122420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

SVGShapeNode *CGSVGShapeNodeGetFloats(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGShapeNode>(a1, a2);
  if (result)
  {
    result = SVGShapeNode::pointList(result);
    if (result)
    {
      v4 = *result;
      v5 = *(result + 1) - *result;

      return memcpy(a2, v4, v5);
    }
  }

  return result;
}

BOOL SVGAttribute::resolveAsPaint(SVGAttribute *this)
{
  SVGColor::SVGColor(v5, 3u, 0.0, 0.0, 0.0, 1.0);
  if (*(this + 20) != 3)
  {
    v2 = (this + 56);
    if (!std::string::compare((this + 56), "none"))
    {
      *(this + 20) = 3;
      operator new();
    }

    if (*(this + 79) < 0)
    {
      v2 = *v2;
    }

    if (SVGColor::GetColorWithString(v2, v5, v3))
    {
      *(this + 20) = 3;
      operator new();
    }
  }

  return *(this + 20) == 3;
}

double SVGNode::transform@<D0>(SVGNode *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  a2[1] = v4;
  v5 = *(v3 + 32);
  a2[2] = v5;
  v6 = *(this + 7);
  if (v6)
  {
    v7 = SVGAttributeMap::attribute(v6, 0x3Fu);
    if (v7)
    {
      if (SVGAttribute::transformValue(v7, &v10))
      {
        v8 = *&v10.c;
        *a2 = *&v10.a;
        a2[1] = v8;
        *&v5 = v10.tx;
        a2[2] = *&v10.tx;
      }
    }
  }

  return *&v5;
}

void *CGSVGAttributeGetFloatCount(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v3 = 0;
    if (SVGAttribute::floatsValue(result, &v3) && v3)
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

void SVGNode::ancestorTransforms(SVGNode *this@<X0>, const SVGNode *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 6);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<SVGNode const*>::reserve(&v23, 0x10uLL);
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v24;
  }

  else
  {
    v7 = v24;
    do
    {
      if (v7 >= v25)
      {
        v8 = v7 - v23;
        if ((v8 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v25 - v23) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v25 - v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<SVGNode const*>>(&v23, v10);
        }

        *(8 * v8) = v5;
        v7 = (8 * v8 + 8);
        v11 = (8 * v8 - (v24 - v23));
        memcpy(v11, v23, v24 - v23);
        v12 = v23;
        v23 = v11;
        v24 = v7;
        v25 = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v7++ = v5;
      }

      v24 = v7;
      v5 = *(v5 + 6);
      if (v5)
      {
        v13 = v5 == a2;
      }

      else
      {
        v13 = 1;
      }
    }

    while (!v13);
  }

  v14 = MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v15;
  *(a3 + 32) = *(v14 + 32);
  while (v7 != v23)
  {
    v16 = *--v7;
    v17 = *(v16 + 56);
    if (v17)
    {
      v18 = SVGAttributeMap::attribute(v17, 0x3Fu);
      if (v18)
      {
        if (SVGAttribute::transformValue(v18, &v22))
        {
          t1 = v22;
          v19 = *(a3 + 16);
          *&v20.a = *a3;
          *&v20.c = v19;
          *&v20.tx = *(a3 + 32);
          CGAffineTransformConcat(a3, &t1, &v20);
        }
      }
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_1DF12284C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<SVGNode const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SVGNode const*>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t SVGAttribute::floatsValue(uint64_t a1, void *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v6, (a1 + 108));
  v4 = SVGAttribute::resolveAsFloats(a1);
  if (v4)
  {
    *a2 = *(a1 + 88);
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v6);
  return v4;
}

void sub_1DF122978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SVGNode const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CGSVGAttributeGetFloats(uint64_t a1, char *a2)
{
  result = CFRetained::getObject<SVGAttribute>(a1, a2);
  if (result)
  {
    v4 = 0;
    if (SVGAttribute::floatsValue(result, &v4) && v4)
    {
      memcpy(a2, *v4, *(v4 + 8) - *v4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E86AA910, MEMORY[0x1E69E5278]);
}

void SVGDocument::~SVGDocument(SVGDocument *this, CFRetained *a2)
{
  *this = &unk_1F5A441D8;
  CFRetained::release(*(this + 6), a2);
  CFRetained::release(*(this + 7), v3);
  std::unique_ptr<SVGStyle>::reset[abi:ne200100](this + 8, 0);
  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SVGDocument::~SVGDocument(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGShapeNode::~SVGShapeNode(SVGShapeNode *this, CFRetained *a2)
{
  SVGNode::~SVGNode(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGPathCommand::~SVGPathCommand(SVGPathCommand *this)
{
  SVGPathCommand::~SVGPathCommand(this);

  JUMPOUT(0x1E12CE5D0);
}

{
  *this = &unk_1F5A440C8;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12CE5D0](v2, 0x80C40D6874129);
  }

  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

double CGSVGViewBoxNodeGetPosition(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  if (v2)
  {
    return v2[26];
  }

  else
  {
    return 0.0;
  }
}

void *CFRetained::getObject<SVGViewBoxNode>(uint64_t a1, const char *a2)
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

double *CGSVGViewBoxNodeSetSize(uint64_t a1, const char *a2, double a3, double a4)
{
  result = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  if (result)
  {
    result[28] = a3;
    result[29] = a4;
  }

  return result;
}

double CGSVGViewBoxNodeGetSize(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  v3 = v2 + 224;
  if (!v2)
  {
    v3 = MEMORY[0x1E695F060];
  }

  return *v3;
}

double *CGSVGViewBoxNodeSetViewbox(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  result = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  if (result)
  {
    result[30] = a3;
    result[31] = a4;
    result[32] = a5;
    result[33] = a6;
  }

  return result;
}

double CGSVGViewBoxNodeGetViewbox(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  v3 = MEMORY[0x1E695F058];
  if (v2)
  {
    v3 = v2 + 240;
  }

  return *v3;
}

_DWORD *CGSVGViewBoxNodeSetAspectRatio(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  if (result)
  {
    result[68] = v2;
  }

  return result;
}

unsigned int *CGSVGViewBoxNodeGetAspectRatio(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  if (result)
  {
    return result[68];
  }

  return result;
}

_DWORD *CGSVGViewBoxNodeSetAspectRatioMeetOrSlice(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
  if (result)
  {
    result[69] = v2;
  }

  return result;
}

uint64_t CGSVGViewBoxNodeGetAspectRatioMeetOrSlice(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGViewBoxNode>(a1, a2);
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

uint64_t CGSVGCanvasGetTypeID()
{
  v0 = strlen(SVGCanvas::kSVGCanvasClassName);
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
    memmove(&__dst, SVGCanvas::kSVGCanvasClassName, v0);
  }

  *(&__dst + v1) = 0;
  TypeID = CFRetained::getTypeID(&__dst);
  if (v5 < 0)
  {
    operator delete(__dst);
  }

  return TypeID;
}

void sub_1DF122FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGCanvasRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGCanvasRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

SVGCanvas *CGSVGCanvasGetCurrentGroup(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {
    result = SVGCanvas::currentGroup(result);
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

void *CFRetained::getObject<SVGCanvas>(uint64_t a1, const char *a2)
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

SVGCanvas *CGSVGCanvasPushGroup(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {
    SVGCanvas::pushGroup(result);
  }

  return result;
}

void *CGSVGCanvasPopGroup(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {

    return SVGCanvas::popGroup(result);
  }

  return result;
}

SVGCanvas *CGSVGCanvasAddRect(uint64_t a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {
    v11.origin.x = a3;
    v11.origin.y = a4;
    v11.size.width = a5;
    v11.size.height = a6;
    SVGCanvas::addRect(result, v11);
  }

  return result;
}

SVGCanvas *CGSVGCanvasAddEllipseInRect(uint64_t a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {
    v11.origin.x = a3;
    v11.origin.y = a4;
    v11.size.width = a5;
    v11.size.height = a6;
    SVGCanvas::addEllipseInRect(result, v11);
  }

  return result;
}

SVGCanvas *CGSVGCanvasAddLine(uint64_t a1, const char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {
    v11.x = a3;
    v11.y = a4;
    v12.x = a5;
    v12.y = a6;
    SVGCanvas::addLine(result, v11, v12);
  }

  return result;
}

SVGCanvas *CGSVGCanvasAddPath(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGCanvas>(a1, a2);
  if (result)
  {
    SVGCanvas::addPath(result);
  }

  return result;
}

uint64_t CGSVGCanvasAddPolyline(uint64_t a1, __int128 *a2, unint64_t a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  SVGUtilities::CGPointListFromFloats(a2, a3, &__p);
  if (CFRetained::getObject<SVGCanvas>(a1, v4))
  {
    SVGCanvas::addPolyline();
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_1DF123310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGSVGCanvasAddPolygon(uint64_t a1, __int128 *a2, unint64_t a3)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  SVGUtilities::CGPointListFromFloats(a2, a3, &__p);
  if (CFRetained::getObject<SVGCanvas>(a1, v4))
  {
    SVGCanvas::addPolygon();
  }

  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_1DF1233B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

BOOL SVGAtom::HasAtom(SVGAtom *this, const char *a2)
{
  if (SVGAtom::SharedInstance(void)::onceToken != -1)
  {
    SVGAtom::HasAtom();
  }

  v3 = SVGAtom::SharedInstance(void)::instance;

  return SVGAtom::hasAtom(v3, this);
}

uint64_t SVGAtom::SharedInstance(SVGAtom *this)
{
  if (SVGAtom::SharedInstance(void)::onceToken != -1)
  {
    SVGAtom::HasAtom();
  }

  return SVGAtom::SharedInstance(void)::instance;
}

BOOL SVGAtom::hasAtom(os_unfair_lock_s *this, char *a2)
{
  os_unfair_lock_lock(this + 22);
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v4 = std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::find<std::string>(this, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  os_unfair_lock_unlock(this + 22);
  return &this[2] != v4;
}

void sub_1DF12350C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGAtom::~SVGAtom(char **this)
{
  std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::~__hash_table((this + 6));
  std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy((this + 3), this[4]);
  std::__tree<std::__value_type<std::string,SVGAtom::Name>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAtom::Name>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAtom::Name>>>::destroy(this, this[1]);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t std::__hash_table<SVGAtom::Name,std::hash<SVGAtom::Name>,std::equal_to<SVGAtom::Name>,std::allocator<SVGAtom::Name>>::~__hash_table(uint64_t a1)
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

void SVGAttribute::SVGAttribute(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, SVGAttribute::kSVGAttributeClassName);
  CFRetained::CFRetained(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 56) = 0;
  *a1 = &unk_1F5A43F60;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = a2;
  *(a1 + 80) = 1;
  if (a4 == 1)
  {
    v7 = 9;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 104) = v7;
  operator new();
}

void sub_1DF123790(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x80C40D6874129);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1DF123948(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x1E12CE5D0](v4, 0x80C40D6874129);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1DF123AA0(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10B3C40C2CA9EE7);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1DF123BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF123D00(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10B3C40C2CA9EE7);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1DF123E4C(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x10B3C40C2CA9EE7);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1DF123F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF1240FC(_Unwind_Exception *a1)
{
  v4 = v2;
  MEMORY[0x1E12CE5D0](v4, 0x80C40D6874129);
  if (*(v1 + 79) < 0)
  {
    operator delete(*v3);
  }

  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1DF124288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF1243A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*v16);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL SVGAttribute::resolveAsMask(SVGAttribute *this, uint64_t a2, const char *a3)
{
  if (*(this + 20) != 7)
  {
    v4 = (this + 56);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    if (SVGParser::StringBeginsWith(v4, "url(", a3))
    {
      *(this + 20) = 7;
      operator new();
    }
  }

  return *(this + 20) == 7;
}

BOOL SVGAttribute::resolveAsClipPath(SVGAttribute *this, uint64_t a2, const char *a3)
{
  if (*(this + 20) != 6)
  {
    v4 = (this + 56);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    if (SVGParser::StringBeginsWith(v4, "url(", a3))
    {
      *(this + 20) = 6;
      operator new();
    }
  }

  return *(this + 20) == 6;
}

BOOL SVGAttribute::resolveAsURL(SVGAttribute *this, uint64_t a2, const char *a3)
{
  if (*(this + 20) == 5)
  {
    return 1;
  }

  v5 = (this + 56);
  if (*(this + 79) < 0)
  {
    v5 = *v5;
  }

  if (!SVGParser::StringBeginsWith(v5, "url(", a3))
  {
    return *(this + 20) == 5;
  }

  *(this + 20) = 5;
  return 1;
}

BOOL SVGAttribute::resolveAsFilter(SVGAttribute *this, uint64_t a2, const char *a3)
{
  if (*(this + 20) != 8)
  {
    v4 = (this + 56);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    if (SVGParser::StringBeginsWith(v4, "url(", a3))
    {
      *(this + 20) = 8;
      operator new();
    }
  }

  return *(this + 20) == 8;
}

uint64_t SVGAttribute::lengthValue(uint64_t a1, uint64_t a2)
{
  result = SVGAttribute::resolveAsFloats(a1);
  if (result)
  {
    v5 = **(a1 + 88);
    if (*(*(a1 + 88) + 8) == v5)
    {
      return 0;
    }

    else
    {
      *a2 = *v5;
      *(a2 + 8) = *(a1 + 104) == 9;
      return 1;
    }
  }

  return result;
}

BOOL SVGAttribute::maskValue(os_unfair_lock_s *this, SVGMask **a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v8, this + 27);
  v6 = SVGAttribute::resolveAsMask(this, v4, v5);
  if (v6)
  {
    *a2 = *&this[22]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v8);
  return v6;
}

void sub_1DF124758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::pointValue(os_unfair_lock_s *this, CGPoint *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v7, this + 27);
  if (SVGAttribute::resolveAsFloats(this) && (v4 = **&this[22]._os_unfair_lock_opaque, *(*&this[22]._os_unfair_lock_opaque + 8) - v4 >= 9uLL))
  {
    *a2 = *v4;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v7);
  return v5;
}

void sub_1DF1247E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

BOOL SVGAttribute::clipPathValue(os_unfair_lock_s *this, SVGClipPath **a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v8, this + 27);
  v6 = SVGAttribute::resolveAsClipPath(this, v4, v5);
  if (v6)
  {
    *a2 = *&this[22]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v8);
  return v6;
}

void sub_1DF12485C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::lengthType(os_unfair_lock_s *this)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v4, this + 27);
  if (!SVGAttribute::resolveAsFloats(this) || *(*&this[22]._os_unfair_lock_opaque + 8) == **&this[22]._os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = 0;
  }

  else
  {
    os_unfair_lock_opaque = this[26]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v4);
  return os_unfair_lock_opaque;
}

void sub_1DF1248D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::urlValue(uint64_t a1, uint64_t a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v11, (a1 + 108));
  if (!SVGAttribute::resolveAsURL(a1, v4, v5))
  {
    goto LABEL_10;
  }

  v6 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v6 = *v6;
  }

  if (SVGParser::GetParentheticalComponent(v6, a2) && (*(a2 + 23) >= 0 ? (v8 = a2) : (v8 = *a2), SVGParser::StringBeginsWith(v8, "#", v7)))
  {
    v9 = 1;
    std::string::replace(a2, 0, 1uLL, &unk_1DF145996);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v11);
  return v9;
}

void sub_1DF12499C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

BOOL SVGAttribute::filterValue(os_unfair_lock_s *this, SVGFilter **a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v8, this + 27);
  v6 = SVGAttribute::resolveAsFilter(this, v4, v5);
  if (v6)
  {
    *a2 = *&this[22]._os_unfair_lock_opaque;
  }

  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v8);
  return v6;
}

void sub_1DF124A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::isEqual(SVGAttribute *this, const SVGAttribute *a2)
{
  SVGScopedUnfairLock::SVGScopedUnfairLock(&v18, this + 27);
  v5 = *(this + 20);
  if (v5)
  {
    v6 = v5 == *(a2 + 20);
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  if (v5 > 3)
  {
    if ((v5 - 4) < 2)
    {
LABEL_22:
      isEqual = 0;
      goto LABEL_23;
    }

LABEL_12:
    SVGUtilities::error("isEqual(): Unexpected expected type: %d", v4, *(this + 20));
    goto LABEL_22;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      isEqual = *(this + 22) == *(a2 + 22);
      goto LABEL_23;
    }

    if (v5 == 3)
    {
      isEqual = SVGPaint::isEqual(*(this + 11), *(a2 + 11));
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v8 = *(this + 11);
  v9 = *(a2 + 11);
  v11 = *v8;
  v10 = v8[1];
  v12 = v10 - *v8;
  v13 = *v9;
  if (v12 != *(v9 + 8) - *v9)
  {
    goto LABEL_22;
  }

  if (v11 == v10)
  {
    isEqual = 1;
  }

  else
  {
    v14 = v11 + 8;
    do
    {
      v15 = *v13++;
      isEqual = *(v14 - 8) == v15;
      v16 = *(v14 - 8) != v15 || v14 == v10;
      v14 += 8;
    }

    while (!v16);
  }

LABEL_23:
  SVGScopedUnfairLock::~SVGScopedUnfairLock(&v18);
  return isEqual;
}

void sub_1DF124B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGScopedUnfairLock::~SVGScopedUnfairLock(va);
  _Unwind_Resume(a1);
}

uint64_t SVGAttribute::print(SVGAttribute *this)
{
  v2 = SVGAtom::ToString(*(this + 12));
  v4 = (this + 56);
  if (*(this + 79) < 0)
  {
    v4 = *v4;
  }

  return SVGUtilities::print("%s: %s", v3, v2, v4);
}

uint64_t SVGAttributeMap::hasAttribute(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 8);
    if (v3 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  return 1;
}

void SVGAttributeMap::removeAttribute(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 56);
  v2 = a1 + 56;
  v3 = v4;
  if (v4)
  {
    v5 = (v2 - 8);
    v6 = v2;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != v2 && *(v6 + 32) <= a2)
    {
      CFRetained::release(*(v6 + 40));
      std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__remove_node_pointer(v5, v6);

      operator delete(v6);
    }
  }
}

void SVGAttributeMap::sorted(SVGAttributeMap *this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4002000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  memset(v22, 0, sizeof(v22));
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  memset(v16, 0, sizeof(v16));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK15SVGAttributeMap6sortedEb_block_invoke;
  v9[3] = &unk_1E86AA9E8;
  v10 = a2;
  v9[4] = &v11;
  v9[5] = &v17;
  SVGAttributeMap::enumerate(this, v9);
  v4 = v12[5];
  v5 = v12[6];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,false>(v4, v5, v7, 1);
  std::vector<AttributeInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AttributeInfo*>,std::__wrap_iter<AttributeInfo*>>(v18 + 5, v18[6], v12[5], v12[6], 0xAAAAAAAAAAAAAAABLL * ((v12[6] - v12[5]) >> 4));
  v8 = v18;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<AttributeInfo>::__init_with_size[abi:ne200100]<AttributeInfo*,AttributeInfo*>(a3, v8[5], v8[6], 0xAAAAAAAAAAAAAAABLL * ((v8[6] - v8[5]) >> 4));
  _Block_object_dispose(&v11, 8);
  v23 = v16;
  std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](&v23);
  _Block_object_dispose(&v17, 8);
  v11 = v22;
  std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1DF124EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  *(v9 - 40) = v8;
  std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  _Block_object_dispose((v9 - 104), 8);
  std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
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

void ___ZNK15SVGAttributeMap6sortedEb_block_invoke(uint64_t a1, unsigned int a2, SVGAttribute *a3)
{
  v6 = SVGAtom::ToString(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  v7 = SVGAttribute::stringValue(a3);
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *v7, *(v7 + 8));
  }

  else
  {
    v9 = *v7;
    v14.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v14.__r_.__value_.__l.__data_ = v9;
  }

  if (a2 < 0xA0)
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = v11[6];
    if (v12 < v11[7])
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (*(a1 + 48) != 1)
  {
    v11 = *(*(a1 + 32) + 8);
    v12 = v11[6];
    if (v12 < v11[7])
    {
LABEL_12:
      AttributeInfo::AttributeInfo(v11[6], __p, &v14);
      v13 = v12 + 48;
      v11[6] = v12 + 48;
LABEL_14:
      v11[6] = v13;
      goto LABEL_15;
    }

LABEL_13:
    v13 = std::vector<AttributeInfo>::__emplace_back_slow_path<std::string &,std::string &>(v11 + 5, __p, &v14);
    goto LABEL_14;
  }

  v10 = __p;
  if (v16 < 0)
  {
    v10 = __p[0];
  }

  SVGUtilities::error("Attribute '%s' is not allowed in strict mode", v8, v10);
LABEL_15:
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1DF1250D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v23 + 48) = v22;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK15SVGAttributeMap5printEv_block_invoke(int a1, int a2, SVGAttribute *this)
{
  SVGAttribute::print(this);

  return SVGUtilities::print("\n", v3);
}

void CFRetained::~CFRetained(void **this)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E86AA918, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::allocator<AttributeInfo>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<AttributeInfo>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::vector<AttributeInfo>::__emplace_back_slow_path<std::string &,std::string &>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeInfo>>(a1, v7);
  }

  v14 = 0;
  v15 = 48 * v3;
  AttributeInfo::AttributeInfo((48 * v3), a2, a3);
  v16 = 48 * v3 + 48;
  v8 = a1[1];
  v9 = 48 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AttributeInfo>,AttributeInfo*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<AttributeInfo>::~__split_buffer(&v14);
  return v13;
}

void sub_1DF1254E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<AttributeInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void AttributeInfo::AttributeInfo(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_1DF125570(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AttributeInfo>,AttributeInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      a4 += 48;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<AttributeInfo>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AttributeInfo>,AttributeInfo*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AttributeInfo>,AttributeInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<AttributeInfo>,AttributeInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<AttributeInfo>,AttributeInfo*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<AttributeInfo>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<AttributeInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<AttributeInfo>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<AttributeInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<AttributeInfo>::destroy[abi:ne200100](v4, i - 48);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,false>(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v337 = *MEMORY[0x1E69E9840];
  v329 = a2;
  v330 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          v329 = (v6 - 48);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(v7, (v7 + 6), v6 - 48);
          return;
        case 4uLL:
          v329 = (v6 - 48);
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(v7, (v7 + 6), (v7 + 12), v6 - 48);
          return;
        case 5uLL:
          v329 = (v6 - 48);
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(v7, (v7 + 6), (v7 + 12), (v7 + 18), v6 - 48);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v130 = (v6 - 48);
        v329 = (v6 - 48);
        v131 = *(v7 + 23);
        v132 = *(v6 - 25);
        v133 = *(v6 - 48);
        if (v132 >= 0)
        {
          v134 = *(v6 - 25);
        }

        else
        {
          v134 = *(v6 - 40);
        }

        if (v132 >= 0)
        {
          v135 = v130;
        }

        else
        {
          v135 = v133;
        }

        if (v131 >= 0)
        {
          v136 = *(v7 + 23);
        }

        else
        {
          v136 = v7[1];
        }

        if (v131 >= 0)
        {
          v137 = v7;
        }

        else
        {
          v137 = *v7;
        }

        if (v136 >= v134)
        {
          v138 = v134;
        }

        else
        {
          v138 = v136;
        }

        v139 = memcmp(v135, v137, v138);
        v140 = v134 < v136;
        if (v139)
        {
          v140 = v139 < 0;
        }

        if (v140)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v330, &v329);
        }

        return;
      }
    }

    if (v8 <= 1151)
    {
      break;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v317 = v6 - v7;
        v318 = v7;
        v319 = v6;
        v169 = (v9 - 2) >> 1;
        v170 = v169;
        v327 = v169;
        do
        {
          v171 = v170;
          if (v169 >= v170)
          {
            v325 = v170;
            v172 = (2 * v170) | 1;
            v173 = &v7[6 * v172];
            v174 = 2 * v170 + 2;
            if (v174 >= v9)
            {
              v184 = *v173;
            }

            else
            {
              v175 = *(v173 + 71);
              v176 = *(v173 + 23);
              v321 = v173[6];
              v323 = *v173;
              if (v176 >= 0)
              {
                v177 = *(v173 + 23);
              }

              else
              {
                v177 = v173[1];
              }

              if (v176 >= 0)
              {
                v178 = &v7[6 * v172];
              }

              else
              {
                v178 = *v173;
              }

              if (v175 >= 0)
              {
                v179 = *(v173 + 71);
              }

              else
              {
                v179 = v173[7];
              }

              if (v175 >= 0)
              {
                v180 = v173 + 6;
              }

              else
              {
                v180 = v173[6];
              }

              if (v179 >= v177)
              {
                v181 = v177;
              }

              else
              {
                v181 = v179;
              }

              v182 = memcmp(v178, v180, v181);
              v183 = v177 < v179;
              if (v182)
              {
                v183 = v182 < 0;
              }

              v214 = !v183;
              v184 = v323;
              if (!v214)
              {
                v184 = v321;
                v173 += 6;
                v172 = v174;
              }
            }

            v171 = v325;
            v185 = &v7[6 * v325];
            v186 = *(v185 + 23);
            v187 = *(v173 + 23);
            if (v187 >= 0)
            {
              v188 = *(v173 + 23);
            }

            else
            {
              v188 = v173[1];
            }

            if (v187 >= 0)
            {
              v189 = v173;
            }

            else
            {
              v189 = v184;
            }

            if (v186 >= 0)
            {
              v190 = *(v185 + 23);
            }

            else
            {
              v190 = v185[1];
            }

            if (v186 >= 0)
            {
              v191 = &v7[6 * v325];
            }

            else
            {
              v191 = *v185;
            }

            if (v190 >= v188)
            {
              v192 = v188;
            }

            else
            {
              v192 = v190;
            }

            v193 = memcmp(v189, v191, v192);
            v194 = v188 < v190;
            if (v193)
            {
              v194 = v193 < 0;
            }

            if (!v194)
            {
              v195 = *v185;
              v333 = v185[2];
              *__p = v195;
              v185[1] = 0;
              v185[2] = 0;
              *v185 = 0;
              v196 = *(v185 + 3);
              v335 = v185[5];
              v334 = v196;
              v185[4] = 0;
              v185[5] = 0;
              v185[3] = 0;
              do
              {
                v197 = v173;
                if (*(v185 + 23) < 0)
                {
                  operator delete(*v185);
                }

                v198 = *v173;
                v185[2] = v173[2];
                *v185 = v198;
                *(v173 + 23) = 0;
                *v173 = 0;
                if (*(v185 + 47) < 0)
                {
                  operator delete(v185[3]);
                }

                v199 = *(v173 + 3);
                v185[5] = v173[5];
                *(v185 + 3) = v199;
                *(v173 + 47) = 0;
                *(v173 + 24) = 0;
                if (v169 < v172)
                {
                  break;
                }

                v200 = (2 * v172) | 1;
                v173 = &v7[6 * v200];
                v172 = 2 * v172 + 2;
                if (v172 >= v9)
                {
                  v215 = *v173;
                  v172 = v200;
                }

                else
                {
                  v201 = *(v173 + 71);
                  v202 = v173[6];
                  v203 = *(v173 + 23);
                  v204 = *v173;
                  v205 = v9;
                  if (v203 >= 0)
                  {
                    v206 = *(v173 + 23);
                  }

                  else
                  {
                    v206 = v173[1];
                  }

                  if (v203 >= 0)
                  {
                    v207 = v173;
                  }

                  else
                  {
                    v207 = *v173;
                  }

                  if (v201 >= 0)
                  {
                    v208 = *(v173 + 71);
                  }

                  else
                  {
                    v208 = v173[7];
                  }

                  if (v201 >= 0)
                  {
                    v209 = v173 + 6;
                  }

                  else
                  {
                    v209 = v173[6];
                  }

                  if (v208 >= v206)
                  {
                    v210 = v206;
                  }

                  else
                  {
                    v210 = v208;
                  }

                  v211 = memcmp(v207, v209, v210);
                  v212 = v206 >= v208;
                  v9 = v205;
                  v7 = v318;
                  v213 = !v212;
                  if (v211)
                  {
                    v213 = v211 < 0;
                  }

                  v214 = !v213;
                  v215 = (v213 ? v202 : v204);
                  v169 = v327;
                  if (v214)
                  {
                    v172 = v200;
                  }

                  else
                  {
                    v173 += 6;
                  }
                }

                v216 = *(v173 + 23);
                if (v216 >= 0)
                {
                  v217 = *(v173 + 23);
                }

                else
                {
                  v217 = v173[1];
                }

                if (v216 >= 0)
                {
                  v218 = v173;
                }

                else
                {
                  v218 = v215;
                }

                if (v333 >= 0)
                {
                  v219 = HIBYTE(v333);
                }

                else
                {
                  v219 = __p[1];
                }

                if (v333 >= 0)
                {
                  v220 = __p;
                }

                else
                {
                  v220 = __p[0];
                }

                if (v219 >= v217)
                {
                  v221 = v217;
                }

                else
                {
                  v221 = v219;
                }

                v222 = memcmp(v218, v220, v221);
                v223 = v217 < v219;
                if (v222)
                {
                  v223 = v222 < 0;
                }

                v185 = v197;
              }

              while (!v223);
              if (*(v197 + 23) < 0)
              {
                operator delete(*v197);
                v225 = *(v197 + 47);
                v226 = v333;
                *v197 = *__p;
                v197[2] = v226;
                if (v225 < 0)
                {
                  operator delete(v197[3]);
                }
              }

              else
              {
                v224 = *__p;
                v197[2] = v333;
                *v197 = v224;
              }

              v227 = v334;
              v197[5] = v335;
              *(v197 + 3) = v227;
              v171 = v325;
            }
          }

          v170 = v171 - 1;
        }

        while (v171);
        v228 = 0xAAAAAAAAAAAAAAABLL * (v317 >> 4);
        v229 = v319;
        do
        {
          v230 = 0;
          v320 = *v7;
          *v336 = v7[1];
          *&v336[7] = *(v7 + 15);
          v322 = *(v7 + 23);
          *v7 = 0;
          v7[1] = 0;
          *&v331[7] = *(v7 + 39);
          v324 = v229;
          v326 = v7[3];
          *v331 = v7[4];
          v328 = *(v7 + 47);
          v7[4] = 0;
          v7[5] = 0;
          v231 = v7;
          v7[2] = 0;
          v7[3] = 0;
          do
          {
            v232 = &v231[6 * v230];
            v233 = v232 + 6;
            v234 = (2 * v230) | 1;
            v230 = 2 * v230 + 2;
            if (v230 >= v228)
            {
              v230 = v234;
            }

            else
            {
              v237 = v232[12];
              v236 = v232 + 12;
              v235 = v237;
              v238 = *(v236 + 23);
              v239 = *(v236 - 25);
              if (v239 >= 0)
              {
                v240 = *(v236 - 25);
              }

              else
              {
                v240 = *(v236 - 5);
              }

              if (v239 >= 0)
              {
                v241 = v233;
              }

              else
              {
                v241 = *(v236 - 6);
              }

              if (v238 >= 0)
              {
                v242 = *(v236 + 23);
              }

              else
              {
                v242 = v236[1];
              }

              if (v238 >= 0)
              {
                v243 = v236;
              }

              else
              {
                v243 = v235;
              }

              if (v242 >= v240)
              {
                v244 = v240;
              }

              else
              {
                v244 = v242;
              }

              v245 = memcmp(v241, v243, v244);
              v246 = v240 < v242;
              if (v245)
              {
                v246 = v245 < 0;
              }

              if (v246)
              {
                v233 = v236;
              }

              else
              {
                v230 = v234;
              }
            }

            if (*(v231 + 23) < 0)
            {
              operator delete(*v231);
            }

            v247 = *v233;
            v231[2] = v233[2];
            *v231 = v247;
            *(v233 + 23) = 0;
            *v233 = 0;
            if (*(v231 + 47) < 0)
            {
              operator delete(v231[3]);
            }

            v248 = *(v233 + 3);
            v231[5] = v233[5];
            *(v231 + 3) = v248;
            *(v233 + 47) = 0;
            *(v233 + 24) = 0;
            v231 = v233;
          }

          while (v230 <= ((v228 - 2) >> 1));
          v229 = v324 - 3;
          v249 = *(v233 + 23);
          if (v233 == (v324 - 3))
          {
            if (v249 < 0)
            {
              operator delete(*v233);
              v280 = *(v233 + 47);
              *v233 = v320;
              v281 = *&v336[7];
              v233[1] = *v336;
              *(v233 + 15) = v281;
              *(v233 + 23) = v322;
              if (v280 < 0)
              {
                operator delete(v233[3]);
              }
            }

            else
            {
              *v233 = v320;
              v252 = *&v336[7];
              v233[1] = *v336;
              *(v233 + 15) = v252;
              *(v233 + 23) = v322;
            }

            v282 = *v331;
            v233[3] = v326;
            v233[4] = v282;
            *(v233 + 39) = *&v331[7];
            *(v233 + 47) = v328;
          }

          else
          {
            if (v249 < 0)
            {
              operator delete(*v233);
            }

            v250 = *v229;
            v233[2] = *(v324 - 4);
            *v233 = v250;
            *(v324 - 25) = 0;
            *(v324 - 48) = 0;
            if (*(v233 + 47) < 0)
            {
              operator delete(v233[3]);
            }

            v251 = *(v324 - 24);
            v233[5] = *(v324 - 1);
            *(v233 + 3) = v251;
            *(v324 - 1) = 0;
            *(v324 - 24) = 0;
            if (*(v324 - 25) < 0)
            {
              operator delete(*(v324 - 6));
              v253 = *(v324 - 1);
              *(v324 - 6) = v320;
              *(v324 - 5) = *v336;
              *(v324 - 33) = *&v336[7];
              *(v324 - 25) = v322;
              if (v253 < 0)
              {
                operator delete(*(v324 - 3));
              }
            }

            else
            {
              *(v324 - 6) = v320;
              *(v324 - 5) = *v336;
              *(v324 - 33) = *&v336[7];
              *(v324 - 25) = v322;
            }

            *(v324 - 3) = v326;
            *(v324 - 2) = *v331;
            *(v324 - 9) = *&v331[7];
            *(v324 - 1) = v328;
            v254 = (v233 + 6) - v7;
            if (v254 >= 49)
            {
              v255 = (-2 - 0x5555555555555555 * (v254 >> 4)) >> 1;
              v256 = &v7[6 * v255];
              v257 = *(v233 + 23);
              v258 = *(v256 + 23);
              if (v258 >= 0)
              {
                v259 = *(v256 + 23);
              }

              else
              {
                v259 = v256[1];
              }

              if (v258 >= 0)
              {
                v260 = &v7[6 * v255];
              }

              else
              {
                v260 = *v256;
              }

              if (v257 >= 0)
              {
                v261 = *(v233 + 23);
              }

              else
              {
                v261 = v233[1];
              }

              if (v257 >= 0)
              {
                v262 = v233;
              }

              else
              {
                v262 = *v233;
              }

              if (v261 >= v259)
              {
                v263 = v259;
              }

              else
              {
                v263 = v261;
              }

              v264 = memcmp(v260, v262, v263);
              v265 = v259 < v261;
              if (v264)
              {
                v265 = v264 < 0;
              }

              if (v265)
              {
                v266 = *v233;
                v333 = v233[2];
                *__p = v266;
                v233[1] = 0;
                v233[2] = 0;
                *v233 = 0;
                v267 = v233[5];
                v334 = *(v233 + 3);
                v335 = v267;
                v233[4] = 0;
                v233[5] = 0;
                v233[3] = 0;
                if (v333 >= 0)
                {
                  v268 = HIBYTE(v333);
                }

                else
                {
                  v268 = __p[1];
                }

                if (v333 >= 0)
                {
                  v269 = __p;
                }

                else
                {
                  v269 = __p[0];
                }

                do
                {
                  v270 = v256;
                  if (*(v233 + 23) < 0)
                  {
                    operator delete(*v233);
                  }

                  v271 = *v256;
                  v233[2] = v256[2];
                  *v233 = v271;
                  *(v256 + 23) = 0;
                  *v256 = 0;
                  if (*(v233 + 47) < 0)
                  {
                    operator delete(v233[3]);
                  }

                  v272 = *(v256 + 3);
                  v233[5] = v256[5];
                  *(v233 + 3) = v272;
                  *(v256 + 47) = 0;
                  *(v256 + 24) = 0;
                  if (!v255)
                  {
                    break;
                  }

                  v255 = (v255 - 1) >> 1;
                  v256 = &v7[6 * v255];
                  v273 = *(v256 + 23);
                  if (v273 >= 0)
                  {
                    v274 = *(v256 + 23);
                  }

                  else
                  {
                    v274 = v256[1];
                  }

                  if (v273 >= 0)
                  {
                    v275 = &v7[6 * v255];
                  }

                  else
                  {
                    v275 = *v256;
                  }

                  if (v268 >= v274)
                  {
                    v276 = v274;
                  }

                  else
                  {
                    v276 = v268;
                  }

                  v277 = memcmp(v275, v269, v276);
                  v278 = v274 < v268;
                  if (v277)
                  {
                    v278 = v277 < 0;
                  }

                  v233 = v270;
                }

                while (v278);
                if (*(v270 + 23) < 0)
                {
                  operator delete(*v270);
                  v283 = *(v270 + 47);
                  v284 = v333;
                  *v270 = *__p;
                  v270[2] = v284;
                  if (v283 < 0)
                  {
                    operator delete(v270[3]);
                  }
                }

                else
                {
                  v279 = *__p;
                  v270[2] = v333;
                  *v270 = v279;
                }

                v285 = v334;
                v270[5] = v335;
                *(v270 + 3) = v285;
              }
            }
          }
        }

        while (v228-- > 2);
      }

      return;
    }

    v10 = v9 >> 1;
    v11 = v6 - 48;
    if (v8 < 0x1801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(&v7[6 * (v9 >> 1)], v7, v11);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(v7, &v7[6 * (v9 >> 1)], v11);
      v12 = v330;
      v13 = &v330[6 * v10];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>((v330 + 6), (v13 - 6), (v329 - 12));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>((v330 + 12), (v13 + 6), (v329 - 18));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>((v13 - 6), v13, (v13 + 6));
      v14 = *v330;
      __p[0] = v330[1];
      *(__p + 7) = *(v330 + 15);
      v15 = *(v330 + 23);
      *v330 = 0;
      v12[1] = 0;
      v16 = v12[3];
      *v336 = v12[4];
      *&v336[7] = *(v12 + 39);
      v17 = *(v12 + 47);
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12[5] = 0;
      v18 = v13[2];
      *v12 = *v13;
      v12[2] = v18;
      v19 = v13[5];
      *(v12 + 3) = *(v13 + 3);
      v12[5] = v19;
      *v13 = v14;
      v13[1] = __p[0];
      *(v13 + 15) = *(__p + 7);
      *(v13 + 23) = v15;
      v13[3] = v16;
      *(v13 + 39) = *&v336[7];
      v13[4] = *v336;
      *(v13 + 47) = v17;
    }

    --a3;
    v20 = v330;
    if ((a4 & 1) == 0)
    {
      v21 = *(v330 + 23);
      v22 = *(v330 - 25);
      if (v22 >= 0)
      {
        v23 = *(v330 - 25);
      }

      else
      {
        v23 = *(v330 - 5);
      }

      if (v22 >= 0)
      {
        v24 = v330 - 6;
      }

      else
      {
        v24 = *(v330 - 6);
      }

      if (v21 >= 0)
      {
        v25 = *(v330 + 23);
      }

      else
      {
        v25 = v330[1];
      }

      if (v21 >= 0)
      {
        v26 = v330;
      }

      else
      {
        v26 = *v330;
      }

      if (v25 >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = v25;
      }

      v28 = memcmp(v24, v26, v27);
      v29 = v23 < v25;
      if (v28)
      {
        v29 = v28 < 0;
      }

      if (!v29)
      {
        v78 = v329;
        *v331 = v329;
        v333 = v330[2];
        *__p = *v330;
        *v330 = 0;
        v20[1] = 0;
        v79 = *(v20 + 3);
        v20[2] = 0;
        v20[3] = 0;
        v334 = v79;
        v335 = v20[5];
        v20[4] = 0;
        v20[5] = 0;
        v80 = *(v78 - 25);
        if (v333 >= 0)
        {
          v81 = HIBYTE(v333);
        }

        else
        {
          v81 = __p[1];
        }

        if (v333 >= 0)
        {
          v82 = __p;
        }

        else
        {
          v82 = __p[0];
        }

        if (v80 >= 0)
        {
          v83 = *(v78 - 25);
        }

        else
        {
          v83 = *(v78 - 40);
        }

        if (v80 >= 0)
        {
          v84 = (v78 - 48);
        }

        else
        {
          v84 = *(v78 - 48);
        }

        if (v83 >= v81)
        {
          v85 = v81;
        }

        else
        {
          v85 = v83;
        }

        v86 = memcmp(v82, v84, v85);
        v87 = v81 < v83;
        if (v86)
        {
          v87 = v86 < 0;
        }

        if (v87)
        {
          v88 = (v20 + 6);
          do
          {
            *v336 = v88;
            v89 = *(v88 + 23);
            if (v89 >= 0)
            {
              v90 = *(v88 + 23);
            }

            else
            {
              v90 = v88[1];
            }

            if (v89 >= 0)
            {
              v91 = v88;
            }

            else
            {
              v91 = *v88;
            }

            if (v90 >= v81)
            {
              v92 = v81;
            }

            else
            {
              v92 = v90;
            }

            v93 = memcmp(v82, v91, v92);
            v94 = v81 < v90;
            if (v93)
            {
              v94 = v93 < 0;
            }

            v88 += 6;
          }

          while (!v94);
          v95 = (v88 - 6);
        }

        else
        {
          v96 = (v20 + 6);
          do
          {
            v95 = v96;
            *v336 = v96;
            if (v96 >= v78)
            {
              break;
            }

            v97 = *(v96 + 23);
            if (v97 >= 0)
            {
              v98 = *(v96 + 23);
            }

            else
            {
              v98 = v96[1];
            }

            if (v97 >= 0)
            {
              v99 = v96;
            }

            else
            {
              v99 = *v96;
            }

            if (v98 >= v81)
            {
              v100 = v81;
            }

            else
            {
              v100 = v98;
            }

            v101 = memcmp(v82, v99, v100);
            v102 = v101 < 0;
            if (!v101)
            {
              v102 = v81 < v98;
            }

            v96 = (v95 + 48);
          }

          while (!v102);
        }

        if (v95 < v78)
        {
          v103 = (v78 - 48);
          do
          {
            *v331 = v103;
            v104 = *(v103 + 23);
            if (v104 >= 0)
            {
              v105 = *(v103 + 23);
            }

            else
            {
              v105 = v103[1];
            }

            if (v104 >= 0)
            {
              v106 = v103;
            }

            else
            {
              v106 = *v103;
            }

            if (v105 >= v81)
            {
              v107 = v81;
            }

            else
            {
              v107 = v105;
            }

            v108 = memcmp(v82, v106, v107);
            v109 = v81 < v105;
            if (v108)
            {
              v109 = v108 < 0;
            }

            v103 -= 6;
          }

          while (v109);
          v78 = (v103 + 6);
        }

        if (v95 < v78)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(v336, v331);
            v110 = *v336 + 48;
            do
            {
              *v336 = v110;
              v111 = *(v110 + 23);
              if (v111 >= 0)
              {
                v112 = *(v110 + 23);
              }

              else
              {
                v112 = *(v110 + 8);
              }

              if (v111 >= 0)
              {
                v113 = v110;
              }

              else
              {
                v113 = *v110;
              }

              if (v112 >= v81)
              {
                v114 = v81;
              }

              else
              {
                v114 = v112;
              }

              v115 = memcmp(v82, v113, v114);
              v116 = v81 < v112;
              if (v115)
              {
                v116 = v115 < 0;
              }

              v110 += 48;
            }

            while (!v116);
            v95 = v110 - 48;
            v117 = *v331 - 48;
            do
            {
              *v331 = v117;
              v118 = *(v117 + 23);
              if (v118 >= 0)
              {
                v119 = *(v117 + 23);
              }

              else
              {
                v119 = *(v117 + 8);
              }

              if (v118 >= 0)
              {
                v120 = v117;
              }

              else
              {
                v120 = *v117;
              }

              if (v119 >= v81)
              {
                v121 = v81;
              }

              else
              {
                v121 = v119;
              }

              v122 = memcmp(v82, v120, v121);
              v123 = v81 < v119;
              if (v122)
              {
                v123 = v122 < 0;
              }

              v117 -= 48;
            }

            while (v123);
          }

          while (v95 < v117 + 48);
        }

        v124 = (v95 - 48);
        if ((v95 - 48) != v20)
        {
          if (*(v20 + 23) < 0)
          {
            operator delete(*v20);
          }

          v125 = *v124;
          v20[2] = *(v95 - 32);
          *v20 = v125;
          *(v95 - 25) = 0;
          *(v95 - 48) = 0;
          if (*(v20 + 47) < 0)
          {
            operator delete(v20[3]);
          }

          v126 = *(v95 - 24);
          v20[5] = *(v95 - 8);
          *(v20 + 3) = v126;
          *(v95 - 1) = 0;
          *(v95 - 24) = 0;
        }

        if (*(v95 - 25) < 0)
        {
          operator delete(*v124);
        }

        v127 = *__p;
        *(v95 - 32) = v333;
        *v124 = v127;
        HIBYTE(v333) = 0;
        LOBYTE(__p[0]) = 0;
        v128 = (v95 - 24);
        if (*(v95 - 1) < 0)
        {
          operator delete(*v128);
        }

        v129 = v334;
        *(v95 - 8) = v335;
        *v128 = v129;
        v7 = *v336;
        if (SHIBYTE(v333) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_227;
      }
    }

    v30 = 0;
    v31 = v329;
    *v331 = v329;
    v333 = v330[2];
    *__p = *v330;
    *v330 = 0;
    v20[1] = 0;
    v32 = *(v20 + 3);
    v20[2] = 0;
    v20[3] = 0;
    v334 = v32;
    v335 = v20[5];
    v20[4] = 0;
    v20[5] = 0;
    if (v333 >= 0)
    {
      v33 = HIBYTE(v333);
    }

    else
    {
      v33 = __p[1];
    }

    if (v333 >= 0)
    {
      v34 = __p;
    }

    else
    {
      v34 = __p[0];
    }

    do
    {
      *v336 = &v20[v30 + 6];
      v35 = SHIBYTE(v20[v30 + 8]);
      if (v35 >= 0)
      {
        v36 = HIBYTE(v20[v30 + 8]);
      }

      else
      {
        v36 = v20[v30 + 7];
      }

      if (v35 >= 0)
      {
        v37 = &v20[v30 + 6];
      }

      else
      {
        v37 = v20[v30 + 6];
      }

      if (v33 >= v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = v33;
      }

      v39 = memcmp(v37, v34, v38);
      v40 = v36 < v33;
      if (v39)
      {
        v40 = v39 < 0;
      }

      v30 += 6;
    }

    while (v40);
    v41 = &v20[v30];
    v42 = (v31 - 48);
    if (v30 == 6)
    {
      while (1)
      {
        v49 = (v42 + 6);
        if (v41 >= (v42 + 6))
        {
          break;
        }

        *v331 = v42;
        v50 = *(v42 + 23);
        if (v50 >= 0)
        {
          v51 = *(v42 + 23);
        }

        else
        {
          v51 = v42[1];
        }

        if (v50 >= 0)
        {
          v52 = v42;
        }

        else
        {
          v52 = *v42;
        }

        if (v33 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = v33;
        }

        v54 = memcmp(v52, v34, v53);
        v55 = v51 < v33;
        if (v54)
        {
          v55 = v54 < 0;
        }

        v42 -= 6;
        if (v55)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      do
      {
        *v331 = v42;
        v43 = *(v42 + 23);
        if (v43 >= 0)
        {
          v44 = *(v42 + 23);
        }

        else
        {
          v44 = v42[1];
        }

        if (v43 >= 0)
        {
          v45 = v42;
        }

        else
        {
          v45 = *v42;
        }

        if (v33 >= v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = v33;
        }

        v47 = memcmp(v45, v34, v46);
        v48 = v44 < v33;
        if (v47)
        {
          v48 = v47 < 0;
        }

        v42 -= 6;
      }

      while (!v48);
LABEL_78:
      v49 = (v42 + 6);
    }

    v7 = v41;
    if (v41 < v49)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(v336, v331);
        v56 = *v336 + 48;
        do
        {
          *v336 = v56;
          v57 = *(v56 + 23);
          if (v57 >= 0)
          {
            v58 = *(v56 + 23);
          }

          else
          {
            v58 = *(v56 + 8);
          }

          if (v57 >= 0)
          {
            v59 = v56;
          }

          else
          {
            v59 = *v56;
          }

          if (v33 >= v58)
          {
            v60 = v58;
          }

          else
          {
            v60 = v33;
          }

          v61 = memcmp(v59, v34, v60);
          v62 = v58 < v33;
          if (v61)
          {
            v62 = v61 < 0;
          }

          v56 += 48;
        }

        while (v62);
        v7 = (v56 - 48);
        v63 = *v331 - 48;
        do
        {
          *v331 = v63;
          v64 = *(v63 + 23);
          if (v64 >= 0)
          {
            v65 = *(v63 + 23);
          }

          else
          {
            v65 = *(v63 + 8);
          }

          if (v64 >= 0)
          {
            v66 = v63;
          }

          else
          {
            v66 = *v63;
          }

          if (v33 >= v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = v33;
          }

          v68 = memcmp(v66, v34, v67);
          v69 = v65 < v33;
          if (v68)
          {
            v69 = v68 < 0;
          }

          v63 -= 48;
        }

        while (!v69);
      }

      while (v7 < v63 + 48);
    }

    v70 = (v7 - 6);
    if (v7 - 6 != v20)
    {
      if (*(v20 + 23) < 0)
      {
        operator delete(*v20);
      }

      v71 = *v70;
      v20[2] = *(v7 - 4);
      *v20 = v71;
      *(v7 - 25) = 0;
      *(v7 - 48) = 0;
      if (*(v20 + 47) < 0)
      {
        operator delete(v20[3]);
      }

      v72 = *(v7 - 3);
      v20[5] = *(v7 - 1);
      *(v20 + 3) = v72;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
    }

    if (*(v7 - 25) < 0)
    {
      operator delete(*v70);
    }

    v73 = *__p;
    *(v7 - 4) = v333;
    *v70 = v73;
    HIBYTE(v333) = 0;
    LOBYTE(__p[0]) = 0;
    v74 = (v7 - 3);
    if (*(v7 - 1) < 0)
    {
      operator delete(*v74);
    }

    v75 = v334;
    *(v7 - 1) = v335;
    *v74 = v75;
    if (SHIBYTE(v333) < 0)
    {
      operator delete(__p[0]);
    }

    v76 = v330;
    if (v41 < v49)
    {
      goto LABEL_120;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *>(v330, (v7 - 6));
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *>(v7, v329))
    {
      if (!v77)
      {
        v76 = v330;
LABEL_120:
        std::__introsort<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,false>(v76, v7 - 6, a3, a4 & 1);
LABEL_227:
        a4 = 0;
      }

      v330 = v7;
      goto LABEL_229;
    }

    if (v77)
    {
      return;
    }

    v329 = v7 - 6;
    v7 = v330;
LABEL_229:
    v6 = v329;
  }

  if (a4)
  {
    if (v7 != v6)
    {
      v141 = v7 + 6;
      if (v7 + 6 != v6)
      {
        v142 = 0;
        v143 = v7;
        do
        {
          v144 = v141;
          v145 = *(v143 + 23);
          v146 = *(v143 + 71);
          if (v146 >= 0)
          {
            v147 = *(v143 + 71);
          }

          else
          {
            v147 = v143[7];
          }

          if (v146 >= 0)
          {
            v148 = v141;
          }

          else
          {
            v148 = v143[6];
          }

          if (v145 >= 0)
          {
            v149 = *(v143 + 23);
          }

          else
          {
            v149 = v143[1];
          }

          if (v145 >= 0)
          {
            v150 = v143;
          }

          else
          {
            v150 = *v143;
          }

          if (v149 >= v147)
          {
            v151 = v147;
          }

          else
          {
            v151 = v149;
          }

          v152 = memcmp(v148, v150, v151);
          v153 = v147 < v149;
          if (v152)
          {
            v153 = v152 < 0;
          }

          if (v153)
          {
            v154 = *v144;
            v333 = v144[2];
            *__p = v154;
            v144[1] = 0;
            v144[2] = 0;
            *v144 = 0;
            v334 = *(v143 + 9);
            v335 = v143[11];
            v143[10] = 0;
            v143[11] = 0;
            v143[9] = 0;
            if (v333 >= 0)
            {
              v155 = HIBYTE(v333);
            }

            else
            {
              v155 = __p[1];
            }

            if (v333 >= 0)
            {
              v156 = __p;
            }

            else
            {
              v156 = __p[0];
            }

            v157 = v142;
            while (1)
            {
              v158 = (v7 + v157);
              if (*(v7 + v157 + 71) < 0)
              {
                operator delete(v158[6]);
              }

              *(v158 + 3) = *v158;
              v158[8] = v158[2];
              *(v158 + 23) = 0;
              *v158 = 0;
              if (*(v158 + 95) < 0)
              {
                operator delete(v158[9]);
              }

              v159 = v7 + v157;
              *(v158 + 9) = *(v7 + v157 + 24);
              v158[11] = *(v7 + v157 + 40);
              v159[47] = 0;
              v159[24] = 0;
              if (!v157)
              {
                break;
              }

              v160 = *(v159 - 25);
              if (v160 >= 0)
              {
                v161 = *(v159 - 25);
              }

              else
              {
                v161 = *(v159 - 5);
              }

              if (v160 >= 0)
              {
                v162 = v159 - 48;
              }

              else
              {
                v162 = *(v159 - 6);
              }

              if (v161 >= v155)
              {
                v163 = v155;
              }

              else
              {
                v163 = v161;
              }

              v164 = memcmp(v156, v162, v163);
              v165 = v155 < v161;
              if (v164)
              {
                v165 = v164 < 0;
              }

              v157 -= 48;
              if (!v165)
              {
                v166 = v7 + v157 + 48;
                goto LABEL_300;
              }
            }

            v166 = v7;
LABEL_300:
            if (*(v166 + 23) < 0)
            {
              operator delete(*v166);
            }

            v167 = *__p;
            *(v166 + 16) = v333;
            *v166 = v167;
            if (*(v166 + 47) < 0)
            {
              operator delete(*(v159 + 3));
            }

            v168 = v334;
            *(v159 + 5) = v335;
            *(v159 + 24) = v168;
          }

          v141 = v144 + 6;
          v142 += 48;
          v143 = v144;
        }

        while (v144 + 6 != v6);
      }
    }
  }

  else if (v7 != v6)
  {
    v287 = v7 + 6;
    if (v7 + 6 != v6)
    {
      v288 = v7 + 95;
      do
      {
        v289 = v287;
        v290 = *(v7 + 23);
        v291 = *(v7 + 71);
        if (v291 >= 0)
        {
          v292 = *(v7 + 71);
        }

        else
        {
          v292 = v7[7];
        }

        if (v291 >= 0)
        {
          v293 = v287;
        }

        else
        {
          v293 = v7[6];
        }

        if (v290 >= 0)
        {
          v294 = *(v7 + 23);
        }

        else
        {
          v294 = v7[1];
        }

        if (v290 >= 0)
        {
          v295 = v7;
        }

        else
        {
          v295 = *v7;
        }

        if (v294 >= v292)
        {
          v296 = v292;
        }

        else
        {
          v296 = v294;
        }

        v297 = memcmp(v293, v295, v296);
        v298 = v292 < v294;
        if (v297)
        {
          v298 = v297 < 0;
        }

        if (v298)
        {
          v299 = *v289;
          v333 = v289[2];
          *__p = v299;
          v289[1] = 0;
          v289[2] = 0;
          *v289 = 0;
          v334 = *(v7 + 9);
          v335 = v7[11];
          v7[10] = 0;
          v7[11] = 0;
          v7[9] = 0;
          if (v333 >= 0)
          {
            v300 = HIBYTE(v333);
          }

          else
          {
            v300 = __p[1];
          }

          if (v333 >= 0)
          {
            v301 = __p;
          }

          else
          {
            v301 = __p[0];
          }

          v302 = v288;
          do
          {
            v303 = (v302 - 47);
            if (*(v302 - 24) < 0)
            {
              operator delete(*v303);
            }

            *v303 = *(v302 - 95);
            *(v302 - 31) = *(v302 - 79);
            *(v302 - 72) = 0;
            *(v302 - 95) = 0;
            v304 = (v302 - 23);
            if (*v302 < 0)
            {
              operator delete(*v304);
            }

            *(v302 - 7) = *(v302 - 55);
            *(v302 - 48) = 0;
            v302 -= 48;
            *v304 = *(v302 - 23);
            *(v302 - 23) = 0;
            v305 = *(v302 - 72);
            if (v305 >= 0)
            {
              v306 = *(v302 - 72);
            }

            else
            {
              v306 = *(v302 - 87);
            }

            if (v305 >= 0)
            {
              v307 = v302 - 95;
            }

            else
            {
              v307 = *(v302 - 95);
            }

            if (v306 >= v300)
            {
              v308 = v300;
            }

            else
            {
              v308 = v306;
            }

            v309 = memcmp(v301, v307, v308);
            v310 = v300 < v306;
            if (v309)
            {
              v310 = v309 < 0;
            }
          }

          while (v310);
          v311 = v302 - 47;
          v312 = (v302 - 23);
          if (*(v302 - 24) < 0)
          {
            operator delete(*(v302 - 47));
            v314 = *v302;
            v315 = v333;
            *v311 = *__p;
            *(v302 - 31) = v315;
            if (v314 < 0)
            {
              operator delete(*v312);
            }
          }

          else
          {
            v313 = *__p;
            *(v302 - 31) = v333;
            *v311 = v313;
          }

          v316 = v334;
          *(v302 - 7) = v335;
          *v312 = v316;
        }

        v287 = v289 + 6;
        v288 += 48;
        v7 = v289;
      }

      while (v289 + 6 != v6);
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v13 = (*a1)[1];
  *&v13[7] = *(*a1 + 15);
  v5 = *(*a1 + 23);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v7 = (v2 + 3);
  v6 = v2[3];
  *v12 = v2[4];
  *&v12[7] = *(v2 + 39);
  v8 = *(v2 + 47);
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v9 = *(v3 + 16);
  *v2 = *v3;
  v2[2] = v9;
  *(v3 + 23) = 0;
  *v3 = 0;
  if (*(v2 + 47) < 0)
  {
    operator delete(*v7);
  }

  v10 = *(v3 + 24);
  v7[2] = *(v3 + 40);
  *v7 = v10;
  *(v3 + 47) = 0;
  *(v3 + 24) = 0;
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v11 = *(v3 + 47);
    *v3 = v4;
    *(v3 + 8) = *v13;
    *(v3 + 15) = *&v13[7];
    *(v3 + 23) = v5;
    if (v11 < 0)
    {
      operator delete(*(v3 + 24));
    }
  }

  else
  {
    *v3 = v4;
    *(v3 + 8) = *v13;
    *(v3 + 15) = *&v13[7];
    *(v3 + 23) = v5;
  }

  *(v3 + 24) = v6;
  *(v3 + 32) = *v12;
  *(v3 + 39) = *&v12[7];
  *(v3 + 47) = v8;
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a1;
  v39 = a3;
  v4 = *(a1 + 23);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v4 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v4 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = memcmp(v7, v9, v10);
  if (v11)
  {
    v12 = v11 < 0;
  }

  else
  {
    v12 = v6 < v8;
  }

  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = *(a3 + 23);
  }

  else
  {
    v14 = *(a3 + 8);
  }

  if (v13 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v6 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6;
  }

  v17 = memcmp(v15, v7, v16);
  v18 = v14 < v6;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v12)
  {
    v19 = &v41;
    if (v18)
    {
LABEL_51:
      v29 = &v39;
LABEL_72:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(v19, v29);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v41, &v40);
    v20 = *(v40 + 23);
    v21 = *(v39 + 23);
    if (v21 >= 0)
    {
      v22 = *(v39 + 23);
    }

    else
    {
      v22 = v39[1];
    }

    if (v21 >= 0)
    {
      v23 = v39;
    }

    else
    {
      v23 = *v39;
    }

    if (v20 >= 0)
    {
      v24 = *(v40 + 23);
    }

    else
    {
      v24 = v40[1];
    }

    if (v20 >= 0)
    {
      v25 = v40;
    }

    else
    {
      v25 = *v40;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      v19 = &v40;
      goto LABEL_51;
    }
  }

  else if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v40, &v39);
    v30 = *(v41 + 23);
    v31 = *(v40 + 23);
    if (v31 >= 0)
    {
      v32 = *(v40 + 23);
    }

    else
    {
      v32 = v40[1];
    }

    if (v31 >= 0)
    {
      v33 = v40;
    }

    else
    {
      v33 = *v40;
    }

    if (v30 >= 0)
    {
      v34 = *(v41 + 23);
    }

    else
    {
      v34 = v41[1];
    }

    if (v30 >= 0)
    {
      v35 = v41;
    }

    else
    {
      v35 = *v41;
    }

    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    v37 = memcmp(v33, v35, v36);
    v38 = v32 < v34;
    if (v37)
    {
      v38 = v37 < 0;
    }

    if (v38)
    {
      v19 = &v41;
      v29 = &v40;
      goto LABEL_72;
    }
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  v35 = a4;
  v36 = a3;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = *(a4 + 8);
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v36, &v35);
    v17 = *(a2 + 23);
    v18 = *(v36 + 23);
    if (v18 >= 0)
    {
      v19 = *(v36 + 23);
    }

    else
    {
      v19 = v36[1];
    }

    if (v18 >= 0)
    {
      v20 = v36;
    }

    else
    {
      v20 = *v36;
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v17 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v37, &v36);
      v26 = *(a1 + 23);
      v27 = *(v37 + 23);
      if (v27 >= 0)
      {
        v28 = *(v37 + 23);
      }

      else
      {
        v28 = v37[1];
      }

      if (v27 >= 0)
      {
        v29 = v37;
      }

      else
      {
        v29 = *v37;
      }

      if (v26 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = *(a1 + 8);
      }

      if (v26 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = *a1;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v38, &v37);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v50 = a1;
  v47 = a4;
  v48 = a3;
  v46 = a5;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 8);
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v47, &v46);
    v19 = *(a3 + 23);
    v20 = *(v47 + 23);
    if (v20 >= 0)
    {
      v21 = *(v47 + 23);
    }

    else
    {
      v21 = v47[1];
    }

    if (v20 >= 0)
    {
      v22 = v47;
    }

    else
    {
      v22 = *v47;
    }

    if (v19 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    if (v19 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v48, &v47);
      v28 = *(a2 + 23);
      v29 = *(v48 + 23);
      if (v29 >= 0)
      {
        v30 = *(v48 + 23);
      }

      else
      {
        v30 = v48[1];
      }

      if (v29 >= 0)
      {
        v31 = v48;
      }

      else
      {
        v31 = *v48;
      }

      if (v28 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = *(a2 + 8);
      }

      if (v28 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(v31, v33, v34);
      v36 = v30 < v32;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (v36)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v49, &v48);
        v37 = *(a1 + 23);
        v38 = *(v49 + 23);
        if (v38 >= 0)
        {
          v39 = *(v49 + 23);
        }

        else
        {
          v39 = v49[1];
        }

        if (v38 >= 0)
        {
          v40 = v49;
        }

        else
        {
          v40 = *v49;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v37 >= 0)
        {
          v42 = a1;
        }

        else
        {
          v42 = *a1;
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v39 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (v45)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v50, &v49);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46 = a2;
  v47 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 48);
        v46 = (a2 - 48);
        v6 = *(a1 + 23);
        v7 = *(a2 - 25);
        if (v7 >= 0)
        {
          v8 = *(a2 - 25);
        }

        else
        {
          v8 = *(a2 - 40);
        }

        if (v7 >= 0)
        {
          v9 = (a2 - 48);
        }

        else
        {
          v9 = v5;
        }

        if (v6 >= 0)
        {
          v10 = *(a1 + 23);
        }

        else
        {
          v10 = *(a1 + 8);
        }

        if (v6 >= 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = *a1;
        }

        if (v10 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v10;
        }

        v13 = memcmp(v9, v11, v12);
        v14 = v8 < v10;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AttributeInfo *&,AttributeInfo *&>(&v47, &v46);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(a1, a1 + 48, a2 - 48);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(a1, a1 + 48, a1 + 96, a2 - 48);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(a1, a1 + 48, a1 + 96, a1 + 144, a2 - 48);
      return 1;
  }

LABEL_28:
  v15 = (a1 + 96);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,SVGAttributeMap::sorted(BOOL)::$_0 &,AttributeInfo *,0>(a1, a1 + 48, a1 + 96);
  v16 = (a1 + 144);
  if (v16 == v2)
  {
    return 1;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(v15 + 23);
    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = v16[1];
    }

    if (v19 >= 0)
    {
      v21 = v16;
    }

    else
    {
      v21 = *v16;
    }

    if (v18 >= 0)
    {
      v22 = *(v15 + 23);
    }

    else
    {
      v22 = v15[1];
    }

    if (v18 >= 0)
    {
      v23 = v15;
    }

    else
    {
      v23 = *v15;
    }

    if (v22 >= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v25 = memcmp(v21, v23, v24);
    v26 = v20 < v22;
    if (v25)
    {
      v26 = v25 < 0;
    }

    if (v26)
    {
      v42 = *v16;
      v43 = v16[2];
      *v16 = 0;
      v16[1] = 0;
      v27 = *(v16 + 3);
      v16[2] = 0;
      v16[3] = 0;
      v44 = v27;
      v45 = v16[5];
      v16[4] = 0;
      v16[5] = 0;
      do
      {
        v28 = v15;
        if (*(v15 + 71) < 0)
        {
          operator delete(v15[6]);
        }

        *(v15 + 3) = *v15;
        v15[8] = v15[2];
        *(v15 + 23) = 0;
        *v15 = 0;
        if (*(v15 + 95) < 0)
        {
          operator delete(v15[9]);
        }

        *(v15 + 9) = *(v15 + 3);
        v15[11] = v15[5];
        *(v15 + 47) = 0;
        *(v15 + 24) = 0;
        if (v15 == v47)
        {
          break;
        }

        v15 -= 6;
        v29 = *(v28 - 25);
        if (SHIBYTE(v43) >= 0)
        {
          v30 = HIBYTE(v43);
        }

        else
        {
          v30 = *(&v42 + 1);
        }

        if (SHIBYTE(v43) >= 0)
        {
          v31 = &v42;
        }

        else
        {
          v31 = v42;
        }

        if (v29 >= 0)
        {
          v32 = *(v28 - 25);
        }

        else
        {
          v32 = *(v28 - 5);
        }

        if (v29 >= 0)
        {
          v33 = v28 - 6;
        }

        else
        {
          v33 = *(v28 - 6);
        }

        if (v32 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v32;
        }

        v35 = memcmp(v31, v33, v34);
        v36 = v30 < v32;
        if (v35)
        {
          v36 = v35 < 0;
        }
      }

      while (v36);
      if (*(v28 + 23) < 0)
      {
        operator delete(*v28);
        v38 = *(v28 + 47);
        v39 = v43;
        *v28 = v42;
        v28[2] = v39;
        if (v38 < 0)
        {
          operator delete(v28[3]);
        }
      }

      else
      {
        v37 = v42;
        v28[2] = v43;
        *v28 = v37;
      }

      v40 = v44;
      v28[5] = v45;
      *(v28 + 3) = v40;
      ++v17;
      v2 = v46;
      if (v17 == 8)
      {
        break;
      }
    }

    v15 = v16;
    v16 += 6;
    if (v16 == v2)
    {
      return 1;
    }
  }

  return v16 + 6 == v46;
}

std::string *std::vector<AttributeInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<AttributeInfo*>,std::__wrap_iter<AttributeInfo*>>(uint64_t *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<AttributeInfo>::__move_range(a1, a2, a1[1], a2 + 48 * a5);
        v17 = &a3[(16 * v18) / 0x18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AttributeInfo>,AttributeInfo*,AttributeInfo*,AttributeInfo*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<AttributeInfo>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<AttributeInfo *,AttributeInfo *,AttributeInfo *>(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeInfo>>(a1, v15);
    }

    v20 = 0;
    v21 = 16 * (v13 >> 4);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<AttributeInfo>::__construct_at_end_with_size<std::__wrap_iter<AttributeInfo*>>(&v20, a3, a5);
    v5 = std::vector<AttributeInfo>::__swap_out_circular_buffer(a1, &v20, v5);
    std::__split_buffer<AttributeInfo>::~__split_buffer(&v20);
  }

  return v5;
}

uint64_t std::vector<AttributeInfo>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v9 += 48;
      v8 += 48;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AttributeInfo *,AttributeInfo *,AttributeInfo *>(&v13, a2, v7, v6);
}

void std::__split_buffer<AttributeInfo>::__construct_at_end_with_size<std::__wrap_iter<AttributeInfo*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 48 * a3;
    v8 = 48 * a3;
    do
    {
      v9 = (v4 + v6);
      v10 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *v10, *(v10 + 1));
      }

      else
      {
        v11 = *v10;
        v9->__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&v9->__r_.__value_.__l.__data_ = v11;
      }

      v12 = (v4 + v6);
      v13 = a2 + v6;
      if (*(a2 + v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v12 + 1, *(v13 + 24), *(v13 + 32));
      }

      else
      {
        v14 = *(v13 + 24);
        v12[1].__r_.__value_.__r.__words[2] = *(v13 + 40);
        *&v12[1].__r_.__value_.__l.__data_ = v14;
      }

      v6 += 48;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *(a1 + 16) = v7;
}

uint64_t std::vector<AttributeInfo>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AttributeInfo>,AttributeInfo*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AttributeInfo>,AttributeInfo*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<AttributeInfo>,AttributeInfo*,AttributeInfo*,AttributeInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      v6 += 3;
      v4 = v13 + 2;
      v13 += 2;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AttributeInfo>,AttributeInfo*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<AttributeInfo *,AttributeInfo *,AttributeInfo *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 48);
      if (*(a4 + v7 - 25) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 48);
      v11 = *v10;
      *(a4 + v7 - 32) = *(a3 + v7 - 32);
      *v9 = v11;
      *(a3 + v7 - 25) = 0;
      *v10 = 0;
      v12 = (v8 - 24);
      if (*(v8 - 1) < 0)
      {
        operator delete(*v12);
      }

      v13 = a3 + v7;
      v14 = *(a3 + v7 - 24);
      *(v8 - 8) = *(a3 + v7 - 8);
      *v12 = v14;
      *(v13 - 1) = 0;
      *(v13 - 24) = 0;
      v7 -= 48;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<AttributeInfo *,AttributeInfo *,AttributeInfo *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<AttributeInfo>::__init_with_size[abi:ne200100]<AttributeInfo*,AttributeInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AttributeInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DF127D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<AttributeInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<AttributeInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeInfo>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

double SVGColor::at(SVGColor *this, int a2)
{
  result = 0.0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      this = (this + 16);
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      this = (this + 24);
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    this = (this + 8);
  }

  return *this;
}

double *SVGColor::setAt(double *this, int a2, double a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      this += 2;
    }

    else
    {
      if (a2 != 3)
      {
        return this;
      }

      this += 3;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return this;
    }

    ++this;
  }

  *this = a3;
  return this;
}

void SVGColor::SVGColor(SVGColor *this, unsigned int a2)
{
  *(this + 8) = 20003;
  v2 = vand_s8(vshl_u32(vdup_n_s32(a2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v3.i64[0] = v2.u32[0];
  v3.i64[1] = v2.u32[1];
  *this = vdivq_f64(vcvtq_f64_u64(v3), vdupq_n_s64(0x406FE00000000000uLL));
  *(this + 2) = a2 / 255.0;
  *(this + 3) = 0x3FF0000000000000;
}

void SVGColor::SVGColor(SVGColor *this, double *a2)
{
  *(this + 8) = 20003;
  *this = *a2;
  *(this + 1) = a2[1];
  *(this + 2) = a2[2];
  *(this + 3) = a2[3];
}

BOOL SVGColor::isEqual(SVGColor *this, const SVGColor *a2)
{
  v4 = SVGUtilities::CGFloatEqualToFloat(this, *this, *a2);
  if (!v4)
  {
    return 0;
  }

  v5 = SVGUtilities::CGFloatEqualToFloat(v4, *(this + 1), *(a2 + 1));
  if (!v5)
  {
    return 0;
  }

  v6 = SVGUtilities::CGFloatEqualToFloat(v5, *(this + 2), *(a2 + 2));
  if (!v6)
  {
    return 0;
  }

  v7 = *(this + 3);
  v8 = *(a2 + 3);

  return SVGUtilities::CGFloatEqualToFloat(v6, v7, v8);
}

void SVGColor::GetStringForColor(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SVGUtilities::CGFloatClamp(a1, *a1 * 255.0, 0.0, 255.0);
  v6 = SVGUtilities::CGFloatClamp(v5, *(a1 + 8) * 255.0, 0.0, 255.0);
  v8 = SVGUtilities::CGFloatClamp(v7, *(a1 + 16) * 255.0, 0.0, 255.0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v10 = SVGUtilities::CGFloatEqualToFloat(v9, *(a1 + 24), 1.0);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  if (v10)
  {
    v15 = *a1;
    v14 = *(a1 + 8);
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = *(a1 + 32);
    if (NameToColorMap(void)::__onceToken != -1)
    {
      SVGColor::GetStringForColor();
    }

    if (v18 != 53)
    {
      goto LABEL_14;
    }

    v19 = NameToColorMap(void)::__colorMap;
    v20 = SVGUtilities::CGFloatEqualToFloat(v10, v16, 1.0);
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = SVGUtilities::CGFloatClamp(v20, v15 * 255.0, 0.0, 255.0);
    v23 = SVGUtilities::CGFloatClamp(v22, v14 * 255.0, 0.0, 255.0);
    v25 = SVGUtilities::CGFloatClamp(v24, v17 * 255.0, 0.0, 255.0);
    v28 = *v19;
    v27 = v19 + 1;
    v26 = v28;
    if (v28 == v27)
    {
      goto LABEL_14;
    }

    while (*(v26 + 14) != ((v23 << 8) | (v21 << 16) | v25))
    {
      v29 = v26[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v26[2];
          v31 = *v30 == v26;
          v26 = v30;
        }

        while (!v31);
      }

      v26 = v30;
      if (v30 == v27)
      {
        goto LABEL_14;
      }
    }

    v32 = (v26 + 4);
    if ((*(v26 + 55) & 0x80000000) == 0 || (v32 = *v32) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v33, v32);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }
    }

    else
    {
LABEL_14:
      SVGParser::FormatString("#%02x%02x%02x", &v33, v11, v12, v13);
    }

    goto LABEL_17;
  }

  if (*(a1 + 24) > 0.0)
  {
    SVGParser::FormatString("rgba(%d,%d,%d,%g)", &v33, v4, v6, v8, *(a1 + 24));
LABEL_17:
    *a2 = v33;
    *(a2 + 16) = v34;
    return;
  }

  MEMORY[0x1E12CE540](a2, "none");
}

void sub_1DF12813C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t ReadColorValues(SVGParser *a1, SVGColor *a2, double a3)
{
  v6 = 0;
  v32 = *MEMORY[0x1E69E9840];
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = ReadColorValues(char const*,SVGColor *,double)::kColorSpaceNames[v6];
    v10 = SVGAtom::ToString(v9);
    if (SVGParser::StringBeginsWith(a1, v10, v11))
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  *(a2 + 8) = v9;
  a1 = (a1 + strlen(v10));
  for (i = *a1; (SVGParser::IsDigitCharacter(i) & 1) == 0 && *a1; i = v16)
  {
    v16 = *(a1 + 1);
    a1 = (a1 + 1);
  }

LABEL_4:
  __p = 0;
  v29 = 0;
  v30 = 0;
  SVGParser::GetSeparatedWhitespaceComponents(a1, &__p, 0);
  v13 = __p;
  v12 = v29;
  if ((((v29 - __p) >> 3) - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_34;
  }

  if (__p != v29)
  {
    v17 = 0;
    while (1)
    {
      if ((SVGParser::StripLeadingTrailingWhitespace((a1 + *v13), v13[1], v31, 0x40) & 1) == 0)
      {
        goto LABEL_5;
      }

      v27 = 1.0;
      v26 = 0;
      v25 = 0;
      v18 = SVGParser::ParseCGFloat(v31, &v27, &v25, &v26);
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      v19 = 1.0;
      if (v27 < 0.0 || v27 > 1.0 || v26 != 0)
      {
        v19 = a3;
        if (v25)
        {
          v19 = 100.0;
          if (*v25 != 37)
          {
            v19 = a3;
          }
        }
      }

      v22 = SVGUtilities::CGFloatClamp(v18, v27 / v19, 0.0, 1.0);
      if (v17 <= 1)
      {
        break;
      }

      v23 = (a2 + 16);
      if (v17 == 2)
      {
        goto LABEL_31;
      }

      if (v17 == 3)
      {
        v23 = (a2 + 24);
LABEL_31:
        *v23 = v22;
      }

LABEL_32:
      v13 += 2;
      ++v17;
      if (v13 == v12)
      {
        goto LABEL_33;
      }
    }

    v23 = a2;
    if (v17)
    {
      v23 = (a2 + 8);
      if (v17 != 1)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

LABEL_33:
  v14 = 1;
LABEL_34:
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_1DF128400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGPattern::SVGPattern(SVGPattern *this)
{
  v2 = 7;
  strcpy(__p, "pattern");
  SVGViewBoxNode::SVGViewBoxNode(this, __p);
}

void sub_1DF1284C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SVGPattern::~SVGPattern(SVGPattern *this)
{
  SVGMask::~SVGMask(this);

  JUMPOUT(0x1E12CE5D0);
}

uint64_t SVGPattern::print(SVGPattern *this, const char *a2)
{
  SVGUtilities::print("\n", a2);
  v4 = SVGUtilities::print("Pattern: Size: {%.2f, %.2f} Viewbox: ", v3, *(this + 28), *(this + 29));
  SVGUtilities::printIgnoringIndentation(v4, *(this + 240));

  return SVGUtilities::print("\n", v5);
}

uint64_t SVGPattern::inheritParentPattern(SVGPattern *this)
{
  v2 = *(*(this + 35) + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN10SVGPattern20inheritParentPatternEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_2;
  v9[4] = this;
  SVGAttributeMap::enumerate(v2, v9);
  if (*(this + 12) == *(this + 11))
  {
    v4 = *(this + 35);
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    while (v5 != v6)
    {
      v7 = *v5++;
      v8 = (*(*v7 + 16))(v7);
      SVGNode::addChild(this, v8);
      CFRetained::release(v8);
    }
  }

  return (*(*this + 24))(this, *(this + 7));
}

uint64_t ___ZN10SVGPattern20inheritParentPatternEv_block_invoke(uint64_t a1, unsigned int a2)
{
  result = SVGAttributeMap::hasAttribute(*(*(a1 + 32) + 56), a2);
  if ((result & 1) == 0)
  {
    operator new();
  }

  return result;
}

__n128 SVGPattern::drawCells(SVGPattern *this, CGContextRef c, CGRect a3, CGFloat a4)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (*(this + 289) == 1)
  {

    CGContextFillRect(c, a3);
  }

  else
  {
    *(this + 289) = 1;
    IsUserSpace = SVGPattern::attributeIsUserSpace(this, 0x50u, 0);
    v12 = (this + 208);
    v13 = *(this + 26);
    if (IsUserSpace)
    {
      v15 = *(this + 27);
      v14 = *(this + 28);
      v16 = *(this + 29);
    }

    else
    {
      v13 = width * v13;
      v15 = height * *(this + 27);
      v14 = width * *(this + 28);
      v16 = height * *(this + 29);
    }

    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v28.a = *MEMORY[0x1E695EFD0];
    *&v28.c = v17;
    *&v28.tx = *(MEMORY[0x1E695EFD0] + 32);
    v18 = SVGAttributeMap::attribute(*(this + 7), 0x52u);
    if (v18)
    {
      SVGAttribute::transformValue(v18, &v28);
    }

    v27 = *v12;
    v26 = *(this + 14);
    *(this + 26) = v13;
    *(this + 27) = v15;
    *(this + 28) = v14;
    *(this + 29) = v16;
    *(this + 37) = width;
    *(this + 38) = height;
    *&callbacks.version = 0;
    callbacks.drawPattern = SVGPattern::drawCells(CGContext *,CGRect,double)::$_0::__invoke;
    callbacks.releaseInfo = 0;
    t1 = v28;
    memset(&v24, 0, sizeof(v24));
    CGContextGetCTM(&t2, c);
    CGAffineTransformConcat(&v24, &t1, &t2);
    t1 = v24;
    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v14;
    v30.size.height = v16;
    v19 = CGPatternCreate(this, v30, &t1, v14, v16, kCGPatternTilingConstantSpacingMinimalDistortion, 1, &callbacks);
    Pattern = CGColorSpaceCreatePattern(0);
    CGContextSetFillColorSpace(c, Pattern);
    t1.a = a4;
    CGContextSetFillPattern(c, v19, &t1.a);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    CGContextFillRect(c, v31);
    CGColorSpaceRelease(Pattern);
    CGPatternRelease(v19);
    *v12 = v27;
    *(this + 14) = v26;
    result = *MEMORY[0x1E695F060];
    *(this + 296) = *MEMORY[0x1E695F060];
    *(this + 289) = 0;
  }

  return result;
}

uint64_t SVGPattern::attributeIsUserSpace(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = SVGAttributeMap::attribute(*(a1 + 56), a2);
  if (!v4)
  {
    return a3;
  }

  v5 = SVGAttribute::stringValue(v4);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    __p.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 14 || (*__p.__r_.__value_.__l.__data_ == 0x6361705372657375 ? (v7 = *(__p.__r_.__value_.__r.__words[0] + 6) == 0x6573556E4F656361) : (v7 = 0), !v7))
    {
      if (__p.__r_.__value_.__l.__size_ == 17)
      {
        v8 = 0x6F626A656374426FLL;
        v9 = bswap64(*__p.__r_.__value_.__l.__data_);
        if (v9 == 0x6F626A656374426FLL && (v8 = 0x756E64696E67426FLL, v9 = bswap64(*(__p.__r_.__value_.__r.__words[0] + 8)), v9 == 0x756E64696E67426FLL))
        {
          v10 = *(__p.__r_.__value_.__r.__words[0] + 16) - 120;
        }

        else if (v9 < v8)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v10)
        {
          return 0;
        }
      }

      else
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return a3;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    return 1;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 14)
  {
    if (__p.__r_.__value_.__r.__words[0] != 0x6361705372657375 || *(__p.__r_.__value_.__r.__words + 6) != 0x6573556E4F656361)
    {
      return a3;
    }

    return 1;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 17 && bswap64(__p.__r_.__value_.__r.__words[0]) == 0x6F626A656374426FLL && bswap64(__p.__r_.__value_.__l.__size_) == 0x756E64696E67426FLL && __p.__r_.__value_.__s.__data_[16] == 120)
  {
    return 0;
  }

  return a3;
}

void SVGPattern::draw(SVGPattern *this, CGContext *a2)
{
  if (*(this + 32) <= 0.0 && *(this + 33) <= 0.0 && (SVGPattern::attributeIsUserSpace(this, 0x51u, 1) & 1) == 0)
  {
    v4 = *(this + 37);
    v5 = *(this + 38);

    CGContextScaleCTM(a2, v4, v5);
  }
}

uint64_t SVGPattern::updatedSpecificAttribute(double *a1, signed int a2, uint64_t a3)
{
  result = 0;
  if (a2 > 66)
  {
    if (a2 == 70)
    {
      CGSVGLengthMake();
      v21 = v16;
      v22 = v17;
      if (SVGAttribute::lengthValue(a3, &v21))
      {
        v18 = v21;
        if (v22 == 1)
        {
          v18 = v21 / 100.0;
        }

        a1[27] = v18;
        return 1;
      }
    }

    else
    {
      if (a2 != 67)
      {
        return result;
      }

      CGSVGLengthMake();
      v21 = v10;
      v22 = v11;
      if (SVGAttribute::lengthValue(a3, &v21))
      {
        v12 = v21;
        if (v22 == 1)
        {
          v12 = v21 / 100.0;
        }

        a1[26] = v12;
        return 1;
      }
    }
  }

  else if (a2 == 30)
  {
    CGSVGLengthMake();
    v21 = v13;
    v22 = v14;
    if (SVGAttribute::lengthValue(a3, &v21))
    {
      v15 = v21;
      if (v22 == 1)
      {
        v15 = v21 / 100.0;
      }

      a1[29] = v15;
      return 1;
    }
  }

  else
  {
    if (a2 != 66)
    {
      return result;
    }

    CGSVGLengthMake();
    v21 = v7;
    v22 = v8;
    if (SVGAttribute::lengthValue(a3, &v21))
    {
      v9 = v21;
      if (v22 == 1)
      {
        v9 = v21 / 100.0;
      }

      a1[28] = v9;
      return 1;
    }
  }

  v19 = SVGAtom::ToString(a2);
  SVGUtilities::error("Failed to parse %s for node name pattern", v20, v19);
  return 1;
}

uint64_t CGSVGGradientStopGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGGradientStop::kSVGGradientStopClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF128F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGGradientStopRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGGradientStopRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void CGSVGGradientStopGetColor(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  CGSVGGradientStopGetColorAllowUntagged(a1, a2, a3);
  if (*(a3 + 32) == 3)
  {
    *(a3 + 32) = 0;
  }
}

void CGSVGGradientStopGetColorAllowUntagged(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = CFRetained::getObject<SVGGradientStop>(a1, a2);
  if (v4)
  {
    SVGColor::SVGColor(v7, v4 + 48);
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

void *CFRetained::getObject<SVGGradientStop>(uint64_t a1, const char *a2)
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

double CGSVGGradientStopGetOpacity(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGGradientStop>(a1, a2);
  if (v2)
  {
    return v2[11];
  }

  else
  {
    return 1.0;
  }
}

void CGSVGGradientStopGetOffset(uint64_t a1, const char *a2)
{
  if (!CFRetained::getObject<SVGGradientStop>(a1, a2))
  {

    CGSVGLengthMake();
  }
}

uint64_t CGSVGGradientGetTypeID()
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGNode::kSVGNodeClassName);
  TypeID = CFRetained::getTypeID(__p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  return TypeID;
}

void sub_1DF129244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGGradientRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGGradientRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGSVGGradientGetType(uint64_t a1, const char *a2)
{
  v2 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v2)
  {
    return v2[52];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *CFRetained::getObject<SVGGradient>(uint64_t a1, const char *a2)
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

SVGGradientStop *CGSVGGradientAddStop(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGGradient>(a1, a2);
  result = CFRetained::getObject<SVGGradientStop>(a2, v4);
  if (v3 && result)
  {

    return SVGGradient::addStop(v3, result);
  }

  return result;
}

void *CGSVGGradientGetNumberOfStops(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    return ((result[28] - result[27]) >> 3);
  }

  return result;
}

void *CGSVGGradientGetStop(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    v4 = result[27];
    if (a2 >= (result[28] - v4) >> 3)
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

void CGSVGGradientGetStart(uint64_t a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v4)
  {
    v5 = v4[16];
    *a3 = v4[15];
    a3[1] = v5;
  }

  else
  {

    CGSVGPointMake(a3, 0.0, 0.0);
  }
}

__n128 CGSVGGradientSetStart(uint64_t a1, uint64_t a2)
{
  v3 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    v3[15] = *a2;
    v3[16] = v5;
  }

  return result;
}

void CGSVGGradientGetEnd(uint64_t a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v4)
  {
    v5 = v4[18];
    *a3 = v4[17];
    a3[1] = v5;
  }

  else
  {

    CGSVGPointMake(a3, 0.0, 0.0);
  }
}

__n128 CGSVGGradientSetEnd(uint64_t a1, uint64_t a2)
{
  v3 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    v3[17] = *a2;
    v3[18] = v5;
  }

  return result;
}

void CGSVGGradientGetCenter(uint64_t a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v4)
  {
    v5 = v4[20];
    *a3 = v4[19];
    a3[1] = v5;
  }

  else
  {

    CGSVGPointMake(a3, 0.0, 0.0);
  }
}

__n128 CGSVGGradientSetCenter(uint64_t a1, uint64_t a2)
{
  v3 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    v3[19] = *a2;
    v3[20] = v5;
  }

  return result;
}

void CGSVGGradientGetFocal(uint64_t a1@<X0>, const char *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v4)
  {
    v5 = v4[22];
    *a3 = v4[21];
    a3[1] = v5;
  }

  else
  {

    CGSVGPointMake(a3, 0.0, 0.0);
  }
}

__n128 CGSVGGradientSetFocal(uint64_t a1, uint64_t a2)
{
  v3 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 16);
    v3[21] = *a2;
    v3[22] = v5;
  }

  return result;
}

void CGSVGGradientGetRadius(uint64_t a1, const char *a2)
{
  if (!CFRetained::getObject<SVGGradient>(a1, a2))
  {

    CGSVGLengthMake();
  }
}

void *CGSVGGradientSetRadius(uint64_t a1, const char *a2, uint64_t a3)
{
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    result[46] = a2;
    result[47] = a3;
  }

  return result;
}

unsigned int *CGSVGGradientGetSpreadMethod(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    return result[96];
  }

  return result;
}

_DWORD *CGSVGGradientSetSpreadMethod(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    result[96] = v2;
  }

  return result;
}

__n128 CGSVGGradientGetGradientTransform@<Q0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v4)
  {
    v5 = v4 + 392;
  }

  else
  {
    v5 = MEMORY[0x1E695EFD0];
  }

  v6 = *(v5 + 1);
  *a3 = *v5;
  *(a3 + 16) = v6;
  result = *(v5 + 2);
  *(a3 + 32) = result;
  return result;
}

__n128 CGSVGGradientSetGradientTransform(uint64_t a1, uint64_t a2)
{
  v3 = CFRetained::getObject<SVGGradient>(a1, a2);
  if (v3)
  {
    result = *a2;
    v5 = *(a2 + 32);
    *(v3 + 408) = *(a2 + 16);
    *(v3 + 424) = v5;
    *(v3 + 392) = result;
  }

  return result;
}

unsigned int *CGSVGGradientGetSpread(uint64_t a1, const char *a2)
{
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    return result[96];
  }

  return result;
}

_DWORD *CGSVGGradientSetSpread(uint64_t a1, const char *a2)
{
  v2 = a2;
  result = CFRetained::getObject<SVGGradient>(a1, a2);
  if (result)
  {
    result[96] = v2;
  }

  return result;
}

uint64_t CGSVGMaskGetTypeID()
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

void sub_1DF129904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef CGSVGMaskRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CGSVGMaskRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CGImageRef CGSVGMaskCreateMask(uint64_t a1, const char *a2)
{
  v3 = CFRetained::getObject<SVGMask>(a1, a2);
  v5 = CFRetained::getObject<SVGNode>(a2, v4);
  if (!v3 || !v5)
  {
    return 0;
  }

  return SVGMask::createMask(v3, v5);
}

void *CFRetained::getObject<SVGMask>(uint64_t a1, const char *a2)
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

void SVGPathCommand::SVGPathCommand(SVGPathCommand *this, const SVGPathCommand *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPathCommand::kSVGPathCommandClassName);
  CFRetained::CFRetained(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A440C8;
  *(this + 12) = *(a2 + 12);
  *(this + 7) = 0;
  if (*(a2 + 7))
  {
    operator new();
  }
}

void sub_1DF129B8C(_Unwind_Exception *a1)
{
  MEMORY[0x1E12CE5D0](v2, 0x80C40D6874129);
  *v1 = &unk_1F5A44010;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void SVGPathCommand::appendPoint(SVGPathCommand *this, CGPoint a2)
{
  v4 = a2;
  v3 = *(this + 7);
  if (!v3)
  {
    SVGPathCommand::appendPoint();
  }

  std::vector<double>::push_back[abi:ne200100](v3, &v4);
  std::vector<double>::push_back[abi:ne200100](*(this + 7), &v4.y);
}

void SVGPathCommand::appendPoints(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!*(a1 + 56))
  {
    SVGPathCommand::appendPoints();
  }

  for (i = a3; i != a4; i += 2)
  {
    std::vector<double>::push_back[abi:ne200100](*(a1 + 56), i);
    std::vector<double>::push_back[abi:ne200100](*(a1 + 56), i + 1);
  }
}

void SVGPath::SVGPath(SVGPath *this, const SVGPath *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, SVGPath::kSVGPathClassName);
  CFRetained::CFRetained(this, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5A440E8;
  v4 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = *MEMORY[0x1E695EFD0];
  *(this + 6) = *(MEMORY[0x1E695EFD0] + 16);
  *(this + 7) = v4;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = v5;
  *(this + 32) = 0;
  if (*(a2 + 6) != *(a2 + 7))
  {
    operator new();
  }
}

void sub_1DF129E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void SVGPath::appendCommands(SVGPath *this, const SVGPath *a2)
{
  if (*(a2 + 6) != *(a2 + 7))
  {
    operator new();
  }
}

double SVGPath::boundingBox(SVGPath *this)
{
  CGPath = SVGPath::copyCachedCGPath(this);
  if (!CGPath)
  {
    CGPath = CGSVGPathCreateCGPath(*(this + 5), v3);
  }

  v4 = CGPath;
  *&v5 = CGPathGetBoundingBox(CGPath);
  CGPathRelease(v4);
  return v5;
}

void SVGPath::createStringRepresentation(SVGPath *this@<X0>, std::string *a2@<X8>)
{
  memset(&v22, 0, sizeof(v22));
  v3 = *(this + 6);
  v4 = *(this + 7);
  if (v3 == v4)
  {
    goto LABEL_42;
  }

  do
  {
    v5 = *(*v3 + 56);
    if (v5)
    {
      v6 = *v5;
      v7 = (*(v5 + 8) - *v5) >> 3;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = *(*v3 + 48);
    size = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v22.__r_.__value_.__l.__size_;
      if (!v22.__r_.__value_.__l.__size_)
      {
        goto LABEL_12;
      }

      v10 = *(v22.__r_.__value_.__r.__words[0] + v22.__r_.__value_.__l.__size_ - 1);
    }

    else
    {
      if (!*(&v22.__r_.__value_.__s + 23))
      {
        goto LABEL_12;
      }

      v10 = *(&v21 + SHIBYTE(v22.__r_.__value_.__r.__words[2]));
    }

    if (v10 == 32)
    {
      std::string::resize(&v22, size - 1, 0);
    }

LABEL_12:
    SVGParser::FormatString("%c", &__p, v8);
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v20;
    }

    std::string::append(&v22, p_p, v12);
    if (v21 < 0)
    {
      operator delete(__p);
      if (!v7)
      {
        goto LABEL_37;
      }

      while (1)
      {
LABEL_20:
        v13 = *v6;
        if (*v6 < 0.0)
        {
          v14 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v14 = v22.__r_.__value_.__l.__size_;
            if (v22.__r_.__value_.__l.__size_)
            {
              v15 = *(v22.__r_.__value_.__r.__words[0] + v22.__r_.__value_.__l.__size_ - 1);
LABEL_26:
              if (v15 == 32)
              {
                std::string::resize(&v22, v14 - 1, 0);
                v13 = *v6;
              }
            }
          }

          else if (*(&v22.__r_.__value_.__s + 23))
          {
            v15 = *(&v21 + SHIBYTE(v22.__r_.__value_.__r.__words[2]));
            goto LABEL_26;
          }
        }

        SVGParser::FormatString("%g ", &__p, *&v13);
        if ((v21 & 0x80u) == 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p;
        }

        if ((v21 & 0x80u) == 0)
        {
          v17 = v21;
        }

        else
        {
          v17 = v20;
        }

        std::string::append(&v22, v16, v17);
        if (v21 < 0)
        {
          operator delete(__p);
        }

        ++v6;
        if (!--v7)
        {
          goto LABEL_37;
        }
      }
    }

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_37:
    v3 += 8;
  }

  while (v3 != v4);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_42:
    v18 = v22;
    goto LABEL_44;
  }

  std::string::__init_copy_ctor_external(&v18, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
LABEL_44:
  SVGParser::StripLeadingTrailingWhitespace(&v18, a2);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1DF12A1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SVGPath::print(uint64_t this)
{
  v1 = *(this + 48);
  v2 = *(this + 56);
  if (v1 != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(*v1 + 56);
      if (v4)
      {
        v5 = *v4;
        v6 = (*(v4 + 8) - *v4) >> 3;
      }

      else
      {
        v6 = 0;
        v5 = 0;
      }

      printf("Command %d, %ld floats, type %c:\n    ", v3, v6, *(*v1 + 48));
      for (; v6; --v6)
      {
        v7 = *v5++;
        printf("%f ", v7);
      }

      ++v3;
      this = putchar(10);
      v1 += 8;
    }

    while (v1 != v2);
  }

  return this;
}

void SVGCanvas::SVGCanvas(SVGCanvas *this, const SVGDocument *a2)
{
  v4 = strlen(SVGCanvas::kSVGCanvasClassName);
  if (v4 < 0x7FFFFFFFFFFFFFF8)
  {
    v5 = v4;
    if (v4 < 0x17)
    {
      v7 = v4;
      if (v4)
      {
        memmove(&__dst, SVGCanvas::kSVGCanvasClassName, v4);
      }

      *(&__dst + v5) = 0;
      CFRetained::CFRetained(this, &__dst);
      if (v7 < 0)
      {
        operator delete(__dst);
      }

      *this = &unk_1F5A44138;
      *(this + 7) = 0;
      *(this + 8) = 0;
      *(this + 9) = 0;
      *(this + 6) = a2;
      std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(this + 56, 1uLL);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_1DF12A474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 64) = v18;
    operator delete(v18);
  }

  *v15 = &unk_1F5A44010;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

void SVGCanvas::~SVGCanvas(SVGCanvas *this)
{
  *this = &unk_1F5A44138;
  if (!*(this + 6))
  {
    v2 = *(this + 7);
    if (*(this + 8) == v2)
    {
      std::vector<double>::__throw_out_of_range[abi:ne200100]();
    }

    CFRetained::release(*v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  *this = &unk_1F5A44010;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SVGCanvas::~SVGCanvas(this);

  JUMPOUT(0x1E12CE5D0);
}

uint64_t SVGCanvas::popGroup(uint64_t this)
{
  v1 = *(this + 64);
  if ((v1 - *(this + 56)) >= 9)
  {
    *(this + 64) = v1 - 8;
  }

  return this;
}

uint64_t SVGCanvas::rootNode(SVGCanvas *this)
{
  v1 = *(this + 7);
  if (*(this + 8) == v1)
  {
    std::vector<double>::__throw_out_of_range[abi:ne200100]();
  }

  return *v1;
}

void SVGMask::~SVGMask(SVGMask *this, CFRetained *a2)
{
  SVGNode::~SVGNode(this, a2);

  JUMPOUT(0x1E12CE5D0);
}

void SVGMask::updatedAttributes(SVGMask *this, SVGAttributeMap *a2)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3802000000;
  v45 = __Block_byref_object_copy__0;
  v47 = 0;
  v48 = 0;
  v46 = __Block_byref_object_dispose__0;
  CGSVGLengthMakeWithType();
  v47 = v4;
  v48 = v5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3802000000;
  v38 = __Block_byref_object_copy__0;
  v40 = 0;
  v41 = 0;
  v39 = __Block_byref_object_dispose__0;
  CGSVGLengthMakeWithType();
  v40 = v6;
  v41 = v7;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3802000000;
  v31 = __Block_byref_object_copy__0;
  v33 = 0;
  v34 = 0;
  v32 = __Block_byref_object_dispose__0;
  CGSVGLengthMakeWithType();
  v33 = v8;
  v34 = v9;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3802000000;
  v24 = __Block_byref_object_copy__0;
  v26 = 0;
  v27 = 0;
  v25 = __Block_byref_object_dispose__0;
  CGSVGLengthMakeWithType();
  v26 = v10;
  v27 = v11;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZN7SVGMask17updatedAttributesEP15SVGAttributeMap_block_invoke;
  v12[3] = &unk_1E86AAA70;
  v12[4] = &v42;
  v12[5] = &v35;
  v12[6] = &v28;
  v12[7] = &v21;
  v12[8] = &v17;
  v12[9] = &v13;
  SVGAttributeMap::enumerate(a2, v12);
  *(this + 26) = CGSVGLengthScaledLength(v43[5], v43[6], 1.0);
  *(this + 27) = CGSVGLengthScaledLength(v36[5], v36[6], 1.0);
  *(this + 28) = CGSVGLengthScaledLength(v29[5], v29[6], 1.0);
  *(this + 29) = CGSVGLengthScaledLength(v22[5], v22[6], 1.0);
  *(this + 60) = *(v18 + 6);
  *(this + 61) = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v42, 8);
}

void sub_1DF12B0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 120), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void ___ZN7SVGMask17updatedAttributesEP15SVGAttributeMap_block_invoke(void *a1, int a2, SVGAttribute *this)
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
    if ((SVGAttribute::lengthValue(this, *(v6 + 8) + 40) & 1) == 0)
    {
      v9 = SVGAtom::ToString(*(this + 12));
      SVGUtilities::error("SVGMask: Attribute parse error: %s", v10, v9);
    }

    return;
  }

  switch(v5)
  {
    case 'L':
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
    case 'K':
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

CGImageRef SVGMask::createMask(SVGMask *this, SVGNode *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(this + 280))
  {
    return 0;
  }

  *(this + 280) = 1;
  v7 = (*(*a2 + 32))(a2, 0);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = *(this + 26);
  if (*(this + 60))
  {
    v12 = *(this + 27);
    v13 = *(this + 28);
    v14 = *(this + 29);
  }

  else
  {
    v11 = v7 + v11 * v5;
    v12 = v4 + *(this + 27) * v6;
    v13 = v5 * *(this + 28);
    v14 = v6 * *(this + 29);
  }

  v2 = 0;
  *(this + 31) = v11;
  *(this + 32) = v12;
  *(this + 33) = v13;
  *(this + 34) = v14;
  if (v13 != 0.0 && v14 != 0.0)
  {
    v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v15)
    {
      v16 = CGBitmapContextCreate(0, v13, v14, 8uLL, 0, v15, 1u);
      v17 = v16;
      if (v16)
      {
        CGContextTranslateCTM(v16, -*(this + 31), -*(this + 32));
        if (!*(this + 61))
        {
          v25.c = 0.0;
          *&v25.a = *&v9;
          v25.d = v10;
          v25.tx = v7;
          v25.ty = v8;
          CGContextConcatCTM(v17, &v25);
        }

        SVGUtilities::CGContextDrawSVGDefinitionNode(v17, *(this + 5), 0);
      }
    }

    else
    {
      v17 = 0;
    }

    CGColorSpaceRelease(v15);
    Image = CGBitmapContextCreateImage(v17);
    CGContextRelease(v17);
    v19 = malloc_type_calloc((v14 * ((v13 * 8.0 + 7.0) * 0.125)), 1uLL, 0x100004077774924uLL);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    if (DeviceGray)
    {
      v21 = CGBitmapContextCreate(v19, v13, v14, 8uLL, ((v13 * 8.0 + 7.0) * 0.125), DeviceGray, 0);
      v22 = v21;
      if (v21)
      {
        v27.origin.x = 0.0;
        v27.origin.y = 0.0;
        v27.size.width = v13;
        v27.size.height = v14;
        CGContextDrawImage(v21, v27, Image);
      }
    }

    else
    {
      v22 = 0;
    }

    CGColorSpaceRelease(DeviceGray);
    CGImageRelease(Image);
    v23 = CGDataProviderCreateWithData(v19, v19, (v14 * ((v13 * 8.0 + 7.0) * 0.125)), ReleaseCallbackForMaskData);
    *&v25.a = xmmword_1DF145190;
    v2 = CGImageMaskCreate(v13, v14, 8uLL, 8uLL, ((v13 * 8.0 + 7.0) * 0.125), v23, &v25.a, 0);
    CGDataProviderRelease(v23);
    CGContextRelease(v22);
    *(this + 280) = 0;
  }

  return v2;
}

void ReleaseCallbackForMaskData(void *a1, const void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t SVGMask::print(SVGMask *this)
{
  v2 = this + 64;
  if (*(this + 87) < 0)
  {
    v2 = *v2;
  }

  printf("Node: %s \n", v2);
  if (*(this + 60) == 1)
  {
    v3 = "userSpaceOnUse : true [non default]";
  }

  else
  {
    v3 = "objectBoundingBox: true [default]";
  }

  printf("maskUnits: %s\n", v3);
  if (*(this + 61))
  {
    v4 = "userSpaceOnUse: true [default]";
  }

  else
  {
    v4 = "objectBoundingBox : true [non default]";
  }

  printf("maskContentUnits: %s\n", v4);
  SVGAttributeMap::print(*(this + 7));
  result = puts("\nMasking Nodes: ");
  v7 = *(this + 11);
  v6 = *(this + 12);
  while (v7 != v6)
  {
    v8 = *v7++;
    result = (*(*v8 + 48))(v8);
  }

  return result;
}

uint64_t SVGMask::printWithNodeToMask(uint64_t a1, uint64_t a2)
{
  puts("\nNodeToMask:");
  (*(*a2 + 48))(a2);
  v4 = (*(*a2 + 32))(a2, 0);
  printf("Node to mask bounding box: %g %g %g %g\n\n", v4, v5, v6, v7);
  v8 = *(*a1 + 48);

  return v8(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::string,SVGAttributeMap *>,std::__map_value_compare<std::string,std::__value_type<std::string,SVGAttributeMap *>,CaseInsensitiveStringLess,true>,std::allocator<std::__value_type<std::string,SVGAttributeMap *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<SVGAtom::Name,SVGAttribute *>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,SVGAttribute *>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,SVGAttribute *>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

BOOL SVGDocument::read(SVGDocument *this, const char *a2, SVGReaderOptions *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!CFStringHasSuffix(v6, @"file://"))
  {
    v8 = CFStringCreateWithFormat(v5, 0, @"file://%@", v7);
    CFRelease(v7);
    v7 = v8;
  }

  v9 = CFURLCreateWithString(v5, v7, 0);
  CFRelease(v7);
  v10 = SVGDocument::read(this, v9, a3);
  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

BOOL SVGDocument::read(SVGDocument *this, CFURLRef url, SVGReaderOptions *a3)
{
  v3 = a3;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &v13;
  }

  if (v6[6] < 1)
  {
    if (!a3)
    {
      v3 = &v13;
    }

    v9 = *(v3 + 2);
    if (v9)
    {
      CFRelease(v9);
    }

    *(v3 + 2) = 0;
  }

  else
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], url);
    v8 = &v13;
    if (v3)
    {
      v8 = v3;
    }

    *(v8 + 2) = PathComponent;
  }

  CFDataWithContentsOfURL = CreateCFDataWithContentsOfURL(url);
  v11 = SVGDocument::read(this, CFDataWithContentsOfURL, v6);
  if (CFDataWithContentsOfURL)
  {
    CFRelease(CFDataWithContentsOfURL);
  }

  SVGReaderOptions::~SVGReaderOptions(&v13);
  return v11;
}

void sub_1DF12BADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SVGReaderOptions::~SVGReaderOptions(va);
  _Unwind_Resume(a1);
}

BOOL SVGDocument::checkProfileSettings(SVGDocument *this, CFDataRef theData)
{
  v85 = *MEMORY[0x1E69E9840];
  if (CFDataGetLength(theData) < 32001)
  {
    LODWORD(v69) = 105;
    std::string::basic_string[abi:ne200100]<0>(&v70, "http://www.w3.org/2000/svg");
    v73 = 64;
    std::string::basic_string[abi:ne200100]<0>(v74, "1.2");
    v75 = 106;
    std::string::basic_string[abi:ne200100]<0>(v76, "tiny-ps");
    std::map<SVGAtom::Name,std::string>::map[abi:ne200100](&v67, &v69, 3);
    for (i = 0; i != -96; i -= 32)
    {
      if (v76[i + 23] < 0)
      {
        operator delete(*&v76[i]);
      }
    }

    v8 = v67;
    if (v67 != v68)
    {
      while (1)
      {
        v9 = SVGAttributeMap::attribute(*(*(this + 6) + 56), *(v8 + 8));
        if (!v9)
        {
          break;
        }

        v10 = SVGAttribute::stringValue(v9);
        v11 = *(v10 + 23);
        if (v11 >= 0)
        {
          v12 = *(v10 + 23);
        }

        else
        {
          v12 = v10[1];
        }

        v13 = *(v8 + 63);
        v14 = v13;
        if (v13 < 0)
        {
          v13 = v8[6];
        }

        if (v12 != v13)
        {
          break;
        }

        if (v11 < 0)
        {
          v10 = *v10;
        }

        v15 = v14 >= 0 ? v8 + 5 : v8[5];
        if (memcmp(v10, v15, v12))
        {
          break;
        }

        v16 = v8[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v8[2];
            v18 = *v17 == v8;
            v8 = v17;
          }

          while (!v18);
        }

        v8 = v17;
        if (v17 == v68)
        {
          goto LABEL_27;
        }
      }

      v22 = SVGAtom::ToString(*(v8 + 8));
      v24 = v8 + 5;
      if (*(v8 + 63) < 0)
      {
        v24 = *v24;
      }

      SVGUtilities::error("\nTiny SVG P/S profile requires attribute: %s with value: %s on root node", v23, v22, v24);
      v6 = 0;
      goto LABEL_117;
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(v65, "title");
    v62 = 0;
    v63 = 0;
    v64 = 0;
    SVGNode::findChildNodesWithName(*(this + 6), v65, &v62);
    if (v63 - v62 != 8)
    {
      SVGUtilities::error("SVG Tiny P/S profile requires title node to be present once", v19);
      v6 = 0;
LABEL_113:
      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

LABEL_117:
      std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(&v67, v68[0]);
      return v6;
    }

    std::string::basic_string[abi:ne200100]<0>(&v59, &unk_1DF145996);
    v20 = *(*v62 + 192);
    if (v20)
    {
      if ((v20[23] & 0x80000000) == 0 || (v20 = *v20) != 0)
      {
        MEMORY[0x1E12CE540](&v59);
      }
    }

    v21 = v61;
    if ((v61 & 0x8000000000000000) != 0)
    {
      v21 = v60;
      if (!v60)
      {
        goto LABEL_41;
      }
    }

    else if (!v61)
    {
      goto LABEL_41;
    }

    if (v21 < 0x41)
    {
      std::string::basic_string[abi:ne200100]<0>(v57, "desc");
      __p = 0;
      v55 = 0;
      v56 = 0;
      SVGNode::findChildNodesWithName(*(this + 6), v57, &__p);
      v25 = __p;
      v26 = v55;
      if (__p != v55)
      {
        do
        {
          std::string::basic_string[abi:ne200100]<0>(&v69, &unk_1DF145996);
          v27 = *(*v25 + 192);
          if (v27)
          {
            if ((v27[23] & 0x80000000) == 0 || (v27 = *v27) != 0)
            {
              MEMORY[0x1E12CE540](&v69);
            }
          }

          if (SHIBYTE(v71) < 0)
          {
            if (!v70)
            {
LABEL_94:
              SVGUtilities::error("\nSVG Tiny P/S profile requires that description node must not be empty", v27);
              if (SHIBYTE(v71) < 0)
              {
                operator delete(v69);
              }

              v6 = 0;
              goto LABEL_107;
            }

            operator delete(v69);
          }

          else if (!HIBYTE(v71))
          {
            goto LABEL_94;
          }

          v25 += 8;
        }

        while (v25 != v26);
      }

      std::string::basic_string[abi:ne200100]<0>(&v69, "image");
      std::string::basic_string[abi:ne200100]<0>(v72, "switch");
      std::list<std::string>::list(v53, &v69, 2);
      for (j = 0; j != -48; j -= 24)
      {
        if (v74[j + 7] < 0)
        {
          operator delete(*&v72[j]);
        }
      }

      for (k = v53[1]; k != v53; k = k[1])
      {
        v30 = k + 2;
        if (SVGNode::hasChildNodeWithName(*(this + 6), k + 2))
        {
          if (*(k + 39) < 0)
          {
            v30 = *v30;
          }

          SVGUtilities::error("\nSVG Tiny P/S profile does not allow %s node", v31, v30);
          v6 = 0;
          goto LABEL_106;
        }
      }

      LODWORD(v69) = 107;
      std::string::basic_string[abi:ne200100]<0>(&v70, "disable");
      v73 = 108;
      std::string::basic_string[abi:ne200100]<0>(v74, "false");
      v75 = 109;
      std::string::basic_string[abi:ne200100]<0>(v76, "false");
      v77 = 110;
      std::string::basic_string[abi:ne200100]<0>(v78, "none");
      v79 = 111;
      std::string::basic_string[abi:ne200100]<0>(v80, "all");
      v81 = 112;
      std::string::basic_string[abi:ne200100]<0>(v82, "onLoad");
      v83 = 113;
      std::string::basic_string[abi:ne200100]<0>(v84, "none");
      std::map<SVGAtom::Name,std::string>::map[abi:ne200100](&v51, &v69, 7);
      for (m = 0; m != -224; m -= 32)
      {
        if (v84[m + 23] < 0)
        {
          operator delete(*&v84[m]);
        }
      }

      v33 = v51;
      if (v51 == v52)
      {
LABEL_90:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        SVGNode::findChildAttributesWithName(*(this + 6), 18, &v69);
        SVGNode::findChildAttributesWithName(*(this + 6), 57, &v69);
        v46 = v69;
        v47 = ((v70 - v69) >> 3) - 3;
        v6 = v47 < 0xFFFFFFFFFFFFFFFELL;
        if (v47 >= 0xFFFFFFFFFFFFFFFELL)
        {
          SVGUtilities::error("\nSVG Tiny P/S profile requires at least two colors in the document", v45);
          v46 = v69;
        }

        if (v46)
        {
          v70 = v46;
          operator delete(v46);
        }
      }

      else
      {
        while (1)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          SVGNode::findChildAttributesWithName(*(this + 6), *(v33 + 8), &v69);
          v34 = v69;
          v35 = v70;
          if (v69 != v70)
          {
            break;
          }

LABEL_82:
          if (v34)
          {
            v70 = v34;
            operator delete(v34);
          }

          v43 = v33[1];
          if (v43)
          {
            do
            {
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v44 = v33[2];
              v18 = *v44 == v33;
              v33 = v44;
            }

            while (!v18);
          }

          v33 = v44;
          if (v44 == v52)
          {
            goto LABEL_90;
          }
        }

        v36 = v33 + 5;
        while (1)
        {
          v37 = SVGAttribute::stringValue(*v34);
          v38 = *(v37 + 23);
          if (v38 >= 0)
          {
            v39 = *(v37 + 23);
          }

          else
          {
            v39 = v37[1];
          }

          v40 = *(v33 + 63);
          v41 = v40;
          if (v40 < 0)
          {
            v40 = v33[6];
          }

          if (v39 != v40)
          {
            break;
          }

          if (v38 < 0)
          {
            v37 = *v37;
          }

          v42 = v41 >= 0 ? v33 + 5 : *v36;
          if (memcmp(v37, v42, v39))
          {
            break;
          }

          v34 += 8;
          if (v34 == v35)
          {
            v34 = v69;
            goto LABEL_82;
          }
        }

        v48 = SVGAtom::ToString(*(*v34 + 48));
        if (*(v33 + 63) < 0)
        {
          v36 = *v36;
        }

        SVGUtilities::error("\nSVG Tiny P/S profile requires that if attribute : %s is present it needs to have the value: %s", v49, v48, v36);
        if (v69)
        {
          v70 = v69;
          operator delete(v69);
        }

        v6 = 0;
      }

      std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(&v51, v52[0]);
LABEL_106:
      std::__list_imp<std::string>::clear(v53);
LABEL_107:
      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      goto LABEL_111;
    }

LABEL_41:
    SVGUtilities::error("\nSVG Tiny P/S profile requires a title string that is not empty and is no more than 64 characters in length", v20);
    v6 = 0;
LABEL_111:
    if (v61 < 0)
    {
      operator delete(v59);
    }

    goto LABEL_113;
  }

  Length = CFDataGetLength(theData);
  SVGUtilities::error("File size for Tiny SVG P/S profile needs to be less that 32 kilobytes. File size for given file is: %zu bytes", v5, Length);
  return 0;
}

void sub_1DF12C24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  std::__list_imp<std::string>::clear(&a15);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  v52 = a33;
  if (a33)
  {
    *(v50 + 8) = a33;
    operator delete(v52);
  }

  if (a41 < 0)
  {
    operator delete(*(v50 + 24));
  }

  std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::destroy(&a42, *(v50 + 56));
  _Unwind_Resume(a1);
}

__CFData *CreateCFDataWithContentsOfURL(CFURLRef fileURL)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!fileURL)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], fileURL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!CFReadStreamOpen(v2))
  {
    CFRelease(v3);
    return 0;
  }

  Mutable = CFDataCreateMutable(v1, 0);
  if ((atomic_load_explicit(&qword_1ECDFEEC8, memory_order_acquire) & 1) == 0)
  {
    CreateCFDataWithContentsOfURL();
  }

  MEMORY[0x1EEE9AC00]();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E9AC8];
  v8 = CFReadStreamRead(v3, v6, *MEMORY[0x1E69E9AC8]);
  if (v8 >= 1)
  {
    for (i = v8; i > 0; i = CFReadStreamRead(v3, v6, *v7))
    {
      CFDataAppendBytes(Mutable, v6, i);
    }
  }

  CFReadStreamClose(v3);
  CFRelease(v3);
  return Mutable;
}

BOOL SVGDocument::read(SVGDocument *this, CGDataProviderRef provider, SVGReaderOptions *a3)
{
  v5 = CGDataProviderCopyData(provider);
  v6 = SVGDocument::read(this, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL SVGDocument::write(uint64_t a1, const char *a2, uint64_t a3)
{
  SVGWriter::SVGWriter(v8, a3);
  v5 = SVGWriter::write(v8, *(a1 + 48), a2, *(a1 + 64));
  SVGPathCommand::TypeFromCharacter(v8, v6);
  return v5;
}

BOOL SVGDocument::write(uint64_t a1, __CFData *a2, uint64_t a3)
{
  SVGWriter::SVGWriter(v8, a3);
  v5 = SVGWriter::write(v8, *(a1 + 48), a2, *(a1 + 64));
  SVGPathCommand::TypeFromCharacter(v8, v6);
  return v5;
}

BOOL SVGDocument::write(uint64_t a1, const __CFURL *a2, uint64_t a3)
{
  SVGWriter::SVGWriter(v8, a3);
  v5 = SVGWriter::write(v8, *(a1 + 48), a2, *(a1 + 64));
  SVGPathCommand::TypeFromCharacter(v8, v6);
  return v5;
}

uint64_t SVGDocument::canvas(SVGDocument *this)
{
  if (!*(this + 7))
  {
    operator new();
  }

  return *(this + 7);
}

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void *std::map<SVGAtom::Name,std::string>::map[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__emplace_hint_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name const,std::string> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__emplace_hint_unique_key_args<SVGAtom::Name,std::pair<SVGAtom::Name const,std::string> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  result = *std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__find_equal<SVGAtom::Name>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__construct_node<std::pair<SVGAtom::Name const,std::string> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<SVGAtom::Name,std::string>,std::__map_value_compare<SVGAtom::Name,std::__value_type<SVGAtom::Name,std::string>,std::less<SVGAtom::Name>,true>,std::allocator<std::__value_type<SVGAtom::Name,std::string>>>::__find_equal<SVGAtom::Name>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1DF12CC28(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<SVGAtom::Name,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<SVGAtom::Name,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::list<std::string>::list(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>();
  }

  return result;
}

uint64_t CGSVGColorCreateWithRGBA@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *(a2 + 32) = 0;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  return result;
}

void CGSVGColorCreateRGBA(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 32) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
}

void CGSVGColorCreateDisplayP3(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 32) = 1;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
}

BOOL CGSVGColorCreateFromCString@<W0>(_BOOL8 result@<X0>, uint64_t a2@<X8>)
{
  if (result && (v3 = result, SVGColor::SVGColor(v6, 3u, 0.0, 0.0, 0.0, 1.0), result = SVGColor::GetColorWithString(v3, v6, v4)))
  {
    *(a2 + 32) = 0;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    if (v7 == 15)
    {
      *(a2 + 32) = 1;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
    *(a2 + 32) = 0;
  }

  return result;
}

const __CFString *CGSVGColorCreateFromString@<X0>(const __CFString *result@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    CFStringGetCString(result, buffer, 128, 0x8000100u);
    return CGSVGColorCreateFromCString(buffer, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0x3FF0000000000000;
    a2[4] = 0;
  }

  return result;
}

CGColorRef CGSVGColorCreateCGColor(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  CGColorSpace = CGSVGColorSpaceCreateCGColorSpace(*(a1 + 32));
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = CGColorCreate(CGColorSpace, v6);
  CGColorSpaceRelease(CGColorSpace);
  return v4;
}

CGColorSpaceRef CGSVGColorSpaceCreateCGColorSpace(CGColorSpaceRef result)
{
  if (result <= 3)
  {
    return CGColorSpaceCreateWithName(**(&unk_1E86AAAD0 + result));
  }

  return result;
}

void CGSVGDrawState::CGSVGDrawState(CGSVGDrawState *this, const CGSVGDrawState *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = xmmword_1DF145200;
  *(this + 7) = 0;
  v2 = this + 56;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 48) = 0;
  *(this + 8) = 0;
  v3 = MEMORY[0x1E695F058];
  *(this + 72) = 0;
  v4 = v3[1];
  *(this + 5) = *v3;
  *(this + 6) = v4;
  *(this + 14) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 120) = _Q0;
  *(this + 17) = 0x3FF0000000000000;
  *(this + 144) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0;
  *(this + 180) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  if (this == a2)
  {
    CGSVGDrawState::CGSVGDrawState();
  }

  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 1) = *(a2 + 1);
  CGSVGDrawState::setFontFamily(this, *(a2 + 26));
  *(this + 1) = *(a2 + 1);
  v12 = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 2) = v12;
  v13 = *(a2 + 56);
  *(v2 + 2) = *(a2 + 9);
  *v2 = v13;
  v14 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v14;
  *(this + 14) = *(a2 + 14);
  *(this + 120) = *(a2 + 120);
  *(this + 17) = *(a2 + 17);
  *(this + 144) = *(a2 + 144);
  *(this + 19) = *(a2 + 19);
  v15 = *(a2 + 10);
  v16 = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 10) = v15;
  *(this + 11) = v16;
  *(this + 50) = *(a2 + 50);
}

void *CGSVGDrawState::setFontFamily(void *this, CFTypeRef cf)
{
  if (cf)
  {
    v3 = this;
    v4 = this[26];
    if (v4)
    {
      CFRelease(v4);
      v3[26] = 0;
    }

    this = CFRetain(cf);
    v3[26] = this;
  }

  return this;
}

void CGSVGDrawState::~CGSVGDrawState(CGSVGDrawState *this)
{
  v1 = *(this + 26);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CGContextDrawSVGDocumentWithOptions(CGContext *a1, const char *a2, const __CFDictionary *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  valuePtr = CGSVGDocumentGetPreferredColorSpace(a2, a2);
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v8 = v7;
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a3);
    CFDictionarySetValue(MutableCopy, @"preferredColorSpace", v8);
  }

  else
  {
    values = v7;
    keys[0] = @"preferredColorSpace";
    MutableCopy = CFDictionaryCreate(v6, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  RootNode = CGSVGDocumentGetRootNode(a2, v10);
  CGContextDrawSVGNodeWithOptions(a1, RootNode, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(v8);
}

void *CGContextDrawSVGNodeWithOptions(CGContext *a1, const char *a2, const __CFDictionary *a3)
{
  result = CFRetained::getObject<SVGNode>(a2, a2);
  if (a1)
  {
    v8 = result;
    if (result)
    {
      memset(v45, 0, sizeof(v45));
      while (1)
      {
        v9 = v8[6];
        if (!v9)
        {
          break;
        }

        v8 = v8[6];
        v22 = *(v9 + 40);
        std::vector<CGSVGNode *>::insert(v45, v45[0], &v22);
      }

      v10 = v8[5];
      if (!a3 || !CFDictionaryGetValue(a3, @"drawingDefinition"))
      {
        GetCanvasSize(v10, v7);
        v12 = v11;
        CGContextSaveGState(a1);
        CGContextScaleCTM(a1, 1.0, -1.0);
        CGContextTranslateCTM(a1, 0.0, -v12);
      }

      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = a1;
      LOWORD(v22) = 0;
      HIDWORD(v22) = 0;
      v23 = xmmword_1DF145200;
      v25 = 0uLL;
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v13 = *(MEMORY[0x1E695F058] + 16);
      v30 = *MEMORY[0x1E695F058];
      v31 = v13;
      __asm { FMOV            V1.2D, #1.0 }

      v33 = _Q1;
      v32 = 0;
      v34 = 0x3FF0000000000000;
      v35 = 0;
      v38 = 0;
      v39 = 0;
      memset(v37, 0, sizeof(v37));
      v36 = 0u;
      *&v43 = std::vector<CGSVGDrawState>::__emplace_back_slow_path<CGSVGDrawState>(&v42 + 8, &v22);
      CGSVGDrawState::~CGSVGDrawState(&v22);
      *&v41 = a2;
      if (a3)
      {
        *(&v41 + 1) = CFDictionaryGetValue(a3, @"willDraw");
        *&v42 = CFDictionaryGetValue(a3, @"didDraw");
        Value = CFDictionaryGetValue(a3, @"preferredColorSpace");
        v20 = Value;
        if (Value)
        {
          v21 = CFGetTypeID(Value);
          Value = CFNumberGetTypeID();
          if (v21 == Value)
          {
            Value = CFNumberGetValue(v20, kCFNumberIntType, &v44);
          }
        }
      }

      CGSVGAttributeMapCreateWithDefaults(Value);
    }
  }

  return result;
}

void sub_1DF12D670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = *(v15 - 104);
  if (v17)
  {
    *(v15 - 96) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<CGSVGNode *>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SVGPathCommand *>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<CGSVGNode *>::emplace_back<CGSVGNode *>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_1DF12D868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double GetCanvasSize(uint64_t a1, const char *a2)
{
  if (!CGSVGNodeTypeIsViewBoxNode(a1, a2))
  {
    CGSVGNodeGetBoundingBox(a1);
    return v8;
  }

  result = CGSVGViewBoxNodeGetSize(a1, v3);
  if (result < 1.0 || v6 < 1.0)
  {
    CGSVGViewBoxNodeGetViewbox(a1, v4);
    return v8;
  }

  return result;
}

void ApplyCGSVGAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  Attribute = CGSVGAttributeMapGetAttribute(a2, 0x13);
  if (Attribute)
  {
    v25 = 1.0;
    Float = CGSVGAttributeGetFloat(Attribute, &v25);
    if (Float)
    {
      *(*(a1 + 40) - 96) = SVGUtilities::CGFloatClamp(Float, v25, 0.0, 1.0) * *(*(a1 + 40) - 96);
    }
  }

  v9 = CGSVGAttributeMapGetAttribute(a2, 0x3A);
  if (v9)
  {
    v25 = 1.0;
    v10 = CGSVGAttributeGetFloat(v9, &v25);
    if (v10)
    {
      *(*(a1 + 40) - 88) = SVGUtilities::CGFloatClamp(v10, v25, 0.0, 1.0) * *(*(a1 + 40) - 88);
    }
  }

  v11 = CGSVGAttributeMapGetAttribute(a2, 0xC);
  if (v11)
  {
    v13 = v11;
    FloatCount = CGSVGAttributeGetFloatCount(v11, v12);
    if (FloatCount)
    {
      v15 = FloatCount;
      v16 = malloc_type_malloc(8 * FloatCount, 0x100004000313F17uLL);
      CGSVGAttributeGetFloats(v13, v16);
      v25 = 0.0;
      v17 = CGSVGAttributeMapGetAttribute(a2, 0xD);
      if (v17)
      {
        CGSVGAttributeGetFloat(v17, &v25);
        v18 = v25;
      }

      else
      {
        v18 = 0.0;
      }

      CGContextSetLineDash(*a1, v18, v16, v15);
      free(v16);
    }
  }

  v25 = 0.0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___ZL20ApplyCGSVGAttributesP21CGSVGDrawStateContextP17CGSVGAttributeMapP9CGSVGNode_block_invoke;
  v24[3] = &unk_1E86AAB08;
  v24[6] = a1;
  v24[7] = a3;
  v24[4] = &v25;
  v24[5] = v6;
  CGSVGAttributeMapEnumerate(a2, v24);
  if (*(v26 + 24) == 1)
  {
    if (!a3)
    {
      v22 = (a1 + 40);
LABEL_19:
      CGContextBeginTransparencyLayer(v6, 0);
      *(*v22 - 72) = 1;
      goto LABEL_20;
    }

    Type = CGSVGNodeGetType(a3, v19);
    v23 = *(a1 + 40);
    v22 = (a1 + 40);
    v21 = v23;
    if (Type != 2 || (*(v21 - 216) & *(v21 - 215) & 1) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  _Block_object_dispose(&v25, 8);
}

void sub_1DF12DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PushSVGNodeAttributes(uint64_t a1, uint64_t a2)
{
  CGContextSaveGState(*a1);
  CGSVGDrawState::CGSVGDrawState(v8, (*(a1 + 40) - 216));
  v8[144] = 0;
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 48))
  {
    v6 = std::vector<CGSVGDrawState>::__emplace_back_slow_path<CGSVGDrawState const&>(a1 + 32, v8);
  }

  else
  {
    CGSVGDrawState::CGSVGDrawState(*(a1 + 40), v8);
    v6 = v4 + 216;
    *(a1 + 40) = v4 + 216;
  }

  *(a1 + 40) = v6;
  AttributeMap = CGSVGNodeGetAttributeMap(a2, v5);
  ApplyCGSVGAttributes(a1, AttributeMap, a2);
  CGSVGDrawState::~CGSVGDrawState(v8);
}