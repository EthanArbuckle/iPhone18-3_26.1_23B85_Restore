@interface IXSPlaceholder
+ (id)_metadataFromPromise:(id)a3;
+ (id)_sanitizedFilesystemNameForName:(id)a3 fileExtension:(id)a4 fallingBackToName:(id)a5;
- (BOOL)_checkLocationOfPromiseMatchesOurs:(id)a3 description:(id)a4 error:(id *)a5;
- (BOOL)_internal_checkInitWithSeed:(id)a3 error:(id *)a4;
- (BOOL)_isReadyToMaterialize;
- (BOOL)_materialize;
- (BOOL)_validateClientEntitlements:(id *)a3;
- (BOOL)awakeFromSerializationWithLookupBlock:(id)a3 error:(id *)a4;
- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5;
- (BOOL)isComplete;
- (IXSPlaceholder)initWithCoder:(id)a3;
- (IXSPlaceholder)initWithSeed:(id)a3 fromConnection:(id)a4 error:(id *)a5;
- (MIStoreMetadata)metadata;
- (NSData)sinfData;
- (NSDictionary)localizationDictionary;
- (NSString)bundleDirectoryName;
- (NSString)bundleID;
- (NSString)bundleName;
- (double)percentComplete;
- (id)_preparedBundleDirectoryName;
- (id)_promiseUUIDsForPromise:(id)a3;
- (id)subPromiseUUIDs;
- (unint64_t)installType;
- (unint64_t)totalBytesNeededOnDisk;
- (void)_cancelPromise:(id)a3 forReason:(id)a4 client:(unint64_t)a5;
- (void)_decommissionPromise:(id)a3;
- (void)_materializeIfReady;
- (void)_remote_getAppExtensionPlaceholderPromises:(id)a3;
- (void)_remote_getAttributesWithCompletion:(id)a3;
- (void)_remote_getEntitlementsPromise:(id)a3;
- (void)_remote_getIconPromise:(id)a3;
- (void)_remote_getIconResourcesPromiseAndInfoPlistContent:(id)a3;
- (void)_remote_getInfoPlistLoctablePromise:(id)a3;
- (void)_remote_getLaunchProhibitedWithCompletion:(id)a3;
- (void)_remote_getLocalizationDictionary:(id)a3;
- (void)_remote_getMetadataWithCompletion:(id)a3;
- (void)_remote_getSinfDataWithCompletion:(id)a3;
- (void)_remote_hasAppExtensionPlaceholderPromises:(id)a3;
- (void)_remote_hasEntitlementsPromise:(id)a3;
- (void)_remote_hasIconPromise:(id)a3;
- (void)_remote_hasIconResourcesPromise:(id)a3;
- (void)_remote_hasInfoPlistLoctablePromise:(id)a3;
- (void)_remote_setAppExtensionPlaceholderPromiseUUIDs:(id)a3 completion:(id)a4;
- (void)_remote_setAttributes:(id)a3 completion:(id)a4;
- (void)_remote_setConfigurationCompleteWithCompletion:(id)a3;
- (void)_remote_setEntitlementsPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setIconPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setIconResourcesPromiseUUID:(id)a3 infoPlistIconContentPromiseUUID:(id)a4 completion:(id)a5;
- (void)_remote_setInfoPlistLoctablePromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setLaunchProhibited:(BOOL)a3 completion:(id)a4;
- (void)_remote_setLocalizationPromiseUUID:(id)a3 completion:(id)a4;
- (void)_remote_setMetadataPromiseUUID:(id)a3 fromConnection:(id)a4 completion:(id)a5;
- (void)_remote_setSinfPromiseUUID:(id)a3 completion:(id)a4;
- (void)decommission;
- (void)encodeWithCoder:(id)a3;
- (void)promise:(id)a3 didCancelForReason:(id)a4 client:(unint64_t)a5;
- (void)promise:(id)a3 didUpdateProgress:(double)a4;
- (void)promiseDidBegin:(id)a3;
- (void)promiseDidComplete:(id)a3;
- (void)promiseDidReset:(id)a3;
- (void)setAppExtensionPlaceholders:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setConfigurationComplete:(BOOL)a3;
- (void)setEntitlements:(id)a3;
- (void)setIcon:(id)a3;
- (void)setIconResourcesPromise:(id)a3;
- (void)setIconResourcesPromise:(id)a3 andInfoPlistIconContentPromise:(id)a4;
- (void)setInfoPlistIconContentPromise:(id)a3;
- (void)setInfoPlistLoctable:(id)a3;
- (void)setLocalizationDictionaryPromise:(id)a3;
- (void)setMetadataPromise:(id)a3;
- (void)setPercentComplete:(double)a3;
- (void)setSinfPromise:(id)a3;
@end

@implementation IXSPlaceholder

- (BOOL)_internal_checkInitWithSeed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bundleName];

  if (v6)
  {
    v7 = [v5 bundleID];

    if (v7)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_13;
    }

    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009A9D8();
    }

    v12 = @"Attempting to initialize IXSPlaceholder with seed that has a nil bundleID; failing.";
    v13 = 87;
  }

  else
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10009AA5C();
    }

    v12 = @"Attempting to initialize IXSPlaceholder with seed that has a nil bundleName; failing.";
    v13 = 82;
  }

  v8 = sub_1000405FC("[IXSPlaceholder _internal_checkInitWithSeed:error:]", v13, @"IXErrorDomain", 1uLL, 0, 0, v12, v11, v16);
  if (a4)
  {
    v8 = v8;
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (IXSPlaceholder)initWithSeed:(id)a3 fromConnection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = IXSPlaceholder;
  v10 = [(IXSOwnedDataPromise *)&v14 initWithSeed:v8 error:a5];
  v11 = v10;
  if (v10)
  {
    if (![(IXSPlaceholder *)v10 _internal_checkInitWithSeed:v8 error:a5])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11->_creatorHadWebPlaceholderInstallEntitlement = sub_10000D71C(v9, @"com.apple.private.appinstall.install-webkit-push-placeholder");
  }

  v12 = v11;
LABEL_6:

  return v12;
}

