@interface DUFoundInEventClientAbstractResult
- (DUFoundInEventClientAbstractResult)initWithCoder:(id)coder;
- (DUFoundInEventClientAbstractResult)initWithFields:(BOOL)fields reservationIdError:(id)error reservationId:(id)id reservationNameError:(id)nameError reservationName:(id)name startAddressError:(id)addressError startAddress:(id)address startAddressComponents:(id)self0 endAddressError:(id)self1 endAddress:(id)self2 endAddressComponents:(id)self3 startPlaceError:(id)self4 startPlace:(id)self5 endPlaceError:(id)self6 endPlace:(id)self7 startDateError:(id)self8 startDate:(id)self9 endDateError:(id)endDateError endDate:(id)endDate hotelNameError:(id)hotelNameError hotelName:(id)hotelName guestNameError:(id)guestNameError guestName:(id)guestName movieNameError:(id)movieNameError movieName:(id)movieName;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DUFoundInEventClientAbstractResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DUFoundInEventClientAbstractResult alloc];
  v5 = *&self->_endAddressError;
  v6 = *&self->_startPlace;
  v7 = *&self->_startDate;
  v8 = *&self->_hotelName;
  return [(DUFoundInEventClientAbstractResult *)v4 initWithFields:self->_detectedEventPolarity reservationIdError:self->_reservationIdError reservationId:self->_reservationId reservationNameError:self->_reservationNameError reservationName:self->_reservationName startAddressError:self->_startAddressError startAddress:self->_startAddress startAddressComponents:self->_startAddressComponents endAddressError:self->_endAddressError endAddress:self->_endAddress endAddressComponents:self->_endAddressComponents startPlaceError:self->_startPlaceError startPlace:self->_startPlace endPlaceError:self->_endPlaceError endPlace:self->_endPlace startDateError:self->_startDateError startDate:self->_startDate endDateError:self->_endDateError endDate:self->_endDate hotelNameError:self->_hotelNameError hotelName:self->_hotelName guestNameError:self->_guestNameError guestName:self->_guestName movieNameError:self->_movieNameError movieName:self->_movieName];
}

- (DUFoundInEventClientAbstractResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detectedEventPolarity"];
  self->_detectedEventPolarity = [v5 BOOLValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationIdError"];
  reservationIdError = self->_reservationIdError;
  self->_reservationIdError = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationId"];
  reservationId = self->_reservationId;
  self->_reservationId = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationNameError"];
  reservationNameError = self->_reservationNameError;
  self->_reservationNameError = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationName"];
  reservationName = self->_reservationName;
  self->_reservationName = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startAddressError"];
  startAddressError = self->_startAddressError;
  self->_startAddressError = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startAddress"];
  startAddress = self->_startAddress;
  self->_startAddress = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startAddressComponents"];
  startAddressComponents = self->_startAddressComponents;
  self->_startAddressComponents = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endAddressError"];
  endAddressError = self->_endAddressError;
  self->_endAddressError = v20;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endAddress"];
  endAddress = self->_endAddress;
  self->_endAddress = v22;

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endAddressComponents"];
  endAddressComponents = self->_endAddressComponents;
  self->_endAddressComponents = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startPlaceError"];
  startPlaceError = self->_startPlaceError;
  self->_startPlaceError = v26;

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startPlace"];
  startPlace = self->_startPlace;
  self->_startPlace = v28;

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endPlaceError"];
  endPlaceError = self->_endPlaceError;
  self->_endPlaceError = v30;

  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endPlace"];
  endPlace = self->_endPlace;
  self->_endPlace = v32;

  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDateError"];
  startDateError = self->_startDateError;
  self->_startDateError = v34;

  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  startDate = self->_startDate;
  self->_startDate = v36;

  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDateError"];
  endDateError = self->_endDateError;
  self->_endDateError = v38;

  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  endDate = self->_endDate;
  self->_endDate = v40;

  v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hotelNameError"];
  hotelNameError = self->_hotelNameError;
  self->_hotelNameError = v42;

  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hotelName"];
  hotelName = self->_hotelName;
  self->_hotelName = v44;

  v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guestNameError"];
  guestNameError = self->_guestNameError;
  self->_guestNameError = v46;

  v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guestName"];
  guestName = self->_guestName;
  self->_guestName = v48;

  v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"movieNameError"];
  movieNameError = self->_movieNameError;
  self->_movieNameError = v50;

  v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"movieName"];

  movieName = self->_movieName;
  self->_movieName = v52;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  detectedEventPolarity = self->_detectedEventPolarity;
  coderCopy = coder;
  v7 = [v4 numberWithBool:detectedEventPolarity];
  [coderCopy encodeObject:v7 forKey:@"detectedEventPolarity"];
  [coderCopy encodeObject:self->_reservationIdError forKey:@"reservationIdError"];
  [coderCopy encodeObject:self->_reservationId forKey:@"reservationId"];
  [coderCopy encodeObject:self->_reservationNameError forKey:@"reservationNameError"];
  [coderCopy encodeObject:self->_reservationName forKey:@"reservationName"];
  [coderCopy encodeObject:self->_startAddressError forKey:@"startAddressError"];
  [coderCopy encodeObject:self->_startAddress forKey:@"startAddress"];
  [coderCopy encodeObject:self->_startAddressComponents forKey:@"startAddressComponents"];
  [coderCopy encodeObject:self->_endAddressError forKey:@"endAddressError"];
  [coderCopy encodeObject:self->_endAddress forKey:@"endAddress"];
  [coderCopy encodeObject:self->_endAddressComponents forKey:@"endAddressComponents"];
  [coderCopy encodeObject:self->_startPlaceError forKey:@"startPlaceError"];
  [coderCopy encodeObject:self->_startPlace forKey:@"startPlace"];
  [coderCopy encodeObject:self->_endPlaceError forKey:@"endPlaceError"];
  [coderCopy encodeObject:self->_endPlace forKey:@"endPlace"];
  [coderCopy encodeObject:self->_startDateError forKey:@"startDateError"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDateError forKey:@"endDateError"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_hotelNameError forKey:@"hotelNameError"];
  [coderCopy encodeObject:self->_hotelName forKey:@"hotelName"];
  [coderCopy encodeObject:self->_guestNameError forKey:@"guestNameError"];
  [coderCopy encodeObject:self->_guestName forKey:@"guestName"];
  [coderCopy encodeObject:self->_movieNameError forKey:@"movieNameError"];
  [coderCopy encodeObject:self->_movieName forKey:@"movieName"];
}

