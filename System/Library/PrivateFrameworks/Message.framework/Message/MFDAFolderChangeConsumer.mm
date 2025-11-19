@interface MFDAFolderChangeConsumer
- (MFDAFolderChangeConsumer)init;
- (id)waitForResult;
- (void)folderChange:(id)a3 finishedWithStatus:(int64_t)a4 error:(id)a5;
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

- (void)folderChange:(id)a3 finishedWithStatus:(int64_t)a4 error:(id)a5
{
  v9 = a3;
  v21 = a4;
  v10 = a5;
  v20 = v10;
  MFWalkUpDAErrorChain(&v20, &v21);
  v11 = v20;

  [(MFConditionLock *)self->_conditionLock lock];
  if (self->_result)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [v18 handleFailureInMethod:a2 object:self file:@"MFDAFolderChangeConsumer.m" lineNumber:55 description:{@"%@ should not be called twice", v19}];
  }

  v12 = [MFDAFolderChangeResult alloc];
  v13 = v21;
  v14 = [v9 folderId];
  v15 = [v9 displayName];
  v16 = [(MFDAFolderChangeResult *)v12 initWithStatusCode:v13 error:v11 folderID:v14 folderName:v15];
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