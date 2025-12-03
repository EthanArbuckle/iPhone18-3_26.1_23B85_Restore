@interface CUIKAvailabilityUtils
+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)address;
+ (id)participantsForAvailabilityViewControllerFromEvent:(id)event;
@end

@implementation CUIKAvailabilityUtils

+ (id)participantsForAvailabilityViewControllerFromEvent:(id)event
{
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = MEMORY[0x1E695DF70];
  attendees = [eventCopy attendees];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(attendees, "count") + 1}];

  organizer = [eventCopy organizer];
  if ([eventCopy isSelfOrganized] && !organizer)
  {
    calendar = [eventCopy calendar];
    organizer = [calendar ownerIdentityOrganizer];
  }

  v9 = [organizer URL];
  absoluteString = [v9 absoluteString];

  if (absoluteString)
  {
    [v6 addObject:organizer];
  }

  else
  {
    calendar2 = [eventCopy calendar];
    source = [calendar2 source];
    ownerAddresses = [source ownerAddresses];
    absoluteString = [ownerAddresses anyObject];

    if (!absoluteString)
    {
      goto LABEL_9;
    }

    v14 = [objc_opt_class() _selfOrganizerForNewlyScheduledEventWithAddress:absoluteString];
    [v6 addObject:v14];
  }

LABEL_9:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  attendees2 = [eventCopy attendees];
  v16 = [attendees2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(attendees2);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = [v20 URL];
        absoluteString2 = [v21 absoluteString];

        if (absoluteString2 && ([v20 isEqualToParticipant:organizer] & 1) == 0)
        {
          [v6 addObject:v20];
        }
      }

      v17 = [attendees2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v23 = [v6 sortedArrayUsingComparator:&__block_literal_global_2];

  return v23;
}

uint64_t __76__CUIKAvailabilityUtils_participantsForAvailabilityViewControllerFromEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isCurrentUser])
  {
    goto LABEL_2;
  }

  if ([v5 isCurrentUser])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [v4 isLocationRoom] && !objc_msgSend(v5, "isLocationRoom"))
  {
    goto LABEL_4;
  }

  if ([v4 isLocationRoom] & 1) == 0 && (objc_msgSend(v5, "isLocationRoom"))
  {
LABEL_2:
    v6 = -1;
    goto LABEL_5;
  }

  v8 = [&unk_1F4ABECA8 objectAtIndexedSubscript:{objc_msgSend(v4, "participantRole")}];
  v9 = [&unk_1F4ABECA8 objectAtIndexedSubscript:{objc_msgSend(v5, "participantRole")}];
  v6 = [v9 compare:v8];
  if (!v6)
  {
    v10 = [v4 name];
    v11 = [v5 name];
    v6 = [v10 compare:v11];
  }

LABEL_5:
  return v6;
}

+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)address
{
  v3 = MEMORY[0x1E6992F50];
  addressCopy = address;
  defaultProvider = [v3 defaultProvider];
  myFullName = [defaultProvider myFullName];
  v7 = myFullName;
  if (!myFullName || ![myFullName length])
  {
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"You" value:&stru_1F4AA8958 table:0];

    v7 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:addressCopy];

  v11 = [MEMORY[0x1E6966A78] organizerWithName:v7 emailAddress:0 phoneNumber:0 address:v10 isCurrentUser:1];

  return v11;
}

@end