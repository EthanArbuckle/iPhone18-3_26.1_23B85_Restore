@interface IXSPlaceholder
+ (id)_metadataFromPromise:(id)promise;
+ (id)_sanitizedFilesystemNameForName:(id)name fileExtension:(id)extension fallingBackToName:(id)toName;
- (BOOL)_checkLocationOfPromiseMatchesOurs:(id)ours description:(id)description error:(id *)error;
- (BOOL)_internal_checkInitWithSeed:(id)seed error:(id *)error;
- (BOOL)_isReadyToMaterialize;
- (BOOL)_materialize;
- (BOOL)_validateClientEntitlements:(id *)entitlements;
- (BOOL)awakeFromSerializationWithLookupBlock:(id)block error:(id *)error;
- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error;
- (BOOL)isComplete;
- (IXSPlaceholder)initWithCoder:(id)coder;
- (IXSPlaceholder)initWithSeed:(id)seed fromConnection:(id)connection error:(id *)error;
- (MIStoreMetadata)metadata;
- (NSData)sinfData;
- (NSDictionary)localizationDictionary;
- (NSString)bundleDirectoryName;
- (NSString)bundleID;
- (NSString)bundleName;
- (double)percentComplete;
- (id)_preparedBundleDirectoryName;
- (id)_promiseUUIDsForPromise:(id)promise;
- (id)subPromiseUUIDs;
- (unint64_t)installType;
- (unint64_t)totalBytesNeededOnDisk;
- (void)_cancelPromise:(id)promise forReason:(id)reason client:(unint64_t)client;
- (void)_decommissionPromise:(id)promise;
- (void)_materializeIfReady;
- (void)_remote_getAppExtensionPlaceholderPromises:(id)promises;
- (void)_remote_getAttributesWithCompletion:(id)completion;
- (void)_remote_getEntitlementsPromise:(id)promise;
- (void)_remote_getIconPromise:(id)promise;
- (void)_remote_getIconResourcesPromiseAndInfoPlistContent:(id)content;
- (void)_remote_getInfoPlistLoctablePromise:(id)promise;
- (void)_remote_getLaunchProhibitedWithCompletion:(id)completion;
- (void)_remote_getLocalizationDictionary:(id)dictionary;
- (void)_remote_getMetadataWithCompletion:(id)completion;
- (void)_remote_getSinfDataWithCompletion:(id)completion;
- (void)_remote_hasAppExtensionPlaceholderPromises:(id)promises;
- (void)_remote_hasEntitlementsPromise:(id)promise;
- (void)_remote_hasIconPromise:(id)promise;
- (void)_remote_hasIconResourcesPromise:(id)promise;
- (void)_remote_hasInfoPlistLoctablePromise:(id)promise;
- (void)_remote_setAppExtensionPlaceholderPromiseUUIDs:(id)ds completion:(id)completion;
- (void)_remote_setAttributes:(id)attributes completion:(id)completion;
- (void)_remote_setConfigurationCompleteWithCompletion:(id)completion;
- (void)_remote_setEntitlementsPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setIconPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setIconResourcesPromiseUUID:(id)d infoPlistIconContentPromiseUUID:(id)iD completion:(id)completion;
- (void)_remote_setInfoPlistLoctablePromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setLaunchProhibited:(BOOL)prohibited completion:(id)completion;
- (void)_remote_setLocalizationPromiseUUID:(id)d completion:(id)completion;
- (void)_remote_setMetadataPromiseUUID:(id)d fromConnection:(id)connection completion:(id)completion;
- (void)_remote_setSinfPromiseUUID:(id)d completion:(id)completion;
- (void)decommission;
- (void)encodeWithCoder:(id)coder;
- (void)promise:(id)promise didCancelForReason:(id)reason client:(unint64_t)client;
- (void)promise:(id)promise didUpdateProgress:(double)progress;
- (void)promiseDidBegin:(id)begin;
- (void)promiseDidComplete:(id)complete;
- (void)promiseDidReset:(id)reset;
- (void)setAppExtensionPlaceholders:(id)placeholders;
- (void)setAttributes:(id)attributes;
- (void)setConfigurationComplete:(BOOL)complete;
- (void)setEntitlements:(id)entitlements;
- (void)setIcon:(id)icon;
- (void)setIconResourcesPromise:(id)promise;
- (void)setIconResourcesPromise:(id)promise andInfoPlistIconContentPromise:(id)contentPromise;
- (void)setInfoPlistIconContentPromise:(id)promise;
- (void)setInfoPlistLoctable:(id)loctable;
- (void)setLocalizationDictionaryPromise:(id)promise;
- (void)setMetadataPromise:(id)promise;
- (void)setPercentComplete:(double)complete;
- (void)setSinfPromise:(id)promise;
@end

@implementation IXSPlaceholder

