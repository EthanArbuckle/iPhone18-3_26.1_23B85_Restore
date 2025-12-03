@interface HUInvitationHelper
+ (id)_dateFormatter;
+ (id)dateFormatter;
- (HUInvitationHelper)initWithMode:(unint64_t)mode;
- (HUInvitationHelperDelegate)delegate;
- (NSString)detailText;
- (NSString)homeInvitationTitle;
- (id)requiredKeyDescriptors;
- (void)_updateInviterContactInfo;
- (void)contactController:(id)controller didFinishDownloadingFamilyMemberAvatar:(id)avatar;
- (void)setInvitation:(id)invitation;
@end

@implementation HUInvitationHelper

- (HUInvitationHelper)initWithMode:(unint64_t)mode
{
  v18.receiver = self;
  v18.super_class = HUInvitationHelper;
  v4 = [(HUInvitationHelper *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    v6 = objc_alloc_init(MEMORY[0x277CBDA78]);
    contactsFormatter = v5->_contactsFormatter;
    v5->_contactsFormatter = v6;

    v8 = objc_alloc(MEMORY[0x277D145A8]);
    requiredKeyDescriptors = [(HUInvitationHelper *)v5 requiredKeyDescriptors];
    v10 = [v8 initWithKeyDescriptors:requiredKeyDescriptors];
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

- (void)setInvitation:(id)invitation
{
  objc_storeStrong(&self->_invitation, invitation);
  if (invitation)
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
  requiredKeyDescriptors = [(HUInvitationHelper *)self requiredKeyDescriptors];
  invitation = [(HUInvitationHelper *)self invitation];
  inviter = [invitation inviter];
  userID = [inviter userID];

  if (!userID)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      invitation2 = [(HUInvitationHelper *)self invitation];
      inviter2 = [invitation2 inviter];
      hf_prettyDescription = [inviter2 hf_prettyDescription];
      *buf = 138412290;
      v27 = hf_prettyDescription;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Inviter userID is nil - %@", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CCACE0] componentsWithString:userID];
  scheme = [v7 scheme];
  if ([scheme isEqualToString:@"mailto"])
  {
  }

  else
  {
    scheme2 = [v7 scheme];
    v11 = [scheme2 isEqualToString:@"tel"];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  path = [v7 path];

  userID = path;
LABEL_9:
  [(HUInvitationHelper *)self setInviterID:userID];
  familyMembers = [(HUInvitationHelper *)self familyMembers];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__HUInvitationHelper__updateInviterContactInfo__block_invoke;
  v24[3] = &unk_277DB8900;
  v9 = userID;
  v25 = v9;
  inviterContact = [familyMembers na_firstObjectPassingTest:v24];

  if (!inviterContact)
  {
    v19 = [MEMORY[0x277D145A8] contactForAppleID:v9 keyDescriptors:requiredKeyDescriptors];
    [(HUInvitationHelper *)self setInviterContact:v19];

LABEL_14:
    inviterContact = [(HUInvitationHelper *)self inviterContact];
    givenName = [inviterContact givenName];
    -[HUInvitationHelper setIsUnknownContact:](self, "setIsUnknownContact:", [v9 isEqualToString:givenName]);

    goto LABEL_15;
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Inviter matches a family member", buf, 2u);
  }

  contactsController = [(HUInvitationHelper *)self contactsController];
  dsid = [inviterContact dsid];
  v18 = [contactsController contactForFamilyMemberWithDsid:dsid];
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
  isUnknownContact = [(HUInvitationHelper *)self isUnknownContact];
  mode = [(HUInvitationHelper *)self mode];
  v5 = mode;
  if (isUnknownContact)
  {
    if (mode == 1)
    {
      v6 = @"HUUserManagementInvitation_UnknownInviteHomeName_Onboarding";
    }

    else
    {
      v6 = @"HUUserManagementInvitation_UnknownInviteHomeName_HomeSettings";
    }

    goto LABEL_8;
  }

  invitation = [(HUInvitationHelper *)self invitation];
  invitation2 = invitation;
  if (v5)
  {
    isInviteeRestrictedGuest = [invitation isInviteeRestrictedGuest];

    if (isInviteeRestrictedGuest)
    {
      v6 = @"HUUserManagementInvitation_Onboarding_RestrictedGuest";
LABEL_8:
      v10 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
      goto LABEL_12;
    }

    invitation2 = [(HUInvitationHelper *)self invitation];
    homeName = [invitation2 homeName];
    HULocalizedStringWithFormat(@"HUUserManagementInvitation_Onboarding_HomeName", @"%@", v18, v19, v20, v21, v22, v23, homeName);
  }

  else
  {
    homeName = [invitation homeName];
    HULocalizedStringWithFormat(@"HUUserManagementInvitation_HomeSettingsCell_HomeName", @"%@", v12, v13, v14, v15, v16, v17, homeName);
  }
  v10 = ;

LABEL_12:

  return v10;
}

- (NSString)detailText
{
  _dateFormatter = [objc_opt_class() _dateFormatter];
  v4 = [_dateFormatter copy];
  [v4 setDateStyle:1];
  [v4 setTimeStyle:0];
  [v4 setDoesRelativeDateFormatting:1];
  v5 = [v4 copy];
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  invitation = [(HUInvitationHelper *)self invitation];
  startDate = [invitation startDate];

  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = MEMORY[0x277CBEAA8];
  v11 = [autoupdatingCurrentCalendar startOfDayForDate:date];
  v12 = [v10 hf_dateByAddingDays:-1 toDate:v11];

  v79 = v12;
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:date];
  v78 = v13;
  if ([(HUInvitationHelper *)self mode])
  {
    if ([(HUInvitationHelper *)self isUnknownContact])
    {
      if ([v13 containsDate:startDate])
      {
        contactsFormatter = [v4 stringFromDate:startDate];
        inviterID2 = [v5 stringFromDate:startDate];
        inviterID = [(HUInvitationHelper *)self inviterID];
        v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_RelativeDate_UnknownContact", @"%@ %@ %@", v16, v17, v18, v19, v20, v21, contactsFormatter);
      }

      else
      {
        contactsFormatter = [_dateFormatter stringFromDate:startDate];
        inviterID2 = [(HUInvitationHelper *)self inviterID];
        v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_OtherDate_UnknownContact", @"%@ %@", v52, v53, v54, v55, v56, v57, contactsFormatter);
      }

      goto LABEL_16;
    }

    v75 = autoupdatingCurrentCalendar;
    invitation2 = [(HUInvitationHelper *)self invitation];
    isInviteeRestrictedGuest = [invitation2 isInviteeRestrictedGuest];

    if (isInviteeRestrictedGuest)
    {
      contactsFormatter = [(HUInvitationHelper *)self contactsFormatter];
      inviterID2 = [(HUInvitationHelper *)self inviterContact];
      inviterID3 = [contactsFormatter stringFromContact:inviterID2];
      [(HUInvitationHelper *)self invitation];
      v45 = v77 = startDate;
      homeName = [v45 homeName];
      v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_RestrictedGuest", @"%@ %@", v46, v47, v48, v49, v50, v51, inviterID3);

      startDate = v77;
    }

    else
    {
      if (![v13 containsDate:startDate])
      {
        contactsFormatter = [_dateFormatter stringFromDate:startDate];
        inviterID2 = [(HUInvitationHelper *)self inviterID];
        v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_OtherDate", @"%@ %@", v64, v65, v66, v67, v68, v69, contactsFormatter);
        goto LABEL_15;
      }

      contactsFormatter = [v4 stringFromDate:startDate];
      inviterID2 = [v5 stringFromDate:startDate];
      inviterID3 = [(HUInvitationHelper *)self inviterID];
      v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_RelativeDate", @"%@ %@ %@", v58, v59, v60, v61, v62, v63, contactsFormatter);
    }

LABEL_15:
    autoupdatingCurrentCalendar = v75;
    goto LABEL_16;
  }

  v76 = startDate;
  contactsFormatter2 = [(HUInvitationHelper *)self contactsFormatter];
  inviterContact = [(HUInvitationHelper *)self inviterContact];
  v25 = [contactsFormatter2 stringFromContact:inviterContact];
  v22 = HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_HomeSettings", @"%@", v26, v27, v28, v29, v30, v31, v25);

  invitation3 = [(HUInvitationHelper *)self invitation];
  LODWORD(v25) = [invitation3 isInviteeRestrictedGuest];

  if (!v25)
  {
    startDate = v76;
    goto LABEL_17;
  }

  contactsFormatter = [(HUInvitationHelper *)self contactsFormatter];
  inviterID2 = [(HUInvitationHelper *)self inviterContact];
  v33 = [contactsFormatter stringFromContact:inviterID2];
  invitation4 = [(HUInvitationHelper *)self invitation];
  homeName2 = [invitation4 homeName];
  HULocalizedStringWithFormat(@"HUUserManagementInvitationInfo_HomeSettings_RestrictedGuest", @"%@ %@", v35, v36, v37, v38, v39, v40, v33);
  v41 = v74 = _dateFormatter;

  v22 = v41;
  _dateFormatter = v74;
  startDate = v76;
LABEL_16:

LABEL_17:

  return v22;
}

- (void)contactController:(id)controller didFinishDownloadingFamilyMemberAvatar:(id)avatar
{
  controllerCopy = controller;
  dsid = [avatar dsid];
  v17 = [controllerCopy contactForFamilyMemberWithDsid:dsid];

  inviterContact = [(HUInvitationHelper *)self inviterContact];
  identifier = [inviterContact identifier];
  identifier2 = [v17 identifier];
  v11 = [identifier isEqual:identifier2];

  if (v11)
  {
    [(HUInvitationHelper *)self setInviterContact:v17];
    delegate = [(HUInvitationHelper *)self delegate];
    if (delegate)
    {
      v13 = delegate;
      delegate2 = [(HUInvitationHelper *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate3 = [(HUInvitationHelper *)self delegate];
        [delegate3 invitationUtilityDidUpdateInformation:self];
      }
    }
  }
}

+ (id)dateFormatter
{
  _dateFormatter = [objc_opt_class() _dateFormatter];
  v3 = [_dateFormatter copy];

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