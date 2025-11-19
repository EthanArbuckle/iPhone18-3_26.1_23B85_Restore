@interface OSLogBootEntry
- (NSDate)bootDate;
- (id)init:(os_timesync_boot_entry_s *)a3;
@end

@implementation OSLogBootEntry

- (NSDate)bootDate
{
  v2 = [(OSLogBootEntry *)self unixTimeNs]/ 0x3B9ACA00;
  v3 = MEMORY[0x277CBEAA8];

  return [v3 dateWithTimeIntervalSince1970:v2];
}

- (id)init:(os_timesync_boot_entry_s *)a3
{
  v8.receiver = self;
  v8.super_class = OSLogBootEntry;
  v4 = [(OSLogBootEntry *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3->var1];
    uuid = v4->_uuid;
    v4->_uuid = v5;

    v4->_unixTimeNs = a3->var3;
    v4->_tz = a3->var4;
    v4->_mach_info = a3->var2;
  }

  return v4;
}

@end