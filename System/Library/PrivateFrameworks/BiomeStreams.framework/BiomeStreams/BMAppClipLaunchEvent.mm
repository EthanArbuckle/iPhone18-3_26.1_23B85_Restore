@interface BMAppClipLaunchEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMAppClipLaunchEvent)initWithProto:(id)a3;
- (BMAppClipLaunchEvent)initWithProtoData:(id)a3;
- (BMAppClipLaunchEvent)initWithURLHash:(id)a3 clipBundleID:(id)a4 appBundleID:(id)a5 webAppBundleID:(id)a6 launchReason:(id)a7 fullURL:(id)a8 referrerURL:(id)a9 referrerBundleID:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMAppClipLaunchEvent

- (BMAppClipLaunchEvent)initWithURLHash:(id)a3 clipBundleID:(id)a4 appBundleID:(id)a5 webAppBundleID:(id)a6 launchReason:(id)a7 fullURL:(id)a8 referrerURL:(id)a9 referrerBundleID:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v42.receiver = self;
  v42.super_class = BMAppClipLaunchEvent;
  v24 = [(BMEventBase *)&v42 init];
  if (v24)
  {
    v25 = [v16 copy];
    URLHash = v24->_URLHash;
    v24->_URLHash = v25;

    v27 = [v17 copy];
    clipBundleID = v24->_clipBundleID;
    v24->_clipBundleID = v27;

    v29 = [v18 copy];
    appBundleID = v24->_appBundleID;
    v24->_appBundleID = v29;

    v31 = [v19 copy];
    webAppBundleID = v24->_webAppBundleID;
    v24->_webAppBundleID = v31;

    v33 = [v20 copy];
    launchReason = v24->_launchReason;
    v24->_launchReason = v33;

    v35 = [v21 copy];
    fullURL = v24->_fullURL;
    v24->_fullURL = v35;

    v37 = [v22 copy];
    referrerURL = v24->_referrerURL;
    v24->_referrerURL = v37;

    v39 = [v23 copy];
    referrerBundleID = v24->_referrerBundleID;
    v24->_referrerBundleID = v39;
  }

  return v24;
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [(BMAppClipLaunchEvent *)self URLHash];
  v5 = [(BMAppClipLaunchEvent *)self clipBundleID];
  v6 = [(BMAppClipLaunchEvent *)self appBundleID];
  v7 = [(BMAppClipLaunchEvent *)self webAppBundleID];
  v8 = [(BMAppClipLaunchEvent *)self launchReason];
  v9 = [(BMAppClipLaunchEvent *)self fullURL];
  v10 = [(BMAppClipLaunchEvent *)self referrerURL];
  v11 = [(BMAppClipLaunchEvent *)self referrerBundleID];
  v12 = [v14 stringWithFormat:@"<%@ %p> URLHash: %@, clipBundleID: %@, appBundleID: %@, webAppBundleID: %@, launchReason: %@, fullURL: %@, referrerURL: %@, referrerBundleID: %@", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 != 1)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMAppClipLaunchEvent eventWithData:v7 dataVersion:?];
    }
  }

  v8 = [[a1 alloc] initWithProtoData:v6];

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(BMAppClipLaunchEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMAppClipLaunchEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v12 = 0;
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

  v5 = v4;
  v19 = [v5 uRLHash];
  v18 = [v5 clipBundleID];
  v6 = [v5 appBundleID];
  v17 = [v5 webAppBundleID];
  v16 = [v5 launchReason];
  v7 = MEMORY[0x1E695DFF8];
  v20 = [v5 fullURL];
  v15 = [v7 URLWithString:v20];
  v8 = MEMORY[0x1E695DFF8];
  v9 = [v5 referrerURL];
  v10 = [v8 URLWithString:v9];
  v11 = [v5 referrerBundleID];

  self = [(BMAppClipLaunchEvent *)self initWithURLHash:v19 clipBundleID:v18 appBundleID:v6 webAppBundleID:v17 launchReason:v16 fullURL:v15 referrerURL:v10 referrerBundleID:v11];
  v12 = self;
LABEL_8:

  return v12;
}

