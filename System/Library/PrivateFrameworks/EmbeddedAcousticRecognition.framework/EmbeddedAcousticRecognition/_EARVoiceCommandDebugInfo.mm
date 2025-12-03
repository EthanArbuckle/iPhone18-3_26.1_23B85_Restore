@interface _EARVoiceCommandDebugInfo
- (BOOL)isEqual:(id)equal;
- (_EARVoiceCommandDebugInfo)initWithCoder:(id)coder;
- (_EARVoiceCommandDebugInfo)initWithPrecedingUtterance:(id)utterance commandUtterance:(id)commandUtterance target:(id)target payload:(id)payload hasVoiceCommandInExhaustiveParses:(BOOL)parses hasVoiceCommandParses:(BOOL)commandParses hasVoiceCommandEditIntent:(BOOL)intent hasVoiceCommandAfterReranking:(BOOL)self0 hasNoVoiceCommandAfterRespeakCheck:(BOOL)self1 commandParserMachContinuousStartTicks:(unint64_t)self2 commandParserMachContinuousEndTicks:(unint64_t)self3 commandParserMachAbsoluteStartTicks:(unint64_t)self4 commandParserMachAbsoluteEndTicks:(unint64_t)self5;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _EARVoiceCommandDebugInfo

- (_EARVoiceCommandDebugInfo)initWithPrecedingUtterance:(id)utterance commandUtterance:(id)commandUtterance target:(id)target payload:(id)payload hasVoiceCommandInExhaustiveParses:(BOOL)parses hasVoiceCommandParses:(BOOL)commandParses hasVoiceCommandEditIntent:(BOOL)intent hasVoiceCommandAfterReranking:(BOOL)self0 hasNoVoiceCommandAfterRespeakCheck:(BOOL)self1 commandParserMachContinuousStartTicks:(unint64_t)self2 commandParserMachContinuousEndTicks:(unint64_t)self3 commandParserMachAbsoluteStartTicks:(unint64_t)self4 commandParserMachAbsoluteEndTicks:(unint64_t)self5
{
  utteranceCopy = utterance;
  commandUtteranceCopy = commandUtterance;
  targetCopy = target;
  payloadCopy = payload;
  v29.receiver = self;
  v29.super_class = _EARVoiceCommandDebugInfo;
  v25 = [(_EARVoiceCommandDebugInfo *)&v29 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_precedingUtterance, utterance);
    objc_storeStrong(&v26->_commandUtterance, commandUtterance);
    objc_storeStrong(&v26->_target, target);
    objc_storeStrong(&v26->_payload, payload);
    v26->_hasVoiceCommandInExhaustiveParses = parses;
    v26->_hasVoiceCommandParses = commandParses;
    v26->_hasVoiceCommandEditIntent = intent;
    v26->_hasVoiceCommandAfterReranking = reranking;
    v26->_hasNoVoiceCommandAfterRespeakCheck = check;
    v26->_commandParserMachContinuousStartTicks = ticks;
    v26->_commandParserMachContinuousEndTicks = endTicks;
    v26->_commandParserMachAbsoluteStartTicks = startTicks;
    v26->_commandParserMachAbsoluteEndTicks = absoluteEndTicks;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        precedingUtterance = self->_precedingUtterance;
        precedingUtterance = [(_EARVoiceCommandDebugInfo *)v7 precedingUtterance];
        if (precedingUtterance != precedingUtterance)
        {
          v10 = self->_precedingUtterance;
          precedingUtterance2 = [(_EARVoiceCommandDebugInfo *)v7 precedingUtterance];
          if (![(NSString *)v10 isEqual:precedingUtterance2])
          {
            v12 = 0;
            goto LABEL_38;
          }

          v41 = precedingUtterance2;
        }

        commandUtterance = self->_commandUtterance;
        commandUtterance = [(_EARVoiceCommandDebugInfo *)v7 commandUtterance];
        if (commandUtterance != commandUtterance)
        {
          v15 = self->_commandUtterance;
          commandUtterance2 = [(_EARVoiceCommandDebugInfo *)v7 commandUtterance];
          if (![(NSString *)v15 isEqual:commandUtterance2])
          {
            v12 = 0;
LABEL_36:

LABEL_37:
            precedingUtterance2 = v41;
            if (precedingUtterance == precedingUtterance)
            {
LABEL_39:

              goto LABEL_40;
            }

LABEL_38:

            goto LABEL_39;
          }
        }

        target = self->_target;
        target = [(_EARVoiceCommandDebugInfo *)v7 target];
        v40 = target;
        if (target != target)
        {
          v18 = self->_target;
          target2 = [(_EARVoiceCommandDebugInfo *)v7 target];
          v20 = v18;
          v21 = target2;
          if (![(NSString *)v20 isEqual:target2])
          {
            v12 = 0;
LABEL_34:

LABEL_35:
            if (commandUtterance == commandUtterance)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v37 = v21;
        }

        v39 = commandUtterance2;
        payload = self->_payload;
        payload = [(_EARVoiceCommandDebugInfo *)v7 payload];
        v38 = payload;
        if (payload == payload || (v24 = self->_payload, [(_EARVoiceCommandDebugInfo *)v7 payload], v36 = objc_claimAutoreleasedReturnValue(), [(NSString *)v24 isEqual:?]))
        {
          hasVoiceCommandInExhaustiveParses = self->_hasVoiceCommandInExhaustiveParses;
          if (hasVoiceCommandInExhaustiveParses == [(_EARVoiceCommandDebugInfo *)v7 hasVoiceCommandInExhaustiveParses]&& (hasVoiceCommandParses = self->_hasVoiceCommandParses, hasVoiceCommandParses == [(_EARVoiceCommandDebugInfo *)v7 hasVoiceCommandParses]) && (hasVoiceCommandEditIntent = self->_hasVoiceCommandEditIntent, hasVoiceCommandEditIntent == [(_EARVoiceCommandDebugInfo *)v7 hasVoiceCommandEditIntent]) && (hasVoiceCommandAfterReranking = self->_hasVoiceCommandAfterReranking, hasVoiceCommandAfterReranking == [(_EARVoiceCommandDebugInfo *)v7 hasVoiceCommandAfterReranking]) && (hasNoVoiceCommandAfterRespeakCheck = self->_hasNoVoiceCommandAfterRespeakCheck, hasNoVoiceCommandAfterRespeakCheck == [(_EARVoiceCommandDebugInfo *)v7 hasNoVoiceCommandAfterRespeakCheck]) && (commandParserMachContinuousStartTicks = self->_commandParserMachContinuousStartTicks, commandParserMachContinuousStartTicks == [(_EARVoiceCommandDebugInfo *)v7 commandParserMachContinuousStartTicks]) && (commandParserMachContinuousEndTicks = self->_commandParserMachContinuousEndTicks, commandParserMachContinuousEndTicks == [(_EARVoiceCommandDebugInfo *)v7 commandParserMachContinuousEndTicks]) && (commandParserMachAbsoluteStartTicks = self->_commandParserMachAbsoluteStartTicks, commandParserMachAbsoluteStartTicks == [(_EARVoiceCommandDebugInfo *)v7 commandParserMachAbsoluteStartTicks]))
          {
            commandParserMachAbsoluteEndTicks = self->_commandParserMachAbsoluteEndTicks;
            v12 = commandParserMachAbsoluteEndTicks == [(_EARVoiceCommandDebugInfo *)v7 commandParserMachAbsoluteEndTicks];
            v34 = v12;
          }

          else
          {
            v12 = 0;
            v34 = 0;
          }

          if (v38 == payload)
          {

            v12 = v34;
LABEL_33:
            commandUtterance2 = v39;
            v21 = v37;
            if (v40 == target)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_33;
      }
    }

    v12 = 0;
  }

LABEL_40:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  precedingUtterance = self->_precedingUtterance;
  coderCopy = coder;
  [coderCopy encodeObject:precedingUtterance forKey:@"precedingUtterance"];
  [coderCopy encodeObject:self->_commandUtterance forKey:@"commandUtterance"];
  [coderCopy encodeObject:self->_target forKey:@"target"];
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
  [coderCopy encodeBool:self->_hasVoiceCommandParses forKey:@"hasVoiceCommandParses"];
  [coderCopy encodeBool:self->_hasVoiceCommandInExhaustiveParses forKey:@"hasVoiceCommandInExhaustiveParses"];
  [coderCopy encodeBool:self->_hasVoiceCommandEditIntent forKey:@"hasVoiceCommandEditIntent"];
  [coderCopy encodeBool:self->_hasVoiceCommandAfterReranking forKey:@"hasVoiceCommandAfterReranking"];
  [coderCopy encodeBool:self->_hasNoVoiceCommandAfterRespeakCheck forKey:@"hasNoVoiceCommandAfterRespeakCheck"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachContinuousStartTicks];
  [coderCopy encodeObject:v6 forKey:@"commandParserMachContinuousStartTicks"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachContinuousEndTicks];
  [coderCopy encodeObject:v7 forKey:@"commandParserMachContinuousEndTicks"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachAbsoluteStartTicks];
  [coderCopy encodeObject:v8 forKey:@"commandParserMachAbsoluteStartTicks"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachAbsoluteEndTicks];
  [coderCopy encodeObject:v9 forKey:@"commandParserMachAbsoluteEndTicks"];
}

- (_EARVoiceCommandDebugInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _EARVoiceCommandDebugInfo;
  v5 = [(_EARVoiceCommandDebugInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"precedingUtterance"];
    precedingUtterance = v5->_precedingUtterance;
    v5->_precedingUtterance = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandUtterance"];
    commandUtterance = v5->_commandUtterance;
    v5->_commandUtterance = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    target = v5->_target;
    v5->_target = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v12;

    v5->_hasVoiceCommandInExhaustiveParses = [coderCopy decodeBoolForKey:@"hasVoiceCommandInExhaustiveParses"];
    v5->_hasVoiceCommandParses = [coderCopy decodeBoolForKey:@"hasVoiceCommandParses"];
    v5->_hasVoiceCommandEditIntent = [coderCopy decodeBoolForKey:@"hasVoiceCommandEditIntent"];
    v5->_hasVoiceCommandAfterReranking = [coderCopy decodeBoolForKey:@"hasVoiceCommandAfterReranking"];
    v5->_hasNoVoiceCommandAfterRespeakCheck = [coderCopy decodeBoolForKey:@"hasNoVoiceCommandAfterRespeakCheck"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachContinuousStartTicks"];
    v5->_commandParserMachContinuousStartTicks = [v14 unsignedLongLongValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachContinuousEndTicks"];
    v5->_commandParserMachContinuousEndTicks = [v15 unsignedLongLongValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachAbsoluteStartTicks"];
    v5->_commandParserMachAbsoluteStartTicks = [v16 unsignedLongLongValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachAbsoluteEndTicks"];
    v5->_commandParserMachAbsoluteEndTicks = [v17 unsignedLongLongValue];
  }

  return v5;
}

@end