@interface _MBImmutableServiceAccountProperties
- (id)_deriveNewAccountPropertiesFromACAccount:(id)a3;
- (id)_initWithPersona:(id)a3 accountIdentifier:(id)a4 dsid:(id)a5 altDSID:(id)a6 serviceURL:(id)a7 chunkStoreURL:(id)a8 options:(unint64_t)a9;
@end

@implementation _MBImmutableServiceAccountProperties

- (id)_initWithPersona:(id)a3 accountIdentifier:(id)a4 dsid:(id)a5 altDSID:(id)a6 serviceURL:(id)a7 chunkStoreURL:(id)a8 options:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v18 = a8;
  if (!v16)
  {
    __assert_rtn("[_MBImmutableServiceAccountProperties _initWithPersona:accountIdentifier:dsid:altDSID:serviceURL:chunkStoreURL:options:]", "MBServiceAccount.m", 85, "persona");
  }

  v19 = v18;
  v28.receiver = self;
  v28.super_class = _MBImmutableServiceAccountProperties;
  v20 = [(_MBImmutableServiceAccountProperties *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_persona, a3);
    objc_storeStrong(&v21->_accountIdentifier, a4);
    objc_storeStrong(&v21->_dsid, a5);
    objc_storeStrong(&v21->_altDSID, a6);
    objc_storeStrong(&v21->_serviceURL, a7);
    objc_storeStrong(&v21->_chunkStoreURL, a8);
    v29 = 0;
    if ([v16 getBooleanValueForKey:@"EnableBackupOnCellular" keyExists:&v29])
    {
      v22 = 1;
    }

    else
    {
      v22 = v29 == 0;
    }

    v23 = 512;
    if (!v22)
    {
      v23 = 0;
    }

    v21->_options = v23 | a9 & 0xFFFFFFFFFFFFFDFFLL;
  }

  return v21;
}

- (id)_deriveNewAccountPropertiesFromACAccount:(id)a3
{
  options = self->_options;
  v5 = a3;
  v6 = [MBServiceAccount _optionsFromACAccount:v5 currentOptions:options];
  persona = self->_persona;
  v26 = 0;
  if ([(MBPersona *)persona getBooleanValueForKey:@"EnableBackupOnCellular" keyExists:&v26])
  {
    v8 = 1;
  }

  else
  {
    v8 = v26 == 0;
  }

  v9 = 512;
  if (!v8)
  {
    v9 = 0;
  }

  v25 = v9 | v6 & 0xFFFFFFFFFFFFFDFFLL;
  v24 = [v5 identifier];
  v10 = [v5 aa_personID];
  v11 = [v5 aa_altDSID];
  v12 = [v5 propertiesForDataclass:kAccountDataclassBackup];
  v13 = [v12 objectForKeyedSubscript:@"url"];
  v14 = [NSURL URLWithString:v13];

  v15 = [v5 username];
  v16 = [v14 _URLByInsertingUser:v15];

  v17 = [v5 propertiesForDataclass:kAccountDataclassContent];
  v18 = [v17 objectForKeyedSubscript:@"url"];
  v19 = [NSURL URLWithString:v18];

  v20 = [v5 username];

  v21 = [v19 _URLByInsertingUser:v20];

  v22 = [objc_alloc(objc_opt_class()) _initWithPersona:self->_persona accountIdentifier:v24 dsid:v10 altDSID:v11 serviceURL:v16 chunkStoreURL:v21 options:v25];

  return v22;
}

@end