@interface IDSMMLMessage
- (BOOL)addAggregateMessage:(id)a3;
- (BOOL)expectingMoreResponses;
- (IDSMMLMessage)initWithSendMode:(id)a3 topic:(id)a4 maxSize:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)noteResponseForToken:(id)a3;
@end

@implementation IDSMMLMessage

- (IDSMMLMessage)initWithSendMode:(id)a3 topic:(id)a4 maxSize:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = IDSMMLMessage;
  v10 = [(IDSMMLMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(IDSMMLMessage *)v10 setSendMode:v8];
    [(IDSMMLMessage *)v11 setTopic:v9];
    [(IDSMMLMessage *)v11 setMaxSize:a5];
  }

  return v11;
}

- (BOOL)addAggregateMessage:(id)a3
{
  v4 = a3;
  aggregateMessages = self->_aggregateMessages;
  if (!aggregateMessages)
  {
    v6 = objc_alloc_init(NSMutableOrderedSet);
    v7 = self->_aggregateMessages;
    self->_aggregateMessages = v6;

    aggregateMessages = self->_aggregateMessages;
  }

  [(NSMutableOrderedSet *)aggregateMessages addObject:v4];
  currentSize = self->_currentSize;
  self->_currentSize = [v4 sizeOfKeysWithValues] + currentSize;

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = IDSMMLMessage;
  v4 = [(IDSMMLMessage *)&v10 copyWithZone:a3];
  v5 = [(IDSMMLMessage *)self sendMode];
  [v4 setSendMode:v5];

  [v4 setMaxSize:{-[IDSMMLMessage maxSize](self, "maxSize")}];
  [v4 setCurrentSize:{-[IDSMMLMessage currentSize](self, "currentSize")}];
  v6 = [(IDSMMLMessage *)self chunkNumber];
  [v4 setChunkNumber:v6];

  v7 = [(IDSMMLMessage *)self identifier];
  [v4 setIdentifier:v7];

  v8 = [(IDSMMLMessage *)self aggregateMessages];
  [v4 setAggregateMessages:v8];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v18.receiver = self;
  v18.super_class = IDSMMLMessage;
  v3 = [(IDSMMLMessage *)&v18 messageBody];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_aggregateMessages;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) messageBody];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(IDSMMLMessage *)self sendMode];
  if (v12)
  {
    CFDictionarySetValue(v4, IDSDeliverySendModeKey, v12);
  }

  if (v5)
  {
    CFDictionarySetValue(v4, IDSMadridMessageListKey, v5);
  }

  return v4;
}

- (void)noteResponseForToken:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_aggregateMessages;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) noteResponseForToken:{v4, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)expectingMoreResponses
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_aggregateMessages;
  v3 = [(NSMutableOrderedSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) expectingMoreResponses])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableOrderedSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end