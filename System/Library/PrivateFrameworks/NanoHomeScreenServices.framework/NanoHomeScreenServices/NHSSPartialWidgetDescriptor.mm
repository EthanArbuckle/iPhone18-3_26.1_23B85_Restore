@interface NHSSPartialWidgetDescriptor
- (BOOL)isEqual:(id)equal;
- (NHSSPartialWidgetDescriptor)initWithCoder:(id)coder;
- (NHSSPartialWidgetDescriptor)initWithContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NHSSPartialWidgetDescriptor

- (NHSSPartialWidgetDescriptor)initWithContainerBundleIdentifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier kind:(id)kind
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  v19.receiver = self;
  v19.super_class = NHSSPartialWidgetDescriptor;
  v11 = [(NHSSPartialWidgetDescriptor *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    containerBundleIdentifier = v11->_containerBundleIdentifier;
    v11->_containerBundleIdentifier = v12;

    v14 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v11->_extensionBundleIdentifier;
    v11->_extensionBundleIdentifier = v14;

    v16 = [kindCopy copy];
    kind = v11->_kind;
    v11->_kind = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  containerBundleIdentifier = self->_containerBundleIdentifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__NHSSPartialWidgetDescriptor_isEqual___block_invoke;
  v20[3] = &unk_279932DD8;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendString:containerBundleIdentifier counterpart:v20];
  extensionBundleIdentifier = self->_extensionBundleIdentifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__NHSSPartialWidgetDescriptor_isEqual___block_invoke_2;
  v18[3] = &unk_279932DD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:extensionBundleIdentifier counterpart:v18];
  kind = self->_kind;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__NHSSPartialWidgetDescriptor_isEqual___block_invoke_3;
  v16[3] = &unk_279932DD8;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:kind counterpart:v16];
  LOBYTE(kind) = [v5 isEqual];

  return kind;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_containerBundleIdentifier];
  v5 = [builder appendObject:self->_extensionBundleIdentifier];
  v6 = [builder appendObject:self->_kind];
  v7 = [builder hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  objc_storeStrong(v4 + 1, self->_containerBundleIdentifier);
  objc_storeStrong(v4 + 2, self->_extensionBundleIdentifier);
  objc_storeStrong(v4 + 3, self->_kind);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  containerBundleIdentifier = self->_containerBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:containerBundleIdentifier forKey:@"containerBundleIdentifier"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
}

- (NHSSPartialWidgetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NHSSPartialWidgetDescriptor;
  v5 = [(NHSSPartialWidgetDescriptor *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    containerBundleIdentifier = v5->_containerBundleIdentifier;
    v5->_containerBundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    kind = v5->_kind;
    v5->_kind = v10;
  }

  return v5;
}

@end