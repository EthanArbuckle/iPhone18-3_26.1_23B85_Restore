@interface IDSLocalDeliveryMessageSentMetric
- (IDSLocalDeliveryMessageSentMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 messageSize:(unint64_t)a5 linkType:(unint64_t)a6 priority:(unint64_t)a7;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalDeliveryMessageSentMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSLocalDeliveryMessageSentMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalDeliveryMessageSentMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isToDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliveryMessageSentMetric messageSize](self, "messageSize")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"messageSize", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliveryMessageSentMetric linkType](self, "linkType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"linkType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliveryMessageSentMetric priority](self, "priority")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"priority", v8);
  }

  return v3;
}

- (IDSLocalDeliveryMessageSentMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 messageSize:(unint64_t)a5 linkType:(unint64_t)a6 priority:(unint64_t)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = IDSLocalDeliveryMessageSentMetric;
  v14 = [(IDSLocalDeliveryMessageSentMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_service, a3);
    v15->_isToDefaultPairedDevice = a4;
    v15->_messageSize = a5;
    v15->_linkType = a6;
    v15->_priority = a7;
  }

  return v15;
}

@end