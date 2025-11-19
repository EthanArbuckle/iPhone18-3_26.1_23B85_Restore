@interface HDSecondaryDevicePairingRequest
- (void)dealloc;
@end

@implementation HDSecondaryDevicePairingRequest

- (void)dealloc
{
  [(HKDaemonTransaction *)self->_transaction invalidate];
  v3.receiver = self;
  v3.super_class = HDSecondaryDevicePairingRequest;
  [(HDSecondaryDevicePairingRequest *)&v3 dealloc];
}

@end