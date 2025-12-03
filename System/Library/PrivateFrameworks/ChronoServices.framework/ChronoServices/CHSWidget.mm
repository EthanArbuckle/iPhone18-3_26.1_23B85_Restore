@interface CHSWidget
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches;
- (BOOL)matchesPersonality:(id)personality;
- (CHSWidget)init;
- (CHSWidget)initWithBSXPCCoder:(id)coder;
- (CHSWidget)initWithCoder:(id)coder;
- (CHSWidget)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind family:(int64_t)family intent:(id)intent activityIdentifier:(id)activityIdentifier;
- (CHSWidget)initWithExtensionIdentity:(id)identity kind:(id)kind family:(int64_t)family intent:(id)intent activityIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier;
- (CHSWidget)initWithExtensionIdentity:(id)identity kind:(id)kind family:(int64_t)family intentReference:(id)reference activityIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier;
- (CHSWidget)initWithPersonality:(id)personality family:(int64_t)family intent:(id)intent;
- (CHSWidget)initWithWidgetIdentity:(id)identity family:(int64_t)family intent:(id)intent activityIdentifier:(id)identifier;
- (id)_loggingIdentifierWithMetrics:(id)metrics;
- (id)_loggingIdentifierWithMetrics:(id)metrics prefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)widgetByRemovingPersona;
- (id)widgetByReplacingIntent:(id)intent;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidget

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  extensionIdentity = [(CHSWidget *)self extensionIdentity];
  v5 = [builder appendObject:extensionIdentity];

  activityIdentifier = [(CHSWidget *)self activityIdentifier];
  v7 = [builder appendString:activityIdentifier];

  personaIdentifier = [(CHSWidget *)self personaIdentifier];
  v9 = [builder appendString:personaIdentifier];

  kind = [(CHSWidget *)self kind];
  v11 = [builder appendString:kind];

  v12 = [builder appendInteger:{-[CHSWidget family](self, "family")}];
  v13 = [builder appendInt64:{-[CHSIntentReference stableHash](self->_intentReference, "stableHash")}];
  v14 = [builder hash];

  return v14;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHSWidget *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  extensionIdentity = [(CHSWidget *)self extensionIdentity];
  v5 = [v3 appendObject:extensionIdentity withName:@"extensionIdentity"];

  kind = [(CHSWidget *)self kind];
  [v3 appendString:kind withName:@"kind"];

  v7 = CHSWidgetFamilyDescription([(CHSWidget *)self family]);
  [v3 appendString:v7 withName:@"family"];

  v8 = [v3 appendInt64:-[CHSIntentReference stableHash](self->_intentReference withName:{"stableHash"), @"intentHash"}];
  activityIdentifier = [(CHSWidget *)self activityIdentifier];
  [v3 appendString:activityIdentifier withName:@"activityIdentifier"];

  return v3;
}

- (id)widgetByRemovingPersona
{
  v3 = [CHSWidget alloc];
  extensionIdentity = [(CHSWidget *)self extensionIdentity];
  kind = [(CHSWidget *)self kind];
  family = [(CHSWidget *)self family];
  intentReference = [(CHSWidget *)self intentReference];
  activityIdentifier = [(CHSWidget *)self activityIdentifier];
  v9 = [(CHSWidget *)v3 initWithExtensionIdentity:extensionIdentity kind:kind family:family intentReference:intentReference activityIdentifier:activityIdentifier personaIdentifier:0];

  return v9;
}

- (CHSWidget)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidget.m" lineNumber:27 description:@"Use initWithExtensionBundleIdentifier:kind:family:intent:"];

  return 0;
}

