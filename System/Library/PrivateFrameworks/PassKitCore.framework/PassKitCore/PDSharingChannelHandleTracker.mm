@interface PDSharingChannelHandleTracker
- (PDSharingChannelHandle)handle;
- (PDSharingChannelHandleTracker)initWithHandle:(id)a3;
@end

@implementation PDSharingChannelHandleTracker

- (PDSharingChannelHandleTracker)initWithHandle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PDSharingChannelHandleTracker;
  v5 = [(PDSharingChannelHandleTracker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handle, v4);
  }

  return v6;
}

- (PDSharingChannelHandle)handle
{
  WeakRetained = objc_loadWeakRetained(&self->_handle);

  return WeakRetained;
}

@end