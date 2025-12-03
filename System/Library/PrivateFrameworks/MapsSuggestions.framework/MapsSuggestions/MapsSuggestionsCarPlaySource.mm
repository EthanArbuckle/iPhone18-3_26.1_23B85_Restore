@interface MapsSuggestionsCarPlaySource
+ (void)initialize;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)setObserveExternalAccessory:(BOOL)accessory;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsCarPlaySource

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "start", v4, 2u);
  }

  [(MapsSuggestionsCarPlaySource *)self setObserveExternalAccessory:1];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    +[MapsExternalAccessory setUsePrivateQueue];
  }
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    oneSourceDelegate2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(oneSourceDelegate2, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCarPlaySource.m";
      v16 = 1024;
      v17 = 43;
      v18 = 2082;
      v19 = "[MapsSuggestionsCarPlaySource initFromResourceDepot:name:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_8:
      _os_log_impl(&_mh_execute_header, oneSourceDelegate2, OS_LOG_TYPE_FAULT, v11, buf, 0x26u);
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    oneSourceDelegate2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(oneSourceDelegate2, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCarPlaySource.m";
      v16 = 1024;
      v17 = 44;
      v18 = 2082;
      v19 = "[MapsSuggestionsCarPlaySource initFromResourceDepot:name:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot.oneSourceDelegate)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  v13.receiver = self;
  v13.super_class = MapsSuggestionsCarPlaySource;
  self = [(MapsSuggestionsCarPlaySource *)&v13 initWithDelegate:oneSourceDelegate2 name:nameCopy];
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)setObserveExternalAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  if (+[MapsSuggestionsCarPlaySource isEnabled]&& self->_observeExternalAccessory != accessoryCopy)
  {
    self->_observeExternalAccessory = accessoryCopy;
    v6 = +[NSNotificationCenter defaultCenter];
    +[MapsExternalAccessory sharedInstance];
    if (accessoryCopy)
      v5 = {;
      [v6 addObserver:self selector:"_updateExternalAccessory:" name:@"MapsExternalAccessoryUpdatedNotification" object:v5];
    }

    else
      v5 = {;
      [v6 removeObserver:self name:@"MapsExternalAccessoryUpdatedNotification" object:v5];
    }
  }
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "stop", v4, 2u);
  }

  [(MapsSuggestionsCarPlaySource *)self setObserveExternalAccessory:0];
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsCarPlaySource *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName;
    *&buf[12] = 2080;
    *&buf[14] = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueName2 = [(MapsSuggestionsCarPlaySource *)self uniqueName];
    v10 = NSStringFromMapsSuggestionsCurrentBestLocation();
    *buf = 138412802;
    *&buf[4] = uniqueName2;
    *&buf[12] = 2112;
    *&buf[14] = @"ALL";
    *&buf[22] = 2112;
    v126 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
  }

  v97 = objc_opt_new();
  v11 = +[MapsExternalAccessory sharedInstance];
  needsFuel = [v11 needsFuel];

  if (!needsFuel)
  {
    goto LABEL_101;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    uniqueName3 = [(MapsSuggestionsCarPlaySource *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName3;
    *&buf[12] = 2080;
    *&buf[14] = "needsFuel";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "needsFuel", "", buf, 2u);
  }

  selfCopy = self;
  v94 = handlerCopy;

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v16 = +[MapsExternalAccessory sharedInstance];
  engineStates = [v16 engineStates];
  allValues = [engineStates allValues];

  v19 = [allValues countByEnumeratingWithState:&v107 objects:v112 count:16];
  if (!v19)
  {
    LOBYTE(v22) = 1;
    goto LABEL_52;
  }

  v20 = v19;
  v21 = *v108;
  v22 = 1;
  v95 = *v108;
  v96 = allValues;
  do
  {
    v23 = 0;
    v98 = v20;
    do
    {
      v24 = v22;
      if (*v108 != v21)
      {
        objc_enumerationMutation(allValues);
      }

      v25 = *(*(&v107 + 1) + 8 * v23);
      if (![v25 lowRangeWarning])
      {
        v22 = v24;
        goto LABEL_46;
      }

      engineType = [v25 engineType];
      v27 = engineType;
      v22 = 0;
      if (engineType > 3)
      {
        if (engineType != 8 && engineType != 4)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (engineType == 1)
        {
          if (!GEOConfigGetBOOL())
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }

        if (engineType != 2)
        {
          goto LABEL_46;
        }
      }

      if ((GEOConfigGetBOOL() & 1) == 0)
      {
LABEL_27:
        v22 = 0;
        goto LABEL_46;
      }

LABEL_29:
      v28 = sub_10002A990(v27);
      v29 = v28;
      if ((v28 & 0x10000) != 0 && !sub_10002ABDC(v28))
      {
        obj = MapsSuggestionsLocalizedCarPlayLowEVString();
      }

      else
      {
        if (sub_10002ABDC(v29))
        {
          MapsSuggestionsLocalizedCarPlayLowFuelAndEVBatteryString();
        }

        else
        {
          MapsSuggestionsLocalizedCarPlayLowFuelString();
        }
        obj = ;
        if ((v29 & 0x10000) == 0)
        {
          goto LABEL_38;
        }
      }

      if (!sub_10002ABDC(v29))
      {
        v30 = MapsSuggestionsLocalizedFindEVChargerString();
        goto LABEL_42;
      }

LABEL_38:
      if ((v29 & 1) != 0 && !sub_10002ABDC(v29))
      {
        v32 = 1;
        v31 = MapsSuggestionsLocalizedFindStationString();
        goto LABEL_43;
      }

      v30 = MapsSuggestionsLocalizedFindStationForDieselCNGHybridString();
LABEL_42:
      v31 = v30;
      v32 = v29;
LABEL_43:
      GEOConfigGetDouble();
      v34 = v33;
      GEOConfigGetDouble();
      v99 = [NSDate dateWithTimeIntervalSinceNow:?];
      v35 = [NSString alloc];
      v36 = sub_10002AA54(v29);
      v37 = [v36 stringByReplacingOccurrencesOfString:@" withString:{", @"_"}];
      v38 = [v35 initWithFormat:@"CarPlayLowOnEnergy_%@", v37];

      v113 = @"MapsSuggestionsCarPlayUniqueKey";
      v114 = @"MapsSuggestionsGEOMapItemOriginKey";
      *buf = v38;
      *&buf[8] = &off_100079228;
      v115 = @"MapsSuggestionsCarPlayEnergyTypeKey";
      v39 = [NSNumber numberWithUnsignedInt:v27];
      v40 = v39;
      v41 = @"evcharger";
      if (((v29 & 0x1010100) != 0x10000) | v32 & 1)
      {
        v41 = @"gas";
      }

      *&buf[16] = v39;
      v126 = v41;
      v116 = @"MapsSuggestionsCarPlayEnergyQueryString";
      v117 = @"MapsSuggestionsCarPlayEnergyBulletinTitle";
      v127 = obj;
      v128 = v31;
      v118 = @"MapsSuggestionsCarPlayEnergyBulletinSubtitle";
      v119 = @"MapsSuggestionsCarPlayEnergyBulletinEngineType";
      v42 = [NSNumber numberWithUnsignedInt:v27];
      v129 = v42;
      v130 = &off_100079240;
      v120 = @"MapsSuggestionsTransportTypeKey";
      v121 = @"MapsSuggestionsPrimaryKey";
      v131 = @"MapsSuggestionsCarPlayUniqueKey";
      v132 = &__kCFBooleanTrue;
      v122 = @"MapsSuggestionsIsNotADestinationKey";
      v123 = @"MapsSuggestionsNeedsETATrackingKey";
      v124 = @"MapsSuggestionsNeedsDistanceTrackingKey";
      v133 = &__kCFBooleanFalse;
      v134 = &__kCFBooleanFalse;
      v43 = [NSDictionary dictionaryWithObjects:buf forKeys:&v113 count:12];

      v44 = [MapsSuggestionsEntry entryWithType:10 title:obj subtitle:v31 weight:v99 expires:v43 sourceSpecificInfo:v34];

      [v97 addObject:v44];
      v22 = v24;
      v21 = v95;
      allValues = v96;
      v20 = v98;
LABEL_46:
      v23 = v23 + 1;
    }

    while (v20 != v23);
    v45 = [allValues countByEnumeratingWithState:&v107 objects:v112 count:16];
    v20 = v45;
  }

  while (v45);
