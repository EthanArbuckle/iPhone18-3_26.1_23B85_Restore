@interface MapsSuggestionsDestination
+ (MapsSuggestionsDestination)destinationWithData:(id)a3;
- (BOOL)addContainedBreadcrumb:(id)a3;
- (BOOL)addContainedEntry:(id)a3;
- (BOOL)hasEntriesInTheFuture;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDestination:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (MapsSuggestionsDestination)initWithCoder:(id)a3;
- (MapsSuggestionsDestination)initWithEntry:(id)a3;
- (MapsSuggestionsDestination)initWithLocation:(id)a3 label:(id)a4;
- (NSString)description;
- (double)couldContainEntry:(id)a3;
- (double)couldContainLocation:(id)a3;
- (double)couldContainTime:(id)a3;
- (double)radius;
- (id)breadcrumbs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)entries;
- (id)entryAtTime:(id)a3;
- (id)firstEntryAfterTime:(id)a3;
- (id)firstEntryDuringPeriod:(id)a3;
- (id)longDescription;
- (id)objectForJSON;
- (unint64_t)removeExpiredEntries;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MapsSuggestionsDestination

- (MapsSuggestionsDestination)initWithEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v31.receiver = self;
    v31.super_class = MapsSuggestionsDestination;
    v5 = [(MapsSuggestionsDestination *)&v31 init];
    if (v5)
    {
      v6 = [v4 undecoratedTitle];
      v7 = [v6 copy];
      label = v5->_label;
      v5->_label = v7;

      v9 = [[NSMutableArray alloc] initWithObjects:{v4, 0}];
      sub_100016BFC(v5, v9);

      v10 = [[NSMutableArray alloc] initWithCapacity:0];
      sub_100016C94(v5, v10);

      v11 = +[NSDate distantFuture];
      earliestExpiration = v5->_earliestExpiration;
      v5->_earliestExpiration = v11;

      if ([v4 containsKey:@"MapsSuggestionsEarliestTimeKey"])
      {
        v13 = [v4 dateForKey:@"MapsSuggestionsEarliestTimeKey"];
        earliestArrivalDate = v5->_earliestArrivalDate;
        v5->_earliestArrivalDate = v13;
      }

      if (!v5->_earliestArrivalDate && [v4 containsKey:@"MapsSuggestionsScheduledTimeKey"])
      {
        v15 = [v4 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        v16 = v5->_earliestArrivalDate;
        v5->_earliestArrivalDate = v15;
      }

      if ([v4 containsKey:@"MapsSuggestionsLatestTimeKey"])
      {
        v17 = [v4 dateForKey:@"MapsSuggestionsLatestTimeKey"];
        latestDepartureDate = v5->_latestDepartureDate;
        v5->_latestDepartureDate = v17;
      }

      if (!v5->_latestDepartureDate && [v4 containsKey:@"MapsSuggestionsScheduledEndTimeKey"])
      {
        v19 = [v4 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
        v20 = v5->_latestDepartureDate;
        v5->_latestDepartureDate = v19;
      }

      v21 = [v4 expires];
      v22 = v21 == 0;

      if (!v22)
      {
        v23 = [v4 expires];
        v24 = v5->_earliestExpiration;
        v5->_earliestExpiration = v23;
      }

      if (MapsSuggestionsCoordinateFromEntry())
      {
        v25 = [CLLocation alloc];
        v26 = [v25 initWithLatitude:*buf longitude:*&buf[8]];
        likelyLocation = v5->_likelyLocation;
        v5->_likelyLocation = v26;
      }
    }

    self = v5;
    v28 = self;
  }

  else
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      *&buf[12] = 1024;
      *&buf[14] = 93;
      v33 = 2082;
      v34 = "[MapsSuggestionsDestination initWithEntry:]";
      v35 = 2082;
      v36 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    v28 = 0;
  }

  return v28;
}

