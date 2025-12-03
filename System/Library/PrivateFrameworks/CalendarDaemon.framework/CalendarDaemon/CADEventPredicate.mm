@interface CADEventPredicate
+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars;
+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode;
+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars;
- (BOOL)isEqual:(id)equal;
- (CADEventPredicate)initWithCoder:(id)coder;
- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode;
- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars;
- (id)concisePublicDescription;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)copyWithStartDate:(id)date endDate:(id)endDate;
- (id)defaultPropertiesToLoad;
- (id)generateDatesForEvent:(void *)event;
- (id)incrementalPredicatesToExpandResultsFromPredicate:(id)predicate filteringRequiredToRemoveEventsNoLongerMatched:(BOOL *)matched;
- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset;
- (id)predicateFormat;
- (id)relatedObjectPropertiesToLoad;
- (unint64_t)hash;
- (void)beginSignpostWithHandle:(id)handle signpostID:(unint64_t)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventPredicate

- (id)defaultPropertiesToLoad
{
  propertyLoadMode = [(CADEventPredicate *)self propertyLoadMode];
  if (propertyLoadMode == 2)
  {
    if (defaultPropertiesToLoad_onceToken != -1)
    {
      [CADEventPredicate defaultPropertiesToLoad];
    }

    v3 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  }

  else if (propertyLoadMode == 1)
  {
    v3 = CADEKPersistentEventDefaultPropertiesToLoad();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)relatedObjectPropertiesToLoad
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18[0] = &unk_2837C7108;
  v2 = *MEMORY[0x277CF73F0];
  v17[0] = *MEMORY[0x277CF73C8];
  v17[1] = v2;
  v3 = *MEMORY[0x277CF7400];
  v17[2] = *MEMORY[0x277CF71E8];
  v17[3] = v3;
  v4 = *MEMORY[0x277CF73F8];
  v17[4] = *MEMORY[0x277CF7418];
  v17[5] = v4;
  v5 = *MEMORY[0x277CF7410];
  v17[6] = *MEMORY[0x277CF7408];
  v17[7] = v5;
  v6 = *MEMORY[0x277CF71E0];
  v17[8] = *MEMORY[0x277CF71D0];
  v17[9] = v6;
  v7 = *MEMORY[0x277CF7420];
  v17[10] = *MEMORY[0x277CF71D8];
  v17[11] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:12];
  v19[0] = v8;
  v18[1] = &unk_2837C7120;
  v16 = *MEMORY[0x277CF73E8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v19[1] = v9;
  v18[2] = &unk_2837C7138;
  v10 = *MEMORY[0x277CF7388];
  v15[0] = *MEMORY[0x277CF73B8];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)predicateFormat
{
  v3 = objc_opt_new();
  if ([(CADEventPredicate *)self excludeTimedEvents])
  {
    [v3 addObject:@"timed"];
  }

  if ([(CADEventPredicate *)self excludeAllDayEvents])
  {
    [v3 addObject:@"allday"];
  }

  if ([(CADEventPredicate *)self excludeDeclined])
  {
    [v3 addObject:@"declined"];
  }

  if ([(CADEventPredicate *)self excludeProposed])
  {
    [v3 addObject:@"proposed"];
  }

  if ([(CADEventPredicate *)self excludeDeclinedUnlessProposed])
  {
    [v3 addObject:@"declinedUnlessProposed"];
  }

  if ([(CADEventPredicate *)self excludeNoAttendeeEvents])
  {
    [v3 addObject:@"noAttendee"];
  }

  if ([(CADEventPredicate *)self excludeNoLocationEvents])
  {
    [v3 addObject:@"noLocation"];
  }

  v4 = CADEventPredicateDescriptionDateFormatter();
  v16 = MEMORY[0x277CCACA8];
  startDate = [(EKPredicate *)self startDate];
  v6 = [v4 stringFromDate:startDate];
  endDate = [(EKPredicate *)self endDate];
  v8 = [v4 stringFromDate:endDate];
  calendars = [(EKPredicate *)self calendars];
  v10 = [CADPredicate conciseCalendarList:calendars];
  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = v11;
  if (self->_randomize)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v16 stringWithFormat:@"CADEventPredicate start:%@ end:%@; cals:%@, exclusions:[%@], filterdOutTitles:[%@], limit:%ld, randomize:%@", v6, v8, v10, v11, self->_filteredOutTitles, self->_limit, v13];;

  return v14;
}

