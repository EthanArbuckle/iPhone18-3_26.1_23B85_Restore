@interface DDTelephoneNumberAction
- (DDTelephoneNumberAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)compactTitle;
- (id)contactAndLabelForPhoneNumber:(id *)a3;
- (id)contactsMatchingPhoneNumber:(void *)a3 inContactStore:;
- (id)labelToUseForEmail:(void *)a3 ofContact:;
- (id)labelToUseForPhoneNumber:(void *)a3 ofContact:;
@end

@implementation DDTelephoneNumberAction

- (DDTelephoneNumberAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  v39.receiver = self;
  v39.super_class = DDTelephoneNumberAction;
  v10 = [(DDAction *)&v39 initWithURL:v8 result:a4 context:v9];
  if (v10)
  {
    if (v8)
    {
      v11 = [(__CFString *)v8 scheme];
      v12 = [v11 lowercaseString];

      if (([v12 isEqualToString:@"sms"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"messages") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"sip") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"tel") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"telephony") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"telephonyprompt"))
      {
        url = v10->super._url;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        v14 = [(NSURL *)url dd_phoneNumberFromTelSchemeAndExtractBody:&v37 serviceID:&v36 suggestions:?];
        v15 = v38;
        v16 = v37;
        v17 = v36;
        phoneNumber = v10->_phoneNumber;
        v10->_phoneNumber = v14;

        body = v10->_body;
        v10->_body = v15;
        v20 = v15;

        suggestions = v10->_suggestions;
        v10->_suggestions = v17;
        v22 = v17;

        serviceID = v10->_serviceID;
        v10->_serviceID = &v16->isa;
        v24 = v16;
      }

      else if ([v12 isEqualToString:@"mailto"])
      {
        v30 = dd_emailFromMailtoScheme(v10->super._url);
        v20 = v10->_phoneNumber;
        v10->_phoneNumber = v30;
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:v8];
        v31 = [(NSString *)v20 handle];
        v32 = [v31 value];
        v33 = v10->_phoneNumber;
        v10->_phoneNumber = v32;

        if (!v10->_phoneNumber)
        {
          v34 = dd_phoneNumberFromTelScheme(v8);
          v35 = v10->_phoneNumber;
          v10->_phoneNumber = v34;
        }
      }

      if (!v10->_phoneNumber)
      {
        v25 = dd_emailFromMailtoScheme(v10->super._url);
        v26 = v10->_phoneNumber;
        v10->_phoneNumber = v25;
      }

      goto LABEL_15;
    }

    if (!a4)
    {
      v27 = [v9 objectForKeyedSubscript:@"ContactValue"];

      if (v27)
      {
        v28 = [v9 objectForKeyedSubscript:@"ContactValue"];
        v12 = v10->_phoneNumber;
        v10->_phoneNumber = v28;
LABEL_15:
      }
    }
  }

  return v10;
}

- (id)compactTitle
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__DDTelephoneNumberAction_compactTitle__block_invoke;
  activity_block[3] = &unk_2782917C0;
  activity_block[4] = self;
  activity_block[5] = &v11;
  _os_activity_initiate(&dword_21AB70000, "searching for name in Contacts to display Call compact label", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  if ([v12[5] length])
  {
    phoneNumber = v12[5];
    goto LABEL_3;
  }

  url = self->super._url;
  if (!url)
  {
LABEL_11:
    if (![(NSString *)self->_phoneNumber length])
    {
      v9.receiver = self;
      v9.super_class = DDTelephoneNumberAction;
      v4 = [(DDAction *)&v9 compactTitle];
      goto LABEL_4;
    }

    v8 = [(NSString *)self->_phoneNumber containsString:@"@"];
    phoneNumber = self->_phoneNumber;
    if (!v8)
    {
      v4 = TUFormattedPhoneNumber();
      goto LABEL_4;
    }

LABEL_3:
    v4 = phoneNumber;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  v5 = [(NSURL *)url dd_formattedPhoneNumber];
  if (![v5 length])
  {

    goto LABEL_11;
  }

LABEL_5:
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __39__DDTelephoneNumberAction_compactTitle__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) contactAndLabelForPhoneNumber:0];
  v2 = [MEMORY[0x277CBDA78] stringFromContact:? style:?];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 40) + 8) + 40) length])
  {
    v5 = v9;
  }

  else
  {
    v6 = [MEMORY[0x277CBDA78] stringFromContact:v9 style:0];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = v9;
  }
}

- (id)contactAndLabelForPhoneNumber:(id *)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v5 = self->super._result;
    if (DDResultGetCategory() != 2)
    {
      goto LABEL_5;
    }

    v6 = self->super._result;
    v7 = *MEMORY[0x277D041C0];
    if (DDResultGetSubresultWithType())
    {
      v8 = DDResultGetMatchedString();
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_5:
      v8 = self->_phoneNumber;
      if (v8)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDTelephoneNumberAction contactAndLabelForPhoneNumber:];
      v20 = self->super._result;
      SubResults = DDResultGetSubResults();
      if (SubResults)
      {
LABEL_13:
        v14 = SubResults;
        if (CFArrayGetCount(SubResults) >= 1)
        {
          v18 = 0;
          v19 = MEMORY[0x277D86220];
          do
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [(DDTelephoneNumberAction *)v34 contactAndLabelForPhoneNumber:v14, v18, (v34 + 4)];
            }

            ++v18;
          }

          while (v18 < CFArrayGetCount(v14));
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = self->super._result;
      SubResults = DDResultGetSubResults();
      if (SubResults)
      {
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDTelephoneNumberAction contactAndLabelForPhoneNumber:];
    }

