@interface MNTrafficIncidentAlertUpdater
- (MNTrafficIncidentAlertUpdater)init;
- (MNTrafficIncidentAlertUpdaterDelegate)delegate;
- (id)_nextAlert;
- (void)_activateAlert:(id)a3 forLocation:(id)a4;
- (void)_removeActiveAlert;
- (void)_updateActiveAlertForLocation:(id)a3;
- (void)_updateAlertDistanceAndETAForLocation:(id)a3;
- (void)_updateForAlertsFromResponseUsingDistancePoints:(id)a3;
- (void)_updateForLocationUsingDistancePoints:(id)a3;
- (void)clearAlerts;
- (void)dealloc;
- (void)setActiveAlert:(id)a3;
- (void)setUseTriggerPointRangeBannerQueuing:(BOOL)a3;
- (void)updateForAlertsFromResponse:(id)a3 updatedLocation:(id)a4;
- (void)updateForLocation:(id)a3;
- (void)updateForReroute:(id)a3;
- (void)updateIncidentResultForETARequest:(id)a3;
- (void)updateIncidentResultForRerouteRequest:(id)a3;
@end

@implementation MNTrafficIncidentAlertUpdater

- (MNTrafficIncidentAlertUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAlertDistanceAndETAForLocation:(id)a3
{
  activeAlert = self->_activeAlert;
  if (activeAlert)
  {
    [(MNTrafficIncidentAlert *)activeAlert updateLocation:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained trafficIncidentAlertUpdater:self updatedAlert:self->_activeAlert];
  }
}

- (void)_updateActiveAlertForLocation:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_activeAlert)
  {
    v6 = [v4 routeMatch];
    v7 = [v6 route];

    v8 = [(MNTrafficIncidentAlert *)self->_activeAlert originalRoute];
    v9 = v8;
    if (v8 == v7)
    {
    }

    else
    {
      v10 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];

      if (v10 != v7)
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v33 = [v7 name];
          v31 = [v7 uniqueRouteID];
          v35 = [(MNTrafficIncidentAlert *)self->_activeAlert originalRoute];
          v12 = [v35 name];
          v34 = [(MNTrafficIncidentAlert *)self->_activeAlert originalRoute];
          v13 = [v34 uniqueRouteID];
          v32 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];
          v14 = [v32 name];
          v15 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];
          v16 = [v15 uniqueRouteID];
          *buf = 138479107;
          v37 = v33;
          v38 = 2112;
          v39 = v31;
          v40 = 2113;
          v41 = v12;
          v42 = 2112;
          v43 = v13;
          v44 = 2113;
          v45 = v14;
          v46 = 2112;
          v47 = v16;
          _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Location was matched to a route that matches neither of the alert's routes! Invalidating alert.\nRoute for location: %{private}@ - %@\nAlert original route: %{private}@ - %@\nAlert new route: %{private}@ - %@", buf, 0x3Eu);
        }

        [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
        goto LABEL_32;
      }
    }

    v17 = [(MNTrafficIncidentAlert *)self->_activeAlert progressBarTriggerRange];
    v18 = [v17 showTriggerPoint];

    if (v18 && !-[MNTrafficIncidentAlert shouldShowTimer](self->_activeAlert, "shouldShowTimer") && [v18 shouldActivateForLocation:v5])
    {
      [(MNTrafficIncidentAlert *)self->_activeAlert setShouldShowTimer:1];
      v19 = [(MNTrafficIncidentAlert *)self->_activeAlert progressBarTriggerRange];
      [v19 displayTime];
      [(MNTrafficIncidentAlert *)self->_activeAlert setAlertDisplayDuration:?];
    }

    else
    {
      if ([(MNTrafficIncidentAlert *)self->_activeAlert shouldShowTimer])
      {
LABEL_31:
        [(MNTrafficIncidentAlertUpdater *)self _updateAlertDistanceAndETAForLocation:v5];

LABEL_32:
        goto LABEL_33;
      }

      v20 = [(MNTrafficIncidentAlert *)self->_activeAlert triggerRange];
      v19 = [v20 hideTriggerPoint];

      if (v19)
      {
        v21 = [v19 shouldActivateForLocation:v5];
      }

      else
      {
        v21 = 0;
      }

      [(NSDate *)self->_activeAlertDisplayedTime timeIntervalSinceNow];
      v23 = -v22;
      v24 = [(MNTrafficIncidentAlert *)self->_activeAlert triggerRange];
      [v24 displayTime];
      v26 = v25;

      if ((v21 & 1) != 0 || v26 < v23)
      {
        if (v21)
        {
          v27 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEFAULT, "Active incident alert's hide trigger point has been passed.", buf, 2u);
          }
        }

        if (v26 < v23)
        {
          v28 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEFAULT, "Active incident alert has timed out.", buf, 2u);
          }
        }

        if ([(MNTrafficIncidentAlert *)self->_activeAlert isReroute])
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        self->_trafficIncidentStatus = v29;
        [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
      }
    }

    goto LABEL_31;
  }

