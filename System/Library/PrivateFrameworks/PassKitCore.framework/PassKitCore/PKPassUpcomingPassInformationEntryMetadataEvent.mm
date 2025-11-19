@interface PKPassUpcomingPassInformationEntryMetadataEvent
- (BOOL)isEqualToMetadata:(id)a3;
- (BOOL)populateFromDictionary:(id)a3 bundle:(id)a4 semantics:(id)a5;
- (PKPassUpcomingPassInformationEntryMetadataEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpcomingPassInformationEntryMetadataEvent

- (BOOL)populateFromDictionary:(id)a3 bundle:(id)a4 semantics:(id)a5
{
  v8 = a3;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  v10 = [(PKPassUpcomingPassInformationEntryMetadata *)&v25 populateFromDictionary:v8 bundle:a4 semantics:v9];
  if (v10)
  {
    v11 = [v8 PKDictionaryForKey:@"dateInformation"];
    self->_unannounced = [v11 PKBoolForKey:@"isUnannounced"];
    self->_undetermined = [v11 PKBoolForKey:@"isUndetermined"];
    self->_allDay = [v11 PKBoolForKey:@"isAllDay"];
    v12 = [v9 objectForKeyedSubscript:@"venueName"];
    v13 = [v12 stringValue];
    venueName = self->_venueName;
    self->_venueName = v13;

    v15 = [v9 objectForKeyedSubscript:@"venueRegionName"];
    v16 = [v15 stringValue];
    venueRegionName = self->_venueRegionName;
    self->_venueRegionName = v16;

    v18 = [v9 objectForKeyedSubscript:@"venueLocation"];
    v19 = [v18 locationValue];
    venueLocation = self->_venueLocation;
    self->_venueLocation = v19;

    v21 = [v9 objectForKeyedSubscript:@"seats"];
    v22 = [[PKSeatingInformation alloc] initFromSemantic:v21];
    seatingInformation = self->_seatingInformation;
    self->_seatingInformation = v22;
  }

  return v10;
}

- (BOOL)isEqualToMetadata:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  if ([(PKPassUpcomingPassInformationEntryMetadata *)&v19 isEqualToMetadata:v4])
  {
    v5 = v4;
    v6 = v5;
    if (self->_unannounced != *(v5 + 64) || self->_undetermined != *(v5 + 65) || self->_allDay != *(v5 + 66))
    {
      goto LABEL_22;
    }

    v7 = v5[9];
    v8 = self->_venueName;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {

        goto LABEL_22;
      }

      v13 = [(NSString *)v8 isEqualToString:v9];

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    venueLocation = self->_venueLocation;
    v15 = v6[11];
    if (venueLocation && v15)
    {
      if ([(PKLocation *)venueLocation isEqual:?])
      {
LABEL_18:
        seatingInformation = self->_seatingInformation;
        v17 = v6[12];
        if (seatingInformation && v17)
        {
          v12 = [(PKSeatingInformation *)seatingInformation isEqual:?];
        }

        else
        {
          v12 = seatingInformation == v17;
        }

        goto LABEL_23;
      }
    }

    else if (venueLocation == v15)
    {
      goto LABEL_18;
    }

LABEL_22:
    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (PKPassUpcomingPassInformationEntryMetadataEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  v5 = [(PKPassUpcomingPassInformationEntryMetadata *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_unannounced = [v4 decodeBoolForKey:@"isUnannounced"];
    v5->_undetermined = [v4 decodeBoolForKey:@"isUndetermined"];
    v5->_allDay = [v4 decodeBoolForKey:@"isAllDay"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueName"];
    venueName = v5->_venueName;
    v5->_venueName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueRegionName"];
    venueRegionName = v5->_venueRegionName;
    v5->_venueRegionName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueLocation"];
    venueLocation = v5->_venueLocation;
    v5->_venueLocation = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seatingInformation"];
    seatingInformation = v5->_seatingInformation;
    v5->_seatingInformation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  v4 = a3;
  [(PKPassUpcomingPassInformationEntryMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_unannounced forKey:{@"isUnannounced", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_undetermined forKey:@"isUndetermined"];
  [v4 encodeBool:self->_allDay forKey:@"isAllDay"];
  [v4 encodeObject:self->_venueName forKey:@"venueName"];
  [v4 encodeObject:self->_venueRegionName forKey:@"venueRegionName"];
  [v4 encodeObject:self->_venueLocation forKey:@"venueLocation"];
  [v4 encodeObject:self->_seatingInformation forKey:@"seatingInformation"];
}

@end