@interface DUFoundInEventClientAbstractResult
- (DUFoundInEventClientAbstractResult)initWithCoder:(id)a3;
- (DUFoundInEventClientAbstractResult)initWithFields:(BOOL)a3 reservationIdError:(id)a4 reservationId:(id)a5 reservationNameError:(id)a6 reservationName:(id)a7 startAddressError:(id)a8 startAddress:(id)a9 startAddressComponents:(id)a10 endAddressError:(id)a11 endAddress:(id)a12 endAddressComponents:(id)a13 startPlaceError:(id)a14 startPlace:(id)a15 endPlaceError:(id)a16 endPlace:(id)a17 startDateError:(id)a18 startDate:(id)a19 endDateError:(id)a20 endDate:(id)a21 hotelNameError:(id)a22 hotelName:(id)a23 guestNameError:(id)a24 guestName:(id)a25 movieNameError:(id)a26 movieName:(id)a27;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DUFoundInEventClientAbstractResult

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DUFoundInEventClientAbstractResult alloc];
  v5 = *&self->_endAddressError;
  v6 = *&self->_startPlace;
  v7 = *&self->_startDate;
  v8 = *&self->_hotelName;
  return [(DUFoundInEventClientAbstractResult *)v4 initWithFields:self->_detectedEventPolarity reservationIdError:self->_reservationIdError reservationId:self->_reservationId reservationNameError:self->_reservationNameError reservationName:self->_reservationName startAddressError:self->_startAddressError startAddress:self->_startAddress startAddressComponents:self->_startAddressComponents endAddressError:self->_endAddressError endAddress:self->_endAddress endAddressComponents:self->_endAddressComponents startPlaceError:self->_startPlaceError startPlace:self->_startPlace endPlaceError:self->_endPlaceError endPlace:self->_endPlace startDateError:self->_startDateError startDate:self->_startDate endDateError:self->_endDateError endDate:self->_endDate hotelNameError:self->_hotelNameError hotelName:self->_hotelName guestNameError:self->_guestNameError guestName:self->_guestName movieNameError:self->_movieNameError movieName:self->_movieName];
}

- (DUFoundInEventClientAbstractResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detectedEventPolarity"];
  self->_detectedEventPolarity = [v5 BOOLValue];

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationIdError"];
  reservationIdError = self->_reservationIdError;
  self->_reservationIdError = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationId"];
  reservationId = self->_reservationId;
  self->_reservationId = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationNameError"];
  reservationNameError = self->_reservationNameError;
  self->_reservationNameError = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationName"];
  reservationName = self->_reservationName;
  self->_reservationName = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startAddressError"];
  startAddressError = self->_startAddressError;
  self->_startAddressError = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startAddress"];
  startAddress = self->_startAddress;
  self->_startAddress = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startAddressComponents"];
  startAddressComponents = self->_startAddressComponents;
  self->_startAddressComponents = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endAddressError"];
  endAddressError = self->_endAddressError;
  self->_endAddressError = v20;

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endAddress"];
  endAddress = self->_endAddress;
  self->_endAddress = v22;

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endAddressComponents"];
  endAddressComponents = self->_endAddressComponents;
  self->_endAddressComponents = v24;

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startPlaceError"];
  startPlaceError = self->_startPlaceError;
  self->_startPlaceError = v26;

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startPlace"];
  startPlace = self->_startPlace;
  self->_startPlace = v28;

  v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endPlaceError"];
  endPlaceError = self->_endPlaceError;
  self->_endPlaceError = v30;

  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endPlace"];
  endPlace = self->_endPlace;
  self->_endPlace = v32;

  v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDateError"];
  startDateError = self->_startDateError;
  self->_startDateError = v34;

  v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  startDate = self->_startDate;
  self->_startDate = v36;

  v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDateError"];
  endDateError = self->_endDateError;
  self->_endDateError = v38;

  v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  endDate = self->_endDate;
  self->_endDate = v40;

  v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hotelNameError"];
  hotelNameError = self->_hotelNameError;
  self->_hotelNameError = v42;

  v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hotelName"];
  hotelName = self->_hotelName;
  self->_hotelName = v44;

  v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guestNameError"];
  guestNameError = self->_guestNameError;
  self->_guestNameError = v46;

  v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guestName"];
  guestName = self->_guestName;
  self->_guestName = v48;

  v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"movieNameError"];
  movieNameError = self->_movieNameError;
  self->_movieNameError = v50;

  v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"movieName"];

  movieName = self->_movieName;
  self->_movieName = v52;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  detectedEventPolarity = self->_detectedEventPolarity;
  v6 = a3;
  v7 = [v4 numberWithBool:detectedEventPolarity];
  [v6 encodeObject:v7 forKey:@"detectedEventPolarity"];
  [v6 encodeObject:self->_reservationIdError forKey:@"reservationIdError"];
  [v6 encodeObject:self->_reservationId forKey:@"reservationId"];
  [v6 encodeObject:self->_reservationNameError forKey:@"reservationNameError"];
  [v6 encodeObject:self->_reservationName forKey:@"reservationName"];
  [v6 encodeObject:self->_startAddressError forKey:@"startAddressError"];
  [v6 encodeObject:self->_startAddress forKey:@"startAddress"];
  [v6 encodeObject:self->_startAddressComponents forKey:@"startAddressComponents"];
  [v6 encodeObject:self->_endAddressError forKey:@"endAddressError"];
  [v6 encodeObject:self->_endAddress forKey:@"endAddress"];
  [v6 encodeObject:self->_endAddressComponents forKey:@"endAddressComponents"];
  [v6 encodeObject:self->_startPlaceError forKey:@"startPlaceError"];
  [v6 encodeObject:self->_startPlace forKey:@"startPlace"];
  [v6 encodeObject:self->_endPlaceError forKey:@"endPlaceError"];
  [v6 encodeObject:self->_endPlace forKey:@"endPlace"];
  [v6 encodeObject:self->_startDateError forKey:@"startDateError"];
  [v6 encodeObject:self->_startDate forKey:@"startDate"];
  [v6 encodeObject:self->_endDateError forKey:@"endDateError"];
  [v6 encodeObject:self->_endDate forKey:@"endDate"];
  [v6 encodeObject:self->_hotelNameError forKey:@"hotelNameError"];
  [v6 encodeObject:self->_hotelName forKey:@"hotelName"];
  [v6 encodeObject:self->_guestNameError forKey:@"guestNameError"];
  [v6 encodeObject:self->_guestName forKey:@"guestName"];
  [v6 encodeObject:self->_movieNameError forKey:@"movieNameError"];
  [v6 encodeObject:self->_movieName forKey:@"movieName"];
}

