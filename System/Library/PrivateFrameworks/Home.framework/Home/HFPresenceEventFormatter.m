@interface HFPresenceEventFormatter
- (HFPresenceEventFormatter)initWithHome:(id)a3;
- (HFPresenceEventFormatter)initWithOptions:(id)a3;
- (HFTriggerNaturalLanguageOptions)options;
- (id)_formattedListForSelectedUsers:(id)a3 inHome:(id)a4;
- (id)stringForPresenceEvent:(id)a3;
- (id)stringForPresenceEventBuilder:(id)a3 actionsDescription:(id)a4;
@end

@implementation HFPresenceEventFormatter

- (HFPresenceEventFormatter)initWithHome:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFPresenceEventFormatter;
  v6 = [(HFPresenceEventFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
  }

  return v7;
}

- (HFPresenceEventFormatter)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 home];
  v6 = [(HFPresenceEventFormatter *)self initWithHome:v5];

  if (v6)
  {
    v6->_nameType = [v4 nameType];
    objc_storeWeak(&v6->_options, v4);
  }

  return v6;
}

- (id)stringForPresenceEvent:(id)a3
{
  v4 = a3;
  v5 = [[HFPresenceEventBuilder alloc] initWithEvent:v4];

  v6 = [(HFPresenceEventFormatter *)self stringForPresenceEventBuilder:v5];

  return v6;
}

- (id)stringForPresenceEventBuilder:(id)a3 actionsDescription:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v62 = MEMORY[0x277D85DD0];
  v63 = 3221225472;
  v64 = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke;
  v65 = &unk_277DF3568;
  v8 = v6;
  v66 = v8;
  v9 = [v8 activationGranularity];
  v10 = @"ActivationGranularityUser";
  if (v9)
  {
    v10 = &stru_2824B1A78;
  }

  if (v9 == 1)
  {
    v10 = @"ActivationGranularityHome";
  }

  v11 = v10;
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_2;
  v60 = &unk_277DF3568;
  v12 = v8;
  v61 = v12;
  v13 = [v12 locationEventType];
  v14 = @"Arriving";
  if (v13 != 1)
  {
    v14 = &stru_2824B1A78;
  }

  if (v13 == 2)
  {
    v14 = @"Leaving";
  }

  v15 = v14;
  v55[5] = MEMORY[0x277D85DD0];
  v55[6] = 3221225472;
  v55[7] = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_3;
  v55[8] = &unk_277DF3568;
  v56 = self;
  v16 = [(HFPresenceEventFormatter *)self style];
  if (v16 == 1)
  {
    v18 = @"HFPresenceEventActivationDescription";
  }

  else if (v16)
  {
    v18 = &stru_2824B1A78;
  }

  else
  {
    v17 = [(HFPresenceEventFormatter *)v56 nameType];
    v18 = @"HFPresenceTriggerNameFullSentence";
    if (v17 == 1)
    {
      v18 = @"HFPresenceTriggerName";
    }
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", v18, v11, v15];
  v20 = [v12 users];
  v21 = [v20 type];

  if (!v21)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_4;
    v55[3] = &unk_277DF3AE0;
    v55[4] = self;
    if (__77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_4(v55))
    {
      v28 = @"_CurrentUser";
    }

    else
    {
      v28 = @"_AllUsers";
    }

    goto LABEL_24;
  }

  v22 = [v12 users];
  v23 = [(HFPresenceEventFormatter *)self home];
  v24 = [v22 resolveSelectedUsersWithHome:v23];
  v25 = [v24 count];

  if (v25 == 2)
  {
    if (![v12 activationGranularity])
    {
      v29 = [v19 stringByAppendingString:@"_ListOfUsers"];

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_6;
      v47[3] = &unk_277DF3B08;
      v48 = v7;
      v49 = self;
      v50 = v12;
      v30 = _Block_copy(v47);

      v31 = v48;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v25 != 1)
  {
LABEL_26:
    v29 = [v19 stringByAppendingString:@"_NumberOfUsers"];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_7;
    aBlock[3] = &unk_277DF3B30;
    v45 = v7;
    v46 = v25;
    v30 = _Block_copy(aBlock);
    v31 = v45;
LABEL_29:

    goto LABEL_30;
  }

  v26 = [v12 users];
  v27 = [v26 type];

  if (v27 != 1)
  {
    v29 = [v19 stringByAppendingString:@"_SingleUser"];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_5;
    v51[3] = &unk_277DF3B08;
    v52 = v7;
    v53 = self;
    v54 = v12;
    v30 = _Block_copy(v51);

    v31 = v52;
    goto LABEL_29;
  }

  v28 = @"_CurrentUser";
LABEL_24:
  v29 = [v19 stringByAppendingString:v28];

  v30 = 0;
LABEL_30:
  if ([v7 length] && -[HFPresenceEventFormatter nameType](self, "nameType") == 2)
  {
    v32 = [v29 stringByAppendingString:@"_WithAction"];

    if (!v30)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_8;
      v42[3] = &unk_277DF3B58;
      v43 = v7;
      v30 = _Block_copy(v42);
    }
  }

  else
  {
    v32 = v29;
  }

  v33 = _HFLocalizedStringWithDefaultValue(@"HFUnknownLocationTriggerName", @"HFUnknownLocationTriggerName", 1);
  v34 = HFLocalizedStringWithFormatterBlock(v32, v33, v30);
  if ([v34 isEqualToString:v33])
  {
    v35 = HFLogForCategory(0x31uLL);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      *buf = 138412546;
      v68 = v41;
      v69 = 2112;
      v70 = v32;
      _os_log_error_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_ERROR, "%@: failed to localize string with key: %@", buf, 0x16u);
    }
  }

  if (![(HFPresenceEventFormatter *)self nameType])
  {
    v36 = MEMORY[0x277CD1EC0];
    v37 = [(HFPresenceEventFormatter *)self home];
    v38 = [v36 hf_sanitizeTriggerName:v34 home:v37];

    v34 = v38;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v34;
}