- (MapsSuggestionsDestination)initWithLocation:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v23 = 1024;
      v24 = 130;
      v25 = 2082;
      v26 = "[MapsSuggestionsDestination initWithLocation:label:]";
      v27 = 2082;
      v28 = "nil == (location)";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v23 = 1024;
      v24 = 131;
      v25 = 2082;
      v26 = "[MapsSuggestionsDestination initWithLocation:label:]";
      v27 = 2082;
      v28 = "nil == (label)";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a label", buf, 0x26u);
    }

LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

  v20.receiver = self;
  v20.super_class = MapsSuggestionsDestination;
  v9 = [(MapsSuggestionsDestination *)&v20 init];
  if (v9)
  {
    v10 = [v8 copy];
    label = v9->_label;
    v9->_label = v10;

    v12 = [[NSMutableArray alloc] initWithCapacity:0];
    sub_100016BFC(v9, v12);

    v13 = [[NSMutableArray alloc] initWithCapacity:1];
    sub_100016C94(v9, v13);

    v14 = [v6 copy];
    likelyLocation = v9->_likelyLocation;
    v9->_likelyLocation = v14;

    v16 = [[MapsSuggestionsBreadcrumb alloc] initWithLocation:v9->_likelyLocation];
    sub_100017054(v9, v16);
  }

  self = v9;
  v17 = self;
LABEL_12:

  return v17;
}

- (id)entries
{
  v3 = self->_entries;
  objc_sync_enter(v3);
  v4 = self->_entries;
  objc_sync_exit(v3);

  return v4;
}

- (id)breadcrumbs
{
  v3 = self->_breadcrumbs;
  objc_sync_enter(v3);
  v4 = self->_breadcrumbs;
  objc_sync_exit(v3);

  return v4;
}

