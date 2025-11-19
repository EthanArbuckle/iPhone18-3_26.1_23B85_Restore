@interface BCSBusinessItem
+ (id)businessItemsFromChatSuggestJSONObj:(id)a3;
+ (id)businessItemsFromChatSuggestMessageDictionary:(id)a3;
+ (id)businessItemsFromRecords:(id)a3;
- (BCSBusinessItem)initWithBizID:(id)a3 phoneNumber:(id)a4 name:(id)a5 phoneHash:(int64_t)a6 squareLogoURL:(id)a7 wideLogoURL:(id)a8 tintColor:(unint64_t)a9 backgroundColor:(unint64_t)a10 callToActions:(id)a11 messagingOpenHours:(id)a12 callingOpenHours:(id)a13 isVerified:(BOOL)a14 intentID:(id)a15 groupID:(id)a16 visibilityItems:(id)a17;
- (BCSBusinessItem)initWithChatSuggestMessage:(id)a3 bucketID:(id)a4;
- (BCSBusinessItem)initWithCoder:(id)a3;
- (BCSBusinessItem)initWithJSONObj:(id)a3;
- (BCSBusinessItemIdentifier)_businessItemIdentifier;
- (BOOL)_isChatSuggestVisibleForVisibilityItem:(id)a3 messagesIdentifier:(id)a4 bizID:(id)a5;
- (BOOL)isAvailableForCalling;
- (BOOL)isAvailableForMessaging;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSDate)dateWhenCallingAvailableNext;
- (NSDate)dateWhenMessagingAvailableNext;
- (NSString)callSubtitle;
- (NSString)messageSubtitle;
- (NSString)messageTitle;
- (NSURL)messagesOpenURL;
- (id)_availableNextStringFromAvailableNextDate:(uint64_t)a1;
- (id)_escapedVersionOfInputString:(void *)a1;
- (id)_selectedVisibilityItemForLanguage:(id)a3 country:(id)a4;
- (id)callToAction;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (unint64_t)_integerForHexString:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSBusinessItem

