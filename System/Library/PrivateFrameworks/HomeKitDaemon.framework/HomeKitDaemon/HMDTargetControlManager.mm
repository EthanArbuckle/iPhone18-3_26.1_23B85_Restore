@interface HMDTargetControlManager
+ (id)logCategory;
- (HMDAccessory)targetAccessory;
- (HMDTargetControlManager)init;
- (HMDTargetControlManager)initWithTargetAccessory:(id)accessory controllers:(id)controllers;
- (NSMutableArray)activeControlServices;
- (NSMutableArray)configuredControllers;
- (NSMutableArray)eventReceivers;
- (id)__getOrCreateEventReceiver:(id)receiver;
- (id)__selectButtonConfiguration:(id)configuration receiver:(id)receiver;
- (id)logIdentifier;
- (void)__accessoryAdded:(id)added;
- (void)__accessoryConnected:(id)connected;
- (void)__accessoryDisconnected:(id)disconnected;
- (void)__accessoryNameUpdated:(id)updated;
- (void)__accessoryRemoved:(id)removed;
- (void)__activeSelectionChanged:(id)changed;
- (void)__activeSelectionReset:(id)reset;
- (void)__characteristicsEventsReceived:(id)received;
- (void)__controllerRefreshedConfiguration:(id)configuration;
- (void)__serviceRemoved:(id)removed;
- (void)__targetAccessoryConfiguredForControl:(id)control;
- (void)__targetAccessoryUnconfiguredForControl:(id)control;
- (void)_addController:(id)controller;
- (void)_handleButtonEvent:(id)event fromControlService:(id)service;
- (void)_handleControllerDisconnected:(id)disconnected;
- (void)_handleTargetControlServiceDeselection:(id)deselection;
- (void)_handleTargetControlServiceSelection:(id)selection;
- (void)_removeController:(id)controller;
- (void)_targetAccessoryConfiguredWithController:(id)controller;
- (void)_targetAccessoryRefreshConfigurationWithController:(id)controller userInfo:(id)info;
- (void)_targetAccessoryUnconfiguredWithController:(id)controller;
- (void)addControlService:(id)service;
- (void)addReceiver:(id)receiver;
- (void)addTargetControllers:(id)controllers;
- (void)invalidate;
- (void)removeControlService:(id)service;
- (void)removeReceiver:(id)receiver;
@end

@implementation HMDTargetControlManager

- (HMDAccessory)targetAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_targetAccessory);

  return WeakRetained;
}

