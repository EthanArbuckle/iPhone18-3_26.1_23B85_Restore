@interface CDPCombinedWalrusStatus
- (CDPCombinedWalrusStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDPCombinedWalrusStatus

- (void)encodeWithCoder:(id)coder
{
  octagonWalrusStatus = self->_octagonWalrusStatus;
  coderCopy = coder;
  [coderCopy encodeInteger:octagonWalrusStatus forKey:@"_octagonWalrusStatus"];
  [coderCopy encodeInteger:self->_pcsWalrusStatus forKey:@"_pcsWalrusStatus"];
  [coderCopy encodeInteger:self->_escrowWalrusStatus forKey:@"_escrowWalrusStatus"];
}

- (CDPCombinedWalrusStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CDPCombinedWalrusStatus *)self init];
  if (v5)
  {
    v5->_octagonWalrusStatus = [coderCopy decodeIntegerForKey:@"_octagonWalrusStatus"];
    v5->_pcsWalrusStatus = [coderCopy decodeIntegerForKey:@"_pcsWalrusStatus"];
    v5->_escrowWalrusStatus = [coderCopy decodeIntegerForKey:@"_escrowWalrusStatus"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(CDPCombinedWalrusStatus);
  *(result + 1) = self->_octagonWalrusStatus;
  *(result + 2) = self->_pcsWalrusStatus;
  *(result + 3) = self->_escrowWalrusStatus;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_octagonWalrusStatus];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_pcsWalrusStatus];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_escrowWalrusStatus];
  v8 = [v3 stringWithFormat:@"<%@: %p> Octagon: %@, PCS: %@, Escrow: %@", v4, self, v5, v6, v7];

  return v8;
}

@end