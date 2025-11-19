@interface CKLStreamObserver
- (CKLStreamObserver)initWithLogTypes:(unint64_t)a3;
- (id)_processNameForPath:(id)a3;
- (void)_handleEvent:(id)a3;
- (void)eventMatched:(id)a3;
@end

@implementation CKLStreamObserver

- (CKLStreamObserver)initWithLogTypes:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = CKLStreamObserver;
  v4 = [(CKLStreamObserver *)&v15 init];
  if (v4)
  {
    v5 = objc_opt_new();
    formatter = v4->_formatter;
    v4->_formatter = v5;

    objc_msgSend_setDateFormat_(v4->_formatter, v7, @"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ");
    v8 = objc_opt_new();
    processNamesByPath = v4->_processNamesByPath;
    v4->_processNamesByPath = v8;

    v4->_colorOutput = 1;
    v10 = [CKLEventFilter alloc];
    v12 = objc_msgSend_initWithLogTypes_(v10, v11, a3);
    filter = v4->_filter;
    v4->_filter = v12;
  }

  return v4;
}

- (id)_processNameForPath:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_processNamesByPath(self, v4, v5);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v6);

    if (!v9)
    {
      v9 = objc_msgSend_lastPathComponent(v6, v10, v11);
      v14 = objc_msgSend_processNamesByPath(self, v12, v13);
      objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v9, v6);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleEvent:(id)a3
{
  v11 = a3;
  v6 = objc_msgSend_filter(self, v4, v5);
  v8 = objc_msgSend_matchesEvent_(v6, v7, v11);

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    objc_msgSend_eventMatched_(self, v10, v11);
    objc_autoreleasePoolPop(v9);
  }
}

- (void)eventMatched:(id)a3
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a2, self, @"CKLStreamObserver.m", 106, @"This must be called on a subclass");
}

@end