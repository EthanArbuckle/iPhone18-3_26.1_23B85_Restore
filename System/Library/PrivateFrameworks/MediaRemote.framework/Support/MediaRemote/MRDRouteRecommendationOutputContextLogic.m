@interface MRDRouteRecommendationOutputContextLogic
- (BOOL)localOutputContextHasDeviceOfType:(unsigned int)a3;
- (id)_localOutputContextDeviceTypesCount;
- (void)reloadOutputContextData;
@end

@implementation MRDRouteRecommendationOutputContextLogic

- (BOOL)localOutputContextHasDeviceOfType:(unsigned int)a3
{
  v4 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v5 = [v4 outputDevices];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100144C00;
  v8[3] = &unk_1004BEBA0;
  v9 = a3;
  v6 = [v5 msv_firstWhere:v8];
  LOBYTE(a3) = v6 != 0;

  return a3;
}

- (void)reloadOutputContextData
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v4 = [v3 outputDevices];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    LODWORD(v10) = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 deviceType] == 2)
        {
          v10 = (v10 + 1);
        }

        else
        {
          v10 = v10;
        }

        if ([v13 deviceType] == 5)
        {
          v7 = (v7 + 1);
        }

        else
        {
          v7 = v7;
        }

        if ([v13 deviceType] == 3)
        {
          v8 = (v8 + 1);
        }

        else
        {
          v8 = v8;
        }

        if ([v13 deviceType] == 1)
        {
          v9 = (v9 + 1);
        }

        else
        {
          v9 = v9;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v24[0] = &off_1004E0A10;
  v14 = [NSNumber numberWithInt:v10];
  v25[0] = v14;
  v24[1] = &off_1004E0A28;
  v15 = [NSNumber numberWithInt:v7];
  v25[1] = v15;
  v24[2] = &off_1004E0A40;
  v16 = [NSNumber numberWithInt:v8];
  v25[2] = v16;
  v24[3] = &off_1004E0A58;
  v17 = [NSNumber numberWithInt:v9];
  v25[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
  localOutputContextDeviceTypesCount = self->_localOutputContextDeviceTypesCount;
  self->_localOutputContextDeviceTypesCount = v18;
}

- (id)_localOutputContextDeviceTypesCount
{
  localOutputContextDeviceTypesCount = self->_localOutputContextDeviceTypesCount;
  if (!localOutputContextDeviceTypesCount)
  {
    [(MRDRouteRecommendationOutputContextLogic *)self reloadOutputContextData];
    localOutputContextDeviceTypesCount = self->_localOutputContextDeviceTypesCount;
  }

  return localOutputContextDeviceTypesCount;
}

@end