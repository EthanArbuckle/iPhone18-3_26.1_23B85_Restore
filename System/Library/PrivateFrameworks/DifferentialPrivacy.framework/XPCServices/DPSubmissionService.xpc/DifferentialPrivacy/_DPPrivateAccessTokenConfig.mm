@interface _DPPrivateAccessTokenConfig
+ (id)createAndPersist;
- (_DPPrivateAccessTokenConfig)initWithData:(id)data;
- (id)description;
- (id)getPreferredIssuerFromPlist:(id)plist;
- (void)persistTokenRefreshHours;
@end

@implementation _DPPrivateAccessTokenConfig

+ (id)createAndPersist
{
  v2 = [NSURL URLWithString:@"https://unlinkability.apple.com/config/global-dap-ppm-config.plist"];
  v3 = objc_autoreleasePoolPush();
  v4 = [[_DPDediscoBackgroundDownloaderService alloc] initWithURL:v2];
  downloadConfigSynchronously = [(_DPDediscoBackgroundDownloaderService *)v4 downloadConfigSynchronously];

  objc_autoreleasePoolPop(v3);
  if ([downloadConfigSynchronously length])
  {
    v6 = [[_DPPrivateAccessTokenConfig alloc] initWithData:downloadConfigSynchronously];
    if (v6)
    {
      v7 = +[_DPLog service];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v2;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Private access token configuration from %@: %@", &v10, 0x16u);
      }

      [(_DPPrivateAccessTokenConfig *)v6 persistTokenRefreshHours];
    }
  }

  else
  {
    v8 = +[_DPLog service];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004FF24();
    }

    v6 = 0;
  }

  return v6;
}

- (_DPPrivateAccessTokenConfig)initWithData:(id)data
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = _DPPrivateAccessTokenConfig;
  v5 = [(_DPPrivateAccessTokenConfig *)&v17 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v16 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v16];
  v7 = v16;
  if (!v6)
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004FFD8();
    }

    goto LABEL_11;
  }

  v8 = [(_DPPrivateAccessTokenConfig *)v5 getPreferredIssuerFromPlist:v6];
  if (!v8)
  {
    v14 = +[_DPLog service];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004FF98();
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:@"issuer-url"];
  v11 = [v10 copy];
  issuerURL = v5->_issuerURL;
  v5->_issuerURL = v11;

  v5->_tokenRefreshHours = [v9 integerForKey:@"token-refresh-hours" minValue:2 maxValue:72 defaultValue:4];
  v5->_tokensPerRefresh = [v9 integerForKey:@"tokens-per-refresh" minValue:0 maxValue:30 defaultValue:16];
  v5->_maxDailyOnDemand = [v9 integerForKey:@"max-daily-on-demand" minValue:0 maxValue:0x7FFFFFFFFFFFFFFFLL defaultValue:2];
  v5->_onDemandCoolDownSeconds = [v9 integerForKey:@"on-demand-cooldown-seconds" minValue:0 maxValue:1800 defaultValue:0];

LABEL_5:
  v13 = v5;
LABEL_12:

  return v13;
}

- (id)getPreferredIssuerFromPlist:(id)plist
{
  plistCopy = plist;
  [plistCopy objectForKeyedSubscript:@"private-access-token-issuers"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v28 = 0;
    v26 = 0;
    v5 = @"issuer-url";
    v6 = @"enabled";
    v7 = *v31;
    do
    {
      v8 = 0;
      v27 = v4;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:v5];
        if ([v10 length])
        {
          v11 = [v9 objectForKeyedSubscript:v6];
          v12 = v11;
          if (!v11 || [v11 BOOLValue])
          {
            v13 = [v9 objectForKeyedSubscript:@"not-before"];
            if (!v13 || (+[NSDate date](NSDate, "date"), v14 = objc_claimAutoreleasedReturnValue(), [v14 timeIntervalSince1970], v16 = v15, v14, objc_msgSend(v13, "doubleValue"), v16 > v17))
            {
              v18 = v7;
              v19 = v5;
              v20 = v6;
              v21 = [v9 objectForKeyedSubscript:@"version"];
              unsignedIntegerValue = [v21 unsignedIntegerValue];

              if (unsignedIntegerValue > v28)
              {
                v23 = v9;

                v28 = unsignedIntegerValue;
                v26 = v23;
              }

              v6 = v20;
              v5 = v19;
              v7 = v18;
              v4 = v27;
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v4 != v8);
      v4 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v4);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)persistTokenRefreshHours
{
  v3 = +[_DPStrings tokenRefreshHoursKeyName];
  v4 = +[NSUserDefaults standardUserDefaults];
  if (v4)
  {
    tokenRefreshHours = [(_DPPrivateAccessTokenConfig *)self tokenRefreshHours];
    if (tokenRefreshHours == kSecondsIn4Hours)
    {
      [v4 removeObjectForKey:v3];
    }

    else if ([(_DPPrivateAccessTokenConfig *)self tokenRefreshHours]>= 1)
    {
      [v4 setInteger:-[_DPPrivateAccessTokenConfig tokenRefreshHours](self forKey:{"tokenRefreshHours"), v3}];
    }

    [v4 synchronize];
  }

  else
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10005004C();
    }
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"TokenConfig: {\n"];
  issuerURL = [(_DPPrivateAccessTokenConfig *)self issuerURL];
  [v3 appendFormat:@"  issuerURL: %@\n", issuerURL];

  [v3 appendFormat:@"  tokenRefreshHours: %ld\n", -[_DPPrivateAccessTokenConfig tokenRefreshHours](self, "tokenRefreshHours")];
  [v3 appendFormat:@"  tokensPerRefresh: %ld\n", -[_DPPrivateAccessTokenConfig tokensPerRefresh](self, "tokensPerRefresh")];
  [v3 appendFormat:@"  maxDailyOnDemand: %ld\n", -[_DPPrivateAccessTokenConfig maxDailyOnDemand](self, "maxDailyOnDemand")];
  [v3 appendFormat:@"  onDemandCoolDownSeconds: %ld\n", -[_DPPrivateAccessTokenConfig onDemandCoolDownSeconds](self, "onDemandCoolDownSeconds")];
  [v3 appendString:@"}"];

  return v3;
}

@end