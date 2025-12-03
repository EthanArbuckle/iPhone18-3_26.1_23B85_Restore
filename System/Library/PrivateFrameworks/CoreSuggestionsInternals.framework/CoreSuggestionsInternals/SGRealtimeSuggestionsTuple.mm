@interface SGRealtimeSuggestionsTuple
- (id)combinedSuggestions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)suggestionsCount;
@end

@implementation SGRealtimeSuggestionsTuple

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGRealtimeSuggestionsTuple c:%tu e:%tu r:%tu d:%tu i:%tu o:%tu p:%tu>", -[NSArray count](self->_contacts, "count"), -[NSArray count](self->_events, "count"), -[NSArray count](self->_reminders, "count"), -[NSArray count](self->_deliveries, "count"), -[NSArray count](self->_invalidatedIdentifiers, "count"), -[NSArray count](self->_walletOrders, "count"), -[NSArray count](self->_walletPasses, "count")];

  return v2;
}

- (id)combinedSuggestions
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_contacts)
  {
    [v3 addObjectsFromArray:?];
  }

  if (self->_events)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_reminders)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_deliveries)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_walletOrders)
  {
    [v4 addObjectsFromArray:?];
  }

  if (self->_walletPasses)
  {
    [v4 addObjectsFromArray:?];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setContacts:self->_contacts];
  [v4 setEvents:self->_events];
  [v4 setReminders:self->_reminders];
  [v4 setDeliveries:self->_deliveries];
  [v4 setInvalidatedIdentifiers:self->_invalidatedIdentifiers];
  [v4 setWalletOrders:self->_walletOrders];
  [v4 setWalletPasses:self->_walletPasses];
  return v4;
}

- (unint64_t)suggestionsCount
{
  contacts = [(SGRealtimeSuggestionsTuple *)self contacts];
  v4 = [contacts count];
  events = [(SGRealtimeSuggestionsTuple *)self events];
  v6 = [events count] + v4;
  reminders = [(SGRealtimeSuggestionsTuple *)self reminders];
  v8 = [reminders count];
  deliveries = [(SGRealtimeSuggestionsTuple *)self deliveries];
  v10 = v6 + v8 + [deliveries count];
  walletOrders = [(SGRealtimeSuggestionsTuple *)self walletOrders];
  v12 = [walletOrders count];
  walletPasses = [(SGRealtimeSuggestionsTuple *)self walletPasses];
  v14 = v12 + [walletPasses count];

  return v10 + v14;
}

@end