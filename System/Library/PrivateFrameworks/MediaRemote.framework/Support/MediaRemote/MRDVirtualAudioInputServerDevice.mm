@interface MRDVirtualAudioInputServerDevice
- (MRDVirtualAudioInputServerDevice)initWithOwningClient:(id)client;
@end

@implementation MRDVirtualAudioInputServerDevice

- (MRDVirtualAudioInputServerDevice)initWithOwningClient:(id)client
{
  clientCopy = client;
  add_explicit = atomic_fetch_add_explicit(dword_1005292D0, 1u, memory_order_relaxed);
  v10.receiver = self;
  v10.super_class = MRDVirtualAudioInputServerDevice;
  v7 = [(MRDVirtualAudioInputServerDevice *)&v10 initWithDeviceID:add_explicit + 1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_owningClient, client);
  }

  return v8;
}

@end