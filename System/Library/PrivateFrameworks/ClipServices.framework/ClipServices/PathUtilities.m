@interface PathUtilities
+ (id)clipURLLookupDatabaseURL;
+ (id)daemonLibraryDirectoryURL;
+ (id)domainHashFilesDirectoryURL;
@end

@implementation PathUtilities

+ (id)daemonLibraryDirectoryURL
{
  if (qword_100019DB0 != -1)
  {
    sub_100009B48();
  }

  v3 = qword_100019DA8;

  return v3;
}

+ (id)domainHashFilesDirectoryURL
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000099E0;
  block[3] = &unk_100014BA0;
  block[4] = a1;
  if (qword_100019DC0 != -1)
  {
    dispatch_once(&qword_100019DC0, block);
  }

  v2 = qword_100019DB8;

  return v2;
}

+ (id)clipURLLookupDatabaseURL
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009AE4;
  block[3] = &unk_100014BA0;
  block[4] = a1;
  if (qword_100019DD0 != -1)
  {
    dispatch_once(&qword_100019DD0, block);
  }

  v2 = qword_100019DC8;

  return v2;
}

@end