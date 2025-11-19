@interface IAMReceivedEventTriggerContext
- (BOOL)satisfiesPresentationTrigger:(id)a3;
- (IAMReceivedEventTriggerContext)initWithEvent:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation IAMReceivedEventTriggerContext

- (IAMReceivedEventTriggerContext)initWithEvent:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IAMReceivedEventTriggerContext;
  v9 = [(IAMReceivedEventTriggerContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, a3);
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;
  }

  return v10;
}

- (BOOL)satisfiesPresentationTrigger:(id)a3
{
  v4 = a3;
  if ([v4 hasKind] && objc_msgSend(v4, "kind"))
  {
    goto LABEL_6;
  }

  v5 = [v4 bundleIdentifier];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [v4 bundleIdentifier];
  v8 = [v7 isEqualToString:self->_bundleIdentifier];

  if (!v8)
  {
LABEL_6:
    v11 = 0;
  }

  else
  {
LABEL_5:
    event = self->_event;
    v10 = [v4 triggerName];
    v11 = [(IAMEventProtocol *)event matchesWithKey:v10];
  }

  return v11;
}

@end