@interface GDSourceListenerConfigIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGDSourceListenerConfigIdentifier:(id)identifier;
- (GDSourceListenerConfigIdentifier)initWithCoder:(id)coder;
- (GDSourceListenerConfigIdentifier)initWithView:(id)view sourceType:(id)type index:(int)index updateType:(id)updateType sourceIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDSourceListenerConfigIdentifier

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<GDSourceListenerConfigIdentifier v: %@, s: %@, u: %@ idx: %tu, sId: %@>", self->_view, self->_sourceType, self->_updateType, self->_index, self->_sourceIdentifier];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_view hash];
  v4 = [(NSString *)self->_sourceType hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_sourceIdentifier hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_updateType hash];
  return self->_index - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
}

- (GDSourceListenerConfigIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_view);
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:v8 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

  if (v9 && ([coderCopy error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v12 = MEMORY[0x1E69C5D78];
    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_sourceType);
    v15 = [v12 robustDecodeObjectOfClass:v13 forKey:v14 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

    if (!v15)
    {
      goto LABEL_7;
    }

    error = [coderCopy error];

    if (error || (NSStringFromSelector(sel_index), v17 = objc_claimAutoreleasedReturnValue(), v18 = [coderCopy decodeIntForKey:v17], v17, objc_msgSend(coderCopy, "error"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
    {
LABEL_7:
      selfCopy = 0;
    }

    else
    {
      v31 = v18;
      v21 = MEMORY[0x1E69C5D78];
      v22 = objc_opt_class();
      v23 = NSStringFromSelector(sel_updateType);
      v24 = [v21 robustDecodeObjectOfClass:v22 forKey:v23 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

      if (v24 && ([coderCopy error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
      {
        v26 = MEMORY[0x1E69C5D78];
        v27 = objc_opt_class();
        v28 = NSStringFromSelector(sel_sourceIdentifier);
        v29 = [v26 robustDecodeObjectOfClass:v27 forKey:v28 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

        if (v29 && ([coderCopy error], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
        {
          self = [(GDSourceListenerConfigIdentifier *)self initWithView:v9 sourceType:v15 index:v31 updateType:v24 sourceIdentifier:v29];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v5);
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  view = self->_view;
  v6 = NSStringFromSelector(sel_view);
  [coderCopy encodeObject:view forKey:v6];

  sourceType = self->_sourceType;
  v8 = NSStringFromSelector(sel_sourceType);
  [coderCopy encodeObject:sourceType forKey:v8];

  index = self->_index;
  v10 = NSStringFromSelector(sel_index);
  [coderCopy encodeInt:index forKey:v10];

  updateType = self->_updateType;
  v12 = NSStringFromSelector(sel_updateType);
  [coderCopy encodeObject:updateType forKey:v12];

  sourceIdentifier = self->_sourceIdentifier;
  v14 = NSStringFromSelector(sel_sourceIdentifier);
  [coderCopy encodeObject:sourceIdentifier forKey:v14];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)isEqualToGDSourceListenerConfigIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_16;
  }

  v5 = self->_view;
  v6 = v5;
  if (v5 == identifierCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = self->_sourceType;
  v9 = v8;
  if (v8 == identifierCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v11 = self->_sourceIdentifier;
  v12 = v11;
  if (v11 == identifierCopy[5])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = self->_updateType;
  v15 = v14;
  if (v14 == identifierCopy[4])
  {

    goto LABEL_19;
  }

  v16 = [(NSString *)v14 isEqual:?];

  if (v16)
  {
LABEL_19:
    v17 = [identifierCopy index] == self->_index;
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:

  return v17;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(GDSourceListenerConfigIdentifier *)self isEqualToGDSourceListenerConfigIdentifier:v5];
  }

  return v6;
}

- (GDSourceListenerConfigIdentifier)initWithView:(id)view sourceType:(id)type index:(int)index updateType:(id)updateType sourceIdentifier:(id)identifier
{
  viewCopy = view;
  typeCopy = type;
  updateTypeCopy = updateType;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = GDSourceListenerConfigIdentifier;
  v16 = [(GDSourceListenerConfigIdentifier *)&v27 init];
  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = [viewCopy copy];
    view = v16->_view;
    v16->_view = v18;

    v20 = [typeCopy copy];
    sourceType = v16->_sourceType;
    v16->_sourceType = v20;

    v16->_index = index;
    v22 = [updateTypeCopy copy];
    updateType = v16->_updateType;
    v16->_updateType = v22;

    v24 = [identifierCopy copy];
    sourceIdentifier = v16->_sourceIdentifier;
    v16->_sourceIdentifier = v24;

    objc_autoreleasePoolPop(v17);
  }

  return v16;
}

@end