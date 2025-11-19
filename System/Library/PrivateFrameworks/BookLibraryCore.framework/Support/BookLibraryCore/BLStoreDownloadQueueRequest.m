@interface BLStoreDownloadQueueRequest
+ (id)_downloadKindQueueIdentifierMapping;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v9 = [(BLStoreDownloadQueueRequest *)self accountIdentifier];
    v10 = [v6 accountIdentifier];
    if (v9 == v10 || (-[BLStoreDownloadQueueRequest accountIdentifier](self, "accountIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), [v6 accountIdentifier], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(BLStoreDownloadQueueRequest *)self queueIdentifier];
      v12 = [v6 queueIdentifier];
      v13 = v12;
      if (v11 == v12)
      {

        v8 = 1;
      }

      else
      {
        v14 = [(BLStoreDownloadQueueRequest *)self queueIdentifier];
        v15 = [v6 queueIdentifier];
        v8 = [v14 isEqual:v15];
      }

      if (v9 == v10)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_queueIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
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