- (void)__activeSelectionReset:(id)reset
{
  v37 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  object = [resetCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  accessory = [v7 accessory];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    name = [accessory name];
    name2 = [v7 name];
    *buf = 138543874;
    v32 = v12;
    v33 = 2112;
    v34 = name;
    v35 = 2112;
    v36 = name2;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that controller %@ service %@ reset its active selection", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  configuredControllers = [(HMDTargetControlManager *)selfCopy configuredControllers];
  if ([configuredControllers containsObject:accessory])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      name3 = [accessory name];
      name4 = [v7 name];
      *buf = 138543874;
      v32 = v19;
      v33 = 2112;
      v34 = name3;
      v35 = 2112;
      v36 = name4;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Received notification that a configured controller %@ service %@ has reset its active selection", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    activeControlServices = [(HMDTargetControlManager *)v17 activeControlServices];
    if ([activeControlServices containsObject:v7])
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v17;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        name5 = [accessory name];
        [v7 name];
        v28 = v30 = v23;
        *buf = 138543874;
        v32 = v26;
        v33 = 2112;
        v34 = name5;
        v35 = 2112;
        v36 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Received notification that a configured controller %@ service %@ has deselected this target accessory", buf, 0x20u);

        v23 = v30;
      }

      objc_autoreleasePoolPop(v23);
      [(HMDTargetControlManager *)v24 _handleTargetControlServiceDeselection:v7];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)__activeSelectionChanged:(id)changed
{
  v72 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  accessory = [v7 accessory];
  configuredControllers = [(HMDTargetControlManager *)self configuredControllers];
  userInfo = [changedCopy userInfo];
  v11 = [userInfo hmf_numberForKey:@"activeIdentifier"];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v61 = changedCopy;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v15 = v57 = configuredControllers;
    [accessory name];
    v17 = v16 = v11;
    name = [v7 name];
    configuredControllers2 = [(HMDTargetControlManager *)selfCopy configuredControllers];
    *buf = 138544386;
    v63 = v15;
    v64 = 2112;
    v65 = v17;
    v66 = 2112;
    v67 = name;
    v68 = 2112;
    v69 = configuredControllers2;
    v70 = 2112;
    v71 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received notification that controller %@ service %@ changed active selection - configuredControllers %@  identifier %@", buf, 0x34u);

    v11 = v16;
    configuredControllers = v57;
    changedCopy = v61;
  }

  objc_autoreleasePoolPop(v12);
  if ([configuredControllers containsObject:accessory] && v11)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      name2 = [accessory name];
      name3 = [v7 name];
      *buf = 138544130;
      v63 = v23;
      v64 = 2112;
      v65 = name2;
      v66 = 2112;
      v67 = name3;
      v68 = 2112;
      v69 = v11;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Received notification that a configured controller %@ service %@ changed active selection to %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    targetAccessory = [(HMDTargetControlManager *)v21 targetAccessory];
    home = [targetAccessory home];
    v56 = v11;
    if (home)
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      uuid = [targetAccessory uuid];
      uuid2 = [home uuid];
      v31 = identifierForTargetWithUUID(uuid, uuid2);

      activeControlServices = [(HMDTargetControlManager *)v21 activeControlServices];
      v33 = activeControlServices;
      if (v31 == unsignedIntegerValue)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v21;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v37 = v53 = v33;
          name4 = [accessory name];
          [v7 name];
          v39 = v58 = v34;
          *buf = 138543874;
          v63 = v37;
          v64 = 2112;
          v65 = name4;
          v66 = 2112;
          v67 = v39;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Received notification that a configured controller %@ service %@ has selected this target accessory", buf, 0x20u);

          v34 = v58;
          v33 = v53;
        }

        objc_autoreleasePoolPop(v34);
        [(HMDTargetControlManager *)v35 _handleTargetControlServiceSelection:v7];
      }

      else if ([activeControlServices containsObject:v7])
      {
        v47 = objc_autoreleasePoolPush();
        v48 = v21;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          name5 = [accessory name];
          [v7 name];
          v51 = v55 = v47;
          *buf = 138543874;
          v63 = v60;
          v64 = 2112;
          v65 = name5;
          v66 = 2112;
          v67 = v51;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Received notification that a configured controller %@ service %@ has deselected this target accessory", buf, 0x20u);

          v47 = v55;
        }

        objc_autoreleasePoolPop(v47);
        [(HMDTargetControlManager *)v48 _handleTargetControlServiceDeselection:v7];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v21;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        [targetAccessory name];
        v43 = v59 = v40;
        uuid3 = [targetAccessory uuid];
        uUIDString = [uuid3 UUIDString];
        *buf = 138543874;
        v63 = v54;
        v64 = 2112;
        v65 = v43;
        v66 = 2112;
        v67 = uUIDString;
        v46 = uUIDString;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Attempting to process active selection change for a target %@/%@ that is not configured with a home", buf, 0x20u);

        v40 = v59;
      }

      objc_autoreleasePoolPop(v40);
    }

    changedCopy = v61;
    v11 = v56;
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_handleTargetControlServiceDeselection:(id)deselection
{
  v23 = *MEMORY[0x277D85DE8];
  deselectionCopy = deselection;
  activeControlServices = [(HMDTargetControlManager *)self activeControlServices];
  type = [deselectionCopy type];
  if ([type isEqualToString:*MEMORY[0x277CD0F10]])
  {
  }

  else
  {
    v7 = [activeControlServices containsObject:deselectionCopy];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  accessory = [deselectionCopy accessory];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    name = [accessory name];
    instanceID = [deselectionCopy instanceID];
    v17 = 138543874;
    v18 = v12;
    v19 = 2112;
    v20 = name;
    v21 = 2112;
    v22 = instanceID;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that control service %@/%@  is not actively controlling this target accessory", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDTargetControlManager *)selfCopy removeControlService:deselectionCopy];
  v15 = [(HMDTargetControlManager *)selfCopy __getOrCreateEventReceiver:accessory];
  [v15 setSelected:0];
  [accessory acknowledgeTargetControlService:deselectionCopy active:0];

LABEL_7:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleTargetControlServiceSelection:(id)selection
{
  v20 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  accessory = [selectionCopy accessory];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    name = [accessory name];
    name2 = [selectionCopy name];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = name2;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Tracking controller %@ service %@ for active selection", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDTargetControlManager *)selfCopy addControlService:selectionCopy];
  v12 = [(HMDTargetControlManager *)selfCopy __getOrCreateEventReceiver:accessory];
  [v12 setSelected:1];
  [accessory acknowledgeTargetControlService:selectionCopy active:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleControllerDisconnected:(id)disconnected
{
  v34 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [disconnectedCopy name];
    targetAccessory = [(HMDTargetControlManager *)selfCopy targetAccessory];
    name2 = [targetAccessory name];
    *buf = 138543874;
    v29 = v8;
    v30 = 2112;
    v31 = name;
    v32 = 2112;
    v33 = name2;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that controller %@ for target accessory %@ is disconnected - marking as deselected for target control", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  services = [disconnectedCopy services];
  v13 = [services countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    v16 = *MEMORY[0x277CD0F10];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(services);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        type = [v18 type];
        v20 = [type isEqualToString:v16];

        if (v20)
        {
          [(HMDTargetControlManager *)selfCopy removeControlService:v18];
          v21 = [(HMDTargetControlManager *)selfCopy __getOrCreateEventReceiver:disconnectedCopy];
          [v21 setConnected:0];
        }
      }

      v14 = [services countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_targetAccessoryUnconfiguredWithController:(id)controller
{
  v58 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configuredControllers = [(HMDTargetControlManager *)self configuredControllers];
  v6 = [configuredControllers containsObject:controllerCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      name = [controllerCopy name];
      *buf = 138543618;
      v53 = v10;
      v54 = 2112;
      v55 = name;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing controller %@ from list of controllers", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDTargetControlManager *)selfCopy _removeController:controllerCopy];
  }

  else
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      name2 = [controllerCopy name];
      targetAccessory = [(HMDTargetControlManager *)selfCopy targetAccessory];
      name3 = [targetAccessory name];
      *buf = 138543874;
      v53 = v12;
      v54 = 2112;
      v55 = name2;
      v56 = 2112;
      v57 = name3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Controller %@ is not configured for controlling target accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  home = [controllerCopy home];
  if (home)
  {
    v43 = configuredControllers;
    uuid = [controllerCopy uuid];
    v42 = home;
    uuid2 = [home uuid];
    v19 = identifierForTargetWithUUID(uuid, uuid2);

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    eventReceivers = [(HMDTargetControlManager *)selfCopy eventReceivers];
    v21 = [eventReceivers countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v48;
      v44 = *v48;
      do
      {
        v24 = 0;
        v45 = v22;
        do
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(eventReceivers);
          }

          v25 = *(*(&v47 + 1) + 8 * v24);
          if ([v25 identifier] == v19)
          {
            v26 = objc_autoreleasePoolPush();
            v27 = selfCopy;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              [controllerCopy name];
              v30 = eventReceivers;
              v31 = v19;
              v33 = v32 = controllerCopy;
              *buf = 138543618;
              v53 = v29;
              v54 = 2112;
              v55 = v33;
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Removing receiver %@ from list of receivers", buf, 0x16u);

              controllerCopy = v32;
              v19 = v31;
              eventReceivers = v30;
              v23 = v44;

              v22 = v45;
            }

            objc_autoreleasePoolPop(v26);
            [(HMDTargetControlManager *)v27 removeReceiver:v25];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [eventReceivers countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v22);
    }

    home = v42;
    configuredControllers = v43;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      name4 = [controllerCopy name];
      uuid3 = [controllerCopy uuid];
      uUIDString = [uuid3 UUIDString];
      *buf = 138543874;
      v53 = v37;
      v54 = 2112;
      v55 = name4;
      v56 = 2112;
      v57 = uUIDString;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Attempting to lookup or create an event receiver for a %@/%@ that is not configured with a home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_targetAccessoryConfiguredWithController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configuredControllers = [(HMDTargetControlManager *)self configuredControllers];
  v6 = [configuredControllers containsObject:controllerCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      name = [controllerCopy name];
      targetAccessory = [(HMDTargetControlManager *)selfCopy targetAccessory];
      name2 = [targetAccessory name];
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = name;
      v23 = 2112;
      v24 = name2;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Controller %@ already configured for controlling target accessory %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (v10)
    {
      v15 = HMFGetLogIdentifier();
      name3 = [controllerCopy name];
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = name3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding controller %@ to the list of configuredControllers and registering for notifications ", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDTargetControlManager *)selfCopy _addController:controllerCopy];
    v17 = [(HMDTargetControlManager *)selfCopy __getOrCreateEventReceiver:controllerCopy];
    [v17 setConnected:{objc_msgSend(controllerCopy, "isReachable")}];
  }

  [controllerCopy registerForActiveIdentifierNotifications];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)__characteristicsEventsReceived:(id)received
{
  v57 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  userInfo = [receivedCopy userInfo];
  v4 = [userInfo hmf_arrayForKey:*MEMORY[0x277CFE5A8]];
  activeControlServices = [(HMDTargetControlManager *)self activeControlServices];
  selfCopy = self;
  targetAccessory = [(HMDTargetControlManager *)self targetAccessory];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v42 = *v45;
    v8 = *MEMORY[0x277CD0F10];
    v40 = *MEMORY[0x277CCF790];
    v38 = activeControlServices;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        home = [targetAccessory home];
        serverIdentifier = [v10 serverIdentifier];
        accessoryInstanceID = [v10 accessoryInstanceID];
        v14 = [home hapAccessoryWithIdentifier:serverIdentifier instanceID:accessoryInstanceID];

        serviceInstanceID = [v10 serviceInstanceID];
        v16 = [v14 findService:serviceInstanceID];

        type = [v16 type];
        if ([type isEqualToString:v8])
        {
          v18 = [activeControlServices containsObject:v16];

          if (!v18)
          {
            goto LABEL_19;
          }

          characteristicInstanceID = [v10 characteristicInstanceID];
          type = [v16 findCharacteristic:characteristicInstanceID];

          v17Type = [type type];
          v21 = [v17Type isEqualToString:v40];

          if (v21)
          {
            value = [v10 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = value;
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;

            if (v24)
            {
              [(HMDTargetControlManager *)selfCopy _handleButtonEvent:v24 fromControlService:v16];
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v25 = selfCopy;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v36 = HMFGetLogIdentifier();
                [v10 value];
                v33 = v35 = v25;
                accessory = [v16 accessory];
                name = [accessory name];
                instanceID = [v16 instanceID];
                *buf = 138544130;
                v49 = v36;
                v50 = 2112;
                v51 = v33;
                v52 = 2112;
                v53 = name;
                v54 = 2112;
                v55 = instanceID;
                v29 = instanceID;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Button event data not NSData but %@ from control service %@/%@", buf, 0x2Au);

                v25 = v35;
              }

              objc_autoreleasePoolPop(context);
            }

            activeControlServices = v38;
          }
        }

LABEL_19:
      }

      v7 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleButtonEvent:(id)event fromControlService:(id)service
{
  v119 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  serviceCopy = service;
  [eventCopy bytes];
  [eventCopy length];
  v99 = 0;
  v94 = serviceCopy;
  accessory = [serviceCopy accessory];
  home = [accessory home];
  targetAccessory = [(HMDTargetControlManager *)self targetAccessory];
  UInt64 = TLV8GetUInt64();
  v89 = TLV8GetUInt64();
  v88 = TLV8GetUInt64();
  v90 = TLV8GetUInt64();
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v92 = home;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = accessory;
    v16 = eventCopy;
    v17 = UInt64;
    if (v89 == 1)
    {
      v18 = @"Down";
    }

    else
    {
      v18 = @"Up";
    }

    v85 = UInt64;
    accessory2 = [v94 accessory];
    [accessory2 name];
    v20 = v84 = v11;
    instanceID = [v94 instanceID];
    *buf = 138544898;
    v106 = v14;
    v107 = 2048;
    v108 = v17;
    eventCopy = v16;
    accessory = v15;
    v109 = 2112;
    v110 = v18;
    v111 = 2048;
    v112 = v88;
    v113 = 2048;
    v114 = v90;
    v115 = 2112;
    v116 = v20;
    v117 = 2112;
    v118 = instanceID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Button %lu changed to '%@' with timestamp %lu for target %lu from control service %@/%@", buf, 0x48u);

    UInt64 = v85;
    v11 = v84;

    home = v92;
  }

  objc_autoreleasePoolPop(v11);
  if (!home)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      name = [accessory name];
      uuid = [accessory uuid];
      [uuid UUIDString];
      v54 = v53 = accessory;
      *buf = 138543874;
      v106 = v50;
      v107 = 2112;
      v108 = name;
      v109 = 2112;
      v110 = v54;
      v55 = "%{public}@Attempting to lookup or create an event receiver for a configured controller %@/%@ that is not configured with a home";
      v56 = v49;
      v57 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_229538000, v56, v57, v55, buf, 0x20u);

      accessory = v53;
    }

LABEL_28:

    objc_autoreleasePoolPop(v47);
    v46 = 0;
    v29 = 0;
    goto LABEL_29;
  }

  v22 = UInt64;
  uuid2 = [accessory uuid];
  uuid3 = [home uuid];
  v25 = identifierForTargetWithUUID(uuid2, uuid3);

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  eventReceivers = [(HMDTargetControlManager *)selfCopy eventReceivers];
  v27 = [eventReceivers countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (!v27)
  {

    goto LABEL_25;
  }

  v28 = v27;
  v86 = eventCopy;
  v29 = 0;
  v30 = *v96;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v96 != v30)
      {
        objc_enumerationMutation(eventReceivers);
      }

      v32 = *(*(&v95 + 1) + 8 * i);
      if ([v32 identifier] == v25)
      {
        v33 = v32;

        v29 = v33;
      }
    }

    v28 = [eventReceivers countByEnumeratingWithState:&v95 objects:v104 count:16];
  }

  while (v28);

  eventCopy = v86;
  if (!v29)
  {
LABEL_25:
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy;
    v49 = HMFGetOSLogHandle();
    home = v92;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      name = [accessory name];
      uuid = [accessory uuid];
      [uuid UUIDString];
      v54 = v53 = accessory;
      *buf = 138543874;
      v106 = v50;
      v107 = 2112;
      v108 = name;
      v109 = 2112;
      v110 = v54;
      v55 = "%{public}@No event receiver set up for controller %@/%@";
      v56 = v49;
      v57 = OS_LOG_TYPE_INFO;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  uuid4 = [targetAccessory uuid];
  home2 = [targetAccessory home];
  uuid5 = [home2 uuid];
  v37 = identifierForTargetWithUUID(uuid4, uuid5);

  home = v92;
  if (v37 == v90)
  {
    if (v89 >= 2)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v42 = v41 = accessory;
        name2 = [v41 name];
        uuid6 = [v41 uuid];
        uUIDString = [uuid6 UUIDString];
        *buf = 138544130;
        v106 = v42;
        v107 = 2048;
        v108 = v89;
        v109 = 2112;
        v110 = name2;
        v111 = 2112;
        v112 = uUIDString;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Invalid buttonState %lu for controller %@/%@", buf, 0x2Au);

        accessory = v41;
        home = v92;
      }

      objc_autoreleasePoolPop(v38);
      v46 = 0;
      goto LABEL_29;
    }

    v87 = selfCopy;
    v29 = v29;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    selectedButtons = [v29 selectedButtons];
    v46 = [selectedButtons countByEnumeratingWithState:&v100 objects:buf count:16];
    if (v46)
    {
      v65 = *v101;
LABEL_35:
      v66 = 0;
      while (1)
      {
        if (*v101 != v65)
        {
          objc_enumerationMutation(selectedButtons);
        }

        v67 = *(*(&v100 + 1) + 8 * v66);
        if ([v67 identifier] == v22)
        {
          break;
        }

        if (v46 == ++v66)
        {
          v46 = [selectedButtons countByEnumeratingWithState:&v100 objects:buf count:16];
          if (v46)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      v68 = v67;

      if (v68)
      {
        v46 = objc_alloc_init(THAButtonEvent);
        [(THAButtonEvent *)v46 setButton:v68];
        if (v89)
        {
          v69 = 1;
        }

        else
        {
          v69 = 2;
        }

        [(THAButtonEvent *)v46 setState:v69];
        -[THAButtonEvent setTimestamp:](v46, "setTimestamp:", v88 / [v29 ticksPerSecond]);
        selectedButtons = v68;
LABEL_47:
        eventCopy = v86;
        goto LABEL_48;
      }

      eventCopy = v86;
    }

    else
    {
LABEL_48:

      if (v46)
      {
        if (([v29 dispatchButtonEvent:v46] & 1) == 0)
        {
          v70 = accessory;
          v71 = objc_autoreleasePoolPush();
          v72 = v87;
          v73 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            v74 = HMFGetLogIdentifier();
            button = [(THAButtonEvent *)v46 button];
            type = [button type];
            *buf = 138543874;
            v106 = v74;
            v107 = 2048;
            v108 = v22;
            eventCopy = v86;
            v109 = 2048;
            v110 = type;
            _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Received an event for button with ID %lu/type %lu - consuming in HomeKit layer", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v71);
          accessory = v70;
          home = v92;
        }

        goto LABEL_29;
      }
    }

    v91 = accessory;
    v77 = objc_autoreleasePoolPush();
    v78 = v87;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      v80 = HMFGetLogIdentifier();
      accessory3 = [v94 accessory];
      name3 = [accessory3 name];
      instanceID2 = [v94 instanceID];
      *buf = 138544130;
      v106 = v80;
      v107 = 2112;
      v108 = name3;
      v109 = 2112;
      v110 = instanceID2;
      v111 = 2048;
      v112 = v22;
      _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@Received an event from control service %@/%@ for a button id %lu that is not mapped into the receiver's selected buttons", buf, 0x2Au);

      home = v92;
    }

    objc_autoreleasePoolPop(v77);
    v46 = 0;
    accessory = v91;
  }

  else
  {
    v59 = accessory;
    v60 = objc_autoreleasePoolPush();
    v61 = selfCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543874;
      v106 = v63;
      v107 = 2048;
      v108 = v90;
      v109 = 2048;
      v110 = v37;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Event targetID %lu does not match our target identifier %lu - treating as deselection to avoid receiving additional events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    [(HMDTargetControlManager *)v61 _handleTargetControlServiceDeselection:v94];
    v46 = 0;
    accessory = v59;
  }

LABEL_29:

  v58 = *MEMORY[0x277D85DE8];
}

- (id)__getOrCreateEventReceiver:(id)receiver
{
  v54 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  home = [receiverCopy home];
  if (home)
  {
    uuid = [receiverCopy uuid];
    uuid2 = [home uuid];
    v8 = identifierForTargetWithUUID(uuid, uuid2);

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    eventReceivers = [(HMDTargetControlManager *)self eventReceivers];
    v10 = [eventReceivers countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (!v10)
    {

LABEL_17:
      supportsSiri = [receiverCopy supportsSiri];
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v29 = v40 = supportsSiri;
        name = [receiverCopy name];
        [receiverCopy uuid];
        v31 = v39 = v25;
        uUIDString = [v31 UUIDString];
        *buf = 138544130;
        v46 = v28;
        v47 = 2112;
        v48 = v29;
        v49 = 2112;
        v50 = name;
        v51 = 2112;
        v52 = uUIDString;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Creating an event receiver (supportsSiri: %@) to handle events from controller %@/%@", buf, 0x2Au);

        v25 = v39;
        supportsSiri = v40;
      }

      objc_autoreleasePoolPop(v25);
      targetControllerButtonConfiguration = [receiverCopy targetControllerButtonConfiguration];
      v34 = mapButtonConfigurationForTVReceiver(targetControllerButtonConfiguration);

      v35 = [THAController alloc];
      name2 = [receiverCopy name];
      v12 = -[THAController initWithName:identifier:ticksPerSecond:supportedButtons:supportsSiri:](v35, "initWithName:identifier:ticksPerSecond:supportedButtons:supportsSiri:", name2, v8, [receiverCopy targetControllerTicksPerSecond], v34, supportsSiri);

      [(HMDTargetControlManager *)selfCopy addReceiver:v12];
      -[THAController setConnected:](v12, "setConnected:", [receiverCopy isReachable]);

      goto LABEL_20;
    }

    v11 = v10;
    v12 = 0;
    v13 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(eventReceivers);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        if ([v15 identifier] == v8)
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [eventReceivers countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v11);

    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      name3 = [receiverCopy name];
      uuid3 = [receiverCopy uuid];
      uUIDString2 = [uuid3 UUIDString];
      *buf = 138543874;
      v46 = v20;
      v47 = 2112;
      v48 = name3;
      v49 = 2112;
      v50 = uUIDString2;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Attempting to lookup or create an event receiver for a configured controller %@/%@ that is not configured with a home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = 0;
  }

LABEL_20:

  v37 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)__serviceRemoved:(id)removed
{
  removedCopy = removed;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDTargetControlManager___serviceRemoved___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(workQueue, v7);
}

void __44__HMDTargetControlManager___serviceRemoved___block_invoke(uint64_t a1)
{
  v1 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDServiceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 accessory];
  v7 = objc_autoreleasePoolPush();
  v8 = *(v1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v5 instanceID];
    v12 = [v5 type];
    [v6 name];
    v42 = v1;
    v13 = v43 = v5;
    [v6 uuid];
    v15 = v14 = v7;
    v16 = [v15 UUIDString];
    *buf = 138544386;
    v47 = v10;
    v48 = 2112;
    v49 = v11;
    v50 = 2112;
    v51 = v12;
    v52 = 2112;
    v53 = v13;
    v54 = 2112;
    v55 = v16;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received notification that a service %@/%@ has been removed from the accessory %@/%@", buf, 0x34u);

    v7 = v14;
    v1 = v42;
    v5 = v43;
  }

  objc_autoreleasePoolPop(v7);
  v17 = [v5 type];
  v18 = [v17 isEqualToString:*MEMORY[0x277CD0F18]];

  if (v18)
  {
    v19 = [*(v1 + 40) configuredControllers];
    v20 = [v19 containsObject:v6];

    if (v20)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = *(v1 + 40);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v5 instanceID];
        v26 = [v6 name];
        v27 = [v6 uuid];
        [v27 UUIDString];
        v28 = v44 = v6;
        *buf = 138544130;
        v47 = v24;
        v48 = 2112;
        v49 = v25;
        v50 = 2112;
        v51 = v26;
        v52 = 2112;
        v53 = v28;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Received notification target configuration service %@ of controller %@/%@ has been removed - treating as unconfiguration", buf, 0x2Au);

        v6 = v44;
      }

      objc_autoreleasePoolPop(v21);
      [*(v1 + 40) _targetAccessoryUnconfiguredWithController:v6];
    }
  }

  else
  {
    v29 = [v5 type];
    v30 = [v29 isEqualToString:*MEMORY[0x277CD0F10]];

    if (v30)
    {
      v31 = [*(v1 + 40) configuredControllers];
      v32 = [v31 containsObject:v6];

      if (v32)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = *(v1 + 40);
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          v37 = [v5 instanceID];
          v38 = [v6 name];
          v39 = [v6 uuid];
          [v39 UUIDString];
          v40 = v45 = v6;
          *buf = 138544130;
          v47 = v36;
          v48 = 2112;
          v49 = v37;
          v50 = 2112;
          v51 = v38;
          v52 = 2112;
          v53 = v40;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Received notification target control service %@ of controller %@/%@ has been removed - treating as deselection", buf, 0x2Au);

          v6 = v45;
        }

        objc_autoreleasePoolPop(v33);
        [*(v1 + 40) _handleTargetControlServiceDeselection:v5];
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryRemoved:(id)removed
{
  removedCopy = removed;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDTargetControlManager___accessoryRemoved___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(workQueue, v7);
}

void __46__HMDTargetControlManager___accessoryRemoved___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDAccessoryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 name];
    v11 = [v5 uuid];
    v12 = [v11 UUIDString];
    *buf = 138543874;
    v64 = v9;
    v65 = 2112;
    v66 = v10;
    v67 = 2112;
    v68 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that an accessory %@/%@ has been removed from the home", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [*(a1 + 40) configuredControllers];
    v17 = [v16 containsObject:v15];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 40);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v15 name];
        v23 = [v15 uuid];
        v24 = [v23 UUIDString];
        *buf = 138543874;
        v64 = v21;
        v65 = 2112;
        v66 = v22;
        v67 = 2112;
        v68 = v24;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Received notification that controller %@/%@ has been removed", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [*(a1 + 40) _handleControllerDisconnected:v15];
      [*(a1 + 40) _removeController:v15];
      v25 = [v15 home];
      if (!v25)
      {
        v49 = objc_autoreleasePoolPush();
        v50 = *(a1 + 40);
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = HMFGetLogIdentifier();
          v53 = [v15 name];
          v54 = [v15 uuid];
          v55 = [v54 UUIDString];
          *buf = 138543874;
          v64 = v52;
          v65 = 2112;
          v66 = v53;
          v67 = 2112;
          v68 = v55;
          _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Removed controller %@/%@ is not configured with a home", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v49);
        goto LABEL_34;
      }

      v26 = [v15 uuid];
      v27 = [v25 uuid];
      v28 = identifierForTargetWithUUID(v26, v27);

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v29 = [*(a1 + 40) eventReceivers];
      v30 = [v29 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v30)
      {
        v31 = v30;
        v57 = v25;
        v32 = 0;
        v33 = *v59;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v59 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v58 + 1) + 8 * i);
            if ([v35 identifier] == v28)
            {
              v36 = v35;

              v32 = v36;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v31);

        v25 = v57;
        if (!v32)
        {
          goto LABEL_34;
        }

        v37 = [*(a1 + 40) eventReceivers];
        [v37 removeObject:v32];
      }

      else
      {
        v32 = v29;
      }

