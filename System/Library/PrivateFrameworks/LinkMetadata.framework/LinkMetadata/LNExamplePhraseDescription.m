@interface LNExamplePhraseDescription
- (BOOL)isEqual:(id)a3;
- (LNExamplePhraseDescription)initWithCoder:(id)a3;
- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrase:(id)a5 expected:(id)a6 phraseTemplate:(id)a7;
- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrases:(id)a5 expected:(id)a6;
- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrases:(id)a5 expected:(id)a6 parameter:(id)a7;
- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrases:(id)a5 phrase:(id)a6 expected:(id)a7 parameter:(id)a8 phraseTemplate:(id)a9;
- (LNExamplePhraseDescription)initWithNegativePhrases:(id)a3 parentIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNExamplePhraseDescription

- (id)description
{
  v4 = [(LNExamplePhraseDescription *)self kind];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v9 = MEMORY[0x1E696AEC0];
      v6 = [(LNExamplePhraseDescription *)self parameter];
      v7 = [(LNExamplePhraseDescription *)self phrases];
      v2 = [v9 stringWithFormat:@"Parameter:%@ Phrases:%@", v6, v7];
    }

    else
    {
      v11 = MEMORY[0x1E696AEC0];
      v6 = [(LNExamplePhraseDescription *)self parentIdentifier];
      v7 = [(LNExamplePhraseDescription *)self phrases];
      v12 = [(LNExamplePhraseDescription *)self phrase];
      v13 = [(LNExamplePhraseDescription *)self expected];
      v14 = [(LNExamplePhraseDescription *)self phraseTemplate];
      v2 = [v11 stringWithFormat:@"Intent parentIdentifier:%@ phrases:%@ phrase:%@ expected invocation:%@ phraseTemplate:%@", v6, v7, v12, v13, v14];
    }

    goto LABEL_12;
  }

  if (v4 == 2)
  {
    v10 = MEMORY[0x1E696AEC0];
    v6 = [(LNExamplePhraseDescription *)self phrases];
    v7 = [(LNExamplePhraseDescription *)self phrase];
    v8 = [(LNExamplePhraseDescription *)self expected];
    [v10 stringWithFormat:@"Entity phrases:%@ phrase:%@ expected entity:%@", v6, v7, v8];
    goto LABEL_10;
  }

  if (v4 == 3 || v4 == 4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(LNExamplePhraseDescription *)self phrases];
    v7 = [(LNExamplePhraseDescription *)self phrase];
    v8 = [(LNExamplePhraseDescription *)self expected];
    [v5 stringWithFormat:@"Query phrases:%@ phrase:%@ expected query:%@", v6, v7, v8];
    v2 = LABEL_10:;

LABEL_12:
  }

LABEL_13:

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNExamplePhraseDescription *)self kind];
        if (v7 == [(LNExamplePhraseDescription *)v6 kind])
        {
          v8 = [(LNExamplePhraseDescription *)self phrases];
          v9 = [(LNExamplePhraseDescription *)v6 phrases];

          if (v8 == v9)
          {
            goto LABEL_9;
          }

          v10 = [(LNExamplePhraseDescription *)self phrases];
          if (v10)
          {
            v11 = v10;
            v12 = [(LNExamplePhraseDescription *)v6 phrases];

            if (v12)
            {
              v13 = MEMORY[0x1E695DFD8];
              v14 = [(LNExamplePhraseDescription *)self phrases];
              v15 = [v13 setWithArray:v14];
              v16 = MEMORY[0x1E695DFD8];
              v17 = [(LNExamplePhraseDescription *)v6 phrases];
              v18 = [v16 setWithArray:v17];
              v19 = [v15 isEqualToSet:v18];

              if (!v19)
              {
LABEL_19:

                goto LABEL_20;
              }

LABEL_9:
              v20 = [(LNExamplePhraseDescription *)self expected];
              v21 = [(LNExamplePhraseDescription *)v6 expected];
              v22 = v20;
              v23 = v21;
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

              v29 = [(LNExamplePhraseDescription *)self parameter];
              v30 = [(LNExamplePhraseDescription *)v6 parameter];
              v26 = v29;
              v31 = v30;
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

              v34 = [(LNExamplePhraseDescription *)self phrase];
              v35 = [(LNExamplePhraseDescription *)v6 phrase];
              v36 = v34;
              v37 = v35;
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
              v40 = [(LNExamplePhraseDescription *)self phraseTemplate];
              v41 = [(LNExamplePhraseDescription *)v6 phraseTemplate];
              v38 = v40;
              v42 = v41;
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
  v3 = [(LNExamplePhraseDescription *)self kind];
  v4 = [(LNExamplePhraseDescription *)self phrases];
  v5 = [v4 hash] ^ v3;
  v6 = [(LNExamplePhraseDescription *)self expected];
  v7 = [v6 hash];
  v8 = [(LNExamplePhraseDescription *)self parameter];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(LNExamplePhraseDescription *)self phrase];
  v11 = [v10 hash];
  v12 = [(LNExamplePhraseDescription *)self phraseTemplate];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (LNExamplePhraseDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"kind"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentIdentifier"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"phrases"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expected"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameter"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phraseTemplate"];

  if (v5)
  {
    if (v5 == 1)
    {
      if (!v13)
      {
        v5 = 0;
        goto LABEL_7;
      }

      v15 = [(LNExamplePhraseDescription *)self initWithKind:1 parentIdentifier:v6 phrases:v10 expected:v12];
    }

    else
    {
      v15 = [(LNExamplePhraseDescription *)self initWithKind:v5 parentIdentifier:v6 phrases:v10 phrase:v11 expected:v12 parameter:v13 phraseTemplate:v14];
    }

    self = v15;
    v5 = self;
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNExamplePhraseDescription kind](self forKey:{"kind"), @"kind"}];
  v5 = [(LNExamplePhraseDescription *)self parentIdentifier];
  [v4 encodeObject:v5 forKey:@"parentIdentifier"];

  v6 = [(LNExamplePhraseDescription *)self phrases];
  [v4 encodeObject:v6 forKey:@"phrases"];

  v7 = [(LNExamplePhraseDescription *)self phrase];
  [v4 encodeObject:v7 forKey:@"phrase"];

  v8 = [(LNExamplePhraseDescription *)self expected];
  [v4 encodeObject:v8 forKey:@"expected"];

  v9 = [(LNExamplePhraseDescription *)self parameter];
  [v4 encodeObject:v9 forKey:@"parameter"];

  v10 = [(LNExamplePhraseDescription *)self phraseTemplate];
  [v4 encodeObject:v10 forKey:@"phraseTemplate"];
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrases:(id)a5 expected:(id)a6 parameter:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v12 count])
  {
    v14 = [v12 objectAtIndexedSubscript:0];
  }

  else
  {
    v14 = &stru_1F02ED148;
  }

  v15 = [(LNExamplePhraseDescription *)self initWithKind:a3 parentIdentifier:v11 phrase:v14 expected:v13 phraseTemplate:0];

  return v15;
}

