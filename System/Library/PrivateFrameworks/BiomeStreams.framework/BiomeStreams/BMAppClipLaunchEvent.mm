@interface BMAppClipLaunchEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMAppClipLaunchEvent)initWithProto:(id)proto;
- (BMAppClipLaunchEvent)initWithProtoData:(id)data;
- (BMAppClipLaunchEvent)initWithURLHash:(id)hash clipBundleID:(id)d appBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(id)reason fullURL:(id)l referrerURL:(id)rL referrerBundleID:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMAppClipLaunchEvent

- (BMAppClipLaunchEvent)initWithURLHash:(id)hash clipBundleID:(id)d appBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(id)reason fullURL:(id)l referrerURL:(id)rL referrerBundleID:(id)self0
{
  hashCopy = hash;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  reasonCopy = reason;
  lCopy = l;
  rLCopy = rL;
  referrerBundleIDCopy = referrerBundleID;
  v42.receiver = self;
  v42.super_class = BMAppClipLaunchEvent;
  v24 = [(BMEventBase *)&v42 init];
  if (v24)
  {
    v25 = [hashCopy copy];
    URLHash = v24->_URLHash;
    v24->_URLHash = v25;

    v27 = [dCopy copy];
    clipBundleID = v24->_clipBundleID;
    v24->_clipBundleID = v27;

    v29 = [iDCopy copy];
    appBundleID = v24->_appBundleID;
    v24->_appBundleID = v29;

    v31 = [bundleIDCopy copy];
    webAppBundleID = v24->_webAppBundleID;
    v24->_webAppBundleID = v31;

    v33 = [reasonCopy copy];
    launchReason = v24->_launchReason;
    v24->_launchReason = v33;

    v35 = [lCopy copy];
    fullURL = v24->_fullURL;
    v24->_fullURL = v35;

    v37 = [rLCopy copy];
    referrerURL = v24->_referrerURL;
    v24->_referrerURL = v37;

    v39 = [referrerBundleIDCopy copy];
    referrerBundleID = v24->_referrerBundleID;
    v24->_referrerBundleID = v39;
  }

  return v24;
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  uRLHash = [(BMAppClipLaunchEvent *)self URLHash];
  clipBundleID = [(BMAppClipLaunchEvent *)self clipBundleID];
  appBundleID = [(BMAppClipLaunchEvent *)self appBundleID];
  webAppBundleID = [(BMAppClipLaunchEvent *)self webAppBundleID];
  launchReason = [(BMAppClipLaunchEvent *)self launchReason];
  fullURL = [(BMAppClipLaunchEvent *)self fullURL];
  referrerURL = [(BMAppClipLaunchEvent *)self referrerURL];
  referrerBundleID = [(BMAppClipLaunchEvent *)self referrerBundleID];
  v12 = [v14 stringWithFormat:@"<%@ %p> URLHash: %@, clipBundleID: %@, appBundleID: %@, webAppBundleID: %@, launchReason: %@, fullURL: %@, referrerURL: %@, referrerBundleID: %@", v3, self, uRLHash, clipBundleID, appBundleID, webAppBundleID, launchReason, fullURL, referrerURL, referrerBundleID];

  return v12;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version != 1)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMAppClipLaunchEvent eventWithData:v7 dataVersion:?];
    }
  }

  v8 = [[self alloc] initWithProtoData:dataCopy];

  return v8;
}

