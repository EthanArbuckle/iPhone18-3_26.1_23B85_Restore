@interface RTVehicleEvent
- (BOOL)isEqual:(id)equal;
- (RTVehicleEvent)init;
- (RTVehicleEvent)initWithCoder:(id)coder;
- (RTVehicleEvent)initWithDate:(id)date;
- (RTVehicleEvent)initWithDate:(id)date location:(id)location vehicleIdentifier:(id)identifier userSetLocation:(BOOL)setLocation notes:(id)notes identifier:(id)a8 photo:(id)photo mapItem:(id)self0 confirmed:(BOOL)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTVehicleEvent

- (RTVehicleEvent)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  LOBYTE(v6) = 0;
  v4 = [(RTVehicleEvent *)self initWithDate:0 location:0 vehicleIdentifier:0 userSetLocation:0 notes:0 identifier:uUID photo:0 mapItem:0 confirmed:v6];

  return v4;
}

- (RTVehicleEvent)initWithDate:(id)date
{
  v4 = MEMORY[0x1E696AFB0];
  dateCopy = date;
  uUID = [v4 UUID];
  LOBYTE(v9) = 0;
  v7 = [(RTVehicleEvent *)self initWithDate:dateCopy location:0 vehicleIdentifier:0 userSetLocation:0 notes:0 identifier:uUID photo:0 mapItem:0 confirmed:v9];

  return v7;
}

- (RTVehicleEvent)initWithDate:(id)date location:(id)location vehicleIdentifier:(id)identifier userSetLocation:(BOOL)setLocation notes:(id)notes identifier:(id)a8 photo:(id)photo mapItem:(id)self0 confirmed:(BOOL)self1
{
  dateCopy = date;
  locationCopy = location;
  identifierCopy = identifier;
  notesCopy = notes;
  v20 = a8;
  photoCopy = photo;
  itemCopy = item;
  v36.receiver = self;
  v36.super_class = RTVehicleEvent;
  v23 = [(RTVehicleEvent *)&v36 init];
  if (v23)
  {
    v24 = [dateCopy copy];
    date = v23->_date;
    v23->_date = v24;

    v26 = [locationCopy copy];
    location = v23->_location;
    v23->_location = v26;

    v28 = [identifierCopy copy];
    vehicleIdentifier = v23->_vehicleIdentifier;
    v23->_vehicleIdentifier = v28;

    v23->_userSetLocation = setLocation;
    v30 = [notesCopy copy];
    notes = v23->_notes;
    v23->_notes = v30;

    v32 = [v20 copy];
    identifier = v23->_identifier;
    v23->_identifier = v32;

    objc_storeStrong(&v23->_photo, photo);
    objc_storeStrong(&v23->_mapItem, item);
    *&v23->_confirmed = confirmed;
  }

  return v23;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  date = [(RTVehicleEvent *)self date];
  stringFromDate = [date stringFromDate];
  location = [(RTVehicleEvent *)self location];
  vehicleIdentifier = [(RTVehicleEvent *)self vehicleIdentifier];
  userSetLocation = [(RTVehicleEvent *)self userSetLocation];
  notes = [(RTVehicleEvent *)self notes];
  identifier = [(RTVehicleEvent *)self identifier];
  mapItem = [(RTVehicleEvent *)self mapItem];
  address = [mapItem address];
  locationQuality = [(RTVehicleEvent *)self locationQuality];
  usualLocation = [(RTVehicleEvent *)self usualLocation];
  confirmed = [(RTVehicleEvent *)self confirmed];
  locationFinalized = [(RTVehicleEvent *)self locationFinalized];
  nearbyLocationOfInterest = [(RTVehicleEvent *)self nearbyLocationOfInterest];
  v13 = [v18 stringWithFormat:@"date, %@, location, %@, vehicleIdentifier, %@, userSetLocation, %d, notes, %@, identifier, %@, address, <%@>, quality, %lu, usualLocation, %d, confirmed, %d, locationFinalized, %d, nearbyLocationOfInterest, %@", stringFromDate, location, vehicleIdentifier, userSetLocation, notes, identifier, address, locationQuality, usualLocation, confirmed, locationFinalized, nearbyLocationOfInterest];

  return v13;
}

- (RTVehicleEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = RTVehicleEvent;
  v5 = [(RTVehicleEvent *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleIdentifier"];
    vehicleIdentifier = v5->_vehicleIdentifier;
    v5->_vehicleIdentifier = v10;

    v5->_userSetLocation = [coderCopy decodeBoolForKey:@"userSetLocation"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photo"];
    photo = v5->_photo;
    v5->_photo = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
    mapItem = v5->_mapItem;
    v5->_mapItem = v18;

    v5->_locationQuality = [coderCopy decodeIntegerForKey:@"locationQuality"];
    v5->_usualLocation = [coderCopy decodeBoolForKey:@"usualLocation"];
    v5->_confirmed = [coderCopy decodeBoolForKey:@"confirmed"];
    v5->_locationFinalized = [coderCopy decodeBoolForKey:@"locationFinalized"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nearbyLocationOfInterest"];
    nearbyLocationOfInterest = v5->_nearbyLocationOfInterest;
    v5->_nearbyLocationOfInterest = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_vehicleIdentifier forKey:@"vehicleIdentifier"];
  [coderCopy encodeBool:self->_userSetLocation forKey:@"userSetLocation"];
  [coderCopy encodeObject:self->_notes forKey:@"notes"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_photo forKey:@"photo"];
  [coderCopy encodeObject:self->_mapItem forKey:@"mapItem"];
  [coderCopy encodeInteger:self->_locationQuality forKey:@"locationQuality"];
  [coderCopy encodeBool:self->_usualLocation forKey:@"usualLocation"];
  [coderCopy encodeBool:self->_confirmed forKey:@"confirmed"];
  [coderCopy encodeBool:self->_locationFinalized forKey:@"locationFinalized"];
  [coderCopy encodeObject:self->_nearbyLocationOfInterest forKey:@"nearbyLocationOfInterest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTVehicleEvent alloc];
  photo = self->_photo;
  LOBYTE(v10) = self->_confirmed;
  v6 = [(RTVehicleEvent *)v4 initWithDate:self->_date location:self->_location vehicleIdentifier:self->_vehicleIdentifier userSetLocation:self->_userSetLocation notes:self->_notes identifier:self->_identifier photo:photo mapItem:self->_mapItem confirmed:v10];
  *(v6 + 11) = self->_locationFinalized;
  *(v6 + 9) = self->_usualLocation;
  *(v6 + 72) = self->_locationQuality;
  v7 = [(RTLocationOfInterest *)self->_nearbyLocationOfInterest copy];
  v8 = *(v6 + 80);
  *(v6 + 80) = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        identifier = [(RTVehicleEvent *)self identifier];
        if (identifier || ([(RTVehicleEvent *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier2 = [(RTVehicleEvent *)self identifier];
          identifier3 = [(RTVehicleEvent *)v7 identifier];
          v11 = [identifier2 isEqual:identifier3];

          if (identifier)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  identifier = [(RTVehicleEvent *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end