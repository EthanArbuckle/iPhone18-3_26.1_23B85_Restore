@interface CADEventPredicate
+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 calendars:(id)a6;
+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 calendars:(id)a6 propertyLoadMode:(unint64_t)a7;
+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 eventUUID:(id)a6 calendars:(id)a7;
- (BOOL)isEqual:(id)a3;
- (CADEventPredicate)initWithCoder:(id)a3;
- (CADEventPredicate)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 calendars:(id)a6 propertyLoadMode:(unint64_t)a7;
- (CADEventPredicate)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 eventUUID:(id)a6 calendars:(id)a7;
- (id)concisePublicDescription;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3;
- (id)copyWithStartDate:(id)a3 endDate:(id)a4;
- (id)defaultPropertiesToLoad;
- (id)generateDatesForEvent:(void *)a3;
- (id)incrementalPredicatesToExpandResultsFromPredicate:(id)a3 filteringRequiredToRemoveEventsNoLongerMatched:(BOOL *)a4;
- (id)matchingDatesForEvent:(void *)a3 modifiedProperties:(unint64_t)a4 dates:(id)a5 inRange:(id)a6 database:(CalDatabase *)a7 outReset:(BOOL *)a8;
- (id)predicateFormat;
- (id)relatedObjectPropertiesToLoad;
- (unint64_t)hash;
- (void)beginSignpostWithHandle:(id)a3 signpostID:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADEventPredicate

- (id)defaultPropertiesToLoad
{
  v2 = [(CADEventPredicate *)self propertyLoadMode];
  if (v2 == 2)
  {
    if (defaultPropertiesToLoad_onceToken != -1)
    {
      [CADEventPredicate defaultPropertiesToLoad];
    }

    v3 = defaultPropertiesToLoad_extendedPropertiesToLoad;
  }

  else if (v2 == 1)
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
  v5 = [(EKPredicate *)self startDate];
  v6 = [v4 stringFromDate:v5];
  v7 = [(EKPredicate *)self endDate];
  v8 = [v4 stringFromDate:v7];
  v9 = [(EKPredicate *)self calendars];
  v10 = [CADPredicate conciseCalendarList:v9];
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
  v5 = [(EKPredicate *)self startDate];
  if (v5)
  {
    v6 = [v4 stringFromDate:v5];
    [v3 appendFormat:@"; start:%@", v6];
  }

  v7 = [(EKPredicate *)self endDate];
  if (v7)
  {
    v8 = [v4 stringFromDate:v7];
    [v3 appendFormat:@"; end:%@", v8];
  }

  v9 = [(EKPredicate *)self calendars];
  if (v9)
  {
    v10 = [CADPredicate conciseCalendarList:v9];
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

+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 calendars:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithStartDate:v12 endDate:v11 timeZone:v10 calendars:v9];

  return v13;
}

+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 calendars:(id)a6 propertyLoadMode:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [objc_alloc(objc_opt_class()) initWithStartDate:v14 endDate:v13 timeZone:v12 calendars:v11 propertyLoadMode:a7];

  return v15;
}

+ (id)predicateWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 eventUUID:(id)a6 calendars:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [objc_alloc(objc_opt_class()) initWithStartDate:v15 endDate:v14 timeZone:v13 eventUUID:v12 calendars:v11];

  return v16;
}