- (BCSBusinessItem)initWithChatSuggestMessage:(id)a3 bucketID:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 chatOpenHours];
  v7 = [v6 count];

  v8 = [v5 phoneOpenHours];
  v9 = [v8 count];

  if (v7)
  {
    v10 = [BCSOpenHours alloc];
    v11 = [v5 chatOpenHours];
    v12 = [v11 firstObject];
    v13 = [v5 timeZone];
    v53 = [(BCSOpenHours *)v10 initWithHoursPeriodMessage:v12 timeZone:v13];

    if (v9)
    {
LABEL_3:
      v14 = [BCSOpenHours alloc];
      v15 = [v5 phoneOpenHours];
      v16 = [v15 firstObject];
      v17 = [v5 timeZone];
      v52 = [(BCSOpenHours *)v14 initWithHoursPeriodMessage:v16 timeZone:v17];

      goto LABEL_6;
    }
  }

  else
  {
    v53 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v52 = 0;
LABEL_6:
  v18 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v19 = [v5 callToActions];
  v20 = [v19 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v59;
    do
    {
      v23 = 0;
      do
      {
        if (*v59 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[BCSCallToActionItem alloc] initWithCallToAction:*(*(&v58 + 1) + 8 * v23)];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v21);
  }

  v25 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v26 = [v5 visibilities];
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v55;
    do
    {
      v30 = 0;
      do
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [[BCSVisibilityItem alloc] initWithVisibility:*(*(&v54 + 1) + 8 * v30)];
        [v25 addObject:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v28);
  }

  v32 = [v5 tintColor];
  v51 = [(BCSBusinessItem *)self _integerForHexString:v32];

  v33 = [v5 backgroundColor];
  v49 = [(BCSBusinessItem *)self _integerForHexString:v33];

  v34 = MEMORY[0x277CBEBC0];
  v35 = [v5 squareLogoUrl];
  v48 = [v34 URLWithString:v35];

  v36 = MEMORY[0x277CBEBC0];
  v37 = [v5 wideLogoUrl];
  v47 = [v36 URLWithString:v37];

  v38 = [v5 bizId];
  v39 = [v5 name];
  v40 = [v5 phoneHash];
  v41 = [v5 isVerified];
  v42 = [v5 intentId];
  v43 = [v5 group];
  LOBYTE(v46) = v41;
  v50 = [(BCSBusinessItem *)self initWithBizID:v38 phoneNumber:&stru_28544C2A0 name:v39 phoneHash:v40 squareLogoURL:v48 wideLogoURL:v47 tintColor:v51 backgroundColor:v49 callToActions:v18 messagingOpenHours:v53 callingOpenHours:v52 isVerified:v46 intentID:v42 groupID:v43 visibilityItems:v25];

  v44 = *MEMORY[0x277D85DE8];
  return v50;
}

+ (id)businessItemsFromChatSuggestJSONObj:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"records"];
  v24 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v7 = @"message";
    v8 = 0x277CBE000uLL;
    do
    {
      v9 = 0;
      v25 = v5;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v28 + 1) + 8 * v9) objectForKeyedSubscript:0x28544DD80];
        v11 = [v10 objectForKeyedSubscript:v7];
        if (v11 && (v12 = *(v8 + 2752), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = v7;
          v14 = v6;
          v15 = [v11 objectForKeyedSubscript:@"value"];
          v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
          v17 = [[BCSChatSuggestMessage alloc] initWithData:v16];
          v18 = [BCSBusinessItem alloc];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", -[BCSChatSuggestMessage phoneHash](v17, "phoneHash")];
          v20 = [(BCSBusinessItem *)v18 initWithChatSuggestMessage:v17 bucketID:v19];

          if (v20)
          {
            [v24 addObject:v20];
          }

          else
          {
            v21 = ABSLogCommon();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_242072000, v21, OS_LOG_TYPE_ERROR, "BCSBusinessItemFromChatSuggestJSONObj: BusinessItem object didn't initialize correctly", buf, 2u);
            }
          }

          v6 = v14;
          v7 = v13;
          v5 = v25;
          v8 = 0x277CBE000;
        }

        else
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "BCSBusinessItemFromChatSuggestJSONObj: Message object is not a dictionary or not initialized", buf, 2u);
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)businessItemsFromChatSuggestMessageDictionary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = a3;
  [v20 objectForKeyedSubscript:@"records"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v26;
    v7 = 0x277CBE000uLL;
    v21 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v25 + 1) + 8 * i) objectForKeyedSubscript:0x28544DD80];
        v10 = [v9 objectForKeyedSubscript:@"message"];
        if (v10)
        {
          v11 = *(v7 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v10 objectForKeyedSubscript:@"value"];
            v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v24 options:0];
            v12 = [[BCSChatSuggestMessage alloc] initWithData:v23];
            v13 = v4;
            v14 = v5;
            v15 = [BCSBusinessItem alloc];
            v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BCSChatSuggestMessage phoneHash](v12, "phoneHash")}];
            v17 = [v16 stringValue];
            v5 = [(BCSBusinessItem *)v15 initWithChatSuggestMessage:v12 bucketID:v17];

            v4 = v13;
            v7 = 0x277CBE000;

            v6 = v21;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)businessItemsFromRecords:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v21 + 1) + 8 * v8) objectForKeyedSubscript:@"message"];
        v10 = [[BCSChatSuggestMessage alloc] initWithData:v9];
        v11 = [BCSBusinessItem alloc];
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[BCSChatSuggestMessage phoneHash](v10, "phoneHash")}];
        v13 = [v12 stringValue];
        v14 = [(BCSBusinessItem *)v11 initWithChatSuggestMessage:v10 bucketID:v13];

        if (v14)
        {
          [v4 addObject:v14];
        }

        else
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "BCSBusinessItemFromRecords: BusinessItem object didn't initialize correctly", buf, 2u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSString)callSubtitle
{
  if ([(BCSBusinessItem *)self isAvailableForCalling]|| ([(BCSBusinessItem *)self dateWhenCallingAvailableNext], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v5 = 0;
  }

  else
  {
    v4 = [(BCSBusinessItem *)self dateWhenCallingAvailableNext];
    v5 = [(BCSBusinessItem *)self _availableNextStringFromAvailableNextDate:v4];
  }

  return v5;
}

- (id)_availableNextStringFromAvailableNextDate:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEAA8];
    v3 = a2;
    v4 = [v2 date];
    v33 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [(NSLocale *)v33 isDevice24HourTime];
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = +[BCSLocalizedStringProvider sharedInstance];
    v8 = v3;
    v9 = v7;
    v10 = @"h:mm a";
    if (v5)
    {
      v10 = @"H:mm";
    }

    v11 = MEMORY[0x277CCA968];
    v12 = v10;
    v13 = v6;
    v14 = v4;
    v15 = objc_alloc_init(v11);
    [v15 setDateFormat:v12];

    v32 = [v15 stringFromDate:v8];
    v16 = [v13 component:32 fromDate:v8];
    if (v5)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 % 12;
    }

    v18 = MEMORY[0x277CCA968];
    v19 = v8;
    v20 = v14;
    v21 = objc_alloc_init(v18);
    [v21 setDateFormat:@"EEEE"];
    v22 = [v21 stringFromDate:v20];
    v23 = [v21 stringFromDate:v19];
    [v19 timeIntervalSinceDate:v20];
    v25 = v24;

    v26 = [v23 isEqualToString:v22];
    if (v26 && fabs(v25) < 86400.0)
    {
      v27 = v32;
      if (v17 == 1)
      {
        [v9 willOpenAtSameDaySingularWithFormattedTime:v32];
      }

      else
      {
        [v9 willOpenAtSameDayPluralWithFormattedTime:v32];
      }
      v30 = ;
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v28 setDateFormat:@"EEEE"];
      v29 = [v28 stringFromDate:v19];
      v27 = v32;
      if (v17 == 1)
      {
        [v9 willOpenAtDifferentDaySingularWithFormattedTime:v32 formattedDay:v29];
      }

      else
      {
        [v9 willOpenAtDifferentDayPluralWithFormattedTime:v32 formattedDay:v29];
      }
      v30 = ;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (NSString)messageTitle
{
  v3 = [(BCSBusinessItem *)self callToAction];
  v4 = [v3 title];
  if ([v4 length])
  {
    v5 = [(BCSBusinessItem *)self callToAction];
    [v5 title];
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v5 localizedStringForKey:@"CHAT_NOW" value:&stru_28544C2A0 table:0];
  }
  v6 = ;

  return v6;
}

