@interface ContactFolderItemsSyncContext
- (ContactFolderItemsSyncContext)init;
@end

@implementation ContactFolderItemsSyncContext

- (ContactFolderItemsSyncContext)init
{
  v3.receiver = self;
  v3.super_class = ContactFolderItemsSyncContext;
  result = [(ContactFolderItemsSyncContext *)&v3 init];
  if (result)
  {
    *&result->_abPersonChangeId = -1;
  }

  return result;
}

@end