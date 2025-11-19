@interface CHInteraction
- (CHInteraction)init;
- (void)deleteInteractionWithCall:(id)a3;
- (void)deleteInteractionWithCalls:(id)a3;
- (void)donateCallHistoryInteractionWithCall:(id)a3;
@end

@implementation CHInteraction

- (CHInteraction)init
{
  v6.receiver = self;
  v6.super_class = CHInteraction;
  v2 = [(CHInteraction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CSSearchableIndex);
    searchableIndex = v2->_searchableIndex;
    v2->_searchableIndex = v3;
  }

  return v2;
}

- (void)donateCallHistoryInteractionWithCall:(id)a3
{
  v65 = a3;
  context = objc_autoreleasePoolPush();
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"intent"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v65 uniqueId];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding interaction for call %{public}@", &buf, 0xCu);
  }

  v7 = [v65 serviceProvider];
  v62 = sub_1000264B0(v7);

  if (v62)
  {
    v61 = objc_alloc_init(CNContactStoreConfiguration);
    v59 = objc_alloc_init(CHFeatureFlags);
    if ([v59 junkFilteringEnabled])
    {
      [v61 setIncludeAcceptedIntroductions:1];
    }

    v8 = [CHContactProvider alloc];
    v9 = [[CNContactStore alloc] initWithConfiguration:v61];
    v58 = [v8 initWithDataSource:v9];

    v91[0] = CNContactIdentifierKey;
    v91[1] = CNContactPhoneNumbersKey;
    v91[2] = CNContactEmailAddressesKey;
    v10 = +[NSPersonNameComponents descriptorForUsedKeys];
    v91[3] = v10;
    v57 = [NSArray arrayWithObjects:v91 count:4];

    v90 = v65;
    v11 = [NSArray arrayWithObjects:&v90 count:1];
    v79 = 0;
    v64 = [v58 contactsByHandleForCalls:v11 keyDescriptors:v57 error:&v79];
    v56 = v79;

    if (v64)
    {
      v63 = objc_alloc_init(NSMutableArray);
      v12 = [v65 remoteParticipantHandles];
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v75 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v75 objects:v89 count:16];
      if (v13)
      {
        v14 = *v76;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v76 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v75 + 1) + 8 * i);
            if ([v16 type] - 4 >= 0xFFFFFFFFFFFFFFFELL)
            {
              v17 = [v64 objectForKeyedSubscript:v16];
              v18 = [v17 firstObject];

              v19 = [v65 isoCountryCode];
              v20 = sub_10002608C(v16, v18, v19);

              if (v18)
              {
                v21 = [NSPersonNameComponents componentsForContact:v18];
              }

              else
              {
                v21 = 0;
              }

              v22 = [INPerson alloc];
              v23 = [v18 identifier];
              LOBYTE(v55) = 0;
              v24 = [v22 initWithPersonHandle:v20 nameComponents:v21 displayName:0 image:0 contactIdentifier:v23 customIdentifier:0 isMe:v55];

              [v63 addObject:v24];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v75 objects:v89 count:16];
        }

        while (v13);
      }
    }

    else
    {
      if (!v56)
      {
        v63 = 0;
        goto LABEL_27;
      }

      v28 = +[CHLogServer sharedInstance];
      v12 = [v28 logHandleForDomain:"intent"];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100034974(v56, v12);
      }

      v63 = 0;
    }