LABEL_21:
    DDUILogAssertionFailure("valueResult != NULL", "/Library/Caches/com.apple.xbs/Sources/MobileDataDetectorsUI/Actions/DDCallAction.m", "[DDTelephoneNumberAction contactAndLabelForPhoneNumber:]", 209, @"PhoneNumber without a <Value>", v15, v16, v17, v34[0]);
    v8 = self->_phoneNumber;
    if (v8)
    {
LABEL_6:
      v9 = v8;
      v10 = DDMakeContactStore();
      if (v10)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

LABEL_22:
    if (self->super._result && (v21 = DDResultCopyExtractedURL()) != 0)
    {
      v22 = v21;
      v23 = [MEMORY[0x277CBEBC0] URLWithString:v21];
      v24 = [v23 scheme];
      v25 = [v24 lowercaseString];
      v26 = [v25 isEqualToString:@"tel"];

      if (v26)
      {
        v9 = [(NSURL *)v23 dd_formattedPhoneNumber];
      }

      else
      {
        v9 = 0;
      }

      CFRelease(v22);

      v10 = DDMakeContactStore();
      if (v10)
      {
LABEL_34:
        v29 = v10;
        v30 = [(DDTelephoneNumberAction *)self contactsMatchingPhoneNumber:v9 inContactStore:v10];
        if ([v30 count] != 1)
        {
          v11 = 0;
          goto LABEL_42;
        }

        v11 = [v30 objectAtIndexedSubscript:0];
        if (a3)
        {
          if ([v9 containsString:@"@"])
          {
            v32 = [(DDTelephoneNumberAction *)self labelToUseForEmail:v9 ofContact:v11];
            if (!v32)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          if (v9)
          {
            v31 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v9];
            if (!v31)
            {

              goto LABEL_42;
            }

            v33 = v31;
            v32 = [(DDTelephoneNumberAction *)self labelToUseForPhoneNumber:v31 ofContact:v11];

            if (!v32)
            {
              goto LABEL_42;
            }

LABEL_40:
            *a3 = [MEMORY[0x277CBDB20] localizedStringForLabel:v32];
          }
        }

LABEL_42:

        v10 = v29;
        goto LABEL_28;
      }
    }

    else
    {
      v9 = 0;
      v10 = DDMakeContactStore();
      if (v10)
      {
        goto LABEL_34;
      }
    }

LABEL_27:
    v11 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDTelephoneNumberAction contactAndLabelForPhoneNumber:];
  }

  v11 = 0;
LABEL_29:
  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)contactsMatchingPhoneNumber:(void *)a3 inContactStore:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    isDeviceLocked = dd_isDeviceLocked();
    a1 = 0;
    if (v6)
    {
      if ((isDeviceLocked & 1) == 0)
      {
        if ([v5 length])
        {
          if (v5)
          {
            if ([v5 containsString:@"@"])
            {
              v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v5];
            }

            else
            {
              v9 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v5];
              v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v9];
            }

            v10 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
            v21[0] = v10;
            v11 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
            v12 = *MEMORY[0x277CBD098];
            v21[1] = v11;
            v21[2] = v12;
            v21[3] = *MEMORY[0x277CBCFC0];
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

            a1 = [v6 unifiedContactsMatchingPredicate:v8 keysToFetch:v13 error:0];
          }

          else
          {
            a1 = 0;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_3_0();
            _os_log_debug_impl(v16, v17, v18, v19, v20, 0x16u);
          }
        }

        else
        {
          a1 = 0;
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)labelToUseForPhoneNumber:(void *)a3 ofContact:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [a3 phoneNumbers];
    OUTLINED_FUNCTION_0_4();
    a1 = [v7 countByEnumeratingWithState:0 objects:? count:?];
    if (a1)
    {
      v8 = MEMORY[0];
      while (2)
      {
        v9 = 0;
        do
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(8 * v9);
          v11 = [v10 value];
          v12 = [v11 isLikePhoneNumber:v5];

          if (v12)
          {
            a1 = [v10 label];
            goto LABEL_12;
          }

          v9 = v9 + 1;
        }

        while (a1 != v9);
        OUTLINED_FUNCTION_0_4();
        a1 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (a1)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v13 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)labelToUseForEmail:(void *)a3 ofContact:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 length])
  {
    v7 = [v6 emailAddresses];
    v8 = [v5 lowercaseString];

    v9 = v7;
    OUTLINED_FUNCTION_0_4();
    v11 = [v10 countByEnumeratingWithState:0 objects:? count:?];
    if (v11)
    {
      v12 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(8 * i);
          v15 = [v14 value];
          v16 = [v15 lowercaseString];

          if ([v16 length] && (objc_msgSend(v8, "isEqualToString:", v16) & 1) != 0)
          {
            v11 = [v14 label];

            goto LABEL_15;
          }
        }

        OUTLINED_FUNCTION_0_4();
        v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    v11 = 0;
    v8 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)contactAndLabelForPhoneNumber:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)contactAndLabelForPhoneNumber:(CFIndex)idx .cold.3(uint8_t *a1, CFArrayRef theArray, CFIndex idx, uint64_t *a4)
{
  CFArrayGetValueAtIndex(theArray, idx);
  Type = DDResultGetType();
  *a1 = 138412290;
  *a4 = Type;
  _os_log_debug_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Subresult type: %@", a1, 0xCu);
}

@end