@interface DUXPCServerRequestHandler
- (DUXPCServerRequestHandler)initWithManager:(id)manager;
- (void)requestExtractionOfPersonalIDFromDocument:(id)document pid:(int)pid completion:(id)completion;
- (void)synchronousEventExtractionWithSerializedDocument:(id)document documentType:(int64_t)type pid:(int)pid completion:(id)completion;
@end

@implementation DUXPCServerRequestHandler

- (void)synchronousEventExtractionWithSerializedDocument:(id)document documentType:(int64_t)type pid:(int)pid completion:(id)completion
{
  completionCopy = completion;
  textUnderstandingManager = self->_textUnderstandingManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_232CE3648;
  v14[3] = &unk_2789A7D30;
  v15 = completionCopy;
  v12 = completionCopy;
  objc_msgSend_extractEventWithSerializedDocument_documentType_pid_completion_(textUnderstandingManager, v13, document, type, pid, v14);
}

- (void)requestExtractionOfPersonalIDFromDocument:(id)document pid:(int)pid completion:(id)completion
{
  completionCopy = completion;
  textUnderstandingManager = self->_textUnderstandingManager;
  v14 = objc_msgSend_lines(document, v10, v11, v12, v13);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_232CE3864;
  v17[3] = &unk_2789A7D08;
  v18 = completionCopy;
  v15 = completionCopy;
  objc_msgSend_extractPersonalIDWithLines_pid_completion_(textUnderstandingManager, v16, v14, pid, v17);
}

- (DUXPCServerRequestHandler)initWithManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = DUXPCServerRequestHandler;
  v6 = [(DUXPCServerRequestHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textUnderstandingManager, manager);
  }

  return v7;
}

@end