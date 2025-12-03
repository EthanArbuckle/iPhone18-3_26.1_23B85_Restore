@interface HMDUnpairedHAPAccessoryProgressHandler
- (HMDUnpairedHAPAccessoryProgressHandler)initWithAccessoryUUID:(id)d progressHandler:(id)handler;
@end

@implementation HMDUnpairedHAPAccessoryProgressHandler

- (HMDUnpairedHAPAccessoryProgressHandler)initWithAccessoryUUID:(id)d progressHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HMDUnpairedHAPAccessoryProgressHandler;
  v9 = [(HMDUnpairedHAPAccessoryProgressHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryUUID, d);
    v11 = _Block_copy(handlerCopy);
    progressHandler = v10->_progressHandler;
    v10->_progressHandler = v11;
  }

  return v10;
}

@end