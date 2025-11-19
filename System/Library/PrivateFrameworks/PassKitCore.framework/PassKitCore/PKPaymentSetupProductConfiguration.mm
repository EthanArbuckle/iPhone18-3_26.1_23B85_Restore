@interface PKPaymentSetupProductConfiguration
- (NSString)productIdentifier;
- (PKPaymentSetupProductConfiguration)initWithProductDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)featureIdentifier;
@end

@implementation PKPaymentSetupProductConfiguration

- (PKPaymentSetupProductConfiguration)initWithProductDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKPaymentSetupProductConfiguration;
  v5 = [(PKPaymentSetupProductConfiguration *)&v23 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    v5->_type = PKPaymentSetupProductTypeFromString(v6);

    v7 = [v4 PKStringForKey:@"state"];
    v5->_state = PKPaymentSetupProductStateFromString(v7);

    v8 = [v4 PKStringForKey:@"productIdentifier"];
    v9 = [v8 copy];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v9;

    v11 = [v4 PKStringForKey:@"identifier"];
    v12 = [v11 copy];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v12;

    v14 = [v4 PKStringForKey:@"localizedNotificationTitle"];
    notificationTitle = v5->_notificationTitle;
    v5->_notificationTitle = v14;

    v16 = [v4 PKStringForKey:@"localizedNotificationMessage"];
    notificationMessage = v5->_notificationMessage;
    v5->_notificationMessage = v16;

    v18 = [v4 PKStringForKey:@"discoveryCardIdentifier"];
    discoveryCardIdentifier = v5->_discoveryCardIdentifier;
    v5->_discoveryCardIdentifier = v18;

    v20 = [v4 PKStringForKey:@"featureIdentifier"];
    v21 = v20;
    if (v20)
    {
      v5->_featureIdentifier = PKFeatureIdentifierFromString(v20);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentSetupProductConfiguration allocWithZone:](PKPaymentSetupProductConfiguration init];
  v5->_type = self->_type;
  v5->_state = self->_state;
  v6 = [(NSString *)self->_productIdentifier copyWithZone:a3];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v6;

  v8 = [(NSString *)self->_partnerIdentifier copyWithZone:a3];
  partnerIdentifier = v5->_partnerIdentifier;
  v5->_partnerIdentifier = v8;

  v5->_featureIdentifier = self->_featureIdentifier;
  v10 = [(NSString *)self->_dirtyStateIdentifier copyWithZone:a3];
  dirtyStateIdentifier = v5->_dirtyStateIdentifier;
  v5->_dirtyStateIdentifier = v10;

  v12 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v12;

  v14 = [(NSString *)self->_notificationTitle copyWithZone:a3];
  notificationTitle = v5->_notificationTitle;
  v5->_notificationTitle = v14;

  v16 = [(NSString *)self->_notificationMessage copyWithZone:a3];
  notificationMessage = v5->_notificationMessage;
  v5->_notificationMessage = v16;

  v18 = [(NSString *)self->_discoveryCardIdentifier copyWithZone:a3];
  discoveryCardIdentifier = v5->_discoveryCardIdentifier;
  v5->_discoveryCardIdentifier = v18;

  return v5;
}

- (unint64_t)featureIdentifier
{
  result = self->_featureIdentifier;
  if (!result)
  {
    if ([(NSString *)self->_productIdentifier hasSuffix:@"3-argon-CCS"])
    {
      result = 2;
LABEL_6:
      self->_featureIdentifier = result;
      return result;
    }

    if ([(NSString *)self->_productIdentifier hasSuffix:@"appleBalance"])
    {
      result = 4;
      goto LABEL_6;
    }

    return self->_featureIdentifier;
  }

  return result;
}

- (NSString)productIdentifier
{
  productIdentifier = self->_productIdentifier;
  if (!productIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_productIdentifier;
    self->_productIdentifier = v5;

    productIdentifier = self->_productIdentifier;
  }

  return productIdentifier;
}

@end