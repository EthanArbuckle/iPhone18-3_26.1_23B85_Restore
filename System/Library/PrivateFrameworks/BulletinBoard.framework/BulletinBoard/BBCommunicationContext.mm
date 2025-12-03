@interface BBCommunicationContext
+ (id)communicationContextWithIdentifier:(id)identifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)imageName systemImage:(BOOL)self0 mentionsCurrentUser:(BOOL)self1 notifyRecipientAnyway:(BOOL)self2 replyToCurrentUser:(BOOL)self3 recipientCount:(unint64_t)self4;
+ (id)communicationContextWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l;
+ (id)communicationContextWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)self0 systemImage:(BOOL)self1 mentionsCurrentUser:(BOOL)self2 notifyRecipientAnyway:(BOOL)self3 replyToCurrentUser:(BOOL)self4 recipientCount:(unint64_t)self5;
+ (id)communicationContextWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l mentionsCurrentUser:(BOOL)self0 notifyRecipientAnyway:(BOOL)self1 replyToCurrentUser:(BOOL)self2 recipientCount:(unint64_t)self3;
- (BBCommunicationContext)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)self0 systemImage:(BOOL)self1 mentionsCurrentUser:(BOOL)self2 notifyRecipientAnyway:(BOOL)self3 replyToCurrentUser:(BOOL)self4 recipientCount:(unint64_t)self5 capabilities:(int64_t)self6 businessCorrespondence:(BOOL)self7;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBCommunicationContext

+ (id)communicationContextWithIdentifier:(id)identifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)imageName systemImage:(BOOL)self0 mentionsCurrentUser:(BOOL)self1 notifyRecipientAnyway:(BOOL)self2 replyToCurrentUser:(BOOL)self3 recipientCount:(unint64_t)self4
{
  imageNameCopy = imageName;
  lCopy = l;
  recipientsCopy = recipients;
  senderCopy = sender;
  nameCopy = name;
  uriCopy = uri;
  identifierCopy = identifier;
  LOBYTE(v30) = 0;
  WORD1(v29) = __PAIR16__(currentUser, anyway);
  LOWORD(v29) = __PAIR16__(user, image);
  v27 = [objc_alloc(objc_opt_class()) _initWithIdentifier:identifierCopy bundleIdentifier:0 associatedObjectUri:uriCopy displayName:nameCopy sender:senderCopy recipients:recipientsCopy contentURL:lCopy imageName:imageNameCopy systemImage:v29 mentionsCurrentUser:count notifyRecipientAnyway:0 replyToCurrentUser:v30 recipientCount:? capabilities:? businessCorrespondence:?];

  return v27;
}

