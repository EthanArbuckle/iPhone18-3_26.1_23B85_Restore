@interface LNAssistantIntentMetadata
- (BOOL)isEqual:(id)equal;
- (LNAssistantIntentMetadata)initWithCoder:(id)coder;
- (LNAssistantIntentMetadata)initWithIntentIdentifier:(id)identifier phraseTemplates:(id)templates parameterValues:(id)values impliedValues:(id)impliedValues availabilityAnnotations:(id)annotations;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantIntentMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_46:

      goto LABEL_47;
    }

    intentIdentifier = [(LNAssistantIntentMetadata *)self intentIdentifier];
    intentIdentifier2 = [(LNAssistantIntentMetadata *)v6 intentIdentifier];
    v9 = intentIdentifier;
    v10 = intentIdentifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_44;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    phraseTemplates = [(LNAssistantIntentMetadata *)self phraseTemplates];
    phraseTemplates2 = [(LNAssistantIntentMetadata *)v6 phraseTemplates];
    v14 = phraseTemplates;
    v18 = phraseTemplates2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_43;
      }

      v21 = [v14 isEqualToArray:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    parameterValues = [(LNAssistantIntentMetadata *)self parameterValues];
    parameterValues2 = [(LNAssistantIntentMetadata *)v6 parameterValues];
    v20 = parameterValues;
    v24 = parameterValues2;
    v41 = v24;
    if (v20 != v24)
    {
      LOBYTE(v12) = 0;
      if (v20)
      {
        v25 = v24;
        v26 = v20;
        if (v24)
        {
          v12 = [v20 isEqual:v24];

          if (!v12)
          {
            goto LABEL_42;
          }

LABEL_24:
          v40 = v20;
          impliedValues = [(LNAssistantIntentMetadata *)self impliedValues];
          impliedValues2 = [(LNAssistantIntentMetadata *)v6 impliedValues];
          v29 = impliedValues;
          v30 = impliedValues2;
          v38 = v30;
          v39 = v29;
          if (v29 == v30)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v29)
            {
              v31 = v30;
              v20 = v40;
              goto LABEL_39;
            }

            v31 = v30;
            v20 = v40;
            if (!v30)
            {
LABEL_39:

              goto LABEL_40;
            }

            v32 = [v29 isEqual:v30];

            if (!v32)
            {
              LOBYTE(v12) = 0;
              v20 = v40;
LABEL_40:
              v25 = v38;
              v26 = v39;
              goto LABEL_41;
            }
          }

          v33 = [(LNAssistantIntentMetadata *)self availabilityAnnotations:v38];
          availabilityAnnotations = [(LNAssistantIntentMetadata *)v6 availabilityAnnotations];
          v29 = v33;
          v35 = availabilityAnnotations;
          v36 = v35;
          if (v29 == v35)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v29)
            {
              v20 = v40;
              if (v35)
              {
                LOBYTE(v12) = [v29 isEqual:v35];
              }

              goto LABEL_37;
            }
          }

          v20 = v40;
LABEL_37:

          v31 = v36;
          goto LABEL_39;
        }
      }

      else
      {
        v25 = v24;
        v26 = 0;
      }

LABEL_41:

LABEL_42:
      v19 = v41;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_47:

  return v12;
}

- (unint64_t)hash
{
  intentIdentifier = [(LNAssistantIntentMetadata *)self intentIdentifier];
  v4 = [intentIdentifier hash];
  phraseTemplates = [(LNAssistantIntentMetadata *)self phraseTemplates];
  v6 = [phraseTemplates hash] ^ v4;
  parameterValues = [(LNAssistantIntentMetadata *)self parameterValues];
  v8 = [parameterValues hash];
  impliedValues = [(LNAssistantIntentMetadata *)self impliedValues];
  v10 = v6 ^ v8 ^ [impliedValues hash];
  availabilityAnnotations = [(LNAssistantIntentMetadata *)self availabilityAnnotations];
  v12 = [availabilityAnnotations hash];

  return v10 ^ v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intentIdentifier = [(LNAssistantIntentMetadata *)self intentIdentifier];
  phraseTemplates = [(LNAssistantIntentMetadata *)self phraseTemplates];
  parameterValues = [(LNAssistantIntentMetadata *)self parameterValues];
  impliedValues = [(LNAssistantIntentMetadata *)self impliedValues];
  availabilityAnnotations = [(LNAssistantIntentMetadata *)self availabilityAnnotations];
  v11 = [v3 stringWithFormat:@"<%@: %p, intentIdentifier: %@, phraseTemplates: %@, parameterValues: %@, impliedValues: %@, availabilityAnnotation: %@>", v5, self, intentIdentifier, phraseTemplates, parameterValues, impliedValues, availabilityAnnotations];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  intentIdentifier = [(LNAssistantIntentMetadata *)self intentIdentifier];
  [coderCopy encodeObject:intentIdentifier forKey:@"intentIdentifier"];

  phraseTemplates = [(LNAssistantIntentMetadata *)self phraseTemplates];
  [coderCopy encodeObject:phraseTemplates forKey:@"phraseTemplates"];

  parameterValues = [(LNAssistantIntentMetadata *)self parameterValues];
  [coderCopy encodeObject:parameterValues forKey:@"parameterValues"];

  impliedValues = [(LNAssistantIntentMetadata *)self impliedValues];
  [coderCopy encodeObject:impliedValues forKey:@"impliedValues"];

  availabilityAnnotations = [(LNAssistantIntentMetadata *)self availabilityAnnotations];
  [coderCopy encodeObject:availabilityAnnotations forKey:@"availabilityAnnotations"];
}

- (LNAssistantIntentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentIdentifier"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phraseTemplates"];

    if (v9)
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"parameterValues"];

      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
      v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"impliedValues"];

      v20 = MEMORY[0x1E695DFD8];
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"availabilityAnnotations"];

      v25 = [[LNAssistantIntentMetadata alloc] initWithIntentIdentifier:v5 phraseTemplates:v9 parameterValues:v14 impliedValues:v19 availabilityAnnotations:v24];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (LNAssistantIntentMetadata)initWithIntentIdentifier:(id)identifier phraseTemplates:(id)templates parameterValues:(id)values impliedValues:(id)impliedValues availabilityAnnotations:(id)annotations
{
  identifierCopy = identifier;
  templatesCopy = templates;
  valuesCopy = values;
  impliedValuesCopy = impliedValues;
  annotationsCopy = annotations;
  if (identifierCopy)
  {
    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantIntentMetadata.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"intentIdentifier"}];

    if (templatesCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAssistantIntentMetadata.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"phraseTemplates"}];

LABEL_3:
  v33.receiver = self;
  v33.super_class = LNAssistantIntentMetadata;
  v18 = [(LNAssistantIntentMetadata *)&v33 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    intentIdentifier = v18->_intentIdentifier;
    v18->_intentIdentifier = v19;

    v21 = [templatesCopy copy];
    phraseTemplates = v18->_phraseTemplates;
    v18->_phraseTemplates = v21;

    v23 = [valuesCopy copy];
    parameterValues = v18->_parameterValues;
    v18->_parameterValues = v23;

    v25 = [impliedValuesCopy copy];
    impliedValues = v18->_impliedValues;
    v18->_impliedValues = v25;

    v27 = [annotationsCopy copy];
    availabilityAnnotations = v18->_availabilityAnnotations;
    v18->_availabilityAnnotations = v27;

    v29 = v18;
  }

  return v18;
}

@end