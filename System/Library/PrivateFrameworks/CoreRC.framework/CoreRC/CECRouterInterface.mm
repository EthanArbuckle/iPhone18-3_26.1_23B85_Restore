@interface CECRouterInterface
- (CECRouterInterface)initWithRouter:(id)a3;
- (void)dealloc;
- (void)receivedFrame:(CECFrame *)a3;
@end

@implementation CECRouterInterface

- (CECRouterInterface)initWithRouter:(id)a3
{
  v8.receiver = self;
  v8.super_class = CECRouterInterface;
  v4 = [(CECInterface *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_router = a3;
    v6 = a3;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECRouterInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (void)receivedFrame:(CECFrame *)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(CECInterface *)self snoopingMode])
  {
    goto LABEL_5;
  }

  if (~a3->blocks[0] & 0xF) == 0 || (([(CECInterface *)self addressMask]>> (a3->blocks[0] & 0xF)))
  {
    v7 = *a3->blocks;
    v8 = *(a3 + 4);
    [(CECInterface *)self setLastReceivedFrame:&v7];
LABEL_5:
    v5 = [(CECInterface *)self delegate];
    v7 = *a3->blocks;
    v8 = *(a3 + 4);
    [(CECInterfaceDelegate *)v5 interface:self receivedFrame:&v7];
    goto LABEL_6;
  }

  if (gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECRouterInterface receivedFrame:a3];
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
}

@end