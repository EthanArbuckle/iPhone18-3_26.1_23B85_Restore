@interface _CDPeopleSuggesterContext
+ (id)currentContext;
- (_CDPeopleSuggesterContext)init;
- (id)copyWithZone:(_NSZone *)a3;
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
    v3 = [MEMORY[0x1E695DF00] date];
    date = v2->_date;
    v2->_date = v3;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(_CDPeopleSuggesterContext *)self date];
    [v4 setDate:v5];

    v6 = [(_CDPeopleSuggesterContext *)self locationUUID];
    [v4 setLocationUUID:v6];

    v7 = [(_CDPeopleSuggesterContext *)self title];
    [v4 setTitle:v7];

    v8 = [(_CDPeopleSuggesterContext *)self contactPrefix];
    [v4 setContactPrefix:v8];

    v9 = [(_CDPeopleSuggesterContext *)self seedContactIdentifiers];
    [v4 setSeedContactIdentifiers:v9];

    v10 = [(_CDPeopleSuggesterContext *)self consumerIdentifier];
    [v4 setConsumerIdentifier:v10];

    v11 = [(_CDPeopleSuggesterContext *)self contentUTIs];
    [v4 setContentUTIs:v11];

    v12 = [(_CDPeopleSuggesterContext *)self nearbyPeople];
    [v4 setNearbyPeople:v12];

    v13 = [(_CDPeopleSuggesterContext *)self activeInteraction];
    [v4 setActiveInteraction:v13];
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"Context {\n"];
  v4 = [(_CDPeopleSuggesterContext *)self date];
  [v3 appendFormat:@"                      date: %@\n", v4];

  v5 = [(_CDPeopleSuggesterContext *)self locationUUID];
  [v3 appendFormat:@"              locationUUID: %@\n", v5];

  v6 = [(_CDPeopleSuggesterContext *)self title];
  [v3 appendFormat:@"                     title: %@\n", v6];

  v7 = [(_CDPeopleSuggesterContext *)self contactPrefix];
  [v3 appendFormat:@"             contactPrefix: %@\n", v7];

  v8 = [(_CDPeopleSuggesterContext *)self seedContactIdentifiers];
  [v3 appendFormat:@"    seedContactIdentifiers: %@\n", v8];

  v9 = [(_CDPeopleSuggesterContext *)self consumerIdentifier];
  [v3 appendFormat:@"        consumerIdentifier: %@\n", v9];

  v10 = [(_CDPeopleSuggesterContext *)self nearbyPeople];
  [v3 appendFormat:@"              nearbyPeople: %@\n", v10];

  v11 = [(_CDPeopleSuggesterContext *)self activeInteraction];
  [v3 appendFormat:@"         activeInteraction: %@\n", v11];

  v12 = [(_CDPeopleSuggesterContext *)self contentUTIs];
  [v3 appendFormat:@"               contentUTIs: %@\n", v12];

  [v3 appendFormat:@"}\n"];

  return v3;
}

@end