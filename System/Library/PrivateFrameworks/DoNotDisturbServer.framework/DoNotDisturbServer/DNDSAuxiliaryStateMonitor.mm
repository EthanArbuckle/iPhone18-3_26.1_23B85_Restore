@interface DNDSAuxiliaryStateMonitor
- (BOOL)isPresentationModeEnabled;
- (BOOL)isScreenMirrored;
- (BOOL)isScreenShared;
- (DNDSAuxiliaryStateMonitor)init;
- (void)dealloc;
- (void)setScreenMirrored:(BOOL)a3;
- (void)setScreenShared:(BOOL)a3;
@end

@implementation DNDSAuxiliaryStateMonitor

- (DNDSAuxiliaryStateMonitor)init
{
  v7.receiver = self;
  v7.super_class = DNDSAuxiliaryStateMonitor;
  v2 = [(DNDSAuxiliaryStateMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.donotdisturb.DNDSAuxiliaryStateMonitor.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    *&v2->_presentationModeEnabled = 0;
    v2->_screenMirrored = 0;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DNDSAuxiliaryStateMonitor;
  [(DNDSAuxiliaryStateMonitor *)&v2 dealloc];
}

- (BOOL)isPresentationModeEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__DNDSAuxiliaryStateMonitor_isPresentationModeEnabled__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isScreenShared
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__DNDSAuxiliaryStateMonitor_isScreenShared__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setScreenShared:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__DNDSAuxiliaryStateMonitor_setScreenShared___block_invoke;
  v4[3] = &unk_278F8B318;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

- (BOOL)isScreenMirrored
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__DNDSAuxiliaryStateMonitor_isScreenMirrored__block_invoke;
  v5[3] = &unk_278F89EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setScreenMirrored:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__DNDSAuxiliaryStateMonitor_setScreenMirrored___block_invoke;
  v4[3] = &unk_278F8B318;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

@end