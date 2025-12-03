@interface BRGetPausedFileListUpdater
- (BRGetPausedFileListUpdater)initWithCallback:(id)callback;
- (BRGetPausedFileListUpdater)initWithCoder:(id)coder;
- (void)updatePausedFileURL:(id)l reply:(id)reply;
@end

@implementation BRGetPausedFileListUpdater

- (BRGetPausedFileListUpdater)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = BRGetPausedFileListUpdater;
  v5 = [(BRGetPausedFileListUpdater *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1B26FEA90](callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

- (void)updatePausedFileURL:(id)l reply:(id)reply
{
  callback = self->_callback;
  if (callback)
  {
    callback[2](callback, l, reply);
  }
}

- (BRGetPausedFileListUpdater)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BRGetPausedFileListUpdater;
  return [(BRGetPausedFileListUpdater *)&v4 init];
}

@end