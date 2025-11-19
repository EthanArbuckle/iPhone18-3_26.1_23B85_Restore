@interface _EARVoiceCommandDebugInfo
- (BOOL)isEqual:(id)a3;
- (_EARVoiceCommandDebugInfo)initWithCoder:(id)a3;
- (_EARVoiceCommandDebugInfo)initWithPrecedingUtterance:(id)a3 commandUtterance:(id)a4 target:(id)a5 payload:(id)a6 hasVoiceCommandInExhaustiveParses:(BOOL)a7 hasVoiceCommandParses:(BOOL)a8 hasVoiceCommandEditIntent:(BOOL)a9 hasVoiceCommandAfterReranking:(BOOL)a10 hasNoVoiceCommandAfterRespeakCheck:(BOOL)a11 commandParserMachContinuousStartTicks:(unint64_t)a12 commandParserMachContinuousEndTicks:(unint64_t)a13 commandParserMachAbsoluteStartTicks:(unint64_t)a14 commandParserMachAbsoluteEndTicks:(unint64_t)a15;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EARVoiceCommandDebugInfo

- (_EARVoiceCommandDebugInfo)initWithPrecedingUtterance:(id)a3 commandUtterance:(id)a4 target:(id)a5 payload:(id)a6 hasVoiceCommandInExhaustiveParses:(BOOL)a7 hasVoiceCommandParses:(BOOL)a8 hasVoiceCommandEditIntent:(BOOL)a9 hasVoiceCommandAfterReranking:(BOOL)a10 hasNoVoiceCommandAfterRespeakCheck:(BOOL)a11 commandParserMachContinuousStartTicks:(unint64_t)a12 commandParserMachContinuousEndTicks:(unint64_t)a13 commandParserMachAbsoluteStartTicks:(unint64_t)a14 commandParserMachAbsoluteEndTicks:(unint64_t)a15
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v28 = a6;
  v29.receiver = self;
  v29.super_class = _EARVoiceCommandDebugInfo;
  v25 = [(_EARVoiceCommandDebugInfo *)&v29 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_precedingUtterance, a3);
    objc_storeStrong(&v26->_commandUtterance, a4);
    objc_storeStrong(&v26->_target, a5);
    objc_storeStrong(&v26->_payload, a6);
    v26->_hasVoiceCommandInExhaustiveParses = a7;
    v26->_hasVoiceCommandParses = a8;
    v26->_hasVoiceCommandEditIntent = a9;
    v26->_hasVoiceCommandAfterReranking = a10;
    v26->_hasNoVoiceCommandAfterRespeakCheck = a11;
    v26->_commandParserMachContinuousStartTicks = a12;
    v26->_commandParserMachContinuousEndTicks = a13;
    v26->_commandParserMachAbsoluteStartTicks = a14;
    v26->_commandParserMachAbsoluteEndTicks = a15;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        precedingUtterance = self->_precedingUtterance;
        v9 = [(_EARVoiceCommandDebugInfo *)v7 precedingUtterance];
        if (precedingUtterance != v9)
        {
          v10 = self->_precedingUtterance;
          v11 = [(_EARVoiceCommandDebugInfo *)v7 precedingUtterance];
          if (![(NSString *)v10 isEqual:v11])
          {
            v12 = 0;
            goto LABEL_38;
          }

          v41 = v11;
        }

        commandUtterance = self->_commandUtterance;
        v14 = [(_EARVoiceCommandDebugInfo *)v7 commandUtterance];
        if (commandUtterance != v14)
        {
          v15 = self->_commandUtterance;
          v3 = [(_EARVoiceCommandDebugInfo *)v7 commandUtterance];
          if (![(NSString *)v15 isEqual:v3])
          {
            v12 = 0;
LABEL_36:

LABEL_37:
            v11 = v41;
            if (precedingUtterance == v9)
            {
LABEL_39:

              goto LABEL_40;
            }

LABEL_38:

            goto LABEL_39;
          }
        }

        target = self->_target;
        v17 = [(_EARVoiceCommandDebugInfo *)v7 target];
        v40 = target;
        if (target != v17)
        {
          v18 = self->_target;
          v19 = [(_EARVoiceCommandDebugInfo *)v7 target];
          v20 = v18;
          v21 = v19;
          if (![(NSString *)v20 isEqual:v19])
          {
            v12 = 0;
LABEL_34:

LABEL_35:
            if (commandUtterance == v14)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v37 = v21;
        }

        v39 = v3;
        payload = self->_payload;
        v23 = [(_EARVoiceCommandDebugInfo *)v7 payload];
        v38 = payload;
        if (payload == v23 || (v24 = self->_payload, [(_EARVoiceCommandDebugInfo *)v7 payload], v36 = objc_claimAutoreleasedReturnValue(), [(NSString *)v24 isEqual:?]))
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

          if (v38 == v23)
          {

            v12 = v34;
LABEL_33:
            v3 = v39;
            v21 = v37;
            if (v40 == v17)
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

- (void)encodeWithCoder:(id)a3
{
  precedingUtterance = self->_precedingUtterance;
  v5 = a3;
  [v5 encodeObject:precedingUtterance forKey:@"precedingUtterance"];
  [v5 encodeObject:self->_commandUtterance forKey:@"commandUtterance"];
  [v5 encodeObject:self->_target forKey:@"target"];
  [v5 encodeObject:self->_payload forKey:@"payload"];
  [v5 encodeBool:self->_hasVoiceCommandParses forKey:@"hasVoiceCommandParses"];
  [v5 encodeBool:self->_hasVoiceCommandInExhaustiveParses forKey:@"hasVoiceCommandInExhaustiveParses"];
  [v5 encodeBool:self->_hasVoiceCommandEditIntent forKey:@"hasVoiceCommandEditIntent"];
  [v5 encodeBool:self->_hasVoiceCommandAfterReranking forKey:@"hasVoiceCommandAfterReranking"];
  [v5 encodeBool:self->_hasNoVoiceCommandAfterRespeakCheck forKey:@"hasNoVoiceCommandAfterRespeakCheck"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachContinuousStartTicks];
  [v5 encodeObject:v6 forKey:@"commandParserMachContinuousStartTicks"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachContinuousEndTicks];
  [v5 encodeObject:v7 forKey:@"commandParserMachContinuousEndTicks"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachAbsoluteStartTicks];
  [v5 encodeObject:v8 forKey:@"commandParserMachAbsoluteStartTicks"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_commandParserMachAbsoluteEndTicks];
  [v5 encodeObject:v9 forKey:@"commandParserMachAbsoluteEndTicks"];
}

- (_EARVoiceCommandDebugInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _EARVoiceCommandDebugInfo;
  v5 = [(_EARVoiceCommandDebugInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"precedingUtterance"];
    precedingUtterance = v5->_precedingUtterance;
    v5->_precedingUtterance = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandUtterance"];
    commandUtterance = v5->_commandUtterance;
    v5->_commandUtterance = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    target = v5->_target;
    v5->_target = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v12;

    v5->_hasVoiceCommandInExhaustiveParses = [v4 decodeBoolForKey:@"hasVoiceCommandInExhaustiveParses"];
    v5->_hasVoiceCommandParses = [v4 decodeBoolForKey:@"hasVoiceCommandParses"];
    v5->_hasVoiceCommandEditIntent = [v4 decodeBoolForKey:@"hasVoiceCommandEditIntent"];
    v5->_hasVoiceCommandAfterReranking = [v4 decodeBoolForKey:@"hasVoiceCommandAfterReranking"];
    v5->_hasNoVoiceCommandAfterRespeakCheck = [v4 decodeBoolForKey:@"hasNoVoiceCommandAfterRespeakCheck"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachContinuousStartTicks"];
    v5->_commandParserMachContinuousStartTicks = [v14 unsignedLongLongValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachContinuousEndTicks"];
    v5->_commandParserMachContinuousEndTicks = [v15 unsignedLongLongValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachAbsoluteStartTicks"];
    v5->_commandParserMachAbsoluteStartTicks = [v16 unsignedLongLongValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandParserMachAbsoluteEndTicks"];
    v5->_commandParserMachAbsoluteEndTicks = [v17 unsignedLongLongValue];
  }

  return v5;
}

@end