- (IXSPlaceholder)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = IXSPlaceholder;
  v5 = [(IXSOwnedDataPromise *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconPromiseUUID"];
    iconPromiseUUID = v5->_iconPromiseUUID;
    v5->_iconPromiseUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconResourcesPromiseUUID"];
    iconResourcesPromiseUUID = v5->_iconResourcesPromiseUUID;
    v5->_iconResourcesPromiseUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"infoPlistIconContentPromiseUUID"];
    infoPlistIconContentPromiseUUID = v5->_infoPlistIconContentPromiseUUID;
    v5->_infoPlistIconContentPromiseUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entitlementsPromiseUUID"];
    entitlementsPromiseUUID = v5->_entitlementsPromiseUUID;
    v5->_entitlementsPromiseUUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"infoPlistLoctablePromiseUUID"];
    infoPlistLoctablePromiseUUID = v5->_infoPlistLoctablePromiseUUID;
    v5->_infoPlistLoctablePromiseUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataPromiseUUID"];
    metadataPromiseUUID = v5->_metadataPromiseUUID;
    v5->_metadataPromiseUUID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sinfPromiseUUID"];
    sinfPromiseUUID = v5->_sinfPromiseUUID;
    v5->_sinfPromiseUUID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationDictionaryPromiseUUID"];
    localizationDictionaryPromiseUUID = v5->_localizationDictionaryPromiseUUID;
    v5->_localizationDictionaryPromiseUUID = v20;

    v22 = [v4 containsValueForKey:@"appExtensionPlaceholdersPromiseUUIDs"];
    v23 = objc_opt_class();
    v24 = [NSSet setWithObjects:v23, objc_opt_class(), 0];
    if (v22)
    {
      v25 = @"appExtensionPlaceholdersPromiseUUIDs";
    }

    else
    {
      v25 = @"plugInPlaceholdersPromiseUUIDs";
    }

    v26 = [v4 decodeObjectOfClasses:v24 forKey:v25];
    appExtensionPlaceholdersPromiseUUIDs = v5->_appExtensionPlaceholdersPromiseUUIDs;
    v5->_appExtensionPlaceholdersPromiseUUIDs = v26;

    v5->_sentDidBegin = [v4 decodeBoolForKey:@"sentDidBegin"];
    v5->_configurationComplete = [v4 decodeBoolForKey:@"configurationComplete"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v28;

    v5->_creatorHadWebPlaceholderInstallEntitlement = [v4 decodeBoolForKey:@"creatorHadWebPlaceholderInstallEntitlement"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v16.receiver = self;
  v16.super_class = IXSPlaceholder;
  [(IXSOwnedDataPromise *)&v16 encodeWithCoder:v4];
  v6 = [(IXSPlaceholder *)self iconPromiseUUID];
  [v4 encodeObject:v6 forKey:@"iconPromiseUUID"];

  v7 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
  [v4 encodeObject:v7 forKey:@"iconResourcesPromiseUUID"];

  v8 = [(IXSPlaceholder *)self infoPlistIconContentPromiseUUID];
  [v4 encodeObject:v8 forKey:@"infoPlistIconContentPromiseUUID"];

  v9 = [(IXSPlaceholder *)self entitlementsPromiseUUID];
  [v4 encodeObject:v9 forKey:@"entitlementsPromiseUUID"];

  v10 = [(IXSPlaceholder *)self infoPlistLoctablePromiseUUID];
  [v4 encodeObject:v10 forKey:@"infoPlistLoctablePromiseUUID"];

  v11 = [(IXSPlaceholder *)self metadataPromiseUUID];
  [v4 encodeObject:v11 forKey:@"metadataPromiseUUID"];

  v12 = [(IXSPlaceholder *)self sinfPromiseUUID];
  [v4 encodeObject:v12 forKey:@"sinfPromiseUUID"];

  v13 = [(IXSPlaceholder *)self localizationDictionaryPromiseUUID];
  [v4 encodeObject:v13 forKey:@"localizationDictionaryPromiseUUID"];

  v14 = [(IXSPlaceholder *)self appExtensionPlaceholdersPromiseUUIDs];
  [v4 encodeObject:v14 forKey:@"appExtensionPlaceholdersPromiseUUIDs"];

  [v4 encodeBool:-[IXSPlaceholder sentDidBegin](self forKey:{"sentDidBegin"), @"sentDidBegin"}];
  [v4 encodeBool:-[IXSPlaceholder configurationComplete](self forKey:{"configurationComplete"), @"configurationComplete"}];
  v15 = [(IXSPlaceholder *)self attributes];
  [v4 encodeObject:v15 forKey:@"attributes"];

  [v4 encodeBool:-[IXSPlaceholder creatorHadWebPlaceholderInstallEntitlement](self forKey:{"creatorHadWebPlaceholderInstallEntitlement"), @"creatorHadWebPlaceholderInstallEntitlement"}];
}

- (BOOL)awakeFromSerializationWithLookupBlock:(id)a3 error:(id *)a4
{
  v187 = a3;
  v223 = 0;
  v224 = &v223;
  v225 = 0x3032000000;
  v226 = sub_10001F1AC;
  v227 = sub_10001F1BC;
  v228 = 0;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);
  v186 = self;

  v6 = [(IXSPlaceholder *)self awakeningError];

  if (v6)
  {
    if (a4)
    {
      [(IXSPlaceholder *)self awakeningError];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_116;
  }

  if (![(IXSDataPromise *)self isTracked]|| [(IXSDataPromise *)self didAwake])
  {
    v7 = 1;
    goto LABEL_116;
  }

  [(IXSDataPromise *)self setDidAwake:1];
  v182 = [(IXSPlaceholder *)self bundleID];
  if ([v182 containsEmbeddedNULLCharacter])
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(IXSDataPromise *)self name];
      objc_claimAutoreleasedReturnValue();
      sub_10009AAE0();
    }

    v9 = [(IXSDataPromise *)self name];
    v11 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 191, @"IXErrorDomain", 0x2CuLL, 0, 0, @"%@: Bundle identifier %@ contains an embedded NULL character, which is not allowed", v10, v9);

    v12 = v224[5];
    v224[5] = v11;
  }

  v180 = [(IXSPlaceholder *)self bundleDirectoryName];
  if ([v180 containsEmbeddedNULLCharacter])
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10009AB30();
    }

    v15 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 196, @"IXErrorDomain", 0x2CuLL, 0, 0, @"%@: Bundle directory name %@ contains an embedded NULL character, which is not allowed", v14, v180);
    v16 = v224[5];
    v224[5] = v15;
  }

  v181 = [(IXSPlaceholder *)self bundleName];
  if ([v181 containsEmbeddedNULLCharacter])
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(IXSPlaceholder *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      sub_10009ABA8();
    }

    v18 = [(IXSPlaceholder *)self bundleName];
    v20 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 201, @"IXErrorDomain", 0x2CuLL, 0, 0, @"%@: Bundle name %@ contains an embedded NULL character, which is not allowed", v19, v18);

    v21 = v224[5];
    v224[5] = v20;
  }

  v22 = [(IXSPlaceholder *)self iconPromiseUUID];

  v23 = self;
  if (v22)
  {
    v24 = [(IXSPlaceholder *)self iconPromiseUUID];
    v25 = objc_opt_class();
    v26 = v187[2](v187, v24, v25);
    icon = self->_icon;
    self->_icon = v26;

    v28 = self->_icon;
    if (v28)
    {
      v29 = [(IXSDataPromise *)v28 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F1C4;
      block[3] = &unk_100101830;
      block[4] = self;
      v221 = v187;
      v222 = &v223;
      dispatch_sync(v29, block);

      v23 = self;
    }

    else
    {
      v30 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)self name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)self iconPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009ABF8();
      }

      v31 = [(IXSDataPromise *)self name];
      v171 = [(IXSPlaceholder *)self iconPromiseUUID];
      v33 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 210, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate icon promise with UUID %@", v32, v31);

      v34 = v224[5];
      v224[5] = v33;

      v23 = self;
      [(IXSPlaceholder *)self setIconPromiseUUID:0];
    }
  }

  v35 = [(IXSPlaceholder *)v23 iconResourcesPromiseUUID];

  v36 = self;
  if (v35)
  {
    v37 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
    v38 = objc_opt_class();
    v39 = v187[2](v187, v37, v38);
    iconResourcesPromise = self->_iconResourcesPromise;
    self->_iconResourcesPromise = v39;

    v41 = self->_iconResourcesPromise;
    if (v41)
    {
      v42 = [(IXSDataPromise *)v41 accessQueue];
      v217[0] = _NSConcreteStackBlock;
      v217[1] = 3221225472;
      v217[2] = sub_10001F270;
      v217[3] = &unk_100101830;
      v217[4] = self;
      v218 = v187;
      v219 = &v223;
      dispatch_sync(v42, v217);

      v36 = self;
    }

    else
    {
      v43 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)self name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)self iconResourcesPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AC4C();
      }

      v44 = [(IXSDataPromise *)self name];
      v172 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
      v46 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 229, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate icon resources promise with UUID %@", v45, v44);

      v47 = v224[5];
      v224[5] = v46;

      v36 = self;
      [(IXSPlaceholder *)self setIconResourcesPromiseUUID:0];
    }
  }

  v48 = [(IXSPlaceholder *)v36 infoPlistIconContentPromiseUUID];

  v49 = self;
  if (v48)
  {
    v50 = [(IXSPlaceholder *)self infoPlistIconContentPromiseUUID];
    v51 = objc_opt_class();
    v52 = v187[2](v187, v50, v51);
    infoPlistIconContentPromise = self->_infoPlistIconContentPromise;
    self->_infoPlistIconContentPromise = v52;

    v54 = self->_infoPlistIconContentPromise;
    if (v54)
    {
      v55 = [(IXSDataPromise *)v54 accessQueue];
      v214[0] = _NSConcreteStackBlock;
      v214[1] = 3221225472;
      v214[2] = sub_10001F31C;
      v214[3] = &unk_100101830;
      v214[4] = self;
      v215 = v187;
      v216 = &v223;
      dispatch_sync(v55, v214);

      v49 = self;
    }

    else
    {
      v56 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)self name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)self iconResourcesPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AC4C();
      }

      v57 = [(IXSDataPromise *)self name];
      v173 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
      v59 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 248, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate icon resources promise with UUID %@", v58, v57);

      v60 = v224[5];
      v224[5] = v59;

      v49 = self;
      [(IXSPlaceholder *)self setInfoPlistIconContentPromiseUUID:0];
    }
  }

  v61 = [(IXSPlaceholder *)v49 iconResourcesPromise];
  if (v61)
  {
    v62 = [(IXSPlaceholder *)v49 infoPlistIconContentPromise];
    v63 = v62 == 0;

    v49 = v186;
    if (v63)
    {
      [(IXSPlaceholder *)v186 setIconResourcesPromise:0];
      [(IXSPlaceholder *)v186 setIconResourcesPromiseUUID:0];
      v67 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_10009ACA0();
      }

      v68 = @"%@: Found icon resources promise but not info plist icon content promise";
      v69 = 267;
      goto LABEL_48;
    }
  }

  v64 = [(IXSPlaceholder *)v49 iconResourcesPromise];
  if (v64)
  {
LABEL_49:

    goto LABEL_50;
  }

  v65 = [(IXSPlaceholder *)v49 infoPlistIconContentPromise];
  v66 = v65 == 0;

  if (!v66)
  {
    [(IXSPlaceholder *)v186 setInfoPlistIconContentPromise:0];
    [(IXSPlaceholder *)v186 setInfoPlistIconContentPromiseUUID:0];
    v67 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_10009AD14();
    }

    v68 = @"%@: Found info plist icon content promise but not icon resources promise";
    v69 = 271;
LABEL_48:

    v71 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", v69, @"IXErrorDomain", 3uLL, 0, 0, v68, v70, v186);
    v64 = v224[5];
    v224[5] = v71;
    goto LABEL_49;
  }

