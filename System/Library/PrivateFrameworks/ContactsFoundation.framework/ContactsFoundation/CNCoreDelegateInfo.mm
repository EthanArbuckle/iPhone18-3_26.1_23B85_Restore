@interface CNCoreDelegateInfo
+ (id)nameComponentsForFamilyMember:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNCoreDelegateInfo)initWithCoder:(id)a3;
- (CNCoreDelegateInfo)initWithDSID:(id)a3 altDSID:(id)a4 appleID:(id)a5 principalPath:(id)a6 nameComponents:(id)a7 isMe:(BOOL)a8;
- (CNCoreDelegateInfo)initWithFamilyMember:(id)a3;
- (id)_hardCodedPrincipalPathForFamilyMember:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNCoreDelegateInfo

- (CNCoreDelegateInfo)initWithDSID:(id)a3 altDSID:(id)a4 appleID:(id)a5 principalPath:(id)a6 nameComponents:(id)a7 isMe:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v32.receiver = self;
  v32.super_class = CNCoreDelegateInfo;
  v19 = [(CNCoreDelegateInfo *)&v32 init];
  if (v19)
  {
    v20 = [v14 copy];
    dsid = v19->_dsid;
    v19->_dsid = v20;

    v22 = [v15 copy];
    altDSID = v19->_altDSID;
    v19->_altDSID = v22;

    v24 = [v16 copy];
    appleID = v19->_appleID;
    v19->_appleID = v24;

    v26 = [v17 copy];
    principalPath = v19->_principalPath;
    v19->_principalPath = v26;

    v28 = [v18 copy];
    nameComponents = v19->_nameComponents;
    v19->_nameComponents = v28;

    v19->_isMe = a8;
    v30 = v19;
  }

  return v19;
}

- (CNCoreDelegateInfo)initWithFamilyMember:(id)a3
{
  v4 = a3;
  v5 = [v4 dsid];
  v6 = [v4 altDSID];
  v7 = [v4 appleID];
  v8 = [(CNCoreDelegateInfo *)self _hardCodedPrincipalPathForFamilyMember:v4];
  v9 = [objc_opt_class() nameComponentsForFamilyMember:v4];
  v10 = [v4 isMe];

  v11 = [(CNCoreDelegateInfo *)self initWithDSID:v5 altDSID:v6 appleID:v7 principalPath:v8 nameComponents:v9 isMe:v10];
  return v11;
}

+ (id)nameComponentsForFamilyMember:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v5 = [v3 firstName];
  v6 = (off_1EF440728)(&__block_literal_global_122, v5);

  if (v6)
  {
    v7 = [v3 firstName];
    [v4 setGivenName:v7];
  }

  v8 = [v3 lastName];
  v9 = (off_1EF440728)(&__block_literal_global_122, v8);

  if (v9)
  {
    v10 = [v3 lastName];
    [v4 setFamilyName:v10];

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
  v10 = [v3 build];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (dsid = self->_dsid, dsid | v4->_dsid) && ![(NSNumber *)dsid isEqual:?]|| (altDSID = self->_altDSID, altDSID | v4->_altDSID) && ![(NSString *)altDSID isEqual:?]|| (appleID = self->_appleID, appleID | v4->_appleID) && ![(NSString *)appleID isEqual:?]|| (principalPath = self->_principalPath, principalPath | v4->_principalPath) && ![(NSString *)principalPath isEqual:?]|| (nameComponents = self->_nameComponents, nameComponents | v4->_nameComponents) && ![(NSPersonNameComponents *)nameComponents isEqual:?])
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

- (id)mutableCopyWithZone:(_NSZone *)a3
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

- (CNCoreDelegateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dsid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appleID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_principalPath"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nameComponents"];
  v10 = [v4 decodeBoolForKey:@"_isMe"];

  v11 = [(CNCoreDelegateInfo *)self initWithDSID:v5 altDSID:v6 appleID:v7 principalPath:v8 nameComponents:v9 isMe:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  dsid = self->_dsid;
  v5 = a3;
  [v5 encodeObject:dsid forKey:@"_dsid"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeObject:self->_appleID forKey:@"_appleID"];
  [v5 encodeObject:self->_principalPath forKey:@"_principalPath"];
  [v5 encodeObject:self->_nameComponents forKey:@"_nameComponents"];
  [v5 encodeBool:self->_isMe forKey:@"_isMe"];
}

- (id)_hardCodedPrincipalPathForFamilyMember:(id)a3
{
  v3 = [a3 dsid];
  v4 = [v3 stringValue];

  v5 = [objc_opt_class() hardCodedPrincipalPathForDSID:v4];

  return v5;
}

@end