- (BOOL)_internal_checkInitWithSeed:(id)seed error:(id *)error
{
  seedCopy = seed;
  bundleName = [seedCopy bundleName];

  if (bundleName)
  {
    bundleID = [seedCopy bundleID];

    if (bundleID)
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
  if (error)
  {
    v8 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (IXSPlaceholder)initWithSeed:(id)seed fromConnection:(id)connection error:(id *)error
{
  seedCopy = seed;
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = IXSPlaceholder;
  v10 = [(IXSOwnedDataPromise *)&v14 initWithSeed:seedCopy error:error];
  v11 = v10;
  if (v10)
  {
    if (![(IXSPlaceholder *)v10 _internal_checkInitWithSeed:seedCopy error:error])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11->_creatorHadWebPlaceholderInstallEntitlement = sub_10000D71C(connectionCopy, @"com.apple.private.appinstall.install-webkit-push-placeholder");
  }

  v12 = v11;
LABEL_6:

  return v12;
}

- (IXSPlaceholder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = IXSPlaceholder;
  v5 = [(IXSOwnedDataPromise *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconPromiseUUID"];
    iconPromiseUUID = v5->_iconPromiseUUID;
    v5->_iconPromiseUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconResourcesPromiseUUID"];
    iconResourcesPromiseUUID = v5->_iconResourcesPromiseUUID;
    v5->_iconResourcesPromiseUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"infoPlistIconContentPromiseUUID"];
    infoPlistIconContentPromiseUUID = v5->_infoPlistIconContentPromiseUUID;
    v5->_infoPlistIconContentPromiseUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlementsPromiseUUID"];
    entitlementsPromiseUUID = v5->_entitlementsPromiseUUID;
    v5->_entitlementsPromiseUUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"infoPlistLoctablePromiseUUID"];
    infoPlistLoctablePromiseUUID = v5->_infoPlistLoctablePromiseUUID;
    v5->_infoPlistLoctablePromiseUUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataPromiseUUID"];
    metadataPromiseUUID = v5->_metadataPromiseUUID;
    v5->_metadataPromiseUUID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sinfPromiseUUID"];
    sinfPromiseUUID = v5->_sinfPromiseUUID;
    v5->_sinfPromiseUUID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationDictionaryPromiseUUID"];
    localizationDictionaryPromiseUUID = v5->_localizationDictionaryPromiseUUID;
    v5->_localizationDictionaryPromiseUUID = v20;

    v22 = [coderCopy containsValueForKey:@"appExtensionPlaceholdersPromiseUUIDs"];
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

    v26 = [coderCopy decodeObjectOfClasses:v24 forKey:v25];
    appExtensionPlaceholdersPromiseUUIDs = v5->_appExtensionPlaceholdersPromiseUUIDs;
    v5->_appExtensionPlaceholdersPromiseUUIDs = v26;

    v5->_sentDidBegin = [coderCopy decodeBoolForKey:@"sentDidBegin"];
    v5->_configurationComplete = [coderCopy decodeBoolForKey:@"configurationComplete"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v28;

    v5->_creatorHadWebPlaceholderInstallEntitlement = [coderCopy decodeBoolForKey:@"creatorHadWebPlaceholderInstallEntitlement"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v16.receiver = self;
  v16.super_class = IXSPlaceholder;
  [(IXSOwnedDataPromise *)&v16 encodeWithCoder:coderCopy];
  iconPromiseUUID = [(IXSPlaceholder *)self iconPromiseUUID];
  [coderCopy encodeObject:iconPromiseUUID forKey:@"iconPromiseUUID"];

  iconResourcesPromiseUUID = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
  [coderCopy encodeObject:iconResourcesPromiseUUID forKey:@"iconResourcesPromiseUUID"];

  infoPlistIconContentPromiseUUID = [(IXSPlaceholder *)self infoPlistIconContentPromiseUUID];
  [coderCopy encodeObject:infoPlistIconContentPromiseUUID forKey:@"infoPlistIconContentPromiseUUID"];

  entitlementsPromiseUUID = [(IXSPlaceholder *)self entitlementsPromiseUUID];
  [coderCopy encodeObject:entitlementsPromiseUUID forKey:@"entitlementsPromiseUUID"];

  infoPlistLoctablePromiseUUID = [(IXSPlaceholder *)self infoPlistLoctablePromiseUUID];
  [coderCopy encodeObject:infoPlistLoctablePromiseUUID forKey:@"infoPlistLoctablePromiseUUID"];

  metadataPromiseUUID = [(IXSPlaceholder *)self metadataPromiseUUID];
  [coderCopy encodeObject:metadataPromiseUUID forKey:@"metadataPromiseUUID"];

  sinfPromiseUUID = [(IXSPlaceholder *)self sinfPromiseUUID];
  [coderCopy encodeObject:sinfPromiseUUID forKey:@"sinfPromiseUUID"];

  localizationDictionaryPromiseUUID = [(IXSPlaceholder *)self localizationDictionaryPromiseUUID];
  [coderCopy encodeObject:localizationDictionaryPromiseUUID forKey:@"localizationDictionaryPromiseUUID"];

  appExtensionPlaceholdersPromiseUUIDs = [(IXSPlaceholder *)self appExtensionPlaceholdersPromiseUUIDs];
  [coderCopy encodeObject:appExtensionPlaceholdersPromiseUUIDs forKey:@"appExtensionPlaceholdersPromiseUUIDs"];

  [coderCopy encodeBool:-[IXSPlaceholder sentDidBegin](self forKey:{"sentDidBegin"), @"sentDidBegin"}];
  [coderCopy encodeBool:-[IXSPlaceholder configurationComplete](self forKey:{"configurationComplete"), @"configurationComplete"}];
  attributes = [(IXSPlaceholder *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];

  [coderCopy encodeBool:-[IXSPlaceholder creatorHadWebPlaceholderInstallEntitlement](self forKey:{"creatorHadWebPlaceholderInstallEntitlement"), @"creatorHadWebPlaceholderInstallEntitlement"}];
}

- (BOOL)awakeFromSerializationWithLookupBlock:(id)block error:(id *)error
{
  blockCopy = block;
  v223 = 0;
  v224 = &v223;
  v225 = 0x3032000000;
  v226 = sub_10001F1AC;
  v227 = sub_10001F1BC;
  v228 = 0;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);
  selfCopy = self;

  awakeningError = [(IXSPlaceholder *)self awakeningError];

  if (awakeningError)
  {
    if (error)
    {
      [(IXSPlaceholder *)self awakeningError];
      *error = v7 = 0;
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
  bundleID = [(IXSPlaceholder *)self bundleID];
  if ([bundleID containsEmbeddedNULLCharacter])
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(IXSDataPromise *)self name];
      objc_claimAutoreleasedReturnValue();
      sub_10009AAE0();
    }

    name = [(IXSDataPromise *)self name];
    v11 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 191, @"IXErrorDomain", 0x2CuLL, 0, 0, @"%@: Bundle identifier %@ contains an embedded NULL character, which is not allowed", v10, name);

    v12 = v224[5];
    v224[5] = v11;
  }

  bundleDirectoryName = [(IXSPlaceholder *)self bundleDirectoryName];
  if ([bundleDirectoryName containsEmbeddedNULLCharacter])
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10009AB30();
    }

    v15 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 196, @"IXErrorDomain", 0x2CuLL, 0, 0, @"%@: Bundle directory name %@ contains an embedded NULL character, which is not allowed", v14, bundleDirectoryName);
    v16 = v224[5];
    v224[5] = v15;
  }

  bundleName = [(IXSPlaceholder *)self bundleName];
  if ([bundleName containsEmbeddedNULLCharacter])
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(IXSPlaceholder *)self bundleName];
      objc_claimAutoreleasedReturnValue();
      sub_10009ABA8();
    }

    bundleName2 = [(IXSPlaceholder *)self bundleName];
    v20 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 201, @"IXErrorDomain", 0x2CuLL, 0, 0, @"%@: Bundle name %@ contains an embedded NULL character, which is not allowed", v19, bundleName2);

    v21 = v224[5];
    v224[5] = v20;
  }

  iconPromiseUUID = [(IXSPlaceholder *)self iconPromiseUUID];

  selfCopy4 = self;
  if (iconPromiseUUID)
  {
    iconPromiseUUID2 = [(IXSPlaceholder *)self iconPromiseUUID];
    v25 = objc_opt_class();
    v26 = blockCopy[2](blockCopy, iconPromiseUUID2, v25);
    icon = self->_icon;
    self->_icon = v26;

    v28 = self->_icon;
    if (v28)
    {
      accessQueue2 = [(IXSDataPromise *)v28 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F1C4;
      block[3] = &unk_100101830;
      block[4] = self;
      v221 = blockCopy;
      v222 = &v223;
      dispatch_sync(accessQueue2, block);

      selfCopy4 = self;
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

      name2 = [(IXSDataPromise *)self name];
      iconPromiseUUID3 = [(IXSPlaceholder *)self iconPromiseUUID];
      v33 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 210, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate icon promise with UUID %@", v32, name2);

      v34 = v224[5];
      v224[5] = v33;

      selfCopy4 = self;
      [(IXSPlaceholder *)self setIconPromiseUUID:0];
    }
  }

  iconResourcesPromiseUUID = [(IXSPlaceholder *)selfCopy4 iconResourcesPromiseUUID];

  selfCopy7 = self;
  if (iconResourcesPromiseUUID)
  {
    iconResourcesPromiseUUID2 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
    v38 = objc_opt_class();
    v39 = blockCopy[2](blockCopy, iconResourcesPromiseUUID2, v38);
    iconResourcesPromise = self->_iconResourcesPromise;
    self->_iconResourcesPromise = v39;

    v41 = self->_iconResourcesPromise;
    if (v41)
    {
      accessQueue3 = [(IXSDataPromise *)v41 accessQueue];
      v217[0] = _NSConcreteStackBlock;
      v217[1] = 3221225472;
      v217[2] = sub_10001F270;
      v217[3] = &unk_100101830;
      v217[4] = self;
      v218 = blockCopy;
      v219 = &v223;
      dispatch_sync(accessQueue3, v217);

      selfCopy7 = self;
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

      name3 = [(IXSDataPromise *)self name];
      iconResourcesPromiseUUID3 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
      v46 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 229, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate icon resources promise with UUID %@", v45, name3);

      v47 = v224[5];
      v224[5] = v46;

      selfCopy7 = self;
      [(IXSPlaceholder *)self setIconResourcesPromiseUUID:0];
    }
  }

  infoPlistIconContentPromiseUUID = [(IXSPlaceholder *)selfCopy7 infoPlistIconContentPromiseUUID];

  selfCopy10 = self;
  if (infoPlistIconContentPromiseUUID)
  {
    infoPlistIconContentPromiseUUID2 = [(IXSPlaceholder *)self infoPlistIconContentPromiseUUID];
    v51 = objc_opt_class();
    v52 = blockCopy[2](blockCopy, infoPlistIconContentPromiseUUID2, v51);
    infoPlistIconContentPromise = self->_infoPlistIconContentPromise;
    self->_infoPlistIconContentPromise = v52;

    v54 = self->_infoPlistIconContentPromise;
    if (v54)
    {
      accessQueue4 = [(IXSDataPromise *)v54 accessQueue];
      v214[0] = _NSConcreteStackBlock;
      v214[1] = 3221225472;
      v214[2] = sub_10001F31C;
      v214[3] = &unk_100101830;
      v214[4] = self;
      v215 = blockCopy;
      v216 = &v223;
      dispatch_sync(accessQueue4, v214);

      selfCopy10 = self;
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

      name4 = [(IXSDataPromise *)self name];
      iconResourcesPromiseUUID4 = [(IXSPlaceholder *)self iconResourcesPromiseUUID];
      v59 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 248, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate icon resources promise with UUID %@", v58, name4);

      v60 = v224[5];
      v224[5] = v59;

      selfCopy10 = self;
      [(IXSPlaceholder *)self setInfoPlistIconContentPromiseUUID:0];
    }
  }

  iconResourcesPromise = [(IXSPlaceholder *)selfCopy10 iconResourcesPromise];
  if (iconResourcesPromise)
  {
    infoPlistIconContentPromise = [(IXSPlaceholder *)selfCopy10 infoPlistIconContentPromise];
    v63 = infoPlistIconContentPromise == 0;

    selfCopy10 = selfCopy;
    if (v63)
    {
      [(IXSPlaceholder *)selfCopy setIconResourcesPromise:0];
      [(IXSPlaceholder *)selfCopy setIconResourcesPromiseUUID:0];
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

  iconResourcesPromise2 = [(IXSPlaceholder *)selfCopy10 iconResourcesPromise];
  if (iconResourcesPromise2)
  {
LABEL_49:

    goto LABEL_50;
  }

  infoPlistIconContentPromise2 = [(IXSPlaceholder *)selfCopy10 infoPlistIconContentPromise];
  v66 = infoPlistIconContentPromise2 == 0;

  if (!v66)
  {
    [(IXSPlaceholder *)selfCopy setInfoPlistIconContentPromise:0];
    [(IXSPlaceholder *)selfCopy setInfoPlistIconContentPromiseUUID:0];
    v67 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      sub_10009AD14();
    }

    v68 = @"%@: Found info plist icon content promise but not icon resources promise";
    v69 = 271;
LABEL_48:

    v71 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", v69, @"IXErrorDomain", 3uLL, 0, 0, v68, v70, selfCopy);
    iconResourcesPromise2 = v224[5];
    v224[5] = v71;
    goto LABEL_49;
  }

LABEL_50:
  entitlementsPromiseUUID = [(IXSPlaceholder *)selfCopy entitlementsPromiseUUID];

  v73 = selfCopy;
  if (entitlementsPromiseUUID)
  {
    entitlementsPromiseUUID2 = [(IXSPlaceholder *)selfCopy entitlementsPromiseUUID];
    v75 = objc_opt_class();
    v76 = blockCopy[2](blockCopy, entitlementsPromiseUUID2, v75);
    entitlements = selfCopy->_entitlements;
    selfCopy->_entitlements = v76;

    v78 = selfCopy->_entitlements;
    if (v78)
    {
      accessQueue5 = [(IXSDataPromise *)v78 accessQueue];
      v211[0] = _NSConcreteStackBlock;
      v211[1] = 3221225472;
      v211[2] = sub_10001F3C8;
      v211[3] = &unk_100101830;
      v211[4] = selfCopy;
      v212 = blockCopy;
      v213 = &v223;
      dispatch_sync(accessQueue5, v211);

      v73 = selfCopy;
    }

    else
    {
      v80 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)selfCopy name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)selfCopy entitlementsPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AD88();
      }

      name5 = [(IXSDataPromise *)selfCopy name];
      entitlementsPromiseUUID3 = [(IXSPlaceholder *)selfCopy entitlementsPromiseUUID];
      v83 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 277, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate entitlements promise with UUID %@", v82, name5);

      v84 = v224[5];
      v224[5] = v83;

      v73 = selfCopy;
      [(IXSPlaceholder *)selfCopy setEntitlementsPromiseUUID:0];
    }
  }

  infoPlistLoctablePromiseUUID = [(IXSPlaceholder *)v73 infoPlistLoctablePromiseUUID];

  v86 = selfCopy;
  if (infoPlistLoctablePromiseUUID)
  {
    infoPlistLoctablePromiseUUID2 = [(IXSPlaceholder *)selfCopy infoPlistLoctablePromiseUUID];
    v88 = objc_opt_class();
    v89 = blockCopy[2](blockCopy, infoPlistLoctablePromiseUUID2, v88);
    infoPlistLoctable = selfCopy->_infoPlistLoctable;
    selfCopy->_infoPlistLoctable = v89;

    v91 = selfCopy->_infoPlistLoctable;
    if (v91)
    {
      accessQueue6 = [(IXSDataPromise *)v91 accessQueue];
      v208[0] = _NSConcreteStackBlock;
      v208[1] = 3221225472;
      v208[2] = sub_10001F474;
      v208[3] = &unk_100101830;
      v208[4] = selfCopy;
      v209 = blockCopy;
      v210 = &v223;
      dispatch_sync(accessQueue6, v208);

      v86 = selfCopy;
    }

    else
    {
      v93 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)selfCopy name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)selfCopy infoPlistLoctablePromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009ADDC();
      }

      name6 = [(IXSDataPromise *)selfCopy name];
      infoPlistLoctablePromiseUUID3 = [(IXSPlaceholder *)selfCopy infoPlistLoctablePromiseUUID];
      v96 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 296, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate loctable promise with UUID %@", v95, name6);

      v97 = v224[5];
      v224[5] = v96;

      v86 = selfCopy;
      [(IXSPlaceholder *)selfCopy setInfoPlistLoctablePromiseUUID:0];
    }
  }

  metadataPromiseUUID = [(IXSPlaceholder *)v86 metadataPromiseUUID];

  v99 = selfCopy;
  if (metadataPromiseUUID)
  {
    metadataPromiseUUID2 = [(IXSPlaceholder *)selfCopy metadataPromiseUUID];
    v101 = objc_opt_class();
    v102 = blockCopy[2](blockCopy, metadataPromiseUUID2, v101);
    metadataPromise = selfCopy->_metadataPromise;
    selfCopy->_metadataPromise = v102;

    v104 = selfCopy->_metadataPromise;
    if (v104)
    {
      accessQueue7 = [(IXSDataPromise *)v104 accessQueue];
      v205[0] = _NSConcreteStackBlock;
      v205[1] = 3221225472;
      v205[2] = sub_10001F520;
      v205[3] = &unk_100101830;
      v205[4] = selfCopy;
      v206 = blockCopy;
      v207 = &v223;
      dispatch_sync(accessQueue7, v205);

      v99 = selfCopy;
    }

    else
    {
      v106 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)selfCopy name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)selfCopy metadataPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AE30();
      }

      name7 = [(IXSDataPromise *)selfCopy name];
      metadataPromiseUUID3 = [(IXSPlaceholder *)selfCopy metadataPromiseUUID];
      v109 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 315, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate metadata promise with UUID %@", v108, name7);

      v110 = v224[5];
      v224[5] = v109;

      v99 = selfCopy;
      [(IXSPlaceholder *)selfCopy setMetadataPromiseUUID:0];
    }
  }

  sinfPromiseUUID = [(IXSPlaceholder *)v99 sinfPromiseUUID];

  v112 = selfCopy;
  if (sinfPromiseUUID)
  {
    sinfPromiseUUID2 = [(IXSPlaceholder *)selfCopy sinfPromiseUUID];
    v114 = objc_opt_class();
    v115 = blockCopy[2](blockCopy, sinfPromiseUUID2, v114);
    sinfPromise = selfCopy->_sinfPromise;
    selfCopy->_sinfPromise = v115;

    v117 = selfCopy->_sinfPromise;
    if (v117)
    {
      accessQueue8 = [(IXSDataPromise *)v117 accessQueue];
      v202[0] = _NSConcreteStackBlock;
      v202[1] = 3221225472;
      v202[2] = sub_10001F5CC;
      v202[3] = &unk_100101830;
      v202[4] = selfCopy;
      v203 = blockCopy;
      v204 = &v223;
      dispatch_sync(accessQueue8, v202);

      v112 = selfCopy;
    }

    else
    {
      v119 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)selfCopy name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)selfCopy sinfPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AE30();
      }

      name8 = [(IXSDataPromise *)selfCopy name];
      sinfPromiseUUID3 = [(IXSPlaceholder *)selfCopy sinfPromiseUUID];
      v122 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 334, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate metadata promise with UUID %@", v121, name8);

      v123 = v224[5];
      v224[5] = v122;

      v112 = selfCopy;
      [(IXSPlaceholder *)selfCopy setSinfPromiseUUID:0];
    }
  }

  localizationDictionaryPromiseUUID = [(IXSPlaceholder *)v112 localizationDictionaryPromiseUUID];

  v125 = selfCopy;
  if (localizationDictionaryPromiseUUID)
  {
    localizationDictionaryPromiseUUID2 = [(IXSPlaceholder *)selfCopy localizationDictionaryPromiseUUID];
    v127 = objc_opt_class();
    v128 = blockCopy[2](blockCopy, localizationDictionaryPromiseUUID2, v127);
    localizationDictionaryPromise = selfCopy->_localizationDictionaryPromise;
    selfCopy->_localizationDictionaryPromise = v128;

    v130 = selfCopy->_localizationDictionaryPromise;
    if (v130)
    {
      accessQueue9 = [(IXSDataPromise *)v130 accessQueue];
      v199[0] = _NSConcreteStackBlock;
      v199[1] = 3221225472;
      v199[2] = sub_10001F678;
      v199[3] = &unk_100101830;
      v199[4] = selfCopy;
      v200 = blockCopy;
      v201 = &v223;
      dispatch_sync(accessQueue9, v199);

      v125 = selfCopy;
    }

    else
    {
      v132 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)selfCopy name];
        objc_claimAutoreleasedReturnValue();
        [(IXSPlaceholder *)selfCopy localizationDictionaryPromiseUUID];
        objc_claimAutoreleasedReturnValue();
        sub_10009AE84();
      }

      name9 = [(IXSDataPromise *)selfCopy name];
      localizationDictionaryPromiseUUID3 = [(IXSPlaceholder *)selfCopy localizationDictionaryPromiseUUID];
      v135 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 353, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate localization dictionary promise with UUID %@", v134, name9);

      v136 = v224[5];
      v224[5] = v135;

      v125 = selfCopy;
      [(IXSPlaceholder *)selfCopy setLocalizationDictionaryPromiseUUID:0];
    }
  }

  appExtensionPlaceholdersPromiseUUIDs = [(IXSPlaceholder *)v125 appExtensionPlaceholdersPromiseUUIDs];

  if (appExtensionPlaceholdersPromiseUUIDs)
  {
    v185 = objc_opt_new();
    v138 = objc_opt_new();
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    appExtensionPlaceholdersPromiseUUIDs2 = [(IXSPlaceholder *)selfCopy appExtensionPlaceholdersPromiseUUIDs];
    v140 = [appExtensionPlaceholdersPromiseUUIDs2 countByEnumeratingWithState:&v195 objects:v237 count:16];
    if (v140)
    {
      v141 = *v196;
      obj = appExtensionPlaceholdersPromiseUUIDs2;
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
          v145 = blockCopy[2](blockCopy, v143, v144);
          if (v145)
          {
            [v185 addObject:v145];
            accessQueue10 = [v145 accessQueue];
            v188[0] = _NSConcreteStackBlock;
            v188[1] = 3221225472;
            v188[2] = sub_10001F724;
            v188[3] = &unk_100101858;
            v189 = v145;
            v147 = blockCopy;
            v190 = selfCopy;
            v193 = v147;
            v194 = &v223;
            v191 = v138;
            v192 = v143;
            dispatch_sync(accessQueue10, v188);
          }

          else
          {
            v148 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
            {
              name10 = [(IXSDataPromise *)selfCopy name];
              *buf = 136315906;
              v230 = "[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]";
              v231 = 2112;
              v232 = name10;
              v233 = 2112;
              v234 = v143;
              v235 = 2112;
              v236 = 0;
              _os_log_error_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%s: %@: Failed to locate placeholder promise with UUID %@ : %@", buf, 0x2Au);
            }

            name11 = [(IXSDataPromise *)selfCopy name];
            v151 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 387, @"IXErrorDomain", 3uLL, 0, 0, @"%@: Failed to locate placeholder promise with UUID %@", v150, name11);

            v152 = v224[5];
            v224[5] = v151;

            [v138 addObject:v143];
          }
        }

        appExtensionPlaceholdersPromiseUUIDs2 = obj;
        v140 = [obj countByEnumeratingWithState:&v195 objects:v237 count:16];
      }

      while (v140);
    }

    appExtensionPlaceholdersPromiseUUIDs3 = [(IXSPlaceholder *)selfCopy appExtensionPlaceholdersPromiseUUIDs];
    v155 = [appExtensionPlaceholdersPromiseUUIDs3 mutableCopy];

    [v155 removeObjectsInArray:v138];
    if ([v155 count])
    {
      v156 = [v155 copy];
      [(IXSPlaceholder *)selfCopy setAppExtensionPlaceholdersPromiseUUIDs:v156];
    }

    else
    {
      [(IXSPlaceholder *)selfCopy setAppExtensionPlaceholdersPromiseUUIDs:0];
    }

    if ([v185 count])
    {
      objc_storeStrong(&selfCopy->_appExtensionPlaceholders, v185);
    }
  }

  v157 = selfCopy;
  if (!v224[5] && [(IXSPlaceholder *)selfCopy isComplete]&& ![(IXSOwnedDataPromise *)selfCopy stagedPathMayNotExistWhenAwakening])
  {
    stagedPath = [(IXSOwnedDataPromise *)selfCopy stagedPath];
    targetLastPathComponent = [(IXSOwnedDataPromise *)selfCopy targetLastPathComponent];
    if (targetLastPathComponent)
    {
      v160 = [stagedPath URLByAppendingPathComponent:targetLastPathComponent isDirectory:1];

      stagedPath = v160;
    }

    v161 = +[IXFileManager defaultManager];
    v162 = [v161 itemExistsAtURL:stagedPath];

    if ((v162 & 1) == 0)
    {
      v163 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
      {
        [(IXSDataPromise *)selfCopy uniqueIdentifier];
        objc_claimAutoreleasedReturnValue();
        [stagedPath path];
        objc_claimAutoreleasedReturnValue();
        sub_10009AED8();
      }

      uniqueIdentifier = [(IXSDataPromise *)selfCopy uniqueIdentifier];
      path = [stagedPath path];
      v166 = sub_1000405FC("[IXSPlaceholder awakeFromSerializationWithLookupBlock:error:]", 417, @"IXErrorDomain", 3uLL, 0, 0, @"IXSPlaceholderPromise with UUID %@ was complete but found nothing at %@", v165, uniqueIdentifier);

      v167 = v224[5];
      v224[5] = v166;
    }

    v157 = selfCopy;
  }

  v168 = v224[5];
  if (error && v168)
  {
    v169 = v168;
    *error = v168;
    v168 = v224[5];
    v157 = selfCopy;
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

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_icon != iconCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setIcon:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = iconCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting icon promise to %@", buf, 0x20u);
    }

    icon = self->_icon;
    if (icon)
    {
      accessQueue2 = [(IXSDataPromise *)icon accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F9D8;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_icon, icon);
    if (iconCopy)
    {
      accessQueue3 = [(IXSDataPromise *)iconCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001F9EC;
      v12[3] = &unk_100100ED8;
      v13 = iconCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)iconCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setIconPromiseUUID:uniqueIdentifier];

    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setIconResourcesPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_iconResourcesPromise != promiseCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setIconResourcesPromise:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = promiseCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting icon resources promise to %@", buf, 0x20u);
    }

    iconResourcesPromise = self->_iconResourcesPromise;
    if (iconResourcesPromise)
    {
      accessQueue2 = [(IXSDataPromise *)iconResourcesPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FC4C;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_iconResourcesPromise, promise);
    if (promiseCopy)
    {
      accessQueue3 = [(IXSDataPromise *)promiseCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001FC60;
      v12[3] = &unk_100100ED8;
      v13 = promiseCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)promiseCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setIconResourcesPromiseUUID:uniqueIdentifier];
  }
}

