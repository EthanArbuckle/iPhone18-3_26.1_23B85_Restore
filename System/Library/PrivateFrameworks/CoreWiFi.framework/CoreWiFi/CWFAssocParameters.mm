@interface CWFAssocParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssocParameters:(id)a3;
- (CWFAssocParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAssocParameters

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"scanResult=%@, profile=%@, hasPassword=%d, eap=%@, remember=%d, forceBSSID=%d, bandPref=%ld, colocatedScopeID=%@", self->_scanResult, self->_knownNetworkProfile, self->_password != 0, self->_EAPCredentials, self->_rememberUponSuccessfulAssociation, self->_forceBSSID, self->_bandPreference, self->_colocatedScopeID];
  [v3 appendFormat:@"has6GHzOnlyBSS=%d", self->_has6GHzOnlyBSS];
  [v3 appendFormat:@", remoteHotspotDevice=%@, findAndJoinNetwork=%d", self->_remoteHotspotDevice, self->_findAndJoinNetwork];

  return v3;
}

- (BOOL)isEqualToAssocParameters:(id)a3
{
  v6 = a3;
  scanResult = self->_scanResult;
  v8 = [v6 scanResult];
  if (scanResult != v8)
  {
    if (!self->_scanResult || ([v6 scanResult], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_68;
    }

    v3 = v9;
    v10 = self->_scanResult;
    v4 = [v6 scanResult];
    if (![(CWFScanResult *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_67:

      goto LABEL_68;
    }
  }

  knownNetworkProfile = self->_knownNetworkProfile;
  v13 = [v6 knownNetworkProfile];
  if (knownNetworkProfile != v13)
  {
    if (!self->_knownNetworkProfile)
    {
      v11 = 0;
LABEL_44:

      goto LABEL_66;
    }

    v14 = [v6 knownNetworkProfile];
    if (!v14)
    {
      goto LABEL_65;
    }

    v69 = v14;
    v15 = self->_knownNetworkProfile;
    v16 = [v6 knownNetworkProfile];
    v17 = v15;
    v18 = v16;
    if (![(CWFNetworkProfile *)v17 isEqual:v16])
    {

LABEL_64:
      goto LABEL_65;
    }

    v67 = v18;
  }

  password = self->_password;
  v20 = [v6 password];
  if (password == v20)
  {
    v68 = password;
  }

  else
  {
    if (!self->_password)
    {
      v11 = 0;
LABEL_42:

      if (knownNetworkProfile != v13)
      {
      }

      goto LABEL_44;
    }

    v21 = [v6 password];
    if (!v21)
    {
      goto LABEL_62;
    }

    v68 = password;
    v65 = v21;
    v22 = self->_password;
    v23 = [v6 password];
    v24 = v22;
    v25 = v23;
    if (([(NSString *)v24 isEqual:v23]& 1) == 0)
    {

LABEL_61:
      goto LABEL_62;
    }

    v63 = v25;
  }

  EAPCredentials = self->_EAPCredentials;
  v27 = [v6 EAPCredentials];
  v66 = EAPCredentials;
  v28 = EAPCredentials == v27;
  v29 = v27;
  if (v28)
  {
    v64 = v4;
LABEL_27:
    rememberUponSuccessfulAssociation = self->_rememberUponSuccessfulAssociation;
    if (rememberUponSuccessfulAssociation != [v6 rememberUponSuccessfulAssociation] || (forceBSSID = self->_forceBSSID, forceBSSID != objc_msgSend(v6, "forceBSSID")) || (bandPreference = self->_bandPreference, bandPreference != objc_msgSend(v6, "bandPreference")) || (has6GHzOnlyBSS = self->_has6GHzOnlyBSS, has6GHzOnlyBSS != objc_msgSend(v6, "has6GHzOnlyBSS")))
    {
      v11 = 0;
      v4 = v64;
      if (v66 == v29)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    colocatedScopeID = self->_colocatedScopeID;
    v40 = [v6 colocatedScopeID];
    v60 = v40;
    if (colocatedScopeID == v40)
    {
      v59 = colocatedScopeID;
LABEL_48:
      remoteHotspotDevice = self->_remoteHotspotDevice;
      v47 = [v6 remoteHotspotDevice];
      v58 = v47;
      if (remoteHotspotDevice != v47)
      {
        if (!self->_remoteHotspotDevice)
        {
          v11 = 0;
          v4 = v64;
          goto LABEL_70;
        }

        v48 = [v6 remoteHotspotDevice];
        if (!v48)
        {

          v11 = 0;
          v40 = v60;
          v4 = v64;
          if (v59 != v60)
          {
            goto LABEL_72;
          }

          goto LABEL_75;
        }

        v54 = self->_remoteHotspotDevice;
        v55 = v48;
        v49 = [v6 remoteHotspotDevice];
        v50 = v54;
        v53 = v49;
        if (![(SFRemoteHotspotDevice *)v50 isEqual:?])
        {
          v11 = 0;
          v4 = v64;
LABEL_55:

          goto LABEL_71;
        }
      }

      findAndJoinNetwork = self->_findAndJoinNetwork;
      v11 = findAndJoinNetwork == [v6 findAndJoinNetwork];
      v47 = v58;
      v28 = remoteHotspotDevice == v58;
      v4 = v64;
      if (!v28)
      {
        goto LABEL_55;
      }

LABEL_70:

LABEL_71:
      v40 = v60;
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

        if (v68 != v20)
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
      v4 = v64;
      goto LABEL_75;
    }

    v41 = [v6 colocatedScopeID];
    if (!v41)
    {
      v11 = 0;
      v4 = v64;
LABEL_73:

      goto LABEL_76;
    }

    v59 = colocatedScopeID;
    v57 = v41;
    v42 = self->_colocatedScopeID;
    v43 = [v6 colocatedScopeID];
    v44 = v42;
    v45 = v43;
    if (([(NSString *)v44 isEqual:v43]& 1) != 0)
    {
      v56 = v45;
      goto LABEL_48;
    }

    v4 = v64;
    if (v66 != v29)
    {
    }

LABEL_59:

    if (v68 == v20)
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

  v30 = [v6 EAPCredentials];
  if (!v30)
  {
    goto LABEL_59;
  }

  v62 = v30;
  v64 = v4;
  v31 = self->_EAPCredentials;
  v32 = [v6 EAPCredentials];
  v33 = v31;
  v34 = v32;
  if ([(CWFEAPCredentials *)v33 isEqual:v32])
  {
    v61 = v34;
    goto LABEL_27;
  }

  v4 = v64;
  if (v68 != v20)
  {
LABEL_60:

    goto LABEL_61;
  }

LABEL_62:

  if (knownNetworkProfile != v13)
  {

    goto LABEL_64;
  }

LABEL_65:

  v11 = 0;
LABEL_66:
  if (scanResult != v8)
  {
    goto LABEL_67;
  }

LABEL_68:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAssocParameters *)self isEqualToAssocParameters:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  scanResult = self->_scanResult;
  v5 = a3;
  [v5 encodeObject:scanResult forKey:@"_scanResult"];
  [v5 encodeObject:self->_knownNetworkProfile forKey:@"_knownNetworkProfile"];
  [v5 encodeObject:self->_password forKey:@"_password"];
  [v5 encodeObject:self->_EAPCredentials forKey:@"_EAPCredentials"];
  [v5 encodeBool:self->_rememberUponSuccessfulAssociation forKey:@"_rememberUponSuccessfulAssociation"];
  [v5 encodeBool:self->_forceBSSID forKey:@"_forceBSSID"];
  [v5 encodeInteger:self->_bandPreference forKey:@"_bandPreference"];
  [v5 encodeObject:self->_colocatedScopeID forKey:@"_colocatedScopeID"];
  [v5 encodeBool:self->_has6GHzOnlyBSS forKey:@"_has6GHzOnlyBSS"];
  [v5 encodeObject:self->_remoteHotspotDevice forKey:@"_remoteHotspotDevice"];
  [v5 encodeBool:self->_findAndJoinNetwork forKey:@"_findAndJoinNetwork"];
}

- (CWFAssocParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CWFAssocParameters;
  v5 = [(CWFAssocParameters *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scanResult"];
    scanResult = v5->_scanResult;
    v5->_scanResult = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_knownNetworkProfile"];
    knownNetworkProfile = v5->_knownNetworkProfile;
    v5->_knownNetworkProfile = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_EAPCredentials"];
    EAPCredentials = v5->_EAPCredentials;
    v5->_EAPCredentials = v12;

    v5->_rememberUponSuccessfulAssociation = [v4 decodeBoolForKey:@"_rememberUponSuccessfulAssociation"];
    v5->_forceBSSID = [v4 decodeBoolForKey:@"_forceBSSID"];
    v5->_bandPreference = [v4 decodeIntegerForKey:@"_bandPreference"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_colocatedScopeID"];
    colocatedScopeID = v5->_colocatedScopeID;
    v5->_colocatedScopeID = v14;

    v5->_has6GHzOnlyBSS = [v4 decodeBoolForKey:@"_has6GHzOnlyBSS"];
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
      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_remoteHotspotDevice"];
      remoteHotspotDevice = v5->_remoteHotspotDevice;
      v5->_remoteHotspotDevice = v18;
    }

    v5->_findAndJoinNetwork = [v4 decodeBoolForKey:@"_findAndJoinNetwork"];
  }

  return v5;
}

@end