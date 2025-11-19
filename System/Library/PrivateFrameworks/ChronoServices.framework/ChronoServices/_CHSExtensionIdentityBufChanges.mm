@interface _CHSExtensionIdentityBufChanges
- (uint64_t)changeTypeContainerBundleIdentifier;
- (uint64_t)changeTypeDeviceIdentifier;
- (unsigned)replacementContainerBundleIdentifier;
- (unsigned)replacementDeviceIdentifier;
- (void)replaceContainerBundleIdentifier:(id)a3;
- (void)replaceDeviceIdentifier:(id)a3;
- (void)replaceExtensionBundleIdentifier:(id)a3;
- (void)replaceTokenString:(id)a3;
@end

@implementation _CHSExtensionIdentityBufChanges

- (void)replaceTokenString:(id)a3
{
  v5 = a3;
  self->_changeTypeTokenString = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1014 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementTokenString = [v5 unsignedIntValue];
}

- (void)replaceExtensionBundleIdentifier:(id)a3
{
  v5 = a3;
  self->_changeTypeExtensionBundleIdentifier = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1037 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementExtensionBundleIdentifier = [v5 unsignedIntValue];
}

- (void)replaceContainerBundleIdentifier:(id)a3
{
  v5 = a3;
  self->_changeTypeContainerBundleIdentifier = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1060 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementContainerBundleIdentifier = [v5 unsignedIntValue];
}

- (void)replaceDeviceIdentifier:(id)a3
{
  v5 = a3;
  self->_changeTypeDeviceIdentifier = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1083 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementDeviceIdentifier = [v5 unsignedIntValue];
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
  if (a1)
  {
    a1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a1[7]];
    v1 = vars8;
  }

  return a1;
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
  if (a1)
  {
    a1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:a1[9]];
    v1 = vars8;
  }

  return a1;
}

@end