- (CHSWidget)initWithExtensionIdentity:(id)identity kind:(id)kind family:(int64_t)family intent:(id)intent activityIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier
{
  identityCopy = identity;
  kindCopy = kind;
  intentCopy = intent;
  identifierCopy = identifier;
  personaIdentifierCopy = personaIdentifier;
  if (intentCopy)
  {
    v19 = [[CHSIntentReference alloc] initWithIntent:intentCopy];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CHSWidget *)self initWithExtensionIdentity:identityCopy kind:kindCopy family:family intentReference:v19 activityIdentifier:identifierCopy personaIdentifier:personaIdentifierCopy];

  return v20;
}

- (CHSWidget)initWithExtensionIdentity:(id)identity kind:(id)kind family:(int64_t)family intentReference:(id)reference activityIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier
{
  v36 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  kindCopy = kind;
  referenceCopy = reference;
  identifierCopy = identifier;
  personaIdentifierCopy = personaIdentifier;
  v34.receiver = self;
  v34.super_class = CHSWidget;
  v19 = [(CHSWidget *)&v34 init];
  if (v19)
  {
    v20 = [identityCopy copy];
    extensionIdentity = v19->_extensionIdentity;
    v19->_extensionIdentity = v20;

    v22 = [kindCopy copy];
    kind = v19->_kind;
    v19->_kind = v22;

    v19->_family = family;
    objc_storeStrong(&v19->_intentReference, reference);
    v24 = [identifierCopy copy];
    activityIdentifier = v19->_activityIdentifier;
    v19->_activityIdentifier = v24;

    v26 = [personaIdentifierCopy copy];
    personaIdentifier = v19->_personaIdentifier;
    v19->_personaIdentifier = v26;

    extensionBundleIdentifier = [(CHSExtensionIdentity *)v19->_extensionIdentity extensionBundleIdentifier];
    if ([extensionBundleIdentifier length])
    {
      v29 = [(NSString *)v19->_kind length]== 0;

      if (!v29)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v30 = CHSLogChronoServices();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      extensionBundleIdentifier2 = [(CHSExtensionIdentity *)v19->_extensionIdentity extensionBundleIdentifier];
      [CHSWidget initWithExtensionIdentity:extensionBundleIdentifier2 kind:&v19->_kind family:buf intentReference:v30 activityIdentifier:? personaIdentifier:?];
    }
  }

LABEL_9:

  v32 = *MEMORY[0x1E69E9840];
  return v19;
}

- (CHSWidget)initWithWidgetIdentity:(id)identity family:(int64_t)family intent:(id)intent activityIdentifier:(id)identifier
{
  identityCopy = identity;
  intentCopy = intent;
  identifierCopy = identifier;
  extensionIdentity = [identityCopy extensionIdentity];
  kind = [identityCopy kind];
  v15 = [(CHSWidget *)self initWithExtensionIdentity:extensionIdentity kind:kind family:family intent:intentCopy activityIdentifier:identifierCopy];

  return v15;
}

