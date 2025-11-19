@interface CNUIUserActionExpanseTarget
@end

@implementation CNUIUserActionExpanseTarget

id __73___CNUIUserActionExpanseTarget_actionsForContact_discoveringEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 key];
  v5 = [CNHandle handleTypeForPropertyKey:v4];

  v6 = [CNHandle alloc];
  v7 = [v3 value];
  v8 = [v7 _cnui_URLDestinationID];
  v9 = [(CNHandle *)v6 initWithStringValue:v8 type:v5];

  v10 = [MEMORY[0x1E695DFF8] _cnui_expanseURLFutureWithHandle:v9];
  v11 = *MEMORY[0x1E695C168];
  v12 = [*(a1 + 32) bundleIdentifier];
  v13 = [CNUIUserActionItem itemWithType:v11 contactProperty:v3 bundleIdentifier:v12 url:v10 group:2 options:0];

  v16[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v14;
}

@end