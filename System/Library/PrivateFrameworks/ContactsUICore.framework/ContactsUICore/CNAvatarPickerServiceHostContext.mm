@interface CNAvatarPickerServiceHostContext
- (CNAvatarPickerServiceHostProtocol)exportedObject;
- (id)remoteProxy;
- (void)avatarPickerExtensionDidCancel;
- (void)avatarPickerExtensionDidCreateAvatarWithRecordData:(id)data identifier:(id)identifier;
- (void)avatarPickerExtensionDidDeleteAvatarWithIdentifier:(id)identifier;
- (void)avatarPickerExtensionDidFinishWithImageData:(id)data memojiMetadata:(id)metadata;
- (void)avatarPickerExtensionDidRequestMemojiEditorPresentationForRecordIdentifier:(id)identifier;
- (void)avatarPickerExtensionDidSelectItemWithImageData:(id)data memojiMetadata:(id)metadata;
@end

@implementation CNAvatarPickerServiceHostContext

- (id)remoteProxy
{
  _auxiliaryConnection = [(CNAvatarPickerServiceHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)avatarPickerExtensionDidSelectItemWithImageData:(id)data memojiMetadata:(id)metadata
{
  metadataCopy = metadata;
  dataCopy = data;
  exportedObject = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [exportedObject avatarPickerExtensionDidSelectItemWithImageData:dataCopy memojiMetadata:metadataCopy];
}

- (void)avatarPickerExtensionDidFinishWithImageData:(id)data memojiMetadata:(id)metadata
{
  metadataCopy = metadata;
  dataCopy = data;
  exportedObject = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [exportedObject avatarPickerExtensionDidFinishWithImageData:dataCopy memojiMetadata:metadataCopy];
}

- (void)avatarPickerExtensionDidCancel
{
  exportedObject = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [exportedObject avatarPickerExtensionDidCancel];
}

- (void)avatarPickerExtensionDidRequestMemojiEditorPresentationForRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  exportedObject = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [exportedObject avatarPickerExtensionDidRequestMemojiEditorPresentationForRecordIdentifier:identifierCopy];
}

- (void)avatarPickerExtensionDidCreateAvatarWithRecordData:(id)data identifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  exportedObject = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [exportedObject avatarPickerExtensionDidCreateAvatarWithRecordData:dataCopy identifier:identifierCopy];
}

- (void)avatarPickerExtensionDidDeleteAvatarWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  exportedObject = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [exportedObject avatarPickerExtensionDidDeleteAvatarWithIdentifier:identifierCopy];
}

- (CNAvatarPickerServiceHostProtocol)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end