LABEL_50:
  v72 = [(IXSPlaceholder *)v186 entitlementsPromiseUUID];

  v73 = v186;
  if (v72)
  {
    v74 = [(IXSPlaceholder *)v186 entitlementsPromiseUUID];
    v75 = objc_opt_class();
    v76 = v187[2](v187, v74, v75);
    entitlements = v186->_entitlements;
    v186->_entitlements = v76;

    v78 = v186->_entitlements;
    if (v78)
    {
      v79 = [(IXSDataPromise *)v78 accessQueue];
      v211[0] = _NSConcreteStackBlock;
      v211[1] = 3221225472;
      v211[2] = sub_10001F3C8;
      v211[3] = &unk_100101830;
      v211[4] = v186;
      v212 = v187;
      v213 = &v223;
      dispatch_sync(v79, v211);

      v73 = v186;
    }

    else
    {
      v80 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)v186 name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)v186 entitlementsPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AD88();
      }

      v81 = [(IXSDataPromise *)v186 name];
      v174 = [(IXSPlaceholder *)v186 entitlementsPromiseUUID];
      v83 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 277, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate entitlements promise with UUID %@", v82, v81);

      v84 = v224[5];
      v224[5] = v83;

      v73 = v186;
      [(IXSPlaceholder *)v186 setEntitlementsPromiseUUID:0];
    }
  }

  v85 = [(IXSPlaceholder *)v73 infoPlistLoctablePromiseUUID];

  v86 = v186;
  if (v85)
  {
    v87 = [(IXSPlaceholder *)v186 infoPlistLoctablePromiseUUID];
    v88 = objc_opt_class();
    v89 = v187[2](v187, v87, v88);
    infoPlistLoctable = v186->_infoPlistLoctable;
    v186->_infoPlistLoctable = v89;

    v91 = v186->_infoPlistLoctable;
    if (v91)
    {
      v92 = [(IXSDataPromise *)v91 accessQueue];
      v208[0] = _NSConcreteStackBlock;
      v208[1] = 3221225472;
      v208[2] = sub_10001F474;
      v208[3] = &unk_100101830;
      v208[4] = v186;
      v209 = v187;
      v210 = &v223;
      dispatch_sync(v92, v208);

      v86 = v186;
    }

    else
    {
      v93 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)v186 name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)v186 infoPlistLoctablePromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009ADDC();
      }

      v94 = [(IXSDataPromise *)v186 name];
      v175 = [(IXSPlaceholder *)v186 infoPlistLoctablePromiseUUID];
      v96 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 296, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate loctable promise with UUID %@", v95, v94);

      v97 = v224[5];
      v224[5] = v96;

      v86 = v186;
      [(IXSPlaceholder *)v186 setInfoPlistLoctablePromiseUUID:0];
    }
  }

  v98 = [(IXSPlaceholder *)v86 metadataPromiseUUID];

  v99 = v186;
  if (v98)
  {
    v100 = [(IXSPlaceholder *)v186 metadataPromiseUUID];
    v101 = objc_opt_class();
    v102 = v187[2](v187, v100, v101);
    metadataPromise = v186->_metadataPromise;
    v186->_metadataPromise = v102;

    v104 = v186->_metadataPromise;
    if (v104)
    {
      v105 = [(IXSDataPromise *)v104 accessQueue];
      v205[0] = _NSConcreteStackBlock;
      v205[1] = 3221225472;
      v205[2] = sub_10001F520;
      v205[3] = &unk_100101830;
      v205[4] = v186;
      v206 = v187;
      v207 = &v223;
      dispatch_sync(v105, v205);

      v99 = v186;
    }

    else
    {
      v106 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)v186 name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)v186 metadataPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AE30();
      }

      v107 = [(IXSDataPromise *)v186 name];
      v176 = [(IXSPlaceholder *)v186 metadataPromiseUUID];
      v109 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 315, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate metadata promise with UUID %@", v108, v107);

      v110 = v224[5];
      v224[5] = v109;

      v99 = v186;
      [(IXSPlaceholder *)v186 setMetadataPromiseUUID:0];
    }
  }

  v111 = [(IXSPlaceholder *)v99 sinfPromiseUUID];

  v112 = v186;
  if (v111)
  {
    v113 = [(IXSPlaceholder *)v186 sinfPromiseUUID];
    v114 = objc_opt_class();
    v115 = v187[2](v187, v113, v114);
    sinfPromise = v186->_sinfPromise;
    v186->_sinfPromise = v115;

    v117 = v186->_sinfPromise;
    if (v117)
    {
      v118 = [(IXSDataPromise *)v117 accessQueue];
      v202[0] = _NSConcreteStackBlock;
      v202[1] = 3221225472;
      v202[2] = sub_10001F5CC;
      v202[3] = &unk_100101830;
      v202[4] = v186;
      v203 = v187;
      v204 = &v223;
      dispatch_sync(v118, v202);

      v112 = v186;
    }

    else
    {
      v119 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)v186 name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)v186 sinfPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AE30();
      }

      v120 = [(IXSDataPromise *)v186 name];
      v177 = [(IXSPlaceholder *)v186 sinfPromiseUUID];
      v122 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 334, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate metadata promise with UUID %@", v121, v120);

      v123 = v224[5];
      v224[5] = v122;

      v112 = v186;
      [(IXSPlaceholder *)v186 setSinfPromiseUUID:0];
    }
  }

  v124 = [(IXSPlaceholder *)v112 localizationDictionaryPromiseUUID];

  v125 = v186;
  if (v124)
  {
    v126 = [(IXSPlaceholder *)v186 localizationDictionaryPromiseUUID];
    v127 = objc_opt_class();
    v128 = v187[2](v187, v126, v127);
    localizationDictionaryPromise = v186->_localizationDictionaryPromise;
    v186->_localizationDictionaryPromise = v128;

    v130 = v186->_localizationDictionaryPromise;
    if (v130)
    {
      v131 = [(IXSDataPromise *)v130 accessQueue];
      v199[0] = _NSConcreteStackBlock;
      v199[1] = 3221225472;
      v199[2] = sub_10001F678;
      v199[3] = &unk_100101830;
      v199[4] = v186;
      v200 = v187;
      v201 = &v223;
      dispatch_sync(v131, v199);

      v125 = v186;
    }

    else
    {
      v132 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)v186 name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)v186 localizationDictionaryPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AE84();
      }

      v133 = [(IXSDataPromise *)v186 name];
      v178 = [(IXSPlaceholder *)v186 localizationDictionaryPromiseUUID];
      v135 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 353, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate localization dictionary promise with UUID %@", v134, v133);

      v136 = v224[5];
      v224[5] = v135;

      v125 = v186;
      [(IXSPlaceholder *)v186 setLocalizationDictionaryPromiseUUID:0];
    }
  }

  v137 = [(IXSPlaceholder *)v125 appExtensionPlaceholdersPromiseUUIDs];

  if (v137)
  {
    v185 = objc_opt_new();
    v138 = objc_opt_new();
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v139 = [(IXSPlaceholder *)v186 appExtensionPlaceholdersPromiseUUIDs];
    v140 = [v139 countByEnumeratingWithState:&v195 objects:v237 count:16];
    if (v140)
    {
      v141 = *v196;
      obj = v139;
      do
      {
        for (i = 0; i != v140; i = i + 1)
        {
          if (*v196 != v141)
          {
            objc_enumerationMutation(obj);
          }

          v143 = *(*(&v195 + 1) + 8 * i);
          v144 = objc_opt_class();
          v145 = v187[2](v187, v143, v144);
          if (v145)
          {
            [v185 addObject:v145];
            v146 = [v145 accessQueue];
            v188[0] = _NSConcreteStackBlock;
            v188[1] = 3221225472;
            v188[2] = sub_10001F724;
            v188[3] = &unk_100101858;
            v189 = v145;
            v147 = v187;
            v190 = v186;
            v193 = v147;
            v194 = &v223;
            v191 = v138;
            v192 = v143;
            dispatch_sync(v146, v188);
          }

          else
          {
            v148 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              v153 = [(IXSDataPromise *)v186 name];
              *buf = 136315906;
              v230 = "[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]";
              v231 = 2112;
              v232 = v153;
              v233 = 2112;
              v234 = v143;
              v235 = 2112;
              v236 = 0;
              _os_log_error_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%s: %@: Failed to locate placeholder promise with UUID %@ : %@", buf, 0x2Au);
            }

            v149 = [(IXSDataPromise *)v186 name];
            v151 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 387, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate placeholder promise with UUID %@", v150, v149);

            v152 = v224[5];
            v224[5] = v151;

            [v138 addObject:v143];
          }
        }

        v139 = obj;
        v140 = [obj countByEnumeratingWithState:&v195 objects:v237 count:16];
      }

      while (v140);
    }

    v154 = [(IXSPlaceholder *)v186 appExtensionPlaceholdersPromiseUUIDs];
    v155 = [v154 mutableCopy];

    [v155 removeObjectsInArray:v138];
    if ([v155 count])
    {
      v156 = [v155 copy];
      [(IXSPlaceholder *)v186 setAppExtensionPlaceholdersPromiseUUIDs:v156];
    }

    else
    {
      [(IXSPlaceholder *)v186 setAppExtensionPlaceholdersPromiseUUIDs:0];
    }

    if ([v185 count])
    {
      objc_storeStrong(&v186->_appExtensionPlaceholders, v185);
    }
  }

  v157 = v186;
  if (!v224[5] && [(IXSPlaceholder *)v186 isComplete]&& ![(IXSOwnedDataPromise *)v186 stagedPathMayNotExistWhenAwakening])
  {
    v158 = [(IXSOwnedDataPromise *)v186 stagedPath];
    v159 = [(IXSOwnedDataPromise *)v186 targetLastPathComponent];
    if (v159)
    {
      v160 = [v158 URLByAppendingPathComponent:v159 isDirectory:1];

      v158 = v160;
    }

    v161 = +[IXFileManager defaultManager];
    v162 = [v161 itemExistsAtURL:v158];

    if ((v162 & 1) == 0)
    {
      v163 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)v186 uniqueIdentifier];
        objc_claimAutoreleasedReturnValue();
        [v158 path];
        objc_claimAutoreleasedReturnValue();
        sub_10009AED8();
      }

      v164 = [(IXSDataPromise *)v186 uniqueIdentifier];
      v179 = [v158 path];
      v166 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 417, @"IXErrorDomain", 3uLL, 0, 0, @"IXSPlaceholderPromise with UUID %@ was complete but found nothing at %@", v165, v164);

      v167 = v224[5];
      v224[5] = v166;
    }

    v157 = v186;
  }

  v168 = v224[5];
  if (a4 && v168)
  {
    v169 = v168;
    *a4 = v168;
    v168 = v224[5];
    v157 = v186;
  }

  if (v168)
  {
    [(IXSPlaceholder *)v157 setAwakeningError:v168];
    [(IXSPlaceholder *)v157 cancelForReason:v224[5] client:15 error:0];
    v7 = v224[5] == 0;
  }

  else
  {
    v7 = 1;
  }

LABEL_116:
  _Block_object_dispose(&v223, 8);

  return v7;
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_icon != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setIcon:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting icon promise to %@", buf, 0x20u);
    }

    icon = self->_icon;
    if (icon)
    {
      v9 = [(IXSDataPromise *)icon accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F9D8;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_icon, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001F9EC;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setIconPromiseUUID:v11];

    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setIconResourcesPromise:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_iconResourcesPromise != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setIconResourcesPromise:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting icon resources promise to %@", buf, 0x20u);
    }

    iconResourcesPromise = self->_iconResourcesPromise;
    if (iconResourcesPromise)
    {
      v9 = [(IXSDataPromise *)iconResourcesPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FC4C;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_iconResourcesPromise, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001FC60;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setIconResourcesPromiseUUID:v11];
  }
}

- (void)setInfoPlistIconContentPromise:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_infoPlistIconContentPromise != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setInfoPlistIconContentPromise:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting Info.plist icon content promise to %@", buf, 0x20u);
    }

    infoPlistIconContentPromise = self->_infoPlistIconContentPromise;
    if (infoPlistIconContentPromise)
    {
      v9 = [(IXSDataPromise *)infoPlistIconContentPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FEC0;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_infoPlistIconContentPromise, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001FED4;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setInfoPlistIconContentPromiseUUID:v11];
  }
}

