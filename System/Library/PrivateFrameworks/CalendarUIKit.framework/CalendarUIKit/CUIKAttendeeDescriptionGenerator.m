@interface CUIKAttendeeDescriptionGenerator
+ (id)displayNameForIdentity:(id)a3 outFirstName:(id *)a4 outLastName:(id *)a5;
+ (id)displayNameForParticipant:(id)a3 event:(id)a4 options:(unint64_t)a5;
+ (id)sharedGenerator;
@end

@implementation CUIKAttendeeDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CUIKAttendeeDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGenerator_onceToken_1 != -1)
  {
    dispatch_once(&sharedGenerator_onceToken_1, block);
  }

  v2 = sharedGenerator___sharedInstance_1;

  return v2;
}

uint64_t __51__CUIKAttendeeDescriptionGenerator_sharedGenerator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedGenerator___sharedInstance_1;
  sharedGenerator___sharedInstance_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)displayNameForParticipant:(id)a3 event:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [a1 displayNameForIdentity:v8];
  if (v5)
  {
    v11 = [v9 organizer];
    v12 = [v8 isEqualToParticipant:v11];

    if (v12)
    {
      if ([v9 couldBeJunk])
      {
        v13 = [v8 emailAddress];

        if (v13)
        {
          v14 = [v8 emailAddress];
        }

        else
        {
          v16 = [v8 phoneNumber];

          if (v16)
          {
            v17 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
            v18 = [v8 phoneNumber];
            v14 = [v17 formattedStringForPhoneNumber:v18];
          }

          else
          {
            v17 = [v8 URL];
            v14 = [v17 resourceSpecifier];
          }

          v10 = v17;
        }

        v15 = @"%@ (organizer)";
        v10 = v14;
      }

      else
      {
        v15 = @"%@ (organizer)";
      }
    }

    else
    {
      if ([v8 participantRole] != 2)
      {
        goto LABEL_15;
      }

      v15 = @"%@ (optional)";
    }

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:v15 value:&stru_1F4AA8958 table:0];
    v22 = [v19 localizedStringWithFormat:v21, v10];

    v10 = v22;
  }

LABEL_15:

  return v10;
}

+ (id)displayNameForIdentity:(id)a3 outFirstName:(id *)a4 outLastName:(id *)a5
{
  v7 = a3;
  v8 = [v7 name];
  v9 = [v7 emailAddress];
  v10 = [v9 isEqualToString:@"unknownorganizer@calendar.google.com"];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"Google Calendar" value:&stru_1F4AA8958 table:0];

    goto LABEL_31;
  }

  v13 = [v8 length];
  if (!a5 && !a4 && v13)
  {
    v12 = v8;
    goto LABEL_31;
  }

  v14 = [v7 phoneNumber];

  if (v14)
  {
    v15 = [v7 phoneNumber];
    v16 = [v7 phoneNumber];
    v17 = [v16 cal_isPhoneNumber];
  }

  else
  {
    v15 = [v7 emailAddress];
    v16 = [v7 emailAddress];
    if (v16)
    {
      v17 = CFStringFind(v15, @"@", 0).location != -1;
    }

    else
    {
      v17 = 0;
    }
  }

  if ([(__CFString *)v15 length])
  {
    if (v17)
    {
      v18 = [v7 phoneNumber];
      v19 = [v18 cal_isPhoneNumber];

      v20 = [MEMORY[0x1E6992F50] defaultProvider];
      if (v19)
      {
        v21 = [v7 phoneNumber];
        [v20 unifiedContactWithPhoneNumber:v21];
      }

      else
      {
        v21 = [v7 emailAddress];
        [v20 unifiedContactWithEmailAddress:v21];
      }
      v22 = ;

      if (a4)
      {
        *a4 = [v22 givenName];
      }

      if (a5)
      {
        *a5 = [v22 familyName];
      }

      v23 = [v22 CalDisplayName];

      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v15 = 0;
    }
  }

  v23 = v8;
LABEL_24:
  v24 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v25 = [v23 stringByTrimmingCharactersInSet:v24];

  if (![v25 length] && -[__CFString length](v15, "length"))
  {
    if ([(__CFString *)v15 cal_isPhoneNumber])
    {
      v26 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
      v27 = [v26 formattedStringForPhoneNumber:v15];

      v25 = v26;
    }

    else
    {
      v27 = v15;
    }

    v25 = v27;
  }

  v12 = v25;

LABEL_31:

  return v12;
}

@end