@interface CKDResponseBodyParser
- (CKDResponseBodyParser)initWithQoS:(int64_t)s;
- (NSData)parserData;
- (OS_dispatch_queue)parseQueue;
- (void)finishWithCompletion:(id)completion;
- (void)processData:(id)data completionHandler:(id)handler;
- (void)setParserData:(id)data;
@end

@implementation CKDResponseBodyParser

- (OS_dispatch_queue)parseQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_parseQueue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_msgSend_qualityOfService(selfCopy, v4, v5);
    v6 = CKQoSClassFromNSQualityOfService();
    v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = objc_msgSend_stringByAppendingString_(@"com.apple.cloudkit.parser.", v10, v9);
    v12 = v11;
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    v16 = dispatch_queue_create(v15, v7);
    parseQueue = selfCopy->_parseQueue;
    selfCopy->_parseQueue = v16;
  }

  objc_sync_exit(selfCopy);

  v18 = selfCopy->_parseQueue;

  return v18;
}

- (NSData)parserData
{
  v4 = objc_msgSend_parseQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  parserData = self->_parserData;

  return parserData;
}

- (CKDResponseBodyParser)initWithQoS:(int64_t)s
{
  v5.receiver = self;
  v5.super_class = CKDResponseBodyParser;
  result = [(CKDResponseBodyParser *)&v5 init];
  if (result)
  {
    result->_qualityOfService = s;
  }

  return result;
}

- (void)setParserData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_parseQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  parserData = self->_parserData;
  self->_parserData = dataCopy;
}

- (void)processData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = objc_msgSend_parseQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253E8C2C;
  block[3] = &unk_278546C30;
  block[4] = self;
  v14 = dataCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dataCopy;
  dispatch_async(v10, block);
}

- (void)finishWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc(MEMORY[0x277CBC360]);
  v5 = objc_opt_class();
  v7 = objc_msgSend_initWithCode_format_(v4, v6, 12, @"This method must be subclassed in class %@", v5);
  objc_exception_throw(v7);
}

@end