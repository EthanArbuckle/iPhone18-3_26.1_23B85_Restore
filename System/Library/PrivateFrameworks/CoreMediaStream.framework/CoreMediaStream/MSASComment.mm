@interface MSASComment
+ (id)MSASPCommentFromProtocolDictionary:(id)dictionary;
+ (id)comment;
- (BOOL)isEqual:(id)equal;
- (MSASComment)init;
- (MSASComment)initWithCoder:(id)coder;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)lastName;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSASComment

- (NSString)email
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  email = selfCopy->_email;
  if (!email)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 emailForPersonID:selfCopy->_personID];
      if (v6)
      {
        objc_storeStrong(&selfCopy->_email, v6);
      }
    }

    email = selfCopy->_email;
  }

  v7 = email;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSString)lastName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastName = selfCopy->_lastName;
  if (!lastName)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 lastNameForPersonID:selfCopy->_personID];
      if (v6)
      {
        objc_storeStrong(&selfCopy->_lastName, v6);
      }
    }

    lastName = selfCopy->_lastName;
  }

  v7 = lastName;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSString)firstName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  firstName = selfCopy->_firstName;
  if (!firstName)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 firstNameForPersonID:selfCopy->_personID];
      if (v6)
      {
        objc_storeStrong(&selfCopy->_firstName, v6);
      }
    }

    firstName = selfCopy->_firstName;
  }

  v7 = firstName;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSString)fullName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fullName = selfCopy->_fullName;
  if (!fullName)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 fullNameForPersonID:selfCopy->_personID];
      if (v6)
      {
        objc_storeStrong(&selfCopy->_fullName, v6);
      }
    }

    fullName = selfCopy->_fullName;
  }

  v7 = fullName;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mode = os_trace_get_mode();
  v25 = MEMORY[0x277CCACA8];
  if ((mode & 0x1000000) != 0)
  {
    v30.receiver = selfCopy;
    v30.super_class = MSASComment;
    v28 = [(MSASComment *)&v30 description];
    gUID = [(MSASComment *)selfCopy GUID];
    v24 = [(MSASComment *)selfCopy ID];
    fullName = [(MSASComment *)selfCopy fullName];
    email = [(MSASComment *)selfCopy email];
    personID = [(MSASComment *)selfCopy personID];
    timestamp = [(MSASComment *)selfCopy timestamp];
    clientTimestamp = [(MSASComment *)selfCopy clientTimestamp];
    isLike = [(MSASComment *)selfCopy isLike];
    isCaption = [(MSASComment *)selfCopy isCaption];
    isBatchComment = [(MSASComment *)selfCopy isBatchComment];
    isMine = [(MSASComment *)selfCopy isMine];
    content = [(MSASComment *)selfCopy content];
    v21 = [content length];
    v22 = @"(Present)";
    if (!v21)
    {
      v22 = @"(No)";
    }

    v13 = [v25 stringWithFormat:@"%@, GUID: %@, ID: %d, name: %@ (%@ %@) server timestamp: %@, client timestamp: %@, is Like: %d, is Caption: %d, is Batch Comment: %d, is Mine: %d, content: %@", v28, gUID, v24, fullName, email, personID, timestamp, clientTimestamp, isLike, isCaption, isBatchComment, isMine, v22];
  }

  else
  {
    v29.receiver = selfCopy;
    v29.super_class = MSASComment;
    v28 = [(MSASComment *)&v29 description];
    gUID = [(MSASComment *)selfCopy GUID];
    v4 = [(MSASComment *)selfCopy ID];
    fullName = [(MSASComment *)selfCopy timestamp];
    email = [(MSASComment *)selfCopy clientTimestamp];
    isLike2 = [(MSASComment *)selfCopy isLike];
    isCaption2 = [(MSASComment *)selfCopy isCaption];
    isBatchComment2 = [(MSASComment *)selfCopy isBatchComment];
    isMine2 = [(MSASComment *)selfCopy isMine];
    personID = [(MSASComment *)selfCopy content];
    v11 = [personID length];
    v12 = @"(Present)";
    if (!v11)
    {
      v12 = @"(No)";
    }

    v13 = [v25 stringWithFormat:@"%@, GUID: %@, ID: %d, server timestamp: %@, client timestamp: %@, is Like: %d, is Caption: %d, is Batch Comment: %d, is Mine: %d, content: %@", v28, gUID, v4, fullName, email, isLike2, isCaption2, isBatchComment2, isMine2, v12];
  }

  objc_sync_exit(selfCopy);

  return v13;
}