- (void)setInfoPlistIconContentPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_infoPlistIconContentPromise != promiseCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setInfoPlistIconContentPromise:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = promiseCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting Info.plist icon content promise to %@", buf, 0x20u);
    }

    infoPlistIconContentPromise = self->_infoPlistIconContentPromise;
    if (infoPlistIconContentPromise)
    {
      accessQueue2 = [(IXSDataPromise *)infoPlistIconContentPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FEC0;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_infoPlistIconContentPromise, promise);
    if (promiseCopy)
    {
      accessQueue3 = [(IXSDataPromise *)promiseCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001FED4;
      v12[3] = &unk_100100ED8;
      v13 = promiseCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)promiseCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setInfoPlistIconContentPromiseUUID:uniqueIdentifier];
  }
}

- (void)setIconResourcesPromise:(id)promise andInfoPlistIconContentPromise:(id)contentPromise
{
  contentPromiseCopy = contentPromise;
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSPlaceholder *)self setIconResourcesPromise:promiseCopy];
  [(IXSPlaceholder *)self setInfoPlistIconContentPromise:contentPromiseCopy];

  [(IXSDataPromise *)self saveState];

  [(IXSPlaceholder *)self _materializeIfReady];
}

- (void)setMetadataPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_metadataPromise != promiseCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setMetadataPromise:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = promiseCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting metadata promise to %@", buf, 0x20u);
    }

    metadataPromise = self->_metadataPromise;
    if (metadataPromise)
    {
      accessQueue2 = [(IXSDataPromise *)metadataPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000201CC;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_metadataPromise, promise);
    if (promiseCopy)
    {
      accessQueue3 = [(IXSDataPromise *)promiseCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000201E0;
      v12[3] = &unk_100100ED8;
      v13 = promiseCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)promiseCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setMetadataPromiseUUID:uniqueIdentifier];

    [(IXSDataPromise *)self saveState];
  }
}

