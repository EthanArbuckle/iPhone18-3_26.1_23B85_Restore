@interface MNAudioSystemEvent
- (BOOL)isEqualToEvent:(id)event;
- (MNAudioSystemEvent)initWithUtterance:(id)utterance andShortPrompt:(unint64_t)prompt andVoiceGuidanceLevel:(unint64_t)level andCompletion:(id)completion;
- (id)description;
@end

@implementation MNAudioSystemEvent

- (id)description
{
  selfCopy = self;
  v49[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v35.receiver = self;
  v35.super_class = MNAudioSystemEvent;
  v4 = [(MNAudioSystemEvent *)&v35 description];
  v5 = [v3 stringWithString:v4];

  utterance = [(MNAudioSystemEvent *)selfCopy utterance];
  v7 = [utterance length];

  if (v7)
  {
    utterance2 = [(MNAudioSystemEvent *)selfCopy utterance];
    [v5 appendFormat:@" utterance: '%@'", utterance2];
  }

  if ([(MNAudioSystemEvent *)selfCopy shortPrompt])
  {
    v33 = selfCopy;
    v34 = v5;
    shortPrompt = [(MNAudioSystemEvent *)selfCopy shortPrompt];
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
    allKeys = [v10 allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          if ((shortPrompt & 0xF) == [v18 unsignedIntegerValue])
          {
            v19 = [v10 objectForKeyedSubscript:v18];
            [v12 addObject:v19];
          }
        }

        v15 = [allKeys countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v15);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allKeys2 = [v11 allKeys];
    v21 = [allKeys2 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
            objc_enumerationMutation(allKeys2);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          if (([v25 unsignedIntegerValue] & ~shortPrompt) == 0)
          {
            v26 = [v11 objectForKeyedSubscript:v25];
            [v12 addObject:v26];
          }
        }

        v22 = [allKeys2 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    v27 = [v12 componentsJoinedByString:@"|"];

    v5 = v34;
    [v34 appendFormat:@" instructions: %@", v27];

    selfCopy = v33;
  }

  handler = [(MNAudioSystemEvent *)selfCopy handler];
  v29 = @"with completion handler";
  if (!handler)
  {
    v29 = @"with no completion handler";
  }

  [v5 appendFormat:@" %@", v29];

  v30 = [v5 copy];
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy || ![eventCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  utterance = [(MNAudioSystemEvent *)self utterance];
  v6 = [utterance length];

  utterance2 = [eventCopy utterance];
  v8 = utterance2;
  if (!v6)
  {
    if ([utterance2 length])
    {
    }

    else
    {
      shortPrompt = [eventCopy shortPrompt];
      shortPrompt2 = [(MNAudioSystemEvent *)self shortPrompt];

      if (shortPrompt == shortPrompt2)
      {
        goto LABEL_5;
      }
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  utterance3 = [(MNAudioSystemEvent *)self utterance];
  v10 = [v8 isEqualToString:utterance3];

  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = 1;
LABEL_10:

  return v11;
}

- (MNAudioSystemEvent)initWithUtterance:(id)utterance andShortPrompt:(unint64_t)prompt andVoiceGuidanceLevel:(unint64_t)level andCompletion:(id)completion
{
  utteranceCopy = utterance;
  completionCopy = completion;
  if ([utteranceCopy length] | prompt && (v18.receiver = self, v18.super_class = MNAudioSystemEvent, (self = -[MNAudioSystemEvent init](&v18, sel_init)) != 0))
  {
    self->_isPrivate = [utteranceCopy _navigation_isPrivate];
    _navigation_stringByStrippingPrivateTag = [utteranceCopy _navigation_stringByStrippingPrivateTag];
    utterance = self->_utterance;
    self->_utterance = _navigation_stringByStrippingPrivateTag;

    self->_shortPrompt = prompt;
    self->_guidanceLevel = level;
    v14 = [completionCopy copy];
    handler = self->_handler;
    self->_handler = v14;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end