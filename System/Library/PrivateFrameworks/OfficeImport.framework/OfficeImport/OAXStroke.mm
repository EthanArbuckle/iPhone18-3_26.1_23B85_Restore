@interface OAXStroke
+ (id)compoundLineEnumMap;
+ (id)lineCapEnumMap;
+ (id)lineEndLengthEnumMap;
+ (id)lineEndTypeEnumMap;
+ (id)lineEndWidthEnumMap;
+ (id)penAlignmentEnumMap;
+ (id)presetDashEnumMap;
+ (id)readCustomDashFromXmlNode:(_xmlNode *)node drawingState:(id)state;
+ (id)readLineEndFromXmlNode:(_xmlNode *)node;
+ (id)readPresetDashFromXmlNode:(_xmlNode *)node;
+ (id)readStrokeFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
@end

@implementation OAXStroke

+ (id)lineCapEnumMap
{
  if (+[OAXStroke(Private) lineCapEnumMap]::once != -1)
  {
    +[OAXStroke(Private) lineCapEnumMap];
  }

  v3 = +[OAXStroke(Private) lineCapEnumMap]::lineCapEnumMap;

  return v3;
}

+ (id)compoundLineEnumMap
{
  if (+[OAXStroke(Private) compoundLineEnumMap]::once != -1)
  {
    +[OAXStroke(Private) compoundLineEnumMap];
  }

  v3 = +[OAXStroke(Private) compoundLineEnumMap]::compoundLineEnumMap;

  return v3;
}

+ (id)penAlignmentEnumMap
{
  if (+[OAXStroke(Private) penAlignmentEnumMap]::once != -1)
  {
    +[OAXStroke(Private) penAlignmentEnumMap];
  }

  v3 = +[OAXStroke(Private) penAlignmentEnumMap]::penAlignmentEnumMap;

  return v3;
}

+ (id)presetDashEnumMap
{
  if (+[OAXStroke(Private) presetDashEnumMap]::once != -1)
  {
    +[OAXStroke(Private) presetDashEnumMap];
  }

  v3 = +[OAXStroke(Private) presetDashEnumMap]::presetDashEnumMap;

  return v3;
}

+ (id)lineEndTypeEnumMap
{
  if (+[OAXStroke(Private) lineEndTypeEnumMap]::once != -1)
  {
    +[OAXStroke(Private) lineEndTypeEnumMap];
  }

  v3 = +[OAXStroke(Private) lineEndTypeEnumMap]::lineEndTypeEnumMap;

  return v3;
}

+ (id)lineEndWidthEnumMap
{
  if (+[OAXStroke(Private) lineEndWidthEnumMap]::once != -1)
  {
    +[OAXStroke(Private) lineEndWidthEnumMap];
  }

  v3 = +[OAXStroke(Private) lineEndWidthEnumMap]::lineEndWidthEnumMap;

  return v3;
}

+ (id)lineEndLengthEnumMap
{
  if (+[OAXStroke(Private) lineEndLengthEnumMap]::once != -1)
  {
    +[OAXStroke(Private) lineEndLengthEnumMap];
  }

  v3 = +[OAXStroke(Private) lineEndLengthEnumMap]::lineEndLengthEnumMap;

  return v3;
}

+ (id)readStrokeFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v10 = objc_alloc_init(OADStroke);
  v28 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "w", &v28))
  {
    v11 = v28 / 12700.0;
    *&v11 = v11;
    [(OADStroke *)v10 setWidth:v11];
  }

  v12 = CXDefaultStringAttribute(node, CXNoNamespace, "cap", 0);
  v25 = v12;
  if (v12)
  {
    lineCapEnumMap = [self lineCapEnumMap];
    v14 = [lineCapEnumMap valueForString:v12];

    [(OADStroke *)v10 setCap:v14];
  }

  v26 = CXDefaultStringAttribute(node, CXNoNamespace, "cmpd", 0);
  if (v26)
  {
    compoundLineEnumMap = [self compoundLineEnumMap];
    v16 = [compoundLineEnumMap valueForString:v26];

    [(OADStroke *)v10 setCompoundType:v16];
  }

  v17 = CXDefaultStringAttribute(node, CXNoNamespace, "algn", 0);
  if (v17)
  {
    penAlignmentEnumMap = [self penAlignmentEnumMap];
    v19 = [penAlignmentEnumMap valueForString:v17];

    [(OADStroke *)v10 setPenAlignment:v19];
  }

  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type != XML_ELEMENT_NODE)
    {
      continue;
    }

    v21 = [OAXFill readFillFromXmlNode:i packagePart:partCopy drawingState:stateCopy];
    if (v21)
    {
      [(OADStroke *)v10 setFill:v21];
    }

    else
    {
      if (xmlStrEqual(i->name, "prstDash"))
      {
        v22 = [self readPresetDashFromXmlNode:i];
        [(OADStroke *)v10 setDash:v22];
LABEL_30:

        goto LABEL_31;
      }

      if (xmlStrEqual(i->name, "custDash"))
      {
        v22 = [self readCustomDashFromXmlNode:i drawingState:stateCopy];
        [(OADStroke *)v10 setDash:v22];
        goto LABEL_30;
      }

      if (xmlStrEqual(i->name, "round"))
      {
        v22 = objc_alloc_init(OADRoundLineJoin);
        [(OADStroke *)v10 setJoin:v22];
        goto LABEL_30;
      }

      if (xmlStrEqual(i->name, "bevel"))
      {
        v22 = objc_alloc_init(OADBevelLineJoin);
        [(OADStroke *)v10 setJoin:v22];
        goto LABEL_30;
      }

      if (xmlStrEqual(i->name, "miter"))
      {
        v22 = objc_alloc_init(OADMiterLineJoin);
        v27 = 0.0;
        if (CXOptionalFractionAttribute(i, CXNoNamespace, "lim", &v27))
        {
          HIDWORD(v23) = HIDWORD(v27);
          *&v23 = v27;
          [(OADRoundLineJoin *)v22 setLimit:v23];
        }

        [(OADStroke *)v10 setJoin:v22, v25];
        goto LABEL_30;
      }

      if (xmlStrEqual(i->name, "headEnd"))
      {
        v22 = [self readLineEndFromXmlNode:i];
        [(OADStroke *)v10 setTail:v22];
        goto LABEL_30;
      }

      if (xmlStrEqual(i->name, "tailEnd"))
      {
        v22 = [self readLineEndFromXmlNode:i];
        [(OADStroke *)v10 setHead:v22];
        goto LABEL_30;
      }
    }