LABEL_33:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_removeActiveAlert
{
  activeAlert = self->_activeAlert;
  if (!activeAlert)
  {
    return;
  }

  v4 = activeAlert;
  if (![(MNTrafficIncidentAlert *)v4 isReroute])
  {
    v5 = 0;
    goto LABEL_7;
  }

  if (self->_trafficIncidentStatus == 1)
  {
    v5 = 2;
LABEL_7:
    self->_trafficIncidentStatus = v5;
  }

  [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained trafficIncidentAlertUpdater:self invalidatedAlert:v4];
}

- (void)_activateAlert:(id)a3 forLocation:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(NSDate *)self->_nextAlertDisplayTime timeIntervalSinceNow];
  if (v8 > 0.0)
  {
    goto LABEL_25;
  }

  v9 = [v6 bannerID];

  if (v9)
  {
    displayedBannerIds = self->_displayedBannerIds;
    v11 = [v6 bannerID];
    [(NSMutableSet *)displayedBannerIds addObject:v11];
  }

  if (![(MNTrafficIncidentAlertUpdater *)self useTriggerPointRangeBannerQueuing])
  {
    v12 = [v6 bannerID];
    previousBannerID = self->_previousBannerID;
    self->_previousBannerID = v12;
  }

  [v6 updateLocation:v7];
  v14 = [v6 alternateRoute];

  v15 = v14 == 0;
  v16 = GEOFindOrCreateLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v21 = [v6 bannerID];
      *buf = 138412290;
      v46 = v21;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Activating alert: %@", buf, 0xCu);
    }
  }

  else if (v17)
  {
    v18 = [v6 bannerID];
    v19 = [v6 alternateRoute];
    v20 = [v19 uniqueRouteID];
    *buf = 138412546;
    v46 = v18;
    v47 = 2112;
    v48 = v20;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Activating alert: %@ | Alternate route: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v22 = [v6 alertType];
  if (v22 <= 7)
  {
    if (((1 << v22) & 0x64) != 0)
    {
      [(NSMutableSet *)self->_pendingAlerts removeObject:v6];
      [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:v6];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_4;
      v36[3] = &unk_1E842B7D0;
      v23 = &v38;
      objc_copyWeak(&v38, buf);
      v37 = v6;
      [WeakRetained trafficIncidentAlertUpdater:self receivedAlert:v37 responseCallback:v36];

      v27 = &v37;
      goto LABEL_21;
    }

    if (((1 << v22) & 0x18) != 0)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_3;
      aBlock[3] = &unk_1E842B7D0;
      v23 = &v41;
      objc_copyWeak(&v41, buf);
      v24 = v6;
      v40 = v24;
      v25 = _Block_copy(aBlock);
      [(NSMutableSet *)self->_pendingAlerts removeObject:v24];
      [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:v24];
      self->_trafficIncidentStatus = 1;
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 trafficIncidentAlertUpdater:self receivedAlert:self->_activeAlert responseCallback:v25];

      v27 = &v40;
LABEL_21:

      objc_destroyWeak(v23);
      goto LABEL_22;
    }

    if (v22 == 7)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_5;
      v33[3] = &unk_1E8430100;
      v23 = &v35;
      objc_copyWeak(&v35, buf);
      v27 = &v34;
      v34 = v6;
      v29 = MEMORY[0x1E69E96A0];
      v30 = v33;
LABEL_20:
      dispatch_async(v29, v30);
      goto LABEL_21;
    }
  }

  if (v22 == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke;
    block[3] = &unk_1E8430100;
    v23 = &v44;
    objc_copyWeak(&v44, buf);
    v27 = &v43;
    v43 = v6;
    v29 = MEMORY[0x1E69E96A0];
    v30 = block;
    goto LABEL_20;
  }

LABEL_22:
  if (self->_activeAlert)
  {
    v31 = objc_loadWeakRetained(&self->_delegate);
    [v31 trafficIncidentAlertUpdater:self updatedAlert:self->_activeAlert];
  }

  objc_destroyWeak(buf);
