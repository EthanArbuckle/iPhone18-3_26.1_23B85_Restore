@interface BBCommunicationContext
+ (id)communicationContextWithIdentifier:(id)a3 associatedObjectUri:(id)a4 displayName:(id)a5 sender:(id)a6 recipients:(id)a7 contentURL:(id)a8 imageName:(id)a9 systemImage:(BOOL)a10 mentionsCurrentUser:(BOOL)a11 notifyRecipientAnyway:(BOOL)a12 replyToCurrentUser:(BOOL)a13 recipientCount:(unint64_t)a14;
+ (id)communicationContextWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9;
+ (id)communicationContextWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 imageName:(id)a10 systemImage:(BOOL)a11 mentionsCurrentUser:(BOOL)a12 notifyRecipientAnyway:(BOOL)a13 replyToCurrentUser:(BOOL)a14 recipientCount:(unint64_t)a15;
+ (id)communicationContextWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 mentionsCurrentUser:(BOOL)a10 notifyRecipientAnyway:(BOOL)a11 replyToCurrentUser:(BOOL)a12 recipientCount:(unint64_t)a13;
- (BBCommunicationContext)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 imageName:(id)a10 systemImage:(BOOL)a11 mentionsCurrentUser:(BOOL)a12 notifyRecipientAnyway:(BOOL)a13 replyToCurrentUser:(BOOL)a14 recipientCount:(unint64_t)a15 capabilities:(int64_t)a16 businessCorrespondence:(BOOL)a17;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBCommunicationContext

+ (id)communicationContextWithIdentifier:(id)a3 associatedObjectUri:(id)a4 displayName:(id)a5 sender:(id)a6 recipients:(id)a7 contentURL:(id)a8 imageName:(id)a9 systemImage:(BOOL)a10 mentionsCurrentUser:(BOOL)a11 notifyRecipientAnyway:(BOOL)a12 replyToCurrentUser:(BOOL)a13 recipientCount:(unint64_t)a14
{
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  LOBYTE(v30) = 0;
  WORD1(v29) = __PAIR16__(a13, a12);
  LOWORD(v29) = __PAIR16__(a11, a10);
  v27 = [objc_alloc(objc_opt_class()) _initWithIdentifier:v26 bundleIdentifier:0 associatedObjectUri:v25 displayName:v24 sender:v23 recipients:v22 contentURL:v21 imageName:v20 systemImage:v29 mentionsCurrentUser:a14 notifyRecipientAnyway:0 replyToCurrentUser:v30 recipientCount:? capabilities:? businessCorrespondence:?];

  return v27;
}

