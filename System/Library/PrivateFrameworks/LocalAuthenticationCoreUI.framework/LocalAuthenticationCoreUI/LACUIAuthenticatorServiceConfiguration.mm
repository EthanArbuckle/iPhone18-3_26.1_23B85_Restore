@interface LACUIAuthenticatorServiceConfiguration
- (BOOL)isEqual:(id)equal;
- (LACUIAuthenticatorServiceConfiguration)initWithCoder:(id)coder;
- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)context requirement:(unint64_t)requirement;
- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)context requirement:(unint64_t)requirement options:(id)options;
- (id)description;
- (id)validateConfiguration;
- (void)_configureFallbackButtonTitleForRequirement:(uint64_t)requirement;
- (void)_validateEnterConfiguration;
- (void)_validateRegisterConfiguration;
- (void)encodeWithCoder:(id)coder;
- (void)setFallbackButtonTitle:(id)title;
@end

@implementation LACUIAuthenticatorServiceConfiguration

- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)context requirement:(unint64_t)requirement
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = LACUIAuthenticatorServiceConfiguration;
  v8 = [(LACUIAuthenticatorServiceConfiguration *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_requirement = requirement;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v13 = [infoDictionary objectForKey:@"CFBundleName"];
    [(LACUIAuthenticatorServiceConfiguration *)v9 setTitle:v13];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle2 bundleIdentifier];
    [(LACUIAuthenticatorServiceConfiguration *)v9 setBundleIdentifier:bundleIdentifier];

    [(LACUIAuthenticatorServiceConfiguration *)v9 setPasscodeLength:6];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BUTTON_CANCEL" value:&stru_28681D590 table:@"Localizable"];
    [(LACUIAuthenticatorServiceConfiguration *)v9 setCancelButtonTitle:v17];

    v9->_mode = 0;
    objc_storeStrong(&v9->_contextData, context);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ENTER_PASSWORD" value:&stru_28681D590 table:@"Localizable"];
    passwordFieldPlaceholder = v9->_passwordFieldPlaceholder;
    v9->_passwordFieldPlaceholder = v19;

    v9->_requiresIntent = 1;
    [(LACUIAuthenticatorServiceConfiguration *)v9 _configureFallbackButtonTitleForRequirement:requirement];
  }

  return v9;
}

- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)context requirement:(unint64_t)requirement options:(id)options
{
  optionsCopy = options;
  v9 = [(LACUIAuthenticatorServiceConfiguration *)self initWithContext:context requirement:requirement];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F30]];
  v11 = [optionsCopy objectForKeyedSubscript:v10];
  [(LACUIAuthenticatorServiceConfiguration *)v9 setSubtitle:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F78]];
  v13 = [optionsCopy objectForKeyedSubscript:v12];

  [(LACUIAuthenticatorServiceConfiguration *)v9 setIconPath:v13];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(LACUIAuthenticatorServiceConfiguration *)self title];
  v6 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v6];

  bundleIdentifier = [(LACUIAuthenticatorServiceConfiguration *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v8];

  iconPath = [(LACUIAuthenticatorServiceConfiguration *)self iconPath];
  v10 = NSStringFromSelector(sel_iconPath);
  [coderCopy encodeObject:iconPath forKey:v10];

  subtitle = [(LACUIAuthenticatorServiceConfiguration *)self subtitle];
  v12 = NSStringFromSelector(sel_subtitle);
  [coderCopy encodeObject:subtitle forKey:v12];

  cancelButtonTitle = [(LACUIAuthenticatorServiceConfiguration *)self cancelButtonTitle];
  v14 = NSStringFromSelector(sel_cancelButtonTitle);
  [coderCopy encodeObject:cancelButtonTitle forKey:v14];

  contextData = [(LACUIAuthenticatorServiceConfiguration *)self contextData];
  v16 = NSStringFromSelector(sel_contextData);
  [coderCopy encodeObject:contextData forKey:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIAuthenticatorServiceConfiguration requirement](self, "requirement")}];
  v18 = NSStringFromSelector(sel_requirement);
  [coderCopy encodeObject:v17 forKey:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LACUIAuthenticatorServiceConfiguration passcodeLength](self, "passcodeLength")}];
  v20 = NSStringFromSelector(sel_passcodeLength);
  [coderCopy encodeObject:v19 forKey:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIAuthenticatorServiceConfiguration mode](self, "mode")}];
  v22 = NSStringFromSelector(sel_mode);
  [coderCopy encodeObject:v21 forKey:v22];

  prompt = [(LACUIAuthenticatorServiceConfiguration *)self prompt];
  v24 = NSStringFromSelector(sel_prompt);
  [coderCopy encodeObject:prompt forKey:v24];

  verifyPrompt = [(LACUIAuthenticatorServiceConfiguration *)self verifyPrompt];
  v26 = NSStringFromSelector(sel_verifyPrompt);
  [coderCopy encodeObject:verifyPrompt forKey:v26];

  fallbackButtonTitle = [(LACUIAuthenticatorServiceConfiguration *)self fallbackButtonTitle];
  v28 = NSStringFromSelector(sel_fallbackButtonTitle);
  [coderCopy encodeObject:fallbackButtonTitle forKey:v28];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIAuthenticatorServiceConfiguration style](self, "style")}];
  v30 = NSStringFromSelector(sel_style);
  [coderCopy encodeObject:v29 forKey:v30];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[LACUIAuthenticatorServiceConfiguration headerHidden](self, "headerHidden")}];
  v32 = NSStringFromSelector(sel_headerHidden);
  [coderCopy encodeObject:v31 forKey:v32];

  passwordFieldPlaceholder = [(LACUIAuthenticatorServiceConfiguration *)self passwordFieldPlaceholder];
  v34 = NSStringFromSelector(sel_passwordFieldPlaceholder);
  [coderCopy encodeObject:passwordFieldPlaceholder forKey:v34];

  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[LACUIAuthenticatorServiceConfiguration requiresIntent](self, "requiresIntent")}];
  v35 = NSStringFromSelector(sel_requiresIntent);
  [coderCopy encodeObject:v36 forKey:v35];
}

- (LACUIAuthenticatorServiceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_title);
  v60 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bundleIdentifier);
  v58 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_iconPath);
  v57 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_subtitle);
  v56 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_cancelButtonTitle);
  v55 = [coderCopy decodeObjectOfClass:v12 forKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_contextData);
  v54 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_requirement);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
  integerValue = [v18 integerValue];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_fallbackButtonTitle);
  v53 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_passcodeLength);
  v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
  intValue = [v23 intValue];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_mode);
  v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
  unsignedIntValue = [v26 unsignedIntValue];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_prompt);
  v49 = [coderCopy decodeObjectOfClass:v27 forKey:v28];

  v29 = objc_opt_class();
  v30 = NSStringFromSelector(sel_verifyPrompt);
  v48 = [coderCopy decodeObjectOfClass:v29 forKey:v30];

  v31 = objc_opt_class();
  v32 = NSStringFromSelector(sel_style);
  v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];
  unsignedIntValue2 = [v33 unsignedIntValue];

  v34 = objc_opt_class();
  v35 = NSStringFromSelector(sel_headerHidden);
  v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
  bOOLValue = [v36 BOOLValue];

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_passwordFieldPlaceholder);
  v45 = [coderCopy decodeObjectOfClass:v37 forKey:v38];

  v39 = objc_opt_class();
  v40 = NSStringFromSelector(sel_requiresIntent);
  v41 = [coderCopy decodeObjectOfClass:v39 forKey:v40];

  bOOLValue2 = [v41 BOOLValue];
  v42 = [(LACUIAuthenticatorServiceConfiguration *)self initWithContext:v54 requirement:integerValue];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setTitle:v60];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setBundleIdentifier:v58];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setIconPath:v57];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setSubtitle:v56];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setCancelButtonTitle:v55];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setFallbackButtonTitle:v53];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setPasscodeLength:intValue];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setMode:unsignedIntValue];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setPrompt:v49];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setVerifyPrompt:v48];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setStyle:unsignedIntValue2];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setHeaderHidden:bOOLValue];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setPasswordFieldPlaceholder:v45];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setRequiresIntent:bOOLValue2];

  return v42;
}

