@interface MNAudioSystemEvent
- (BOOL)isEqualToEvent:(id)a3;
- (MNAudioSystemEvent)initWithUtterance:(id)a3 andShortPrompt:(unint64_t)a4 andVoiceGuidanceLevel:(unint64_t)a5 andCompletion:(id)a6;
- (id)description;
@end

@implementation MNAudioSystemEvent

- (id)description
{
  v2 = self;
  v49[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v35.receiver = self;
  v35.super_class = MNAudioSystemEvent;
  v4 = [(MNAudioSystemEvent *)&v35 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(MNAudioSystemEvent *)v2 utterance];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(MNAudioSystemEvent *)v2 utterance];
    [v5 appendFormat:@" utterance: '%@'", v8];
  }

  if ([(MNAudioSystemEvent *)v2 shortPrompt])
  {
    v33 = v2;
    v34 = v5;
    v9 = [(MNAudioSystemEvent *)v2 shortPrompt];
    v48[0] = &unk_1F4EE28C0;
    v48[1] = &unk_1F4EE28D8;
    v49[0] = @"Continuation";
    v49[1] = @"General Maneuver";
    v48[2] = &unk_1F4EE28F0;
    v48[3] = &unk_1F4EE2908;
    v49[2] = @"Start";
    v49[3] = @"Arrival";
    v48[4] = &unk_1F4EE2920;
    v49[4] = @"Started Walking";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
    v46[0] = &unk_1F4EE2938;
    v46[1] = &unk_1F4EE2950;
    v47[0] = @"Direction (Left)";
    v47[1] = @"Direction (Right)";
    v46[2] = &unk_1F4EE2968;
    v47[2] = @"Must Not Replace Speech";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [v10 allKeys];
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          if ((v9 & 0xF) == [v18 unsignedIntegerValue])
          {
            v19 = [v10 objectForKeyedSubscript:v18];
            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v15);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = [v11 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          if (([v25 unsignedIntegerValue] & ~v9) == 0)
          {
            v26 = [v11 objectForKeyedSubscript:v25];
            [v12 addObject:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    v27 = [v12 componentsJoinedByString:@"|"];

    v5 = v34;
    [v34 appendFormat:@" instructions: %@", v27];

    v2 = v33;
  }

  v28 = [(MNAudioSystemEvent *)v2 handler];
  v29 = @"with completion handler";
  if (!v28)
  {
    v29 = @"with no completion handler";
  }

  [v5 appendFormat:@" %@", v29];

  v30 = [v5 copy];
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  if (!v4 || ![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(MNAudioSystemEvent *)self utterance];
  v6 = [v5 length];

  v7 = [v4 utterance];
  v8 = v7;
  if (!v6)
  {
    if ([v7 length])
    {
    }

    else
    {
      v12 = [v4 shortPrompt];
      v13 = [(MNAudioSystemEvent *)self shortPrompt];

      if (v12 == v13)
      {
        goto LABEL_5;
      }
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v9 = [(MNAudioSystemEvent *)self utterance];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = 1;
LABEL_10:

  return v11;
}

- (MNAudioSystemEvent)initWithUtterance:(id)a3 andShortPrompt:(unint64_t)a4 andVoiceGuidanceLevel:(unint64_t)a5 andCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([v10 length] | a4 && (v18.receiver = self, v18.super_class = MNAudioSystemEvent, (self = -[MNAudioSystemEvent init](&v18, sel_init)) != 0))
  {
    self->_isPrivate = [v10 _navigation_isPrivate];
    v12 = [v10 _navigation_stringByStrippingPrivateTag];
    utterance = self->_utterance;
    self->_utterance = v12;

    self->_shortPrompt = a4;
    self->_guidanceLevel = a5;
    v14 = [v11 copy];
    handler = self->_handler;
    self->_handler = v14;

    self = self;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end