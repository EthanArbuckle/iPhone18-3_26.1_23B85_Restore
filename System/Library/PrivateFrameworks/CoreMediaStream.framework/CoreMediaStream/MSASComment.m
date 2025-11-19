@interface MSASComment
+ (id)MSASPCommentFromProtocolDictionary:(id)a3;
+ (id)comment;
- (BOOL)isEqual:(id)a3;
- (MSASComment)init;
- (MSASComment)initWithCoder:(id)a3;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)lastName;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSASComment

- (NSString)email
{
  v2 = self;
  objc_sync_enter(v2);
  email = v2->_email;
  if (!email)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 emailForPersonID:v2->_personID];
      if (v6)
      {
        objc_storeStrong(&v2->_email, v6);
      }
    }

    email = v2->_email;
  }

  v7 = email;
  objc_sync_exit(v2);

  return v7;
}

- (NSString)lastName
{
  v2 = self;
  objc_sync_enter(v2);
  lastName = v2->_lastName;
  if (!lastName)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 lastNameForPersonID:v2->_personID];
      if (v6)
      {
        objc_storeStrong(&v2->_lastName, v6);
      }
    }

    lastName = v2->_lastName;
  }

  v7 = lastName;
  objc_sync_exit(v2);

  return v7;
}

- (NSString)firstName
{
  v2 = self;
  objc_sync_enter(v2);
  firstName = v2->_firstName;
  if (!firstName)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 firstNameForPersonID:v2->_personID];
      if (v6)
      {
        objc_storeStrong(&v2->_firstName, v6);
      }
    }

    firstName = v2->_firstName;
  }

  v7 = firstName;
  objc_sync_exit(v2);

  return v7;
}

- (NSString)fullName
{
  v2 = self;
  objc_sync_enter(v2);
  fullName = v2->_fullName;
  if (!fullName)
  {
    v4 = +[MSASPersonInfoManager sharedManager];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 fullNameForPersonID:v2->_personID];
      if (v6)
      {
        objc_storeStrong(&v2->_fullName, v6);
      }
    }

    fullName = v2->_fullName;
  }

  v7 = fullName;
  objc_sync_exit(v2);

  return v7;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  mode = os_trace_get_mode();
  v25 = MEMORY[0x277CCACA8];
  if ((mode & 0x1000000) != 0)
  {
    v30.receiver = v2;
    v30.super_class = MSASComment;
    v28 = [(MSASComment *)&v30 description];
    v27 = [(MSASComment *)v2 GUID];
    v24 = [(MSASComment *)v2 ID];
    v26 = [(MSASComment *)v2 fullName];
    v5 = [(MSASComment *)v2 email];
    v10 = [(MSASComment *)v2 personID];
    v14 = [(MSASComment *)v2 timestamp];
    v15 = [(MSASComment *)v2 clientTimestamp];
    v16 = [(MSASComment *)v2 isLike];
    v17 = [(MSASComment *)v2 isCaption];
    v18 = [(MSASComment *)v2 isBatchComment];
    v19 = [(MSASComment *)v2 isMine];
    v20 = [(MSASComment *)v2 content];
    v21 = [v20 length];
    v22 = @"(Present)";
    if (!v21)
    {
      v22 = @"(No)";
    }

    v13 = [v25 stringWithFormat:@"%@, GUID: %@, ID: %d, name: %@ (%@ %@) server timestamp: %@, client timestamp: %@, is Like: %d, is Caption: %d, is Batch Comment: %d, is Mine: %d, content: %@", v28, v27, v24, v26, v5, v10, v14, v15, v16, v17, v18, v19, v22];
  }

  else
  {
    v29.receiver = v2;
    v29.super_class = MSASComment;
    v28 = [(MSASComment *)&v29 description];
    v27 = [(MSASComment *)v2 GUID];
    v4 = [(MSASComment *)v2 ID];
    v26 = [(MSASComment *)v2 timestamp];
    v5 = [(MSASComment *)v2 clientTimestamp];
    v6 = [(MSASComment *)v2 isLike];
    v7 = [(MSASComment *)v2 isCaption];
    v8 = [(MSASComment *)v2 isBatchComment];
    v9 = [(MSASComment *)v2 isMine];
    v10 = [(MSASComment *)v2 content];
    v11 = [v10 length];
    v12 = @"(Present)";
    if (!v11)
    {
      v12 = @"(No)";
    }

    v13 = [v25 stringWithFormat:@"%@, GUID: %@, ID: %d, server timestamp: %@, client timestamp: %@, is Like: %d, is Caption: %d, is Batch Comment: %d, is Mine: %d, content: %@", v28, v27, v4, v26, v5, v6, v7, v8, v9, v12];
  }

  objc_sync_exit(v2);

  return v13;
}

