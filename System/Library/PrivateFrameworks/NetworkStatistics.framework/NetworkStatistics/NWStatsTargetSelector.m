@interface NWStatsTargetSelector
- (BOOL)_applySelection:(id)a3;
- (BOOL)shouldAddProvider:(int)a3;
- (NWStatsTargetSelector)initWithMultipleSelections:(id)a3;
- (NWStatsTargetSelector)initWithSelection:(id)a3;
- (id)description;
@end

@implementation NWStatsTargetSelector

- (BOOL)_applySelection:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_suppliedParams, a3);
  v6 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];
      self->_events |= [v9 unsignedLongLongValue];
    }

    else
    {
      v9 = NStatGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];
        v92 = 138412290;
        v93 = v10;
        _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_ERROR, "Incorrect class for configuration item %@", &v92, 0xCu);
      }
    }
  }

  v11 = [v5 objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];

  if (v11)
  {
    v12 = [v5 objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      v14 = [v5 objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];
      self->_events |= [v14 unsignedLongLongValue];
    }

    else
    {
      v14 = NStatGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v5 objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];
        v92 = 138412290;
        v93 = v15;
        _os_log_impl(&dword_25BA3A000, v14, OS_LOG_TYPE_ERROR, "Incorrect class for configuration item %@", &v92, 0xCu);
      }
    }
  }

  v16 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellular"];
  if (v16)
  {
    v17 = v16;
    v18 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellular"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      self->_filter |= 4uLL;
    }
  }

  v20 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceWiFi"];
  if (v20)
  {
    v21 = v20;
    v22 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceWiFi"];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      self->_filter |= 8uLL;
    }
  }

  v24 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceWired"];
  if (v24)
  {
    v25 = v24;
    v26 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceWired"];
    v27 = [v26 BOOLValue];

    if (v27)
    {
      self->_filter |= 0x10uLL;
    }
  }

  v28 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLink"];
  if (v28)
  {
    v29 = v28;
    v30 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLink"];
    v31 = [v30 BOOLValue];

    if (v31)
    {
      self->_filter |= 0x200uLL;
    }
  }

  v32 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLinkBluetooth"];
  if (v32)
  {
    v33 = v32;
    v34 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLinkBluetooth"];
    v35 = [v34 BOOLValue];

    if (v35)
    {
      self->_filter |= 0x40000uLL;
    }
  }

  v36 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceLoopback"];
  if (v36)
  {
    v37 = v36;
    v38 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceLoopback"];
    v39 = [v38 BOOLValue];

    if (v39)
    {
      self->_filter |= 2uLL;
    }
  }

  v40 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceExpensive"];
  if (v40)
  {
    v41 = v40;
    v42 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceExpensive"];
    v43 = [v42 BOOLValue];

    if (v43)
    {
      self->_filter |= 0x40uLL;
    }
  }

  v44 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellularViaFallback"];
  if (v44)
  {
    v45 = v44;
    v46 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellularViaFallback"];
    v47 = [v46 BOOLValue];

    if (v47)
    {
      self->_filter |= 0x100uLL;
    }
  }

  v48 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceAWDL"];
  if (v48)
  {
    v49 = v48;
    v50 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceAWDL"];
    v51 = [v50 BOOLValue];

    if (v51)
    {
      self->_filter |= 0x20uLL;
    }
  }

  v52 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceUnknown"];
  if (v52)
  {
    v53 = v52;
    v54 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceUnknown"];
    v55 = [v54 BOOLValue];

    if (v55)
    {
      self->_filter |= 1uLL;
    }
  }

  v56 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceRouteValueError"];
  if (v56)
  {
    v57 = v56;
    v58 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceRouteValueError"];
    v59 = [v58 BOOLValue];

    if (v59)
    {
      self->_filter |= 0x2000uLL;
    }
  }

  v60 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceFlowswitchValueError"];
  if (v60)
  {
    v61 = v60;
    v62 = [v5 objectForKeyedSubscript:@"kNWStatsSelectInterfaceFlowswitchValueError"];
    v63 = [v62 BOOLValue];

    if (v63)
    {
      self->_filter |= 0x4000uLL;
    }
  }

  v64 = [v5 objectForKeyedSubscript:@"kNWStatsSelectAllFlowsAndSubFlows"];

  if (v64)
  {
    v65 = [v5 objectForKeyedSubscript:@"kNWStatsSelectAllFlowsAndSubFlows"];
    v66 = [v65 BOOLValue];
    self->_hasExplicitTCP = 1;
    self->_explicitTCPValue = v66;
    self->_hasExplicitUDP = 1;
    self->_explicitUDPValue = v66;
    self->_hasExplicitQUIC = 1;
    self->_explicitQUICValue = v66;
    self->_hasExplicitUDPSubFlows = 1;
    self->_explicitUDPSubFlowsValue = v66;
  }

  v67 = [v5 objectForKeyedSubscript:@"kNWStatsSelectAllFlows"];

  if (v67)
  {
    v68 = [v5 objectForKeyedSubscript:@"kNWStatsSelectAllFlows"];
    v69 = [v68 BOOLValue];
    self->_hasExplicitTCP = 1;
    self->_explicitTCPValue = v69;
    self->_hasExplicitUDP = 1;
    self->_explicitUDPValue = v69;
    self->_hasExplicitQUIC = 1;
    self->_explicitQUICValue = v69;
  }

  v70 = [v5 objectForKeyedSubscript:@"kNWStatsSelectTCP"];

  if (v70)
  {
    v71 = [v5 objectForKeyedSubscript:@"kNWStatsSelectTCP"];
    self->_hasExplicitTCP = 1;
    self->_explicitTCPValue = [v71 BOOLValue];
  }

  v72 = [v5 objectForKeyedSubscript:@"kNWStatsSelectUDP"];

  if (v72)
  {
    v73 = [v5 objectForKeyedSubscript:@"kNWStatsSelectUDP"];
    self->_hasExplicitUDP = 1;
    self->_explicitUDPValue = [v73 BOOLValue];
  }

  v74 = [v5 objectForKeyedSubscript:@"kNWStatsSelectUDPSubFlows"];

  if (v74)
  {
    v75 = [v5 objectForKeyedSubscript:@"kNWStatsSelectUDPSubFlows"];
    self->_hasExplicitUDPSubFlows = 1;
    self->_explicitUDPSubFlowsValue = [v75 BOOLValue];
  }

  v76 = [v5 objectForKeyedSubscript:@"kNWStatsSelectQUIC"];

  if (v76)
  {
    v77 = [v5 objectForKeyedSubscript:@"kNWStatsSelectQUIC"];
    self->_hasExplicitQUIC = 1;
    self->_explicitQUICValue = [v77 BOOLValue];
  }

  v78 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowUsesChannels"];

  if (v78)
  {
    v79 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowUsesChannels"];
    self->_hasExplicitChannels = 1;
    self->_explicitChannelsValue = [v79 BOOLValue];
  }

  v80 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowUsesSockets"];

  if (v80)
  {
    v81 = [v5 objectForKeyedSubscript:@"kNWStatsSelectFlowUsesSockets"];
    self->_hasExplicitSockets = 1;
    self->_explicitSocketsValue = [v81 BOOLValue];
  }

  v82 = [v5 objectForKeyedSubscript:@"kNWStatsSelectUserlandConnections"];

  if (v82)
  {
    v83 = [v5 objectForKeyedSubscript:@"kNWStatsSelectUserlandConnections"];
    self->_hasExplicitUserlandConnections = 1;
    self->_explicitUserlandConnectionsValue = [v83 BOOLValue];
  }

  v84 = [v5 objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];

  if (v84)
  {
    v85 = [v5 objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];
    if ([v85 BOOLValue])
    {
      self->_connFilter |= 0x1000000uLL;
    }
  }

  v86 = [v5 objectForKeyedSubscript:@"kNWStatsSelectStartupConnHasNetAccess"];

  if (v86)
  {
    v87 = [v5 objectForKeyedSubscript:@"kNWStatsSelectStartupConnHasNetAccess"];
    if ([v87 BOOLValue])
    {
      self->_connFilter |= 0x1001000000uLL;
    }
  }

  v88 = [v5 objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];

  if (v88)
  {
    v89 = [v5 objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];
    if ([v89 BOOLValue])
    {
      self->_connFilter |= 0x20000000uLL;
    }
  }

  v90 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NWStatsTargetSelector)initWithSelection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NWStatsTargetSelector;
  v5 = [(NWStatsTargetSelector *)&v8 init];
  v6 = v5;
  if (v5 && ![(NWStatsTargetSelector *)v5 _applySelection:v4])
  {

    v6 = 0;
  }

  return v6;
}