- (NSString)messageSubtitle
{
  if ([(BCSBusinessItem *)self isAvailableForMessaging])
  {
    v3 = [(BCSBusinessItem *)self callToAction];
    v4 = [v3 subtitle];
LABEL_5:
    v6 = v4;

    goto LABEL_6;
  }

  v5 = [(BCSBusinessItem *)self dateWhenMessagingAvailableNext];

  if (v5)
  {
    v3 = [(BCSBusinessItem *)self dateWhenMessagingAvailableNext];
    v4 = [(BCSBusinessItem *)self _availableNextStringFromAvailableNextDate:v3];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BCSBusinessItem)initWithBizID:(id)a3 phoneNumber:(id)a4 name:(id)a5 phoneHash:(int64_t)a6 squareLogoURL:(id)a7 wideLogoURL:(id)a8 tintColor:(unint64_t)a9 backgroundColor:(unint64_t)a10 callToActions:(id)a11 messagingOpenHours:(id)a12 callingOpenHours:(id)a13 isVerified:(BOOL)a14 intentID:(id)a15 groupID:(id)a16 visibilityItems:(id)a17
{
  v58 = a3;
  v21 = a4;
  v22 = a5;
  v57 = a7;
  v56 = a8;
  v55 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v59.receiver = self;
  v59.super_class = BCSBusinessItem;
  v28 = [(BCSItem *)&v59 init];
  if (v28)
  {
    v29 = [v58 prefixedBizID];
    v30 = [v29 copy];
    bizID = v28->_bizID;
    v28->_bizID = v30;

    v32 = [v21 copy];
    phoneNumber = v28->_phoneNumber;
    v28->_phoneNumber = v32;

    v34 = [v22 copy];
    name = v28->_name;
    v28->_name = v34;

    v28->_phoneHash = a6;
    v36 = [v57 copy];
    squareLogoURL = v28->_squareLogoURL;
    v28->_squareLogoURL = v36;

    v38 = [v56 copy];
    wideLogoURL = v28->_wideLogoURL;
    v28->_wideLogoURL = v38;

    v28->_tintColor = a9;
    v28->_backgroundColor = a10;
    v40 = [v55 copy];
    callToActions = v28->_callToActions;
    v28->_callToActions = v40;

    v42 = [v23 copy];
    messagingOpenHours = v28->_messagingOpenHours;
    v28->_messagingOpenHours = v42;

    v44 = [v24 copy];
    callingOpenHours = v28->_callingOpenHours;
    v28->_callingOpenHours = v44;

    v28->_isVerified = a14;
    v46 = [v25 copy];
    intentID = v28->_intentID;
    v28->_intentID = v46;

    v48 = [v26 copy];
    groupID = v28->_groupID;
    v28->_groupID = v48;

    v50 = [v27 copy];
    visibilityItems = v28->_visibilityItems;
    v28->_visibilityItems = v50;
  }

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = BCSBusinessItem;
  v4 = [(BCSBusinessItem *)&v9 description];
  v5 = [(BCSBusinessItem *)self bizID];
  v6 = [(BCSBusinessItem *)self name];
  v7 = [v3 stringWithFormat:@"%@ - bizID:%@ - name:%@", v4, v5, v6];

  return v7;
}

- (id)debugDescription
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = MEMORY[0x277CCACA8];
  v39 = [(BCSBusinessItem *)self bizID];
  v38 = [(BCSBusinessItem *)self name];
  v29 = [(BCSBusinessItem *)self phoneHash];
  v35 = [(BCSBusinessItem *)self squareLogoURL];
  v37 = [v35 absoluteString];
  v34 = [(BCSBusinessItem *)self wideLogoURL];
  v36 = [v34 absoluteString];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lX", -[BCSBusinessItem tintColor](self, "tintColor")];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%lX", -[BCSBusinessItem backgroundColor](self, "backgroundColor")];
  v28 = [(BCSBusinessItem *)self callToAction];
  v27 = [v28 language];
  v26 = [(BCSBusinessItem *)self callToAction];
  v25 = [v26 title];
  v24 = [(BCSBusinessItem *)self callToAction];
  v23 = [v24 subtitle];
  v22 = [(BCSBusinessItem *)self messagingOpenHours];
  v21 = [v22 debugDescription];
  v20 = [(BCSBusinessItem *)self callingOpenHours];
  v19 = [v20 debugDescription];
  v16 = [(BCSBusinessItem *)self isVerified];
  v18 = [(BCSBusinessItem *)self groupID];
  v17 = [(BCSBusinessItem *)self intentID];
  if (self)
  {
    v3 = [(BCSBusinessItem *)self visibilityItems];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v41;
      v7 = &stru_28544C2A0;
      do
      {
        v8 = 0;
        v9 = v7;
        do
        {
          if (*v41 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = MEMORY[0x277CCACA8];
          v11 = [*(*(&v40 + 1) + 8 * v8) description];
          v12 = [v10 stringWithFormat:@"Visibility %@\n", v11];
          v7 = [(__CFString *)v9 stringByAppendingString:v12];

          ++v8;
          v9 = v7;
        }

        while (v5 != v8);
        v5 = [v3 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = &stru_28544C2A0;
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = @"NO";
  if (v16)
  {
    v13 = @"YES";
  }

  v32 = [v31 stringWithFormat:@"ID : %@\nName : %@\nBucket ID: %lld\nSquare Logo URL : %@\nWide Logo URL : %@\nTint color : %@\nBackground color: %@\nCall to Action (%@) : %@ - %@\nMessaging Open Hours:\n%@\nCalling Open Hours:\n%@\nVerified : %@\nGroup ID : %@\nIntent ID : %@\nConfigured Visibility Items : \n%@\n", v39, v38, v29, v37, v36, v33, v30, v27, v25, v23, v21, v19, v13, v18, v17, v7];

  v14 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSBusinessItem *)self bizID];
    v7 = [v6 copyWithZone:a3];
    v8 = *(v5 + 16);
    *(v5 + 16) = v7;

    v9 = [(BCSBusinessItem *)self phoneNumber];
    v10 = [v9 copyWithZone:a3];
    v11 = *(v5 + 24);
    *(v5 + 24) = v10;

    v12 = [(BCSBusinessItem *)self name];
    v13 = [v12 copyWithZone:a3];
    v14 = *(v5 + 32);
    *(v5 + 32) = v13;

    *(v5 + 40) = [(BCSBusinessItem *)self phoneHash];
    v15 = [(BCSBusinessItem *)self squareLogoURL];
    v16 = [v15 copyWithZone:a3];
    v17 = *(v5 + 48);
    *(v5 + 48) = v16;

    v18 = [(BCSBusinessItem *)self wideLogoURL];
    v19 = [v18 copyWithZone:a3];
    v20 = *(v5 + 56);
    *(v5 + 56) = v19;

    *(v5 + 64) = [(BCSBusinessItem *)self tintColor];
    *(v5 + 72) = [(BCSBusinessItem *)self backgroundColor];
    v21 = [(BCSBusinessItem *)self callToActions];
    v22 = [v21 copyWithZone:a3];
    v23 = *(v5 + 80);
    *(v5 + 80) = v22;

    v24 = [(BCSBusinessItem *)self messagingOpenHours];
    v25 = [v24 copyWithZone:a3];
    v26 = *(v5 + 96);
    *(v5 + 96) = v25;

    v27 = [(BCSBusinessItem *)self callingOpenHours];
    v28 = [v27 copyWithZone:a3];
    v29 = *(v5 + 104);
    *(v5 + 104) = v28;

    *(v5 + 112) = [(BCSBusinessItem *)self isVerified];
    v30 = [(BCSBusinessItem *)self intentID];
    v31 = *(v5 + 120);
    *(v5 + 120) = v30;

    v32 = [(BCSBusinessItem *)self groupID];
    v33 = *(v5 + 128);
    *(v5 + 128) = v32;

    v34 = [(BCSBusinessItem *)self visibilityItems];
    v35 = [v34 copyWithZone:a3];
    v36 = *(v5 + 88);
    *(v5 + 88) = v35;
  }

  return v5;
}

