@interface _CHSExtensionIdentityBufChanges
- (uint64_t)changeTypeContainerBundleIdentifier;
- (uint64_t)changeTypeDeviceIdentifier;
- (unsigned)replacementContainerBundleIdentifier;
- (unsigned)replacementDeviceIdentifier;
- (void)replaceContainerBundleIdentifier:(id)identifier;
- (void)replaceDeviceIdentifier:(id)identifier;
- (void)replaceExtensionBundleIdentifier:(id)identifier;
- (void)replaceTokenString:(id)string;
@end

@implementation _CHSExtensionIdentityBufChanges

- (void)replaceTokenString:(id)string
{
  stringCopy = string;
  self->_changeTypeTokenString = 1;
  v7 = stringCopy;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1014 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    stringCopy = 0;
  }

  self->_replacementTokenString = [stringCopy unsignedIntValue];
}

- (void)replaceExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  self->_changeTypeExtensionBundleIdentifier = 1;
  v7 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1037 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    identifierCopy = 0;
  }

  self->_replacementExtensionBundleIdentifier = [identifierCopy unsignedIntValue];
}

- (void)replaceContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  self->_changeTypeContainerBundleIdentifier = 1;
  v7 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1060 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    identifierCopy = 0;
  }

  self->_replacementContainerBundleIdentifier = [identifierCopy unsignedIntValue];
}

- (void)replaceDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  self->_changeTypeDeviceIdentifier = 1;
  v7 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1083 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    identifierCopy = 0;
  }

  self->_replacementDeviceIdentifier = [identifierCopy unsignedIntValue];
}

- (uint64_t)changeTypeContainerBundleIdentifier
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (unsigned)replacementContainerBundleIdentifier
{
  if (self)
  {
    self = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self[7]];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)changeTypeDeviceIdentifier
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (unsigned)replacementDeviceIdentifier
{
  if (self)
  {
    self = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:self[9]];
    v1 = vars8;
  }

  return self;
}

@end