@interface GDViewUpdateSourceRequest
- (GDViewUpdateSourceRequest)initWithCoder:(id)coder;
- (GDViewUpdateSourceRequest)initWithConfigIdentifier:(id)identifier initialBookmark:(id)bookmark latestBookmark:(id)latestBookmark state:(id)state triggered:(BOOL)triggered;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDViewUpdateSourceRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  triggered = self->_triggered;
  v5 = @"notActionable";
  if (triggered)
  {
    if (![(NSString *)self->_state isEqual:@"noChanges"])
    {
      v5 = @"actionable ";
    }

    triggered = self->_triggered;
  }

  triggered = [v3 initWithFormat:@"<GDViewUpdateSourceRequest %@, configId: %@, state: %@, triggered: %d>", v5, self->_configIdentifier, self->_state, triggered];

  return triggered;
}

- (GDViewUpdateSourceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_configIdentifier);
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:v8 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

  if (v9 && ([coderCopy error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v12 = MEMORY[0x1E69C5D78];
    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_initialBookmark);
    v15 = [v12 robustDecodeObjectOfClass:v13 forKey:v14 withCoder:coderCopy expectNonNull:0 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      v17 = MEMORY[0x1E69C5D78];
      v18 = objc_opt_class();
      v19 = NSStringFromSelector(sel_latestBookmark);
      v20 = [v17 robustDecodeObjectOfClass:v18 forKey:v19 withCoder:coderCopy expectNonNull:0 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
      }

      else
      {
        v22 = MEMORY[0x1E69C5D78];
        v23 = objc_opt_class();
        v24 = NSStringFromSelector(sel_state);
        v25 = [v22 robustDecodeObjectOfClass:v23 forKey:v24 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

        if (!v25)
        {
          goto LABEL_11;
        }

        error3 = [coderCopy error];

        if (error3 || (NSStringFromSelector(sel_triggered), v27 = objc_claimAutoreleasedReturnValue(), v28 = [coderCopy decodeBoolForKey:v27], v27, objc_msgSend(coderCopy, "error"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
LABEL_11:
          selfCopy = 0;
        }

        else
        {
          self = [(GDViewUpdateSourceRequest *)self initWithConfigIdentifier:v9 initialBookmark:v15 latestBookmark:v20 state:v25 triggered:v28];
          selfCopy = self;
        }
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
  configIdentifier = self->_configIdentifier;
  v6 = NSStringFromSelector(sel_configIdentifier);
  [coderCopy encodeObject:configIdentifier forKey:v6];

  initialBookmark = self->_initialBookmark;
  v8 = NSStringFromSelector(sel_initialBookmark);
  [coderCopy encodeObject:initialBookmark forKey:v8];

  latestBookmark = self->_latestBookmark;
  v10 = NSStringFromSelector(sel_latestBookmark);
  [coderCopy encodeObject:latestBookmark forKey:v10];

  state = self->_state;
  v12 = NSStringFromSelector(sel_state);
  [coderCopy encodeObject:state forKey:v12];

  triggered = self->_triggered;
  v14 = NSStringFromSelector(sel_triggered);
  [coderCopy encodeBool:triggered forKey:v14];

  objc_autoreleasePoolPop(v4);
}

- (GDViewUpdateSourceRequest)initWithConfigIdentifier:(id)identifier initialBookmark:(id)bookmark latestBookmark:(id)latestBookmark state:(id)state triggered:(BOOL)triggered
{
  identifierCopy = identifier;
  bookmarkCopy = bookmark;
  latestBookmarkCopy = latestBookmark;
  stateCopy = state;
  v22.receiver = self;
  v22.super_class = GDViewUpdateSourceRequest;
  v17 = [(GDViewUpdateSourceRequest *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_configIdentifier, identifier);
    objc_storeStrong(&v18->_initialBookmark, bookmark);
    objc_storeStrong(&v18->_latestBookmark, latestBookmark);
    v19 = [stateCopy copy];
    state = v18->_state;
    v18->_state = v19;

    v18->_triggered = triggered;
  }

  return v18;
}

@end