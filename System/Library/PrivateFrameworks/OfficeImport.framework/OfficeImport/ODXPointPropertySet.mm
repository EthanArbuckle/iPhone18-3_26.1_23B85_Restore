@interface ODXPointPropertySet
+ (void)readNode:(_xmlNode *)node toSet:(id)set;
@end

@implementation ODXPointPropertySet

+ (void)readNode:(_xmlNode *)node toSet:(id)set
{
  setCopy = set;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:node ns:0 attributeName:"loTypeId"];
  [setCopy setLayoutTypeId:v6];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:node ns:0 attributeName:"presName"];
  [setCopy setPresentationName:v7];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:node ns:0 attributeName:"presStyleLbl"];
  [setCopy setPresentationStyleLabel:v8];
  v12 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "presStyleIdx", &v12))
  {
    [setCopy setPresentationStyleIndex:v12];
  }

  v11 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "presStyleCnt", &v11))
  {
    [setCopy setPresentationStyleCount:v11];
  }

  v9 = [ODXData readModelIdentifierFromNode:node attributeName:"presAssocID"];
  [setCopy setPresentationAssociatedId:v9];

  v10 = 0;
  if (CXOptionalBoolAttribute(node, CXNoNamespace, "custFlipVert", &v10))
  {
    [setCopy setCustomVerticalFlip:v10];
  }
}

@end