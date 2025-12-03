@interface LNExamplePhraseDescription
- (BOOL)isEqual:(id)equal;
- (LNExamplePhraseDescription)initWithCoder:(id)coder;
- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrase:(id)phrase expected:(id)expected phraseTemplate:(id)template;
- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrases:(id)phrases expected:(id)expected;
- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrases:(id)phrases expected:(id)expected parameter:(id)parameter;
- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrases:(id)phrases phrase:(id)phrase expected:(id)expected parameter:(id)parameter phraseTemplate:(id)template;
- (LNExamplePhraseDescription)initWithNegativePhrases:(id)phrases parentIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNExamplePhraseDescription

- (id)description
{
  kind = [(LNExamplePhraseDescription *)self kind];
  if (kind <= 1)
  {
    if (kind)
    {
      if (kind != 1)
      {
        goto LABEL_13;
      }

      v9 = MEMORY[0x1E696AEC0];
      parameter = [(LNExamplePhraseDescription *)self parameter];
      phrases = [(LNExamplePhraseDescription *)self phrases];
      v2 = [v9 stringWithFormat:@"Parameter:%@ Phrases:%@", parameter, phrases];
    }

    else
    {
      v11 = MEMORY[0x1E696AEC0];
      parameter = [(LNExamplePhraseDescription *)self parentIdentifier];
      phrases = [(LNExamplePhraseDescription *)self phrases];
      phrase = [(LNExamplePhraseDescription *)self phrase];
      expected = [(LNExamplePhraseDescription *)self expected];
      phraseTemplate = [(LNExamplePhraseDescription *)self phraseTemplate];
      v2 = [v11 stringWithFormat:@"Intent parentIdentifier:%@ phrases:%@ phrase:%@ expected invocation:%@ phraseTemplate:%@", parameter, phrases, phrase, expected, phraseTemplate];
    }

    goto LABEL_12;
  }

  if (kind == 2)
  {
    v10 = MEMORY[0x1E696AEC0];
    parameter = [(LNExamplePhraseDescription *)self phrases];
    phrases = [(LNExamplePhraseDescription *)self phrase];
    expected2 = [(LNExamplePhraseDescription *)self expected];
    [v10 stringWithFormat:@"Entity phrases:%@ phrase:%@ expected entity:%@", parameter, phrases, expected2];
    goto LABEL_10;
  }

  if (kind == 3 || kind == 4)
  {
    v5 = MEMORY[0x1E696AEC0];
    parameter = [(LNExamplePhraseDescription *)self phrases];
    phrases = [(LNExamplePhraseDescription *)self phrase];
    expected2 = [(LNExamplePhraseDescription *)self expected];
    [v5 stringWithFormat:@"Query phrases:%@ phrase:%@ expected query:%@", parameter, phrases, expected2];
    v2 = LABEL_10:;

LABEL_12:
  }

LABEL_13:

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        kind = [(LNExamplePhraseDescription *)self kind];
        if (kind == [(LNExamplePhraseDescription *)v6 kind])
        {
          phrases = [(LNExamplePhraseDescription *)self phrases];
          phrases2 = [(LNExamplePhraseDescription *)v6 phrases];

          if (phrases == phrases2)
          {
            goto LABEL_9;
          }

          phrases3 = [(LNExamplePhraseDescription *)self phrases];
          if (phrases3)
          {
            v11 = phrases3;
            phrases4 = [(LNExamplePhraseDescription *)v6 phrases];

            if (phrases4)
            {
              v13 = MEMORY[0x1E695DFD8];
              phrases5 = [(LNExamplePhraseDescription *)self phrases];
              v15 = [v13 setWithArray:phrases5];
              v16 = MEMORY[0x1E695DFD8];
              phrases6 = [(LNExamplePhraseDescription *)v6 phrases];
              v18 = [v16 setWithArray:phrases6];
              v19 = [v15 isEqualToSet:v18];

              if (!v19)
              {
LABEL_19:

                goto LABEL_20;
              }

LABEL_9:
              expected = [(LNExamplePhraseDescription *)self expected];
              expected2 = [(LNExamplePhraseDescription *)v6 expected];
              v22 = expected;
              v23 = expected2;
              v24 = v23;
              if (v22 == v23)
              {
              }

              else
              {
                LOBYTE(v19) = 0;
                v25 = v23;
                v26 = v22;
                if (!v22 || !v23)
                {
                  goto LABEL_44;
                }

                v27 = [(LNExamplePhraseDescription *)v22 isEqual:v23];

                if (!v27)
                {
                  LOBYTE(v19) = 0;
LABEL_45:

                  goto LABEL_17;
                }
              }

              parameter = [(LNExamplePhraseDescription *)self parameter];
              parameter2 = [(LNExamplePhraseDescription *)v6 parameter];
              v26 = parameter;
              v31 = parameter2;
              v25 = v31;
              if (v26 == v31)
              {
              }

              else
              {
                LOBYTE(v19) = 0;
                v32 = v31;
                v33 = v26;
                if (!v26 || !v31)
                {
                  goto LABEL_43;
                }

                v19 = [(LNExamplePhraseDescription *)v26 isEqual:v31];

                if (!v19)
                {
                  goto LABEL_44;
                }
              }

              phrase = [(LNExamplePhraseDescription *)self phrase];
              phrase2 = [(LNExamplePhraseDescription *)v6 phrase];
              v36 = phrase;
              v37 = phrase2;
              v43 = v36;
              v44 = v37;
              if (v36 != v37)
              {
                LOBYTE(v19) = 0;
                v38 = v36;
                if (v36)
                {
                  v39 = v37;
                  if (v37)
                  {
                    v33 = v43;
                    v19 = [(LNExamplePhraseDescription *)v43 isEqual:v37];

                    if (!v19)
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_34;
                  }
                }

                else
                {
                  v39 = v37;
                }

LABEL_41:

                v33 = v43;
LABEL_42:
                v32 = v44;
LABEL_43:

LABEL_44:
                goto LABEL_45;
              }

LABEL_34:
              phraseTemplate = [(LNExamplePhraseDescription *)self phraseTemplate];
              phraseTemplate2 = [(LNExamplePhraseDescription *)v6 phraseTemplate];
              v38 = phraseTemplate;
              v42 = phraseTemplate2;
              v39 = v42;
              if (v38 == v42)
              {
                LOBYTE(v19) = 1;
              }

              else
              {
                LOBYTE(v19) = 0;
                if (v38 && v42)
                {
                  LOBYTE(v19) = [(LNExamplePhraseDescription *)v38 isEqual:v42];
                }
              }

              goto LABEL_41;
            }
          }
        }

        LOBYTE(v19) = 0;
        goto LABEL_19;
      }

      LOBYTE(v19) = 0;
      v22 = v6;
      v6 = 0;
    }

    else
    {
      v22 = 0;
      LOBYTE(v19) = 0;
    }

