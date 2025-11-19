@interface NSError(GameKitErrors)
+ (id)serverErrorForCode:()GameKitErrors withReason:;
+ (id)userErrorForCode:()GameKitErrors description:;
+ (id)userErrorForCode:()GameKitErrors underlyingError:;
+ (id)userErrorForCode:()GameKitErrors underlyingErrors:;
+ (id)userErrorForCode:()GameKitErrors userInfo:;
+ (id)userErrorForServerCode:()GameKitErrors reason:;
+ (id)userErrorForServerCode:()GameKitErrors reason:userInfo:;
+ (id)userErrorForServerError:()GameKitErrors;
+ (id)userErrorForServerError:()GameKitErrors userInfo:;
- (id)getUnderlyingErrorWithServerStatusCode:()GameKitErrors;
- (uint64_t)gkIsNotConnectedToInternetError;
- (uint64_t)gkIsUnauthenticatedError;
- (uint64_t)isGKClientError;
- (uint64_t)isGKServerError;
@end

@implementation NSError(GameKitErrors)

+ (id)userErrorForCode:()GameKitErrors userInfo:
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;
  if (a3 > 99)
  {
    if (a3 > 101)
    {
      if (a3 == 102)
      {
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_API_FRIEND_LIST_DENIED];
      }

      else if (a3 == 103)
      {
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_API_FRIEND_REQUEST_NOT_AVAILABLE];
      }

      else
      {
LABEL_46:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_UNKNOWN_DESCRIPTION];
      }
    }

    else
    {
      if (a3 == 100)
      {
        +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_API_FRIEND_LIST_DESCRIPTION_MISSING];
      }

      else
      {
        +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_API_FRIEND_LIST_RESTRICTED];
      }
      v9 = ;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_CANCELED_DESCRIPTION];
        break;
      case 3:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_COMMUNICATIONSFAILURE_DESCRIPTION];
        break;
      case 4:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_USERDENIED_DESCRIPTION];
        break;
      case 5:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_INVALIDCREDENTIALS_DESCRIPTION];
        break;
      case 6:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_NOTAUTHENTICATED_DESCRIPTION];
        break;
      case 7:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_AUTHENTICATIONINPROGRESS_DESCRIPTION];
        break;
      case 8:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_INVALIDPLAYER_DESCRIPTION];
        break;
      case 9:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SCORENOTSET_DESCRIPTION];
        break;
      case 10:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_PARENTALCONTROLSBLOCKED_DESCRIPTION];
        break;
      case 13:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_MATCHREQUESTINVALID_DESCRIPTION];
        break;
      case 14:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_UNDERAGE_DESCRIPTION];
        break;
      case 15:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_GAMEUNRECOGNIZED_DESCRIPTION];
        break;
      case 16:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GAME_CENTER_IS_NOT_SUPPORTED];
        break;
      case 17:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_INVALIDPARAMETER_DESCRIPTION];
        break;
      case 18:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_UNEXPECTEDCONNECTION_DESCRIPTION];
        break;
      case 19:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_INVALID_CHALLENGE];
        break;
      case 20:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_TBG_MATCH_DATA_TO_LARGE];
        break;
      case 21:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_TBG_TOO_MANY_SESSIONS];
        break;
      case 22:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_TBG_INVALID_PARTICIPANT];
        break;
      case 23:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_TBG_INVALID_TURN];
        break;
      case 24:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_TBG_INVALID_STATE];
        break;
      case 25:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_INVITATIONS_DISABLED_DESCRIPTION];
        break;
      case 26:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_PLAYERPHOTOFAILURE_DESCRIPTION];
        break;
      case 27:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_UBIQUITY_CONTAINER_INVALID];
        break;
      case 28:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_MATCHNOTCONNECTED_DESCRIPTION];
        break;
      case 30:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings RESTRICTED_TO_AUTOMATCH];
        break;
      case 31:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_API_NOT_AVAILABLE];
        break;
      case 33:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_CONNECTION_TIMEOUT_DESCRIPTION];
        break;
      case 34:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_API_OBSOLETE];
        break;
      case 35:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_ICLOUD_NOT_AUTHENTICATED_DESCRIPTION];
        break;
      case 37:
        v9 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_APP_UNLISTED];
        break;
      default:
        goto LABEL_46;
    }
  }

  v10 = v9;
  if (v9)
  {
    [v8 setValue:v9 forKey:*MEMORY[0x277CCA450]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:GKErrorDomain code:a3 userInfo:v8];

  return v11;
}

+ (id)userErrorForCode:()GameKitErrors description:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = GKErrorDomain;
  if (a4)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = a4;
    v7 = MEMORY[0x277CBEAC0];
    v8 = a4;
    v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v5 errorWithDomain:v6 code:a3 userInfo:v9];
  }

  else
  {
    v9 = 0;
    v10 = [v5 errorWithDomain:v6 code:a3 userInfo:0];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)userErrorForCode:()GameKitErrors underlyingError:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  if (a4)
  {
    v12 = *MEMORY[0x277CCA7E8];
    v13[0] = a4;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v5 userErrorForCode:a3 userInfo:v8];
  }

  else
  {
    v8 = 0;
    v9 = [v5 userErrorForCode:a3 userInfo:0];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)userErrorForCode:()GameKitErrors underlyingErrors:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  if (a4)
  {
    v12 = *MEMORY[0x277CCA578];
    v13[0] = a4;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a4;
    v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v5 userErrorForCode:a3 userInfo:v8];
  }

  else
  {
    v8 = 0;
    v9 = [v5 userErrorForCode:a3 userInfo:0];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)userErrorForServerError:()GameKitErrors
{
  v3 = a3;
  v4 = [objc_opt_class() userErrorForServerError:v3 userInfo:MEMORY[0x277CBEC10]];

  return v4;
}

