@interface MSVXPCListener
- (MSVXPCListener)initWithMachServiceName:(id)name;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setDelegate:(id)delegate;
- (void)suspend;
@end

@implementation MSVXPCListener

- (void)resume
{
  v3.receiver = self;
  v3.super_class = MSVXPCListener;
  [(MSVXPCListener *)&v3 resume];
  [(NSXPCListener *)self->_localProxy resume];
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = MSVXPCListener;
  delegateCopy = delegate;
  [(MSVXPCListener *)&v5 setDelegate:delegateCopy];
  [(NSXPCListener *)self->_localProxy setDelegate:delegateCopy, v5.receiver, v5.super_class];
}

- (void)suspend
{
  v3.receiver = self;
  v3.super_class = MSVXPCListener;
  [(MSVXPCListener *)&v3 suspend];
  [(NSXPCListener *)self->_localProxy suspend];
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = MSVXPCListener;
  [(MSVXPCListener *)&v3 invalidate];
  [(NSXPCListener *)self->_localProxy invalidate];
}

- (void)activate
{
  v3.receiver = self;
  v3.super_class = MSVXPCListener;
  [(MSVXPCListener *)&v3 activate];
  [(NSXPCListener *)self->_localProxy activate];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_localProxy invalidate];
  [MSVXPCConnection unregisterLocalListerWithName:self->_registeredServiceName];
  v3.receiver = self;
  v3.super_class = MSVXPCListener;
  [(MSVXPCListener *)&v3 dealloc];
}

- (MSVXPCListener)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = MSVXPCListener;
  v6 = [(MSVXPCListener *)&v10 initWithMachServiceName:nameCopy];
  if (v6)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    localProxy = v6->_localProxy;
    v6->_localProxy = anonymousListener;

    objc_storeStrong(&v6->_registeredServiceName, name);
    [MSVXPCConnection registerLocalListener:v6 withServiceName:v6->_registeredServiceName];
  }

  return v6;
}

@end