- (void)setIconResourcesPromise:(id)a3 andInfoPlistIconContentPromise:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v8);

  [(IXSPlaceholder *)self setIconResourcesPromise:v7];
  [(IXSPlaceholder *)self setInfoPlistIconContentPromise:v6];

  [(IXSDataPromise *)self saveState];

  [(IXSPlaceholder *)self _materializeIfReady];
}

- (void)setMetadataPromise:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_metadataPromise != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setMetadataPromise:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting metadata promise to %@", buf, 0x20u);
    }

    metadataPromise = self->_metadataPromise;
    if (metadataPromise)
    {
      v9 = [(IXSDataPromise *)metadataPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000201CC;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_metadataPromise, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000201E0;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setMetadataPromiseUUID:v11];

    [(IXSDataPromise *)self saveState];
  }
}

- (void)setSinfPromise:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_sinfPromise != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setSinfPromise:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting sinf promise to %@", buf, 0x20u);
    }

    sinfPromise = self->_sinfPromise;
    if (sinfPromise)
    {
      v9 = [(IXSDataPromise *)sinfPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020448;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_sinfPromise, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002045C;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setSinfPromiseUUID:v11];

    [(IXSDataPromise *)self saveState];
  }
}

- (void)setLocalizationDictionaryPromise:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_localizationDictionaryPromise != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setLocalizationDictionaryPromise:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting localization dict promise to %@", buf, 0x20u);
    }

    localizationDictionaryPromise = self->_localizationDictionaryPromise;
    if (localizationDictionaryPromise)
    {
      v9 = [(IXSDataPromise *)localizationDictionaryPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000206C4;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_localizationDictionaryPromise, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000206D8;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setLocalizationDictionaryPromiseUUID:v11];

    [(IXSDataPromise *)self saveState];
  }
}

- (void)setEntitlements:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_entitlements != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setEntitlements:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting entitlements promise to %@", buf, 0x20u);
    }

    entitlements = self->_entitlements;
    if (entitlements)
    {
      v9 = [(IXSDataPromise *)entitlements accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020948;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_entitlements, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002095C;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setEntitlementsPromiseUUID:v11];

    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setInfoPlistLoctable:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (self->_infoPlistLoctable != v5)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setInfoPlistLoctable:]";
      v18 = 2112;
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting loctable promise to %@", buf, 0x20u);
    }

    infoPlistLoctable = self->_infoPlistLoctable;
    if (infoPlistLoctable)
    {
      v9 = [(IXSDataPromise *)infoPlistLoctable accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020BCC;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(v9, block);
    }

    objc_storeStrong(&self->_infoPlistLoctable, a3);
    if (v5)
    {
      v10 = [(IXSDataPromise *)v5 accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100020BE0;
      v12[3] = &unk_100100ED8;
      v13 = v5;
      v14 = self;
      dispatch_sync(v10, v12);
    }

    v11 = [(IXSDataPromise *)v5 uniqueIdentifier];
    [(IXSPlaceholder *)self setInfoPlistLoctablePromiseUUID:v11];

    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setAppExtensionPlaceholders:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v25 = objc_opt_new();
  v6 = self;
  v7 = [(IXSPlaceholder *)self bundleID];
  v24 = [NSString stringWithFormat:@"%@.", v7];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v4;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [v13 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100020FE4;
        block[3] = &unk_1001014C0;
        block[4] = v13;
        v32 = v24;
        v33 = self;
        v34 = v25;
        dispatch_sync(v14, block);
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = self->_appExtensionPlaceholders;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        if (![(NSArray *)v8 containsObject:v20])
        {
          v21 = [v20 accessQueue];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1000211CC;
          v26[3] = &unk_1001010A0;
          v26[4] = v20;
          dispatch_sync(v21, v26);
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v45 count:16];
    }

    while (v17);
  }

  v22 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "[IXSPlaceholder setAppExtensionPlaceholders:]";
    v41 = 2112;
    v42 = v6;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: %@: setting app extension placeholder promises to %@", buf, 0x20u);
  }

  appExtensionPlaceholders = v6->_appExtensionPlaceholders;
  v6->_appExtensionPlaceholders = v8;

  [(IXSPlaceholder *)v6 setAppExtensionPlaceholdersPromiseUUIDs:v25];
  [(IXSDataPromise *)v6 saveState];
  [(IXSPlaceholder *)v6 _materializeIfReady];
}

- (void)setConfigurationComplete:(BOOL)a3
{
  v3 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_configurationComplete != v3)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSPlaceholder setConfigurationComplete:]";
      if (v3)
      {
        v7 = 89;
      }

      else
      {
        v7 = 78;
      }

      v10 = 2112;
      v11 = self;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: setting configuration complete to %c", &v8, 0x1Cu);
    }

    self->_configurationComplete = v3;
    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setAttributes:(id)a3
{
  v5 = a3;
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  if (!self->_attributes || ([v5 isEqual:?] & 1) == 0)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSPlaceholder setAttributes:]";
      v10 = 2112;
      v11 = self;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting placeholder attributes to %@", &v8, 0x20u);
    }

    objc_storeStrong(&self->_attributes, a3);
    [(IXSDataPromise *)self saveState];
  }
}

+ (id)_metadataFromPromise:(id)a3
{
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10001F1AC;
  v26 = sub_10001F1BC;
  v27 = 0;
  v4 = [v3 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021758;
  block[3] = &unk_100101268;
  v21 = &v22;
  v5 = v3;
  v20 = v5;
  dispatch_sync(v4, block);

  if (!v23[5])
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 uniqueIdentifier];
      sub_10009AFE8(v14, buf, v13);
    }

    v6 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v6 = [NSSet setWithObjects:objc_opt_class(), 0];
  v7 = [NSKeyedUnarchiver alloc];
  v8 = v23[5];
  v18 = 0;
  v9 = [v7 initForReadingFromData:v8 error:&v18];
  v10 = v18;
  if (!v9)
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v5 uniqueIdentifier];
      objc_claimAutoreleasedReturnValue();
      sub_10009AF8C();
    }

LABEL_13:

    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [v9 decodeObjectOfClasses:v6 forKey:NSKeyedArchiveRootObjectKey];
  if (!v11)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v5 uniqueIdentifier];
      objc_claimAutoreleasedReturnValue();
      [v9 error];
      objc_claimAutoreleasedReturnValue();
      sub_10009AF2C();
    }
  }

  [v9 finishDecoding];
LABEL_14:
  v15 = v20;
  v16 = v11;

  _Block_object_dispose(&v22, 8);

  return v16;
}

- (MIStoreMetadata)metadata
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSPlaceholder *)self metadataPromise];
  if (v4)
  {
    v5 = [objc_opt_class() _metadataFromPromise:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)sinfData
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001F1AC;
  v17 = sub_10001F1BC;
  v18 = 0;
  v4 = [(IXSPlaceholder *)self sinfPromise];

  if (v4)
  {
    v5 = [(IXSPlaceholder *)self sinfPromise];
    v6 = [v5 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100021A60;
    v12[3] = &unk_100101268;
    v12[4] = self;
    v12[5] = &v13;
    dispatch_sync(v6, v12);

    if (!v14[5])
    {
      v7 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(IXSPlaceholder *)self sinfPromise];
        v9 = [v8 uniqueIdentifier];
        *buf = 136315394;
        v20 = "[IXSPlaceholder sinfData]";
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: No data on the sinf promise %@", buf, 0x16u);
      }
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (NSDictionary)localizationDictionary
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001F1AC;
  v17 = sub_10001F1BC;
  v18 = 0;
  v4 = [(IXSPlaceholder *)self localizationDictionaryPromise];

  if (v4)
  {
    v5 = [(IXSPlaceholder *)self localizationDictionaryPromise];
    v6 = [v5 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100021D04;
    v12[3] = &unk_100101268;
    v12[4] = self;
    v12[5] = &v13;
    dispatch_sync(v6, v12);

    if (!v14[5])
    {
      v7 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(IXSPlaceholder *)self localizationDictionaryPromise];
        v9 = [v8 uniqueIdentifier];
        *buf = 136315394;
        v20 = "[IXSPlaceholder localizationDictionary]";
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: No dictionary on the localization dict promise %@", buf, 0x16u);
      }
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)_isReadyToMaterialize
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self error];

  if (v4)
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B054(self);
    }

