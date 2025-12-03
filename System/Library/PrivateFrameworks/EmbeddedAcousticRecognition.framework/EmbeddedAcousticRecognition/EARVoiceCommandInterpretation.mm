@interface EARVoiceCommandInterpretation
- (BOOL)isEqual:(id)equal;
- (EARVoiceCommandInterpretation)initWithCoder:(id)coder;
- (EARVoiceCommandInterpretation)initWithCommandIdentifier:(id)identifier suiteIdentifiers:(id)identifiers verbIndexes:(id)indexes arguments:(id)arguments;
- (_NSRange)range;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARVoiceCommandInterpretation

- (_NSRange)range
{
  v22 = *MEMORY[0x1E69E9840];
  verbIndexes = [(EARVoiceCommandInterpretation *)self verbIndexes];
  v4 = [verbIndexes mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  arguments = [(EARVoiceCommandInterpretation *)self arguments];
  v6 = [arguments countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(arguments);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        indexes = [v10 indexes];
        [v4 addIndexes:indexes];

        adpositionIndexes = [v10 adpositionIndexes];
        [v4 addIndexes:adpositionIndexes];
      }

      v7 = [arguments countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    firstIndex = [v4 firstIndex];
    v14 = [v4 lastIndex] - firstIndex + 1;
  }

  else
  {
    v14 = 0;
    firstIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = firstIndex;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (EARVoiceCommandInterpretation)initWithCommandIdentifier:(id)identifier suiteIdentifiers:(id)identifiers verbIndexes:(id)indexes arguments:(id)arguments
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  indexesCopy = indexes;
  argumentsCopy = arguments;
  v24.receiver = self;
  v24.super_class = EARVoiceCommandInterpretation;
  v14 = [(EARVoiceCommandInterpretation *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    commandIdentifier = v14->_commandIdentifier;
    v14->_commandIdentifier = v15;

    v17 = [identifiersCopy copy];
    suiteIdentifiers = v14->_suiteIdentifiers;
    v14->_suiteIdentifiers = v17;

    v19 = [indexesCopy copy];
    verbIndexes = v14->_verbIndexes;
    v14->_verbIndexes = v19;

    v21 = [argumentsCopy copy];
    arguments = v14->_arguments;
    v14->_arguments = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    commandIdentifier = self->_commandIdentifier;
    commandIdentifier = [(EARVoiceCommandInterpretation *)v6 commandIdentifier];
    if ([(NSString *)commandIdentifier isEqualToString:commandIdentifier])
    {
      suiteIdentifiers = self->_suiteIdentifiers;
      suiteIdentifiers = [(EARVoiceCommandInterpretation *)v6 suiteIdentifiers];
      if ([(NSSet *)suiteIdentifiers isEqualToSet:suiteIdentifiers])
      {
        verbIndexes = self->_verbIndexes;
        verbIndexes = [(EARVoiceCommandInterpretation *)v6 verbIndexes];
        if ([(NSIndexSet *)verbIndexes isEqualToIndexSet:verbIndexes])
        {
          arguments = self->_arguments;
          arguments = [(EARVoiceCommandInterpretation *)v6 arguments];
          v15 = [(NSArray *)arguments isEqualToArray:arguments];
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

- (void)encodeWithCoder:(id)coder
{
  commandIdentifier = self->_commandIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:commandIdentifier forKey:@"commandIdentifier"];
  [coderCopy encodeObject:self->_suiteIdentifiers forKey:@"suiteIdentifiers"];
  [coderCopy encodeObject:self->_verbIndexes forKey:@"verbIndexes"];
  [coderCopy encodeObject:self->_arguments forKey:@"arguments"];
}

- (EARVoiceCommandInterpretation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = EARVoiceCommandInterpretation;
  v5 = [(EARVoiceCommandInterpretation *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandIdentifier"];
    commandIdentifier = v5->_commandIdentifier;
    v5->_commandIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"suiteIdentifiers"];
    suiteIdentifiers = v5->_suiteIdentifiers;
    v5->_suiteIdentifiers = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verbIndexes"];
    verbIndexes = v5->_verbIndexes;
    v5->_verbIndexes = v13;

    v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v15;
  }

  return v5;
}

@end