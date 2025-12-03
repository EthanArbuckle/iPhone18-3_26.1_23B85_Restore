@interface CUIKAttendeeDescriptionGenerator
+ (id)displayNameForIdentity:(id)identity outFirstName:(id *)name outLastName:(id *)lastName;
+ (id)displayNameForParticipant:(id)participant event:(id)event options:(unint64_t)options;
+ (id)sharedGenerator;
@end

@implementation CUIKAttendeeDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CUIKAttendeeDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)displayNameForParticipant:(id)participant event:(id)event options:(unint64_t)options
{
  optionsCopy = options;
  participantCopy = participant;
  eventCopy = event;
  v10 = [self displayNameForIdentity:participantCopy];
  if (optionsCopy)
  {
    organizer = [eventCopy organizer];
    v12 = [participantCopy isEqualToParticipant:organizer];

    if (v12)
    {
      if ([eventCopy couldBeJunk])
      {
        emailAddress = [participantCopy emailAddress];

        if (emailAddress)
        {
          emailAddress2 = [participantCopy emailAddress];
        }

        else
        {
          phoneNumber = [participantCopy phoneNumber];

          if (phoneNumber)
          {
            v17 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
            phoneNumber2 = [participantCopy phoneNumber];
            emailAddress2 = [v17 formattedStringForPhoneNumber:phoneNumber2];
          }

          else
          {
            v17 = [participantCopy URL];
            emailAddress2 = [v17 resourceSpecifier];
          }

          v10 = v17;
        }

        v15 = @"%@ (organizer)";
        v10 = emailAddress2;
      }

      else
      {
        v15 = @"%@ (organizer)";
      }
    }

    else
    {
      if ([participantCopy participantRole] != 2)
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

+ (id)displayNameForIdentity:(id)identity outFirstName:(id *)name outLastName:(id *)lastName
{
  identityCopy = identity;
  name = [identityCopy name];
  emailAddress = [identityCopy emailAddress];
  v10 = [emailAddress isEqualToString:@"unknownorganizer@calendar.google.com"];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"Google Calendar" value:&stru_1F4AA8958 table:0];

    goto LABEL_31;
  }

  v13 = [name length];
  if (!lastName && !name && v13)
  {
    v12 = name;
    goto LABEL_31;
  }

  phoneNumber = [identityCopy phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [identityCopy phoneNumber];
    phoneNumber3 = [identityCopy phoneNumber];
    cal_isPhoneNumber = [phoneNumber3 cal_isPhoneNumber];
  }

  else
  {
    phoneNumber2 = [identityCopy emailAddress];
    phoneNumber3 = [identityCopy emailAddress];
    if (phoneNumber3)
    {
      cal_isPhoneNumber = CFStringFind(phoneNumber2, @"@", 0).location != -1;
    }

    else
    {
      cal_isPhoneNumber = 0;
    }
  }

  if ([(__CFString *)phoneNumber2 length])
  {
    if (cal_isPhoneNumber)
    {
      phoneNumber4 = [identityCopy phoneNumber];
      cal_isPhoneNumber2 = [phoneNumber4 cal_isPhoneNumber];

      defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
      if (cal_isPhoneNumber2)
      {
        phoneNumber5 = [identityCopy phoneNumber];
        [defaultProvider unifiedContactWithPhoneNumber:phoneNumber5];
      }

      else
      {
        phoneNumber5 = [identityCopy emailAddress];
        [defaultProvider unifiedContactWithEmailAddress:phoneNumber5];
      }
      v22 = ;

      if (name)
      {
        *name = [v22 givenName];
      }

      if (lastName)
      {
        *lastName = [v22 familyName];
      }

      calDisplayName = [v22 CalDisplayName];

      if (calDisplayName)
      {
        goto LABEL_24;
      }
    }

    else
    {

      phoneNumber2 = 0;
    }
  }

  calDisplayName = name;
LABEL_24:
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v25 = [calDisplayName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v25 length] && -[__CFString length](phoneNumber2, "length"))
  {
    if ([(__CFString *)phoneNumber2 cal_isPhoneNumber])
    {
      v26 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
      v27 = [v26 formattedStringForPhoneNumber:phoneNumber2];

      v25 = v26;
    }

    else
    {
      v27 = phoneNumber2;
    }

    v25 = v27;
  }

  v12 = v25;

LABEL_31:

  return v12;
}

@end