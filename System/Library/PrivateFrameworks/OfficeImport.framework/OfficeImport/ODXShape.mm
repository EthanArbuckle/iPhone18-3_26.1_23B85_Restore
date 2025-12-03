@interface ODXShape
+ (void)readAdjustmentListNode:(_xmlNode *)node toShape:(id)shape state:(id)state;
+ (void)readNode:(_xmlNode *)node toShape:(id)shape state:(id)state;
+ (void)readTypeFromNode:(_xmlNode *)node toShape:(id)shape;
@end

@implementation ODXShape

+ (void)readNode:(_xmlNode *)node toShape:(id)shape state:(id)state
{
  shapeCopy = shape;
  stateCopy = state;
  [self readTypeFromNode:node toShape:shapeCopy];
  v9 = OCXFirstChild(node);
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  HasName = CXNodeHasName(v9, oDXDiagramNamespace, "adjLst");

  if (HasName)
  {
    [self readAdjustmentListNode:v9 toShape:shapeCopy state:stateCopy];
  }
}

+ (void)readTypeFromNode:(_xmlNode *)node toShape:(id)shape
{
  shapeCopy = shape;
  v5 = CXDefaultStringAttribute(node, CXNoNamespace, "type", 0);
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

      [shapeCopy setPresetType:v8];
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  [shapeCopy setType:v7];
}

+ (void)readAdjustmentListNode:(_xmlNode *)node toShape:(id)shape state:(id)state
{
  shapeCopy = shape;
  stateCopy = state;
  v8 = OCXFirstChild(node);
  while (1)
  {
    oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
    HasName = CXNodeHasName(v8, oDXDiagramNamespace, "adj");

    if (!HasName)
    {
      break;
    }

    v11 = objc_alloc_init(ODDShapeAdjustment);
    [shapeCopy addAdjustment:v11];
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