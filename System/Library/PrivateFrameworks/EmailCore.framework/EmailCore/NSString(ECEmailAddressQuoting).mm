@interface NSString(ECEmailAddressQuoting)
- (__CFString)ecemailaddress_trimmedAndQuotedLocalPart;
- (id)ecemailaddress_quotedString;
- (id)ecemailaddress_trimmedAndQuotedDisplayName;
- (id)ecemailaddress_uniquedDomain;
@end

@implementation NSString(ECEmailAddressQuoting)

- (id)ecemailaddress_uniquedDomain
{
  if (ecemailaddress_uniquedDomain_onceToken != -1)
  {
    [NSString(ECEmailAddressQuoting) ecemailaddress_uniquedDomain];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__NSString_ECEmailAddressQuoting__ecemailaddress_uniquedDomain__block_invoke_261;
  v4[3] = &unk_27874B948;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(ecemailaddress_uniquedDomain_uniqueStringsQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)ecemailaddress_trimmedAndQuotedDisplayName
{
  if (ecemailaddress_trimmedAndQuotedDisplayName_onceToken != -1)
  {
    [NSString(ECEmailAddressQuoting) ecemailaddress_trimmedAndQuotedDisplayName];
  }

  v2 = a1;
  if (![v2 length])
  {
    goto LABEL_7;
  }

  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  if (![v4 length] || objc_msgSend(v4, "rangeOfCharacterFromSet:", ecemailaddress_trimmedAndQuotedDisplayName_specials) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = v4;
LABEL_7:
    v5 = v2;
    v4 = v5;
    goto LABEL_8;
  }

  v5 = [v4 ecemailaddress_quotedString];
LABEL_8:
  v6 = v5;

  return v6;
}

- (__CFString)ecemailaddress_trimmedAndQuotedLocalPart
{
  if (ecemailaddress_trimmedAndQuotedLocalPart_onceToken != -1)
  {
    [NSString(ECEmailAddressQuoting) ecemailaddress_trimmedAndQuotedLocalPart];
  }

  v2 = a1;
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4 = [v2 stringByTrimmingCharactersInSet:v3];

    if ([(__CFString *)v4 length]&& ([(__CFString *)v4 rangeOfCharacterFromSet:ecemailaddress_trimmedAndQuotedLocalPart_specials]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)v4 characterAtIndex:0]== 46 || [(__CFString *)v4 characterAtIndex:[(__CFString *)v4 length]- 1]== 46 || [(__CFString *)v4 rangeOfString:@".."]!= 0x7FFFFFFFFFFFFFFFLL))
    {
      v5 = [(__CFString *)v4 ecemailaddress_quotedString];
      goto LABEL_12;
    }
  }

  else
  {

    v4 = @"";
  }

  v5 = v4;
  v4 = v5;
LABEL_12:
  v6 = v5;

  return v6;
}

- (id)ecemailaddress_quotedString
{
  v1 = [a1 mutableCopy];
  if ([v1 length])
  {
    [v1 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v1, "length")}];
    [v1 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v1, "length")}];
    [v1 replaceCharactersInRange:0 withString:{0, @""}];
    [v1 replaceCharactersInRange:objc_msgSend(v1 withString:{"length"), 0, @""}];
  }

  return v1;
}

@end