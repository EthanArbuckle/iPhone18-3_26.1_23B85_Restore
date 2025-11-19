@interface MLPDataBatch
+ (id)dataBatch:(id)a3 batchSize:(unint64_t)a4 network:(id)a5;
- (MLPDataBatch)initWithDataBatch:(id)a3 batchSize:(unint64_t)a4 network:(id)a5;
@end

@implementation MLPDataBatch

+ (id)dataBatch:(id)a3 batchSize:(unint64_t)a4 network:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v9, MLPModelSampleDataFeatureValuesKey, v10);
  v15 = objc_msgSend_length(v11, v12, v13, v14);

  if (v15)
  {
    v18 = MLPImageDataBatch;
  }

  else
  {
    v19 = objc_msgSend_objectForKeyedSubscript_(v7, v16, MLPModelSampleDataBatchOfSequencesKey, v17);

    if (!v19)
    {
      sub_19D2C78CC(@"Unexpected data format", v20, v21, v22, v23, v24, v25, v26, v31);
    }

    v18 = MLPSeqDataBatch;
  }

  v27 = [v18 alloc];
  v29 = objc_msgSend_initWithDataBatch_batchSize_network_(v27, v28, v7, a4, v8);

  return v29;
}

- (MLPDataBatch)initWithDataBatch:(id)a3 batchSize:(unint64_t)a4 network:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695D930];
  v11 = MEMORY[0x1E696AEC0];
  v12 = NSStringFromSelector(a2);
  v15 = objc_msgSend_stringWithFormat_(v11, v13, @"%@ not implemented in a subclass", v14, v12);
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v16, v10, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

@end