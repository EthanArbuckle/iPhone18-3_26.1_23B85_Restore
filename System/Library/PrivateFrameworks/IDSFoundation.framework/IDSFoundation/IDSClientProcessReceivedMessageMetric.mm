@interface IDSClientProcessReceivedMessageMetric
- (IDSClientProcessReceivedMessageMetric)initWithServiceIdentifier:(id)identifier messageSize:(unint64_t)size deltaTime:(unint64_t)time priority:(unint64_t)priority;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSClientProcessReceivedMessageMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  serviceIdentifier = [(IDSClientProcessReceivedMessageMetric *)self serviceIdentifier];
  if (serviceIdentifier)
  {
    CFDictionarySetValue(v3, @"serviceIdentifier", serviceIdentifier);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSClientProcessReceivedMessageMetric messageSize](self, "messageSize")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"messageSize", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSClientProcessReceivedMessageMetric deltaTime](self, "deltaTime")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"deltaTime", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSClientProcessReceivedMessageMetric priority](self, "priority")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"priority", v7);
  }

  return v3;
}

- (IDSClientProcessReceivedMessageMetric)initWithServiceIdentifier:(id)identifier messageSize:(unint64_t)size deltaTime:(unint64_t)time priority:(unint64_t)priority
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = IDSClientProcessReceivedMessageMetric;
  v12 = [(IDSClientProcessReceivedMessageMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceIdentifier, identifier);
    v13->_messageSize = size;
    v13->_deltaTime = time;
    v13->_priority = priority;
  }

  return v13;
}

@end