- (id)concisePublicDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"CADEventPredicate"];
  v4 = CADEventPredicateDescriptionDateFormatter();
  startDate = [(EKPredicate *)self startDate];
  if (startDate)
  {
    v6 = [v4 stringFromDate:startDate];
    [v3 appendFormat:@"; start:%@", v6];
  }

  endDate = [(EKPredicate *)self endDate];
  if (endDate)
  {
    v8 = [v4 stringFromDate:endDate];
    [v3 appendFormat:@"; end:%@", v8];
  }

  calendars = [(EKPredicate *)self calendars];
  if (calendars)
  {
    v10 = [CADPredicate conciseCalendarList:calendars];
    [v3 appendFormat:@"; cals:%@", v10];
  }

  if (self->_excludeTimedEvents || self->_excludeAllDayEvents || self->_excludeDeclined || self->_excludeProposed || self->_excludeDeclinedUnlessProposed || self->_excludeNoAttendeeEvents || self->_excludeNoLocationEvents)
  {
    [v3 appendString:@"; exclusions:["];
    if (self->_excludeTimedEvents)
    {
      [v3 appendString:{@"timed, "}];
    }

    if (self->_excludeAllDayEvents)
    {
      [v3 appendString:{@"allday, "}];
    }

    if (self->_excludeDeclined)
    {
      [v3 appendString:{@"declined, "}];
    }

    if (self->_excludeProposed)
    {
      [v3 appendString:{@"proposed, "}];
    }

    if (self->_excludeDeclinedUnlessProposed)
    {
      [v3 appendString:{@"declinedUnlessProposed, "}];
    }

    if (self->_excludeNoAttendeeEvents)
    {
      [v3 appendString:{@"noAttendee, "}];
    }

    if (self->_excludeNoLocationEvents)
    {
      [v3 appendString:{@"noLocation, "}];
    }

    [v3 replaceCharactersInRange:objc_msgSend(v3 withString:{"length") - 1, 1, @"]"}];
  }

  filteredOutTitles = self->_filteredOutTitles;
  if (filteredOutTitles)
  {
    [v3 appendFormat:@"; filteredOutTitles:[%lu]", -[NSSet count](filteredOutTitles, "count")];
  }

  if (self->_limit)
  {
    [v3 appendFormat:@"; limit:%ld", self->_limit];
  }

  if (self->_randomize)
  {
    [v3 appendString:@"; randomize:YES"];
  }

  return v3;
}

+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars
{
  calendarsCopy = calendars;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy calendars:calendarsCopy];

  return v13;
}

+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode
{
  calendarsCopy = calendars;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v15 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy calendars:calendarsCopy propertyLoadMode:mode];

  return v15;
}

+ (id)predicateWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars
{
  calendarsCopy = calendars;
  dCopy = d;
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v16 = [objc_alloc(objc_opt_class()) initWithStartDate:dateCopy endDate:endDateCopy timeZone:zoneCopy eventUUID:dCopy calendars:calendarsCopy];

  return v16;
}

- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone eventUUID:(id)d calendars:(id)calendars
{
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = CADEventPredicate;
  v16 = [(EKPredicate *)&v22 initWithCalendars:calendars];
  v17 = v16;
  if (!v16)
  {
LABEL_9:
    v19 = v17;
    goto LABEL_10;
  }

  if (dateCopy && endDateCopy)
  {
    [(EKPredicate *)v16 setStartDate:dateCopy];
    [(EKPredicate *)v17 setEndDate:endDateCopy];
    objc_storeStrong(&v17->super._uuid, d);
    if (zoneCopy)
    {
      v18 = [zoneCopy copy];
    }

    else
    {
      v18 = CalCopyTimeZone();
    }

    v20 = v18;
    objc_storeStrong(&v17->super._timeZone, v18);

    v17->_excludeSkippedReminders = 1;
    goto LABEL_9;
  }

  NSLog(&cfstr_WarningCadeven.isa);
  v19 = 0;
LABEL_10:

  return v19;
}

