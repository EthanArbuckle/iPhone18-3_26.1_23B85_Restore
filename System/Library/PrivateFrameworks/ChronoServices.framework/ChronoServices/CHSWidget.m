@interface CHSWidget
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (BOOL)matchesPersonality:(id)a3;
- (CHSWidget)init;
- (CHSWidget)initWithBSXPCCoder:(id)a3;
- (CHSWidget)initWithCoder:(id)a3;
- (CHSWidget)initWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 family:(int64_t)a6 intent:(id)a7 activityIdentifier:(id)a8;
- (CHSWidget)initWithExtensionIdentity:(id)a3 kind:(id)a4 family:(int64_t)a5 intent:(id)a6 activityIdentifier:(id)a7 personaIdentifier:(id)a8;
- (CHSWidget)initWithExtensionIdentity:(id)a3 kind:(id)a4 family:(int64_t)a5 intentReference:(id)a6 activityIdentifier:(id)a7 personaIdentifier:(id)a8;
- (CHSWidget)initWithPersonality:(id)a3 family:(int64_t)a4 intent:(id)a5;
- (CHSWidget)initWithWidgetIdentity:(id)a3 family:(int64_t)a4 intent:(id)a5 activityIdentifier:(id)a6;
- (id)_loggingIdentifierWithMetrics:(id)a3;
- (id)_loggingIdentifierWithMetrics:(id)a3 prefix:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)widgetByRemovingPersona;
- (id)widgetByReplacingIntent:(id)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidget

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(CHSWidget *)self extensionIdentity];
  v5 = [v3 appendObject:v4];

  v6 = [(CHSWidget *)self activityIdentifier];
  v7 = [v3 appendString:v6];

  v8 = [(CHSWidget *)self personaIdentifier];
  v9 = [v3 appendString:v8];

  v10 = [(CHSWidget *)self kind];
  v11 = [v3 appendString:v10];

  v12 = [v3 appendInteger:{-[CHSWidget family](self, "family")}];
  v13 = [v3 appendInt64:{-[CHSIntentReference stableHash](self->_intentReference, "stableHash")}];
  v14 = [v3 hash];

  return v14;
}

- (id)succinctDescription
{
  v2 = [(CHSWidget *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(CHSWidget *)self extensionIdentity];
  v5 = [v3 appendObject:v4 withName:@"extensionIdentity"];

  v6 = [(CHSWidget *)self kind];
  [v3 appendString:v6 withName:@"kind"];

  v7 = CHSWidgetFamilyDescription([(CHSWidget *)self family]);
  [v3 appendString:v7 withName:@"family"];

  v8 = [v3 appendInt64:-[CHSIntentReference stableHash](self->_intentReference withName:{"stableHash"), @"intentHash"}];
  v9 = [(CHSWidget *)self activityIdentifier];
  [v3 appendString:v9 withName:@"activityIdentifier"];

  return v3;
}

- (id)widgetByRemovingPersona
{
  v3 = [CHSWidget alloc];
  v4 = [(CHSWidget *)self extensionIdentity];
  v5 = [(CHSWidget *)self kind];
  v6 = [(CHSWidget *)self family];
  v7 = [(CHSWidget *)self intentReference];
  v8 = [(CHSWidget *)self activityIdentifier];
  v9 = [(CHSWidget *)v3 initWithExtensionIdentity:v4 kind:v5 family:v6 intentReference:v7 activityIdentifier:v8 personaIdentifier:0];

  return v9;
}

- (CHSWidget)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CHSWidget.m" lineNumber:27 description:@"Use initWithExtensionBundleIdentifier:kind:family:intent:"];

  return 0;
}

- (CHSWidget)initWithExtensionIdentity:(id)a3 kind:(id)a4 family:(int64_t)a5 intent:(id)a6 activityIdentifier:(id)a7 personaIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v16)
  {
    v19 = [[CHSIntentReference alloc] initWithIntent:v16];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CHSWidget *)self initWithExtensionIdentity:v14 kind:v15 family:a5 intentReference:v19 activityIdentifier:v17 personaIdentifier:v18];

  return v20;
}

