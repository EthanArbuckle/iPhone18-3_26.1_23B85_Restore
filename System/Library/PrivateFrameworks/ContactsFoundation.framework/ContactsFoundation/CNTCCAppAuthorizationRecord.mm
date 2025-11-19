@interface CNTCCAppAuthorizationRecord
+ (int64_t)authorizationStatusFromAuthorizationRight:(unint64_t)a3;
+ (unint64_t)authorizationRightFromAuthorizationStatus:(int64_t)a3;
- (CNTCCAppAuthorizationRecord)initWithBundleIdentifier:(id)a3 localizedName:(id)a4 recordType:(int64_t)a5 authorizationStatus:(int64_t)a6;
- (CNTCCAppAuthorizationRecord)initWithTCCAuthorizationRecord:(id)a3;
@end

@implementation CNTCCAppAuthorizationRecord

+ (int64_t)authorizationStatusFromAuthorizationRight:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 1;
  }

  else
  {
    return qword_185A91EE8[a3 - 1];
  }
}

+ (unint64_t)authorizationRightFromAuthorizationStatus:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_185A91F18[a3];
  }
}

- (CNTCCAppAuthorizationRecord)initWithTCCAuthorizationRecord:(id)a3
{
  v4 = a3;
  v5 = tcc_authorization_record_get_subject_identity();
  if (tcc_identity_get_type())
  {
    v6 = &stru_1EF441028;
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:tcc_identity_get_identifier() encoding:4];
  }

  v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v6];
  v8 = [v7 localizedName];

  v9 = tcc_authorization_record_get_subject_attributed_entity();
  v10 = v9 == 0;

  v11 = objc_opt_class();
  authorization_right = tcc_authorization_record_get_authorization_right();

  v13 = -[CNTCCAppAuthorizationRecord initWithBundleIdentifier:localizedName:recordType:authorizationStatus:](self, "initWithBundleIdentifier:localizedName:recordType:authorizationStatus:", v6, v8, v10, [v11 authorizationStatusFromAuthorizationRight:authorization_right]);
  return v13;
}

- (CNTCCAppAuthorizationRecord)initWithBundleIdentifier:(id)a3 localizedName:(id)a4 recordType:(int64_t)a5 authorizationStatus:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = CNTCCAppAuthorizationRecord;
  v13 = [(CNTCCAppAuthorizationRecord *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bundleIdentifier, a3);
    objc_storeStrong(&v14->_localizedName, a4);
    v14->_recordType = a5;
    v14->_authorizationStatus = a6;
    v15 = v14;
  }

  return v14;
}

@end