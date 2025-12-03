@interface CADCoreSpotlightIndex
- (CADCoreSpotlightIndex)initWithBundleID:(id)d;
- (void)deleteAllSearchableItemsForBundleID:(id)d completionHandler:(id)handler;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)endIndexBatchWithExpectedClientState:(id)state newClientState:(id)clientState completionHandler:(id)handler;
- (void)indexSearchableItems:(id)items completionHandler:(id)handler;
@end

@implementation CADCoreSpotlightIndex

- (void)endIndexBatchWithExpectedClientState:(id)state newClientState:(id)clientState completionHandler:(id)handler
{
  handlerCopy = handler;
  index = self->_index;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__CADCoreSpotlightIndex_endIndexBatchWithExpectedClientState_newClientState_completionHandler___block_invoke;
  v11[3] = &unk_27851B168;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CSSearchableIndex *)index endIndexBatchWithExpectedClientState:state newClientState:clientState completionHandler:v11];
}

uint64_t __95__CADCoreSpotlightIndex_endIndexBatchWithExpectedClientState_newClientState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3 domain];
    if ([v4 isEqualToString:*MEMORY[0x277CC22E8]])
    {
      v5 = [v8 code];

      if (v5 == -1006)
      {
        [CADSpotlightLogger logError:@"Batch failed due to mismatch client state. Flagging for reindex %@", v8];
        *(*(a1 + 32) + 16) = 1;
      }
    }

    else
    {
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
  }

  return MEMORY[0x2821F96F8](v6);
}

- (CADCoreSpotlightIndex)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CADCoreSpotlightIndex;
  v5 = [(CADCoreSpotlightIndex *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CC34A8]);
    v7 = [v6 initWithName:@"events" protectionClass:*MEMORY[0x277CCA1A0] bundleIdentifier:dCopy];
    index = v5->_index;
    v5->_index = v7;

    v5->needsReindex = 0;
  }

  return v5;
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  [CADSpotlightLogger log:@"started deleteSearchableItemsWithDomainIdentifiers: %@", identifiersCopy];
  index = self->_index;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__CADCoreSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_27851B190;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(CSSearchableIndex *)index deleteSearchableItemsWithDomainIdentifiers:identifiersCopy completionHandler:v10];
}

void __86__CADCoreSpotlightIndex_deleteSearchableItemsWithDomainIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a2)
  {
    [CADSpotlightLogger logError:@"finished deleteSearchableItemsWithDomainIdentifiers: %@", v4];
  }

  else
  {
    [CADSpotlightLogger log:@"finished deleteSearchableItemsWithDomainIdentifiers"];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)indexSearchableItems:(id)items completionHandler:(id)handler
{
  handlerCopy = handler;
  itemsCopy = items;
  v8 = [itemsCopy CalMap:&__block_literal_global_19];
  [CADSpotlightLogger log:@"started indexSearchableItems: %@", v8];
  index = self->_index;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CADCoreSpotlightIndex_indexSearchableItems_completionHandler___block_invoke_2;
  v11[3] = &unk_27851B190;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CSSearchableIndex *)index indexSearchableItems:itemsCopy completionHandler:v11];
}

id __64__CADCoreSpotlightIndex_indexSearchableItems_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 domainIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v2 stringWithFormat:@"%@, %@", v4, v5];

  return v6;
}

void __64__CADCoreSpotlightIndex_indexSearchableItems_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a2)
  {
    [CADSpotlightLogger logError:@"finished indexSearchableItems: %@", v4];
  }

  else
  {
    [CADSpotlightLogger log:@"finished indexSearchableItems"];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deleteAllSearchableItemsForBundleID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  [CADSpotlightLogger log:@"started deleteAllSearchableItemsForBundleID: %@", dCopy];
  index = self->_index;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CADCoreSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke;
  v10[3] = &unk_27851B190;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(CSSearchableIndex *)index deleteAllSearchableItemsForBundleID:dCopy completionHandler:v10];
}

void __79__CADCoreSpotlightIndex_deleteAllSearchableItemsForBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a2)
  {
    [CADSpotlightLogger logError:@"finished deleteAllSearchableItemsForBundleID: %@", v4];
  }

  else
  {
    [CADSpotlightLogger log:@"finished deleteAllSearchableItemsForBundleID"];
  }

  (*(*(a1 + 32) + 16))();
}

@end