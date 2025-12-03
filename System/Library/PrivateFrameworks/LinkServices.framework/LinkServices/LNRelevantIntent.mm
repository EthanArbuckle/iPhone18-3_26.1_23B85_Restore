@interface LNRelevantIntent
- (LNRelevantContext)context;
- (LNRelevantIntent)initWithBundleIdentifier:(id)identifier action:(id)action widgetKind:(id)kind rkContext:(id)context;
- (LNRelevantIntent)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNRelevantIntent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNRelevantIntent *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  action = [(LNRelevantIntent *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  widgetKind = [(LNRelevantIntent *)self widgetKind];
  [coderCopy encodeObject:widgetKind forKey:@"widgetKind"];

  rkContext = [(LNRelevantIntent *)self rkContext];
  [coderCopy encodeObject:rkContext forKey:@"rkContext"];
}

- (LNRelevantIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetKind"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rkContext"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(LNRelevantIntent *)self initWithBundleIdentifier:v5 action:v6 widgetKind:v7 rkContext:v8];
    selfCopy = self;
  }

  v12 = selfCopy;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(LNRelevantIntent *)self bundleIdentifier];
  action = [(LNRelevantIntent *)self action];
  rkContext = [(LNRelevantIntent *)self rkContext];
  v7 = [v3 stringWithFormat:@"{%@:%@, %@}", bundleIdentifier, action, rkContext];

  return v7;
}

- (LNRelevantContext)context
{
  rkContext = [(LNRelevantIntent *)self rkContext];
  toLnContext = [rkContext toLnContext];

  return toLnContext;
}

- (LNRelevantIntent)initWithBundleIdentifier:(id)identifier action:(id)action widgetKind:(id)kind rkContext:(id)context
{
  identifierCopy = identifier;
  actionCopy = action;
  kindCopy = kind;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = LNRelevantIntent;
  v14 = [(LNRelevantIntent *)&v25 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [actionCopy copy];
    action = v14->_action;
    v14->_action = v17;

    v19 = [kindCopy copy];
    widgetKind = v14->_widgetKind;
    v14->_widgetKind = v19;

    v21 = [contextCopy copy];
    rkContext = v14->_rkContext;
    v14->_rkContext = v21;

    v23 = v14;
  }

  return v14;
}

@end