LABEL_17:

    goto LABEL_19;
  }

  LOBYTE(v19) = 1;
LABEL_20:

  return v19;
}

- (unint64_t)hash
{
  kind = [(LNExamplePhraseDescription *)self kind];
  phrases = [(LNExamplePhraseDescription *)self phrases];
  v5 = [phrases hash] ^ kind;
  expected = [(LNExamplePhraseDescription *)self expected];
  v7 = [expected hash];
  parameter = [(LNExamplePhraseDescription *)self parameter];
  v9 = v5 ^ v7 ^ [parameter hash];
  phrase = [(LNExamplePhraseDescription *)self phrase];
  v11 = [phrase hash];
  phraseTemplate = [(LNExamplePhraseDescription *)self phraseTemplate];
  v13 = v11 ^ [phraseTemplate hash];

  return v9 ^ v13;
}

- (LNExamplePhraseDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeIntegerForKey:@"kind"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentIdentifier"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"phrases"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expected"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameter"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phraseTemplate"];

  if (selfCopy)
  {
    if (selfCopy == 1)
    {
      if (!v13)
      {
        selfCopy = 0;
        goto LABEL_7;
      }

      v15 = [(LNExamplePhraseDescription *)self initWithKind:1 parentIdentifier:v6 phrases:v10 expected:v12];
    }

    else
    {
      v15 = [(LNExamplePhraseDescription *)self initWithKind:selfCopy parentIdentifier:v6 phrases:v10 phrase:v11 expected:v12 parameter:v13 phraseTemplate:v14];
    }

    self = v15;
    selfCopy = self;
  }