- (CADEventPredicate)initWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone calendars:(id)calendars propertyLoadMode:(unint64_t)mode
{
  result = [(CADEventPredicate *)self initWithStartDate:date endDate:endDate timeZone:zone calendars:calendars];
  if (result)
  {
    result->_propertyLoadMode = mode;
  }

  return result;
}

- (CADEventPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CADEventPredicate;
  v5 = [(EKPredicate *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->super._uuid;
    v5->super._uuid = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v10;

    v5->_propertyLoadMode = [coderCopy decodeIntegerForKey:@"propertyLoadMode"];
    v5->_shouldLoadProposedTimesInRange = [coderCopy decodeBoolForKey:@"shouldLoadProposedTimesInRange"];
    v5->_excludeTimedEvents = [coderCopy decodeBoolForKey:@"excludeTimedEvents"];
    v5->_excludeAllDayEvents = [coderCopy decodeBoolForKey:@"excludeAllDayEvents"];
    v5->_excludeDeclined = [coderCopy decodeBoolForKey:@"excludeDeclined"];
    v5->_excludeProposed = [coderCopy decodeBoolForKey:@"excludeProposed"];
    v5->_excludeDeclinedUnlessProposed = [coderCopy decodeBoolForKey:@"excludeDeclinedUnlessProposed"];
    v5->_excludeNoAttendeeEvents = [coderCopy decodeBoolForKey:@"excludeNoAttendeeEvents"];
    v5->_excludeNoLocationEvents = [coderCopy decodeBoolForKey:@"excludeNoLocationEvents"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filteredOutTitles"];
    filteredOutTitles = v5->_filteredOutTitles;
    v5->_filteredOutTitles = v12;

    v5->_randomize = [coderCopy decodeBoolForKey:@"randomize"];
    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADEventPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [coderCopy encodeObject:self->super._uuid forKey:@"UUID"];
  [coderCopy encodeObject:self->super._timeZone forKey:@"timeZone"];
  [coderCopy encodeInteger:-[CADEventPredicate propertyLoadMode](self forKey:{"propertyLoadMode"), @"propertyLoadMode"}];
  [coderCopy encodeBool:self->_shouldLoadProposedTimesInRange forKey:@"shouldLoadProposedTimesInRange"];
  [coderCopy encodeBool:self->_excludeTimedEvents forKey:@"excludeTimedEvents"];
  [coderCopy encodeBool:self->_excludeAllDayEvents forKey:@"excludeAllDayEvents"];
  [coderCopy encodeBool:self->_excludeDeclined forKey:@"excludeDeclined"];
  [coderCopy encodeBool:self->_excludeProposed forKey:@"excludeProposed"];
  [coderCopy encodeBool:self->_excludeDeclinedUnlessProposed forKey:@"excludeDeclinedUnlessProposed"];
  [coderCopy encodeBool:self->_excludeNoAttendeeEvents forKey:@"excludeNoAttendeeEvents"];
  [coderCopy encodeBool:self->_excludeNoLocationEvents forKey:@"excludeNoLocationEvents"];
  [coderCopy encodeObject:self->_filteredOutTitles forKey:@"filteredOutTitles"];
  [coderCopy encodeBool:self->_randomize forKey:@"randomize"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
}

void __44__CADEventPredicate_defaultPropertiesToLoad__block_invoke()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = CADEKPersistentEventDefaultPropertiesToLoad();
  v1 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  defaultPropertiesToLoad_extendedPropertiesToLoad = v0;

  v2 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  v3 = *MEMORY[0x277CF7260];
  v8[0] = *MEMORY[0x277CF71F8];
  v8[1] = v3;
  v8[2] = *MEMORY[0x277CF7300];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];
  v6 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  defaultPropertiesToLoad_extendedPropertiesToLoad = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (id)copyWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = [CADEventPredicate alloc];
  timeZone = self->super._timeZone;
  calendars = [(EKPredicate *)self calendars];
  v11 = [(CADEventPredicate *)v8 initWithStartDate:dateCopy endDate:endDateCopy timeZone:timeZone calendars:calendars];

  title = [(EKPredicate *)self title];
  [v11 setTitle:title];

  objc_storeStrong((v11 + 16), self->super._uuid);
  [v11 setExcludeAllDayEvents:{-[CADEventPredicate excludeAllDayEvents](self, "excludeAllDayEvents")}];
  [v11 setExcludeDeclined:{-[CADEventPredicate excludeDeclined](self, "excludeDeclined")}];
  [v11 setExcludeProposed:{-[CADEventPredicate excludeProposed](self, "excludeProposed")}];
  [v11 setExcludeTimedEvents:{-[CADEventPredicate excludeTimedEvents](self, "excludeTimedEvents")}];
  [v11 setExcludeSkippedReminders:{-[CADEventPredicate excludeSkippedReminders](self, "excludeSkippedReminders")}];
  [v11 setExcludeNoAttendeeEvents:{-[CADEventPredicate excludeNoAttendeeEvents](self, "excludeNoAttendeeEvents")}];
  [v11 setExcludeNoLocationEvents:{-[CADEventPredicate excludeNoLocationEvents](self, "excludeNoLocationEvents")}];
  [v11 setExcludeDeclinedUnlessProposed:{-[CADEventPredicate excludeDeclinedUnlessProposed](self, "excludeDeclinedUnlessProposed")}];
  filteredOutTitles = [(CADEventPredicate *)self filteredOutTitles];
  [v11 setFilteredOutTitles:filteredOutTitles];

  *(v11 + 120) = self->_propertyLoadMode;
  return v11;
}

- (void)beginSignpostWithHandle:(id)handle signpostID:(unint64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = handleCopy;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(handleCopy))
  {
    v8 = objc_opt_class();
    v9 = v8;
    predicateFormat = [(CADEventPredicate *)self predicateFormat];
    v12 = 138412546;
    v13 = v8;
    v14 = 2114;
    v15 = predicateFormat;
    _os_signpost_emit_with_name_impl(&dword_22430B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, d, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_41;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    startDate = [(EKPredicate *)equalCopy startDate];
    startDate2 = [(EKPredicate *)self startDate];
    if (![startDate isEqual:startDate2])
    {
      v6 = 0;
LABEL_40:

      goto LABEL_41;
    }

    endDate = [(EKPredicate *)equalCopy endDate];
    endDate2 = [(EKPredicate *)self endDate];
    if (![endDate isEqual:endDate2])
    {
      v6 = 0;
LABEL_39:

      goto LABEL_40;
    }

    timeZone = [(CADEventPredicate *)equalCopy timeZone];
    timeZone2 = [(CADEventPredicate *)self timeZone];
    v49 = timeZone;
    if (![timeZone isEquivalentTo:timeZone2])
    {
      v6 = 0;
LABEL_38:

      goto LABEL_39;
    }

    eventUUID = [(CADEventPredicate *)equalCopy eventUUID];
    eventUUID2 = [(CADEventPredicate *)self eventUUID];
    if (eventUUID != eventUUID2)
    {
      eventUUID3 = [(CADEventPredicate *)equalCopy eventUUID];
      eventUUID4 = [(CADEventPredicate *)self eventUUID];
      v45 = eventUUID3;
      if (![eventUUID3 isEqual:?])
      {
        v6 = 0;
        goto LABEL_36;
      }
    }

    calendars = [(EKPredicate *)equalCopy calendars];
    calendars2 = [(EKPredicate *)self calendars];
    v46 = calendars;
    v47 = eventUUID;
    v17 = calendars == calendars2;
    v18 = calendars2;
    if (!v17)
    {
      calendars3 = [(EKPredicate *)equalCopy calendars];
      calendars4 = [(EKPredicate *)self calendars];
      v41 = calendars3;
      v21 = calendars3;
      timeZone = calendars4;
      if (![v21 isEqual:calendars4])
      {
        v6 = 0;
        v22 = v46;
LABEL_31:

        goto LABEL_35;
      }
    }

    v42 = v18;
    propertyLoadMode = [(CADEventPredicate *)equalCopy propertyLoadMode];
    if (propertyLoadMode != [(CADEventPredicate *)self propertyLoadMode])
    {
      goto LABEL_30;
    }

    excludeTimedEvents = [(CADEventPredicate *)equalCopy excludeTimedEvents];
    if (excludeTimedEvents != [(CADEventPredicate *)self excludeTimedEvents])
    {
      goto LABEL_30;
    }

    excludeAllDayEvents = [(CADEventPredicate *)equalCopy excludeAllDayEvents];
    if (excludeAllDayEvents != [(CADEventPredicate *)self excludeAllDayEvents])
    {
      goto LABEL_30;
    }

    excludeDeclined = [(CADEventPredicate *)equalCopy excludeDeclined];
    if (excludeDeclined == [(CADEventPredicate *)self excludeDeclined]&& (v27 = [(CADEventPredicate *)equalCopy excludeProposed], v27 == [(CADEventPredicate *)self excludeProposed]) && (v28 = [(CADEventPredicate *)equalCopy excludeDeclinedUnlessProposed], v28 == [(CADEventPredicate *)self excludeDeclinedUnlessProposed]) && (v29 = [(CADEventPredicate *)equalCopy excludeNoAttendeeEvents], v29 == [(CADEventPredicate *)self excludeNoAttendeeEvents]) && (v30 = [(CADEventPredicate *)equalCopy excludeNoLocationEvents], v30 == [(CADEventPredicate *)self excludeNoLocationEvents]) && (v31 = [(CADEventPredicate *)equalCopy randomize], v31 == [(CADEventPredicate *)self randomize]) && (v32 = [(CADEventPredicate *)equalCopy limit], v32 == [(CADEventPredicate *)self limit]))
    {
      v40 = timeZone;
      v43 = timeZone2;
      filteredOutTitles = [(CADEventPredicate *)equalCopy filteredOutTitles];
      filteredOutTitles2 = [(CADEventPredicate *)self filteredOutTitles];
      v35 = filteredOutTitles2;
      if (filteredOutTitles == filteredOutTitles2)
      {

        v6 = 1;
        v38 = 1;
      }

      else
      {
        filteredOutTitles3 = [(CADEventPredicate *)equalCopy filteredOutTitles];
        filteredOutTitles4 = [(CADEventPredicate *)self filteredOutTitles];
        v6 = [filteredOutTitles3 isEqualToSet:filteredOutTitles4];

        v38 = v6;
      }

      v22 = v46;
      v18 = v42;
      timeZone2 = v43;
      timeZone = v40;
      if (v46 != v42)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_30:
      v6 = 0;
      v38 = 0;
      v22 = v46;
      if (v46 != v18)
      {
        goto LABEL_31;
      }
    }

    v6 = v38;
LABEL_35:

    eventUUID = v47;
    if (v47 == eventUUID2)
    {
LABEL_37:

      goto LABEL_38;
    }

LABEL_36:

    goto LABEL_37;
  }

  v6 = 0;
LABEL_41:

  return v6;
}

- (unint64_t)hash
{
  startDate = [(EKPredicate *)self startDate];
  v4 = [startDate hash];
  endDate = [(EKPredicate *)self endDate];
  v6 = 17 * [endDate hash] + 13 * v4;
  v7 = v6 + 23 * [(NSTimeZone *)self->super._timeZone hash];
  v8 = v7 + 29 * [(NSString *)self->super._uuid hash];
  if (self->_shouldLoadProposedTimesInRange)
  {
    v9 = 31;
  }

  else
  {
    v9 = 0;
  }

  return v8 + v9;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v51 = *MEMORY[0x277D85DE8];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v5 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v6 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v5, v6);
  if (FilterFromRowIDs)
  {
    v8 = FilterFromRowIDs;
    startDate = [(EKPredicate *)self startDate];
    endDate = [(EKPredicate *)self endDate];
    timeZone = [(CADEventPredicate *)self timeZone];
    defaultTimeZone = timeZone;
    if (!timeZone)
    {
      defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    }

    [(CADEventPredicate *)self shouldLoadProposedTimesInRange];
    v13 = CalDatabaseCopyEventOccurrencesInDateRangeEx();
    if (!timeZone)
    {
    }

    if (!v13)
    {
      v15 = 0;
      v23 = 0;
LABEL_52:
      CFRelease(v8);
      goto LABEL_53;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v15 = Mutable;
    if (Mutable)
    {
      theArray = Mutable;
      v43 = v6;
      Count = CFArrayGetCount(v13);
      v17 = objc_opt_new();
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithLong:i];
          [v17 addObject:v19];
        }
      }

      v42 = v8;
      v44 = v5;
      if (self->_randomize)
      {
        v20 = [v17 count];
        if (v20 >= 2)
        {
          v21 = v20;
          v22 = 0;
          do
          {
            [v17 exchangeObjectAtIndex:v22 withObjectAtIndex:v22 + arc4random_uniform(v21)];
            ++v22;
            --v21;
          }

          while (v21 != 1);
        }
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v23 = v17;
      v24 = [v23 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v47;
        v27 = *MEMORY[0x277CF78F0];
        while (2)
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v47 != v26)
            {
              objc_enumerationMutation(v23);
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v13, [*(*(&v46 + 1) + 8 * j) longValue]);
            v30 = CFGetTypeID(ValueAtIndex);
            if (v30 == CalEventOccurrenceGetTypeID())
            {
              CalEventOccurrenceGetEvent();
              if (!self->super._uuid || (v31 = CalEventCopyUniqueIdentifier(), v32 = [v31 isEqualToString:self->super._uuid], v31, v32))
              {
                if ((!self->_excludeTimedEvents || CalEventIsAllDay()) && (!self->_excludeAllDayEvents || (CalEventIsAllDay() & 1) == 0) && (!self->_excludeNoAttendeeEvents || CalCalendarItemHasAttendees()) && (!self->_excludeNoLocationEvents || CalCalendarItemHasLocation()))
                {
                  v33 = CalCalendarItemCopySummary();
                  if (![(NSSet *)self->_filteredOutTitles containsObject:v33])
                  {
                    CalEventGetProposedStartDate();
                    if (v34 == v27)
                    {
                      v37 = 0;
                    }

                    else
                    {
                      v35 = v34;
                      CalEventOccurrenceGetDate();
                      v37 = vabdd_f64(v36, v35) < 2.22044605e-16;
                    }

                    if ((CalEventGetParticipationStatus() != 2 || (v37 || !self->_excludeDeclinedUnlessProposed) && !self->_excludeDeclined) && (!self->_excludeProposed || !v37))
                    {
                      CFArrayAppendValue(theArray, ValueAtIndex);
                      if (self->_limit >= 1 && self->_limit == CFArrayGetCount(theArray))
                      {

                        goto LABEL_49;
                      }
                    }
                  }
                }
              }
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

LABEL_49:

      v15 = theArray;
      v38 = theArray;
      v6 = v43;
      v5 = v44;
      v8 = v42;
    }

    else
    {
      v23 = 0;
    }

    CFRelease(v8);
    CFRelease(v13);
    if (v15)
    {
      v8 = v15;
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0;
    v23 = 0;
  }

LABEL_53:
  v39 = v15;

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset
{
  v69 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  rangeCopy = range;
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  calendars = [(EKPredicate *)self calendars];
  v15 = [calendars count];

  if (v15)
  {
    v16 = CalCalendarItemCopyCalendar();
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:CalCalendarGetUID()];
    CFRelease(v16);
    v18 = [(EKPredicate *)self calendarRowIDSetForDatabaseID:AuxilliaryDatabaseID];
    if (![v18 containsObject:v17])
    {
      goto LABEL_7;
    }

    v19 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
    v20 = v19;
    if (v19 && ([v19 containsObject:v17] & 1) != 0)
    {

LABEL_7:
LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }
  }

  if (self->super._uuid)
  {
    v21 = CalEventCopyUniqueIdentifier();
    v22 = [v21 isEqualToString:self->super._uuid];

    if (!v22)
    {
      goto LABEL_16;
    }
  }

  IsAllDay = CalEventIsAllDay();
  if (self->_excludeTimedEvents && IsAllDay == 0)
  {
    goto LABEL_16;
  }

  v25 = IsAllDay;
  if ((self->_excludeAllDayEvents & IsAllDay & 1) != 0 || self->_excludeNoAttendeeEvents && !CalCalendarItemHasAttendees())
  {
    goto LABEL_16;
  }

  if (self->_excludeNoLocationEvents && !CalCalendarItemHasLocation())
  {
    goto LABEL_16;
  }

  if (self->_filteredOutTitles)
  {
    v28 = CalCalendarItemCopySummary();
    v29 = [(NSSet *)self->_filteredOutTitles containsObject:v28];

    if (v29)
    {
      goto LABEL_16;
    }
  }

  CalEventGetProposedStartDate();
  if (v30 == *MEMORY[0x277CF78F0])
  {
    v31 = 0;
  }

  else
  {
    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  }

  if (!self->_excludeDeclined && (!self->_excludeDeclinedUnlessProposed || v31) || CalEventGetParticipationStatus() != 2)
  {
    if (rangeCopy)
    {
      startDate = [(EKPredicate *)self startDate];
      startDate2 = [rangeCopy startDate];
      if ([startDate CalIsBeforeDate:startDate2])
      {

LABEL_38:
        v16 = [(CADEventPredicate *)self generateDatesForEvent:event];
        goto LABEL_70;
      }

      endDate = [(EKPredicate *)self endDate];
      endDate2 = [rangeCopy endDate];
      v62 = [endDate CalIsAfterDate:endDate2];

      if (v62)
      {
        goto LABEL_38;
      }
    }

    Duration = CalEventGetDuration();
    v37 = objc_opt_new();
    [v37 setSecond:-Duration];
    if (v25)
    {
      v38 = (Duration + 1.0) / *MEMORY[0x277CF7750];
      v39 = -v38;
      v40 = v38 <= 0.0;
      v41 = -0.0;
      if (!v40)
      {
        v41 = v39;
      }

      [v37 setDay:v41];
      [v37 setSecond:1];
    }

    started = CalEventCopyStartTimeZone();
    if (!started)
    {
      started = self->super._timeZone;
    }

    startDate3 = [(EKPredicate *)self startDate];
    v61 = started;
    v44 = [MEMORY[0x277CBEA80] CalGregorianCalendarForTimeZone:started];
    v63 = v37;
    v45 = [startDate3 CalDateByComponentwiseAddingComponents:v37 inCalendar:v44];

    v60 = v45;
    [v45 timeIntervalSinceReferenceDate];
    v47 = v46;
    endDate3 = [(EKPredicate *)self endDate];
    [endDate3 timeIntervalSinceReferenceDate];
    v50 = v49;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v16 = datesCopy;
    v51 = [v16 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = *v65;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v65 != v54)
          {
            objc_enumerationMutation(v16);
          }

          v56 = *(*(&v64 + 1) + 8 * i);
          [v56 timeIntervalSinceReferenceDate];
          if (v57 >= v47 && v57 < v50)
          {
            v59 = !self->_excludeProposed || v31 == 0;
            if (v59 || ([v56 isEqualToDate:v31] & 1) == 0)
            {
              if (!v53)
              {
                if ([v16 count] < 2)
                {
                  goto LABEL_69;
                }

                v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v53 addObject:v56];
            }
          }
        }

        v52 = [v16 countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v52);
    }

    else
    {
      v53 = 0;
    }

    v16 = v53;
LABEL_69:

    goto LABEL_70;
  }

  v16 = 0;
LABEL_70:

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)generateDatesForEvent:(void *)event
{
  started = CalEventCopyStartTimeZone();
  if (!started)
  {
    started = self->super._timeZone;
  }

  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  v7 = CalEventCopyOccurrenceDatesInDateRange();

  return v7;
}

