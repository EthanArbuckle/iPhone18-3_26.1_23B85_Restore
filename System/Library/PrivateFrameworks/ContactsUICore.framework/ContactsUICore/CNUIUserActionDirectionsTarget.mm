@interface CNUIUserActionDirectionsTarget
@end

@implementation CNUIUserActionDirectionsTarget

id __92___CNUIUserActionDirectionsTarget_actionsForPostalAddresses_contact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() mapsUrlFromLabeledValue:v3 contact:*(a1 + 40)];
  v5 = MEMORY[0x1E695CE08];
  v6 = *(a1 + 40);
  v7 = *MEMORY[0x1E695C360];
  v8 = [v3 identifier];

  v9 = [v5 contactPropertyWithContactNoCopy:v6 propertyKey:v7 identifier:v8];

  v10 = *MEMORY[0x1E695C160];
  v11 = [*(a1 + 32) bundleIdentifier];
  v12 = [MEMORY[0x1E6996720] futureWithResult:v4];
  v13 = [CNUIUserActionItem itemWithType:v10 contactProperty:v9 bundleIdentifier:v11 url:v12 isSensitive:1 group:10 options:0];

  return v13;
}

@end