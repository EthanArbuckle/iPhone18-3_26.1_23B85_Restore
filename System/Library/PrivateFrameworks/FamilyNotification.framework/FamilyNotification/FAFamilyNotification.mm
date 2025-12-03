@interface FAFamilyNotification
- (FAFamilyNotification)init;
- (FAFamilyNotification)initWithCacheDictionaryRepresentation:(id)representation;
- (FAFamilyNotification)initWithCoder:(id)coder;
- (id)cacheDictionaryRepresentation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAFamilyNotification

- (FAFamilyNotification)init
{
  v8.receiver = self;
  v8.super_class = FAFamilyNotification;
  v2 = [(FAFamilyNotification *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasActionButton = 1;
    date = [MEMORY[0x277CBEAA8] date];
    relevanceDate = v3->_relevanceDate;
    v3->_relevanceDate = date;

    v3->_displayStyle = 0;
    v6 = v3;
  }

  return v3;
}

- (FAFamilyNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAFamilyNotification *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_relevanceDate"];
    relevanceDate = v5->_relevanceDate;
    v5->_relevanceDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_familyMemberDSID"];
    familyMemberDSID = v5->_familyMemberDSID;
    v5->_familyMemberDSID = v16;

    v5->_displayStyle = [coderCopy decodeIntegerForKey:@"_displayStyle"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_activateActionURL"];
    activateActionURL = v5->_activateActionURL;
    v5->_activateActionURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dismissActionlURL"];
    dismissActionlURL = v5->_dismissActionlURL;
    v5->_dismissActionlURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_launchActionURL"];
    launchActionURL = v5->_launchActionURL;
    v5->_launchActionURL = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_launchActionArguments"];
    launchActionArguments = v5->_launchActionArguments;
    v5->_launchActionArguments = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_actionButtonLabel"];
    actionButtonLabel = v5->_actionButtonLabel;
    v5->_actionButtonLabel = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_otherButtonLabel"];
    otherButtonLabel = v5->_otherButtonLabel;
    v5->_otherButtonLabel = v28;

    v5->_shouldPersistWhenDismissed = [coderCopy decodeBoolForKey:@"_shouldPersistWhenDismissed"];
    v5->_shouldPersistWhenActivated = [coderCopy decodeBoolForKey:@"_shouldPersistWhenActivated"];
    v5->_hasActionButton = [coderCopy decodeBoolForKey:@"_hasActionButton"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_unlockActionLabel"];
    unlockActionLabel = v5->_unlockActionLabel;
    v5->_unlockActionLabel = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v32 setWithObjects:{v33, v34, v35, v36, v37, v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_iconName"];
    iconName = v5->_iconName;
    v5->_iconName = v42;

    v5->_hasHeader = [coderCopy decodeBoolForKey:@"_hasHeader"];
    v44 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_relevanceDate forKey:@"_relevanceDate"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"_expiryDate"];
  [coderCopy encodeObject:self->_informativeText forKey:@"_informativeText"];
  [coderCopy encodeObject:self->_familyMemberDSID forKey:@"_familyMemberDSID"];
  [coderCopy encodeInteger:self->_displayStyle forKey:@"_displayStyle"];
  [coderCopy encodeObject:self->_activateActionURL forKey:@"_activateActionURL"];
  [coderCopy encodeObject:self->_dismissActionlURL forKey:@"_dismissActionlURL"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
  [coderCopy encodeObject:self->_launchActionURL forKey:@"_launchActionURL"];
  [coderCopy encodeObject:self->_launchActionArguments forKey:@"_launchActionArguments"];
  [coderCopy encodeObject:self->_actionButtonLabel forKey:@"_actionButtonLabel"];
  [coderCopy encodeObject:self->_otherButtonLabel forKey:@"_otherButtonLabel"];
  [coderCopy encodeBool:self->_shouldPersistWhenDismissed forKey:@"_shouldPersistWhenDismissed"];
  [coderCopy encodeBool:self->_shouldPersistWhenActivated forKey:@"_shouldPersistWhenActivated"];
  [coderCopy encodeBool:self->_hasActionButton forKey:@"_hasActionButton"];
  [coderCopy encodeObject:self->_unlockActionLabel forKey:@"_unlockActionLabel"];
  [coderCopy encodeObject:self->_iconName forKey:@"_iconName"];
  [coderCopy encodeBool:self->_hasHeader forKey:@"_hasHeader"];
}

- (id)cacheDictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKeyedSubscript:@"_uuid"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKeyedSubscript:@"_identifier"];
  }

  relevanceDate = self->_relevanceDate;
  if (relevanceDate)
  {
    [v4 setObject:relevanceDate forKeyedSubscript:@"_relevanceDate"];
  }

  expiryDate = self->_expiryDate;
  if (expiryDate)
  {
    [v4 setObject:expiryDate forKeyedSubscript:@"_expiryDate"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKeyedSubscript:@"_title"];
  }

  informativeText = self->_informativeText;
  if (informativeText)
  {
    [v4 setObject:informativeText forKeyedSubscript:@"_informativeText"];
  }

  familyMemberDSID = self->_familyMemberDSID;
  if (familyMemberDSID)
  {
    [v4 setObject:familyMemberDSID forKeyedSubscript:@"_familyMemberDSID"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_displayStyle];
  [v4 setObject:v12 forKeyedSubscript:@"_displayStyle"];

  activateActionURL = self->_activateActionURL;
  if (activateActionURL)
  {
    absoluteString = [(NSURL *)activateActionURL absoluteString];
    [v4 setObject:absoluteString forKeyedSubscript:@"_activateActionURL"];
  }

  dismissActionlURL = self->_dismissActionlURL;
  if (dismissActionlURL)
  {
    absoluteString2 = [(NSURL *)dismissActionlURL absoluteString];
    [v4 setObject:absoluteString2 forKeyedSubscript:@"_dismissActionlURL"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v4 setObject:userInfo forKeyedSubscript:@"_userInfo"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v4 setObject:clientIdentifier forKeyedSubscript:@"_clientIdentifier"];
  }

  delegateMachServiceName = self->_delegateMachServiceName;
  if (delegateMachServiceName)
  {
    [v4 setObject:delegateMachServiceName forKeyedSubscript:@"_delegateMachServiceName"];
  }

  launchActionURL = self->_launchActionURL;
  if (launchActionURL)
  {
    absoluteString3 = [(NSURL *)launchActionURL absoluteString];
    [v4 setObject:absoluteString3 forKeyedSubscript:@"_launchActionURL"];
  }

  launchActionArguments = self->_launchActionArguments;
  if (launchActionArguments)
  {
    [v4 setObject:launchActionArguments forKeyedSubscript:@"_launchActionArguments"];
  }

  actionButtonLabel = self->_actionButtonLabel;
  if (actionButtonLabel)
  {
    [v4 setObject:actionButtonLabel forKeyedSubscript:@"_actionButtonLabel"];
  }

  otherButtonLabel = self->_otherButtonLabel;
  if (otherButtonLabel)
  {
    [v4 setObject:otherButtonLabel forKeyedSubscript:@"_otherButtonLabel"];
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldPersistWhenDismissed];
  [v4 setObject:v25 forKeyedSubscript:@"_shouldPersistWhenDismissed"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldPersistWhenActivated];
  [v4 setObject:v26 forKeyedSubscript:@"_shouldPersistWhenActivated"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasActionButton];
  [v4 setObject:v27 forKeyedSubscript:@"_hasActionButton"];

  unlockActionLabel = self->_unlockActionLabel;
  if (unlockActionLabel)
  {
    [v4 setObject:unlockActionLabel forKeyedSubscript:@"_unlockActionLabel"];
  }

  iconName = self->_iconName;
  if (iconName)
  {
    [v4 setObject:iconName forKeyedSubscript:@"_iconName"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasHeader];
  [v4 setObject:v30 forKeyedSubscript:@"_hasHeader"];

  v31 = [v4 copy];

  return v31;
}

- (FAFamilyNotification)initWithCacheDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v55.receiver = self;
  v55.super_class = FAFamilyNotification;
  v5 = [(FAFamilyNotification *)&v55 self];

  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"_relevanceDate"];
    relevanceDate = v5->_relevanceDate;
    v5->_relevanceDate = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"_expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v12;

    v14 = [representationCopy objectForKeyedSubscript:@"_title"];
    title = v5->_title;
    v5->_title = v14;

    v16 = [representationCopy objectForKeyedSubscript:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"_familyMemberDSID"];
    familyMemberDSID = v5->_familyMemberDSID;
    v5->_familyMemberDSID = v18;

    v20 = [representationCopy objectForKeyedSubscript:@"_displayStyle"];
    v5->_displayStyle = [v20 integerValue];

    v21 = MEMORY[0x277CBEBC0];
    v22 = [representationCopy objectForKeyedSubscript:@"_activateActionURL"];
    v23 = [v21 URLWithString:v22];
    activateActionURL = v5->_activateActionURL;
    v5->_activateActionURL = v23;

    v25 = MEMORY[0x277CBEBC0];
    v26 = [representationCopy objectForKeyedSubscript:@"_dismissActionlURL"];
    v27 = [v25 URLWithString:v26];
    dismissActionlURL = v5->_dismissActionlURL;
    v5->_dismissActionlURL = v27;

    v29 = [representationCopy objectForKeyedSubscript:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v29;

    v31 = [representationCopy objectForKeyedSubscript:@"_clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v31;

    v33 = [representationCopy objectForKeyedSubscript:@"_delegateMachServiceName"];
    delegateMachServiceName = v5->_delegateMachServiceName;
    v5->_delegateMachServiceName = v33;

    v35 = MEMORY[0x277CBEBC0];
    v36 = [representationCopy objectForKeyedSubscript:@"_launchActionURL"];
    v37 = [v35 URLWithString:v36];
    launchActionURL = v5->_launchActionURL;
    v5->_launchActionURL = v37;

    v39 = [representationCopy objectForKeyedSubscript:@"_launchActionArguments"];
    launchActionArguments = v5->_launchActionArguments;
    v5->_launchActionArguments = v39;

    v41 = [representationCopy objectForKeyedSubscript:@"_actionButtonLabel"];
    actionButtonLabel = v5->_actionButtonLabel;
    v5->_actionButtonLabel = v41;

    v43 = [representationCopy objectForKeyedSubscript:@"_otherButtonLabel"];
    otherButtonLabel = v5->_otherButtonLabel;
    v5->_otherButtonLabel = v43;

    v45 = [representationCopy objectForKeyedSubscript:@"_shouldPersistWhenDismissed"];
    v5->_shouldPersistWhenDismissed = [v45 BOOLValue];

    v46 = [representationCopy objectForKeyedSubscript:@"_shouldPersistWhenActivated"];
    v5->_shouldPersistWhenActivated = [v46 BOOLValue];

    v47 = [representationCopy objectForKeyedSubscript:@"_hasActionButton"];
    v5->_hasActionButton = [v47 BOOLValue];

    v48 = [representationCopy objectForKeyedSubscript:@"_unlockActionLabel"];
    unlockActionLabel = v5->_unlockActionLabel;
    v5->_unlockActionLabel = v48;

    v50 = [representationCopy objectForKeyedSubscript:@"_iconName"];
    iconName = v5->_iconName;
    v5->_iconName = v50;

    v52 = [representationCopy objectForKeyedSubscript:@"_hasHeader"];
    v5->_hasHeader = [v52 BOOLValue];

    v53 = v5;
  }

  return v5;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = FAFamilyNotification;
  v3 = [(FAFamilyNotification *)&v13 description];
  v4 = [v3 length] - 1;
  v5 = MEMORY[0x277CCACA8];
  title = [(FAFamilyNotification *)self title];
  informativeText = [(FAFamilyNotification *)self informativeText];
  identifier = [(FAFamilyNotification *)self identifier];
  clientIdentifier = [(FAFamilyNotification *)self clientIdentifier];
  v10 = [v5 stringWithFormat:@" - title=%@ text=%@ identifier=%@ client=%@ displayStyle=%lu >", title, informativeText, identifier, clientIdentifier, -[FAFamilyNotification displayStyle](self, "displayStyle")];
  v11 = [v3 stringByReplacingCharactersInRange:v4 withString:{1, v10}];

  return v11;
}

@end