- (MSASComment)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MSASComment;
  v5 = [(MSASComment *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v5->_ID = [v4 decodeIntForKey:@"ID"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientTimestamp"];
    clientTimestamp = v5->_clientTimestamp;
    v5->_clientTimestamp = v10;

    v5->_isLike = [v4 decodeBoolForKey:@"isLike"];
    v5->_isCaption = [v4 decodeBoolForKey:@"isCaption"];
    v5->_isBatchComment = [v4 decodeBoolForKey:@"isBatchComment"];
    v5->_isMine = [v4 decodeBoolForKey:@"isMine"];
    v5->_isDeletable = [v4 decodeBoolForKey:@"isDeletable"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    personID = v5->_personID;
    v5->_personID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    fullName = v5->_fullName;
    v5->_fullName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v5->_email;
    v5->_email = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = self;
  objc_sync_enter(v4);
  GUID = v4->_GUID;
  if (GUID)
  {
    [v18 encodeObject:GUID forKey:@"GUID"];
  }

  [v18 encodeInt:v4->_ID forKey:@"ID"];
  timestamp = v4->_timestamp;
  if (timestamp)
  {
    [v18 encodeObject:timestamp forKey:@"timestamp"];
  }

  clientTimestamp = v4->_clientTimestamp;
  if (clientTimestamp)
  {
    [v18 encodeObject:clientTimestamp forKey:@"clientTimestamp"];
  }

  [v18 encodeBool:v4->_isLike forKey:@"isLike"];
  [v18 encodeBool:v4->_isCaption forKey:@"isCaption"];
  [v18 encodeBool:v4->_isBatchComment forKey:@"isBatchComment"];
  [v18 encodeBool:v4->_isMine forKey:@"isMine"];
  [v18 encodeBool:v4->_isDeletable forKey:@"isDeletable"];
  content = v4->_content;
  if (content)
  {
    [v18 encodeObject:content forKey:@"content"];
  }

  personID = v4->_personID;
  if (personID)
  {
    [v18 encodeObject:personID forKey:@"personID"];
  }

  v10 = [(MSASComment *)v4 firstName];

  if (v10)
  {
    v11 = [(MSASComment *)v4 firstName];
    [v18 encodeObject:v11 forKey:@"firstName"];
  }

  v12 = [(MSASComment *)v4 lastName];

  if (v12)
  {
    v13 = [(MSASComment *)v4 lastName];
    [v18 encodeObject:v13 forKey:@"lastName"];
  }

  v14 = [(MSASComment *)v4 fullName];

  if (v14)
  {
    v15 = [(MSASComment *)v4 fullName];
    [v18 encodeObject:v15 forKey:@"fullName"];
  }

  v16 = [(MSASComment *)v4 email];

  if (v16)
  {
    v17 = [(MSASComment *)v4 email];
    [v18 encodeObject:v17 forKey:@"email"];
  }

  objc_sync_exit(v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MSASComment *)v5 GUID];
    v7 = [v4 GUID];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v10.receiver = v5;
    v10.super_class = MSASComment;
    v8 = [(MSASComment *)&v10 isEqual:v4];
  }

  objc_sync_exit(v5);

  return v8;
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSASComment *)v2 GUID];
  v4 = [v3 hash];

  objc_sync_exit(v2);
  return v4;
}

