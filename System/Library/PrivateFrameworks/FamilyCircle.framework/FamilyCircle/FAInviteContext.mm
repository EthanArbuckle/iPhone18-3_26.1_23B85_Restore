@interface FAInviteContext
- (FAInviteContext)initWithResults:(id)results;
- (id)buildInviteMessageBubbleURL:(id)l;
- (id)description;
- (id)privacySafeInvitees;
- (unint64_t)_validatonFromString:(id)string eventType:(id)type;
- (void)_parseResultsDictionary:(id)dictionary;
@end

@implementation FAInviteContext

- (FAInviteContext)initWithResults:(id)results
{
  resultsCopy = results;
  v5 = [(FAInviteContext *)self init];
  v6 = v5;
  if (v5)
  {
    [(FAInviteContext *)v5 _parseResultsDictionary:resultsCopy];
  }

  return v6;
}

- (unint64_t)_validatonFromString:(id)string eventType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  typeCopy = type;
  v7 = typeCopy;
  if (stringCopy || ([typeCopy isEqualToString:@"familyInvite"] & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [stringCopy componentsSeparatedByString:{@", ", 0}];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v16 + 1) + 8 * i) isEqualToString:@"inviteesNotPartOfFamily"])
          {
            v8 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_parseResultsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
  eventType = self->_eventType;
  self->_eventType = v4;

  v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  title = self->_title;
  self->_title = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"secondaryTitle"];
  secondaryTitle = self->_secondaryTitle;
  self->_secondaryTitle = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"description"];
  subtitle = self->_subtitle;
  self->_subtitle = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"recipientsEditable"];
  self->_canEditRecipients = [v12 BOOLValue];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"actionLabel"];
  action = self->_action;
  self->_action = v13;

  v15 = [dictionaryCopy objectForKeyedSubscript:@"invitees"];
  v16 = [v15 componentsSeparatedByString:{@", "}];
  invitees = self->_invitees;
  self->_invitees = v16;

  v18 = [dictionaryCopy objectForKeyedSubscript:@"overlaidTextColor"];
  overlaidTextColorString = self->_overlaidTextColorString;
  self->_overlaidTextColorString = v18;

  v20 = [dictionaryCopy objectForKeyedSubscript:@"validate"];
  self->_validation = [(FAInviteContext *)self _validatonFromString:v20 eventType:self->_eventType];

  v21 = [dictionaryCopy objectForKeyedSubscript:@"inviteUrl"];
  if (v21)
  {
    v22 = [MEMORY[0x1E695DFF8] URLWithString:v21];
    inviteURL = self->_inviteURL;
    self->_inviteURL = v22;
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundImageUrl"];
  if (v24)
  {
    v25 = [MEMORY[0x1E695DFF8] URLWithString:v24];
    imageURL = self->_imageURL;
    self->_imageURL = v25;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"iconUrl"];
  if (v27)
  {
    v28 = [MEMORY[0x1E695DFF8] URLWithString:v27];
    iconURL = self->_iconURL;
    self->_iconURL = v28;
  }

  v30 = [dictionaryCopy objectForKeyedSubscript:@"reportInviteeDetailsUrl"];
  if (v30)
  {
    v31 = [MEMORY[0x1E695DFF8] URLWithString:v30];
    reportInviteeDetailsUrl = self->_reportInviteeDetailsUrl;
    self->_reportInviteeDetailsUrl = v31;
  }

  v33 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptLink"];
  if (v33)
  {
    v34 = [MEMORY[0x1E695DFF8] URLWithString:v33];
    messageBubbleAcceptInviteURL = self->_messageBubbleAcceptInviteURL;
    self->_messageBubbleAcceptInviteURL = v34;
  }

  v36 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclineLink"];
  if (v36)
  {
    v37 = [MEMORY[0x1E695DFF8] URLWithString:v36];
    messageBubbleDeclineInviteURL = self->_messageBubbleDeclineInviteURL;
    self->_messageBubbleDeclineInviteURL = v37;
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:@"remainingFamilySpots"];
  integerValue = [v39 integerValue];

  v41 = 5;
  if (integerValue)
  {
    v41 = integerValue;
  }

  self->_remainingFamilySpots = v41;
  v42 = [dictionaryCopy objectForKeyedSubscript:@"mailLinkTitle"];
  mailLinkTitle = self->_mailLinkTitle;
  self->_mailLinkTitle = v42;

  v44 = [dictionaryCopy objectForKeyedSubscript:@"mailLinkSubtitle"];
  mailLinkSubtitle = self->_mailLinkSubtitle;
  self->_mailLinkSubtitle = v44;

  v46 = [dictionaryCopy objectForKeyedSubscript:@"mailMessageSubject"];
  mailMessageSubject = self->_mailMessageSubject;
  self->_mailMessageSubject = v46;

  v48 = [dictionaryCopy objectForKeyedSubscript:@"mailMessageBodyHTML"];
  mailMessageBodyHTML = self->_mailMessageBodyHTML;
  self->_mailMessageBodyHTML = v48;

  v50 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleTitle"];
  messageBubbleTitle = self->_messageBubbleTitle;
  self->_messageBubbleTitle = v50;

  v52 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleSubTitle"];
  messageBubbleSubTitle = self->_messageBubbleSubTitle;
  self->_messageBubbleSubTitle = v52;

  v54 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleSubTitleTeen"];
  messageBubbleSubTitleTeen = self->_messageBubbleSubTitleTeen;
  self->_messageBubbleSubTitleTeen = v54;

  v56 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleViewInvitationButtonLabel"];
  messageBubbleViewInvitationButtonLabel = self->_messageBubbleViewInvitationButtonLabel;
  self->_messageBubbleViewInvitationButtonLabel = v56;

  v58 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleLearnMoreLinkLabel"];
  messageBubbleLearnMoreLinkLabel = self->_messageBubbleLearnMoreLinkLabel;
  self->_messageBubbleLearnMoreLinkLabel = v58;

  v60 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptButtonLabel"];
  messageBubbleInviteAcceptButtonLabel = self->_messageBubbleInviteAcceptButtonLabel;
  self->_messageBubbleInviteAcceptButtonLabel = v60;

  v62 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclineButtonLabel"];
  messageBubbleInviteDeclineButtonLabel = self->_messageBubbleInviteDeclineButtonLabel;
  self->_messageBubbleInviteDeclineButtonLabel = v62;

  v64 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleSubscriptionsList"];
  messageBubbleSubscriptionsList = self->_messageBubbleSubscriptionsList;
  self->_messageBubbleSubscriptionsList = v64;

  v66 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleFamilySettingsLinkLabel"];
  messageBubbleFamilySettingsLinkLabel = self->_messageBubbleFamilySettingsLinkLabel;
  self->_messageBubbleFamilySettingsLinkLabel = v66;

  v68 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleAppleIDSettingsLinkLabel"];
  messageBubbleAppleIDSettingsLinkLabel = self->_messageBubbleAppleIDSettingsLinkLabel;
  self->_messageBubbleAppleIDSettingsLinkLabel = v68;

  v70 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleLoadingLabel"];
  messageBubbleInviteLoadingLabel = self->_messageBubbleInviteLoadingLabel;
  self->_messageBubbleInviteLoadingLabel = v70;

  if (![(NSString *)self->_messageBubbleInviteLoadingLabel length])
  {
    v72 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v73 = [v72 localizedStringForKey:@"LOADING" value:&stru_1F2F2DA80 table:@"Localizable"];
    v74 = self->_messageBubbleInviteLoadingLabel;
    self->_messageBubbleInviteLoadingLabel = v73;
  }

  v75 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInvitePendingTitle"];
  messageBubbleInvitePendingTitle = self->_messageBubbleInvitePendingTitle;
  self->_messageBubbleInvitePendingTitle = v75;

  v77 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInvitePendingSubTitle"];
  messageBubbleInvitePendingSubTitle = self->_messageBubbleInvitePendingSubTitle;
  self->_messageBubbleInvitePendingSubTitle = v77;

  v79 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInvitePendingIcon"];
  messageBubbleInvitePendingIcon = self->_messageBubbleInvitePendingIcon;
  self->_messageBubbleInvitePendingIcon = v79;

  v81 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptedTitleSender"];
  messageBubbleInviteAcceptedTitleSender = self->_messageBubbleInviteAcceptedTitleSender;
  self->_messageBubbleInviteAcceptedTitleSender = v81;

  v83 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptedTitleReceiver"];
  messageBubbleInviteAcceptedTitleReceiver = self->_messageBubbleInviteAcceptedTitleReceiver;
  self->_messageBubbleInviteAcceptedTitleReceiver = v83;

  v85 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptedSubTitleSender"];
  messageBubbleInviteAcceptedSubTitleSender = self->_messageBubbleInviteAcceptedSubTitleSender;
  self->_messageBubbleInviteAcceptedSubTitleSender = v85;

  v87 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptedSubTitleReceiver"];
  messageBubbleInviteAcceptedSubTitleReceiver = self->_messageBubbleInviteAcceptedSubTitleReceiver;
  self->_messageBubbleInviteAcceptedSubTitleReceiver = v87;

  v89 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteAcceptedIcon"];
  messageBubbleInviteAcceptedIcon = self->_messageBubbleInviteAcceptedIcon;
  self->_messageBubbleInviteAcceptedIcon = v89;

  v91 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteExpiredTitleSender"];
  messageBubbleInviteExpiredTitleSender = self->_messageBubbleInviteExpiredTitleSender;
  self->_messageBubbleInviteExpiredTitleSender = v91;

  v93 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteExpiredTitleReceiver"];
  messageBubbleInviteExpiredTitleReceiver = self->_messageBubbleInviteExpiredTitleReceiver;
  self->_messageBubbleInviteExpiredTitleReceiver = v93;

  v95 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteExpiredSubTitleSender"];
  messageBubbleInviteExpiredSubTitleSender = self->_messageBubbleInviteExpiredSubTitleSender;
  self->_messageBubbleInviteExpiredSubTitleSender = v95;

  v97 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteExpiredSubTitleReceiver"];
  messageBubbleInviteExpiredSubTitleReceiver = self->_messageBubbleInviteExpiredSubTitleReceiver;
  self->_messageBubbleInviteExpiredSubTitleReceiver = v97;

  v99 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteExpiredIcon"];
  messageBubbleInviteExpiredIcon = self->_messageBubbleInviteExpiredIcon;
  self->_messageBubbleInviteExpiredIcon = v99;

  v101 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclinedTitleSender"];
  messageBubbleInviteDeclinedTitleSender = self->_messageBubbleInviteDeclinedTitleSender;
  self->_messageBubbleInviteDeclinedTitleSender = v101;

  v103 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclinedTitleReceiver"];
  messageBubbleInviteDeclinedTitleReceiver = self->_messageBubbleInviteDeclinedTitleReceiver;
  self->_messageBubbleInviteDeclinedTitleReceiver = v103;

  v105 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclinedSubTitleSender"];
  messageBubbleInviteDeclinedSubTitleSender = self->_messageBubbleInviteDeclinedSubTitleSender;
  self->_messageBubbleInviteDeclinedSubTitleSender = v105;

  v107 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclinedSubTitleReceiver"];
  messageBubbleInviteDeclinedSubTitleReceiver = self->_messageBubbleInviteDeclinedSubTitleReceiver;
  self->_messageBubbleInviteDeclinedSubTitleReceiver = v107;

  v109 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclinedIcon"];
  messageBubbleInviteDeclinedIcon = self->_messageBubbleInviteDeclinedIcon;
  self->_messageBubbleInviteDeclinedIcon = v109;

  v111 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclineAlertSheetTitle"];
  v112 = v111;
  if (v111)
  {
    v113 = v111;
    messageBubbleInviteDeclineAlertSheetTitle = self->_messageBubbleInviteDeclineAlertSheetTitle;
    self->_messageBubbleInviteDeclineAlertSheetTitle = v113;
  }

  else
  {
    messageBubbleInviteDeclineAlertSheetTitle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v115 = [messageBubbleInviteDeclineAlertSheetTitle localizedStringForKey:@"InviteDeclineAlertSheetTitle" value:&stru_1F2F2DA80 table:@"Localizable"];
    v116 = self->_messageBubbleInviteDeclineAlertSheetTitle;
    self->_messageBubbleInviteDeclineAlertSheetTitle = v115;
  }

  v117 = [dictionaryCopy objectForKeyedSubscript:@"messageBubbleInviteDeclineAlertSheetMessage"];
  v118 = v117;
  if (v117)
  {
    v119 = v117;
    messageBubbleInviteDeclineAlertSheetMessage = self->_messageBubbleInviteDeclineAlertSheetMessage;
    self->_messageBubbleInviteDeclineAlertSheetMessage = v119;
  }

  else
  {
    messageBubbleInviteDeclineAlertSheetMessage = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v121 = [messageBubbleInviteDeclineAlertSheetMessage localizedStringForKey:@"InviteDeclineAlertSheetMessage" value:&stru_1F2F2DA80 table:@"Localizable"];
    v122 = self->_messageBubbleInviteDeclineAlertSheetMessage;
    self->_messageBubbleInviteDeclineAlertSheetMessage = v121;
  }
}