- (CLLocationCoordinate2D)coordinate
{
  [(CLLocation *)self->_likelyLocation coordinate];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (double)radius
{
  [(CLLocation *)self->_likelyLocation horizontalAccuracy];
  v3 = v2;
  if (qword_1000855A0 != -1)
  {
    sub_10004CB94();
  }

  result = *&qword_100085590;
  v5 = *&qword_100085598;
  if (*&qword_100085598 <= v3)
  {
    v5 = v3;
  }

  if (*&qword_100085590 >= v3)
  {
    return v5;
  }

  return result;
}

- (BOOL)addContainedEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ((MapsSuggestionsCoordinateFromEntry() & 1) == 0)
    {
      v5 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "We don't know where this entry is: %@", buf, 0xCu);
      }

      LOBYTE(v12) = 0;
      goto LABEL_38;
    }

    v5 = [[CLLocation alloc] initWithLatitude:v48 longitude:v49];
    v6 = self->_entries;
    objc_sync_enter(v6);
    p_likelyLocation = &self->_likelyLocation;
    if (self->_likelyLocation || sub_100017140(&self->super.isa) != 1)
    {
      objc_sync_exit(v6);

      if (*p_likelyLocation)
      {
        [(CLLocation *)*p_likelyLocation distanceFromLocation:v5];
        v17 = v16;
        [(MapsSuggestionsDestination *)self radius];
        if (v17 > v18)
        {
          v6 = GEOFindOrCreateLog();
          if (os_log_type_enabled(&v6->super.super, OS_LOG_TYPE_DEBUG))
          {
            v46 = [v4 title];
            *buf = 138412546;
            v51 = v46;
            v52 = 2048;
            *v53 = v17;
            _os_log_impl(&_mh_execute_header, &v6->super.super, OS_LOG_TYPE_DEBUG, "This entry: %@ is further than %.2fm away", buf, 0x16u);
          }

          LOBYTE(v12) = 0;
          goto LABEL_37;
        }

        v19 = self->_entries;
        objc_sync_enter(v19);
        entries = self->_entries;
        v21 = [v4 uniqueIdentifier];
        LOBYTE(entries) = [(NSMutableArray *)entries containsEntryWithIdentifier:v21];

        if ((entries & 1) == 0)
        {
          [(NSMutableArray *)self->_entries addObject:v4];
        }

        objc_sync_exit(v19);

        if ([v4 containsKey:@"MapsSuggestionsScheduledTimeKey"])
        {
          earliestArrivalDate = self->_earliestArrivalDate;
          v23 = [v4 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
          v24 = [(NSDate *)earliestArrivalDate earlierDate:v23];
          v25 = self->_earliestArrivalDate;
          self->_earliestArrivalDate = v24;
        }

        if ([v4 containsKey:@"MapsSuggestionsEarliestTimeKey"])
        {
          v26 = self->_earliestArrivalDate;
          v27 = [v4 dateForKey:@"MapsSuggestionsEarliestTimeKey"];
          v28 = [(NSDate *)v26 earlierDate:v27];
          v29 = self->_earliestArrivalDate;
          self->_earliestArrivalDate = v28;
        }

        if ([v4 containsKey:@"MapsSuggestionsScheduledEndTimeKey"])
        {
          latestDepartureDate = self->_latestDepartureDate;
          v31 = [v4 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
          v32 = [(NSDate *)latestDepartureDate laterDate:v31];
          v33 = self->_latestDepartureDate;
          self->_latestDepartureDate = v32;
        }

        if ([v4 containsKey:@"MapsSuggestionsLatestTimeKey"])
        {
          v34 = self->_latestDepartureDate;
          v35 = [v4 dateForKey:@"MapsSuggestionsLatestTimeKey"];
          v36 = [(NSDate *)v34 laterDate:v35];
          v37 = self->_latestDepartureDate;
          self->_latestDepartureDate = v36;
        }

        v38 = [v4 expires];
        v39 = v38 == 0;

        if (v39)
        {
          LOBYTE(v12) = 1;
          goto LABEL_38;
        }

        earliestExpiration = self->_earliestExpiration;
        v6 = [v4 expires];
        v41 = [(NSDate *)earliestExpiration earlierDate:v6];
        v42 = self->_earliestExpiration;
        self->_earliestExpiration = v41;
      }

      else
      {
        objc_storeStrong(&self->_likelyLocation, v5);
        v43 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          label = self->_label;
          likelyLocation = self->_likelyLocation;
          *buf = 138412546;
          v51 = label;
          v52 = 2112;
          *v53 = likelyLocation;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Aha! Destination '%@' is at %@", buf, 0x16u);
        }

        v6 = self->_entries;
        objc_sync_enter(v6);
        [(NSMutableArray *)self->_entries addObject:v4];
        objc_sync_exit(v6);
      }

      LOBYTE(v12) = 1;
    }

    else
    {
      v8 = [v4 uniqueIdentifier];
      v9 = [(MapsSuggestionsDestination *)self entries];
      v10 = [v9 firstObject];
      v11 = [v10 uniqueIdentifier];
      v12 = [v8 isEqualToString:v11];

      if (v12)
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = self->_label;
          *buf = 138412290;
          v51 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "A repetition of the same location-less Destination '%@'", buf, 0xCu);
        }

        [(NSMutableArray *)self->_entries setObject:v4 atIndexedSubscript:0];
      }

      objc_sync_exit(v6);
    }

LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v51 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
    v52 = 1024;
    *v53 = 220;
    *&v53[4] = 2082;
    *&v53[6] = "[MapsSuggestionsDestination addContainedEntry:]";
    v54 = 2082;
    v55 = "nil == (entry)";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry!", buf, 0x26u);
  }

  LOBYTE(v12) = 0;
LABEL_39:

  return v12;
}

- (BOOL)addContainedBreadcrumb:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v23 = 1024;
      *v24 = 290;
      *&v24[4] = 2082;
      *&v24[6] = "[MapsSuggestionsDestination addContainedBreadcrumb:]";
      v25 = 2082;
      v26 = "nil == (breadcrumb)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a breadcrumb!", &v21, 0x26u);
    }

    goto LABEL_20;
  }

  v6 = [v4 location];

  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v23 = 1024;
      *v24 = 291;
      *&v24[4] = 2082;
      *&v24[6] = "[MapsSuggestionsDestination addContainedBreadcrumb:]";
      v25 = 2082;
      v26 = "nil == (breadcrumb.location)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a breadcrumb with a location!", &v21, 0x26u);
    }

    goto LABEL_20;
  }

  likelyLocation = self->_likelyLocation;
  if (!likelyLocation)
  {
    v14 = [v5 location];
    v15 = self->_likelyLocation;
    self->_likelyLocation = v14;

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      label = self->_label;
      v18 = self->_likelyLocation;
      v21 = 138412546;
      v22 = label;
      v23 = 2112;
      *v24 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Aha! Destination '%@' is at %@", &v21, 0x16u);
    }

    sub_100017054(self, v5);
    goto LABEL_17;
  }

  v8 = [v5 location];
  [(CLLocation *)likelyLocation distanceFromLocation:v8];
  v10 = v9;

  [(MapsSuggestionsDestination *)self radius];
  if (v10 > v11)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134217984;
      v22 = *&v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "This breadcrumb is further than %.2fm away", &v21, 0xCu);
    }

