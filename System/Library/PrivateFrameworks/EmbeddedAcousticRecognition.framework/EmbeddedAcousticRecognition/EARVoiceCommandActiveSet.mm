@interface EARVoiceCommandActiveSet
- (BOOL)isEqual:(id)equal;
- (EARVoiceCommandActiveSet)initWithCoder:(id)coder;
- (EARVoiceCommandActiveSet)initWithPlistJSONDictionary:(id)dictionary;
- (EARVoiceCommandActiveSet)initWithSuites:(id)suites resourceBaseURL:(id)l;
- (id)plistJSONDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARVoiceCommandActiveSet

- (EARVoiceCommandActiveSet)initWithSuites:(id)suites resourceBaseURL:(id)l
{
  suitesCopy = suites;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = EARVoiceCommandActiveSet;
  v8 = [(EARVoiceCommandActiveSet *)&v14 init];
  if (v8)
  {
    v9 = [suitesCopy copy];
    suites = v8->_suites;
    v8->_suites = v9;

    v11 = [lCopy copy];
    resourceBaseURL = v8->_resourceBaseURL;
    v8->_resourceBaseURL = v11;
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
    suites = self->_suites;
    suites = [(EARVoiceCommandActiveSet *)v6 suites];
    if ([(NSSet *)suites isEqualToSet:suites])
    {
      resourceBaseURL = self->_resourceBaseURL;
      resourceBaseURL = [(EARVoiceCommandActiveSet *)v6 resourceBaseURL];
      v11 = [(NSURL *)resourceBaseURL isEqual:resourceBaseURL];
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
  [coderCopy encodeObject:self->_suites forKey:@"suites"];
  [coderCopy encodeObject:self->_resourceBaseURL forKey:@"resourceBaseURL"];
}

- (EARVoiceCommandActiveSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = EARVoiceCommandActiveSet;
  v5 = [(EARVoiceCommandActiveSet *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"version"];
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
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"suites"];
      suites = v5->_suites;
      v5->_suites = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resourceBaseURL"];
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

- (EARVoiceCommandActiveSet)initWithPlistJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = EARVoiceCommandActiveSet;
  v6 = [(EARVoiceCommandActiveSet *)&v38 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"version"];

    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:110 description:{@"Missing key %@ of type NSNumber", @"version"}];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:110 description:{@"Wrong value type for key %@; expecting NSNumber", @"version"}];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    integerValue = [v10 integerValue];

    if (integerValue)
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
      v15 = [dictionaryCopy objectForKeyedSubscript:@"suites"];

      if (!v15)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:114 description:{@"Missing key %@ of type NSArray", @"suites"}];
      }

      v16 = [dictionaryCopy objectForKeyedSubscript:@"suites"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:114 description:{@"Wrong value type for key %@; expecting NSArray", @"suites"}];
      }

      v18 = [dictionaryCopy objectForKeyedSubscript:@"resourceBaseURL"];

      if (!v18)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:115 description:{@"Missing key %@ of type NSString", @"resourceBaseURL"}];
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"resourceBaseURL"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler6 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:115 description:{@"Wrong value type for key %@; expecting NSString", @"resourceBaseURL"}];
      }

      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = [dictionaryCopy objectForKeyedSubscript:@"suites"];
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
      v26 = [dictionaryCopy objectForKeyedSubscript:@"resourceBaseURL"];
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