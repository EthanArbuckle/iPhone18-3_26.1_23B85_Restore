@interface CPLShare
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)ownerIsCurrentUser;
- (CPLShare)init;
- (CPLShare)initWithCoder:(id)a3;
- (CPLShareParticipant)currentUserParticipant;
- (CPLShareParticipant)owner;
- (NSArray)participants;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLShare

- (unint64_t)hash
{
  publicPermission = self->_publicPermission;
  v4 = [(NSURL *)self->_URL hash]^ publicPermission;
  return v4 ^ [(NSArray *)self->_participants hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  transportShare = self->_transportShare;
  v6 = v4->_transportShare;
  if (transportShare)
  {
    if (v6)
    {
      v7 = [(NSData *)transportShare isEqual:?];
      goto LABEL_13;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  if (v6 || self->_publicPermission != v4->_publicPermission)
  {
    goto LABEL_12;
  }

  v8 = self->_URL;
  v9 = v8;
  URL = v4->_URL;
  if (v8 && URL)
  {
    v11 = [v8 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v8 | URL;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  v14 = self->_participants;
  v15 = v4->_participants;
  v16 = v15;
  v7 = v14 && v15 && ([v14 isEqual:v15] & 1) != 0 || (v14 | v16) == 0;

LABEL_13:
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPublicPermission:self->_publicPermission];
  [v4 setURL:self->_URL];
  v5 = [(NSArray *)self->_participants cplDeepCopy];
  [v4 setParticipants:v5];

  [v4 setCreationDate:self->_creationDate];
  [v4 setTransportShare:self->_transportShare];
  return v4;
}

- (id)description
{
  publicPermission = self->_publicPermission;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(NSURL *)self->_URL cpl_redactedShareURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"<no URL yet>";
  }

  if (publicPermission == 1)
  {
    v8 = [(NSArray *)self->_participants count];
    v9 = [(CPLShare *)self ownerIsCurrentUser];
    v10 = "";
    if (v9)
    {
      v10 = "owner";
    }

    v11 = [v4 initWithFormat:@"[%@ (%lu participants) %s]", v7, v8, v10];
  }

  else
  {
    v12 = [CPLShareParticipant descriptionForPermission:self->_publicPermission];
    v13 = [(CPLShare *)self ownerIsCurrentUser];
    v14 = "";
    if (v13)
    {
      v14 = "owner";
    }

    v11 = [v4 initWithFormat:@"[%@ (public: %@) %s]", v7, v12, v14];
  }

  return v11;
}

- (BOOL)ownerIsCurrentUser
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CPLShare *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isCurrentUser])
        {
          LOBYTE(v3) = [v6 role] == 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (CPLShareParticipant)currentUserParticipant
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CPLShare *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isCurrentUser])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (CPLShareParticipant)owner
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CPLShare *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 role] == 1)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)participants
{
  if (self->_participants)
  {
    return self->_participants;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_publicPermission forKey:@"pubPerm"];
  [v4 encodeObject:self->_URL forKey:@"url"];
  if ([(NSArray *)self->_participants count])
  {
    [v4 encodeObject:self->_participants forKey:@"participants"];
  }

  [v4 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v4 encodeObject:self->_transportShare forKey:@"transportShare"];
}

- (CPLShare)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPLShare;
  v5 = [(CPLShare *)&v15 init];
  if (v5)
  {
    v5->_publicPermission = [v4 decodeIntegerForKey:@"pubPerm"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [v4 decodeObjectOfClasses:_participantsClasses forKey:@"participants"];
    participants = v5->_participants;
    v5->_participants = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transportShare"];
    transportShare = v5->_transportShare;
    v5->_transportShare = v12;
  }

  return v5;
}

- (CPLShare)init
{
  v3.receiver = self;
  v3.super_class = CPLShare;
  result = [(CPLShare *)&v3 init];
  if (result)
  {
    result->_publicPermission = 1;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DFD8]);
    v3 = objc_opt_class();
    v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
    v5 = _participantsClasses;
    _participantsClasses = v4;

    MEMORY[0x1EEE66BB8](v4, v5);
  }
}

@end