@interface PKPassUpcomingPassInformationEntryMetadataEvent
- (BOOL)isEqualToMetadata:(id)metadata;
- (BOOL)populateFromDictionary:(id)dictionary bundle:(id)bundle semantics:(id)semantics;
- (PKPassUpcomingPassInformationEntryMetadataEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpcomingPassInformationEntryMetadataEvent

- (BOOL)populateFromDictionary:(id)dictionary bundle:(id)bundle semantics:(id)semantics
{
  dictionaryCopy = dictionary;
  semanticsCopy = semantics;
  v25.receiver = self;
  v25.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  v10 = [(PKPassUpcomingPassInformationEntryMetadata *)&v25 populateFromDictionary:dictionaryCopy bundle:bundle semantics:semanticsCopy];
  if (v10)
  {
    v11 = [dictionaryCopy PKDictionaryForKey:@"dateInformation"];
    self->_unannounced = [v11 PKBoolForKey:@"isUnannounced"];
    self->_undetermined = [v11 PKBoolForKey:@"isUndetermined"];
    self->_allDay = [v11 PKBoolForKey:@"isAllDay"];
    v12 = [semanticsCopy objectForKeyedSubscript:@"venueName"];
    stringValue = [v12 stringValue];
    venueName = self->_venueName;
    self->_venueName = stringValue;

    v15 = [semanticsCopy objectForKeyedSubscript:@"venueRegionName"];
    stringValue2 = [v15 stringValue];
    venueRegionName = self->_venueRegionName;
    self->_venueRegionName = stringValue2;

    v18 = [semanticsCopy objectForKeyedSubscript:@"venueLocation"];
    locationValue = [v18 locationValue];
    venueLocation = self->_venueLocation;
    self->_venueLocation = locationValue;

    v21 = [semanticsCopy objectForKeyedSubscript:@"seats"];
    v22 = [[PKSeatingInformation alloc] initFromSemantic:v21];
    seatingInformation = self->_seatingInformation;
    self->_seatingInformation = v22;
  }

  return v10;
}

- (BOOL)isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  if ([(PKPassUpcomingPassInformationEntryMetadata *)&v19 isEqualToMetadata:metadataCopy])
  {
    v5 = metadataCopy;
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

- (PKPassUpcomingPassInformationEntryMetadataEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  v5 = [(PKPassUpcomingPassInformationEntryMetadata *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_unannounced = [coderCopy decodeBoolForKey:@"isUnannounced"];
    v5->_undetermined = [coderCopy decodeBoolForKey:@"isUndetermined"];
    v5->_allDay = [coderCopy decodeBoolForKey:@"isAllDay"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"venueName"];
    venueName = v5->_venueName;
    v5->_venueName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"venueRegionName"];
    venueRegionName = v5->_venueRegionName;
    v5->_venueRegionName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"venueLocation"];
    venueLocation = v5->_venueLocation;
    v5->_venueLocation = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seatingInformation"];
    seatingInformation = v5->_seatingInformation;
    v5->_seatingInformation = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassUpcomingPassInformationEntryMetadataEvent;
  coderCopy = coder;
  [(PKPassUpcomingPassInformationEntryMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_unannounced forKey:{@"isUnannounced", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_undetermined forKey:@"isUndetermined"];
  [coderCopy encodeBool:self->_allDay forKey:@"isAllDay"];
  [coderCopy encodeObject:self->_venueName forKey:@"venueName"];
  [coderCopy encodeObject:self->_venueRegionName forKey:@"venueRegionName"];
  [coderCopy encodeObject:self->_venueLocation forKey:@"venueLocation"];
  [coderCopy encodeObject:self->_seatingInformation forKey:@"seatingInformation"];
}

@end