- (void)setSinfPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_sinfPromise != promiseCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setSinfPromise:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = promiseCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting sinf promise to %@", buf, 0x20u);
    }

    sinfPromise = self->_sinfPromise;
    if (sinfPromise)
    {
      accessQueue2 = [(IXSDataPromise *)sinfPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020448;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_sinfPromise, promise);
    if (promiseCopy)
    {
      accessQueue3 = [(IXSDataPromise *)promiseCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002045C;
      v12[3] = &unk_100100ED8;
      v13 = promiseCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)promiseCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setSinfPromiseUUID:uniqueIdentifier];

    [(IXSDataPromise *)self saveState];
  }
}

- (void)setLocalizationDictionaryPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_localizationDictionaryPromise != promiseCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setLocalizationDictionaryPromise:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = promiseCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting localization dict promise to %@", buf, 0x20u);
    }

    localizationDictionaryPromise = self->_localizationDictionaryPromise;
    if (localizationDictionaryPromise)
    {
      accessQueue2 = [(IXSDataPromise *)localizationDictionaryPromise accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000206C4;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_localizationDictionaryPromise, promise);
    if (promiseCopy)
    {
      accessQueue3 = [(IXSDataPromise *)promiseCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000206D8;
      v12[3] = &unk_100100ED8;
      v13 = promiseCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)promiseCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setLocalizationDictionaryPromiseUUID:uniqueIdentifier];

    [(IXSDataPromise *)self saveState];
  }
}

- (void)setEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_entitlements != entitlementsCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setEntitlements:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = entitlementsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting entitlements promise to %@", buf, 0x20u);
    }

    entitlements = self->_entitlements;
    if (entitlements)
    {
      accessQueue2 = [(IXSDataPromise *)entitlements accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020948;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_entitlements, entitlements);
    if (entitlementsCopy)
    {
      accessQueue3 = [(IXSDataPromise *)entitlementsCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10002095C;
      v12[3] = &unk_100100ED8;
      v13 = entitlementsCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)entitlementsCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setEntitlementsPromiseUUID:uniqueIdentifier];

    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setInfoPlistLoctable:(id)loctable
{
  loctableCopy = loctable;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_infoPlistLoctable != loctableCopy)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[IXSPlaceholder setInfoPlistLoctable:]";
      v18 = 2112;
      selfCopy = self;
      v20 = 2112;
      v21 = loctableCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting loctable promise to %@", buf, 0x20u);
    }

    infoPlistLoctable = self->_infoPlistLoctable;
    if (infoPlistLoctable)
    {
      accessQueue2 = [(IXSDataPromise *)infoPlistLoctable accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020BCC;
      block[3] = &unk_1001010A0;
      block[4] = self;
      dispatch_sync(accessQueue2, block);
    }

    objc_storeStrong(&self->_infoPlistLoctable, loctable);
    if (loctableCopy)
    {
      accessQueue3 = [(IXSDataPromise *)loctableCopy accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100020BE0;
      v12[3] = &unk_100100ED8;
      v13 = loctableCopy;
      selfCopy2 = self;
      dispatch_sync(accessQueue3, v12);
    }

    uniqueIdentifier = [(IXSDataPromise *)loctableCopy uniqueIdentifier];
    [(IXSPlaceholder *)self setInfoPlistLoctablePromiseUUID:uniqueIdentifier];

    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setAppExtensionPlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v25 = objc_opt_new();
  selfCopy = self;
  bundleID = [(IXSPlaceholder *)self bundleID];
  v24 = [NSString stringWithFormat:@"%@.", bundleID];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = placeholdersCopy;
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
        accessQueue2 = [v13 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100020FE4;
        block[3] = &unk_1001014C0;
        block[4] = v13;
        v32 = v24;
        selfCopy2 = self;
        v34 = v25;
        dispatch_sync(accessQueue2, block);
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
          accessQueue3 = [v20 accessQueue];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_1000211CC;
          v26[3] = &unk_1001010A0;
          v26[4] = v20;
          dispatch_sync(accessQueue3, v26);
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
    v42 = selfCopy;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: %@: setting app extension placeholder promises to %@", buf, 0x20u);
  }

  appExtensionPlaceholders = selfCopy->_appExtensionPlaceholders;
  selfCopy->_appExtensionPlaceholders = v8;

  [(IXSPlaceholder *)selfCopy setAppExtensionPlaceholdersPromiseUUIDs:v25];
  [(IXSDataPromise *)selfCopy saveState];
  [(IXSPlaceholder *)selfCopy _materializeIfReady];
}

- (void)setConfigurationComplete:(BOOL)complete
{
  completeCopy = complete;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (self->_configurationComplete != completeCopy)
  {
    v6 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSPlaceholder setConfigurationComplete:]";
      if (completeCopy)
      {
        v7 = 89;
      }

      else
      {
        v7 = 78;
      }

      v10 = 2112;
      selfCopy = self;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@: setting configuration complete to %c", &v8, 0x1Cu);
    }

    self->_configurationComplete = completeCopy;
    [(IXSDataPromise *)self saveState];
    [(IXSPlaceholder *)self _materializeIfReady];
  }
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (!self->_attributes || ([attributesCopy isEqual:?] & 1) == 0)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "[IXSPlaceholder setAttributes:]";
      v10 = 2112;
      selfCopy = self;
      v12 = 2112;
      v13 = attributesCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@: setting placeholder attributes to %@", &v8, 0x20u);
    }

    objc_storeStrong(&self->_attributes, attributes);
    [(IXSDataPromise *)self saveState];
  }
}

