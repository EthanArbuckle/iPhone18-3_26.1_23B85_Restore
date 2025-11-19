@interface WFSerializableContentProviderEntry
- (WFSerializableContentProviderEntry)initWithSerializedRepresentationBlock:(id)a3 deserializationBlock:(id)a4;
@end

@implementation WFSerializableContentProviderEntry

- (WFSerializableContentProviderEntry)initWithSerializedRepresentationBlock:(id)a3 deserializationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFSerializableContentProviderEntry;
  v8 = [(WFSerializableContentProviderEntry *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    serializationBlock = v8->_serializationBlock;
    v8->_serializationBlock = v9;

    v11 = [v7 copy];
    deserializationBlock = v8->_deserializationBlock;
    v8->_deserializationBlock = v11;

    v13 = v8;
  }

  return v8;
}

@end