@interface EXTableStyleElement
+ (id)edTableStyleElementFromXmlTableStyleElement:(_xmlNode *)a3 state:(id)a4;
+ (int)edStyleTableTypeFromXmlStyleTableType:(id)a3;
@end

@implementation EXTableStyleElement

+ (id)edTableStyleElementFromXmlTableStyleElement:(_xmlNode *)a3 state:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [EDTableStyleElement alloc];
    v8 = [v6 resources];
    v9 = [(EDTableStyleElement *)v7 initWithResources:v8];

    v16 = 0;
    CXOptionalStringAttribute(a3, CXNoNamespace, "type", &v16);
    v10 = v16;
    -[EDTableStyleElement setType:](v9, "setType:", [a1 edStyleTableTypeFromXmlStyleTableType:v10]);
    v15 = 0;
    if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "size", &v15))
    {
      [(EDTableStyleElement *)v9 setBandSize:v15];
    }

    v14 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "dxfId", &v14))
    {
      v11 = [v6 isPredefinedDxfsBeingRead];
      v12 = v14;
      if (v11)
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

+ (int)edStyleTableTypeFromXmlStyleTableType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_58;
  }

  if (([v3 isEqualToString:@"wholeTable"] & 1) == 0)
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