@interface CHQuery
- (CHQuery)init;
- (CHQuery)initWithRecognitionSession:(id)session;
- (CHQueryDelegate)delegate;
- (void)dealloc;
- (void)pause;
- (void)q_queryResultDidChange;
- (void)q_setNeedsQueryResultUpdating;
- (void)recognitionSessionDidUpdateRecognitionResult:(id)result;
- (void)start;
- (void)waitForPendingUpdates;
@end

@implementation CHQuery

- (CHQuery)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use the designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use the designated initializer instead", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (CHQuery)initWithRecognitionSession:(id)session
{
  sessionCopy = session;
  v38.receiver = self;
  v38.super_class = CHQuery;
  v6 = [(CHQuery *)&v38 init];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v14 = objc_msgSend_stringWithFormat_(v7, v10, @"com.apple.CoreHandwriting.%@.Processing", v11, v12, v13, v9);

    v15 = v14;
    v21 = objc_msgSend_UTF8String(v15, v16, v17, v18, v19, v20);
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    processingQueue = v6->_processingQueue;
    v6->_processingQueue = v23;

    objc_storeStrong(&v6->_recognitionSession, session);
    v6->_preferredUpdatesInterval = 1.0;
    v30 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v25, v26, v27, v28, v29);
    objc_msgSend_timeIntervalSinceReferenceDate(v30, v31, v32, v33, v34, v35);
    v6->_lastProcessedTime = v36;

    v6->_isTearingDown = 0;
  }

  return v6;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  self->_isTearingDown = 1;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC60;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_msgSend_debugName(self, v4, v5, v6, v7, v8);
    recognitionSession = self->_recognitionSession;
    *buf = 134218498;
    v13 = v9;
    v14 = 2112;
    v15 = recognitionSession;
    v16 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "Query %p {class %@} attached to session %p: dealloc", buf, 0x20u);
  }

  v11.receiver = self;
  v11.super_class = CHQuery;
  [(CHQuery *)&v11 dealloc];
}

- (void)start
{
  if (!self->_isTearingDown)
  {
    v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1838BF054;
    block[3] = &unk_1E6DDC1D0;
    block[4] = self;
    dispatch_sync(v7, block);
  }
}

- (void)pause
{
  if (!self->_isTearingDown)
  {
    v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1838BF6F8;
    block[3] = &unk_1E6DDC1D0;
    block[4] = self;
    dispatch_sync(v7, block);
  }
}

- (void)waitForPendingUpdates
{
  if (!self->_isTearingDown)
  {
    v7 = objc_msgSend_recognitionSession(self, a2, v2, v3, v4, v5);
    objc_msgSend_waitForPendingRecognitionTasks(v7, v8, v9, v10, v11, v12);

    lastProcessedTime = self->_lastProcessedTime;
    v19 = objc_msgSend_processingQueue(self, v14, v15, v16, v17, v18);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1838BF8C8;
    v20[3] = &unk_1E6DDF7A8;
    v20[4] = self;
    *&v20[5] = lastProcessedTime;
    dispatch_sync(v19, v20);
  }
}

- (CHQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)recognitionSessionDidUpdateRecognitionResult:(id)result
{
  if (!self->_isTearingDown)
  {
    lastProcessedTime = self->_lastProcessedTime;
    v8 = objc_msgSend_processingQueue(self, a2, result, v3, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1838BFA50;
    v9[3] = &unk_1E6DDF7A8;
    v9[4] = self;
    *&v9[5] = lastProcessedTime;
    dispatch_async(v8, v9);
  }
}

- (void)q_setNeedsQueryResultUpdating
{
  if (!self->_isTearingDown && self->__queryActive)
  {
    v8 = objc_msgSend_strokeProviderVersion(self->_currentProcessingSessionResult, a2, v2, v3, v4, v5);
    objc_setProperty_atomic_copy(self, v9, v8, 56);

    MEMORY[0x1EEE66B58](self, sel_q_updateQueryResult, v10, v11, v12, v13);
  }
}

- (void)q_queryResultDidChange
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_isTearingDown)
  {
    if (self->__queryActive && (v3 = objc_loadWeakRetained(&self->_delegate), v3, v3))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v4 = qword_1EA84DC60;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_msgSend_debugName(self, v5, v6, v7, v8, v9);
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEBUG, "%@: result changed, will dispatch to main queue to notify the delegate.", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1838BFD2C;
      block[3] = &unk_1E6DDC1D0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v11 = qword_1EA84DC60;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_msgSend_debugName(self, v12, v13, v14, v15, v16);
        if (self->__queryActive)
        {
          v18 = @"Y";
        }

        else
        {
          v18 = @"N";
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        *buf = 138412802;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        v25 = 2048;
        v26 = WeakRetained;
        _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEBUG, "%@: result changed, but cannot notify delegate. queryActive: %@, delegate %p.", buf, 0x20u);
      }
    }
  }
}

@end