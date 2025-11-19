@interface MBPeerKeychainTransferRequest
- (MBPeerKeychainTransferRequest)init;
- (MBPeerKeychainTransferRequest)initWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation MBPeerKeychainTransferRequest

- (MBPeerKeychainTransferRequest)init
{
  v3.receiver = self;
  v3.super_class = MBPeerKeychainTransferRequest;
  return [(MBPeerKeychainTransferRequest *)&v3 init];
}

- (MBPeerKeychainTransferRequest)initWithDictionary:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = MBPeerKeychainTransferRequest;
  return [(MBPeerKeychainTransferRequest *)&v5 init:a3];
}

@end