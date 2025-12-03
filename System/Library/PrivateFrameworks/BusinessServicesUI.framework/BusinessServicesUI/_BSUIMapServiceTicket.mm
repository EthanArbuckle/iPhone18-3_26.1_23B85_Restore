@interface _BSUIMapServiceTicket
- (void)submitWithHandler:(id)handler;
@end

@implementation _BSUIMapServiceTicket

- (void)submitWithHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    self = self->_serviceTicket;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43___BSUIMapServiceTicket_submitWithHandler___block_invoke;
  v6[3] = &unk_278D3EDB8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(_BSUIMapServiceTicket *)self submitWithHandler:v6 networkActivity:0];
}

@end