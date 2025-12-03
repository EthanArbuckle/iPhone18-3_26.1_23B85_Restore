@interface DUFoundInEventResult
+ (id)getErrorForFieldWithField:(id)field errorCode:(int64_t)code;
+ (id)mapErrorCodeToUserInfoWithFieldName:(id)name errorCode:(int64_t)code;
- (NSError)endAddressError;
- (NSError)endDateError;
- (NSError)endPlaceError;
- (NSError)guestNameError;
- (NSError)hotelNameError;
- (NSError)movieNameError;
- (NSError)reservationIdError;
- (NSError)reservationNameError;
- (NSError)startAddressError;
- (NSError)startDateError;
- (NSError)startPlaceError;
- (_TtC21DocumentUnderstanding20DUFoundInEventResult)initWithFoundInEventResult:(id)result;
- (id)copyWithZone:(void *)zone;
- (id)serializedData;
- (void)encodeWithCoder:(id)coder;
- (void)setEndAddressError:(id)error;
- (void)setEndDateError:(id)error;
- (void)setEndPlaceError:(id)error;
- (void)setGuestNameError:(id)error;
- (void)setHotelNameError:(id)error;
- (void)setMovieNameError:(id)error;
- (void)setReservationIdError:(id)error;
- (void)setReservationNameError:(id)error;
- (void)setStartAddressError:(id)error;
- (void)setStartDateError:(id)error;
- (void)setStartPlaceError:(id)error;
@end

@implementation DUFoundInEventResult

- (NSError)reservationIdError
{
  v2 = sub_232BC3494();

  return v2;
}

- (void)setReservationIdError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC352C();
}

- (NSError)reservationNameError
{
  v2 = sub_232BC36B0();

  return v2;
}

- (void)setReservationNameError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC3748();
}

- (NSError)hotelNameError
{
  v2 = sub_232BC39F0();

  return v2;
}

- (void)setHotelNameError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC3A88();
}

- (NSError)guestNameError
{
  v2 = sub_232BC3C0C();

  return v2;
}

- (void)setGuestNameError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC3CA4();
}

- (NSError)movieNameError
{
  v2 = sub_232BC3E28();

  return v2;
}

- (void)setMovieNameError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC3EC0();
}

- (NSError)startAddressError
{
  v2 = sub_232BC4044();

  return v2;
}

- (void)setStartAddressError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC40DC();
}

- (NSError)endAddressError
{
  v2 = sub_232BC4320();

  return v2;
}

- (void)setEndAddressError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC43B8();
}

- (NSError)startPlaceError
{
  v2 = sub_232BC46F8();

  return v2;
}

- (void)setStartPlaceError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC4790();
}

- (NSError)endPlaceError
{
  v2 = sub_232BC4914();

  return v2;
}

- (void)setEndPlaceError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC49AC();
}

- (NSError)startDateError
{
  v2 = sub_232BC4B30();

  return v2;
}

- (void)setStartDateError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC4BC8();
}

- (NSError)endDateError
{
  v2 = sub_232BC4D4C();

  return v2;
}

- (void)setEndDateError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_232BC4DE4();
}

+ (id)mapErrorCodeToUserInfoWithFieldName:(id)name errorCode:(int64_t)code
{
  v5 = sub_232CE9D50();
  sub_232BC526C(v5, v6, code);

  v7 = sub_232CE9C20();

  return v7;
}

+ (id)getErrorForFieldWithField:(id)field errorCode:(int64_t)code
{
  v5 = sub_232CE9D50();
  v7 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(v5, v6, code);

  return v7;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232BC77F0(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (id)serializedData
{
  selfCopy = self;
  v3 = sub_232BC78F4();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232BC7A40(coderCopy);
}

- (_TtC21DocumentUnderstanding20DUFoundInEventResult)initWithFoundInEventResult:(id)result
{
  resultCopy = result;
  DUFoundInEventResult.init(foundInEventResult:)();
  return result;
}

@end