LABEL_20:

    v19 = 0;
    goto LABEL_21;
  }

  v12 = self->_breadcrumbs;
  objc_sync_enter(v12);
  if (([(NSMutableArray *)self->_breadcrumbs containsObject:v5]& 1) == 0)
  {
    [(NSMutableArray *)self->_breadcrumbs addObject:v5];
  }

  objc_sync_exit(v12);

LABEL_17:
  v19 = 1;
LABEL_21:

  return v19;
}

- (BOOL)hasEntriesInTheFuture
{
  v3 = sub_100017140(&self->super.isa);
  if (v3)
  {
    v4 = v3 - 1;
    while (1)
    {
      v5 = [(MapsSuggestionsDestination *)self entries];
      v6 = [v5 objectAtIndexedSubscript:v4];

      if ([v6 containsKey:@"MapsSuggestionsScheduledTimeKey"])
      {
        v7 = [v6 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        v8 = MapsSuggestionsIsInTheFuture();

        if (v8)
        {
          break;
        }
      }

      if (--v4 == -1)
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (double)couldContainEntry:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v25 = 1024;
      v26 = 357;
      v27 = 2082;
      v28 = "[MapsSuggestionsDestination couldContainEntry:]";
      v29 = 2082;
      v30 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. requires an entry", buf, 0x26u);
    }

    v7 = MapsSuggestionsConfidenceDefinitelyFalse();
    goto LABEL_7;
  }

  v5 = [(MapsSuggestionsDestination *)self entries];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = MapsSuggestionsConfidenceDefinitelyTrue();
LABEL_7:
    v9 = v7;
    goto LABEL_21;
  }

  v10 = [v4 geoMapItem];
  if (v10)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [(MapsSuggestionsDestination *)self entries];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) geoMapItem];
          v16 = [v10 isEqualToMapItem:v15];

          if (v16)
          {
            v9 = MapsSuggestionsConfidenceDefinitelyTrue();

            goto LABEL_20;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v9 = MapsSuggestionsConfidenceDefinitelyFalse();
LABEL_20:

LABEL_21:
  return v9;
}

- (double)couldContainLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    likelyLocation = self->_likelyLocation;
    if (likelyLocation)
    {
      [(CLLocation *)likelyLocation distanceFromLocation:v4];
      v7 = v6;
      [(MapsSuggestionsDestination *)self radius];
      if (v7 <= v8)
      {
        v9 = MapsSuggestionsConfidenceDefinitelyTrue();
      }

      else
      {
        v9 = MapsSuggestionsConfidenceDefinitelyFalse();
      }
    }

    else
    {
      v9 = MapsSuggestionsConfidenceDontKnow();
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v15 = 1024;
      v16 = 381;
      v17 = 2082;
      v18 = "[MapsSuggestionsDestination couldContainLocation:]";
      v19 = 2082;
      v20 = "nil == (location)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. requires a location", &v13, 0x26u);
    }

    v9 = MapsSuggestionsConfidenceDefinitelyFalse();
  }

  v11 = v9;

  return v11;
}