- (DUFoundInEventClientAbstractResult)initWithFields:(BOOL)fields reservationIdError:(id)error reservationId:(id)id reservationNameError:(id)nameError reservationName:(id)name startAddressError:(id)addressError startAddress:(id)address startAddressComponents:(id)self0 endAddressError:(id)self1 endAddress:(id)self2 endAddressComponents:(id)self3 startPlaceError:(id)self4 startPlace:(id)self5 endPlaceError:(id)self6 endPlace:(id)self7 startDateError:(id)self8 startDate:(id)self9 endDateError:(id)endDateError endDate:(id)endDate hotelNameError:(id)hotelNameError hotelName:(id)hotelName guestNameError:(id)guestNameError guestName:(id)guestName movieNameError:(id)movieNameError movieName:(id)movieName
{
  errorCopy = error;
  idCopy = id;
  nameErrorCopy = nameError;
  nameCopy = name;
  addressErrorCopy = addressError;
  addressCopy = address;
  componentsCopy = components;
  endAddressErrorCopy = endAddressError;
  endAddressCopy = endAddress;
  addressComponentsCopy = addressComponents;
  placeErrorCopy = placeError;
  placeCopy = place;
  endPlaceErrorCopy = endPlaceError;
  endPlaceCopy = endPlace;
  dateErrorCopy = dateError;
  dateCopy = date;
  endDateErrorCopy = endDateError;
  endDateCopy = endDate;
  hotelNameErrorCopy = hotelNameError;
  hotelNameCopy = hotelName;
  guestNameErrorCopy = guestNameError;
  guestNameCopy = guestName;
  movieNameErrorCopy = movieNameError;
  movieNameCopy = movieName;
  self->_detectedEventPolarity = fields;
  reservationIdError = self->_reservationIdError;
  self->_reservationIdError = errorCopy;
  v104 = errorCopy;

  reservationId = self->_reservationId;
  self->_reservationId = idCopy;
  v102 = idCopy;

  reservationNameError = self->_reservationNameError;
  self->_reservationNameError = nameErrorCopy;
  v101 = nameErrorCopy;

  reservationName = self->_reservationName;
  self->_reservationName = nameCopy;
  v100 = nameCopy;

  startAddressError = self->_startAddressError;
  self->_startAddressError = addressErrorCopy;
  v99 = addressErrorCopy;

  startAddress = self->_startAddress;
  self->_startAddress = addressCopy;
  v98 = addressCopy;

  startAddressComponents = self->_startAddressComponents;
  self->_startAddressComponents = componentsCopy;
  v95 = componentsCopy;

  endAddressError = self->_endAddressError;
  self->_endAddressError = endAddressErrorCopy;
  v91 = endAddressErrorCopy;

  endAddress = self->_endAddress;
  self->_endAddress = endAddressCopy;
  v88 = endAddressCopy;

  endAddressComponents = self->_endAddressComponents;
  self->_endAddressComponents = addressComponentsCopy;
  v86 = addressComponentsCopy;

  startPlaceError = self->_startPlaceError;
  self->_startPlaceError = placeErrorCopy;
  v79 = placeErrorCopy;

  startPlace = self->_startPlace;
  self->_startPlace = placeCopy;
  v75 = placeCopy;

  endPlaceError = self->_endPlaceError;
  self->_endPlaceError = endPlaceErrorCopy;
  v77 = endPlaceErrorCopy;

  endPlace = self->_endPlace;
  self->_endPlace = endPlaceCopy;
  v81 = endPlaceCopy;

  startDateError = self->_startDateError;
  self->_startDateError = dateErrorCopy;
  v83 = dateErrorCopy;

  startDate = self->_startDate;
  self->_startDate = dateCopy;
  v56 = dateCopy;

  endDateError = self->_endDateError;
  self->_endDateError = endDateErrorCopy;
  v58 = endDateErrorCopy;

  endDate = self->_endDate;
  self->_endDate = endDateCopy;
  v60 = endDateCopy;

  hotelNameError = self->_hotelNameError;
  self->_hotelNameError = hotelNameErrorCopy;
  v62 = hotelNameErrorCopy;

  hotelName = self->_hotelName;
  self->_hotelName = hotelNameCopy;
  v64 = hotelNameCopy;

  guestNameError = self->_guestNameError;
  self->_guestNameError = guestNameErrorCopy;
  v66 = guestNameErrorCopy;

  guestName = self->_guestName;
  self->_guestName = guestNameCopy;
  v68 = guestNameCopy;

  movieNameError = self->_movieNameError;
  self->_movieNameError = movieNameErrorCopy;
  v70 = movieNameErrorCopy;

  movieName = self->_movieName;
  self->_movieName = movieNameCopy;

  return self;
}

@end