@interface CHSSessionPlatterDescriptor
- (BOOL)isEqual:(id)a3;
- (CHSSessionPlatterDescriptor)initWithCoder:(id)a3;
- (CHSSessionPlatterDescriptor)initWithExtensionIdentity:(id)a3 activityAttributesType:(id)a4;
- (id)_initWithDescriptor:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)widgetForFamily:(int64_t)a3 activityIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSSessionPlatterDescriptor

- (CHSSessionPlatterDescriptor)initWithExtensionIdentity:(id)a3 activityAttributesType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CHSSessionPlatterDescriptor;
  v8 = [(CHSBaseDescriptor *)&v12 initWithExtensionIdentity:v6];
  v9 = [v7 copy];
  activityAttributesType = v8->_activityAttributesType;
  v8->_activityAttributesType = v9;

  return v8;
}

- (id)_initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(CHSSessionPlatterDescriptor *)self initWithExtensionIdentity:*(v4 + 1) activityAttributesType:*(v4 + 19)];
  v6 = [*(v4 + 3) copy];
  displayName = v5->super._displayName;
  v5->super._displayName = v6;

  v8 = [*(v4 + 4) copy];
  widgetDescription = v5->super._widgetDescription;
  v5->super._widgetDescription = v8;

  v10 = [*(v4 + 6) copy];
  localeToken = v5->super._localeToken;
  v5->super._localeToken = v10;

  v12 = [*(v4 + 5) copy];
  eventMachServiceName = v5->super._eventMachServiceName;
  v5->super._eventMachServiceName = v12;

  v5->super._preferredBackgroundStyle = *(v4 + 7);
  v5->super._supportsVibrantContent = *(v4 + 64);
  objc_storeStrong(&v5->super._sdkVersion, *(v4 + 10));
  v5->super._version = *(v4 + 9);
  v5->super._requestedDataProtection = *(v4 + 15);

  return v5;
}

- (id)widgetForFamily:(int64_t)a3 activityIdentifier:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [CHSWidget alloc];
    v8 = [(CHSBaseDescriptor *)self extensionIdentity];
    a3 = [(CHSWidget *)v7 initWithExtensionIdentity:v8 kind:@"sessionPlatter" family:a3 intent:0 activityIdentifier:v6];
  }

  return a3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CHSSessionPlatterDescriptor;
  if ([(CHSBaseDescriptor *)&v16 isEqual:v4])
  {
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

    v9 = v7;

    if (v9)
    {
      v10 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
      activityAttributesType = self->_activityAttributesType;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__CHSSessionPlatterDescriptor_isEqual___block_invoke;
      v14[3] = &unk_1E7453078;
      v15 = v9;
      v12 = [v10 appendObject:activityAttributesType counterpart:v14];
      v8 = [v10 isEqual];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v8.receiver = self;
  v8.super_class = CHSSessionPlatterDescriptor;
  v4 = [v3 appendUnsignedInteger:{-[CHSBaseDescriptor hash](&v8, sel_hash)}];
  v5 = [v3 appendObject:self->_activityAttributesType];
  v6 = [v3 hash];

  return v6;
}

- (id)succinctDescription
{
  v2 = [(CHSSessionPlatterDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CHSSessionPlatterDescriptor_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSSessionPlatterDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__CHSSessionPlatterDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

id __69__CHSSessionPlatterDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"extensionIdentity"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:@"displayName"];
  v3 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 72) withName:@"version"];
  v4 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 56) withName:@"preferredBackgroundStyle"];
  v5 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 64) withName:@"supportsVibrantContent"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"sdkVersion"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 32) withName:@"widgetDescription"];
  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 48) base64EncodedStringWithOptions:0];
  [v6 appendString:v7 withName:@"localeToken"];

  v8 = *(a1 + 32);
  v9 = [*(*(a1 + 40) + 40) description];
  [v8 appendString:v9 withName:@"eventMachServiceName"];

  return [*(a1 + 32) appendInteger:*(*(a1 + 40) + 120) withName:@"requestedDataProtection"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableSessionPlatterDescriptor alloc];

  return [(CHSSessionPlatterDescriptor *)v4 _initWithDescriptor:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = CHSSessionPlatterDescriptor;
  [(CHSBaseDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_activityAttributesType forKey:@"activityAttributesType"];
}

- (CHSSessionPlatterDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CHSSessionPlatterDescriptor;
  v5 = [(CHSBaseDescriptor *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityAttributesType"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copy];
      activityAttributesType = v5->_activityAttributesType;
      v5->_activityAttributesType = v8;
    }

    else
    {
      activityAttributesType = v5;
      v5 = 0;
    }
  }

  return v5;
}

@end