LABEL_25:

  v32 = *MEMORY[0x1E69E9840];
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:*(a1 + 32)];
    [v3 setActiveAlert:*(a1 + 32)];
    v4 = objc_loadWeakRetained(v3 + 1);
    v5 = *(a1 + 32);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_2;
    v11 = &unk_1E842B7A8;
    v12 = v3;
    v13 = v5;
    [v4 trafficIncidentAlertUpdater:v3 receivedAlert:v13 responseCallback:&v8];

    v6 = [*(a1 + 32) alternateRoute];
    if (v6)
    {
      v7 = objc_loadWeakRetained(v3 + 1);
      [v7 trafficIncidentAlertUpdater:v3 didSwitchToNewRoute:v6 forAlert:*(a1 + 32)];
    }
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = WeakRetained;
    v5 = [WeakRetained activeAlert];

    WeakRetained = v21;
    if (v5)
    {
      v6 = [v21 activeAlert];
      v7 = [v6 defaultToNewRoute];

      if (v7)
      {
        if (a2)
        {
          *(v21 + 14) = 4;
          v8 = [v21 activeAlert];
          v9 = [v8 alternateRoute];

          if (v9)
          {
            v10 = objc_loadWeakRetained(v21 + 1);
            [v10 trafficIncidentAlertUpdater:v21 didSwitchToNewRoute:v9 forAlert:*(a1 + 32)];
          }

          v11 = v21;
        }

        else
        {
          v11 = v21;
          *(v21 + 14) = 3;
        }

        [v11 setActiveAlert:0];
        v13 = objc_loadWeakRetained(v21 + 1);
        v14 = v13;
        v15 = *(a1 + 32);
        v16 = v21;
        v17 = a2;
      }

      else
      {
        if (a2)
        {
          v12 = v21;
          *(v21 + 14) = 4;
        }

        else
        {
          *(v21 + 14) = 3;
          v18 = [v21 activeAlert];
          v19 = [v18 alternateRoute];

          if (v19)
          {
            v20 = objc_loadWeakRetained(v21 + 1);
            [v20 trafficIncidentAlertUpdater:v21 didSwitchToNewRoute:v19 forAlert:*(a1 + 32)];
          }

          v12 = v21;
        }

        [v12 setActiveAlert:0];
        v13 = objc_loadWeakRetained(v21 + 1);
        v14 = v13;
        v15 = *(a1 + 32);
        v17 = a2 ^ 1;
        v16 = v21;
      }

      [v13 trafficIncidentAlertUpdater:v16 didDismissAlert:v15 withReroute:v17];

      WeakRetained = v21;
    }
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained setActiveAlert:0];
    v5 = objc_loadWeakRetained(v6 + 1);
    [v5 trafficIncidentAlertUpdater:v6 didDismissAlert:*(a1 + 32) withReroute:a2];

    WeakRetained = v6;
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:*(a1 + 32)];
    v2 = [*(a1 + 32) alternateRoute];
    if (v2)
    {
      v3 = objc_loadWeakRetained(WeakRetained + 1);
      [v3 trafficIncidentAlertUpdater:WeakRetained didSwitchToNewRoute:v2 forAlert:*(a1 + 32)];
    }

    [WeakRetained setActiveAlert:0];
  }
}

void __60__MNTrafficIncidentAlertUpdater__activateAlert_forLocation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setActiveAlert:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained trafficIncidentAlertUpdater:*(a1 + 32) didDismissAlert:*(a1 + 40) withReroute:a2];
}

