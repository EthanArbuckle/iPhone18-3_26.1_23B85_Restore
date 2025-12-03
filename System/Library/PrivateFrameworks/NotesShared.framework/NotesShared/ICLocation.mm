@interface ICLocation
+ (id)searchStringsForPlacemark:(id)placemark;
- (CLPlacemark)placemark;
- (NSString)formattedAddress;
- (id)searchStrings;
- (void)didTurnIntoFault;
- (void)setLocationFromPlacemark:(id)placemark;
- (void)setLocationFromURL:(id)l;
- (void)setPlacemark:(id)placemark;
@end

@implementation ICLocation

- (void)setPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  if (([(CLPlacemark *)self->_placemark isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_placemark, placemark);
    if (placemarkCopy)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v5 encodeObject:placemarkCopy forKey:@"placemark"];
      encodedData = [v5 encodedData];
      [(ICLocation *)self setPlacemarkData:encodedData];
    }

    else
    {
      [(ICLocation *)self setPlacemarkData:0];
    }
  }
}

- (CLPlacemark)placemark
{
  placemark = self->_placemark;
  if (!placemark)
  {
    placemarkData = [(ICLocation *)self placemarkData];
    if (placemarkData)
    {
      v11 = 0;
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:placemarkData error:&v11];
      v6 = v11;
      if (v6)
      {
        v7 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(ICAttachmentPersistenceAdditions) loadFromArchive:v6 dataPersister:v7 withIdentifierMap:?];
        }
      }

      v8 = [v5 decodeObjectForKey:@"placemark"];
      v9 = self->_placemark;
      self->_placemark = v8;
    }

    placemark = self->_placemark;
  }

  return placemark;
}

+ (id)searchStringsForPlacemark:(id)placemark
{
  v41 = *MEMORY[0x277D85DE8];
  placemarkCopy = placemark;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (placemarkCopy)
  {
    name = [placemarkCopy name];

    if (name)
    {
      name2 = [placemarkCopy name];
      [v4 addObject:name2];
    }

    thoroughfare = [placemarkCopy thoroughfare];

    if (thoroughfare)
    {
      thoroughfare2 = [placemarkCopy thoroughfare];
      [v4 addObject:thoroughfare2];
    }

    subThoroughfare = [placemarkCopy subThoroughfare];

    if (subThoroughfare)
    {
      subThoroughfare2 = [placemarkCopy subThoroughfare];
      [v4 addObject:subThoroughfare2];
    }

    locality = [placemarkCopy locality];

    if (locality)
    {
      locality2 = [placemarkCopy locality];
      [v4 addObject:locality2];
    }

    subLocality = [placemarkCopy subLocality];

    if (subLocality)
    {
      subLocality2 = [placemarkCopy subLocality];
      [v4 addObject:subLocality2];
    }

    administrativeArea = [placemarkCopy administrativeArea];

    if (administrativeArea)
    {
      administrativeArea2 = [placemarkCopy administrativeArea];
      [v4 addObject:administrativeArea2];
    }

    subAdministrativeArea = [placemarkCopy subAdministrativeArea];

    if (subAdministrativeArea)
    {
      subAdministrativeArea2 = [placemarkCopy subAdministrativeArea];
      [v4 addObject:subAdministrativeArea2];
    }

    postalCode = [placemarkCopy postalCode];

    if (postalCode)
    {
      postalCode2 = [placemarkCopy postalCode];
      [v4 addObject:postalCode2];
    }

    iSOcountryCode = [placemarkCopy ISOcountryCode];

    if (iSOcountryCode)
    {
      iSOcountryCode2 = [placemarkCopy ISOcountryCode];
      [v4 addObject:iSOcountryCode2];
    }

    country = [placemarkCopy country];

    if (country)
    {
      country2 = [placemarkCopy country];
      [v4 addObject:country2];
    }

    inlandWater = [placemarkCopy inlandWater];

    if (inlandWater)
    {
      inlandWater2 = [placemarkCopy inlandWater];
      [v4 addObject:inlandWater2];
    }

    ocean = [placemarkCopy ocean];

    if (ocean)
    {
      ocean2 = [placemarkCopy ocean];
      [v4 addObject:ocean2];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    areasOfInterest = [placemarkCopy areasOfInterest];
    v30 = [areasOfInterest countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(areasOfInterest);
          }

          [v4 addObject:*(*(&v36 + 1) + 8 * i)];
        }

        v31 = [areasOfInterest countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v31);
    }
  }

  v34 = [v4 copy];

  return v34;
}

