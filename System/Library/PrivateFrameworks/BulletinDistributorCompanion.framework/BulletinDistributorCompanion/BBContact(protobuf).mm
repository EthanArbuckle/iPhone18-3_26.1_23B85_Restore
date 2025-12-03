@interface BBContact(protobuf)
+ (id)contactFromProtobuf:()protobuf;
- (id)blt_protobuf;
@end

@implementation BBContact(protobuf)

+ (id)contactFromProtobuf:()protobuf
{
  v16 = MEMORY[0x277CF3528];
  v3 = a3;
  handle = [v3 handle];
  handleType = [v3 handleType];
  serviceName = [v3 serviceName];
  displayName = [v3 displayName];
  displayNameSuggested = [v3 displayNameSuggested];
  customIdentifier = [v3 customIdentifier];
  cnContactIdentifier = [v3 cnContactIdentifier];
  cnContactFullname = [v3 cnContactFullname];
  cnContactIdentifierSuggested = [v3 cnContactIdentifierSuggested];

  LOBYTE(v15) = cnContactIdentifierSuggested;
  v13 = [v16 contactWithHandle:handle handleType:handleType serviceName:serviceName displayName:displayName displayNameSuggested:displayNameSuggested customIdentifier:customIdentifier cnContactIdentifier:cnContactIdentifier cnContactFullname:cnContactFullname cnContactIdentifierSuggested:v15];

  return v13;
}

- (id)blt_protobuf
{
  v2 = objc_opt_new();
  handle = [self handle];
  [v2 setHandle:handle];

  [v2 setHandleType:{objc_msgSend(self, "handleType")}];
  serviceName = [self serviceName];
  [v2 setServiceName:serviceName];

  displayName = [self displayName];
  [v2 setDisplayName:displayName];

  cnContactIdentifier = [self cnContactIdentifier];
  [v2 setCnContactIdentifier:cnContactIdentifier];

  cnContactFullname = [self cnContactFullname];
  [v2 setCnContactFullname:cnContactFullname];

  [v2 setCnContactIdentifierSuggested:{objc_msgSend(self, "isCNContactIdentifierSuggested")}];
  [v2 setDisplayNameSuggested:{objc_msgSend(self, "isDisplayNameSuggested")}];
  customIdentifier = [self customIdentifier];
  [v2 setCustomIdentifier:customIdentifier];

  return v2;
}

@end