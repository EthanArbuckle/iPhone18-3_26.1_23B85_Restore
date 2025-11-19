@interface RTVehicleEvent
- (BOOL)isEqual:(id)a3;
- (RTVehicleEvent)init;
- (RTVehicleEvent)initWithCoder:(id)a3;
- (RTVehicleEvent)initWithDate:(id)a3;
- (RTVehicleEvent)initWithDate:(id)a3 location:(id)a4 vehicleIdentifier:(id)a5 userSetLocation:(BOOL)a6 notes:(id)a7 identifier:(id)a8 photo:(id)a9 mapItem:(id)a10 confirmed:(BOOL)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTVehicleEvent

- (RTVehicleEvent)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  LOBYTE(v6) = 0;
  v4 = [(RTVehicleEvent *)self initWithDate:0 location:0 vehicleIdentifier:0 userSetLocation:0 notes:0 identifier:v3 photo:0 mapItem:0 confirmed:v6];

  return v4;
}

- (RTVehicleEvent)initWithDate:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  LOBYTE(v9) = 0;
  v7 = [(RTVehicleEvent *)self initWithDate:v5 location:0 vehicleIdentifier:0 userSetLocation:0 notes:0 identifier:v6 photo:0 mapItem:0 confirmed:v9];

  return v7;
}

- (RTVehicleEvent)initWithDate:(id)a3 location:(id)a4 vehicleIdentifier:(id)a5 userSetLocation:(BOOL)a6 notes:(id)a7 identifier:(id)a8 photo:(id)a9 mapItem:(id)a10 confirmed:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v36.receiver = self;
  v36.super_class = RTVehicleEvent;
  v23 = [(RTVehicleEvent *)&v36 init];
  if (v23)
  {
    v24 = [v16 copy];
    date = v23->_date;
    v23->_date = v24;

    v26 = [v17 copy];
    location = v23->_location;
    v23->_location = v26;

    v28 = [v18 copy];
    vehicleIdentifier = v23->_vehicleIdentifier;
    v23->_vehicleIdentifier = v28;

    v23->_userSetLocation = a6;
    v30 = [v19 copy];
    notes = v23->_notes;
    v23->_notes = v30;

    v32 = [v20 copy];
    identifier = v23->_identifier;
    v23->_identifier = v32;

    objc_storeStrong(&v23->_photo, a9);
    objc_storeStrong(&v23->_mapItem, a10);
    *&v23->_confirmed = a11;
  }

  return v23;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v19 = [(RTVehicleEvent *)self date];
  v17 = [v19 stringFromDate];
  v16 = [(RTVehicleEvent *)self location];
  v3 = [(RTVehicleEvent *)self vehicleIdentifier];
  v15 = [(RTVehicleEvent *)self userSetLocation];
  v4 = [(RTVehicleEvent *)self notes];
  v5 = [(RTVehicleEvent *)self identifier];
  v6 = [(RTVehicleEvent *)self mapItem];
  v7 = [v6 address];
  v8 = [(RTVehicleEvent *)self locationQuality];
  v9 = [(RTVehicleEvent *)self usualLocation];
  v10 = [(RTVehicleEvent *)self confirmed];
  v11 = [(RTVehicleEvent *)self locationFinalized];
  v12 = [(RTVehicleEvent *)self nearbyLocationOfInterest];
  v13 = [v18 stringWithFormat:@"date, %@, location, %@, vehicleIdentifier, %@, userSetLocation, %d, notes, %@, identifier, %@, address, <%@>, quality, %lu, usualLocation, %d, confirmed, %d, locationFinalized, %d, nearbyLocationOfInterest, %@", v17, v16, v3, v15, v4, v5, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (RTVehicleEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = RTVehicleEvent;
  v5 = [(RTVehicleEvent *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleIdentifier"];
    vehicleIdentifier = v5->_vehicleIdentifier;
    v5->_vehicleIdentifier = v10;

    v5->_userSetLocation = [v4 decodeBoolForKey:@"userSetLocation"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photo"];
    photo = v5->_photo;
    v5->_photo = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapItem"];
    mapItem = v5->_mapItem;
    v5->_mapItem = v18;

    v5->_locationQuality = [v4 decodeIntegerForKey:@"locationQuality"];
    v5->_usualLocation = [v4 decodeBoolForKey:@"usualLocation"];
    v5->_confirmed = [v4 decodeBoolForKey:@"confirmed"];
    v5->_locationFinalized = [v4 decodeBoolForKey:@"locationFinalized"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nearbyLocationOfInterest"];
    nearbyLocationOfInterest = v5->_nearbyLocationOfInterest;
    v5->_nearbyLocationOfInterest = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"date"];
  [v5 encodeObject:self->_location forKey:@"location"];
  [v5 encodeObject:self->_vehicleIdentifier forKey:@"vehicleIdentifier"];
  [v5 encodeBool:self->_userSetLocation forKey:@"userSetLocation"];
  [v5 encodeObject:self->_notes forKey:@"notes"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_photo forKey:@"photo"];
  [v5 encodeObject:self->_mapItem forKey:@"mapItem"];
  [v5 encodeInteger:self->_locationQuality forKey:@"locationQuality"];
  [v5 encodeBool:self->_usualLocation forKey:@"usualLocation"];
  [v5 encodeBool:self->_confirmed forKey:@"confirmed"];
  [v5 encodeBool:self->_locationFinalized forKey:@"locationFinalized"];
  [v5 encodeObject:self->_nearbyLocationOfInterest forKey:@"nearbyLocationOfInterest"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(RTVehicleEvent *)self identifier];
        if (v8 || ([(RTVehicleEvent *)v7 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(RTVehicleEvent *)self identifier];
          v10 = [(RTVehicleEvent *)v7 identifier];
          v11 = [v9 isEqual:v10];

          if (v8)
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
  v2 = [(RTVehicleEvent *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end