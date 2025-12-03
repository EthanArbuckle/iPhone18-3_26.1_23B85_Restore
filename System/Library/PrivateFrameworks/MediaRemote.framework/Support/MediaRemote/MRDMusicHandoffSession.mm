@interface MRDMusicHandoffSession
- (MRDMusicHandoffSession)initWithSource:(id)source destination:(id)destination;
- (id)description;
- (void)handleEvent:(id)event;
- (void)invalidate;
- (void)start;
@end

@implementation MRDMusicHandoffSession

- (MRDMusicHandoffSession)initWithSource:(id)source destination:(id)destination
{
  sourceCopy = source;
  destinationCopy = destination;
  v19.receiver = self;
  v19.super_class = MRDMusicHandoffSession;
  v9 = [(MRDMusicHandoffSession *)&v19 init];
  if (v9)
  {
    v10 = MSVNanoIDCreateTaggedPointer();
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_sourcePlayerPath, source);
    objc_storeStrong(&v9->_destinationPlayerPath, destination);
    v9->_state = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    v12 = [NSString stringWithFormat:@"com.apple.MediaRemote.MRDMusicHandoffSession-%@", v9->_identifier];
    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = MRMusicHandoffSessionGetQueue();
    v16 = dispatch_queue_create_with_target_V2(uTF8String, v14, v15);
    notificationQueue = v9->_notificationQueue;
    v9->_notificationQueue = v16;
  }

  return v9;
}

- (id)description
{
  identifier = [(MRDMusicHandoffSession *)self identifier];
  v3 = [NSString stringWithFormat:@"<MRDMusicHandoffSession - identifier: %@>", identifier];

  return v3;
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  self->_state = 1;
  os_unfair_lock_unlock(&self->_lock);
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081A68;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  self->_state = 2;
  os_unfair_lock_unlock(&self->_lock);
  if (state != 2)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100081B6C;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(notificationQueue, block);
  }
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type == 1)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_state = 2;
    os_unfair_lock_unlock(&self->_lock);
    notificationQueue = self->_notificationQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100081EB4;
    v11[3] = &unk_1004B68F0;
    v11[4] = self;
    v7 = &v12;
    v12 = eventCopy;
    v8 = v11;
  }

  else if (type == 2)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_state = 2;
    os_unfair_lock_unlock(&self->_lock);
    notificationQueue = self->_notificationQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100081DF4;
    v13[3] = &unk_1004B68F0;
    v13[4] = self;
    v7 = &v14;
    v14 = eventCopy;
    v8 = v13;
  }

  else
  {
    notificationQueue = self->_notificationQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100081F74;
    v9[3] = &unk_1004B68F0;
    v9[4] = self;
    v7 = &v10;
    v10 = eventCopy;
    v8 = v9;
  }

  dispatch_async(notificationQueue, v8);
}

@end