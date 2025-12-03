@interface CKServerChangeToken(IC)
- (id)ic_loggingDescription;
@end

@implementation CKServerChangeToken(IC)

- (id)ic_loggingDescription
{
  v1 = MEMORY[0x277CCACA8];
  data = [self data];
  v3 = [data base64EncodedStringWithOptions:0];
  v4 = [v1 stringWithFormat:@"<ServerChangeToken %@>", v3];

  return v4;
}

@end