- (id)encodeAsProto
{
  proto = [(BMAppClipLaunchEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMAppClipLaunchEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(BMAppClipLaunchEvent *)self initWithProto:v13];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  uRLHash = [v5 uRLHash];
  clipBundleID = [v5 clipBundleID];
  appBundleID = [v5 appBundleID];
  webAppBundleID = [v5 webAppBundleID];
  launchReason = [v5 launchReason];
  v7 = MEMORY[0x1E695DFF8];
  fullURL = [v5 fullURL];
  v15 = [v7 URLWithString:fullURL];
  v8 = MEMORY[0x1E695DFF8];
  referrerURL = [v5 referrerURL];
  v10 = [v8 URLWithString:referrerURL];
  referrerBundleID = [v5 referrerBundleID];

  self = [(BMAppClipLaunchEvent *)self initWithURLHash:uRLHash clipBundleID:clipBundleID appBundleID:appBundleID webAppBundleID:webAppBundleID launchReason:launchReason fullURL:v15 referrerURL:v10 referrerBundleID:referrerBundleID];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMAppClipLaunchEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBAppClipLaunchEvent alloc] initWithData:dataCopy];

    self = [(BMAppClipLaunchEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uRLHash = [(BMAppClipLaunchEvent *)self URLHash];
  [v3 setURLHash:uRLHash];

  clipBundleID = [(BMAppClipLaunchEvent *)self clipBundleID];
  [v3 setClipBundleID:clipBundleID];

  appBundleID = [(BMAppClipLaunchEvent *)self appBundleID];
  [v3 setAppBundleID:appBundleID];

  webAppBundleID = [(BMAppClipLaunchEvent *)self webAppBundleID];
  [v3 setWebAppBundleID:webAppBundleID];

  launchReason = [(BMAppClipLaunchEvent *)self launchReason];
  [v3 setLaunchReason:launchReason];

  fullURL = [(BMAppClipLaunchEvent *)self fullURL];
  absoluteString = [fullURL absoluteString];
  [v3 setFullURL:absoluteString];

  referrerURL = [(BMAppClipLaunchEvent *)self referrerURL];
  absoluteString2 = [referrerURL absoluteString];
  [v3 setReferrerURL:absoluteString2];

  referrerBundleID = [(BMAppClipLaunchEvent *)self referrerBundleID];
  [v3 setReferrerBundleID:referrerBundleID];

  return v3;
}

- (unint64_t)hash
{
  uRLHash = [(BMAppClipLaunchEvent *)self URLHash];
  v4 = [uRLHash hash];
  appBundleID = [(BMAppClipLaunchEvent *)self appBundleID];
  v6 = [appBundleID hash] ^ v4;
  clipBundleID = [(BMAppClipLaunchEvent *)self clipBundleID];
  v8 = [clipBundleID hash];
  webAppBundleID = [(BMAppClipLaunchEvent *)self webAppBundleID];
  v10 = v6 ^ v8 ^ [webAppBundleID hash];
  launchReason = [(BMAppClipLaunchEvent *)self launchReason];
  v12 = [launchReason hash];
  fullURL = [(BMAppClipLaunchEvent *)self fullURL];
  v14 = v12 ^ [fullURL hash];
  referrerURL = [(BMAppClipLaunchEvent *)self referrerURL];
  v16 = v10 ^ v14 ^ [referrerURL hash];
  referrerBundleID = [(BMAppClipLaunchEvent *)self referrerBundleID];
  v18 = [referrerBundleID hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    uRLHash = [(BMAppClipLaunchEvent *)self URLHash];
    if (uRLHash || ([v6 URLHash], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      uRLHash2 = [(BMAppClipLaunchEvent *)self URLHash];
      uRLHash3 = [v6 URLHash];
      v34 = [uRLHash2 isEqual:uRLHash3];

      if (uRLHash)
      {
LABEL_9:

        appBundleID = [(BMAppClipLaunchEvent *)self appBundleID];
        if (appBundleID || ([v6 appBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          uRLHash = [(BMAppClipLaunchEvent *)self appBundleID];
          appBundleID2 = [v6 appBundleID];
          v33 = [uRLHash isEqual:appBundleID2];

          if (appBundleID)
          {
LABEL_15:

            clipBundleID = [(BMAppClipLaunchEvent *)self clipBundleID];
            if (clipBundleID || ([v6 clipBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              uRLHash = [(BMAppClipLaunchEvent *)self clipBundleID];
              clipBundleID2 = [v6 clipBundleID];
              HIDWORD(v32) = [uRLHash isEqual:clipBundleID2];

              if (clipBundleID)
              {
LABEL_21:

                webAppBundleID = [(BMAppClipLaunchEvent *)self webAppBundleID];
                if (webAppBundleID || ([v6 webAppBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  uRLHash = [(BMAppClipLaunchEvent *)self webAppBundleID];
                  webAppBundleID2 = [v6 webAppBundleID];
                  LODWORD(v32) = [uRLHash isEqual:webAppBundleID2];

                  if (webAppBundleID)
                  {
LABEL_27:

                    launchReason = [(BMAppClipLaunchEvent *)self launchReason];
                    if (launchReason || ([v6 launchReason], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      uRLHash = [(BMAppClipLaunchEvent *)self launchReason];
                      launchReason2 = [v6 launchReason];
                      v19 = [uRLHash isEqual:launchReason2];

                      if (launchReason)
                      {
LABEL_33:

                        fullURL = [(BMAppClipLaunchEvent *)self fullURL];
                        if (fullURL || ([v6 fullURL], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          uRLHash = [(BMAppClipLaunchEvent *)self fullURL];
                          fullURL2 = [v6 fullURL];
                          v22 = [uRLHash isEqual:fullURL2];

                          if (fullURL)
                          {
LABEL_39:

                            referrerURL = [(BMAppClipLaunchEvent *)self referrerURL];
                            if (referrerURL || ([v6 referrerURL], (uRLHash = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              referrerURL2 = [(BMAppClipLaunchEvent *)self referrerURL];
                              referrerURL3 = [v6 referrerURL];
                              v26 = [referrerURL2 isEqual:referrerURL3];

                              if (referrerURL)
                              {
LABEL_45:

                                referrerBundleID = [(BMAppClipLaunchEvent *)self referrerBundleID];
                                if (referrerBundleID || ([v6 referrerBundleID], (uRLHash = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  referrerBundleID2 = [(BMAppClipLaunchEvent *)self referrerBundleID];
                                  referrerBundleID3 = [v6 referrerBundleID];
                                  v30 = [referrerBundleID2 isEqual:referrerBundleID3];

                                  if (referrerBundleID)
                                  {
LABEL_51:

                                    v10 = v34 & v33 & BYTE4(v32) & v32 & v19 & v22 & v26 & v30;
                                    goto LABEL_52;
                                  }
                                }

                                else
                                {
                                  v30 = 1;
                                }

                                goto LABEL_51;
                              }
                            }

                            else
                            {
                              v26 = 1;
                            }

                            goto LABEL_45;
                          }
                        }

                        else
                        {
                          v22 = 1;
                        }

                        goto LABEL_39;
                      }
                    }

                    else
                    {
                      v19 = 1;
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  LODWORD(v32) = 1;
                }

                goto LABEL_27;
              }
            }

            else
            {
              HIDWORD(v32) = 1;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v33 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v34 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_52:

  return v10 & 1;
}

@end