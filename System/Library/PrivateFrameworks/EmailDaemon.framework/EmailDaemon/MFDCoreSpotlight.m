@interface MFDCoreSpotlight
+ (id)exportedInterface;
- (void)generatedSummariesDidUpdate:(id)a3;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4;
@end

@implementation MFDCoreSpotlight

+ (id)exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDCoreSpotlightProtocol];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"generatedSummariesDidUpdate:" argumentIndex:0 ofReply:0];

  return v2;
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)a3
{
  v4 = a3;
  v3 = +[MFMailMessageLibrary defaultInstance];
  [v3 reindexAllSearchableItemsWithAcknowledgementHandler:v4];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 acknowledgementHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = +[MFMailMessageLibrary defaultInstance];
  [v6 reindexSearchableItemsWithIdentifiers:v7 acknowledgementHandler:v5];
}

- (void)generatedSummariesDidUpdate:(id)a3
{
  v6 = a3;
  v3 = +[MFMailMessageLibrary defaultInstance];
  v4 = [v3 persistence];
  v5 = [v4 messagePersistence];
  [v5 setGeneratedSummaries:v6];
}

@end