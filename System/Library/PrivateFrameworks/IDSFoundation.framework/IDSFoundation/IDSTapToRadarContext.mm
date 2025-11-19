@interface IDSTapToRadarContext
- (IDSTapToRadarContext)initWithDictionary:(id)a3;
- (IDSTapToRadarContext)initWithTitle:(id)a3 problemDescription:(id)a4;
- (id)getTapToRadarURL;
@end

@implementation IDSTapToRadarContext

- (IDSTapToRadarContext)initWithTitle:(id)a3 problemDescription:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IDSTapToRadarContext;
  v8 = [(IDSTapToRadarContext *)&v12 init];
  if (v8)
  {
    v13[0] = @"Title";
    v13[1] = @"Description";
    v14[0] = v6;
    v14[1] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    rawContext = v8->_rawContext;
    v8->_rawContext = v9;
  }

  return v8;
}

- (IDSTapToRadarContext)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSTapToRadarContext;
  v6 = [(IDSTapToRadarContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawContext, a3);
  }

  return v7;
}

- (id)getTapToRadarURL
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"QueryParameter"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"QueryParameter"];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tap-to-radar://new%@", v4];
    v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
    goto LABEL_32;
  }

  v42 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"tap-to-radar://new"];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentID"];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentName"];
  if (!v10)
  {

    goto LABEL_8;
  }

  v11 = v10;
  v12 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentVersion"];

  if (!v12)
  {
LABEL_8:
    [v7 setObject:@"629332" forKeyedSubscript:@"ComponentID"];
    [v7 setObject:@"IDS" forKeyedSubscript:@"ComponentName"];
    [v7 setObject:@"New Bugs" forKeyedSubscript:@"ComponentVersion"];
    goto LABEL_9;
  }

  v13 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentID"];
  [v7 setObject:v13 forKeyedSubscript:@"ComponentID"];

  v14 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentName"];
  [v7 setObject:v14 forKeyedSubscript:@"ComponentName"];

  v15 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"ComponentVersion"];
  [v7 setObject:v15 forKeyedSubscript:@"ComponentVersion"];

LABEL_9:
  v16 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Title"];
  if (v16)
  {
    [v7 setObject:v16 forKeyedSubscript:@"Title"];
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E69A60B8] sharedInstance];
    v19 = [v18 productBuildVersion];
    v20 = [v17 stringWithFormat:@"[%@] Tap-to-Radar: Internal IDS error detected", v19];
    [v7 setObject:v20 forKeyedSubscript:@"Title"];
  }

  v21 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Description"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"An internal IDS error was detected; please ensure that a sysdiagnose is attached.";
  }

  [v7 setObject:v23 forKeyedSubscript:@"Description"];

  v24 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Classification"];
  v25 = @"Serious Bug";
  if (v24 && [(IDSTapToRadarContext *)self _isValidClassification:v24])
  {
    v25 = v24;
  }

  [v7 setObject:v25 forKeyedSubscript:@"Classification"];
  v26 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Reproducibility"];
  v27 = @"I Didn't Try";
  if (v26 && [(IDSTapToRadarContext *)self _isValidReproducibility:v26])
  {
    v27 = v26;
  }

  v41 = v24;
  [v7 setObject:v27 forKeyedSubscript:@"Reproducibility"];
  v28 = [(NSDictionary *)self->_rawContext objectForKeyedSubscript:@"Keywords"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = @"212336";
  }

  [v7 setObject:v30 forKeyedSubscript:@"Keywords"];

  v31 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v7;
  v32 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v44;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v5);
        }

        v36 = *(*(&v43 + 1) + 8 * i);
        v37 = MEMORY[0x1E696AF60];
        v38 = [v5 objectForKeyedSubscript:v36];
        v39 = [v37 queryItemWithName:v36 value:v38];
        [v31 addObject:v39];
      }

      v33 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v33);
  }

  v4 = v42;
  [v42 setQueryItems:v31];
  v6 = [v42 URL];

LABEL_32:

  return v6;
}

@end