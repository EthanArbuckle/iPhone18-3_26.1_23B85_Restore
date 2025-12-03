@interface MFDCoreSpotlight
+ (id)exportedInterface;
- (void)generatedSummariesDidUpdate:(id)update;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
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

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  v3 = +[MFMailMessageLibrary defaultInstance];
  [v3 reindexAllSearchableItemsWithAcknowledgementHandler:handlerCopy];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v6 = +[MFMailMessageLibrary defaultInstance];
  [v6 reindexSearchableItemsWithIdentifiers:identifiersCopy acknowledgementHandler:handlerCopy];
}

- (void)generatedSummariesDidUpdate:(id)update
{
  updateCopy = update;
  v3 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v3 persistence];
  messagePersistence = [persistence messagePersistence];
  [messagePersistence setGeneratedSummaries:updateCopy];
}

@end