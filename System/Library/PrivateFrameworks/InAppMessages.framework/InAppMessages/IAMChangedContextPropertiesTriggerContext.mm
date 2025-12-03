@interface IAMChangedContextPropertiesTriggerContext
- (BOOL)satisfiesPresentationTrigger:(id)trigger;
- (IAMChangedContextPropertiesTriggerContext)initWithContextPropertyNames:(id)names bundleIdentifier:(id)identifier;
@end

@implementation IAMChangedContextPropertiesTriggerContext

- (IAMChangedContextPropertiesTriggerContext)initWithContextPropertyNames:(id)names bundleIdentifier:(id)identifier
{
  namesCopy = names;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IAMChangedContextPropertiesTriggerContext;
  v8 = [(IAMChangedContextPropertiesTriggerContext *)&v14 init];
  if (v8)
  {
    v9 = [namesCopy copy];
    contextPropertyNames = v8->_contextPropertyNames;
    v8->_contextPropertyNames = v9;

    v11 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

- (BOOL)satisfiesPresentationTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ([triggerCopy hasKind] && objc_msgSend(triggerCopy, "kind") != 1)
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
    contextPropertyNames = self->_contextPropertyNames;
    triggerName = [triggerCopy triggerName];
    v11 = [(NSSet *)contextPropertyNames containsObject:triggerName];
  }

  return v11;
}

@end