- (id)_initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 imageName:(id)a10 systemImage:(BOOL)a11 mentionsCurrentUser:(BOOL)a12 notifyRecipientAnyway:(BOOL)a13 replyToCurrentUser:(BOOL)a14 recipientCount:(unint64_t)a15 capabilities:(int64_t)a16 businessCorrespondence:(BOOL)a17
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v30 = a10;
  v49.receiver = self;
  v49.super_class = BBCommunicationContext;
  v31 = [(BBCommunicationContext *)&v49 init];
  if (v31)
  {
    v32 = [v23 copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    v34 = [v24 copy];
    bundleIdentifier = v31->_bundleIdentifier;
    v31->_bundleIdentifier = v34;

    v36 = [v25 copy];
    associatedObjectUri = v31->_associatedObjectUri;
    v31->_associatedObjectUri = v36;

    v38 = [v26 copy];
    displayName = v31->_displayName;
    v31->_displayName = v38;

    v40 = [v28 copy];
    recipients = v31->_recipients;
    v31->_recipients = v40;

    v42 = [v27 copy];
    sender = v31->_sender;
    v31->_sender = v42;

    v44 = [v29 copy];
    contentURL = v31->_contentURL;
    v31->_contentURL = v44;

    v46 = [v30 copy];
    imageName = v31->_imageName;
    v31->_imageName = v46;

    v31->_systemImage = a11;
    v31->_mentionsCurrentUser = a12;
    v31->_notifyRecipientAnyway = a13;
    v31->_replyToCurrentUser = a14;
    v31->_recipientCount = a15;
    v31->_capabilities = a16;
    v31->_businessCorrespondence = a17;
  }

  return v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  identifier = self->_identifier;
  v8 = [v5 identifier];
  LODWORD(identifier) = BSEqualStrings();

  if (!identifier)
  {
    goto LABEL_20;
  }

  bundleIdentifier = self->_bundleIdentifier;
  v10 = [v6 bundleIdentifier];
  LODWORD(bundleIdentifier) = BSEqualStrings();

  if (!bundleIdentifier)
  {
    goto LABEL_20;
  }

  associatedObjectUri = self->_associatedObjectUri;
  v12 = [v6 associatedObjectUri];
  LODWORD(associatedObjectUri) = BSEqualStrings();

  if (!associatedObjectUri)
  {
    goto LABEL_20;
  }

  displayName = self->_displayName;
  v14 = [v6 displayName];
  LODWORD(displayName) = BSEqualStrings();

  if (!displayName)
  {
    goto LABEL_20;
  }

  sender = self->_sender;
  v16 = [v6 sender];
  LODWORD(sender) = BSEqualObjects();

  if (!sender)
  {
    goto LABEL_20;
  }

  recipients = self->_recipients;
  v18 = [v6 recipients];
  LODWORD(recipients) = BSEqualArrays();

  if (!recipients)
  {
    goto LABEL_20;
  }

  contentURL = self->_contentURL;
  v20 = [v6 contentURL];
  LODWORD(contentURL) = BSEqualObjects();

  if (!contentURL)
  {
    goto LABEL_20;
  }

  imageName = self->_imageName;
  v22 = [v6 imageName];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v22 = [BBMutableCommunicationContext allocWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeObject:self->_associatedObjectUri forKey:@"associatedObjectUri"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_sender forKey:@"sender"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
  [v5 encodeObject:self->_contentURL forKey:@"contentURL"];
  [v5 encodeObject:self->_imageName forKey:@"imageName"];
  [v5 encodeBool:self->_systemImage forKey:@"systemImage"];
  [v5 encodeBool:self->_mentionsCurrentUser forKey:@"mentionsCurrentUser"];
  [v5 encodeBool:self->_notifyRecipientAnyway forKey:@"notifyRecipientAnyway"];
  [v5 encodeBool:self->_replyToCurrentUser forKey:@"replyToCurrentUser"];
  [v5 encodeInteger:self->_recipientCount forKey:@"recipientCount"];
  [v5 encodeInteger:self->_capabilities forKey:@"capabilities"];
  [v5 encodeBool:self->_businessCorrespondence forKey:@"businessCorrespondence"];
}

- (BBCommunicationContext)initWithCoder:(id)a3
{
  v3 = a3;
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"associatedObjectUri"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = BBAllowedClasses();
  v18 = [v3 decodeObjectOfClasses:v4 forKey:@"recipients"];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v7 = [v3 decodeBoolForKey:@"systemImage"];
  v8 = [v3 decodeBoolForKey:@"mentionsCurrentUser"];
  v9 = [v3 decodeBoolForKey:@"notifyRecipientAnyway"];
  v10 = [v3 decodeBoolForKey:@"replyToCurrentUser"];
  v11 = [v3 decodeIntegerForKey:@"recipientCount"];
  v12 = [v3 decodeIntegerForKey:@"capabilities"];
  v13 = [v3 decodeBoolForKey:@"businessCorrespondence"];

  LOBYTE(v17) = v13;
  BYTE3(v16) = v10;
  BYTE2(v16) = v9;
  BYTE1(v16) = v8;
  LOBYTE(v16) = v7;
  v14 = [BBCommunicationContext _initWithIdentifier:"_initWithIdentifier:bundleIdentifier:associatedObjectUri:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" bundleIdentifier:v23 associatedObjectUri:v22 displayName:v21 sender:v20 recipients:v19 contentURL:v18 imageName:v5 systemImage:v6 mentionsCurrentUser:v16 notifyRecipientAnyway:v11 replyToCurrentUser:v12 recipientCount:v17 capabilities:? businessCorrespondence:?];

  return v14;
}

+ (id)communicationContextWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  LOBYTE(v25) = 0;
  LODWORD(v24) = 0;
  v22 = [objc_alloc(objc_opt_class()) _initWithIdentifier:v21 bundleIdentifier:v20 associatedObjectUri:v19 displayName:v18 sender:v17 recipients:v16 contentURL:v15 imageName:0 systemImage:v24 mentionsCurrentUser:0 notifyRecipientAnyway:0 replyToCurrentUser:v25 recipientCount:? capabilities:? businessCorrespondence:?];

  return v22;
}

+ (id)communicationContextWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 mentionsCurrentUser:(BOOL)a10 notifyRecipientAnyway:(BOOL)a11 replyToCurrentUser:(BOOL)a12 recipientCount:(unint64_t)a13
{
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  LOBYTE(v29) = 0;
  WORD1(v28) = __PAIR16__(a12, a11);
  BYTE1(v28) = a10;
  LOBYTE(v28) = 0;
  v26 = [objc_alloc(objc_opt_class()) _initWithIdentifier:v25 bundleIdentifier:v24 associatedObjectUri:v23 displayName:v22 sender:v21 recipients:v20 contentURL:v19 imageName:0 systemImage:v28 mentionsCurrentUser:a13 notifyRecipientAnyway:0 replyToCurrentUser:v29 recipientCount:? capabilities:? businessCorrespondence:?];

  return v26;
}

+ (id)communicationContextWithIdentifier:(id)a3 bundleIdentifier:(id)a4 associatedObjectUri:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 imageName:(id)a10 systemImage:(BOOL)a11 mentionsCurrentUser:(BOOL)a12 notifyRecipientAnyway:(BOOL)a13 replyToCurrentUser:(BOOL)a14 recipientCount:(unint64_t)a15
{
  v21 = a10;
  v22 = a9;
  v23 = a8;
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v28 = a3;
  LOBYTE(v32) = 0;
  WORD1(v31) = __PAIR16__(a14, a13);
  LOWORD(v31) = __PAIR16__(a12, a11);
  v29 = [objc_alloc(objc_opt_class()) _initWithIdentifier:v28 bundleIdentifier:v27 associatedObjectUri:v26 displayName:v25 sender:v24 recipients:v23 contentURL:v22 imageName:v21 systemImage:v31 mentionsCurrentUser:a15 notifyRecipientAnyway:0 replyToCurrentUser:v32 recipientCount:? capabilities:? businessCorrespondence:?];

  return v29;
}

@end