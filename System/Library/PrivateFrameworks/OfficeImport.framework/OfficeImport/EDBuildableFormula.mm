@interface EDBuildableFormula
- (BOOL)addArrayWithCol:(int)col andRow:(int)row;
- (BOOL)addInfixOperator:(int)operator atIndex:(unsigned int)index factor:(double)factor;
- (BOOL)argTokenIsDurationAtIndex:(unsigned int)index;
- (BOOL)convertLastRefsToArea;
- (BOOL)convertRefs:(unsigned int)refs toType:(int)type;
- (BOOL)convertRefs:(unsigned int)refs toTypes:(int *)types;
- (BOOL)convertToIntersect:(unsigned int)intersect;
- (BOOL)convertToList:(unsigned int)list withFinalParen:(BOOL)paren;
- (BOOL)copyToken:(unsigned int)token from:(id)from;
- (BOOL)fixTableOfConstantsRef:(EDBuildablePtg *)ref;
- (BOOL)insertName:(unint64_t)name link:(unint64_t)link external:(BOOL)external atIndex:(unsigned int)index;
- (BOOL)isConstantList:(unsigned int)list;
- (BOOL)makeArrayForLastToken:(unint64_t)token;
- (BOOL)replaceArgPtgAtIndex:(unsigned int)index withFormula:(id)formula;
- (BOOL)shrinkSpanningRef:(EDBuildablePtg *)ref;
- (BOOL)shrinkSpanningRefAtArgIndex:(unsigned int)index;
- (BOOL)uppercaseArgAtIndex:(unsigned int)index;
- (BOOL)wrapArgumentsWithOperator:(int)operator argumentCount:(unsigned int)count atIndex:(unsigned int)index;
- (EDBuildablePtg)tokenAtIndex:(unint64_t)index previousToken:(EDBuildablePtg *)token;
- (char)addToken:(int)token extendedDataLength:(unsigned int)length numArgs:(int)args;
- (id)formula;
- (id)lastTokenRefOrArea3dLinkRefIsValid:(BOOL *)valid withEDLinks:(id)links;
- (id)stringFromStringTokenAtIndex:(unint64_t)index;
- (int)argTokenTypeAtIndex:(unsigned int)index;
- (int)tokenTypeAtIndex:(unint64_t)index;
- (unsigned)removeOptionalPtgArgs:(unsigned int)args minArgs:(unsigned int)minArgs;
- (void)convertRefsInList:(EDBuildablePtg *)list toType:(int)type;
- (void)copyToFormula:(id)formula;
- (void)dealloc;
- (void)markLastTokenAsDuration;
- (void)markLastTokenAsSpanningRefVertically:(BOOL)vertically withMin:(unsigned __int16)min andMax:(unsigned __int16)max;
- (void)removeTokenAtIndex:(unint64_t)index;
- (void)replaceStringInStringTokenAtIndex:(unint64_t)index content:(id)content;
@end

@implementation EDBuildableFormula

- (void)dealloc
{
  mTree = self->mTree;
  if (mTree)
  {
    (*(mTree->var0 + 1))(mTree, a2);
  }

  v4.receiver = self;
  v4.super_class = EDBuildableFormula;
  [(EDBuildableFormula *)&v4 dealloc];
}

- (int)tokenTypeAtIndex:(unint64_t)index
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v3)
  {
    LODWORD(v3) = v3->var2;
  }

  return v3;
}

