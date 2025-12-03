@interface _CNUIUserActionDirectionsTarget
+ (id)mapsUrlFromLabeledValue:(id)value contact:(id)contact;
+ (id)queryBySanitizingQuery:(id)query;
+ (id)queryByTrimmingEmptySpaceInQuery:(id)query;
- (_CNUIUserActionDirectionsTarget)init;
- (id)actionsForPostalAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment;
@end

@implementation _CNUIUserActionDirectionsTarget

+ (id)mapsUrlFromLabeledValue:(id)value contact:(id)contact
{
  v5 = MEMORY[0x1E695CF68];
  contactCopy = contact;
  valueCopy = value;
  value = [valueCopy value];
  v9 = [v5 singleLineStringFromPostalAddress:value addCountryName:0];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  v12 = MEMORY[0x1E696AEC0];
  identifier = [contactCopy identifier];

  identifier2 = [valueCopy identifier];

  v15 = [v12 stringWithFormat:@"maps:?address=%@&cncontactidentifier=%@&cnaddressidentifier=%@", v11, identifier, identifier2];

  v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];

  return v16;
}

+ (id)queryByTrimmingEmptySpaceInQuery:(id)query
{
  v3 = MEMORY[0x1E696AB08];
  queryCopy = query;
  v5 = [v3 characterSetWithCharactersInString:{@", "}];
  v6 = [queryCopy stringByTrimmingCharactersInSet:v5];

  return v6;
}

+ (id)queryBySanitizingQuery:(id)query
{
  v3 = [query stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"&" withString:@"%26"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"@" withString:@"%40"];

  return v7;
}

- (_CNUIUserActionDirectionsTarget)init
{
  v2 = *MEMORY[0x1E695C128];
  v4.receiver = self;
  v4.super_class = _CNUIUserActionDirectionsTarget;
  return [(CNUIUserActionTarget *)&v4 initWithName:@"Maps" bundleIdentifier:v2 teamIdentifier:0];
}

- (id)actionsForPostalAddresses:(id)addresses contact:(id)contact discoveringEnvironment:(id)environment
{
  contactCopy = contact;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92___CNUIUserActionDirectionsTarget_actionsForPostalAddresses_contact_discoveringEnvironment___block_invoke;
  v11[3] = &unk_1E76E9D00;
  v11[4] = self;
  v12 = contactCopy;
  v8 = contactCopy;
  v9 = [addresses _cn_map:v11];

  return v9;
}

@end