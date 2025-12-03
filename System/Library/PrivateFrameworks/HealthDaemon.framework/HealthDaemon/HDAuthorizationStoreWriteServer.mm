@interface HDAuthorizationStoreWriteServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (void)remote_setAuthorizationStatuses:(id)statuses authorizationModes:(id)modes forBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)remote_setObjectAuthorizationStatuses:(id)statuses objectType:(id)type bundleIdentifier:(id)identifier completion:(id)completion;
- (void)remote_setRequestedAuthorizationForBundleIdentifier:(id)identifier shareTypes:(id)types readTypes:(id)readTypes completion:(id)completion;
@end

@implementation HDAuthorizationStoreWriteServer

+ (BOOL)validateClient:(id)client error:(id *)error
{
  clientCopy = client;
  v6 = *MEMORY[0x277CCB888];
  if ([clientCopy hasRequiredEntitlement:*MEMORY[0x277CCB888] error:error])
  {
    v7 = [clientCopy valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = v8 | [clientCopy hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD68] error:error];

  return v9 & 1;
}

- (void)remote_setAuthorizationStatuses:(id)statuses authorizationModes:(id)modes forBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  modesCopy = modes;
  statusesCopy = statuses;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  [authorizationManager setAuthorizationStatuses:statusesCopy authorizationModes:modesCopy forBundleIdentifier:identifierCopy options:options completion:completionCopy];
}

- (void)remote_setRequestedAuthorizationForBundleIdentifier:(id)identifier shareTypes:(id)types readTypes:(id)readTypes completion:(id)completion
{
  typesCopy = types;
  readTypesCopy = readTypes;
  completionCopy = completion;
  identifierCopy = identifier;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __119__HDAuthorizationStoreWriteServer_remote_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion___block_invoke;
  v18[3] = &unk_278625280;
  v19 = completionCopy;
  v16 = completionCopy;
  v17 = [authorizationManager enqueueAuthorizationRequestForBundleIdentifier:identifierCopy writeTypes:typesCopy readTypes:readTypesCopy authorizationNeededHandler:0 completion:v18];
  [authorizationManager handleAuthorizationRequestsForBundleIdentifier:identifierCopy promptHandler:0 completion:0];
}

- (void)remote_setObjectAuthorizationStatuses:(id)statuses objectType:(id)type bundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  typeCopy = type;
  statusesCopy = statuses;
  profile = [(HDStandardTaskServer *)self profile];
  authorizationManager = [profile authorizationManager];
  [authorizationManager setObjectAuthorizationStatusContext:statusesCopy forObjectType:typeCopy bundleIdentifier:identifierCopy completion:completionCopy];
}

@end