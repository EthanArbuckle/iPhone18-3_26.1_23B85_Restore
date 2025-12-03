@interface CWFAssocParameters
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssocParameters:(id)parameters;
- (CWFAssocParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFAssocParameters

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"scanResult=%@, profile=%@, hasPassword=%d, eap=%@, remember=%d, forceBSSID=%d, bandPref=%ld, colocatedScopeID=%@", self->_scanResult, self->_knownNetworkProfile, self->_password != 0, self->_EAPCredentials, self->_rememberUponSuccessfulAssociation, self->_forceBSSID, self->_bandPreference, self->_colocatedScopeID];
  [string appendFormat:@"has6GHzOnlyBSS=%d", self->_has6GHzOnlyBSS];
  [string appendFormat:@", remoteHotspotDevice=%@, findAndJoinNetwork=%d", self->_remoteHotspotDevice, self->_findAndJoinNetwork];

  return string;
}

- (BOOL)isEqualToAssocParameters:(id)parameters
{
  parametersCopy = parameters;
  scanResult = self->_scanResult;
  scanResult = [parametersCopy scanResult];
  if (scanResult != scanResult)
  {
    if (!self->_scanResult || ([parametersCopy scanResult], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_68;
    }

    v3 = v9;
    v10 = self->_scanResult;
    scanResult2 = [parametersCopy scanResult];
    if (![(CWFScanResult *)v10 isEqual:scanResult2])
    {
      v11 = 0;
LABEL_67:

      goto LABEL_68;
    }
  }

  knownNetworkProfile = self->_knownNetworkProfile;
  knownNetworkProfile = [parametersCopy knownNetworkProfile];
  if (knownNetworkProfile != knownNetworkProfile)
  {
    if (!self->_knownNetworkProfile)
    {
      v11 = 0;
LABEL_44:

      goto LABEL_66;
    }

    knownNetworkProfile2 = [parametersCopy knownNetworkProfile];
    if (!knownNetworkProfile2)
    {
      goto LABEL_65;
    }

    v69 = knownNetworkProfile2;
    v15 = self->_knownNetworkProfile;
    knownNetworkProfile3 = [parametersCopy knownNetworkProfile];
    v17 = v15;
    v18 = knownNetworkProfile3;
    if (![(CWFNetworkProfile *)v17 isEqual:knownNetworkProfile3])
    {

LABEL_64:
      goto LABEL_65;
    }

    v67 = v18;
  }

  password = self->_password;
  password = [parametersCopy password];
  if (password == password)
  {
    v68 = password;
  }

  else
  {
    if (!self->_password)
    {
      v11 = 0;
LABEL_42:

      if (knownNetworkProfile != knownNetworkProfile)
      {
      }

      goto LABEL_44;
    }

    password2 = [parametersCopy password];
    if (!password2)
    {
      goto LABEL_62;
    }

    v68 = password;
    v65 = password2;
    v22 = self->_password;
    password3 = [parametersCopy password];
    v24 = v22;
    v25 = password3;
    if (([(NSString *)v24 isEqual:password3]& 1) == 0)
    {

LABEL_61:
      goto LABEL_62;
    }

    v63 = v25;
  }

  EAPCredentials = self->_EAPCredentials;
  eAPCredentials = [parametersCopy EAPCredentials];
  v66 = EAPCredentials;
  v28 = EAPCredentials == eAPCredentials;
  v29 = eAPCredentials;
  if (v28)
  {
    v64 = scanResult2;
LABEL_27:
    rememberUponSuccessfulAssociation = self->_rememberUponSuccessfulAssociation;
    if (rememberUponSuccessfulAssociation != [parametersCopy rememberUponSuccessfulAssociation] || (forceBSSID = self->_forceBSSID, forceBSSID != objc_msgSend(parametersCopy, "forceBSSID")) || (bandPreference = self->_bandPreference, bandPreference != objc_msgSend(parametersCopy, "bandPreference")) || (has6GHzOnlyBSS = self->_has6GHzOnlyBSS, has6GHzOnlyBSS != objc_msgSend(parametersCopy, "has6GHzOnlyBSS")))
    {
      v11 = 0;
      scanResult2 = v64;
      if (v66 == v29)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    colocatedScopeID = self->_colocatedScopeID;
    colocatedScopeID = [parametersCopy colocatedScopeID];
    v60 = colocatedScopeID;
    if (colocatedScopeID == colocatedScopeID)
    {
      v59 = colocatedScopeID;
LABEL_48:
      remoteHotspotDevice = self->_remoteHotspotDevice;
      remoteHotspotDevice = [parametersCopy remoteHotspotDevice];
      v58 = remoteHotspotDevice;
      if (remoteHotspotDevice != remoteHotspotDevice)
      {
        if (!self->_remoteHotspotDevice)
        {
          v11 = 0;
          scanResult2 = v64;
          goto LABEL_70;
        }

        remoteHotspotDevice2 = [parametersCopy remoteHotspotDevice];
        if (!remoteHotspotDevice2)
        {

          v11 = 0;
          colocatedScopeID = v60;
          scanResult2 = v64;
          if (v59 != v60)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        }

        v54 = self->_remoteHotspotDevice;
        v55 = remoteHotspotDevice2;
        remoteHotspotDevice3 = [parametersCopy remoteHotspotDevice];
        v50 = v54;
        v53 = remoteHotspotDevice3;
        if (![(SFRemoteHotspotDevice *)v50 isEqual:?])
        {
          v11 = 0;
          scanResult2 = v64;
LABEL_55:

          goto LABEL_71;
        }
      }

      findAndJoinNetwork = self->_findAndJoinNetwork;
      v11 = findAndJoinNetwork == [parametersCopy findAndJoinNetwork];
      remoteHotspotDevice = v58;
      v28 = remoteHotspotDevice == v58;
      scanResult2 = v64;
      if (!v28)
      {
        goto LABEL_55;
      }

LABEL_70:

LABEL_71:
      colocatedScopeID = v60;
      if (v59 != v60)
      {
LABEL_72:

        goto LABEL_73;
      }

LABEL_75:

LABEL_76:
      if (v66 == v29)
      {
LABEL_40:

        if (v68 != password)
        {
        }

        goto LABEL_42;
      }

LABEL_37:

      goto LABEL_40;
    }

    if (!self->_colocatedScopeID)
    {
      v11 = 0;
      scanResult2 = v64;
      goto LABEL_75;
    }

    colocatedScopeID2 = [parametersCopy colocatedScopeID];
    if (!colocatedScopeID2)
    {
      v11 = 0;
      scanResult2 = v64;
LABEL_73:

      goto LABEL_76;
    }

    v59 = colocatedScopeID;
    v57 = colocatedScopeID2;
    v42 = self->_colocatedScopeID;
    colocatedScopeID3 = [parametersCopy colocatedScopeID];
    v44 = v42;
    v45 = colocatedScopeID3;
    if (([(NSString *)v44 isEqual:colocatedScopeID3]& 1) != 0)
    {
      v56 = v45;
      goto LABEL_48;
    }

    scanResult2 = v64;
    if (v66 != v29)
    {
    }

LABEL_59:

    if (v68 == password)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (!self->_EAPCredentials)
  {
    v11 = 0;
    goto LABEL_40;
  }

  eAPCredentials2 = [parametersCopy EAPCredentials];
  if (!eAPCredentials2)
  {
    goto LABEL_59;
  }

  v62 = eAPCredentials2;
  v64 = scanResult2;
  v31 = self->_EAPCredentials;
  eAPCredentials3 = [parametersCopy EAPCredentials];
  v33 = v31;
  v34 = eAPCredentials3;
  if ([(CWFEAPCredentials *)v33 isEqual:eAPCredentials3])
  {
    v61 = v34;
    goto LABEL_27;
  }

  scanResult2 = v64;
  if (v68 != password)
  {
LABEL_60:

    goto LABEL_61;
  }

LABEL_62:

  if (knownNetworkProfile != knownNetworkProfile)
  {

    goto LABEL_64;
  }

LABEL_65:

  v11 = 0;
LABEL_66:
  if (scanResult != scanResult)
  {
    goto LABEL_67;
  }

LABEL_68:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAssocParameters *)self isEqualToAssocParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(CWFScanResult *)self->_scanResult hash];
  v4 = [(CWFNetworkProfile *)self->_knownNetworkProfile hash]^ v3;
  v5 = [(NSString *)self->_password hash];
  v6 = v4 ^ v5 ^ [(CWFEAPCredentials *)self->_EAPCredentials hash]^ self->_rememberUponSuccessfulAssociation ^ self->_forceBSSID ^ self->_bandPreference ^ self->_has6GHzOnlyBSS;
  v7 = [(NSString *)self->_colocatedScopeID hash];
  return v6 ^ v7 ^ [(SFRemoteHotspotDevice *)self->_remoteHotspotDevice hash]^ self->_findAndJoinNetwork;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFAssocParameters allocWithZone:?]];
  [(CWFAssocParameters *)v4 setScanResult:self->_scanResult];
  [(CWFAssocParameters *)v4 setKnownNetworkProfile:self->_knownNetworkProfile];
  [(CWFAssocParameters *)v4 setPassword:self->_password];
  [(CWFAssocParameters *)v4 setEAPCredentials:self->_EAPCredentials];
  [(CWFAssocParameters *)v4 setRememberUponSuccessfulAssociation:self->_rememberUponSuccessfulAssociation];
  [(CWFAssocParameters *)v4 setForceBSSID:self->_forceBSSID];
  [(CWFAssocParameters *)v4 setBandPreference:self->_bandPreference];
  [(CWFAssocParameters *)v4 setColocatedScopeID:self->_colocatedScopeID];
  [(CWFAssocParameters *)v4 setHas6GHzOnlyBSS:self->_has6GHzOnlyBSS];
  [(CWFAssocParameters *)v4 setRemoteHotspotDevice:self->_remoteHotspotDevice];
  [(CWFAssocParameters *)v4 setFindAndJoinNetwork:self->_findAndJoinNetwork];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  scanResult = self->_scanResult;
  coderCopy = coder;
  [coderCopy encodeObject:scanResult forKey:@"_scanResult"];
  [coderCopy encodeObject:self->_knownNetworkProfile forKey:@"_knownNetworkProfile"];
  [coderCopy encodeObject:self->_password forKey:@"_password"];
  [coderCopy encodeObject:self->_EAPCredentials forKey:@"_EAPCredentials"];
  [coderCopy encodeBool:self->_rememberUponSuccessfulAssociation forKey:@"_rememberUponSuccessfulAssociation"];
  [coderCopy encodeBool:self->_forceBSSID forKey:@"_forceBSSID"];
  [coderCopy encodeInteger:self->_bandPreference forKey:@"_bandPreference"];
  [coderCopy encodeObject:self->_colocatedScopeID forKey:@"_colocatedScopeID"];
  [coderCopy encodeBool:self->_has6GHzOnlyBSS forKey:@"_has6GHzOnlyBSS"];
  [coderCopy encodeObject:self->_remoteHotspotDevice forKey:@"_remoteHotspotDevice"];
  [coderCopy encodeBool:self->_findAndJoinNetwork forKey:@"_findAndJoinNetwork"];
}