LABEL_25:
    v25 = 0;
    goto LABEL_26;
  }

  if (![(IXSPlaceholder *)self configurationComplete])
  {
    v5 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10009B0F0(self);
    }

    goto LABEL_25;
  }

  v6 = [(IXSPlaceholder *)self icon];
  v5 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v7 = [v6 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022314;
  block[3] = &unk_100101880;
  v8 = v5;
  v42 = self;
  v43 = &v44;
  v41 = v8;
  dispatch_sync(v7, block);

  LOBYTE(v7) = *(v45 + 24);
  _Block_object_dispose(&v44, 8);
  if ((v7 & 1) == 0)
  {
    v25 = 0;
    v5 = v8;
  }

  else
  {
LABEL_7:
    v28 = [(IXSPlaceholder *)self iconResourcesPromise];
    if (v28)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v9 = [v28 accessQueue];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000223A8;
      v36[3] = &unk_100101880;
      v38 = self;
      v39 = &v44;
      v37 = v28;
      dispatch_sync(v9, v36);

      v10 = *(v45 + 24);
      _Block_object_dispose(&v44, 8);
      if ((v10 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v11 = [(IXSPlaceholder *)self entitlements];

    if (v11)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      v12 = [(IXSPlaceholder *)self entitlements];
      v13 = [v12 accessQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10002243C;
      v35[3] = &unk_1001013C8;
      v35[4] = self;
      v35[5] = &v44;
      dispatch_sync(v13, v35);

      v14 = *(v45 + 24);
      _Block_object_dispose(&v44, 8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v15 = [(IXSPlaceholder *)self infoPlistLoctable];

    if (!v15)
    {
      goto LABEL_13;
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v16 = [(IXSPlaceholder *)self infoPlistLoctable];
    v17 = [v16 accessQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000224D8;
    v34[3] = &unk_1001013C8;
    v34[4] = self;
    v34[5] = &v44;
    dispatch_sync(v17, v34);

    v18 = *(v45 + 24);
    _Block_object_dispose(&v44, 8);
    if ((v18 & 1) == 0)
    {
LABEL_27:
      v25 = 0;
    }

    else
    {
LABEL_13:
      v19 = [(IXSPlaceholder *)self appExtensionPlaceholders];

      if (v19)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        obj = [(IXSPlaceholder *)self appExtensionPlaceholders];
        v20 = [obj countByEnumeratingWithState:&v30 objects:v48 count:16];
        if (v20)
        {
          v21 = *v31;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v30 + 1) + 8 * i);
              v44 = 0;
              v45 = &v44;
              v46 = 0x2020000000;
              v47 = 0;
              v24 = [v23 accessQueue];
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_100022574;
              v29[3] = &unk_100101880;
              v29[5] = self;
              v29[6] = &v44;
              v29[4] = v23;
              dispatch_sync(v24, v29);

              LOBYTE(v23) = *(v45 + 24);
              _Block_object_dispose(&v44, 8);
              if ((v23 & 1) == 0)
              {
                v25 = 0;
                goto LABEL_30;
              }
            }

            v20 = [obj countByEnumeratingWithState:&v30 objects:v48 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v25 = 1;
LABEL_30:
      }

      else
      {
        v25 = 1;
      }
    }
  }

LABEL_26:

  return v25;
}

- (void)_materializeIfReady
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  if ([(IXSPlaceholder *)self _isReadyToMaterialize])
  {
    v4 = [(IXSOwnedDataPromise *)self stagedPath];

    if (!v4)
    {
      if ([(IXSPlaceholder *)self _materialize])
      {
        v5 = [(IXSDataPromise *)self delegate];
        if (v5)
        {
          if (objc_opt_respondsToSelector())
          {
            v6 = [(IXSDataPromise *)self delegateDeliveryQueue];
            v7[0] = _NSConcreteStackBlock;
            v7[1] = 3221225472;
            v7[2] = sub_100022714;
            v7[3] = &unk_100100ED8;
            v8 = v5;
            v9 = self;
            sub_100071134(v6, v7);
          }
        }
      }
    }
  }
}

- (BOOL)isComplete
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  if (![(IXSPlaceholder *)self _isReadyToMaterialize])
  {
    return 0;
  }

  v4 = [(IXSOwnedDataPromise *)self stagedPath];
  v5 = v4 != 0;

  return v5;
}

- (double)percentComplete
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSDataPromise *)self error];

  v5 = 0.0;
  if (!v4 && [(IXSPlaceholder *)self configurationComplete])
  {
    v27 = [(IXSPlaceholder *)self icon];
    v26 = [(IXSPlaceholder *)self iconResourcesPromise];
    v6 = v27;
    if (v27 || (v6 = v26) != 0)
    {
      v7 = v6;
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v8 = [v7 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022C1C;
      block[3] = &unk_100101268;
      v40 = &v41;
      v24 = v7;
      v39 = v24;
      dispatch_sync(v8, block);

      v9 = v42[3];
      v10 = v9 + 0.0;
      _Block_object_dispose(&v41, 8);
      [(IXSPlaceholder *)self entitlements];
    }

    else
    {
      v10 = 0.300000012;
      [(IXSPlaceholder *)self entitlements];
    }
    v11 = ;

    if (v11)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v12 = [(IXSPlaceholder *)self entitlements];
      v13 = [v12 accessQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100022C5C;
      v37[3] = &unk_100101268;
      v37[4] = self;
      v37[5] = &v41;
      dispatch_sync(v13, v37);

      v14 = v42[3];
      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v14 = 0.200000003;
    }

    v15 = [(IXSPlaceholder *)self appExtensionPlaceholders];

    if (v15)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = [(IXSPlaceholder *)self appExtensionPlaceholders];
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v45 count:16];
      if (v17)
      {
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [v20 accessQueue];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100022CC4;
            v28[3] = &unk_1001018A8;
            v28[4] = v20;
            v28[5] = &v41;
            v28[6] = &v33;
            dispatch_sync(v21, v28);
          }

          v17 = [v16 countByEnumeratingWithState:&v29 objects:v45 count:16];
        }

        while (v17);
      }

      v22 = v42[3] / v34[3] * 0.5;
      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v22 = 0.5;
    }

    if (v10 + v14 + v22 <= 1.0)
    {
      v5 = v10 + v14 + v22;
    }

    else
    {
      v5 = 1.0;
    }
  }

  return v5;
}

- (void)setPercentComplete:(double)a3
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);
}

- (void)_cancelPromise:(id)a3 forReason:(id)a4 client:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [v7 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100022E2C;
    block[3] = &unk_1001018D0;
    v11 = v7;
    v12 = v8;
    v13 = a5;
    dispatch_sync(v9, block);
  }
}

- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v9);

  if (!v8)
  {
    v26 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10009B548();
    }

    v28 = @"Reason passed to [IXSPlaceholder cancelForReason:] was nil";
    v29 = 1074;
LABEL_20:
    v25 = sub_1000405FC("[IXSPlaceholder cancelForReason:client:error:]", v29, @"IXErrorDomain", 0x35uLL, 0, 0, v28, v27, v32);
    v24 = 0;
    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
    v30 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10009B4C4();
    }

    v28 = @"Client passed to [IXSPlaceholder cancelForReason:] was IXClientNone (0)";
    v29 = 1079;
    goto LABEL_20;
  }

  v10 = [(IXSPlaceholder *)self icon];
  [(IXSPlaceholder *)self _cancelPromise:v10 forReason:v8 client:a4];

  v11 = [(IXSPlaceholder *)self iconResourcesPromise];
  [(IXSPlaceholder *)self _cancelPromise:v11 forReason:v8 client:a4];

  v12 = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  [(IXSPlaceholder *)self _cancelPromise:v12 forReason:v8 client:a4];

  v13 = [(IXSPlaceholder *)self entitlements];
  [(IXSPlaceholder *)self _cancelPromise:v13 forReason:v8 client:a4];

  v14 = [(IXSPlaceholder *)self infoPlistLoctable];
  [(IXSPlaceholder *)self _cancelPromise:v14 forReason:v8 client:a4];

  v15 = [(IXSPlaceholder *)self metadataPromise];
  [(IXSPlaceholder *)self _cancelPromise:v15 forReason:v8 client:a4];

  v16 = [(IXSPlaceholder *)self sinfPromise];
  [(IXSPlaceholder *)self _cancelPromise:v16 forReason:v8 client:a4];

  v17 = [(IXSPlaceholder *)self localizationDictionaryPromise];
  [(IXSPlaceholder *)self _cancelPromise:v17 forReason:v8 client:a4];

  v18 = [(IXSPlaceholder *)self appExtensionPlaceholders];

  if (v18)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [(IXSPlaceholder *)self appExtensionPlaceholders];
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(IXSPlaceholder *)self _cancelPromise:*(*(&v35 + 1) + 8 * i) forReason:v8 client:a4];
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }
  }

  v33.receiver = self;
  v33.super_class = IXSPlaceholder;
  v34 = 0;
  v24 = [(IXSOwnedDataPromise *)&v33 cancelForReason:v8 client:a4 error:&v34];
  v25 = v34;
  if (a5)
  {
LABEL_21:
    if (!v24)
    {
      v25 = v25;
      *a5 = v25;
    }
  }

LABEL_23:

  return v24;
}

- (NSString)bundleName
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 bundleName];

  return v3;
}

- (NSString)bundleDirectoryName
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 bundleDirectoryName];

  return v3;
}

- (NSString)bundleID
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 bundleID];

  return v3;
}

- (unint64_t)installType
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 installType];

  return v3;
}

- (unint64_t)totalBytesNeededOnDisk
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v23 = 0;
  v4 = [(IXSPlaceholder *)self icon];
  sub_100023578(v4, &v23);

  v5 = [(IXSPlaceholder *)self iconResourcesPromise];
  sub_100023578(v5, &v23);

  v6 = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  sub_100023578(v6, &v23);

  v7 = [(IXSPlaceholder *)self entitlements];
  sub_100023578(v7, &v23);

  v8 = [(IXSPlaceholder *)self infoPlistLoctable];
  sub_100023578(v8, &v23);

  v9 = [(IXSPlaceholder *)self metadataPromise];
  sub_100023578(v9, &v23);

  v10 = [(IXSPlaceholder *)self sinfPromise];
  sub_100023578(v10, &v23);

  v11 = [(IXSPlaceholder *)self localizationDictionaryPromise];
  sub_100023578(v11, &v23);

  v12 = [(IXSPlaceholder *)self appExtensionPlaceholders];

  if (v12)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [(IXSPlaceholder *)self appExtensionPlaceholders];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          sub_100023578(*(*(&v19 + 1) + 8 * v17), &v23);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v23;
}

- (id)_promiseUUIDsForPromise:(id)a3
{
  v3 = a3;
  v4 = v3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001F1AC;
  v17 = sub_10001F1BC;
  v18 = 0;
  if (v3)
  {
    v5 = [v3 accessQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002378C;
    v10[3] = &unk_100101268;
    v12 = &v13;
    v11 = v4;
    dispatch_sync(v5, v10);

    v6 = v11;
  }

  else
  {
    v7 = +[NSSet set];
    v6 = v14[5];
    v14[5] = v7;
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)subPromiseUUIDs
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v5 = [(IXSPlaceholder *)self icon];
  v6 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v5];
  [v4 unionSet:v6];

  v7 = [(IXSPlaceholder *)self iconResourcesPromise];
  v8 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v7];
  [v4 unionSet:v8];

  v9 = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  v10 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v9];
  [v4 unionSet:v10];

  v11 = [(IXSPlaceholder *)self entitlements];
  v12 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v11];
  [v4 unionSet:v12];

  v13 = [(IXSPlaceholder *)self infoPlistLoctable];
  v14 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v13];
  [v4 unionSet:v14];

  v15 = [(IXSPlaceholder *)self metadataPromise];
  v16 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v15];
  [v4 unionSet:v16];

  v17 = [(IXSPlaceholder *)self sinfPromise];
  v18 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v17];
  [v4 unionSet:v18];

  v19 = [(IXSPlaceholder *)self localizationDictionaryPromise];
  v20 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:v19];
  [v4 unionSet:v20];

  v21 = [(IXSPlaceholder *)self appExtensionPlaceholders];

  if (v21)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = [(IXSPlaceholder *)self appExtensionPlaceholders];
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:*(*(&v30 + 1) + 8 * i)];
          [v4 unionSet:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }
  }

  v28 = [v4 copy];

  return v28;
}

