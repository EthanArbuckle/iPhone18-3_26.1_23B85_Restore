@interface NMMessageLogger
+ (id)descriptionForLocationUpdateRelativeMessage:(id)message;
+ (id)descriptionForSetWantsAllNavStatusUpdatesMessage:(id)message;
+ (id)descriptionForUpdateNavRouteDetailsMessage:(id)message;
+ (id)descriptionForUpdateNavRouteStatusMessage:(id)message;
+ (id)shortDebugDescriptionForMessage:(id)message;
@end

@implementation NMMessageLogger

+ (id)descriptionForSetWantsAllNavStatusUpdatesMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy argumentForTag:5];
  if ([v4 BOOLValue])
  {
    v5 = [messageCopy argumentForTag:401];

    dataValue = [v5 dataValue];
    type = [messageCopy type];
    if (type > 202)
    {
      if (type <= 400)
      {
        if (type <= 205)
        {
          if (type == 203)
          {
            v8 = @"FAILED_TO_UPDATE_LOCATION";
          }

          else if (type == 204)
          {
            v8 = @"DID_PAUSE_LOCATION_UPDATES";
          }

          else
          {
            v8 = @"DID_RESUME_LOCATION_UPDATES";
          }
        }

        else
        {
          switch(type)
          {
            case 300:
              v8 = @"UPDATE_NAV_ROUTE_DETAILS";
              break;
            case 301:
              v8 = @"UPDATE_NAV_ROUTE_STATUS";
              break;
            case 302:
              v8 = @"START_NAV";
              break;
            case 303:
              v8 = @"STOP_NAV";
              break;
            case 304:
              v8 = @"PREVIEW_NAV";
              break;
            case 305:
              v8 = @"CLEAR_NAV_PREVIEW";
              break;
            case 306:
              v8 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
              break;
            case 307:
              v8 = @"DISMISS_NAV_SAFETY_ALERT";
              break;
            case 308:
              v8 = @"AVAILABLE_ROUTE";
              break;
            case 309:
              v8 = @"SELECTED_ROUTE";
              break;
            case 310:
              v8 = @"REQUEST_NAVIGATION_UPDATE";
              break;
            case 311:
              v8 = @"UPDATE_NAV_ROUTE_UPDATE";
              break;
            case 312:
              v8 = @"AVAILABLE_ROUTE_UPDATE";
              break;
            case 313:
              v8 = @"PAUSE_NAV";
              break;
            case 314:
              v8 = @"RESUME_NAV";
              break;
            case 315:
              v8 = @"SET_DISPLAYED_STEP";
              break;
            default:
              if (type != 206)
              {
                goto LABEL_98;
              }

              v8 = @"APPLY_LOCATION_AUTHORIZATION";
              break;
          }
        }

        goto LABEL_179;
      }

      if (type > 599)
      {
        if (type > 1499)
        {
          if (type == 1500)
          {
            v8 = @"DEBUG_FETCH_CONFIGURATION_INFO";
            goto LABEL_179;
          }

          if (type == 1501)
          {
            v8 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
            goto LABEL_179;
          }
        }

        else
        {
          if (type == 600)
          {
            v8 = @"FETCH_ROUTE_GENIUS";
            goto LABEL_179;
          }

          if (type == 1000)
          {
            v8 = @"PING";
            goto LABEL_179;
          }
        }

        goto LABEL_98;
      }

      if (type > 500)
      {
        if (type == 501)
        {
          v8 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
          goto LABEL_179;
        }

        if (type == 502)
        {
          v8 = @"SERVICE_REQUEST";
          goto LABEL_179;
        }

        goto LABEL_98;
      }

      if (type == 401)
      {
        v8 = @"OPEN_URL";
        goto LABEL_179;
      }

      if (type != 500)
      {
        goto LABEL_98;
      }

      v8 = @"PLACE_DATA_MUID_LOOKUP";
    }

    else
    {
      if (type <= 99)
      {
        if (type > 3)
        {
          switch(type)
          {
            case '2':
              v8 = @"START_INITIAL_SYNC";
              break;
            case '3':
              v8 = @"FETCH_CURRENT_COUNTRY_CODE";
              break;
            case '4':
              v8 = @"FETCH_EXPERIMENTS_CONFIG";
              break;
            case '5':
              v8 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
              break;
            case '6':
              v8 = @"SYNC_UP_NEXT_ITEMS";
              break;
            case '7':
              v8 = @"REQUEST_UP_NEXT_ITEMS";
              break;
            case '8':
              v8 = @"SYNC_CONFIG_STORE";
              break;
            case '9':
              v8 = @"CHECKIN_WITH_CONFIG_STORE";
              break;
            case ':':
              v8 = @"REQUEST_ANALYTIC_IDENTIFIERS";
              break;
            case ';':
              v8 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
              break;
            case '<':
              v8 = @"SYNC_SUBSCRIPTION_INFO";
              break;
            case '=':
              v8 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
              break;
            case '>':
              goto LABEL_98;
            case '?':
              v8 = @"UPDATE_SUBSCRIPTION_STATE";
              break;
            case '@':
              v8 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
              break;
            case 'A':
              v8 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'B':
              v8 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
              break;
            case 'C':
              v8 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
              break;
            default:
              if (type != 4)
              {
                goto LABEL_98;
              }

              v8 = @"FETCHED_TILE";
              break;
          }

          goto LABEL_179;
        }

        switch(type)
        {
          case 1:
            v8 = @"FETCH_TILES";
            goto LABEL_179;
          case 2:
            v8 = @"CANCEL_TILES";
            goto LABEL_179;
          case 3:
            v8 = @"REPORT_CORRUPT_TILE";
            goto LABEL_179;
        }

LABEL_98:
        v8 = [NSString stringWithFormat:@"(unknown: %i)", type];
        goto LABEL_179;
      }

      if (type <= 102)
      {
        if (type == 100)
        {
          v8 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v8 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v8 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_179;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v8 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v8 = @"UPDATED_LOCATION";
        }

        goto LABEL_179;
      }

      if (type == 103)
      {
        v8 = @"FETCH_RESOURCE";
        goto LABEL_179;
      }

      if (type != 200)
      {
        goto LABEL_98;
      }

      v8 = @"START_LOCATION_UPDATE";
    }

LABEL_179:
    v10 = [NSString stringWithFormat:@"%@ YES routeID:%@", v8, dataValue];

    v4 = v5;
    goto LABEL_182;
  }

  type2 = [messageCopy type];
  if (type2 > 202)
  {
    if (type2 <= 400)
    {
      if (type2 <= 205)
      {
        if (type2 == 203)
        {
          dataValue = @"FAILED_TO_UPDATE_LOCATION";
        }

        else if (type2 == 204)
        {
          dataValue = @"DID_PAUSE_LOCATION_UPDATES";
        }

        else
        {
          dataValue = @"DID_RESUME_LOCATION_UPDATES";
        }
      }

      else
      {
        switch(type2)
        {
          case 300:
            dataValue = @"UPDATE_NAV_ROUTE_DETAILS";
            break;
          case 301:
            dataValue = @"UPDATE_NAV_ROUTE_STATUS";
            break;
          case 302:
            dataValue = @"START_NAV";
            break;
          case 303:
            dataValue = @"STOP_NAV";
            break;
          case 304:
            dataValue = @"PREVIEW_NAV";
            break;
          case 305:
            dataValue = @"CLEAR_NAV_PREVIEW";
            break;
          case 306:
            dataValue = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
            break;
          case 307:
            dataValue = @"DISMISS_NAV_SAFETY_ALERT";
            break;
          case 308:
            dataValue = @"AVAILABLE_ROUTE";
            break;
          case 309:
            dataValue = @"SELECTED_ROUTE";
            break;
          case 310:
            dataValue = @"REQUEST_NAVIGATION_UPDATE";
            break;
          case 311:
            dataValue = @"UPDATE_NAV_ROUTE_UPDATE";
            break;
          case 312:
            dataValue = @"AVAILABLE_ROUTE_UPDATE";
            break;
          case 313:
            dataValue = @"PAUSE_NAV";
            break;
          case 314:
            dataValue = @"RESUME_NAV";
            break;
          case 315:
            dataValue = @"SET_DISPLAYED_STEP";
            break;
          default:
            if (type2 != 206)
            {
              goto LABEL_101;
            }

            dataValue = @"APPLY_LOCATION_AUTHORIZATION";
            break;
        }
      }

      goto LABEL_181;
    }

    if (type2 > 599)
    {
      if (type2 > 1499)
      {
        if (type2 == 1500)
        {
          dataValue = @"DEBUG_FETCH_CONFIGURATION_INFO";
          goto LABEL_181;
        }

        if (type2 == 1501)
        {
          dataValue = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
          goto LABEL_181;
        }
      }

      else
      {
        if (type2 == 600)
        {
          dataValue = @"FETCH_ROUTE_GENIUS";
          goto LABEL_181;
        }

        if (type2 == 1000)
        {
          dataValue = @"PING";
          goto LABEL_181;
        }
      }

      goto LABEL_101;
    }

    if (type2 > 500)
    {
      if (type2 == 501)
      {
        dataValue = @"PLACE_DATA_IDENTIFIER_LOOKUP";
        goto LABEL_181;
      }

      if (type2 == 502)
      {
        dataValue = @"SERVICE_REQUEST";
        goto LABEL_181;
      }

      goto LABEL_101;
    }

    if (type2 == 401)
    {
      dataValue = @"OPEN_URL";
      goto LABEL_181;
    }

    if (type2 != 500)
    {
      goto LABEL_101;
    }

    dataValue = @"PLACE_DATA_MUID_LOOKUP";
  }

  else
  {
    if (type2 <= 99)
    {
      if (type2 > 3)
      {
        switch(type2)
        {
          case '2':
            dataValue = @"START_INITIAL_SYNC";
            break;
          case '3':
            dataValue = @"FETCH_CURRENT_COUNTRY_CODE";
            break;
          case '4':
            dataValue = @"FETCH_EXPERIMENTS_CONFIG";
            break;
          case '5':
            dataValue = @"DID_CHANGE_EXPERIMENTS_CONFIG";
            break;
          case '6':
            dataValue = @"SYNC_UP_NEXT_ITEMS";
            break;
          case '7':
            dataValue = @"REQUEST_UP_NEXT_ITEMS";
            break;
          case '8':
            dataValue = @"SYNC_CONFIG_STORE";
            break;
          case '9':
            dataValue = @"CHECKIN_WITH_CONFIG_STORE";
            break;
          case ':':
            dataValue = @"REQUEST_ANALYTIC_IDENTIFIERS";
            break;
          case ';':
            dataValue = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
            break;
          case '<':
            dataValue = @"SYNC_SUBSCRIPTION_INFO";
            break;
          case '=':
            dataValue = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
            break;
          case '>':
            goto LABEL_101;
          case '?':
            dataValue = @"UPDATE_SUBSCRIPTION_STATE";
            break;
          case '@':
            dataValue = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
            break;
          case 'A':
            dataValue = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'B':
            dataValue = @"SET_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'C':
            dataValue = @"SET_SUBSCRIPTION_SHOULD_SYNC";
            break;
          default:
            if (type2 != 4)
            {
              goto LABEL_101;
            }

            dataValue = @"FETCHED_TILE";
            break;
        }

        goto LABEL_181;
      }

      switch(type2)
      {
        case 1:
          dataValue = @"FETCH_TILES";
          goto LABEL_181;
        case 2:
          dataValue = @"CANCEL_TILES";
          goto LABEL_181;
        case 3:
          dataValue = @"REPORT_CORRUPT_TILE";
          goto LABEL_181;
      }

LABEL_101:
      dataValue = [NSString stringWithFormat:@"(unknown: %i)", type2];
      goto LABEL_181;
    }

    if (type2 <= 102)
    {
      if (type2 == 100)
      {
        dataValue = @"CHECKIN_WITH_TILE_GROUP";
      }

      else if (type2 == 101)
      {
        dataValue = @"FORCE_UPDATE_MANIFEST";
      }

      else
      {
        dataValue = @"DID_CHANGE_ACTIVE_TILE_GROUP";
      }

      goto LABEL_181;
    }

    if (type2 > 200)
    {
      if (type2 == 201)
      {
        dataValue = @"STOP_LOCATION_UPDATE";
      }

      else
      {
        dataValue = @"UPDATED_LOCATION";
      }

      goto LABEL_181;
    }

    if (type2 == 103)
    {
      dataValue = @"FETCH_RESOURCE";
      goto LABEL_181;
    }

    if (type2 != 200)
    {
      goto LABEL_101;
    }

    dataValue = @"START_LOCATION_UPDATE";
  }

