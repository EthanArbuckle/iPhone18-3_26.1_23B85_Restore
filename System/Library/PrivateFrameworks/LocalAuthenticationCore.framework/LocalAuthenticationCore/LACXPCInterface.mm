@interface LACXPCInterface
+ (id)interfaceForEnvironment;
+ (id)interfaceForIdleUI;
+ (id)interfaceForIdleUIHost;
+ (id)interfaceForRemoteUI;
+ (id)interfaceForRemoteUIClient;
+ (id)interfaceForRemoteUIHost;
+ (id)interfaceForRemoteUIServer;
+ (id)interfaceForUIMechanism;
+ (id)interfaceForUserService;
+ (id)interfaceForXPCProtocol:(id)protocol;
@end

@implementation LACXPCInterface

+ (id)interfaceForEnvironment
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2699408];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_environmentStateForUser_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)interfaceForXPCProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (interfaceForXPCProtocol__onceToken != -1)
  {
    +[LACXPCInterface interfaceForXPCProtocol:];
  }

  v5 = [interfaceForXPCProtocol__protocolCache objectForKey:protocolCopy];
  if (!v5)
  {
    if (&unk_1F26AA378 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForRemoteUIHost];
    }

    else if (&unk_1F26AA3D8 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForRemoteUI];
    }

    else if (&unk_1F269F8E0 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForRemoteUIClient];
    }

    else if (&unk_1F26AA318 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForRemoteUIServer];
    }

    else if (&unk_1F26AA438 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForUIMechanism];
    }

    else if (&unk_1F26AA498 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForUserService];
    }

    else if (&unk_1F269B9C8 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForIdleUI];
    }

    else if (&unk_1F269B908 == protocolCopy)
    {
      interfaceForRemoteUIHost = [self interfaceForIdleUIHost];
    }

    else
    {
      if (&unk_1F2699408 == protocolCopy)
      {
        [self interfaceForEnvironment];
      }

      else
      {
        [MEMORY[0x1E696B0D0] interfaceWithProtocol:protocolCopy];
      }
      interfaceForRemoteUIHost = ;
    }

    v5 = interfaceForRemoteUIHost;
    [interfaceForXPCProtocol__protocolCache setObject:interfaceForRemoteUIHost forKey:protocolCopy];
  }

  v7 = v5;

  return v7;
}

uint64_t __43__LACXPCInterface_interfaceForXPCProtocol___block_invoke()
{
  interfaceForXPCProtocol__protocolCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)interfaceForRemoteUI
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F26AA3D8];
  v14 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v14 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_transitionToController_internalInfo_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v12 forSelector:sel_mechanismEvent_value_reply_ argumentIndex:1 ofReply:0];

  return v2;
}

+ (id)interfaceForRemoteUIClient
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F269F8E0];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_uiDismissedForRequest_error_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)interfaceForRemoteUIServer
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F26AA318];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_showUIForRequest_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)interfaceForRemoteUIHost
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F26AA378];
  v4 = [self interfaceForXPCProtocol:&unk_1F26AA3D8];
  [v3 setInterface:v4 forSelector:sel_connectRemoteUI_requestID_reply_ argumentIndex:0 ofReply:0];

  v5 = [self interfaceForXPCProtocol:&unk_1F26AA438];
  [v3 setInterface:v5 forSelector:sel_connectRemoteUI_requestID_reply_ argumentIndex:0 ofReply:1];

  v6 = [self interfaceForXPCProtocol:&unk_1F269B488];
  [v3 setInterface:v6 forSelector:sel_connectRemoteUI_requestID_reply_ argumentIndex:1 ofReply:1];

  v7 = [self interfaceForXPCProtocol:&unk_1F26AA3D8];
  [v3 setInterface:v7 forSelector:sel_checkHasPendingUIRequestsForRemoteUI_completion_ argumentIndex:0 ofReply:0];

  return v3;
}

+ (id)interfaceForUIMechanism
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F26AA438];
  v14 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v14 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_uiEvent_options_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v12 forSelector:sel_internalInfoWithReply_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)interfaceForUserService
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F26AA498];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_fetchUsersInTargetDisk_reply_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_fetchRecoveryKeysInTargetDisk_reply_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)interfaceForIdleUI
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F269B9C8];
  v4 = [self interfaceForXPCProtocol:&unk_1F26AA4F8];
  v5 = [self interfaceForXPCProtocol:&unk_1F269B908];
  [v3 setInterface:v4 forSelector:sel_connectIdleUI_identifier_completion_ argumentIndex:0 ofReply:0];
  [v3 setInterface:v5 forSelector:sel_connectIdleUI_identifier_completion_ argumentIndex:0 ofReply:1];

  return v3;
}

+ (id)interfaceForIdleUIHost
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F269B908];
  v4 = [self interfaceForXPCProtocol:&unk_1F26AA4F8];
  [v3 setInterface:v4 forSelector:sel_idleUIGotFocus_identifier_completion_ argumentIndex:0 ofReply:0];

  return v3;
}

@end