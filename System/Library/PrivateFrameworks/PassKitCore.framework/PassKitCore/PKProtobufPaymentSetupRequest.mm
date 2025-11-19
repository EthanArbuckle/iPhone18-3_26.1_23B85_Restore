@interface PKProtobufPaymentSetupRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentSetupRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentSetupRequest;
  v4 = [(PKProtobufPaymentSetupRequest *)&v8 description];
  v5 = [(PKProtobufPaymentSetupRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  appName = self->_appName;
  if (appName)
  {
    [v3 setObject:appName forKey:@"appName"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  appName = self->_appName;
  if (appName)
  {
    [a3 setAppName:appName];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    appName = self->_appName;
    if (appName | v4[1])
    {
      v6 = [(NSString *)appName isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(PKProtobufPaymentSetupRequest *)self setAppName:?];
  }
}

@end