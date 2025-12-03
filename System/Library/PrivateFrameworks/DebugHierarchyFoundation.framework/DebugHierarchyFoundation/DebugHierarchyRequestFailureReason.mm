@interface DebugHierarchyRequestFailureReason
+ (id)_failureReasonWithReasonString:(id)string;
+ (id)_wordStartingAfterSubstring:(id)substring inString:(id)string;
+ (id)_wordStartingAtIndex:(int64_t)index inString:(id)string;
+ (id)failureReasonWithErrorMessage:(id)message;
@end

@implementation DebugHierarchyRequestFailureReason

+ (id)failureReasonWithErrorMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy rangeOfString:DebugHierarchyRequestFailureReasonPrefix];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [messageCopy substringFromIndex:{&v5[objc_msgSend(DebugHierarchyRequestFailureReasonPrefix, "length")]}];
    v6 = [self _failureReasonWithReasonString:v7];
  }

  return v6;
}

+ (id)_failureReasonWithReasonString:(id)string
{
  stringCopy = string;
  v5 = objc_opt_new();
  if ([stringCopy hasPrefix:DebugHierarchyRequestFailureReasonSignalPrefix])
  {
    v6 = [self _wordStartingAtIndex:objc_msgSend(DebugHierarchyRequestFailureReasonSignalPrefix inString:{"length"), stringCopy}];
    [v5 setSignal:v6];
  }

  else
  {
    v7 = [self _wordStartingAtIndex:0 inString:stringCopy];
    [v5 setExceptionCode:v7];

    v8 = [self _wordStartingAfterSubstring:DebugHierarchyRequestFailureReasonCodePrefix inString:stringCopy];
    [v5 setCode:v8];

    v9 = [self _wordStartingAfterSubstring:DebugHierarchyRequestFailureReasonSubcodePrefix inString:stringCopy];
    [v5 setSubcode:v9];

    v6 = [self _wordStartingAfterSubstring:DebugHierarchyRequestFailureReasonAddressPrefix inString:stringCopy];
    [v5 setAddress:v6];
  }

  return v5;
}

+ (id)_wordStartingAtIndex:(int64_t)index inString:(id)string
{
  stringCopy = string;
  v6 = [NSCharacterSet characterSetWithCharactersInString:@", ."]);
  v7 = [stringCopy substringFromIndex:index];

  v8 = [v7 rangeOfCharacterFromSet:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v7 substringToIndex:v8];
  }

  v10 = v9;

  return v10;
}

+ (id)_wordStartingAfterSubstring:(id)substring inString:(id)string
{
  substringCopy = substring;
  stringCopy = string;
  v8 = [stringCopy rangeOfString:substringCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [self _wordStartingAtIndex:&v8[objc_msgSend(substringCopy inString:{"length")], stringCopy}];
  }

  return v9;
}

@end