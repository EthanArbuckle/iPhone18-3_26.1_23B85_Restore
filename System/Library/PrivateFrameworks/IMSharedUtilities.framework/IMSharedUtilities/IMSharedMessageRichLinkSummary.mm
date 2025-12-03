@interface IMSharedMessageRichLinkSummary
+ (id)linkMetadataForPluginPayload:(id)payload;
+ (id)previewSummaryWithPluginPayload:(id)payload;
@end

@implementation IMSharedMessageRichLinkSummary

+ (id)previewSummaryWithPluginPayload:(id)payload
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___IMSharedMessageRichLinkSummary;
  v4 = objc_msgSendSuper2(&v7, sel_previewSummaryWithPluginPayload_);
  if ([payload data])
  {
    v4 = [objc_msgSend(objc_msgSend(objc_opt_class() "dataSourceClass")];
    if (!v4)
    {
      v5 = [objc_alloc(objc_msgSend(objc_opt_class() "dataSourceClass"))];
      v4 = [objc_msgSend(v5 "individualPreviewSummary")];
      if (v5)
      {
      }
    }
  }

  return v4;
}

+ (id)linkMetadataForPluginPayload:(id)payload
{
  if (![payload data])
  {
    return 0;
  }

  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "dataSourceClass"))];
  v5 = [objc_msgSend(v4 "richLinkMetadata")];
  if (v4)
  {
  }

  return v5;
}

@end