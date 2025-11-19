@interface DTXMessageParser
- (DTXMessageParser)initWithMessageHandler:(id)a3 andParseExceptionHandler:(id)a4;
- (id)parsingComplete;
- (void)_messageParsedWithHeader:(DTXMessageHeader *)a3 bytes:(const void *)a4 length:(unint64_t)a5 destructor:(id)a6;
- (void)dealloc;
- (void)parseIncomingBytes:(const char *)a3 length:(unint64_t)a4;
@end

@implementation DTXMessageParser

- (DTXMessageParser)initWithMessageHandler:(id)a3 andParseExceptionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = DTXMessageParser;
  v8 = [(DTXMessageParser *)&v23 init];
  v11 = v8;
  if (v8)
  {
    if (v6)
    {
      BlockCompressor = objc_msgSend_createBlockCompressor(DTXBlockCompressorFactory, v9, v10);
      compressor = v11->_compressor;
      v11->_compressor = BlockCompressor;

      v14 = MEMORY[0x24C1C0D80](v7);
      exceptionHandler = v11->_exceptionHandler;
      v11->_exceptionHandler = v14;

      v16 = MEMORY[0x24C1C0D80](v6);
      parsedMessageHandler = v11->_parsedMessageHandler;
      v11->_parsedMessageHandler = v16;

      v18 = objc_opt_new();
      fragmentedBuffersByIdentifier = v11->_fragmentedBuffersByIdentifier;
      v11->_fragmentedBuffersByIdentifier = v18;

      v20 = dispatch_queue_create("DTXMessage parsing queue", 0);
      parsingQueue = v11->_parsingQueue;
      v11->_parsingQueue = v20;
    }

    else
    {
      parsingQueue = v8;
      v11 = 0;
    }
  }

  return v11;
}

- (void)dealloc
{
  parsingBuffer = self->_parsingBuffer;
  if (parsingBuffer)
  {
    free(parsingBuffer);
    self->_parsingBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = DTXMessageParser;
  [(DTXMessageParser *)&v4 dealloc];
}

- (void)_messageParsedWithHeader:(DTXMessageHeader *)a3 bytes:(const void *)a4 length:(unint64_t)a5 destructor:(id)a6
{
  v19 = a6;
  v10 = objc_autoreleasePoolPush();
  v11 = [DTXMessage alloc];
  v13 = objc_msgSend_initWithSerializedForm_length_destructor_compressor_(v11, v12, a4, a5, v19, self->_compressor);
  v15 = v13;
  if (v13)
  {
    objc_msgSend_setExpectsReply_(v13, v14, *(&a3->var5 + 3) & 1);
    objc_msgSend_setIdentifier_(v15, v16, a3->var5.var0);
    objc_msgSend_setChannelCode_(v15, v17, a3->var5.var2);
    objc_msgSend_setConversationIndex_(v15, v18, a3->var5.var1);
    (*(self->_parsedMessageHandler + 2))();
  }

  objc_autoreleasePoolPop(v10);
}

- (void)parseIncomingBytes:(const char *)a3 length:(unint64_t)a4
{
  if (a3 && a4)
  {
    parsingQueue = self->_parsingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F5007C;
    block[3] = &unk_278EEE840;
    block[4] = self;
    block[5] = a4;
    block[6] = a3;
    dispatch_sync(parsingQueue, block);
  }

  else
  {
    v5 = objc_msgSend_parsingComplete(self, a2, a3, a4);
  }
}

- (id)parsingComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F507C0;
  v10 = sub_247F507D0;
  v11 = 0;
  parsingQueue = self->_parsingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F507D8;
  v5[3] = &unk_278EEE668;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(parsingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end