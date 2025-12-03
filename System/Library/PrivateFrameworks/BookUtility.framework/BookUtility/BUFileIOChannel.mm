@interface BUFileIOChannel
- (BOOL)isValid;
- (BUFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode error:(id *)error cleanupHandler:(id)handler;
- (BUFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor queue:(id)queue cleanupHandler:(id)handler;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)flushWithCompletion:(id)completion;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setLowWater:(unint64_t)water;
- (void)truncateToLength:(int64_t)length completion:(id)completion;
- (void)writeData:(id)data handler:(id)handler;
- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler;
@end

@implementation BUFileIOChannel

- (BUFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode error:(id *)error cleanupHandler:(id)handler
{
  modeCopy = mode;
  v79 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy || (objc_msgSend_isFileURL(lCopy, v15, v16) & 1) == 0)
  {
    if (error)
    {
      *error = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v15, 2, 0);
    }

    v40 = MEMORY[0x245D00360](handlerCopy);
    v41 = v40;
    if (v40)
    {
      (*(v40 + 16))(v40, 2);
    }

    goto LABEL_17;
  }

  v70.receiver = self;
  v70.super_class = BUFileIOChannel;
  v19 = [(BUFileIOChannel *)&v70 init];
  if (!v19)
  {
    if (error)
    {
      *error = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v18, 12, 0);
    }

    v44 = MEMORY[0x245D00360](handlerCopy);
    self = v44;
    if (v44)
    {
      (*(v44 + 16))(v44, 12);
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_241DC1D7C;
  v65[3] = &unk_278D1D8D0;
  v67 = v68;
  v20 = handlerCopy;
  v66 = v20;
  v61 = MEMORY[0x245D00360](v65);
  v23 = objc_msgSend_path(lCopy, v21, v22);
  v24 = v23;
  v27 = objc_msgSend_fileSystemRepresentation(v23, v25, v26);

  if (v27)
  {
    if ((oflag & 0x400) != 0)
    {
      unlink(v27);
    }

    v30 = open(v27, oflag, modeCopy);
    if (v30 < 0)
    {
      v45 = MEMORY[0x277CCA9B8];
      v46 = __error();
      v39 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(v45, v47, *v46, 0);
      v48 = BUZipLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = __error();
        v50 = strerror(*v49);
        sub_241DD0A5C(v50, buf, v27, v48);
      }

      v51 = __error();
      v61[2](v61, *v51);
      goto LABEL_26;
    }

    v31 = dispatch_queue_create("BUFileIOChannel.IO", 0);
    ioQueue = v19->_ioQueue;
    v19->_ioQueue = v31;

    v33 = v19->_ioQueue;
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_241DC1DF4;
    cleanup_handler[3] = &unk_278D1D8F8;
    v64 = v30;
    v63 = v20;
    v34 = dispatch_io_create(type, v30, v33, cleanup_handler);
    objc_msgSend_setChannel_(v19, v35, v34);

    v36 = BUZipLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v57 = objc_msgSend_channel(v19, v37, v38);
      v60 = objc_msgSend_path(lCopy, v58, v59);
      *buf = 138413058;
      v72 = v19;
      v73 = 1024;
      v74 = v30;
      v75 = 2112;
      v76 = v57;
      v77 = 2112;
      v78 = v60;
      _os_log_debug_impl(&dword_241DA6000, v36, OS_LOG_TYPE_DEBUG, "%@: initWithType:URL:oflag:mode:, fd = %d, self.channel = %@, URL = %@", buf, 0x26u);
    }
  }

  v39 = 0;
