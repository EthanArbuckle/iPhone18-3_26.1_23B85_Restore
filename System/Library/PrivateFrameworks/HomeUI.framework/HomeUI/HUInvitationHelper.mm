@interface HUInvitationHelper
+ (id)_dateFormatter;
+ (id)dateFormatter;
- (HUInvitationHelper)initWithMode:(unint64_t)a3;
- (HUInvitationHelperDelegate)delegate;
- (NSString)detailText;
- (NSString)homeInvitationTitle;
- (id)requiredKeyDescriptors;
- (void)_updateInviterContactInfo;
- (void)contactController:(id)a3 didFinishDownloadingFamilyMemberAvatar:(id)a4;
- (void)setInvitation:(id)a3;
@end

@implementation HUInvitationHelper

- (HUInvitationHelper)initWithMode:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = HUInvitationHelper;
  v4 = [(HUInvitationHelper *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBDA78]);
    contactsFormatter = v5->_contactsFormatter;
    v5->_contactsFormatter = v6;

    v8 = objc_alloc(MEMORY[0x277D145A8]);
    v9 = [(HUInvitationHelper *)v5 requiredKeyDescriptors];
    v10 = [v8 initWithKeyDescriptors:v9];
    contactsController = v5->_contactsController;
    v5->_contactsController = v10;

    [(HFContactController *)v5->_contactsController setDelegate:v5];
    familyMembers = v5->_familyMembers;
    v5->_familyMembers = MEMORY[0x277CBEBF8];

    objc_initWeak(&location, v5);
    v13 = v5->_contactsController;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__HUInvitationHelper_initWithMode___block_invoke;
    v15[3] = &unk_277DB88D8;
    objc_copyWeak(&v16, &location);
    [(HFContactController *)v13 fetchFamilyMembersWithCompletion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __35__HUInvitationHelper_initWithMode___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218243;
    v14 = [v3 count];
    v15 = 2117;
    v16 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Fetched %lu family members: %{sensitive}@", &v13, 0x16u);
  }

  v6 = [v3 copy];
  [WeakRetained setFamilyMembers:v6];

  v7 = [WeakRetained invitation];

  if (v7)
  {
    [WeakRetained _updateInviterContactInfo];
    v8 = [WeakRetained delegate];
    if (v8)
    {
      v9 = v8;
      v10 = [WeakRetained delegate];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [WeakRetained delegate];
        [v12 invitationUtilityDidUpdateInformation:WeakRetained];
      }
    }
  }
}

- (void)setInvitation:(id)a3
{
  objc_storeStrong(&self->_invitation, a3);
  if (a3)
  {

    [(HUInvitationHelper *)self _updateInviterContactInfo];
  }

  else
  {
    [(HUInvitationHelper *)self setInviterContact:0];

    [(HUInvitationHelper *)self setIsUnknownContact:1];
  }
}

- (void)_updateInviterContactInfo
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HUInvitationHelper *)self requiredKeyDescriptors];
  v4 = [(HUInvitationHelper *)self invitation];
  v5 = [v4 inviter];
  v6 = [v5 userID];

  if (!v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = [(HUInvitationHelper *)self invitation];
      v22 = [v21 inviter];
      v23 = [v22 hf_prettyDescription];
      *buf = 138412290;
      v27 = v23;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Inviter userID is nil - %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CCACE0] componentsWithString:v6];
  v8 = [v7 scheme];
  if ([v8 isEqualToString:@"mailto"])
  {
  }

  else
  {
    v10 = [v7 scheme];
    v11 = [v10 isEqualToString:@"tel"];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v12 = [v7 path];

  v6 = v12;
LABEL_9:
  [(HUInvitationHelper *)self setInviterID:v6];
  v13 = [(HUInvitationHelper *)self familyMembers];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__HUInvitationHelper__updateInviterContactInfo__block_invoke;
  v24[3] = &unk_277DB8900;
  v9 = v6;
  v25 = v9;
  v14 = [v13 na_firstObjectPassingTest:v24];

  if (!v14)
  {
    v19 = [MEMORY[0x277D145A8] contactForAppleID:v9 keyDescriptors:v3];
    [(HUInvitationHelper *)self setInviterContact:v19];

LABEL_14:
    v14 = [(HUInvitationHelper *)self inviterContact];
    v20 = [v14 givenName];
    -[HUInvitationHelper setIsUnknownContact:](self, "setIsUnknownContact:", [v9 isEqualToString:v20]);

    goto LABEL_15;
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Inviter matches a family member", buf, 2u);
  }

  v16 = [(HUInvitationHelper *)self contactsController];
  v17 = [v14 dsid];
  v18 = [v16 contactForFamilyMemberWithDsid:v17];
  [(HUInvitationHelper *)self setInviterContact:v18];

  [(HUInvitationHelper *)self setIsUnknownContact:0];
LABEL_15:
}