- (id)searchStrings
{
  v3 = objc_opt_class();
  placemark = [(ICLocation *)self placemark];
  v5 = [v3 searchStringsForPlacemark:placemark];

  return v5;
}

- (NSString)formattedAddress
{
  v3 = objc_alloc_init(MEMORY[0x277CBDB60]);
  placemark = [(ICLocation *)self placemark];
  thoroughfare = [placemark thoroughfare];
  [v3 setStreet:thoroughfare];

  placemark2 = [(ICLocation *)self placemark];
  subLocality = [placemark2 subLocality];
  [v3 setSubLocality:subLocality];

  placemark3 = [(ICLocation *)self placemark];
  locality = [placemark3 locality];
  [v3 setCity:locality];

  placemark4 = [(ICLocation *)self placemark];
  subAdministrativeArea = [placemark4 subAdministrativeArea];
  [v3 setSubAdministrativeArea:subAdministrativeArea];

  placemark5 = [(ICLocation *)self placemark];
  administrativeArea = [placemark5 administrativeArea];
  [v3 setState:administrativeArea];

  placemark6 = [(ICLocation *)self placemark];
  postalCode = [placemark6 postalCode];
  [v3 setPostalCode:postalCode];

  placemark7 = [(ICLocation *)self placemark];
  country = [placemark7 country];
  [v3 setCountry:country];

  placemark8 = [(ICLocation *)self placemark];
  iSOcountryCode = [placemark8 ISOcountryCode];
  [v3 setISOCountryCode:iSOcountryCode];

  v20 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v3 style:0];

  return v20;
}

- (void)setLocationFromURL:(id)l
{
  lCopy = l;
  if ([MEMORY[0x277D0EBE8] isValidMapURL:lCopy])
  {
    v5 = [objc_alloc(MEMORY[0x277D0EBE8]) initWithURL:lCopy];
    v6 = 0.0;
    v7 = 0.0;
    if ([v5 parseIncludingCustomParameters:1])
    {
      if ([v5 exactPositionSpecified])
      {
        [v5 centerCoordinate];
      }

      else
      {
        directionsDestinationAddressString = [v5 directionsDestinationAddressString];
        if (directionsDestinationAddressString)
        {
          v11 = directionsDestinationAddressString;
          v12 = objc_msgSend(directionsDestinationAddressString, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_2827172C0;

          v13 = [v12 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_2827172C0);

          v14 = [v13 componentsSeparatedByString:{@", "}];
          if ([v14 count] < 2)
          {
            v17 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(ICLocation *)lCopy setLocationFromURL:v14, v17];
            }
          }

          else
          {
            v15 = [v14 objectAtIndex:0];
            [v15 doubleValue];
            v7 = v16;

            v17 = [v14 objectAtIndex:1];
            [v17 doubleValue];
            v6 = v18;
          }

          goto LABEL_15;
        }

        [v5 searchCoordinate];
      }

      v7 = v8;
      v6 = v9;
    }

LABEL_15:
    [(ICLocation *)self setLatitude:v7];
    [(ICLocation *)self setLongitude:v6];
    goto LABEL_16;
  }

  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ICLocation *)lCopy setLocationFromURL:v5];
  }

LABEL_16:
}

- (void)setLocationFromPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  [(ICLocation *)self setPlacemark:placemarkCopy];
  location = [placemarkCopy location];
  [location coordinate];
  [(ICLocation *)self setLatitude:?];

  location2 = [placemarkCopy location];

  [location2 coordinate];
  [(ICLocation *)self setLongitude:v6];
}

- (void)didTurnIntoFault
{
  v4.receiver = self;
  v4.super_class = ICLocation;
  [(ICLocation *)&v4 didTurnIntoFault];
  placemark = self->_placemark;
  self->_placemark = 0;
}

- (void)setLocationFromURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Invalid map URL: %@", &v2, 0xCu);
}

- (void)setLocationFromURL:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Not enough coordinates to get directions from url %@ with coordinates: %@", &v3, 0x16u);
}

@end