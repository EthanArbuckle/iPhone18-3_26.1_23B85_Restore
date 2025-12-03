@interface CHSDescriptorEnablementChangeRequest
- (CHSDescriptorEnablementChangeRequest)initWithBSXPCCoder:(id)coder;
- (CHSDescriptorEnablementChangeRequest)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind enabled:(BOOL)enabled;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSDescriptorEnablementChangeRequest

- (CHSDescriptorEnablementChangeRequest)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind enabled:(BOOL)enabled
{
  identifierCopy = identifier;
  kindCopy = kind;
  v14.receiver = self;
  v14.super_class = CHSDescriptorEnablementChangeRequest;
  v11 = [(CHSDescriptorEnablementChangeRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_extensionBundleIdentifier, identifier);
    objc_storeStrong(&v12->_kind, kind);
    v12->_enabled = enabled;
  }

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
}

- (CHSDescriptorEnablementChangeRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v7 = -[CHSDescriptorEnablementChangeRequest initWithExtensionBundleIdentifier:kind:enabled:](self, "initWithExtensionBundleIdentifier:kind:enabled:", v5, v6, [coderCopy decodeBoolForKey:@"enabled"]);

  return v7;
}

@end