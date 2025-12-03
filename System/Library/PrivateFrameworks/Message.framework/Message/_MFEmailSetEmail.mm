@interface _MFEmailSetEmail
- (NSString)address;
- (NSString)commentedAddress;
- (_MFEmailSetEmail)initWithAddress:(id)address;
- (void)dealloc;
- (void)setAddress:(id)address;
@end

@implementation _MFEmailSetEmail

- (_MFEmailSetEmail)initWithAddress:(id)address
{
  v6.receiver = self;
  v6.super_class = _MFEmailSetEmail;
  v4 = [(_MFEmailSetEmail *)&v6 init];
  [(_MFEmailSetEmail *)v4 setAddress:address];
  if (!v4->_encodedAddress)
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFEmailSetEmail;
  [(_MFEmailSetEmail *)&v3 dealloc];
}

- (void)setAddress:(id)address
{
  self->_encodedAddress = 0;
  mf_copyUncommentedAddress = [address mf_copyUncommentedAddress];
  mf_copyIDNAEncodedEmailAddress = [mf_copyUncommentedAddress mf_copyIDNAEncodedEmailAddress];
  if ([objc_alloc(MEMORY[0x1E699B240]) initWithString:mf_copyIDNAEncodedEmailAddress])
  {
    self->_hash = CFHash([mf_copyIDNAEncodedEmailAddress lowercaseString]);
    self->_encodedAddress = mf_copyIDNAEncodedEmailAddress;
    self->_comment = [address mf_copyAddressComment];
  }
}

- (NSString)address
{
  mf_copyIDNADecodedEmailAddress = [(NSString *)self->_encodedAddress mf_copyIDNADecodedEmailAddress];

  return mf_copyIDNADecodedEmailAddress;
}

- (NSString)commentedAddress
{
  v2 = [objc_msgSend(MEMORY[0x1E696AEC0] mf_formattedAddressWithName:self->_comment email:self->_encodedAddress useQuotes:{1), "mf_copyIDNADecodedEmailAddress"}];

  return v2;
}

@end