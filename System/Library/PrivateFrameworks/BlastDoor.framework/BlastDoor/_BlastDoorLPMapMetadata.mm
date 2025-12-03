@interface _BlastDoorLPMapMetadata
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)location;
- (_BlastDoorLPMapMetadata)init;
- (_BlastDoorLPMapMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPMapMetadata

- (_BlastDoorLPMapMetadata)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = _BlastDoorLPMapMetadata;
  v2 = [(_BlastDoorLPMapMetadata *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_storeFrontImage = *MEMORY[0x277CE4278];
    v4 = v2;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (_BlastDoorLPMapMetadata)initWithCoder:(id)coder
{
  v63 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v62.receiver = self;
  v62.super_class = _BlastDoorLPMapMetadata;
  v5 = [(_BlastDoorLPMapMetadata *)&v62 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = decodeNumberForKey(coderCopy, @"locationLatitude");
    v9 = decodeNumberForKey(coderCopy, @"locationLongitude");
    v10 = v9;
    v11 = (v5 + 160);
    if (v8 && v9)
    {
      [v8 doubleValue];
      v13 = v12;
      [v10 doubleValue];
      v15 = CLLocationCoordinate2DMake(v13, v14);
      *v11 = v15.latitude;
      *(v5 + 21) = *&v15.longitude;
    }

    else
    {
      *v11 = *MEMORY[0x277CE4278];
    }

    v16 = decodeStringForKey(coderCopy, @"address");
    v17 = *(v5 + 3);
    *(v5 + 3) = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy _bd_lp_strictlyDecodeObjectOfClasses:v20 forKey:@"addressComponents"];
    v22 = *(v5 + 4);
    *(v5 + 4) = v21;

    v23 = decodeStringForKey(coderCopy, @"category");
    v24 = *(v5 + 5);
    *(v5 + 5) = v23;

    v25 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"categoryIcon"];
    v26 = *(v5 + 6);
    *(v5 + 6) = v25;

    v27 = decodeStringForKey(coderCopy, @"searchQuery");
    v28 = *(v5 + 7);
    *(v5 + 7) = v27;

    v29 = decodeStringForKey(coderCopy, @"directionsType");
    v30 = *(v5 + 8);
    *(v5 + 8) = v29;

    v31 = decodeNumberForKey(coderCopy, @"transportType");
    v32 = *(v5 + 9);
    *(v5 + 9) = v31;

    v33 = decodeStringForKey(coderCopy, @"directionsSourceAddress");
    v34 = *(v5 + 10);
    *(v5 + 10) = v33;

    v35 = MEMORY[0x277CBEB98];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy _bd_lp_strictlyDecodeObjectOfClasses:v37 forKey:@"directionsSourceAddressComponents"];
    v39 = *(v5 + 11);
    *(v5 + 11) = v38;

    v40 = decodeStringForKey(coderCopy, @"directionsSourceLocationName");
    v41 = *(v5 + 12);
    *(v5 + 12) = v40;

    v42 = decodeStringForKey(coderCopy, @"directionsDestinationAddress");
    v43 = *(v5 + 13);
    *(v5 + 13) = v42;

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [coderCopy _bd_lp_strictlyDecodeObjectOfClasses:v46 forKey:@"directionsDestinationAddressComponents"];
    v48 = *(v5 + 14);
    *(v5 + 14) = v47;

    v49 = decodeStringForKey(coderCopy, @"directionsDestinationLocationName");
    v50 = *(v5 + 15);
    *(v5 + 15) = v49;

    v51 = decodeNumberForKey(coderCopy, @"distance");
    v52 = *(v5 + 16);
    *(v5 + 16) = v51;

    v53 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"image"];
    v54 = *(v5 + 17);
    *(v5 + 17) = v53;

    v55 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"darkImage"];
    v56 = *(v5 + 18);
    *(v5 + 18) = v55;

    v57 = [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"storeFront"];
    v58 = *(v5 + 19);
    *(v5 + 19) = v57;

    v5[9] = [coderCopy decodeBoolForKey:@"isPointOfInterest"];
    v59 = v5;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _bd_lp_encodeObjectIfNotNil:*&self->_isPointOfInterest forKey:@"name"];
  if (CLLocationCoordinate2DIsValid(*&self->_storeFrontImage))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&self->_storeFrontImage];
    [coderCopy _bd_lp_encodeObjectIfNotNil:v4 forKey:@"locationLatitude"];

    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_location.latitude];
    [coderCopy _bd_lp_encodeObjectIfNotNil:v5 forKey:@"locationLongitude"];
  }

  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_name forKey:@"address"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_address forKey:@"addressComponents"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_addressComponents forKey:@"category"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_category forKey:@"categoryIcon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_categoryIcon forKey:@"searchQuery"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_searchQuery forKey:@"directionsType"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsType forKey:@"transportType"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_transportType forKey:@"directionsSourceAddress"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsSourceAddress forKey:@"directionsSourceAddressComponents"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsSourceAddressComponents forKey:@"directionsSourceLocationName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsSourceLocationName forKey:@"directionsDestinationAddress"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsDestinationAddress forKey:@"directionsDestinationAddressComponents"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsDestinationAddressComponents forKey:@"directionsDestinationLocationName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_directionsDestinationLocationName forKey:@"distance"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_distance forKey:@"image"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"darkImage"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_darkImage forKey:@"storeFront"];
  [coderCopy encodeBool:*(&self->super.__dummyPropertyForObservation + 1) forKey:@"isPointOfInterest"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPMapMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(_BlastDoorLPMapMetadata *)self name];
    [(_BlastDoorLPMapMetadata *)v4 setName:name];

    [(_BlastDoorLPMapMetadata *)self location];
    [(_BlastDoorLPMapMetadata *)v4 setLocation:?];
    address = [(_BlastDoorLPMapMetadata *)self address];
    [(_BlastDoorLPMapMetadata *)v4 setAddress:address];

    addressComponents = [(_BlastDoorLPMapMetadata *)self addressComponents];
    [(_BlastDoorLPMapMetadata *)v4 setAddressComponents:addressComponents];

    category = [(_BlastDoorLPMapMetadata *)self category];
    [(_BlastDoorLPMapMetadata *)v4 setCategory:category];

    categoryIcon = [(_BlastDoorLPMapMetadata *)self categoryIcon];
    [(_BlastDoorLPMapMetadata *)v4 setCategoryIcon:categoryIcon];

    searchQuery = [(_BlastDoorLPMapMetadata *)self searchQuery];
    [(_BlastDoorLPMapMetadata *)v4 setSearchQuery:searchQuery];

    directionsType = [(_BlastDoorLPMapMetadata *)self directionsType];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsType:directionsType];

    transportType = [(_BlastDoorLPMapMetadata *)self transportType];
    [(_BlastDoorLPMapMetadata *)v4 setTransportType:transportType];

    directionsSourceAddress = [(_BlastDoorLPMapMetadata *)self directionsSourceAddress];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsSourceAddress:directionsSourceAddress];

    directionsSourceAddressComponents = [(_BlastDoorLPMapMetadata *)self directionsSourceAddressComponents];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsSourceAddressComponents:directionsSourceAddressComponents];

    directionsSourceLocationName = [(_BlastDoorLPMapMetadata *)self directionsSourceLocationName];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsSourceLocationName:directionsSourceLocationName];

    directionsDestinationAddress = [(_BlastDoorLPMapMetadata *)self directionsDestinationAddress];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsDestinationAddress:directionsDestinationAddress];

    directionsDestinationAddressComponents = [(_BlastDoorLPMapMetadata *)self directionsDestinationAddressComponents];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsDestinationAddressComponents:directionsDestinationAddressComponents];

    directionsDestinationLocationName = [(_BlastDoorLPMapMetadata *)self directionsDestinationLocationName];
    [(_BlastDoorLPMapMetadata *)v4 setDirectionsDestinationLocationName:directionsDestinationLocationName];

    distance = [(_BlastDoorLPMapMetadata *)self distance];
    [(_BlastDoorLPMapMetadata *)v4 setDistance:distance];

    image = [(_BlastDoorLPMapMetadata *)self image];
    [(_BlastDoorLPMapMetadata *)v4 setImage:image];

    darkImage = [(_BlastDoorLPMapMetadata *)self darkImage];
    [(_BlastDoorLPMapMetadata *)v4 setDarkImage:darkImage];

    storeFrontImage = [(_BlastDoorLPMapMetadata *)self storeFrontImage];
    [(_BlastDoorLPMapMetadata *)v4 setStoreFrontImage:storeFrontImage];

    [(_BlastDoorLPMapMetadata *)v4 setIsPointOfInterest:[(_BlastDoorLPMapMetadata *)self isPointOfInterest]];
    v23 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v29.receiver = self;
  v29.super_class = _BlastDoorLPMapMetadata;
  if ([(_BlastDoorLPMapMetadata *)&v29 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = *(v6 + 2);
      if (v7 | *&self->_isPointOfInterest && ![v7 isEqual:?])
      {
        goto LABEL_8;
      }

      v8 = v6 + 20;
      if (v6[21] != self->_location.latitude)
      {
        goto LABEL_8;
      }

      v9 = *v8;
      if (*v8 != *&self->_storeFrontImage)
      {
        goto LABEL_8;
      }

      v12 = *(v6 + 3);
      if (v12 | self->_name)
      {
        if (![v12 isEqual:v9])
        {
          goto LABEL_8;
        }
      }

      v13 = *(v6 + 4);
      if (v13 | self->_address && ![v13 isEqual:v9])
      {
        goto LABEL_8;
      }

      v14 = *(v6 + 5);
      if (v14 | self->_addressComponents && ![v14 isEqual:v9])
      {
        goto LABEL_8;
      }

      v15 = *(v6 + 6);
      if (v15 | self->_category && ![v15 isEqual:v9])
      {
        goto LABEL_8;
      }

      v16 = *(v6 + 7);
      if (v16 | self->_categoryIcon && ![v16 isEqual:v9])
      {
        goto LABEL_8;
      }

      v17 = *(v6 + 8);
      if (v17 | self->_searchQuery && ![v17 isEqual:v9])
      {
        goto LABEL_8;
      }

      v18 = *(v6 + 9);
      if (v18 | self->_directionsType && ![v18 isEqual:v9])
      {
        goto LABEL_8;
      }

      v19 = *(v6 + 10);
      if (v19 | self->_transportType && ![v19 isEqual:v9])
      {
        goto LABEL_8;
      }

      v20 = *(v6 + 11);
      if (v20 | self->_directionsSourceAddress && ![v20 isEqual:v9])
      {
        goto LABEL_8;
      }

      v21 = *(v6 + 12);
      if (v21 | self->_directionsSourceAddressComponents && ![v21 isEqual:v9])
      {
        goto LABEL_8;
      }

      if (((v22 = *(v6 + 13), !(v22 | self->_directionsSourceLocationName)) || [v22 isEqual:v9]) && ((v23 = *(v6 + 14), !(v23 | self->_directionsDestinationAddress)) || objc_msgSend(v23, "isEqual:", v9)) && ((v24 = *(v6 + 15), !(v24 | self->_directionsDestinationAddressComponents)) || objc_msgSend(v24, "isEqual:", v9)) && ((v25 = *(v6 + 16), !(v25 | self->_directionsDestinationLocationName)) || objc_msgSend(v25, "isEqual:", v9)) && ((v26 = *(v6 + 17), !(v26 | self->_distance)) || objc_msgSend(v26, "isEqual:", v9)) && ((v27 = *(v6 + 18), !(v27 | self->_image)) || objc_msgSend(v27, "isEqual:", v9)) && ((v28 = *(v6 + 19), !(v28 | self->_darkImage)) || objc_msgSend(v28, "isEqual:", v9)))
      {
        v5 = *(v6 + 9) == *(&self->super.__dummyPropertyForObservation + 1);
      }

      else
      {
LABEL_8:
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  v3 = (fields + 16);
  v4 = *(fields + 2);
  fieldsCopy = fields;
  v4();
  (*v3)(fieldsCopy, @"darkImage");
  (*v3)(fieldsCopy, @"storeFrontImage");
  (*v3)(fieldsCopy, @"categoryIcon");
}

- (CLLocationCoordinate2D)location
{
  storeFrontImage = self->_storeFrontImage;
  latitude = self->_location.latitude;
  result.longitude = latitude;
  result.latitude = *&storeFrontImage;
  return result;
}

@end