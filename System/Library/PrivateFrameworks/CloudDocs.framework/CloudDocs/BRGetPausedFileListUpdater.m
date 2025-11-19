@interface BRGetPausedFileListUpdater
- (BRGetPausedFileListUpdater)initWithCallback:(id)a3;
- (BRGetPausedFileListUpdater)initWithCoder:(id)a3;
- (void)updatePausedFileURL:(id)a3 reply:(id)a4;
@end

@implementation BRGetPausedFileListUpdater

- (BRGetPausedFileListUpdater)initWithCallback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRGetPausedFileListUpdater;
  v5 = [(BRGetPausedFileListUpdater *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1B26FEA90](v4);
    callback = v5->_callback;
    v5->_callback = v6;
  }

  return v5;
}

- (void)updatePausedFileURL:(id)a3 reply:(id)a4
{
  callback = self->_callback;
  if (callback)
  {
    callback[2](callback, a3, a4);
  }
}

- (BRGetPausedFileListUpdater)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRGetPausedFileListUpdater;
  return [(BRGetPausedFileListUpdater *)&v4 init];
}

@end