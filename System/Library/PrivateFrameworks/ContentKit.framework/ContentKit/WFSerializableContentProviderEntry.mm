@interface WFSerializableContentProviderEntry
- (WFSerializableContentProviderEntry)initWithSerializedRepresentationBlock:(id)block deserializationBlock:(id)deserializationBlock;
@end

@implementation WFSerializableContentProviderEntry

- (WFSerializableContentProviderEntry)initWithSerializedRepresentationBlock:(id)block deserializationBlock:(id)deserializationBlock
{
  blockCopy = block;
  deserializationBlockCopy = deserializationBlock;
  v15.receiver = self;
  v15.super_class = WFSerializableContentProviderEntry;
  v8 = [(WFSerializableContentProviderEntry *)&v15 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    serializationBlock = v8->_serializationBlock;
    v8->_serializationBlock = v9;

    v11 = [deserializationBlockCopy copy];
    deserializationBlock = v8->_deserializationBlock;
    v8->_deserializationBlock = v11;

    v13 = v8;
  }

  return v8;
}

@end