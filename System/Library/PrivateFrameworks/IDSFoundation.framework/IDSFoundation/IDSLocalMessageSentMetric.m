@interface IDSLocalMessageSentMetric
- (IDSLocalMessageSentMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 messageSize:(int64_t)a5 linkType:(unint64_t)a6 priority:(int64_t)a7;
- (NSCopying)awdRepresentation;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalMessageSentMetric

- (IDSLocalMessageSentMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 messageSize:(int64_t)a5 linkType:(unint64_t)a6 priority:(int64_t)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = IDSLocalMessageSentMetric;
  v13 = [(IDSLocalMessageSentMetric *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    service = v13->_service;
    v13->_service = v14;

    v13->_isToDefaultPairedDevice = a4;
    v13->_messageSize = a5;
    v13->_linkType = a6;
    v13->_priority = a7;
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSLocalMessageSentMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
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
  v4 = [(IDSLocalMessageSentMetric *)self service];
  [v3 setService:v4];

  [v3 setIsToDefaultPairedDevice:{-[IDSLocalMessageSentMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  [v3 setMessageSize:{-[IDSLocalMessageSentMetric messageSize](self, "messageSize")}];
  [v3 setLinkType:{-[IDSLocalMessageSentMetric linkType](self, "linkType")}];
  [v3 setPriority:{-[IDSLocalMessageSentMetric priority](self, "priority")}];

  return v3;
}

@end