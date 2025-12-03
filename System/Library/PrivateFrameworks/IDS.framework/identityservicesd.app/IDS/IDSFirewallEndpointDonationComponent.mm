@interface IDSFirewallEndpointDonationComponent
- (BOOL)isCommandExcluded:(id)excluded forService:(id)service;
- (IDSFirewallEndpointDonationComponent)initWithServiceController:(id)controller firewallStore:(id)store;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSFirewallEndpointDonationComponent

- (IDSFirewallEndpointDonationComponent)initWithServiceController:(id)controller firewallStore:(id)store
{
  controllerCopy = controller;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = IDSFirewallEndpointDonationComponent;
  v9 = [(IDSFirewallEndpointDonationComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceController, controller);
    objc_storeStrong(&v10->_firewallStore, store);
  }

  return v10;
}

- (BOOL)isCommandExcluded:(id)excluded forService:(id)service
{
  excludedCopy = excluded;
  identifier = [service identifier];
  if (![identifier isEqualToIgnoringCase:IDSServiceNameFaceTimeMulti])
  {

    goto LABEL_5;
  }

  integerValue = [excludedCopy integerValue];

  if (integerValue == 207)
  {
LABEL_5:
    v8 = [excludedCopy integerValue] == 249;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  serviceController = [(IDSFirewallEndpointDonationComponent *)self serviceController];
  service = [inputCopy service];
  v7 = [serviceController serviceWithIdentifier:service];

  if ([v7 disallowFirewallAutoEnroll])
  {
    wantsFirewallDonation = [inputCopy wantsFirewallDonation];
  }

  else
  {
    wantsFirewallDonation = 1;
  }

  messageToSend = [inputCopy messageToSend];
  additionalDictionary = [messageToSend additionalDictionary];
  v11 = [additionalDictionary objectForKeyedSubscript:@"c"];

  if (wantsFirewallDonation && IDSCommandIsUserInteractiveCommand() && ![(IDSFirewallEndpointDonationComponent *)self isCommandExcluded:v11 forService:v7])
  {
    selfCopy = self;
    v41 = v11;
    v42 = v7;
    v12 = objc_alloc_init(NSMutableSet);
    v16 = objc_alloc_init(NSMutableArray);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = inputCopy;
    endpoints = [inputCopy endpoints];
    v18 = [endpoints countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(endpoints);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v22 URI];
          prefixedURI = [v23 prefixedURI];

          if (([v12 containsObject:prefixedURI]& 1) == 0)
          {
            v25 = [IDSFirewallEntry alloc];
            v26 = [v22 URI];
            v27 = [v25 initWithURI:v26 andLastSeenDate:0];

            senderCorrelationIdentifier = [v22 senderCorrelationIdentifier];
            [v27 setMergeID:senderCorrelationIdentifier];

            [v16 addObject:v27];
            [v12 addObject:prefixedURI];
          }
        }

        v19 = [endpoints countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v19);
    }

    v7 = v42;
    inputCopy = v43;
    if ([v16 count])
    {
      firewallStore = [(IDSFirewallEndpointDonationComponent *)selfCopy firewallStore];
      service2 = [v43 service];
      v31 = [NSSet setWithObject:service2];
      [firewallStore addEntries:v16 forImpactedServices:v31 category:objc_msgSend(v42 isDonated:{"controlCategory"), objc_msgSend(v43, "wantsFirewallDonation")}];
    }

    v32 = +[IDSDServiceController sharedInstance];
    service3 = [v43 service];
    v34 = [v32 serviceWithIdentifier:service3];
    controlCategory = [v34 controlCategory];

    v36 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      guid = [v43 guid];
      *buf = 67109634;
      *v49 = controlCategory;
      *&v49[4] = 2112;
      *&v49[6] = guid;
      *&v49[14] = 2112;
      *&v49[16] = v16;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "IDSFirewall Update to category %u for GUID %@ addEntries %@", buf, 0x1Cu);
    }

    v11 = v41;
  }

  else
  {
    v12 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      guid2 = [inputCopy guid];
      if ([inputCopy wantsFirewallDonation])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138413058;
      if ([v7 disallowFirewallAutoEnroll])
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      *v49 = guid2;
      *&v49[8] = 2112;
      *&v49[10] = v14;
      *&v49[18] = 2112;
      *&v49[20] = v15;
      v50 = 2112;
      v51 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSFirewall GUID %@ Not donating to the firewall { wantsFirewallDonation: %@, disallowFirewallAutoEnroll: %@, command: %@", buf, 0x2Au);
    }
  }

  v38 = [CUTUnsafePromise fulfilledPromiseWithValue:inputCopy];

  return v38;
}

@end