- (id)incrementalPredicatesToExpandResultsFromPredicate:(id)predicate filteringRequiredToRemoveEventsNoLongerMatched:(BOOL *)matched
{
  v44 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    v8 = 0;
    goto LABEL_39;
  }

  v9 = predicateCopy;
  calendars = [(EKPredicate *)self calendars];
  calendars2 = [v9 calendars];
  v12 = [calendars count];
  v13 = [calendars2 count];
  if (v12 || !v13)
  {
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 != 0;
    }

    if (v12 && v13)
    {
      matchedCopy = matched;
      startDate = [MEMORY[0x277CBEB98] setWithArray:calendars];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v37 = calendars2;
      v16 = calendars2;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = 0;
        v20 = *v40;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v19 += [startDate containsObject:*(*(&v39 + 1) + 8 * i)] ^ 1;
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v22 = [calendars count] + v19;
      if (v22 != [v16 count])
      {
        v8 = 0;
        calendars2 = v37;
LABEL_43:

        goto LABEL_38;
      }

      v14 = v19 > 0;

      matched = matchedCopy;
      calendars2 = v37;
    }

    uuid = self->super._uuid;
    if ((!(uuid | *(v9 + 2)) || [(NSString *)uuid isEqual:?]) && self->_excludeTimedEvents == v9[90] && self->_excludeAllDayEvents == v9[89] && self->_excludeNoAttendeeEvents == v9[94] && self->_excludeNoLocationEvents == v9[95])
    {
      filteredOutTitles = self->_filteredOutTitles;
      if ((!(filteredOutTitles | *(v9 + 13)) || [(NSSet *)filteredOutTitles isEqual:?]) && self->_excludeDeclined == v9[91] && self->_excludeDeclinedUnlessProposed == v9[93])
      {
        timeZone = self->super._timeZone;
        if (!(timeZone | *(v9 + 3)) || [(NSTimeZone *)timeZone isEqual:?])
        {
          startDate = [(EKPredicate *)self startDate];
          endDate = [(EKPredicate *)self endDate];
          startDate2 = [v9 startDate];
          endDate2 = [v9 endDate];
          v33 = startDate2;
          v34 = endDate;
          if ([endDate CalIsBeforeOrSameAsDate:startDate2] & 1) != 0 || (objc_msgSend(endDate2, "CalIsBeforeOrSameAsDate:", startDate))
          {
            v8 = 0;
            v28 = endDate2;
          }

          else
          {
            matchedCopy2 = matched;
            v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
            if ([startDate isBeforeDate:startDate2])
            {
              v31 = [(CADEventPredicate *)self copyWithStartDate:startDate endDate:startDate2];
              [v8 addObject:v31];
            }

            else
            {
              v14 |= [startDate isAfterDate:startDate2];
            }

            v28 = endDate2;
            if ([v34 isAfterDate:endDate2])
            {
              v32 = [(CADEventPredicate *)self copyWithStartDate:endDate2 endDate:v34];
              [v8 addObject:v32];
            }

            else
            {
              LOBYTE(v14) = [v34 isBeforeDate:endDate2] | v14;
            }

            if (matchedCopy2)
            {
              *matchedCopy2 = v14 & 1;
            }
          }

          goto LABEL_43;
        }
      }
    }
  }

  v8 = 0;
LABEL_38:

LABEL_39:
  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

@end