- (id)_initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)self0 systemImage:(BOOL)self1 mentionsCurrentUser:(BOOL)self2 notifyRecipientAnyway:(BOOL)self3 replyToCurrentUser:(BOOL)self4 recipientCount:(unint64_t)self5 capabilities:(int64_t)self6 businessCorrespondence:(BOOL)self7
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  uriCopy = uri;
  nameCopy = name;
  senderCopy = sender;
  recipientsCopy = recipients;
  lCopy = l;
  imageNameCopy = imageName;
  v49.receiver = self;
  v49.super_class = BBCommunicationContext;
  v31 = [(BBCommunicationContext *)&v49 init];
  if (v31)
  {
    v32 = [identifierCopy copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    v34 = [bundleIdentifierCopy copy];
    bundleIdentifier = v31->_bundleIdentifier;
    v31->_bundleIdentifier = v34;

    v36 = [uriCopy copy];
    associatedObjectUri = v31->_associatedObjectUri;
    v31->_associatedObjectUri = v36;

    v38 = [nameCopy copy];
    displayName = v31->_displayName;
    v31->_displayName = v38;

    v40 = [recipientsCopy copy];
    recipients = v31->_recipients;
    v31->_recipients = v40;

    v42 = [senderCopy copy];
    sender = v31->_sender;
    v31->_sender = v42;

    v44 = [lCopy copy];
    contentURL = v31->_contentURL;
    v31->_contentURL = v44;

    v46 = [imageNameCopy copy];
    imageName = v31->_imageName;
    v31->_imageName = v46;

    v31->_systemImage = image;
    v31->_mentionsCurrentUser = user;
    v31->_notifyRecipientAnyway = anyway;
    v31->_replyToCurrentUser = currentUser;
    v31->_recipientCount = count;
    v31->_capabilities = capabilities;
    v31->_businessCorrespondence = correspondence;
  }

  return v31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
LABEL_20:
      v30 = 0;
      goto LABEL_21;
    }
  }

  v5 = equalCopy;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  identifier = self->_identifier;
  identifier = [v5 identifier];
  LODWORD(identifier) = BSEqualStrings();

  if (!identifier)
  {
    goto LABEL_20;
  }

  bundleIdentifier = self->_bundleIdentifier;
  bundleIdentifier = [v6 bundleIdentifier];
  LODWORD(bundleIdentifier) = BSEqualStrings();

  if (!bundleIdentifier)
  {
    goto LABEL_20;
  }

  associatedObjectUri = self->_associatedObjectUri;
  associatedObjectUri = [v6 associatedObjectUri];
  LODWORD(associatedObjectUri) = BSEqualStrings();

  if (!associatedObjectUri)
  {
    goto LABEL_20;
  }

  displayName = self->_displayName;
  displayName = [v6 displayName];
  LODWORD(displayName) = BSEqualStrings();

  if (!displayName)
  {
    goto LABEL_20;
  }

  sender = self->_sender;
  sender = [v6 sender];
  LODWORD(sender) = BSEqualObjects();

  if (!sender)
  {
    goto LABEL_20;
  }

  recipients = self->_recipients;
  recipients = [v6 recipients];
  LODWORD(recipients) = BSEqualArrays();

  if (!recipients)
  {
    goto LABEL_20;
  }

  contentURL = self->_contentURL;
  contentURL = [v6 contentURL];
  LODWORD(contentURL) = BSEqualObjects();

  if (!contentURL)
  {
    goto LABEL_20;
  }

  imageName = self->_imageName;
  imageName = [v6 imageName];
  LODWORD(imageName) = BSEqualStrings();

  if (!imageName)
  {
    goto LABEL_20;
  }

  systemImage = self->_systemImage;
  if (systemImage != [v6 systemImage])
  {
    goto LABEL_20;
  }

  mentionsCurrentUser = self->_mentionsCurrentUser;
  if (mentionsCurrentUser != [v6 mentionsCurrentUser])
  {
    goto LABEL_20;
  }

  notifyRecipientAnyway = self->_notifyRecipientAnyway;
  if (notifyRecipientAnyway != [v6 notifyRecipientAnyway])
  {
    goto LABEL_20;
  }

  replyToCurrentUser = self->_replyToCurrentUser;
  if (replyToCurrentUser != [v6 isReplyToCurrentUser])
  {
    goto LABEL_20;
  }

  recipientCount = self->_recipientCount;
  if (recipientCount != [v6 recipientCount])
  {
    goto LABEL_20;
  }

  capabilities = self->_capabilities;
  if (capabilities != [v6 capabilities])
  {
    goto LABEL_20;
  }

  businessCorrespondence = self->_businessCorrespondence;
  v30 = businessCorrespondence == [v6 isBusinessCorrespondence];
LABEL_21:

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_bundleIdentifier hash]^ v3;
  v5 = [(NSString *)self->_associatedObjectUri hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_displayName hash];
  v7 = [(NSArray *)self->_recipients hash];
  v8 = v7 ^ [(BBContact *)self->_sender hash];
  v9 = v6 ^ v8 ^ [(NSURL *)self->_contentURL hash];
  return v9 ^ [(NSString *)self->_imageName hash]^ self->_systemImage ^ self->_mentionsCurrentUser ^ self->_notifyRecipientAnyway ^ self->_replyToCurrentUser ^ self->_recipientCount ^ self->_capabilities ^ self->_businessCorrespondence;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  bundleIdentifier = self->_bundleIdentifier;
  return [v3 stringWithFormat:@"<%@: %p; identifier: %@, bundleIdentifier: %@, associatedObjectUri: %@, displayName: %@, sender: %@, recipients: %@, contentURL: %@, imageName: %@, systemImage: %d, mentionsCurrentUser: %d, notifyRecipientAnyway: %d, replyToCurrentUser: %d, recipientCount: %lu>, capabilities: %lu, businessCorrespondence: %d", v4, self, self->_identifier, bundleIdentifier, self->_associatedObjectUri, self->_displayName, self->_sender, self->_recipients, self->_contentURL, self->_imageName, self->_systemImage, self->_mentionsCurrentUser, self->_notifyRecipientAnyway, self->_replyToCurrentUser, self->_recipientCount, self->_capabilities, self->_businessCorrespondence];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v22 = [BBMutableCommunicationContext allocWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_associatedObjectUri forKey:@"associatedObjectUri"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_sender forKey:@"sender"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
  [coderCopy encodeObject:self->_contentURL forKey:@"contentURL"];
  [coderCopy encodeObject:self->_imageName forKey:@"imageName"];
  [coderCopy encodeBool:self->_systemImage forKey:@"systemImage"];
  [coderCopy encodeBool:self->_mentionsCurrentUser forKey:@"mentionsCurrentUser"];
  [coderCopy encodeBool:self->_notifyRecipientAnyway forKey:@"notifyRecipientAnyway"];
  [coderCopy encodeBool:self->_replyToCurrentUser forKey:@"replyToCurrentUser"];
  [coderCopy encodeInteger:self->_recipientCount forKey:@"recipientCount"];
  [coderCopy encodeInteger:self->_capabilities forKey:@"capabilities"];
  [coderCopy encodeBool:self->_businessCorrespondence forKey:@"businessCorrespondence"];
}

