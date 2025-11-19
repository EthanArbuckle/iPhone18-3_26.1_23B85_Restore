@interface DDRTaskResetDHCPClientFiles
- (void)run;
@end

@implementation DDRTaskResetDHCPClientFiles

- (void)run
{
  v2 = +[NSArray array];
  removeSubFiles(@"/var/db/dhcpclient", v2);
}

@end