@interface IMFileCopier
- (IMFileCopier)initWithInputURL:(id)a3 outputURL:(id)a4 identifier:(id)a5 operation:(unint64_t)a6 completionBlock:(id)a7 queue:(id)a8;
- (IMFileCopier)initWithInputURL:(id)a3 outputURL:(id)a4 identifier:(id)a5 operation:(unint64_t)a6 delegate:(id)a7;
- (id)_temporaryCopierPath;
- (void)_fillOutputURLFromInputURL;
- (void)_main_copierFinishedWithResult:(id)a3;
- (void)_worker_doCopy;
- (void)cancel;
- (void)cleanup;
- (void)dealloc;
- (void)start;
@end

@implementation IMFileCopier

- (IMFileCopier)initWithInputURL:(id)a3 outputURL:(id)a4 identifier:(id)a5 operation:(unint64_t)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = IMFileCopier;
  v18 = [(IMFileCopier *)&v28 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(v12, v16, v17);
    inputURL = v18->_inputURL;
    v18->_inputURL = v19;

    v23 = objc_msgSend_copy(v13, v21, v22);
    outputURL = v18->_outputURL;
    v18->_outputURL = v23;

    objc_storeStrong(&v18->_identifier, a5);
    if (!v18->_outputURL)
    {
      objc_msgSend__fillOutputURLFromInputURL(v18, v25, v26);
    }

    v18->_operation = a6;
    v18->_delegate = v15;
  }

  return v18;
}

- (IMFileCopier)initWithInputURL:(id)a3 outputURL:(id)a4 identifier:(id)a5 operation:(unint64_t)a6 completionBlock:(id)a7 queue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v37.receiver = self;
  v37.super_class = IMFileCopier;
  v21 = [(IMFileCopier *)&v37 init];
  if (v21)
  {
    v22 = objc_msgSend_copy(v14, v19, v20);
    inputURL = v21->_inputURL;
    v21->_inputURL = v22;

    v26 = objc_msgSend_copy(v15, v24, v25);
    outputURL = v21->_outputURL;
    v21->_outputURL = v26;

    objc_storeStrong(&v21->_identifier, a5);
    if (!v21->_outputURL)
    {
      objc_msgSend__fillOutputURLFromInputURL(v21, v28, v29);
    }

    v21->_operation = a6;
    v30 = objc_msgSend_copy(v17, v28, v29);
    callback = v21->_callback;
    v21->_callback = v30;

    if (v18)
    {
      v32 = v18;
      queue = v21->_queue;
      v21->_queue = v32;
    }

    else
    {
      v34 = MEMORY[0x1E69E96A0];
      v35 = MEMORY[0x1E69E96A0];
      queue = v21->_queue;
      v21->_queue = v34;
    }
  }

  return v21;
}

- (void)dealloc
{
  if (self->_BOMCopier)
  {
    if (self->_inProgress)
    {
      if (qword_1EAED9060 != -1)
      {
        sub_1959D55B8();
      }

      off_1EAED9058(self->_BOMCopier);
    }

    if (qword_1EAED8810 != -1)
    {
      sub_1959D55CC();
    }

    off_1EAED8818(self->_BOMCopier);
  }

  v3.receiver = self;
  v3.super_class = IMFileCopier;
  [(IMFileCopier *)&v3 dealloc];
}

- (id)_temporaryCopierPath
{
  v2 = IMTemporaryPath();
  v4 = objc_msgSend_stringByAppendingPathComponent_(v2, v3, @"IMFileCopier");

  return v4;
}

- (void)_fillOutputURLFromInputURL
{
  v4 = objc_msgSend_inputURL(self, a2, v2);
  v7 = objc_msgSend_path(v4, v5, v6);
  v10 = objc_msgSend_lastPathComponent(v7, v8, v9);

  v13 = objc_msgSend_invalidCharactersForFileTransferName(MEMORY[0x1E696AB08], v11, v12);
  v41 = objc_msgSend_stringByRemovingCharactersFromSet_(v10, v14, v13);

  if (objc_msgSend_length(v41, v15, v16))
  {
    v18 = v41;
  }

  else
  {

    v18 = @"Archive";
  }

  v42 = v18;
  v19 = objc_msgSend_stringByAppendingPathExtension_(v18, v17, @"zip");
  v22 = objc_msgSend__temporaryCopierPath(self, v20, v21);
  v25 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v23, v24);
  v27 = objc_msgSend_stringByAppendingPathComponent_(v22, v26, v25);

  v30 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v28, v29);
  LOBYTE(v25) = objc_msgSend_fileExistsAtPath_(v30, v31, v27);

  if ((v25 & 1) == 0)
  {
    v34 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v32, v33);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v34, v35, v27, 1, 0, 0);
  }

  v36 = objc_msgSend_stringByAppendingPathComponent_(v27, v32, v19);

  v37 = objc_alloc(MEMORY[0x1E695DFF8]);
  inited = objc_msgSend_initFileURLWithPath_(v37, v38, v36);
  outputURL = self->_outputURL;
  self->_outputURL = inited;
}

