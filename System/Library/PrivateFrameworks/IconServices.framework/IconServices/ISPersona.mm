@interface ISPersona
- (ISPersona)initWithRecord:(id)record;
- (id)resourceBadge;
@end

@implementation ISPersona

- (ISPersona)initWithRecord:(id)record
{
  v24 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v22.receiver = self;
  v22.super_class = ISPersona;
  v6 = [(ISPersona *)&v22 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_record, record);
  v7->_personaType = 0;
  identities = +[ISDefaults sharedInstance];
  if ([identities enableInstanceIDBasedTwoAppModel])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_14;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    identities = [recordCopy identities];
    v10 = [identities countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(identities);
          }

          if ([*(*(&v18 + 1) + 8 * v13) personaType] == 2)
          {
            v7->_personaType = 1;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [identities countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

LABEL_14:
  v14 = +[ISDefaults sharedInstance];
  enableBadgeOverhang = [v14 enableBadgeOverhang];

  if (enableBadgeOverhang)
  {
    v7->_personaType = 1;
  }

LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)resourceBadge
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(ISPersona *)self isEnterprisePersona])
  {
    v2 = objc_opt_new();
    v3 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:11];
    v11[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v2 setSymbolColors:v4];

    v5 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:4];
    v10 = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v2 setEnclosureColors:v6];

    [v2 setRenderingMode:2];
    v7 = [ISGraphicSymbolResource graphicSymbolResourceWithConfiguration:v2 symbolName:@"frying.pan.fill" url:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end