@interface DNDLifetimeDetails
+ (id)lifetimeDetailsForEvent:(id)event relativeToDate:(id)date;
+ (id)lifetimeDetailsForOneHour;
+ (id)lifetimeDetailsForPlaceInference:(id)inference;
+ (id)lifetimeDetailsUntilEvening;
+ (id)lifetimeDetailsUntilMorning;
- (BOOL)isEqual:(id)equal;
- (DNDLifetimeDetails)initWithIdentifier:(id)identifier name:(id)name metadata:(id)metadata;
- (id)description;
- (unint64_t)hash;
@end

@implementation DNDLifetimeDetails

+ (id)lifetimeDetailsForPlaceInference:(id)inference
{
  inferenceCopy = inference;
  dndk_localizationBundle = [MEMORY[0x277CCA8D8] dndk_localizationBundle];
  v5 = [dndk_localizationBundle localizedStringForKey:@"DND_UNTIL_I_LEAVE_LIFETIME_TITLE" value:&stru_285C22820 table:0];

  preferredName = [inferenceCopy preferredName];
  if ([preferredName length])
  {
    [inferenceCopy confidence];
    if (v7 < 0.7)
    {
      v8 = @"DND_UNTIL_I_LEAVE_LIFETIME_WITH_LOW_CONFIDENCE_LOI_METADATA";
    }

    else
    {
      v8 = @"DND_UNTIL_I_LEAVE_LIFETIME_WITH_HIGH_CONFIDENCE_LOI_METADATA";
    }

    v9 = DNDLocalizedStringHelper(@"%@", v8);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, preferredName];
  }

  else
  {
    v10 = 0;
  }

  v11 = [[DNDLifetimeDetails alloc] initWithIdentifier:@"com.apple.donotdisturb.kit.lifetime.location" name:v5 metadata:v10];

  return v11;
}

+ (id)lifetimeDetailsForEvent:(id)event relativeToDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  dndk_localizationBundle = [MEMORY[0x277CCA8D8] dndk_localizationBundle];
  v8 = [dndk_localizationBundle localizedStringForKey:@"DND_UNTIL_END_THIS_EVENT_TITLE" value:&stru_285C22820 table:0];

  if (eventCopy)
  {
    startDate = [eventCopy startDate];
    endDate = [eventCopy endDate];
    v27 = dateCopy;
    if ([dateCopy compare:startDate] == -1)
    {
      dndk_localizationBundle2 = [MEMORY[0x277CCA8D8] dndk_localizationBundle];
      v12 = [dndk_localizationBundle2 localizedStringForKey:@"DND_UNTIL_END_NEXT_EVENT_TITLE" value:&stru_285C22820 table:0];

      v8 = v12;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v28 = 0;
    v29 = 0;
    [currentCalendar getHour:&v29 minute:0 second:0 nanosecond:0 fromDate:startDate];
    [currentCalendar getHour:&v28 minute:0 second:0 nanosecond:0 fromDate:endDate];
    v14 = v29 / 12;
    v15 = v28 / 12;
    mEMORY[0x277CF0BF0] = [MEMORY[0x277CF0BF0] sharedInstance];
    v17 = mEMORY[0x277CF0BF0];
    v26 = v8;
    if (v14 == v15)
    {
      [mEMORY[0x277CF0BF0] formatDateAsTimeNoAMPM:startDate];
    }

    else
    {
      [mEMORY[0x277CF0BF0] formatDateAsTimeStyle:startDate];
    }
    v19 = ;
    v20 = [v17 formatDateAsTimeStyle:endDate];
    title = [eventCopy title];
    v22 = DNDLocalizedStringHelper(@"%@%@%@", @"DND_UNTIL_END_EVENT_DURATION_DESCRIPTION");
    [MEMORY[0x277CCACA8] stringWithFormat:v22, v19, v20, title];
    v18 = v23 = endDate;

    v8 = v26;
    dateCopy = v27;
  }

  else
  {
    v18 = 0;
  }

  v24 = [[DNDLifetimeDetails alloc] initWithIdentifier:@"com.apple.donotdisturb.kit.lifetime.event" name:v8 metadata:v18];

  return v24;
}

+ (id)lifetimeDetailsForOneHour
{
  dndk_localizationBundle = [MEMORY[0x277CCA8D8] dndk_localizationBundle];
  v3 = [dndk_localizationBundle localizedStringForKey:@"DND_ONE_HOUR_LIFETIME_TITLE" value:&stru_285C22820 table:0];

  v4 = [[DNDLifetimeDetails alloc] initWithIdentifier:@"com.apple.donotdisturb.kit.lifetime.one-hour" name:v3 metadata:&stru_285C22820];

  return v4;
}

