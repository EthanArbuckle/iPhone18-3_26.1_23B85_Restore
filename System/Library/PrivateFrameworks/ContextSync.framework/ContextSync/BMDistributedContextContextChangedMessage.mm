@interface BMDistributedContextContextChangedMessage
- (BMDistributedContextContextChangedMessage)initWithMessageDictionary:(id)dictionary;
- (BMDistributedContextContextChangedMessage)initWithSubscriptionIdentifier:(id)identifier translatedEvent:(id)event messageIntent:(unint64_t)intent;
- (id)dictionaryRepresentation;
@end

@implementation BMDistributedContextContextChangedMessage

- (BMDistributedContextContextChangedMessage)initWithSubscriptionIdentifier:(id)identifier translatedEvent:(id)event messageIntent:(unint64_t)intent
{
  identifierCopy = identifier;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = BMDistributedContextContextChangedMessage;
  v11 = [(BMDistributedContextContextChangedMessage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subscriptionIdentifier, identifier);
    objc_storeStrong(&v12->_translatedEvent, event);
    v12->_messageIntent = intent;
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
  streamIdentifier = [(BMDistributedContextTranslatedEventMessage *)self->_translatedEvent streamIdentifier];
  v11[3] = streamIdentifier;
  v10[4] = @"event";
  eventData = [(BMDistributedContextTranslatedEventMessage *)self->_translatedEvent eventData];
  v11[4] = eventData;
  v10[5] = @"dataVersion";
  eventDataVersion = [(BMDistributedContextTranslatedEventMessage *)self->_translatedEvent eventDataVersion];
  v10[6] = @"identifier";
  subscriptionIdentifier = self->_subscriptionIdentifier;
  v11[5] = eventDataVersion;
  v11[6] = subscriptionIdentifier;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:7];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BMDistributedContextContextChangedMessage)initWithMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = BMDistributedContextContextChangedMessage;
  v5 = [(BMDistributedContextContextChangedMessage *)&v27 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
  if (v6)
  {
    v7 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
    if (v8)
    {
      v9 = v8;
      v10 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
      v11 = [v10 isEqualToString:@"1.0"];

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    subscriptionIdentifier = v5->_subscriptionIdentifier;
    v5->_subscriptionIdentifier = v14;

    v16 = [BMDistributedContextTranslatedEventMessage alloc];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"streamIdentifier"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"event"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"dataVersion"];
    v20 = [(BMDistributedContextTranslatedEventMessage *)v16 initWithStreamIdentifier:v17 eventData:v18 eventDataVersion:v19];
    translatedEvent = v5->_translatedEvent;
    v5->_translatedEvent = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
    messageVersion = v5->_messageVersion;
    v5->_messageVersion = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"version"];
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
    [BMDistributedContextSubscribeMessage initWithMessageDictionary:dictionaryCopy fromRemoteDevice:? localDevice:?];
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end