- (BOOL)isAvailableForMessaging
{
  v3 = [MEMORY[0x277CBEAA8] date];
  if (self)
  {
    v4 = [(BCSBusinessItem *)self messagingOpenHours];

    if (v4)
    {
      v5 = [(BCSBusinessItem *)self messagingOpenHours];
      LOBYTE(self) = [v5 isOpenAtDate:v3];
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (NSDate)dateWhenMessagingAvailableNext
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = v3;
  if (self)
  {
    v5 = v3;
    v6 = [(BCSBusinessItem *)self messagingOpenHours];
    self = [v6 dateWhenOpenNextAfterDate:v5];
  }

  return self;
}

- (BOOL)isAvailableForCalling
{
  v3 = [MEMORY[0x277CBEAA8] date];
  if (self)
  {
    v4 = [(BCSBusinessItem *)self callingOpenHours];

    if (v4)
    {
      v5 = [(BCSBusinessItem *)self callingOpenHours];
      LOBYTE(self) = [v5 isOpenAtDate:v3];
    }

    else
    {
      LOBYTE(self) = 1;
    }
  }

  return self;
}

- (NSDate)dateWhenCallingAvailableNext
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = v3;
  if (self)
  {
    v5 = v3;
    v6 = [(BCSBusinessItem *)self callingOpenHours];
    self = [v6 dateWhenOpenNextAfterDate:v5];
  }

  return self;
}

- (NSURL)messagesOpenURL
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BCSBusinessItem *)self bizID];
  v5 = [v4 prefixedBizID];
  if (self)
  {
    v6 = [(BCSBusinessItem *)self intentID];
    v7 = [v6 length];

    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [(BCSBusinessItem *)self intentID];
      v10 = [BCSBusinessItem _escapedVersionOfInputString:v9];
      v11 = [v8 stringWithFormat:@"&biz-intent-id=%@", v10];
      v12 = [&stru_28544C2A0 stringByAppendingString:v11];
    }

    else
    {
      v12 = &stru_28544C2A0;
    }

    v13 = [(BCSBusinessItem *)self groupID];
    v14 = [v13 length];

    if (v14)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [(BCSBusinessItem *)self groupID];
      v17 = [BCSBusinessItem _escapedVersionOfInputString:v16];
      v18 = [v15 stringWithFormat:@"&biz-group-id=%@", v17];
      v19 = [(__CFString *)v12 stringByAppendingString:v18];

      v12 = v19;
    }

    v20 = [(BCSBusinessItem *)self callToAction];
    v21 = [v20 body];
    v22 = [v21 length];

    if (v22)
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [(BCSBusinessItem *)self callToAction];
      v25 = [v24 body];
      v26 = [BCSBusinessItem _escapedVersionOfInputString:v25];
      v27 = [v23 stringWithFormat:@"&body=%@", v26];
      v28 = [(__CFString *)v12 stringByAppendingString:v27];

      v12 = v28;
    }
  }

  else
  {
    v12 = 0;
  }

  v29 = [v3 stringWithFormat:@"messages://open?service=iMessage&recipient=%@%@", v5, v12];

  v30 = [MEMORY[0x277CBEBC0] URLWithString:v29];

  return v30;
}

