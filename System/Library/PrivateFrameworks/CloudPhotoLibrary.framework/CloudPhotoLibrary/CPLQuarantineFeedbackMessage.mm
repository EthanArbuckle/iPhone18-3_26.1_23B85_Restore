@interface CPLQuarantineFeedbackMessage
- (CPLQuarantineFeedbackMessage)initWithClass:(Class)class reason:(id)reason libraryIdentifier:(id)identifier;
- (id)serverMessage;
@end

@implementation CPLQuarantineFeedbackMessage

- (id)serverMessage
{
  v9.receiver = self;
  v9.super_class = CPLQuarantineFeedbackMessage;
  serverMessage = [(CPLFeedbackMessage *)&v9 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"recordType"];
  recordClass = self->_recordClass;
  if (_CPLFeedbackRecordClassForClass_onceToken != -1)
  {
    dispatch_once(&_CPLFeedbackRecordClassForClass_onceToken, &__block_literal_global_2534);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2535;
  v15 = __Block_byref_object_dispose__2536;
  v16 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___CPLFeedbackRecordClassForClass_block_invoke_28;
  block[3] = &unk_1E861BE80;
  block[4] = &v11;
  block[5] = recordClass;
  dispatch_sync(_CPLFeedbackRecordClassForClass_queue, block);
  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  [(CPLServerFeedbackKeyAndValue *)v4 setValue:v6];
  [serverMessage addKeysAndValues:v4];
  v7 = objc_alloc_init(CPLServerFeedbackKeyAndValue);

  [(CPLServerFeedbackKeyAndValue *)v7 setKey:@"reason"];
  [(CPLServerFeedbackKeyAndValue *)v7 setValue:self->_reason];
  [serverMessage addKeysAndValues:v7];

  return serverMessage;
}

- (CPLQuarantineFeedbackMessage)initWithClass:(Class)class reason:(id)reason libraryIdentifier:(id)identifier
{
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = CPLQuarantineFeedbackMessage;
  v9 = [(CPLFeedbackMessage *)&v14 initWithLibraryIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordClass, class);
    v11 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v11;
  }

  return v10;
}

@end