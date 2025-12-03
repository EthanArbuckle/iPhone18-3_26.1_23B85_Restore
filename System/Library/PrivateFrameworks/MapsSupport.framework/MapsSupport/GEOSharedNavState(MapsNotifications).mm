@interface GEOSharedNavState(MapsNotifications)
- (id)arrivalMessage;
- (id)arrivalNotificationBody;
- (id)arrivalNotificationSubtitle;
- (id)chargingStopMessage;
- (id)chargingStopNotificationBody;
- (id)chargingStopNotificationSubtitle;
- (id)initialMessage;
- (id)initialNotificationBody;
- (id)initialNotificationSubtitle;
- (id)intermediateArrivalMessage;
- (id)intermediateArrivalNotificationBody;
- (id)intermediateArrivalNotificationSubtitle;
- (id)senderNameIncludingHandleIfNecessary;
- (id)updateMessage;
- (id)updateNotificationBody;
- (id)updateNotificationSubtitle;
- (id)waypointResumeMessage;
- (id)waypointResumeNotificationBody;
- (id)waypointResumeNotificationSubtitle;
@end

@implementation GEOSharedNavState(MapsNotifications)

- (id)senderNameIncludingHandleIfNecessary
{
  senderInfo = [self senderInfo];
  hasLocalContactIdentifier = [senderInfo hasLocalContactIdentifier];

  if (hasLocalContactIdentifier)
  {
    senderName = [self senderName];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    senderName2 = [self senderName];
    senderInfo2 = [self senderInfo];
    fromIdentifier = [senderInfo2 fromIdentifier];
    senderName = [v5 stringWithFormat:@"%@ (%@)", senderName2, fromIdentifier];
  }

  return senderName;
}

- (id)initialNotificationSubtitle
{
  v2 = MSPBundle();
  v3 = [v2 localizedStringForKey:@"[Shared Trip] Notification's subtitle when sharing" value:@"%@ is sharing ETA" table:0];

  v4 = MEMORY[0x277CCACA8];
  senderName = [self senderName];
  v6 = [v4 stringWithFormat:v3, senderName];

  return v6;
}

- (id)initialNotificationBody
{
  v2 = MEMORY[0x277CBEAA8];
  finalETAInfo = [self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = MEMORY[0x277CCA968];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v5 _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:localTimeZone canIncludeDate:0];

  numberOfIntermediateStopsRemaining = [self numberOfIntermediateStopsRemaining];
  destinationName = [self destinationName];
  v10 = MEMORY[0x277CCACA8];
  v11 = MSPBundle();
  v12 = v11;
  if (destinationName)
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] Notification's body when sharing (with destination name)" value:@"localized string not found" table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v10 localizedStringWithFormat:v13, numberOfIntermediateStopsRemaining, senderNameIncludingHandleIfNecessary, destinationName, v7];
  }

  else
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] Notification's body when sharing (no destination name)" value:@"localized string not found" table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v10 localizedStringWithFormat:v13, numberOfIntermediateStopsRemaining, senderNameIncludingHandleIfNecessary, v7, v17];
  }
  v15 = ;

  return v15;
}

- (id)initialMessage
{
  v2 = MEMORY[0x277CBEAA8];
  finalETAInfo = [self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = MEMORY[0x277CCA968];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v5 _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:localTimeZone canIncludeDate:0];

  numberOfIntermediateStopsRemaining = [self numberOfIntermediateStopsRemaining];
  destinationName = [self destinationName];
  v10 = MEMORY[0x277CCACA8];
  v11 = MSPBundle();
  v12 = v11;
  if (destinationName)
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] text message body (with destination name)" value:@"localized string not found" table:0];
    [v10 localizedStringWithFormat:v13, numberOfIntermediateStopsRemaining, destinationName, v7];
  }

  else
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] text message body (no destination name)" value:@"localized string not found" table:0];
    [v10 localizedStringWithFormat:v13, numberOfIntermediateStopsRemaining, v7, v16];
  }
  v14 = ;

  return v14;
}

- (id)updateNotificationSubtitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] update Notification's subtitle when sharing" value:@"%@’s ETA has changed" table:0];
  senderName = [self senderName];
  v6 = [v2 stringWithFormat:v4, senderName];

  return v6;
}

