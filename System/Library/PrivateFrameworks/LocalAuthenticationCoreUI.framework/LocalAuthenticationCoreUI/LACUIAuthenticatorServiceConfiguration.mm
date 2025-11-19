@interface LACUIAuthenticatorServiceConfiguration
- (BOOL)isEqual:(id)a3;
- (LACUIAuthenticatorServiceConfiguration)initWithCoder:(id)a3;
- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)a3 requirement:(unint64_t)a4;
- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)a3 requirement:(unint64_t)a4 options:(id)a5;
- (id)description;
- (id)validateConfiguration;
- (void)_configureFallbackButtonTitleForRequirement:(uint64_t)a1;
- (void)_validateEnterConfiguration;
- (void)_validateRegisterConfiguration;
- (void)encodeWithCoder:(id)a3;
- (void)setFallbackButtonTitle:(id)a3;
@end

@implementation LACUIAuthenticatorServiceConfiguration

- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)a3 requirement:(unint64_t)a4
{
  v7 = a3;
  v21.receiver = self;
  v21.super_class = LACUIAuthenticatorServiceConfiguration;
  v8 = [(LACUIAuthenticatorServiceConfiguration *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_requirement = a4;
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 infoDictionary];
    v13 = [v12 objectForKey:@"CFBundleName"];
    [(LACUIAuthenticatorServiceConfiguration *)v9 setTitle:v13];

    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 bundleIdentifier];
    [(LACUIAuthenticatorServiceConfiguration *)v9 setBundleIdentifier:v15];

    [(LACUIAuthenticatorServiceConfiguration *)v9 setPasscodeLength:6];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BUTTON_CANCEL" value:&stru_28681D590 table:@"Localizable"];
    [(LACUIAuthenticatorServiceConfiguration *)v9 setCancelButtonTitle:v17];

    v9->_mode = 0;
    objc_storeStrong(&v9->_contextData, a3);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"ENTER_PASSWORD" value:&stru_28681D590 table:@"Localizable"];
    passwordFieldPlaceholder = v9->_passwordFieldPlaceholder;
    v9->_passwordFieldPlaceholder = v19;

    v9->_requiresIntent = 1;
    [(LACUIAuthenticatorServiceConfiguration *)v9 _configureFallbackButtonTitleForRequirement:a4];
  }

  return v9;
}

- (LACUIAuthenticatorServiceConfiguration)initWithContext:(id)a3 requirement:(unint64_t)a4 options:(id)a5
{
  v8 = a5;
  v9 = [(LACUIAuthenticatorServiceConfiguration *)self initWithContext:a3 requirement:a4];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F30]];
  v11 = [v8 objectForKeyedSubscript:v10];
  [(LACUIAuthenticatorServiceConfiguration *)v9 setSubtitle:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F78]];
  v13 = [v8 objectForKeyedSubscript:v12];

  [(LACUIAuthenticatorServiceConfiguration *)v9 setIconPath:v13];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACUIAuthenticatorServiceConfiguration *)self title];
  v6 = NSStringFromSelector(sel_title);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(LACUIAuthenticatorServiceConfiguration *)self bundleIdentifier];
  v8 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(LACUIAuthenticatorServiceConfiguration *)self iconPath];
  v10 = NSStringFromSelector(sel_iconPath);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(LACUIAuthenticatorServiceConfiguration *)self subtitle];
  v12 = NSStringFromSelector(sel_subtitle);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(LACUIAuthenticatorServiceConfiguration *)self cancelButtonTitle];
  v14 = NSStringFromSelector(sel_cancelButtonTitle);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(LACUIAuthenticatorServiceConfiguration *)self contextData];
  v16 = NSStringFromSelector(sel_contextData);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIAuthenticatorServiceConfiguration requirement](self, "requirement")}];
  v18 = NSStringFromSelector(sel_requirement);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[LACUIAuthenticatorServiceConfiguration passcodeLength](self, "passcodeLength")}];
  v20 = NSStringFromSelector(sel_passcodeLength);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIAuthenticatorServiceConfiguration mode](self, "mode")}];
  v22 = NSStringFromSelector(sel_mode);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(LACUIAuthenticatorServiceConfiguration *)self prompt];
  v24 = NSStringFromSelector(sel_prompt);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(LACUIAuthenticatorServiceConfiguration *)self verifyPrompt];
  v26 = NSStringFromSelector(sel_verifyPrompt);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(LACUIAuthenticatorServiceConfiguration *)self fallbackButtonTitle];
  v28 = NSStringFromSelector(sel_fallbackButtonTitle);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIAuthenticatorServiceConfiguration style](self, "style")}];
  v30 = NSStringFromSelector(sel_style);
  [v4 encodeObject:v29 forKey:v30];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[LACUIAuthenticatorServiceConfiguration headerHidden](self, "headerHidden")}];
  v32 = NSStringFromSelector(sel_headerHidden);
  [v4 encodeObject:v31 forKey:v32];

  v33 = [(LACUIAuthenticatorServiceConfiguration *)self passwordFieldPlaceholder];
  v34 = NSStringFromSelector(sel_passwordFieldPlaceholder);
  [v4 encodeObject:v33 forKey:v34];

  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[LACUIAuthenticatorServiceConfiguration requiresIntent](self, "requiresIntent")}];
  v35 = NSStringFromSelector(sel_requiresIntent);
  [v4 encodeObject:v36 forKey:v35];
}

- (LACUIAuthenticatorServiceConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_title);
  v60 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bundleIdentifier);
  v58 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_iconPath);
  v57 = [v3 decodeObjectOfClass:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_subtitle);
  v56 = [v3 decodeObjectOfClass:v10 forKey:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_cancelButtonTitle);
  v55 = [v3 decodeObjectOfClass:v12 forKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_contextData);
  v54 = [v3 decodeObjectOfClass:v14 forKey:v15];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_requirement);
  v18 = [v3 decodeObjectOfClass:v16 forKey:v17];
  v52 = [v18 integerValue];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_fallbackButtonTitle);
  v53 = [v3 decodeObjectOfClass:v19 forKey:v20];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_passcodeLength);
  v23 = [v3 decodeObjectOfClass:v21 forKey:v22];
  v51 = [v23 intValue];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_mode);
  v26 = [v3 decodeObjectOfClass:v24 forKey:v25];
  v50 = [v26 unsignedIntValue];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_prompt);
  v49 = [v3 decodeObjectOfClass:v27 forKey:v28];

  v29 = objc_opt_class();
  v30 = NSStringFromSelector(sel_verifyPrompt);
  v48 = [v3 decodeObjectOfClass:v29 forKey:v30];

  v31 = objc_opt_class();
  v32 = NSStringFromSelector(sel_style);
  v33 = [v3 decodeObjectOfClass:v31 forKey:v32];
  v47 = [v33 unsignedIntValue];

  v34 = objc_opt_class();
  v35 = NSStringFromSelector(sel_headerHidden);
  v36 = [v3 decodeObjectOfClass:v34 forKey:v35];
  v46 = [v36 BOOLValue];

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_passwordFieldPlaceholder);
  v45 = [v3 decodeObjectOfClass:v37 forKey:v38];

  v39 = objc_opt_class();
  v40 = NSStringFromSelector(sel_requiresIntent);
  v41 = [v3 decodeObjectOfClass:v39 forKey:v40];

  v44 = [v41 BOOLValue];
  v42 = [(LACUIAuthenticatorServiceConfiguration *)self initWithContext:v54 requirement:v52];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setTitle:v60];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setBundleIdentifier:v58];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setIconPath:v57];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setSubtitle:v56];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setCancelButtonTitle:v55];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setFallbackButtonTitle:v53];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setPasscodeLength:v51];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setMode:v50];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setPrompt:v49];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setVerifyPrompt:v48];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setStyle:v47];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setHeaderHidden:v46];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setPasswordFieldPlaceholder:v45];
  [(LACUIAuthenticatorServiceConfiguration *)v42 setRequiresIntent:v44];

  return v42;
}

