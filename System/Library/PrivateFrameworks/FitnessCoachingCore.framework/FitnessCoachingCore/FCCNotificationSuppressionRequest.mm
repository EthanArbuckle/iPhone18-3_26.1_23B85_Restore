@interface FCCNotificationSuppressionRequest
- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)identifier;
- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)identifier expirationDate:(id)date;
- (FCCNotificationSuppressionRequest)initWithTransportData:(id)data;
- (id)transportData;
@end

@implementation FCCNotificationSuppressionRequest

- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  date = [v4 date];
  v7 = [date dateByAddingTimeInterval:3600.0];
  v8 = [(FCCNotificationSuppressionRequest *)self initWithIdentifier:identifierCopy expirationDate:v7];

  return v8;
}

- (FCCNotificationSuppressionRequest)initWithIdentifier:(id)identifier expirationDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = FCCNotificationSuppressionRequest;
  v9 = [(FCCNotificationSuppressionRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_expirationDate, date);
  }

  return v10;
}

- (FCCNotificationSuppressionRequest)initWithTransportData:(id)data
{
  dataCopy = data;
  v5 = [[FCCNotificationSuppressionRequestProtobuf alloc] initWithData:dataCopy];

  identifier = [(FCCNotificationSuppressionRequestProtobuf *)v5 identifier];
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

  v9 = [(FCCNotificationSuppressionRequest *)self initWithIdentifier:identifier expirationDate:v8];

  return v9;
}

- (id)transportData
{
  v3 = objc_alloc_init(FCCNotificationSuppressionRequestProtobuf);
  [(FCCNotificationSuppressionRequestProtobuf *)v3 setIdentifier:self->_identifier];
  [(NSDate *)self->_expirationDate timeIntervalSinceReferenceDate];
  [(FCCNotificationSuppressionRequestProtobuf *)v3 setExpirationDate:?];
  data = [(FCCNotificationSuppressionRequestProtobuf *)v3 data];

  return data;
}

@end