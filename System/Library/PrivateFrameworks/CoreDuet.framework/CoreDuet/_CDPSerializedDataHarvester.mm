@interface _CDPSerializedDataHarvester
- (void)loadWithLimit:(unint64_t)limit dataPointReader:(id)reader completion:(id)completion;
@end

@implementation _CDPSerializedDataHarvester

- (void)loadWithLimit:(unint64_t)limit dataPointReader:(id)reader completion:(id)completion
{
  readerCopy = reader;
  completionCopy = completion;
  v10 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72___CDPSerializedDataHarvester_loadWithLimit_dataPointReader_completion___block_invoke;
  v16[3] = &unk_1E736A438;
  v16[4] = self;
  v17 = readerCopy;
  v18 = completionCopy;
  limitCopy = limit;
  v11 = v16;
  v12 = completionCopy;
  v13 = readerCopy;
  v14 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_8;
  block[3] = &unk_1E7367818;
  v21 = v14;
  v22 = v11;
  v15 = v14;
  dispatch_async(v10, block);
}

@end