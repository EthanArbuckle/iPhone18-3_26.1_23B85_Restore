@interface LCSCaptureApplicationAttributes
- (BOOL)isEqual:(id)a3;
- (LCSCaptureApplicationAttributes)initWithCameraTCCStatus:(unint64_t)a3 supportedLaunchTypes:(unint64_t)a4;
- (id)_stringForTCCStatus:(unint64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation LCSCaptureApplicationAttributes

- (LCSCaptureApplicationAttributes)initWithCameraTCCStatus:(unint64_t)a3 supportedLaunchTypes:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = LCSCaptureApplicationAttributes;
  result = [(LCSCaptureApplicationAttributes *)&v7 init];
  if (result)
  {
    result->_cameraTCCStatus = a3;
    result->_supportedLaunchTypes = a4;
  }

  return result;
}

- (id)_stringForTCCStatus:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"invalid";
  }

  else
  {
    return *(&off_279824E90 + a3);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LCSCaptureApplicationAttributes *)self isEqualToAttributes:v5];
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
  v2 = [(LCSCaptureApplicationAttributes *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(LCSCaptureApplicationAttributes *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(LCSCaptureApplicationAttributes *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__LCSCaptureApplicationAttributes_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279824C98;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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