LABEL_181:
  v10 = [NSString stringWithFormat:@"%@ NO", dataValue];
LABEL_182:

  return v10;
}

+ (id)descriptionForUpdateNavRouteDetailsMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy argumentForTag:401];
  dataValue = [v4 dataValue];
  if (dataValue)
  {
    v6 = [[GEOCompanionRouteDetails alloc] initWithData:dataValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [messageCopy argumentForTag:402];

  dataValue2 = [v7 dataValue];
  if (dataValue2)
  {
    v9 = [[GEOCompanionRouteStatus alloc] initWithData:dataValue2];
  }

  else
  {
    v9 = 0;
  }

  v10 = [messageCopy argumentForTag:406];

  dataValue3 = [v10 dataValue];
  if (dataValue3)
  {
    v12 = [[GEOCompanionRouteContext alloc] initWithData:dataValue3];
  }

  else
  {
    v12 = 0;
  }

  type = [messageCopy type];
  v25 = v10;
  v26 = dataValue;
  v24 = dataValue2;
  if (type <= 202)
  {
    if (type > 99)
    {
      if (type <= 102)
      {
        if (type == 100)
        {
          v14 = v12;
          v15 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else
        {
          v14 = v12;
          if (type == 101)
          {
            v15 = @"FORCE_UPDATE_MANIFEST";
          }

          else
          {
            v15 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
          }
        }

        goto LABEL_99;
      }

      if (type > 200)
      {
        v14 = v12;
        if (type == 201)
        {
          v15 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v15 = @"UPDATED_LOCATION";
        }

        goto LABEL_99;
      }

      if (type == 103)
      {
        v14 = v12;
        v15 = @"FETCH_RESOURCE";
        goto LABEL_99;
      }

      if (type == 200)
      {
        v14 = v12;
        v15 = @"START_LOCATION_UPDATE";
        goto LABEL_99;
      }
    }

    else
    {
      if (type > 3)
      {
        switch(type)
        {
          case '2':
            v14 = v12;
            v15 = @"START_INITIAL_SYNC";
            break;
          case '3':
            v14 = v12;
            v15 = @"FETCH_CURRENT_COUNTRY_CODE";
            break;
          case '4':
            v14 = v12;
            v15 = @"FETCH_EXPERIMENTS_CONFIG";
            break;
          case '5':
            v14 = v12;
            v15 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
            break;
          case '6':
            v14 = v12;
            v15 = @"SYNC_UP_NEXT_ITEMS";
            break;
          case '7':
            v14 = v12;
            v15 = @"REQUEST_UP_NEXT_ITEMS";
            break;
          case '8':
            v14 = v12;
            v15 = @"SYNC_CONFIG_STORE";
            break;
          case '9':
            v14 = v12;
            v15 = @"CHECKIN_WITH_CONFIG_STORE";
            break;
          case ':':
            v14 = v12;
            v15 = @"REQUEST_ANALYTIC_IDENTIFIERS";
            break;
          case ';':
            v14 = v12;
            v15 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
            break;
          case '<':
            v14 = v12;
            v15 = @"SYNC_SUBSCRIPTION_INFO";
            break;
          case '=':
            v14 = v12;
            v15 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
            break;
          case '>':
            goto LABEL_59;
          case '?':
            v14 = v12;
            v15 = @"UPDATE_SUBSCRIPTION_STATE";
            break;
          case '@':
            v14 = v12;
            v15 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
            break;
          case 'A':
            v14 = v12;
            v15 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'B':
            v14 = v12;
            v15 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'C':
            v14 = v12;
            v15 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
            break;
          default:
            if (type != 4)
            {
              goto LABEL_59;
            }

            v14 = v12;
            v15 = @"FETCHED_TILE";
            break;
        }

        goto LABEL_99;
      }

      switch(type)
      {
        case 1:
          v14 = v12;
          v15 = @"FETCH_TILES";
          goto LABEL_99;
        case 2:
          v14 = v12;
          v15 = @"CANCEL_TILES";
          goto LABEL_99;
        case 3:
          v14 = v12;
          v15 = @"REPORT_CORRUPT_TILE";
          goto LABEL_99;
      }
    }

LABEL_59:
    v14 = v12;
    v15 = [NSString stringWithFormat:@"(unknown: %i)", type];
    goto LABEL_99;
  }

  if (type > 400)
  {
    if (type > 599)
    {
      if (type > 1499)
      {
        if (type == 1500)
        {
          v14 = v12;
          v15 = @"DEBUG_FETCH_CONFIGURATION_INFO";
          goto LABEL_99;
        }

        if (type == 1501)
        {
          v14 = v12;
          v15 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
          goto LABEL_99;
        }
      }

      else
      {
        if (type == 600)
        {
          v14 = v12;
          v15 = @"FETCH_ROUTE_GENIUS";
          goto LABEL_99;
        }

        if (type == 1000)
        {
          v14 = v12;
          v15 = @"PING";
          goto LABEL_99;
        }
      }
    }

    else if (type > 500)
    {
      if (type == 501)
      {
        v14 = v12;
        v15 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
        goto LABEL_99;
      }

      if (type == 502)
      {
        v14 = v12;
        v15 = @"SERVICE_REQUEST";
        goto LABEL_99;
      }
    }

    else
    {
      if (type == 401)
      {
        v14 = v12;
        v15 = @"OPEN_URL";
        goto LABEL_99;
      }

      if (type == 500)
      {
        v14 = v12;
        v15 = @"PLACE_DATA_MUID_LOOKUP";
        goto LABEL_99;
      }
    }

    goto LABEL_59;
  }

  if (type <= 205)
  {
    if (type == 203)
    {
      v14 = v12;
      v15 = @"FAILED_TO_UPDATE_LOCATION";
    }

    else
    {
      v14 = v12;
      if (type == 204)
      {
        v15 = @"DID_PAUSE_LOCATION_UPDATES";
      }

      else
      {
        v15 = @"DID_RESUME_LOCATION_UPDATES";
      }
    }
  }

  else
  {
    switch(type)
    {
      case 300:
        v14 = v12;
        v15 = @"UPDATE_NAV_ROUTE_DETAILS";
        break;
      case 301:
        v14 = v12;
        v15 = @"UPDATE_NAV_ROUTE_STATUS";
        break;
      case 302:
        v14 = v12;
        v15 = @"START_NAV";
        break;
      case 303:
        v14 = v12;
        v15 = @"STOP_NAV";
        break;
      case 304:
        v14 = v12;
        v15 = @"PREVIEW_NAV";
        break;
      case 305:
        v14 = v12;
        v15 = @"CLEAR_NAV_PREVIEW";
        break;
      case 306:
        v14 = v12;
        v15 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
        break;
      case 307:
        v14 = v12;
        v15 = @"DISMISS_NAV_SAFETY_ALERT";
        break;
      case 308:
        v14 = v12;
        v15 = @"AVAILABLE_ROUTE";
        break;
      case 309:
        v14 = v12;
        v15 = @"SELECTED_ROUTE";
        break;
      case 310:
        v14 = v12;
        v15 = @"REQUEST_NAVIGATION_UPDATE";
        break;
      case 311:
        v14 = v12;
        v15 = @"UPDATE_NAV_ROUTE_UPDATE";
        break;
      case 312:
        v14 = v12;
        v15 = @"AVAILABLE_ROUTE_UPDATE";
        break;
      case 313:
        v14 = v12;
        v15 = @"PAUSE_NAV";
        break;
      case 314:
        v14 = v12;
        v15 = @"RESUME_NAV";
        break;
      case 315:
        v14 = v12;
        v15 = @"SET_DISPLAYED_STEP";
        break;
      default:
        if (type != 206)
        {
          goto LABEL_59;
        }

        v14 = v12;
        v15 = @"APPLY_LOCATION_AUTHORIZATION";
        break;
    }
  }

LABEL_99:
  v16 = v6;
  routeID = [v6 routeID];
  stepID = [v9 stepID];
  feedbackType = [v9 feedbackType];
  if (feedbackType >= 0xB)
  {
    v20 = [NSString stringWithFormat:@"(unknown: %i)", feedbackType];
  }

  else
  {
    v20 = off_1000866A8[feedbackType];
  }

  simpleDescription = [v14 simpleDescription];
  v22 = [NSString stringWithFormat:@"%@ routeID:%@ stepID:%i feedbackType:%@ routeContext:%@", v15, routeID, stepID, v20, simpleDescription];

  return v22;
}

+ (id)descriptionForUpdateNavRouteStatusMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy argumentForTag:402];
  dataValue = [v4 dataValue];
  if (dataValue)
  {
    v6 = [[GEOCompanionRouteStatus alloc] initWithData:dataValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [messageCopy argumentForTag:406];

  dataValue2 = [v7 dataValue];
  if (dataValue2)
  {
    v9 = [[GEOCompanionRouteContext alloc] initWithData:dataValue2];
  }

  else
  {
    v9 = 0;
  }

  type = [messageCopy type];
  v18 = v7;
  if (type <= 202)
  {
    if (type > 99)
    {
      if (type <= 102)
      {
        if (type == 100)
        {
          v11 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v11 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v11 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_96;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v11 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v11 = @"UPDATED_LOCATION";
        }

        goto LABEL_96;
      }

      if (type == 103)
      {
        v11 = @"FETCH_RESOURCE";
        goto LABEL_96;
      }

      if (type == 200)
      {
        v11 = @"START_LOCATION_UPDATE";
        goto LABEL_96;
      }
    }

    else
    {
      if (type > 3)
      {
        switch(type)
        {
          case '2':
            v11 = @"START_INITIAL_SYNC";
            break;
          case '3':
            v11 = @"FETCH_CURRENT_COUNTRY_CODE";
            break;
          case '4':
            v11 = @"FETCH_EXPERIMENTS_CONFIG";
            break;
          case '5':
            v11 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
            break;
          case '6':
            v11 = @"SYNC_UP_NEXT_ITEMS";
            break;
          case '7':
            v11 = @"REQUEST_UP_NEXT_ITEMS";
            break;
          case '8':
            v11 = @"SYNC_CONFIG_STORE";
            break;
          case '9':
            v11 = @"CHECKIN_WITH_CONFIG_STORE";
            break;
          case ':':
            v11 = @"REQUEST_ANALYTIC_IDENTIFIERS";
            break;
          case ';':
            v11 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
            break;
          case '<':
            v11 = @"SYNC_SUBSCRIPTION_INFO";
            break;
          case '=':
            v11 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
            break;
          case '>':
            goto LABEL_56;
          case '?':
            v11 = @"UPDATE_SUBSCRIPTION_STATE";
            break;
          case '@':
            v11 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
            break;
          case 'A':
            v11 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'B':
            v11 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'C':
            v11 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
            break;
          default:
            if (type != 4)
            {
              goto LABEL_56;
            }

            v11 = @"FETCHED_TILE";
            break;
        }

        goto LABEL_96;
      }

      switch(type)
      {
        case 1:
          v11 = @"FETCH_TILES";
          goto LABEL_96;
        case 2:
          v11 = @"CANCEL_TILES";
          goto LABEL_96;
        case 3:
          v11 = @"REPORT_CORRUPT_TILE";
          goto LABEL_96;
      }
    }

LABEL_56:
    v11 = [NSString stringWithFormat:@"(unknown: %i)", type];
    goto LABEL_96;
  }

  if (type > 400)
  {
    if (type > 599)
    {
      if (type > 1499)
      {
        if (type == 1500)
        {
          v11 = @"DEBUG_FETCH_CONFIGURATION_INFO";
          goto LABEL_96;
        }

        if (type == 1501)
        {
          v11 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
          goto LABEL_96;
        }
      }

      else
      {
        if (type == 600)
        {
          v11 = @"FETCH_ROUTE_GENIUS";
          goto LABEL_96;
        }

        if (type == 1000)
        {
          v11 = @"PING";
          goto LABEL_96;
        }
      }
    }

    else if (type > 500)
    {
      if (type == 501)
      {
        v11 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
        goto LABEL_96;
      }

      if (type == 502)
      {
        v11 = @"SERVICE_REQUEST";
        goto LABEL_96;
      }
    }

    else
    {
      if (type == 401)
      {
        v11 = @"OPEN_URL";
        goto LABEL_96;
      }

      if (type == 500)
      {
        v11 = @"PLACE_DATA_MUID_LOOKUP";
        goto LABEL_96;
      }
    }

    goto LABEL_56;
  }

  if (type <= 205)
  {
    if (type == 203)
    {
      v11 = @"FAILED_TO_UPDATE_LOCATION";
    }

    else if (type == 204)
    {
      v11 = @"DID_PAUSE_LOCATION_UPDATES";
    }

    else
    {
      v11 = @"DID_RESUME_LOCATION_UPDATES";
    }
  }

  else
  {
    switch(type)
    {
      case 300:
        v11 = @"UPDATE_NAV_ROUTE_DETAILS";
        break;
      case 301:
        v11 = @"UPDATE_NAV_ROUTE_STATUS";
        break;
      case 302:
        v11 = @"START_NAV";
        break;
      case 303:
        v11 = @"STOP_NAV";
        break;
      case 304:
        v11 = @"PREVIEW_NAV";
        break;
      case 305:
        v11 = @"CLEAR_NAV_PREVIEW";
        break;
      case 306:
        v11 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
        break;
      case 307:
        v11 = @"DISMISS_NAV_SAFETY_ALERT";
        break;
      case 308:
        v11 = @"AVAILABLE_ROUTE";
        break;
      case 309:
        v11 = @"SELECTED_ROUTE";
        break;
      case 310:
        v11 = @"REQUEST_NAVIGATION_UPDATE";
        break;
      case 311:
        v11 = @"UPDATE_NAV_ROUTE_UPDATE";
        break;
      case 312:
        v11 = @"AVAILABLE_ROUTE_UPDATE";
        break;
      case 313:
        v11 = @"PAUSE_NAV";
        break;
      case 314:
        v11 = @"RESUME_NAV";
        break;
      case 315:
        v11 = @"SET_DISPLAYED_STEP";
        break;
      default:
        if (type != 206)
        {
          goto LABEL_56;
        }

        v11 = @"APPLY_LOCATION_AUTHORIZATION";
        break;
    }
  }

LABEL_96:
  stepID = [v6 stepID];
  feedbackType = [v6 feedbackType];
  if (feedbackType >= 0xB)
  {
    v14 = [NSString stringWithFormat:@"(unknown: %i)", feedbackType];
  }

  else
  {
    v14 = off_1000866A8[feedbackType];
  }

  simpleDescription = [v9 simpleDescription];
  v16 = [NSString stringWithFormat:@"%@ stepID:%i feedbackType:%@ routeContext:%@", v11, stepID, v14, simpleDescription];

  return v16;
}

+ (id)descriptionForLocationUpdateRelativeMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy argumentForTag:4];
  type = [messageCopy type];

  if (type <= 202)
  {
    if (type > 99)
    {
      if (type <= 102)
      {
        if (type == 100)
        {
          v6 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type == 101)
        {
          v6 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v6 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_90;
      }

      if (type > 200)
      {
        if (type == 201)
        {
          v6 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v6 = @"UPDATED_LOCATION";
        }

        goto LABEL_90;
      }

      if (type == 103)
      {
        v6 = @"FETCH_RESOURCE";
        goto LABEL_90;
      }

      if (type == 200)
      {
        v6 = @"START_LOCATION_UPDATE";
        goto LABEL_90;
      }
    }

    else
    {
      if (type > 3)
      {
        switch(type)
        {
          case '2':
            v6 = @"START_INITIAL_SYNC";
            break;
          case '3':
            v6 = @"FETCH_CURRENT_COUNTRY_CODE";
            break;
          case '4':
            v6 = @"FETCH_EXPERIMENTS_CONFIG";
            break;
          case '5':
            v6 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
            break;
          case '6':
            v6 = @"SYNC_UP_NEXT_ITEMS";
            break;
          case '7':
            v6 = @"REQUEST_UP_NEXT_ITEMS";
            break;
          case '8':
            v6 = @"SYNC_CONFIG_STORE";
            break;
          case '9':
            v6 = @"CHECKIN_WITH_CONFIG_STORE";
            break;
          case ':':
            v6 = @"REQUEST_ANALYTIC_IDENTIFIERS";
            break;
          case ';':
            v6 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
            break;
          case '<':
            v6 = @"SYNC_SUBSCRIPTION_INFO";
            break;
          case '=':
            v6 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
            break;
          case '>':
            goto LABEL_50;
          case '?':
            v6 = @"UPDATE_SUBSCRIPTION_STATE";
            break;
          case '@':
            v6 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
            break;
          case 'A':
            v6 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'B':
            v6 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'C':
            v6 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
            break;
          default:
            if (type != 4)
            {
              goto LABEL_50;
            }

            v6 = @"FETCHED_TILE";
            break;
        }

        goto LABEL_90;
      }

      switch(type)
      {
        case 1:
          v6 = @"FETCH_TILES";
          goto LABEL_90;
        case 2:
          v6 = @"CANCEL_TILES";
          goto LABEL_90;
        case 3:
          v6 = @"REPORT_CORRUPT_TILE";
          goto LABEL_90;
      }
    }

LABEL_50:
    v6 = [NSString stringWithFormat:@"(unknown: %i)", type];
    goto LABEL_90;
  }

  if (type > 400)
  {
    if (type > 599)
    {
      if (type > 1499)
      {
        if (type == 1500)
        {
          v6 = @"DEBUG_FETCH_CONFIGURATION_INFO";
          goto LABEL_90;
        }

        if (type == 1501)
        {
          v6 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
          goto LABEL_90;
        }
      }

      else
      {
        if (type == 600)
        {
          v6 = @"FETCH_ROUTE_GENIUS";
          goto LABEL_90;
        }

        if (type == 1000)
        {
          v6 = @"PING";
          goto LABEL_90;
        }
      }
    }

    else if (type > 500)
    {
      if (type == 501)
      {
        v6 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
        goto LABEL_90;
      }

      if (type == 502)
      {
        v6 = @"SERVICE_REQUEST";
        goto LABEL_90;
      }
    }

    else
    {
      if (type == 401)
      {
        v6 = @"OPEN_URL";
        goto LABEL_90;
      }

      if (type == 500)
      {
        v6 = @"PLACE_DATA_MUID_LOOKUP";
        goto LABEL_90;
      }
    }

    goto LABEL_50;
  }

  if (type <= 205)
  {
    if (type == 203)
    {
      v6 = @"FAILED_TO_UPDATE_LOCATION";
    }

    else if (type == 204)
    {
      v6 = @"DID_PAUSE_LOCATION_UPDATES";
    }

    else
    {
      v6 = @"DID_RESUME_LOCATION_UPDATES";
    }
  }

  else
  {
    switch(type)
    {
      case 300:
        v6 = @"UPDATE_NAV_ROUTE_DETAILS";
        break;
      case 301:
        v6 = @"UPDATE_NAV_ROUTE_STATUS";
        break;
      case 302:
        v6 = @"START_NAV";
        break;
      case 303:
        v6 = @"STOP_NAV";
        break;
      case 304:
        v6 = @"PREVIEW_NAV";
        break;
      case 305:
        v6 = @"CLEAR_NAV_PREVIEW";
        break;
      case 306:
        v6 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
        break;
      case 307:
        v6 = @"DISMISS_NAV_SAFETY_ALERT";
        break;
      case 308:
        v6 = @"AVAILABLE_ROUTE";
        break;
      case 309:
        v6 = @"SELECTED_ROUTE";
        break;
      case 310:
        v6 = @"REQUEST_NAVIGATION_UPDATE";
        break;
      case 311:
        v6 = @"UPDATE_NAV_ROUTE_UPDATE";
        break;
      case 312:
        v6 = @"AVAILABLE_ROUTE_UPDATE";
        break;
      case 313:
        v6 = @"PAUSE_NAV";
        break;
      case 314:
        v6 = @"RESUME_NAV";
        break;
      case 315:
        v6 = @"SET_DISPLAYED_STEP";
        break;
      default:
        if (type != 206)
        {
          goto LABEL_50;
        }

        v6 = @"APPLY_LOCATION_AUTHORIZATION";
        break;
    }
  }

LABEL_90:
  stringValue = [v4 stringValue];
  v8 = [NSString stringWithFormat:@"%@ bundleID:%@", v6, stringValue];

  return v8;
}

+ (id)shortDebugDescriptionForMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  if (type > 299)
  {
    switch(type)
    {
      case 300:
        v6 = [self descriptionForUpdateNavRouteDetailsMessage:messageCopy];
        goto LABEL_4;
      case 301:
        v6 = [self descriptionForUpdateNavRouteStatusMessage:messageCopy];
        goto LABEL_4;
      case 306:
        v6 = [self descriptionForSetWantsAllNavStatusUpdatesMessage:messageCopy];
        goto LABEL_4;
    }
  }

  else if ((type - 200) < 6)
  {
    v6 = [self descriptionForLocationUpdateRelativeMessage:messageCopy];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  type2 = [messageCopy type];
  if (type2 <= 202)
  {
    if (type2 > 99)
    {
      if (type2 <= 102)
      {
        if (type2 == 100)
        {
          v7 = @"CHECKIN_WITH_TILE_GROUP";
        }

        else if (type2 == 101)
        {
          v7 = @"FORCE_UPDATE_MANIFEST";
        }

        else
        {
          v7 = @"DID_CHANGE_ACTIVE_TILE_GROUP";
        }

        goto LABEL_5;
      }

      if (type2 > 200)
      {
        if (type2 == 201)
        {
          v7 = @"STOP_LOCATION_UPDATE";
        }

        else
        {
          v7 = @"UPDATED_LOCATION";
        }

        goto LABEL_5;
      }

      if (type2 == 103)
      {
        v7 = @"FETCH_RESOURCE";
        goto LABEL_5;
      }

      if (type2 == 200)
      {
        v7 = @"START_LOCATION_UPDATE";
        goto LABEL_5;
      }
    }

    else
    {
      if (type2 > 3)
      {
        switch(type2)
        {
          case '2':
            v7 = @"START_INITIAL_SYNC";
            break;
          case '3':
            v7 = @"FETCH_CURRENT_COUNTRY_CODE";
            break;
          case '4':
            v7 = @"FETCH_EXPERIMENTS_CONFIG";
            break;
          case '5':
            v7 = @"DID_CHANGE_EXPERIMENTS_CONFIG";
            break;
          case '6':
            v7 = @"SYNC_UP_NEXT_ITEMS";
            break;
          case '7':
            v7 = @"REQUEST_UP_NEXT_ITEMS";
            break;
          case '8':
            v7 = @"SYNC_CONFIG_STORE";
            break;
          case '9':
            v7 = @"CHECKIN_WITH_CONFIG_STORE";
            break;
          case ':':
            v7 = @"REQUEST_ANALYTIC_IDENTIFIERS";
            break;
          case ';':
            v7 = @"CHECKIN_WITH_SUBSCRIPTION_INFO";
            break;
          case '<':
            v7 = @"SYNC_SUBSCRIPTION_INFO";
            break;
          case '=':
            v7 = @"SET_OBSERVED_SUBSCRIPTION_IDENTIFIERS";
            break;
          case '>':
            goto LABEL_63;
          case '?':
            v7 = @"UPDATE_SUBSCRIPTION_STATE";
            break;
          case '@':
            v7 = @"START_STOP_SUBSCRIPTION_DOWNLOAD";
            break;
          case 'A':
            v7 = @"CHECKIN_WITH_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'B':
            v7 = @"SET_SUBSCRIPTION_STATE_SUMMARY";
            break;
          case 'C':
            v7 = @"SET_SUBSCRIPTION_SHOULD_SYNC";
            break;
          default:
            if (type2 != 4)
            {
              goto LABEL_63;
            }

            v7 = @"FETCHED_TILE";
            break;
        }

        goto LABEL_5;
      }

      switch(type2)
      {
        case 1:
          v7 = @"FETCH_TILES";
          goto LABEL_5;
        case 2:
          v7 = @"CANCEL_TILES";
          goto LABEL_5;
        case 3:
          v7 = @"REPORT_CORRUPT_TILE";
          goto LABEL_5;
      }
    }

LABEL_63:
    v6 = [NSString stringWithFormat:@"(unknown: %i)", type2];
    goto LABEL_4;
  }

  if (type2 > 400)
  {
    if (type2 > 599)
    {
      if (type2 > 1499)
      {
        if (type2 == 1500)
        {
          v7 = @"DEBUG_FETCH_CONFIGURATION_INFO";
          goto LABEL_5;
        }

        if (type2 == 1501)
        {
          v7 = @"DEBUG_FETCH_DIAGNOSTICS_STRING";
          goto LABEL_5;
        }
      }

      else
      {
        if (type2 == 600)
        {
          v7 = @"FETCH_ROUTE_GENIUS";
          goto LABEL_5;
        }

        if (type2 == 1000)
        {
          v7 = @"PING";
          goto LABEL_5;
        }
      }
    }

    else if (type2 > 500)
    {
      if (type2 == 501)
      {
        v7 = @"PLACE_DATA_IDENTIFIER_LOOKUP";
        goto LABEL_5;
      }

      if (type2 == 502)
      {
        v7 = @"SERVICE_REQUEST";
        goto LABEL_5;
      }
    }

    else
    {
      if (type2 == 401)
      {
        v7 = @"OPEN_URL";
        goto LABEL_5;
      }

      if (type2 == 500)
      {
        v7 = @"PLACE_DATA_MUID_LOOKUP";
        goto LABEL_5;
      }
    }

    goto LABEL_63;
  }

  if (type2 <= 205)
  {
    if (type2 == 203)
    {
      v7 = @"FAILED_TO_UPDATE_LOCATION";
    }

    else if (type2 == 204)
    {
      v7 = @"DID_PAUSE_LOCATION_UPDATES";
    }

    else
    {
      v7 = @"DID_RESUME_LOCATION_UPDATES";
    }
  }

  else
  {
    switch(type2)
    {
      case 300:
        v7 = @"UPDATE_NAV_ROUTE_DETAILS";
        break;
      case 301:
        v7 = @"UPDATE_NAV_ROUTE_STATUS";
        break;
      case 302:
        v7 = @"START_NAV";
        break;
      case 303:
        v7 = @"STOP_NAV";
        break;
      case 304:
        v7 = @"PREVIEW_NAV";
        break;
      case 305:
        v7 = @"CLEAR_NAV_PREVIEW";
        break;
      case 306:
        v7 = @"SET_WANTS_ALL_NAV_STATUS_UPDATES";
        break;
      case 307:
        v7 = @"DISMISS_NAV_SAFETY_ALERT";
        break;
      case 308:
        v7 = @"AVAILABLE_ROUTE";
        break;
      case 309:
        v7 = @"SELECTED_ROUTE";
        break;
      case 310:
        v7 = @"REQUEST_NAVIGATION_UPDATE";
        break;
      case 311:
        v7 = @"UPDATE_NAV_ROUTE_UPDATE";
        break;
      case 312:
        v7 = @"AVAILABLE_ROUTE_UPDATE";
        break;
      case 313:
        v7 = @"PAUSE_NAV";
        break;
      case 314:
        v7 = @"RESUME_NAV";
        break;
      case 315:
        v7 = @"SET_DISPLAYED_STEP";
        break;
      default:
        if (type2 != 206)
        {
          goto LABEL_63;
        }

        v7 = @"APPLY_LOCATION_AUTHORIZATION";
        break;
    }
  }

LABEL_5:

  return v7;
}

@end