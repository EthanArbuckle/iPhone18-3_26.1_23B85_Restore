@interface IDSMadridEndpointFilterComponent
- (id)runIndividuallyWithInput:(id)a3;
- (void)addTokenURI:(id)a3 forProperty:(id)a4 toRegistrationPropertyToDestinationsMap:(id)a5;
@end

@implementation IDSMadridEndpointFilterComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v3 = a3;
  v79 = objc_alloc_init(NSMutableArray);
  v91 = objc_alloc_init(NSMutableDictionary);
  v80 = objc_alloc_init(NSMutableArray);
  v81 = objc_alloc_init(NSMutableDictionary);
  v83 = objc_alloc_init(NSMutableDictionary);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = [v3 endpoints];
  v89 = v3;
  v85 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
  if (v85)
  {
    v84 = *v121;
    do
    {
      for (i = 0; i != v85; i = v45 + 1)
      {
        if (*v121 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v88 = i;
        v5 = *(*(&v120 + 1) + 8 * i);
        v6 = [v5 pushTokenObject];
        v86 = [v5 URI];
        v87 = v6;
        v7 = [v86 URIByAddingPushToken:v6];
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v8 = [v3 registrationProperties];
        v9 = [v8 interesting];

        v10 = [v9 countByEnumeratingWithState:&v116 objects:v137 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v117;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v117 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v116 + 1) + 8 * j);
              v15 = [v5 capabilities];
              v16 = [v15 valueForCapability:v14];

              if (v16 < 1)
              {
                v17 = +[IDSFoundationLog delivery];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = [v3 guid];
                  *buf = 138412802;
                  v132 = v18;
                  v133 = 2112;
                  v134 = v7;
                  v135 = 2112;
                  v136 = v14;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "GUID %@ Destination %@ lacks interesting property %@", buf, 0x20u);
                }
              }

              else
              {
                [(IDSMadridEndpointFilterComponent *)self addTokenURI:v7 forProperty:v14 toRegistrationPropertyToDestinationsMap:v91];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v116 objects:v137 count:16];
          }

          while (v11);
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v19 = [v3 registrationProperties];
        v20 = [v19 requireAll];

        v21 = [v20 countByEnumeratingWithState:&v112 objects:v130 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v113;
          v24 = 1;
          do
          {
            for (k = 0; k != v22; k = k + 1)
            {
              if (*v113 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v112 + 1) + 8 * k);
              v27 = [v5 capabilities];
              v28 = [v27 valueForCapability:v26];

              if (v28 < 1)
              {
                v29 = +[IDSFoundationLog delivery];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v89 guid];
                  *buf = 138412802;
                  v132 = v30;
                  v133 = 2112;
                  v134 = v7;
                  v135 = 2112;
                  v136 = v26;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "GUID %@ Destination %@ lacks required property %@", buf, 0x20u);
                }

                v24 = 0;
              }

              else
              {
                [(IDSMadridEndpointFilterComponent *)self addTokenURI:v7 forProperty:v26 toRegistrationPropertyToDestinationsMap:v91];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v112 objects:v130 count:16];
          }

          while (v22);
        }

        else
        {
          v24 = 1;
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v31 = [v89 registrationProperties];
        v32 = [v31 lackAll];

        v33 = [v32 countByEnumeratingWithState:&v108 objects:v129 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v109;
          do
          {
            for (m = 0; m != v34; m = m + 1)
            {
              if (*v109 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v108 + 1) + 8 * m);
              v38 = [v5 capabilities];
              v39 = [v38 valueForCapability:v37];

              if (v39 >= 1)
              {
                v40 = +[IDSFoundationLog delivery];
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = [v89 guid];
                  *buf = 138412802;
                  v132 = v41;
                  v133 = 2112;
                  v134 = v7;
                  v135 = 2112;
                  v136 = v37;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "GUID %@ Destination %@ has property %@ we do not want", buf, 0x20u);
                }

                [(IDSMadridEndpointFilterComponent *)self addTokenURI:v7 forProperty:v37 toRegistrationPropertyToDestinationsMap:v91];
                v24 = 0;
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v108 objects:v129 count:16];
          }

          while (v34);
        }

        if (v24)
        {
          v42 = v87;
          v43 = [v83 objectForKey:v87];
          v3 = v89;
          v44 = v86;
          if (!v43)
          {
            v43 = objc_alloc_init(NSMutableSet);
            [v83 setObject:v43 forKey:v87];
          }

          v45 = v88;
          if (![v43 count] || (objc_msgSend(v89, "sendOnePerToken") & 1) == 0 && (objc_msgSend(v43, "containsObject:", v86) & 1) == 0)
          {
            if (v86)
            {
              [v43 addObject:v86];
            }

            [v79 addObject:v5];
            v46 = [v81 objectForKey:v86];
            if (!v46)
            {
              v46 = objc_alloc_init(NSMutableArray);
              if (v86)
              {
                [v81 setObject:v46 forKey:v86];
              }
            }

            if (v87)
            {
              [v46 addObject:v87];
            }
          }
        }

        else
        {
          v45 = v88;
          v3 = v89;
          v44 = v86;
          v42 = v87;
          if (v7)
          {
            [v80 addObject:v7];
          }
        }
      }

      v85 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
    }

    while (v85);
  }

  [v3 setEndpoints:v79];
  v47 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [v3 guid];
    *buf = 138412290;
    v132 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "GUID %@ finished token filtering", buf, 0xCu);
  }

  v49 = [v3 guid];
  v50 = [v49 copy];

  v51 = [v81 debugDescription];
  v102 = _NSConcreteStackBlock;
  v103 = 3221225472;
  v104 = sub_10061BE7C;
  v105 = &unk_100BD6E40;
  v52 = v50;
  v106 = v52;
  v53 = v51;
  v107 = v53;
  cut_dispatch_log_queue();
  if ([v80 count])
  {
    v54 = [v80 debugDescription];
    v96 = _NSConcreteStackBlock;
    v97 = 3221225472;
    v98 = sub_10061BF38;
    v99 = &unk_100BD6E40;
    v100 = v52;
    v101 = v54;
    v55 = v54;
    cut_dispatch_log_queue();
  }

  v56 = objc_alloc_init(NSMutableArray);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v57 = v79;
  v58 = [v57 countByEnumeratingWithState:&v92 objects:v128 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v93;
    do
    {
      for (n = 0; n != v59; n = n + 1)
      {
        if (*v93 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v92 + 1) + 8 * n);
        v63 = [v62 URI];
        v64 = [v62 pushTokenObject];
        v65 = [v63 URIByAddingPushToken:v64];

        if (v65)
        {
          [v56 addObject:v65];
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v92 objects:v128 count:16];
    }

    while (v59);
  }

  v66 = [v89 willSendBlock];
  v67 = v66;
  if (v66)
  {
    (*(v66 + 16))(v66, v56, v80, v91);
  }

  if ([v57 count])
  {
    v68 = v89;
    v69 = [CUTUnsafePromise fulfilledPromiseWithValue:v89];
  }

  else
  {
    v70 = [v80 count];
    v71 = [NSError alloc];
    v72 = IDSSendErrorDomain;
    if (v70)
    {
      v126 = @"IDSPipelineParameter";
      v127 = v89;
      v73 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
      v74 = v71;
      v75 = v72;
      v76 = 28;
    }

    else
    {
      v124 = @"IDSPipelineParameter";
      v125 = v89;
      v73 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      v74 = v71;
      v75 = v72;
      v76 = 1;
    }

    v77 = [v74 initWithDomain:v75 code:v76 userInfo:v73];

    v69 = [CUTUnsafePromise failedPromiseWithError:v77];

    v68 = v89;
  }

  return v69;
}

- (void)addTokenURI:(id)a3 forProperty:(id)a4 toRegistrationPropertyToDestinationsMap:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 objectForKey:v7];
  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableArray);
    [v8 setObject:v9 forKey:v7];
  }

  if (v10)
  {
    [v9 addObject:v10];
  }
}

@end