LABEL_34:
    }
  }

  else
  {
    v38 = [v13 uuid];
    v39 = [*(a1 + 40) targetAccessory];
    v40 = [v39 uuid];
    v41 = [v38 isEqual:v40];

    if (v41)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = *(a1 + 40);
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v46 = [v13 name];
        v47 = [v13 uuid];
        v48 = [v47 UUIDString];
        *buf = 138543874;
        v64 = v45;
        v65 = 2112;
        v66 = v46;
        v67 = 2112;
        v68 = v48;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Received notification that this target accessory  %@/%@ has been removed - invalidating...", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
      [*(a1 + 40) invalidate];
    }
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryAdded:(id)added
{
  addedCopy = added;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDTargetControlManager___accessoryAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(workQueue, v7);
}

void __44__HMDTargetControlManager___accessoryAdded___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 name];
    v11 = [v5 uuid];
    v12 = [v11 UUIDString];
    [v5 supportsTargetController];
    v13 = HMFBooleanToString();
    v15 = 138544130;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that an accessory %@/%@ (supportsTargetController %@) has been added to the home", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDTargetControlManager___accessoryDisconnected___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = disconnectedCopy;
  selfCopy = self;
  v6 = disconnectedCopy;
  dispatch_async(workQueue, v7);
}

