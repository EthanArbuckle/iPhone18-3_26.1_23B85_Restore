@interface MapsSuggestionsServerSideFilter
- (BOOL)shouldKeepEntry:(id)entry;
- (MapsSuggestionsServerSideFilter)init;
@end

@implementation MapsSuggestionsServerSideFilter

- (MapsSuggestionsServerSideFilter)init
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsServerSideFilter;
  v2 = [(MapsSuggestionsServerSideFilter *)&v4 init];
  if (v2)
  {
    v2->_enabledEntryTypeUnknown = GEOConfigGetBOOL();
    v2->_enabledEntryTypeHome = GEOConfigGetBOOL();
    v2->_enabledEntryTypeWork = GEOConfigGetBOOL();
    v2->_enabledEntryTypeCalendarEvent = GEOConfigGetBOOL();
    v2->_enabledEntryTypeFrequentLocation = GEOConfigGetBOOL();
    v2->_enabledEntryTypeRecentHistory = GEOConfigGetBOOL();
    v2->_enabledEntryTypeOldPreYukonFavorite = GEOConfigGetBOOL();
    v2->_enabledEntryTypeParkedCar = GEOConfigGetBOOL();
    v2->_enabledEntryTypeRestaurantReservation = GEOConfigGetBOOL();
    v2->_enabledEntryTypeRidesharing = GEOConfigGetBOOL();
    v2->_enabledEntryTypeCarPlayLowEnergy = GEOConfigGetBOOL();
    v2->_enabledEntryTypeResumeRoute = GEOConfigGetBOOL();
    v2->_enabledEntryTypeAppConnection = GEOConfigGetBOOL();
    v2->_enabledEntryTypeHotel = GEOConfigGetBOOL();
    v2->_enabledEntryTypeCarRental = GEOConfigGetBOOL();
    v2->_enabledEntryTypeTravelFlight = GEOConfigGetBOOL();
    v2->_enabledEntryTypeTicketedEvent = GEOConfigGetBOOL();
    v2->_enabledEntryTypePortrait = GEOConfigGetBOOL();
    v2->_enabledEntryTypeUserPlace = GEOConfigGetBOOL();
    v2->_enabledEntryTypeSchool = GEOConfigGetBOOL();
    v2->_enabledEntryTypeVehicleSetup = GEOConfigGetBOOL();
    v2->_enabledEntryTypeFavoriteButton = GEOConfigGetBOOL();
    v2->_enabledEntryTypeOrderStatus = GEOConfigGetBOOL();
    v2->_enabledEntryTypeContactActivity = GEOConfigGetBOOL();
    v2->_enabledEntryTypeCurrentLocationOfInterest = GEOConfigGetBOOL();
  }

  return v2;
}

- (BOOL)shouldKeepEntry:(id)entry
{
  v19 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    switch([entryCopy type])
    {
      case 0:
        v6 = 8;
        goto LABEL_36;
      case 1:
        v6 = 9;
        goto LABEL_36;
      case 2:
        v6 = 10;
        goto LABEL_36;
      case 3:
        v6 = 11;
        goto LABEL_36;
      case 4:
        v6 = 12;
        goto LABEL_36;
      case 5:
        v6 = 13;
        goto LABEL_36;
      case 6:
        v6 = 14;
        goto LABEL_36;
      case 7:
        v6 = 15;
        goto LABEL_36;
      case 8:
        v6 = 16;
        goto LABEL_36;
      case 9:
        v6 = 17;
        goto LABEL_36;
      case 10:
        v6 = 18;
        goto LABEL_36;
      case 11:
        v6 = 19;
        goto LABEL_36;
      case 12:
        v6 = 20;
        goto LABEL_36;
      case 13:
        v6 = 21;
        goto LABEL_36;
      case 14:
        v6 = 22;
        goto LABEL_36;
      case 15:
        v6 = 23;
        goto LABEL_36;
      case 16:
        v6 = 24;
        goto LABEL_36;
      case 17:
        v6 = 25;
        goto LABEL_36;
      case 18:
        v6 = 26;
        goto LABEL_36;
      case 19:
        v6 = 27;
        goto LABEL_36;
      case 20:
        v6 = 28;
        goto LABEL_36;
      case 21:
        if ((!MapsFeature_IsEnabled_LagunaBeach() || (GEODoesUserHaveValidAccountForMakingContributions() & 1) == 0) && !GEOConfigGetBOOL())
        {
          goto LABEL_7;
        }

        BOOL = GEOConfigGetBOOL();
        break;
      case 22:
        v6 = 29;
        goto LABEL_36;
      case 23:
        v6 = 30;
        goto LABEL_36;
      case 24:
        v6 = 31;
        goto LABEL_36;
      case 25:
        v6 = 32;
LABEL_36:
        BOOL = *(&self->super.super.isa + v6);
        break;
      default:
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = 136446978;
          v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsServerSideFilter.m";
          v13 = 1024;
          v14 = 219;
          v15 = 2082;
          v16 = "[MapsSuggestionsServerSideFilter shouldKeepEntry:]";
          v17 = 2082;
          v18 = "YES";
          _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v11, 0x26u);
        }

        BOOL = 1;
        break;
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsServerSideFilter.m";
      v13 = 1024;
      v14 = 161;
      v15 = 2082;
      v16 = "[MapsSuggestionsServerSideFilter shouldKeepEntry:]";
      v17 = 2082;
      v18 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v11, 0x26u);
    }

LABEL_7:
    BOOL = 0;
  }

  return BOOL & 1;
}

@end