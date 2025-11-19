@interface EARVoiceCommandActiveSet
- (BOOL)isEqual:(id)a3;
- (EARVoiceCommandActiveSet)initWithCoder:(id)a3;
- (EARVoiceCommandActiveSet)initWithPlistJSONDictionary:(id)a3;
- (EARVoiceCommandActiveSet)initWithSuites:(id)a3 resourceBaseURL:(id)a4;
- (id)plistJSONDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARVoiceCommandActiveSet

- (EARVoiceCommandActiveSet)initWithSuites:(id)a3 resourceBaseURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EARVoiceCommandActiveSet;
  v8 = [(EARVoiceCommandActiveSet *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    suites = v8->_suites;
    v8->_suites = v9;

    v11 = [v7 copy];
    resourceBaseURL = v8->_resourceBaseURL;
    v8->_resourceBaseURL = v11;
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
    suites = self->_suites;
    v8 = [(EARVoiceCommandActiveSet *)v6 suites];
    if ([(NSSet *)suites isEqualToSet:v8])
    {
      resourceBaseURL = self->_resourceBaseURL;
      v10 = [(EARVoiceCommandActiveSet *)v6 resourceBaseURL];
      v11 = [(NSURL *)resourceBaseURL isEqual:v10];
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
  [v4 encodeObject:self->_suites forKey:@"suites"];
  [v4 encodeObject:self->_resourceBaseURL forKey:@"resourceBaseURL"];
}

- (EARVoiceCommandActiveSet)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = EARVoiceCommandActiveSet;
  v5 = [(EARVoiceCommandActiveSet *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"version"];
    if (v6)
    {
      v7 = quasar::QuasarCLogger(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [EARVoiceCommandActiveSet initWithCoder:];
      }

      resourceBaseURL = v5;
      v5 = 0;
    }

    else
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"suites"];
      suites = v5->_suites;
      v5->_suites = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resourceBaseURL"];
      resourceBaseURL = v5->_resourceBaseURL;
      v5->_resourceBaseURL = v14;
    }
  }

  return v5;
}

- (id)plistJSONDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  p_suites = &self->_suites;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSSet count](self->_suites, "count")}];
  v5 = *p_suites;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__EARVoiceCommandActiveSet_plistJSONDictionary__block_invoke;
  v13 = &unk_1E7C1BCF8;
  v6 = v4;
  v14 = v6;
  [(NSSet *)v5 enumerateObjectsUsingBlock:&v10];
  v15[0] = @"version";
  v15[1] = @"suites";
  v16[0] = &unk_1F2D54218;
  v16[1] = v6;
  v15[2] = @"resourceBaseURL";
  v7 = [(NSURL *)self->_resourceBaseURL absoluteString:v10];
  v16[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v8;
}

void __47__EARVoiceCommandActiveSet_plistJSONDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 plistJSONDictionary];
  [v2 addObject:?];
}

- (EARVoiceCommandActiveSet)initWithPlistJSONDictionary:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = EARVoiceCommandActiveSet;
  v6 = [(EARVoiceCommandActiveSet *)&v38 init];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"version"];

    if (!v7)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:110 description:{@"Missing key %@ of type NSNumber", @"version"}];
    }

    v8 = [v5 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:110 description:{@"Wrong value type for key %@; expecting NSNumber", @"version"}];
    }

    v10 = [v5 objectForKeyedSubscript:@"version"];
    v11 = [v10 integerValue];

    if (v11)
    {
      p_super = quasar::QuasarCLogger(v12);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [EARVoiceCommandActiveSet initWithCoder:];
      }

      v14 = v6;
      v6 = 0;
    }

    else
    {
      v15 = [v5 objectForKeyedSubscript:@"suites"];

      if (!v15)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:114 description:{@"Missing key %@ of type NSArray", @"suites"}];
      }

      v16 = [v5 objectForKeyedSubscript:@"suites"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        [v33 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:114 description:{@"Wrong value type for key %@; expecting NSArray", @"suites"}];
      }

      v18 = [v5 objectForKeyedSubscript:@"resourceBaseURL"];

      if (!v18)
      {
        v34 = [MEMORY[0x1E696AAA8] currentHandler];
        [v34 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:115 description:{@"Missing key %@ of type NSString", @"resourceBaseURL"}];
      }

      v19 = [v5 objectForKeyedSubscript:@"resourceBaseURL"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        v35 = [MEMORY[0x1E696AAA8] currentHandler];
        [v35 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:115 description:{@"Wrong value type for key %@; expecting NSString", @"resourceBaseURL"}];
      }

      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = [v5 objectForKeyedSubscript:@"suites"];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __56__EARVoiceCommandActiveSet_initWithPlistJSONDictionary___block_invoke;
      v36[3] = &unk_1E7C1BD20;
      v14 = v21;
      v37 = v14;
      [v22 enumerateObjectsUsingBlock:v36];

      v23 = [(EARVoiceCommandActiveSet *)v14 copy];
      suites = v6->_suites;
      v6->_suites = v23;

      v25 = MEMORY[0x1E695DFF8];
      v26 = [v5 objectForKeyedSubscript:@"resourceBaseURL"];
      v27 = [v25 URLWithString:v26];
      resourceBaseURL = v6->_resourceBaseURL;
      v6->_resourceBaseURL = v27;

      p_super = &v37->super;
    }
  }

  return v6;
}

void __56__EARVoiceCommandActiveSet_initWithPlistJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [[EARVoiceCommandSuite alloc] initWithPlistJSONDictionary:v5];
  [v3 addObject:v4];
}

@end