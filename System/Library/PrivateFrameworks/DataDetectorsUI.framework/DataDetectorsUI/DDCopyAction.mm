@interface DDCopyAction
+ (BOOL)actionAvailableForContact:(id)contact;
+ (id)actionWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDCopyAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context;
- (DDCopyAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)iconName;
- (id)localizedName;
- (void)_copyURL:(id)l;
- (void)copyStringOnly:(id)only;
- (void)performFromView:(id)view;
@end

@implementation DDCopyAction

+ (id)actionWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  contextCopy = context;
  lCopy = l;
  v10 = [[self alloc] initWithURL:lCopy result:result context:contextCopy];

  return v10;
}

- (DDCopyAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v9.receiver = self;
  v9.super_class = DDCopyAction;
  result = [(DDAction *)&v9 initWithURL:l result:result context:context];
  if (result && result->super._result && !result->super._url)
  {
    resultCopy = result;
    v7 = _DDURLFromResult(result->super._result);
    url = resultCopy->super._url;
    resultCopy->super._url = v7;

    return resultCopy;
  }

  return result;
}

+ (BOOL)actionAvailableForContact:(id)contact
{
  v3 = DDDefaultAddressForContact(contact);
  v4 = v3 != 0;

  return v4;
}

- (id)localizedName
{
  if (self->super._result)
  {
    Category = DDResultGetCategory();
    if (Category == 2)
    {
      goto LABEL_43;
    }

    v4 = Category;
    if (Category == 1)
    {
      v5 = self->super._result;
      v6 = *MEMORY[0x277D040C8];
      if (DDResultHasType())
      {
        v7 = self->super._result;
        MatchedString = DDResultGetMatchedString();
        if ((dd_handleIsChatBot(MatchedString) & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      }

      scheme = [(NSURL *)self->super._url scheme];
      lowercaseString = [scheme lowercaseString];
      v26 = [lowercaseString isEqualToString:@"mailto"];

      if (v26)
      {
        goto LABEL_49;
      }

      if (!dd_isAnySimpleTelephonyScheme(self->super._url))
      {
LABEL_50:
        v19 = @"Copy Link";
        goto LABEL_51;
      }

      url = self->super._url;
      v38 = 0;
      v28 = [(NSURL *)url dd_phoneNumberFromTelSchemeAndExtractBody:&v38 serviceID:0 suggestions:?];
      v29 = v38;
      v30 = [v28 containsString:@"@"];
      if (v29)
      {
        v17 = 0;
LABEL_39:
        v4 = 1;

        goto LABEL_40;
      }

      v17 = v30;
      if (([v28 length] == 0) | v30 & 1)
      {
        goto LABEL_39;
      }

      v17 = 0;
      if ([DDTextMessageAction isShowMessageURL:self->super._url])
      {
        goto LABEL_39;
      }

      v4 = 2;

LABEL_40:
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v19 = @"Copy Phone Number";
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v17)
      {
LABEL_49:
        v19 = @"Copy Email";
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v18 = 0;
    v17 = 0;
    if (Category <= 2)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  v9 = self->super._url;
  if (v9)
  {
    scheme2 = [(NSURL *)v9 scheme];
    lowercaseString2 = [scheme2 lowercaseString];

    isAnySimpleTelephonyScheme = dd_isAnySimpleTelephonyScheme(self->super._url);
    v13 = self->super._url;
    if (!isAnySimpleTelephonyScheme)
    {
      if (![(__CFString *)v13 dd_isMaps:1]|| (DDMapAddressFromURL(self->super._url), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        if ([lowercaseString2 isEqualToString:@"mailto"])
        {
          v17 = 1;
        }

        else
        {
          dd_schemeIsHttp(lowercaseString2);
          v17 = 0;
        }

        v4 = 1;

        goto LABEL_40;
      }

      v4 = 3;
      v18 = 1;

LABEL_12:
      if (v4 == 4)
      {
        v19 = @"Copy Event";
        goto LABEL_51;
      }

      if (v4 == 3)
      {
        if (v18)
        {
          v19 = @"Copy Location";
          goto LABEL_51;
        }

        goto LABEL_19;
      }

      goto LABEL_43;
    }

    v37 = 0;
    v14 = [(NSURL *)v13 dd_phoneNumberFromTelSchemeAndExtractBody:&v37 serviceID:0 suggestions:?];
    v15 = v37;
    v16 = [v14 containsString:@"@"];
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
      if (!(([v14 length] == 0) | v16 & 1))
      {
        v17 = 0;
        if (![DDTextMessageAction isShowMessageURL:self->super._url])
        {
          v4 = 2;
          goto LABEL_34;
        }
      }
    }

    v4 = 1;
LABEL_34:

    goto LABEL_40;
  }

  contact = self->super._contact;
  if (contact)
  {
    v21 = DDDefaultAddressForContact(contact);

    if (v21)
    {
      v22 = DDDefaultAddressForContact(self->super._contact);

      if (v22)
      {
LABEL_19:
        v19 = @"Copy Address";
        goto LABEL_51;
      }
    }
  }

LABEL_43:
  v31 = self->super._result;
  v32 = *MEMORY[0x277D04048];
  if (DDResultHasType())
  {
    v19 = @"Copy Code";
  }

  else
  {
    v33 = self->super._result;
    v34 = *MEMORY[0x277D040D0];
    if (DDResultHasType())
    {
      v19 = @"Copy Flight Code";
    }

    else
    {
      v19 = @"Copy";
    }
  }

LABEL_51:
  v35 = DDLocalizedString(v19);

  return v35;
}

- (id)iconName
{
  if (self->super._result && DDResultGetCategory() == 1)
  {
    v3 = self->super._result;
    v4 = *MEMORY[0x277D040C8];
    if ((DDResultHasType() & 1) == 0)
    {
      scheme = [(NSURL *)self->super._url scheme];
      lowercaseString = [scheme lowercaseString];
      v7 = [lowercaseString isEqualToString:@"mailto"];

      if ((v7 & 1) == 0 && (dd_isAnySimpleTelephonyScheme(self->super._url) & 1) == 0)
      {
        scheme2 = [(NSURL *)self->super._url scheme];
        lowercaseString2 = [scheme2 lowercaseString];
        v10 = [lowercaseString2 isEqualToString:@"upi"];

        if ((v10 & 1) == 0)
        {
          return @"link";
        }
      }
    }

    return @"doc.on.doc";
  }

  url = self->super._url;
  if (!url)
  {
    return @"doc.on.doc";
  }

  scheme3 = [(NSURL *)url scheme];
  lowercaseString3 = [scheme3 lowercaseString];

  if (!dd_schemeIsHttp(lowercaseString3) || ([lowercaseString3 isEqualToString:@"mailto"] & 1) != 0 || (dd_isAnySimpleTelephonyScheme(self->super._url) & 1) != 0)
  {

    return @"doc.on.doc";
  }

  if ([(NSURL *)self->super._url dd_isMaps:1])
  {
    v15 = DDMapAddressFromURL(self->super._url);

    if (v15)
    {
      return @"doc.on.doc";
    }

    return @"link";
  }

  else
  {

    return @"link";
  }
}

- (void)_copyURL:(id)l
{
  v34[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    scheme = [(__CFString *)lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"mailto"])
    {
      _web_userVisibleString = dd_emailFromMailtoScheme(v5);
      if (!_web_userVisibleString)
      {
        goto LABEL_13;
      }
    }

    else if ([lowercaseString isEqualToString:@"tel"])
    {
      _web_userVisibleString = dd_phoneNumberFromTelScheme(v5);
      if (!_web_userVisibleString)
      {
        goto LABEL_13;
      }
    }

    else if (![(__CFString *)v5 dd_isMaps:1]|| (DDMapAddressFromURL(v5), (_web_userVisibleString = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_13:
      _web_userVisibleString = [(__CFString *)v5 _web_userVisibleString];
      if (![_web_userVisibleString length])
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (![_web_userVisibleString length])
    {
LABEL_14:
      v21 = MEMORY[0x277CBEA60];
      v22 = MEMORY[0x277CBEAC0];
      identifier = [*MEMORY[0x277CE1E90] identifier];
      v24 = [v22 dictionaryWithObjectsAndKeys:{v5, identifier, 0}];
      v20 = [v21 arrayWithObject:v24];

LABEL_15:
      v25 = MEMORY[0x277D75810];
      dataOwner = self->_dataOwner;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __25__DDCopyAction__copyURL___block_invoke;
      v29[3] = &unk_278290B50;
      v30 = v20;
      v27 = v20;
      [v25 _performAsDataOwner:dataOwner block:v29];

      goto LABEL_16;
    }

LABEL_8:
    v9 = MEMORY[0x277CBEB38];
    identifier2 = [*MEMORY[0x277CE1EB0] identifier];
    identifier3 = [*MEMORY[0x277CE1E90] identifier];
    v12 = [v9 dictionaryWithObjectsAndKeys:{_web_userVisibleString, identifier2, v5, identifier3, 0}];

    v13 = objc_alloc(MEMORY[0x277CCA898]);
    v33 = *MEMORY[0x277D740E8];
    v34[0] = v5;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v15 = [v13 initWithString:_web_userVisibleString attributes:v14];

    v16 = [v15 length];
    v31 = *MEMORY[0x277D74090];
    v32 = *MEMORY[0x277D74130];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v18 = [v15 dataFromRange:0 documentAttributes:v16 error:{v17, 0}];

    if (v18)
    {
      identifier4 = [*MEMORY[0x277CE1E50] identifier];
      [v12 setObject:v18 forKey:identifier4];
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithObject:v12];

    goto LABEL_15;
  }

LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

void __25__DDCopyAction__copyURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 setItems:*(a1 + 32)];
}

- (void)copyStringOnly:(id)only
{
  onlyCopy = only;
  v5 = MEMORY[0x277D75810];
  dataOwner = self->_dataOwner;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__DDCopyAction_copyStringOnly___block_invoke;
  v8[3] = &unk_278290B50;
  v9 = onlyCopy;
  v7 = onlyCopy;
  [v5 _performAsDataOwner:dataOwner block:v8];
}

void __31__DDCopyAction_copyStringOnly___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length])
  {
    v2 = [*MEMORY[0x277CE1EB0] identifier];
    v3 = *(a1 + 32);
    v8 = v2;
    v9 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [MEMORY[0x277D75810] generalPasteboard];
  [v6 setItems:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performFromView:(id)view
{
  if (self->_query)
  {
    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard setString:self->_query];

    return;
  }

  self->_dataOwner = [view _dataOwnerForCopy];
  scheme = [(NSURL *)self->super._url scheme];
  lowercaseString = [scheme lowercaseString];

  DDUIRecordOtherActionInSheetForResultIfNeeded(self->super._result);
  if (dd_isAnySimpleTelephonyScheme(self->super._url))
  {
    v30 = 0;
    if (self->super._result)
    {
      DDResultCopyPhoneValue();
    }

    url = self->super._url;
    v29 = 0;
    v9 = [(NSURL *)url dd_phoneNumberFromTelSchemeAndExtractBody:&v29 serviceID:0 suggestions:?];
    generalPasteboard3 = v29;
    if (generalPasteboard3 || ![v9 length] || (objc_msgSend(v9, "isEqualToString:", @"open") & 1) != 0)
    {
      [(DDCopyAction *)self _copyURL:self->super._url];
    }

    else
    {
      [(DDCopyAction *)self copyStringOnly:v9];
    }

    goto LABEL_16;
  }

  if ([lowercaseString isEqualToString:@"upi"])
  {
    if (self->super._result)
    {
      v6 = DDResultCopyUPIIdentifierValue();
      if (v6)
      {
        v7 = v6;
        [(DDCopyAction *)self copyStringOnly:v6];
        CFRelease(v7);

        return;
      }
    }

    goto LABEL_29;
  }

  if ([lowercaseString isEqualToString:@"mailto"])
  {
    v30 = 0;
    if (self->super._result)
    {
      DDResultCopyMailValue();
    }

    goto LABEL_29;
  }

  if ([(NSURL *)self->super._url dd_isMaps:1])
  {
    if (self->super._result && DDResultGetCategory() == 3)
    {
      goto LABEL_26;
    }

LABEL_29:
    v13 = self->super._url;
LABEL_30:
    [(DDCopyAction *)self _copyURL:v13];

    return;
  }

  if (dd_schemeIsHttp(lowercaseString))
  {
    goto LABEL_29;
  }

  if (self->super._result)
  {
    v14 = DDResultCopyAuthCode();
    if (v14)
    {
      generalPasteboard6 = v14;
      generalPasteboard2 = [MEMORY[0x277D75810] generalPasteboard];
      v17 = generalPasteboard2;
      v18 = generalPasteboard6;
    }

    else
    {
      result = self->super._result;
      Category = DDResultGetCategory();
      if (Category == 3)
      {
LABEL_26:
        generalPasteboard3 = [MEMORY[0x277D75810] generalPasteboard];
        v11 = self->super._result;
        generalPasteboard4 = DDResultGetMatchedString();
        [(__CFString *)generalPasteboard3 setString:generalPasteboard4];
LABEL_27:

LABEL_16:
        return;
      }

      if ((Category & 0xFFFFFFFE) != 4)
      {
        if (Category == 1)
        {
          generalPasteboard3 = _DDURLFromResult(self->super._result);
          if (generalPasteboard3)
          {
            generalPasteboard4 = [MEMORY[0x277D75810] generalPasteboard];
            [generalPasteboard4 setURL:generalPasteboard3];
          }

          else
          {
            v26 = self->super._result;
            generalPasteboard4 = DDResultGetMatchedString();
            generalPasteboard5 = [MEMORY[0x277D75810] generalPasteboard];
            [generalPasteboard5 setString:generalPasteboard4];
          }

          goto LABEL_27;
        }

        v24 = Category;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [DDCopyAction performFromView:v24];
        }
      }

      v25 = self->super._result;
      v17 = DDResultGetMatchedString();
      generalPasteboard2 = [MEMORY[0x277D75810] generalPasteboard];
      generalPasteboard6 = generalPasteboard2;
      v18 = v17;
    }

    [generalPasteboard2 setString:v18];
    goto LABEL_35;
  }

  contact = self->super._contact;
  if (contact)
  {
    v20 = DDDefaultAddressForContact(contact);

    if (v20)
    {
      v17 = DDDefaultAddressForContact(self->super._contact);
      if (!v17)
      {
        goto LABEL_36;
      }

      generalPasteboard6 = [MEMORY[0x277D75810] generalPasteboard];
      v21 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v17 style:0];
      [generalPasteboard6 setString:v21];

LABEL_35:
LABEL_36:

      return;
    }
  }

  v13 = self->super._url;
  if (v13)
  {
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDCopyAction performFromView:];
  }
}

- (DDCopyAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v10 = [string substringWithRange:{location, length}];
  query = self->_query;
  self->_query = v10;

  v12 = [(DDCopyAction *)self initWithURL:0 result:0 context:contextCopy];
  return v12;
}

- (void)performFromView:(int)a1 .cold.1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Unknown category %x", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end