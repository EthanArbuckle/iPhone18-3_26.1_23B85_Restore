@interface CPSNavigator
- (CARNavigationOwnershipManagerDelegate)navigationOwnershipDelegate;
- (CPSNavigator)initWithIdentifier:(id)a3 currentSession:(id)a4 forTrip:(id)a5;
- (void)_sync_displayUpdateManeuverTravelEstimates:(id)a3 forManeuver:(id)a4;
- (void)_sync_displayUpdateTripTravelEstimates:(id)a3;
- (void)addDisplayDelegate:(id)a3;
- (void)addLaneGuidances:(id)a3;
- (void)addManeuvers:(id)a3;
- (void)cancelTrip;
- (void)clearCurrentLaneGuidance;
- (void)dealloc;
- (void)finishTrip;
- (void)invalidate;
- (void)navigationOwnershipChangedToOwner:(unint64_t)a3;
- (void)pauseTripForReason:(unint64_t)a3 description:(id)a4 turnCardColor:(id)a5;
- (void)removeDisplayDelegate:(id)a3;
- (void)routeChangedWithReason:(unsigned __int8)a3 routeInfo:(id)a4;
- (void)setAppSupportsInstrumentCluster:(BOOL)a3;
- (void)setCompleted:(BOOL)a3;
- (void)setCurrentLaneGuidance:(id)a3;
- (void)setCurrentRoadNameVariants:(id)a3;
- (void)setDestinationNameVariants:(id)a3;
- (void)setManeuverState:(int64_t)a3;
- (void)setSendsNavigationMetadata:(BOOL)a3;
- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4;
- (void)startRerouting;
- (void)updateTravelEstimates:(id)a3 forManeuver:(id)a4;
- (void)updateTripTravelEstimates:(id)a3;
@end

@implementation CPSNavigator

- (CPSNavigator)initWithIdentifier:(id)a3 currentSession:(id)a4 forTrip:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v5 = v17;
  v17 = 0;
  v13.receiver = v5;
  v13.super_class = CPSNavigator;
  v12 = [(CPSNavigator *)&v13 init];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    displayDelegates = v17->_displayDelegates;
    v17->_displayDelegates = v6;
    MEMORY[0x277D82BD8](displayDelegates);
    objc_storeStrong(&v17->_currentSession, v15);
    objc_storeStrong(&v17->_trip, v14);
  }

  v9 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

- (void)setAppSupportsInstrumentCluster:(BOOL)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9 = self;
  v8 = a2;
  v7 = a3;
  if (self->_appSupportsInstrumentCluster != a3)
  {
    v9->_appSupportsInstrumentCluster = v7;
    if (v9->_appSupportsInstrumentCluster)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"maps:/car/instrumentcluster"];
      v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"maps:/car/instrumentcluster/map"];
      currentSession = v9->_currentSession;
      v10[0] = v6;
      v10[1] = v5;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
      [(CARSession *)currentSession suggestUI:?];
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v5, 0);
      objc_storeStrong(&v6, 0);
    }
  }
}

- (void)invalidate
{
  [(CPSNavigator *)self setMetadataDelegate:0];
  v2 = [(CPSNavigator *)self displayDelegates];
  [(NSHashTable *)v2 removeAllObjects];
  MEMORY[0x277D82BD8](v2);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(CPSNavigator *)self invalidate];
  v2.receiver = v4;
  v2.super_class = CPSNavigator;
  [(CPSNavigator *)&v2 dealloc];
}

- (void)setCompleted:(BOOL)a3
{
  if (self->_completed != a3)
  {
    self->_completed = a3;
  }
}

- (void)addDisplayDelegate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSNavigator *)v5 displayDelegates];
  [(NSHashTable *)v3 addObject:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)removeDisplayDelegate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSNavigator *)v5 displayDelegates];
  [(NSHashTable *)v3 removeObject:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setCurrentLaneGuidance:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSNavigator *)v5 metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v3 setCurrentLaneGuidance:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)clearCurrentLaneGuidance
{
  v2 = [(CPSNavigator *)self metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v2 setCurrentLaneGuidance:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)setManeuverState:(int64_t)a3
{
  v3 = [(CPSNavigator *)self metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v3 setManeuverState:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)setCurrentRoadNameVariants:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSNavigator *)v5 metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v3 setCurrentRoadNameVariants:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)addManeuvers:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSNavigator *)v5 metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v3 addManeuvers:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)addLaneGuidances:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSNavigator *)v5 metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v3 addLaneGuidances:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setSendsNavigationMetadata:(BOOL)a3
{
  self->_sendsNavigationMetadata = a3;
  v4 = [(CPSNavigator *)self metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v4 setSendsNavigationMetadata:a3];
  MEMORY[0x277D82BD8](v4);
}

- (void)setDestinationNameVariants:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(CPSNavigator *)v6 metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v4 setDestinationNameVariants:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)pauseTripForReason:(unint64_t)a3 description:(id)a4 turnCardColor:(id)a5
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v7 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __61__CPSNavigator_pauseTripForReason_description_turnCardColor___block_invoke;
  v13 = &unk_278D92A68;
  v14 = MEMORY[0x277D82BE0](v21);
  v16[1] = v19;
  v15 = MEMORY[0x277D82BE0](location);
  v16[0] = MEMORY[0x277D82BE0](v17);
  dispatch_sync(queue, &v9);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

