@interface IMIDSIDQueryController
+ (BOOL)currentIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block;
+ (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block;
+ (BOOL)idInfoForDestinations:(id)destinations service:(id)service fromID:(id)d infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0;
+ (BOOL)participantsForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block;
+ (BOOL)refreshIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block;
+ (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block;
+ (id)_currentCachedRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD;
+ (id)_currentIDStatusForDestinations:(id)destinations service:(id)service listenerID:(id)d;
+ (int64_t)_currentCachedIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d;
@end

@implementation IMIDSIDQueryController

+ (BOOL)idInfoForDestinations:(id)destinations service:(id)service fromID:(id)d infoTypes:(unint64_t)types options:(id)options listenerID:(id)iD queue:(id)queue completionBlock:(id)self0
{
  destinationsCopy = destinations;
  serviceCopy = service;
  dCopy = d;
  optionsCopy = options;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  v22 = +[IMIDSServiceController sharedInstance];
  [v22 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController idInfoForDestinations:service:fromID:infoTypes:options:listenerID:queue:completionBlock:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v24 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:dCopy];
    v25 = [mEMORY[0x1E69A4878] idInfoForDestinations:destinationsCopy service:serviceCopy preferredFromID:v24 infoTypes:types options:optionsCopy listenerID:iDCopy queue:queueCopy completionBlock:blockCopy];
  }

  else
  {
    v25 = [mEMORY[0x1E69A4878] idInfoForDestinations:destinationsCopy service:serviceCopy infoTypes:types options:optionsCopy listenerID:iDCopy queue:queueCopy completionBlock:blockCopy];
  }

  return v25;
}

+ (id)_currentIDStatusForDestinations:(id)destinations service:(id)service listenerID:(id)d
{
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v10 = +[IMIDSServiceController sharedInstance];
  [v10 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController _currentIDStatusForDestinations:service:listenerID:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v12 = [mEMORY[0x1E69A4878] _currentIDStatusForDestinations:destinationsCopy service:serviceCopy listenerID:dCopy];

  return v12;
}

+ (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v16 = +[IMIDSServiceController sharedInstance];
  [v16 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController refreshIDStatusForDestinations:service:listenerID:queue:completionBlock:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v18 = [mEMORY[0x1E69A4878] refreshIDStatusForDestinations:destinationsCopy service:serviceCopy listenerID:dCopy queue:queueCopy completionBlock:blockCopy];

  return v18;
}

+ (int64_t)_currentCachedIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d
{
  dCopy = d;
  serviceCopy = service;
  destinationCopy = destination;
  v10 = +[IMIDSServiceController sharedInstance];
  [v10 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController _currentCachedIDStatusForDestination:service:listenerID:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v12 = [mEMORY[0x1E69A4878] _currentCachedIDStatusForDestination:destinationCopy service:serviceCopy listenerID:dCopy];

  return v12;
}

+ (id)_currentCachedRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v13 = +[IMIDSServiceController sharedInstance];
  [v13 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController _currentCachedRemoteDevicesForDestinations:service:preferredFromID:listenerID:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v15 = [mEMORY[0x1E69A4878] _currentCachedRemoteDevicesForDestinations:destinationsCopy service:serviceCopy preferredFromID:dCopy listenerID:iDCopy];

  return v15;
}

+ (BOOL)currentIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  serviceCopy = service;
  destinationCopy = destination;
  v16 = +[IMIDSServiceController sharedInstance];
  [v16 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController currentIDStatusForDestination:service:listenerID:queue:completionBlock:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v18 = [mEMORY[0x1E69A4878] currentIDStatusForDestination:destinationCopy service:serviceCopy listenerID:dCopy queue:queueCopy completionBlock:blockCopy];

  return v18;
}

+ (BOOL)refreshIDStatusForDestination:(id)destination service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  serviceCopy = service;
  destinationCopy = destination;
  v16 = +[IMIDSServiceController sharedInstance];
  [v16 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController refreshIDStatusForDestination:service:listenerID:queue:completionBlock:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v18 = [mEMORY[0x1E69A4878] refreshIDStatusForDestination:destinationCopy service:serviceCopy listenerID:dCopy queue:queueCopy completionBlock:blockCopy];

  return v18;
}

+ (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v16 = +[IMIDSServiceController sharedInstance];
  [v16 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController currentRemoteDevicesForDestinations:service:listenerID:queue:completionBlock:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v18 = [mEMORY[0x1E69A4878] currentRemoteDevicesForDestinations:destinationsCopy service:serviceCopy listenerID:dCopy queue:queueCopy completionBlock:blockCopy];

  return v18;
}

+ (BOOL)participantsForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  v16 = +[IMIDSServiceController sharedInstance];
  [v16 logIfDebuggingService:serviceCopy method:"+[IMIDSIDQueryController participantsForDestinations:service:listenerID:queue:completionBlock:]"];

  mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
  v18 = [mEMORY[0x1E69A4878] participantsForDestinations:destinationsCopy service:serviceCopy listenerID:dCopy queue:queueCopy completionBlock:blockCopy];

  return v18;
}

@end