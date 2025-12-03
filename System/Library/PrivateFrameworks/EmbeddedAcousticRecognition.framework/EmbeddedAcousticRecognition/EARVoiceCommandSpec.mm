@interface EARVoiceCommandSpec
- (BOOL)isEqual:(id)equal;
- (EARVoiceCommandSpec)initWithCoder:(id)coder;
- (EARVoiceCommandSpec)initWithIdentifier:(id)identifier valence:(char)valence fstRelativePaths:(id)paths fstSymbol:(id)symbol;
- (EARVoiceCommandSpec)initWithPlistJSONDictionary:(id)dictionary;
- (id)plistJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARVoiceCommandSpec

- (EARVoiceCommandSpec)initWithIdentifier:(id)identifier valence:(char)valence fstRelativePaths:(id)paths fstSymbol:(id)symbol
{
  identifierCopy = identifier;
  pathsCopy = paths;
  symbolCopy = symbol;
  v21.receiver = self;
  v21.super_class = EARVoiceCommandSpec;
  v13 = [(EARVoiceCommandSpec *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_valence = valence;
    v16 = [pathsCopy copy];
    fstRelativePaths = v13->_fstRelativePaths;
    v13->_fstRelativePaths = v16;

    v18 = [symbolCopy copy];
    fstSymbol = v13->_fstSymbol;
    v13->_fstSymbol = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = self->_identifier;
    identifier = [(EARVoiceCommandSpec *)v6 identifier];
    if ([(NSString *)identifier isEqualToString:identifier]&& (valence = self->_valence, valence == [(EARVoiceCommandSpec *)v6 valence]))
    {
      fstRelativePaths = self->_fstRelativePaths;
      fstRelativePaths = [(EARVoiceCommandSpec *)v6 fstRelativePaths];
      if ([(NSSet *)fstRelativePaths isEqualToSet:fstRelativePaths])
      {
        fstSymbol = self->_fstSymbol;
        fstSymbol = [(EARVoiceCommandSpec *)v6 fstSymbol];
        v14 = [(NSString *)fstSymbol isEqualToString:fstSymbol];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = self->_valence + 571 * [(NSString *)self->_identifier hash];
  v4 = [(NSSet *)self->_fstRelativePaths hash]+ 571 * v3;
  return [(NSString *)self->_fstSymbol hash]+ 571 * v4 + 0x18C022FD71;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:0 forKey:@"version"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_valence forKey:@"valence"];
  [coderCopy encodeObject:self->_fstRelativePaths forKey:@"FSTRelativePaths"];
  [coderCopy encodeObject:self->_fstSymbol forKey:@"FSTSymbol"];
}

- (EARVoiceCommandSpec)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = EARVoiceCommandSpec;
  v5 = [(EARVoiceCommandSpec *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"version"];
    if (v6)
    {
      v7 = quasar::QuasarCLogger(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [EARVoiceCommandSpec initWithCoder:];
      }

      fstSymbol = v5;
      v5 = 0;
    }

    else
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v9;

      v5->_valence = [coderCopy decodeIntegerForKey:@"valence"];
      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"FSTRelativePaths"];
      fstRelativePaths = v5->_fstRelativePaths;
      v5->_fstRelativePaths = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSTSymbol"];
      fstSymbol = v5->_fstSymbol;
      v5->_fstSymbol = v16;
    }
  }

  return v5;
}

- (id)plistJSONDictionary
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"version";
  v9[1] = @"identifier";
  identifier = self->_identifier;
  v10[0] = &unk_1F2D54218;
  v10[1] = identifier;
  v9[2] = @"valence";
  v4 = [MEMORY[0x1E696AD98] numberWithChar:self->_valence];
  v10[2] = v4;
  v9[3] = @"FSTRelativePaths";
  allObjects = [(NSSet *)self->_fstRelativePaths allObjects];
  v9[4] = @"FSTSymbol";
  fstSymbol = self->_fstSymbol;
  v10[3] = allObjects;
  v10[4] = fstSymbol;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

- (EARVoiceCommandSpec)initWithPlistJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v49.receiver = self;
  v49.super_class = EARVoiceCommandSpec;
  v6 = [(EARVoiceCommandSpec *)&v49 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"version"];

    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:350 description:{@"Missing key %@ of type NSNumber", @"version"}];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:350 description:{@"Wrong value type for key %@; expecting NSNumber", @"version"}];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    integerValue = [v10 integerValue];

    if (integerValue)
    {
      v13 = quasar::QuasarCLogger(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [EARVoiceCommandSpec initWithCoder:];
      }

      fstSymbol = v6;
      v6 = 0;
    }

    else
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];

      if (!v15)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:354 description:{@"Missing key %@ of type NSString", @"identifier"}];
      }

      v16 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:354 description:{@"Wrong value type for key %@; expecting NSString", @"identifier"}];
      }

      v18 = [dictionaryCopy objectForKeyedSubscript:@"valence"];

      if (!v18)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:355 description:{@"Missing key %@ of type NSNumber", @"valence"}];
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"valence"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler6 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:355 description:{@"Wrong value type for key %@; expecting NSNumber", @"valence"}];
      }

      v21 = [dictionaryCopy objectForKeyedSubscript:@"FSTRelativePaths"];

      if (!v21)
      {
        currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler7 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:356 description:{@"Missing key %@ of type NSArray", @"FSTRelativePaths"}];
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"FSTRelativePaths"];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if ((v23 & 1) == 0)
      {
        currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler8 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:356 description:{@"Wrong value type for key %@; expecting NSArray", @"FSTRelativePaths"}];
      }

      v24 = [dictionaryCopy objectForKeyedSubscript:@"FSTRelativePaths"];
      v25 = [v24 indexOfObjectPassingTest:&__block_literal_global_2];

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler9 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:357 description:{@"Wrong value type in array for key %@; expecting NSString", @"FSTRelativePaths"}];
      }

      v26 = [dictionaryCopy objectForKeyedSubscript:@"FSTSymbol"];

      if (!v26)
      {
        currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler10 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:358 description:{@"Missing key %@ of type NSString", @"FSTSymbol"}];
      }

      v27 = [dictionaryCopy objectForKeyedSubscript:@"FSTSymbol"];
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if ((v28 & 1) == 0)
      {
        currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler11 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:358 description:{@"Wrong value type for key %@; expecting NSString", @"FSTSymbol"}];
      }

      v29 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v29;

      v31 = [dictionaryCopy objectForKeyedSubscript:@"valence"];
      v6->_valence = [v31 integerValue];

      v32 = MEMORY[0x1E695DFD8];
      v33 = [dictionaryCopy objectForKeyedSubscript:@"FSTRelativePaths"];
      v34 = [v32 setWithArray:v33];
      fstRelativePaths = v6->_fstRelativePaths;
      v6->_fstRelativePaths = v34;

      v36 = [dictionaryCopy objectForKeyedSubscript:@"FSTSymbol"];
      fstSymbol = v6->_fstSymbol;
      v6->_fstSymbol = v36;
    }
  }

  return v6;
}

BOOL __51__EARVoiceCommandSpec_initWithPlistJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end