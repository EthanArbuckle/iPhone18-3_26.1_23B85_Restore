@interface EDBuildableFormula
- (BOOL)addArrayWithCol:(int)a3 andRow:(int)a4;
- (BOOL)addInfixOperator:(int)a3 atIndex:(unsigned int)a4 factor:(double)a5;
- (BOOL)argTokenIsDurationAtIndex:(unsigned int)a3;
- (BOOL)convertLastRefsToArea;
- (BOOL)convertRefs:(unsigned int)a3 toType:(int)a4;
- (BOOL)convertRefs:(unsigned int)a3 toTypes:(int *)a4;
- (BOOL)convertToIntersect:(unsigned int)a3;
- (BOOL)convertToList:(unsigned int)a3 withFinalParen:(BOOL)a4;
- (BOOL)copyToken:(unsigned int)a3 from:(id)a4;
- (BOOL)fixTableOfConstantsRef:(EDBuildablePtg *)a3;
- (BOOL)insertName:(unint64_t)a3 link:(unint64_t)a4 external:(BOOL)a5 atIndex:(unsigned int)a6;
- (BOOL)isConstantList:(unsigned int)a3;
- (BOOL)makeArrayForLastToken:(unint64_t)a3;
- (BOOL)replaceArgPtgAtIndex:(unsigned int)a3 withFormula:(id)a4;
- (BOOL)shrinkSpanningRef:(EDBuildablePtg *)a3;
- (BOOL)shrinkSpanningRefAtArgIndex:(unsigned int)a3;
- (BOOL)uppercaseArgAtIndex:(unsigned int)a3;
- (BOOL)wrapArgumentsWithOperator:(int)a3 argumentCount:(unsigned int)a4 atIndex:(unsigned int)a5;
- (EDBuildablePtg)tokenAtIndex:(unint64_t)a3 previousToken:(EDBuildablePtg *)a4;
- (char)addToken:(int)a3 extendedDataLength:(unsigned int)a4 numArgs:(int)a5;
- (id)formula;
- (id)lastTokenRefOrArea3dLinkRefIsValid:(BOOL *)a3 withEDLinks:(id)a4;
- (id)stringFromStringTokenAtIndex:(unint64_t)a3;
- (int)argTokenTypeAtIndex:(unsigned int)a3;
- (int)tokenTypeAtIndex:(unint64_t)a3;
- (unsigned)removeOptionalPtgArgs:(unsigned int)a3 minArgs:(unsigned int)a4;
- (void)convertRefsInList:(EDBuildablePtg *)a3 toType:(int)a4;
- (void)copyToFormula:(id)a3;
- (void)dealloc;
- (void)markLastTokenAsDuration;
- (void)markLastTokenAsSpanningRefVertically:(BOOL)a3 withMin:(unsigned __int16)a4 andMax:(unsigned __int16)a5;
- (void)removeTokenAtIndex:(unint64_t)a3;
- (void)replaceStringInStringTokenAtIndex:(unint64_t)a3 content:(id)a4;
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

- (int)tokenTypeAtIndex:(unint64_t)a3
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:a3];
  if (v3)
  {
    LODWORD(v3) = v3->var2;
  }

  return v3;
}

- (id)stringFromStringTokenAtIndex:(unint64_t)a3
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:a3];
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

- (void)replaceStringInStringTokenAtIndex:(unint64_t)a3 content:(id)a4
{
  v11 = a4;
  v6 = [(EDBuildableFormula *)self tokenAtIndex:a3];
  v7 = v6;
  if (v6)
  {
    if (v6->var2 == 23)
    {
      v8 = [v11 length];
      v9 = v8;
      if (v8)
      {
        XlPtg::clear(&v7->var1);
        v10 = XlPtg::addDataItem(&v7->var1, 2 * v9 + 8);
        if (v10)
        {
          copyStringToExtendedData([v11 cStringUsingEncoding:10], v10, v9);
        }
      }
    }
  }
}

- (void)removeTokenAtIndex:(unint64_t)a3
{
  v7 = 0;
  v4 = [(EDBuildableFormula *)self tokenAtIndex:a3 previousToken:&v7];
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

- (char)addToken:(int)a3 extendedDataLength:(unsigned int)a4 numArgs:(int)a5
{
  if (a3 == 64)
  {
    operator new();
  }

  operator new();
}

- (BOOL)makeArrayForLastToken:(unint64_t)a3
{
  mTree = self->mTree;
  if (mTree)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a3;
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
      if (!--v5)
      {
        return mTree != 0;
      }
    }

    [(EDBuildableFormula *)self setWarning:1];
  }

  return mTree != 0;
}

