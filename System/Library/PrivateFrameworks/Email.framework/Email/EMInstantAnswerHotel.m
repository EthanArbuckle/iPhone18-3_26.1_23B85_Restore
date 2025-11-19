@interface EMInstantAnswerHotel
- (EMInstantAnswerHotel)initWithCSInstantAnswers:(id)a3;
- (EMInstantAnswerHotel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMInstantAnswerHotel

- (EMInstantAnswerHotel)initWithCSInstantAnswers:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EMInstantAnswerHotel;
  v5 = [(EMInstantAnswerHotel *)&v15 init];
  if (v5)
  {
    v6 = [v4 hotelCheckinDateComponents];
    checkInDateComponents = v5->_checkInDateComponents;
    v5->_checkInDateComponents = v6;

    v8 = [v4 hotelReservationForName];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 hotelReservationForAddress];
    address = v5->_address;
    v5->_address = v10;

    v12 = [v4 hotelReservationForAddressLocality];
    city = v5->_city;
    v5->_city = v12;
  }

  return v5;
}

- (EMInstantAnswerHotel)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EMInstantAnswerHotel;
  v5 = [(EMInstantAnswerHotel *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_checkInDateComponents"];
    checkInDateComponents = v5->_checkInDateComponents;
    v5->_checkInDateComponents = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_city"];
    city = v5->_city;
    v5->_city = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(EMInstantAnswerHotel *)self checkInDateComponents];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_checkInDateComponents"];

  v5 = [(EMInstantAnswerHotel *)self name];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_name"];

  v6 = [(EMInstantAnswerHotel *)self address];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_address"];

  v7 = [(EMInstantAnswerHotel *)self city];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_city"];
}

@end