- (id)_escapedVersionOfInputString:(void *)a1
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 alphanumericCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  return v4;
}

- (id)itemIdentifier
{
  v2 = [(BCSBusinessItem *)self _businessItemIdentifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSBusinessItem *)self _businessItemIdentifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSBusinessItem *)self _businessItemIdentifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessItem *)self _businessItemIdentifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (BCSBusinessItemIdentifier)_businessItemIdentifier
{
  itemIdentifier = self->_itemIdentifier;
  if (!itemIdentifier)
  {
    v4 = [BCSBusinessItemIdentifier identifierWithBusinessItem:?];
    v5 = self->_itemIdentifier;
    self->_itemIdentifier = v4;

    itemIdentifier = self->_itemIdentifier;
  }

  return itemIdentifier;
}

- (id)callToAction
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[NSLocale currentLanguage];
  if (self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(BCSBusinessItem *)self callToActions];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 language];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            v14 = v10;

            goto LABEL_16;
          }

          if ([v10 isDefault])
          {
            v13 = v10;

            v7 = v13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

    v7 = v7;
    v14 = v7;
LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_isChatSuggestVisibleForVisibilityItem:(id)a3 messagesIdentifier:(id)a4 bizID:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = a3;
  v8 = [a4 stringByAppendingString:a5];
  LOBYTE(a4) = [v7 isVisibleForDSID:v8];

  return a4;
}

