@interface CECRouter
+ (id)routerWithSinkInterface:(id)interface;
- (BOOL)interface:(id)interface setAddressMask:(unsigned __int16)mask error:(id *)error;
- (BOOL)interface:(id)interface setSnoopingMode:(BOOL)mode error:(id *)error;
- (CECRouter)initWithSinkInterface:(id)interface;
- (id)newRouterInterface;
- (void)dealloc;
- (void)interface:(id)interface receivedFrame:(CECFrame *)frame;
@end

@implementation CECRouter

+ (id)routerWithSinkInterface:(id)interface
{
  v3 = [[CECRouter alloc] initWithSinkInterface:interface];

  return v3;
}

- (CECRouter)initWithSinkInterface:(id)interface
{
  v8.receiver = self;
  v8.super_class = CECRouter;
  v4 = [(CECRouter *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4->_interfaces = v5;
    if (v5 && (v6 = [objc_msgSend(interface "properties")], (v4->_properties = v6) != 0))
    {
      v4->_sinkInterface = interface;
      [interface setDelegate:v4];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECRouter;
  [(CECRouter *)&v3 dealloc];
}

- (id)newRouterInterface
{
  v3 = [[CECRouterInterface alloc] initWithRouter:self];
  [(NSMutableSet *)self->_interfaces addObject:v3];
  return v3;
}

- (BOOL)interface:(id)interface setAddressMask:(unsigned __int16)mask error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  interfaces = self->_interfaces;
  v8 = [(NSMutableSet *)interfaces countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(interfaces);
        }

        v10 |= [*(*(&v15 + 1) + 8 * i) addressMask];
      }

      v9 = [(NSMutableSet *)interfaces countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    LOWORD(v10) = 0;
  }

  result = [(CECInterface *)self->_sinkInterface setAddressMask:v10 error:error];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)interface:(id)interface setSnoopingMode:(BOOL)mode error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  interfaces = self->_interfaces;
  v8 = [(NSMutableSet *)interfaces countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(interfaces);
        }

        v10 |= [*(*(&v15 + 1) + 8 * i) snoopingMode];
      }

      v9 = [(NSMutableSet *)interfaces countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  result = [(CECInterface *)self->_sinkInterface setSnoopingMode:v10 & 1 error:error];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)interface:(id)interface receivedFrame:(CECFrame *)frame
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *frame;
  [(CECRouter *)self interface:interface sendFrame:&v5 withRetryCount:0 error:0];
  v4 = *MEMORY[0x277D85DE8];
}

@end