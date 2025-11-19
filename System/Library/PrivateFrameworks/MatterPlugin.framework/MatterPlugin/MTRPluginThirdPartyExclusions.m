@interface MTRPluginThirdPartyExclusions
+ (BOOL)attributeReadDisallowedOverXPCWithEndpointID:(id)a3 clusterID:(id)a4 attribute:(id)a5 isPrivatelyEntitled:(BOOL)a6;
+ (BOOL)commandDisallowedOverXPCWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 isPrivatelyEntitled:(BOOL)a6;
+ (BOOL)connectionIsPrivatelyEntitled:(id)a3;
@end

@implementation MTRPluginThirdPartyExclusions

+ (BOOL)connectionIsPrivatelyEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.homekit"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)attributeReadDisallowedOverXPCWithEndpointID:(id)a3 clusterID:(id)a4 attribute:(id)a5 isPrivatelyEntitled:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    goto LABEL_7;
  }

  if (attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__onceToken != -1)
  {
    +[MTRPluginThirdPartyExclusions attributeReadDisallowedOverXPCWithEndpointID:clusterID:attribute:isPrivatelyEntitled:];
  }

  v12 = [attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__disallowedClusterToAttributeMap allKeys];
  v13 = [v12 containsObject:v10];

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = [attributeReadDisallowedOverXPCWithEndpointID_clusterID_attribute_isPrivatelyEntitled__disallowedClusterToAttributeMap objectForKeyedSubscript:v10];
  v15 = [v14 containsObject:v11];

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

+ (BOOL)commandDisallowedOverXPCWithEndpointID:(id)a3 clusterID:(id)a4 commandID:(id)a5 isPrivatelyEntitled:(BOOL)a6
{
  if (a6)
  {
    return 0;
  }

  else
  {
    return [&unk_28697C720 containsObject:a4];
  }
}

@end