void __51__HMDTargetControlManager___accessoryDisconnected___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    v25 = 138543874;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Disconnected from accessory %@/%@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [*(a1 + 40) configuredControllers];
    v16 = [v15 containsObject:v14];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v12 name];
        v22 = [*(a1 + 40) targetAccessory];
        v23 = [v22 name];
        v25 = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Disconnected from controller %@ for target accessory %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 40) _handleControllerDisconnected:v14];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryConnected:(id)connected
{
  connectedCopy = connected;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDTargetControlManager___accessoryConnected___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = connectedCopy;
  selfCopy = self;
  v6 = connectedCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDTargetControlManager___accessoryConnected___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    v26 = 138543874;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Connected to accessory %@/%@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [*(a1 + 40) configuredControllers];
    v16 = [v15 containsObject:v14];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v12 name];
        v22 = [*(a1 + 40) targetAccessory];
        v23 = [v22 name];
        v26 = 138543874;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Connected to controller %@ for target accessory %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v24 = [*(a1 + 40) __getOrCreateEventReceiver:v14];
      [v24 setConnected:1];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryNameUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDTargetControlManager___accessoryNameUpdated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __50__HMDTargetControlManager___accessoryNameUpdated___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (!v4 || ![v4 supportsTargetController])
  {
    goto LABEL_18;
  }

  v5 = [v4 home];

  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v4 name];
      v22 = [v4 uuid];
      v23 = [v22 UUIDString];
      v30 = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Attempting to process name update for a controller %@/%@ that is not configured with a home", &v30, 0x20u);
    }

    goto LABEL_17;
  }

  v6 = [*(a1 + 40) configuredControllers];
  v7 = [v6 containsObject:v4];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if ((v7 & 1) == 0)
  {
    if (v11)
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v4 name];
      v26 = [v4 uuid];
      v27 = [v26 UUIDString];
      v28 = [*(a1 + 40) configuredControllers];
      v30 = 138544130;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Controller %@/%@ that has updated its name not one of the configured controllers %@", &v30, 0x2Au);
    }