+ (id)lifetimeDetailsUntilEvening
{
  dndk_localizationBundle = [MEMORY[0x277CCA8D8] dndk_localizationBundle];
  v3 = [dndk_localizationBundle localizedStringForKey:@"DND_UNTIL_EVENING_LIFETIME_TITLE" value:&stru_285C22820 table:0];

  v4 = [[DNDLifetimeDetails alloc] initWithIdentifier:@"com.apple.donotdisturb.kit.lifetime.evening" name:v3 metadata:&stru_285C22820];

  return v4;
}

+ (id)lifetimeDetailsUntilMorning
{
  dndk_localizationBundle = [MEMORY[0x277CCA8D8] dndk_localizationBundle];
  v3 = [dndk_localizationBundle localizedStringForKey:@"DND_UNTIL_MORNING_LIFETIME_TITLE" value:&stru_285C22820 table:0];

  v4 = [[DNDLifetimeDetails alloc] initWithIdentifier:@"com.apple.donotdisturb.kit.lifetime.morning" name:v3 metadata:&stru_285C22820];

  return v4;
}

- (DNDLifetimeDetails)initWithIdentifier:(id)identifier name:(id)name metadata:(id)metadata
{
  identifierCopy = identifier;
  nameCopy = name;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = DNDLifetimeDetails;
  v11 = [(DNDLifetimeDetails *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v14;

    v16 = [metadataCopy copy];
    metadata = v11->_metadata;
    v11->_metadata = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  identifier = [(DNDLifetimeDetails *)self identifier];
  v4 = [identifier hash];
  name = [(DNDLifetimeDetails *)self name];
  v6 = [name hash] ^ v4;
  metadata = [(DNDLifetimeDetails *)self metadata];
  v8 = [metadata hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = [(DNDLifetimeDetails *)self identifier];
      identifier2 = [(DNDLifetimeDetails *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(DNDLifetimeDetails *)self identifier];
        if (!identifier3)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = identifier3;
        identifier4 = [(DNDLifetimeDetails *)v6 identifier];
        if (!identifier4)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        identifier5 = [(DNDLifetimeDetails *)self identifier];
        identifier6 = [(DNDLifetimeDetails *)v6 identifier];
        if (![identifier5 isEqual:identifier6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = identifier6;
        v37 = identifier5;
        v38 = identifier4;
        v39 = v10;
      }

      name = [(DNDLifetimeDetails *)self name];
      name2 = [(DNDLifetimeDetails *)v6 name];
      if (name != name2)
      {
        name3 = [(DNDLifetimeDetails *)self name];
        if (name3)
        {
          v17 = name3;
          name4 = [(DNDLifetimeDetails *)v6 name];
          if (name4)
          {
            v35 = name;
            name5 = [(DNDLifetimeDetails *)self name];
            identifier6 = [(DNDLifetimeDetails *)v6 name];
            if ([name5 isEqual:identifier6])
            {
              v31 = name5;
              v32 = name4;
              v33 = v17;
LABEL_17:
              metadata = [(DNDLifetimeDetails *)self metadata];
              metadata2 = [(DNDLifetimeDetails *)v6 metadata];
              v22 = metadata2;
              if (metadata == metadata2)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = identifier6;
                metadata3 = [(DNDLifetimeDetails *)self metadata];
                if (metadata3)
                {
                  v24 = metadata3;
                  metadata4 = [(DNDLifetimeDetails *)v6 metadata];
                  if (metadata4)
                  {
                    v30 = metadata4;
                    metadata5 = [(DNDLifetimeDetails *)self metadata];
                    metadata6 = [(DNDLifetimeDetails *)v6 metadata];
                    v13 = [metadata5 isEqual:metadata6];

                    metadata4 = v30;
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                else
                {

                  v13 = 0;
                }

                identifier6 = v34;
                v27 = v35;
              }

              if (v27 != name2)
              {
              }

LABEL_34:
              identifier4 = v38;
              v10 = v39;
              identifier6 = v36;
              identifier5 = v37;
              if (identifier != identifier2)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            name = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = name;
      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_38:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(DNDLifetimeDetails *)self identifier];
  name = [(DNDLifetimeDetails *)self name];
  metadata = [(DNDLifetimeDetails *)self metadata];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: '%@'; name: '%@'; metadata: '%@'>", v4, self, identifier, name, metadata];;

  return v8;
}

@end