- (BMAppClipLaunchEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBAppClipLaunchEvent alloc] initWithData:v4];

    self = [(BMAppClipLaunchEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMAppClipLaunchEvent *)self URLHash];
  [v3 setURLHash:v4];

  v5 = [(BMAppClipLaunchEvent *)self clipBundleID];
  [v3 setClipBundleID:v5];

  v6 = [(BMAppClipLaunchEvent *)self appBundleID];
  [v3 setAppBundleID:v6];

  v7 = [(BMAppClipLaunchEvent *)self webAppBundleID];
  [v3 setWebAppBundleID:v7];

  v8 = [(BMAppClipLaunchEvent *)self launchReason];
  [v3 setLaunchReason:v8];

  v9 = [(BMAppClipLaunchEvent *)self fullURL];
  v10 = [v9 absoluteString];
  [v3 setFullURL:v10];

  v11 = [(BMAppClipLaunchEvent *)self referrerURL];
  v12 = [v11 absoluteString];
  [v3 setReferrerURL:v12];

  v13 = [(BMAppClipLaunchEvent *)self referrerBundleID];
  [v3 setReferrerBundleID:v13];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(BMAppClipLaunchEvent *)self URLHash];
  v4 = [v3 hash];
  v5 = [(BMAppClipLaunchEvent *)self appBundleID];
  v6 = [v5 hash] ^ v4;
  v7 = [(BMAppClipLaunchEvent *)self clipBundleID];
  v8 = [v7 hash];
  v9 = [(BMAppClipLaunchEvent *)self webAppBundleID];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(BMAppClipLaunchEvent *)self launchReason];
  v12 = [v11 hash];
  v13 = [(BMAppClipLaunchEvent *)self fullURL];
  v14 = v12 ^ [v13 hash];
  v15 = [(BMAppClipLaunchEvent *)self referrerURL];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(BMAppClipLaunchEvent *)self referrerBundleID];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(BMAppClipLaunchEvent *)self URLHash];
    if (v7 || ([v6 URLHash], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(BMAppClipLaunchEvent *)self URLHash];
      v9 = [v6 URLHash];
      v34 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_9:

        v11 = [(BMAppClipLaunchEvent *)self appBundleID];
        if (v11 || ([v6 appBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v7 = [(BMAppClipLaunchEvent *)self appBundleID];
          v12 = [v6 appBundleID];
          v33 = [v7 isEqual:v12];

          if (v11)
          {
LABEL_15:

            v13 = [(BMAppClipLaunchEvent *)self clipBundleID];
            if (v13 || ([v6 clipBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v7 = [(BMAppClipLaunchEvent *)self clipBundleID];
              v14 = [v6 clipBundleID];
              HIDWORD(v32) = [v7 isEqual:v14];

              if (v13)
              {
LABEL_21:

                v15 = [(BMAppClipLaunchEvent *)self webAppBundleID];
                if (v15 || ([v6 webAppBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v7 = [(BMAppClipLaunchEvent *)self webAppBundleID];
                  v16 = [v6 webAppBundleID];
                  LODWORD(v32) = [v7 isEqual:v16];

                  if (v15)
                  {
LABEL_27:

                    v17 = [(BMAppClipLaunchEvent *)self launchReason];
                    if (v17 || ([v6 launchReason], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v7 = [(BMAppClipLaunchEvent *)self launchReason];
                      v18 = [v6 launchReason];
                      v19 = [v7 isEqual:v18];

                      if (v17)
                      {
LABEL_33:

                        v20 = [(BMAppClipLaunchEvent *)self fullURL];
                        if (v20 || ([v6 fullURL], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          v7 = [(BMAppClipLaunchEvent *)self fullURL];
                          v21 = [v6 fullURL];
                          v22 = [v7 isEqual:v21];

                          if (v20)
                          {
LABEL_39:

                            v23 = [(BMAppClipLaunchEvent *)self referrerURL];
                            if (v23 || ([v6 referrerURL], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
                            {
                              v24 = [(BMAppClipLaunchEvent *)self referrerURL];
                              v25 = [v6 referrerURL];
                              v26 = [v24 isEqual:v25];

                              if (v23)
                              {
LABEL_45:

                                v27 = [(BMAppClipLaunchEvent *)self referrerBundleID];
                                if (v27 || ([v6 referrerBundleID], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  v28 = [(BMAppClipLaunchEvent *)self referrerBundleID];
                                  v29 = [v6 referrerBundleID];
                                  v30 = [v28 isEqual:v29];

                                  if (v27)
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