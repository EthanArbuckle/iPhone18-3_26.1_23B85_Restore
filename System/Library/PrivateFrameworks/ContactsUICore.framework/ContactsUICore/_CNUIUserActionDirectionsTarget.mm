@interface _CNUIUserActionDirectionsTarget
+ (id)mapsUrlFromLabeledValue:(id)a3 contact:(id)a4;
+ (id)queryBySanitizingQuery:(id)a3;
+ (id)queryByTrimmingEmptySpaceInQuery:(id)a3;
- (_CNUIUserActionDirectionsTarget)init;
- (id)actionsForPostalAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5;
@end

@implementation _CNUIUserActionDirectionsTarget

+ (id)mapsUrlFromLabeledValue:(id)a3 contact:(id)a4
{
  v5 = MEMORY[0x1E695CF68];
  v6 = a4;
  v7 = a3;
  v8 = [v7 value];
  v9 = [v5 singleLineStringFromPostalAddress:v8 addCountryName:0];
  v10 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 identifier];

  v14 = [v7 identifier];

  v15 = [v12 stringWithFormat:@"maps:?address=%@&cncontactidentifier=%@&cnaddressidentifier=%@", v11, v13, v14];

  v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];

  return v16;
}

+ (id)queryByTrimmingEmptySpaceInQuery:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:{@", "}];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

+ (id)queryBySanitizingQuery:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  v4 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];

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

- (id)actionsForPostalAddresses:(id)a3 contact:(id)a4 discoveringEnvironment:(id)a5
{
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92___CNUIUserActionDirectionsTarget_actionsForPostalAddresses_contact_discoveringEnvironment___block_invoke;
  v11[3] = &unk_1E76E9D00;
  v11[4] = self;
  v12 = v7;
  v8 = v7;
  v9 = [a3 _cn_map:v11];

  return v9;
}

@end