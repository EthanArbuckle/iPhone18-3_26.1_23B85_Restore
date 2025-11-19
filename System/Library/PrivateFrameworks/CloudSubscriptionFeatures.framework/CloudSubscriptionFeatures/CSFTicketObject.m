@interface CSFTicketObject
- (CSFTicketObject)initWithTicket:(id)a3 withStatus:(unint64_t)a4;
@end

@implementation CSFTicketObject

- (CSFTicketObject)initWithTicket:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CSFTicketObject;
  v7 = [(CSFTicketObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CSFTicketObject *)v7 setTicket:v6];
    [(CSFTicketObject *)v8 setStatus:a4];
  }

  return v8;
}

@end