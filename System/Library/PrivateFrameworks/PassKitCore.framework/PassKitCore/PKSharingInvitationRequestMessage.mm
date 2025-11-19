@interface PKSharingInvitationRequestMessage
- (BOOL)configureWithContent:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKSharingInvitationRequestMessage)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4 personalizedVehicleIdentifier:(id)a5;
- (id)description;
@end

@implementation PKSharingInvitationRequestMessage

- (PKSharingInvitationRequestMessage)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4 personalizedVehicleIdentifier:(id)a5
{
  v6 = 0;
  if (a3 && a4)
  {
    v9 = MEMORY[0x1E695DF90];
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v13 = objc_alloc_init(v9);
    [v13 setObject:v12 forKeyedSubscript:@"passTypeIdentifier"];

    [v13 setObject:v11 forKeyedSubscript:@"serialNumber"];
    [v13 setObject:v10 forKeyedSubscript:@"personalizedVehicleIdentifier"];

    v15.receiver = self;
    v15.super_class = PKSharingInvitationRequestMessage;
    self = [(PKSharingGenericMessage *)&v15 initWithFormat:3 type:1001 genericSharingDict:MEMORY[0x1E695E0F8] appleSharingDict:v13];

    v6 = self;
  }

  return v6;
}

- (BOOL)configureWithContent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKSharingInvitationRequestMessage;
  if ([(PKSharingGenericMessage *)&v14 configureWithContent:v4])
  {
    v5 = [v4 PKDictionaryForKey:@"apple"];
    v6 = [v5 PKStringForKey:@"passTypeIdentifier"];
    passTypeIdentifier = self->_passTypeIdentifier;
    self->_passTypeIdentifier = v6;

    v8 = [v5 PKStringForKey:@"serialNumber"];
    passSerialNumber = self->_passSerialNumber;
    self->_passSerialNumber = v8;

    v10 = [v5 PKStringForKey:@"personalizedVehicleIdentifier"];
    personalizedVehicleIdentifier = self->_personalizedVehicleIdentifier;
    self->_personalizedVehicleIdentifier = v10;

    v12 = self->_passTypeIdentifier && self->_passSerialNumber || self->_personalizedVehicleIdentifier;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKSharingMessage *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  v5 = PKSharingMessageTypeToString([(PKSharingMessage *)self type]);
  [v3 appendFormat:@"type: '%@'; ", v5];

  [v3 appendFormat:@"passTypeIdentifier: '%@'; ", self->_passTypeIdentifier];
  [v3 appendFormat:@"passSerialNumber: '%@'; ", self->_passSerialNumber];
  [v3 appendFormat:@"personalizedVehicleIdentifier: '%@'; ", self->_personalizedVehicleIdentifier];
  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(self) = 0;
    goto LABEL_16;
  }

  v6 = v5;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = PKSharingInvitationRequestMessage;
    if ([(PKSharingGenericMessage *)&v13 isEqual:v6])
    {
      passTypeIdentifier = self->_passTypeIdentifier;
      v8 = v6->_passTypeIdentifier;
      if (passTypeIdentifier)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (passTypeIdentifier == v8)
        {
LABEL_18:
          passSerialNumber = self->_passSerialNumber;
          v12 = v6->_passSerialNumber;
          if (passSerialNumber && v12)
          {
            LOBYTE(self) = [(NSString *)passSerialNumber isEqual:?];
          }

          else
          {
            LOBYTE(self) = passSerialNumber == v12;
          }

          goto LABEL_13;
        }
      }

      else if (([(NSString *)passTypeIdentifier isEqual:?]& 1) != 0)
      {
        goto LABEL_18;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_13:

LABEL_16:
  return self;
}

@end