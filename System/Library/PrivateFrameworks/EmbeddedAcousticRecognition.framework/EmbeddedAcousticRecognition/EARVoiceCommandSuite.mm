@interface EARVoiceCommandSuite
- (BOOL)isEqual:(id)equal;
- (EARVoiceCommandSuite)initWithCoder:(id)coder;
- (EARVoiceCommandSuite)initWithIdentifier:(id)identifier commands:(id)commands;
- (EARVoiceCommandSuite)initWithPlistJSONDictionary:(id)dictionary;
- (id)plistJSONDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARVoiceCommandSuite

- (EARVoiceCommandSuite)initWithIdentifier:(id)identifier commands:(id)commands
{
  identifierCopy = identifier;
  commandsCopy = commands;
  v14.receiver = self;
  v14.super_class = EARVoiceCommandSuite;
  v8 = [(EARVoiceCommandSuite *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [commandsCopy copy];
    commandSpecs = v8->_commandSpecs;
    v8->_commandSpecs = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = self->_identifier;
    identifier = [(EARVoiceCommandSuite *)v6 identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      commandSpecs = self->_commandSpecs;
      commandSpecs = [(EARVoiceCommandSuite *)v6 commandSpecs];
      v11 = [(NSSet *)commandSpecs isEqualToSet:commandSpecs];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:0 forKey:@"version"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_commandSpecs forKey:@"commandSpecs"];
}

- (EARVoiceCommandSuite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = EARVoiceCommandSuite;
  v5 = [(EARVoiceCommandSuite *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"version"];
    if (v6)
    {
      p_super = quasar::QuasarCLogger(v6);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [EARVoiceCommandSuite initWithCoder:];
      }

      v8 = v5;
      v5 = 0;
    }

    else
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v9;

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v8 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"commandSpecs"];
      p_super = &v5->_commandSpecs->super;
      v5->_commandSpecs = v13;
    }
  }

  return v5;
}

- (id)plistJSONDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  p_commandSpecs = &self->_commandSpecs;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSSet count](self->_commandSpecs, "count")}];
  v5 = *p_commandSpecs;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__EARVoiceCommandSuite_plistJSONDictionary__block_invoke;
  v13 = &unk_1E7C1BD48;
  v6 = v4;
  v14 = v6;
  [(NSSet *)v5 enumerateObjectsUsingBlock:&v10];
  v15[0] = @"version";
  v15[1] = @"identifier";
  identifier = self->_identifier;
  v16[0] = &unk_1F2D54218;
  v16[1] = identifier;
  v15[2] = @"commandSpecs";
  v16[2] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:{3, v10, v11, v12, v13}];

  return v8;
}

void __43__EARVoiceCommandSuite_plistJSONDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 plistJSONDictionary];
  [v2 addObject:?];
}

- (EARVoiceCommandSuite)initWithPlistJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = EARVoiceCommandSuite;
  v6 = [(EARVoiceCommandSuite *)&v36 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"version"];

    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:226 description:{@"Missing key %@ of type NSNumber", @"version"}];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:226 description:{@"Wrong value type for key %@; expecting NSNumber", @"version"}];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    integerValue = [v10 integerValue];

    if (integerValue)
    {
      p_super = quasar::QuasarCLogger(v12);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [EARVoiceCommandSuite initWithCoder:];
      }

      v14 = v6;
      v6 = 0;
    }

    else
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];

      if (!v15)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:230 description:{@"Missing key %@ of type NSString", @"identifier"}];
      }

      v16 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:230 description:{@"Wrong value type for key %@; expecting NSString", @"identifier"}];
      }

      v18 = [dictionaryCopy objectForKeyedSubscript:@"commandSpecs"];

      if (!v18)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:231 description:{@"Missing key %@ of type NSArray", @"commandSpecs"}];
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"commandSpecs"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler6 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:231 description:{@"Wrong value type for key %@; expecting NSArray", @"commandSpecs"}];
      }

      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = [dictionaryCopy objectForKeyedSubscript:@"commandSpecs"];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __52__EARVoiceCommandSuite_initWithPlistJSONDictionary___block_invoke;
      v34[3] = &unk_1E7C1BD20;
      v14 = v21;
      v35 = v14;
      [v22 enumerateObjectsUsingBlock:v34];

      v23 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v23;

      v25 = [(EARVoiceCommandSuite *)v14 copy];
      commandSpecs = v6->_commandSpecs;
      v6->_commandSpecs = v25;

      p_super = &v35->super;
    }
  }

  return v6;
}

void __52__EARVoiceCommandSuite_initWithPlistJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [[EARVoiceCommandSpec alloc] initWithPlistJSONDictionary:v5];
  [v3 addObject:v4];
}

@end