- (LNExamplePhraseDescription)initWithNegativePhrases:(id)a3 parentIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = &stru_1F02ED148;
  }

  v9 = [(LNExamplePhraseDescription *)self initWithKind:4 parentIdentifier:v7 phrase:v8 expected:0 phraseTemplate:0];

  return v9;
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrases:(id)a5 expected:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 count])
  {
    v13 = [v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v13 = &stru_1F02ED148;
  }

  v14 = [(LNExamplePhraseDescription *)self initWithKind:a3 parentIdentifier:v10 phrase:v13 expected:v12 phraseTemplate:0];

  return v14;
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrases:(id)a5 phrase:(id)a6 expected:(id)a7 parameter:(id)a8 phraseTemplate:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v37.receiver = self;
  v37.super_class = LNExamplePhraseDescription;
  v21 = [(LNExamplePhraseDescription *)&v37 init];
  v22 = v21;
  if (v21)
  {
    v21->_kind = a3;
    v23 = [v15 copy];
    parentIdentifier = v22->_parentIdentifier;
    v22->_parentIdentifier = v23;

    v25 = [v16 copy];
    phrases = v22->_phrases;
    v22->_phrases = v25;

    v27 = [v17 copy];
    phrase = v22->_phrase;
    v22->_phrase = v27;

    v29 = [v18 copy];
    expected = v22->_expected;
    v22->_expected = v29;

    v31 = [v19 copy];
    parameter = v22->_parameter;
    v22->_parameter = v31;

    v33 = [v20 copy];
    phraseTemplate = v22->_phraseTemplate;
    v22->_phraseTemplate = v33;

    v35 = v22;
  }

  return v22;
}

- (LNExamplePhraseDescription)initWithKind:(int64_t)a3 parentIdentifier:(id)a4 phrase:(id)a5 expected:(id)a6 phraseTemplate:(id)a7
{
  v36[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"LNExamplePhraseDescription.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"parentIdentifier"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"LNExamplePhraseDescription.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];

LABEL_3:
  v35.receiver = self;
  v35.super_class = LNExamplePhraseDescription;
  v17 = [(LNExamplePhraseDescription *)&v35 init];
  v18 = v17;
  if (v17)
  {
    v17->_kind = a3;
    v19 = [v13 copy];
    parentIdentifier = v18->_parentIdentifier;
    v18->_parentIdentifier = v19;

    v21 = [v14 copy];
    v36[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    phrases = v18->_phrases;
    v18->_phrases = v22;

    v24 = [v14 copy];
    phrase = v18->_phrase;
    v18->_phrase = v24;

    v26 = [v15 copy];
    expected = v18->_expected;
    v18->_expected = v26;

    v28 = [v16 copy];
    phraseTemplate = v18->_phraseTemplate;
    v18->_phraseTemplate = v28;

    v30 = v18;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

@end