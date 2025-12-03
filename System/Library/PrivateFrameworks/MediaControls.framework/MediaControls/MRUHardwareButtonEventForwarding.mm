@interface MRUHardwareButtonEventForwarding
- (MRUHardwareButtonEventForwarding)initWithConsumer:(id)consumer;
- (void)dealloc;
@end

@implementation MRUHardwareButtonEventForwarding

- (MRUHardwareButtonEventForwarding)initWithConsumer:(id)consumer
{
  v16[2] = *MEMORY[0x1E69E9840];
  consumerCopy = consumer;
  v15.receiver = self;
  v15.super_class = MRUHardwareButtonEventForwarding;
  v5 = [(MRUHardwareButtonEventForwarding *)&v15 init];
  if (v5)
  {
    v6 = [[_MRUButtonEventConsumer alloc] initWithConsumer:consumerCopy];
    wrappedConsumer = v5->_wrappedConsumer;
    v5->_wrappedConsumer = v6;

    mEMORY[0x1E69D4220] = [MEMORY[0x1E69D4220] sharedInstance];
    v9 = [mEMORY[0x1E69D4220] beginConsumingPressesForButtonKind:4 eventConsumer:v5->_wrappedConsumer priority:0];
    v16[0] = v9;
    mEMORY[0x1E69D4220]2 = [MEMORY[0x1E69D4220] sharedInstance];
    v11 = [mEMORY[0x1E69D4220]2 beginConsumingPressesForButtonKind:3 eventConsumer:v5->_wrappedConsumer priority:0];
    v16[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    invalidators = v5->_invalidators;
    v5->_invalidators = v12;
  }

  return v5;
}

- (void)dealloc
{
  [(NSArray *)self->_invalidators makeObjectsPerformSelector:sel_invalidate];
  v3.receiver = self;
  v3.super_class = MRUHardwareButtonEventForwarding;
  [(MRUHardwareButtonEventForwarding *)&v3 dealloc];
}

@end