- (void)setFallbackButtonTitle:(id)a3
{
  v8 = a3;
  if (v8 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByTrimmingCharactersInSet:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    objc_storeStrong(&self->_fallbackButtonTitle, a3);
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
    v4 = [(LACUIAuthenticatorServiceConfiguration *)self _validateRegisterConfiguration];
  }

  else
  {
    if (mode)
    {
      goto LABEL_3;
    }

    v4 = [(LACUIAuthenticatorServiceConfiguration *)self _validateEnterConfiguration];
  }

  a2 = v4;
LABEL_3:

  return a2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self != v4)
    {
      v5 = v4;
      v6 = [(LACUIAuthenticatorServiceConfiguration *)self title];
      v7 = [(LACUIAuthenticatorServiceConfiguration *)v5 title];
      v8 = [v6 isEqualToString:v7];

      if (!v8)
      {
        goto LABEL_52;
      }

      v9 = [(LACUIAuthenticatorServiceConfiguration *)self bundleIdentifier];
      v10 = [(LACUIAuthenticatorServiceConfiguration *)v5 bundleIdentifier];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_52;
      }

      v12 = [(LACUIAuthenticatorServiceConfiguration *)self iconPath];
      if (v12 || ([(LACUIAuthenticatorServiceConfiguration *)v5 iconPath], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = [(LACUIAuthenticatorServiceConfiguration *)self iconPath];
        v14 = [(LACUIAuthenticatorServiceConfiguration *)v5 iconPath];
        v15 = [v13 isEqualToString:v14];

        if (v12)
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

      v17 = [(LACUIAuthenticatorServiceConfiguration *)self subtitle];
      if (v17 || ([(LACUIAuthenticatorServiceConfiguration *)v5 subtitle], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v18 = [(LACUIAuthenticatorServiceConfiguration *)self subtitle];
        v19 = [(LACUIAuthenticatorServiceConfiguration *)v5 subtitle];
        v20 = [v18 isEqualToString:v19];

        if (v17)
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

      v21 = [(LACUIAuthenticatorServiceConfiguration *)self prompt];
      if (v21 || ([(LACUIAuthenticatorServiceConfiguration *)v5 prompt], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = [(LACUIAuthenticatorServiceConfiguration *)self prompt];
        v23 = [(LACUIAuthenticatorServiceConfiguration *)v5 prompt];
        v24 = [v22 isEqualToString:v23];

        if (v21)
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

      v25 = [(LACUIAuthenticatorServiceConfiguration *)self verifyPrompt];
      if (v25 || ([(LACUIAuthenticatorServiceConfiguration *)v5 verifyPrompt], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v26 = [(LACUIAuthenticatorServiceConfiguration *)self verifyPrompt];
        v27 = [(LACUIAuthenticatorServiceConfiguration *)v5 verifyPrompt];
        v28 = [v26 isEqualToString:v27];

        if (v25)
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

      v29 = [(LACUIAuthenticatorServiceConfiguration *)self cancelButtonTitle];
      if (v29 || ([(LACUIAuthenticatorServiceConfiguration *)v5 cancelButtonTitle], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = [(LACUIAuthenticatorServiceConfiguration *)self cancelButtonTitle];
        v31 = [(LACUIAuthenticatorServiceConfiguration *)v5 cancelButtonTitle];
        v32 = [v30 isEqualToString:v31];

        if (v29)
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

      v33 = [(LACUIAuthenticatorServiceConfiguration *)self fallbackButtonTitle];
      if (v33 || ([(LACUIAuthenticatorServiceConfiguration *)v5 fallbackButtonTitle], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = [(LACUIAuthenticatorServiceConfiguration *)self fallbackButtonTitle];
        v35 = [(LACUIAuthenticatorServiceConfiguration *)v5 fallbackButtonTitle];
        v36 = [v34 isEqualToString:v35];

        if (v33)
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

      v37 = [(LACUIAuthenticatorServiceConfiguration *)self requirement];
      if (v37 != [(LACUIAuthenticatorServiceConfiguration *)v5 requirement])
      {
        goto LABEL_52;
      }

      v38 = [(LACUIAuthenticatorServiceConfiguration *)self passcodeLength];
      if (v38 != [(LACUIAuthenticatorServiceConfiguration *)v5 passcodeLength])
      {
        goto LABEL_52;
      }

      v39 = [(LACUIAuthenticatorServiceConfiguration *)self mode];
      if (v39 != [(LACUIAuthenticatorServiceConfiguration *)v5 mode])
      {
        goto LABEL_52;
      }

      v40 = [(LACUIAuthenticatorServiceConfiguration *)self contextData];
      v41 = [(LACUIAuthenticatorServiceConfiguration *)v5 contextData];
      v42 = v41;
      if (v40 == v41)
      {
      }

      else
      {
        v43 = [(LACUIAuthenticatorServiceConfiguration *)self contextData];
        v44 = [(LACUIAuthenticatorServiceConfiguration *)v5 contextData];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_52;
        }
      }

      v46 = [(LACUIAuthenticatorServiceConfiguration *)self style];
      if (v46 == [(LACUIAuthenticatorServiceConfiguration *)v5 style])
      {
        v47 = [(LACUIAuthenticatorServiceConfiguration *)self headerHidden];
        v16 = v47 ^ [(LACUIAuthenticatorServiceConfiguration *)v5 headerHidden]^ 1;
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

- (void)_configureFallbackButtonTitleForRequirement:(uint64_t)a1
{
  if (a1)
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
        v6 = *(a1 + 72);
        *(a1 + 72) = v5;

        v7 = v8;
        break;
      default:
        v7 = *(a1 + 72);
        *(a1 + 72) = 0;
        break;
    }
  }
}

- (void)_validateEnterConfiguration
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (v3 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "stringByTrimmingCharactersInSet:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
    {
      if (v2[10])
      {
        if (v2[11] != 0x7FFFFFFFFFFFFFFFLL)
        {
          a1 = 0;
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

    a1 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v7];
LABEL_9:
    v1 = vars8;
  }

  return a1;
}

- (void)_validateRegisterConfiguration
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (v3 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "stringByTrimmingCharactersInSet:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v4, v6))
    {
      v7 = v2[11];
      if (v7 == 5 || v7 == 3)
      {
        if (v2[10])
        {
          a1 = 0;
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

    a1 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] debugDescription:v10];
    goto LABEL_13;
  }

LABEL_14:

  return a1;
}

@end