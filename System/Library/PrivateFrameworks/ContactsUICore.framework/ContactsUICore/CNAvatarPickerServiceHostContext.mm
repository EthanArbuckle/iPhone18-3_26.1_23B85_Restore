@interface CNAvatarPickerServiceHostContext
- (CNAvatarPickerServiceHostProtocol)exportedObject;
- (id)remoteProxy;
- (void)avatarPickerExtensionDidCancel;
- (void)avatarPickerExtensionDidCreateAvatarWithRecordData:(id)a3 identifier:(id)a4;
- (void)avatarPickerExtensionDidDeleteAvatarWithIdentifier:(id)a3;
- (void)avatarPickerExtensionDidFinishWithImageData:(id)a3 memojiMetadata:(id)a4;
- (void)avatarPickerExtensionDidRequestMemojiEditorPresentationForRecordIdentifier:(id)a3;
- (void)avatarPickerExtensionDidSelectItemWithImageData:(id)a3 memojiMetadata:(id)a4;
@end

@implementation CNAvatarPickerServiceHostContext

- (id)remoteProxy
{
  v2 = [(CNAvatarPickerServiceHostContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)avatarPickerExtensionDidSelectItemWithImageData:(id)a3 memojiMetadata:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [v8 avatarPickerExtensionDidSelectItemWithImageData:v7 memojiMetadata:v6];
}

- (void)avatarPickerExtensionDidFinishWithImageData:(id)a3 memojiMetadata:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [v8 avatarPickerExtensionDidFinishWithImageData:v7 memojiMetadata:v6];
}

- (void)avatarPickerExtensionDidCancel
{
  v2 = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [v2 avatarPickerExtensionDidCancel];
}

- (void)avatarPickerExtensionDidRequestMemojiEditorPresentationForRecordIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [v5 avatarPickerExtensionDidRequestMemojiEditorPresentationForRecordIdentifier:v4];
}

- (void)avatarPickerExtensionDidCreateAvatarWithRecordData:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [v8 avatarPickerExtensionDidCreateAvatarWithRecordData:v7 identifier:v6];
}

- (void)avatarPickerExtensionDidDeleteAvatarWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarPickerServiceHostContext *)self exportedObject];
  [v5 avatarPickerExtensionDidDeleteAvatarWithIdentifier:v4];
}

- (CNAvatarPickerServiceHostProtocol)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

@end