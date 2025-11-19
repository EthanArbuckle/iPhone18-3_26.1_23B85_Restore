@interface EDInteractionEvent
- (id)debugDescription;
@end

@implementation EDInteractionEvent

- (id)debugDescription
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(EDInteractionEvent *)self eventID];
  v5 = v4 == 0;
  if (v4)
  {
    [v3 appendFormat:@" eventID=%lld", -[EDInteractionEvent eventID](self, "eventID")];
  }

  if ([(EDInteractionEvent *)self version])
  {
    if (v4)
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendFormat:@" version=%ld", -[EDInteractionEvent version](self, "version")];
    v5 = 0;
  }

  v6 = [(EDInteractionEvent *)self name];

  if (v6)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    v7 = [(EDInteractionEvent *)self name];
    [v3 appendFormat:@" name=%@", v7];

    v5 = 0;
  }

  v8 = [(EDInteractionEvent *)self date];

  if (v8)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    v9 = [(EDInteractionEvent *)self date];
    [v3 appendFormat:@" date=%@", v9];

    v5 = 0;
  }

  v10 = [(EDInteractionEvent *)self accountID];

  if (v10)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    v11 = [(EDInteractionEvent *)self accountID];
    [v3 appendFormat:@" accountID=%@", v11];

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

  v12 = [(EDInteractionEvent *)self data];

  if (v12)
  {
    if (!v5)
    {
      [v3 appendString:{@", "}];
    }

    v13 = [(EDInteractionEvent *)self data];
    [v3 appendFormat:@" data=%@", v13];
  }

  [v3 appendString:@">"];

  return v3;
}

@end