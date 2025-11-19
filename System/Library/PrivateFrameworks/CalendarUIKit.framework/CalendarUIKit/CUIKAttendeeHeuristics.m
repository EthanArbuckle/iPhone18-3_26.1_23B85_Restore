@interface CUIKAttendeeHeuristics
+ (BOOL)hasAttendessIgnoringSelfOrganizerAndLocations:(id)a3;
+ (id)_participantRoleSortPriority;
+ (id)_participantStatusSortPriority;
+ (id)sortedHumanAttendeesForEvent:(id)a3 includeResources:(BOOL)a4;
+ (id)sortedHumanAttendeesToDisplayForEvent:(id)a3 options:(unint64_t)a4;
@end

@implementation CUIKAttendeeHeuristics

+ (id)sortedHumanAttendeesToDisplayForEvent:(id)a3 options:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [CUIKAttendeeHeuristics sortedHumanAttendeesForEvent:v5 includeResources:(a4 >> 1) & 1];
  v7 = [v5 organizer];
  v8 = [v6 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  }

  v11 = v10;

  if ((a4 & 1) == 0)
  {
    v12 = [v5 selfAttendee];
    if (v12)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v20 + 1) + 8 * i);
            if ([v18 isEqualToParticipant:{v12, v20}])
            {
              [v11 removeObject:v18];
              goto LABEL_16;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  if (v7 && ([v7 isCurrentUser] & 1) == 0)
  {
    [v11 insertObject:v7 atIndex:0];
  }

  return v11;
}

+ (id)sortedHumanAttendeesForEvent:(id)a3 includeResources:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 attendees];
  v31 = v5;
  v7 = [v5 organizer];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
  v32 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v15 = [v14 participantType];
        v16 = [v14 isEqualToParticipant:v7];
        v17 = v15 != 3 || v4;
        if (v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15 == 2;
        }

        if (!v18 && v17 != 0)
        {
          v20 = [v14 name];
          if ([v20 length])
          {
            goto LABEL_19;
          }

          v21 = [v14 emailAddress];
          if ([v21 length])
          {

LABEL_19:
LABEL_20:
            [v8 addObject:v14];
            goto LABEL_21;
          }

          [v14 phoneNumber];
          v22 = v7;
          v24 = v23 = v8;
          v33 = [v24 length];

          v8 = v23;
          v7 = v22;
          v9 = v32;

          if (v33)
          {
            goto LABEL_20;
          }
        }

LABEL_21:
        ++v13;
      }

      while (v11 != v13);
      v25 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
      v11 = v25;
    }

    while (v25);
  }

  v26 = MEMORY[0x1E695DF90];
  v38 = @"DisplayNameCache";
  v27 = [MEMORY[0x1E695DF90] dictionary];
  v39 = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v29 = [v26 dictionaryWithDictionary:v28];

  if (v31)
  {
    [v29 setObject:v31 forKeyedSubscript:@"Event"];
  }

  if (v7)
  {
    [v29 setObject:v7 forKeyedSubscript:@"Organizer"];
  }

  [v8 sortUsingFunction:CUIKParticipantDisplaySort context:v29];

  return v8;
}

+ (id)_participantStatusSortPriority
{
  if (_participantStatusSortPriority_onceToken != -1)
  {
    +[CUIKAttendeeHeuristics _participantStatusSortPriority];
  }

  v3 = _participantStatusSortPriority__sParticipantStatusSortPriority;

  return v3;
}

void __56__CUIKAttendeeHeuristics__participantStatusSortPriority__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4ABEA68;
  v2[1] = &unk_1F4ABEA98;
  v3[0] = &unk_1F4ABEA80;
  v3[1] = &unk_1F4ABEAB0;
  v2[2] = &unk_1F4ABEAC8;
  v2[3] = &unk_1F4ABEAF8;
  v3[2] = &unk_1F4ABEAE0;
  v3[3] = &unk_1F4ABEB10;
  v2[4] = &unk_1F4ABEB28;
  v2[5] = &unk_1F4ABEB40;
  v3[4] = &unk_1F4ABEB10;
  v3[5] = &unk_1F4ABEB58;
  v2[6] = &unk_1F4ABEB70;
  v2[7] = &unk_1F4ABEBA0;
  v3[6] = &unk_1F4ABEB88;
  v3[7] = &unk_1F4ABEBB8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = _participantStatusSortPriority__sParticipantStatusSortPriority;
  _participantStatusSortPriority__sParticipantStatusSortPriority = v0;
}

+ (id)_participantRoleSortPriority
{
  if (_participantRoleSortPriority_onceToken != -1)
  {
    +[CUIKAttendeeHeuristics _participantRoleSortPriority];
  }

  v3 = _participantRoleSortPriority__sParticipantRoleSortPriority;

  return v3;
}

void __54__CUIKAttendeeHeuristics__participantRoleSortPriority__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4ABEAC8;
  v2[1] = &unk_1F4ABEAF8;
  v3[0] = &unk_1F4ABEA80;
  v3[1] = &unk_1F4ABEAB0;
  v2[2] = &unk_1F4ABEB28;
  v2[3] = &unk_1F4ABEA68;
  v3[2] = &unk_1F4ABEAB0;
  v3[3] = &unk_1F4ABEAE0;
  v2[4] = &unk_1F4ABEA98;
  v3[4] = &unk_1F4ABEB10;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = _participantRoleSortPriority__sParticipantRoleSortPriority;
  _participantRoleSortPriority__sParticipantRoleSortPriority = v0;
}

+ (BOOL)hasAttendessIgnoringSelfOrganizerAndLocations:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 organizer];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 attendees];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 participantType] != 2 && (!objc_msgSend(v4, "isCurrentUser") || !objc_msgSend(v9, "isEqualToParticipant:", v4)))
        {
          LOBYTE(v6) = 1;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

@end