@interface SGObject
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSuggestion:(id)suggestion;
- (SGObject)initWithCoder:(id)coder;
- (SGObject)initWithRecordId:(id)id origin:(id)origin;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGObject

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[SGObject\n  recordId:%@\n  origin:%@\n]", self->_recordId, self->_origin];

  return v2;
}

- (BOOL)isEqualToSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = self->_recordId;
  v6 = v5;
  if (v5 == suggestionCopy[1])
  {
  }

  else
  {
    v7 = [(SGRecordId *)v5 isEqual:?];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_origin;
  v10 = v9;
  if (v9 == suggestionCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SGOrigin *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGObject *)self isEqualToSuggestion:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  recordId = self->_recordId;
  coderCopy = coder;
  [coderCopy encodeObject:recordId forKey:@"recordId"];
  [coderCopy encodeObject:self->_origin forKey:@"origin"];
}

- (SGObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SGObject;
  v6 = [(SGObject *)&v16 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"recordId"];

    if (v8)
    {
      v9 = v8;
      recordId = v6->_recordId;
      v6->_recordId = v9;
    }

    else
    {
      recordId = [MEMORY[0x1E696AAA8] currentHandler];
      [recordId handleFailureInMethod:a2 object:v6 file:@"SGObject.m" lineNumber:34 description:{@"nonnull property %s *%s was null when decoded", "SGRecordId", "recordId"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"origin"];

    if (v12)
    {
      v13 = v12;
      origin = v6->_origin;
      v6->_origin = v13;
    }

    else
    {
      origin = [MEMORY[0x1E696AAA8] currentHandler];
      [origin handleFailureInMethod:a2 object:v6 file:@"SGObject.m" lineNumber:35 description:{@"nonnull property %s *%s was null when decoded", "SGOrigin", "origin"}];
    }
  }

  return v6;
}

- (SGObject)initWithRecordId:(id)id origin:(id)origin
{
  idCopy = id;
  originCopy = origin;
  v17.receiver = self;
  v17.super_class = SGObject;
  v9 = [(SGObject *)&v17 init];
  if (v9)
  {
    if (idCopy)
    {
      if (originCopy)
      {
LABEL_4:
        v10 = [idCopy copy];
        recordId = v9->_recordId;
        v9->_recordId = v10;

        v12 = [originCopy copy];
        origin = v9->_origin;
        v9->_origin = v12;

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"SGObject.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

      if (originCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v9 file:@"SGObject.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"origin"}];

    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

@end