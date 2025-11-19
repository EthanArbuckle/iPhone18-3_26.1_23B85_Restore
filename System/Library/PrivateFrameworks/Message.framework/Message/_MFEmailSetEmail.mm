@interface _MFEmailSetEmail
- (NSString)address;
- (NSString)commentedAddress;
- (_MFEmailSetEmail)initWithAddress:(id)a3;
- (void)dealloc;
- (void)setAddress:(id)a3;
@end

@implementation _MFEmailSetEmail

- (_MFEmailSetEmail)initWithAddress:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MFEmailSetEmail;
  v4 = [(_MFEmailSetEmail *)&v6 init];
  [(_MFEmailSetEmail *)v4 setAddress:a3];
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

- (void)setAddress:(id)a3
{
  self->_encodedAddress = 0;
  v6 = [a3 mf_copyUncommentedAddress];
  v5 = [v6 mf_copyIDNAEncodedEmailAddress];
  if ([objc_alloc(MEMORY[0x1E699B240]) initWithString:v5])
  {
    self->_hash = CFHash([v5 lowercaseString]);
    self->_encodedAddress = v5;
    self->_comment = [a3 mf_copyAddressComment];
  }
}

- (NSString)address
{
  v2 = [(NSString *)self->_encodedAddress mf_copyIDNADecodedEmailAddress];

  return v2;
}

- (NSString)commentedAddress
{
  v2 = [objc_msgSend(MEMORY[0x1E696AEC0] mf_formattedAddressWithName:self->_comment email:self->_encodedAddress useQuotes:{1), "mf_copyIDNADecodedEmailAddress"}];

  return v2;
}

@end