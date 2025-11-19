@interface DUXPCServerRequestHandler
- (DUXPCServerRequestHandler)initWithManager:(id)a3;
- (void)requestExtractionOfPersonalIDFromDocument:(id)a3 pid:(int)a4 completion:(id)a5;
- (void)synchronousEventExtractionWithSerializedDocument:(id)a3 documentType:(int64_t)a4 pid:(int)a5 completion:(id)a6;
@end

@implementation DUXPCServerRequestHandler

- (void)synchronousEventExtractionWithSerializedDocument:(id)a3 documentType:(int64_t)a4 pid:(int)a5 completion:(id)a6
{
  v10 = a6;
  textUnderstandingManager = self->_textUnderstandingManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_232CE3648;
  v14[3] = &unk_2789A7D30;
  v15 = v10;
  v12 = v10;
  objc_msgSend_extractEventWithSerializedDocument_documentType_pid_completion_(textUnderstandingManager, v13, a3, a4, a5, v14);
}

- (void)requestExtractionOfPersonalIDFromDocument:(id)a3 pid:(int)a4 completion:(id)a5
{
  v8 = a5;
  textUnderstandingManager = self->_textUnderstandingManager;
  v14 = objc_msgSend_lines(a3, v10, v11, v12, v13);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_232CE3864;
  v17[3] = &unk_2789A7D08;
  v18 = v8;
  v15 = v8;
  objc_msgSend_extractPersonalIDWithLines_pid_completion_(textUnderstandingManager, v16, v14, a4, v17);
}

- (DUXPCServerRequestHandler)initWithManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DUXPCServerRequestHandler;
  v6 = [(DUXPCServerRequestHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textUnderstandingManager, a3);
  }

  return v7;
}

@end