@interface CUIKLocationDescriptionGenerator
+ (BOOL)_conferenceURL:(id)a3 isSameAsLocationString:(id)a4;
+ (id)_conferenceStringForURL:(id)a3 options:(unint64_t)a4 outImageNames:(id *)a5 incomplete:(BOOL *)a6;
+ (id)_getFirstLineOfString:(id)a3;
+ (id)_locationStringsRemovingVirtualConference:(id)a3 event:(id)a4;
+ (id)conferenceURLForEvent:(id)a3 options:(unint64_t)a4;
+ (id)glyphNamesForConferenceString:(id)a3;
+ (id)glyphNamesForConferenceURL:(id)a3;
@end

@implementation CUIKLocationDescriptionGenerator

+ (id)_getFirstLineOfString:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__13;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CUIKLocationDescriptionGenerator__getFirstLineOfString___block_invoke;
  v6[3] = &unk_1E839AFA0;
  v6[4] = &v7;
  [v3 enumerateLinesUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)glyphNamesForConferenceString:(id)a3
{
  v4 = [a1 conferenceURLForEvent:a3 options:96];
  v9 = 0;
  v5 = [a1 _conferenceStringForURL:v4 options:96 outImageNames:&v9 incomplete:0];
  v6 = v9;
  v7 = v9;

  return v6;
}

+ (id)glyphNamesForConferenceURL:(id)a3
{
  v6 = 0;
  v3 = [a1 _conferenceStringForURL:a3 options:96 outImageNames:&v6 incomplete:0];
  v4 = v6;

  return v4;
}

+ (id)_conferenceStringForURL:(id)a3 options:(unint64_t)a4 outImageNames:(id *)a5 incomplete:(BOOL *)a6
{
  v8 = a4;
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = v9;
  v32 = 0;
  if ((v8 & 0x20) == 0 || ([v9 absoluteString], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, !v12))
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = [CUIKConferenceUtils synchronousTitleForURL:v10 incomplete:&v32 + 1];
  if ((v8 & 0x40) != 0)
  {
    v31 = 0;
    v16 = [CUIKConferenceUtils synchronousOutlineIconForURL:v10 isBroadcast:0 outImageName:&v31 incomplete:&v32];
    v17 = v31;
    v18 = v17;
    if (a5)
    {
      v33[0] = v17;
      *a5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    }

    v19 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v16];
    v30 = -4;
    v29 = v18;
    v20 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v30 length:1];
    v21 = CUIKBundle();
    v22 = [v21 localizedStringForKey:@"%@ %@" value:&stru_1F4AA8958 table:0];

    v23 = objc_alloc(MEMORY[0x1E696AD40]);
    v24 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v22, v20, v13];
    v14 = [v23 initWithString:v24];

    v25 = *MEMORY[0x1E69DB5F8];
    v26 = [v14 string];
    v27 = [v26 rangeOfString:v20];
    [v14 addAttribute:v25 value:v19 range:{v27, v28}];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
  }

  if (a6)
  {
LABEL_6:
    *a6 = (HIBYTE(v32) | v32) & 1;
  }

LABEL_7:

  return v14;
}

+ (BOOL)_conferenceURL:(id)a3 isSameAsLocationString:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = [v4 absoluteString];
    v4 = [v6 rangeOfString:v5];

    LOBYTE(v4) = v4 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

+ (id)conferenceURLForEvent:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 virtualConference];
  v7 = [v6 joinMethods];
  v8 = [v7 firstObject];
  v9 = [v8 URL];

  if (!v9)
  {
    if ((v4 & 0x80) == 0)
    {
      [v5 conferenceURLForDisplayCached];
      goto LABEL_4;
    }

    v11 = [MEMORY[0x1E696AF00] isMainThread];
    if (([v5 conferenceURLForDisplayCached] & 1) != 0 || !v11)
    {
LABEL_4:
      v10 = [v5 conferenceURLForDisplay];
      if ([v10 cal_hasSchemeTel])
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }

      goto LABEL_11;
    }

    v9 = 0;
  }

LABEL_11:

  return v9;
}

+ (id)_locationStringsRemovingVirtualConference:(id)a3 event:(id)a4
{
  v5 = a4;
  v6 = [a3 componentsSeparatedByString:@" "];;
  v7 = [v6 mutableCopy];

  v8 = [v5 virtualConference];
  v9 = [v8 serializationBlockTitle];

  if ([v9 length])
  {
    v10 = MEMORY[0x1E696AE18];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __84__CUIKLocationDescriptionGenerator__locationStringsRemovingVirtualConference_event___block_invoke;
    v16 = &unk_1E839AFC8;
    v17 = v9;
    v18 = v5;
    v11 = [v10 predicateWithBlock:&v13];
    [v7 filterUsingPredicate:{v11, v13, v14, v15, v16}];
  }

  return v7;
}

uint64_t __84__CUIKLocationDescriptionGenerator__locationStringsRemovingVirtualConference_event___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 40) attendees];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([v9 participantType] == 2)
          {
            v10 = [v9 name];
            v11 = [v10 isEqualToString:v3];

            if (v11)
            {
              v12 = 0;
              goto LABEL_14;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_14:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

@end