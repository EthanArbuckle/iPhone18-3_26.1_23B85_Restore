@interface EDMessagePersistence
- (id)deliveryInfoForMessage:(id)message;
- (int64_t)mailDropDeliveryStateForMessage:(id)message;
- (void)setDeliveryInfo:(id)info forMessage:(id)message;
- (void)setMailDropDeliveryState:(int64_t)state forMessage:(id)message;
@end

@implementation EDMessagePersistence

- (id)deliveryInfoForMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    objectID = [messageCopy objectID];
    v7 = [(EDMessagePersistence *)self cachedMetadataJSONForKey:@"maild.deliveryInfo" messageID:objectID];

    v8 = [[MessageDeliveryInfo alloc] initWithJSON:v7];
  }

  else
  {
    v8 = objc_alloc_init(MessageDeliveryInfo);
  }

  return v8;
}

- (void)setDeliveryInfo:(id)info forMessage:(id)message
{
  infoCopy = info;
  messageCopy = message;
  if (messageCopy)
  {
    encodedAsJSON = [infoCopy encodedAsJSON];
    objectID = [messageCopy objectID];
    [(EDMessagePersistence *)self setCachedMetadataJSON:encodedAsJSON forKey:@"maild.deliveryInfo" messageID:objectID];
  }
}

- (int64_t)mailDropDeliveryStateForMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    objectID = [messageCopy objectID];
    v7 = [(EDMessagePersistence *)self cachedMetadataJSONForKey:@"maild.mailDropDeliveryState" messageID:objectID];

    if (v7)
    {
      intValue = [v7 intValue];
      if (intValue - 9 >= 0xFFFFFFF8)
      {
        v9 = intValue;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setMailDropDeliveryState:(int64_t)state forMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v8 = messageCopy;
    if (state)
    {
      state = [NSString stringWithFormat:@"%d", state];
      messageCopy = v8;
    }

    objectID = [messageCopy objectID];
    [(EDMessagePersistence *)self setCachedMetadataJSON:state forKey:@"maild.mailDropDeliveryState" messageID:objectID];

    messageCopy = v8;
  }
}

@end