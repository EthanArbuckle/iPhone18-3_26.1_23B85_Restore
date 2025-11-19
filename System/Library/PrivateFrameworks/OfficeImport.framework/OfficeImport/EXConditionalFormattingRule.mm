@interface EXConditionalFormattingRule
+ (id)conditionalFormattingRuleTypeEnumMap;
+ (id)operatorStringEnumMap;
+ (id)timePeriodEnumMap;
+ (int)edOperatorFromXmlOperatorString:(id)a3;
+ (int)edRuleTypeFromXmlRuleTypeString:(id)a3;
+ (int)edTimePeriodFromXmlTimePeriodString:(id)a3;
+ (void)conditionalFormattingRuleTypeEnumMap;
+ (void)operatorStringEnumMap;
+ (void)readFrom:(_xmlNode *)a3 x14:(BOOL)a4 edConditionalFormatting:(id)a5 edReference:(id)a6 state:(id)a7;
+ (void)timePeriodEnumMap;
@end

@implementation EXConditionalFormattingRule

+ (id)timePeriodEnumMap
{
  {
    +[EXConditionalFormattingRule timePeriodEnumMap];
  }

  if (+[EXConditionalFormattingRule timePeriodEnumMap]::once != -1)
  {
    +[EXConditionalFormattingRule timePeriodEnumMap];
  }

  v2 = +[EXConditionalFormattingRule timePeriodEnumMap]::sTimePeriodEnumMap;

  return v2;
}

void __48__EXConditionalFormattingRule_timePeriodEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXConditionalFormattingRule timePeriodEnumMap]::sTimePeriodStructs count:11 caseSensitive:1];
  v1 = +[EXConditionalFormattingRule timePeriodEnumMap]::sTimePeriodEnumMap;
  +[EXConditionalFormattingRule timePeriodEnumMap]::sTimePeriodEnumMap = v0;
}

+ (id)operatorStringEnumMap
{
  {
    +[EXConditionalFormattingRule operatorStringEnumMap];
  }

  if (+[EXConditionalFormattingRule operatorStringEnumMap]::once != -1)
  {
    +[EXConditionalFormattingRule operatorStringEnumMap];
  }

  v2 = +[EXConditionalFormattingRule operatorStringEnumMap]::sOperatorStringEnumMap;

  return v2;
}

void __52__EXConditionalFormattingRule_operatorStringEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXConditionalFormattingRule operatorStringEnumMap]::sOperatorStringStructs count:13 caseSensitive:1];
  v1 = +[EXConditionalFormattingRule operatorStringEnumMap]::sOperatorStringEnumMap;
  +[EXConditionalFormattingRule operatorStringEnumMap]::sOperatorStringEnumMap = v0;
}

+ (id)conditionalFormattingRuleTypeEnumMap
{
  {
    +[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap];
  }

  if (+[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap]::once != -1)
  {
    +[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap];
  }

  v2 = +[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap]::sConditionalFormattingRuleTypeEnumMap;

  return v2;
}

