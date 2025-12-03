@interface PKInAppPaymentPresentationHostContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHostContext:(id)context;
- (PKInAppPaymentPresentationHostContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKInAppPaymentPresentationHostContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKInAppPaymentPresentationHostContext allocWithZone:?]];
  v5 = [(PKPaymentRequest *)self->_request copy];
  request = v4->_request;
  v4->_request = v5;

  v4->_awaitingRemoteNetworkPaymentRequest = self->_awaitingRemoteNetworkPaymentRequest;
  v7 = [(NSString *)self->_identifier copy];
  identifier = v4->_identifier;
  v4->_identifier = v7;

  v9 = [(NSString *)self->_sceneIdentifier copy];
  sceneIdentifier = v4->_sceneIdentifier;
  v4->_sceneIdentifier = v9;

  v11 = [(NSString *)self->_teamID copy];
  teamID = v4->_teamID;
  v4->_teamID = v11;

  v13 = [(NSString *)self->_applicationName copy];
  applicationName = v4->_applicationName;
  v4->_applicationName = v13;

  v15 = [(NSString *)self->_bundleIdentifier copy];
  bundleIdentifier = v4->_bundleIdentifier;
  v4->_bundleIdentifier = v15;

  v17 = [(NSString *)self->_applicationIdentifier copy];
  applicationIdentifier = v4->_applicationIdentifier;
  v4->_applicationIdentifier = v17;

  v19 = [(NSString *)self->_sceneBundleIdentifier copy];
  sceneBundleIdentifier = v4->_sceneBundleIdentifier;
  v4->_sceneBundleIdentifier = v19;

  v4->_omitPresentationTarget = self->_omitPresentationTarget;
  v21 = [(NSNumber *)self->_orientation copy];
  orientation = v4->_orientation;
  v4->_orientation = v21;

  v23 = [(NSString *)self->_analyticsSubject copy];
  analyticsSubject = v4->_analyticsSubject;
  v4->_analyticsSubject = v23;

  v25 = [(NSData *)self->_analyticsArchivedSessionToken copy];
  analyticsArchivedSessionToken = v4->_analyticsArchivedSessionToken;
  v4->_analyticsArchivedSessionToken = v25;

  v4->_hasIssuerInstallmentsHandoffViewOpenAssertion = self->_hasIssuerInstallmentsHandoffViewOpenAssertion;
  return v4;
}

- (PKInAppPaymentPresentationHostContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKInAppPaymentPresentationHostContext;
  v5 = [(PKInAppPaymentPresentationHostContext *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    [(PKInAppPaymentPresentationHostContext *)v5 setRequest:v6];

    -[PKInAppPaymentPresentationHostContext setAwaitingRemoteNetworkPaymentRequest:](v5, "setAwaitingRemoteNetworkPaymentRequest:", [coderCopy decodeBoolForKey:@"awaitingRemoteNetworkPaymentRequest"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setSceneIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
    [(PKInAppPaymentPresentationHostContext *)v5 setTeamID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationName"];
    [(PKInAppPaymentPresentationHostContext *)v5 setApplicationName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setBundleIdentifier:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setApplicationIdentifier:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneBundleIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setSceneBundleIdentifier:v13];

    -[PKInAppPaymentPresentationHostContext setOmitPresentationTarget:](v5, "setOmitPresentationTarget:", [coderCopy decodeBoolForKey:@"omitPresentationTarget"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
    [(PKInAppPaymentPresentationHostContext *)v5 setOrientation:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsSubject"];
    [(PKInAppPaymentPresentationHostContext *)v5 setAnalyticsSubject:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsArchivedSessionToken"];
    [(PKInAppPaymentPresentationHostContext *)v5 setAnalyticsArchivedSessionToken:v16];

    -[PKInAppPaymentPresentationHostContext setHasIssuerInstallmentsHandoffViewOpenAssertion:](v5, "setHasIssuerInstallmentsHandoffViewOpenAssertion:", [coderCopy decodeBoolForKey:@"hasIssuerInstallmentsHandoffViewOpenAssertion"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  request = [(PKInAppPaymentPresentationHostContext *)self request];
  [coderCopy encodeObject:request forKey:@"request"];

  [coderCopy encodeBool:-[PKInAppPaymentPresentationHostContext awaitingRemoteNetworkPaymentRequest](self forKey:{"awaitingRemoteNetworkPaymentRequest"), @"awaitingRemoteNetworkPaymentRequest"}];
  identifier = [(PKInAppPaymentPresentationHostContext *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  sceneIdentifier = [(PKInAppPaymentPresentationHostContext *)self sceneIdentifier];
  [coderCopy encodeObject:sceneIdentifier forKey:@"sceneIdentifier"];

  teamID = [(PKInAppPaymentPresentationHostContext *)self teamID];
  [coderCopy encodeObject:teamID forKey:@"teamID"];

  applicationName = [(PKInAppPaymentPresentationHostContext *)self applicationName];
  [coderCopy encodeObject:applicationName forKey:@"applicationName"];

  bundleIdentifier = [(PKInAppPaymentPresentationHostContext *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  applicationIdentifier = [(PKInAppPaymentPresentationHostContext *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  sceneBundleIdentifier = [(PKInAppPaymentPresentationHostContext *)self sceneBundleIdentifier];
  [coderCopy encodeObject:sceneBundleIdentifier forKey:@"sceneBundleIdentifier"];

  [coderCopy encodeBool:-[PKInAppPaymentPresentationHostContext omitPresentationTarget](self forKey:{"omitPresentationTarget"), @"omitPresentationTarget"}];
  orientation = [(PKInAppPaymentPresentationHostContext *)self orientation];
  [coderCopy encodeObject:orientation forKey:@"orientation"];

  analyticsSubject = [(PKInAppPaymentPresentationHostContext *)self analyticsSubject];
  [coderCopy encodeObject:analyticsSubject forKey:@"analyticsSubject"];

  analyticsArchivedSessionToken = [(PKInAppPaymentPresentationHostContext *)self analyticsArchivedSessionToken];
  [coderCopy encodeObject:analyticsArchivedSessionToken forKey:@"analyticsArchivedSessionToken"];

  [coderCopy encodeBool:-[PKInAppPaymentPresentationHostContext hasIssuerInstallmentsHandoffViewOpenAssertion](self forKey:{"hasIssuerInstallmentsHandoffViewOpenAssertion"), @"hasIssuerInstallmentsHandoffViewOpenAssertion"}];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_request];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_awaitingRemoteNetworkPaymentRequest];
  [array safelyAddObject:v4];

  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_sceneIdentifier];
  [array safelyAddObject:self->_teamID];
  [array safelyAddObject:self->_applicationName];
  [array safelyAddObject:self->_bundleIdentifier];
  [array safelyAddObject:self->_applicationName];
  [array safelyAddObject:self->_sceneBundleIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_omitPresentationTarget];
  [array safelyAddObject:v5];

  [array safelyAddObject:self->_orientation];
  [array safelyAddObject:self->_analyticsSubject];
  [array safelyAddObject:self->_analyticsArchivedSessionToken];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasIssuerInstallmentsHandoffViewOpenAssertion];
  [array safelyAddObject:v6];

  v10.receiver = self;
  v10.super_class = PKInAppPaymentPresentationHostContext;
  v7 = [(PKInAppPaymentPresentationHostContext *)&v10 hash];
  v8 = PKCombinedHash(v7, array);

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInAppPaymentPresentationHostContext *)self isEqualToHostContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToHostContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    request = self->_request;
    request = [contextCopy request];
    v8 = request;
    if (request)
    {
      v9 = request == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (request == request)
      {
        goto LABEL_11;
      }
    }

    else if ([(PKPaymentRequest *)request isEqual:request])
    {
LABEL_11:
      identifier = self->_identifier;
      identifier = [v5 identifier];
      v14 = identifier;
      v15 = identifier;
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v14 || !v15)
        {
          v20 = v15;
LABEL_89:

          goto LABEL_90;
        }

        v17 = [(NSString *)v14 isEqualToString:v15];

        if (!v17)
        {
          LOBYTE(v10) = 0;
LABEL_91:

          goto LABEL_92;
        }
      }

      sceneIdentifier = self->_sceneIdentifier;
      sceneIdentifier = [v5 sceneIdentifier];
      v20 = sceneIdentifier;
      v21 = sceneIdentifier;
      v14 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v20 || !v21)
        {
          v25 = v21;
LABEL_88:

          goto LABEL_89;
        }

        v22 = [(NSString *)v20 isEqualToString:v21];

        if (!v22)
        {
          LOBYTE(v10) = 0;
LABEL_90:

          goto LABEL_91;
        }
      }

      teamID = self->_teamID;
      teamID = [v5 teamID];
      v25 = teamID;
      v26 = teamID;
      v20 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v25 || !v26)
        {
          v30 = v26;
LABEL_87:

          goto LABEL_88;
        }

        v27 = [(NSString *)v25 isEqualToString:v26];

        if (!v27)
        {
          LOBYTE(v10) = 0;
          goto LABEL_89;
        }
      }

      applicationName = self->_applicationName;
      applicationName = [v5 applicationName];
      v30 = applicationName;
      v31 = applicationName;
      v25 = v31;
      if (v30 == v31)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v30 || !v31)
        {
          v35 = v31;
LABEL_86:

          goto LABEL_87;
        }

        v32 = [(NSString *)v30 isEqualToString:v31];

        if (!v32)
        {
          LOBYTE(v10) = 0;
          goto LABEL_88;
        }
      }

      bundleIdentifier = self->_bundleIdentifier;
      bundleIdentifier = [v5 bundleIdentifier];
      v35 = bundleIdentifier;
      v36 = bundleIdentifier;
      v30 = v36;
      if (v35 == v36)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v35 || !v36)
        {
          v42 = v36;
LABEL_85:

          goto LABEL_86;
        }

        v10 = [(NSString *)v35 isEqualToString:v36];

        if (!v10)
        {
          goto LABEL_87;
        }
      }

      v37 = self->_applicationName;
      applicationName2 = [v5 applicationName];
      v39 = v37;
      v40 = applicationName2;
      v41 = v39;
      v35 = v40;
      if (v39 == v40)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v73 = v41;
        if (!v41 || !v40)
        {
          v49 = v40;
LABEL_83:

          goto LABEL_84;
        }

        v10 = [(NSString *)v41 isEqualToString:v40];

        if (!v10)
        {
          goto LABEL_86;
        }
      }

      sceneBundleIdentifier = self->_sceneBundleIdentifier;
      sceneBundleIdentifier = [v5 sceneBundleIdentifier];
      v44 = sceneBundleIdentifier;
      v45 = sceneBundleIdentifier;
      v46 = v44;
      v47 = v45;
      v73 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v71 = v46;
        if (!v46 || !v45)
        {
          goto LABEL_81;
        }

        v48 = v45;
        v69 = [(NSString *)v46 isEqualToString:v45];

        if (!v69)
        {
          LOBYTE(v10) = 0;
LABEL_84:
          v42 = v73;
          goto LABEL_85;
        }
      }

      analyticsSubject = self->_analyticsSubject;
      analyticsSubject = [v5 analyticsSubject];
      v51 = analyticsSubject;
      v52 = analyticsSubject;
      v53 = v51;
      v54 = v52;
      v71 = v52;
      if (v51 == v52)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v70 = v53;
        if (!v53 || !v52)
        {
          goto LABEL_80;
        }

        v55 = v52;
        LODWORD(v67) = [(NSString *)v53 isEqualToString:v52];

        if (!v67)
        {
          LOBYTE(v10) = 0;
LABEL_82:
          v49 = v71;
          goto LABEL_83;
        }
      }

      analyticsArchivedSessionToken = self->_analyticsArchivedSessionToken;
      analyticsArchivedSessionToken = [v5 analyticsArchivedSessionToken];
      v47 = analyticsArchivedSessionToken;
      if (analyticsArchivedSessionToken && analyticsArchivedSessionToken)
      {
        v58 = analyticsArchivedSessionToken;
        v59 = v47;
        v60 = [(NSData *)v58 isEqual:v47];
        v47 = v59;
        if (v60)
        {
LABEL_68:
          v70 = v47;
          orientation = self->_orientation;
          orientation = [v5 orientation];
          v68 = orientation;
          if (orientation && orientation)
          {
            if (([(NSNumber *)orientation isEqual:orientation]& 1) == 0)
            {
              goto LABEL_78;
            }
          }

          else if (orientation != orientation)
          {
            goto LABEL_78;
          }

          omitPresentationTarget = self->_omitPresentationTarget;
          if (omitPresentationTarget == [v5 omitPresentationTarget])
          {
            awaitingRemoteNetworkPaymentRequest = self->_awaitingRemoteNetworkPaymentRequest;
            if (awaitingRemoteNetworkPaymentRequest == [v5 awaitingRemoteNetworkPaymentRequest])
            {
              hasIssuerInstallmentsHandoffViewOpenAssertion = self->_hasIssuerInstallmentsHandoffViewOpenAssertion;
              LOBYTE(v10) = hasIssuerInstallmentsHandoffViewOpenAssertion == [v5 hasIssuerInstallmentsHandoffViewOpenAssertion];
LABEL_79:
              v54 = v68;
LABEL_80:

              v47 = v70;
              goto LABEL_81;
            }
          }

LABEL_78:
          LOBYTE(v10) = 0;
          goto LABEL_79;
        }
      }

      else if (analyticsArchivedSessionToken == analyticsArchivedSessionToken)
      {
        goto LABEL_68;
      }

      LOBYTE(v10) = 0;
LABEL_81:

      goto LABEL_82;
    }

    LOBYTE(v10) = 0;
LABEL_92:

    goto LABEL_93;
  }

  LOBYTE(v10) = 0;
LABEL_93:

  return v10;
}

@end