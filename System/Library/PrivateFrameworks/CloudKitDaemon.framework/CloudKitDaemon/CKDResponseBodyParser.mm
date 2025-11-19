@interface CKDResponseBodyParser
- (CKDResponseBodyParser)initWithQoS:(int64_t)a3;
- (NSData)parserData;
- (OS_dispatch_queue)parseQueue;
- (void)finishWithCompletion:(id)a3;
- (void)processData:(id)a3 completionHandler:(id)a4;
- (void)setParserData:(id)a3;
@end

@implementation CKDResponseBodyParser

- (OS_dispatch_queue)parseQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_parseQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_msgSend_qualityOfService(v2, v4, v5);
    v6 = CKQoSClassFromNSQualityOfService();
    v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_stringByAppendingString_(@"com.apple.cloudkit.parser.", v10, v9);
    v12 = v11;
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    v16 = dispatch_queue_create(v15, v7);
    parseQueue = v2->_parseQueue;
    v2->_parseQueue = v16;
  }

  objc_sync_exit(v2);

  v18 = v2->_parseQueue;

  return v18;
}

- (NSData)parserData
{
  v4 = objc_msgSend_parseQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  parserData = self->_parserData;

  return parserData;
}

- (CKDResponseBodyParser)initWithQoS:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKDResponseBodyParser;
  result = [(CKDResponseBodyParser *)&v5 init];
  if (result)
  {
    result->_qualityOfService = a3;
  }

  return result;
}

- (void)setParserData:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_parseQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  parserData = self->_parserData;
  self->_parserData = v4;
}

- (void)processData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_parseQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253E8C2C;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, block);
}

- (void)finishWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBC360]);
  v5 = objc_opt_class();
  v7 = objc_msgSend_initWithCode_format_(v4, v6, 12, @"This method must be subclassed in class %@", v5);
  objc_exception_throw(v7);
}

@end