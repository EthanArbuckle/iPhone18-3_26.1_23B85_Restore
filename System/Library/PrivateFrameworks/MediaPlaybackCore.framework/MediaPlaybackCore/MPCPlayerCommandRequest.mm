@interface MPCPlayerCommandRequest
- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)command options:(id)options controller:(id)controller label:(id)label;
- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)command options:(id)options playerPath:(id)path label:(id)label;
- (id)description;
- (void)setCommandOptionValue:(id)value forKey:(id)key;
- (void)setLabel:(id)label;
@end

@implementation MPCPlayerCommandRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MRMediaRemoteCopyCommandDescription();
  v6 = [v3 stringWithFormat:@"<%@: %p command=%@>", v4, self, v5];

  return v6;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  if (!labelCopy)
  {
    labelCopy = self->_originalLabel;
  }

  label = self->_label;
  v9 = labelCopy;
  if (v9 == label)
  {

    goto LABEL_7;
  }

  v6 = [(NSString *)v9 isEqual:label];

  if (v6)
  {
LABEL_7:
    v7 = [(NSString *)v9 copy];
    v8 = self->_label;
    self->_label = v7;
  }
}

- (void)setCommandOptionValue:(id)value forKey:(id)key
{
  options = self->_options;
  keyCopy = key;
  valueCopy = value;
  v9 = [(NSDictionary *)options mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v14 = v11;

  [v14 setObject:valueCopy forKeyedSubscript:keyCopy];
  v12 = [v14 copy];
  v13 = self->_options;
  self->_options = v12;
}

- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)command options:(id)options playerPath:(id)path label:(id)label
{
  optionsCopy = options;
  pathCopy = path;
  labelCopy = label;
  v22.receiver = self;
  v22.super_class = MPCPlayerCommandRequest;
  v13 = [(MPCPlayerCommandRequest *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_command = command;
    v15 = [optionsCopy copy];
    options = v14->_options;
    v14->_options = v15;

    v17 = [pathCopy copy];
    playerPath = v14->_playerPath;
    v14->_playerPath = v17;

    v19 = [labelCopy copy];
    label = v14->_label;
    v14->_label = v19;

    objc_storeStrong(&v14->_originalLabel, v14->_label);
  }

  return v14;
}

- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)command options:(id)options controller:(id)controller label:(id)label
{
  v9 = *&command;
  controllerCopy = controller;
  labelCopy = label;
  optionsCopy = options;
  resolvedPlayerPath = [controllerCopy resolvedPlayerPath];
  v15 = [(MPCPlayerCommandRequest *)self initWithMediaRemoteCommand:v9 options:optionsCopy playerPath:resolvedPlayerPath label:labelCopy];

  if (v15)
  {
    objc_storeStrong(&v15->_controller, controller);
  }

  return v15;
}

@end