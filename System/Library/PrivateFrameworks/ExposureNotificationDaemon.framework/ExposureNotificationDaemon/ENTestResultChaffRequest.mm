@interface ENTestResultChaffRequest
- (id)additionalRequestHeaders;
@end

@implementation ENTestResultChaffRequest

- (id)additionalRequestHeaders
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (self->_chaffValue)
  {
    chaffValue = self->_chaffValue;
  }

  else
  {
    chaffValue = @"extra";
  }

  v6 = @"X-Chaff";
  v7[0] = chaffValue;
  v3 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end