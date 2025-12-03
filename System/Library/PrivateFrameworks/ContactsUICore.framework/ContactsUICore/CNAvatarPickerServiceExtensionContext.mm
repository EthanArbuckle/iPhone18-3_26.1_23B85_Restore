@interface CNAvatarPickerServiceExtensionContext
- (CNAvatarPickerServiceExtensionProtocol)exportedObject;
- (id)remoteProxy;
- (void)overrideUserInterfaceStyle:(int64_t)style;
- (void)setCurrentMemojiMetadata:(id)metadata;
- (void)setSelectedRecordIdentifier:(id)identifier;
- (void)setSetupUserAvatarRecords:(id)records;
@end

@implementation CNAvatarPickerServiceExtensionContext

- (id)remoteProxy
{
  _auxiliaryConnection = [(CNAvatarPickerServiceExtensionContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)setSelectedRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  exportedObject = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [exportedObject setSelectedRecordIdentifier:identifierCopy];
}

- (void)setCurrentMemojiMetadata:(id)metadata
{
  metadataCopy = metadata;
  exportedObject = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [exportedObject setCurrentMemojiMetadata:metadataCopy];
}

- (void)overrideUserInterfaceStyle:(int64_t)style
{
  exportedObject = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [exportedObject overrideUserInterfaceStyle:style];
}

- (void)setSetupUserAvatarRecords:(id)records
{
  recordsCopy = records;
  exportedObject = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [exportedObject setSetupUserAvatarRecords:recordsCopy];
}

- (CNAvatarPickerServiceExtensionProtocol)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end