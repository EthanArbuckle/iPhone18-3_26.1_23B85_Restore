@interface MBPeerEmptyMessage
- (MBPeerEmptyMessage)init;
- (MBPeerEmptyMessage)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation MBPeerEmptyMessage

- (MBPeerEmptyMessage)init
{
  v3.receiver = self;
  v3.super_class = MBPeerEmptyMessage;
  return [(MBPeerEmptyMessage *)&v3 init];
}

- (MBPeerEmptyMessage)initWithDictionary:(id)dictionary error:(id *)error
{
  v5.receiver = self;
  v5.super_class = MBPeerEmptyMessage;
  return [(MBPeerEmptyMessage *)&v5 init:dictionary];
}

@end