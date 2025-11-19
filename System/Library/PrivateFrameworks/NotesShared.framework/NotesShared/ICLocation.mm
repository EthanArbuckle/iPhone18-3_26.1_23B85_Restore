@interface ICLocation
+ (id)searchStringsForPlacemark:(id)a3;
- (CLPlacemark)placemark;
- (NSString)formattedAddress;
- (id)searchStrings;
- (void)didTurnIntoFault;
- (void)setLocationFromPlacemark:(id)a3;
- (void)setLocationFromURL:(id)a3;
- (void)setPlacemark:(id)a3;
@end

@implementation ICLocation

- (void)setPlacemark:(id)a3
{
  v7 = a3;
  if (([(CLPlacemark *)self->_placemark isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_placemark, a3);
    if (v7)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v5 encodeObject:v7 forKey:@"placemark"];
      v6 = [v5 encodedData];
      [(ICLocation *)self setPlacemarkData:v6];
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
    v4 = [(ICLocation *)self placemarkData];
    if (v4)
    {
      v11 = 0;
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v11];
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

+ (id)searchStringsForPlacemark:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v5 = [v3 name];

    if (v5)
    {
      v6 = [v3 name];
      [v4 addObject:v6];
    }

    v7 = [v3 thoroughfare];

    if (v7)
    {
      v8 = [v3 thoroughfare];
      [v4 addObject:v8];
    }

    v9 = [v3 subThoroughfare];

    if (v9)
    {
      v10 = [v3 subThoroughfare];
      [v4 addObject:v10];
    }

    v11 = [v3 locality];

    if (v11)
    {
      v12 = [v3 locality];
      [v4 addObject:v12];
    }

    v13 = [v3 subLocality];

    if (v13)
    {
      v14 = [v3 subLocality];
      [v4 addObject:v14];
    }

    v15 = [v3 administrativeArea];

    if (v15)
    {
      v16 = [v3 administrativeArea];
      [v4 addObject:v16];
    }

    v17 = [v3 subAdministrativeArea];

    if (v17)
    {
      v18 = [v3 subAdministrativeArea];
      [v4 addObject:v18];
    }

    v19 = [v3 postalCode];

    if (v19)
    {
      v20 = [v3 postalCode];
      [v4 addObject:v20];
    }

    v21 = [v3 ISOcountryCode];

    if (v21)
    {
      v22 = [v3 ISOcountryCode];
      [v4 addObject:v22];
    }

    v23 = [v3 country];

    if (v23)
    {
      v24 = [v3 country];
      [v4 addObject:v24];
    }

    v25 = [v3 inlandWater];

    if (v25)
    {
      v26 = [v3 inlandWater];
      [v4 addObject:v26];
    }

    v27 = [v3 ocean];

    if (v27)
    {
      v28 = [v3 ocean];
      [v4 addObject:v28];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = [v3 areasOfInterest];
    v30 = [v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(v29);
          }

          [v4 addObject:*(*(&v36 + 1) + 8 * i)];
        }

        v31 = [v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
  v4 = [(ICLocation *)self placemark];
  v5 = [v3 searchStringsForPlacemark:v4];

  return v5;
}

- (NSString)formattedAddress
{
  v3 = objc_alloc_init(MEMORY[0x277CBDB60]);
  v4 = [(ICLocation *)self placemark];
  v5 = [v4 thoroughfare];
  [v3 setStreet:v5];

  v6 = [(ICLocation *)self placemark];
  v7 = [v6 subLocality];
  [v3 setSubLocality:v7];

  v8 = [(ICLocation *)self placemark];
  v9 = [v8 locality];
  [v3 setCity:v9];

  v10 = [(ICLocation *)self placemark];
  v11 = [v10 subAdministrativeArea];
  [v3 setSubAdministrativeArea:v11];

  v12 = [(ICLocation *)self placemark];
  v13 = [v12 administrativeArea];
  [v3 setState:v13];

  v14 = [(ICLocation *)self placemark];
  v15 = [v14 postalCode];
  [v3 setPostalCode:v15];

  v16 = [(ICLocation *)self placemark];
  v17 = [v16 country];
  [v3 setCountry:v17];

  v18 = [(ICLocation *)self placemark];
  v19 = [v18 ISOcountryCode];
  [v3 setISOCountryCode:v19];

  v20 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v3 style:0];

  return v20;
}

- (void)setLocationFromURL:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D0EBE8] isValidMapURL:v4])
  {
    v5 = [objc_alloc(MEMORY[0x277D0EBE8]) initWithURL:v4];
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
        v10 = [v5 directionsDestinationAddressString];
        if (v10)
        {
          v11 = v10;
          v12 = objc_msgSend(v10, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_2827172C0;

          v13 = [v12 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_2827172C0);

          v14 = [v13 componentsSeparatedByString:{@", "}];
          if ([v14 count] < 2)
          {
            v17 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(ICLocation *)v4 setLocationFromURL:v14, v17];
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
    [(ICLocation *)v4 setLocationFromURL:v5];
  }

LABEL_16:
}

- (void)setLocationFromPlacemark:(id)a3
{
  v4 = a3;
  [(ICLocation *)self setPlacemark:v4];
  v5 = [v4 location];
  [v5 coordinate];
  [(ICLocation *)self setLatitude:?];

  v7 = [v4 location];

  [v7 coordinate];
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