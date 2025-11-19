@interface IDSFirewallEndpointDonationComponent
- (BOOL)isCommandExcluded:(id)a3 forService:(id)a4;
- (IDSFirewallEndpointDonationComponent)initWithServiceController:(id)a3 firewallStore:(id)a4;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IDSFirewallEndpointDonationComponent

- (IDSFirewallEndpointDonationComponent)initWithServiceController:(id)a3 firewallStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSFirewallEndpointDonationComponent;
  v9 = [(IDSFirewallEndpointDonationComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceController, a3);
    objc_storeStrong(&v10->_firewallStore, a4);
  }

  return v10;
}

- (BOOL)isCommandExcluded:(id)a3 forService:(id)a4
{
  v5 = a3;
  v6 = [a4 identifier];
  if (![v6 isEqualToIgnoringCase:IDSServiceNameFaceTimeMulti])
  {

    goto LABEL_5;
  }

  v7 = [v5 integerValue];

  if (v7 == 207)
  {
LABEL_5:
    v8 = [v5 integerValue] == 249;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(IDSFirewallEndpointDonationComponent *)self serviceController];
  v6 = [v4 service];
  v7 = [v5 serviceWithIdentifier:v6];

  if ([v7 disallowFirewallAutoEnroll])
  {
    v8 = [v4 wantsFirewallDonation];
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 messageToSend];
  v10 = [v9 additionalDictionary];
  v11 = [v10 objectForKeyedSubscript:@"c"];

  if (v8 && IDSCommandIsUserInteractiveCommand() && ![(IDSFirewallEndpointDonationComponent *)self isCommandExcluded:v11 forService:v7])
  {
    v40 = self;
    v41 = v11;
    v42 = v7;
    v12 = objc_alloc_init(NSMutableSet);
    v16 = objc_alloc_init(NSMutableArray);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = v4;
    v17 = [v4 endpoints];
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v22 URI];
          v24 = [v23 prefixedURI];

          if (([v12 containsObject:v24]& 1) == 0)
          {
            v25 = [IDSFirewallEntry alloc];
            v26 = [v22 URI];
            v27 = [v25 initWithURI:v26 andLastSeenDate:0];

            v28 = [v22 senderCorrelationIdentifier];
            [v27 setMergeID:v28];

            [v16 addObject:v27];
            [v12 addObject:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v19);
    }

    v7 = v42;
    v4 = v43;
    if ([v16 count])
    {
      v29 = [(IDSFirewallEndpointDonationComponent *)v40 firewallStore];
      v30 = [v43 service];
      v31 = [NSSet setWithObject:v30];
      [v29 addEntries:v16 forImpactedServices:v31 category:objc_msgSend(v42 isDonated:{"controlCategory"), objc_msgSend(v43, "wantsFirewallDonation")}];
    }

    v32 = +[IDSDServiceController sharedInstance];
    v33 = [v43 service];
    v34 = [v32 serviceWithIdentifier:v33];
    v35 = [v34 controlCategory];

    v36 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v43 guid];
      *buf = 67109634;
      *v49 = v35;
      *&v49[4] = 2112;
      *&v49[6] = v37;
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
      v13 = [v4 guid];
      if ([v4 wantsFirewallDonation])
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

      *v49 = v13;
      *&v49[8] = 2112;
      *&v49[10] = v14;
      *&v49[18] = 2112;
      *&v49[20] = v15;
      v50 = 2112;
      v51 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSFirewall GUID %@ Not donating to the firewall { wantsFirewallDonation: %@, disallowFirewallAutoEnroll: %@, command: %@", buf, 0x2Au);
    }
  }

  v38 = [CUTUnsafePromise fulfilledPromiseWithValue:v4];

  return v38;
}

@end