LABEL_52:

  if (![v97 count] && (v22 & 1) != 0)
  {
    obja = +[MapsExternalAccessory sharedInstance];
    primaryEngineType = [obja primaryEngineType];
    v47 = sub_10002A990(primaryEngineType);
    v48 = v47;
    if ((v47 & 0x10000) != 0 && !sub_10002ABDC(v47))
    {
      v53 = MapsSuggestionsLocalizedCarPlayLowEVString();
    }

    else
    {
      if (sub_10002ABDC(v48))
      {
        MapsSuggestionsLocalizedCarPlayLowFuelAndEVBatteryString();
      }

      else
      {
        MapsSuggestionsLocalizedCarPlayLowFuelString();
      }
      v53 = ;
      if ((v48 & 0x10000) == 0)
      {
LABEL_69:
        if ((v48 & 1) == 0 || sub_10002ABDC(v48))
        {
          v54 = MapsSuggestionsLocalizedFindStationForDieselCNGHybridString();
          goto LABEL_73;
        }

        v56 = 1;
        v55 = MapsSuggestionsLocalizedFindStationString();
LABEL_74:
        GEOConfigGetDouble();
        v58 = v57;
        GEOConfigGetDouble();
        v59 = [NSDate dateWithTimeIntervalSinceNow:?];
        v60 = [NSString alloc];
        v61 = sub_10002AA54(v48);
        v62 = [v61 stringByReplacingOccurrencesOfString:@" withString:{", @"_"}];
        v63 = [v60 initWithFormat:@"CarPlayLowOnEnergy_%@", v62];

        v113 = @"MapsSuggestionsCarPlayUniqueKey";
        v114 = @"MapsSuggestionsGEOMapItemOriginKey";
        *buf = v63;
        *&buf[8] = &off_100079228;
        v115 = @"MapsSuggestionsCarPlayEnergyTypeKey";
        v64 = [NSNumber numberWithUnsignedInt:primaryEngineType];
        v65 = v64;
        v66 = @"evcharger";
        if (((v48 & 0x1010100) != 0x10000) | v56 & 1)
        {
          v66 = @"gas";
        }

        *&buf[16] = v64;
        v126 = v66;
        v116 = @"MapsSuggestionsCarPlayEnergyQueryString";
        v117 = @"MapsSuggestionsCarPlayEnergyBulletinTitle";
        v127 = v53;
        v128 = v55;
        v118 = @"MapsSuggestionsCarPlayEnergyBulletinSubtitle";
        v119 = @"MapsSuggestionsCarPlayEnergyBulletinEngineType";
        v67 = [NSNumber numberWithUnsignedInt:primaryEngineType];
        v129 = v67;
        v130 = &off_100079240;
        v120 = @"MapsSuggestionsTransportTypeKey";
        v121 = @"MapsSuggestionsPrimaryKey";
        v131 = @"MapsSuggestionsCarPlayUniqueKey";
        v132 = &__kCFBooleanTrue;
        v122 = @"MapsSuggestionsIsNotADestinationKey";
        v123 = @"MapsSuggestionsNeedsETATrackingKey";
        v124 = @"MapsSuggestionsNeedsDistanceTrackingKey";
        v133 = &__kCFBooleanFalse;
        v134 = &__kCFBooleanFalse;
        v68 = [NSDictionary dictionaryWithObjects:buf forKeys:&v113 count:12];

        v69 = [MapsSuggestionsEntry entryWithType:10 title:v53 subtitle:v55 weight:v59 expires:v68 sourceSpecificInfo:v58];

        [v97 addObject:v69];
LABEL_95:

        handlerCopy = v94;
        self = selfCopy;
        goto LABEL_96;
      }
    }

    if (sub_10002ABDC(v48))
    {
      goto LABEL_69;
    }

    v54 = MapsSuggestionsLocalizedFindEVChargerString();