- (id)widgetByReplacingIntent:(id)intent
{
  intentCopy = intent;
  v5 = [CHSWidget alloc];
  extensionIdentity = [(CHSWidget *)self extensionIdentity];
  kind = [(CHSWidget *)self kind];
  family = [(CHSWidget *)self family];
  activityIdentifier = [(CHSWidget *)self activityIdentifier];
  personaIdentifier = [(CHSWidget *)self personaIdentifier];
  v11 = [(CHSWidget *)v5 initWithExtensionIdentity:extensionIdentity kind:kind family:family intent:intentCopy activityIdentifier:activityIdentifier personaIdentifier:personaIdentifier];

  return v11;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  extensionIdentity = [(CHSWidget *)self extensionIdentity];
  extensionIdentity2 = [matchesCopy extensionIdentity];
  if (BSEqualObjects())
  {
    kind = [(CHSWidget *)self kind];
    kind2 = [matchesCopy kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesPersonality:(id)personality
{
  personalityCopy = personality;
  extensionIdentity = [(CHSWidget *)self extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionBundleIdentifier2 = [personalityCopy extensionBundleIdentifier];
  if (BSEqualStrings())
  {
    kind = [(CHSWidget *)self kind];
    kind2 = [personalityCopy kind];
    v10 = BSEqualStrings();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
    extensionIdentity = [(CHSWidget *)self extensionIdentity];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __21__CHSWidget_isEqual___block_invoke;
    v39[3] = &unk_1E7453078;
    v11 = v8;
    v40 = v11;
    v12 = [v9 appendObject:extensionIdentity counterpart:v39];

    kind = [(CHSWidget *)self kind];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __21__CHSWidget_isEqual___block_invoke_2;
    v37[3] = &unk_1E7452FD8;
    v14 = v11;
    v38 = v14;
    v15 = [v9 appendString:kind counterpart:v37];

    family = [(CHSWidget *)self family];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __21__CHSWidget_isEqual___block_invoke_3;
    v35[3] = &unk_1E7453368;
    v17 = v14;
    v36 = v17;
    v18 = [v9 appendInteger:family counterpart:v35];
    stableHash = [(CHSIntentReference *)self->_intentReference stableHash];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __21__CHSWidget_isEqual___block_invoke_4;
    v33[3] = &unk_1E7453368;
    v20 = v17;
    v34 = v20;
    v21 = [v9 appendInt64:stableHash counterpart:v33];
    activityIdentifier = [(CHSWidget *)self activityIdentifier];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __21__CHSWidget_isEqual___block_invoke_5;
    v31[3] = &unk_1E7452FD8;
    v23 = v20;
    v32 = v23;
    v24 = [v9 appendString:activityIdentifier counterpart:v31];

    personaIdentifier = [(CHSWidget *)self personaIdentifier];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __21__CHSWidget_isEqual___block_invoke_6;
    v29[3] = &unk_1E7452FD8;
    v30 = v23;
    v26 = [v9 appendString:personaIdentifier counterpart:v29];

    v27 = [v9 isEqual];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSWidget *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__CHSWidget_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

void __51__CHSWidget_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = [*(a1 + 40) extensionIdentity];
  v3 = [v2 appendObject:? withName:?];

  v4 = *(a1 + 32);
  v9 = [*(a1 + 40) kind];
  [v4 appendString:? withName:?];

  v5 = *(a1 + 32);
  v10 = CHSWidgetFamilyDescription([*(a1 + 40) family]);
  [v5 appendString:? withName:?];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"intent"];
  v7 = *(a1 + 32);
  v11 = [*(a1 + 40) activityIdentifier];
  [v7 appendString:? withName:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeInteger:self->_family forKey:@"family"];
  [coderCopy encodeObject:self->_intentReference forKey:@"intent2"];
  [coderCopy encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  [coderCopy encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
}

- (CHSWidget)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"extensionIdentity"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  }

  else
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v8 = v7;
    v5 = 0;
    if (v6 && v7)
    {
      v9 = [CHSExtensionIdentity alloc];
      v10 = getDeviceIDFromBundleID(v6);
      v5 = [(CHSExtensionIdentity *)v9 initWithExtensionBundleIdentifier:v6 containerBundleIdentifier:v8 deviceIdentifier:v10];
    }
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v12 = [coderCopy decodeIntegerForKey:@"family"];
  selfCopy = 0;
  if (v5 && v11)
  {
    v14 = v12;
    if (CHSWidgetFamilyIsValid(v12))
    {
      if ([coderCopy containsValueForKey:@"intent2"])
      {
        v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent2"];
LABEL_22:
        v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
        v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
        self = [(CHSWidget *)self initWithExtensionIdentity:v5 kind:v11 family:v14 intentReference:v15 activityIdentifier:v22 personaIdentifier:v23];

        selfCopy = self;
        goto LABEL_23;
      }

      v16 = MEMORY[0x1E695DFD8];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"intent"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v19 error:0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_20;
        }

        v20 = v19;
      }

      v21 = v20;
      if (v20)
      {
        v15 = [[CHSIntentReference alloc] initWithIntent:v20];
LABEL_21:

        goto LABEL_22;
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    selfCopy = 0;
  }

LABEL_23:

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_family];
  [coderCopy encodeObject:v4 forKey:@"family"];

  [coderCopy encodeObject:self->_intentReference forKey:@"intent2"];
  [coderCopy encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  [coderCopy encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
}

- (CHSWidget)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"family"];
  integerValue = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent2"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
  selfCopy = 0;
  if (v5 && v6)
  {
    if (CHSWidgetFamilyIsValid(integerValue))
    {
      self = [(CHSWidget *)self initWithExtensionIdentity:v5 kind:v6 family:integerValue intentReference:v9 activityIdentifier:v10 personaIdentifier:v11];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_loggingIdentifierWithMetrics:(id)metrics
{
  v3 = [(CHSWidget *)self _loggingIdentifierWithMetrics:metrics prefix:0];

  return v3;
}

- (id)_loggingIdentifierWithMetrics:(id)metrics prefix:(id)prefix
{
  metricsCopy = metrics;
  prefixCopy = prefix;
  intentReference = self->_intentReference;
  if (intentReference)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CHSIntentReference stableHash](intentReference, "stableHash")}];
    stringValue = [v9 stringValue];
  }

  else
  {
    stringValue = &stru_1F0A56DE8;
  }

  if (metricsCopy)
  {
    [metricsCopy size];
    v12 = v11;
    v14 = v13;
    v15 = MEMORY[0x1E696AEC0];
    [metricsCopy cornerRadius];
    v17 = [v15 stringWithFormat:@":%.2f/%.2f/%.2f", v12, v14, v16];
  }

  else
  {
    v17 = &stru_1F0A56DE8;
  }

  v18 = MEMORY[0x1E696AEC0];
  if (prefixCopy)
  {
    v19 = prefixCopy;
  }

  else
  {
    v19 = &stru_1F0A56DE8;
  }

  v20 = [(CHSExtensionIdentity *)self->_extensionIdentity description];
  kind = self->_kind;
  v22 = CHSWidgetFamilyDescription(self->_family);
  activityIdentifier = self->_activityIdentifier;
  v24 = [v18 stringWithFormat:@"%@[%@:%@:%@:%@%@:%@~%@]", v19, v20, kind, v22, stringValue, v17, activityIdentifier, self->_personaIdentifier];

  return v24;
}

- (CHSWidget)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind family:(int64_t)family intent:(id)intent activityIdentifier:(id)activityIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  intentCopy = intent;
  activityIdentifierCopy = activityIdentifier;
  v19 = [CHSExtensionIdentity alloc];
  v20 = getDeviceIDFromBundleID(identifierCopy);
  v21 = [(CHSExtensionIdentity *)v19 initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy deviceIdentifier:v20];
  v22 = [(CHSWidget *)self initWithExtensionIdentity:v21 kind:kindCopy family:family intent:intentCopy activityIdentifier:activityIdentifierCopy];

  return v22;
}

- (CHSWidget)initWithPersonality:(id)personality family:(int64_t)family intent:(id)intent
{
  personalityCopy = personality;
  intentCopy = intent;
  v10 = [CHSExtensionIdentity alloc];
  extensionBundleIdentifier = [personalityCopy extensionBundleIdentifier];
  v12 = [(CHSExtensionIdentity *)v10 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:0 deviceIdentifier:0];

  kind = [personalityCopy kind];
  v14 = [(CHSWidget *)self initWithExtensionIdentity:v12 kind:kind family:family intent:intentCopy activityIdentifier:0];

  return v14;
}

- (void)initWithExtensionIdentity:(uint8_t *)buf kind:(os_log_t)log family:intentReference:activityIdentifier:personaIdentifier:.cold.1(void *a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_fault_impl(&dword_195EB2000, log, OS_LOG_TYPE_FAULT, "CHSWidget initialized with bad bundle identifier (%@) or kind (%@)", buf, 0x16u);
}

@end