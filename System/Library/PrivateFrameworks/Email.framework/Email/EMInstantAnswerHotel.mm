@interface EMInstantAnswerHotel
- (EMInstantAnswerHotel)initWithCSInstantAnswers:(id)answers;
- (EMInstantAnswerHotel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMInstantAnswerHotel

- (EMInstantAnswerHotel)initWithCSInstantAnswers:(id)answers
{
  answersCopy = answers;
  v15.receiver = self;
  v15.super_class = EMInstantAnswerHotel;
  v5 = [(EMInstantAnswerHotel *)&v15 init];
  if (v5)
  {
    hotelCheckinDateComponents = [answersCopy hotelCheckinDateComponents];
    checkInDateComponents = v5->_checkInDateComponents;
    v5->_checkInDateComponents = hotelCheckinDateComponents;

    hotelReservationForName = [answersCopy hotelReservationForName];
    name = v5->_name;
    v5->_name = hotelReservationForName;

    hotelReservationForAddress = [answersCopy hotelReservationForAddress];
    address = v5->_address;
    v5->_address = hotelReservationForAddress;

    hotelReservationForAddressLocality = [answersCopy hotelReservationForAddressLocality];
    city = v5->_city;
    v5->_city = hotelReservationForAddressLocality;
  }

  return v5;
}

- (EMInstantAnswerHotel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = EMInstantAnswerHotel;
  v5 = [(EMInstantAnswerHotel *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_checkInDateComponents"];
    checkInDateComponents = v5->_checkInDateComponents;
    v5->_checkInDateComponents = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_address"];
    address = v5->_address;
    v5->_address = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_city"];
    city = v5->_city;
    v5->_city = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  checkInDateComponents = [(EMInstantAnswerHotel *)self checkInDateComponents];
  [coderCopy encodeObject:checkInDateComponents forKey:@"EFPropertyKey_checkInDateComponents"];

  name = [(EMInstantAnswerHotel *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];

  address = [(EMInstantAnswerHotel *)self address];
  [coderCopy encodeObject:address forKey:@"EFPropertyKey_address"];

  city = [(EMInstantAnswerHotel *)self city];
  [coderCopy encodeObject:city forKey:@"EFPropertyKey_city"];
}

@end