- (void)_decommissionPromise:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023BF0;
    block[3] = &unk_1001010A0;
    v7 = v4;
    dispatch_sync(v5, block);
  }
}

- (void)decommission
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSPlaceholder *)self icon];
  [(IXSPlaceholder *)self _decommissionPromise:v4];

  v5 = [(IXSPlaceholder *)self iconResourcesPromise];
  [(IXSPlaceholder *)self _decommissionPromise:v5];

  v6 = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  [(IXSPlaceholder *)self _decommissionPromise:v6];

  v7 = [(IXSPlaceholder *)self entitlements];
  [(IXSPlaceholder *)self _decommissionPromise:v7];

  v8 = [(IXSPlaceholder *)self infoPlistLoctable];
  [(IXSPlaceholder *)self _decommissionPromise:v8];

  v9 = [(IXSPlaceholder *)self metadataPromise];
  [(IXSPlaceholder *)self _decommissionPromise:v9];

  v10 = [(IXSPlaceholder *)self sinfPromise];
  [(IXSPlaceholder *)self _decommissionPromise:v10];

  v11 = [(IXSPlaceholder *)self localizationDictionaryPromise];
  [(IXSPlaceholder *)self _decommissionPromise:v11];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(IXSPlaceholder *)self appExtensionPlaceholders];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(IXSPlaceholder *)self _decommissionPromise:*(*(&v18 + 1) + 8 * v16)];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17.receiver = self;
  v17.super_class = IXSPlaceholder;
  [(IXSOwnedDataPromise *)&v17 decommission];
}

- (BOOL)_validateClientEntitlements:(id *)a3
{
  v5 = [(IXSPlaceholder *)self entitlements];
  v6 = [v5 accessQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(IXSPlaceholder *)self entitlements];
  v8 = [v7 stagedPath];

  v9 = [NSDictionary dictionaryWithContentsOfURL:v8 error:0];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = [v9 objectForKeyedSubscript:@"com.apple.private.webkit.pushbundle"];
  v12 = sub_10008F068(v11, 0);

  v13 = [v10 objectForKeyedSubscript:@"com.apple.developer.app-management-domain"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if ((v12 & 1) == 0 && ![v15 isEqualToString:@"com.apple.WebKit.PushBundles"] || -[IXSPlaceholder creatorHadWebPlaceholderInstallEntitlement](self, "creatorHadWebPlaceholderInstallEntitlement"))
  {

LABEL_9:
    v16 = 0;
    v17 = 1;
    goto LABEL_10;
  }

  v19 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10009B5CC(self);
  }

  v20 = IXStringForClientID([(IXSDataPromise *)self creatorIdentifier]);
  v16 = sub_1000405FC("[IXSPlaceholder _validateClientEntitlements:]", 1250, @"IXErrorDomain", 0x19uLL, 0, 0, @"The creator of placeholder %@ is missing the entitlement %@ = TRUE which is required to create a web notification placeholder.", v21, v20);

  if (a3)
  {
    v22 = v16;
    v17 = 0;
    *a3 = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_10:

  return v17;
}

+ (id)_sanitizedFilesystemNameForName:(id)a3 fileExtension:(id)a4 fallingBackToName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  if (![v11 length])
  {
    v12 = v7;

    v11 = v12;
  }

  v13 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  v14 = [v8 fileSystemRepresentation];
  v15 = strlen(v14);
  if (v15 + strlen([(__CFString *)v13 fileSystemRepresentation]) + 1 >= 0xFF)
  {
    v16 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10009B67C();
    }

    v17 = sub_100013CC4(v13, 253 - v15);
    v13 = v17;
    if (!v17)
    {
      v13 = v7;
    }
  }

  return v13;
}

- (id)_preparedBundleDirectoryName
{
  v3 = [(IXSPlaceholder *)self bundleDirectoryName];
  v4 = [(IXSPlaceholder *)self bundleID];
  v5 = [(IXSDataPromise *)self seed];
  v6 = [v5 isAppExtension];

  if (!v6)
  {
    if (!v3)
    {
      v3 = [(IXSPlaceholder *)self bundleName];
    }

    v7 = objc_opt_class();
    v8 = @"app";
    goto LABEL_7;
  }

  if (v3)
  {
    v7 = objc_opt_class();
    v8 = @"appex";
LABEL_7:
    v9 = [v7 _sanitizedFilesystemNameForName:v3 fileExtension:v8 fallingBackToName:v4];
    v10 = [NSString stringWithFormat:@"%@.%@", v9, v8];

    goto LABEL_8;
  }

  v10 = [NSString stringWithFormat:@"%@.appex", v4];
LABEL_8:

  return v10;
}

- (BOOL)_materialize
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v73 = [(IXSPlaceholder *)self bundleName];
  v4 = +[IXFileManager defaultManager];
  v70 = [(IXSPlaceholder *)self icon];
  v5 = [(IXSPlaceholder *)self iconResourcesPromise];
  v71 = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  v6 = [(IXSOwnedDataPromise *)self stagingBaseDir];
  v7 = [(IXSPlaceholder *)self _preparedBundleDirectoryName];
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v72 = [v8 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 path];
    *buf = 136315650;
    *&buf[4] = "[IXSPlaceholder _materialize]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v133 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@: Materializing placeholder at %@", buf, 0x20u);
  }

  v124 = 0;
  v11 = [v4 createDirectoryAtURL:v8 withIntermediateDirectories:1 mode:493 class:4 error:&v124];
  v12 = v124;
  if ((v11 & 1) == 0)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10009B708(v8);
    }

    v18 = [v8 path];
    v20 = sub_1000405FC("[IXSPlaceholder _materialize]", 1336, @"IXErrorDomain", 0x14uLL, v12, 0, @"Failed to create bundle directory at %@", v19, v18);
    v16 = 0;
    goto LABEL_27;
  }

  if (v5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    v13 = [v71 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002530C;
    block[3] = &unk_100101268;
    v123 = buf;
    v122 = v71;
    dispatch_sync(v13, block);

    if (*(*&buf[8] + 40))
    {
      v14 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*&buf[8] + 40);
        *v126 = 136315650;
        *&v126[4] = "[IXSPlaceholder _materialize]";
        *&v126[12] = 2112;
        *&v126[14] = self;
        *&v126[22] = 2112;
        v127 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@: Using Info.plist icon content: %@", v126, 0x20u);
      }

      v16 = [*(*&buf[8] + 40) mutableCopy];
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(buf, 8);
LABEL_16:
    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v70)
  {
    v130 = _kCFBundleIconFileKey;
    v131 = @"Icon";
    v21 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v16 = [v21 mutableCopy];

    goto LABEL_16;
  }

LABEL_17:
  v16 = objc_opt_new();
LABEL_18:
  v22 = [(IXSPlaceholder *)self bundleID];
  [v16 setObject:v22 forKeyedSubscript:kCFBundleIdentifierKey];

  [v16 setObject:v73 forKeyedSubscript:kCFBundleNameKey];
  [v16 setObject:@"Executable" forKeyedSubscript:kCFBundleExecutableKey];
  [v16 setObject:v73 forKeyedSubscript:_kCFBundleDisplayNameKey];
  v23 = [(IXSPlaceholder *)self attributes];

  if (v23)
  {
    v24 = [(IXSPlaceholder *)self attributes];
    v25 = [v24 infoPlistContent];
    [v16 addEntriesFromDictionary:v25];
  }

  v120 = v12;
  v26 = [v16 IX_writeToURL:v72 format:200 options:1 error:&v120];
  v27 = v120;

  if ((v26 & 1) == 0)
  {
    v30 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10009B7B4(v72);
    }

    v18 = [v72 path];
    v20 = sub_1000405FC("[IXSPlaceholder _materialize]", 1371, @"IXErrorDomain", 0x14uLL, v27, 0, @"Failed to write bundle Info.plist to %@", v31, v18);
    v12 = v27;
