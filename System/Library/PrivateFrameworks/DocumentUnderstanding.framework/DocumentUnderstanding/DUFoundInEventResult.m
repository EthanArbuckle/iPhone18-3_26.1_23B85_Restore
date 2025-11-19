@interface DUFoundInEventResult
+ (id)getErrorForFieldWithField:(id)a3 errorCode:(int64_t)a4;
+ (id)mapErrorCodeToUserInfoWithFieldName:(id)a3 errorCode:(int64_t)a4;
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
- (_TtC21DocumentUnderstanding20DUFoundInEventResult)initWithFoundInEventResult:(id)a3;
- (id)copyWithZone:(void *)a3;
- (id)serializedData;
- (void)encodeWithCoder:(id)a3;
- (void)setEndAddressError:(id)a3;
- (void)setEndDateError:(id)a3;
- (void)setEndPlaceError:(id)a3;
- (void)setGuestNameError:(id)a3;
- (void)setHotelNameError:(id)a3;
- (void)setMovieNameError:(id)a3;
- (void)setReservationIdError:(id)a3;
- (void)setReservationNameError:(id)a3;
- (void)setStartAddressError:(id)a3;
- (void)setStartDateError:(id)a3;
- (void)setStartPlaceError:(id)a3;
@end

@implementation DUFoundInEventResult

- (NSError)reservationIdError
{
  v2 = sub_232BC3494();

  return v2;
}

- (void)setReservationIdError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC352C();
}

- (NSError)reservationNameError
{
  v2 = sub_232BC36B0();

  return v2;
}

- (void)setReservationNameError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC3748();
}

- (NSError)hotelNameError
{
  v2 = sub_232BC39F0();

  return v2;
}

- (void)setHotelNameError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC3A88();
}

- (NSError)guestNameError
{
  v2 = sub_232BC3C0C();

  return v2;
}

- (void)setGuestNameError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC3CA4();
}

- (NSError)movieNameError
{
  v2 = sub_232BC3E28();

  return v2;
}

- (void)setMovieNameError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC3EC0();
}

- (NSError)startAddressError
{
  v2 = sub_232BC4044();

  return v2;
}

- (void)setStartAddressError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC40DC();
}

- (NSError)endAddressError
{
  v2 = sub_232BC4320();

  return v2;
}

- (void)setEndAddressError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC43B8();
}

- (NSError)startPlaceError
{
  v2 = sub_232BC46F8();

  return v2;
}

- (void)setStartPlaceError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC4790();
}

- (NSError)endPlaceError
{
  v2 = sub_232BC4914();

  return v2;
}

- (void)setEndPlaceError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC49AC();
}

- (NSError)startDateError
{
  v2 = sub_232BC4B30();

  return v2;
}

- (void)setStartDateError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC4BC8();
}

- (NSError)endDateError
{
  v2 = sub_232BC4D4C();

  return v2;
}

- (void)setEndDateError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC4DE4();
}

+ (id)mapErrorCodeToUserInfoWithFieldName:(id)a3 errorCode:(int64_t)a4
{
  v5 = sub_232CE9D50();
  sub_232BC526C(v5, v6, a4);

  v7 = sub_232CE9C20();

  return v7;
}

+ (id)getErrorForFieldWithField:(id)a3 errorCode:(int64_t)a4
{
  v5 = sub_232CE9D50();
  v7 = static DUFoundInEventResult.getErrorForField(field:errorCode:)(v5, v6, a4);

  return v7;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232BC77F0(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (id)serializedData
{
  v2 = self;
  v3 = sub_232BC78F4();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BC7A40(v4);
}

- (_TtC21DocumentUnderstanding20DUFoundInEventResult)initWithFoundInEventResult:(id)a3
{
  v3 = a3;
  DUFoundInEventResult.init(foundInEventResult:)();
  return result;
}

@end