@interface _CDPeopleSuggesterContext
+ (id)currentContext;
- (_CDPeopleSuggesterContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _CDPeopleSuggesterContext

+ (id)currentContext
{
  v2 = objc_alloc_init(_CDPeopleSuggesterContext);

  return v2;
}

- (_CDPeopleSuggesterContext)init
{
  v11.receiver = self;
  v11.super_class = _CDPeopleSuggesterContext;
  v2 = [(_CDPeopleSuggesterContext *)&v11 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    date = v2->_date;
    v2->_date = date;

    locationUUID = v2->_locationUUID;
    v2->_locationUUID = 0;

    title = v2->_title;
    v2->_title = 0;

    contactPrefix = v2->_contactPrefix;
    v2->_contactPrefix = 0;

    seedContactIdentifiers = v2->_seedContactIdentifiers;
    v2->_seedContactIdentifiers = 0;

    consumerIdentifier = v2->_consumerIdentifier;
    v2->_consumerIdentifier = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    date = [(_CDPeopleSuggesterContext *)self date];
    [v4 setDate:date];

    locationUUID = [(_CDPeopleSuggesterContext *)self locationUUID];
    [v4 setLocationUUID:locationUUID];

    title = [(_CDPeopleSuggesterContext *)self title];
    [v4 setTitle:title];

    contactPrefix = [(_CDPeopleSuggesterContext *)self contactPrefix];
    [v4 setContactPrefix:contactPrefix];

    seedContactIdentifiers = [(_CDPeopleSuggesterContext *)self seedContactIdentifiers];
    [v4 setSeedContactIdentifiers:seedContactIdentifiers];

    consumerIdentifier = [(_CDPeopleSuggesterContext *)self consumerIdentifier];
    [v4 setConsumerIdentifier:consumerIdentifier];

    contentUTIs = [(_CDPeopleSuggesterContext *)self contentUTIs];
    [v4 setContentUTIs:contentUTIs];

    nearbyPeople = [(_CDPeopleSuggesterContext *)self nearbyPeople];
    [v4 setNearbyPeople:nearbyPeople];

    activeInteraction = [(_CDPeopleSuggesterContext *)self activeInteraction];
    [v4 setActiveInteraction:activeInteraction];
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"Context {\n"];
  date = [(_CDPeopleSuggesterContext *)self date];
  [v3 appendFormat:@"                      date: %@\n", date];

  locationUUID = [(_CDPeopleSuggesterContext *)self locationUUID];
  [v3 appendFormat:@"              locationUUID: %@\n", locationUUID];

  title = [(_CDPeopleSuggesterContext *)self title];
  [v3 appendFormat:@"                     title: %@\n", title];

  contactPrefix = [(_CDPeopleSuggesterContext *)self contactPrefix];
  [v3 appendFormat:@"             contactPrefix: %@\n", contactPrefix];

  seedContactIdentifiers = [(_CDPeopleSuggesterContext *)self seedContactIdentifiers];
  [v3 appendFormat:@"    seedContactIdentifiers: %@\n", seedContactIdentifiers];

  consumerIdentifier = [(_CDPeopleSuggesterContext *)self consumerIdentifier];
  [v3 appendFormat:@"        consumerIdentifier: %@\n", consumerIdentifier];

  nearbyPeople = [(_CDPeopleSuggesterContext *)self nearbyPeople];
  [v3 appendFormat:@"              nearbyPeople: %@\n", nearbyPeople];

  activeInteraction = [(_CDPeopleSuggesterContext *)self activeInteraction];
  [v3 appendFormat:@"         activeInteraction: %@\n", activeInteraction];

  contentUTIs = [(_CDPeopleSuggesterContext *)self contentUTIs];
  [v3 appendFormat:@"               contentUTIs: %@\n", contentUTIs];

  [v3 appendFormat:@"}\n"];

  return v3;
}

@end