LABEL_27:

    goto LABEL_28;
  }

  if (v5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    v28 = [v5 accessQueue];
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_100025358;
    v114[3] = &unk_1001018F8;
    v115 = v5;
    v116 = v4;
    v119 = buf;
    v117 = v8;
    v118 = self;
    dispatch_sync(v28, v114);

    v29 = *(*&buf[8] + 40);
    if (v29)
    {
      v20 = v29;
    }

    else
    {
      v20 = v27;
    }

    _Block_object_dispose(buf, 8);
    if (!v29)
    {
      goto LABEL_40;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_29;
  }

  if (v70)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    v35 = [v70 accessQueue];
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_100025818;
    v108[3] = &unk_100101920;
    v109 = v70;
    v110 = v8;
    v111 = v4;
    v112 = self;
    v113 = buf;
    dispatch_sync(v35, v108);

    v36 = *(*&buf[8] + 40);
    if (v36)
    {
      v20 = v36;
    }

    else
    {
      v20 = v27;
    }

    _Block_object_dispose(buf, 8);
    if (!v36)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v20 = v27;
LABEL_40:
  v37 = [(IXSPlaceholder *)self entitlements];

  if (v37)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    v38 = [(IXSPlaceholder *)self entitlements];
    v39 = [v38 accessQueue];
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_100025B80;
    v103[3] = &unk_100101920;
    v103[4] = self;
    v104 = v8;
    v105 = v4;
    v20 = v20;
    v106 = v20;
    v107 = buf;
    dispatch_sync(v39, v103);

    v40 = *(*&buf[8] + 40);
    if (v40)
    {
      v41 = v40;

      v20 = v41;
    }

    _Block_object_dispose(buf, 8);
    if (v40)
    {
      goto LABEL_28;
    }
  }

  v42 = [(IXSPlaceholder *)self infoPlistLoctable];
  v32 = v42;
  if (!v42)
  {
    goto LABEL_49;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v133 = sub_10001F1AC;
  v134 = sub_10001F1BC;
  v135 = 0;
  v43 = [v42 accessQueue];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_100025F64;
  v97[3] = &unk_100101920;
  v98 = v8;
  v99 = v4;
  v44 = v32;
  v100 = v44;
  v101 = self;
  v102 = buf;
  dispatch_sync(v43, v97);

  v45 = *(*&buf[8] + 40);
  if (v45)
  {
    v46 = v45;

    v20 = v46;
  }

  _Block_object_dispose(buf, 8);
  if (v45)
  {
    v32 = v44;
  }

  else
  {
LABEL_49:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    v47 = [(IXSPlaceholder *)self localizationDictionary];
    v48 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v47;
      v50 = [v47 allKeys];
      *v126 = 136315650;
      *&v126[4] = "[IXSPlaceholder _materialize]";
      *&v126[12] = 2112;
      *&v126[14] = self;
      *&v126[22] = 2112;
      v127 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: %@: Including lproj localizations for %@", v126, 0x20u);

      v47 = v49;
    }

    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000262AC;
    v92[3] = &unk_100101948;
    v69 = v8;
    v93 = v69;
    v68 = v4;
    v94 = v68;
    v95 = buf;
    v96 = v32 != 0;
    [v47 enumerateKeysAndObjectsUsingBlock:v92];
    v51 = *(*&buf[8] + 40);
    if (v51)
    {
      v52 = v51;

      v20 = v52;
    }

    _Block_object_dispose(buf, 8);
    if (!v51)
    {
      v53 = [(IXSDataPromise *)self seed];
      if ([v53 isAppExtension])
      {
      }

      else
      {
        v54 = [(IXSPlaceholder *)self appExtensionPlaceholders];
        v55 = [v54 count] == 0;

        if (!v55)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v133 = sub_10001F1AC;
          v134 = sub_10001F1BC;
          v135 = 0;
          *v126 = 0;
          *&v126[8] = v126;
          *&v126[16] = 0x3032000000;
          v127 = sub_10001F1AC;
          v128 = sub_10001F1BC;
          v129 = 0;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v56 = [(IXSPlaceholder *)self appExtensionPlaceholders];
          v57 = [v56 countByEnumeratingWithState:&v88 objects:v125 count:16];
          if (v57)
          {
            obj = v56;
            v66 = *v89;
            v65 = v5;
LABEL_59:
            v58 = 0;
            v64 = v57;
            while (1)
            {
              if (*v89 != v66)
              {
                objc_enumerationMutation(obj);
              }

              v59 = *(*(&v88 + 1) + 8 * v58);
              v82 = 0;
              v83 = &v82;
              v84 = 0x3032000000;
              v85 = sub_10001F1AC;
              v86 = sub_10001F1BC;
              v87 = 0;
              v60 = [v59 accessQueue];
              v74[0] = _NSConcreteStackBlock;
              v74[1] = 3221225472;
              v74[2] = sub_100026524;
              v74[3] = &unk_100101970;
              v74[4] = v59;
              v79 = v126;
              v75 = v69;
              v80 = buf;
              v81 = &v82;
              v76 = v68;
              v77 = self;
              v20 = v20;
              v78 = v20;
              dispatch_sync(v60, v74);

              v5 = v65;
              v61 = v83[5];
              if (v61)
              {
                v62 = v61;

                v67 = 2;
                v20 = v62;
              }

              else
              {
                v67 = 0;
              }

              _Block_object_dispose(&v82, 8);
              if (v61)
              {
                break;
              }

              if (v64 == ++v58)
              {
                v57 = [obj countByEnumeratingWithState:&v88 objects:v125 count:16];
                if (v57)
                {
                  goto LABEL_59;
                }

                v67 = 0;
                break;
              }
            }

            v56 = obj;
          }

          else
          {
            v67 = 0;
          }

          _Block_object_dispose(v126, 8);
          _Block_object_dispose(buf, 8);

          if (v67)
          {
            goto LABEL_29;
          }
        }
      }

      [(IXSOwnedDataPromise *)self setStagedPath:v69];
      v33 = 1;
      goto LABEL_30;
    }
  }

LABEL_29:
  [v4 removeItemAtURL:v8 error:0];
  [(IXSPlaceholder *)self cancelForReason:v20 client:15 error:0];
  v33 = 0;
LABEL_30:

  return v33 & 1;
}

- (void)promiseDidBegin:(id)a3
{
  v4 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(IXSDataPromise *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026B90;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (void)promiseDidComplete:(id)a3
{
  v4 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(IXSDataPromise *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026D28;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (void)promiseDidReset:(id)a3
{
  v4 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(IXSDataPromise *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026DD0;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(v5, v6);
}

- (void)promise:(id)a3 didUpdateProgress:(double)a4
{
  v5 = [(IXSDataPromise *)self accessQueue:a3];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026F50;
  v7[3] = &unk_1001010A0;
  v7[4] = self;
  sub_100071134(v6, v7);
}

- (void)promise:(id)a3 didCancelForReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v10);

  v11 = [(IXSDataPromise *)self accessQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100027148;
  v14[3] = &unk_1001015A0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a5;
  v12 = v9;
  v13 = v8;
  sub_100071134(v11, v14);
}

- (BOOL)_checkLocationOfPromiseMatchesOurs:(id)a3 description:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(IXSOwnedDataPromise *)self location];
  v11 = [v9 location];

  v12 = [v10 isEqual:v11];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v20 = "[IXSPlaceholder(IXSPlaceholderIPCMethods) _checkLocationOfPromiseMatchesOurs:description:error:]";
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: %@ promise being set has different location, %@, than this placeholder, %@. : %@", buf, 0x34u);
    }

    v16 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _checkLocationOfPromiseMatchesOurs:description:error:]", 1691, @"IXErrorDomain", 0x3BuLL, 0, 0, @"%@ promise being set has different location, %@, than this placeholder, %@.", v15, v8);
    v13 = v16;
    if (a5)
    {
      v17 = v16;
      *a5 = v13;
    }
  }

  return v12;
}

- (void)_remote_setMetadataPromiseUUID:(id)a3 fromConnection:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v11);

  if (v8)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v12 = +[IXSDataPromiseManager sharedInstance];
    v13 = [v12 promiseForUUID:v8 ofType:objc_opt_class()];

    if (v13)
    {
      v47 = 0;
      v14 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v13 description:@"Metadata" error:&v47];
      v15 = v47;
      if (v14)
      {
        v16 = [v13 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100027ECC;
        block[3] = &unk_100101268;
        v46 = &v48;
        v13 = v13;
        v45 = v13;
        dispatch_sync(v16, block);

        if (v49[3])
        {
          v17 = [objc_opt_class() _metadataFromPromise:v13];
          v18 = v17;
          if (v17)
          {
            v43 = v15;
            v19 = sub_10000DB10(v17, v9, @"placeholder metadata", &v43);
            v20 = v43;

            if (v19)
            {
              if ([v19 isEqual:v18])
              {
                v15 = v20;
              }

              else
              {
                v42 = v20;
                v36 = sub_100040078(v19, &v42);
                v15 = v42;

                if (!v36)
                {
                  goto LABEL_26;
                }

                v35 = v15;
                v30 = [v13 accessQueue];
                v40[0] = _NSConcreteStackBlock;
                v40[1] = 3221225472;
                v40[2] = sub_100027F00;
                v40[3] = &unk_1001010A0;
                v31 = v13;
                v41 = v31;
                dispatch_sync(v30, v40);

                v32 = [IXSPromisedInMemoryData alloc];
                v39 = v35;
                v13 = [(IXSPromisedInMemoryData *)v32 updatedPromiseWithData:v36 error:&v39];
                v15 = v39;

                if (!v13)
                {
LABEL_26:
                  v34 = v36;
                  goto LABEL_27;
                }
              }

              v33 = [(IXSDataPromise *)self accessQueue];
              v37[0] = _NSConcreteStackBlock;
              v37[1] = 3221225472;
              v37[2] = sub_100027F08;
              v37[3] = &unk_100100ED8;
              v37[4] = self;
              v13 = v13;
              v38 = v13;
              dispatch_sync(v33, v37);

              v34 = v38;
LABEL_27:

              goto LABEL_28;
            }

            v15 = v20;
LABEL_28:
            v10[2](v10, v15);

            _Block_object_dispose(&v48, 8);
            goto LABEL_29;
          }

          v27 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10009BB2C();
          }

          v26 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setMetadataPromiseUUID:fromConnection:completion:]", 1745, @"IXErrorDomain", 0x35uLL, 0, 0, @"Metadata promise %@ did not contain a decodeable MIStoreMetadata instance.", v28, v13);
        }

        else
        {
          v24 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10009BAB8();
          }

          v26 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setMetadataPromiseUUID:fromConnection:completion:]", 1739, @"IXErrorDomain", 3uLL, 0, 0, @"Client attempted to set metadata promise that was not complete: %@", v25, v13);
        }

        v29 = v26;

        v18 = 0;
        v19 = 0;
        v15 = v29;
        goto LABEL_28;
      }
    }

    else
    {
      v22 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10009BBA0();
      }

      v15 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setMetadataPromiseUUID:fromConnection:completion:]", 1724, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find metadata promise with UUID %@", v23, v8);
      v13 = 0;
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_28;
  }

  v21 = [(IXSDataPromise *)self accessQueue];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100027EC0;
  v52[3] = &unk_1001010A0;
  v52[4] = self;
  dispatch_sync(v21, v52);

  v10[2](v10, 0);
LABEL_29:
}

- (void)_remote_getMetadataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002804C;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setSinfPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  if (!v6)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:v6 ofType:objc_opt_class()];

  if (!v10)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10009BC14();
    }

    v13 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setSinfPromiseUUID:completion:]", 1806, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find sinf promise with UUID %@", v16, v6);
    goto LABEL_10;
  }

  v19 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Sinf" error:&v19];
  v12 = v19;
  v13 = v12;
  if (!v11)
  {
LABEL_10:
    v7[2](v7, v13);

    goto LABEL_11;
  }

