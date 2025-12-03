@interface DYLaunchdCheckin
- (DYLaunchdCheckin)checkinWithBlock:(id)block;
- (DYLaunchdCheckin)initWithSocketPath:(id)path;
- (id)_connectToSocketDescriptor:(int)descriptor;
- (int)_unixListenSocketDescriptor;
@end

@implementation DYLaunchdCheckin

- (DYLaunchdCheckin)initWithSocketPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = DYLaunchdCheckin;
  v5 = [(DYLaunchdCheckin *)&v14 init];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v5)];
  v8 = [v6 stringWithFormat:@"gputools.%@.%p", v7, v5];
  v9 = dispatch_queue_create([v8 UTF8String], 0);
  queue = v5->_queue;
  v5->_queue = v9;

  v11 = [pathCopy copy];
  socketPath = v5->_socketPath;
  v5->_socketPath = v11;

  return v5;
}

- (id)_connectToSocketDescriptor:(int)descriptor
{
  v5 = objc_opt_new();
  fcntl(descriptor, 4, 4);
  v6 = dispatch_source_create(MEMORY[0x277D85D28], descriptor, 0, self->_queue);
  connSource = self->_connSource;
  self->_connSource = v6;

  v8 = self->_connSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__DYLaunchdCheckin__connectToSocketDescriptor___block_invoke;
  handler[3] = &unk_2793097C8;
  descriptorCopy = descriptor;
  handler[4] = self;
  dispatch_source_set_cancel_handler(v8, handler);
  v9 = self->_connSource;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__DYLaunchdCheckin__connectToSocketDescriptor___block_invoke_2;
  v14[3] = &unk_2793097F0;
  v14[4] = self;
  descriptorCopy2 = descriptor;
  v10 = v5;
  v15 = v10;
  dispatch_source_set_event_handler(v9, v14);
  dispatch_resume(self->_connSource);
  v11 = v15;
  v12 = v10;

  return v10;
}

void __47__DYLaunchdCheckin__connectToSocketDescriptor___block_invoke(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void __47__DYLaunchdCheckin__connectToSocketDescriptor___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!dispatch_source_testcancel(*(*(a1 + 32) + 8)))
  {
    v5 = 0;
    if (accept(*(a1 + 48), &v6, &v5) == -1)
    {
      v3 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      [*(a1 + 40) setError:v3];

      [MEMORY[0x277CCABB0] numberWithBool:0];
    }

    else
    {
      (*(*(*(a1 + 32) + 16) + 16))();
      [MEMORY[0x277CCABB0] numberWithBool:1];
    }
    v2 = ;
    [*(a1 + 40) setResult:v2];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int)_unixListenSocketDescriptor
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = socket(1, 1, 0);
  bzero(&v7, 0x6AuLL);
  v7.sa_family = 1;
  fileSystemRepresentation = [(NSString *)self->_socketPath fileSystemRepresentation];
  v7.sa_len = strlen(fileSystemRepresentation);
  strncpy(v7.sa_data, fileSystemRepresentation, 0x67uLL);
  if (bind(v3, &v7, 0x6Au))
  {
    result = -1;
  }

  else if (listen(v3, 1))
  {
    result = -1;
  }

  else
  {
    result = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (DYLaunchdCheckin)checkinWithBlock:(id)block
{
  blockCopy = block;
  v4 = [blockCopy copy];
  block = self->_block;
  self->_block = v4;

  _unixListenSocketDescriptor = [(DYLaunchdCheckin *)self _unixListenSocketDescriptor];
  if (_unixListenSocketDescriptor != -1)
  {
    v7 = [(DYLaunchdCheckin *)self _connectToSocketDescriptor:_unixListenSocketDescriptor];
  }

  return result;
}

@end