- (NWStatsTargetSelector)initWithMultipleSelections:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NWStatsTargetSelector;
  v5 = [(NWStatsTargetSelector *)&v17 init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![(NWStatsTargetSelector *)v5 _applySelection:*(*(&v13 + 1) + 8 * i), v13])
          {

            v5 = 0;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)shouldAddProvider:(int)a3
{
  hasExplicitTCP = self->_hasExplicitTCP;
  if (hasExplicitTCP)
  {
    explicitTCPValue = self->_explicitTCPValue;
    if (!self->_hasExplicitUDP)
    {
LABEL_13:
      v6 = 0;
      explicitUDPValue = 0;
      goto LABEL_14;
    }

LABEL_6:
    explicitUDPValue = self->_explicitUDPValue;
    v6 = 1;
    goto LABEL_14;
  }

  if (self->_hasExplicitUDP)
  {
    explicitTCPValue = 0;
    goto LABEL_6;
  }

  explicitTCPValue = !self->_hasExplicitQUIC && !self->_hasExplicitUDPSubFlows && !self->_hasExplicitUserlandConnections;
  if (self->_hasExplicitQUIC || self->_hasExplicitUDPSubFlows)
  {
    goto LABEL_13;
  }

  v6 = 0;
  explicitUDPValue = !self->_hasExplicitUserlandConnections;
LABEL_14:
  hasExplicitUDPSubFlows = self->_hasExplicitUDPSubFlows;
  v8 = hasExplicitUDPSubFlows && self->_explicitUDPSubFlowsValue;
  if (self->_hasExplicitQUIC)
  {
    explicitQUICValue = self->_explicitQUICValue;
    goto LABEL_27;
  }

  if ((v6 | hasExplicitTCP))
  {
    goto LABEL_20;
  }

  if (self->_hasExplicitSockets)
  {
    explicitQUICValue = 0;
    if (hasExplicitUDPSubFlows || !self->_hasExplicitChannels)
    {
      goto LABEL_27;
    }
  }

  else if (hasExplicitUDPSubFlows)
  {
LABEL_20:
    explicitQUICValue = 0;
    goto LABEL_27;
  }

  explicitQUICValue = !self->_hasExplicitUserlandConnections;
LABEL_27:
  v10 = self->_hasExplicitUserlandConnections && self->_explicitUserlandConnectionsValue;
  hasExplicitChannels = self->_hasExplicitChannels;
  if (hasExplicitChannels)
  {
    explicitChannelsValue = self->_explicitChannelsValue;
    if (!self->_hasExplicitSockets)
    {
LABEL_32:
      explicitSocketsValue = !hasExplicitChannels;
      goto LABEL_35;
    }
  }

  else
  {
    explicitChannelsValue = !self->_hasExplicitSockets;
    if (explicitChannelsValue)
    {
      goto LABEL_32;
    }
  }

  explicitSocketsValue = self->_explicitSocketsValue;
LABEL_35:
  v14 = 0;
  if (a3 <= 4)
  {
    switch(a3)
    {
      case 2:
        v14 = explicitTCPValue && explicitSocketsValue;
        break;
      case 3:
        v14 = explicitTCPValue && explicitChannelsValue;
        break;
      case 4:
        v14 = explicitUDPValue && explicitSocketsValue;
        break;
    }
  }

  else if (a3 > 8)
  {
    if (a3 == 9)
    {
      return v10;
    }

    else if (a3 == 10)
    {
      return v8;
    }
  }

  else if (a3 == 5)
  {
    return explicitUDPValue && explicitChannelsValue;
  }

  else if (a3 == 8)
  {
    return explicitQUICValue;
  }

  return v14;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsTargetSelector at %p, filter 0x%llx connFilter 0x%llx events 0x%llx cfg UDP %d val %d cfg TCP %d val %d cfg QUIC %d val %d cfg subflows %d val %d cfg conns %d val %d cfg channels %d val %d cfg sockets %d val %d params %@", self, self->_filter, self->_connFilter, self->_events, self->_hasExplicitUDP, self->_explicitUDPValue, self->_hasExplicitTCP, self->_explicitTCPValue, self->_hasExplicitQUIC, self->_explicitQUICValue, self->_hasExplicitUDPSubFlows, self->_explicitUDPSubFlowsValue, self->_hasExplicitUserlandConnections, self->_explicitUserlandConnectionsValue, self->_hasExplicitChannels, self->_explicitChannelsValue, self->_hasExplicitSockets, self->_explicitSocketsValue, self->_suppliedParams];

  return v2;
}

@end