- (id)updateNotificationBody
{
  v2 = MEMORY[0x277CBEAA8];
  etaInfo = [self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = MEMORY[0x277CCA968];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v5 _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:localTimeZone canIncludeDate:0];

  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v10 = MEMORY[0x277CCACA8];
  v11 = MSPBundle();
  v12 = v11;
  if (name)
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] update Notification's body when sharing (with destination)" value:@"%1$@ will now arrive at %2$@ around %3$@" table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v10 stringWithFormat:v13, senderNameIncludingHandleIfNecessary, name, v7];
  }

  else
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] update Notification's body when sharing (without destination)" value:@"%1$@ will now arrive around %2$@" table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v10 stringWithFormat:v13, senderNameIncludingHandleIfNecessary, v7, v17];
  }
  v15 = ;

  return v15;
}

- (id)updateMessage
{
  v2 = MEMORY[0x277CBEAA8];
  etaInfo = [self etaInfo];
  [etaInfo etaTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = MEMORY[0x277CCA968];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v5 _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:localTimeZone canIncludeDate:0];

  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v10 = MEMORY[0x277CCACA8];
  v11 = MSPBundle();
  v12 = v11;
  if (name)
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] update text message body (with destination)" value:@"My updated arrival time to %1$@ is now around %2$@." table:0];
    [v10 stringWithFormat:v13, name, v7];
  }

  else
  {
    v13 = [v11 localizedStringForKey:@"[Shared Trip] update text message body (without destination)" value:@"My updated arrival time is now around %@." table:0];
    [v10 stringWithFormat:v13, v7, v16];
  }
  v14 = ;

  return v14;
}

- (id)chargingStopNotificationSubtitle
{
  v2 = MSPBundle();
  v3 = [v2 localizedStringForKey:@"[Shared Trip] Notification's subtitle when stopping at a charger" value:@"%@ is making a stop" table:0];

  v4 = MEMORY[0x277CCACA8];
  senderName = [self senderName];
  v6 = [v4 stringWithFormat:v3, senderName];

  return v6;
}

- (id)chargingStopNotificationBody
{
  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v4 = MEMORY[0x277CCACA8];
  v5 = MSPBundle();
  v6 = [v5 localizedStringForKey:@"[Shared Trip] Notification's body when stopping at a charger" value:@"%@ has stopped at a charging station in %@." table:0];
  senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
  v8 = [v4 stringWithFormat:v6, senderNameIncludingHandleIfNecessary, name];

  return v8;
}

- (id)chargingStopMessage
{
  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v3 = MEMORY[0x277CCACA8];
  v4 = MSPBundle();
  v5 = [v4 localizedStringForKey:@"[Shared Trip] text message body when stopping at a charger" value:@"I have stopped at a charging station in %@." table:0];
  v6 = [v3 stringWithFormat:v5, name];

  return v6;
}

- (id)intermediateArrivalNotificationSubtitle
{
  v2 = MSPBundle();
  v3 = [v2 localizedStringForKey:@"[Shared Trip] Notification's subtitle when stopping at an intermediate waypoint" value:@"%@ is making a stop" table:0];

  v4 = MEMORY[0x277CCACA8];
  senderName = [self senderName];
  v6 = [v4 stringWithFormat:v3, senderName];

  return v6;
}

- (id)intermediateArrivalNotificationBody
{
  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  destinationName = [self destinationName];
  v5 = MEMORY[0x277CCACA8];
  v6 = MSPBundle();
  v7 = v6;
  if (destinationName)
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] Notification's body when stopping at an intermediate waypoint" value:@"%@ is stopping at %@ before continuing to %@." table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v5 stringWithFormat:v8, senderNameIncludingHandleIfNecessary, name, destinationName];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] Notification's body when stopping at an intermediate waypoint value:generic" table:{@"%@ is stopping at %@ before continuing to their destination.", 0}];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v5 stringWithFormat:v8, senderNameIncludingHandleIfNecessary, name, v12];
  }
  v10 = ;

  return v10;
}

- (id)intermediateArrivalMessage
{
  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  destinationName = [self destinationName];
  v5 = MEMORY[0x277CCACA8];
  v6 = MSPBundle();
  v7 = v6;
  if (destinationName)
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] text message body when stopping at an intermediate waypoint" value:@"I’m making a stop at %@ before continuing to %@." table:0];
    [v5 stringWithFormat:v8, name, destinationName];
  }

  else
  {
    v8 = [v6 localizedStringForKey:@"[Shared Trip] text message body when stopping at an intermediate waypoint value:generic" table:{@"I’m making a stop at %@ before continuing to my destination.", 0}];
    [v5 stringWithFormat:v8, name, v11];
  }
  v9 = ;

  return v9;
}