LABEL_31:
  }

  return v10;
}

void __41__OAXStroke_Private__compoundLineEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ41__OAXStroke_Private__compoundLineEnumMap_EUb_E23compoundLineEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __41__OAXStroke_Private__compoundLineEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ41__OAXStroke_Private__compoundLineEnumMap_EUb_E23compoundLineEnumStructs count:5 caseSensitive:1];
  v1 = +[OAXStroke(Private) compoundLineEnumMap]::compoundLineEnumMap;
  +[OAXStroke(Private) compoundLineEnumMap]::compoundLineEnumMap = v0;
}

void __36__OAXStroke_Private__lineCapEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ36__OAXStroke_Private__lineCapEnumMap_EUb0_E18lineCapEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __36__OAXStroke_Private__lineCapEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ36__OAXStroke_Private__lineCapEnumMap_EUb0_E18lineCapEnumStructs count:3 caseSensitive:1];
  v1 = +[OAXStroke(Private) lineCapEnumMap]::lineCapEnumMap;
  +[OAXStroke(Private) lineCapEnumMap]::lineCapEnumMap = v0;
}

void __41__OAXStroke_Private__penAlignmentEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ41__OAXStroke_Private__penAlignmentEnumMap_EUb1_E23penAlignmentEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __41__OAXStroke_Private__penAlignmentEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ41__OAXStroke_Private__penAlignmentEnumMap_EUb1_E23penAlignmentEnumStructs count:2 caseSensitive:1];
  v1 = +[OAXStroke(Private) penAlignmentEnumMap]::penAlignmentEnumMap;
  +[OAXStroke(Private) penAlignmentEnumMap]::penAlignmentEnumMap = v0;
}

void __40__OAXStroke_Private__lineEndTypeEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ40__OAXStroke_Private__lineEndTypeEnumMap_EUb2_E22lineEndTypeEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __40__OAXStroke_Private__lineEndTypeEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ40__OAXStroke_Private__lineEndTypeEnumMap_EUb2_E22lineEndTypeEnumStructs count:6 caseSensitive:1];
  v1 = +[OAXStroke(Private) lineEndTypeEnumMap]::lineEndTypeEnumMap;
  +[OAXStroke(Private) lineEndTypeEnumMap]::lineEndTypeEnumMap = v0;
}

void __41__OAXStroke_Private__lineEndWidthEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ41__OAXStroke_Private__lineEndWidthEnumMap_EUb3_E23lineEndWidthEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __41__OAXStroke_Private__lineEndWidthEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ41__OAXStroke_Private__lineEndWidthEnumMap_EUb3_E23lineEndWidthEnumStructs count:3 caseSensitive:1];
  v1 = +[OAXStroke(Private) lineEndWidthEnumMap]::lineEndWidthEnumMap;
  +[OAXStroke(Private) lineEndWidthEnumMap]::lineEndWidthEnumMap = v0;
}

void __42__OAXStroke_Private__lineEndLengthEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ42__OAXStroke_Private__lineEndLengthEnumMap_EUb4_E24lineEndLengthEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __42__OAXStroke_Private__lineEndLengthEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ42__OAXStroke_Private__lineEndLengthEnumMap_EUb4_E24lineEndLengthEnumStructs count:3 caseSensitive:1];
  v1 = +[OAXStroke(Private) lineEndLengthEnumMap]::lineEndLengthEnumMap;
  +[OAXStroke(Private) lineEndLengthEnumMap]::lineEndLengthEnumMap = v0;
}

