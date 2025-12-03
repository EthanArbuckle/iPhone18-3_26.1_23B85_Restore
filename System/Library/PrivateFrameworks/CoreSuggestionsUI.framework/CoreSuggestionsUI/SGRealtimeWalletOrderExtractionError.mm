@interface SGRealtimeWalletOrderExtractionError
- (NSString)localizedDescription;
- (NSString)messageID;
- (void)setMessageID:(id)d;
@end

@implementation SGRealtimeWalletOrderExtractionError

- (NSString)messageID
{
  sub_1B8189CF0();
  v2 = sub_1B81F8F58();

  return v2;
}

- (void)setMessageID:(id)d
{
  v4 = sub_1B81F8F98();
  v6 = v5;
  selfCopy = self;
  sub_1B8189DB8(v4, v6);
}

- (NSString)localizedDescription
{
  selfCopy = self;
  sub_1B818A244();

  v3 = sub_1B81F8F58();

  return v3;
}

@end