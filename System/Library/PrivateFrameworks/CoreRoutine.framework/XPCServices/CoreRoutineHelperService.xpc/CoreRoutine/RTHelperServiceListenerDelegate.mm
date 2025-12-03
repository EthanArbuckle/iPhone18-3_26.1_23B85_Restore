@interface RTHelperServiceListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RTHelperServiceListenerDelegate)init;
- (RTHelperServiceListenerProtocol)delegate;
- (void)_configureXpcInterface:(id)interface;
@end

@implementation RTHelperServiceListenerDelegate

- (RTHelperServiceListenerDelegate)init
{
  v8.receiver = self;
  v8.super_class = RTHelperServiceListenerDelegate;
  v2 = [(RTHelperServiceListenerDelegate *)&v8 init];
  if (v2)
  {
    v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RTHelperServiceProtocol];
    xpcInterface = v2->_xpcInterface;
    v2->_xpcInterface = v3;

    [(RTHelperServiceListenerDelegate *)v2 _configureXpcInterface:v2->_xpcInterface];
    v5 = objc_opt_new();
    helperService = v2->_helperService;
    v2->_helperService = v5;
  }

  return v2;
}

- (void)_configureXpcInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [interfaceCopy setClasses:v5 forSelector:"fetchMapItemsFromLocations:accessPoints:startDate:endDate:options:handler:" argumentIndex:0 ofReply:0];

  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [interfaceCopy setClasses:v7 forSelector:"fetchMapItemsFromLocations:accessPoints:startDate:endDate:options:handler:" argumentIndex:1 ofReply:0];

  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  [interfaceCopy setClasses:v9 forSelector:"fetchMapItemsFromIdentifiers:options:source:handler:" argumentIndex:0 ofReply:0];

  v10 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v10 forSelector:"fetchPostalAddressForMapItem:options:handler:" argumentIndex:0 ofReply:0];

  v11 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v11 forSelector:"fetchAppClipURLsForMapItem:options:handler:" argumentIndex:0 ofReply:0];

  v12 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v12 forSelector:"fetchPostalAddressForMapItem:options:handler:" argumentIndex:1 ofReply:0];

  v13 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v13 forSelector:"fetchAppClipURLsForMapItem:options:handler:" argumentIndex:1 ofReply:0];

  v14 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v14 forSelector:"fetchBuildingPolygonsFromLocation:radius:handler:" argumentIndex:0 ofReply:0];

  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v15, objc_opt_class(), 0];
  [interfaceCopy setClasses:v16 forSelector:"fetchBuildingPolygonsFromLocation:radius:handler:" argumentIndex:0 ofReply:1];

  v17 = [NSSet setWithObjects:objc_opt_class(), 0];
  [interfaceCopy setClasses:v17 forSelector:"fetchPointOfInterestAttributesWithIdentifier:options:handler:" argumentIndex:0 ofReply:1];

  v18 = objc_opt_class();
  v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
  [interfaceCopy setClasses:v19 forSelector:"fetchPointOfInterestsAroundCoordinate:radius:options:handler:" argumentIndex:0 ofReply:1];

  v20 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v20 forSelector:"inferLocalBluePOIWithReferenceLocation:locations:accessPoints:bluePOITile:signalEnv:refreshAOI:handler:" argumentIndex:0 ofReply:0];

  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
  [interfaceCopy setClasses:v22 forSelector:"inferLocalBluePOIWithReferenceLocation:locations:accessPoints:bluePOITile:signalEnv:refreshAOI:handler:" argumentIndex:1 ofReply:0];

  v23 = objc_opt_class();
  v24 = [NSSet setWithObjects:v23, objc_opt_class(), 0];
  [interfaceCopy setClasses:v24 forSelector:"inferLocalBluePOIWithReferenceLocation:locations:accessPoints:bluePOITile:signalEnv:refreshAOI:handler:" argumentIndex:2 ofReply:0];

  v25 = [NSSet setWithObjects:objc_opt_class(), 0];
  [interfaceCopy setClasses:v25 forSelector:"inferLocalBluePOIWithReferenceLocation:locations:accessPoints:bluePOITile:signalEnv:refreshAOI:handler:" argumentIndex:3 ofReply:0];

  v26 = objc_opt_class();
  v27 = [NSSet setWithObjects:v26, objc_opt_class(), 0];
  [interfaceCopy setClasses:v27 forSelector:"downloadBluePOITilesForDownloadKeys:handler:" argumentIndex:0 ofReply:0];

  v28 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v28 forSelector:"fetchConfidenceWeightForMapItem:startDate:endDate:options:handler:" argumentIndex:0 ofReply:0];

  v29 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v29 forSelector:"fetchConfidenceWeightForMapItem:startDate:endDate:options:handler:" argumentIndex:1 ofReply:0];

  v30 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v30 forSelector:"fetchConfidenceWeightForMapItem:startDate:endDate:options:handler:" argumentIndex:2 ofReply:0];

  v31 = [NSSet setWithObject:objc_opt_class()];
  [interfaceCopy setClasses:v31 forSelector:"fetchConfidenceWeightForMapItem:startDate:endDate:options:handler:" argumentIndex:3 ofReply:0];

  v32 = objc_opt_class();
  v33 = [NSSet setWithObjects:v32, objc_opt_class(), 0];
  [interfaceCopy setClasses:v33 forSelector:"fetchBluePOITilesForDownloadKeys:handler:" argumentIndex:0 ofReply:0];

  v34 = [NSSet setWithObjects:objc_opt_class(), 0];
  [interfaceCopy setClasses:v34 forSelector:"computeWithInputSignals:handler:" argumentIndex:0 ofReply:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedInterface:self->_xpcInterface];
  [connectionCopy setExportedObject:self->_helperService];
  [connectionCopy resume];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained serviceListener:self didAcceptConnection:connectionCopy];
  }

  return 1;
}

- (RTHelperServiceListenerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end