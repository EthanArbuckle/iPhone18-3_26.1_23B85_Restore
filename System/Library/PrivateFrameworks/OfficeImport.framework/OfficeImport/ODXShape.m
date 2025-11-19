@interface ODXShape
+ (void)readAdjustmentListNode:(_xmlNode *)a3 toShape:(id)a4 state:(id)a5;
+ (void)readNode:(_xmlNode *)a3 toShape:(id)a4 state:(id)a5;
+ (void)readTypeFromNode:(_xmlNode *)a3 toShape:(id)a4;
@end

@implementation ODXShape

+ (void)readNode:(_xmlNode *)a3 toShape:(id)a4 state:(id)a5
{
  v12 = a4;
  v8 = a5;
  [a1 readTypeFromNode:a3 toShape:v12];
  v9 = OCXFirstChild(a3);
  v10 = [v8 ODXDiagramNamespace];
  HasName = CXNodeHasName(v9, v10, "adjLst");

  if (HasName)
  {
    [a1 readAdjustmentListNode:v9 toShape:v12 state:v8];
  }
}

+ (void)readTypeFromNode:(_xmlNode *)a3 toShape:(id)a4
{
  v9 = a4;
  v5 = CXDefaultStringAttribute(a3, CXNoNamespace, "type", 0);
  v6 = v5;
  if (v5 && ([v5 isEqualToString:@"none"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"conn"])
    {
      v7 = 1;
    }

    else
    {
      v8 = [OAXGeometry shapeTypeForString:v6];
      if (v8 == -130883970)
      {
        [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Invalid layout shape type."];
      }

      [v9 setPresetType:v8];
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  [v9 setType:v7];
}

+ (void)readAdjustmentListNode:(_xmlNode *)a3 toShape:(id)a4 state:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = OCXFirstChild(a3);
  while (1)
  {
    v9 = [v7 ODXDiagramNamespace];
    HasName = CXNodeHasName(v8, v9, "adj");

    if (!HasName)
    {
      break;
    }

    v11 = objc_alloc_init(ODDShapeAdjustment);
    [v12 addAdjustment:v11];
    if (CXRequiredUnsignedLongAttribute(v8, CXNoNamespace, "idx"))
    {
      [(ODDShapeAdjustment *)v11 setIndex:?];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing required index attribute."];
    }

    [(ODDShapeAdjustment *)v11 setValue:CXRequiredDoubleAttribute(v8, CXNoNamespace, "val")];
    v8 = OCXNextSibling(v8);
  }

  if (v8)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Unexpected adjustment node child."];
  }
}

@end