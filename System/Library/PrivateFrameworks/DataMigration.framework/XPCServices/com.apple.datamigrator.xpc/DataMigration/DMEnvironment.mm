@interface DMEnvironment
- (BOOL)inAppleStore;
- (BOOL)isFromFactory;
- (BOOL)isProgressHostReady;
- (id)_cwfInterface;
- (id)lockdownModeManager;
- (int)sem_createOwnerReadableWithName:(const char *)name value:(int)value errorString:(id *)string;
- (int)sem_openWithName:(const char *)name errorString:(id *)string;
- (void)setProgressHostIsReady;
@end

@implementation DMEnvironment

- (id)lockdownModeManager
{
  shared = sub_10000BDEC();
  if (shared)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v3 = qword_100030A40;
    v10 = qword_100030A40;
    if (!qword_100030A40)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10000BF30;
      v6[3] = &unk_100024790;
      v6[4] = &v7;
      sub_10000BF30(v6);
      v3 = v8[3];
    }

    v4 = v3;
    _Block_object_dispose(&v7, 8);
    shared = [v3 shared];
  }

  return shared;
}

- (id)_cwfInterface
{
  v2 = objc_alloc_init(CWFInterface);

  return v2;
}

- (BOOL)inAppleStore
{
  if (([(DMEnvironment *)self deviceModeIsSharediPad]& 1) != 0)
  {
    return 0;
  }

  _cwfInterface = [(DMEnvironment *)self _cwfInterface];
  [_cwfInterface activate];
  networkName = [_cwfInterface networkName];
  v6 = [networkName isEqualToString:@"Apple Store"];

  [_cwfInterface invalidate];
  return v6;
}

- (BOOL)isFromFactory
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  return v3;
}

- (int)sem_openWithName:(const char *)name errorString:(id *)string
{
  v5 = sem_open(name, 0);
  v6 = v5;
  if (string && v5 == -1)
  {
    v7 = __error();
    *string = [NSString stringWithFormat:@"%s", strerror(*v7)];
  }

  return v6;
}

- (int)sem_createOwnerReadableWithName:(const char *)name value:(int)value errorString:(id *)string
{
  v6 = sem_open(name, 512, 256, value);
  v7 = v6;
  if (string && v6 == -1)
  {
    v8 = __error();
    *string = [NSString stringWithFormat:@"%s", strerror(*v8)];
  }

  return v7;
}

- (BOOL)isProgressHostReady
{
  v6 = 0;
  v3 = [(DMEnvironment *)self sem_openWithName:"datamigrator.progressHost" errorString:&v6];
  v4 = v6;
  if (v3 == -1)
  {
    _DMLogFunc();
  }

  else
  {
    [(DMEnvironment *)self sem_close:v3];
  }

  return v3 != -1;
}

- (void)setProgressHostIsReady
{
  v5 = 0;
  v3 = [(DMEnvironment *)self sem_createOwnerReadableWithName:"datamigrator.progressHost" value:0 errorString:&v5];
  v4 = v5;
  if (v3 == -1)
  {
    _DMLogFunc();
  }

  else
  {
    [(DMEnvironment *)self sem_close:v3];
  }
}

@end