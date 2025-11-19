@interface ODXColorTransformStyleLabel
+ (void)readNode:(_xmlNode *)a3 label:(id)a4 state:(id)a5;
@end

@implementation ODXColorTransformStyleLabel

+ (void)readNode:(_xmlNode *)a3 label:(id)a4 state:(id)a5
{
  v27 = a4;
  v7 = a5;
  v8 = OCXFirstChild(a3);
  v9 = [v7 ODXDiagramNamespace];
  HasName = CXNodeHasName(v8, v9, "fillClrLst");

  if (HasName)
  {
    v11 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v11];
    [v27 setFillColors:v11];
    v8 = OCXNextSibling(v8);
  }

  v12 = [v7 ODXDiagramNamespace];
  v13 = CXNodeHasName(v8, v12, "linClrLst");

  if (v13)
  {
    v14 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v14];
    [v27 setLineColors:v14];
    v8 = OCXNextSibling(v8);
  }

  v15 = [v7 ODXDiagramNamespace];
  v16 = CXNodeHasName(v8, v15, "effectClrLst");

  if (v16)
  {
    v17 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v17];
    [v27 setEffectColors:v17];
    v8 = OCXNextSibling(v8);
  }

  v18 = [v7 ODXDiagramNamespace];
  v19 = CXNodeHasName(v8, v18, "txLinClrLst");

  if (v19)
  {
    v20 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v20];
    [v27 setTextLineColors:v20];
    v8 = OCXNextSibling(v8);
  }

  v21 = [v7 ODXDiagramNamespace];
  v22 = CXNodeHasName(v8, v21, "txFillClrLst");

  if (v22)
  {
    v23 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v23];
    [v27 setTextFillColors:v23];
    v8 = OCXNextSibling(v8);
  }

  v24 = [v7 ODXDiagramNamespace];
  v25 = CXNodeHasName(v8, v24, "txEffectClrLst");

  if (v25)
  {
    v26 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v26];
    [v27 setTextEffectColors:v26];
  }
}

@end