@interface EARVoiceCommandSuite
- (BOOL)isEqual:(id)a3;
- (EARVoiceCommandSuite)initWithCoder:(id)a3;
- (EARVoiceCommandSuite)initWithIdentifier:(id)a3 commands:(id)a4;
- (EARVoiceCommandSuite)initWithPlistJSONDictionary:(id)a3;
- (id)plistJSONDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARVoiceCommandSuite

- (EARVoiceCommandSuite)initWithIdentifier:(id)a3 commands:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EARVoiceCommandSuite;
  v8 = [(EARVoiceCommandSuite *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    commandSpecs = v8->_commandSpecs;
    v8->_commandSpecs = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = self->_identifier;
    v8 = [(EARVoiceCommandSuite *)v6 identifier];
    if ([(NSString *)identifier isEqualToString:v8])
    {
      commandSpecs = self->_commandSpecs;
      v10 = [(EARVoiceCommandSuite *)v6 commandSpecs];
      v11 = [(NSSet *)commandSpecs isEqualToSet:v10];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:0 forKey:@"version"];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeObject:self->_commandSpecs forKey:@"commandSpecs"];
}

- (EARVoiceCommandSuite)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EARVoiceCommandSuite;
  v5 = [(EARVoiceCommandSuite *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"version"];
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
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v9;

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v8 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v8 forKey:@"commandSpecs"];
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

- (EARVoiceCommandSuite)initWithPlistJSONDictionary:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = EARVoiceCommandSuite;
  v6 = [(EARVoiceCommandSuite *)&v36 init];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"version"];

    if (!v7)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:226 description:{@"Missing key %@ of type NSNumber", @"version"}];
    }

    v8 = [v5 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:226 description:{@"Wrong value type for key %@; expecting NSNumber", @"version"}];
    }

    v10 = [v5 objectForKeyedSubscript:@"version"];
    v11 = [v10 integerValue];

    if (v11)
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
      v15 = [v5 objectForKeyedSubscript:@"identifier"];

      if (!v15)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:230 description:{@"Missing key %@ of type NSString", @"identifier"}];
      }

      v16 = [v5 objectForKeyedSubscript:@"identifier"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:230 description:{@"Wrong value type for key %@; expecting NSString", @"identifier"}];
      }

      v18 = [v5 objectForKeyedSubscript:@"commandSpecs"];

      if (!v18)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:231 description:{@"Missing key %@ of type NSArray", @"commandSpecs"}];
      }

      v19 = [v5 objectForKeyedSubscript:@"commandSpecs"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        [v33 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:231 description:{@"Wrong value type for key %@; expecting NSArray", @"commandSpecs"}];
      }

      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = [v5 objectForKeyedSubscript:@"commandSpecs"];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __52__EARVoiceCommandSuite_initWithPlistJSONDictionary___block_invoke;
      v34[3] = &unk_1E7C1BD20;
      v14 = v21;
      v35 = v14;
      [v22 enumerateObjectsUsingBlock:v34];

      v23 = [v5 objectForKeyedSubscript:@"identifier"];
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