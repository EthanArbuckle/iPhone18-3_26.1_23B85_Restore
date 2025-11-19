@interface EBFormula
+ (XlFormulaInfo)xlFormulaInfoFromEDFormula:(id)a3 state:(id)a4;
+ (char)edFormulaToParsedExpression:(id)a3 tokenLength:(unsigned __int16 *)a4 formulaLength:(unsigned __int16 *)a5 state:(id)a6;
+ (id)edFormulaFromXlFmlaDefinition:(const void *)a3 withFormulaLength:(int)a4 formulaClass:(Class)a5 state:(id)a6;
+ (id)edFormulaFromXlFmlaDefinition:(const void *)a3 withFormulaLength:(int)a4 state:(id)a5;
+ (id)edFormulaFromXlFmlaDefinition:(const void *)a3 withTokenLength:(int)a4 formulaLength:(int)a5 formulaClass:(Class)a6 edSheet:(id)a7 state:(id)a8;
+ (unsigned)writeToken:(id)a3 tokenIndex:(unsigned int)a4 tokenStream:(XLFormulaStream *)a5 extendedStream:(XLFormulaStream *)a6 state:(id)a7;
+ (void)readFormulaFromXlCell:(XlCell *)a3 edCell:(EDCellHeader *)a4 edRowBlocks:(id)a5 state:(id)a6;
+ (void)setupTokensInEDFormulaFromXlFormulaProcessor:(void *)a3 length:(int)a4 edFormula:(id)a5 edSheet:(id)a6;
@end

@implementation EBFormula

+ (void)readFormulaFromXlCell:(XlCell *)a3 edCell:(EDCellHeader *)a4 edRowBlocks:(id)a5 state:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a3)
  {
    var8 = a3->var8;
    if (var8)
    {
      var1 = var8->var1;
      v13 = objc_opt_class();
      if (var1 == 1)
      {
        v13 = objc_opt_class();
      }

      v14 = [v13 formula];
      v15 = [v10 readerState];
      v16 = [v15 xlFormulaProcessor];

      if (var8->var6)
      {
        v17 = 1;
      }

      else
      {
        v17 = var8->var7 != 0;
      }

      v22 = -1;
      v21 = -1;
      if (var1 != 1)
      {
LABEL_11:
        XlFormulaProcessor::setFormula(v16, var8->var3, var8->var5, var8->var4);
      }

      XlFormulaProcessor::getShareBase(v16, var8, &v22, &v21);
      v18 = v14;
      v19 = v17;
      v20 = v18;
      if (v19)
      {
        [(EDFormula *)v18 setRowBaseOrOffset:v22];
        [(EDFormula *)v20 setColumnBaseOrOffset:v21];

        goto LABEL_11;
      }

      -[EDFormula setBaseFormulaIndex:](v18, "setBaseFormulaIndex:", [v10 sharedFormulaIndexForRowCol:v21 | (v22 << 16)]);
      [(EDFormula *)v20 setRowBaseOrOffset:a3->var1 - v22];
      [(EDFormula *)v20 setColumnBaseOrOffset:(a3->var2 - v21)];

      setFormulaForEDCell(a4, v14, v9);
    }
  }
}

+ (id)edFormulaFromXlFmlaDefinition:(const void *)a3 withFormulaLength:(int)a4 state:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [a1 edFormulaFromXlFmlaDefinition:a3 withFormulaLength:v5 formulaClass:objc_opt_class() state:v8];

  return v9;
}

+ (id)edFormulaFromXlFmlaDefinition:(const void *)a3 withFormulaLength:(int)a4 formulaClass:(Class)a5 state:(id)a6
{
  v7 = *&a4;
  v10 = a6;
  v11 = [v10 edSheet];
  v12 = [v10 readerState];
  v13 = [a1 edFormulaFromXlFmlaDefinition:a3 withTokenLength:v7 formulaLength:v7 formulaClass:a5 edSheet:v11 state:v12];

  return v13;
}

+ (id)edFormulaFromXlFmlaDefinition:(const void *)a3 withTokenLength:(int)a4 formulaLength:(int)a5 formulaClass:(Class)a6 edSheet:(id)a7 state:(id)a8
{
  v9 = *&a5;
  v12 = a7;
  v13 = a8;
  if (v9 >= a4 && a3 && a4 >= 1 && v9 >= 1)
  {
    XlFormulaProcessor::setFormula([v13 xlFormulaProcessor], a3, a4, v9);
  }

  return 0;
}

