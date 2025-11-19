@interface NSError(GKGameSessionError)
+ (id)_gkUserErrorForGameSessionErrorCode:()GKGameSessionError userInfo:;
@end

@implementation NSError(GKGameSessionError)

+ (id)_gkUserErrorForGameSessionErrorCode:()GKGameSessionError userInfo:
{
  v5 = a4;
  if (v5)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v6 = ;
  switch(a3)
  {
    case 2:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_ICLOUD_NOT_AUTHENTICATED_DESCRIPTION];
      break;
    case 3:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SESSION_CONFLICT_DESCRIPTION];
      break;
    case 4:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SESSION_NOT_SHARED_DESCRIPTION];
      break;
    case 5:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SESSION_CONNECTION_CANCELLED_BY_USER];
      break;
    case 6:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SESSION_CONNECTION_FAILED_DESCRIPTION];
      break;
    case 7:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SESSION_HAS_MAX_CONNECTED_PLAYERS_DESCRIPTION];
      break;
    case 8:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SEND_DATA_NOT_CONNECTED_DESCRIPTION];
      break;
    case 9:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SEND_DATA_NO_RECIPIENTS_DESCRIPTION];
      break;
    case 10:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SEND_DATA_PLAYERS_NOT_REACHABLE];
      break;
    case 11:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SEND_RATE_LIMIT_REACHED];
      break;
    case 12:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_BAD_CONTAINER];
      break;
    case 13:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_CLOUD_QUOTA_EXCEEDED];
      break;
    case 14:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_NETWORK_FAILURE];
      break;
    case 15:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_CLOUD_DRIVE_DISABLED];
      break;
    case 16:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_SESSION_INVALID];
      break;
    default:
      v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings ERROR_UNKNOWN_DESCRIPTION];
      break;
  }

  v8 = v7;
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:GKGameSessionErrorDomain code:a3 userInfo:v6];

  return v9;
}

@end