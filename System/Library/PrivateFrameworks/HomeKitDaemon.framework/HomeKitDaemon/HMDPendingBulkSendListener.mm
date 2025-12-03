@interface HMDPendingBulkSendListener
- (HMDDataStreamBulkSendListener)listener;
- (HMDPendingBulkSendListener)initWithListener:(id)listener fileType:(id)type;
@end

@implementation HMDPendingBulkSendListener

- (HMDDataStreamBulkSendListener)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

- (HMDPendingBulkSendListener)initWithListener:(id)listener fileType:(id)type
{
  listenerCopy = listener;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = HMDPendingBulkSendListener;
  v8 = [(HMDPendingBulkSendListener *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listener, listenerCopy);
    objc_storeStrong(&v9->_fileType, type);
  }

  return v9;
}

@end