- (MSASComment)init
{
  v6.receiver = self;
  v6.super_class = MSASComment;
  v2 = [(MSASComment *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] MSMakeUUID];
    [(MSASComment *)v2 setGUID:v3];

    v4 = [MEMORY[0x277CBEAA8] date];
    [(MSASComment *)v2 setTimestamp:v4];

    [(MSASComment *)v2 setID:0xFFFFFFFFLL];
  }

  return v2;
}

+ (id)comment
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)MSASPCommentFromProtocolDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSASComment);
  v5 = [v3 objectForKey:@"commentposition"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = [v3 objectForKey:@"commentposition"];
  }

  else
  {
    v7 = 0;
  }

  -[MSASComment setID:](v4, "setID:", [v7 intValue]);
  if (isKindOfClass)
  {
  }

  v8 = [v3 objectForKey:@"comment"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v3 objectForKey:@"comment"];
    [(MSASComment *)v4 setContent:v9];
  }

  else
  {
    [(MSASComment *)v4 setContent:0];
  }

  v10 = [v3 objectForKey:@"commenttimestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v3 objectForKey:@"commenttimestamp"];

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
  v13 = [v3 objectForKey:@"commentservertimestamp"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v14 = 0;
    goto LABEL_19;
  }

  v14 = [v3 objectForKey:@"commentservertimestamp"];

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
  v18 = [v3 objectForKey:@"personid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v3 objectForKey:@"personid"];
    [(MSASComment *)v4 setPersonID:v19];
  }

  else
  {
    [(MSASComment *)v4 setPersonID:0];
  }

  v20 = [v3 objectForKey:@"firstname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v3 objectForKey:@"firstname"];
    [(MSASComment *)v4 setFirstName:v21];
  }

  else
  {
    [(MSASComment *)v4 setFirstName:0];
  }

  v22 = [v3 objectForKey:@"lastname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v3 objectForKey:@"lastname"];
    [(MSASComment *)v4 setLastName:v23];
  }

  else
  {
    [(MSASComment *)v4 setLastName:0];
  }

  v24 = [v3 objectForKey:@"fullname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v3 objectForKey:@"fullname"];
    [(MSASComment *)v4 setFullName:v25];
  }

  else
  {
    [(MSASComment *)v4 setFullName:0];
  }

  v26 = [v3 objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v3 objectForKey:@"email"];
    [(MSASComment *)v4 setEmail:v27];
  }

  else
  {
    [(MSASComment *)v4 setEmail:0];
  }

  v28 = [v3 objectForKey:@"createdbyme"];
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  if (v29)
  {
    v30 = [v3 objectForKey:@"createdbyme"];
  }

  else
  {
    v30 = 0;
  }

  -[MSASComment setIsMine:](v4, "setIsMine:", [v30 isEqualToString:@"1"]);
  if (v29)
  {
  }

  v31 = [v3 objectForKey:@"candelete"];
  objc_opt_class();
  v32 = objc_opt_isKindOfClass();
  if (v32)
  {
    v33 = [v3 objectForKey:@"candelete"];
  }

  else
  {
    v33 = 0;
  }

  -[MSASComment setIsDeletable:](v4, "setIsDeletable:", [v33 isEqualToString:@"1"]);
  if (v32)
  {
  }

  v34 = [v3 objectForKey:@"iscaption"];
  objc_opt_class();
  v35 = objc_opt_isKindOfClass();
  if (v35)
  {
    v36 = [v3 objectForKey:@"iscaption"];
  }

  else
  {
    v36 = 0;
  }

  -[MSASComment setIsCaption:](v4, "setIsCaption:", [v36 isEqualToString:@"1"]);
  if (v35)
  {
  }

  v37 = [v3 objectForKey:@"isbatchcomment"];
  objc_opt_class();
  v38 = objc_opt_isKindOfClass();
  if (v38)
  {
    v39 = [v3 objectForKey:@"isbatchcomment"];
  }

  else
  {
    v39 = 0;
  }

  -[MSASComment setIsBatchComment:](v4, "setIsBatchComment:", [v39 isEqualToString:@"1"]);
  if (v38)
  {
  }

  v40 = [v3 objectForKey:@"commenttype"];
  objc_opt_class();
  v41 = objc_opt_isKindOfClass();
  if (v41)
  {
    v42 = [v3 objectForKey:@"commenttype"];
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