+ (id)_metadataFromPromise:(id)promise
{
  promiseCopy = promise;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10001F1AC;
  v26 = sub_10001F1BC;
  v27 = 0;
  accessQueue = [promiseCopy accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021758;
  block[3] = &unk_100101268;
  v21 = &v22;
  v5 = promiseCopy;
  v20 = v5;
  dispatch_sync(accessQueue, block);

  if (!v23[5])
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [v5 uniqueIdentifier];
      sub_10009AFE8(uniqueIdentifier, buf, v13);
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
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  metadataPromise = [(IXSPlaceholder *)self metadataPromise];
  if (metadataPromise)
  {
    v5 = [objc_opt_class() _metadataFromPromise:metadataPromise];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)sinfData
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001F1AC;
  v17 = sub_10001F1BC;
  v18 = 0;
  sinfPromise = [(IXSPlaceholder *)self sinfPromise];

  if (sinfPromise)
  {
    sinfPromise2 = [(IXSPlaceholder *)self sinfPromise];
    accessQueue2 = [sinfPromise2 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100021A60;
    v12[3] = &unk_100101268;
    v12[4] = self;
    v12[5] = &v13;
    dispatch_sync(accessQueue2, v12);

    if (!v14[5])
    {
      v7 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sinfPromise3 = [(IXSPlaceholder *)self sinfPromise];
        uniqueIdentifier = [sinfPromise3 uniqueIdentifier];
        *buf = 136315394;
        v20 = "[IXSPlaceholder sinfData]";
        v21 = 2112;
        v22 = uniqueIdentifier;
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
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001F1AC;
  v17 = sub_10001F1BC;
  v18 = 0;
  localizationDictionaryPromise = [(IXSPlaceholder *)self localizationDictionaryPromise];

  if (localizationDictionaryPromise)
  {
    localizationDictionaryPromise2 = [(IXSPlaceholder *)self localizationDictionaryPromise];
    accessQueue2 = [localizationDictionaryPromise2 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100021D04;
    v12[3] = &unk_100101268;
    v12[4] = self;
    v12[5] = &v13;
    dispatch_sync(accessQueue2, v12);

    if (!v14[5])
    {
      v7 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        localizationDictionaryPromise3 = [(IXSPlaceholder *)self localizationDictionaryPromise];
        uniqueIdentifier = [localizationDictionaryPromise3 uniqueIdentifier];
        *buf = 136315394;
        v20 = "[IXSPlaceholder localizationDictionary]";
        v21 = 2112;
        v22 = uniqueIdentifier;
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
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  error = [(IXSDataPromise *)self error];

  if (error)
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

  icon = [(IXSPlaceholder *)self icon];
  v5 = icon;
  if (!icon)
  {
    goto LABEL_7;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  accessQueue2 = [icon accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022314;
  block[3] = &unk_100101880;
  v8 = v5;
  selfCopy = self;
  v43 = &v44;
  v41 = v8;
  dispatch_sync(accessQueue2, block);

  LOBYTE(accessQueue2) = *(v45 + 24);
  _Block_object_dispose(&v44, 8);
  if ((accessQueue2 & 1) == 0)
  {
    v25 = 0;
    v5 = v8;
  }

  else
  {
LABEL_7:
    iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
    if (iconResourcesPromise)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      accessQueue3 = [iconResourcesPromise accessQueue];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000223A8;
      v36[3] = &unk_100101880;
      selfCopy2 = self;
      v39 = &v44;
      v37 = iconResourcesPromise;
      dispatch_sync(accessQueue3, v36);

      v10 = *(v45 + 24);
      _Block_object_dispose(&v44, 8);
      if ((v10 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    entitlements = [(IXSPlaceholder *)self entitlements];

    if (entitlements)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      entitlements2 = [(IXSPlaceholder *)self entitlements];
      accessQueue4 = [entitlements2 accessQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10002243C;
      v35[3] = &unk_1001013C8;
      v35[4] = self;
      v35[5] = &v44;
      dispatch_sync(accessQueue4, v35);

      v14 = *(v45 + 24);
      _Block_object_dispose(&v44, 8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    infoPlistLoctable = [(IXSPlaceholder *)self infoPlistLoctable];

    if (!infoPlistLoctable)
    {
      goto LABEL_13;
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    infoPlistLoctable2 = [(IXSPlaceholder *)self infoPlistLoctable];
    accessQueue5 = [infoPlistLoctable2 accessQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000224D8;
    v34[3] = &unk_1001013C8;
    v34[4] = self;
    v34[5] = &v44;
    dispatch_sync(accessQueue5, v34);

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
      appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];

      if (appExtensionPlaceholders)
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
              accessQueue6 = [v23 accessQueue];
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_100022574;
              v29[3] = &unk_100101880;
              v29[5] = self;
              v29[6] = &v44;
              v29[4] = v23;
              dispatch_sync(accessQueue6, v29);

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
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(IXSPlaceholder *)self _isReadyToMaterialize])
  {
    stagedPath = [(IXSOwnedDataPromise *)self stagedPath];

    if (!stagedPath)
    {
      if ([(IXSPlaceholder *)self _materialize])
      {
        delegate = [(IXSDataPromise *)self delegate];
        if (delegate)
        {
          if (objc_opt_respondsToSelector())
          {
            delegateDeliveryQueue = [(IXSDataPromise *)self delegateDeliveryQueue];
            v7[0] = _NSConcreteStackBlock;
            v7[1] = 3221225472;
            v7[2] = sub_100022714;
            v7[3] = &unk_100100ED8;
            v8 = delegate;
            selfCopy = self;
            sub_100071134(delegateDeliveryQueue, v7);
          }
        }
      }
    }
  }
}

- (BOOL)isComplete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (![(IXSPlaceholder *)self _isReadyToMaterialize])
  {
    return 0;
  }

  stagedPath = [(IXSOwnedDataPromise *)self stagedPath];
  v5 = stagedPath != 0;

  return v5;
}

- (double)percentComplete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  error = [(IXSDataPromise *)self error];

  v5 = 0.0;
  if (!error && [(IXSPlaceholder *)self configurationComplete])
  {
    icon = [(IXSPlaceholder *)self icon];
    iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
    v6 = icon;
    if (icon || (v6 = iconResourcesPromise) != 0)
    {
      v7 = v6;
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      accessQueue2 = [v7 accessQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022C1C;
      block[3] = &unk_100101268;
      v40 = &v41;
      v24 = v7;
      v39 = v24;
      dispatch_sync(accessQueue2, block);

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
      entitlements = [(IXSPlaceholder *)self entitlements];
      accessQueue3 = [entitlements accessQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100022C5C;
      v37[3] = &unk_100101268;
      v37[4] = self;
      v37[5] = &v41;
      dispatch_sync(accessQueue3, v37);

      v14 = v42[3];
      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v14 = 0.200000003;
    }

    appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];

    if (appExtensionPlaceholders)
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
      appExtensionPlaceholders2 = [(IXSPlaceholder *)self appExtensionPlaceholders];
      v17 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v29 objects:v45 count:16];
      if (v17)
      {
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(appExtensionPlaceholders2);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            accessQueue4 = [v20 accessQueue];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_100022CC4;
            v28[3] = &unk_1001018A8;
            v28[4] = v20;
            v28[5] = &v41;
            v28[6] = &v33;
            dispatch_sync(accessQueue4, v28);
          }

          v17 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v29 objects:v45 count:16];
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

- (void)setPercentComplete:(double)complete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);
}

- (void)_cancelPromise:(id)promise forReason:(id)reason client:(unint64_t)client
{
  promiseCopy = promise;
  reasonCopy = reason;
  if (promiseCopy)
  {
    accessQueue = [promiseCopy accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100022E2C;
    block[3] = &unk_1001018D0;
    v11 = promiseCopy;
    v12 = reasonCopy;
    clientCopy = client;
    dispatch_sync(accessQueue, block);
  }
}

- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error
{
  reasonCopy = reason;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (!reasonCopy)
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
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!client)
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

  icon = [(IXSPlaceholder *)self icon];
  [(IXSPlaceholder *)self _cancelPromise:icon forReason:reasonCopy client:client];

  iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
  [(IXSPlaceholder *)self _cancelPromise:iconResourcesPromise forReason:reasonCopy client:client];

  infoPlistIconContentPromise = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  [(IXSPlaceholder *)self _cancelPromise:infoPlistIconContentPromise forReason:reasonCopy client:client];

  entitlements = [(IXSPlaceholder *)self entitlements];
  [(IXSPlaceholder *)self _cancelPromise:entitlements forReason:reasonCopy client:client];

  infoPlistLoctable = [(IXSPlaceholder *)self infoPlistLoctable];
  [(IXSPlaceholder *)self _cancelPromise:infoPlistLoctable forReason:reasonCopy client:client];

  metadataPromise = [(IXSPlaceholder *)self metadataPromise];
  [(IXSPlaceholder *)self _cancelPromise:metadataPromise forReason:reasonCopy client:client];

  sinfPromise = [(IXSPlaceholder *)self sinfPromise];
  [(IXSPlaceholder *)self _cancelPromise:sinfPromise forReason:reasonCopy client:client];

  localizationDictionaryPromise = [(IXSPlaceholder *)self localizationDictionaryPromise];
  [(IXSPlaceholder *)self _cancelPromise:localizationDictionaryPromise forReason:reasonCopy client:client];

  appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];

  if (appExtensionPlaceholders)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    appExtensionPlaceholders2 = [(IXSPlaceholder *)self appExtensionPlaceholders];
    v20 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(appExtensionPlaceholders2);
          }

          [(IXSPlaceholder *)self _cancelPromise:*(*(&v35 + 1) + 8 * i) forReason:reasonCopy client:client];
        }

        v21 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v21);
    }
  }

  v33.receiver = self;
  v33.super_class = IXSPlaceholder;
  v34 = 0;
  v24 = [(IXSOwnedDataPromise *)&v33 cancelForReason:reasonCopy client:client error:&v34];
  v25 = v34;
  if (error)
  {
LABEL_21:
    if (!v24)
    {
      v25 = v25;
      *error = v25;
    }
  }

LABEL_23:

  return v24;
}

- (NSString)bundleName
{
  seed = [(IXSDataPromise *)self seed];
  bundleName = [seed bundleName];

  return bundleName;
}

- (NSString)bundleDirectoryName
{
  seed = [(IXSDataPromise *)self seed];
  bundleDirectoryName = [seed bundleDirectoryName];

  return bundleDirectoryName;
}

- (NSString)bundleID
{
  seed = [(IXSDataPromise *)self seed];
  bundleID = [seed bundleID];

  return bundleID;
}

- (unint64_t)installType
{
  seed = [(IXSDataPromise *)self seed];
  installType = [seed installType];

  return installType;
}

- (unint64_t)totalBytesNeededOnDisk
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v23 = 0;
  icon = [(IXSPlaceholder *)self icon];
  sub_100023578(icon, &v23);

  iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
  sub_100023578(iconResourcesPromise, &v23);

  infoPlistIconContentPromise = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  sub_100023578(infoPlistIconContentPromise, &v23);

  entitlements = [(IXSPlaceholder *)self entitlements];
  sub_100023578(entitlements, &v23);

  infoPlistLoctable = [(IXSPlaceholder *)self infoPlistLoctable];
  sub_100023578(infoPlistLoctable, &v23);

  metadataPromise = [(IXSPlaceholder *)self metadataPromise];
  sub_100023578(metadataPromise, &v23);

  sinfPromise = [(IXSPlaceholder *)self sinfPromise];
  sub_100023578(sinfPromise, &v23);

  localizationDictionaryPromise = [(IXSPlaceholder *)self localizationDictionaryPromise];
  sub_100023578(localizationDictionaryPromise, &v23);

  appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];

  if (appExtensionPlaceholders)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    appExtensionPlaceholders2 = [(IXSPlaceholder *)self appExtensionPlaceholders];
    v14 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(appExtensionPlaceholders2);
          }

          sub_100023578(*(*(&v19 + 1) + 8 * v17), &v23);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v23;
}

- (id)_promiseUUIDsForPromise:(id)promise
{
  promiseCopy = promise;
  v4 = promiseCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001F1AC;
  v17 = sub_10001F1BC;
  v18 = 0;
  if (promiseCopy)
  {
    accessQueue = [promiseCopy accessQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002378C;
    v10[3] = &unk_100101268;
    v12 = &v13;
    v11 = v4;
    dispatch_sync(accessQueue, v10);

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
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = objc_opt_new();
  icon = [(IXSPlaceholder *)self icon];
  v6 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:icon];
  [v4 unionSet:v6];

  iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
  v8 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:iconResourcesPromise];
  [v4 unionSet:v8];

  infoPlistIconContentPromise = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  v10 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:infoPlistIconContentPromise];
  [v4 unionSet:v10];

  entitlements = [(IXSPlaceholder *)self entitlements];
  v12 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:entitlements];
  [v4 unionSet:v12];

  infoPlistLoctable = [(IXSPlaceholder *)self infoPlistLoctable];
  v14 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:infoPlistLoctable];
  [v4 unionSet:v14];

  metadataPromise = [(IXSPlaceholder *)self metadataPromise];
  v16 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:metadataPromise];
  [v4 unionSet:v16];

  sinfPromise = [(IXSPlaceholder *)self sinfPromise];
  v18 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:sinfPromise];
  [v4 unionSet:v18];

  localizationDictionaryPromise = [(IXSPlaceholder *)self localizationDictionaryPromise];
  v20 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:localizationDictionaryPromise];
  [v4 unionSet:v20];

  appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];

  if (appExtensionPlaceholders)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    appExtensionPlaceholders2 = [(IXSPlaceholder *)self appExtensionPlaceholders];
    v23 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(appExtensionPlaceholders2);
          }

          v27 = [(IXSPlaceholder *)self _promiseUUIDsForPromise:*(*(&v30 + 1) + 8 * i)];
          [v4 unionSet:v27];
        }

        v24 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v24);
    }
  }

  v28 = [v4 copy];

  return v28;
}

