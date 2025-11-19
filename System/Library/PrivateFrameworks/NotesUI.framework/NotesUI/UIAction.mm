@interface UIAction
@end

@implementation UIAction

id __73__UIAction_IC__ic_centerWindowActionWithAppURL_activationRequestOptions___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.notes.open.object"];
  v3 = [*(a1 + 32) absoluteString];
  [v2 setTargetContentIdentifier:v3];

  [v2 setUserInfo:&unk_1F4FC43C0];
  v4 = [objc_alloc(MEMORY[0x1E69DD300]) initWithUserActivity:v2];
  [v4 setOptions:*(a1 + 40)];

  return v4;
}

@end