- (CWFAssocParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CWFAssocParameters;
  v5 = [(CWFAssocParameters *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_scanResult"];
    scanResult = v5->_scanResult;
    v5->_scanResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_knownNetworkProfile"];
    knownNetworkProfile = v5->_knownNetworkProfile;
    v5->_knownNetworkProfile = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_EAPCredentials"];
    EAPCredentials = v5->_EAPCredentials;
    v5->_EAPCredentials = v12;

    v5->_rememberUponSuccessfulAssociation = [coderCopy decodeBoolForKey:@"_rememberUponSuccessfulAssociation"];
    v5->_forceBSSID = [coderCopy decodeBoolForKey:@"_forceBSSID"];
    v5->_bandPreference = [coderCopy decodeIntegerForKey:@"_bandPreference"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_colocatedScopeID"];
    colocatedScopeID = v5->_colocatedScopeID;
    v5->_colocatedScopeID = v14;

    v5->_has6GHzOnlyBSS = [coderCopy decodeBoolForKey:@"_has6GHzOnlyBSS"];
    if (sub_1E0CD88D0())
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2050000000;
      v16 = qword_1ECE81B10;
      v26 = qword_1ECE81B10;
      if (!qword_1ECE81B10)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1E0CD8A14;
        v22[3] = &unk_1E86E5600;
        v22[4] = &v23;
        sub_1E0CD8A14(v22);
        v16 = v24[3];
      }

      v17 = v16;
      _Block_object_dispose(&v23, 8);
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_remoteHotspotDevice"];
      remoteHotspotDevice = v5->_remoteHotspotDevice;
      v5->_remoteHotspotDevice = v18;
    }

    v5->_findAndJoinNetwork = [coderCopy decodeBoolForKey:@"_findAndJoinNetwork"];
  }

  return v5;
}

@end