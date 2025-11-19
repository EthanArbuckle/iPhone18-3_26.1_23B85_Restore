@interface EXTableColumn
+ (id)edTableColumnFromXmlTableColumnElement:(_xmlNode *)a3 state:(id)a4;
@end

@implementation EXTableColumn

+ (id)edTableColumnFromXmlTableColumnElement:(_xmlNode *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [EDTableColumn alloc];
    v7 = [v5 resources];
    v8 = [(EDTableColumn *)v6 initWithResources:v7];

    v25 = 0;
    v9 = CXOptionalStringAttribute(a3, CXNoNamespace, "name", &v25);
    v10 = v25;
    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v10];
      [EXString replaceEscapeAsciiCodes:v11];
      v12 = [EDString edStringWithString:v11];
      [(EDTableColumn *)v8 setName:v12];
    }

    v24 = 0;
    v13 = CXOptionalStringAttribute(a3, CXNoNamespace, "uniqueName", &v24);
    v14 = v24;
    if (v13)
    {
      v15 = [EDString edStringWithString:v14];
      [(EDTableColumn *)v8 setUniqueName:v15];
    }

    v23 = 0;
    v16 = CXOptionalStringAttribute(a3, CXNoNamespace, "totalsRowLabel", &v23);
    v17 = v23;
    if (v16)
    {
      v18 = [EDString edStringWithString:v17];
      [(EDTableColumn *)v8 setTotalsRowLabel:v18];
    }

    v22 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "headerRowDxfId", &v22))
    {
      [(EDTableColumn *)v8 setHeaderRowDxfIndex:v22];
    }

    v21 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "dataDxfId", &v21))
    {
      [(EDTableColumn *)v8 setDataAreaDxfIndex:v21];
    }

    v20 = -1;
    if (CXOptionalLongAttribute(a3, CXNoNamespace, "totalsRowDxfId", &v20))
    {
      [(EDTableColumn *)v8 setTotalsRowDxfIndex:v20];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end