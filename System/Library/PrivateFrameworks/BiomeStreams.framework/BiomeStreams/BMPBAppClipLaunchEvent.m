@interface BMPBAppClipLaunchEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBAppClipLaunchEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBAppClipLaunchEvent;
  v4 = [(BMPBAppClipLaunchEvent *)&v8 description];
  v5 = [(BMPBAppClipLaunchEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uRLHash = self->_uRLHash;
  if (uRLHash)
  {
    [v3 setObject:uRLHash forKey:@"URLHash"];
  }

  clipBundleID = self->_clipBundleID;
  if (clipBundleID)
  {
    [v4 setObject:clipBundleID forKey:@"clipBundleID"];
  }

  appBundleID = self->_appBundleID;
  if (appBundleID)
  {
    [v4 setObject:appBundleID forKey:@"appBundleID"];
  }

  webAppBundleID = self->_webAppBundleID;
  if (webAppBundleID)
  {
    [v4 setObject:webAppBundleID forKey:@"webAppBundleID"];
  }

  launchReason = self->_launchReason;
  if (launchReason)
  {
    [v4 setObject:launchReason forKey:@"launchReason"];
  }

  fullURL = self->_fullURL;
  if (fullURL)
  {
    [v4 setObject:fullURL forKey:@"fullURL"];
  }

  referrerURL = self->_referrerURL;
  if (referrerURL)
  {
    [v4 setObject:referrerURL forKey:@"referrerURL"];
  }

  referrerBundleID = self->_referrerBundleID;
  if (referrerBundleID)
  {
    [v4 setObject:referrerBundleID forKey:@"referrerBundleID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uRLHash)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clipBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_webAppBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_fullURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_referrerURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_referrerBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uRLHash)
  {
    [v4 setURLHash:?];
    v4 = v5;
  }

  if (self->_clipBundleID)
  {
    [v5 setClipBundleID:?];
    v4 = v5;
  }

  if (self->_appBundleID)
  {
    [v5 setAppBundleID:?];
    v4 = v5;
  }

  if (self->_webAppBundleID)
  {
    [v5 setWebAppBundleID:?];
    v4 = v5;
  }

  if (self->_launchReason)
  {
    [v5 setLaunchReason:?];
    v4 = v5;
  }

  if (self->_fullURL)
  {
    [v5 setFullURL:?];
    v4 = v5;
  }

  if (self->_referrerURL)
  {
    [v5 setReferrerURL:?];
    v4 = v5;
  }

  if (self->_referrerBundleID)
  {
    [v5 setReferrerBundleID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uRLHash copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_clipBundleID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_appBundleID copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_webAppBundleID copyWithZone:a3];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(NSString *)self->_launchReason copyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSString *)self->_fullURL copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSString *)self->_referrerURL copyWithZone:a3];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_referrerBundleID copyWithZone:a3];
  v21 = v5[5];
  v5[5] = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uRLHash = self->_uRLHash, !(uRLHash | v4[7])) || -[NSString isEqual:](uRLHash, "isEqual:")) && ((clipBundleID = self->_clipBundleID, !(clipBundleID | v4[2])) || -[NSString isEqual:](clipBundleID, "isEqual:")) && ((appBundleID = self->_appBundleID, !(appBundleID | v4[1])) || -[NSString isEqual:](appBundleID, "isEqual:")) && ((webAppBundleID = self->_webAppBundleID, !(webAppBundleID | v4[8])) || -[NSString isEqual:](webAppBundleID, "isEqual:")) && ((launchReason = self->_launchReason, !(launchReason | v4[4])) || -[NSString isEqual:](launchReason, "isEqual:")) && ((fullURL = self->_fullURL, !(fullURL | v4[3])) || -[NSString isEqual:](fullURL, "isEqual:")) && ((referrerURL = self->_referrerURL, !(referrerURL | v4[6])) || -[NSString isEqual:](referrerURL, "isEqual:")))
  {
    referrerBundleID = self->_referrerBundleID;
    if (referrerBundleID | v4[5])
    {
      v13 = [(NSString *)referrerBundleID isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uRLHash hash];
  v4 = [(NSString *)self->_clipBundleID hash]^ v3;
  v5 = [(NSString *)self->_appBundleID hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_webAppBundleID hash];
  v7 = [(NSString *)self->_launchReason hash];
  v8 = v7 ^ [(NSString *)self->_fullURL hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_referrerURL hash];
  return v9 ^ [(NSString *)self->_referrerBundleID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    [(BMPBAppClipLaunchEvent *)self setURLHash:?];
  }

  if (v4[2])
  {
    [(BMPBAppClipLaunchEvent *)self setClipBundleID:?];
  }

  if (v4[1])
  {
    [(BMPBAppClipLaunchEvent *)self setAppBundleID:?];
  }

  if (v4[8])
  {
    [(BMPBAppClipLaunchEvent *)self setWebAppBundleID:?];
  }

  if (v4[4])
  {
    [(BMPBAppClipLaunchEvent *)self setLaunchReason:?];
  }

  if (v4[3])
  {
    [(BMPBAppClipLaunchEvent *)self setFullURL:?];
  }

  if (v4[6])
  {
    [(BMPBAppClipLaunchEvent *)self setReferrerURL:?];
  }

  if (v4[5])
  {
    [(BMPBAppClipLaunchEvent *)self setReferrerBundleID:?];
  }
}

@end