- (double)couldContainTime:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v29 = 1024;
      v30 = 398;
      v31 = 2082;
      v32 = "[MapsSuggestionsDestination couldContainTime:]";
      v33 = 2082;
      v34 = "nil == (time)";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. requires a time", buf, 0x26u);
    }

    v19 = MapsSuggestionsConfidenceDefinitelyFalse();
    goto LABEL_25;
  }

  if (!sub_100017140(&self->super.isa))
  {
    v19 = MapsSuggestionsConfidenceDontKnow();
LABEL_25:
    v20 = v19;
    goto LABEL_31;
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v5 = [(MapsSuggestionsDestination *)self entries:0];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v6)
  {

    v8 = 0;
    v7 = 0;
    goto LABEL_29;
  }

  v7 = 0;
  v8 = 0;
  v9 = *v23;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = MapsSuggestionsPeriodFromEntry();
      v12 = v11;
      if (v11)
      {
        if ([v11 containsDate:v4])
        {
          v20 = MapsSuggestionsConfidenceDefinitelyTrue();

LABEL_27:
          goto LABEL_30;
        }

        if (v7)
        {
          v13 = [v12 startDate];
          v14 = [v13 earlierDate:v7];

          v7 = v14;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = [v12 startDate];
          if (v8)
          {
LABEL_12:
            v15 = [v12 endDate];
            v16 = [v15 laterDate:v8];

            v8 = v16;
            goto LABEL_15;
          }
        }

        v8 = [v12 endDate];
      }

LABEL_15:
    }

    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  if (v7 && v8)
  {
    v5 = [[NSDateInterval alloc] initWithStartDate:v7 endDate:v8];
    if ([v5 containsDate:v4])
    {
      v17 = MapsSuggestionsConfidenceDontKnow();
    }

    else
    {
      v17 = MapsSuggestionsConfidenceDefinitelyFalse();
    }

    v20 = v17;
    goto LABEL_27;
  }

LABEL_29:
  v20 = MapsSuggestionsConfidenceDontKnow();
LABEL_30:

LABEL_31:
  return v20;
}

- (unint64_t)removeExpiredEntries
{
  if (MapsSuggestionsIsInTheFuture())
  {

    return sub_100017140(&self->super.isa);
  }

  else
  {
    v4 = +[NSDate distantFuture];
    earliestExpiration = self->_earliestExpiration;
    self->_earliestExpiration = v4;

    v6 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(MapsSuggestionsDestination *)self entries];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v10 = *v26;
      *&v9 = 138412290;
      v24 = v9;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if ([(NSDate *)v12 hasExpired])
          {
            v13 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v30 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Removing entry %@ because it has expired", buf, 0xCu);
            }

            [v6 addObject:v12];
          }

          else
          {
            v14 = [(NSDate *)v12 expires];
            v15 = v14 == 0;

            if (!v15)
            {
              v16 = self->_earliestExpiration;
              v17 = [(NSDate *)v12 expires];
              v18 = [(NSDate *)v16 earlierDate:v17];
              v19 = self->_earliestExpiration;
              self->_earliestExpiration = v18;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v8);
    }

    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->_earliestExpiration;
      *buf = 138412290;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Earliest expiration date after removing expired entries: %@", buf, 0xCu);
    }

    v22 = self->_entries;
    objc_sync_enter(v22);
    [(NSMutableArray *)self->_entries removeObjectsInArray:v6];
    v23 = [(NSMutableArray *)self->_entries count];
    objc_sync_exit(v22);

    return v23;
  }
}

