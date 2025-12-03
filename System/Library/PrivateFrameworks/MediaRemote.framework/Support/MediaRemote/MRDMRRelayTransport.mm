@interface MRDMRRelayTransport
- (MRDMRRelayTransport)initWithOutputDevice:(id)device;
- (id)createConnectionWithUserInfo:(id)info;
- (id)debugDescription;
- (id)error;
- (id)name;
- (id)uid;
- (void)setError:(id)error;
@end

@implementation MRDMRRelayTransport

- (MRDMRRelayTransport)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = MRDMRRelayTransport;
  v5 = [(MRDMRRelayTransport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MRDMRRelayTransport *)v5 setOutputDevice:deviceCopy];
  }

  return v6;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_class();
  outputDevice = [(MRDMRRelayTransport *)selfCopy outputDevice];
  debugName = [outputDevice debugName];
  error = [(MRDMRRelayTransport *)selfCopy error];
  v7 = [NSString stringWithFormat:@"<%@: %p {\n   outputDevice = %@\n   error = %@\n}>", v3, selfCopy, debugName, error];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)createConnectionWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = dispatch_semaphore_create(0);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000351CC;
  v19 = sub_100035A9C;
  v20 = 0;
  v6 = +[MRDMRRelayConnectionManager sharedManager];
  outputDevice = [(MRDMRRelayTransport *)self outputDevice];
  v8 = [outputDevice uid];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015B3B4;
  v12[3] = &unk_1004BF4F0;
  v12[4] = self;
  v14 = &v15;
  v9 = v5;
  v13 = v9;
  [v6 waitForConnectionWithOutputDeviceUID:v8 timeout:v12 completion:7.0];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)uid
{
  outputDevice = [(MRDMRRelayTransport *)self outputDevice];
  v3 = [outputDevice uid];

  return v3;
}

- (id)name
{
  outputDevice = [(MRDMRRelayTransport *)self outputDevice];
  name = [outputDevice name];

  return name;
}

- (id)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  error = obj->_error;
  obj->_error = errorCopy;

  objc_sync_exit(obj);
}

@end