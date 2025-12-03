@interface UARPUpdaterServiceDynamicAssetSolicitationRecord
- (BOOL)addSolicitedResponse:(id)response modelNumber:(id)number;
- (BOOL)isDynamicAssetSolicitationComplete;
- (UARPUpdaterServiceDynamicAssetSolicitationRecord)initWithModelNumbers:(id)numbers endpoint:(id)endpoint;
- (id)allSolicitedResponses;
- (void)addExpectedSolicitationResponse;
@end

@implementation UARPUpdaterServiceDynamicAssetSolicitationRecord

- (UARPUpdaterServiceDynamicAssetSolicitationRecord)initWithModelNumbers:(id)numbers endpoint:(id)endpoint
{
  numbersCopy = numbers;
  endpointCopy = endpoint;
  v24.receiver = self;
  v24.super_class = UARPUpdaterServiceDynamicAssetSolicitationRecord;
  v8 = [(UARPUpdaterServiceDynamicAssetSolicitationRecord *)&v24 init];
  if (v8)
  {
    v19 = endpointCopy;
    v9 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = numbersCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[UARPStandaloneCommandReplyRecord alloc] initWithModelNumber:*(*(&v20 + 1) + 8 * v14)];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    v16 = [NSArray arrayWithArray:v9];
    responseRecords = v8->_responseRecords;
    v8->_responseRecords = v16;

    objc_storeStrong(&v8->_solicitedAssetResponseEndpoint, endpoint);
    v8->_expectedSolicitedAssetResponseCount = 0;

    endpointCopy = v19;
  }

  return v8;
}

- (void)addExpectedSolicitationResponse
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_expectedSolicitedAssetResponseCount;
  objc_sync_exit(obj);
}

- (BOOL)addSolicitedResponse:(id)response modelNumber:(id)number
{
  responseCopy = response;
  numberCopy = number;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = selfCopy->_responseRecords;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        modelNumber = [v13 modelNumber];
        v15 = [modelNumber isEqualToString:numberCopy];

        if (v15)
        {
          if (responseCopy)
          {
            [v13 addResponseURL:responseCopy];
          }

          else
          {
            expectedSolicitedAssetResponseCount = selfCopy->_expectedSolicitedAssetResponseCount;
            if (expectedSolicitedAssetResponseCount)
            {
              selfCopy->_expectedSolicitedAssetResponseCount = expectedSolicitedAssetResponseCount - 1;
            }
          }

          LOBYTE(v10) = 1;
          goto LABEL_15;
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  objc_sync_exit(selfCopy);
  return v10;
}

- (id)allSolicitedResponses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [NSArray arrayWithArray:selfCopy->_responseRecords];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isDynamicAssetSolicitationComplete
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = selfCopy->_responseRecords;
  v4 = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        getResponseURLs = [*(*(&v11 + 1) + 8 * v7) getResponseURLs];
        v9 = [getResponseURLs count];

        v4 += v9;
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
  return v4 == selfCopy->_expectedSolicitedAssetResponseCount;
}

@end