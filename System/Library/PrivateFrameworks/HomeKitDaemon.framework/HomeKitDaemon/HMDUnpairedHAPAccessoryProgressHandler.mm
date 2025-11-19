@interface HMDUnpairedHAPAccessoryProgressHandler
- (HMDUnpairedHAPAccessoryProgressHandler)initWithAccessoryUUID:(id)a3 progressHandler:(id)a4;
@end

@implementation HMDUnpairedHAPAccessoryProgressHandler

- (HMDUnpairedHAPAccessoryProgressHandler)initWithAccessoryUUID:(id)a3 progressHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDUnpairedHAPAccessoryProgressHandler;
  v9 = [(HMDUnpairedHAPAccessoryProgressHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUUID, a3);
    v11 = _Block_copy(v8);
    progressHandler = v10->_progressHandler;
    v10->_progressHandler = v11;
  }

  return v10;
}

@end