@interface LNRelevantIntent
- (LNRelevantContext)context;
- (LNRelevantIntent)initWithBundleIdentifier:(id)a3 action:(id)a4 widgetKind:(id)a5 rkContext:(id)a6;
- (LNRelevantIntent)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNRelevantIntent

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNRelevantIntent *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(LNRelevantIntent *)self action];
  [v4 encodeObject:v6 forKey:@"action"];

  v7 = [(LNRelevantIntent *)self widgetKind];
  [v4 encodeObject:v7 forKey:@"widgetKind"];

  v8 = [(LNRelevantIntent *)self rkContext];
  [v4 encodeObject:v8 forKey:@"rkContext"];
}

- (LNRelevantIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetKind"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rkContext"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    self = [(LNRelevantIntent *)self initWithBundleIdentifier:v5 action:v6 widgetKind:v7 rkContext:v8];
    v11 = self;
  }

  v12 = v11;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNRelevantIntent *)self bundleIdentifier];
  v5 = [(LNRelevantIntent *)self action];
  v6 = [(LNRelevantIntent *)self rkContext];
  v7 = [v3 stringWithFormat:@"{%@:%@, %@}", v4, v5, v6];

  return v7;
}

- (LNRelevantContext)context
{
  v2 = [(LNRelevantIntent *)self rkContext];
  v3 = [v2 toLnContext];

  return v3;
}

- (LNRelevantIntent)initWithBundleIdentifier:(id)a3 action:(id)a4 widgetKind:(id)a5 rkContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = LNRelevantIntent;
  v14 = [(LNRelevantIntent *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [v11 copy];
    action = v14->_action;
    v14->_action = v17;

    v19 = [v12 copy];
    widgetKind = v14->_widgetKind;
    v14->_widgetKind = v19;

    v21 = [v13 copy];
    rkContext = v14->_rkContext;
    v14->_rkContext = v21;

    v23 = v14;
  }

  return v14;
}

@end