- (void)start
{
  if (!self->_inProgress)
  {
    v5 = objc_msgSend_delegate(self, a2, v2);
    objc_msgSend_fileCopierDidStart_(v5, v6, self);

    self->_inProgress = 1;
    v7 = MEMORY[0x1E696AF00];

    MEMORY[0x1EEE66B58](v7, sel_detachNewThreadSelector_toTarget_withObject_, sel__worker_doCopy);
  }
}

- (void)cancel
{
  if (!self->_shouldCancel)
  {
    self->_shouldCancel = 1;
    if (self->_BOMCopier)
    {
      if (self->_inProgress)
      {
        if (qword_1EAED9070 != -1)
        {
          v5 = self;
          sub_1959D55E0();
          self = v5;
        }

        v3 = off_1EAED9068;
        BOMCopier = self->_BOMCopier;

        v3(BOMCopier);
      }
    }
  }
}

- (void)cleanup
{
  if (self->_inProgress)
  {

    (MEMORY[0x1EEE66B58])(self, sel_cancel);
  }

  else
  {
    v13 = objc_msgSend_path(self->_outputURL, a2, v2);
    v6 = objc_msgSend__temporaryCopierPath(self, v4, v5);
    hasPrefix = objc_msgSend_hasPrefix_(v13, v7, v6);

    if (hasPrefix)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10);
      objc_msgSend_removeItemAtPath_error_(v11, v12, v13, 0);
    }
  }
}

- (void)_main_copierFinishedWithResult:(id)a3
{
  v4 = objc_msgSend_BOOLValue(a3, a2, a3);
  shouldCancel = self->_shouldCancel;
  if (!v4)
  {
    *&self->_didErrorOccur = !shouldCancel;
    if (!shouldCancel)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *&self->_didErrorOccur = 0;
  if (shouldCancel)
  {
LABEL_5:
    objc_msgSend_cleanup(self, v5, v6);
  }

LABEL_6:
  v8 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_fileCopierDidFinish_(v8, v9, self);

  if (self->_callback)
  {
    queue = self->_queue;
    if (queue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959B23F8;
      block[3] = &unk_1E7438888;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }
}

- (void)_worker_doCopy
{
  v3 = objc_autoreleasePoolPush();
  if (qword_1EAED88E8 != -1)
  {
    sub_1959D55F4();
  }

  if (qword_1EAED88E0 != -1)
  {
    sub_1959D5608();
  }

  if (qword_1EAED88B0 != -1)
  {
    sub_1959D561C();
  }

  if (qword_1EAED88D0 != -1)
  {
    sub_1959D5630();
  }

  if (qword_1EAED88C8 != -1)
  {
    sub_1959D5644();
  }

  if (qword_1EAED88B8 != -1)
  {
    sub_1959D5658();
  }

  if (qword_1EAED88C0 != -1)
  {
    sub_1959D566C();
  }

  if (qword_1EAED88D8 != -1)
  {
    sub_1959D5680();
  }

  if (qword_1EAED88F0 != -1)
  {
    sub_1959D5694();
  }

  v4 = off_1EAED8928();
  self->_BOMCopier = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_30;
  }

  off_1EAED88F8(v4, self);
  off_1EAED8920(self->_BOMCopier, sub_1959B2974);
  off_1EAED8900(self->_BOMCopier, sub_1959B29E4);
  off_1EAED8908(self->_BOMCopier, sub_1959B2AE8);
  off_1EAED8918(self->_BOMCopier, sub_1959B2BDC);
  off_1EAED8910(self->_BOMCopier, sub_1959B2C5C);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v5;
  operation = self->_operation;
  switch(operation)
  {
    case 0uLL:
      v10 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v5, @"createCPIO", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v8, @"sequesterResources", v10);
      CFDictionarySetValue(v8, @"createPKZip", v10);
      CFDictionarySetValue(v8, @"keepParent", v10);
      v11 = @"copyResources";
      goto LABEL_27;
    case 1uLL:
      v13 = *MEMORY[0x1E695E4D0];
      v11 = @"extractPKZip";
LABEL_28:
      CFDictionarySetValue(v5, v11, v13);
      break;
    case 2uLL:
      v10 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(v5, @"createCPIO", *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(v8, @"sequesterResources", v10);
      v11 = @"createPKZip";
LABEL_27:
      v5 = v8;
      v13 = v10;
      goto LABEL_28;
  }

  v14 = objc_msgSend_inputURL(self, v6, v7);
  v17 = objc_msgSend_path(v14, v15, v16);
  v18 = v17;
  v21 = objc_msgSend_fileSystemRepresentation(v18, v19, v20);

  v24 = objc_msgSend_outputURL(self, v22, v23);
  v27 = objc_msgSend_path(v24, v25, v26);
  v28 = v27;
  v31 = objc_msgSend_fileSystemRepresentation(v28, v29, v30);

  v12 = off_1EAED8938(self->_BOMCopier, v21, v31, v8) == 0;
  off_1EAED88F8(self->_BOMCopier, 0);

LABEL_30:
  v32 = objc_alloc(MEMORY[0x1E696AD98]);
  v34 = objc_msgSend_initWithBool_(v32, v33, v12);
  objc_msgSend_performSelectorOnMainThread_withObject_waitUntilDone_(self, v35, sel__main_copierFinishedWithResult_, v34, 0);

  objc_autoreleasePoolPop(v3);
}

@end