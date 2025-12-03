@interface PKPaymentSetupProductConfiguration
- (NSString)productIdentifier;
- (PKPaymentSetupProductConfiguration)initWithProductDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)featureIdentifier;
@end

@implementation PKPaymentSetupProductConfiguration

- (PKPaymentSetupProductConfiguration)initWithProductDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PKPaymentSetupProductConfiguration;
  v5 = [(PKPaymentSetupProductConfiguration *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKPaymentSetupProductTypeFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"state"];
    v5->_state = PKPaymentSetupProductStateFromString(v7);

    v8 = [dictionaryCopy PKStringForKey:@"productIdentifier"];
    v9 = [v8 copy];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"identifier"];
    v12 = [v11 copy];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v12;

    v14 = [dictionaryCopy PKStringForKey:@"localizedNotificationTitle"];
    notificationTitle = v5->_notificationTitle;
    v5->_notificationTitle = v14;

    v16 = [dictionaryCopy PKStringForKey:@"localizedNotificationMessage"];
    notificationMessage = v5->_notificationMessage;
    v5->_notificationMessage = v16;

    v18 = [dictionaryCopy PKStringForKey:@"discoveryCardIdentifier"];
    discoveryCardIdentifier = v5->_discoveryCardIdentifier;
    v5->_discoveryCardIdentifier = v18;

    v20 = [dictionaryCopy PKStringForKey:@"featureIdentifier"];
    v21 = v20;
    if (v20)
    {
      v5->_featureIdentifier = PKFeatureIdentifierFromString(v20);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentSetupProductConfiguration allocWithZone:](PKPaymentSetupProductConfiguration init];
  v5->_type = self->_type;
  v5->_state = self->_state;
  v6 = [(NSString *)self->_productIdentifier copyWithZone:zone];
  productIdentifier = v5->_productIdentifier;
  v5->_productIdentifier = v6;

  v8 = [(NSString *)self->_partnerIdentifier copyWithZone:zone];
  partnerIdentifier = v5->_partnerIdentifier;
  v5->_partnerIdentifier = v8;

  v5->_featureIdentifier = self->_featureIdentifier;
  v10 = [(NSString *)self->_dirtyStateIdentifier copyWithZone:zone];
  dirtyStateIdentifier = v5->_dirtyStateIdentifier;
  v5->_dirtyStateIdentifier = v10;

  v12 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v12;

  v14 = [(NSString *)self->_notificationTitle copyWithZone:zone];
  notificationTitle = v5->_notificationTitle;
  v5->_notificationTitle = v14;

  v16 = [(NSString *)self->_notificationMessage copyWithZone:zone];
  notificationMessage = v5->_notificationMessage;
  v5->_notificationMessage = v16;

  v18 = [(NSString *)self->_discoveryCardIdentifier copyWithZone:zone];
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_productIdentifier;
    self->_productIdentifier = uUIDString;

    productIdentifier = self->_productIdentifier;
  }

  return productIdentifier;
}

@end