LABEL_27:
    v29 = sub_10002661C([v65 ttyType]);
    v30 = sub_100026638([v65 mediaType]);
    v31 = objc_alloc_init(INStartCallIntentDonationMetadata);
    v32 = [v65 timeToEstablish];
    [v32 doubleValue];
    [v31 setTimeToEstablish:?];

    [v65 duration];
    [v31 setCallDuration:?];
    v33 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v65 callStatus]);
    [v31 setRecentCallStatus:v33];

    v34 = [v65 disconnectedCause];
    [v31 setDisconnectedReason:v34];

    v35 = [[INStartCallIntent alloc] initWithAudioRoute:0 destinationType:1 preferredCallProvider:v62 contacts:v63 recordTypeForRedialing:0 ttyType:v29 callCapability:v30];
    [v35 _setLaunchId:@"com.apple.InCallService"];
    [v35 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    v36 = [v65 notificationThreadIdentifier];
    [v35 setNotificationThreadIdentifier:v36];

    [v35 setDonationMetadata:v31];
    v37 = [[INInteraction alloc] initWithIntent:v35 response:0];
    v38 = [v65 interactionDateInterval];
    [v37 setDateInterval:v38];

    [v37 setDirection:{sub_100026510(objc_msgSend(v65, "callStatus"))}];
    v39 = [v65 uniqueId];
    [v37 setIdentifier:v39];

    [v37 setIntentHandlingStatus:3];
    if ([v65 callStatus] == 8)
    {
      location = 0;
      p_location = &location;
      v82 = 0x2050000000;
      v40 = qword_10005C130;
      v83 = qword_10005C130;
      if (!qword_10005C130)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v85 = sub_100025E5C;
        v86 = &unk_100051998;
        v87 = &location;
        sub_100025E5C(&buf);
        v40 = p_location[3];
      }

      v41 = v40;
      _Block_object_dispose(&location, 8);
      v42 = [v40 appIntentsStream];
      v43 = [v42 name];

      location = 0;
      p_location = &location;
      v82 = 0x2020000000;
      v44 = qword_10005C140;
      v83 = qword_10005C140;
      if (!qword_10005C140)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v85 = sub_100026028;
        v86 = &unk_100051998;
        v87 = &location;
        v45 = sub_100025EB4();
        v46 = dlsym(v45, "_DKKnowledgeStorageDidInsertEventsNotification");
        *(v87[1] + 3) = v46;
        qword_10005C140 = *(v87[1] + 3);
        v44 = p_location[3];
      }

      _Block_object_dispose(&location, 8);
      if (!v44)
      {
        sub_1000349EC();
        __break(1u);
      }

      v47 = *v44;
      v48 = v47;
      if (v43 && v47)
      {
        v49 = +[NSDistributedNotificationCenter defaultCenter];
        objc_initWeak(&location, v49);

        *&buf = 0;
        *(&buf + 1) = &buf;
        v85 = 0x3032000000;
        v86 = sub_10002576C;
        v87 = sub_10002577C;
        v88 = 0;
        v50 = +[NSDistributedNotificationCenter defaultCenter];
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_100025784;
        v69[3] = &unk_100051970;
        v70 = v65;
        objc_copyWeak(&v74, &location);
        p_buf = &buf;
        v71 = v48;
        v72 = v43;
        v51 = [v50 addObserverForName:v71 object:v72 queue:0 usingBlock:v69];
        v52 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v51;

        _Block_object_dispose(&buf, 8);
        objc_destroyWeak(&v74);

        objc_destroyWeak(&location);
      }
    }

    [v65 uniqueId];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000258F4;
    v66[3] = &unk_100051750;
    v68 = v67 = v37;
    v53 = v68;
    v54 = v37;
    [v54 donateInteractionWithCompletion:v66];

    v27 = v61;
    goto LABEL_38;
  }

  v25 = +[CHLogServer sharedInstance];
  v26 = [v25 logHandleForDomain:"intent"];

  v27 = v26;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100034A10(v26);
    v27 = v26;
  }

LABEL_38:

  objc_autoreleasePoolPop(context);
}

- (void)deleteInteractionWithCall:(id)a3
{
  if (a3)
  {
    v6 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v6 count:1];

    [(CHInteraction *)self deleteInteractionWithCalls:v5, v6];
  }
}

- (void)deleteInteractionWithCalls:(id)a3
{
  v4 = a3;
  v5 = @"com.apple.InCallService";
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100025D28;
  v15[3] = &unk_1000510F8;
  v6 = v4;
  v16 = v6;
  v7 = objc_retainBlock(v15);
  if ([v6 count])
  {
    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"intent"];

    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 count];
      *buf = 134218242;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing %lu donated interactions for bundle identifier %@", buf, 0x16u);
    }

    v12 = [(CHInteraction *)self searchableIndex];
    [v12 deleteInteractionsWithIdentifiers:v6 bundleID:v5 protectionClass:0 completionHandler:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v13 = +[CHLogServer sharedInstance];
    v14 = [v13 logHandleForDomain:"intent"];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing all donated interactions for bundle identifier %@", buf, 0xCu);
    }

    v12 = [(CHInteraction *)self searchableIndex];
    [v12 deleteAllInteractionsWithBundleID:v5 protectionClass:0 completionHandler:v7];
  }

LABEL_7:
}

@end