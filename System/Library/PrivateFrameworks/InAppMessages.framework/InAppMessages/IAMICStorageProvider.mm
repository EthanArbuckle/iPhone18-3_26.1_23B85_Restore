@interface IAMICStorageProvider
- (IAMMessageEntryProvider)messageEntryProvider;
- (IAMMessageMetadataStorage)messageMetadataStorage;
- (IAMPropertyStorage)propertyStorage;
@end

@implementation IAMICStorageProvider

- (IAMMessageEntryProvider)messageEntryProvider
{
  messageEntryProvider = self->_messageEntryProvider;
  if (!messageEntryProvider)
  {
    v4 = objc_alloc_init(IAMICMessageEntryProvider);
    v5 = self->_messageEntryProvider;
    self->_messageEntryProvider = v4;

    messageEntryProvider = self->_messageEntryProvider;
  }

  return messageEntryProvider;
}

- (IAMMessageMetadataStorage)messageMetadataStorage
{
  messageMetadataStorage = self->_messageMetadataStorage;
  if (!messageMetadataStorage)
  {
    v4 = objc_alloc_init(IAMICMessageMetadataStorage);
    v5 = self->_messageMetadataStorage;
    self->_messageMetadataStorage = v4;

    messageMetadataStorage = self->_messageMetadataStorage;
  }

  return messageMetadataStorage;
}

- (IAMPropertyStorage)propertyStorage
{
  propertyStorage = self->_propertyStorage;
  if (!propertyStorage)
  {
    v4 = objc_alloc_init(IAMICPropertyStorage);
    v5 = self->_propertyStorage;
    self->_propertyStorage = v4;

    propertyStorage = self->_propertyStorage;
  }

  return propertyStorage;
}

@end