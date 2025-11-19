@interface BMDistributedContextContextChangedMessage
- (BMDistributedContextContextChangedMessage)initWithMessageDictionary:(id)a3;
- (BMDistributedContextContextChangedMessage)initWithSubscriptionIdentifier:(id)a3 translatedEvent:(id)a4 messageIntent:(unint64_t)a5;
- (id)dictionaryRepresentation;
@end

@implementation BMDistributedContextContextChangedMessage

- (BMDistributedContextContextChangedMessage)initWithSubscriptionIdentifier:(id)a3 translatedEvent:(id)a4 messageIntent:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BMDistributedContextContextChangedMessage;
  v11 = [(BMDistributedContextContextChangedMessage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subscriptionIdentifier, a3);
    objc_storeStrong(&v12->_translatedEvent, a4);
    v12->_messageIntent = a5;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v11[7] = *MEMORY[0x277D85DE8];
  v10[0] = @"type";
  v10[1] = @"messageVersion";
  v11[0] = @"context";
  v11[1] = @"1.0";
  v11[2] = &unk_28578CB68;
  v10[2] = @"version";
  v10[3] = @"streamIdentifier";
  v3 = [(BMDistributedContextTranslatedEventMessage *)self->_translatedEvent streamIdentifier];
  v11[3] = v3;
  v10[4] = @"event";
  v4 = [(BMDistributedContextTranslatedEventMessage *)self->_translatedEvent eventData];
  v11[4] = v4;
  v10[5] = @"dataVersion";
  v5 = [(BMDistributedContextTranslatedEventMessage *)self->_translatedEvent eventDataVersion];
  v10[6] = @"identifier";
  subscriptionIdentifier = self->_subscriptionIdentifier;
  v11[5] = v5;
  v11[6] = subscriptionIdentifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:7];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BMDistributedContextContextChangedMessage)initWithMessageDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMDistributedContextContextChangedMessage;
  v5 = [(BMDistributedContextContextChangedMessage *)&v27 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v4 objectForKeyedSubscript:@"messageVersion"];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:@"messageVersion"];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 objectForKeyedSubscript:@"messageVersion"];
      v11 = [v10 isEqualToString:@"1.0"];

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v14 = [v4 objectForKeyedSubscript:@"identifier"];
    subscriptionIdentifier = v5->_subscriptionIdentifier;
    v5->_subscriptionIdentifier = v14;

    v16 = [BMDistributedContextTranslatedEventMessage alloc];
    v17 = [v4 objectForKeyedSubscript:@"streamIdentifier"];
    v18 = [v4 objectForKeyedSubscript:@"event"];
    v19 = [v4 objectForKeyedSubscript:@"dataVersion"];
    v20 = [(BMDistributedContextTranslatedEventMessage *)v16 initWithStreamIdentifier:v17 eventData:v18 eventDataVersion:v19];
    translatedEvent = v5->_translatedEvent;
    v5->_translatedEvent = v20;

    v22 = [v4 objectForKeyedSubscript:@"messageVersion"];
    messageVersion = v5->_messageVersion;
    v5->_messageVersion = v22;

    v24 = [v4 objectForKeyedSubscript:@"version"];
    protocolVersion = v5->_protocolVersion;
    v5->_protocolVersion = v24;

LABEL_10:
    v13 = v5;
    goto LABEL_11;
  }

LABEL_5:
  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [BMDistributedContextSubscribeMessage initWithMessageDictionary:v4 fromRemoteDevice:? localDevice:?];
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end