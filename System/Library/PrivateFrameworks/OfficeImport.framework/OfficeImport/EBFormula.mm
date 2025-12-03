@interface EBFormula
+ (XlFormulaInfo)xlFormulaInfoFromEDFormula:(id)formula state:(id)state;
+ (char)edFormulaToParsedExpression:(id)expression tokenLength:(unsigned __int16 *)length formulaLength:(unsigned __int16 *)formulaLength state:(id)state;
+ (id)edFormulaFromXlFmlaDefinition:(const void *)definition withFormulaLength:(int)length formulaClass:(Class)class state:(id)state;
+ (id)edFormulaFromXlFmlaDefinition:(const void *)definition withFormulaLength:(int)length state:(id)state;
+ (id)edFormulaFromXlFmlaDefinition:(const void *)definition withTokenLength:(int)length formulaLength:(int)formulaLength formulaClass:(Class)class edSheet:(id)sheet state:(id)state;
+ (unsigned)writeToken:(id)token tokenIndex:(unsigned int)index tokenStream:(XLFormulaStream *)stream extendedStream:(XLFormulaStream *)extendedStream state:(id)state;
+ (void)readFormulaFromXlCell:(XlCell *)cell edCell:(EDCellHeader *)edCell edRowBlocks:(id)blocks state:(id)state;
+ (void)setupTokensInEDFormulaFromXlFormulaProcessor:(void *)processor length:(int)length edFormula:(id)formula edSheet:(id)sheet;
@end

@implementation EBFormula

+ (void)readFormulaFromXlCell:(XlCell *)cell edCell:(EDCellHeader *)edCell edRowBlocks:(id)blocks state:(id)state
{
  blocksCopy = blocks;
  stateCopy = state;
  if (cell)
  {
    var8 = cell->var8;
    if (var8)
    {
      var1 = var8->var1;
      v13 = objc_opt_class();
      if (var1 == 1)
      {
        v13 = objc_opt_class();
      }

      formula = [v13 formula];
      readerState = [stateCopy readerState];
      xlFormulaProcessor = [readerState xlFormulaProcessor];

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
        XlFormulaProcessor::setFormula(xlFormulaProcessor, var8->var3, var8->var5, var8->var4);
      }

      XlFormulaProcessor::getShareBase(xlFormulaProcessor, var8, &v22, &v21);
      v18 = formula;
      v19 = v17;
      v20 = v18;
      if (v19)
      {
        [(EDFormula *)v18 setRowBaseOrOffset:v22];
        [(EDFormula *)v20 setColumnBaseOrOffset:v21];

        goto LABEL_11;
      }

      -[EDFormula setBaseFormulaIndex:](v18, "setBaseFormulaIndex:", [stateCopy sharedFormulaIndexForRowCol:v21 | (v22 << 16)]);
      [(EDFormula *)v20 setRowBaseOrOffset:cell->var1 - v22];
      [(EDFormula *)v20 setColumnBaseOrOffset:(cell->var2 - v21)];

      setFormulaForEDCell(edCell, formula, blocksCopy);
    }
  }
}

+ (id)edFormulaFromXlFmlaDefinition:(const void *)definition withFormulaLength:(int)length state:(id)state
{
  v5 = *&length;
  stateCopy = state;
  v9 = [self edFormulaFromXlFmlaDefinition:definition withFormulaLength:v5 formulaClass:objc_opt_class() state:stateCopy];

  return v9;
}

+ (id)edFormulaFromXlFmlaDefinition:(const void *)definition withFormulaLength:(int)length formulaClass:(Class)class state:(id)state
{
  v7 = *&length;
  stateCopy = state;
  edSheet = [stateCopy edSheet];
  readerState = [stateCopy readerState];
  v13 = [self edFormulaFromXlFmlaDefinition:definition withTokenLength:v7 formulaLength:v7 formulaClass:class edSheet:edSheet state:readerState];

  return v13;
}

+ (id)edFormulaFromXlFmlaDefinition:(const void *)definition withTokenLength:(int)length formulaLength:(int)formulaLength formulaClass:(Class)class edSheet:(id)sheet state:(id)state
{
  v9 = *&formulaLength;
  sheetCopy = sheet;
  stateCopy = state;
  if (v9 >= length && definition && length >= 1 && v9 >= 1)
  {
    XlFormulaProcessor::setFormula([stateCopy xlFormulaProcessor], definition, length, v9);
  }

  return 0;
}