- (id)entryAtTime:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(MapsSuggestionsDestination *)self entries];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = MapsSuggestionsPeriodFromEntry();
          v11 = v10;
          if (v10 && ([v10 containsDate:v4] & 1) != 0)
          {
            v6 = v9;

            goto LABEL_16;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v20 = 1024;
      v21 = 477;
      v22 = 2082;
      v23 = "[MapsSuggestionsDestination entryAtTime:]";
      v24 = 2082;
      v25 = "nil == (time)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. requires a time", buf, 0x26u);
    }

    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)firstEntryAfterTime:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(MapsSuggestionsDestination *)self entries];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = MapsSuggestionsPeriodFromEntry();
          v11 = v10;
          if (v10)
          {
            v12 = [v10 startDate];
            v13 = [v4 earlierDate:v12];
            v14 = v13 == v4;

            if (v14)
            {
              v6 = v9;

              goto LABEL_16;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v23 = 1024;
      v24 = 494;
      v25 = 2082;
      v26 = "[MapsSuggestionsDestination firstEntryAfterTime:]";
      v27 = 2082;
      v28 = "nil == (time)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. requires a time", buf, 0x26u);
    }

    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)firstEntryDuringPeriod:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(MapsSuggestionsDestination *)self entries];
    v6 = 0;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = MapsSuggestionsPeriodFromEntry();
          if (v11)
          {
            if ([v4 intersectsDateInterval:v11])
            {
              v13 = v10;

              goto LABEL_17;
            }
          }

          else
          {
            v12 = v10;

            v6 = v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v6 = v6;
    v13 = v6;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v22 = 1024;
      v23 = 513;
      v24 = 2082;
      v25 = "[MapsSuggestionsDestination firstEntryDuringPeriod:]";
      v26 = 2082;
      v27 = "nil == (period)";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. requires a time", buf, 0x26u);
    }

    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (id)data
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v9 = 1024;
      v10 = 537;
      v11 = 2082;
      v12 = "[MapsSuggestionsDestination data]";
      v13 = 2082;
      v14 = "nil == (data)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Error archiving destination", &v7, 0x26u);
    }
  }

  return v3;
}

+ (MapsSuggestionsDestination)destinationWithData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v8 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (v5 || !v4)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error decoding destination: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestination.mm";
      v11 = 1024;
      v12 = 544;
      v13 = 2082;
      v14 = "+[MapsSuggestionsDestination destinationWithData:]";
      v15 = 2082;
      v16 = "nil == (data)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. data should not be nil", buf, 0x26u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqualToDestination:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_9;
  }

  if (-[NSString isEqualToString:](self->_label, "isEqualToString:", v4->_label) && (-[MapsSuggestionsDestination entries](self, "entries"), v6 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsDestination entries](v5, "entries"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToArray:v7], v7, v6, (v8 & 1) != 0) && (-[MapsSuggestionsDestination breadcrumbs](self, "breadcrumbs"), v9 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsDestination breadcrumbs](v5, "breadcrumbs"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToArray:", v10), v10, v9, (v11 & 1) != 0))
  {
    v12 = MapsSuggestionsAlmostSameLocation();
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (id)longDescription
{
  v33.receiver = self;
  v33.super_class = MapsSuggestionsDestination;
  v3 = [(MapsSuggestionsDestination *)&v33 description];
  label = self->_label;
  [(CLLocation *)self->_likelyLocation coordinate];
  v6 = v5;
  [(CLLocation *)self->_likelyLocation coordinate];
  v8 = v7;
  v9 = sub_100017140(&self->super.isa);
  v10 = [NSMutableString stringWithFormat:@"%@ '%@' <%+.6f, %+.6f>, E=%u, B=%u", v3, label, v6, v8, v9, sub_100017204(&self->super.isa)];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [(MapsSuggestionsDestination *)self entries];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v12)
  {
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        [v10 appendString:@"\n - "];
        v16 = [v15 shortDescription];
        [v10 appendString:v16];
      }

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [(MapsSuggestionsDestination *)self breadcrumbs];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v18)
  {
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        [v10 appendString:@"\n - "];
        v22 = [v21 description];
        [v10 appendString:v22];
      }

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v18);
  }

  v23 = [v10 copy];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MapsSuggestionsDestination *)self isEqualToDestination:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v13.receiver = self;
  v13.super_class = MapsSuggestionsDestination;
  v4 = [(MapsSuggestionsDestination *)&v13 description];
  label = self->_label;
  [(CLLocation *)self->_likelyLocation coordinate];
  v7 = v6;
  [(CLLocation *)self->_likelyLocation coordinate];
  v9 = v8;
  v10 = sub_100017140(&self->super.isa);
  v11 = [v3 initWithFormat:@"%@ '%@' <%+.6f, %+.6f>, E=%u, B=%u", v4, label, v7, v9, v10, sub_100017204(&self->super.isa)];

  return v11;
}

