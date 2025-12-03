@interface MTRPluginThirdPartyExclusions
+ (BOOL)attributeReadDisallowedOverXPCWithEndpointID:(id)d clusterID:(id)iD attribute:(id)attribute isPrivatelyEntitled:(BOOL)entitled;
+ (BOOL)commandDisallowedOverXPCWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID isPrivatelyEntitled:(BOOL)entitled;
+ (BOOL)connectionIsPrivatelyEntitled:(id)entitled;
@end

@implementation MTRPluginThirdPartyExclusions

+ (BOOL)connectionIsPrivatelyEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.homekit"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)attributeReadDisallowedOverXPCWithEndpointID:(id)d clusterID:(id)iD attribute:(id)attribute isPrivatelyEntitled:(BOOL)entitled
{
  dCopy = d;
  iDCopy = iD;
  attributeCopy = attribute;
  if (entitled)
  {
    goto LABEL_7;
  }

  if (attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__onceToken != -1)
  {
    +[MTRPluginThirdPartyExclusions attributeReadDisallowedOverXPCWithEndpointID:clusterID:attribute:isPrivatelyEntitled:];
  }

  allKeys = [attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__disallowedClusterToAttributeMap allKeys];
  v13 = [allKeys containsObject:iDCopy];

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = [attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__disallowedClusterToAttributeMap objectForKeyedSubscript:iDCopy];
  v15 = [v14 containsObject:attributeCopy];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  return v16;
}

void __118__MTRPluginThirdPartyExclusions_attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled___block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_28697C420;
  v3[1] = &unk_28697C450;
  v4[0] = &unk_28697C6D8;
  v4[1] = &unk_28697C6F0;
  v3[2] = &unk_28697C480;
  v4[2] = &unk_28697C708;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__disallowedClusterToAttributeMap;
  attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__disallowedClusterToAttributeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (BOOL)commandDisallowedOverXPCWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID isPrivatelyEntitled:(BOOL)entitled
{
  if (entitled)
  {
    return 0;
  }

  else
  {
    return [&unk_28697C720 containsObject:iD];
  }
}

@end