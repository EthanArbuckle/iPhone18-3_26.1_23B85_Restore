@interface EDInteractionEvent
- (id)debugDescription;
@end

@implementation EDInteractionEvent

- (id)debugDescription
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  eventID = [(EDInteractionEvent *)self eventID];
  v5 = eventID == 0;
  if (eventID)
  {
    [v3 appendFormat:@" eventID=%lld", -[EDInteractionEvent eventID](self, "eventID")];
  }

  if ([(EDInteractionEvent *)self version])
  {
    if (eventID)
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendFormat:@" version=%ld", -[EDInteractionEvent version](self, "version")];
    v5 = 0;
  }

  name = [(EDInteractionEvent *)self name];

  if (name)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    name2 = [(EDInteractionEvent *)self name];
    [v3 appendFormat:@" name=%@", name2];

    v5 = 0;
  }

  date = [(EDInteractionEvent *)self date];

  if (date)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    date2 = [(EDInteractionEvent *)self date];
    [v3 appendFormat:@" date=%@", date2];

    v5 = 0;
  }

  accountID = [(EDInteractionEvent *)self accountID];

  if (accountID)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    accountID2 = [(EDInteractionEvent *)self accountID];
    [v3 appendFormat:@" accountID=%@", accountID2];

    v5 = 0;
  }

  if ([(EDInteractionEvent *)self mailboxID])
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendFormat:@" mailboxID=%lld", -[EDInteractionEvent mailboxID](self, "mailboxID")];
    v5 = 0;
  }

  if ([(EDInteractionEvent *)self conversationID])
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendFormat:@" conversationID=%lld", -[EDInteractionEvent conversationID](self, "conversationID")];
    v5 = 0;
  }

  if ([(EDInteractionEvent *)self messageIDHash])
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendFormat:@" messageIDHash=%lld", -[EDInteractionEvent messageIDHash](self, "messageIDHash")];
    v5 = 0;
  }

  if ([(EDInteractionEvent *)self messagePersistentID])
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendFormat:@" messagePersistentID=%lld", -[EDInteractionEvent messagePersistentID](self, "messagePersistentID")];
    v5 = 0;
  }

  data = [(EDInteractionEvent *)self data];

  if (data)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    data2 = [(EDInteractionEvent *)self data];
    [v3 appendFormat:@" data=%@", data2];
  }

  [v3 appendString:@">"];

  return v3;
}

@end