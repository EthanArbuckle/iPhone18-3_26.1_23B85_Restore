@interface DCCredentialOptions
- (BOOL)isPIIHashMismatchTerminal;
- (DCCredentialOptions)init;
- (DCCredentialOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)deleteInactiveKeysAfterDays;
- (int64_t)deleteIncompleteCredentialAfterDays;
- (unint64_t)payloadProtectionPolicy;
- (unint64_t)presentmentAuthPolicy;
- (unint64_t)readerAuthenticationPolicy;
- (void)encodeWithCoder:(id)coder;
- (void)setDeleteInactiveKeysAfterDays:(int64_t)days;
- (void)setDeleteIncompleteCredentialAfterDays:(int64_t)days;
- (void)setIsPIIHashMismatchTerminal:(BOOL)terminal;
- (void)setPayloadProtectionPolicy:(unint64_t)policy;
- (void)setPresentmentAuthPolicy:(unint64_t)policy;
- (void)setReaderAuthenticationPolicy:(unint64_t)policy;
@end

@implementation DCCredentialOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeInteger:self->_deleteInactiveKeysAfterDays forKey:0x28586CFC0];
  [coderCopy encodeInteger:self->_deleteIncompleteCredentialAfterDays forKey:0x28586CFE0];
  [coderCopy encodeInteger:self->_readerAuthenticationPolicy forKey:0x28586D000];
  [coderCopy encodeInteger:self->_presentmentAuthPolicy forKey:0x28586D020];
  [coderCopy encodeInteger:self->_payloadProtectionPolicy forKey:0x28586D040];
  [coderCopy encodeBool:self->_isPIIHashMismatchTerminal forKey:0x28586D120];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DCCredentialOptions *)self init];
  if (v5)
  {
    v5->_deleteInactiveKeysAfterDays = [coderCopy decodeIntegerForKey:0x28586CFC0];
    v5->_deleteIncompleteCredentialAfterDays = [coderCopy decodeIntegerForKey:0x28586CFE0];
    v5->_readerAuthenticationPolicy = [coderCopy decodeIntegerForKey:0x28586D000];
    v5->_presentmentAuthPolicy = [coderCopy decodeIntegerForKey:0x28586D020];
    v5->_payloadProtectionPolicy = [coderCopy decodeIntegerForKey:0x28586D040];
    v5->_isPIIHashMismatchTerminal = [coderCopy decodeBoolForKey:0x28586D120];
  }

  return v5;
}

- (DCCredentialOptions)init
{
  v3.receiver = self;
  v3.super_class = DCCredentialOptions;
  result = [(DCCredentialOptions *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    *&result->_deleteInactiveKeysAfterDays = vdupq_n_s64(0x3CuLL);
    result->_presentmentAuthPolicy = 0;
    result->_payloadProtectionPolicy = 0;
    result->_readerAuthenticationPolicy = 0;
    result->_isPIIHashMismatchTerminal = 0;
  }

  return result;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"DCCredentialOptions deleteInactiveKeysAfterDays=%ld deleteIncompleteCredentialAfterDays=%ld readerAuthenticationPolicy=%ld presentmentAuthPolicy=%ld payloadProtectionPolicy=%ld isPIIHashTerminal=%d", self->_deleteInactiveKeysAfterDays, self->_deleteIncompleteCredentialAfterDays, self->_readerAuthenticationPolicy, self->_presentmentAuthPolicy, self->_payloadProtectionPolicy, self->_isPIIHashMismatchTerminal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)deleteInactiveKeysAfterDays
{
  os_unfair_lock_lock(&self->_lock);
  deleteInactiveKeysAfterDays = self->_deleteInactiveKeysAfterDays;
  os_unfair_lock_unlock(&self->_lock);
  return deleteInactiveKeysAfterDays;
}

- (void)setDeleteInactiveKeysAfterDays:(int64_t)days
{
  os_unfair_lock_lock(&self->_lock);
  self->_deleteInactiveKeysAfterDays = days;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)deleteIncompleteCredentialAfterDays
{
  os_unfair_lock_lock(&self->_lock);
  deleteIncompleteCredentialAfterDays = self->_deleteIncompleteCredentialAfterDays;
  os_unfair_lock_unlock(&self->_lock);
  return deleteIncompleteCredentialAfterDays;
}

- (void)setDeleteIncompleteCredentialAfterDays:(int64_t)days
{
  os_unfair_lock_lock(&self->_lock);
  self->_deleteIncompleteCredentialAfterDays = days;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)readerAuthenticationPolicy
{
  os_unfair_lock_lock(&self->_lock);
  readerAuthenticationPolicy = self->_readerAuthenticationPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return readerAuthenticationPolicy;
}

- (void)setReaderAuthenticationPolicy:(unint64_t)policy
{
  os_unfair_lock_lock(&self->_lock);
  self->_readerAuthenticationPolicy = policy;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)presentmentAuthPolicy
{
  os_unfair_lock_lock(&self->_lock);
  presentmentAuthPolicy = self->_presentmentAuthPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return presentmentAuthPolicy;
}

- (void)setPresentmentAuthPolicy:(unint64_t)policy
{
  os_unfair_lock_lock(&self->_lock);
  self->_presentmentAuthPolicy = policy;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)payloadProtectionPolicy
{
  os_unfair_lock_lock(&self->_lock);
  payloadProtectionPolicy = self->_payloadProtectionPolicy;
  os_unfair_lock_unlock(&self->_lock);
  return payloadProtectionPolicy;
}

- (void)setPayloadProtectionPolicy:(unint64_t)policy
{
  os_unfair_lock_lock(&self->_lock);
  self->_payloadProtectionPolicy = policy;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPIIHashMismatchTerminal
{
  os_unfair_lock_lock(&self->_lock);
  isPIIHashMismatchTerminal = self->_isPIIHashMismatchTerminal;
  os_unfair_lock_unlock(&self->_lock);
  return isPIIHashMismatchTerminal;
}

- (void)setIsPIIHashMismatchTerminal:(BOOL)terminal
{
  os_unfair_lock_lock(&self->_lock);
  self->_isPIIHashMismatchTerminal = terminal;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  os_unfair_lock_lock(&self->_lock);
  [v4 setDeleteInactiveKeysAfterDays:self->_deleteInactiveKeysAfterDays];
  [v4 setDeleteIncompleteCredentialAfterDays:self->_deleteIncompleteCredentialAfterDays];
  [v4 setReaderAuthenticationPolicy:self->_readerAuthenticationPolicy];
  [v4 setPresentmentAuthPolicy:self->_presentmentAuthPolicy];
  [v4 setPayloadProtectionPolicy:self->_payloadProtectionPolicy];
  [v4 setIsPIIHashMismatchTerminal:self->_isPIIHashMismatchTerminal];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

@end