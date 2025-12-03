@interface LibcoreIoDeleteOnExit
- (LibcoreIoDeleteOnExit)init;
- (void)addFileWithNSString:(id)string;
- (void)dealloc;
- (void)run;
@end

@implementation LibcoreIoDeleteOnExit

- (LibcoreIoDeleteOnExit)init
{
  JavaLangThread_init(self);
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->files_, v3);
  return self;
}

- (void)addFileWithNSString:(id)string
{
  files = self->files_;
  objc_sync_enter(files);
  v6 = self->files_;
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilArrayList *)v6 containsWithId:string])
  {
    [(JavaUtilArrayList *)self->files_ addWithId:string];
  }

  objc_sync_exit(files);
}

- (void)run
{
  JavaUtilCollections_sortWithJavaUtilList_(self->files_);
  files = self->files_;
  if (!files)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilArrayList *)files size];
  v5 = v4 - 1;
  if ((v4 - 1) >= 0)
  {
    do
    {
      [new_JavaIoFile_initWithNSString_([(JavaUtilArrayList *)self->files_ getWithInt:v5]) delete];
      v5 = (v5 - 1);
    }

    while (v5 != -1);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoDeleteOnExit;
  [(JavaLangThread *)&v3 dealloc];
}

@end