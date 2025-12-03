@interface CECRouterInterface
- (CECRouterInterface)initWithRouter:(id)router;
- (void)dealloc;
- (void)receivedFrame:(CECFrame *)frame;
@end

@implementation CECRouterInterface

- (CECRouterInterface)initWithRouter:(id)router
{
  v8.receiver = self;
  v8.super_class = CECRouterInterface;
  v4 = [(CECInterface *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_router = router;
    routerCopy = router;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECRouterInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (void)receivedFrame:(CECFrame *)frame
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(CECInterface *)self snoopingMode])
  {
    goto LABEL_5;
  }

  if (~frame->blocks[0] & 0xF) == 0 || (([(CECInterface *)self addressMask]>> (frame->blocks[0] & 0xF)))
  {
    v7 = *frame->blocks;
    v8 = *(frame + 4);
    [(CECInterface *)self setLastReceivedFrame:&v7];
LABEL_5:
    delegate = [(CECInterface *)self delegate];
    v7 = *frame->blocks;
    v8 = *(frame + 4);
    [(CECInterfaceDelegate *)delegate interface:self receivedFrame:&v7];
    goto LABEL_6;
  }

  if (gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECRouterInterface receivedFrame:frame];
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
}

@end