- (id)stringFromStringTokenAtIndex:(unint64_t)index
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v3 && v3->var2 == 23)
  {
    OcTextFromPtgStr = extractOcTextFromPtgStr(&v3->var1);
    v5 = [MEMORY[0x277CCACA8] stringWithOcText:OcTextFromPtgStr];
    if (OcTextFromPtgStr)
    {
      (*(*OcTextFromPtgStr + 8))(OcTextFromPtgStr);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)replaceStringInStringTokenAtIndex:(unint64_t)index content:(id)content
{
  contentCopy = content;
  v6 = [(EDBuildableFormula *)self tokenAtIndex:index];
  v7 = v6;
  if (v6)
  {
    if (v6->var2 == 23)
    {
      v8 = [contentCopy length];
      v9 = v8;
      if (v8)
      {
        XlPtg::clear(&v7->var1);
        v10 = XlPtg::addDataItem(&v7->var1, 2 * v9 + 8);
        if (v10)
        {
          copyStringToExtendedData([contentCopy cStringUsingEncoding:10], v10, v9);
        }
      }
    }
  }
}

- (void)removeTokenAtIndex:(unint64_t)index
{
  v7 = 0;
  v4 = [(EDBuildableFormula *)self tokenAtIndex:index previousToken:&v7];
  if (v4)
  {
    v5 = v4;
    v6 = EDBuildablePtg::sibling(v4);
    EDBuildablePtg::setSibling(v5, 0);
    if (v7)
    {
      EDBuildablePtg::setSibling(v7, v6);
    }

    else
    {
      self->mTree = v6;
    }

    (*(v5->var0 + 1))(v5);
  }
}

- (char)addToken:(int)token extendedDataLength:(unsigned int)length numArgs:(int)args
{
  if (token == 64)
  {
    operator new();
  }

  operator new();
}

- (BOOL)makeArrayForLastToken:(unint64_t)token
{
  mTree = self->mTree;
  if (mTree)
  {
    v4 = token == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    tokenCopy = token;
    while (1)
    {
      v7 = EDBuildablePtg::sibling(mTree);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      var2 = v7->var2;
      if ((var2 - 28) >= 4 && var2 != 23)
      {
        break;
      }

      v11 = EDBuildablePtg::sibling(v7);
      EDBuildablePtg::setSibling(v8, 0);
      EDBuildablePtg::setSibling(mTree, v11);
      v12 = EDBuildableArrayPtg::elements(mTree);
      EDBuildablePtg::setSibling(v8, v12);
      EDBuildableArrayPtg::setElements(mTree, v8);
      if (!--tokenCopy)
      {
        return mTree != 0;
      }
    }

    [(EDBuildableFormula *)self setWarning:1];
  }

  return mTree != 0;
}

- (BOOL)insertName:(unint64_t)name link:(unint64_t)link external:(BOOL)external atIndex:(unsigned int)index
{
  externalCopy = external;
  linkCopy = link;
  nameCopy = name;
  if (external)
  {
    v9 = 57;
  }

  else
  {
    v9 = 35;
  }

  if (external)
  {
    v10 = 6;
  }

  else
  {
    v10 = 4;
  }

  if (index)
  {
    mTree = self->mTree;
    v12 = index - 1;
    if (index == 1)
    {
LABEL_11:
      if (mTree)
      {
        EDBuildablePtg::sibling(mTree);
        EDBuildablePtg::setSibling(mTree, 0);
        operator new();
      }
    }

    else
    {
      while (mTree)
      {
        mTree = EDBuildablePtg::sibling(mTree);
        if (!--v12)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  v14 = [(EDBuildableFormula *)self addToken:v9 extendedDataLength:v10];
  if (!v14)
  {
    return 0;
  }

  if (externalCopy)
  {
    *v14 = linkCopy;
    *(v14 + 1) = nameCopy;
    v13 = 1;
    *(v14 + 2) = 0;
  }

  else
  {
    *v14 = nameCopy;
    return 1;
  }

  return v13;
}

- (BOOL)addArrayWithCol:(int)col andRow:(int)row
{
  v7 = (col + 1 + (col + 1) * row);
  [(EDBuildableFormula *)self addToken:64 extendedDataLength:0 numArgs:v7];
  mTree = self->mTree;
  if (!mTree)
  {
    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  EDBuildableArrayPtg::setColRow(v9, col, row);

  return [(EDBuildableFormula *)self makeArrayForLastToken:v7];
}

- (BOOL)isConstantList:(unsigned int)list
{
  v3 = 0;
  if (list)
  {
    mTree = self->mTree;
    if (mTree)
    {
      LODWORD(v5) = list;
      if (EDBuildablePtg::isConstant(self->mTree))
      {
        v5 = v5;
        do
        {
          v3 = --v5 == 0;
          if (!v5)
          {
            break;
          }

          if (!EDBuildablePtg::sibling(mTree))
          {
            break;
          }

          mTree = EDBuildablePtg::sibling(mTree);
        }

        while (EDBuildablePtg::isConstant(mTree));
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

- (BOOL)convertToList:(unsigned int)list withFinalParen:(BOOL)paren
{
  if (!list)
  {
    return 0;
  }

  parenCopy = paren;
  listCopy = list;
  EDBuildablePtg::unionize(self->mTree, &listCopy);
  if (list != 1)
  {
    addOperator(self, 16);
  }

  if (parenCopy)
  {
    return addOperator(self, 21);
  }

  else
  {
    return 1;
  }
}

- (BOOL)convertToIntersect:(unsigned int)intersect
{
  intersectCopy = intersect;
  EDBuildablePtg::intersect(self->mTree, &intersectCopy);
  if (intersect >= 2)
  {
    addOperator(self, 15);
  }

  return 1;
}

- (BOOL)convertLastRefsToArea
{
  v32[1] = *MEMORY[0x277D85DE8];
  mTree = self->mTree;
  if (!mTree)
  {
    return 0;
  }

  v4 = isRef(&mTree->var1);
  v5 = isArea(&mTree->var1);
  v6 = EDBuildablePtg::sibling(mTree);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = isRef(&v6->var1);
  v9 = isArea(&v7->var1);
  if (v4 != v8 || (v10 = v9, ((v5 ^ v9) & 1) != 0) || ((v8 | v9) & 1) == 0 || ((v4 | v5) & 1) == 0)
  {
    v32[0] = 0;
    [(EDBuildableFormula *)self convertRefs:2 toTypes:v32];
    EDBuildablePtg::sibling(v7);
    EDBuildablePtg::setSibling(v7, 0);
    operator new();
  }

  self->mTree = EDBuildablePtg::sibling(v7);
  EDBuildablePtg::setSibling(v7, 0);
  p_var1 = &v7->var1;
  if (v10)
  {
    if (isArea3D(p_var1))
    {
      v12 = refTypeOf(v7->var2);
      LastExtendedData = XlPtg::getLastExtendedData(&v7->var1);
      v14 = XlPtg::getLastExtendedData(&mTree->var1);
      v15 = addArea3DOperandFromArea3DExtendedData(self, v12, LastExtendedData, v14);
    }

    else
    {
      v20 = XlPtg::getLastExtendedData(&v7->var1);
      v21 = XlPtg::getLastExtendedData(&mTree->var1);
      v15 = addAreaOperandFromAreaExtendedData(self, v20, v21);
    }
  }

  else if (isRef3D(p_var1))
  {
    v17 = refTypeOf(v7->var2);
    v18 = XlPtg::getLastExtendedData(&v7->var1);
    v19 = XlPtg::getLastExtendedData(&mTree->var1);
    v15 = addArea3DOperandFromRef3DExtendedData(self, v17, v18, v19);
  }

  else
  {
    v22 = XlPtg::getLastExtendedData(&v7->var1);
    v23 = XlPtg::getLastExtendedData(&mTree->var1);
    v15 = addAreaOperandFromRefExtendedData(self, v22, v23);
  }

  v16 = v15;
  if (EDBuildablePtg::isSpanningRef(mTree))
  {
    v24 = EDBuildablePtg::spanningRef(mTree);
    if (v24 == EDBuildablePtg::spanningRef(v7))
    {
      v25 = EDBuildablePtg::minSpan(mTree);
      if (v25 == EDBuildablePtg::minSpan(v7))
      {
        v26 = EDBuildablePtg::maxSpan(mTree);
        if (v26 == EDBuildablePtg::maxSpan(v7))
        {
          v27 = self->mTree;
          v28 = EDBuildablePtg::spanningRef(mTree);
          v29 = EDBuildablePtg::minSpan(mTree);
          v30 = EDBuildablePtg::maxSpan(mTree);
          EDBuildablePtg::setIsSpanningRef(v27, v28, v29, v30);
        }
      }
    }
  }

  (*(mTree->var0 + 1))(mTree);
  return v16;
}

- (void)convertRefsInList:(EDBuildablePtg *)list toType:(int)type
{
  if (list)
  {
    v4 = *&type;
    Segments = EshGeometryProperties::getSegments(list);
    if (Segments)
    {
      v7 = Segments;
      v8 = 1;
      do
      {
        var2 = v7->var2;
        if (var2 == 16)
        {
          [(EDBuildableFormula *)self convertRefsInList:v7 toType:v4];
        }

        else
        {
          v7->var2 = convertValueReference(var2, v4);
        }

        v7 = EDBuildablePtg::sibling(v7);
        v10 = (v7 != 0) & v8;
        v8 = 0;
      }

      while ((v10 & 1) != 0);
    }
  }
}

- (BOOL)convertRefs:(unsigned int)refs toType:(int)type
{
  if (refs)
  {
    operator new[]();
  }

  return 1;
}

- (BOOL)convertRefs:(unsigned int)refs toTypes:(int *)types
{
  if (!refs)
  {
    return 1;
  }

  mTree = self->mTree;
  if (!mTree)
  {
    return 0;
  }

  v7 = refs - 1;
  do
  {
    var2 = mTree->var2;
    if (var2 == 21)
    {
      [(EDBuildableFormula *)self convertRefsInList:mTree toType:types[v7]];
    }

    else
    {
      mTree->var2 = convertValueReference(var2, types[v7]);
      mTree = EDBuildablePtg::sibling(mTree);
      if (!mTree)
      {
        return 1;
      }
    }
  }

  while (v7--);
  return 1;
}

- (id)lastTokenRefOrArea3dLinkRefIsValid:(BOOL *)valid withEDLinks:(id)links
{
  linksCopy = links;
  mTree = self->mTree;
  if (!mTree)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  var2 = mTree->var2;
  v10 = var2 - 22;
  if ((var2 - 22) <= 0x2F)
  {
    if (((1 << v10) & 0xC0000000C001) != 0)
    {
LABEL_9:
      if (!valid)
      {
        goto LABEL_12;
      }

      v12 = 1;
      goto LABEL_11;
    }

    if (((1 << v10) & 0x3000000000) != 0)
    {
LABEL_7:
      v8 = [linksCopy referenceAtIndex:*XlPtg::getLastExtendedData(&mTree->var1)];
      goto LABEL_9;
    }
  }

  v11 = var2 - 90;
  if (v11 <= 0x21)
  {
    if (((1 << v11) & 0x300000003) != 0)
    {
      goto LABEL_7;
    }

    if (((1 << v11) & 0xC00) != 0)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  if (valid)
  {
    v12 = 0;
LABEL_11:
    *valid = v12;
  }

LABEL_12:

  return v8;
}

- (void)markLastTokenAsDuration
{
  mTree = self->mTree;
  if (mTree)
  {
    EDBuildablePtg::setIsDuration(mTree, 1);
  }
}

- (void)markLastTokenAsSpanningRefVertically:(BOOL)vertically withMin:(unsigned __int16)min andMax:(unsigned __int16)max
{
  mTree = self->mTree;
  if (mTree)
  {
    if (vertically)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    EDBuildablePtg::setIsSpanningRef(mTree, v6, min, max);
  }
}

- (BOOL)uppercaseArgAtIndex:(unsigned int)index
{
  if (!self->mTree)
  {
    return 0;
  }

  v3 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v3)
  {
    if (v3->var2 != 65 || (LastExtendedData = XlPtg::getLastExtendedData(&v3->var1)) == 0 || *LastExtendedData != 113)
    {
      operator new();
    }

    return 0;
  }

  return 1;
}

- (BOOL)shrinkSpanningRefAtArgIndex:(unsigned int)index
{
  v4 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v4)
  {

    LOBYTE(v4) = [(EDBuildableFormula *)self shrinkSpanningRef:v4];
  }

  return v4;
}

- (BOOL)wrapArgumentsWithOperator:(int)operator argumentCount:(unsigned int)count atIndex:(unsigned int)index
{
  if (count - 1 >= index + 1 || self->mTree == 0)
  {
    return 0;
  }

  v13 = 0;
  v9 = [(EDBuildableFormula *)self tokenAtIndex:index - count + 1 previousToken:&v13];
  v10 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v6 = !v11;
  if (!v11)
  {
    operator new();
  }

  return v6;
}

- (BOOL)addInfixOperator:(int)operator atIndex:(unsigned int)index factor:(double)factor
{
  v5 = operator - 5;
  if ((operator - 5) <= 1 && factor == 1.0)
  {
LABEL_8:
    LOBYTE(v7) = 1;
    return v7;
  }

  v9 = 0;
  v7 = [(EDBuildableFormula *)self tokenAtIndex:index previousToken:&v9];
  if (v7)
  {
    if (v5 > 1 || v7->var2 != 22)
    {
      operator new();
    }

    goto LABEL_8;
  }

  return v7;
}

- (id)formula
{
  v3 = +[EDFormula formula];
  mTree = self->mTree;
  if (mTree)
  {
    EDBuildablePtg::addToEDFormula(mTree, v3);
  }

  return v3;
}

- (void)copyToFormula:(id)formula
{
  formulaCopy = formula;
  v6 = formulaCopy;
  if (self->mWarning)
  {
    [(EDFormula *)formulaCopy setWarning:?];
  }

  else
  {
    mTree = self->mTree;
    if (mTree)
    {
      EDBuildablePtg::addToEDFormula(mTree, v6);
    }
  }
}

- (BOOL)copyToken:(unsigned int)token from:(id)from
{
  if (from)
  {
    operator new();
  }

  return 0;
}

- (BOOL)argTokenIsDurationAtIndex:(unsigned int)index
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v3)
  {

    LOBYTE(v3) = EDBuildablePtg::isDuration(v3);
  }

  return v3;
}

- (int)argTokenTypeAtIndex:(unsigned int)index
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:index];
  if (v3)
  {
    LODWORD(v3) = v3->var2;
  }

  return v3;
}

- (BOOL)replaceArgPtgAtIndex:(unsigned int)index withFormula:(id)formula
{
  formulaCopy = formula;
  if (EDBuildablePtg::sibling(formulaCopy[1]))
  {
    goto LABEL_2;
  }

  mTree = self->mTree;
  if (index && mTree)
  {
    v10 = 1;
    indexCopy = index;
    do
    {
      v12 = mTree;
      v13 = EDBuildablePtg::sibling(mTree);
      mTree = v13;
      --indexCopy;
      if (v10 >= index)
      {
        break;
      }

      ++v10;
    }

    while (v13);
    if (indexCopy)
    {
      goto LABEL_2;
    }

    EDBuildablePtg::setSibling(v12, formulaCopy[1]);
    if (!mTree)
    {
LABEL_15:
      formulaCopy[1] = 0;
      v7 = 1;
      goto LABEL_3;
    }

LABEL_14:
    v14 = EDBuildablePtg::sibling(mTree);
    EDBuildablePtg::setSibling(mTree, 0);
    EDBuildablePtg::setSibling(formulaCopy[1], v14);
    (*(mTree->var0 + 1))(mTree);
    goto LABEL_15;
  }

  if (!index)
  {
    self->mTree = formulaCopy[1];
    if (!mTree)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_2:
  v7 = 0;
LABEL_3:

  return v7;
}

- (unsigned)removeOptionalPtgArgs:(unsigned int)args minArgs:(unsigned int)minArgs
{
  result = 0;
  if (args)
  {
    v7 = args - minArgs;
    if (args >= minArgs)
    {
      v8 = 0;
      if (args != minArgs)
      {
        while (1)
        {
          mTree = self->mTree;
          if (!mTree || mTree->var2 != 22)
          {
            break;
          }

          self->mTree = EDBuildablePtg::sibling(self->mTree);
          EDBuildablePtg::setSibling(mTree, 0);
          (*(mTree->var0 + 1))(mTree);
          if (v7 == ++v8)
          {
            v8 = v7;
            return args - v8;
          }
        }
      }

      return args - v8;
    }
  }

  return result;
}

- (EDBuildablePtg)tokenAtIndex:(unint64_t)index previousToken:(EDBuildablePtg *)token
{
  v5 = 0;
  result = self->mTree;
  if (index && result)
  {
    v8 = 1;
    do
    {
      v5 = result;
      result = EDBuildablePtg::sibling(result);
      if (v8 >= index)
      {
        break;
      }

      ++v8;
    }

    while (result);
  }

  *token = v5;
  return result;
}

- (BOOL)fixTableOfConstantsRef:(EDBuildablePtg *)ref
{
  if (!ref)
  {
    return ref != 0;
  }

  if (isArea(&ref->var1) && EDBuildablePtg::isSpanningRef(ref) && (v5 = EDBuildablePtg::minSpan(ref), v5 == EDBuildablePtg::maxSpan(ref)))
  {
    [(EDBuildableFormula *)self shrinkSpanningRef:ref];
  }

  else if (ref->var2 == 66)
  {
    LastExtendedData = XlPtg::getLastExtendedData(&ref->var1);
    if (LastExtendedData)
    {
      v7 = *(LastExtendedData + 2) - 101 < 2;
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  if (EshGeometryProperties::getSegments(ref) && !v7)
  {
    [(EDBuildableFormula *)self fixTableOfConstantsRef:EshGeometryProperties::getSegments(ref)];
  }

  if (EDBuildablePtg::sibling(ref))
  {
    [(EDBuildableFormula *)self fixTableOfConstantsRef:EDBuildablePtg::sibling(ref)];
  }

  return ref != 0;
}

- (BOOL)shrinkSpanningRef:(EDBuildablePtg *)ref
{
  if (ref && isArea(&ref->var1) && EDBuildablePtg::isSpanningRef(ref))
  {
    LastExtendedData = XlPtg::getLastExtendedData(&ref->var1);
    v5 = EDBuildablePtg::spanningRef(ref);
    v6 = isArea3D(&ref->var1);
    v7 = v6;
    if (v5 == 2)
    {
      v8 = 4;
      if (v6)
      {
        v8 = 6;
      }

      v9 = &LastExtendedData[v8];
      v10 = *v9 & 0xC000;
      *v9 = EDBuildablePtg::minSpan(ref) | v10;
      v11 = *(v9 + 1) & 0xC000;
      *(v9 + 1) = EDBuildablePtg::maxSpan(ref) | v11;
    }

    else
    {
      *&LastExtendedData[2 * v6] = EDBuildablePtg::minSpan(ref);
      v12 = EDBuildablePtg::maxSpan(ref);
      v13 = 2;
      if (v7)
      {
        v13 = 4;
      }

      *&LastExtendedData[v13] = v12;
    }
  }

  return 1;
}

@end