- (void)_decommissionPromise:(id)promise
{
  promiseCopy = promise;
  v4 = promiseCopy;
  if (promiseCopy)
  {
    accessQueue = [promiseCopy accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023BF0;
    block[3] = &unk_1001010A0;
    v7 = v4;
    dispatch_sync(accessQueue, block);
  }
}

- (void)decommission
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  icon = [(IXSPlaceholder *)self icon];
  [(IXSPlaceholder *)self _decommissionPromise:icon];

  iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
  [(IXSPlaceholder *)self _decommissionPromise:iconResourcesPromise];

  infoPlistIconContentPromise = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  [(IXSPlaceholder *)self _decommissionPromise:infoPlistIconContentPromise];

  entitlements = [(IXSPlaceholder *)self entitlements];
  [(IXSPlaceholder *)self _decommissionPromise:entitlements];

  infoPlistLoctable = [(IXSPlaceholder *)self infoPlistLoctable];
  [(IXSPlaceholder *)self _decommissionPromise:infoPlistLoctable];

  metadataPromise = [(IXSPlaceholder *)self metadataPromise];
  [(IXSPlaceholder *)self _decommissionPromise:metadataPromise];

  sinfPromise = [(IXSPlaceholder *)self sinfPromise];
  [(IXSPlaceholder *)self _decommissionPromise:sinfPromise];

  localizationDictionaryPromise = [(IXSPlaceholder *)self localizationDictionaryPromise];
  [(IXSPlaceholder *)self _decommissionPromise:localizationDictionaryPromise];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];
  v13 = [appExtensionPlaceholders countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(appExtensionPlaceholders);
        }

        [(IXSPlaceholder *)self _decommissionPromise:*(*(&v18 + 1) + 8 * v16)];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [appExtensionPlaceholders countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17.receiver = self;
  v17.super_class = IXSPlaceholder;
  [(IXSOwnedDataPromise *)&v17 decommission];
}

- (BOOL)_validateClientEntitlements:(id *)entitlements
{
  entitlements = [(IXSPlaceholder *)self entitlements];
  accessQueue = [entitlements accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  entitlements2 = [(IXSPlaceholder *)self entitlements];
  stagedPath = [entitlements2 stagedPath];

  v9 = [NSDictionary dictionaryWithContentsOfURL:stagedPath error:0];
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

  if (entitlements)
  {
    v22 = v16;
    v17 = 0;
    *entitlements = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_10:

  return v17;
}

+ (id)_sanitizedFilesystemNameForName:(id)name fileExtension:(id)extension fallingBackToName:(id)toName
{
  toNameCopy = toName;
  extensionCopy = extension;
  nameCopy = name;
  v10 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v11 = [nameCopy stringByTrimmingCharactersInSet:v10];

  if (![v11 length])
  {
    v12 = toNameCopy;

    v11 = v12;
  }

  v13 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  fileSystemRepresentation = [extensionCopy fileSystemRepresentation];
  v15 = strlen(fileSystemRepresentation);
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
      v13 = toNameCopy;
    }
  }

  return v13;
}

- (id)_preparedBundleDirectoryName
{
  bundleDirectoryName = [(IXSPlaceholder *)self bundleDirectoryName];
  bundleID = [(IXSPlaceholder *)self bundleID];
  seed = [(IXSDataPromise *)self seed];
  isAppExtension = [seed isAppExtension];

  if (!isAppExtension)
  {
    if (!bundleDirectoryName)
    {
      bundleDirectoryName = [(IXSPlaceholder *)self bundleName];
    }

    v7 = objc_opt_class();
    v8 = @"app";
    goto LABEL_7;
  }

  if (bundleDirectoryName)
  {
    v7 = objc_opt_class();
    v8 = @"appex";
LABEL_7:
    v9 = [v7 _sanitizedFilesystemNameForName:bundleDirectoryName fileExtension:v8 fallingBackToName:bundleID];
    v10 = [NSString stringWithFormat:@"%@.%@", v9, v8];

    goto LABEL_8;
  }

  v10 = [NSString stringWithFormat:@"%@.appex", bundleID];
LABEL_8:

  return v10;
}