- (BOOL)insertName:(unint64_t)a3 link:(unint64_t)a4 external:(BOOL)a5 atIndex:(unsigned int)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  if (a5)
  {
    v9 = 57;
  }

  else
  {
    v9 = 35;
  }

  if (a5)
  {
    v10 = 6;
  }

  else
  {
    v10 = 4;
  }

  if (a6)
  {
    mTree = self->mTree;
    v12 = a6 - 1;
    if (a6 == 1)
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

  if (v6)
  {
    *v14 = v7;
    *(v14 + 1) = v8;
    v13 = 1;
    *(v14 + 2) = 0;
  }

  else
  {
    *v14 = v8;
    return 1;
  }

  return v13;
}

- (BOOL)addArrayWithCol:(int)a3 andRow:(int)a4
{
  v7 = (a3 + 1 + (a3 + 1) * a4);
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

  EDBuildableArrayPtg::setColRow(v9, a3, a4);

  return [(EDBuildableFormula *)self makeArrayForLastToken:v7];
}

- (BOOL)isConstantList:(unsigned int)a3
{
  v3 = 0;
  if (a3)
  {
    mTree = self->mTree;
    if (mTree)
    {
      LODWORD(v5) = a3;
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

- (BOOL)convertToList:(unsigned int)a3 withFinalParen:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v8 = a3;
  EDBuildablePtg::unionize(self->mTree, &v8);
  if (a3 != 1)
  {
    addOperator(self, 16);
  }

  if (v4)
  {
    return addOperator(self, 21);
  }

  else
  {
    return 1;
  }
}

- (BOOL)convertToIntersect:(unsigned int)a3
{
  v6 = a3;
  EDBuildablePtg::intersect(self->mTree, &v6);
  if (a3 >= 2)
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

- (void)convertRefsInList:(EDBuildablePtg *)a3 toType:(int)a4
{
  if (a3)
  {
    v4 = *&a4;
    Segments = EshGeometryProperties::getSegments(a3);
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

- (BOOL)convertRefs:(unsigned int)a3 toType:(int)a4
{
  if (a3)
  {
    operator new[]();
  }

  return 1;
}

- (BOOL)convertRefs:(unsigned int)a3 toTypes:(int *)a4
{
  if (!a3)
  {
    return 1;
  }

  mTree = self->mTree;
  if (!mTree)
  {
    return 0;
  }

  v7 = a3 - 1;
  do
  {
    var2 = mTree->var2;
    if (var2 == 21)
    {
      [(EDBuildableFormula *)self convertRefsInList:mTree toType:a4[v7]];
    }

    else
    {
      mTree->var2 = convertValueReference(var2, a4[v7]);
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

- (id)lastTokenRefOrArea3dLinkRefIsValid:(BOOL *)a3 withEDLinks:(id)a4
{
  v6 = a4;
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
      if (!a3)
      {
        goto LABEL_12;
      }

      v12 = 1;
      goto LABEL_11;
    }

    if (((1 << v10) & 0x3000000000) != 0)
    {
LABEL_7:
      v8 = [v6 referenceAtIndex:*XlPtg::getLastExtendedData(&mTree->var1)];
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
  if (a3)
  {
    v12 = 0;
LABEL_11:
    *a3 = v12;
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

- (void)markLastTokenAsSpanningRefVertically:(BOOL)a3 withMin:(unsigned __int16)a4 andMax:(unsigned __int16)a5
{
  mTree = self->mTree;
  if (mTree)
  {
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    EDBuildablePtg::setIsSpanningRef(mTree, v6, a4, a5);
  }
}

- (BOOL)uppercaseArgAtIndex:(unsigned int)a3
{
  if (!self->mTree)
  {
    return 0;
  }

  v3 = [(EDBuildableFormula *)self tokenAtIndex:a3];
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

- (BOOL)shrinkSpanningRefAtArgIndex:(unsigned int)a3
{
  v4 = [(EDBuildableFormula *)self tokenAtIndex:a3];
  if (v4)
  {

    LOBYTE(v4) = [(EDBuildableFormula *)self shrinkSpanningRef:v4];
  }

  return v4;
}

- (BOOL)wrapArgumentsWithOperator:(int)a3 argumentCount:(unsigned int)a4 atIndex:(unsigned int)a5
{
  if (a4 - 1 >= a5 + 1 || self->mTree == 0)
  {
    return 0;
  }

  v13 = 0;
  v9 = [(EDBuildableFormula *)self tokenAtIndex:a5 - a4 + 1 previousToken:&v13];
  v10 = [(EDBuildableFormula *)self tokenAtIndex:a5];
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

- (BOOL)addInfixOperator:(int)a3 atIndex:(unsigned int)a4 factor:(double)a5
{
  v5 = a3 - 5;
  if ((a3 - 5) <= 1 && a5 == 1.0)
  {
LABEL_8:
    LOBYTE(v7) = 1;
    return v7;
  }

  v9 = 0;
  v7 = [(EDBuildableFormula *)self tokenAtIndex:a4 previousToken:&v9];
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

- (void)copyToFormula:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->mWarning)
  {
    [(EDFormula *)v4 setWarning:?];
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

- (BOOL)copyToken:(unsigned int)a3 from:(id)a4
{
  if (a4)
  {
    operator new();
  }

  return 0;
}

- (BOOL)argTokenIsDurationAtIndex:(unsigned int)a3
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:a3];
  if (v3)
  {

    LOBYTE(v3) = EDBuildablePtg::isDuration(v3);
  }

  return v3;
}

- (int)argTokenTypeAtIndex:(unsigned int)a3
{
  v3 = [(EDBuildableFormula *)self tokenAtIndex:a3];
  if (v3)
  {
    LODWORD(v3) = v3->var2;
  }

  return v3;
}

- (BOOL)replaceArgPtgAtIndex:(unsigned int)a3 withFormula:(id)a4
{
  v6 = a4;
  if (EDBuildablePtg::sibling(v6[1]))
  {
    goto LABEL_2;
  }

  mTree = self->mTree;
  if (a3 && mTree)
  {
    v10 = 1;
    v11 = a3;
    do
    {
      v12 = mTree;
      v13 = EDBuildablePtg::sibling(mTree);
      mTree = v13;
      --v11;
      if (v10 >= a3)
      {
        break;
      }

      ++v10;
    }

    while (v13);
    if (v11)
    {
      goto LABEL_2;
    }

    EDBuildablePtg::setSibling(v12, v6[1]);
    if (!mTree)
    {
LABEL_15:
      v6[1] = 0;
      v7 = 1;
      goto LABEL_3;
    }

LABEL_14:
    v14 = EDBuildablePtg::sibling(mTree);
    EDBuildablePtg::setSibling(mTree, 0);
    EDBuildablePtg::setSibling(v6[1], v14);
    (*(mTree->var0 + 1))(mTree);
    goto LABEL_15;
  }

  if (!a3)
  {
    self->mTree = v6[1];
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

- (unsigned)removeOptionalPtgArgs:(unsigned int)a3 minArgs:(unsigned int)a4
{
  result = 0;
  if (a3)
  {
    v7 = a3 - a4;
    if (a3 >= a4)
    {
      v8 = 0;
      if (a3 != a4)
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
            return a3 - v8;
          }
        }
      }

      return a3 - v8;
    }
  }

  return result;
}

- (EDBuildablePtg)tokenAtIndex:(unint64_t)a3 previousToken:(EDBuildablePtg *)a4
{
  v5 = 0;
  result = self->mTree;
  if (a3 && result)
  {
    v8 = 1;
    do
    {
      v5 = result;
      result = EDBuildablePtg::sibling(result);
      if (v8 >= a3)
      {
        break;
      }

      ++v8;
    }

    while (result);
  }

  *a4 = v5;
  return result;
}

- (BOOL)fixTableOfConstantsRef:(EDBuildablePtg *)a3
{
  if (!a3)
  {
    return a3 != 0;
  }

  if (isArea(&a3->var1) && EDBuildablePtg::isSpanningRef(a3) && (v5 = EDBuildablePtg::minSpan(a3), v5 == EDBuildablePtg::maxSpan(a3)))
  {
    [(EDBuildableFormula *)self shrinkSpanningRef:a3];
  }

  else if (a3->var2 == 66)
  {
    LastExtendedData = XlPtg::getLastExtendedData(&a3->var1);
    if (LastExtendedData)
    {
      v7 = *(LastExtendedData + 2) - 101 < 2;
      goto LABEL_10;
    }
  }

  v7 = 0;
LABEL_10:
  if (EshGeometryProperties::getSegments(a3) && !v7)
  {
    [(EDBuildableFormula *)self fixTableOfConstantsRef:EshGeometryProperties::getSegments(a3)];
  }

  if (EDBuildablePtg::sibling(a3))
  {
    [(EDBuildableFormula *)self fixTableOfConstantsRef:EDBuildablePtg::sibling(a3)];
  }

  return a3 != 0;
}

- (BOOL)shrinkSpanningRef:(EDBuildablePtg *)a3
{
  if (a3 && isArea(&a3->var1) && EDBuildablePtg::isSpanningRef(a3))
  {
    LastExtendedData = XlPtg::getLastExtendedData(&a3->var1);
    v5 = EDBuildablePtg::spanningRef(a3);
    v6 = isArea3D(&a3->var1);
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
      *v9 = EDBuildablePtg::minSpan(a3) | v10;
      v11 = *(v9 + 1) & 0xC000;
      *(v9 + 1) = EDBuildablePtg::maxSpan(a3) | v11;
    }

    else
    {
      *&LastExtendedData[2 * v6] = EDBuildablePtg::minSpan(a3);
      v12 = EDBuildablePtg::maxSpan(a3);
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