__CFString *__77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activationGranularity];
  v2 = &stru_2824B1A78;
  if (!v1)
  {
    v2 = @"ActivationGranularityUser";
  }

  if (v1 == 1)
  {
    return @"ActivationGranularityHome";
  }

  else
  {
    return v2;
  }
}

__CFString *__77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) locationEventType];
  v2 = &stru_2824B1A78;
  if (v1 == 1)
  {
    v2 = @"Arriving";
  }

  if (v1 == 2)
  {
    return @"Leaving";
  }

  else
  {
    return v2;
  }
}

__CFString *__77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) style];
  if (v2 == 1)
  {
    return @"HFPresenceEventActivationDescription";
  }

  if (v2)
  {
    return &stru_2824B1A78;
  }

  if ([*(a1 + 32) nameType] == 1)
  {
    return @"HFPresenceTriggerName";
  }

  return @"HFPresenceTriggerNameFullSentence";
}

BOOL __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) options];
  if ([v2 shouldUseFirstPersonPronounIfPossible])
  {
    v3 = [*(a1 + 32) home];
    v4 = [v3 hf_allUsersIncludingCurrentUser];
    v5 = [v4 count] == 1 && objc_msgSend(*(a1 + 32), "nameType") != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CCACA8];
  if (*(a1 + 32))
  {
    v21 = 0;
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = a2;
    v8 = [v5 users];
    v9 = [*(a1 + 40) home];
    v10 = [v6 _formattedListForSelectedUsers:v8 inHome:v9];
    v19 = *(a1 + 32);
    v11 = &v21;
    [v4 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@%@" error:&v21, v10, v19, v20, 0];
  }

  else
  {
    v20 = 0;
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = a2;
    v8 = [v12 users];
    v9 = [*(a1 + 40) home];
    v10 = [v13 _formattedListForSelectedUsers:v8 inHome:v9];
    v11 = &v20;
    [v4 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:&v20, v10, v18, 0, v21];
  }
  v15 = ;

  v16 = *v11;

  return v15;
}

id __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CCACA8];
  if (*(a1 + 32))
  {
    v21 = 0;
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = a2;
    v8 = [v5 users];
    v9 = [*(a1 + 40) home];
    v10 = [v6 _formattedListForSelectedUsers:v8 inHome:v9];
    v19 = *(a1 + 32);
    v11 = &v21;
    [v4 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@%@" error:&v21, v10, v19, v20, 0];
  }

  else
  {
    v20 = 0;
    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = a2;
    v8 = [v12 users];
    v9 = [*(a1 + 40) home];
    v10 = [v13 _formattedListForSelectedUsers:v8 inHome:v9];
    v11 = &v20;
    [v4 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:&v20, v10, v18, 0, v21];
  }
  v15 = ;

  v16 = *v11;

  return v15;
}

id __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v8 = 0;
    v3 = &v8;
    [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:a2 validFormatSpecifiers:@"%ld%@" error:&v8, *(a1 + 40), v2, v7, 0];
  }

  else
  {
    v7 = 0;
    v3 = &v7;
    [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:a2 validFormatSpecifiers:@"%ld" error:&v7, *(a1 + 40), v6, 0, v8];
  }
  v4 = ;

  return v4;
}

id __77__HFPresenceEventFormatter_stringForPresenceEventBuilder_actionsDescription___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = 0;
  v2 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:a2 validFormatSpecifiers:@"%@" error:&v5, v4];

  return v2;
}

- (id)_formattedListForSelectedUsers:(id)a3 inHome:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HFUserNameFormatter alloc] initWithHome:v5];
  [(HFUserNameFormatter *)v7 setStyle:1];
  v8 = [v6 resolveSelectedUsersWithHome:v5];

  v9 = [v8 allObjects];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __66__HFPresenceEventFormatter__formattedListForSelectedUsers_inHome___block_invoke;
  v20 = &unk_277DF3B80;
  v21 = v5;
  v22 = v7;
  v10 = v7;
  v11 = v5;
  v12 = [v9 na_map:&v17];
  v13 = [v12 sortedArrayUsingSelector:{sel_localizedStandardCompare_, v17, v18, v19, v20}];

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_70_1);
  }

  v14 = qword_27C84C428;
  [v14 setListStyle:1];
  v15 = [v14 stringForObjectValue:v13];

  return v15;
}

id __66__HFPresenceEventFormatter__formattedListForSelectedUsers_inHome___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) hf_handleForUser:a2];
  v4 = [*(a1 + 40) stringForObjectValue:v3];

  return v4;
}

void __66__HFPresenceEventFormatter__formattedListForSelectedUsers_inHome___block_invoke_3()
{
  v0 = objc_alloc_init(HFListFormatter);
  v1 = qword_27C84C428;
  qword_27C84C428 = v0;
}

- (HFTriggerNaturalLanguageOptions)options
{
  WeakRetained = objc_loadWeakRetained(&self->_options);

  return WeakRetained;
}

@end