LABEL_6:
  v14 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000282A8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v10 = v10;
  v18 = v10;
  dispatch_sync(v14, block);

  v7[2](v7, 0);
LABEL_11:
}

- (void)_remote_getSinfDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000283EC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setLaunchProhibited:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(IXSDataPromise *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002850C;
  v9[3] = &unk_100101998;
  v9[4] = self;
  v10 = a3;
  dispatch_sync(v8, v9);

  v6[2](v6, 0);
}

- (void)_remote_getLaunchProhibitedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000286A4;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = [(IXSDataPromise *)self accessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000287F0;
  v11[3] = &unk_100100ED8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_sync(v9, v11);

  v7[2](v7, 0);
}

- (void)_remote_getAttributesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028934;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setIconPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:v6 ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BC88();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setIconPromiseUUID:completion:]", 1895, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find icon promise with UUID %@", v15, v6);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Icon" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v7[2](v7, v12);
    goto LABEL_8;
  }

  v13 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028B7C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(v13, block);

  v7[2](v7, 0);
LABEL_8:
}

- (void)_remote_hasIconPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028C94;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getIconPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028E20;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setIconResourcesPromiseUUID:(id)a3 infoPlistIconContentPromiseUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v11);

  v12 = +[IXSDataPromiseManager sharedInstance];
  v13 = [v12 promiseForUUID:v8 ofType:objc_opt_class()];

  if (v13)
  {
    v29 = 0;
    v14 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v13 description:@"Icon resources" error:&v29];
    v15 = v29;
    if (v14)
    {
      v16 = +[IXSDataPromiseManager sharedInstance];
      v17 = [v16 promiseForUUID:v9 ofType:objc_opt_class()];

      if (v17)
      {
        v28 = v15;
        v18 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v17 description:@"Icon Info.plist content" error:&v28];
        v19 = v28;

        if (v18)
        {
          v20 = [(IXSDataPromise *)self accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100029264;
          block[3] = &unk_100101300;
          block[4] = self;
          v26 = v13;
          v27 = v17;
          dispatch_sync(v20, block);

          v10[2](v10, 0);
LABEL_14:

          v15 = v19;
          goto LABEL_15;
        }
      }

      else
      {
        v23 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10009BCFC();
        }

        v19 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setIconResourcesPromiseUUID:infoPlistIconContentPromiseUUID:completion:]", 1959, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find Info.plist icon content promise with UUID %@", v24, v9);
      }

      (v10)[2](v10, v19);
      goto LABEL_14;
    }
  }

  else
  {
    v21 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10009BD70();
    }

    v15 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setIconResourcesPromiseUUID:infoPlistIconContentPromiseUUID:completion:]", 1947, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find icon resources promise with UUID %@", v22, v8);
  }

  (v10)[2](v10, v15);
LABEL_15:
}

- (void)_remote_hasIconResourcesPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029384;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getIconResourcesPromiseAndInfoPlistContent:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10001F1AC;
  v18 = sub_10001F1BC;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029578;
  block[3] = &unk_1001019C0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(v6, block);

  v4[2](v4, v15[5], v9[5], 0);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

- (void)_remote_setLocalizationPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:v6 ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BDE4();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setLocalizationPromiseUUID:completion:]", 2024, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find localization dictionary promise with UUID %@", v15, v6);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Localization" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v7[2](v7, v12);
    goto LABEL_8;
  }

  v13 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029988;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(v13, block);

  v7[2](v7, 0);
LABEL_8:
}

- (void)_remote_getLocalizationDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029ACC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setEntitlementsPromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:v6 ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BE58();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setEntitlementsPromiseUUID:completion:]", 2061, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find entitlements promise with UUID %@", v15, v6);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Entitlements" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v7[2](v7, v12);
    goto LABEL_8;
  }

  v13 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029D14;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(v13, block);

  v7[2](v7, 0);
LABEL_8:
}

- (void)_remote_hasEntitlementsPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029E2C;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getEntitlementsPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029FB8;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setInfoPlistLoctablePromiseUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:v6 ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BECC();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setInfoPlistLoctablePromiseUUID:completion:]", 2113, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find loctable promise with UUID %@", v15, v6);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"InfoPlist loctable" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    v7[2](v7, v12);
    goto LABEL_8;
  }

  v13 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A2C4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(v13, block);

  v7[2](v7, 0);
LABEL_8:
}

- (void)_remote_hasInfoPlistLoctablePromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A3DC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getInfoPlistLoctablePromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A568;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setAppExtensionPlaceholderPromiseUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v54 = self;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  v55 = objc_opt_new();
  v49 = objc_opt_new();
  v48 = objc_opt_new();
  v9 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = v6;
  v51 = [v10 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v51)
  {
    v52 = v9;
    v53 = *v60;
    v46 = v7;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v60 != v53)
      {
        objc_enumerationMutation(v10);
      }

      v12 = *(*(&v59 + 1) + 8 * v11);
      v13 = +[IXSDataPromiseManager sharedInstance];
      v14 = [v13 promiseForUUID:v12 ofType:objc_opt_class()];

      if (!v14)
      {
        v31 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10009C0A4();
        }

        v14 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2170, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find placeholder promise with UUID %@", v32, v12);
        v7 = v46;
        v46[2](v46, v14);
        v23 = v55;
        goto LABEL_44;
      }

      v15 = [(IXSPlaceholder *)v54 bundleID];
      v16 = [v14 bundleID];
      v56 = [v14 bundleDirectoryName];
      v17 = [v14 seed];
      v18 = [v17 placeholderType];

      v19 = [(IXSDataPromise *)v54 seed];
      v20 = [v19 location];

      v21 = [v14 seed];
      v22 = [v21 location];

      if (!IXIsAppExtensionForPlaceholderType(v18))
      {
        v33 = sub_1000031B0(off_100121958);
        v7 = v46;
        v23 = v55;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10009BF40();
        }

        v35 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2183, @"IXErrorDomain", 0x35uLL, 0, 0, @"Placeholder with bundle ID %@ is not an app extension so cannot be set as an app extension placeholder on %@", v34, v16);
        goto LABEL_32;
      }

      v23 = v55;
      if (([v22 isEqual:v20] & 1) == 0)
      {
        v36 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v64 = "[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]";
          v65 = 2112;
          v66 = v16;
          v67 = 2112;
          v68 = v22;
          v69 = 2112;
          v70 = v15;
          v71 = 2112;
          v72 = v20;
          v73 = 2112;
          v74 = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: App extension placeholders array has extension %@ with the location %@, but the parent %@ has the location %@. These locations must match. : %@", buf, 0x3Eu);
        }

        v35 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2189, @"IXErrorDomain", 0x3BuLL, 0, 0, @"App extension placeholders array has extension %@ with the location %@, but the parent %@ has the location %@. These locations must match.", v37, v16);
        v7 = v46;
LABEL_32:
        v9 = v52;
        v7[2](v7, v35);

        goto LABEL_44;
      }

      v24 = v10;
      v25 = [NSString stringWithFormat:@"%@.", v15];
      if (([v16 hasPrefix:v25] & 1) == 0)
      {
        v38 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v64 = "[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]";
          v65 = 2112;
          v66 = v16;
          v67 = 2112;
          v68 = v15;
          v69 = 2112;
          v70 = v25;
          v71 = 2112;
          v72 = 0;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s: Cannot set app extension placeholder with bundle ID %@ on parent app %@ because this extension's bundle ID does not have required bundle ID prefix of %@ : %@", buf, 0x34u);
        }

        sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2196, @"IXErrorDomain", 8uLL, 0, 0, @"Cannot set app extension placeholder with bundle ID %@ on parent app %@ because this extension's bundle ID does not have required bundle ID prefix of %@", v39, v16);
        goto LABEL_39;
      }

      if ([v55 containsObject:v16])
      {
        v40 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10009C030();
        }

        sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2203, @"IXErrorDomain", 9uLL, 0, 0, @"App extension placeholders array has multiple placeholders with the same bundle ID of %@", v41, v16);
        v42 = LABEL_39:;
        v7 = v46;
        v46[2](v46, v42);

        goto LABEL_43;
      }

      [v55 addObject:v16];
      v26 = [v14 bundleDirectoryName];
      if (v26)
      {
        break;
      }

LABEL_20:
      v9 = v52;
      [v52 addObject:v14];

      v11 = v11 + 1;
      v10 = v24;
      if (v51 == v11)
      {
        v7 = v46;
        v51 = [v24 countByEnumeratingWithState:&v59 objects:v75 count:16];
        if (v51)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    v50 = v20;
    if (v18 == 2)
    {
      v27 = v49;
      v28 = @"PlugInKit";
    }

    else
    {
      if (v18 != 3)
      {
        v47 = 0;
        v29 = 0;
        goto LABEL_18;
      }

      v27 = v48;
      v28 = @"ExtensionKit";
    }

    v47 = v28;
    v29 = v27;
LABEL_18:
    if ([v29 containsObject:v56])
    {
      v43 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10009BFB8();
      }

      v45 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2223, @"IXErrorDomain", 0x3CuLL, 0, 0, @"App extension placeholders array has multiple %@ placeholders with the same bundle directory name of %@", v44, v47);
      v7 = v46;
      v46[2](v46, v45);

      v23 = v55;
LABEL_43:
      v10 = v24;
      v9 = v52;
LABEL_44:

      goto LABEL_45;
    }

    [v29 addObject:v56];

    goto LABEL_20;
  }

LABEL_22:

  v30 = [(IXSDataPromise *)v54 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AF14;
  block[3] = &unk_100100ED8;
  block[4] = v54;
  v58 = v9;
  dispatch_sync(v30, block);

  v7[2](v7, 0);
  v23 = v55;
LABEL_45:
}

- (void)_remote_hasAppExtensionPlaceholderPromises:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B02C;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  (*(v4 + 2))(v4, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getAppExtensionPlaceholderPromises:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B1B8;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setConfigurationCompleteWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B4A8;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(v6, block);

  v4[2](v4, 0);
}

@end