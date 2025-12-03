@interface CalGoogleConferenceFormat
+ (id)_delimiterRegex;
+ (id)calConferenceSerializationHandle;
- (id)deserializeConferences:(id)conferences;
@end

@implementation CalGoogleConferenceFormat

- (id)deserializeConferences:(id)conferences
{
  v43 = *MEMORY[0x1E69E9840];
  conferencesCopy = conferences;
  array = [MEMORY[0x1E695DF70] array];
  if ([conferencesCopy length])
  {
    selfCopy = self;
    _delimiterRegex = [objc_opt_class() _delimiterRegex];
    v6 = [_delimiterRegex matchesInString:conferencesCopy options:0 range:{0, objc_msgSend(conferencesCopy, "length")}];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      do
      {
        v10 = 0;
        v35 = v8;
        do
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * v10);
          if ([v11 numberOfRanges] == 2)
          {
            v12 = [v11 rangeAtIndex:1];
            v14 = [conferencesCopy substringWithRange:{v12, v13}];
            v15 = [CalConferenceURLDetector googleMeetURLsAndPhoneNumbersFromSource:v14];
            v16 = [v15 CalMap:&__block_literal_global_14];
            if ([v16 count])
            {
              v17 = v9;
              v18 = conferencesCopy;
              lastObject = [v15 lastObject];
              range = [lastObject range];
              v22 = v21;

              v23 = [v14 substringFromIndex:range + v22];
              whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
              calConferenceSerializationHandle = [v23 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              if (![calConferenceSerializationHandle length])
              {

                calConferenceSerializationHandle = 0;
              }

              v26 = [[CalVirtualConference alloc] initWithTitle:0 joinMethods:v16 conferenceDetails:calConferenceSerializationHandle source:1 isWritable:0];
              v27 = [CalConferenceDeserializationResult alloc];
              range2 = [v11 range];
              v30 = [(CalConferenceDeserializationResult *)v27 initWithConference:v26 range:range2 blockTitle:v29, &stru_1F379FFA8];
              [array addObject:v30];

              conferencesCopy = v18;
              v9 = v17;
              v8 = v35;
            }

            else
            {
              calConferenceSerializationHandle = [objc_opt_class() calConferenceSerializationHandle];
              if (os_log_type_enabled(calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1B990D000, calConferenceSerializationHandle, OS_LOG_TYPE_DEFAULT, "Found Google delimiters but can't add a conference because there are no valid URLs inside", buf, 2u);
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v8);
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return array;
}

CalVirtualConferenceJoinMethod *__52__CalGoogleConferenceFormat_deserializeConferences___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resultType] == 2048)
  {
    v3 = [v2 phoneNumber];

    v4 = [v3 phoneURL];
    v2 = v3;
  }

  else
  {
    v4 = [v2 URL];
  }

  v5 = [[CalVirtualConferenceJoinMethod alloc] initWithTitle:0 URL:v4 isBroadcast:0];

  return v5;
}

+ (id)_delimiterRegex
{
  if (_delimiterRegex_onceToken != -1)
  {
    +[CalGoogleConferenceFormat _delimiterRegex];
  }

  v3 = _delimiterRegex_delimiterRegex;

  return v3;
}

void __44__CalGoogleConferenceFormat__delimiterRegex__block_invoke()
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(.*?)%@\n?", @"-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-", @"-::~:~::~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~:~::~:~::-"];
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v2 options:8 error:0];
  v1 = _delimiterRegex_delimiterRegex;
  _delimiterRegex_delimiterRegex = v0;
}

+ (id)calConferenceSerializationHandle
{
  if (calConferenceSerializationHandle_onceToken_0 != -1)
  {
    +[CalGoogleConferenceFormat calConferenceSerializationHandle];
  }

  v3 = calConferenceSerializationHandle_logHandle_0;

  return v3;
}

uint64_t __61__CalGoogleConferenceFormat_calConferenceSerializationHandle__block_invoke()
{
  calConferenceSerializationHandle_logHandle_0 = os_log_create("com.apple.calendar.calendarFoundation", "googleConferenceSerialization");

  return MEMORY[0x1EEE66BB8]();
}

@end