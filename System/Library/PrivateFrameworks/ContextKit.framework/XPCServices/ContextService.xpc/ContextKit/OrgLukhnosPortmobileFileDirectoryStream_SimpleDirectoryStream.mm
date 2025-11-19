@interface OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream

- (id)iterator
{
  paths = self->paths_;
  if (!paths)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)paths iterator];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream;
  [(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *)&v3 dealloc];
}

@end