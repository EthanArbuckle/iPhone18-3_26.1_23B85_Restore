@interface DTTapMemoHandler
- (DTTapMemoHandler)initWithConfig:(id)a3 delegate:(id)a4;
- (id)handleMemo:(id)a3;
@end

@implementation DTTapMemoHandler

- (DTTapMemoHandler)initWithConfig:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = DTTapMemoHandler;
  v9 = [(DTTapMemoHandler *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!v7)
    {
      sub_24802D420();
    }

    if (!v8)
    {
      sub_24802D3F4();
    }

    objc_storeStrong(&v9->_config, a3);
    objc_storeStrong(&v10->_delegate, a4);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.dt.tap.memoHandler", v11);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v12;

    v10->_sentRecordingInfo = 0;
  }

  return v10;
}

- (id)handleMemo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if (v6)
  {
    if (!self->_sentRecordingInfo)
    {
      v8 = v4;
      if ([(DTTapConfig *)self->_config bufferMode]== 2)
      {
        if ([v8 supportsPeek])
        {
          v9 = [(DTTapConfig *)self->_config recordingInfoHandler];

          if (v9)
          {
            v10 = [(DTTapMemoHandlerDelegate *)self->_delegate peekAtMemo:v8];
            if (v10)
            {
              v11 = [(DTTapConfig *)self->_config recordingInfoHandler];
              (v11)[2](v11, v10);

              self->_sentRecordingInfo = 1;
            }
          }
        }
      }
    }

    if ((isKindOfClass & 1) == 0)
    {
      v12 = v4;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_247F9AFB4;
      v28[3] = &unk_278EF1550;
      v28[4] = self;
      v29 = v12;
      v13 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v28];
      v14 = v29;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (isKindOfClass)
  {
LABEL_13:
    v15 = [(DTTapConfig *)self->_config statusHandler];

    if (v15)
    {
      v16 = v4;
      if (([v16 status] & 0x80000000) != 0)
      {
        v23 = dispatch_get_global_queue(0, 0);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = sub_247F9AE44;
        v32[3] = &unk_278EF1550;
        v32[4] = self;
        v18 = &v33;
        v33 = v16;
        dispatch_async(v23, v32);

        v13 = 0;
      }

      else
      {
        v17 = MEMORY[0x277CCA8C8];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_247F9AEFC;
        v30[3] = &unk_278EF1550;
        v30[4] = self;
        v18 = &v31;
        v31 = v16;
        v13 = [v17 blockOperationWithBlock:v30];
      }

      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (v7)
  {
    v19 = v4;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_247F9B068;
    v26[3] = &unk_278EF1550;
    v26[4] = self;
    v27 = v19;
    v13 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v26];
    v14 = v27;
LABEL_18:

    if (v13)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  v13 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:&unk_285A18770];
LABEL_20:
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F9B114;
  block[3] = &unk_278EF1070;
  v21 = v13;
  v25 = v21;
  dispatch_async(serialQueue, block);

  return v21;
}

@end