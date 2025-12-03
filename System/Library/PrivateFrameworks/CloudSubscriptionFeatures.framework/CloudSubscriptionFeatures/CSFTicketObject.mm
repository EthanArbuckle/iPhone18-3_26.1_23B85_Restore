@interface CSFTicketObject
- (CSFTicketObject)initWithTicket:(id)ticket withStatus:(unint64_t)status;
@end

@implementation CSFTicketObject

- (CSFTicketObject)initWithTicket:(id)ticket withStatus:(unint64_t)status
{
  ticketCopy = ticket;
  v10.receiver = self;
  v10.super_class = CSFTicketObject;
  v7 = [(CSFTicketObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CSFTicketObject *)v7 setTicket:ticketCopy];
    [(CSFTicketObject *)v8 setStatus:status];
  }

  return v8;
}

@end