- (void)setFallbackButtonTitle:(id)title
{
  titleCopy = title;
  if (titleCopy && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(titleCopy, "stringByTrimmingCharactersInSet:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    objc_storeStrong(&self->_fallbackButtonTitle, title);
  }

  else
  {
    [(LACUIAuthenticatorServiceConfiguration *)self _configureFallbackButtonTitleForRequirement:?];
  }
}

- (id)validateConfiguration
{
  mode = self->_mode;
  if (mode == 1)
  {
    _validateRegisterConfiguration = [(LACUIAuthenticatorServiceConfiguration *)self _validateRegisterConfiguration];
  }

  else
  {
    if (mode)
    {
      goto LABEL_3;
    }

    _validateRegisterConfiguration = [(LACUIAuthenticatorServiceConfiguration *)self _validateEnterConfiguration];
  }

  a2 = _validateRegisterConfiguration;
LABEL_3:

  return a2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self != equalCopy)
    {
      v5 = equalCopy;
      title = [(LACUIAuthenticatorServiceConfiguration *)self title];
      title2 = [(LACUIAuthenticatorServiceConfiguration *)v5 title];
      v8 = [title isEqualToString:title2];

      if (!v8)
      {
        goto LABEL_52;
      }

      bundleIdentifier = [(LACUIAuthenticatorServiceConfiguration *)self bundleIdentifier];
      bundleIdentifier2 = [(LACUIAuthenticatorServiceConfiguration *)v5 bundleIdentifier];
      v11 = [bundleIdentifier isEqualToString:bundleIdentifier2];

      if (!v11)
      {
        goto LABEL_52;
      }

      iconPath = [(LACUIAuthenticatorServiceConfiguration *)self iconPath];
      if (iconPath || ([(LACUIAuthenticatorServiceConfiguration *)v5 iconPath], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        iconPath2 = [(LACUIAuthenticatorServiceConfiguration *)self iconPath];
        iconPath3 = [(LACUIAuthenticatorServiceConfiguration *)v5 iconPath];
        v15 = [iconPath2 isEqualToString:iconPath3];

        if (iconPath)
        {

          if (!v15)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if ((v15 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      subtitle = [(LACUIAuthenticatorServiceConfiguration *)self subtitle];
      if (subtitle || ([(LACUIAuthenticatorServiceConfiguration *)v5 subtitle], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        subtitle2 = [(LACUIAuthenticatorServiceConfiguration *)self subtitle];
        subtitle3 = [(LACUIAuthenticatorServiceConfiguration *)v5 subtitle];
        v20 = [subtitle2 isEqualToString:subtitle3];

        if (subtitle)
        {

          if (!v20)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if ((v20 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      prompt = [(LACUIAuthenticatorServiceConfiguration *)self prompt];
      if (prompt || ([(LACUIAuthenticatorServiceConfiguration *)v5 prompt], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        prompt2 = [(LACUIAuthenticatorServiceConfiguration *)self prompt];
        prompt3 = [(LACUIAuthenticatorServiceConfiguration *)v5 prompt];
        v24 = [prompt2 isEqualToString:prompt3];

        if (prompt)
        {

          if (!v24)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if ((v24 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      verifyPrompt = [(LACUIAuthenticatorServiceConfiguration *)self verifyPrompt];
      if (verifyPrompt || ([(LACUIAuthenticatorServiceConfiguration *)v5 verifyPrompt], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        verifyPrompt2 = [(LACUIAuthenticatorServiceConfiguration *)self verifyPrompt];
        verifyPrompt3 = [(LACUIAuthenticatorServiceConfiguration *)v5 verifyPrompt];
        v28 = [verifyPrompt2 isEqualToString:verifyPrompt3];

        if (verifyPrompt)
        {

          if (!v28)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if ((v28 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      cancelButtonTitle = [(LACUIAuthenticatorServiceConfiguration *)self cancelButtonTitle];
      if (cancelButtonTitle || ([(LACUIAuthenticatorServiceConfiguration *)v5 cancelButtonTitle], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        cancelButtonTitle2 = [(LACUIAuthenticatorServiceConfiguration *)self cancelButtonTitle];
        cancelButtonTitle3 = [(LACUIAuthenticatorServiceConfiguration *)v5 cancelButtonTitle];
        v32 = [cancelButtonTitle2 isEqualToString:cancelButtonTitle3];

        if (cancelButtonTitle)
        {

          if (!v32)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if ((v32 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      fallbackButtonTitle = [(LACUIAuthenticatorServiceConfiguration *)self fallbackButtonTitle];
      if (fallbackButtonTitle || ([(LACUIAuthenticatorServiceConfiguration *)v5 fallbackButtonTitle], (bundleIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        fallbackButtonTitle2 = [(LACUIAuthenticatorServiceConfiguration *)self fallbackButtonTitle];
        fallbackButtonTitle3 = [(LACUIAuthenticatorServiceConfiguration *)v5 fallbackButtonTitle];
        v36 = [fallbackButtonTitle2 isEqualToString:fallbackButtonTitle3];

        if (fallbackButtonTitle)
        {

          if (!v36)
          {
            goto LABEL_52;
          }
        }

        else
        {

          if ((v36 & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      requirement = [(LACUIAuthenticatorServiceConfiguration *)self requirement];
      if (requirement != [(LACUIAuthenticatorServiceConfiguration *)v5 requirement])
      {
        goto LABEL_52;
      }

      passcodeLength = [(LACUIAuthenticatorServiceConfiguration *)self passcodeLength];
      if (passcodeLength != [(LACUIAuthenticatorServiceConfiguration *)v5 passcodeLength])
      {
        goto LABEL_52;
      }

      mode = [(LACUIAuthenticatorServiceConfiguration *)self mode];
      if (mode != [(LACUIAuthenticatorServiceConfiguration *)v5 mode])
      {
        goto LABEL_52;
      }

      contextData = [(LACUIAuthenticatorServiceConfiguration *)self contextData];
      contextData2 = [(LACUIAuthenticatorServiceConfiguration *)v5 contextData];
      v42 = contextData2;
      if (contextData == contextData2)
      {
      }

      else
      {
        contextData3 = [(LACUIAuthenticatorServiceConfiguration *)self contextData];
        contextData4 = [(LACUIAuthenticatorServiceConfiguration *)v5 contextData];
        v45 = [contextData3 isEqual:contextData4];

        if (!v45)
        {
          goto LABEL_52;
        }
      }

      style = [(LACUIAuthenticatorServiceConfiguration *)self style];
      if (style == [(LACUIAuthenticatorServiceConfiguration *)v5 style])
      {
        headerHidden = [(LACUIAuthenticatorServiceConfiguration *)self headerHidden];
        v16 = headerHidden ^ [(LACUIAuthenticatorServiceConfiguration *)v5 headerHidden]^ 1;
LABEL_53:

        goto LABEL_54;
      }

LABEL_52:
      LOBYTE(v16) = 0;
      goto LABEL_53;
    }

    LOBYTE(v16) = 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

LABEL_54:

  return v16;
}

- (id)description
{
  v32[16] = *MEMORY[0x277D85DE8];
  v27 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"title: %@", self->_title];
  v32[0] = v31;
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleIdentifier: %@", self->_bundleIdentifier];
  v32[1] = v30;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"iconPath: %@", self->_iconPath];
  v32[2] = v29;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"subtitle: %@", self->_subtitle];
  v32[3] = v28;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"prompt: %@", self->_prompt];
  v32[4] = v26;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"verifyPrompt: %@", self->_verifyPrompt];
  v32[5] = v24;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"cancelButtonTitle: %@", self->_cancelButtonTitle];
  v32[6] = v23;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"fallbackButtonTitle: %@", self->_fallbackButtonTitle];
  v32[7] = v22;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"passwordFieldPlaceholder: %@", self->_passwordFieldPlaceholder];
  v32[8] = v21;
  v3 = MEMORY[0x277CCACA8];
  v20 = NSStringFromLACUIAuthenticatorServiceConfigurationRequirement(self->_requirement);
  v4 = [v3 stringWithFormat:@"requirement: %@", v20];
  v32[9] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"passcodeLength: %d", self->_passcodeLength];
  v32[10] = v5;
  if (self->_mode)
  {
    v6 = @"Register";
  }

  else
  {
    v6 = @"Enter";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"mode: %@", v6];
  v32[11] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"contextData: %@", self->_contextData];
  v32[12] = v8;
  if (self->_style)
  {
    v9 = @"FullScreen";
  }

  else
  {
    v9 = @"Sheet";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"style: %@", v9];
  v32[13] = v10;
  if (self->_headerHidden)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"headerHidden: %@", v11];
  v32[14] = v12;
  if (self->_requiresIntent)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"requiresIntent: %@", v13];
  v32[15] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:16];
  v16 = [v15 componentsJoinedByString:@" "];;
  v17 = [v27 stringWithFormat:@"<%@ %p %@>", v25, self, v16];;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_configureFallbackButtonTitleForRequirement:(uint64_t)requirement
{
  if (requirement)
  {
    switch(a2)
    {
      case 2:
      case 4:
        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = v3;
        v4 = @"DEVICE_PASSCODE";
        goto LABEL_5;
      case 3:
      case 5:
        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = v3;
        v4 = @"CUSTOM_PASSWORD";
LABEL_5:
        v5 = [v3 localizedStringForKey:v4 value:&stru_28681D590 table:@"Localizable"];
        v6 = *(requirement + 72);
        *(requirement + 72) = v5;

        v7 = v8;
        break;
      default:
        v7 = *(requirement + 72);
        *(requirement + 72) = 0;
        break;
    }
  }
}

- (void)_validateEnterConfiguration
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (v3 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "stringByTrimmingCharactersInSet:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
    {
      if (selfCopy[10])
      {
        if (selfCopy[11] != 0x7FFFFFFFFFFFFFFFLL)
        {
          self = 0;
          goto LABEL_9;
        }

        v7 = @"There must be at least 1 authentication mechanism";
      }

      else
      {
        v7 = @"Password field placeholder cannot be nil or empty";
      }
    }

    else
    {
      v7 = @"Title cannot be nil or empty";
    }

    self = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v7];
LABEL_9:
    v1 = vars8;
  }

  return self;
}

- (void)_validateRegisterConfiguration
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (v3 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "stringByTrimmingCharactersInSet:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
    {
      v7 = selfCopy[11];
      if (v7 == 5 || v7 == 3)
      {
        if (selfCopy[10])
        {
          self = 0;
LABEL_13:
          v1 = vars8;
          goto LABEL_14;
        }

        v10 = @"Password field placeholder cannot be nil or empty";
      }

      else
      {
        v10 = @"Invalid requirement used for register mode";
      }
    }

    else
    {
      v10 = @"Title cannot be nil or empty";
    }

    self = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v10];
    goto LABEL_13;
  }

LABEL_14:

  return self;
}

@end