- (CADEventPredicate)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 eventUUID:(id)a6 calendars:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = CADEventPredicate;
  v16 = [(EKPredicate *)&v22 initWithCalendars:a7];
  v17 = v16;
  if (!v16)
  {
LABEL_9:
    v19 = v17;
    goto LABEL_10;
  }

  if (v12 && v13)
  {
    [(EKPredicate *)v16 setStartDate:v12];
    [(EKPredicate *)v17 setEndDate:v13];
    objc_storeStrong(&v17->super._uuid, a6);
    if (v14)
    {
      v18 = [v14 copy];
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

- (CADEventPredicate)initWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 calendars:(id)a6 propertyLoadMode:(unint64_t)a7
{
  result = [(CADEventPredicate *)self initWithStartDate:a3 endDate:a4 timeZone:a5 calendars:a6];
  if (result)
  {
    result->_propertyLoadMode = a7;
  }

  return result;
}

- (CADEventPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CADEventPredicate;
  v5 = [(EKPredicate *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->super._uuid;
    v5->super._uuid = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v10;

    v5->_propertyLoadMode = [v4 decodeIntegerForKey:@"propertyLoadMode"];
    v5->_shouldLoadProposedTimesInRange = [v4 decodeBoolForKey:@"shouldLoadProposedTimesInRange"];
    v5->_excludeTimedEvents = [v4 decodeBoolForKey:@"excludeTimedEvents"];
    v5->_excludeAllDayEvents = [v4 decodeBoolForKey:@"excludeAllDayEvents"];
    v5->_excludeDeclined = [v4 decodeBoolForKey:@"excludeDeclined"];
    v5->_excludeProposed = [v4 decodeBoolForKey:@"excludeProposed"];
    v5->_excludeDeclinedUnlessProposed = [v4 decodeBoolForKey:@"excludeDeclinedUnlessProposed"];
    v5->_excludeNoAttendeeEvents = [v4 decodeBoolForKey:@"excludeNoAttendeeEvents"];
    v5->_excludeNoLocationEvents = [v4 decodeBoolForKey:@"excludeNoLocationEvents"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filteredOutTitles"];
    filteredOutTitles = v5->_filteredOutTitles;
    v5->_filteredOutTitles = v12;

    v5->_randomize = [v4 decodeBoolForKey:@"randomize"];
    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CADEventPredicate;
  v4 = a3;
  [(EKPredicate *)&v7 encodeWithCoder:v4];
  v5 = [(EKPredicate *)self startDate:v7.receiver];
  [v4 encodeObject:v5 forKey:@"startDate"];

  v6 = [(EKPredicate *)self endDate];
  [v4 encodeObject:v6 forKey:@"endDate"];

  [v4 encodeObject:self->super._uuid forKey:@"UUID"];
  [v4 encodeObject:self->super._timeZone forKey:@"timeZone"];
  [v4 encodeInteger:-[CADEventPredicate propertyLoadMode](self forKey:{"propertyLoadMode"), @"propertyLoadMode"}];
  [v4 encodeBool:self->_shouldLoadProposedTimesInRange forKey:@"shouldLoadProposedTimesInRange"];
  [v4 encodeBool:self->_excludeTimedEvents forKey:@"excludeTimedEvents"];
  [v4 encodeBool:self->_excludeAllDayEvents forKey:@"excludeAllDayEvents"];
  [v4 encodeBool:self->_excludeDeclined forKey:@"excludeDeclined"];
  [v4 encodeBool:self->_excludeProposed forKey:@"excludeProposed"];
  [v4 encodeBool:self->_excludeDeclinedUnlessProposed forKey:@"excludeDeclinedUnlessProposed"];
  [v4 encodeBool:self->_excludeNoAttendeeEvents forKey:@"excludeNoAttendeeEvents"];
  [v4 encodeBool:self->_excludeNoLocationEvents forKey:@"excludeNoLocationEvents"];
  [v4 encodeObject:self->_filteredOutTitles forKey:@"filteredOutTitles"];
  [v4 encodeBool:self->_randomize forKey:@"randomize"];
  [v4 encodeInteger:self->_limit forKey:@"limit"];
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

- (id)copyWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CADEventPredicate alloc];
  timeZone = self->super._timeZone;
  v10 = [(EKPredicate *)self calendars];
  v11 = [(CADEventPredicate *)v8 initWithStartDate:v7 endDate:v6 timeZone:timeZone calendars:v10];

  v12 = [(EKPredicate *)self title];
  [v11 setTitle:v12];

  objc_storeStrong((v11 + 16), self->super._uuid);
  [v11 setExcludeAllDayEvents:{-[CADEventPredicate excludeAllDayEvents](self, "excludeAllDayEvents")}];
  [v11 setExcludeDeclined:{-[CADEventPredicate excludeDeclined](self, "excludeDeclined")}];
  [v11 setExcludeProposed:{-[CADEventPredicate excludeProposed](self, "excludeProposed")}];
  [v11 setExcludeTimedEvents:{-[CADEventPredicate excludeTimedEvents](self, "excludeTimedEvents")}];
  [v11 setExcludeSkippedReminders:{-[CADEventPredicate excludeSkippedReminders](self, "excludeSkippedReminders")}];
  [v11 setExcludeNoAttendeeEvents:{-[CADEventPredicate excludeNoAttendeeEvents](self, "excludeNoAttendeeEvents")}];
  [v11 setExcludeNoLocationEvents:{-[CADEventPredicate excludeNoLocationEvents](self, "excludeNoLocationEvents")}];
  [v11 setExcludeDeclinedUnlessProposed:{-[CADEventPredicate excludeDeclinedUnlessProposed](self, "excludeDeclinedUnlessProposed")}];
  v13 = [(CADEventPredicate *)self filteredOutTitles];
  [v11 setFilteredOutTitles:v13];

  *(v11 + 120) = self->_propertyLoadMode;
  return v11;
}

- (void)beginSignpostWithHandle:(id)a3 signpostID:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(CADEventPredicate *)self predicateFormat];
    v12 = 138412546;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_signpost_emit_with_name_impl(&dword_22430B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, a4, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_41;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(EKPredicate *)v4 startDate];
    v8 = [(EKPredicate *)self startDate];
    if (![v7 isEqual:v8])
    {
      v6 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v9 = [(EKPredicate *)v4 endDate];
    v10 = [(EKPredicate *)self endDate];
    if (![v9 isEqual:v10])
    {
      v6 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v11 = [(CADEventPredicate *)v4 timeZone];
    v12 = [(CADEventPredicate *)self timeZone];
    v49 = v11;
    if (![v11 isEquivalentTo:v12])
    {
      v6 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v13 = [(CADEventPredicate *)v4 eventUUID];
    v48 = [(CADEventPredicate *)self eventUUID];
    if (v13 != v48)
    {
      v14 = [(CADEventPredicate *)v4 eventUUID];
      v44 = [(CADEventPredicate *)self eventUUID];
      v45 = v14;
      if (![v14 isEqual:?])
      {
        v6 = 0;
        goto LABEL_36;
      }
    }

    v15 = [(EKPredicate *)v4 calendars];
    v16 = [(EKPredicate *)self calendars];
    v46 = v15;
    v47 = v13;
    v17 = v15 == v16;
    v18 = v16;
    if (!v17)
    {
      v19 = [(EKPredicate *)v4 calendars];
      v20 = [(EKPredicate *)self calendars];
      v41 = v19;
      v21 = v19;
      v11 = v20;
      if (![v21 isEqual:v20])
      {
        v6 = 0;
        v22 = v46;
LABEL_31:

        goto LABEL_35;
      }
    }

    v42 = v18;
    v23 = [(CADEventPredicate *)v4 propertyLoadMode];
    if (v23 != [(CADEventPredicate *)self propertyLoadMode])
    {
      goto LABEL_30;
    }

    v24 = [(CADEventPredicate *)v4 excludeTimedEvents];
    if (v24 != [(CADEventPredicate *)self excludeTimedEvents])
    {
      goto LABEL_30;
    }

    v25 = [(CADEventPredicate *)v4 excludeAllDayEvents];
    if (v25 != [(CADEventPredicate *)self excludeAllDayEvents])
    {
      goto LABEL_30;
    }

    v26 = [(CADEventPredicate *)v4 excludeDeclined];
    if (v26 == [(CADEventPredicate *)self excludeDeclined]&& (v27 = [(CADEventPredicate *)v4 excludeProposed], v27 == [(CADEventPredicate *)self excludeProposed]) && (v28 = [(CADEventPredicate *)v4 excludeDeclinedUnlessProposed], v28 == [(CADEventPredicate *)self excludeDeclinedUnlessProposed]) && (v29 = [(CADEventPredicate *)v4 excludeNoAttendeeEvents], v29 == [(CADEventPredicate *)self excludeNoAttendeeEvents]) && (v30 = [(CADEventPredicate *)v4 excludeNoLocationEvents], v30 == [(CADEventPredicate *)self excludeNoLocationEvents]) && (v31 = [(CADEventPredicate *)v4 randomize], v31 == [(CADEventPredicate *)self randomize]) && (v32 = [(CADEventPredicate *)v4 limit], v32 == [(CADEventPredicate *)self limit]))
    {
      v40 = v11;
      v43 = v12;
      v33 = [(CADEventPredicate *)v4 filteredOutTitles];
      v34 = [(CADEventPredicate *)self filteredOutTitles];
      v35 = v34;
      if (v33 == v34)
      {

        v6 = 1;
        v38 = 1;
      }

      else
      {
        v36 = [(CADEventPredicate *)v4 filteredOutTitles];
        v37 = [(CADEventPredicate *)self filteredOutTitles];
        v6 = [v36 isEqualToSet:v37];

        v38 = v6;
      }

      v22 = v46;
      v18 = v42;
      v12 = v43;
      v11 = v40;
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

    v13 = v47;
    if (v47 == v48)
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
  v3 = [(EKPredicate *)self startDate];
  v4 = [v3 hash];
  v5 = [(EKPredicate *)self endDate];
  v6 = 17 * [v5 hash] + 13 * v4;
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

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v5 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v6 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v5, v6);
  if (FilterFromRowIDs)
  {
    v8 = FilterFromRowIDs;
    v9 = [(EKPredicate *)self startDate];
    v10 = [(EKPredicate *)self endDate];
    v11 = [(CADEventPredicate *)self timeZone];
    v12 = v11;
    if (!v11)
    {
      v12 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    }

    [(CADEventPredicate *)self shouldLoadProposedTimesInRange];
    v13 = CalDatabaseCopyEventOccurrencesInDateRangeEx();
    if (!v11)
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

- (id)matchingDatesForEvent:(void *)a3 modifiedProperties:(unint64_t)a4 dates:(id)a5 inRange:(id)a6 database:(CalDatabase *)a7 outReset:(BOOL *)a8
{
  v69 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v14 = [(EKPredicate *)self calendars];
  v15 = [v14 count];

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
    if (v12)
    {
      v32 = [(EKPredicate *)self startDate];
      v33 = [v12 startDate];
      if ([v32 CalIsBeforeDate:v33])
      {

LABEL_38:
        v16 = [(CADEventPredicate *)self generateDatesForEvent:a3];
        goto LABEL_70;
      }

      v34 = [(EKPredicate *)self endDate];
      v35 = [v12 endDate];
      v62 = [v34 CalIsAfterDate:v35];

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

    v43 = [(EKPredicate *)self startDate];
    v61 = started;
    v44 = [MEMORY[0x277CBEA80] CalGregorianCalendarForTimeZone:started];
    v63 = v37;
    v45 = [v43 CalDateByComponentwiseAddingComponents:v37 inCalendar:v44];

    v60 = v45;
    [v45 timeIntervalSinceReferenceDate];
    v47 = v46;
    v48 = [(EKPredicate *)self endDate];
    [v48 timeIntervalSinceReferenceDate];
    v50 = v49;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v16 = v11;
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

- (id)generateDatesForEvent:(void *)a3
{
  started = CalEventCopyStartTimeZone();
  if (!started)
  {
    started = self->super._timeZone;
  }

  v5 = [(EKPredicate *)self startDate];
  v6 = [(EKPredicate *)self endDate];
  v7 = CalEventCopyOccurrenceDatesInDateRange();

  return v7;
}

- (id)incrementalPredicatesToExpandResultsFromPredicate:(id)a3 filteringRequiredToRemoveEventsNoLongerMatched:(BOOL *)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 != objc_opt_class())
  {
    v8 = 0;
    goto LABEL_39;
  }

  v9 = v6;
  v10 = [(EKPredicate *)self calendars];
  v11 = [v9 calendars];
  v12 = [v10 count];
  v13 = [v11 count];
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
      v35 = a4;
      v15 = [MEMORY[0x277CBEB98] setWithArray:v10];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v37 = v11;
      v16 = v11;
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

            v19 += [v15 containsObject:*(*(&v39 + 1) + 8 * i)] ^ 1;
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      v22 = [v10 count] + v19;
      if (v22 != [v16 count])
      {
        v8 = 0;
        v11 = v37;
LABEL_43:

        goto LABEL_38;
      }

      v14 = v19 > 0;

      a4 = v35;
      v11 = v37;
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
          v15 = [(EKPredicate *)self startDate];
          v26 = [(EKPredicate *)self endDate];
          v27 = [v9 startDate];
          v38 = [v9 endDate];
          v33 = v27;
          v34 = v26;
          if ([v26 CalIsBeforeOrSameAsDate:v27] & 1) != 0 || (objc_msgSend(v38, "CalIsBeforeOrSameAsDate:", v15))
          {
            v8 = 0;
            v28 = v38;
          }

          else
          {
            v36 = a4;
            v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
            if ([v15 isBeforeDate:v27])
            {
              v31 = [(CADEventPredicate *)self copyWithStartDate:v15 endDate:v27];
              [v8 addObject:v31];
            }

            else
            {
              v14 |= [v15 isAfterDate:v27];
            }

            v28 = v38;
            if ([v34 isAfterDate:v38])
            {
              v32 = [(CADEventPredicate *)self copyWithStartDate:v38 endDate:v34];
              [v8 addObject:v32];
            }

            else
            {
              LOBYTE(v14) = [v34 isBeforeDate:v38] | v14;
            }

            if (v36)
            {
              *v36 = v14 & 1;
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