@interface MKImportAnalytics
+ (void)initialize;
- (MKImportAnalytics)initWithContentType:(int64_t)type;
- (void)complete:(BOOL)complete;
- (void)send:(id)send;
- (void)send:(id)send extension:(id)extension;
@end

@implementation MKImportAnalytics

+ (void)initialize
{
  v6[15] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_286AAC668;
  v5[1] = &unk_286AAC680;
  v6[0] = @"account";
  v6[1] = @"application";
  v5[2] = &unk_286AAC698;
  v5[3] = &unk_286AAC6B0;
  v6[2] = @"bookmark";
  v6[3] = @"calendar";
  v5[4] = &unk_286AAC6C8;
  v5[5] = &unk_286AAC6E0;
  v6[4] = @"contact";
  v6[5] = @"container";
  v5[6] = &unk_286AAC6F8;
  v5[7] = &unk_286AAC710;
  v6[6] = @"file";
  v6[7] = @"message";
  v5[8] = &unk_286AAC728;
  v5[9] = &unk_286AAC740;
  v6[8] = @"placeholder";
  v6[9] = @"accessibility_setting";
  v5[10] = &unk_286AAC758;
  v5[11] = &unk_286AAC770;
  v6[10] = @"display_setting";
  v6[11] = @"image";
  v5[12] = &unk_286AAC788;
  v5[13] = &unk_286AAC7A0;
  v6[12] = @"video";
  v6[13] = @"photo_album";
  v5[14] = &unk_286AAC7B8;
  v6[14] = @"sim";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:15];
  v3 = contentTypes;
  contentTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (MKImportAnalytics)initWithContentType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = MKImportAnalytics;
  v4 = [(MKImportAnalytics *)&v10 init];
  if (v4)
  {
    v5 = contentTypes;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v7 = [v5 objectForKeyedSubscript:v6];
    contentType = v4->_contentType;
    v4->_contentType = v7;
  }

  return v4;
}

- (void)complete:(BOOL)complete
{
  completeCopy = complete;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.import", self->_contentType];
  v5 = @"-1";
  if (completeCopy)
  {
    v5 = @"0";
  }

  v8 = v4;
  v9 = v5;
  v6 = v9;
  v7 = v4;
  AnalyticsSendEventLazy();
}

id __30__MKImportAnalytics_complete___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"code";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)send:(id)send
{
  v3 = MEMORY[0x277CCACA8];
  contentType = self->_contentType;
  sendCopy = send;
  contentType = [v3 stringWithFormat:@"%@.import.error.code", contentType];
  v7 = @"unknown";
  if (sendCopy)
  {
    v7 = sendCopy;
  }

  v8 = v7;

  v11 = contentType;
  v9 = v8;
  v10 = contentType;
  AnalyticsSendEventLazy();
}

id __26__MKImportAnalytics_send___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"code";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)send:(id)send extension:(id)extension
{
  sendCopy = send;
  extensionCopy = extension;
  if (![(__CFString *)sendCopy length])
  {

    sendCopy = @"unknown";
  }

  if (![(__CFString *)extensionCopy length])
  {

    extensionCopy = @"unknown";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.import.error.format", self->_contentType];
  v12 = sendCopy;
  v13 = extensionCopy;
  v8 = extensionCopy;
  v9 = sendCopy;
  v10 = v11;
  AnalyticsSendEventLazy();
}

id __36__MKImportAnalytics_send_extension___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5[0] = @"type";
  v5[1] = @"format";
  v6 = v1;
  v5[2] = @"extension";
  v7 = *(a1 + 48);
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end