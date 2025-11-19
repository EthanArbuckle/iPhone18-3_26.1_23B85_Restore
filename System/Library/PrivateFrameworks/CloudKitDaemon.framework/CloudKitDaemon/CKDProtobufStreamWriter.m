@interface CKDProtobufStreamWriter
+ (id)_dataForMessage:(id)a3;
+ (id)uncompressedDataForStreamedObjects:(id)a3;
- (BOOL)_finishStreaming:(id)a3;
- (CKDProtobufStreamWriter)initWithCompression:(BOOL)a3;
- (id)_compressBodyData:(id)a3 shouldFlush:(BOOL)a4;
- (id)open;
- (int64_t)_streamNextObject:(id)a3;
- (int64_t)_writeDataToStream:(id)a3;
- (void)_prepareObjectForStreaming:(id)a3;
- (void)_tearDownOutputStream;
- (void)dealloc;
- (void)setStreamedObjects:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)tearDown;
@end

@implementation CKDProtobufStreamWriter

- (id)open
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CBEBA0];
  v22 = 0;
  v23 = 0;
  v6 = objc_msgSend_bufferSize(v2, v4, v5);
  objc_msgSend_CKCreateBoundInputStream_outputStream_bufferSize_(v3, v7, &v23, &v22, v6);
  v8 = v23;
  v9 = v23;
  v10 = v22;
  v11 = v22;
  if (!v9)
  {
    v20 = "inputStream != nil";
    v21 = 145;
    goto LABEL_12;
  }

  v12 = v11;
  if (!v11)
  {
    v20 = "outputStream != nil";
    v21 = 146;
LABEL_12:
    __assert_rtn("[CKDProtobufStreamWriter open]", "CKDProtobufStreamWriter.m", v21, v20);
  }

  objc_storeStrong(&v2->_inputStream, v8);
  objc_storeStrong(&v2->_outputStream, v10);
  objc_msgSend_setDelegate_(v2->_outputStream, v13, v2);
  MEMORY[0x22AA63810](v2->_outputStream, v2->_dispatchQueue);
  objc_msgSend_open(v2->_outputStream, v14, v15);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    outputStream = v2->_outputStream;
    *buf = 134217984;
    v25 = outputStream;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Opened outputStream: %p", buf, 0xCu);
  }

  objc_sync_exit(v2);
  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_tearDownOutputStream
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_outputStream)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      outputStream = v2->_outputStream;
      v10 = 134217984;
      v11 = outputStream;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Tearing down output stream: %p", &v10, 0xCu);
    }

    MEMORY[0x22AA63810](v2->_outputStream, 0);
    objc_msgSend_setDelegate_(v2->_outputStream, v4, 0);
    objc_msgSend_close(v2->_outputStream, v5, v6);
    v7 = v2->_outputStream;
    v2->_outputStream = 0;
  }

  if (v2->_hasInitedCompression)
  {
    deflateEnd(&v2->_zlibStream);
    v2->_hasInitedCompression = 0;
  }

  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)tearDown
{
  objc_msgSend_setHaveFinishedStreaming_(self, a2, 1);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22508E888;
  block[3] = &unk_278545A00;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)dealloc
{
  objc_msgSend__tearDownOutputStream(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKDProtobufStreamWriter;
  [(CKDProtobufStreamWriter *)&v4 dealloc];
}

- (CKDProtobufStreamWriter)initWithCompression:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = CKDProtobufStreamWriter;
  v4 = [(CKDProtobufStreamWriter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_curDataPos = 0;
    v4->_shouldCompress = v3;
    if (v3)
    {
      v4->_zlibStream.zalloc = 0;
      v4->_zlibStream.zfree = 0;
      v4->_zlibStream.opaque = 0;
      v6 = deflateInit2_(&v4->_zlibStream, -1, 8, 31, 8, 0, "1.2.12", 112);
      if (v6)
      {
        v7 = v6;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v8 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v21 = v7;
          _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Could not initialize zlib for compression, error %d", buf, 8u);
        }

        v5->_shouldCompress = 0;
      }

      else
      {
        v5->_hasInitedCompression = 1;
      }
    }

    v5->_bufferSize = 1024;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v13 = objc_msgSend_UTF8String(v10, v11, v12);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setStreamedObjects:(id)a3
{
  v4 = objc_msgSend_mutableCopy(a3, a2, a3);
  allObjects = self->_allObjects;
  self->_allObjects = v4;

  MEMORY[0x2821F96F8]();
}

+ (id)uncompressedDataForStreamedObjects:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend__dataForMessage_(a1, v9, *(*(&v17 + 1) + 8 * i), v17);
        objc_msgSend_appendData_(v5, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v17, v21, 16);
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_compressBodyData:(id)a3 shouldFlush:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v10 = objc_msgSend_data(MEMORY[0x277CBEB28], v8, v9);
  bzero(v26, 0x2000uLL);
  v11 = v7;
  self->_zlibStream.next_in = objc_msgSend_bytes(v11, v12, v13);
  self->_zlibStream.avail_in = objc_msgSend_length(v11, v14, v15);
  if (v4)
  {
    if (objc_msgSend_haveFinishedCompression(self, v16, v17))
    {
      v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDProtobufStreamWriter.m", 171, @"We just tried to finish compression twice");
    }

    objc_msgSend_setHaveFinishedCompression_(self, v18, 1);
    v20 = 4;
  }

  else
  {
    v20 = 0;
  }

  do
  {
    self->_zlibStream.avail_out = 0x2000;
    self->_zlibStream.next_out = v26;
    if (deflate(&self->_zlibStream, v20) == -2)
    {
      __assert_rtn("[CKDProtobufStreamWriter _compressBodyData:shouldFlush:]", "CKDProtobufStreamWriter.m", 180, "ret != Z_STREAM_ERROR");
    }

    objc_msgSend_appendBytes_length_(v10, v21, v26, 0x2000 - self->_zlibStream.avail_out);
  }

  while (!self->_zlibStream.avail_out);
  if (self->_zlibStream.avail_in)
  {
    __assert_rtn("[CKDProtobufStreamWriter _compressBodyData:shouldFlush:]", "CKDProtobufStreamWriter.m", 184, "_zlibStream.avail_in == 0");
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_finishStreaming:(id)a3
{
  if (!objc_msgSend_shouldCompress(self, a2, a3))
  {
    return 1;
  }

  result = 1;
  if (!self->_haveFlushedZlib)
  {
    self->_haveFlushedZlib = 1;
    v6 = objc_msgSend__compressBodyData_shouldFlush_(self, v4, 0, 1);
    curData = self->_curData;
    self->_curData = v6;

    self->_curDataPos = 0;
    objc_msgSend__streamNextObject_(self, v8, self->_outputStream);
    return 0;
  }

  return result;
}

- (int64_t)_writeDataToStream:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(self->_curData, v5, v6) && (v9 = self->_curDataPos, v9 < objc_msgSend_length(self->_curData, v7, v8)))
  {
    v10 = self->_curData;
    v13 = objc_msgSend_bytes(v10, v11, v12);
    curDataPos = self->_curDataPos;
    v17 = objc_msgSend_length(v10, v15, v16);
    v19 = objc_msgSend_write_maxLength_(v4, v18, v13 + curDataPos, v17 - self->_curDataPos);
    v20 = v19;
    if (v19 >= 1)
    {
      self->_curDataPos += v19;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)_dataForMessage:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_data(a3, a2, a3);
  v13 = 0;
  v12 = 0;
  objc_msgSend_length(v3, v4, v5);
  v6 = PBDataWriterWriteBareVarint();
  v7 = objc_opt_new();
  objc_msgSend_appendBytes_length_(v7, v8, &v12, v6);
  objc_msgSend_appendData_(v7, v9, v3);

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_prepareObjectForStreaming:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v16 = objc_msgSend__dataForMessage_(v5, v6, v4);

  v9 = objc_msgSend_logRequestObjectBlock(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_logRequestObjectBlock(self, v10, v11);
    (v12)[2](v12, v16);
  }

  if (objc_msgSend_shouldCompress(self, v10, v11))
  {
    v14 = objc_msgSend__compressBodyData_shouldFlush_(self, v13, v16, 0);
  }

  else
  {
    v14 = v16;
  }

  curData = self->_curData;
  self->_curData = v14;

  self->_curDataPos = 0;
}

- (int64_t)_streamNextObject:(id)a3
{
  v4 = a3;
  curDataPos = self->_curDataPos;
  if (curDataPos >= objc_msgSend_length(self->_curData, v6, v7))
  {
    while (objc_msgSend_count(self->_allObjects, v8, v9))
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(self->_allObjects, v11, 0);
      objc_msgSend_removeObjectAtIndex_(self->_allObjects, v13, 0);
      objc_msgSend__prepareObjectForStreaming_(self, v14, v12);

      curData = self->_curData;
      if (curData && objc_msgSend_length(curData, v8, v9))
      {
        goto LABEL_2;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_2:
    v10 = objc_msgSend__writeDataToStream_(self, v8, v4);
  }

  return v10;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDProtobufStreamWriter.m", 268, @"I didn't order this stream, so why is it on my bill?");
  }

  if ((objc_msgSend_haveFinishedStreaming(self, v8, v9) & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    if (a4 != 16)
    {
      if (a4 == 8)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v17 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v18 = v17;
          v21 = objc_msgSend_streamError(v7, v19, v20);
          v27 = 138412290;
          v28 = v21;
          _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Got a stream error: %@", &v27, 0xCu);
        }

        goto LABEL_22;
      }

      if (a4 != 4)
      {
        goto LABEL_22;
      }

      if (!objc_msgSend_count(self->_allObjects, v10, v11))
      {
        curDataPos = self->_curDataPos;
        if (curDataPos >= objc_msgSend_length(self->_curData, v13, v14))
        {
LABEL_11:
          if ((objc_msgSend__finishStreaming_(self, v13, self->_outputStream) & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      Object = objc_msgSend__streamNextObject_(self, v13, self->_outputStream);
      if ((Object & 0x8000000000000000) == 0)
      {
        if (!Object)
        {
          goto LABEL_11;
        }

LABEL_22:
        objc_autoreleasePoolPop(v12);
        goto LABEL_23;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        outputStream = self->_outputStream;
        v27 = 134217984;
        v28 = outputStream;
        _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Failed to write into the outputStream:%p", &v27, 0xCu);
      }
    }

LABEL_21:
    objc_msgSend_tearDown(self, v10, v11);
    goto LABEL_22;
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

@end