- (MapsSuggestionsDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSSet alloc];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsDestinationLocationKey"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsDestinationLabelKey"];
  v11 = [[MapsSuggestionsDestination alloc] initWithLocation:v9 label:v10];
  v12 = [v4 decodeObjectOfClasses:v8 forKey:@"MapsSuggestionsDestinationEntriesKey"];
  sub_100016BFC(v11, v12);

  v13 = [v4 decodeObjectOfClasses:v8 forKey:@"MapsSuggestionsDestinationBreadcrumbKey"];
  sub_100016C94(v11, v13);

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_label forKey:@"MapsSuggestionsDestinationLabelKey"];
  [v6 encodeObject:self->_likelyLocation forKey:@"MapsSuggestionsDestinationLocationKey"];
  v4 = [(MapsSuggestionsDestination *)self entries];
  [v6 encodeObject:v4 forKey:@"MapsSuggestionsDestinationEntriesKey"];

  v5 = [(MapsSuggestionsDestination *)self breadcrumbs];
  [v6 encodeObject:v5 forKey:@"MapsSuggestionsDestinationBreadcrumbKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MapsSuggestionsDestination alloc] initWithLocation:self->_likelyLocation label:self->_label];
  v5 = [(MapsSuggestionsDestination *)self entries];
  v6 = [v5 mutableCopy];
  sub_100016BFC(v4, v6);

  v7 = [(MapsSuggestionsDestination *)self breadcrumbs];
  v8 = [v7 mutableCopy];
  sub_100016C94(v4, v8);

  return v4;
}

- (id)objectForJSON
{
  v38 = [[NSMutableArray alloc] initWithCapacity:sub_100017140(&self->super.isa)];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v33 = self;
  v3 = [(MapsSuggestionsDestination *)self entries];
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v4)
  {
    v37 = *v51;
    do
    {
      v39 = v4;
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v50 + 1) + 8 * i);
        v57[0] = @"id";
        v44 = [v6 uniqueIdentifier];
        v45 = MSg::jsonFor();
        v58[0] = v45;
        v57[1] = @"type";
        [v6 type];
        v7 = NSStringFromMapsSuggestionsEntryType();
        v8 = MSg::jsonFor();
        v58[1] = v8;
        v57[2] = @"title";
        v9 = [v6 undecoratedTitle];
        v10 = MSg::jsonFor();
        v58[2] = v10;
        v57[3] = @"subtitle";
        v11 = [v6 undecoratedSubtitle];
        v12 = MSg::jsonFor();
        v58[3] = v12;
        v57[4] = @"start";
        v13 = [v6 containsKey:@"MapsSuggestionsScheduledTimeKey"];
        if (v13)
        {
          v43 = [v6 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
          v15 = MSg::jsonFor(v43, v14);
          v36 = v15;
        }

        else
        {
          v15 = +[NSNull null];
          v41 = v15;
        }

        v58[4] = v15;
        v57[5] = @"end";
        v16 = [v6 containsKey:@"MapsSuggestionsScheduledEndTimeKey"];
        if (v16)
        {
          v42 = [v6 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
          v18 = MSg::jsonFor(v42, v17);
          v35 = v18;
        }

        else
        {
          v18 = +[NSNull null];
          v40 = v18;
        }

        v58[5] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:6];
        [v38 addObject:v19];

        v20 = v40;
        if (v16)
        {

          v20 = v42;
        }

        v21 = v41;
        if (v13)
        {

          v21 = v43;
        }
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v4);
  }

  v22 = [[NSMutableArray alloc] initWithCapacity:sub_100017140(&v33->super.isa)];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = [(MapsSuggestionsDestination *)v33 breadcrumbs];
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v24)
  {
    v25 = *v47;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = MSg::jsonFor();
        [v22 addObject:v27];
      }

      v24 = [v23 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v24);
  }

  v54[0] = @"label";
  v28 = MSg::jsonFor();
  v55[0] = v28;
  v54[1] = @"likelyLocation";
  v30 = MSg::jsonFor(v33->_likelyLocation, v29);
  v55[1] = v30;
  v55[2] = v38;
  v54[2] = @"entries";
  v54[3] = @"breadcrumbs";
  v55[3] = v22;
  v31 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];

  return v31;
}

@end