void __67__EXConditionalFormattingRule_conditionalFormattingRuleTypeEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap]::sConditionalFormattingRuleTypeStructs count:19 caseSensitive:1];
  v1 = +[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap]::sConditionalFormattingRuleTypeEnumMap;
  +[EXConditionalFormattingRule conditionalFormattingRuleTypeEnumMap]::sConditionalFormattingRuleTypeEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)a3 x14:(BOOL)a4 edConditionalFormatting:(id)a5 edReference:(id)a6 state:(id)a7
{
  v40 = a4;
  v11 = a5;
  v41 = a6;
  v12 = a7;
  v13 = v12;
  if (!a3)
  {
    goto LABEL_47;
  }

  v14 = [v12 resources];
  v15 = [EDConditionalFormattingRule conditionalFormattingRuleWithResources:v14];

  [v11 addRule:v15];
  v49 = 0;
  CXOptionalStringAttribute(a3, CXNoNamespace, "type", &v49);
  v16 = v49;
  v17 = [a1 edRuleTypeFromXmlRuleTypeString:v16];
  [v15 setType:v17];
  if (!v17)
  {
    goto LABEL_46;
  }

  v38 = v16;
  v39 = v11;
  v48 = 0;
  v18 = CXOptionalStringAttribute(a3, CXNoNamespace, "operator", &v48);
  v19 = v48;
  if (v18)
  {
    v20 = [a1 edOperatorFromXmlOperatorString:v19];
  }

  else if (v17 > 10)
  {
    if (v17 == 11)
    {
      v20 = 12;
    }

    else
    {
      if (v17 != 15)
      {
        goto LABEL_6;
      }

      v20 = 13;
    }
  }

  else if (v17 == 4)
  {
    v20 = 10;
  }

  else
  {
    if (v17 != 8)
    {
      goto LABEL_6;
    }

    v20 = 11;
  }

  [v15 setOperatorEnum:v20];
LABEL_6:
  v47 = 0;
  v37 = v19;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "priority", &v47))
  {
    [v15 setPriority:v47];
  }

  v46 = 0;
  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "stopIfTrue", &v46))
  {
    [v15 setStopIfTrue:v46];
  }

  v36 = a1;
  if (v40)
  {
    v21 = EXMainNamespace;
    v22 = "f";
  }

  else
  {
    v21 = [v13 EXSpreadsheetMLNamespace];
    v22 = "formula";
  }

  Child = OCXFindChild(a3, v21, v22);
  v24 = 1;
  while (1)
  {
    v25 = v24;
    if (Child)
    {
      break;
    }

LABEL_23:
    v24 = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v26 = objc_opt_class();
  v27 = [EXFormula edFormulaFromXmlFormulaElement:Child formulaClass:objc_opt_class() state:v13];
  v28 = TSUDynamicCast(v26, v27);

  if (v28)
  {
    [v28 setRowBaseOrOffset:{objc_msgSend(v41, "firstRow")}];
    [v28 setColumnBaseOrOffset:{objc_msgSend(v41, "firstColumn")}];
    [v28 setForceNonBaseFormula:1];
    [v28 convertTokensToShared];
    v29 = [v13 currentSheet];
    [v15 addFormula:v28 worksheet:v29];
  }

  if (v25)
  {
    Child = OCXFindNextChild(Child, v21, v22);
    goto LABEL_23;
  }

LABEL_24:
  if (v40)
  {
    v30 = v37;
    v16 = v38;
    v31 = [EXDifferentialStyle edDifferentialStyleFromXmlDifferentialStyleElement:OCXFindChild(a3 state:EXXL2010Namespace, "dxf"), v13];
    [v15 setDifferentialStyle:v31];
  }

  else
  {
    v45 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "dxfId", &v45))
    {
      [v15 setDifferentialStyleIndex:v45];
    }

    v30 = v37;
    v16 = v38;
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "aboveAverage", &v46))
  {
    [v15 setAboveAverage:v46];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "bottom", &v46))
  {
    [v15 setBottom:v46];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "equalAverage", &v46))
  {
    [v15 setEqualAverage:v46];
  }

  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "percent", &v46))
  {
    [v15 setPercent:v46];
  }

  v45 = 0;
  if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "rank", &v45))
  {
    [v15 setRank:v45];
  }

  v44 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "stdDev", &v44))
  {
    [v15 setStdDev:v44];
  }

  v43 = 0;
  v32 = CXOptionalStringAttribute(a3, CXNoNamespace, "text", &v43);
  v33 = v43;
  if (v32)
  {
    [v15 setText:v33];
  }

  v42 = 0;
  v34 = CXOptionalStringAttribute(a3, CXNoNamespace, "timePeriod", &v42);
  v35 = v42;
  if (v34)
  {
    [v15 setTimePeriod:{objc_msgSend(v36, "edTimePeriodFromXmlTimePeriodString:", v35)}];
  }

  v11 = v39;
LABEL_46:

LABEL_47:
}

+ (int)edRuleTypeFromXmlRuleTypeString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 conditionalFormattingRuleTypeEnumMap];
    v6 = [v5 valueForString:v4];

    if (v6 == 9 || v6 == 5 || v6 == 12)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    if (v6 == -130883970)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int)edOperatorFromXmlOperatorString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 operatorStringEnumMap];
    v6 = [v5 valueForString:v4];

    if (v6 == -130883970)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (int)edTimePeriodFromXmlTimePeriodString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 timePeriodEnumMap];
    v6 = [v5 valueForString:v4];

    if (v6 == -130883970)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (void)timePeriodEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_23, 0, &dword_25D297000);
  }
}

+ (void)operatorStringEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_68_0, 0, &dword_25D297000);
  }
}

+ (void)conditionalFormattingRuleTypeEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_116_0, 0, &dword_25D297000);
  }
}

@end