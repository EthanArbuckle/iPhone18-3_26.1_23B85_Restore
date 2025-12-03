@interface EXTableStyleElement
+ (id)edTableStyleElementFromXmlTableStyleElement:(_xmlNode *)element state:(id)state;
+ (int)edStyleTableTypeFromXmlStyleTableType:(id)type;
@end

@implementation EXTableStyleElement

+ (id)edTableStyleElementFromXmlTableStyleElement:(_xmlNode *)element state:(id)state
{
  stateCopy = state;
  if (element)
  {
    v7 = [EDTableStyleElement alloc];
    resources = [stateCopy resources];
    v9 = [(EDTableStyleElement *)v7 initWithResources:resources];

    v16 = 0;
    CXOptionalStringAttribute(element, CXNoNamespace, "type", &v16);
    v10 = v16;
    -[EDTableStyleElement setType:](v9, "setType:", [self edStyleTableTypeFromXmlStyleTableType:v10]);
    v15 = 0;
    if (CXOptionalUnsignedLongAttribute(element, CXNoNamespace, "size", &v15))
    {
      [(EDTableStyleElement *)v9 setBandSize:v15];
    }

    v14 = -1;
    if (CXOptionalLongAttribute(element, CXNoNamespace, "dxfId", &v14))
    {
      isPredefinedDxfsBeingRead = [stateCopy isPredefinedDxfsBeingRead];
      v12 = v14;
      if (isPredefinedDxfsBeingRead)
      {
        v12 = --v14;
      }

      [(EDTableStyleElement *)v9 setDifferentialStyleWithIndex:v12];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)edStyleTableTypeFromXmlStyleTableType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_58;
  }

  if (([typeCopy isEqualToString:@"wholeTable"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"headerRow"])
    {
      v5 = 2;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"totalRow"])
    {
      v5 = 3;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstColumn"])
    {
      v5 = 4;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"lastColumn"])
    {
      v5 = 5;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstRowStripe"])
    {
      v5 = 6;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"secondRowStripe"])
    {
      v5 = 7;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstColumnStripe"])
    {
      v5 = 8;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"secondColumnStripe"])
    {
      v5 = 9;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstHeaderCell"])
    {
      v5 = 10;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"lastHeaderCell"])
    {
      v5 = 11;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstTotalCell"])
    {
      v5 = 12;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"lastTotalCell"])
    {
      v5 = 13;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstSubtotalColumn"])
    {
      v5 = 15;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"secondSubtotalColumn"])
    {
      v5 = 16;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"thirdSubtotalColumn"])
    {
      v5 = 17;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstSubtotalRow"])
    {
      v5 = 18;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"secondSubtotalRow"])
    {
      v5 = 19;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"thirdSubtotalRow"])
    {
      v5 = 20;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"blankRow"])
    {
      v5 = 21;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstColumnSubheading"])
    {
      v5 = 22;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"secondColumnSubheading"])
    {
      v5 = 23;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"thirdColumnSubheading"])
    {
      v5 = 24;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"firstRowSubheading"])
    {
      v5 = 25;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"secondRowSubheading"])
    {
      v5 = 26;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"thirdRowSubheading"])
    {
      v5 = 27;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"pageFieldLabels"])
    {
      v5 = 28;
      goto LABEL_59;
    }

    if ([v4 isEqualToString:@"pageFieldValues"])
    {
      v5 = 29;
      goto LABEL_59;
    }

LABEL_58:
    v5 = 0;
    goto LABEL_59;
  }

  v5 = 1;
LABEL_59:

  return v5;
}

@end