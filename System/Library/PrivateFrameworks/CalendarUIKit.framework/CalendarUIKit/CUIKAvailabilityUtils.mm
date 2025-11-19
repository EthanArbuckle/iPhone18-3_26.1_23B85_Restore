@interface CUIKAvailabilityUtils
+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)a3;
+ (id)participantsForAvailabilityViewControllerFromEvent:(id)a3;
@end

@implementation CUIKAvailabilityUtils

+ (id)participantsForAvailabilityViewControllerFromEvent:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [v3 attendees];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];

  v7 = [v3 organizer];
  if ([v3 isSelfOrganized] && !v7)
  {
    v8 = [v3 calendar];
    v7 = [v8 ownerIdentityOrganizer];
  }

  v9 = [v7 URL];
  v10 = [v9 absoluteString];

  if (v10)
  {
    [v6 addObject:v7];
  }

  else
  {
    v11 = [v3 calendar];
    v12 = [v11 source];
    v13 = [v12 ownerAddresses];
    v10 = [v13 anyObject];

    if (!v10)
    {
      goto LABEL_9;
    }

    v14 = [objc_opt_class() _selfOrganizerForNewlyScheduledEventWithAddress:v10];
    [v6 addObject:v14];
  }

LABEL_9:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v3 attendees];
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = [v20 URL];
        v22 = [v21 absoluteString];

        if (v22 && ([v20 isEqualToParticipant:v7] & 1) == 0)
        {
          [v6 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)a3
{
  v3 = MEMORY[0x1E6992F50];
  v4 = a3;
  v5 = [v3 defaultProvider];
  v6 = [v5 myFullName];
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    v8 = CUIKBundle();
    v9 = [v8 localizedStringForKey:@"You" value:&stru_1F4AA8958 table:0];

    v7 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];

  v11 = [MEMORY[0x1E6966A78] organizerWithName:v7 emailAddress:0 phoneNumber:0 address:v10 isCurrentUser:1];

  return v11;
}

@end