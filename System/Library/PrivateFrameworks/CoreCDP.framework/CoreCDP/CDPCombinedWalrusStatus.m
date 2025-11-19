@interface CDPCombinedWalrusStatus
- (CDPCombinedWalrusStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDPCombinedWalrusStatus

- (void)encodeWithCoder:(id)a3
{
  octagonWalrusStatus = self->_octagonWalrusStatus;
  v5 = a3;
  [v5 encodeInteger:octagonWalrusStatus forKey:@"_octagonWalrusStatus"];
  [v5 encodeInteger:self->_pcsWalrusStatus forKey:@"_pcsWalrusStatus"];
  [v5 encodeInteger:self->_escrowWalrusStatus forKey:@"_escrowWalrusStatus"];
}

- (CDPCombinedWalrusStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CDPCombinedWalrusStatus *)self init];
  if (v5)
  {
    v5->_octagonWalrusStatus = [v4 decodeIntegerForKey:@"_octagonWalrusStatus"];
    v5->_pcsWalrusStatus = [v4 decodeIntegerForKey:@"_pcsWalrusStatus"];
    v5->_escrowWalrusStatus = [v4 decodeIntegerForKey:@"_escrowWalrusStatus"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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