+ (XlFormulaInfo)xlFormulaInfoFromEDFormula:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v8 = [v6 warning];

  if (v8)
  {
    v9 = &ECUnsupportedExportFormula;
    if (!v7)
    {
      v9 = &ECUnsupportedImportFormula;
    }

    [TCMessageContext reportWarning:*v9];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([v6 tokenCount])
    {
      operator new();
    }

    goto LABEL_10;
  }

  v10 = [a1 xlFormulaInfoFromEDSharedFormula:v6 state:v7];
LABEL_11:

  return v10;
}

+ (char)edFormulaToParsedExpression:(id)a3 tokenLength:(unsigned __int16 *)a4 formulaLength:(unsigned __int16 *)a5 state:(id)a6
{
  v10 = a3;
  v11 = a6;
  *a4 = 0;
  *a5 = 0;
  v12 = [v10 tokenCount];
  if (v12)
  {
    v13 = 0;
    v19 = &unk_286EC9CC0;
    v20 = 0;
    v17 = &unk_286EC9CC0;
    v18 = 0;
    do
    {
      LODWORD(v13) = v13 + [a1 writeToken:v10 tokenIndex:v13 tokenStream:&v19 extendedStream:&v17 state:v11] + 1;
    }

    while (v13 < v12);
    v14 = v20;
    *a4 = v20;
    v15 = v18 + v14;
    *a5 = v15;
    if (v15)
    {
      operator new[](v15);
    }
  }

  return 0;
}

+ (unsigned)writeToken:(id)a3 tokenIndex:(unsigned int)a4 tokenStream:(XLFormulaStream *)a5 extendedStream:(XLFormulaStream *)a6 state:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a7;
  if ([v12 tokenCount] <= v10)
  {
    v18 = 0;
  }

  else
  {
    XlPtg::XlPtg(&v23);
    [v12 populateXlPtg:&v23 index:v10];
    if (v23.var1 == 38 || v23.var1 == 102 || v23.var1 == 70)
    {
      (*(a5->var0 + 2))(a5, 4);
      LastExtendedData = XlPtg::getLastExtendedData(&v23);
      v15 = (*(a5->var0 + 8))(a5);
      (*(a5->var0 + 2))(a5, 2);
      v16 = *LastExtendedData;
      if (*LastExtendedData)
      {
        v17 = *LastExtendedData;
        do
        {
          v10 = (v10 + 1);
          [a1 writeToken:v12 tokenIndex:v10 tokenStream:a5 extendedStream:a6 state:v13];
          --v17;
        }

        while (v17);
        v18 = v16 + 1;
      }

      else
      {
        v18 = 1;
      }

      v19 = (*(*v15 + 72))(v15, a5);
      (*(*v15 + 32))(v15, (v19 - 2));
      (*(*v15 + 8))(v15);
      [a1 writeToken:v12 tokenIndex:(v10 + 1) tokenStream:a5 extendedStream:a6 state:v13];
      v20 = *(LastExtendedData + 1);
      (*(a6->var0 + 4))(a6, v20);
      if (v20)
      {
        v21 = (LastExtendedData + 10);
        do
        {
          (*(a6->var0 + 4))(a6, *(v21 - 3));
          (*(a6->var0 + 4))(a6, *(v21 - 2));
          (*(a6->var0 + 4))(a6, *(v21 - 1));
          (*(a6->var0 + 4))(a6, *v21);
          v21 += 4;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      v18 = 0;
    }

    XlPtg::XlPtg(&v23);
    XlPtg::~XlPtg(&v23);
  }

  return v18;
}

+ (void)setupTokensInEDFormulaFromXlFormulaProcessor:(void *)a3 length:(int)a4 edFormula:(id)a5 edSheet:(id)a6
{
  v7 = *&a4;
  v12 = a5;
  v9 = a6;
  [v12 setupTokensWithTokensCount:1 tokensWithDataCount:1 extendedDataLength:v7 extendedDataCount:1];
  XlFormulaProcessor::startTokenEnum(a3);
  while (1)
  {
    Token = XlFormulaProcessor::nextToken(a3);
    v11 = Token;
    if (!Token)
    {
      break;
    }

    if (Token->var1 == 28)
    {
      [v12 setWarning:1];
      [v12 removeAllTokens];
      XlPtg::~XlPtg(v11);
      MEMORY[0x25F897000]();
      break;
    }

    [v12 copyTokenFromXlPtg:Token];
    XlPtg::~XlPtg(v11);
    MEMORY[0x25F897000]();
  }
}

@end