uint64_t __47__HUInvitationHelper__updateInviterContactInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 memberPhoneNumbers];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 appleID];
    v5 = [v6 isEqualToString:*(a1 + 32)];
  }

  return v5;
}

- (NSString)homeInvitationTitle
{
  v3 = [(HUInvitationHelper *)self isUnknownContact];
  v4 = [(HUInvitationHelper *)self mode];
  v5 = v4;
  if (v3)
  {
    if (v4 == 1)
    {
      v6 = @"HUUserManagementInvitation_UnknownInviteHomeName_Onboarding";
    }

    else
    {
      v6 = @"HUUserManagementInvitation_UnknownInviteHomeName_HomeSettings";
    }

    goto LABEL_8;
  }

  v7 = [(HUInvitationHelper *)self invitation];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 isInviteeRestrictedGuest];

    if (v9)
    {
      v6 = @"HUUserManagementInvitation_Onboarding_RestrictedGuest";
LABEL_8:
      v10 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
      goto LABEL_12;
    }

    v8 = [(HUInvitationHelper *)self invitation];
    v11 = [v8 homeName];
    HULocalizedStringWithFormat(@"HUUserManagementInvitation_Onboarding_HomeName", @"%@", v18, v19, v20, v21, v22, v23, v11);
  }

  else
  {
    v11 = [v7 homeName];
    HULocalizedStringWithFormat(@"HUUserManagementInvitation_HomeSettingsCell_HomeName", @"%@", v12, v13, v14, v15, v16, v17, v11);
  }
  v10 = ;

LABEL_12:

  return v10;
}

