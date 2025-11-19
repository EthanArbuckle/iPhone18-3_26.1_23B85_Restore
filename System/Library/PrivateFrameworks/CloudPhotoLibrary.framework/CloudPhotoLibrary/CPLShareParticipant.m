@interface CPLShareParticipant
+ (id)descriptionForAcceptanceStatus:(int64_t)a3;
+ (id)descriptionForPermission:(int64_t)a3;
+ (id)descriptionForRole:(int64_t)a3;
+ (void)initialize;
- (CPLShareParticipant)initWithCoder:(id)a3;
- (CPLShareParticipant)initWithUserIdentifier:(id)a3 participantID:(id)a4 phoneNumber:(id)a5 email:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLShareParticipant

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_hasiCloudAccount)
  {
    v4 = @"iCloud";
  }

  else
  {
    v4 = @"Non-iCloud";
  }

  v5 = [objc_opt_class() descriptionForRole:self->_role];
  v6 = [objc_opt_class() descriptionForPermission:self->_permission];
  v7 = [v3 stringWithFormat:@"[<redacted> %@ %@ %@]", v4, v5, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  userIdentifier = self->_userIdentifier;
  participantID = self->_participantID;
  if (self->_hasiCloudAccount)
  {
    v6 = @"iCloud";
  }

  else
  {
    v6 = @"Non-iCloud";
  }

  v7 = [objc_opt_class() descriptionForRole:self->_role];
  v8 = [objc_opt_class() descriptionForPermission:self->_permission];
  v9 = [v3 stringWithFormat:@"[%@ %@ %@ %@ %@]", userIdentifier, participantID, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CPLShareParticipant alloc] initWithUserIdentifier:self->_userIdentifier participantID:self->_participantID phoneNumber:self->_phoneNumber email:self->_email];
  [(CPLShareParticipant *)v4 setIsCurrentUser:self->_isCurrentUser];
  [(CPLShareParticipant *)v4 setRole:self->_role];
  [(CPLShareParticipant *)v4 setAcceptanceStatus:self->_acceptanceStatus];
  [(CPLShareParticipant *)v4 setPermission:self->_permission];
  v5 = [(NSPersonNameComponents *)self->_nameComponents copy];
  [(CPLShareParticipant *)v4 setNameComponents:v5];

  [(CPLShareParticipant *)v4 setHasiCloudAccount:self->_hasiCloudAccount];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  userIdentifier = self->_userIdentifier;
  v5 = a3;
  [v5 encodeObject:userIdentifier forKey:@"uid"];
  [v5 encodeBool:self->_isCurrentUser forKey:@"current"];
  [v5 encodeInteger:self->_role forKey:@"role"];
  [v5 encodeInteger:self->_acceptanceStatus forKey:@"status"];
  [v5 encodeInteger:self->_permission forKey:@"perm"];
  [v5 encodeObject:self->_email forKey:@"email"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phone"];
  [v5 encodeObject:self->_participantID forKey:@"pid"];
  [v5 encodeObject:self->_nameComponents forKey:@"name"];
  [v5 encodeBool:self->_hasiCloudAccount forKey:@"iCloud"];
}

- (CPLShareParticipant)initWithUserIdentifier:(id)a3 participantID:(id)a4 phoneNumber:(id)a5 email:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = CPLShareParticipant;
  v14 = [(CPLShareParticipant *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    userIdentifier = v14->_userIdentifier;
    v14->_userIdentifier = v15;

    v17 = [v12 copy];
    phoneNumber = v14->_phoneNumber;
    v14->_phoneNumber = v17;

    v19 = [v13 copy];
    email = v14->_email;
    v14->_email = v19;

    v21 = [v11 copy];
    participantID = v14->_participantID;
    v14->_participantID = v21;

    v14->_permission = 1;
  }

  return v14;
}

- (CPLShareParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CPLShareParticipant;
  v5 = [(CPLShareParticipant *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:_nsStringClass forKey:@"uid"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:_nsStringClass forKey:@"pid"];
    participantID = v5->_participantID;
    v5->_participantID = v8;

    v5->_isCurrentUser = [v4 decodeBoolForKey:@"current"];
    v5->_role = [v4 decodeIntegerForKey:@"role"];
    v5->_acceptanceStatus = [v4 decodeIntegerForKey:@"status"];
    v5->_permission = [v4 decodeIntegerForKey:@"perm"];
    v10 = [v4 decodeObjectOfClass:_nsStringClass forKey:@"email"];
    email = v5->_email;
    v5->_email = v10;

    v12 = [v4 decodeObjectOfClass:_nsStringClass forKey:@"phone"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v14;

    v5->_hasiCloudAccount = [v4 decodeBoolForKey:@"iCloud"];
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _nsStringClass = objc_opt_class();
  }
}

+ (id)descriptionForRole:(int64_t)a3
{
  if (a3 >= 5)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[role %ld]", a3];
  }

  else
  {
    v3 = off_1E861C088[a3];
  }

  return v3;
}

+ (id)descriptionForPermission:(int64_t)a3
{
  if (a3 >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[permission %ld]", a3];
  }

  else
  {
    v3 = off_1E861C068[a3];
  }

  return v3;
}

+ (id)descriptionForAcceptanceStatus:(int64_t)a3
{
  if (a3 >= 6)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[status %ld]", a3];
  }

  else
  {
    v3 = off_1E861C038[a3];
  }

  return v3;
}

@end