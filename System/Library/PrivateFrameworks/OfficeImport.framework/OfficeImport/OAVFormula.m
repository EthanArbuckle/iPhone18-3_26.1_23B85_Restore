@interface OAVFormula
+ (OADFormulaArg)readArgument:(id)a3;
+ (id)readFormula:(_xmlNode *)a3;
+ (void)readFormulasFromManager:(id)a3 toGeometry:(id)a4;
@end

@implementation OAVFormula

+ (void)readFormulasFromManager:(id)a3 toGeometry:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 shape];
  v8 = OCXFindChild(v7, OAVOfficeMainNamespace, "formulas");
  if (v8)
  {
    for (i = OCXFindChild(v8, OAVOfficeMainNamespace, "f"); i; i = OCXFindNextChild(i, OAVOfficeMainNamespace, "f"))
    {
      v10 = [a1 readFormula:i];
      [v6 addFormula:v10];
    }
  }
}

+ (id)readFormula:(_xmlNode *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = CXRequiredStringAttribute(a3, CXNoNamespace, "eqn");
  if (!+[OAVFormula(Private) readFormula:]::typeMap)
  {
    v5 = MEMORY[0x277CBEAC0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:4];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v35 = [MEMORY[0x277CCABB0] numberWithInt:7];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:9];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:10];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:11];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:12];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:13];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:14];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:15];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:16];
    v9 = [v5 dictionaryWithObjectsAndKeys:{v31, @"val", v30, @"sum", v6, @"prod", v29, @"mid", v7, @"abs", v28, @"min", v27, @"max", v36, @"if", v35, @"mod", v34, @"atan2", v33, @"sin", v26, @"cos", v25, @"cosatan2", v24, @"sinatan2", v8, @"sqrt", v32, @"sumangle", v23, @"ellipse", v22, @"tan", 0}];
    v10 = +[OAVFormula(Private) readFormula:]::typeMap;
    +[OAVFormula(Private) readFormula:]::typeMap = v9;
  }

  v11 = [v4 componentsSeparatedByString:@" "];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v12 = +[OAVFormula(Private) readFormula:]::typeMap;
  v13 = [v11 objectAtIndex:0];
  v14 = [v12 objectForKey:v13];

  v15 = [v14 intValue];
  v16 = 0;
  do
  {
    v17 = v16 + 1;
    if ([v11 count] <= (v16 + 1))
    {
      break;
    }

    v18 = [v11 objectAtIndex:v16 + 1];
    *(&v37 + v16) = [a1 readArgument:v18];

    ++v16;
  }

  while (v17 != 3);
  v19 = [OADFormula alloc];
  v20 = [(OADFormula *)v19 initWithType:v15 arg0:v37 arg1:v38 arg2:v39];

  return v20;
}

+ (OADFormulaArg)readArgument:(id)a3
{
  v3 = a3;
  if (!+[OAVFormula(Private) readArgument:]::keywordMap)
  {
    v4 = MEMORY[0x277CBEAC0];
    v27 = v3;
    v26 = [MEMORY[0x277CCABB0] numberWithInt:320];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:321];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:322];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:323];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:339];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:340];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:1271];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:1272];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:1273];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:1276];
    v12 = v6;
    v23 = [MEMORY[0x277CCABB0] numberWithInt:1277];
    v13 = v5;
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1278];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:1279];
    v15 = [v4 dictionaryWithObjectsAndKeys:{v26, @"xcenter", v13, @"ycenter", v12, @"width", v25, @"height", v7, @"xlimo", v8, @"ylimo", v9, @"pixellinewidth", v10, @"pixelwidth", v11, @"pixelheight", v24, @"emuwidth", v23, @"emuheight", v14, @"emuwidth2", v22, @"emuheight2", 0}];
    v16 = +[OAVFormula(Private) readArgument:]::keywordMap;
    +[OAVFormula(Private) readArgument:]::keywordMap = v15;

    v3 = v27;
  }

  v17 = [v3 characterAtIndex:0];
  if (v17 <= 0xFF && ((*(MEMORY[0x277D85DE0] + 4 * v17 + 60) >> 10) & 1) != 0 || v17 == 45)
  {
    v19 = [v3 intValue];
    v20 = 1;
  }

  else
  {
    if (v17 == 64)
    {
      v18 = [v3 substringFromIndex:1];
      v19 = [v18 intValue];
      v20 = 3;
    }

    else if (v17 == 35)
    {
      v18 = [v3 substringFromIndex:1];
      v19 = [v18 intValue];
      v20 = 2;
    }

    else
    {
      v18 = [+[OAVFormula(Private) readArgument:]::keywordMap objectForKey:v3];
      v19 = [v18 intValue];
      v20 = 4;
    }
  }

  return (v20 | (v19 << 32));
}

@end