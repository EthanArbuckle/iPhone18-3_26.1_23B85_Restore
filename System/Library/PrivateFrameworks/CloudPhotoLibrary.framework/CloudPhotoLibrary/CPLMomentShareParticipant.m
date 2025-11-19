@interface CPLMomentShareParticipant
+ (id)momentShareParticipantsFromParticipants:(id)a3;
+ (id)shareParticipantsFromMomentShareParticipants:(id)a3;
- (CPLMomentShareParticipant)initWithCoder:(id)a3;
- (CPLMomentShareParticipant)initWithShareParticipant:(id)a3;
- (id)asShareParticipant;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CPLMomentShareParticipant

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLMomentShareParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLMomentShareParticipant;
  v5 = [(CPLMomentShareParticipant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
  }

  return v6;
}

- (id)description
{
  if (self->_hasiCloudAccount)
  {
    v2 = @"iCloud";
  }

  else
  {
    v2 = @"Non-iCloud";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@|%@|%@ %@ %@", *&self->_email, self->_userIdentifier, self->_nameComponents, v2];
}

- (id)asShareParticipant
{
  v3 = [[CPLShareParticipant alloc] initWithUserIdentifier:self->_userIdentifier];
  [(CPLShareParticipant *)v3 setIsCurrentUser:self->_isCurrentUser];
  [(CPLShareParticipant *)v3 setRole:self->_type];
  [(CPLShareParticipant *)v3 setAcceptanceStatus:self->_status];
  [(CPLShareParticipant *)v3 setEmail:self->_email];
  [(CPLShareParticipant *)v3 setPhoneNumber:self->_phoneNumber];
  [(CPLShareParticipant *)v3 setNameComponents:self->_nameComponents];
  [(CPLShareParticipant *)v3 setHasiCloudAccount:self->_hasiCloudAccount];

  return v3;
}

- (CPLMomentShareParticipant)initWithShareParticipant:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CPLMomentShareParticipant;
  v5 = [(CPLMomentShareParticipant *)&v19 init];
  if (v5)
  {
    v6 = [v4 userIdentifier];
    v7 = [v6 copy];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v7;

    v5->_isCurrentUser = [v4 isCurrentUser];
    v5->_type = [v4 role];
    v5->_status = [v4 acceptanceStatus];
    v9 = [v4 email];
    v10 = [v9 copy];
    email = v5->_email;
    v5->_email = v10;

    v12 = [v4 phoneNumber];
    v13 = [v12 copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v13;

    v15 = [v4 nameComponents];
    v16 = [v15 copy];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v16;

    v5->_hasiCloudAccount = [v4 hasiCloudAccount];
  }

  return v5;
}

+ (id)shareParticipantsFromMomentShareParticipants:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) asShareParticipant];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)momentShareParticipantsFromParticipants:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [CPLMomentShareParticipant alloc];
          v13 = [(CPLMomentShareParticipant *)v12 initWithShareParticipant:v11, v16];
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

@end