- (DUFoundInEventClientAbstractResult)initWithFields:(BOOL)a3 reservationIdError:(id)a4 reservationId:(id)a5 reservationNameError:(id)a6 reservationName:(id)a7 startAddressError:(id)a8 startAddress:(id)a9 startAddressComponents:(id)a10 endAddressError:(id)a11 endAddress:(id)a12 endAddressComponents:(id)a13 startPlaceError:(id)a14 startPlace:(id)a15 endPlaceError:(id)a16 endPlace:(id)a17 startDateError:(id)a18 startDate:(id)a19 endDateError:(id)a20 endDate:(id)a21 hotelNameError:(id)a22 hotelName:(id)a23 guestNameError:(id)a24 guestName:(id)a25 movieNameError:(id)a26 movieName:(id)a27
{
  v73 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v97 = a9;
  v94 = a10;
  v90 = a11;
  v87 = a12;
  v85 = a13;
  v78 = a14;
  v74 = a15;
  v76 = a16;
  v80 = a17;
  v82 = a18;
  v84 = a19;
  v36 = a20;
  v37 = a21;
  v38 = a22;
  v39 = a23;
  v89 = a24;
  v92 = a25;
  v93 = a26;
  v96 = a27;
  self->_detectedEventPolarity = a3;
  reservationIdError = self->_reservationIdError;
  self->_reservationIdError = v73;
  v104 = v73;

  reservationId = self->_reservationId;
  self->_reservationId = v32;
  v102 = v32;

  reservationNameError = self->_reservationNameError;
  self->_reservationNameError = v33;
  v101 = v33;

  reservationName = self->_reservationName;
  self->_reservationName = v34;
  v100 = v34;

  startAddressError = self->_startAddressError;
  self->_startAddressError = v35;
  v99 = v35;

  startAddress = self->_startAddress;
  self->_startAddress = v97;
  v98 = v97;

  startAddressComponents = self->_startAddressComponents;
  self->_startAddressComponents = v94;
  v95 = v94;

  endAddressError = self->_endAddressError;
  self->_endAddressError = v90;
  v91 = v90;

  endAddress = self->_endAddress;
  self->_endAddress = v87;
  v88 = v87;

  endAddressComponents = self->_endAddressComponents;
  self->_endAddressComponents = v85;
  v86 = v85;

  startPlaceError = self->_startPlaceError;
  self->_startPlaceError = v78;
  v79 = v78;

  startPlace = self->_startPlace;
  self->_startPlace = v74;
  v75 = v74;

  endPlaceError = self->_endPlaceError;
  self->_endPlaceError = v76;
  v77 = v76;

  endPlace = self->_endPlace;
  self->_endPlace = v80;
  v81 = v80;

  startDateError = self->_startDateError;
  self->_startDateError = v82;
  v83 = v82;

  startDate = self->_startDate;
  self->_startDate = v84;
  v56 = v84;

  endDateError = self->_endDateError;
  self->_endDateError = v36;
  v58 = v36;

  endDate = self->_endDate;
  self->_endDate = v37;
  v60 = v37;

  hotelNameError = self->_hotelNameError;
  self->_hotelNameError = v38;
  v62 = v38;

  hotelName = self->_hotelName;
  self->_hotelName = v39;
  v64 = v39;

  guestNameError = self->_guestNameError;
  self->_guestNameError = v89;
  v66 = v89;

  guestName = self->_guestName;
  self->_guestName = v92;
  v68 = v92;

  movieNameError = self->_movieNameError;
  self->_movieNameError = v93;
  v70 = v93;

  movieName = self->_movieName;
  self->_movieName = v96;

  return self;
}

@end