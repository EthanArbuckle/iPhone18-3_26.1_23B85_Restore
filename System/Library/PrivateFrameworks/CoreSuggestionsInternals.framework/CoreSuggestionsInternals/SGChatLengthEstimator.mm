@interface SGChatLengthEstimator
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (SGChatLengthEstimator)initWithPath:(id)path;
- (id)initInMemory;
- (unint64_t)count;
- (unint64_t)estimateMessagesInChat:(id)chat;
- (void)dealloc;
- (void)recordMessageInChat:(id)chat;
@end

@implementation SGChatLengthEstimator

- (unint64_t)estimateMessagesInChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v6 = chatCopy;
  if (chatCopy)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGChatLengthEstimator.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifier"}];

    v16 = 0;
    v17 = 0;
    chatCopy = 0;
  }

  SGMurmurhashString(chatCopy, 3203338804, &v16);
  pthread_mutex_lock(&sharedInstanceLock);
  v7 = -1;
  v8 = &v16;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = *v8 & 0x3FFF;
    if (v11 <= 0x3FFD)
    {
      v12 = self->_sketch[v11];
      if (v7 >= v12)
      {
        v7 = v12;
      }
    }

    v9 = 0;
    v8 = (&v16 + 4);
  }

  while ((v10 & 1) != 0);
  pthread_mutex_unlock(&sharedInstanceLock);

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)recordMessageInChat:(id)chat
{
  v22 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v6 = chatCopy;
  if (chatCopy)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGChatLengthEstimator.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"domainIdentifier"}];

    v20 = 0;
    v21 = 0;
    chatCopy = 0;
  }

  SGMurmurhashString(chatCopy, 3203338804, &v20);
  pthread_mutex_lock(&sharedInstanceLock);
  countPtr = self->_countPtr;
  v8 = *countPtr + 1;
  *countPtr = v8;
  if (v8 >= 0x1389u)
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_DEFAULT, "Chat length estimator reached max size. Clearing.", buf, 2u);
    }

    bzero(self->_countPtr, 0x4000uLL);
  }

  v10 = &v20;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = *v10 & 0x3FFF;
    if (v13 <= 0x3FFD)
    {
      sketch = self->_sketch;
      v15 = sketch[v13];
      if (((v15 + 1) & 0x100) != 0)
      {
        v16 = -1;
      }

      else
      {
        v16 = v15 + 1;
      }

      sketch[v13] = v16;
    }

    v11 = 0;
    v10 = (&v20 + 4);
  }

  while ((v12 & 1) != 0);
  pthread_mutex_unlock(&sharedInstanceLock);

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)count
{
  pthread_mutex_lock(&sharedInstanceLock);
  v3 = *self->_countPtr;
  pthread_mutex_unlock(&sharedInstanceLock);
  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  if ((self->_fd & 0x80000000) == 0)
  {
    msync(self->_countPtr, 0x4000uLL, 1);
    munmap(self->_countPtr, 0x4000uLL);
    close(self->_fd);
    self->_fd = -1;
  }

  v3.receiver = self;
  v3.super_class = SGChatLengthEstimator;
  [(SGChatLengthEstimator *)&v3 dealloc];
}

- (id)initInMemory
{
  v8.receiver = self;
  v8.super_class = SGChatLengthEstimator;
  v2 = [(SGChatLengthEstimator *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_fd = -1;
    v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x4000];
    backingData = v3->_backingData;
    v3->_backingData = v4;

    mutableBytes = [(NSMutableData *)v3->_backingData mutableBytes];
    v3->_countPtr = mutableBytes;
    v3->_sketch = (mutableBytes + 2);
    pthread_mutex_init(&v3->_lock, 0);
  }

  return v3;
}

- (SGChatLengthEstimator)initWithPath:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = SGChatLengthEstimator;
  v5 = [(SGChatLengthEstimator *)&v21 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [pathCopy copy];
  path = v5->_path;
  v5->_path = v6;

  v8 = open_dprotected_np([pathCopy UTF8String], 514, 3, 0, 384);
  v5->_fd = v8;
  if (v8 < 0)
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      v17 = *__error();
      *buf = 138412802;
      v23 = pathCopy;
      v24 = 2080;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "Could not open chat length estimator at %@: %s (errno %i)", buf, 0x1Cu);
    }

    v10 = 0;
  }

  else
  {
    ftruncate(v8, 0x4000);
    v9 = mmap(0, 0x4000uLL, 3, 1, v5->_fd, 0);
    v5->_countPtr = v9;
    if (v9 != -1)
    {
      v5->_sketch = v9 + 2;
      pthread_mutex_init(&v5->_lock, 0);
LABEL_5:
      v10 = v5;
      goto LABEL_12;
    }

    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = __error();
      v19 = strerror(*v18);
      v20 = *__error();
      *buf = 138412802;
      v23 = pathCopy;
      v24 = 2080;
      v25 = v19;
      v26 = 1024;
      v27 = v20;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "Could not mmap chat length estimator file at %@: %s (errno %i)", buf, 0x1Cu);
    }

    close(v5->_fd);
    v10 = 0;
    v5->_fd = -1;
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)setSharedInstance:(id)instance
{
  instanceCopy = instance;
  pthread_mutex_lock(&sharedInstanceLock);
  v4 = sharedInstance;
  sharedInstance = instanceCopy;

  pthread_mutex_unlock(&sharedInstanceLock);
}

+ (id)sharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  v2 = sharedInstance;
  if (!v2)
  {
    v3 = [SGChatLengthEstimator alloc];
    v4 = [SGPaths suggestionsDirectoryFile:@"chatLengthEstimator.cmsketch"];
    v5 = [(SGChatLengthEstimator *)v3 initWithPath:v4];
    v6 = sharedInstance;
    sharedInstance = v5;

    v2 = v5;
  }

  pthread_mutex_unlock(&sharedInstanceLock);

  return v2;
}

@end