- (CHSWidget)initWithExtensionIdentity:(id)a3 kind:(id)a4 family:(int64_t)a5 intentReference:(id)a6 activityIdentifier:(id)a7 personaIdentifier:(id)a8
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = CHSWidget;
  v19 = [(CHSWidget *)&v34 init];
  if (v19)
  {
    v20 = [v14 copy];
    extensionIdentity = v19->_extensionIdentity;
    v19->_extensionIdentity = v20;

    v22 = [v15 copy];
    kind = v19->_kind;
    v19->_kind = v22;

    v19->_family = a5;
    objc_storeStrong(&v19->_intentReference, a6);
    v24 = [v17 copy];
    activityIdentifier = v19->_activityIdentifier;
    v19->_activityIdentifier = v24;

    v26 = [v18 copy];
    personaIdentifier = v19->_personaIdentifier;
    v19->_personaIdentifier = v26;

    v28 = [(CHSExtensionIdentity *)v19->_extensionIdentity extensionBundleIdentifier];
    if ([v28 length])
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
      v31 = [(CHSExtensionIdentity *)v19->_extensionIdentity extensionBundleIdentifier];
      [CHSWidget initWithExtensionIdentity:v31 kind:&v19->_kind family:buf intentReference:v30 activityIdentifier:? personaIdentifier:?];
    }
  }

LABEL_9:

  v32 = *MEMORY[0x1E69E9840];
  return v19;
}

- (CHSWidget)initWithWidgetIdentity:(id)a3 family:(int64_t)a4 intent:(id)a5 activityIdentifier:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 extensionIdentity];
  v14 = [v10 kind];
  v15 = [(CHSWidget *)self initWithExtensionIdentity:v13 kind:v14 family:a4 intent:v11 activityIdentifier:v12];

  return v15;
}