double __61__CPSNavigator_pauseTripForReason_description_turnCardColor___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a1;
  v6 = [*(a1 + 32) metadataDelegate];
  [v6 pauseTripForReason:*(a1 + 56)];
  MEMORY[0x277D82BD8](v6);
  memset(__b, 0, sizeof(__b));
  obj = [*(a1 + 32) displayDelegates];
  v9 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v9;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v4);
      if (objc_opt_respondsToSelector())
      {
        [v11 navigator:*(a1 + 32) pausedTripForReason:*(a1 + 56) description:*(a1 + 40) usingColor:*(a1 + 48)];
      }

      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  *&result = MEMORY[0x277D82BD8](obj).n128_u64[0];
  return result;
}

- (void)startRerouting
{
  v2 = [(CPSNavigator *)self metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v2 startRerouting];
  MEMORY[0x277D82BD8](v2);
}

- (void)routeChangedWithReason:(unsigned __int8)a3 routeInfo:(id)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = [(CPSNavigator *)v19 metadataDelegate];
  [(CPSNavigationMetadataDelegate *)v5 routeChangedWithReason:v17 routeInfo:location];
  MEMORY[0x277D82BD8](v5);
  objc_initWeak(&v15, v19);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __49__CPSNavigator_routeChangedWithReason_routeInfo___block_invoke;
  v12 = &unk_278D92A90;
  objc_copyWeak(&v14, &v15);
  v13 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&location, 0);
}

void __49__CPSNavigator_routeChangedWithReason_routeInfo___block_invoke(id *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 5);
  v2 = v12[0];
  v4 = [a1[4] routeGuidance];
  v3 = [v4 tripTravelEstimates];
  [v2 _sync_displayUpdateTripTravelEstimates:?];
  MEMORY[0x277D82BD8](v3);
  *&v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v6 = v12[0];
  v11 = [a1[4] routeGuidance];
  v10 = [v11 maneuverTravelEstimates];
  v9 = [a1[4] routeGuidance];
  v8 = [v9 currentManeuvers];
  v7 = [v8 firstObject];
  [v6 _sync_displayUpdateManeuverTravelEstimates:v10 forManeuver:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(v12, 0);
}

- (void)finishTrip
{
  v11 = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __26__CPSNavigator_finishTrip__block_invoke;
  v9 = &unk_278D913E8;
  v10[0] = MEMORY[0x277D82BE0](v11);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

void __26__CPSNavigator_finishTrip__block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v9 = [a1[4] metadataDelegate];
  [v9 finishTrip];
  *&v1 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (*(a1[4] + 8))
  {
    [*(a1[4] + 6) suggestUI:{MEMORY[0x277CBEBF8], v1}];
  }

  v6 = [a1[4] displayDelegates];
  location[0] = [v6 copy];
  MEMORY[0x277D82BD8](v6);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v8 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v4);
      if (objc_opt_respondsToSelector())
      {
        [v12 showManeuvers:MEMORY[0x277CBEBF8] usingDisplayStyles:?];
      }

      if (objc_opt_respondsToSelector())
      {
        [v12 navigator:a1[4] didEndTrip:1];
      }

      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(a1[4] + 2, 0);
  [a1[4] setCompleted:1];
  objc_storeStrong(location, 0);
}

- (void)cancelTrip
{
  v11 = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __26__CPSNavigator_cancelTrip__block_invoke;
  v9 = &unk_278D913E8;
  v10[0] = MEMORY[0x277D82BE0](v11);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

void __26__CPSNavigator_cancelTrip__block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v5 = [a1[4] metadataDelegate];
  [v5 cancelTrip];
  v7 = [a1[4] displayDelegates];
  location[0] = [v7 copy];
  MEMORY[0x277D82BD8](v7);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v9 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v9)
  {
    v2 = *__b[2];
    v3 = 0;
    v4 = v9;
    while (1)
    {
      v1 = v3;
      if (*__b[2] != v2)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v3);
      if (objc_opt_respondsToSelector())
      {
        [v11 showManeuvers:MEMORY[0x277CBEBF8] usingDisplayStyles:?];
      }

      if (objc_opt_respondsToSelector())
      {
        [v11 navigator:a1[4] didEndTrip:0];
      }

      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  [a1[4] setCompleted:{1, MEMORY[0x277D82BD8](obj).n128_f64[0]}];
  objc_storeStrong(location, 0);
}

