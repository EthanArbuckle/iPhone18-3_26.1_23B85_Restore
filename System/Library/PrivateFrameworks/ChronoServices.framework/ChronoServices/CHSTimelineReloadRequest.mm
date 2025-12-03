@interface CHSTimelineReloadRequest
+ (id)new;
- (CHSTimelineReloadRequest)init;
- (CHSTimelineReloadRequest)initWithCoder:(id)coder;
- (CHSTimelineReloadRequest)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier reason:(id)reason allowCostOverride:(BOOL)override;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSTimelineReloadRequest

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSTimelineReloadRequest.m" lineNumber:13 description:@"use initWithKind:extensionBundleIdentifier:allowCostOverride:"];

  return 0;
}

- (CHSTimelineReloadRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSTimelineReloadRequest.m" lineNumber:18 description:@"use initWithKind:extensionBundleIdentifier:allowCostOverride:"];

  return 0;
}

- (CHSTimelineReloadRequest)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier reason:(id)reason allowCostOverride:(BOOL)override
{
  kindCopy = kind;
  identifierCopy = identifier;
  reasonCopy = reason;
  v21.receiver = self;
  v21.super_class = CHSTimelineReloadRequest;
  v13 = [(CHSTimelineReloadRequest *)&v21 init];
  if (v13)
  {
    v14 = [kindCopy copy];
    kind = v13->_kind;
    v13->_kind = v14;

    v16 = [identifierCopy copy];
    extensionBundleIdentifier = v13->_extensionBundleIdentifier;
    v13->_extensionBundleIdentifier = v16;

    v18 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v18;

    v13->_allowCostOverride = override;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_kind forKey:@"_kind"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"_extensionBundleIdentifier"];
  [coderCopy encodeObject:self->_reason forKey:@"_reason"];
  [coderCopy encodeBool:self->_allowCostOverride forKey:@"_allowCostOverride"];
}

- (CHSTimelineReloadRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_kind"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionBundleIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
  v8 = [coderCopy decodeBoolForKey:@"_allowCostOverride"];
  selfCopy = 0;
  if (v5 && v6 && v7)
  {
    self = [(CHSTimelineReloadRequest *)self initWithKind:v5 extensionBundleIdentifier:v6 reason:v7 allowCostOverride:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end