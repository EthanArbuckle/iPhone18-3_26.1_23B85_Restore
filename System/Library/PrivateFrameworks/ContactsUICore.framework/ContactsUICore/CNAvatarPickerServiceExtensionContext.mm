@interface CNAvatarPickerServiceExtensionContext
- (CNAvatarPickerServiceExtensionProtocol)exportedObject;
- (id)remoteProxy;
- (void)overrideUserInterfaceStyle:(int64_t)a3;
- (void)setCurrentMemojiMetadata:(id)a3;
- (void)setSelectedRecordIdentifier:(id)a3;
- (void)setSetupUserAvatarRecords:(id)a3;
@end

@implementation CNAvatarPickerServiceExtensionContext

- (id)remoteProxy
{
  v2 = [(CNAvatarPickerServiceExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)setSelectedRecordIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [v5 setSelectedRecordIdentifier:v4];
}

- (void)setCurrentMemojiMetadata:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [v5 setCurrentMemojiMetadata:v4];
}

- (void)overrideUserInterfaceStyle:(int64_t)a3
{
  v4 = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [v4 overrideUserInterfaceStyle:a3];
}

- (void)setSetupUserAvatarRecords:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarPickerServiceExtensionContext *)self exportedObject];
  [v5 setSetupUserAvatarRecords:v4];
}

- (CNAvatarPickerServiceExtensionProtocol)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end