- (void)_updateForLocationUsingDistancePoints:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pendingAlerts = self->_pendingAlerts;
  if (pendingAlerts && [(NSMutableSet *)pendingAlerts count])
  {
    v6 = [(NSMutableSet *)self->_pendingAlerts anyObject];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 routeMatch];
  [v7 routeCoordinate];

  if (v6)
  {
    if (!self->_activeAlert)
    {
      [v6 startValidCoordinateRange];
      [v6 endValidCoordinateRange];
      if (GEOPolylineCoordinateWithinRange())
      {
        [(MNTrafficIncidentAlertUpdater *)self _activateAlert:v6 forLocation:v4];
      }
    }
  }

  if (self->_activeAlert)
  {
    v8 = [v4 routeMatch];
    v9 = [v8 route];

    v10 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];

    activeAlert = self->_activeAlert;
    if (v9 == v10)
    {
      [(MNTrafficIncidentAlert *)activeAlert alternateEndValidCoordinateRange];
    }

    else
    {
      v12 = [(MNTrafficIncidentAlert *)activeAlert originalRoute];

      if (v9 != v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected route from route match."];
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v20 = 136316162;
          v21 = "[MNTrafficIncidentAlertUpdater _updateForLocationUsingDistancePoints:]";
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTrafficIncidentAlertUpdater.m";
          v24 = 1024;
          v25 = 560;
          v26 = 2080;
          v27 = "NO";
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v20, 0x30u);
        }

        [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
LABEL_25:

        goto LABEL_26;
      }

      [(MNTrafficIncidentAlert *)self->_activeAlert endValidCoordinateRange];
    }

    if (GEOPolylineCoordinateCompare() == 1)
    {
      if ([(MNTrafficIncidentAlert *)self->_activeAlert isReroute])
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      self->_trafficIncidentStatus = v15;
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = GEOPolylineCoordinateAsShortString();
        v18 = GEOPolylineCoordinateAsShortString();
        v20 = 138412546;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Removing traffic incident alert because the route coordinate %@ is past the valid end coordinate %@", &v20, 0x16u);
      }

      [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
    }

    [(MNTrafficIncidentAlertUpdater *)self _updateAlertDistanceAndETAForLocation:v4];
    goto LABEL_25;
  }

