@interface BBMutableCommunicationContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAssociatedObjectUri:(id)a3;
- (void)setContentURL:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setImageName:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSender:(id)a3;
@end

@implementation BBMutableCommunicationContext

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAssociatedObjectUri:(id)a3
{
  v4 = [a3 copy];
  associatedObjectUri = self->super._associatedObjectUri;
  self->super._associatedObjectUri = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->super._displayName;
  self->super._displayName = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSender:(id)a3
{
  v4 = [a3 copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setRecipients:(id)a3
{
  v4 = [a3 copy];
  recipients = self->super._recipients;
  self->super._recipients = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setContentURL:(id)a3
{
  v4 = [a3 copy];
  contentURL = self->super._contentURL;
  self->super._contentURL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setImageName:(id)a3
{
  v4 = [a3 copy];
  imageName = self->super._imageName;
  self->super._imageName = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = [BBCommunicationContext allocWithZone:a3];
  v21 = [(BBCommunicationContext *)self identifier];
  v20 = [(BBCommunicationContext *)self bundleIdentifier];
  v19 = [(BBCommunicationContext *)self associatedObjectUri];
  v18 = [(BBCommunicationContext *)self displayName];
  v17 = [(BBCommunicationContext *)self sender];
  v4 = [(BBCommunicationContext *)self recipients];
  v5 = [(BBCommunicationContext *)self contentURL];
  v6 = [(BBCommunicationContext *)self imageName];
  v7 = [(BBCommunicationContext *)self systemImage];
  v8 = [(BBCommunicationContext *)self mentionsCurrentUser];
  v9 = [(BBCommunicationContext *)self notifyRecipientAnyway];
  v10 = [(BBCommunicationContext *)self isReplyToCurrentUser];
  v11 = [(BBCommunicationContext *)self recipientCount];
  v12 = [(BBCommunicationContext *)self capabilities];
  LOBYTE(v16) = [(BBCommunicationContext *)self isBusinessCorrespondence];
  BYTE3(v15) = v10;
  BYTE2(v15) = v9;
  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [BBCommunicationContext _initWithIdentifier:v22 bundleIdentifier:"_initWithIdentifier:bundleIdentifier:associatedObjectUri:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" associatedObjectUri:v21 displayName:v20 sender:v19 recipients:v18 contentURL:v17 imageName:v4 systemImage:v5 mentionsCurrentUser:v6 notifyRecipientAnyway:v15 replyToCurrentUser:v11 recipientCount:v12 capabilities:v16 businessCorrespondence:?];

  return v13;
}

@end