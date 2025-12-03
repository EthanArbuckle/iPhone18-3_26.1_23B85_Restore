@interface EAEmailAddressGenerator
+ (id)formattedAddressWithName:(id)name email:(id)email useQuotes:(BOOL)quotes;
+ (id)stringByTrimmingCommasSpacesQuotesFromString:(id)string;
@end

@implementation EAEmailAddressGenerator

+ (id)formattedAddressWithName:(id)name email:(id)email useQuotes:(BOOL)quotes
{
  quotesCopy = quotes;
  nameCopy = name;
  emailCopy = email;
  string = [MEMORY[0x277CCAB68] string];
  if ([nameCopy length])
  {
    [string appendString:nameCopy];
    if (quotesCopy && (![nameCopy hasPrefix:@"] || (objc_msgSend(nameCopy, "hasSuffix:", @") & 1) == 0))
    {
      if (formattedAddressWithName_email_useQuotes__onceToken != -1)
      {
        +[EAEmailAddressGenerator formattedAddressWithName:email:useQuotes:];
      }

      if ([nameCopy rangeOfCharacterFromSet:formattedAddressWithName_email_useQuotes__requiresQuotes] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [string replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(string, "length")}];
        [string replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(string, "length")}];
        [string replaceCharactersInRange:0 withString:{0, @""}];
        [string replaceCharactersInRange:objc_msgSend(string withString:{"length"), 0, @""}];
      }
    }
  }

  if ([emailCopy length])
  {
    if ([string length])
    {
      [string appendString:@" <"];
      [string appendString:emailCopy];
      [string appendString:@">"];
    }

    else
    {
      [string appendString:emailCopy];
    }
  }

  return string;
}

uint64_t __68__EAEmailAddressGenerator_formattedAddressWithName_email_useQuotes___block_invoke()
{
  formattedAddressWithName_email_useQuotes__requiresQuotes = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"()<>[]:@\\, ."}];;

  return MEMORY[0x2821F96F8]();
}

+ (id)stringByTrimmingCommasSpacesQuotesFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [stringCopy characterAtIndex:0];
  v6 = 0;
  v7 = 1;
  while (v5 <= 0x2Cu && ((1 << v5) & 0x100500000000) != 0)
  {
    v6 ^= v5 == 34;
    if (v4 == v7)
    {
      v9 = v4;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    v5 = [stringCopy characterAtIndex:?];
    v7 = v8;
  }

  v9 = v7 - 1;
LABEL_9:
  v10 = v4 - 1;
  v11 = [stringCopy characterAtIndex:v10];
  v12 = 0;
  while (v10 > v9)
  {
    if (v11 > 0x2Cu)
    {
      break;
    }

    if (((1 << v11) & 0x100500000000) == 0)
    {
      break;
    }

    --v10;
    v12 ^= v11 == 34;
    if (v10 <= v9)
    {
      break;
    }

    v11 = [stringCopy characterAtIndex:v10];
  }

  if (v10 < v9)
  {
LABEL_16:
    v13 = &stru_285D21E38;
    goto LABEL_22;
  }

  v14 = [stringCopy substringWithRange:{v9, v10 - v9 + 1}];
  v13 = v14;
  if (v12 & 1 | ((v6 & 1) == 0))
  {
    if (v6 & 1 | ((v12 & 1) == 0))
    {
      goto LABEL_22;
    }

    v15 = [(__CFString *)v14 stringByAppendingString:@""];
  }

  else
  {
    v15 = [@"" stringByAppendingString:v14];
  }

  v16 = v15;

  v13 = v16;
LABEL_22:

  return v13;
}

@end