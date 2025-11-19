@interface FLDPGBatch
- (FLDPGBatch)initWithBundleID:(id)a3 payload:(id)a4;
@end

@implementation FLDPGBatch

- (FLDPGBatch)initWithBundleID:(id)a3 payload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FLDPGBatch *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, a3);
    objc_storeStrong(&v10->_payload, a4);
  }

  return v10;
}

@end