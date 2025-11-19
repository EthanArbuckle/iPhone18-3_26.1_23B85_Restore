@interface IMDSharedUtilitiesPluginPayload
- (void)dealloc;
@end

@implementation IMDSharedUtilitiesPluginPayload

- (void)dealloc
{
  [(IMDSharedUtilitiesPluginPayload *)self setData:0];
  [(IMDSharedUtilitiesPluginPayload *)self setMessageGUID:0];
  [(IMDSharedUtilitiesPluginPayload *)self setDataDetectedResult:0];
  [(IMDSharedUtilitiesPluginPayload *)self setUrl:0];
  [(IMDSharedUtilitiesPluginPayload *)self setDatasource:0];
  [(IMDSharedUtilitiesPluginPayload *)self setPluginBundleID:0];
  [(IMDSharedUtilitiesPluginPayload *)self setConsumedSessionPayloads:0];
  [(IMDSharedUtilitiesPluginPayload *)self setAttachments:0];
  v3.receiver = self;
  v3.super_class = IMDSharedUtilitiesPluginPayload;
  [(IMDSharedUtilitiesPluginPayload *)&v3 dealloc];
}

@end