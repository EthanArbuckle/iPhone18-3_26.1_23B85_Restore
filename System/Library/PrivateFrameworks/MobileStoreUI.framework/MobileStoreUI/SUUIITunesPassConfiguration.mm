@interface SUUIITunesPassConfiguration
- (SUUIITunesPassConfiguration)initWithITunesPassDictionary:(id)dictionary clientContext:(id)context;
- (id)learnMoreAlertView;
@end

@implementation SUUIITunesPassConfiguration

- (SUUIITunesPassConfiguration)initWithITunesPassDictionary:(id)dictionary clientContext:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  v73.receiver = self;
  v73.super_class = SUUIITunesPassConfiguration;
  v8 = [(SUUIITunesPassConfiguration *)&v73 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"learnMoreAlert"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:@"cancelButton"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 copy];
        dialogNotNowButton = v8->_dialogNotNowButton;
        v8->_dialogNotNowButton = v11;
      }

      v13 = [v9 objectForKey:@"explanation"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 copy];
        dialogMessage = v8->_dialogMessage;
        v8->_dialogMessage = v14;
      }

      v16 = [v9 objectForKey:@"message"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
        dialogTitle = v8->_dialogTitle;
        v8->_dialogTitle = v17;
      }

      v19 = [v9 objectForKey:@"okButton"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v19 copy];
        dialogLearnMoreButton = v8->_dialogLearnMoreButton;
        v8->_dialogLearnMoreButton = v20;
      }
    }

    v22 = [dictionaryCopy objectForKey:@"learnMore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 objectForKey:@"addPassButton"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 copy];
        learnMoreAddPassButtonTitle = v8->_learnMoreAddPassButtonTitle;
        v8->_learnMoreAddPassButtonTitle = v24;
      }

      v26 = [v22 objectForKey:@"doneButton"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 copy];
        learnMoreDoneButtonTitle = v8->_learnMoreDoneButtonTitle;
        v8->_learnMoreDoneButtonTitle = v27;
      }

      v29 = [v22 objectForKey:@"explanation"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v29 copy];
        learnMoreExplanation = v8->_learnMoreExplanation;
        v8->_learnMoreExplanation = v30;
      }

      v32 = [v22 objectForKey:@"title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v32 copy];
        learnMoreTitle = v8->_learnMoreTitle;
        v8->_learnMoreTitle = v33;
      }

      v35 = [v22 objectForKey:@"viewPassButton"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [v35 copy];
        learnMoreViewPassButtonTitle = v8->_learnMoreViewPassButtonTitle;
        v8->_learnMoreViewPassButtonTitle = v36;
      }
    }

    v38 = [dictionaryCopy objectForKey:@"lockup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 objectForKey:@"description"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = [v39 copy];
        lockupDescription = v8->_lockupDescription;
        v8->_lockupDescription = v40;
      }

      v42 = [v38 objectForKey:@"learnMore"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = [v42 copy];
        lockupLearnMoreLinkTitle = v8->_lockupLearnMoreLinkTitle;
        v8->_lockupLearnMoreLinkTitle = v43;
      }

      v45 = [v38 objectForKey:@"title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v45 copy];
        lockupTitle = v8->_lockupTitle;
        v8->_lockupTitle = v46;
      }
    }

    if (!v8->_dialogLearnMoreButton)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_LEARN_MORE" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_LEARN_MORE" inBundles:0 inTable:@"Redeem"];
      }
      v48 = ;
      v49 = v8->_dialogLearnMoreButton;
      v8->_dialogLearnMoreButton = v48;
    }

    if (!v8->_dialogMessage)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_DIALOG_MESSAGE" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_MESSAGE" inBundles:0 inTable:@"Redeem"];
      }
      v50 = ;
      v51 = v8->_dialogMessage;
      v8->_dialogMessage = v50;
    }

    if (!v8->_dialogNotNowButton)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_NOT_NOW" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_BUTTON_NOT_NOW" inBundles:0 inTable:@"Redeem"];
      }
      v52 = ;
      v53 = v8->_dialogNotNowButton;
      v8->_dialogNotNowButton = v52;
    }

    if (!v8->_dialogTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_DIALOG_TITLE" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_DIALOG_TITLE" inBundles:0 inTable:@"Redeem"];
      }
      v54 = ;
      v55 = v8->_dialogTitle;
      v8->_dialogTitle = v54;
    }

    if (!v8->_learnMoreAddPassButtonTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_ADD_PASS_BUTTON" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_ADD_PASS_BUTTON" inBundles:0 inTable:@"Redeem"];
      }
      v56 = ;
      v57 = v8->_learnMoreAddPassButtonTitle;
      v8->_learnMoreAddPassButtonTitle = v56;
    }

    if (!v8->_learnMoreDoneButtonTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_DONE_BUTTON" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_DONE_BUTTON" inBundles:0 inTable:@"Redeem"];
      }
      v58 = ;
      v59 = v8->_learnMoreDoneButtonTitle;
      v8->_learnMoreDoneButtonTitle = v58;
    }

    if (!v8->_learnMoreExplanation)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_EXPLANATION" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_EXPLANATION" inBundles:0 inTable:@"Redeem"];
      }
      v60 = ;
      v61 = v8->_learnMoreExplanation;
      v8->_learnMoreExplanation = v60;
    }

    if (!v8->_learnMoreTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_TITLE" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_TITLE" inBundles:0 inTable:@"Redeem"];
      }
      v62 = ;
      v63 = v8->_learnMoreTitle;
      v8->_learnMoreTitle = v62;
    }

    if (!v8->_learnMoreViewPassButtonTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_VIEW_PASS_BUTTON" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_PAGE_VIEW_PASS_BUTTON" inBundles:0 inTable:@"Redeem"];
      }
      v64 = ;
      v65 = v8->_learnMoreViewPassButtonTitle;
      v8->_learnMoreViewPassButtonTitle = v64;
    }

    if (!v8->_lockupDescription)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_EXPLANATION" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_EXPLANATION" inBundles:0 inTable:@"Redeem"];
      }
      v66 = ;
      v67 = v8->_lockupDescription;
      v8->_lockupDescription = v66;
    }

    if (!v8->_lockupLearnMoreLinkTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_LINK" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_LEARN_MORE_LINK" inBundles:0 inTable:@"Redeem"];
      }
      v68 = ;
      v69 = v8->_lockupLearnMoreLinkTitle;
      v8->_lockupLearnMoreLinkTitle = v68;
    }

    if (!v8->_lockupTitle)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITUNES_PASS_TITLE" inTable:@"Redeem"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITUNES_PASS_TITLE" inBundles:0 inTable:@"Redeem"];
      }
      v70 = ;
      v71 = v8->_lockupTitle;
      v8->_lockupTitle = v70;
    }
  }

  return v8;
}

- (id)learnMoreAlertView
{
  v2 = [objc_alloc(MEMORY[0x277D75118]) initWithTitle:self->_dialogTitle message:self->_dialogMessage delegate:0 cancelButtonTitle:self->_dialogNotNowButton otherButtonTitles:{self->_dialogLearnMoreButton, 0}];

  return v2;
}

@end