- (BOOL)_materialize
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  bundleName = [(IXSPlaceholder *)self bundleName];
  v4 = +[IXFileManager defaultManager];
  icon = [(IXSPlaceholder *)self icon];
  iconResourcesPromise = [(IXSPlaceholder *)self iconResourcesPromise];
  infoPlistIconContentPromise = [(IXSPlaceholder *)self infoPlistIconContentPromise];
  stagingBaseDir = [(IXSOwnedDataPromise *)self stagingBaseDir];
  _preparedBundleDirectoryName = [(IXSPlaceholder *)self _preparedBundleDirectoryName];
  v8 = [stagingBaseDir URLByAppendingPathComponent:_preparedBundleDirectoryName isDirectory:1];

  v72 = [v8 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    path = [v8 path];
    *buf = 136315650;
    *&buf[4] = "[IXSPlaceholder _materialize]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    v133 = path;
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

    path2 = [v8 path];
    v20 = sub_1000405FC("[IXSPlaceholder _materialize]", 1336, @"IXErrorDomain", 0x14uLL, v12, 0, @"Failed to create bundle directory at %@", v19, path2);
    v16 = 0;
    goto LABEL_27;
  }

  if (iconResourcesPromise)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    accessQueue2 = [infoPlistIconContentPromise accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002530C;
    block[3] = &unk_100101268;
    v123 = buf;
    v122 = infoPlistIconContentPromise;
    dispatch_sync(accessQueue2, block);

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

  if (icon)
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
  bundleID = [(IXSPlaceholder *)self bundleID];
  [v16 setObject:bundleID forKeyedSubscript:kCFBundleIdentifierKey];

  [v16 setObject:bundleName forKeyedSubscript:kCFBundleNameKey];
  [v16 setObject:@"Executable" forKeyedSubscript:kCFBundleExecutableKey];
  [v16 setObject:bundleName forKeyedSubscript:_kCFBundleDisplayNameKey];
  attributes = [(IXSPlaceholder *)self attributes];

  if (attributes)
  {
    attributes2 = [(IXSPlaceholder *)self attributes];
    infoPlistContent = [attributes2 infoPlistContent];
    [v16 addEntriesFromDictionary:infoPlistContent];
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

    path2 = [v72 path];
    v20 = sub_1000405FC("[IXSPlaceholder _materialize]", 1371, @"IXErrorDomain", 0x14uLL, v27, 0, @"Failed to write bundle Info.plist to %@", v31, path2);
    v12 = v27;
LABEL_27:

    goto LABEL_28;
  }

  if (iconResourcesPromise)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    accessQueue3 = [iconResourcesPromise accessQueue];
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_100025358;
    v114[3] = &unk_1001018F8;
    v115 = iconResourcesPromise;
    v116 = v4;
    v119 = buf;
    v117 = v8;
    selfCopy = self;
    dispatch_sync(accessQueue3, v114);

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

  if (icon)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    accessQueue4 = [icon accessQueue];
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_100025818;
    v108[3] = &unk_100101920;
    v109 = icon;
    v110 = v8;
    v111 = v4;
    selfCopy2 = self;
    v113 = buf;
    dispatch_sync(accessQueue4, v108);

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
  entitlements = [(IXSPlaceholder *)self entitlements];

  if (entitlements)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v133 = sub_10001F1AC;
    v134 = sub_10001F1BC;
    v135 = 0;
    entitlements2 = [(IXSPlaceholder *)self entitlements];
    accessQueue5 = [entitlements2 accessQueue];
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
    dispatch_sync(accessQueue5, v103);

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

  infoPlistLoctable = [(IXSPlaceholder *)self infoPlistLoctable];
  v32 = infoPlistLoctable;
  if (!infoPlistLoctable)
  {
    goto LABEL_49;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v133 = sub_10001F1AC;
  v134 = sub_10001F1BC;
  v135 = 0;
  accessQueue6 = [infoPlistLoctable accessQueue];
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_100025F64;
  v97[3] = &unk_100101920;
  v98 = v8;
  v99 = v4;
  v44 = v32;
  v100 = v44;
  selfCopy3 = self;
  v102 = buf;
  dispatch_sync(accessQueue6, v97);

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
    localizationDictionary = [(IXSPlaceholder *)self localizationDictionary];
    v48 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = localizationDictionary;
      allKeys = [localizationDictionary allKeys];
      *v126 = 136315650;
      *&v126[4] = "[IXSPlaceholder _materialize]";
      *&v126[12] = 2112;
      *&v126[14] = self;
      *&v126[22] = 2112;
      v127 = allKeys;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: %@: Including lproj localizations for %@", v126, 0x20u);

      localizationDictionary = v49;
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
    [localizationDictionary enumerateKeysAndObjectsUsingBlock:v92];
    v51 = *(*&buf[8] + 40);
    if (v51)
    {
      v52 = v51;

      v20 = v52;
    }

    _Block_object_dispose(buf, 8);
    if (!v51)
    {
      seed = [(IXSDataPromise *)self seed];
      if ([seed isAppExtension])
      {
      }

      else
      {
        appExtensionPlaceholders = [(IXSPlaceholder *)self appExtensionPlaceholders];
        v55 = [appExtensionPlaceholders count] == 0;

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
          appExtensionPlaceholders2 = [(IXSPlaceholder *)self appExtensionPlaceholders];
          v57 = [appExtensionPlaceholders2 countByEnumeratingWithState:&v88 objects:v125 count:16];
          if (v57)
          {
            obj = appExtensionPlaceholders2;
            v66 = *v89;
            v65 = iconResourcesPromise;
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
              accessQueue7 = [v59 accessQueue];
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
              selfCopy4 = self;
              v20 = v20;
              v78 = v20;
              dispatch_sync(accessQueue7, v74);

              iconResourcesPromise = v65;
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

            appExtensionPlaceholders2 = obj;
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

- (void)promiseDidBegin:(id)begin
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026B90;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(accessQueue2, v6);
}

- (void)promiseDidComplete:(id)complete
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026D28;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(accessQueue2, v6);
}

- (void)promiseDidReset:(id)reset
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026DD0;
  v6[3] = &unk_1001010A0;
  v6[4] = self;
  sub_100071134(accessQueue2, v6);
}

- (void)promise:(id)promise didUpdateProgress:(double)progress
{
  v5 = [(IXSDataPromise *)self accessQueue:promise];
  dispatch_assert_queue_not_V2(v5);

  accessQueue = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026F50;
  v7[3] = &unk_1001010A0;
  v7[4] = self;
  sub_100071134(accessQueue, v7);
}

- (void)promise:(id)promise didCancelForReason:(id)reason client:(unint64_t)client
{
  promiseCopy = promise;
  reasonCopy = reason;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100027148;
  v14[3] = &unk_1001015A0;
  v14[4] = self;
  v15 = promiseCopy;
  v16 = reasonCopy;
  clientCopy = client;
  v12 = reasonCopy;
  v13 = promiseCopy;
  sub_100071134(accessQueue2, v14);
}

- (BOOL)_checkLocationOfPromiseMatchesOurs:(id)ours description:(id)description error:(id *)error
{
  descriptionCopy = description;
  oursCopy = ours;
  location = [(IXSOwnedDataPromise *)self location];
  location2 = [oursCopy location];

  v12 = [location isEqual:location2];
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
      v22 = descriptionCopy;
      v23 = 2112;
      v24 = location2;
      v25 = 2112;
      v26 = location;
      v27 = 2112;
      v28 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: %@ promise being set has different location, %@, than this placeholder, %@. : %@", buf, 0x34u);
    }

    v16 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _checkLocationOfPromiseMatchesOurs:description:error:]", 1691, @"IXErrorDomain", 0x3BuLL, 0, 0, @"%@ promise being set has different location, %@, than this placeholder, %@.", v15, descriptionCopy);
    v13 = v16;
    if (error)
    {
      v17 = v16;
      *error = v13;
    }
  }

  return v12;
}

- (void)_remote_setMetadataPromiseUUID:(id)d fromConnection:(id)connection completion:(id)completion
{
  dCopy = d;
  connectionCopy = connection;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  if (dCopy)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v12 = +[IXSDataPromiseManager sharedInstance];
    v13 = [v12 promiseForUUID:dCopy ofType:objc_opt_class()];

    if (v13)
    {
      v47 = 0;
      v14 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v13 description:@"Metadata" error:&v47];
      v15 = v47;
      if (v14)
      {
        accessQueue2 = [v13 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100027ECC;
        block[3] = &unk_100101268;
        v46 = &v48;
        v13 = v13;
        v45 = v13;
        dispatch_sync(accessQueue2, block);

        if (v49[3])
        {
          v17 = [objc_opt_class() _metadataFromPromise:v13];
          v18 = v17;
          if (v17)
          {
            v43 = v15;
            v19 = sub_10000DB10(v17, connectionCopy, @"placeholder metadata", &v43);
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
                accessQueue3 = [v13 accessQueue];
                v40[0] = _NSConcreteStackBlock;
                v40[1] = 3221225472;
                v40[2] = sub_100027F00;
                v40[3] = &unk_1001010A0;
                v31 = v13;
                v41 = v31;
                dispatch_sync(accessQueue3, v40);

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

              accessQueue4 = [(IXSDataPromise *)self accessQueue];
              v37[0] = _NSConcreteStackBlock;
              v37[1] = 3221225472;
              v37[2] = sub_100027F08;
              v37[3] = &unk_100100ED8;
              v37[4] = self;
              v13 = v13;
              v38 = v13;
              dispatch_sync(accessQueue4, v37);

              v34 = v38;
LABEL_27:

              goto LABEL_28;
            }

            v15 = v20;
LABEL_28:
            completionCopy[2](completionCopy, v15);

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

      v15 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setMetadataPromiseUUID:fromConnection:completion:]", 1724, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find metadata promise with UUID %@", v23, dCopy);
      v13 = 0;
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_28;
  }

  accessQueue5 = [(IXSDataPromise *)self accessQueue];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100027EC0;
  v52[3] = &unk_1001010A0;
  v52[4] = self;
  dispatch_sync(accessQueue5, v52);

  completionCopy[2](completionCopy, 0);
LABEL_29:
}

- (void)_remote_getMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002804C;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  completionCopy[2](completionCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setSinfPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  if (!dCopy)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v10)
  {
    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10009BC14();
    }

    v13 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setSinfPromiseUUID:completion:]", 1806, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find sinf promise with UUID %@", v16, dCopy);
    goto LABEL_10;
  }

  v19 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Sinf" error:&v19];
  v12 = v19;
  v13 = v12;
  if (!v11)
  {
LABEL_10:
    completionCopy[2](completionCopy, v13);

    goto LABEL_11;
  }

LABEL_6:
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000282A8;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v10 = v10;
  v18 = v10;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
LABEL_11:
}

- (void)_remote_getSinfDataWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000283EC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  completionCopy[2](completionCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setLaunchProhibited:(BOOL)prohibited completion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002850C;
  v9[3] = &unk_100101998;
  v9[4] = self;
  prohibitedCopy = prohibited;
  dispatch_sync(accessQueue2, v9);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_getLaunchProhibitedWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000286A4;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(completionCopy + 2))(completionCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000287F0;
  v11[3] = &unk_100100ED8;
  v11[4] = self;
  v12 = attributesCopy;
  v10 = attributesCopy;
  dispatch_sync(accessQueue2, v11);

  completionCopy[2](completionCopy, 0);
}

