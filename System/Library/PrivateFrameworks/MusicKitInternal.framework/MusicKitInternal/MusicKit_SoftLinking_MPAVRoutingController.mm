@interface MusicKit_SoftLinking_MPAVRoutingController
- (MusicKit_SoftLinking_MPAVRoutingController)init;
- (void)_handleRoutesDidChange:(id)change;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
@end

@implementation MusicKit_SoftLinking_MPAVRoutingController

- (MusicKit_SoftLinking_MPAVRoutingController)init
{
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPAVRoutingController;
  v2 = [(MusicKit_SoftLinking_MPAVRoutingController *)&v11 init];
  if (v2)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v3 = getMPAVEndpointRoutingDataSourceClass_softClass;
    v20 = getMPAVEndpointRoutingDataSourceClass_softClass;
    if (!getMPAVEndpointRoutingDataSourceClass_softClass)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __getMPAVEndpointRoutingDataSourceClass_block_invoke;
      v15 = &unk_1E84C3838;
      v16 = &v17;
      __getMPAVEndpointRoutingDataSourceClass_block_invoke(&v12);
      v3 = v18[3];
    }

    v4 = v3;
    _Block_object_dispose(&v17, 8);
    v5 = objc_alloc_init(v3);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v6 = getMPAVRoutingControllerClass_softClass_0;
    v20 = getMPAVRoutingControllerClass_softClass_0;
    if (!getMPAVRoutingControllerClass_softClass_0)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __getMPAVRoutingControllerClass_block_invoke_0;
      v15 = &unk_1E84C3838;
      v16 = &v17;
      __getMPAVRoutingControllerClass_block_invoke_0(&v12);
      v6 = v18[3];
    }

    v7 = v6;
    _Block_object_dispose(&v17, 8);
    v8 = [[v6 alloc] initWithDataSource:v5 name:@"MusicKitInternal.InternalMusicPlayer"];
    underlyingRoutingController = v2->_underlyingRoutingController;
    v2->_underlyingRoutingController = v8;

    [(MPAVRoutingController *)v2->_underlyingRoutingController setDelegate:v2];
  }

  return v2;
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__MusicKit_SoftLinking_MPAVRoutingController_routingControllerAvailableRoutesDidChange___block_invoke;
  v5[3] = &unk_1E84C3CB8;
  objc_copyWeak(&v6, &location);
  [changeCopy fetchAvailableRoutesWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_handleRoutesDidChange:(id)change
{
  change;
  routesDidUpdate = self->_routesDidUpdate;
  if (routesDidUpdate)
  {
    routesDidUpdate[2]();
  }

  MEMORY[0x1EEE66BB8]();
}

@end