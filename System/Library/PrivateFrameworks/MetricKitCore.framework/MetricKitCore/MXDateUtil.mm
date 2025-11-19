@interface MXDateUtil
- (MXDateUtil)init;
@end

@implementation MXDateUtil

- (MXDateUtil)init
{
  v7.receiver = self;
  v7.super_class = MXDateUtil;
  v2 = [(MXDateUtil *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)v2->_dateFormatter setLocale:v5];
    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"yyyy-MM-dd"];
  }

  return v2;
}

@end