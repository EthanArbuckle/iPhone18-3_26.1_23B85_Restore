@interface MapsExternalAccessoryState
+ (id)allKeys;
- (BOOL)isEqualToState:(id)a3;
- (MapsExternalAccessoryState)initWithAccessory:(id)a3;
- (id)_augmentVehicleInfo:(id)a3;
- (id)descriptionForKey:(id)a3;
- (void)_augmentMutableVehicleInfo:(id)a3;
- (void)updateWithInfo:(id)a3;
@end

@implementation MapsExternalAccessoryState

+ (id)allKeys
{
  if (qword_100075880 != -1)
  {
    sub_10003D8EC();
  }

  v3 = qword_100075878;

  return v3;
}

- (id)descriptionForKey:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"destinationHandoffEnabled"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"lowRangeWarning"))
  {
    v5 = [(MapsExternalAccessoryState *)self valueForKey:v4];
    v6 = [v5 BOOLValue];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v8 = v7;
  }

  else
  {
    if ([v4 isEqualToString:@"engineTypes"])
    {
      v9 = sub_100002230([(MapsExternalAccessoryState *)self engineTypes]);
    }

    else
    {
      v11.receiver = self;
      v11.super_class = MapsExternalAccessoryState;
      v9 = [(MapsExternalState *)&v11 descriptionForKey:v4];
    }

    v8 = v9;
  }

  return v8;
}

- (MapsExternalAccessoryState)initWithAccessory:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MapsExternalAccessoryState;
  v5 = [(MapsExternalAccessoryState *)&v19 init];
  if (v5)
  {
    v6 = [v4 serialNumber];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_connectionID = [v4 connectionID];
    v8 = [v4 manufacturer];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v8;

    v10 = [v4 modelNumber];
    model = v5->_model;
    v5->_model = v10;

    v12 = [v4 name];
    carName = v5->_carName;
    v5->_carName = v12;

    v14 = [v4 macAddress];
    bluetoothIdentifier = v5->_bluetoothIdentifier;
    v5->_bluetoothIdentifier = v14;

    v5->_destinationHandoffEnabled = [v4 pointOfInterestHandoffEnabled];
    v16 = [v4 getVehicleInfoData];
    [(MapsExternalAccessoryState *)v5 updateWithInfo:v16];
    v17 = [v4 vehicleInfoInitialData];

    [(MapsExternalAccessoryState *)v5 updateWithInfo:v17];
  }

  return v5;
}

- (void)_augmentMutableVehicleInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000030D0;
  v4[3] = &unk_100064D98;
  v5 = a3;
  v3 = v5;
  sub_100002618(v4);
}

- (id)_augmentVehicleInfo:(id)a3
{
  v4 = [NSMutableDictionary dictionaryWithDictionary:a3];
  v5 = sub_10000333C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "pre-augment vehicleInfo=%@", &v8, 0xCu);
  }

  [(MapsExternalAccessoryState *)self _augmentMutableVehicleInfo:v4];
  v6 = sub_10000333C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "post-augment vehicleInfo=%@", &v8, 0xCu);
  }

  return v4;
}

- (void)updateWithInfo:(id)a3
{
  v4 = a3;
  v5 = sub_10000333C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "vehicleInfo=%@", buf, 0xCu);
  }

  if (GEOConfigGetBOOL())
  {
    v6 = [(MapsExternalAccessoryState *)self _augmentVehicleInfo:v4];

    v4 = v6;
  }

  v7 = EAConnectionIDKey;
  v8 = [v4 objectForKeyedSubscript:EAConnectionIDKey];
  if (!v8 || (v9 = v8, [v4 objectForKeyedSubscript:v7], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "unsignedIntegerValue"), v12 = -[MapsExternalAccessoryState connectionID](self, "connectionID"), v10, v9, v11 == v12))
  {
    v13 = EAVehicleInfoYearKey;
    v14 = [v4 objectForKeyedSubscript:EAVehicleInfoYearKey];

    if (v14)
    {
      v15 = [v4 objectForKeyedSubscript:v13];
      [(MapsExternalAccessoryState *)self setYear:v15];
    }

    v16 = EAVehicleInfoMapsDisplayNameKey;
    v17 = [v4 objectForKeyedSubscript:EAVehicleInfoMapsDisplayNameKey];

    if (v17)
    {
      v18 = [v4 objectForKeyedSubscript:v16];
      [(MapsExternalAccessoryState *)self setMapsDisplayName:v18];
    }

    v19 = EAVehicleInfoEngineTypeBitmaskKey;
    v20 = [v4 objectForKeyedSubscript:EAVehicleInfoEngineTypeBitmaskKey];

    if (!v20)
    {
      goto LABEL_18;
    }

    v21 = [v4 objectForKeyedSubscript:v19];
    -[MapsExternalAccessoryState setEngineType:](self, "setEngineType:", [v21 longLongValue]);

    v22 = [(MapsExternalAccessoryState *)self engineTypes];
    v23 = objc_opt_new();
    if (v22)
    {
      v37 = +[MapsCarEngineState engineStateGasoline];
      [v23 setObject:v37 forKeyedSubscript:&off_10006A600];

      if ((v22 & 0x100) == 0)
      {
LABEL_14:
        if ((v22 & 0x10000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_33;
      }
    }

    else if ((v22 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    v38 = +[MapsCarEngineState engineStateDiesel];
    [v23 setObject:v38 forKeyedSubscript:&off_10006A618];

    if ((v22 & 0x10000) == 0)
    {
LABEL_15:
      if ((v22 & 0x1000000) == 0)
      {
LABEL_17:
        [(MapsExternalAccessoryState *)self setEngineStates:v23];

LABEL_18:
        v25 = EAVehicleInfoHasLowDistanceRangeKey;
        v26 = [v4 objectForKeyedSubscript:EAVehicleInfoHasLowDistanceRangeKey];

        if (v26)
        {
          v27 = [v4 objectForKeyedSubscript:v25];
          -[MapsExternalAccessoryState setLowRangeWarning:](self, "setLowRangeWarning:", [v27 BOOLValue]);
        }

        v28 = EAVehicleInfoRangeKey;
        v29 = [v4 objectForKeyedSubscript:EAVehicleInfoRangeKey];

        if (v29)
        {
          v30 = [v4 objectForKeyedSubscript:v28];
          [(MapsExternalAccessoryState *)self setRange:v30];
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v31 = [(MapsExternalAccessoryState *)self engineStates];
        v32 = [v31 allValues];

        v33 = [v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v41;
          do
          {
            v36 = 0;
            do
            {
              if (*v41 != v35)
              {
                objc_enumerationMutation(v32);
              }

              [*(*(&v40 + 1) + 8 * v36) updateWithVehicleInfo:v4];
              v36 = v36 + 1;
            }

            while (v34 != v36);
            v34 = [v32 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v34);
        }

        goto LABEL_30;
      }

LABEL_16:
      v24 = +[MapsCarEngineState engineStateCNG];
      [v23 setObject:v24 forKeyedSubscript:&off_10006A648];

      goto LABEL_17;
    }

LABEL_33:
    v39 = +[MapsCarEngineState engineStateElectric];
    [v23 setObject:v39 forKeyedSubscript:&off_10006A630];

    if ((v22 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
}

- (BOOL)isEqualToState:(id)a3
{
  v4.receiver = self;
  v4.super_class = MapsExternalAccessoryState;
  return [(MapsExternalState *)&v4 isEqualToState:a3];
}

@end