LABEL_17:
    objc_autoreleasePoolPop(v8);
    goto LABEL_18;
  }

  if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v4 name];
    v14 = [v4 uuid];
    v15 = [v14 UUIDString];
    v30 = 138543874;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received notification that the name of a controller %@/%@ has been updated", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v16 = [*(a1 + 40) __getOrCreateEventReceiver:v4];
  v17 = [v4 name];
  [v16 setName:v17];

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)__controllerRefreshedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDTargetControlManager___controllerRefreshedConfiguration___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = configurationCopy;
  selfCopy = self;
  v6 = configurationCopy;
  dispatch_async(workQueue, v7);
}

void __62__HMDTargetControlManager___controllerRefreshedConfiguration___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 name];
      v10 = [v4 uuid];
      v11 = [v10 UUIDString];
      v12 = [*(a1 + 32) userInfo];
      v26 = 138544130;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that a controller %@/%@ has refreshed its configuration - userInfo %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    v13 = [*(a1 + 40) configuredControllers];
    v14 = [v13 containsObject:v4];

    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) userInfo];
      [v15 _targetAccessoryRefreshConfigurationWithController:v4 userInfo:v16];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v4 name];
        v22 = [v4 uuid];
        v23 = [v22 UUIDString];
        v24 = [*(a1 + 40) configuredControllers];
        v26 = 138544130;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        v30 = 2112;
        v31 = v23;
        v32 = 2112;
        v33 = v24;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Controller %@/%@ that has refreshed its configuration not one of the configured controllers %@", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_targetAccessoryRefreshConfigurationWithController:(id)controller userInfo:(id)info
{
  v93 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  infoCopy = info;
  supportsSiri = [controllerCopy supportsSiri];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMFBooleanToString();
    [controllerCopy name];
    v14 = v76 = v9;
    [controllerCopy uuid];
    v16 = v15 = selfCopy;
    uUIDString = [v16 UUIDString];
    *buf = 138544386;
    v84 = v12;
    v85 = 2112;
    v86 = v13;
    v87 = 2112;
    v88 = v14;
    v89 = 2112;
    v90 = uUIDString;
    v91 = 2112;
    v92 = infoCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Handling configuration refresh from controller (supportsSiri %@) %@/%@: %@", buf, 0x34u);

    selfCopy = v15;
    v9 = v76;
  }

  objc_autoreleasePoolPop(v9);
  v18 = [(HMDTargetControlManager *)selfCopy __getOrCreateEventReceiver:controllerCopy];
  [v18 setSupportsSiri:supportsSiri];
  v19 = [infoCopy hmf_numberForKey:@"ticksPerSecond"];
  if (v19)
  {
    ticksPerSecond = [v18 ticksPerSecond];
    if (ticksPerSecond != [v19 unsignedLongValue])
    {
      [v18 setTicksPerSecond:{objc_msgSend(v19, "unsignedLongValue")}];
    }
  }

  targetAccessory = [(HMDTargetControlManager *)selfCopy targetAccessory];
  home = [targetAccessory home];
  v75 = home;
  v77 = targetAccessory;
  if (home)
  {
    v23 = home;
    v73 = v19;
    v71 = controllerCopy;
    uuid = [targetAccessory uuid];
    uuid2 = [v23 uuid];
    v26 = identifierForTargetWithUUID(uuid, uuid2);

    [infoCopy hmf_arrayForKey:@"buttonConfiguration"];
    v68 = v67 = selfCopy;
    v69 = v18;
    v72 = [HMDTargetControlManager __selectButtonConfiguration:selfCopy receiver:"__selectButtonConfiguration:receiver:"];
    v70 = infoCopy;
    [infoCopy hmf_arrayForKey:@"targetConfiguration"];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v27 = v81 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v78 objects:v82 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v79;
LABEL_9:
      v31 = 0;
      while (1)
      {
        if (*v79 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v78 + 1) + 8 * v31);
        identifier = [v32 identifier];
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
        v35 = [identifier isEqual:v34];

        if (v35)
        {
          break;
        }

        if (v29 == ++v31)
        {
          v29 = [v27 countByEnumeratingWithState:&v78 objects:v82 count:16];
          if (v29)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      v36 = v32;

      targetAccessory = v77;
      if (!v36)
      {
        goto LABEL_19;
      }

      name = [v36 name];
      name2 = [v77 name];
      v39 = [name isEqualToString:name2];

      v19 = v73;
      if (v39)
      {
        name3 = 0;
      }

      else
      {
        name3 = [v77 name];
        v57 = objc_autoreleasePoolPush();
        v58 = v67;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          name4 = [v36 name];
          *buf = 138543874;
          v84 = v60;
          v85 = 2112;
          v86 = name4;
          v87 = 2112;
          v88 = name3;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Target name in the controller configuration %@ is stale - updating to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v57);
      }

      v18 = v69;
      v62 = MEMORY[0x277CBEB98];
      buttonConfiguration = [v36 buttonConfiguration];
      v64 = [v62 setWithArray:buttonConfiguration];

      controllerCopy = v71;
      targetAccessory = v77;
      if (name3 || (HMFEqualObjects() & 1) == 0)
      {
        allObjects = [v72 allObjects];
        [v71 updateTarget:v77 name:name3 buttonConfiguration:allObjects];
      }

      [v71 registerForActiveIdentifierNotifications];
    }

    else
    {
LABEL_15:

      targetAccessory = v77;
LABEL_19:
      v41 = objc_autoreleasePoolPush();
      v42 = v67;
      v43 = HMFGetOSLogHandle();
      v19 = v73;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        name5 = [targetAccessory name];
        uuid3 = [targetAccessory uuid];
        uUIDString2 = [uuid3 UUIDString];
        *buf = 138543874;
        v84 = v44;
        v85 = 2112;
        v86 = name5;
        v87 = 2112;
        v88 = uUIDString2;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Target %@/%@ does not exist in controller configuration - for now, not adding", buf, 0x20u);

        targetAccessory = v77;
      }

      objc_autoreleasePoolPop(v41);
      controllerCopy = v71;
    }

    infoCopy = v70;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v49 = selfCopy;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      [targetAccessory name];
      v74 = v19;
      v52 = infoCopy;
      v54 = v53 = controllerCopy;
      uuid4 = [targetAccessory uuid];
      uUIDString3 = [uuid4 UUIDString];
      *buf = 138543874;
      v84 = v51;
      v85 = 2112;
      v86 = v54;
      v87 = 2112;
      v88 = uUIDString3;
      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Attempting to process configuration refresh for target accessory %@/%@ that is not configured with a home", buf, 0x20u);

      controllerCopy = v53;
      infoCopy = v52;
      v19 = v74;

      targetAccessory = v77;
    }

    objc_autoreleasePoolPop(v48);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (id)__selectButtonConfiguration:(id)configuration receiver:(id)receiver
{
  v53 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  receiverCopy = receiver;
  v8 = [configurationCopy count];
  v9 = 0;
  if (receiverCopy && v8)
  {
    v10 = mapButtonConfigurationForTVReceiver(configurationCopy);
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = buttonConfigurationAsString(configurationCopy);
      *buf = 138543874;
      v48 = v14;
      v49 = 2112;
      v50 = v15;
      v51 = 2112;
      v52 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Supported button configuration %@  Mapped supported button set: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v41 = v10;
    if (v10)
    {
      v39 = selfCopy;
      v16 = +[THAController selectButtonConfiguration:supportsSiri:](THAController, "selectButtonConfiguration:supportsSiri:", v10, [receiverCopy supportsSiri]);
      v40 = receiverCopy;
      [receiverCopy updateSelectedButtons:v16];
      v17 = v16;
      v42 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v17, "count")}];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v43 objects:buf count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            v24 = [v23 type] - 1;
            if (v24 <= 0xB)
            {
              v25 = qword_22A587920[v24];
              v26 = [HMDTargetButtonConfiguration alloc];
              v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v23, "identifier")}];
              v28 = [(HMDTargetButtonConfiguration *)v26 initWithType:v25 identifier:v27 name:0];

              if (v28)
              {
                [v42 addObject:v28];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v43 objects:buf count:16];
        }

        while (v20);
      }

      v29 = [v42 copy];
      v30 = [v29 mutableCopy];

      v31 = objc_autoreleasePoolPush();
      v32 = v39;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = HMFGetLogIdentifier();
        allObjects = [v30 allObjects];
        v36 = buttonConfigurationAsString(allObjects);
        *buf = 138543874;
        v48 = v34;
        v49 = 2112;
        v50 = v18;
        v51 = 2112;
        v52 = v36;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Selected button set %@, Mapped and augmented button configuration: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
      v9 = [v30 copy];

      receiverCopy = v40;
    }

    else
    {
      v9 = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)__targetAccessoryUnconfiguredForControl:(id)control
{
  controlCopy = control;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDTargetControlManager___targetAccessoryUnconfiguredForControl___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = controlCopy;
  selfCopy = self;
  v6 = controlCopy;
  dispatch_async(workQueue, v7);
}