LABEL_26:
  v52 = objc_msgSend_channel(v19, v28, v29);
  v53 = v52 == 0;

  if (v53)
  {
    if (error)
    {
      if (v39)
      {
        v55 = v39;
        *error = v39;
      }

      else
      {
        v56 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v54, 2, 0);
        *error = v56;
      }
    }

    v61[2](v61, 2);

    v19 = 0;
  }

  self = v19;

  _Block_object_dispose(v68, 8);
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (BUFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor queue:(id)queue cleanupHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = BUFileIOChannel;
  v12 = [(BUFileIOChannel *)&v31 init];
  if (v12)
  {
    v13 = v12;
    v14 = dispatch_queue_create("BUFileIOChannel.IO", 0);
    ioQueue = v13->_ioQueue;
    v13->_ioQueue = v14;

    v16 = v13->_ioQueue;
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_241DC2140;
    cleanup_handler[3] = &unk_278D1D948;
    v28 = handlerCopy;
    v27 = queueCopy;
    v17 = dispatch_io_create(type, descriptor, v16, cleanup_handler);
    objc_msgSend_setChannel_(v13, v18, v17);

    v21 = objc_msgSend_channel(v13, v19, v20);

    if (!v21)
    {

      v13 = 0;
    }

    v22 = v13;

    v23 = v28;
    v24 = v22;
    goto LABEL_11;
  }

  v22 = MEMORY[0x245D00360](handlerCopy);
  if (v22)
  {
    v23 = queueCopy;
    if (v23)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_241DC212C;
      block[3] = &unk_278D1CEC8;
      v22 = v22;
      v30 = v22;
      dispatch_async(v23, block);
    }

    else
    {
      (v22->_ioQueue)(v22, 12);
    }

    v24 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v24 = 0;
LABEL_12:

  return v24;
}

- (void)dealloc
{
  if ((objc_msgSend_isClosed(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_channel(self, v4, v5);

    if (v6)
    {
      v9 = objc_msgSend_channel(self, v7, v8);
      dispatch_io_close(v9, 0);
    }
  }

  v10.receiver = self;
  v10.super_class = BUFileIOChannel;
  [(BUFileIOChannel *)&v10 dealloc];
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v11 = objc_msgSend_channel(self, v9, v10);
  ioQueue = self->_ioQueue;
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = sub_241DC23B8;
  io_handler[3] = &unk_278D1D970;
  v15 = handlerCopy;
  v13 = handlerCopy;
  dispatch_io_read(v11, offset, length, ioQueue, io_handler);
}

- (void)writeData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v10 = objc_msgSend_channel(self, v8, v9);
  ioQueue = self->_ioQueue;
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = sub_241DC2538;
  io_handler[3] = &unk_278D1D970;
  v14 = handlerCopy;
  v12 = handlerCopy;
  dispatch_io_write(v10, 0, dataCopy, ioQueue, io_handler);
}

- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v12 = objc_msgSend_channel(self, v10, v11);
  ioQueue = self->_ioQueue;
  io_handler[0] = MEMORY[0x277D85DD0];
  io_handler[1] = 3221225472;
  io_handler[2] = sub_241DC26C0;
  io_handler[3] = &unk_278D1D970;
  v16 = handlerCopy;
  v14 = handlerCopy;
  dispatch_io_write(v12, offset, dataCopy, ioQueue, io_handler);
}

- (void)close
{
  if ((objc_msgSend_isClosed(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_channel(self, v4, v5);
    dispatch_io_close(v6, 0);
  }

  objc_msgSend_setClosed_(self, v4, 1);
}

- (void)setLowWater:(unint64_t)water
{
  v4 = objc_msgSend_channel(self, a2, water);
  dispatch_io_set_low_water(v4, water);
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  v7 = objc_msgSend_channel(self, v5, v6);
  dispatch_io_barrier(v7, barrierCopy);
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_channel(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DC2928;
  v9[3] = &unk_278D1D058;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_io_barrier(v7, v9);
}

- (void)truncateToLength:(int64_t)length completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_channel(self, v7, v8);
  barrier[0] = MEMORY[0x277D85DD0];
  barrier[1] = 3221225472;
  barrier[2] = sub_241DC2AB0;
  barrier[3] = &unk_278D1D1B8;
  v12 = completionCopy;
  lengthCopy = length;
  barrier[4] = self;
  v10 = completionCopy;
  dispatch_io_barrier(v9, barrier);
}

- (BOOL)isValid
{
  if (objc_msgSend_isClosed(self, a2, v2))
  {
    return 0;
  }

  v7 = objc_msgSend_channel(self, v4, v5);
  descriptor = dispatch_io_get_descriptor(v7);

  v9 = 0;
  return read(descriptor, &v9, 0) == 0;
}

@end