+ (id)userErrorForServerError:()GameKitErrors userInfo:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 code];
  v9 = 1;
  switch(v8)
  {
    case 5000:
    case 5029:
    case 5032:
    case 5033:
    case 5046:
    case 5047:
    case 5048:
      goto LABEL_12;
    case 5001:
    case 5002:
    case 5003:
    case 5004:
    case 5006:
    case 5007:
    case 5008:
    case 5009:
    case 5013:
    case 5014:
    case 5015:
    case 5016:
    case 5017:
    case 5018:
    case 5021:
    case 5022:
    case 5024:
    case 5025:
    case 5026:
    case 5027:
    case 5028:
    case 5030:
    case 5031:
    case 5039:
    case 5040:
    case 5041:
    case 5042:
    case 5043:
    case 5044:
    case 5045:
    case 5049:
    case 5050:
    case 5055:
    case 5057:
    case 5058:
    case 5067:
    case 5069:
    case 5070:
    case 5074:
    case 5076:
    case 5077:
    case 5078:
    case 5079:
    case 5080:
    case 5081:
    case 5082:
    case 5083:
    case 5084:
    case 5085:
    case 5086:
    case 5087:
    case 5088:
    case 5089:
    case 5090:
    case 5091:
    case 5092:
    case 5093:
    case 5095:
    case 5096:
    case 5105:
    case 5106:
    case 5107:
    case 5108:
    case 5116:
    case 5117:
    case 5118:
    case 5119:
    case 5120:
      goto LABEL_13;
    case 5005:
    case 5121:
    case 5122:
      v9 = 8;
      goto LABEL_14;
    case 5010:
    case 5019:
    case 5034:
      v9 = 15;
      goto LABEL_14;
    case 5011:
    case 5012:
    case 5023:
    case 5072:
    case 5073:
      v9 = 5;
      goto LABEL_14;
    case 5020:
    case 5051:
    case 5052:
      goto LABEL_14;
    case 5035:
    case 5036:
    case 5037:
    case 5038:
    case 5053:
    case 5054:
    case 5056:
    case 5059:
    case 5060:
    case 5061:
    case 5062:
    case 5063:
    case 5064:
    case 5065:
    case 5066:
    case 5071:
      v9 = 17;
      goto LABEL_14;
    case 5068:
    case 5094:
      v9 = 21;
      goto LABEL_14;
    case 5075:
      v9 = 25;
      goto LABEL_14;
    case 5097:
    case 5098:
      v9 = 22;
      goto LABEL_14;
    case 5099:
      v9 = 20;
      goto LABEL_14;
    case 5100:
    case 5101:
      v9 = 24;
      goto LABEL_14;
    case 5102:
    case 5103:
    case 5104:
      v9 = 23;
      goto LABEL_14;
    case 5109:
    case 5110:
    case 5111:
    case 5112:
    case 5113:
    case 5114:
    case 5115:
      v9 = 19;
      goto LABEL_14;
    default:
      if (v8 == 5170)
      {
LABEL_12:
        v9 = 6;
      }

      else
      {
LABEL_13:
        v9 = 3;
      }

LABEL_14:
      v10 = [v6 mutableCopy];

      [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v11 = [v7 userInfo];

      v12 = [v11 objectForKeyedSubscript:@"GKServerStatusCode"];
      [v10 setObject:v12 forKeyedSubscript:@"GKServerStatusCode"];

      v13 = [a1 userErrorForCode:v9 userInfo:v10];

      return v13;
  }
}

+ (id)userErrorForServerCode:()GameKitErrors reason:
{
  v2 = [a1 serverErrorForCode:? withReason:?];
  v3 = [a1 userErrorForServerError:v2];

  return v3;
}

+ (id)userErrorForServerCode:()GameKitErrors reason:userInfo:
{
  v8 = a5;
  v9 = [a1 serverErrorForCode:a3 withReason:a4];
  v10 = [a1 userErrorForServerError:v9 userInfo:v8];

  return v10;
}

+ (id)serverErrorForCode:()GameKitErrors withReason:
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = [v7 numberWithInteger:a3];
  v10 = [v6 dictionaryWithObjectsAndKeys:{v9, @"GKServerStatusCode", v8, *MEMORY[0x277CCA470], 0}];

  v11 = [a1 serverErrorForCode:a3 withUserInfo:v10];

  return v11;
}

- (uint64_t)gkIsUnauthenticatedError
{
  if ([a1 code] != 6)
  {
    return 0;
  }

  v2 = [a1 domain];
  v3 = [v2 isEqualToString:GKErrorDomain];

  return v3;
}

- (uint64_t)gkIsNotConnectedToInternetError
{
  if ([a1 code] != -1009)
  {
    return 0;
  }

  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCA738]];

  return v3;
}

- (id)getUnderlyingErrorWithServerStatusCode:()GameKitErrors
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a1 underlyingErrors];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 isGKServerError])
        {
          v10 = [v9 userInfo];
          v11 = [v10 objectForKey:@"GKServerStatusCode"];

          if (v11 && [v11 intValue] == a3)
          {
            v12 = v9;

            goto LABEL_14;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (uint64_t)isGKClientError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:GKErrorDomain];

  return v2;
}

- (uint64_t)isGKServerError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"GKServerErrorDomain"];

  return v2;
}

@end