- (void)showManeuvers:(id)a3 usingDisplayStyles:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __49__CPSNavigator_showManeuvers_usingDisplayStyles___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_sync(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __49__CPSNavigator_showManeuvers_usingDisplayStyles___block_invoke(NSObject *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  if (([(objc_class *)a1[4].isa isCompleted]& 1) != 0)
  {
    oslog[0] = CarPlaySupportGeneralLogging();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      log = oslog[0];
      v16 = type;
      v17 = [(objc_class *)a1[4].isa trip];
      v27 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_1_8_64(v31, v27);
      _os_log_error_impl(&dword_242FE8000, log, v16, "cannot update maneuvers for completed trip %@", v31, 0xCu);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v14 = [(objc_class *)a1[4].isa metadataDelegate];
    [v14 setActiveManeuvers:a1[5].isa];
    v26 = 0;
    v25 = 0;
    if ([(objc_class *)a1[5].isa count]<= 2)
    {
      objc_storeStrong(&v26, a1[5].isa);
      objc_storeStrong(&v25, a1[6].isa);
    }

    else
    {
      isa = a1[5].isa;
      oslog[8] = 0;
      oslog[7] = 2;
      oslog[9] = 0;
      oslog[10] = 2;
      v23 = 0;
      v24 = 2;
      v2 = [(objc_class *)isa subarrayWithRange:0, 2];
      v3 = v26;
      v26 = v2;
      *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      v5 = a1[6].isa;
      oslog[4] = 0;
      oslog[3] = 2;
      oslog[5] = 0;
      oslog[6] = 2;
      v21 = 0;
      v22 = 2;
      v6 = [(objc_class *)v5 subarrayWithRange:0, 2, v4];
      v7 = v25;
      v25 = v6;
      MEMORY[0x277D82BD8](v7);
    }

    memset(__b, 0, sizeof(__b));
    obj = [(objc_class *)a1[4].isa displayDelegates];
    v13 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(__b[1] + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v20 showManeuvers:v26 usingDisplayStyles:v25];
        }

        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }
}

- (void)updateTravelEstimates:(id)a3 forManeuver:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __50__CPSNavigator_updateTravelEstimates_forManeuver___block_invoke;
  v12 = &unk_278D926F0;
  v13 = MEMORY[0x277D82BE0](v18);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_sync(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __50__CPSNavigator_updateTravelEstimates_forManeuver___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[2] = a1;
  v8[1] = a1;
  if ([*(a1 + 32) isCompleted])
  {
    v8[0] = CarPlaySupportGeneralLogging();
    v7 = 16;
    if (os_log_type_enabled(v8[0], OS_LOG_TYPE_ERROR))
    {
      log = v8[0];
      type = v7;
      v4 = [*(a1 + 32) trip];
      v6 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_1_8_64(v9, v6);
      _os_log_error_impl(&dword_242FE8000, log, type, "cannot update maneuver travel estimates for completed trip %@", v9, 0xCu);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(v8, 0);
  }

  else
  {
    v1 = [*(a1 + 32) metadataDelegate];
    [v1 updateTravelEstimates:*(a1 + 40) forManeuver:*(a1 + 48)];
    [*(a1 + 32) _sync_displayUpdateManeuverTravelEstimates:*(a1 + 40) forManeuver:{*(a1 + 48), MEMORY[0x277D82BD8](v1).n128_f64[0]}];
  }
}

- (void)updateTripTravelEstimates:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(CPSNavigator *)v12 isCompleted])
  {
    v10 = CarPlaySupportGeneralLogging();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v7 = [(CPSNavigator *)v12 trip];
      v8 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_1_8_64(v13, v8);
      _os_log_error_impl(&dword_242FE8000, log, type, "cannot update trip travel estimates for completed trip %@", v13, 0xCu);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v4 = [(CPSNavigator *)v12 metadataDelegate];
    [(CPSNavigationMetadataDelegate *)v4 updateTripTravelEstimates:location[0]];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [(CPSNavigator *)v12 _sync_displayUpdateTripTravelEstimates:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_sync_displayUpdateManeuverTravelEstimates:(id)a3 forManeuver:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  memset(__b, 0, sizeof(__b));
  v9 = [(CPSNavigator *)v15 displayDelegates];
  v10 = [(NSHashTable *)v9 countByEnumeratingWithState:__b objects:v16 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(__b[1] + 8 * v6);
      if (objc_opt_respondsToSelector())
      {
        [v12 updateEstimates:location[0] forManeuver:v13];
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSHashTable *)v9 countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_sync_displayUpdateTripTravelEstimates:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = [(CPSNavigator *)v12 displayDelegates];
  v8 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      if (objc_opt_respondsToSelector())
      {
        [v10 updateTripEstimates:location[0]];
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
}

- (void)navigationOwnershipChangedToOwner:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = CarPlaySupportGeneralLogging();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    v6 = NSStringFromNavigationOwner_0(v10);
    v7 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_64_8_64(v13, v12, v7);
    _os_log_impl(&dword_242FE8000, log, type, "%@: Navigation ownership changed to %@", v13, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v9, 0);
  v3 = [(CPSNavigator *)v12 navigationOwnershipDelegate];
  [(CARNavigationOwnershipManagerDelegate *)v3 navigationOwnershipChangedToOwner:v10];
  MEMORY[0x277D82BD8](v3);
}

- (CARNavigationOwnershipManagerDelegate)navigationOwnershipDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationOwnershipDelegate);

  return WeakRetained;
}

@end