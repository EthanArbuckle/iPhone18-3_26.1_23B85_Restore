@interface MPCPlayerCommandRequest
- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)a3 options:(id)a4 controller:(id)a5 label:(id)a6;
- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)a3 options:(id)a4 playerPath:(id)a5 label:(id)a6;
- (id)description;
- (void)setCommandOptionValue:(id)a3 forKey:(id)a4;
- (void)setLabel:(id)a3;
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

- (void)setLabel:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self->_originalLabel;
  }

  label = self->_label;
  v9 = v4;
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

- (void)setCommandOptionValue:(id)a3 forKey:(id)a4
{
  options = self->_options;
  v7 = a4;
  v8 = a3;
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

  [v14 setObject:v8 forKeyedSubscript:v7];
  v12 = [v14 copy];
  v13 = self->_options;
  self->_options = v12;
}

- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)a3 options:(id)a4 playerPath:(id)a5 label:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = MPCPlayerCommandRequest;
  v13 = [(MPCPlayerCommandRequest *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_command = a3;
    v15 = [v10 copy];
    options = v14->_options;
    v14->_options = v15;

    v17 = [v11 copy];
    playerPath = v14->_playerPath;
    v14->_playerPath = v17;

    v19 = [v12 copy];
    label = v14->_label;
    v14->_label = v19;

    objc_storeStrong(&v14->_originalLabel, v14->_label);
  }

  return v14;
}

- (MPCPlayerCommandRequest)initWithMediaRemoteCommand:(unsigned int)a3 options:(id)a4 controller:(id)a5 label:(id)a6
{
  v9 = *&a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [v11 resolvedPlayerPath];
  v15 = [(MPCPlayerCommandRequest *)self initWithMediaRemoteCommand:v9 options:v13 playerPath:v14 label:v12];

  if (v15)
  {
    objc_storeStrong(&v15->_controller, a5);
  }

  return v15;
}

@end