- (id)widgetByReplacingIntent:(id)a3
{
  v4 = a3;
  v5 = [CHSWidget alloc];
  v6 = [(CHSWidget *)self extensionIdentity];
  v7 = [(CHSWidget *)self kind];
  v8 = [(CHSWidget *)self family];
  v9 = [(CHSWidget *)self activityIdentifier];
  v10 = [(CHSWidget *)self personaIdentifier];
  v11 = [(CHSWidget *)v5 initWithExtensionIdentity:v6 kind:v7 family:v8 intent:v4 activityIdentifier:v9 personaIdentifier:v10];

  return v11;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidget *)self extensionIdentity];
  v6 = [v4 extensionIdentity];
  if (BSEqualObjects())
  {
    v7 = [(CHSWidget *)self kind];
    v8 = [v4 kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesPersonality:(id)a3
{
  v4 = a3;
  v5 = [(CHSWidget *)self extensionIdentity];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [v4 extensionBundleIdentifier];
  if (BSEqualStrings())
  {
    v8 = [(CHSWidget *)self kind];
    v9 = [v4 kind];
    v10 = BSEqualStrings();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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
    v10 = [(CHSWidget *)self extensionIdentity];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __21__CHSWidget_isEqual___block_invoke;
    v39[3] = &unk_1E7453078;
    v11 = v8;
    v40 = v11;
    v12 = [v9 appendObject:v10 counterpart:v39];

    v13 = [(CHSWidget *)self kind];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __21__CHSWidget_isEqual___block_invoke_2;
    v37[3] = &unk_1E7452FD8;
    v14 = v11;
    v38 = v14;
    v15 = [v9 appendString:v13 counterpart:v37];

    v16 = [(CHSWidget *)self family];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __21__CHSWidget_isEqual___block_invoke_3;
    v35[3] = &unk_1E7453368;
    v17 = v14;
    v36 = v17;
    v18 = [v9 appendInteger:v16 counterpart:v35];
    v19 = [(CHSIntentReference *)self->_intentReference stableHash];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __21__CHSWidget_isEqual___block_invoke_4;
    v33[3] = &unk_1E7453368;
    v20 = v17;
    v34 = v20;
    v21 = [v9 appendInt64:v19 counterpart:v33];
    v22 = [(CHSWidget *)self activityIdentifier];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __21__CHSWidget_isEqual___block_invoke_5;
    v31[3] = &unk_1E7452FD8;
    v23 = v20;
    v32 = v23;
    v24 = [v9 appendString:v22 counterpart:v31];

    v25 = [(CHSWidget *)self personaIdentifier];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __21__CHSWidget_isEqual___block_invoke_6;
    v29[3] = &unk_1E7452FD8;
    v30 = v23;
    v26 = [v9 appendString:v25 counterpart:v29];

    v27 = [v9 isEqual];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidget *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__CHSWidget_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [v4 encodeObject:self->_kind forKey:@"kind"];
  [v4 encodeInteger:self->_family forKey:@"family"];
  [v4 encodeObject:self->_intentReference forKey:@"intent2"];
  [v4 encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  [v4 encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
}

- (CHSWidget)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"extensionIdentity"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v8 = v7;
    v5 = 0;
    if (v6 && v7)
    {
      v9 = [CHSExtensionIdentity alloc];
      v10 = getDeviceIDFromBundleID(v6);
      v5 = [(CHSExtensionIdentity *)v9 initWithExtensionBundleIdentifier:v6 containerBundleIdentifier:v8 deviceIdentifier:v10];
    }
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v12 = [v4 decodeIntegerForKey:@"family"];
  v13 = 0;
  if (v5 && v11)
  {
    v14 = v12;
    if (CHSWidgetFamilyIsValid(v12))
    {
      if ([v4 containsValueForKey:@"intent2"])
      {
        v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent2"];
LABEL_22:
        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
        v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
        self = [(CHSWidget *)self initWithExtensionIdentity:v5 kind:v11 family:v14 intentReference:v15 activityIdentifier:v22 personaIdentifier:v23];

        v13 = self;
        goto LABEL_23;
      }

      v16 = MEMORY[0x1E695DFD8];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"intent"];

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

    v13 = 0;
  }

LABEL_23:

  return v13;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_family];
  [v5 encodeObject:v4 forKey:@"family"];

  [v5 encodeObject:self->_intentReference forKey:@"intent2"];
  [v5 encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  [v5 encodeObject:self->_personaIdentifier forKey:@"personaIdentifier"];
}

- (CHSWidget)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"family"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent2"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
  v12 = 0;
  if (v5 && v6)
  {
    if (CHSWidgetFamilyIsValid(v8))
    {
      self = [(CHSWidget *)self initWithExtensionIdentity:v5 kind:v6 family:v8 intentReference:v9 activityIdentifier:v10 personaIdentifier:v11];
      v12 = self;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)_loggingIdentifierWithMetrics:(id)a3
{
  v3 = [(CHSWidget *)self _loggingIdentifierWithMetrics:a3 prefix:0];

  return v3;
}

- (id)_loggingIdentifierWithMetrics:(id)a3 prefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  intentReference = self->_intentReference;
  if (intentReference)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CHSIntentReference stableHash](intentReference, "stableHash")}];
    v10 = [v9 stringValue];
  }

  else
  {
    v10 = &stru_1F0A56DE8;
  }

  if (v6)
  {
    [v6 size];
    v12 = v11;
    v14 = v13;
    v15 = MEMORY[0x1E696AEC0];
    [v6 cornerRadius];
    v17 = [v15 stringWithFormat:@":%.2f/%.2f/%.2f", v12, v14, v16];
  }

  else
  {
    v17 = &stru_1F0A56DE8;
  }

  v18 = MEMORY[0x1E696AEC0];
  if (v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = &stru_1F0A56DE8;
  }

  v20 = [(CHSExtensionIdentity *)self->_extensionIdentity description];
  kind = self->_kind;
  v22 = CHSWidgetFamilyDescription(self->_family);
  activityIdentifier = self->_activityIdentifier;
  v24 = [v18 stringWithFormat:@"%@[%@:%@:%@:%@%@:%@~%@]", v19, v20, kind, v22, v10, v17, activityIdentifier, self->_personaIdentifier];

  return v24;
}

- (CHSWidget)initWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 family:(int64_t)a6 intent:(id)a7 activityIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [CHSExtensionIdentity alloc];
  v20 = getDeviceIDFromBundleID(v14);
  v21 = [(CHSExtensionIdentity *)v19 initWithExtensionBundleIdentifier:v14 containerBundleIdentifier:v15 deviceIdentifier:v20];
  v22 = [(CHSWidget *)self initWithExtensionIdentity:v21 kind:v16 family:a6 intent:v17 activityIdentifier:v18];

  return v22;
}

- (CHSWidget)initWithPersonality:(id)a3 family:(int64_t)a4 intent:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [CHSExtensionIdentity alloc];
  v11 = [v8 extensionBundleIdentifier];
  v12 = [(CHSExtensionIdentity *)v10 initWithExtensionBundleIdentifier:v11 containerBundleIdentifier:0 deviceIdentifier:0];

  v13 = [v8 kind];
  v14 = [(CHSWidget *)self initWithExtensionIdentity:v12 kind:v13 family:a4 intent:v9 activityIdentifier:0];

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