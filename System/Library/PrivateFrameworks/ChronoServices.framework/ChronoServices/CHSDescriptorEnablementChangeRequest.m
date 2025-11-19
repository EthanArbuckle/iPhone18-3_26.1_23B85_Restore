@interface CHSDescriptorEnablementChangeRequest
- (CHSDescriptorEnablementChangeRequest)initWithBSXPCCoder:(id)a3;
- (CHSDescriptorEnablementChangeRequest)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 enabled:(BOOL)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CHSDescriptorEnablementChangeRequest

- (CHSDescriptorEnablementChangeRequest)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4 enabled:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CHSDescriptorEnablementChangeRequest;
  v11 = [(CHSDescriptorEnablementChangeRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extensionBundleIdentifier, a3);
    objc_storeStrong(&v12->_kind, a4);
    v12->_enabled = a5;
  }

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [v4 encodeObject:self->_kind forKey:@"kind"];
  [v4 encodeBool:self->_enabled forKey:@"enabled"];
}

- (CHSDescriptorEnablementChangeRequest)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v7 = -[CHSDescriptorEnablementChangeRequest initWithExtensionBundleIdentifier:kind:enabled:](self, "initWithExtensionBundleIdentifier:kind:enabled:", v5, v6, [v4 decodeBoolForKey:@"enabled"]);

  return v7;
}

@end