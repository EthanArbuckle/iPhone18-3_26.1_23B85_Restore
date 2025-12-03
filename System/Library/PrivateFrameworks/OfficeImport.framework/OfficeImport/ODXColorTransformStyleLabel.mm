@interface ODXColorTransformStyleLabel
+ (void)readNode:(_xmlNode *)node label:(id)label state:(id)state;
@end

@implementation ODXColorTransformStyleLabel

+ (void)readNode:(_xmlNode *)node label:(id)label state:(id)state
{
  labelCopy = label;
  stateCopy = state;
  v8 = OCXFirstChild(node);
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  HasName = CXNodeHasName(v8, oDXDiagramNamespace, "fillClrLst");

  if (HasName)
  {
    v11 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v11];
    [labelCopy setFillColors:v11];
    v8 = OCXNextSibling(v8);
  }

  oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
  v13 = CXNodeHasName(v8, oDXDiagramNamespace2, "linClrLst");

  if (v13)
  {
    v14 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v14];
    [labelCopy setLineColors:v14];
    v8 = OCXNextSibling(v8);
  }

  oDXDiagramNamespace3 = [stateCopy ODXDiagramNamespace];
  v16 = CXNodeHasName(v8, oDXDiagramNamespace3, "effectClrLst");

  if (v16)
  {
    v17 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v17];
    [labelCopy setEffectColors:v17];
    v8 = OCXNextSibling(v8);
  }

  oDXDiagramNamespace4 = [stateCopy ODXDiagramNamespace];
  v19 = CXNodeHasName(v8, oDXDiagramNamespace4, "txLinClrLst");

  if (v19)
  {
    v20 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v20];
    [labelCopy setTextLineColors:v20];
    v8 = OCXNextSibling(v8);
  }

  oDXDiagramNamespace5 = [stateCopy ODXDiagramNamespace];
  v22 = CXNodeHasName(v8, oDXDiagramNamespace5, "txFillClrLst");

  if (v22)
  {
    v23 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v23];
    [labelCopy setTextFillColors:v23];
    v8 = OCXNextSibling(v8);
  }

  oDXDiagramNamespace6 = [stateCopy ODXDiagramNamespace];
  v25 = CXNodeHasName(v8, oDXDiagramNamespace6, "txEffectClrLst");

  if (v25)
  {
    v26 = objc_alloc_init(ODDFillColorList);
    [ODXFillColorList readNode:v8 list:v26];
    [labelCopy setTextEffectColors:v26];
  }
}

@end