- (MSASComment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MSASComment;
  v5 = [(MSASComment *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v5->_ID = [coderCopy decodeIntForKey:@"ID"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientTimestamp"];
    clientTimestamp = v5->_clientTimestamp;
    v5->_clientTimestamp = v10;

    v5->_isLike = [coderCopy decodeBoolForKey:@"isLike"];
    v5->_isCaption = [coderCopy decodeBoolForKey:@"isCaption"];
    v5->_isBatchComment = [coderCopy decodeBoolForKey:@"isBatchComment"];
    v5->_isMine = [coderCopy decodeBoolForKey:@"isMine"];
    v5->_isDeletable = [coderCopy decodeBoolForKey:@"isDeletable"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    personID = v5->_personID;
    v5->_personID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v5->_email;
    v5->_email = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  GUID = selfCopy->_GUID;
  if (GUID)
  {
    [coderCopy encodeObject:GUID forKey:@"GUID"];
  }

  [coderCopy encodeInt:selfCopy->_ID forKey:@"ID"];
  timestamp = selfCopy->_timestamp;
  if (timestamp)
  {
    [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  }

  clientTimestamp = selfCopy->_clientTimestamp;
  if (clientTimestamp)
  {
    [coderCopy encodeObject:clientTimestamp forKey:@"clientTimestamp"];
  }

  [coderCopy encodeBool:selfCopy->_isLike forKey:@"isLike"];
  [coderCopy encodeBool:selfCopy->_isCaption forKey:@"isCaption"];
  [coderCopy encodeBool:selfCopy->_isBatchComment forKey:@"isBatchComment"];
  [coderCopy encodeBool:selfCopy->_isMine forKey:@"isMine"];
  [coderCopy encodeBool:selfCopy->_isDeletable forKey:@"isDeletable"];
  content = selfCopy->_content;
  if (content)
  {
    [coderCopy encodeObject:content forKey:@"content"];
  }

  personID = selfCopy->_personID;
  if (personID)
  {
    [coderCopy encodeObject:personID forKey:@"personID"];
  }

  firstName = [(MSASComment *)selfCopy firstName];

  if (firstName)
  {
    firstName2 = [(MSASComment *)selfCopy firstName];
    [coderCopy encodeObject:firstName2 forKey:@"firstName"];
  }

  lastName = [(MSASComment *)selfCopy lastName];

  if (lastName)
  {
    lastName2 = [(MSASComment *)selfCopy lastName];
    [coderCopy encodeObject:lastName2 forKey:@"lastName"];
  }

  fullName = [(MSASComment *)selfCopy fullName];

  if (fullName)
  {
    fullName2 = [(MSASComment *)selfCopy fullName];
    [coderCopy encodeObject:fullName2 forKey:@"fullName"];
  }

  email = [(MSASComment *)selfCopy email];

  if (email)
  {
    email2 = [(MSASComment *)selfCopy email];
    [coderCopy encodeObject:email2 forKey:@"email"];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gUID = [(MSASComment *)selfCopy GUID];
    gUID2 = [equalCopy GUID];
    v8 = [gUID isEqualToString:gUID2];
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = MSASComment;
    v8 = [(MSASComment *)&v10 isEqual:equalCopy];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  gUID = [(MSASComment *)selfCopy GUID];
  v4 = [gUID hash];

  objc_sync_exit(selfCopy);
  return v4;
}

- (MSASComment)init
{
  v6.receiver = self;
  v6.super_class = MSASComment;
  v2 = [(MSASComment *)&v6 init];
  if (v2)
  {
    mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
    [(MSASComment *)v2 setGUID:mSMakeUUID];

    date = [MEMORY[0x277CBEAA8] date];
    [(MSASComment *)v2 setTimestamp:date];

    [(MSASComment *)v2 setID:0xFFFFFFFFLL];
  }

  return v2;
}

+ (id)comment
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)MSASPCommentFromProtocolDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MSASComment);
  v5 = [dictionaryCopy objectForKey:@"commentposition"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = [dictionaryCopy objectForKey:@"commentposition"];
  }

  else
  {
    v7 = 0;
  }

  -[MSASComment setID:](v4, "setID:", [v7 intValue]);
  if (isKindOfClass)
  {
  }

  v8 = [dictionaryCopy objectForKey:@"comment"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [dictionaryCopy objectForKey:@"comment"];
    [(MSASComment *)v4 setContent:v9];
  }

  else
  {
    [(MSASComment *)v4 setContent:0];
  }

  v10 = [dictionaryCopy objectForKey:@"commenttimestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [dictionaryCopy objectForKey:@"commenttimestamp"];

    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = MEMORY[0x277CBEAA8];
    [v11 doubleValue];
    v10 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    [(MSASComment *)v4 setClientTimestamp:v10];
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v13 = [dictionaryCopy objectForKey:@"commentservertimestamp"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v14 = 0;
    goto LABEL_19;
  }

  v14 = [dictionaryCopy objectForKey:@"commentservertimestamp"];

  if (!v14 || (v15 = v14, ![v14 length]))
  {
LABEL_19:
    v15 = v11;

    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v16 = MEMORY[0x277CBEAA8];
  [v15 doubleValue];
  v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
  [(MSASComment *)v4 setTimestamp:v17];

LABEL_21:
  v18 = [dictionaryCopy objectForKey:@"personid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [dictionaryCopy objectForKey:@"personid"];
    [(MSASComment *)v4 setPersonID:v19];
  }

  else
  {
    [(MSASComment *)v4 setPersonID:0];
  }

  v20 = [dictionaryCopy objectForKey:@"firstname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [dictionaryCopy objectForKey:@"firstname"];
    [(MSASComment *)v4 setFirstName:v21];
  }

  else
  {
    [(MSASComment *)v4 setFirstName:0];
  }

  v22 = [dictionaryCopy objectForKey:@"lastname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [dictionaryCopy objectForKey:@"lastname"];
    [(MSASComment *)v4 setLastName:v23];
  }

  else
  {
    [(MSASComment *)v4 setLastName:0];
  }

  v24 = [dictionaryCopy objectForKey:@"fullname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [dictionaryCopy objectForKey:@"fullname"];
    [(MSASComment *)v4 setFullName:v25];
  }

  else
  {
    [(MSASComment *)v4 setFullName:0];
  }

  v26 = [dictionaryCopy objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [dictionaryCopy objectForKey:@"email"];
    [(MSASComment *)v4 setEmail:v27];
  }

  else
  {
    [(MSASComment *)v4 setEmail:0];
  }

  v28 = [dictionaryCopy objectForKey:@"createdbyme"];
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  if (v29)
  {
    v30 = [dictionaryCopy objectForKey:@"createdbyme"];
  }

  else
  {
    v30 = 0;
  }

  -[MSASComment setIsMine:](v4, "setIsMine:", [v30 isEqualToString:@"1"]);
  if (v29)
  {
  }

  v31 = [dictionaryCopy objectForKey:@"candelete"];
  objc_opt_class();
  v32 = objc_opt_isKindOfClass();
  if (v32)
  {
    v33 = [dictionaryCopy objectForKey:@"candelete"];
  }

  else
  {
    v33 = 0;
  }

  -[MSASComment setIsDeletable:](v4, "setIsDeletable:", [v33 isEqualToString:@"1"]);
  if (v32)
  {
  }

  v34 = [dictionaryCopy objectForKey:@"iscaption"];
  objc_opt_class();
  v35 = objc_opt_isKindOfClass();
  if (v35)
  {
    v36 = [dictionaryCopy objectForKey:@"iscaption"];
  }

  else
  {
    v36 = 0;
  }

  -[MSASComment setIsCaption:](v4, "setIsCaption:", [v36 isEqualToString:@"1"]);
  if (v35)
  {
  }

  v37 = [dictionaryCopy objectForKey:@"isbatchcomment"];
  objc_opt_class();
  v38 = objc_opt_isKindOfClass();
  if (v38)
  {
    v39 = [dictionaryCopy objectForKey:@"isbatchcomment"];
  }

  else
  {
    v39 = 0;
  }

  -[MSASComment setIsBatchComment:](v4, "setIsBatchComment:", [v39 isEqualToString:@"1"]);
  if (v38)
  {
  }

  v40 = [dictionaryCopy objectForKey:@"commenttype"];
  objc_opt_class();
  v41 = objc_opt_isKindOfClass();
  if (v41)
  {
    v42 = [dictionaryCopy objectForKey:@"commenttype"];
  }

  else
  {
    v42 = 0;
  }

  -[MSASComment setIsLike:](v4, "setIsLike:", [v42 isEqualToString:@"1"]);
  if (v41)
  {
  }

  return v4;
}

@end