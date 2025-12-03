@interface MXUIService_ServerListener
- (id)init:(id)init;
- (void)dealloc;
@end

@implementation MXUIService_ServerListener

- (id)init:(id)init
{
  selfCopy = self;
  if (!init)
  {
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = MXUIService_ServerListener;
  selfCopy = [(MXUIService_ServerListener *)&v11 init];
  if (!selfCopy)
  {
    goto LABEL_7;
  }

  v5 = [[MXUIService_ServerDelegate alloc] init:init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__MXUIService_ServerListener_init___block_invoke;
  v10[3] = &unk_2798510A0;
  v10[4] = v5;
  v7 = [MEMORY[0x277CF32A0] listenerWithConfigurator:v10];
  if (v7)
  {
    v8 = v7;
    [v7 activate];
    selfCopy->_delegate = v6;
    selfCopy->_listener = v8;
  }

  else
  {
LABEL_7:

    return 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MXUIService_ServerListener;
  [(MXUIService_ServerListener *)&v3 dealloc];
}

@end