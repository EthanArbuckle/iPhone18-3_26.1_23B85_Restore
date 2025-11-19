@interface EARVoiceCommandInterpretation
- (BOOL)isEqual:(id)a3;
- (EARVoiceCommandInterpretation)initWithCoder:(id)a3;
- (EARVoiceCommandInterpretation)initWithCommandIdentifier:(id)a3 suiteIdentifiers:(id)a4 verbIndexes:(id)a5 arguments:(id)a6;
- (_NSRange)range;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARVoiceCommandInterpretation

- (_NSRange)range
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(EARVoiceCommandInterpretation *)self verbIndexes];
  v4 = [v3 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(EARVoiceCommandInterpretation *)self arguments];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 indexes];
        [v4 addIndexes:v11];

        v12 = [v10 adpositionIndexes];
        [v4 addIndexes:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [v4 firstIndex];
    v14 = [v4 lastIndex] - v13 + 1;
  }

  else
  {
    v14 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v13;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (EARVoiceCommandInterpretation)initWithCommandIdentifier:(id)a3 suiteIdentifiers:(id)a4 verbIndexes:(id)a5 arguments:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = EARVoiceCommandInterpretation;
  v14 = [(EARVoiceCommandInterpretation *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    commandIdentifier = v14->_commandIdentifier;
    v14->_commandIdentifier = v15;

    v17 = [v11 copy];
    suiteIdentifiers = v14->_suiteIdentifiers;
    v14->_suiteIdentifiers = v17;

    v19 = [v12 copy];
    verbIndexes = v14->_verbIndexes;
    v14->_verbIndexes = v19;

    v21 = [v13 copy];
    arguments = v14->_arguments;
    v14->_arguments = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    commandIdentifier = self->_commandIdentifier;
    v8 = [(EARVoiceCommandInterpretation *)v6 commandIdentifier];
    if ([(NSString *)commandIdentifier isEqualToString:v8])
    {
      suiteIdentifiers = self->_suiteIdentifiers;
      v10 = [(EARVoiceCommandInterpretation *)v6 suiteIdentifiers];
      if ([(NSSet *)suiteIdentifiers isEqualToSet:v10])
      {
        verbIndexes = self->_verbIndexes;
        v12 = [(EARVoiceCommandInterpretation *)v6 verbIndexes];
        if ([(NSIndexSet *)verbIndexes isEqualToIndexSet:v12])
        {
          arguments = self->_arguments;
          v14 = [(EARVoiceCommandInterpretation *)v6 arguments];
          v15 = [(NSArray *)arguments isEqualToArray:v14];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_commandIdentifier hash];
  v4 = [(NSSet *)self->_suiteIdentifiers hash]+ 1531 * v3;
  v5 = [(NSIndexSet *)self->_verbIndexes hash]+ 1531 * v4;
  return [(NSArray *)self->_arguments hash]+ 1531 * v5 + 0x4FF350C4A71;
}

- (void)encodeWithCoder:(id)a3
{
  commandIdentifier = self->_commandIdentifier;
  v5 = a3;
  [v5 encodeObject:commandIdentifier forKey:@"commandIdentifier"];
  [v5 encodeObject:self->_suiteIdentifiers forKey:@"suiteIdentifiers"];
  [v5 encodeObject:self->_verbIndexes forKey:@"verbIndexes"];
  [v5 encodeObject:self->_arguments forKey:@"arguments"];
}

- (EARVoiceCommandInterpretation)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = EARVoiceCommandInterpretation;
  v5 = [(EARVoiceCommandInterpretation *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandIdentifier"];
    commandIdentifier = v5->_commandIdentifier;
    v5->_commandIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"suiteIdentifiers"];
    suiteIdentifiers = v5->_suiteIdentifiers;
    v5->_suiteIdentifiers = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verbIndexes"];
    verbIndexes = v5->_verbIndexes;
    v5->_verbIndexes = v13;

    v15 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v15;
  }

  return v5;
}

@end