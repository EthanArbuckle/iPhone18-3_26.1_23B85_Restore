@interface MFDAFolderChangeConsumer
- (MFDAFolderChangeConsumer)init;
- (id)waitForResult;
- (void)folderChange:(id)change finishedWithStatus:(int64_t)status error:(id)error;
@end

@implementation MFDAFolderChangeConsumer

- (MFDAFolderChangeConsumer)init
{
  v6.receiver = self;
  v6.super_class = MFDAFolderChangeConsumer;
  v2 = [(MFDAFolderChangeConsumer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"_MFDAFolderChangeConsumer_Lock" condition:0 andDelegate:0];
    conditionLock = v2->_conditionLock;
    v2->_conditionLock = v3;
  }

  return v2;
}

- (void)folderChange:(id)change finishedWithStatus:(int64_t)status error:(id)error
{
  changeCopy = change;
  statusCopy = status;
  errorCopy = error;
  v20 = errorCopy;
  MFWalkUpDAErrorChain(&v20, &statusCopy);
  v11 = v20;

  [(MFConditionLock *)self->_conditionLock lock];
  if (self->_result)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAFolderChangeConsumer.m" lineNumber:55 description:{@"%@ should not be called twice", v19}];
  }

  v12 = [MFDAFolderChangeResult alloc];
  v13 = statusCopy;
  folderId = [changeCopy folderId];
  displayName = [changeCopy displayName];
  v16 = [(MFDAFolderChangeResult *)v12 initWithStatusCode:v13 error:v11 folderID:folderId folderName:displayName];
  result = self->_result;
  self->_result = v16;

  [(MFConditionLock *)self->_conditionLock unlockWithCondition:1];
}

- (id)waitForResult
{
  [(MFConditionLock *)self->_conditionLock lockWhenCondition:1];
  v3 = self->_result;
  [(MFConditionLock *)self->_conditionLock unlock];

  return v3;
}

@end