LABEL_26:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateForAlertsFromResponseUsingDistancePoints:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (v4 && [v4 count])
  {
    v5 = [v20 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  if ([(NSMutableSet *)self->_pendingAlerts count])
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_activeAlert != 0;
  }

  v7 = [v5 bannerID];
  if ([v7 length] && -[NSString length](self->_previousBannerID, "length"))
  {
    v8 = [v5 bannerID];
    v9 = [v8 isEqualToString:self->_previousBannerID];
  }

  else
  {
    v9 = 0;
  }

  if (v5 == 0 && !v6 || (v9 & 1) != 0)
  {
    goto LABEL_24;
  }

  previousBannerID = self->_previousBannerID;
  self->_previousBannerID = 0;

  v11 = [v5 previousBannerChange];
  if (v11 == 3)
  {

LABEL_23:
    [(NSMutableSet *)self->_pendingAlerts removeAllObjects];
    v5 = 0;
    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  v12 = v11;
  if (![(NSMutableSet *)self->_pendingAlerts count]&& !self->_activeAlert)
  {
    goto LABEL_22;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v15 = [MEMORY[0x1E695DFA8] setWithObject:v5];
      pendingAlerts = self->_pendingAlerts;
      self->_pendingAlerts = v15;

      [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
      goto LABEL_28;
    }

    if (v12)
    {
      goto LABEL_24;
    }

LABEL_22:
    v13 = [MEMORY[0x1E695DFA8] setWithObject:v5];
    v14 = self->_pendingAlerts;
    self->_pendingAlerts = v13;

LABEL_28:
    self->_trafficIncidentStatus = 0;
    goto LABEL_34;
  }

  if (self->_pendingAlerts)
  {
    v17 = [MEMORY[0x1E695DFA8] setWithObject:v5];
    activeAlert = self->_pendingAlerts;
    self->_pendingAlerts = v17;
  }

  else
  {
    if (!self->_activeAlert)
    {
      goto LABEL_34;
    }

    [v5 updateAlertIDWithAlert:?];
    v19 = v5;
    activeAlert = self->_activeAlert;
    self->_activeAlert = v19;
  }

LABEL_34:
  if (self->_lastLocation)
  {
    [(MNTrafficIncidentAlertUpdater *)self _updateForLocationUsingDistancePoints:?];
  }

LABEL_24:
}

- (id)_nextAlert
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = [(MNLocation *)self->_lastLocation routeMatch];
  v4 = [v3 routeCoordinate];

  pendingAlerts = self->_pendingAlerts;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke;
  v77[3] = &unk_1E842B738;
  v77[4] = self;
  v77[5] = v4;
  v6 = [(NSMutableSet *)pendingAlerts _geo_filtered:v77];
  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_6738];
  v9 = [v8 firstObject];

  if ([(NSMutableSet *)self->_pendingAlerts count]< 2)
  {
    goto LABEL_33;
  }

  v61 = v6;
  v10 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke_3;
  aBlock[3] = &unk_1E842B780;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v12 = v11[2](v11, v9);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v63 = self;
  v13 = self->_pendingAlerts;
  v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v73;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v72 + 1) + 8 * i);
        if (v18 != v9)
        {
          v11[2](v11, *(*(&v72 + 1) + 8 * i));
          if (GEOPolylineCoordinateRangeIntersectsRange())
          {
            [v10 addObject:v18];
          }
        }
      }

      v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v15);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v10;
  v67 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (!v67)
  {
    goto LABEL_32;
  }

  v66 = *v69;
  while (2)
  {
    for (j = 0; j != v67; ++j)
    {
      if (*v69 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v68 + 1) + 8 * j);
      v21 = [v20 priority];
      if (v21 > [v9 priority])
      {
        v22 = v11[2](v11, v20);
        v62 = v23;
        [v9 minDisplayTime];
        v25 = v24;
        [v9 overlapDelayTime];
        v27 = v26 + v25;
        v28 = [(MNLocation *)v63->_lastLocation routeMatch];
        v29 = [v28 route];
        v30 = [v20 mainRouteInfo];
        [v30 etaRoute];
        v31 = v65 = v20;
        [v29 coordinateAtTimeInterval:v12 afterCoordinate:v31 etaRoute:v27];

        if (GEOPolylineCoordinateIsABeforeB())
        {
          v32 = [v9 triggerRange];
          v33 = [v32 showTriggerPoint];
          v34 = [v33 allowsShifting];

          v35 = [v9 triggerRange];
          v36 = [v35 hideTriggerPoint];
          v37 = v36;
          if (v34)
          {
            if (v36)
            {
              v38 = [v9 triggerRange];
              v39 = [v38 hideTriggerPoint];
              v40 = [v39 allowsShifting];

              if (v40)
              {
                v49 = [v9 triggerRange];
                v50 = [v49 showTriggerPoint];
                [v50 setReferenceCoordinate:v62];

                v51 = [(MNLocation *)v63->_lastLocation routeMatch];
                v52 = [v51 route];
                v53 = [v65 mainRouteInfo];
                v54 = [v53 etaRoute];
                v55 = v52;
                v56 = v27;
                v57 = v62;
LABEL_34:
                v58 = [v55 coordinateAtTimeInterval:v57 afterCoordinate:v54 etaRoute:v56];

                v6 = v61;
                if (!GEOPolylineCoordinateIsABeforeB())
                {
LABEL_37:

                  v46 = 0;
                  goto LABEL_38;
                }

                v47 = [v9 triggerRange];
                v48 = [v47 hideTriggerPoint];
                [v48 setReferenceCoordinate:v58];
LABEL_36:

                goto LABEL_37;
              }
            }

            else
            {
            }

            v44 = [v9 triggerRange];
            v45 = [v44 hideTriggerPoint];

            if (!v45)
            {
              v47 = [v9 triggerRange];
              v48 = [v47 showTriggerPoint];
              [v48 setReferenceCoordinate:v22];
              v6 = v61;
              goto LABEL_36;
            }
          }

          else if (v36)
          {
            v41 = [v9 triggerRange];
            v42 = [v41 hideTriggerPoint];
            v43 = [v42 allowsShifting];

            if (v43)
            {
              v51 = [(MNLocation *)v63->_lastLocation routeMatch];
              v52 = [v51 route];
              v53 = [v65 mainRouteInfo];
              v54 = [v53 etaRoute];
              v55 = v52;
              v56 = v27;
              v57 = v62;
              goto LABEL_34;
            }
          }

          else
          {
          }
        }
      }
    }

    v67 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v6 = v61;
LABEL_33:
  v46 = v9;
LABEL_38:

  v59 = *MEMORY[0x1E69E9840];

  return v46;
}

uint64_t __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) routeMatch];
  v5 = [v4 route];

  v6 = [v3 triggerRange];
  v7 = [v6 showTriggerPoint];

  [v7 referenceCoordinate];
  v8 = *(a1 + 40);
  if (GEOPolylineCoordinateIsABeforeOrEqualToB())
  {
    v9 = 1;
  }

  else
  {
    [v5 distanceFromPoint:*(a1 + 40) toPoint:{objc_msgSend(v7, "referenceCoordinate")}];
    v9 = v10 < 50.0;
  }

  v11 = [v3 triggerRange];
  v12 = [v11 hideTriggerPoint];

  if (v12)
  {
    [v3 minDisplayTime];
    v14 = v13;
    v15 = [*(*(a1 + 32) + 16) routeMatch];
    v16 = [v15 routeCoordinate];
    v17 = [v3 mainRouteInfo];
    v18 = [v17 etaRoute];
    [v5 coordinateAtTimeInterval:v16 afterCoordinate:v18 etaRoute:v14];

    [v12 referenceCoordinate];
    v9 = v9 & GEOPolylineCoordinateIsABeforeOrEqualToB();
  }

  return v9;
}

