@interface MBPeerKeychainTransferRequest
- (MBPeerKeychainTransferRequest)init;
- (MBPeerKeychainTransferRequest)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation MBPeerKeychainTransferRequest

- (MBPeerKeychainTransferRequest)init
{
  v3.receiver = self;
  v3.super_class = MBPeerKeychainTransferRequest;
  return [(MBPeerKeychainTransferRequest *)&v3 init];
}

- (MBPeerKeychainTransferRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  v5.receiver = self;
  v5.super_class = MBPeerKeychainTransferRequest;
  return [(MBPeerKeychainTransferRequest *)&v5 init:dictionary];
}

@end