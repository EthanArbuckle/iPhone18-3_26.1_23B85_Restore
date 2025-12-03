@interface OrgLukhnosPortmobileFilePath
- (BOOL)isAbsolute;
- (OrgLukhnosPortmobileFilePath)initWithNSString:(id)string;
- (id)description;
- (id)getFileName;
- (id)getParent;
- (id)resolveWithNSString:(id)string;
- (id)toAbsolutePath;
- (void)dealloc;
@end

@implementation OrgLukhnosPortmobileFilePath

- (OrgLukhnosPortmobileFilePath)initWithNSString:(id)string
{
  v4 = new_JavaIoFile_initWithNSString_(string);
  JreStrongAssignAndConsume(&self->file_, v4);
  return self;
}

- (id)getFileName
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  v3 = new_OrgLukhnosPortmobileFilePath_initWithNSString_([(JavaIoFile *)file getName]);

  return v3;
}

- (id)description
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoFile *)file description];
}

- (id)resolveWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  if ([string isEmpty])
  {
    return self;
  }

  v6 = new_JavaIoFile_initWithNSString_(string);
  if (![(JavaIoFile *)v6 isAbsolute])
  {
    v6 = new_JavaIoFile_initWithJavaIoFile_withNSString_(self->file_, string);
  }

  v7 = [OrgLukhnosPortmobileFilePath alloc];
  JreStrongAssign(&v7->file_, v6);

  return v7;
}

- (BOOL)isAbsolute
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  return [(JavaIoFile *)file isAbsolute];
}

- (id)toAbsolutePath
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  getAbsoluteFile = [(JavaIoFile *)file getAbsoluteFile];
  v4 = [OrgLukhnosPortmobileFilePath alloc];
  JreStrongAssign(&v4->file_, getAbsoluteFile);

  return v4;
}

- (id)getParent
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  v3 = new_OrgLukhnosPortmobileFilePath_initWithNSString_([(JavaIoFile *)file getParent]);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgLukhnosPortmobileFilePath;
  [(OrgLukhnosPortmobileFilePath *)&v3 dealloc];
}

@end