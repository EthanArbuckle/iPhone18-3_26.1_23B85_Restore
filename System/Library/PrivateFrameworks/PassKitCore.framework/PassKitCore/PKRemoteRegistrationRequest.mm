@interface PKRemoteRegistrationRequest
+ (id)remoteRegistrationRequestWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (PKRemoteRegistrationRequest)initWithCoder:(id)coder;
- (id)description;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRemoteRegistrationRequest

+ (id)remoteRegistrationRequestWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKRemoteRegistrationRequest);
  -[PKRemoteRegistrationRequest setRegisterBroker:](v4, "setRegisterBroker:", [protobufCopy registerBroker]);
  registerPeerPayment = [protobufCopy registerPeerPayment];

  [(PKRemoteRegistrationRequest *)v4 setRegisterPeerPayment:registerPeerPayment];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufRemoteRegistrationRequest);
  [(PKProtobufRemoteRegistrationRequest *)v3 setRegisterBroker:[(PKRemoteRegistrationRequest *)self registerBroker]];
  [(PKProtobufRemoteRegistrationRequest *)v3 setRegisterPeerPayment:[(PKRemoteRegistrationRequest *)self registerPeerPayment]];

  return v3;
}

- (PKRemoteRegistrationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKRemoteRegistrationRequest;
  v5 = [(PKRemoteRegistrationRequest *)&v7 init];
  if (v5)
  {
    v5->_registerBroker = [coderCopy decodeBoolForKey:@"registerBroker"];
    v5->_registerPeerPayment = [coderCopy decodeBoolForKey:@"registerPeerPayment"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  registerBroker = self->_registerBroker;
  coderCopy = coder;
  [coderCopy encodeBool:registerBroker forKey:@"registerBroker"];
  [coderCopy encodeBool:self->_registerPeerPayment forKey:@"registerPeerPayment"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteRegistrationRequest *)self isEqualToRemoteRegistrationRequest:v5];
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_registerBroker)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"registerBroker: %@; ", v5];
  if (self->_registerPeerPayment)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v4 appendFormat:@"registerPeerPayment: %@; ", v6];
  [v4 appendString:@">"];
  v7 = [v4 copy];

  return v7;
}

@end