- (id)_selectedVisibilityItemForLanguage:(id)a3 country:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v31 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(BCSBusinessItem *)self visibilityItems];
  v6 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (!v6)
  {
    v25 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v8 = *v34;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      v11 = [v10 language];
      v12 = [v11 lowercaseString];
      v13 = [v32 lowercaseString];
      v14 = [v12 isEqualToString:v13];

      v15 = [v10 country];
      v16 = [v15 lowercaseString];
      v17 = [v31 lowercaseString];
      v18 = [v16 isEqualToString:v17];

      v19 = [v10 language];
      v20 = [v19 isEqualToString:@"*"];

      v21 = [v10 country];
      v22 = [v21 isEqualToString:@"*"];

      v23 = v18 ^ 1;
      if (((v14 ^ 1) & 1) == 0 && (v23 & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v38 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
          v27 = "%s Selecting visibility item - equal language and country code";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v24 = v22 ^ 1;
      if (((v20 ^ 1) & 1) == 0 && (v24 & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v38 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
          v27 = "%s Selecting visibility item - language and country code are wildcard";
          goto LABEL_24;
        }

LABEL_25:

        v25 = v10;
        goto LABEL_26;
      }

      if (((v14 ^ 1 | v24) & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        v38 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
        v27 = "%s Selecting visibility item - equal language and country code is wildcard";
LABEL_24:
        _os_log_impl(&dword_242072000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
        goto LABEL_25;
      }

      if (((v20 ^ 1 | v23) & 1) == 0)
      {
        v26 = ABSLogCommon();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        v38 = "[BCSBusinessItem _selectedVisibilityItemForLanguage:country:]";
        v27 = "%s Selecting visibility item - wildcard language and country code is equal";
        goto LABEL_24;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    v25 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_26:

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  bizID = self->_bizID;
  v5 = a3;
  [v5 encodeObject:bizID forKey:@"kBCSBusinessItemBizIDCodingKey"];
  [v5 encodeObject:self->_phoneNumber forKey:@"kBCSBusinessItemPhoneNumberCodingKey"];
  [v5 encodeObject:self->_name forKey:@"kBCSBusinessItemNameCodingKey"];
  [v5 encodeInteger:self->_phoneHash forKey:@"kBCSBusinessItemBucketIDCodingKey"];
  [v5 encodeObject:self->_squareLogoURL forKey:@"kBCSBusinessItemSquareLogoURLCodingKey"];
  [v5 encodeObject:self->_wideLogoURL forKey:@"kBCSBusinessItemWideLogoURLCodingKey"];
  [v5 encodeInteger:self->_tintColor forKey:@"kBCSBusinessItemTintColorCodingKey"];
  [v5 encodeInteger:self->_backgroundColor forKey:@"kBCSBusinessItemBackgroundColorCodingKey"];
  [v5 encodeObject:self->_callToActions forKey:@"kBCSBusinessItemCallToActionCodingKey"];
  [v5 encodeObject:self->_messagingOpenHours forKey:@"kBCSBusinessItemMessagingOpenHoursCodingKey"];
  [v5 encodeObject:self->_callingOpenHours forKey:@"kBCSBusinessItemCallingOpenHoursCodingKey"];
  [v5 encodeBool:self->_isVerified forKey:@"kBCSBusinessItemIsVerifiedCodingKey"];
  [v5 encodeObject:self->_intentID forKey:@"kBCSBusinessItemIntentIDCodingKey"];
  [v5 encodeObject:self->_groupID forKey:@"kBCSBusinessItemGroupIDCodingKey"];
  [v5 encodeObject:self->_visibilityItems forKey:@"visibilityItems"];
}

- (BCSBusinessItem)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BCSBusinessItem;
  v5 = [(BCSItem *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemBizIDCodingKey"];
    bizID = v5->_bizID;
    v5->_bizID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemPhoneNumberCodingKey"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemNameCodingKey"];
    name = v5->_name;
    v5->_name = v10;

    v5->_phoneHash = [v4 decodeIntegerForKey:@"kBCSBusinessItemBucketIDCodingKey"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemSquareLogoURLCodingKey"];
    squareLogoURL = v5->_squareLogoURL;
    v5->_squareLogoURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemWideLogoURLCodingKey"];
    wideLogoURL = v5->_wideLogoURL;
    v5->_wideLogoURL = v14;

    v5->_tintColor = [v4 decodeIntegerForKey:@"kBCSBusinessItemTintColorCodingKey"];
    v5->_backgroundColor = [v4 decodeIntegerForKey:@"kBCSBusinessItemBackgroundColorCodingKey"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kBCSBusinessItemCallToActionCodingKey"];
    callToActions = v5->_callToActions;
    v5->_callToActions = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemMessagingOpenHoursCodingKey"];
    messagingOpenHours = v5->_messagingOpenHours;
    v5->_messagingOpenHours = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemCallingOpenHoursCodingKey"];
    callingOpenHours = v5->_callingOpenHours;
    v5->_callingOpenHours = v23;

    v5->_isVerified = [v4 decodeBoolForKey:@"kBCSBusinessItemIsVerifiedCodingKey"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemIntentIDCodingKey"];
    intentID = v5->_intentID;
    v5->_intentID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSBusinessItemGroupIDCodingKey"];
    groupID = v5->_groupID;
    v5->_groupID = v27;

    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"visibilityItems"];
    visibilityItems = v5->_visibilityItems;
    v5->_visibilityItems = v32;
  }

  return v5;
}

- (unint64_t)_integerForHexString:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAC80] scannerWithString:v3];
    [v4 scanHexInt:&v9];
    v5 = v9;
  }

  else
  {
    v6 = ABSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "BCSBusinessItem hex string length <= 0 - %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BCSBusinessItem)initWithJSONObj:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:0x28544DD80];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:0x28544F540];
      v48 = [v7 objectForKeyedSubscript:0x28544DD60];

      v8 = [v6 objectForKeyedSubscript:0x28544F560];
      v47 = [v8 objectForKeyedSubscript:0x28544DD60];

      v9 = [v6 objectForKeyedSubscript:0x28544F580];
      v38 = [v9 objectForKeyedSubscript:0x28544DD60];

      v10 = [v6 objectForKeyedSubscript:0x28544F5A0];
      v37 = [v10 objectForKeyedSubscript:0x28544DD60];

      v11 = [v6 objectForKeyedSubscript:0x28544F5E0];
      v45 = [v11 objectForKeyedSubscript:0x28544DD60];

      v12 = [v6 objectForKeyedSubscript:0x28544F5C0];
      v39 = [v12 objectForKeyedSubscript:0x28544DD60];

      v13 = [v6 objectForKeyedSubscript:0x28544F4E0];
      v41 = [v13 objectForKeyedSubscript:0x28544DD60];

      v14 = [v6 objectForKeyedSubscript:0x28544F500];
      v40 = [v14 objectForKeyedSubscript:0x28544DD60];

      v15 = [v6 objectForKeyedSubscript:0x28544E900];
      v46 = [v15 objectForKeyedSubscript:0x28544DD60];

      v44 = [v6 objectForKeyedSubscript:0x28544F600];
      v43 = [v6 objectForKeyedSubscript:0x28544F620];
      v36 = [(BCSBusinessItem *)self _integerForHexString:v41];
      v35 = [(BCSBusinessItem *)self _integerForHexString:v40];
      v42 = v4;
      v34 = [MEMORY[0x277CBEBC0] URLWithString:v48];
      v33 = [MEMORY[0x277CBEBC0] URLWithString:v47];
      v30 = [v39 BOOLValue];
      v28 = [[BCSOpenHours alloc] initWithJSONObj:v38 timeZone:v45];
      v27 = [[BCSOpenHours alloc] initWithJSONObj:v37 timeZone:v45];
      v32 = [v6 objectForKeyedSubscript:0x28544F4C0];
      v16 = [v32 objectForKeyedSubscript:0x28544DD60];
      v31 = [v6 objectForKeyedSubscript:0x28544C300];
      v17 = [v31 objectForKeyedSubscript:0x28544DD60];
      v29 = [v6 objectForKeyedSubscript:0x28544D8E0];
      v18 = [v29 objectForKeyedSubscript:0x28544DD60];
      v19 = [v46 longLongValue];
      v20 = [v6 objectForKeyedSubscript:0x28544F520];
      v21 = [v20 objectForKeyedSubscript:0x28544DD60];
      LOBYTE(v26) = v30;
      v22 = v19;
      v4 = v42;
      self = [(BCSBusinessItem *)self initWithBizID:v16 phoneNumber:v17 name:v18 phoneHash:v22 squareLogoURL:v34 wideLogoURL:v33 tintColor:v36 backgroundColor:v35 callToActions:v21 messagingOpenHours:v28 callingOpenHours:v27 isVerified:v26 intentID:v44 groupID:v43 visibilityItems:MEMORY[0x277CBEBF8]];

      v23 = self;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = ABSLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v24, OS_LOG_TYPE_ERROR, "BCSBusinessItem init JSON object is not dictionary", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

@end