+ (XlFormulaInfo)xlFormulaInfoFromEDFormula:(id)formula state:(id)state
{
  formulaCopy = formula;
  stateCopy = state;
  if (!formulaCopy)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  warning = [formulaCopy warning];

  if (warning)
  {
    v9 = &ECUnsupportedExportFormula;
    if (!stateCopy)
    {
      v9 = &ECUnsupportedImportFormula;
    }

    [TCMessageContext reportWarning:*v9];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([formulaCopy tokenCount])
    {
      operator new();
    }

    goto LABEL_10;
  }

  v10 = [self xlFormulaInfoFromEDSharedFormula:formulaCopy state:stateCopy];
LABEL_11:

  return v10;
}

+ (char)edFormulaToParsedExpression:(id)expression tokenLength:(unsigned __int16 *)length formulaLength:(unsigned __int16 *)formulaLength state:(id)state
{
  expressionCopy = expression;
  stateCopy = state;
  *length = 0;
  *formulaLength = 0;
  tokenCount = [expressionCopy tokenCount];
  if (tokenCount)
  {
    v13 = 0;
    v19 = &unk_286EC9CC0;
    v20 = 0;
    v17 = &unk_286EC9CC0;
    v18 = 0;
    do
    {
      LODWORD(v13) = v13 + [self writeToken:expressionCopy tokenIndex:v13 tokenStream:&v19 extendedStream:&v17 state:stateCopy] + 1;
    }

    while (v13 < tokenCount);
    v14 = v20;
    *length = v20;
    v15 = v18 + v14;
    *formulaLength = v15;
    if (v15)
    {
      operator new[](v15);
    }
  }

  return 0;
}

+ (unsigned)writeToken:(id)token tokenIndex:(unsigned int)index tokenStream:(XLFormulaStream *)stream extendedStream:(XLFormulaStream *)extendedStream state:(id)state
{
  v10 = *&index;
  tokenCopy = token;
  stateCopy = state;
  if ([tokenCopy tokenCount] <= v10)
  {
    v18 = 0;
  }

  else
  {
    XlPtg::XlPtg(&v23);
    [tokenCopy populateXlPtg:&v23 index:v10];
    if (v23.var1 == 38 || v23.var1 == 102 || v23.var1 == 70)
    {
      (*(stream->var0 + 2))(stream, 4);
      LastExtendedData = XlPtg::getLastExtendedData(&v23);
      v15 = (*(stream->var0 + 8))(stream);
      (*(stream->var0 + 2))(stream, 2);
      v16 = *LastExtendedData;
      if (*LastExtendedData)
      {
        v17 = *LastExtendedData;
        do
        {
          v10 = (v10 + 1);
          [self writeToken:tokenCopy tokenIndex:v10 tokenStream:stream extendedStream:extendedStream state:stateCopy];
          --v17;
        }

        while (v17);
        v18 = v16 + 1;
      }

      else
      {
        v18 = 1;
      }

      v19 = (*(*v15 + 72))(v15, stream);
      (*(*v15 + 32))(v15, (v19 - 2));
      (*(*v15 + 8))(v15);
      [self writeToken:tokenCopy tokenIndex:(v10 + 1) tokenStream:stream extendedStream:extendedStream state:stateCopy];
      v20 = *(LastExtendedData + 1);
      (*(extendedStream->var0 + 4))(extendedStream, v20);
      if (v20)
      {
        v21 = (LastExtendedData + 10);
        do
        {
          (*(extendedStream->var0 + 4))(extendedStream, *(v21 - 3));
          (*(extendedStream->var0 + 4))(extendedStream, *(v21 - 2));
          (*(extendedStream->var0 + 4))(extendedStream, *(v21 - 1));
          (*(extendedStream->var0 + 4))(extendedStream, *v21);
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

+ (void)setupTokensInEDFormulaFromXlFormulaProcessor:(void *)processor length:(int)length edFormula:(id)formula edSheet:(id)sheet
{
  v7 = *&length;
  formulaCopy = formula;
  sheetCopy = sheet;
  [formulaCopy setupTokensWithTokensCount:1 tokensWithDataCount:1 extendedDataLength:v7 extendedDataCount:1];
  XlFormulaProcessor::startTokenEnum(processor);
  while (1)
  {
    Token = XlFormulaProcessor::nextToken(processor);
    v11 = Token;
    if (!Token)
    {
      break;
    }

    if (Token->var1 == 28)
    {
      [formulaCopy setWarning:1];
      [formulaCopy removeAllTokens];
      XlPtg::~XlPtg(v11);
      MEMORY[0x25F897000]();
      break;
    }

    [formulaCopy copyTokenFromXlPtg:Token];
    XlPtg::~XlPtg(v11);
    MEMORY[0x25F897000]();
  }
}

@end