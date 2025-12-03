@interface NHOLogging
- (NHOLogging)init;
- (id)logForCategory:(unint64_t)category;
@end

@implementation NHOLogging

- (NHOLogging)init
{
  v10[9] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = NHOLogging;
  v2 = [(NHOLogging *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v9[0] = &unk_286C61B80;
    v9[1] = &unk_286C61B98;
    v10[0] = @"general";
    v10[1] = @"home";
    v9[2] = &unk_286C61BB0;
    v9[3] = &unk_286C61BC8;
    v10[2] = @"notification";
    v10[3] = @"radar76496236";
    v9[4] = &unk_286C61BE0;
    v9[5] = &unk_286C61BF8;
    v10[4] = @"invitation";
    v10[5] = @"onboarding";
    v9[6] = &unk_286C61C10;
    v9[7] = &unk_286C61C28;
    v10[6] = @"settings";
    v10[7] = @"contacts";
    v9[8] = &unk_286C61C40;
    v10[8] = @"camera";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:9];
    categoryMap = v3->_categoryMap;
    v3->_categoryMap = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)logForCategory:(unint64_t)category
{
  if (category < 9)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
    v3 = [(NSMutableDictionary *)self->_logs objectForKeyedSubscript:v7];
    if (!v3)
    {
      v8 = [(NSDictionary *)self->_categoryMap objectForKeyedSubscript:v7];
      v3 = os_log_create("com.apple.NanoHome", [v8 cStringUsingEncoding:4]);
      [(NSMutableDictionary *)self->_logs setObject:v3 forKeyedSubscript:v7];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  return v3;
}

@end