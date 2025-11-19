@interface IAMChangedContextPropertiesTriggerContext
- (BOOL)satisfiesPresentationTrigger:(id)a3;
- (IAMChangedContextPropertiesTriggerContext)initWithContextPropertyNames:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation IAMChangedContextPropertiesTriggerContext

- (IAMChangedContextPropertiesTriggerContext)initWithContextPropertyNames:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IAMChangedContextPropertiesTriggerContext;
  v8 = [(IAMChangedContextPropertiesTriggerContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    contextPropertyNames = v8->_contextPropertyNames;
    v8->_contextPropertyNames = v9;

    v11 = [v7 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

- (BOOL)satisfiesPresentationTrigger:(id)a3
{
  v4 = a3;
  if ([v4 hasKind] && objc_msgSend(v4, "kind") != 1)
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
    contextPropertyNames = self->_contextPropertyNames;
    v10 = [v4 triggerName];
    v11 = [(NSSet *)contextPropertyNames containsObject:v10];
  }

  return v11;
}

@end