- (BBCommunicationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedObjectUri"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = BBAllowedClasses();
  v18 = [coderCopy decodeObjectOfClasses:v4 forKey:@"recipients"];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v7 = [coderCopy decodeBoolForKey:@"systemImage"];
  v8 = [coderCopy decodeBoolForKey:@"mentionsCurrentUser"];
  v9 = [coderCopy decodeBoolForKey:@"notifyRecipientAnyway"];
  v10 = [coderCopy decodeBoolForKey:@"replyToCurrentUser"];
  v11 = [coderCopy decodeIntegerForKey:@"recipientCount"];
  v12 = [coderCopy decodeIntegerForKey:@"capabilities"];
  v13 = [coderCopy decodeBoolForKey:@"businessCorrespondence"];

  LOBYTE(v17) = v13;
  BYTE3(v16) = v10;
  BYTE2(v16) = v9;
  BYTE1(v16) = v8;
  LOBYTE(v16) = v7;
  v14 = [BBCommunicationContext _initWithIdentifier:"_initWithIdentifier:bundleIdentifier:associatedObjectUri:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" bundleIdentifier:v23 associatedObjectUri:v22 displayName:v21 sender:v20 recipients:v19 contentURL:v18 imageName:v5 systemImage:v6 mentionsCurrentUser:v16 notifyRecipientAnyway:v11 replyToCurrentUser:v12 recipientCount:v17 capabilities:? businessCorrespondence:?];

  return v14;
}

+ (id)communicationContextWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l
{
  lCopy = l;
  recipientsCopy = recipients;
  senderCopy = sender;
  nameCopy = name;
  uriCopy = uri;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  LOBYTE(v25) = 0;
  LODWORD(v24) = 0;
  v22 = [objc_alloc(objc_opt_class()) _initWithIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy associatedObjectUri:uriCopy displayName:nameCopy sender:senderCopy recipients:recipientsCopy contentURL:lCopy imageName:0 systemImage:v24 mentionsCurrentUser:0 notifyRecipientAnyway:0 replyToCurrentUser:v25 recipientCount:? capabilities:? businessCorrespondence:?];

  return v22;
}

+ (id)communicationContextWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l mentionsCurrentUser:(BOOL)self0 notifyRecipientAnyway:(BOOL)self1 replyToCurrentUser:(BOOL)self2 recipientCount:(unint64_t)self3
{
  lCopy = l;
  recipientsCopy = recipients;
  senderCopy = sender;
  nameCopy = name;
  uriCopy = uri;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  LOBYTE(v29) = 0;
  WORD1(v28) = __PAIR16__(currentUser, anyway);
  BYTE1(v28) = user;
  LOBYTE(v28) = 0;
  v26 = [objc_alloc(objc_opt_class()) _initWithIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy associatedObjectUri:uriCopy displayName:nameCopy sender:senderCopy recipients:recipientsCopy contentURL:lCopy imageName:0 systemImage:v28 mentionsCurrentUser:count notifyRecipientAnyway:0 replyToCurrentUser:v29 recipientCount:? capabilities:? businessCorrespondence:?];

  return v26;
}

+ (id)communicationContextWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier associatedObjectUri:(id)uri displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)self0 systemImage:(BOOL)self1 mentionsCurrentUser:(BOOL)self2 notifyRecipientAnyway:(BOOL)self3 replyToCurrentUser:(BOOL)self4 recipientCount:(unint64_t)self5
{
  imageNameCopy = imageName;
  lCopy = l;
  recipientsCopy = recipients;
  senderCopy = sender;
  nameCopy = name;
  uriCopy = uri;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  LOBYTE(v32) = 0;
  WORD1(v31) = __PAIR16__(currentUser, anyway);
  LOWORD(v31) = __PAIR16__(user, image);
  v29 = [objc_alloc(objc_opt_class()) _initWithIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy associatedObjectUri:uriCopy displayName:nameCopy sender:senderCopy recipients:recipientsCopy contentURL:lCopy imageName:imageNameCopy systemImage:v31 mentionsCurrentUser:count notifyRecipientAnyway:0 replyToCurrentUser:v32 recipientCount:? capabilities:? businessCorrespondence:?];

  return v29;
}

@end