- (id)privacySafeInvitees
{
  invitees = [(FAInviteContext *)self invitees];
  v3 = [FAHandlePrivacyResolver privacySafeInvitees:invitees];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(FAInviteContext *)self title];
  subtitle = [(FAInviteContext *)self subtitle];
  action = [(FAInviteContext *)self action];
  inviteURL = [(FAInviteContext *)self inviteURL];
  absoluteString = [inviteURL absoluteString];
  invitees = [(FAInviteContext *)self invitees];
  v11 = [v3 stringWithFormat:@"%@ - title: %@ subtitle: %@ action: %@ inviteURL: %@ invitees: %@ canEditRecipients: %d", v4, title, subtitle, action, absoluteString, invitees, -[FAInviteContext canEditRecipients](self, "canEditRecipients")];

  return v11;
}

- (id)buildInviteMessageBubbleURL:(id)l
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF20];
  lCopy = l;
  v71 = objc_alloc_init(v4);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"messageTitle" value:self->_messageBubbleTitle];
  [v6 addObject:v7];

  v8 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"messageSubTitle" value:self->_messageBubbleSubTitle];
  [v6 addObject:v8];

  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"messageSubTitleTeen" value:self->_messageBubbleSubTitleTeen];
  [v6 addObject:v9];

  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"inviteButtonLabel" value:self->_messageBubbleViewInvitationButtonLabel];
  [v6 addObject:v10];

  v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"acceptButtonLabel" value:self->_messageBubbleInviteAcceptButtonLabel];
  [v6 addObject:v11];

  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declineButtonLabel" value:self->_messageBubbleInviteDeclineButtonLabel];
  [v6 addObject:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"learnMoreLinkLabel" value:self->_messageBubbleLearnMoreLinkLabel];
  [v6 addObject:v13];

  v14 = objc_alloc(MEMORY[0x1E696AF60]);
  absoluteString = [(NSURL *)self->_inviteURL absoluteString];
  v16 = [v14 initWithName:@"inviteUrl" value:absoluteString];
  [v6 addObject:v16];

  v17 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"subscriptionList" value:self->_messageBubbleSubscriptionsList];
  [v6 addObject:v17];

  v18 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"familySettingsLinkLabel" value:self->_messageBubbleFamilySettingsLinkLabel];
  [v6 addObject:v18];

  v19 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"appleIDSettingsLinkLabel" value:self->_messageBubbleAppleIDSettingsLinkLabel];
  [v6 addObject:v19];

  v20 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"inviteLoadingLabel" value:self->_messageBubbleInviteLoadingLabel];
  [v6 addObject:v20];

  v21 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"receiverHandle" value:lCopy];
  [v6 addObject:v21];

  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  username = [aa_primaryAppleAccount username];

  v25 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"senderHandle" value:username];
  [v6 addObject:v25];

  v26 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pendingTitle" value:self->_messageBubbleInvitePendingTitle];
  [v6 addObject:v26];

  v27 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pendingSubTitle" value:self->_messageBubbleInvitePendingSubTitle];
  [v6 addObject:v27];

  v28 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pendingIcon" value:self->_messageBubbleInvitePendingIcon];
  [v6 addObject:v28];

  v29 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"acceptedTitleSender" value:self->_messageBubbleInviteAcceptedTitleSender];
  [v6 addObject:v29];

  v30 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"acceptedTitleReceiver" value:self->_messageBubbleInviteAcceptedTitleReceiver];
  [v6 addObject:v30];

  v31 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"acceptedSubTitleReceiver" value:self->_messageBubbleInviteAcceptedSubTitleReceiver];
  [v6 addObject:v31];

  v32 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"acceptedSubTitleSender" value:self->_messageBubbleInviteAcceptedSubTitleSender];
  [v6 addObject:v32];

  v33 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"acceptedIcon" value:self->_messageBubbleInviteAcceptedIcon];
  [v6 addObject:v33];

  v34 = objc_alloc(MEMORY[0x1E696AF60]);
  absoluteString2 = [(NSURL *)self->_messageBubbleAcceptInviteURL absoluteString];
  v36 = [v34 initWithName:@"acceptInviteUrl" value:absoluteString2];
  [v6 addObject:v36];

  v37 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"expiredTitleSender" value:self->_messageBubbleInviteExpiredTitleSender];
  [v6 addObject:v37];

  v38 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"expiredTitleReceiver" value:self->_messageBubbleInviteExpiredTitleReceiver];
  [v6 addObject:v38];

  v39 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"expiredSubTitleReceiver" value:self->_messageBubbleInviteExpiredSubTitleReceiver];
  [v6 addObject:v39];

  v40 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"expiredSubTitleSender" value:self->_messageBubbleInviteExpiredSubTitleSender];
  [v6 addObject:v40];

  v41 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"expiredIcon" value:self->_messageBubbleInviteExpiredIcon];
  [v6 addObject:v41];

  v42 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declinedTitleSender" value:self->_messageBubbleInviteDeclinedTitleSender];
  [v6 addObject:v42];

  v43 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declinedTitleReceiver" value:self->_messageBubbleInviteDeclinedTitleReceiver];
  [v6 addObject:v43];

  v44 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declinedSubTitleReceiver" value:self->_messageBubbleInviteDeclinedSubTitleReceiver];
  [v6 addObject:v44];

  v45 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declinedSubTitleSender" value:self->_messageBubbleInviteDeclinedSubTitleSender];
  [v6 addObject:v45];

  v46 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declinedIcon" value:self->_messageBubbleInviteDeclinedIcon];
  [v6 addObject:v46];

  v47 = objc_alloc(MEMORY[0x1E696AF60]);
  absoluteString3 = [(NSURL *)self->_messageBubbleDeclineInviteURL absoluteString];
  v49 = [v47 initWithName:@"declineInviteUrl" value:absoluteString3];
  [v6 addObject:v49];

  v50 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v50 setDateFormat:@"yyyy-MM-dd"];
  v51 = objc_alloc(MEMORY[0x1E696AF60]);
  v52 = [MEMORY[0x1E695DF00] now];
  v53 = [v50 stringFromDate:v52];
  v54 = [v51 initWithName:@"senderMessageDate" value:v53];
  [v6 addObject:v54];

  v55 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declineAlertTitle" value:self->_messageBubbleInviteDeclineAlertSheetTitle];
  [v6 addObject:v55];

  v56 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"declineAlertMessage" value:self->_messageBubbleInviteDeclineAlertSheetMessage];
  [v6 addObject:v56];

  v57 = objc_alloc(MEMORY[0x1E696AF60]);
  v58 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v59 = [v58 localizedStringForKey:@"DeclineAlertButtonTitle" value:&stru_1F2F2DA80 table:@"Localizable"];
  v60 = [v57 initWithName:@"declineAlertButtonTitle" value:v59];
  [v6 addObject:v60];

  v61 = objc_alloc(MEMORY[0x1E696AF60]);
  v62 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v63 = [v62 localizedStringForKey:@"CANCEL" value:&stru_1F2F2DA80 table:@"Localizable"];
  v64 = [v61 initWithName:@"declineAlertCancelButtonTitle" value:v63];
  [v6 addObject:v64];

  v65 = [v6 copy];
  [v71 setQueryItems:v65];

  v66 = _FALogSystem();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = [v71 URL];
    *buf = 138412290;
    v73 = v67;
    _os_log_impl(&dword_1B70B0000, v66, OS_LOG_TYPE_DEFAULT, "message bubble url %@", buf, 0xCu);
  }

  v68 = [v71 URL];

  v69 = *MEMORY[0x1E69E9840];

  return v68;
}

@end