- (NSString)detailText
{
  v3 = [objc_opt_class() _dateFormatter];
  v4 = [v3 copy];
  [v4 setDateStyle:1];
  [v4 setTimeStyle:0];
  [v4 setDoesRelativeDateFormatting:1];
  v5 = [v4 copy];
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  v6 = [(HUInvitationHelper *)self invitation];
  v7 = [v6 startDate];

  v8 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [v8 startOfDayForDate:v9];
  v12 = [v10 hf_dateByAddingDays:-1 toDate:v11];

  v79 = v12;
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v9];
  v78 = v13;
  if ([(HUInvitationHelper *)self mode])
  {
    if ([(HUInvitationHelper *)self isUnknownContact])
    {
      if ([v13 containsDate:v7])
      {
        v14 = [v4 stringFromDate:v7];
        v15 = [v5 stringFromDate:v7];
        v73 = [(HUInvitationHelper *)self inviterID];
        v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_RelativeDate_UnknownContact", @"%@ %@ %@", v16, v17, v18, v19, v20, v21, v14);
      }

      else
      {
        v14 = [v3 stringFromDate:v7];
        v15 = [(HUInvitationHelper *)self inviterID];
        v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_OtherDate_UnknownContact", @"%@ %@", v52, v53, v54, v55, v56, v57, v14);
      }

      goto LABEL_16;
    }

    v75 = v8;
    v42 = [(HUInvitationHelper *)self invitation];
    v43 = [v42 isInviteeRestrictedGuest];

    if (v43)
    {
      v14 = [(HUInvitationHelper *)self contactsFormatter];
      v15 = [(HUInvitationHelper *)self inviterContact];
      v44 = [v14 stringFromContact:v15];
      [(HUInvitationHelper *)self invitation];
      v45 = v77 = v7;
      v72 = [v45 homeName];
      v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_RestrictedGuest", @"%@ %@", v46, v47, v48, v49, v50, v51, v44);

      v7 = v77;
    }

    else
    {
      if (![v13 containsDate:v7])
      {
        v14 = [v3 stringFromDate:v7];
        v15 = [(HUInvitationHelper *)self inviterID];
        v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_OtherDate", @"%@ %@", v64, v65, v66, v67, v68, v69, v14);
        goto LABEL_15;
      }

      v14 = [v4 stringFromDate:v7];
      v15 = [v5 stringFromDate:v7];
      v44 = [(HUInvitationHelper *)self inviterID];
      v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_RelativeDate", @"%@ %@ %@", v58, v59, v60, v61, v62, v63, v14);
    }

LABEL_15:
    v8 = v75;
    goto LABEL_16;
  }

  v76 = v7;
  v23 = [(HUInvitationHelper *)self contactsFormatter];
  v24 = [(HUInvitationHelper *)self inviterContact];
  v25 = [v23 stringFromContact:v24];
  v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_HomeSettings", @"%@", v26, v27, v28, v29, v30, v31, v25);

  v32 = [(HUInvitationHelper *)self invitation];
  LODWORD(v25) = [v32 isInviteeRestrictedGuest];

  if (!v25)
  {
    v7 = v76;
    goto LABEL_17;
  }

  v14 = [(HUInvitationHelper *)self contactsFormatter];
  v15 = [(HUInvitationHelper *)self inviterContact];
  v33 = [v14 stringFromContact:v15];
  v34 = [(HUInvitationHelper *)self invitation];
  v71 = [v34 homeName];
  HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_HomeSettings_RestrictedGuest", @"%@ %@", v35, v36, v37, v38, v39, v40, v33);
  v41 = v74 = v3;

  v22 = v41;
  v3 = v74;
  v7 = v76;
LABEL_16:

LABEL_17:

  return v22;
}

- (void)contactController:(id)a3 didFinishDownloadingFamilyMemberAvatar:(id)a4
{
  v6 = a3;
  v7 = [a4 dsid];
  v17 = [v6 contactForFamilyMemberWithDsid:v7];

  v8 = [(HUInvitationHelper *)self inviterContact];
  v9 = [v8 identifier];
  v10 = [v17 identifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    [(HUInvitationHelper *)self setInviterContact:v17];
    v12 = [(HUInvitationHelper *)self delegate];
    if (v12)
    {
      v13 = v12;
      v14 = [(HUInvitationHelper *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(HUInvitationHelper *)self delegate];
        [v16 invitationUtilityDidUpdateInformation:self];
      }
    }
  }
}

+ (id)dateFormatter
{
  v2 = [objc_opt_class() _dateFormatter];
  v3 = [v2 copy];

  return v3;
}

+ (id)_dateFormatter
{
  if (qword_281121E88 != -1)
  {
    dispatch_once(&qword_281121E88, &__block_literal_global_24);
  }

  v3 = _MergedGlobals_613;

  return v3;
}

uint64_t __36__HUInvitationHelper__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _MergedGlobals_613;
  _MergedGlobals_613 = v0;

  [_MergedGlobals_613 setTimeStyle:0];
  [_MergedGlobals_613 setDateStyle:1];
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [_MergedGlobals_613 setLocale:v2];

  v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  [_MergedGlobals_613 setTimeZone:v3];

  v4 = _MergedGlobals_613;

  return [v4 setFormattingContext:5];
}

- (id)requiredKeyDescriptors
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDBE8] descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v4 = *MEMORY[0x277CBCFC0];
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = *MEMORY[0x277CBD098];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  return v5;
}

- (HUInvitationHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end