unint64_t __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 triggerRange];
  v5 = [v4 showTriggerPoint];
  v6 = [v5 referenceCoordinate];

  v7 = [v4 hideTriggerPoint];

  if (v7)
  {
    v8 = [v4 hideTriggerPoint];
    [v8 referenceCoordinate];
  }

  else
  {
    v8 = [*(*(a1 + 32) + 16) routeMatch];
    v9 = [v8 route];
    [v4 displayTime];
    v11 = v10;
    v12 = [v3 mainRouteInfo];
    v13 = [v12 etaRoute];
    [v9 coordinateAtTimeInterval:v6 afterCoordinate:v13 etaRoute:v11];
  }

  IsInvalid = GEOPolylineCoordinateIsInvalid();
  v15 = MEMORY[0x1E69A1918];
  if (IsInvalid)
  {
    v16 = *MEMORY[0x1E69A1918];
    v17 = *(MEMORY[0x1E69A1918] + 4);
  }

  else
  {
    v17 = *(&v6 + 1) - floorf(*(&v6 + 1));
    v16 = vcvtms_u32_f32(*(&v6 + 1)) + v6;
  }

  if (GEOPolylineCoordinateIsInvalid())
  {
    v18 = *v15;
    v19 = v15[1];
  }

  return v16 | (LODWORD(v17) << 32);
}

uint64_t __43__MNTrafficIncidentAlertUpdater__nextAlert__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 > [v5 priority])
  {
    goto LABEL_2;
  }

  v8 = [v4 priority];
  if (v8 < [v5 priority])
  {
LABEL_4:
    v7 = 1;
    goto LABEL_21;
  }

  v9 = [v4 triggerRange];
  v10 = [v9 hideTriggerPoint];
  if (v10)
  {
    v11 = v10;
    v12 = [v5 triggerRange];
    v13 = [v12 hideTriggerPoint];

    if (v13)
    {
      v14 = [v4 triggerRange];
      v15 = [v14 hideTriggerPoint];
      [v15 referenceCoordinate];

      v16 = [v5 triggerRange];
      v17 = [v16 hideTriggerPoint];
      [v17 referenceCoordinate];

      if (GEOPolylineCoordinateIsABeforeOrEqualToB())
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v18 = [v4 triggerRange];
  v19 = [v18 hideTriggerPoint];
  if (v19)
  {
    v20 = v19;
    v21 = [v5 triggerRange];
    v22 = [v21 hideTriggerPoint];

    if (!v22)
    {
LABEL_2:
      v7 = -1;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v23 = [v4 triggerRange];
  v24 = [v23 hideTriggerPoint];
  if (v24)
  {
  }

  else
  {
    v31 = [v5 triggerRange];
    v32 = [v31 hideTriggerPoint];

    if (v32)
    {
      goto LABEL_4;
    }
  }

  v25 = [v4 triggerRange];
  [v25 displayTime];
  v27 = v26;
  v28 = [v4 triggerRange];
  [v28 displayTime];
  if (v27 > v29)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

LABEL_21:
  return v7;
}

- (void)clearAlerts
{
  [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
  pendingAlerts = self->_pendingAlerts;

  [(NSMutableSet *)pendingAlerts removeAllObjects];
}

- (void)updateForAlertsFromResponse:(id)a3 updatedLocation:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v6;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNTrafficIncidentAlertUpdater received alerts: %@", buf, 0xCu);
    }
  }

  if (self->_dodgeballEnabled)
  {
    if (self->_useTriggerPointRangeBannerQueuing)
    {
      v38 = v7;
      v9 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v10 = self->_pendingAlerts;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v45;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v45 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v44 + 1) + 8 * i);
            if ([v15 persistAcrossUpdates])
            {
              v16 = [v15 bannerID];
              [v9 setObject:v15 forKeyedSubscript:v16];
            }
          }

          v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v12);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v6;
      v17 = v6;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v40 + 1) + 8 * j);
            activeAlert = self->_activeAlert;
            if (activeAlert)
            {
              v24 = [(MNTrafficIncidentAlert *)activeAlert bannerID];
              v25 = [v22 bannerID];
              v26 = [v24 isEqualToString:v25];

              if (v26)
              {
                continue;
              }
            }

            displayedBannerIds = self->_displayedBannerIds;
            v28 = [v22 bannerID];
            LODWORD(displayedBannerIds) = [(NSMutableSet *)displayedBannerIds containsObject:v28];

            if (displayedBannerIds)
            {
              v29 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = [v22 bannerID];
                *buf = 138412290;
                v51 = v30;
                _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_ERROR, "Banner with ID %@ was already displayed. Ignoring.", buf, 0xCu);
              }
            }

            else
            {
              v29 = [v22 bannerID];
              [v9 setObject:v22 forKeyedSubscript:v29];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v19);
      }

      v31 = MEMORY[0x1E695DFA8];
      v32 = [v9 allValues];
      v33 = [v31 setWithArray:v32];
      pendingAlerts = self->_pendingAlerts;
      self->_pendingAlerts = v33;

      v7 = v38;
      lastLocation = v38;
      if (!v38)
      {
        lastLocation = self->_lastLocation;
      }

      [(MNTrafficIncidentAlertUpdater *)self updateForLocation:lastLocation, v38];

      v6 = v39;
    }

    else
    {
      [(MNTrafficIncidentAlertUpdater *)self _updateForAlertsFromResponseUsingDistancePoints:v6];
    }
  }

  else
  {
    v36 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v6;
      _os_log_impl(&dword_1D311E000, v36, OS_LOG_TYPE_DEFAULT, "Dodgeball alert was found in response but EnableDodgeball is off. Ignoring %@", buf, 0xCu);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)updateIncidentResultForRerouteRequest:(id)a3
{
  displayedBannerIds = self->_displayedBannerIds;
  v4 = a3;
  v6 = [(NSMutableSet *)displayedBannerIds allObjects];
  v5 = [v6 copy];
  [v4 setDisplayedBannerIds:v5];
}