void __67__HMDTargetControlManager___targetAccessoryUnconfiguredForControl___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 hmf_arrayForKey:@"HMDTargetAccessoriesUUIDKey"];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v4 name];
    v19 = 138543874;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received notification that target accessories %@ have been unconfigured for control by controller %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [*(a1 + 40) targetAccessory];
  v13 = [v12 uuid];
  v14 = [v6 containsObject:v13];

  if (v14)
  {
    v15 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      [*(a1 + 40) _targetAccessoryUnconfiguredWithController:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)__targetAccessoryConfiguredForControl:(id)control
{
  controlCopy = control;
  workQueue = [(HMDTargetControlManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDTargetControlManager___targetAccessoryConfiguredForControl___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = controlCopy;
  selfCopy = self;
  v6 = controlCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMDTargetControlManager___targetAccessoryConfiguredForControl___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 hmf_arrayForKey:@"HMDTargetAccessoriesUUIDKey"];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v4 name];
    v12 = [v4 uuid];
    v13 = [v12 UUIDString];
    v25 = 138544130;
    v26 = v10;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received notification that target accessories %@ have been configured for control by controller %@/%@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v4)
  {
    v14 = [*(a1 + 40) targetAccessory];
    v15 = [v14 uuid];
    v16 = [v6 containsObject:v15];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v4 name];
        v22 = [v4 uuid];
        v23 = [v22 UUIDString];
        v25 = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received notification that this target has been configured for control by controller %@/%@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 40) _targetAccessoryConfiguredWithController:v4];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)addTargetControllers:(id)controllers
{
  v59 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = controllers;
  v43 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v43)
  {
    v42 = *v45;
    *&v4 = 138543874;
    v33 = v4;
    selfCopy = self;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        if (v8)
        {
          v9 = [(HMDTargetControlManager *)self __getOrCreateEventReceiver:v8];
          targetControllerTicksPerSecond = [v8 targetControllerTicksPerSecond];
          if (targetControllerTicksPerSecond)
          {
            v11 = targetControllerTicksPerSecond;
            if ([v9 ticksPerSecond] != targetControllerTicksPerSecond)
            {
              [v9 setTicksPerSecond:v11];
            }
          }

          targetControllerButtonConfiguration = [v8 targetControllerButtonConfiguration];
          v13 = [(HMDTargetControlManager *)self __selectButtonConfiguration:targetControllerButtonConfiguration receiver:v9];
          allObjects = [v13 allObjects];

          v15 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v36 = v41 = allObjects;
            targetAccessory = [(HMDTargetControlManager *)selfCopy2 targetAccessory];
            [targetAccessory name];
            v18 = v38 = v15;
            [v8 name];
            v19 = v39 = targetControllerButtonConfiguration;
            [v8 uuid];
            v20 = v40 = v9;
            uUIDString = [v20 UUIDString];
            v22 = buttonConfigurationAsString(allObjects);
            *buf = 138544386;
            v49 = v36;
            v50 = 2112;
            v51 = v18;
            v52 = 2112;
            v53 = v19;
            v54 = 2112;
            v55 = uUIDString;
            v23 = uUIDString;
            v56 = 2112;
            v57 = v22;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Adding target %@ to controller %@/%@ with button configuration %@", buf, 0x34u);

            v9 = v40;
            targetControllerButtonConfiguration = v39;

            v15 = v38;
            self = selfCopy;

            allObjects = v41;
          }

          objc_autoreleasePoolPop(v15);
          targetAccessory2 = [(HMDTargetControlManager *)selfCopy2 targetAccessory];
          [v8 addTarget:targetAccessory2 buttonConfiguration:allObjects];

          [v8 registerForActiveIdentifierNotifications];
        }

        else
        {
          v25 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = HMFGetLogIdentifier();
            name = [0 name];
            uuid = [0 uuid];
            uUIDString2 = [uuid UUIDString];
            *buf = v33;
            v49 = v28;
            v50 = 2112;
            v51 = name;
            v52 = 2112;
            v53 = uUIDString2;
            _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Attempt to add a target controller %@/%@ that is not a HAP accessory", buf, 0x20u);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v25);
        }
      }

      v43 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v43);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_eventReceivers removeObject:receiverCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_eventReceivers addObject:receiverCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSMutableArray)eventReceivers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_eventReceivers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeControlService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_activeControlServices removeObject:serviceCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addControlService:(id)service
{
  serviceCopy = service;
  if (([(NSMutableArray *)self->_activeControlServices containsObject:?]& 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_activeControlServices addObject:serviceCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (NSMutableArray)activeControlServices
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_activeControlServices copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_removeController:(id)controller
{
  controllerCopy = controller;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_configuredControllers removeObject:controllerCopy];
  os_unfair_lock_unlock(&self->_lock);
  siriServer = [(HMDTargetControlManager *)self siriServer];

  if (siriServer)
  {
    siriServer2 = [(HMDTargetControlManager *)self siriServer];
    targetAccessory = [(HMDTargetControlManager *)self targetAccessory];
    configuredControllers = [(HMDTargetControlManager *)self configuredControllers];
    [siriServer2 setTargetableAccessory:targetAccessory withControllers:configuredControllers];
  }
}

- (void)_addController:(id)controller
{
  controllerCopy = controller;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_configuredControllers addObject:controllerCopy];
  os_unfair_lock_unlock(&self->_lock);
  siriServer = [(HMDTargetControlManager *)self siriServer];

  if (!siriServer)
  {
    v5 = +[HMDSiriServer sharedSiriServer];
    [(HMDTargetControlManager *)self setSiriServer:v5];
  }

  siriServer2 = [(HMDTargetControlManager *)self siriServer];

  if (siriServer2)
  {
    siriServer3 = [(HMDTargetControlManager *)self siriServer];
    targetAccessory = [(HMDTargetControlManager *)self targetAccessory];
    configuredControllers = [(HMDTargetControlManager *)self configuredControllers];
    [siriServer3 setTargetableAccessory:targetAccessory withControllers:configuredControllers];
  }
}

- (NSMutableArray)configuredControllers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_configuredControllers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)logIdentifier
{
  targetAccessory = [(HMDTargetControlManager *)self targetAccessory];
  shortDescription = [targetAccessory shortDescription];

  return shortDescription;
}

