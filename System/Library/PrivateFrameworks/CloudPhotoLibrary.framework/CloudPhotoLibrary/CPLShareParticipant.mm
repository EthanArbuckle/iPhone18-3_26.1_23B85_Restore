@interface CPLShareParticipant
+ (id)descriptionForAcceptanceStatus:(int64_t)status;
+ (id)descriptionForPermission:(int64_t)permission;
+ (id)descriptionForRole:(int64_t)role;
+ (void)initialize;
- (CPLShareParticipant)initWithCoder:(id)coder;
- (CPLShareParticipant)initWithUserIdentifier:(id)identifier participantID:(id)d phoneNumber:(id)number email:(id)email;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  userIdentifier = self->_userIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:userIdentifier forKey:@"uid"];
  [coderCopy encodeBool:self->_isCurrentUser forKey:@"current"];
  [coderCopy encodeInteger:self->_role forKey:@"role"];
  [coderCopy encodeInteger:self->_acceptanceStatus forKey:@"status"];
  [coderCopy encodeInteger:self->_permission forKey:@"perm"];
  [coderCopy encodeObject:self->_email forKey:@"email"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phone"];
  [coderCopy encodeObject:self->_participantID forKey:@"pid"];
  [coderCopy encodeObject:self->_nameComponents forKey:@"name"];
  [coderCopy encodeBool:self->_hasiCloudAccount forKey:@"iCloud"];
}

- (CPLShareParticipant)initWithUserIdentifier:(id)identifier participantID:(id)d phoneNumber:(id)number email:(id)email
{
  identifierCopy = identifier;
  dCopy = d;
  numberCopy = number;
  emailCopy = email;
  v24.receiver = self;
  v24.super_class = CPLShareParticipant;
  v14 = [(CPLShareParticipant *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    userIdentifier = v14->_userIdentifier;
    v14->_userIdentifier = v15;

    v17 = [numberCopy copy];
    phoneNumber = v14->_phoneNumber;
    v14->_phoneNumber = v17;

    v19 = [emailCopy copy];
    email = v14->_email;
    v14->_email = v19;

    v21 = [dCopy copy];
    participantID = v14->_participantID;
    v14->_participantID = v21;

    v14->_permission = 1;
  }

  return v14;
}

- (CPLShareParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CPLShareParticipant;
  v5 = [(CPLShareParticipant *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:_nsStringClass forKey:@"uid"];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:_nsStringClass forKey:@"pid"];
    participantID = v5->_participantID;
    v5->_participantID = v8;

    v5->_isCurrentUser = [coderCopy decodeBoolForKey:@"current"];
    v5->_role = [coderCopy decodeIntegerForKey:@"role"];
    v5->_acceptanceStatus = [coderCopy decodeIntegerForKey:@"status"];
    v5->_permission = [coderCopy decodeIntegerForKey:@"perm"];
    v10 = [coderCopy decodeObjectOfClass:_nsStringClass forKey:@"email"];
    email = v5->_email;
    v5->_email = v10;

    v12 = [coderCopy decodeObjectOfClass:_nsStringClass forKey:@"phone"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v14;

    v5->_hasiCloudAccount = [coderCopy decodeBoolForKey:@"iCloud"];
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _nsStringClass = objc_opt_class();
  }
}

+ (id)descriptionForRole:(int64_t)role
{
  if (role >= 5)
  {
    role = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[role %ld]", role];
  }

  else
  {
    role = off_1E861C088[role];
  }

  return role;
}

+ (id)descriptionForPermission:(int64_t)permission
{
  if (permission >= 4)
  {
    permission = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[permission %ld]", permission];
  }

  else
  {
    permission = off_1E861C068[permission];
  }

  return permission;
}

+ (id)descriptionForAcceptanceStatus:(int64_t)status
{
  if (status >= 6)
  {
    status = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[status %ld]", status];
  }

  else
  {
    status = off_1E861C038[status];
  }

  return status;
}

@end