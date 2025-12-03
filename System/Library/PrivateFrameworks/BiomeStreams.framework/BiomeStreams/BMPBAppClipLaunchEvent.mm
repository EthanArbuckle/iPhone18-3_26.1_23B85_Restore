@interface BMPBAppClipLaunchEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBAppClipLaunchEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBAppClipLaunchEvent;
  v4 = [(BMPBAppClipLaunchEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBAppClipLaunchEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uRLHash = self->_uRLHash;
  if (uRLHash)
  {
    [dictionary setObject:uRLHash forKey:@"URLHash"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uRLHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clipBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_webAppBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_fullURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_referrerURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_referrerBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uRLHash)
  {
    [toCopy setURLHash:?];
    toCopy = v5;
  }

  if (self->_clipBundleID)
  {
    [v5 setClipBundleID:?];
    toCopy = v5;
  }

  if (self->_appBundleID)
  {
    [v5 setAppBundleID:?];
    toCopy = v5;
  }

  if (self->_webAppBundleID)
  {
    [v5 setWebAppBundleID:?];
    toCopy = v5;
  }

  if (self->_launchReason)
  {
    [v5 setLaunchReason:?];
    toCopy = v5;
  }

  if (self->_fullURL)
  {
    [v5 setFullURL:?];
    toCopy = v5;
  }

  if (self->_referrerURL)
  {
    [v5 setReferrerURL:?];
    toCopy = v5;
  }

  if (self->_referrerBundleID)
  {
    [v5 setReferrerBundleID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uRLHash copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_clipBundleID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_appBundleID copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_webAppBundleID copyWithZone:zone];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(NSString *)self->_launchReason copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSString *)self->_fullURL copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSString *)self->_referrerURL copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_referrerBundleID copyWithZone:zone];
  v21 = v5[5];
  v5[5] = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uRLHash = self->_uRLHash, !(uRLHash | equalCopy[7])) || -[NSString isEqual:](uRLHash, "isEqual:")) && ((clipBundleID = self->_clipBundleID, !(clipBundleID | equalCopy[2])) || -[NSString isEqual:](clipBundleID, "isEqual:")) && ((appBundleID = self->_appBundleID, !(appBundleID | equalCopy[1])) || -[NSString isEqual:](appBundleID, "isEqual:")) && ((webAppBundleID = self->_webAppBundleID, !(webAppBundleID | equalCopy[8])) || -[NSString isEqual:](webAppBundleID, "isEqual:")) && ((launchReason = self->_launchReason, !(launchReason | equalCopy[4])) || -[NSString isEqual:](launchReason, "isEqual:")) && ((fullURL = self->_fullURL, !(fullURL | equalCopy[3])) || -[NSString isEqual:](fullURL, "isEqual:")) && ((referrerURL = self->_referrerURL, !(referrerURL | equalCopy[6])) || -[NSString isEqual:](referrerURL, "isEqual:")))
  {
    referrerBundleID = self->_referrerBundleID;
    if (referrerBundleID | equalCopy[5])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    [(BMPBAppClipLaunchEvent *)self setURLHash:?];
  }

  if (fromCopy[2])
  {
    [(BMPBAppClipLaunchEvent *)self setClipBundleID:?];
  }

  if (fromCopy[1])
  {
    [(BMPBAppClipLaunchEvent *)self setAppBundleID:?];
  }

  if (fromCopy[8])
  {
    [(BMPBAppClipLaunchEvent *)self setWebAppBundleID:?];
  }

  if (fromCopy[4])
  {
    [(BMPBAppClipLaunchEvent *)self setLaunchReason:?];
  }

  if (fromCopy[3])
  {
    [(BMPBAppClipLaunchEvent *)self setFullURL:?];
  }

  if (fromCopy[6])
  {
    [(BMPBAppClipLaunchEvent *)self setReferrerURL:?];
  }

  if (fromCopy[5])
  {
    [(BMPBAppClipLaunchEvent *)self setReferrerBundleID:?];
  }
}

@end