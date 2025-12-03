@interface FLDPGBatch
- (FLDPGBatch)initWithBundleID:(id)d payload:(id)payload;
@end

@implementation FLDPGBatch

- (FLDPGBatch)initWithBundleID:(id)d payload:(id)payload
{
  dCopy = d;
  payloadCopy = payload;
  v9 = [(FLDPGBatch *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, d);
    objc_storeStrong(&v10->_payload, payload);
  }

  return v10;
}

@end