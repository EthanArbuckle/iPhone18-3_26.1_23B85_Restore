@interface IAMReceivedEventTriggerContext
- (BOOL)satisfiesPresentationTrigger:(id)trigger;
- (IAMReceivedEventTriggerContext)initWithEvent:(id)event bundleIdentifier:(id)identifier;
@end

@implementation IAMReceivedEventTriggerContext

- (IAMReceivedEventTriggerContext)initWithEvent:(id)event bundleIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IAMReceivedEventTriggerContext;
  v9 = [(IAMReceivedEventTriggerContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

- (BOOL)satisfiesPresentationTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([triggerCopy hasKind] && objc_msgSend(triggerCopy, "kind"))
  {
    goto LABEL_6;
  }

  bundleIdentifier = [triggerCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    goto LABEL_5;
  }

  v6 = bundleIdentifier;
  bundleIdentifier2 = [triggerCopy bundleIdentifier];
  v8 = [bundleIdentifier2 isEqualToString:self->_bundleIdentifier];

  if (!v8)
  {
LABEL_6:
    v11 = 0;
  }

  else
  {
LABEL_5:
    event = self->_event;
    triggerName = [triggerCopy triggerName];
    v11 = [(IAMEventProtocol *)event matchesWithKey:triggerName];
  }

  return v11;
}

@end