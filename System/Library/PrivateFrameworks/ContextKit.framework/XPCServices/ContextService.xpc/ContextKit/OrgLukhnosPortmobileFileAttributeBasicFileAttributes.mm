@interface OrgLukhnosPortmobileFileAttributeBasicFileAttributes
- (id)creationTime;
- (void)dealloc;
@end

@implementation OrgLukhnosPortmobileFileAttributeBasicFileAttributes

- (id)creationTime
{
  file = self->file_;
  if (file)
  {
    file = [(JavaIoFile *)file lastModified];
  }

  v3 = new_OrgLukhnosPortmobileFileAttributeFileTime_initWithLong_(file);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgLukhnosPortmobileFileAttributeBasicFileAttributes;
  [(OrgLukhnosPortmobileFileAttributeBasicFileAttributes *)&v3 dealloc];
}

@end