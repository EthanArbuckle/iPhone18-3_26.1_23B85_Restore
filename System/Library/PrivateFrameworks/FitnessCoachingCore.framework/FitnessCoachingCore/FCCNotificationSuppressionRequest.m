@interface FCCNotificationSuppressionRequest
- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)a3;
- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)a3 expirationDate:(id)a4;
- (FCCNotificationSuppressionRequest)initWithTransportData:(id)a3;
- (id)transportData;
@end

@implementation FCCNotificationSuppressionRequest

- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [v6 dateByAddingTimeInterval:3600.0];
  v8 = [(FCCNotificationSuppressionRequest *)self initWithIdentifier:v5 expirationDate:v7];

  return v8;
}

- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)a3 expirationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCCNotificationSuppressionRequest;
  v9 = [(FCCNotificationSuppressionRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_expirationDate, a4);
  }

  return v10;
}

- (FCCNotificationSuppressionRequest)initWithTransportData:(id)a3
{
  v4 = a3;
  v5 = [[FCCNotificationSuppressionRequestProtobuf alloc] initWithData:v4];

  v6 = [(FCCNotificationSuppressionRequestProtobuf *)v5 identifier];
  if ([(FCCNotificationSuppressionRequestProtobuf *)v5 hasExpirationDate])
  {
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    [(FCCNotificationSuppressionRequestProtobuf *)v5 expirationDate];
    v8 = [v7 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FCCNotificationSuppressionRequest *)self initWithIdentifier:v6 expirationDate:v8];

  return v9;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCNotificationSuppressionRequestProtobuf);
  [(FCCNotificationSuppressionRequestProtobuf *)v3 setIdentifier:self->_identifier];
  [(NSDate *)self->_expirationDate timeIntervalSinceReferenceDate];
  [(FCCNotificationSuppressionRequestProtobuf *)v3 setExpirationDate:?];
  v4 = [(FCCNotificationSuppressionRequestProtobuf *)v3 data];

  return v4;
}

@end