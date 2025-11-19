@interface OAVTextBodyProperties
+ (int)readAnchor:(id)a3;
+ (int)readRotation:(id)a3;
+ (int)readWrapStyle:(id)a3;
+ (unsigned)flowTypeWithLayoutFlowString:(id)a3 altLayoutFlowString:(id)a4;
+ (void)readFromManager:(id)a3 toShape:(id)a4 state:(id)a5;
@end

@implementation OAVTextBodyProperties

+ (int)readRotation:(id)a3
{
  v3 = a3;
  v4 = +[OAVTextBodyProperties readRotation:]::rotationEnumMap;
  if (!+[OAVTextBodyProperties readRotation:]::rotationEnumMap)
  {
    {
      +[OAVTextBodyProperties readRotation:];
    }

    v5 = [[TCEnumerationMap alloc] initWithStructs:&+[OAVTextBodyProperties readRotation:]::rotationEnumStructs count:4 caseSensitive:0];
    v6 = +[OAVTextBodyProperties readRotation:]::rotationEnumMap;
    +[OAVTextBodyProperties readRotation:]::rotationEnumMap = v5;

    v4 = +[OAVTextBodyProperties readRotation:]::rotationEnumMap;
  }

  v7 = [v4 valueForString:v3];

  return v7;
}

+ (int)readWrapStyle:(id)a3
{
  v3 = a3;
  v4 = +[OAVTextBodyProperties readWrapStyle:]::wrapEnumMap;
  if (!+[OAVTextBodyProperties readWrapStyle:]::wrapEnumMap)
  {
    {
      +[OAVTextBodyProperties readWrapStyle:];
    }

    v5 = [[TCEnumerationMap alloc] initWithStructs:&+[OAVTextBodyProperties readWrapStyle:]::wrapEnumStructs count:5 caseSensitive:0];
    v6 = +[OAVTextBodyProperties readWrapStyle:]::wrapEnumMap;
    +[OAVTextBodyProperties readWrapStyle:]::wrapEnumMap = v5;

    v4 = +[OAVTextBodyProperties readWrapStyle:]::wrapEnumMap;
  }

  v7 = [v4 valueForString:v3];

  return v7;
}

+ (int)readAnchor:(id)a3
{
  v3 = a3;
  v4 = +[OAVTextBodyProperties readAnchor:]::anchorEnumMap;
  if (!+[OAVTextBodyProperties readAnchor:]::anchorEnumMap)
  {
    {
      +[OAVTextBodyProperties readAnchor:];
    }

    v5 = [[TCEnumerationMap alloc] initWithStructs:&+[OAVTextBodyProperties readAnchor:]::anchorEnumStructs count:10 caseSensitive:0];
    v6 = +[OAVTextBodyProperties readAnchor:]::anchorEnumMap;
    +[OAVTextBodyProperties readAnchor:]::anchorEnumMap = v5;

    v4 = +[OAVTextBodyProperties readAnchor:]::anchorEnumMap;
  }

  v7 = [v4 valueForString:v3];

  return v7;
}

+ (unsigned)flowTypeWithLayoutFlowString:(id)a3 altLayoutFlowString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"vertical"])
  {
    if ([v6 isEqualToString:@"top-to-bottom"])
    {
      v7 = 4;
      goto LABEL_13;
    }

    if ([v6 isEqualToString:@"bottom-to-top"])
    {
      v7 = 3;
      goto LABEL_13;
    }

    if (![v6 length])
    {
      v7 = 2;
      goto LABEL_13;
    }
  }

  [v6 length];
  if ([v5 isEqualToString:@"vertical-ideographic"])
  {
    v7 = 6;
  }

  else if ([v5 isEqualToString:@"horizontal-ideographic"])
  {
    v7 = 1;
  }

  else
  {
    [v5 isEqualToString:@"horizontal"];
    v7 = 0;
  }

LABEL_13:

  return v7;
}

+ (void)readFromManager:(id)a3 toShape:(id)a4 state:(id)a5
{
  v31 = a3;
  v8 = a5;
  v9 = [a4 textBody];
  v10 = [v9 properties];

  v11 = [objc_msgSend(v8 "client")];
  [v31 textInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v10 setLeftInset:?];
  LODWORD(v18) = v13;
  [v10 setTopInset:v18];
  LODWORD(v19) = v15;
  [v10 setRightInset:v19];
  LODWORD(v20) = v17;
  [v10 setBottomInset:v20];
  [v10 setIsUpright:v11 != 2];
  if (v11 == 2)
  {
    v22 = [v31 textRotation];
    v21 = [a1 readRotation:v22];
  }

  else
  {
    v21 = 0;
  }

  [OABTextBodyProperties setTextRotation:v21 textBodyProperties:v10];
  v23 = [v31 textLayoutFlow];
  v24 = [v31 textAltLayoutFlow];
  [v10 setFlowType:{objc_msgSend(a1, "flowTypeWithLayoutFlowString:altLayoutFlowString:", v23, v24)}];
  +[OABTextBodyProperties setAutoFit:textBodyProperties:](OABTextBodyProperties, "setAutoFit:textBodyProperties:", [v31 fitShapeToText], v10);
  if (v11 == 2)
  {
    v26 = [v31 textWrapStyle];
    v25 = [a1 readWrapStyle:v26];
  }

  else
  {
    v25 = 0;
  }

  [OABTextBodyProperties setWrap:v25 textBodyProperties:v10];
  if (v11 < 1)
  {
    v30 = 0;
  }

  else
  {
    v27 = [v31 textAnchor];
    v28 = [a1 readAnchor:v27];
    if (v28 > 2 && v11 == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }
  }

  [OABTextBodyProperties setTextAnchor:v30 textBodyProperties:v10];
  [OABTextBodyProperties setIsAnchorCenter:v30 textBodyProperties:v10];
}

+ (void)readRotation:.cold.1()
{
  {
    __cxa_atexit(__cxx_global_array_dtor_18, 0, &dword_25D297000);
  }
}

+ (void)readWrapStyle:.cold.1()
{
  {
    __cxa_atexit(__cxx_global_array_dtor_25, 0, &dword_25D297000);
  }
}

+ (void)readAnchor:.cold.1()
{
  {
    __cxa_atexit(__cxx_global_array_dtor_56, 0, &dword_25D297000);
  }
}

@end