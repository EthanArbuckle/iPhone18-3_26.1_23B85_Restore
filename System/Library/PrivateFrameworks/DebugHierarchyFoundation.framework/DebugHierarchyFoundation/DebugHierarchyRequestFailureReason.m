@interface DebugHierarchyRequestFailureReason
+ (id)_failureReasonWithReasonString:(id)a3;
+ (id)_wordStartingAfterSubstring:(id)a3 inString:(id)a4;
+ (id)_wordStartingAtIndex:(int64_t)a3 inString:(id)a4;
+ (id)failureReasonWithErrorMessage:(id)a3;
@end

@implementation DebugHierarchyRequestFailureReason

+ (id)failureReasonWithErrorMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:DebugHierarchyRequestFailureReasonPrefix];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 substringFromIndex:{&v5[objc_msgSend(DebugHierarchyRequestFailureReasonPrefix, "length")]}];
    v6 = [a1 _failureReasonWithReasonString:v7];
  }

  return v6;
}

+ (id)_failureReasonWithReasonString:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 hasPrefix:DebugHierarchyRequestFailureReasonSignalPrefix])
  {
    v6 = [a1 _wordStartingAtIndex:objc_msgSend(DebugHierarchyRequestFailureReasonSignalPrefix inString:{"length"), v4}];
    [v5 setSignal:v6];
  }

  else
  {
    v7 = [a1 _wordStartingAtIndex:0 inString:v4];
    [v5 setExceptionCode:v7];

    v8 = [a1 _wordStartingAfterSubstring:DebugHierarchyRequestFailureReasonCodePrefix inString:v4];
    [v5 setCode:v8];

    v9 = [a1 _wordStartingAfterSubstring:DebugHierarchyRequestFailureReasonSubcodePrefix inString:v4];
    [v5 setSubcode:v9];

    v6 = [a1 _wordStartingAfterSubstring:DebugHierarchyRequestFailureReasonAddressPrefix inString:v4];
    [v5 setAddress:v6];
  }

  return v5;
}

+ (id)_wordStartingAtIndex:(int64_t)a3 inString:(id)a4
{
  v5 = a4;
  v6 = [NSCharacterSet characterSetWithCharactersInString:@", ."]);
  v7 = [v5 substringFromIndex:a3];

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

+ (id)_wordStartingAfterSubstring:(id)a3 inString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 rangeOfString:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [a1 _wordStartingAtIndex:&v8[objc_msgSend(v6 inString:{"length")], v7}];
  }

  return v9;
}

@end