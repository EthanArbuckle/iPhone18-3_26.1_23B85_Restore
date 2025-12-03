@interface BBMutableCommunicationContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAssociatedObjectUri:(id)uri;
- (void)setContentURL:(id)l;
- (void)setDisplayName:(id)name;
- (void)setIdentifier:(id)identifier;
- (void)setImageName:(id)name;
- (void)setRecipients:(id)recipients;
- (void)setSender:(id)sender;
@end

@implementation BBMutableCommunicationContext

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAssociatedObjectUri:(id)uri
{
  v4 = [uri copy];
  associatedObjectUri = self->super._associatedObjectUri;
  self->super._associatedObjectUri = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->super._displayName;
  self->super._displayName = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSender:(id)sender
{
  v4 = [sender copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients copy];
  recipients = self->super._recipients;
  self->super._recipients = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setContentURL:(id)l
{
  v4 = [l copy];
  contentURL = self->super._contentURL;
  self->super._contentURL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setImageName:(id)name
{
  v4 = [name copy];
  imageName = self->super._imageName;
  self->super._imageName = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = [BBCommunicationContext allocWithZone:zone];
  identifier = [(BBCommunicationContext *)self identifier];
  bundleIdentifier = [(BBCommunicationContext *)self bundleIdentifier];
  associatedObjectUri = [(BBCommunicationContext *)self associatedObjectUri];
  displayName = [(BBCommunicationContext *)self displayName];
  sender = [(BBCommunicationContext *)self sender];
  recipients = [(BBCommunicationContext *)self recipients];
  contentURL = [(BBCommunicationContext *)self contentURL];
  imageName = [(BBCommunicationContext *)self imageName];
  systemImage = [(BBCommunicationContext *)self systemImage];
  mentionsCurrentUser = [(BBCommunicationContext *)self mentionsCurrentUser];
  notifyRecipientAnyway = [(BBCommunicationContext *)self notifyRecipientAnyway];
  isReplyToCurrentUser = [(BBCommunicationContext *)self isReplyToCurrentUser];
  recipientCount = [(BBCommunicationContext *)self recipientCount];
  capabilities = [(BBCommunicationContext *)self capabilities];
  LOBYTE(v16) = [(BBCommunicationContext *)self isBusinessCorrespondence];
  BYTE3(v15) = isReplyToCurrentUser;
  BYTE2(v15) = notifyRecipientAnyway;
  BYTE1(v15) = mentionsCurrentUser;
  LOBYTE(v15) = systemImage;
  v13 = [BBCommunicationContext _initWithIdentifier:v22 bundleIdentifier:"_initWithIdentifier:bundleIdentifier:associatedObjectUri:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" associatedObjectUri:identifier displayName:bundleIdentifier sender:associatedObjectUri recipients:displayName contentURL:sender imageName:recipients systemImage:contentURL mentionsCurrentUser:imageName notifyRecipientAnyway:v15 replyToCurrentUser:recipientCount recipientCount:capabilities capabilities:v16 businessCorrespondence:?];

  return v13;
}

@end