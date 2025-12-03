@interface CSTestingSupportNotificationGenerator
- (id)_nextNotificationRequest;
- (void)postNewNotificationToDestination:(id)destination;
@end

@implementation CSTestingSupportNotificationGenerator

- (void)postNewNotificationToDestination:(id)destination
{
  destinationCopy = destination;
  _nextNotificationRequest = [(CSTestingSupportNotificationGenerator *)self _nextNotificationRequest];
  [destinationCopy postNotificationRequest:_nextNotificationRequest];
}

- (id)_nextNotificationRequest
{
  v17[3] = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = self->_sequenceNumber + 1;
  self->_sequenceNumber = v4;
  v5 = v4 / 2;
  v6 = objc_alloc_init(MEMORY[0x277D77E08]);
  [v6 setCustomHeader:@"Test Notification"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test Notification %ld", v4];
  [v6 setTitle:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"This is test notification #%ld", v4];
  [v6 setMessage:v8];

  [v6 setDate:date];
  v9 = objc_alloc_init(MEMORY[0x277D77E18]);
  [v9 setSectionIdentifier:@"com.apple.springboard.coversheet.testing"];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"notification-%ld", v4];
  [v9 setNotificationIdentifier:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"thread-%ld", v5];
  [v9 setThreadIdentifier:v11];

  [v9 setCategoryIdentifier:@"com.apple.springboard.coversheet.testing.testcategory"];
  [v9 setTimestamp:date];
  v12 = MEMORY[0x277CBEB98];
  v13 = *MEMORY[0x277D77FD8];
  v17[0] = *MEMORY[0x277D77FE0];
  v17[1] = v13;
  v17[2] = *MEMORY[0x277D77FE8];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v15 = [v12 setWithArray:v14];
  [v9 setRequestDestinations:v15];

  [v9 setContent:v6];

  return v9;
}

@end