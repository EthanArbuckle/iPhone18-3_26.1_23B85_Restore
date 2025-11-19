@interface GDViewUpdateSourceRequest
- (GDViewUpdateSourceRequest)initWithCoder:(id)a3;
- (GDViewUpdateSourceRequest)initWithConfigIdentifier:(id)a3 initialBookmark:(id)a4 latestBookmark:(id)a5 state:(id)a6 triggered:(BOOL)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

  v6 = [v3 initWithFormat:@"<GDViewUpdateSourceRequest %@, configId: %@, state: %@, triggered: %d>", v5, self->_configIdentifier, self->_state, triggered];

  return v6;
}

- (GDViewUpdateSourceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_configIdentifier);
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:v8 withCoder:v4 expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

  if (v9 && ([v4 error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v12 = MEMORY[0x1E69C5D78];
    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_initialBookmark);
    v15 = [v12 robustDecodeObjectOfClass:v13 forKey:v14 withCoder:v4 expectNonNull:0 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

    v16 = [v4 error];

    if (v16)
    {
      v11 = 0;
    }

    else
    {
      v17 = MEMORY[0x1E69C5D78];
      v18 = objc_opt_class();
      v19 = NSStringFromSelector(sel_latestBookmark);
      v20 = [v17 robustDecodeObjectOfClass:v18 forKey:v19 withCoder:v4 expectNonNull:0 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

      v21 = [v4 error];

      if (v21)
      {
        v11 = 0;
      }

      else
      {
        v22 = MEMORY[0x1E69C5D78];
        v23 = objc_opt_class();
        v24 = NSStringFromSelector(sel_state);
        v25 = [v22 robustDecodeObjectOfClass:v23 forKey:v24 withCoder:v4 expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

        if (!v25)
        {
          goto LABEL_11;
        }

        v26 = [v4 error];

        if (v26 || (NSStringFromSelector(sel_triggered), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v4 decodeBoolForKey:v27], v27, objc_msgSend(v4, "error"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
LABEL_11:
          v11 = 0;
        }

        else
        {
          self = [(GDViewUpdateSourceRequest *)self initWithConfigIdentifier:v9 initialBookmark:v15 latestBookmark:v20 state:v25 triggered:v28];
          v11 = self;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = objc_autoreleasePoolPush();
  configIdentifier = self->_configIdentifier;
  v6 = NSStringFromSelector(sel_configIdentifier);
  [v15 encodeObject:configIdentifier forKey:v6];

  initialBookmark = self->_initialBookmark;
  v8 = NSStringFromSelector(sel_initialBookmark);
  [v15 encodeObject:initialBookmark forKey:v8];

  latestBookmark = self->_latestBookmark;
  v10 = NSStringFromSelector(sel_latestBookmark);
  [v15 encodeObject:latestBookmark forKey:v10];

  state = self->_state;
  v12 = NSStringFromSelector(sel_state);
  [v15 encodeObject:state forKey:v12];

  triggered = self->_triggered;
  v14 = NSStringFromSelector(sel_triggered);
  [v15 encodeBool:triggered forKey:v14];

  objc_autoreleasePoolPop(v4);
}

- (GDViewUpdateSourceRequest)initWithConfigIdentifier:(id)a3 initialBookmark:(id)a4 latestBookmark:(id)a5 state:(id)a6 triggered:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = GDViewUpdateSourceRequest;
  v17 = [(GDViewUpdateSourceRequest *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_configIdentifier, a3);
    objc_storeStrong(&v18->_initialBookmark, a4);
    objc_storeStrong(&v18->_latestBookmark, a5);
    v19 = [v16 copy];
    state = v18->_state;
    v18->_state = v19;

    v18->_triggered = a7;
  }

  return v18;
}

@end