@interface NACRoutingControllerLocal
- (NACAudioRoute)pickedRoute;
- (NACRoutingControllerDelegate)delegate;
- (NACRoutingControllerLocal)initWithAudioCategory:(id)category;
- (NSArray)availableAudioRoutes;
- (void)beginObservingRoutes;
- (void)endObservingRoutes;
- (void)pickAudioRoute:(id)route;
- (void)routingController:(id)controller didFailToPickRouteWithError:(id)error;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
@end

@implementation NACRoutingControllerLocal

- (NACRoutingControllerLocal)initWithAudioCategory:(id)category
{
  categoryCopy = category;
  v9.receiver = self;
  v9.super_class = NACRoutingControllerLocal;
  v6 = [(NACRoutingControllerLocal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioCategory, category);
  }

  return v7;
}

- (void)beginObservingRoutes
{
  v3 = objc_opt_new();
  routingController = self->_routingController;
  self->_routingController = v3;

  [(MPAVRoutingController *)self->_routingController setDiscoveryMode:1];
  [(MPAVRoutingController *)self->_routingController setCategory:self->_audioCategory];
  v5 = self->_routingController;

  [(MPAVRoutingController *)v5 setDelegate:self];
}

- (void)endObservingRoutes
{
  routingController = self->_routingController;
  self->_routingController = 0;
  MEMORY[0x2821F96F8]();
}

- (void)pickAudioRoute:(id)route
{
  v20 = *MEMORY[0x277D85DE8];
  routeCopy = route;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  availableRoutes = [(MPAVRoutingController *)self->_routingController availableRoutes];
  v6 = [availableRoutes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [NACAudioRoute audioRouteWithMPAVRoute:v10];
        if ([routeCopy isEqualToAudioRoute:v11])
        {
          routingController = self->_routingController;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __44__NACRoutingControllerLocal_pickAudioRoute___block_invoke;
          v14[3] = &unk_27992B430;
          v14[4] = v10;
          [(MPAVRoutingController *)routingController selectRoute:v10 operation:0 completion:v14];

          goto LABEL_11;
        }
      }

      v7 = [availableRoutes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

void __44__NACRoutingControllerLocal_pickAudioRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = NMLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__NACRoutingControllerLocal_pickAudioRoute___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (NACAudioRoute)pickedRoute
{
  pickedRoute = [(MPAVRoutingController *)self->_routingController pickedRoute];
  v3 = [NACAudioRoute audioRouteWithMPAVRoute:pickedRoute];

  return v3;
}

- (NSArray)availableAudioRoutes
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  availableRoutes = [(MPAVRoutingController *)self->_routingController availableRoutes];
  v5 = [availableRoutes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(availableRoutes);
        }

        v9 = [NACAudioRoute audioRouteWithMPAVRoute:*(*(&v12 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [availableRoutes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routingControllerDidUpdateAvailableRoutes:self];
}

- (void)routingController:(id)controller didFailToPickRouteWithError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 routingControllerFailedToPickRoute:self];
  }
}

- (NACRoutingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__NACRoutingControllerLocal_pickAudioRoute___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25AEBF000, log, OS_LOG_TYPE_ERROR, "Failed to pick route: %@ due to %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end