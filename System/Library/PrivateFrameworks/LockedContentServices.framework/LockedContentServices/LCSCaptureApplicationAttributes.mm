@interface LCSCaptureApplicationAttributes
- (BOOL)isEqual:(id)equal;
- (LCSCaptureApplicationAttributes)initWithCameraTCCStatus:(unint64_t)status supportedLaunchTypes:(unint64_t)types;
- (id)_stringForTCCStatus:(unint64_t)status;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation LCSCaptureApplicationAttributes

- (LCSCaptureApplicationAttributes)initWithCameraTCCStatus:(unint64_t)status supportedLaunchTypes:(unint64_t)types
{
  v7.receiver = self;
  v7.super_class = LCSCaptureApplicationAttributes;
  result = [(LCSCaptureApplicationAttributes *)&v7 init];
  if (result)
  {
    result->_cameraTCCStatus = status;
    result->_supportedLaunchTypes = types;
  }

  return result;
}

- (id)_stringForTCCStatus:(unint64_t)status
{
  if (status > 4)
  {
    return @"invalid";
  }

  else
  {
    return *(&off_279824E90 + status);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LCSCaptureApplicationAttributes *)self isEqualToAttributes:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v4 = [v3 appendUnsignedInteger:self->_cameraTCCStatus];
  v5 = [v3 appendUnsignedInteger:self->_supportedLaunchTypes];
  v6 = [v3 hash];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(LCSCaptureApplicationAttributes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(LCSCaptureApplicationAttributes *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(LCSCaptureApplicationAttributes *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__LCSCaptureApplicationAttributes_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279824C98;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __73__LCSCaptureApplicationAttributes_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _stringForTCCStatus:*(*(a1 + 40) + 8)];
  [v2 appendString:v3 withName:@"cameraTCCStatus"];

  v4 = *(a1 + 32);
  v5 = NSStringFromLCSCaptureApplicationLaunchTypeMask(*(*(a1 + 40) + 16));
  [v4 appendString:v5 withName:@"supportedLaunchTypes"];
}

@end