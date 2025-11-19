@interface ODXPointPropertySet
+ (void)readNode:(_xmlNode *)a3 toSet:(id)a4;
@end

@implementation ODXPointPropertySet

+ (void)readNode:(_xmlNode *)a3 toSet:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:a3 ns:0 attributeName:"loTypeId"];
  [v5 setLayoutTypeId:v6];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:a3 ns:0 attributeName:"presName"];
  [v5 setPresentationName:v7];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:a3 ns:0 attributeName:"presStyleLbl"];
  [v5 setPresentationStyleLabel:v8];
  v12 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "presStyleIdx", &v12))
  {
    [v5 setPresentationStyleIndex:v12];
  }

  v11 = 0;
  if (CXOptionalLongAttribute(a3, CXNoNamespace, "presStyleCnt", &v11))
  {
    [v5 setPresentationStyleCount:v11];
  }

  v9 = [ODXData readModelIdentifierFromNode:a3 attributeName:"presAssocID"];
  [v5 setPresentationAssociatedId:v9];

  v10 = 0;
  if (CXOptionalBoolAttribute(a3, CXNoNamespace, "custFlipVert", &v10))
  {
    [v5 setCustomVerticalFlip:v10];
  }
}

@end