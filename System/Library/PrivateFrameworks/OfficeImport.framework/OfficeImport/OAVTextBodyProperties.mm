@interface OAVTextBodyProperties
+ (int)readAnchor:(id)anchor;
+ (int)readRotation:(id)rotation;
+ (int)readWrapStyle:(id)style;
+ (unsigned)flowTypeWithLayoutFlowString:(id)string altLayoutFlowString:(id)flowString;
+ (void)readFromManager:(id)manager toShape:(id)shape state:(id)state;
@end

@implementation OAVTextBodyProperties

+ (int)readRotation:(id)rotation
{
  rotationCopy = rotation;
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

  v7 = [v4 valueForString:rotationCopy];

  return v7;
}

+ (int)readWrapStyle:(id)style
{
  styleCopy = style;
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

  v7 = [v4 valueForString:styleCopy];

  return v7;
}

+ (int)readAnchor:(id)anchor
{
  anchorCopy = anchor;
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

  v7 = [v4 valueForString:anchorCopy];

  return v7;
}

+ (unsigned)flowTypeWithLayoutFlowString:(id)string altLayoutFlowString:(id)flowString
{
  stringCopy = string;
  flowStringCopy = flowString;
  if ([stringCopy isEqualToString:@"vertical"])
  {
    if ([flowStringCopy isEqualToString:@"top-to-bottom"])
    {
      v7 = 4;
      goto LABEL_13;
    }

    if ([flowStringCopy isEqualToString:@"bottom-to-top"])
    {
      v7 = 3;
      goto LABEL_13;
    }

    if (![flowStringCopy length])
    {
      v7 = 2;
      goto LABEL_13;
    }
  }

  [flowStringCopy length];
  if ([stringCopy isEqualToString:@"vertical-ideographic"])
  {
    v7 = 6;
  }

  else if ([stringCopy isEqualToString:@"horizontal-ideographic"])
  {
    v7 = 1;
  }

  else
  {
    [stringCopy isEqualToString:@"horizontal"];
    v7 = 0;
  }

LABEL_13:

  return v7;
}

+ (void)readFromManager:(id)manager toShape:(id)shape state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  textBody = [shape textBody];
  properties = [textBody properties];

  v11 = [objc_msgSend(stateCopy "client")];
  [managerCopy textInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [properties setLeftInset:?];
  LODWORD(v18) = v13;
  [properties setTopInset:v18];
  LODWORD(v19) = v15;
  [properties setRightInset:v19];
  LODWORD(v20) = v17;
  [properties setBottomInset:v20];
  [properties setIsUpright:v11 != 2];
  if (v11 == 2)
  {
    textRotation = [managerCopy textRotation];
    v21 = [self readRotation:textRotation];
  }

  else
  {
    v21 = 0;
  }

  [OABTextBodyProperties setTextRotation:v21 textBodyProperties:properties];
  textLayoutFlow = [managerCopy textLayoutFlow];
  textAltLayoutFlow = [managerCopy textAltLayoutFlow];
  [properties setFlowType:{objc_msgSend(self, "flowTypeWithLayoutFlowString:altLayoutFlowString:", textLayoutFlow, textAltLayoutFlow)}];
  +[OABTextBodyProperties setAutoFit:textBodyProperties:](OABTextBodyProperties, "setAutoFit:textBodyProperties:", [managerCopy fitShapeToText], properties);
  if (v11 == 2)
  {
    textWrapStyle = [managerCopy textWrapStyle];
    v25 = [self readWrapStyle:textWrapStyle];
  }

  else
  {
    v25 = 0;
  }

  [OABTextBodyProperties setWrap:v25 textBodyProperties:properties];
  if (v11 < 1)
  {
    v30 = 0;
  }

  else
  {
    textAnchor = [managerCopy textAnchor];
    v28 = [self readAnchor:textAnchor];
    if (v28 > 2 && v11 == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }
  }

  [OABTextBodyProperties setTextAnchor:v30 textBodyProperties:properties];
  [OABTextBodyProperties setIsAnchorCenter:v30 textBodyProperties:properties];
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