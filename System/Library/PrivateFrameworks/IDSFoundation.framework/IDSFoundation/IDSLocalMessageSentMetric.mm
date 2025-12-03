@interface IDSLocalMessageSentMetric
- (IDSLocalMessageSentMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(int64_t)size linkType:(unint64_t)type priority:(int64_t)priority;
- (NSCopying)awdRepresentation;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalMessageSentMetric

- (IDSLocalMessageSentMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(int64_t)size linkType:(unint64_t)type priority:(int64_t)priority
{
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = IDSLocalMessageSentMetric;
  v13 = [(IDSLocalMessageSentMetric *)&v17 init];
  if (v13)
  {
    v14 = [serviceCopy copy];
    service = v13->_service;
    v13->_service = v14;

    v13->_isToDefaultPairedDevice = device;
    v13->_messageSize = size;
    v13->_linkType = type;
    v13->_priority = priority;
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSLocalMessageSentMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalMessageSentMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isToDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSLocalMessageSentMetric messageSize](self, "messageSize")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"messageSize", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageSentMetric linkType](self, "linkType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"linkType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSLocalMessageSentMetric priority](self, "priority")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"priority", v8);
  }

  return v3;
}

- (NSCopying)awdRepresentation
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  service = [(IDSLocalMessageSentMetric *)self service];
  [v3 setService:service];

  [v3 setIsToDefaultPairedDevice:{-[IDSLocalMessageSentMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  [v3 setMessageSize:{-[IDSLocalMessageSentMetric messageSize](self, "messageSize")}];
  [v3 setLinkType:{-[IDSLocalMessageSentMetric linkType](self, "linkType")}];
  [v3 setPriority:{-[IDSLocalMessageSentMetric priority](self, "priority")}];

  return v3;
}

@end