- (void)updateIncidentResultForETARequest:(id)a3
{
  [a3 setRerouteStatus:self->_trafficIncidentStatus];
  if ((self->_trafficIncidentStatus - 2) <= 2)
  {
    self->_trafficIncidentStatus = 0;
  }
}

- (void)updateForReroute:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableSet *)self->_pendingAlerts removeAllObjects];
  activeAlert = self->_activeAlert;
  if (!activeAlert)
  {
    self->_trafficIncidentStatus = 0;
  }

  v6 = [(MNTrafficIncidentAlert *)activeAlert alternateRoute];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v4 uniqueRouteID];
  v8 = [(MNTrafficIncidentAlert *)self->_activeAlert alternateRoute];
  v9 = [v8 uniqueRouteID];
  v10 = [v7 isEqual:v9];

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 uniqueRouteID];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Clearing traffic incident alerts because of a reroute to route %@.", &v14, 0xCu);
    }

    [(MNTrafficIncidentAlertUpdater *)self clearAlerts];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateForLocation:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 state] == 1)
  {
    objc_storeStrong(&self->_lastLocation, a3);
    if (self->_useTriggerPointRangeBannerQueuing)
    {
      v6 = [(MNTrafficIncidentAlertUpdater *)self _nextAlert];
      v7 = v6;
      if (!v6)
      {
LABEL_31:
        [(MNTrafficIncidentAlertUpdater *)self _updateActiveAlertForLocation:v5];

        goto LABEL_32;
      }

      v8 = [v6 previousBannerChange];
      v9 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];

      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      v11 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
      v12 = [v11 priority];
      v13 = [v7 priority];

      [(NSDate *)self->_activeAlertDisplayedTime timeIntervalSinceNow];
      v15 = v14;
      v16 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
      [v16 minDisplayTime];
      v18 = v17;

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v36 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];

          if (v36)
          {
            v37 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
            [v7 updateAlertIDWithAlert:v37];

            [(MNTrafficIncidentAlertUpdater *)self setActiveAlert:v7];
          }
        }

        else if (v10 == 3)
        {
          [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
        }

        goto LABEL_31;
      }

      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_31;
        }

        if (v12 >= v13)
        {
          goto LABEL_31;
        }

        v19 = [v7 triggerRange];
        v20 = [v19 showTriggerPoint];

        LOBYTE(v19) = [v20 shouldActivateForLocation:v5];
        if ((v19 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v21 = [(MNTrafficIncidentAlertUpdater *)self activeAlert];
        if (v21)
        {

          if (v12 >= v13 || v18 >= -v15)
          {
            goto LABEL_31;
          }
        }

        v22 = [v7 triggerRange];
        v23 = [v22 showTriggerPoint];

        LODWORD(v22) = [v23 shouldActivateForLocation:v5];
        if (!v22)
        {
          goto LABEL_31;
        }
      }

      v24 = [v7 incident];

      if (v24)
      {
        v25 = [(MNLocation *)self->_lastLocation routeMatch];
        v26 = [v25 route];
        v27 = [v7 triggerRange];
        v28 = [v27 showTriggerPoint];
        v29 = [v28 referenceCoordinate];

        [v26 distanceBetweenRouteCoordinate:v29 andRouteCoordinate:{objc_msgSend(v25, "routeCoordinate")}];
        v31 = v30;
        [v26 distanceBetweenRouteCoordinate:v29 andRouteCoordinate:{objc_msgSend(v7, "incidentCoordinate")}];
        v33 = v32;
        if (v32 <= 2.22044605e-16)
        {
        }

        else
        {
          GEOConfigGetDouble();
          v35 = v34;

          if (v31 / v33 <= v35)
          {
            goto LABEL_24;
          }
        }

        v38 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 134218240;
          v41 = v31;
          v42 = 2048;
          v43 = v33;
          _os_log_impl(&dword_1D311E000, v38, OS_LOG_TYPE_DEFAULT, "Dropping dodgeball since user is too close to the incident. distanceFromAlertStartToCurrentLocation: %0.1fm | distanceFromAlertStartToIncident: %0.1fm", &v40, 0x16u);
        }

        [(NSMutableSet *)self->_pendingAlerts removeObject:v7];
        goto LABEL_31;
      }

