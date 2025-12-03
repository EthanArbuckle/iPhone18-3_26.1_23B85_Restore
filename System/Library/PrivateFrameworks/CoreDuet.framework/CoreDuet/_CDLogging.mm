@interface _CDLogging
+ (id)admissionCheckChannel;
+ (id)autoSUChannel;
+ (id)communicatorChannel;
+ (id)contextChannel;
+ (id)dataCollectionChannel;
+ (id)descriptionOfArray:(id)array redacted:(BOOL)redacted;
+ (id)descriptionOfObject:(id)object redacted:(BOOL)redacted;
+ (id)instrumentationChannel;
+ (id)interactionChannel;
+ (id)interactionSignpost;
+ (id)knowledgeChannel;
+ (id)knowledgeSignpost;
+ (id)mediaAnalysisChannel;
+ (id)psBackgroundProcessingChannel;
+ (id)spotlightReceiverChannel;
+ (id)syncChannel;
@end

@implementation _CDLogging

+ (id)contextChannel
{
  if (contextChannel_onceToken != -1)
  {
    +[_CDLogging contextChannel];
  }

  v3 = contextChannel_contextChannel;

  return v3;
}

+ (id)knowledgeChannel
{
  if (knowledgeChannel_onceToken != -1)
  {
    +[_CDLogging knowledgeChannel];
  }

  v3 = knowledgeChannel_knowledgeChannel;

  return v3;
}

+ (id)instrumentationChannel
{
  if (instrumentationChannel_onceToken != -1)
  {
    +[_CDLogging instrumentationChannel];
  }

  v3 = instrumentationChannel_instrumentationChannel;

  return v3;
}

+ (id)knowledgeSignpost
{
  if (knowledgeSignpost_onceToken != -1)
  {
    +[_CDLogging knowledgeSignpost];
  }

  v3 = knowledgeSignpost_knowledgeSignpost;

  return v3;
}

+ (id)interactionChannel
{
  if (interactionChannel_onceToken != -1)
  {
    +[_CDLogging interactionChannel];
  }

  v3 = interactionChannel_interactionChannel;

  return v3;
}

+ (id)spotlightReceiverChannel
{
  if (spotlightReceiverChannel_onceToken != -1)
  {
    +[_CDLogging spotlightReceiverChannel];
  }

  v3 = spotlightReceiverChannel_spotlightReceiverChannel;

  return v3;
}

+ (id)syncChannel
{
  if (syncChannel_onceToken != -1)
  {
    +[_CDLogging syncChannel];
  }

  v3 = syncChannel_syncChannel;

  return v3;
}

+ (id)mediaAnalysisChannel
{
  if (mediaAnalysisChannel__pasOnceToken54 != -1)
  {
    +[_CDLogging mediaAnalysisChannel];
  }

  v3 = mediaAnalysisChannel_mediaAnalysisChannel;

  return v3;
}

+ (id)autoSUChannel
{
  if (autoSUChannel_onceToken != -1)
  {
    +[_CDLogging autoSUChannel];
  }

  v3 = autoSUChannel_autoSUChannel;

  return v3;
}

+ (id)dataCollectionChannel
{
  if (dataCollectionChannel_onceToken != -1)
  {
    +[_CDLogging dataCollectionChannel];
  }

  v3 = dataCollectionChannel_dataCollectionChannel;

  return v3;
}

+ (id)admissionCheckChannel
{
  if (admissionCheckChannel_onceToken != -1)
  {
    +[_CDLogging admissionCheckChannel];
  }

  v3 = admissionCheckChannel_admissionCheckChannel;

  return v3;
}

+ (id)communicatorChannel
{
  if (communicatorChannel_onceToken != -1)
  {
    +[_CDLogging communicatorChannel];
  }

  v3 = communicatorChannel_communicatorChannel;

  return v3;
}

+ (id)psBackgroundProcessingChannel
{
  if (psBackgroundProcessingChannel_onceToken != -1)
  {
    +[_CDLogging psBackgroundProcessingChannel];
  }

  v3 = psBackgroundProcessingChannel_psBackgroundProcessingChannel;

  return v3;
}

+ (id)interactionSignpost
{
  if (interactionSignpost_onceToken != -1)
  {
    +[_CDLogging interactionSignpost];
  }

  v3 = interactionSignpost_interactionSignpost;

  return v3;
}

+ (id)descriptionOfObject:(id)object redacted:(BOOL)redacted
{
  objectCopy = object;
  v6 = objectCopy;
  if (!objectCopy)
  {
    v8 = @"nil";
    goto LABEL_9;
  }

  if (!redacted)
  {
    redactedDescription = [objectCopy description];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    redactedDescription = [v6 redactedDescription];
LABEL_7:
    v8 = redactedDescription;
    goto LABEL_9;
  }

  v8 = @"redacted";
LABEL_9:

  return v8;
}

+ (id)descriptionOfArray:(id)array redacted:(BOOL)redacted
{
  redactedCopy = redacted;
  arrayCopy = array;
  if (arrayCopy)
  {
    v6 = arrayCopy;
    if (redactedCopy && [arrayCopy count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42___CDLogging_descriptionOfArray_redacted___block_invoke;
      v11[3] = &unk_1E7369E68;
      v11[4] = &v12;
      v7 = [v6 _pas_mappedArrayWithTransform:v11];

      if (*(v13 + 24) != 1)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"redacted (%tu items)", objc_msgSend(v7, "count")];
        _Block_object_dispose(&v12, 8);
        goto LABEL_8;
      }

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v7 = v6;
    }

    v8 = [@"\n[\n" mutableCopy];
    v9 = [v7 _pas_componentsJoinedByString:{@", \n"}];
    [(__CFString *)v8 appendString:v9];

    [(__CFString *)v8 appendString:@"\n]"];
LABEL_8:

    goto LABEL_10;
  }

  v8 = @"nil";
LABEL_10:

  return v8;
}

@end