- (void)invalidate
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating target control manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  siriServer = [(HMDTargetControlManager *)selfCopy siriServer];

  if (siriServer)
  {
    siriServer2 = [(HMDTargetControlManager *)selfCopy siriServer];
    targetAccessory = [(HMDTargetControlManager *)selfCopy targetAccessory];
    [siriServer2 setTargetableAccessory:targetAccessory withControllers:MEMORY[0x277CBEBF8]];

    [(HMDTargetControlManager *)selfCopy setSiriServer:0];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  activeControlServices = [(HMDTargetControlManager *)selfCopy activeControlServices];
  v12 = [activeControlServices countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(activeControlServices);
        }

        [(HMDTargetControlManager *)selfCopy _handleTargetControlServiceDeselection:*(*(&v26 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [activeControlServices countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  configuredControllers = [(HMDTargetControlManager *)selfCopy configuredControllers];
  v17 = [configuredControllers countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(configuredControllers);
        }

        [(HMDTargetControlManager *)selfCopy _targetAccessoryUnconfiguredWithController:*(*(&v22 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [configuredControllers countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (HMDTargetControlManager)initWithTargetAccessory:(id)accessory controllers:(id)controllers
{
  v79 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  controllersCopy = controllers;
  v71.receiver = self;
  v71.super_class = HMDTargetControlManager;
  v8 = [(HMDTargetControlManager *)&v71 init];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    workQueue = v8->_workQueue;
    v8->_workQueue = v12;

    objc_storeWeak(&v8->_targetAccessory, accessoryCopy);
    if (controllersCopy)
    {
      v14 = controllersCopy;
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v15 = [MEMORY[0x277CBEB18] arrayWithArray:v14];
    configuredControllers = v8->_configuredControllers;
    v8->_configuredControllers = v15;

    array = [MEMORY[0x277CBEB18] array];
    activeControlServices = v8->_activeControlServices;
    v8->_activeControlServices = array;

    array2 = [MEMORY[0x277CBEB18] array];
    eventReceivers = v8->_eventReceivers;
    v8->_eventReceivers = array2;

    v21 = MEMORY[0x277CCACA8];
    name = [accessoryCopy name];
    uuid = [accessoryCopy uuid];
    uUIDString = [uuid UUIDString];
    v25 = [v21 stringWithFormat:@"%@/%@", name, uUIDString];
    logID = v8->_logID;
    v8->_logID = v25;

    v27 = objc_autoreleasePoolPush();
    v61 = v8;
    v28 = v8;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v30;
      v74 = 2112;
      v75 = controllersCopy;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Initializing target control manager with controllers %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v28 selector:sel___targetAccessoryConfiguredForControl_ name:@"HMDTargetAccessoryConfiguredNotificationKey" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v28 selector:sel___targetAccessoryUnconfiguredForControl_ name:@"HMDTargetAccessoryUnconfiguredNotificationKey" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v28 selector:sel___controllerRefreshedConfiguration_ name:@"HMDTargetControllerAccessoryConfigurationUpdatedNotificationKey" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v28 selector:sel___accessoryNameUpdated_ name:@"HMDAccessoryNameUpdatedNotification" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v28 selector:sel___activeSelectionChanged_ name:@"HMDTargetControlServiceSelectedNotificationKey" object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v28 selector:sel___activeSelectionReset_ name:@"HMDTargetControlServiceDeselectedNotificationKey" object:0];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:v28 selector:sel___accessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v28 selector:sel___accessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:0];

    defaultCenter9 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter9 addObserver:v28 selector:sel___characteristicsEventsReceived_ name:*MEMORY[0x277CFE5A0] object:0];

    defaultCenter10 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter10 addObserver:v28 selector:sel___accessoryAdded_ name:@"HMDNotificationHomeAddedAccessory" object:0];

    defaultCenter11 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter11 addObserver:v28 selector:sel___accessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    defaultCenter12 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter12 addObserver:v28 selector:sel___serviceRemoved_ name:@"HMDHomeServiceRemovedNotification" object:0];

    v62 = accessoryCopy;
    [accessoryCopy home];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v60 = v70 = 0u;
    accessories = [v60 accessories];
    v44 = [accessories countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v68;
      v64 = accessories;
      v65 = controllersCopy;
      v63 = *v68;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v68 != v46)
          {
            objc_enumerationMutation(accessories);
          }

          v48 = *(*(&v67 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = v48;
          }

          else
          {
            v49 = 0;
          }

          v50 = v49;

          if ([v50 supportsTargetController] && (objc_msgSend(controllersCopy, "containsObject:", v50) & 1) == 0)
          {
            context = objc_autoreleasePoolPush();
            v51 = v28;
            v52 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              v53 = HMFGetLogIdentifier();
              name2 = [v50 name];
              [v50 uuid];
              v56 = v55 = v28;
              uUIDString2 = [v56 UUIDString];
              *buf = 138543874;
              v73 = v53;
              v74 = 2112;
              v75 = name2;
              v76 = 2112;
              v77 = uUIDString2;
              _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Adding %@/%@ as a configured controller", buf, 0x20u);

              v28 = v55;
              v46 = v63;

              accessories = v64;
              controllersCopy = v65;
            }

            objc_autoreleasePoolPop(context);
            [(HMDTargetControlManager *)v51 _addController:v50];
            [(HMDTargetControlManager *)v51 __getOrCreateEventReceiver:v50];
          }
        }

        v45 = [accessories countByEnumeratingWithState:&v67 objects:v78 count:16];
      }

      while (v45);
    }

    v8 = v61;
    accessoryCopy = v62;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDTargetControlManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_136857 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_136857, &__block_literal_global_136858);
  }

  v3 = logCategory__hmf_once_v5_136859;

  return v3;
}

void __38__HMDTargetControlManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_136859;
  logCategory__hmf_once_v5_136859 = v1;
}

@end