@interface EXColumnInfo
+ (id)edColumnInfoFromXmlColumnInfoElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXColumnInfo

+ (id)edColumnInfoFromXmlColumnInfoElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 currentSheet];
    v8 = [EDColumnInfo alloc];
    v9 = [v6 resources];
    v10 = [(EDColumnInfo *)v8 initWithResources:v9 worksheet:v7];

    v18 = 0;
    if (CXOptionalBoolAttribute(a3, CXNoNamespace, "hidden", &v18))
    {
      [(EDColumnInfo *)v10 setHidden:v18];
    }

    v17 = 0.0;
    if (!CXOptionalDoubleAttribute(a3, CXNoNamespace, "width", &v17))
    {
      CXOptionalDoubleAttribute(a3, CXNoNamespace, "defaultWidth", &v17);
    }

    v11 = v17;
    if (v17 < 0.0)
    {
      v17 = 1300.0;
      v11 = 1300.0;
    }

    [(EDColumnInfo *)v10 setWidth:v11];
    v15 = -1;
    v16 = -1;
    CXOptionalLongAttribute(a3, CXNoNamespace, "min", &v16);
    CXOptionalLongAttribute(a3, CXNoNamespace, "max", &v15);
    [(EDColumnInfo *)v10 setRangeWithFirstColumn:(v16 - 1) lastColumn:(v15 - 1)];
    v14 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "style", &v14))
    {
      [(EDColumnInfo *)v10 setStyleIndex:v14];
    }

    v13 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "outlineLevel", &v13))
    {
      [(EDColumnInfo *)v10 setOutlineLevel:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end