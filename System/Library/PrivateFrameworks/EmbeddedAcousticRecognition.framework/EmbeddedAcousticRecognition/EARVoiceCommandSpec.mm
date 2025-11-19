@interface EARVoiceCommandSpec
- (BOOL)isEqual:(id)a3;
- (EARVoiceCommandSpec)initWithCoder:(id)a3;
- (EARVoiceCommandSpec)initWithIdentifier:(id)a3 valence:(char)a4 fstRelativePaths:(id)a5 fstSymbol:(id)a6;
- (EARVoiceCommandSpec)initWithPlistJSONDictionary:(id)a3;
- (id)plistJSONDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARVoiceCommandSpec

- (EARVoiceCommandSpec)initWithIdentifier:(id)a3 valence:(char)a4 fstRelativePaths:(id)a5 fstSymbol:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = EARVoiceCommandSpec;
  v13 = [(EARVoiceCommandSpec *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_valence = a4;
    v16 = [v11 copy];
    fstRelativePaths = v13->_fstRelativePaths;
    v13->_fstRelativePaths = v16;

    v18 = [v12 copy];
    fstSymbol = v13->_fstSymbol;
    v13->_fstSymbol = v18;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = self->_identifier;
    v8 = [(EARVoiceCommandSpec *)v6 identifier];
    if ([(NSString *)identifier isEqualToString:v8]&& (valence = self->_valence, valence == [(EARVoiceCommandSpec *)v6 valence]))
    {
      fstRelativePaths = self->_fstRelativePaths;
      v11 = [(EARVoiceCommandSpec *)v6 fstRelativePaths];
      if ([(NSSet *)fstRelativePaths isEqualToSet:v11])
      {
        fstSymbol = self->_fstSymbol;
        v13 = [(EARVoiceCommandSpec *)v6 fstSymbol];
        v14 = [(NSString *)fstSymbol isEqualToString:v13];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:0 forKey:@"version"];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeInteger:self->_valence forKey:@"valence"];
  [v4 encodeObject:self->_fstRelativePaths forKey:@"FSTRelativePaths"];
  [v4 encodeObject:self->_fstSymbol forKey:@"FSTSymbol"];
}

- (EARVoiceCommandSpec)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EARVoiceCommandSpec;
  v5 = [(EARVoiceCommandSpec *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"version"];
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
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v9;

      v5->_valence = [v4 decodeIntegerForKey:@"valence"];
      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"FSTRelativePaths"];
      fstRelativePaths = v5->_fstRelativePaths;
      v5->_fstRelativePaths = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSTSymbol"];
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
  v5 = [(NSSet *)self->_fstRelativePaths allObjects];
  v9[4] = @"FSTSymbol";
  fstSymbol = self->_fstSymbol;
  v10[3] = v5;
  v10[4] = fstSymbol;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

- (EARVoiceCommandSpec)initWithPlistJSONDictionary:(id)a3
{
  v5 = a3;
  v49.receiver = self;
  v49.super_class = EARVoiceCommandSpec;
  v6 = [(EARVoiceCommandSpec *)&v49 init];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"version"];

    if (!v7)
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      [v38 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:350 description:{@"Missing key %@ of type NSNumber", @"version"}];
    }

    v8 = [v5 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [v39 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:350 description:{@"Wrong value type for key %@; expecting NSNumber", @"version"}];
    }

    v10 = [v5 objectForKeyedSubscript:@"version"];
    v11 = [v10 integerValue];

    if (v11)
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
      v15 = [v5 objectForKeyedSubscript:@"identifier"];

      if (!v15)
      {
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        [v40 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:354 description:{@"Missing key %@ of type NSString", @"identifier"}];
      }

      v16 = [v5 objectForKeyedSubscript:@"identifier"];
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
        v41 = [MEMORY[0x1E696AAA8] currentHandler];
        [v41 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:354 description:{@"Wrong value type for key %@; expecting NSString", @"identifier"}];
      }

      v18 = [v5 objectForKeyedSubscript:@"valence"];

      if (!v18)
      {
        v42 = [MEMORY[0x1E696AAA8] currentHandler];
        [v42 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:355 description:{@"Missing key %@ of type NSNumber", @"valence"}];
      }

      v19 = [v5 objectForKeyedSubscript:@"valence"];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        v43 = [MEMORY[0x1E696AAA8] currentHandler];
        [v43 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:355 description:{@"Wrong value type for key %@; expecting NSNumber", @"valence"}];
      }

      v21 = [v5 objectForKeyedSubscript:@"FSTRelativePaths"];

      if (!v21)
      {
        v44 = [MEMORY[0x1E696AAA8] currentHandler];
        [v44 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:356 description:{@"Missing key %@ of type NSArray", @"FSTRelativePaths"}];
      }

      v22 = [v5 objectForKeyedSubscript:@"FSTRelativePaths"];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if ((v23 & 1) == 0)
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        [v45 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:356 description:{@"Wrong value type for key %@; expecting NSArray", @"FSTRelativePaths"}];
      }

      v24 = [v5 objectForKeyedSubscript:@"FSTRelativePaths"];
      v25 = [v24 indexOfObjectPassingTest:&__block_literal_global_2];

      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = [MEMORY[0x1E696AAA8] currentHandler];
        [v46 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:357 description:{@"Wrong value type in array for key %@; expecting NSString", @"FSTRelativePaths"}];
      }

      v26 = [v5 objectForKeyedSubscript:@"FSTSymbol"];

      if (!v26)
      {
        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        [v47 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:358 description:{@"Missing key %@ of type NSString", @"FSTSymbol"}];
      }

      v27 = [v5 objectForKeyedSubscript:@"FSTSymbol"];
      objc_opt_class();
      v28 = objc_opt_isKindOfClass();

      if ((v28 & 1) == 0)
      {
        v48 = [MEMORY[0x1E696AAA8] currentHandler];
        [v48 handleFailureInMethod:a2 object:v6 file:@"EARVoiceCommandActiveSet.mm" lineNumber:358 description:{@"Wrong value type for key %@; expecting NSString", @"FSTSymbol"}];
      }

      v29 = [v5 objectForKeyedSubscript:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v29;

      v31 = [v5 objectForKeyedSubscript:@"valence"];
      v6->_valence = [v31 integerValue];

      v32 = MEMORY[0x1E695DFD8];
      v33 = [v5 objectForKeyedSubscript:@"FSTRelativePaths"];
      v34 = [v32 setWithArray:v33];
      fstRelativePaths = v6->_fstRelativePaths;
      v6->_fstRelativePaths = v34;

      v36 = [v5 objectForKeyedSubscript:@"FSTSymbol"];
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