void __39__OAXStroke_Private__presetDashEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ39__OAXStroke_Private__presetDashEnumMap_EUb5_E21presetDashEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __39__OAXStroke_Private__presetDashEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ39__OAXStroke_Private__presetDashEnumMap_EUb5_E21presetDashEnumStructs count:11 caseSensitive:1];
  v1 = +[OAXStroke(Private) presetDashEnumMap]::presetDashEnumMap;
  +[OAXStroke(Private) presetDashEnumMap]::presetDashEnumMap = v0;
}

+ (id)readLineEndFromXmlNode:(_xmlNode *)node
{
  v5 = objc_alloc_init(OADLineEnd);
  v6 = CXDefaultStringAttribute(node, CXNoNamespace, "type", 0);
  if (v6)
  {
    lineEndTypeEnumMap = [self lineEndTypeEnumMap];
    v8 = [lineEndTypeEnumMap valueForString:v6];

    v9 = 0;
    if (v8 < 0x100)
    {
      v9 = v8;
    }

    [(OADLineEnd *)v5 setType:v9];
  }

  v10 = CXDefaultStringAttribute(node, CXNoNamespace, "w", 0);
  if (v10)
  {
    lineEndWidthEnumMap = [self lineEndWidthEnumMap];
    v12 = [lineEndWidthEnumMap valueForString:v10];

    v13 = 0;
    if (v12 < 0x100)
    {
      v13 = v12;
    }

    [(OADLineEnd *)v5 setWidth:v13];
  }

  v14 = CXDefaultStringAttribute(node, CXNoNamespace, "len", 0);
  if (v14)
  {
    lineEndLengthEnumMap = [self lineEndLengthEnumMap];
    v16 = [lineEndLengthEnumMap valueForString:v14];

    v17 = 0;
    if (v16 < 0x100)
    {
      v17 = v16;
    }

    [(OADLineEnd *)v5 setLength:v17];
  }

  return v5;
}

+ (id)readPresetDashFromXmlNode:(_xmlNode *)node
{
  v5 = objc_alloc_init(OADPresetDash);
  v6 = CXDefaultStringAttribute(node, CXNoNamespace, "val", 0);
  if (v6)
  {
    presetDashEnumMap = [self presetDashEnumMap];
    v8 = [presetDashEnumMap valueForString:v6];

    [(OADPresetDash *)v5 setType:v8];
  }

  return v5;
}

+ (id)readCustomDashFromXmlNode:(_xmlNode *)node drawingState:(id)state
{
  stateCopy = state;
  v6 = objc_alloc_init(OADCustomDash);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  oAXMainNamespace = [stateCopy OAXMainNamespace];
  Child = OCXFindChild(node, oAXMainNamespace, "ds");

  while (Child)
  {
    [OAXBaseTypes readRequiredFractionFromXmlNode:Child name:"d"];
    v11 = v10;
    [OAXBaseTypes readRequiredFractionFromXmlNode:Child name:"sp"];
    LODWORD(v13) = v12;
    LODWORD(v14) = v11;
    [OADDashStop addStopWithDash:v7 space:v14 toArray:v13];
    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    Child = OCXFindNextChild(Child, oAXMainNamespace2, "ds");
  }

  [(OADCustomDash *)v6 setStops:v7];

  return v6;
}

void __41__OAXStroke_Private__compoundLineEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ41__OAXStroke_Private__compoundLineEnumMap_EUb_E23compoundLineEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ41__OAXStroke_Private__compoundLineEnumMap_EUb_E23compoundLineEnumStructs);
  }
}

void __36__OAXStroke_Private__lineCapEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ36__OAXStroke_Private__lineCapEnumMap_EUb0_E18lineCapEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ36__OAXStroke_Private__lineCapEnumMap_EUb0_E18lineCapEnumStructs);
  }
}

void __41__OAXStroke_Private__penAlignmentEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ41__OAXStroke_Private__penAlignmentEnumMap_EUb1_E23penAlignmentEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ41__OAXStroke_Private__penAlignmentEnumMap_EUb1_E23penAlignmentEnumStructs);
  }
}

void __40__OAXStroke_Private__lineEndTypeEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ40__OAXStroke_Private__lineEndTypeEnumMap_EUb2_E22lineEndTypeEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ40__OAXStroke_Private__lineEndTypeEnumMap_EUb2_E22lineEndTypeEnumStructs);
  }
}

void __41__OAXStroke_Private__lineEndWidthEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ41__OAXStroke_Private__lineEndWidthEnumMap_EUb3_E23lineEndWidthEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ41__OAXStroke_Private__lineEndWidthEnumMap_EUb3_E23lineEndWidthEnumStructs);
  }
}

void __42__OAXStroke_Private__lineEndLengthEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ42__OAXStroke_Private__lineEndLengthEnumMap_EUb4_E24lineEndLengthEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ42__OAXStroke_Private__lineEndLengthEnumMap_EUb4_E24lineEndLengthEnumStructs);
  }
}

void __39__OAXStroke_Private__presetDashEnumMap__block_invoke_cold_1()
{
  v0 = __cxa_guard_acquire(&_ZGVZZ39__OAXStroke_Private__presetDashEnumMap_EUb5_E21presetDashEnumStructs);
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ39__OAXStroke_Private__presetDashEnumMap_EUb5_E21presetDashEnumStructs);
  }
}

@end