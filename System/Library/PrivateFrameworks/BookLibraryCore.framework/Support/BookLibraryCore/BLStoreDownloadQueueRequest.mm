@interface BLStoreDownloadQueueRequest
+ (id)_downloadKindQueueIdentifierMapping;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BLStoreDownloadQueueRequest

- (id)description
{
  v6.receiver = self;
  v6.super_class = BLStoreDownloadQueueRequest;
  v3 = [(BLStoreDownloadQueueRequest *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@: %@ / %@", v3, self->_queueIdentifier, self->_accountIdentifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    accountIdentifier = [(BLStoreDownloadQueueRequest *)self accountIdentifier];
    accountIdentifier2 = [equalCopy accountIdentifier];
    if (accountIdentifier == accountIdentifier2 || (-[BLStoreDownloadQueueRequest accountIdentifier](self, "accountIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy accountIdentifier], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      queueIdentifier = [(BLStoreDownloadQueueRequest *)self queueIdentifier];
      queueIdentifier2 = [equalCopy queueIdentifier];
      v13 = queueIdentifier2;
      if (queueIdentifier == queueIdentifier2)
      {

        v8 = 1;
      }

      else
      {
        queueIdentifier3 = [(BLStoreDownloadQueueRequest *)self queueIdentifier];
        queueIdentifier4 = [equalCopy queueIdentifier];
        v8 = [queueIdentifier3 isEqual:queueIdentifier4];
      }

      if (accountIdentifier == accountIdentifier2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_queueIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v8[0] = @"books";
    v8[1] = @"media";
    v9[0] = @"pendingBooks";
    v9[1] = @"pendingSongs";
    v2 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
    v3 = qword_10013EC88;
    qword_10013EC88 = v2;

    v6[0] = @"books";
    v6[1] = @"media";
    v7[0] = @"checkBookQueue";
    v7[1] = @"check-download-queue";
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    v5 = qword_10013EC90;
    qword_10013EC90 = v4;
  }
}

+ (id)_downloadKindQueueIdentifierMapping
{
  if (qword_10013ECA0 != -1)
  {
    sub_1000CB450();
  }

  v3 = qword_10013EC98;

  return v3;
}

@end