LABEL_73:
    v55 = v54;
    v56 = v48;
    goto LABEL_74;
  }

  handlerCopy = v94;
  self = selfCopy;
  if ([v97 count] >= 2)
  {
    v49 = +[MapsExternalAccessory sharedInstance];
    engineTypes = [v49 engineTypes];
    v51 = engineTypes;
    if ((engineTypes & 0x10000) != 0 && !sub_10002ABDC(engineTypes))
    {
      v52 = MapsSuggestionsLocalizedCarPlayLowEVString();
    }

    else
    {
      if (sub_10002ABDC(v51))
      {
        MapsSuggestionsLocalizedCarPlayLowFuelAndEVBatteryString();
      }

      else
      {
        MapsSuggestionsLocalizedCarPlayLowFuelString();
      }
      v52 = ;
    }

    v69 = v52;

    v70 = +[MapsExternalAccessory sharedInstance];
    engineTypes2 = [v70 engineTypes];
    v72 = engineTypes2;
    if ((engineTypes2 & 0x10000) != 0 && !sub_10002ABDC(engineTypes2))
    {
      v73 = MapsSuggestionsLocalizedFindEVChargerString();
    }

    else if ((v72 & 1) != 0 && !sub_10002ABDC(v72))
    {
      v73 = MapsSuggestionsLocalizedFindStationString();
    }

    else
    {
      v73 = MapsSuggestionsLocalizedFindStationForDieselCNGHybridString();
    }

    v74 = v73;

    v75 = +[MapsExternalAccessory sharedInstance];
    primaryEngineType2 = [v75 primaryEngineType];

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    objb = v97;
    v77 = [objb countByEnumeratingWithState:&v103 objects:v111 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v104;
      do
      {
        for (i = 0; i != v78; i = i + 1)
        {
          if (*v104 != v79)
          {
            objc_enumerationMutation(objb);
          }

          v81 = *(*(&v103 + 1) + 8 * i);
          [v81 setString:v69 forKey:@"MapsSuggestionsCarPlayEnergyBulletinTitle"];
          [v81 setString:v74 forKey:@"MapsSuggestionsCarPlayEnergyBulletinSubtitle"];
          [NSNumber numberWithUnsignedInt:primaryEngineType2];
          v83 = v82 = v69;
          [v81 setNumber:v83 forKey:@"MapsSuggestionsCarPlayEnergyBulletinEngineType"];

          v69 = v82;
        }

        v78 = [objb countByEnumeratingWithState:&v103 objects:v111 count:16];
      }

      while (v78);
    }

    goto LABEL_95;
  }

LABEL_96:
  v84 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    uniqueName4 = [(MapsSuggestionsCarPlaySource *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName4;
    *&buf[12] = 2080;
    *&buf[14] = "needsFuel";
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v86 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v86))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "needsFuel", "", buf, 2u);
  }

LABEL_101:
  [(MapsSuggestionsCarPlaySource *)self addOrUpdateMySuggestionEntries:v97];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v87 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
  {
    uniqueName5 = [(MapsSuggestionsCarPlaySource *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = uniqueName5;
    *&buf[12] = 2080;
    *&buf[14] = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v89 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v89))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v89, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  GEOConfigGetDouble();
  v91 = v90;

  return v91;
}

@end