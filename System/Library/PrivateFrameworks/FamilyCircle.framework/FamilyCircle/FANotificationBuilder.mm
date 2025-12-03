@interface FANotificationBuilder
+ (id)_buildActivationURLWithResponse:(id)response;
+ (id)_getParamsForInviteFromResponse:(id)response;
+ (id)buildNotificationWithResponse:(id)response payload:(id)payload;
@end

@implementation FANotificationBuilder

+ (id)buildNotificationWithResponse:(id)response payload:(id)payload
{
  responseCopy = response;
  if ([responseCopy showMessage])
  {
    title = [responseCopy title];
    if (title)
    {

LABEL_8:
      v8 = objc_alloc_init(FAFamilyNotification);
      v10 = +[NSUUID UUID];
      uUIDString = [v10 UUIDString];
      [v8 setIdentifier:uUIDString];

      title2 = [responseCopy title];
      [v8 setTitle:title2];

      message = [responseCopy message];
      [v8 setInformativeText:message];

      [v8 setShouldPersistWhenActivated:1];
      launchURLFromServer = [responseCopy launchURLFromServer];

      if (launchURLFromServer)
      {
        [responseCopy launchURLFromServer];
      }

      else
      {
        [self _buildActivationURLWithResponse:responseCopy];
      }
      v15 = ;
      [v8 setActivateActionURL:v15];

      goto LABEL_12;
    }

    message2 = [responseCopy message];

    if (message2)
    {
      goto LABEL_8;
    }

    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100079868(v7);
    }
  }

  else
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100079824(v7);
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

+ (id)_getParamsForInviteFromResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"showFamilyInvite" forKey:@"aaaction"];
  inviteCode = [responseCopy inviteCode];
  [v4 setObject:inviteCode forKey:@"inviteCode"];

  [v4 setObject:@"1" forKey:@"fresh"];
  organizerFirstName = [responseCopy organizerFirstName];

  if (organizerFirstName)
  {
    organizerFirstName2 = [responseCopy organizerFirstName];
    [v4 setObject:organizerFirstName2 forKey:@"organizerFirstName"];
  }

  organizerLastName = [responseCopy organizerLastName];

  if (organizerLastName)
  {
    organizerLastName2 = [responseCopy organizerLastName];
    [v4 setObject:organizerLastName2 forKey:@"organizerLastName"];
  }

  organizerEmail = [responseCopy organizerEmail];

  if (organizerEmail)
  {
    organizerEmail2 = [responseCopy organizerEmail];
    [v4 setObject:organizerEmail2 forKey:@"organizerEmail"];
  }

  childFirstName = [responseCopy childFirstName];

  if (childFirstName)
  {
    childFirstName2 = [responseCopy childFirstName];
    [v4 setObject:childFirstName2 forKey:@"childFirstName"];
  }

  childLastName = [responseCopy childLastName];

  if (childLastName)
  {
    childLastName2 = [responseCopy childLastName];
    [v4 setObject:childLastName2 forKey:@"childLastName"];
  }

  return v4;
}

+ (id)_buildActivationURLWithResponse:(id)response
{
  responseCopy = response;
  pushTopic = [responseCopy pushTopic];
  if ([pushTopic isEqualToString:@"f_member_invite"])
  {

LABEL_4:
    v8 = [self _getParamsForInviteFromResponse:responseCopy];
    v13 = 0;
    v9 = [FamilySettingsDestinations urlDestinationTo:5 params:v8 error:&v13];
    v10 = v13;

    goto LABEL_6;
  }

  pushTopic2 = [responseCopy pushTopic];
  v7 = [pushTopic2 isEqualToString:@"f_child_transfer_req"];

  if (v7)
  {
    goto LABEL_4;
  }

  v12 = 0;
  v9 = [FamilySettingsDestinations urlDestinationTo:4 error:&v12];
  v10 = v12;
LABEL_6:

  return v9;
}

@end