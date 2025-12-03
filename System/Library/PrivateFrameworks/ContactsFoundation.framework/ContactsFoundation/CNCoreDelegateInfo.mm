@interface CNCoreDelegateInfo
+ (id)nameComponentsForFamilyMember:(id)member;
- (BOOL)isEqual:(id)equal;
- (CNCoreDelegateInfo)initWithCoder:(id)coder;
- (CNCoreDelegateInfo)initWithDSID:(id)d altDSID:(id)iD appleID:(id)appleID principalPath:(id)path nameComponents:(id)components isMe:(BOOL)me;
- (CNCoreDelegateInfo)initWithFamilyMember:(id)member;
- (id)_hardCodedPrincipalPathForFamilyMember:(id)member;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNCoreDelegateInfo

- (CNCoreDelegateInfo)initWithDSID:(id)d altDSID:(id)iD appleID:(id)appleID principalPath:(id)path nameComponents:(id)components isMe:(BOOL)me
{
  dCopy = d;
  iDCopy = iD;
  appleIDCopy = appleID;
  pathCopy = path;
  componentsCopy = components;
  v32.receiver = self;
  v32.super_class = CNCoreDelegateInfo;
  v19 = [(CNCoreDelegateInfo *)&v32 init];
  if (v19)
  {
    v20 = [dCopy copy];
    dsid = v19->_dsid;
    v19->_dsid = v20;

    v22 = [iDCopy copy];
    altDSID = v19->_altDSID;
    v19->_altDSID = v22;

    v24 = [appleIDCopy copy];
    appleID = v19->_appleID;
    v19->_appleID = v24;

    v26 = [pathCopy copy];
    principalPath = v19->_principalPath;
    v19->_principalPath = v26;

    v28 = [componentsCopy copy];
    nameComponents = v19->_nameComponents;
    v19->_nameComponents = v28;

    v19->_isMe = me;
    v30 = v19;
  }

  return v19;
}

- (CNCoreDelegateInfo)initWithFamilyMember:(id)member
{
  memberCopy = member;
  dsid = [memberCopy dsid];
  altDSID = [memberCopy altDSID];
  appleID = [memberCopy appleID];
  v8 = [(CNCoreDelegateInfo *)self _hardCodedPrincipalPathForFamilyMember:memberCopy];
  v9 = [objc_opt_class() nameComponentsForFamilyMember:memberCopy];
  isMe = [memberCopy isMe];

  v11 = [(CNCoreDelegateInfo *)self initWithDSID:dsid altDSID:altDSID appleID:appleID principalPath:v8 nameComponents:v9 isMe:isMe];
  return v11;
}

+ (id)nameComponentsForFamilyMember:(id)member
{
  memberCopy = member;
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  firstName = [memberCopy firstName];
  v6 = (off_1EF440728)(&__block_literal_global_122, firstName);

  if (v6)
  {
    firstName2 = [memberCopy firstName];
    [v4 setGivenName:firstName2];
  }

  lastName = [memberCopy lastName];
  v9 = (off_1EF440728)(&__block_literal_global_122, lastName);

  if (v9)
  {
    lastName2 = [memberCopy lastName];
    [v4 setFamilyName:lastName2];

LABEL_6:
    v11 = v4;
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"dsid" object:self->_dsid];
  v5 = [v3 appendName:@"altDSID" object:self->_altDSID];
  v6 = [v3 appendName:@"appleID" object:self->_appleID];
  v7 = [v3 appendName:@"principalPath" object:self->_principalPath];
  v8 = [v3 appendName:@"altDSID" object:self->_altDSID];
  v9 = [v3 appendName:@"nameComponents" object:self->_nameComponents];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (dsid = self->_dsid, dsid | equalCopy->_dsid) && ![(NSNumber *)dsid isEqual:?]|| (altDSID = self->_altDSID, altDSID | equalCopy->_altDSID) && ![(NSString *)altDSID isEqual:?]|| (appleID = self->_appleID, appleID | equalCopy->_appleID) && ![(NSString *)appleID isEqual:?]|| (principalPath = self->_principalPath, principalPath | equalCopy->_principalPath) && ![(NSString *)principalPath isEqual:?]|| (nameComponents = self->_nameComponents, nameComponents | equalCopy->_nameComponents) && ![(NSPersonNameComponents *)nameComponents isEqual:?])
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [CNHashBuilder objectHash:self->_dsid];
  v4 = [CNHashBuilder objectHash:self->_altDSID]- v3 + 32 * v3;
  v5 = [CNHashBuilder objectHash:self->_appleID]- v4 + 32 * v4;
  v6 = [CNHashBuilder objectHash:self->_principalPath]- v5 + 32 * v5;
  return [CNHashBuilder objectHash:self->_nameComponents]- v6 + 32 * v6 + 486695567;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CNCoreMutableDelegateInfo alloc];
  dsid = self->_dsid;
  altDSID = self->_altDSID;
  appleID = self->_appleID;
  principalPath = self->_principalPath;
  nameComponents = self->_nameComponents;
  isMe = self->_isMe;

  return [(CNCoreDelegateInfo *)v4 initWithDSID:dsid altDSID:altDSID appleID:appleID principalPath:principalPath nameComponents:nameComponents isMe:isMe];
}

- (CNCoreDelegateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dsid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_principalPath"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nameComponents"];
  v10 = [coderCopy decodeBoolForKey:@"_isMe"];

  v11 = [(CNCoreDelegateInfo *)self initWithDSID:v5 altDSID:v6 appleID:v7 principalPath:v8 nameComponents:v9 isMe:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  dsid = self->_dsid;
  coderCopy = coder;
  [coderCopy encodeObject:dsid forKey:@"_dsid"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeObject:self->_appleID forKey:@"_appleID"];
  [coderCopy encodeObject:self->_principalPath forKey:@"_principalPath"];
  [coderCopy encodeObject:self->_nameComponents forKey:@"_nameComponents"];
  [coderCopy encodeBool:self->_isMe forKey:@"_isMe"];
}

- (id)_hardCodedPrincipalPathForFamilyMember:(id)member
{
  dsid = [member dsid];
  stringValue = [dsid stringValue];

  v5 = [objc_opt_class() hardCodedPrincipalPathForDSID:stringValue];

  return v5;
}

@end