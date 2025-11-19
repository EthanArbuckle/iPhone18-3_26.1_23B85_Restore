@interface PKInAppPaymentPresentationHostContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHostContext:(id)a3;
- (PKInAppPaymentPresentationHostContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKInAppPaymentPresentationHostContext

- (id)copyWithZone:(_NSZone *)a3
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

- (PKInAppPaymentPresentationHostContext)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKInAppPaymentPresentationHostContext;
  v5 = [(PKInAppPaymentPresentationHostContext *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    [(PKInAppPaymentPresentationHostContext *)v5 setRequest:v6];

    -[PKInAppPaymentPresentationHostContext setAwaitingRemoteNetworkPaymentRequest:](v5, "setAwaitingRemoteNetworkPaymentRequest:", [v4 decodeBoolForKey:@"awaitingRemoteNetworkPaymentRequest"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setSceneIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"teamID"];
    [(PKInAppPaymentPresentationHostContext *)v5 setTeamID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationName"];
    [(PKInAppPaymentPresentationHostContext *)v5 setApplicationName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setBundleIdentifier:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setApplicationIdentifier:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneBundleIdentifier"];
    [(PKInAppPaymentPresentationHostContext *)v5 setSceneBundleIdentifier:v13];

    -[PKInAppPaymentPresentationHostContext setOmitPresentationTarget:](v5, "setOmitPresentationTarget:", [v4 decodeBoolForKey:@"omitPresentationTarget"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"orientation"];
    [(PKInAppPaymentPresentationHostContext *)v5 setOrientation:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsSubject"];
    [(PKInAppPaymentPresentationHostContext *)v5 setAnalyticsSubject:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"analyticsArchivedSessionToken"];
    [(PKInAppPaymentPresentationHostContext *)v5 setAnalyticsArchivedSessionToken:v16];

    -[PKInAppPaymentPresentationHostContext setHasIssuerInstallmentsHandoffViewOpenAssertion:](v5, "setHasIssuerInstallmentsHandoffViewOpenAssertion:", [v4 decodeBoolForKey:@"hasIssuerInstallmentsHandoffViewOpenAssertion"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(PKInAppPaymentPresentationHostContext *)self request];
  [v15 encodeObject:v4 forKey:@"request"];

  [v15 encodeBool:-[PKInAppPaymentPresentationHostContext awaitingRemoteNetworkPaymentRequest](self forKey:{"awaitingRemoteNetworkPaymentRequest"), @"awaitingRemoteNetworkPaymentRequest"}];
  v5 = [(PKInAppPaymentPresentationHostContext *)self identifier];
  [v15 encodeObject:v5 forKey:@"identifier"];

  v6 = [(PKInAppPaymentPresentationHostContext *)self sceneIdentifier];
  [v15 encodeObject:v6 forKey:@"sceneIdentifier"];

  v7 = [(PKInAppPaymentPresentationHostContext *)self teamID];
  [v15 encodeObject:v7 forKey:@"teamID"];

  v8 = [(PKInAppPaymentPresentationHostContext *)self applicationName];
  [v15 encodeObject:v8 forKey:@"applicationName"];

  v9 = [(PKInAppPaymentPresentationHostContext *)self bundleIdentifier];
  [v15 encodeObject:v9 forKey:@"bundleIdentifier"];

  v10 = [(PKInAppPaymentPresentationHostContext *)self applicationIdentifier];
  [v15 encodeObject:v10 forKey:@"applicationIdentifier"];

  v11 = [(PKInAppPaymentPresentationHostContext *)self sceneBundleIdentifier];
  [v15 encodeObject:v11 forKey:@"sceneBundleIdentifier"];

  [v15 encodeBool:-[PKInAppPaymentPresentationHostContext omitPresentationTarget](self forKey:{"omitPresentationTarget"), @"omitPresentationTarget"}];
  v12 = [(PKInAppPaymentPresentationHostContext *)self orientation];
  [v15 encodeObject:v12 forKey:@"orientation"];

  v13 = [(PKInAppPaymentPresentationHostContext *)self analyticsSubject];
  [v15 encodeObject:v13 forKey:@"analyticsSubject"];

  v14 = [(PKInAppPaymentPresentationHostContext *)self analyticsArchivedSessionToken];
  [v15 encodeObject:v14 forKey:@"analyticsArchivedSessionToken"];

  [v15 encodeBool:-[PKInAppPaymentPresentationHostContext hasIssuerInstallmentsHandoffViewOpenAssertion](self forKey:{"hasIssuerInstallmentsHandoffViewOpenAssertion"), @"hasIssuerInstallmentsHandoffViewOpenAssertion"}];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_request];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_awaitingRemoteNetworkPaymentRequest];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_sceneIdentifier];
  [v3 safelyAddObject:self->_teamID];
  [v3 safelyAddObject:self->_applicationName];
  [v3 safelyAddObject:self->_bundleIdentifier];
  [v3 safelyAddObject:self->_applicationName];
  [v3 safelyAddObject:self->_sceneBundleIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_omitPresentationTarget];
  [v3 safelyAddObject:v5];

  [v3 safelyAddObject:self->_orientation];
  [v3 safelyAddObject:self->_analyticsSubject];
  [v3 safelyAddObject:self->_analyticsArchivedSessionToken];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasIssuerInstallmentsHandoffViewOpenAssertion];
  [v3 safelyAddObject:v6];

  v10.receiver = self;
  v10.super_class = PKInAppPaymentPresentationHostContext;
  v7 = [(PKInAppPaymentPresentationHostContext *)&v10 hash];
  v8 = PKCombinedHash(v7, v3);

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInAppPaymentPresentationHostContext *)self isEqualToHostContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToHostContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    request = self->_request;
    v7 = [v4 request];
    v8 = v7;
    if (request)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (request == v7)
      {
        goto LABEL_11;
      }
    }

    else if ([(PKPaymentRequest *)request isEqual:v7])
    {
LABEL_11:
      identifier = self->_identifier;
      v13 = [v5 identifier];
      v14 = identifier;
      v15 = v13;
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
      v19 = [v5 sceneIdentifier];
      v20 = sceneIdentifier;
      v21 = v19;
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
      v24 = [v5 teamID];
      v25 = teamID;
      v26 = v24;
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
      v29 = [v5 applicationName];
      v30 = applicationName;
      v31 = v29;
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
      v34 = [v5 bundleIdentifier];
      v35 = bundleIdentifier;
      v36 = v34;
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
      v38 = [v5 applicationName];
      v39 = v37;
      v40 = v38;
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
      v74 = [v5 sceneBundleIdentifier];
      v44 = sceneBundleIdentifier;
      v45 = v74;
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
      v72 = [v5 analyticsSubject];
      v51 = analyticsSubject;
      v52 = v72;
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
      v57 = [v5 analyticsArchivedSessionToken];
      v47 = v57;
      if (analyticsArchivedSessionToken && v57)
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
          v62 = [v5 orientation];
          v68 = v62;
          if (orientation && v62)
          {
            if (([(NSNumber *)orientation isEqual:v62]& 1) == 0)
            {
              goto LABEL_78;
            }
          }

          else if (orientation != v62)
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

      else if (analyticsArchivedSessionToken == v57)
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