LABEL_7:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNExamplePhraseDescription kind](self forKey:{"kind"), @"kind"}];
  parentIdentifier = [(LNExamplePhraseDescription *)self parentIdentifier];
  [coderCopy encodeObject:parentIdentifier forKey:@"parentIdentifier"];

  phrases = [(LNExamplePhraseDescription *)self phrases];
  [coderCopy encodeObject:phrases forKey:@"phrases"];

  phrase = [(LNExamplePhraseDescription *)self phrase];
  [coderCopy encodeObject:phrase forKey:@"phrase"];

  expected = [(LNExamplePhraseDescription *)self expected];
  [coderCopy encodeObject:expected forKey:@"expected"];

  parameter = [(LNExamplePhraseDescription *)self parameter];
  [coderCopy encodeObject:parameter forKey:@"parameter"];

  phraseTemplate = [(LNExamplePhraseDescription *)self phraseTemplate];
  [coderCopy encodeObject:phraseTemplate forKey:@"phraseTemplate"];
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrases:(id)phrases expected:(id)expected parameter:(id)parameter
{
  identifierCopy = identifier;
  phrasesCopy = phrases;
  expectedCopy = expected;
  if ([phrasesCopy count])
  {
    v14 = [phrasesCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v14 = &stru_1F02ED148;
  }

  v15 = [(LNExamplePhraseDescription *)self initWithKind:kind parentIdentifier:identifierCopy phrase:v14 expected:expectedCopy phraseTemplate:0];

  return v15;
}

- (LNExamplePhraseDescription)initWithNegativePhrases:(id)phrases parentIdentifier:(id)identifier
{
  phrasesCopy = phrases;
  identifierCopy = identifier;
  if ([phrasesCopy count])
  {
    v8 = [phrasesCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = &stru_1F02ED148;
  }

  v9 = [(LNExamplePhraseDescription *)self initWithKind:4 parentIdentifier:identifierCopy phrase:v8 expected:0 phraseTemplate:0];

  return v9;
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrases:(id)phrases expected:(id)expected
{
  identifierCopy = identifier;
  phrasesCopy = phrases;
  expectedCopy = expected;
  if ([phrasesCopy count])
  {
    v13 = [phrasesCopy objectAtIndexedSubscript:0];
  }

  else
  {
    v13 = &stru_1F02ED148;
  }

  v14 = [(LNExamplePhraseDescription *)self initWithKind:kind parentIdentifier:identifierCopy phrase:v13 expected:expectedCopy phraseTemplate:0];

  return v14;
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrases:(id)phrases phrase:(id)phrase expected:(id)expected parameter:(id)parameter phraseTemplate:(id)template
{
  identifierCopy = identifier;
  phrasesCopy = phrases;
  phraseCopy = phrase;
  expectedCopy = expected;
  parameterCopy = parameter;
  templateCopy = template;
  v37.receiver = self;
  v37.super_class = LNExamplePhraseDescription;
  v21 = [(LNExamplePhraseDescription *)&v37 init];
  v22 = v21;
  if (v21)
  {
    v21->_kind = kind;
    v23 = [identifierCopy copy];
    parentIdentifier = v22->_parentIdentifier;
    v22->_parentIdentifier = v23;

    v25 = [phrasesCopy copy];
    phrases = v22->_phrases;
    v22->_phrases = v25;

    v27 = [phraseCopy copy];
    phrase = v22->_phrase;
    v22->_phrase = v27;

    v29 = [expectedCopy copy];
    expected = v22->_expected;
    v22->_expected = v29;

    v31 = [parameterCopy copy];
    parameter = v22->_parameter;
    v22->_parameter = v31;

    v33 = [templateCopy copy];
    phraseTemplate = v22->_phraseTemplate;
    v22->_phraseTemplate = v33;

    v35 = v22;
  }

  return v22;
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)kind parentIdentifier:(id)identifier phrase:(id)phrase expected:(id)expected phraseTemplate:(id)template
{
  v36[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  phraseCopy = phrase;
  expectedCopy = expected;
  templateCopy = template;
  if (identifierCopy)
  {
    if (phraseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNExamplePhraseDescription.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"parentIdentifier"}];

    if (phraseCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNExamplePhraseDescription.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

LABEL_3:
  v35.receiver = self;
  v35.super_class = LNExamplePhraseDescription;
  v17 = [(LNExamplePhraseDescription *)&v35 init];
  v18 = v17;
  if (v17)
  {
    v17->_kind = kind;
    v19 = [identifierCopy copy];
    parentIdentifier = v18->_parentIdentifier;
    v18->_parentIdentifier = v19;

    v21 = [phraseCopy copy];
    v36[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    phrases = v18->_phrases;
    v18->_phrases = v22;

    v24 = [phraseCopy copy];
    phrase = v18->_phrase;
    v18->_phrase = v24;

    v26 = [expectedCopy copy];
    expected = v18->_expected;
    v18->_expected = v26;

    v28 = [templateCopy copy];
    phraseTemplate = v18->_phraseTemplate;
    v18->_phraseTemplate = v28;

    v30 = v18;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

@end