- (id)waypointResumeNotificationSubtitle
{
  v2 = MSPBundle();
  v3 = [v2 localizedStringForKey:@"[Shared Trip] Notification's subtitle when resuming sharing" value:@"%@ has resumed the route" table:0];

  v4 = MEMORY[0x277CCACA8];
  senderName = [self senderName];
  v6 = [v4 stringWithFormat:v3, senderName];

  return v6;
}

- (id)waypointResumeNotificationBody
{
  v2 = MEMORY[0x277CBEAA8];
  finalETAInfo = [self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = MEMORY[0x277CCA968];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v5 _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:localTimeZone canIncludeDate:0];

  destinationName = [self destinationName];
  v9 = MEMORY[0x277CCACA8];
  v10 = MSPBundle();
  v11 = v10;
  if (destinationName)
  {
    v12 = [v10 localizedStringForKey:@"[Shared Trip] Notification's body when resuming sharing" value:@"%@ will arrive at %@ around %@. Follow along in Maps." table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v9 stringWithFormat:v12, senderNameIncludingHandleIfNecessary, destinationName, v7];
  }

  else
  {
    v12 = [v10 localizedStringForKey:@"[Shared Trip] Notification's body when resuming sharing value:generic" table:{@"%@ will arrive at their destination around %@. Follow along in Maps.", 0}];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v9 stringWithFormat:v12, senderNameIncludingHandleIfNecessary, v7, v16];
  }
  v14 = ;

  return v14;
}

- (id)waypointResumeMessage
{
  v2 = MEMORY[0x277CBEAA8];
  finalETAInfo = [self finalETAInfo];
  [finalETAInfo etaTimestamp];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  v5 = MEMORY[0x277CCA968];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v7 = [v5 _navigation_localizedTimestampStringForDepartureArrivalDate:v4 inTimeZone:localTimeZone canIncludeDate:0];

  destinationName = [self destinationName];
  v9 = MEMORY[0x277CCACA8];
  v10 = MSPBundle();
  v11 = v10;
  if (destinationName)
  {
    v12 = [v10 localizedStringForKey:@"[Shared Trip] Text message body when resuming sharing" value:@"I will arrive at %@ around %@. I’ll let you know if I’m running late." table:0];
    [v9 stringWithFormat:v12, destinationName, v7];
  }

  else
  {
    v12 = [v10 localizedStringForKey:@"[Shared Trip] Text message body when resuming sharing value:generic" table:{@"I will arrive at my destination around %@. I’ll let you know if I’m running late.", 0}];
    [v9 stringWithFormat:v12, v7, v15];
  }
  v13 = ;

  return v13;
}

- (id)arrivalNotificationSubtitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = MSPBundle();
  v4 = [v3 localizedStringForKey:@"[Shared Trip] arrival notification subtitle" value:@"%@ is arriving" table:0];
  senderName = [self senderName];
  v6 = [v2 stringWithFormat:v4, senderName];

  return v6;
}

- (id)arrivalNotificationBody
{
  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v4 = MEMORY[0x277CCACA8];
  v5 = MSPBundle();
  v6 = v5;
  if (name)
  {
    v7 = [v5 localizedStringForKey:@"[Shared Trip] arrival notification body" value:@"%@ is arriving at %@." table:0];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v4 stringWithFormat:v7, senderNameIncludingHandleIfNecessary, name];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"[Shared Trip] arrival notification body value:generic" table:{@"%@ is arriving at their destination.", 0}];
    senderNameIncludingHandleIfNecessary = [self senderNameIncludingHandleIfNecessary];
    [v4 stringWithFormat:v7, senderNameIncludingHandleIfNecessary, v11];
  }
  v9 = ;

  return v9;
}

- (id)arrivalMessage
{
  nextWaypointInfo = [self nextWaypointInfo];
  name = [nextWaypointInfo name];

  v3 = MEMORY[0x277CCACA8];
  v4 = MSPBundle();
  v5 = v4;
  if (name)
  {
    v6 = [v4 localizedStringForKey:@"[Shared Trip] arrival text message body" value:@"I’m arriving at %@ soon." table:0];
    [v3 stringWithFormat:v6, name];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"[Shared Trip] arrival text message body value:generic" table:{@"I’m arriving at my destination soon.", 0}];
    [v3 stringWithFormat:v6, v9];
  }
  v7 = ;

  return v7;
}

@end