LABEL_24:
      self->_trafficIncidentStatus = 0;
      [(MNTrafficIncidentAlertUpdater *)self _removeActiveAlert];
      [(MNTrafficIncidentAlertUpdater *)self _activateAlert:v7 forLocation:v5];
      goto LABEL_31;
    }

    [(MNTrafficIncidentAlertUpdater *)self _updateForLocationUsingDistancePoints:v5];
  }

LABEL_32:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)setActiveAlert:(id)a3
{
  v5 = a3;
  if (self->_activeAlert != v5)
  {
    v10 = v5;
    v6 = [MEMORY[0x1E695DF00] now];
    if (!v10)
    {
      [(MNTrafficIncidentAlert *)self->_activeAlert overlapDelayTime];
      v7 = [(NSDate *)v6 dateByAddingTimeInterval:?];
      nextAlertDisplayTime = self->_nextAlertDisplayTime;
      self->_nextAlertDisplayTime = v7;

      v6 = 0;
    }

    activeAlertDisplayedTime = self->_activeAlertDisplayedTime;
    self->_activeAlertDisplayedTime = v6;

    objc_storeStrong(&self->_activeAlert, a3);
    v5 = v10;
  }
}

- (void)setUseTriggerPointRangeBannerQueuing:(BOOL)a3
{
  if (self->_useTriggerPointRangeBannerQueuing != a3)
  {
    self->_useTriggerPointRangeBannerQueuing = a3;
    [(MNTrafficIncidentAlertUpdater *)self clearAlerts];
  }
}

- (void)dealloc
{
  [(MNTrafficIncidentAlertUpdater *)self clearAlerts];
  dodgeballEnabledListener = self->_dodgeballEnabledListener;
  GEOConfigRemoveBlockListener();
  v4.receiver = self;
  v4.super_class = MNTrafficIncidentAlertUpdater;
  [(MNTrafficIncidentAlertUpdater *)&v4 dealloc];
}

- (MNTrafficIncidentAlertUpdater)init
{
  v16.receiver = self;
  v16.super_class = MNTrafficIncidentAlertUpdater;
  v2 = [(MNTrafficIncidentAlertUpdater *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingAlerts = v2->_pendingAlerts;
    v2->_pendingAlerts = v3;

    v5 = [MEMORY[0x1E695DF00] now];
    nextAlertDisplayTime = v2->_nextAlertDisplayTime;
    v2->_nextAlertDisplayTime = v5;

    v7 = objc_opt_new();
    displayedBannerIds = v2->_displayedBannerIds;
    v2->_displayedBannerIds = v7;

    objc_initWeak(&location, v2);
    v2->_dodgeballEnabled = GEOConfigGetBOOL();
    global_queue = geo_get_global_queue();
    objc_copyWeak(&v14, &location);
    v10 = _GEOConfigAddBlockListenerForKey();
    dodgeballEnabledListener = v2->_dodgeballEnabledListener;
    v2->_dodgeballEnabledListener = v10;

    v12 = v2;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __37__MNTrafficIncidentAlertUpdater_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained[80] = GEOConfigGetBOOL();
    WeakRetained = v2;
  }
}

@end