- (void)_remote_getAttributesWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028934;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  completionCopy[2](completionCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setIconPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BC88();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setIconPromiseUUID:completion:]", 1895, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find icon promise with UUID %@", v15, dCopy);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Icon" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    completionCopy[2](completionCopy, v12);
    goto LABEL_8;
  }

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028B7C;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
LABEL_8:
}

- (void)_remote_hasIconPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028C94;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(promiseCopy + 2))(promiseCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getIconPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028E20;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  promiseCopy[2](promiseCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setIconResourcesPromiseUUID:(id)d infoPlistIconContentPromiseUUID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v12 = +[IXSDataPromiseManager sharedInstance];
  v13 = [v12 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (v13)
  {
    v29 = 0;
    v14 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v13 description:@"Icon resources" error:&v29];
    v15 = v29;
    if (v14)
    {
      v16 = +[IXSDataPromiseManager sharedInstance];
      v17 = [v16 promiseForUUID:iDCopy ofType:objc_opt_class()];

      if (v17)
      {
        v28 = v15;
        v18 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v17 description:@"Icon Info.plist content" error:&v28];
        v19 = v28;

        if (v18)
        {
          accessQueue2 = [(IXSDataPromise *)self accessQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100029264;
          block[3] = &unk_100101300;
          block[4] = self;
          v26 = v13;
          v27 = v17;
          dispatch_sync(accessQueue2, block);

          completionCopy[2](completionCopy, 0);
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

        v19 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setIconResourcesPromiseUUID:infoPlistIconContentPromiseUUID:completion:]", 1959, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find Info.plist icon content promise with UUID %@", v24, iDCopy);
      }

      (completionCopy)[2](completionCopy, v19);
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

    v15 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setIconResourcesPromiseUUID:infoPlistIconContentPromiseUUID:completion:]", 1947, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find icon resources promise with UUID %@", v22, dCopy);
  }

  (completionCopy)[2](completionCopy, v15);
LABEL_15:
}

- (void)_remote_hasIconResourcesPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029384;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(promiseCopy + 2))(promiseCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getIconResourcesPromiseAndInfoPlistContent:(id)content
{
  contentCopy = content;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

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
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029578;
  block[3] = &unk_1001019C0;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(accessQueue2, block);

  contentCopy[2](contentCopy, v15[5], v9[5], 0);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

- (void)_remote_setLocalizationPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BDE4();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setLocalizationPromiseUUID:completion:]", 2024, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find localization dictionary promise with UUID %@", v15, dCopy);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Localization" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    completionCopy[2](completionCopy, v12);
    goto LABEL_8;
  }

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029988;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
LABEL_8:
}

- (void)_remote_getLocalizationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029ACC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  dictionaryCopy[2](dictionaryCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setEntitlementsPromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BE58();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setEntitlementsPromiseUUID:completion:]", 2061, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find entitlements promise with UUID %@", v15, dCopy);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"Entitlements" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    completionCopy[2](completionCopy, v12);
    goto LABEL_8;
  }

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029D14;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
LABEL_8:
}

- (void)_remote_hasEntitlementsPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029E2C;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(promiseCopy + 2))(promiseCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getEntitlementsPromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029FB8;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  promiseCopy[2](promiseCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setInfoPlistLoctablePromiseUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v9 = +[IXSDataPromiseManager sharedInstance];
  v10 = [v9 promiseForUUID:dCopy ofType:objc_opt_class()];

  if (!v10)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009BECC();
    }

    v12 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setInfoPlistLoctablePromiseUUID:completion:]", 2113, @"IXErrorDomain", 3uLL, 0, 0, @"Could not find loctable promise with UUID %@", v15, dCopy);
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [(IXSPlaceholder *)self _checkLocationOfPromiseMatchesOurs:v10 description:@"InfoPlist loctable" error:&v18];
  v12 = v18;
  if ((v11 & 1) == 0)
  {
LABEL_7:
    completionCopy[2](completionCopy, v12);
    goto LABEL_8;
  }

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A2C4;
  block[3] = &unk_100100ED8;
  block[4] = self;
  v17 = v10;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
LABEL_8:
}

- (void)_remote_hasInfoPlistLoctablePromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A3DC;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(promiseCopy + 2))(promiseCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getInfoPlistLoctablePromise:(id)promise
{
  promiseCopy = promise;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A568;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  promiseCopy[2](promiseCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setAppExtensionPlaceholderPromiseUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  selfCopy = self;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v55 = objc_opt_new();
  v49 = objc_opt_new();
  v48 = objc_opt_new();
  v9 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = dsCopy;
  v51 = [v10 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v51)
  {
    v52 = v9;
    v53 = *v60;
    v46 = completionCopy;
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
        completionCopy = v46;
        v46[2](v46, v14);
        v23 = v55;
        goto LABEL_44;
      }

      bundleID = [(IXSPlaceholder *)selfCopy bundleID];
      bundleID2 = [v14 bundleID];
      bundleDirectoryName = [v14 bundleDirectoryName];
      seed = [v14 seed];
      placeholderType = [seed placeholderType];

      seed2 = [(IXSDataPromise *)selfCopy seed];
      location = [seed2 location];

      seed3 = [v14 seed];
      location2 = [seed3 location];

      if (!IXIsAppExtensionForPlaceholderType(placeholderType))
      {
        v33 = sub_1000031B0(off_100121958);
        completionCopy = v46;
        v23 = v55;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10009BF40();
        }

        v35 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2183, @"IXErrorDomain", 0x35uLL, 0, 0, @"Placeholder with bundle ID %@ is not an app extension so cannot be set as an app extension placeholder on %@", v34, bundleID2);
        goto LABEL_32;
      }

      v23 = v55;
      if (([location2 isEqual:location] & 1) == 0)
      {
        v36 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v64 = "[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]";
          v65 = 2112;
          v66 = bundleID2;
          v67 = 2112;
          v68 = location2;
          v69 = 2112;
          v70 = bundleID;
          v71 = 2112;
          v72 = location;
          v73 = 2112;
          v74 = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: App extension placeholders array has extension %@ with the location %@, but the parent %@ has the location %@. These locations must match. : %@", buf, 0x3Eu);
        }

        v35 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2189, @"IXErrorDomain", 0x3BuLL, 0, 0, @"App extension placeholders array has extension %@ with the location %@, but the parent %@ has the location %@. These locations must match.", v37, bundleID2);
        completionCopy = v46;
LABEL_32:
        v9 = v52;
        completionCopy[2](completionCopy, v35);

        goto LABEL_44;
      }

      v24 = v10;
      v25 = [NSString stringWithFormat:@"%@.", bundleID];
      if (([bundleID2 hasPrefix:v25] & 1) == 0)
      {
        v38 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v64 = "[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]";
          v65 = 2112;
          v66 = bundleID2;
          v67 = 2112;
          v68 = bundleID;
          v69 = 2112;
          v70 = v25;
          v71 = 2112;
          v72 = 0;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s: Cannot set app extension placeholder with bundle ID %@ on parent app %@ because this extension's bundle ID does not have required bundle ID prefix of %@ : %@", buf, 0x34u);
        }

        sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2196, @"IXErrorDomain", 8uLL, 0, 0, @"Cannot set app extension placeholder with bundle ID %@ on parent app %@ because this extension's bundle ID does not have required bundle ID prefix of %@", v39, bundleID2);
        goto LABEL_39;
      }

      if ([v55 containsObject:bundleID2])
      {
        v40 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10009C030();
        }

        sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2203, @"IXErrorDomain", 9uLL, 0, 0, @"App extension placeholders array has multiple placeholders with the same bundle ID of %@", v41, bundleID2);
        v42 = LABEL_39:;
        completionCopy = v46;
        v46[2](v46, v42);

        goto LABEL_43;
      }

      [v55 addObject:bundleID2];
      bundleDirectoryName2 = [v14 bundleDirectoryName];
      if (bundleDirectoryName2)
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
        completionCopy = v46;
        v51 = [v24 countByEnumeratingWithState:&v59 objects:v75 count:16];
        if (v51)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }
    }

    v50 = location;
    if (placeholderType == 2)
    {
      v27 = v49;
      v28 = @"PlugInKit";
    }

    else
    {
      if (placeholderType != 3)
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
    if ([v29 containsObject:bundleDirectoryName])
    {
      v43 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10009BFB8();
      }

      v45 = sub_1000405FC("[IXSPlaceholder(IXSPlaceholderIPCMethods) _remote_setAppExtensionPlaceholderPromiseUUIDs:completion:]", 2223, @"IXErrorDomain", 0x3CuLL, 0, 0, @"App extension placeholders array has multiple %@ placeholders with the same bundle directory name of %@", v44, v47);
      completionCopy = v46;
      v46[2](v46, v45);

      v23 = v55;
LABEL_43:
      v10 = v24;
      v9 = v52;
LABEL_44:

      goto LABEL_45;
    }

    [v29 addObject:bundleDirectoryName];

    goto LABEL_20;
  }

LABEL_22:

  accessQueue2 = [(IXSDataPromise *)selfCopy accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AF14;
  block[3] = &unk_100100ED8;
  block[4] = selfCopy;
  v58 = v9;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
  v23 = v55;
LABEL_45:
}

- (void)_remote_hasAppExtensionPlaceholderPromises:(id)promises
{
  promisesCopy = promises;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B02C;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  (*(promisesCopy + 2))(promisesCopy, *(v9 + 24), 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_getAppExtensionPlaceholderPromises:(id)promises
{
  promisesCopy = promises;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10001F1AC;
  v12 = sub_10001F1BC;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B1B8;
  v7[3] = &unk_1001013C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  promisesCopy[2](promisesCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (void)_remote_setConfigurationCompleteWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B4A8;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(accessQueue2, block);

  completionCopy[2](completionCopy, 0);
}

@end