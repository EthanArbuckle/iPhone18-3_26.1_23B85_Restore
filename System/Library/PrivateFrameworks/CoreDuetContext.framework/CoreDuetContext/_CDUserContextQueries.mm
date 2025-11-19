@interface _CDUserContextQueries
+ (id)keyPathForUserIsArrivingAtHomeStatus;
+ (id)keyPathForUserIsAsleepStatus;
+ (id)keyPathForUserIsAtHomeStatus;
+ (id)keyPathForUserIsAtWorkStatus;
+ (id)keyPathForUserIsDrivingStatus;
+ (id)keyPathForUserIsLeavingHomeStatus;
+ (id)keyPathForUserIsTravelingStatus;
@end

@implementation _CDUserContextQueries

+ (id)keyPathForUserIsAsleepStatus
{
  if (keyPathForUserIsAsleepStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsAsleepStatus];
  }

  v3 = keyPathForUserIsAsleepStatus_userIsAsleepStatus;

  return v3;
}

+ (id)keyPathForUserIsAtHomeStatus
{
  if (keyPathForUserIsAtHomeStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsAtHomeStatus];
  }

  v3 = keyPathForUserIsAtHomeStatus_userIsAtHomeStatus;

  return v3;
}

+ (id)keyPathForUserIsAtWorkStatus
{
  if (keyPathForUserIsAtWorkStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsAtWorkStatus];
  }

  v3 = keyPathForUserIsAtWorkStatus_userIsAtHomeStatus;

  return v3;
}

+ (id)keyPathForUserIsDrivingStatus
{
  if (keyPathForUserIsDrivingStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsDrivingStatus];
  }

  v3 = keyPathForUserIsDrivingStatus_userIsAtHomeStatus;

  return v3;
}

+ (id)keyPathForUserIsTravelingStatus
{
  if (keyPathForUserIsTravelingStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsTravelingStatus];
  }

  v3 = keyPathForUserIsTravelingStatus_userIsAtHomeStatus;

  return v3;
}

+ (id)keyPathForUserIsLeavingHomeStatus
{
  if (keyPathForUserIsLeavingHomeStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsLeavingHomeStatus];
  }

  v3 = keyPathForUserIsLeavingHomeStatus_userIsAtHomeStatus;

  return v3;
}

+ (id)keyPathForUserIsArrivingAtHomeStatus
{
  if (keyPathForUserIsArrivingAtHomeStatus_onceToken != -1)
  {
    +[_CDUserContextQueries keyPathForUserIsArrivingAtHomeStatus];
  }

  v3 = keyPathForUserIsArrivingAtHomeStatus_userIsAtHomeStatus;

  return v3;
}

@end