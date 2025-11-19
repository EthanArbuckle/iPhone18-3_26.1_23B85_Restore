@interface BBContact(protobuf)
+ (id)contactFromProtobuf:()protobuf;
- (id)blt_protobuf;
@end

@implementation BBContact(protobuf)

+ (id)contactFromProtobuf:()protobuf
{
  v16 = MEMORY[0x277CF3528];
  v3 = a3;
  v4 = [v3 handle];
  v5 = [v3 handleType];
  v6 = [v3 serviceName];
  v7 = [v3 displayName];
  v8 = [v3 displayNameSuggested];
  v9 = [v3 customIdentifier];
  v10 = [v3 cnContactIdentifier];
  v11 = [v3 cnContactFullname];
  v12 = [v3 cnContactIdentifierSuggested];

  LOBYTE(v15) = v12;
  v13 = [v16 contactWithHandle:v4 handleType:v5 serviceName:v6 displayName:v7 displayNameSuggested:v8 customIdentifier:v9 cnContactIdentifier:v10 cnContactFullname:v11 cnContactIdentifierSuggested:v15];

  return v13;
}

- (id)blt_protobuf
{
  v2 = objc_opt_new();
  v3 = [a1 handle];
  [v2 setHandle:v3];

  [v2 setHandleType:{objc_msgSend(a1, "handleType")}];
  v4 = [a1 serviceName];
  [v2 setServiceName:v4];

  v5 = [a1 displayName];
  [v2 setDisplayName:v5];

  v6 = [a1 cnContactIdentifier];
  [v2 setCnContactIdentifier:v6];

  v7 = [a1 cnContactFullname];
  [v2 setCnContactFullname:v7];

  [v2 setCnContactIdentifierSuggested:{objc_msgSend(a1, "isCNContactIdentifierSuggested")}];
  [v2 setDisplayNameSuggested:{objc_msgSend(a1, "isDisplayNameSuggested")}];
  v8 = [a1 customIdentifier];
  [v2 setCustomIdentifier:v8];

  return v2;
}

@end