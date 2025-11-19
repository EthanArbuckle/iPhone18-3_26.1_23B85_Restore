@interface ISGraphicSymbolDescriptor
+ (id)descriptorFromGraphicIconConfiguration:(id)a3;
+ (id)descriptorFromGraphicSymbolRecipe:(id)a3;
- (BOOL)placeholder;
- (id)description;
@end

@implementation ISGraphicSymbolDescriptor

+ (id)descriptorFromGraphicSymbolRecipe:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ISGraphicSymbolDescriptor);
  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ISGraphicSymbolDescriptor *)v3 descriptorFromGraphicSymbolRecipe:v5];
  }

  if (!v3)
  {
    v6 = _ISDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A77B8000, v6, OS_LOG_TYPE_INFO, "No graphic variant recipe was provided", v16, 2u);
    }
  }

  v7 = [(ISIconConfigurationMarkupParser *)[ISGraphicIconConfigurationParser alloc] initWithConfigurationDictionary:v3];
  v8 = [(ISGraphicIconConfigurationParser *)v7 aliasedConfigurationDictionary];
  if (v8)
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:];
    }

    v10 = [(ISIconConfigurationMarkupParser *)[ISGraphicIconConfigurationParser alloc] initWithConfigurationDictionary:v8];
    v7 = v10;
  }

  v11 = [(ISGraphicIconConfigurationParser *)v7 symbolName];
  [(IFGraphicSymbolDescriptor *)v4 setName:v11];

  v12 = [(ISGraphicIconConfigurationParser *)v7 symbolColors];
  [(IFGraphicSymbolDescriptor *)v4 setSymbolColors:v12];

  v13 = [(ISGraphicIconConfigurationParser *)v7 enclosureColors];
  [(IFGraphicSymbolDescriptor *)v4 setEnclosureColors:v13];

  [(IFGraphicSymbolDescriptor *)v4 setRenderingMode:[(ISGraphicIconConfigurationParser *)v7 renderingMode]];
  v14 = _ISDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:v4];
  }

  return v4;
}

+ (id)descriptorFromGraphicIconConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ISGraphicSymbolDescriptor);
  v5 = [v3 symbolColors];
  [(IFGraphicSymbolDescriptor *)v4 setSymbolColors:v5];

  v6 = [v3 enclosureColors];
  [(IFGraphicSymbolDescriptor *)v4 setEnclosureColors:v6];

  -[IFGraphicSymbolDescriptor setRenderingMode:](v4, "setRenderingMode:", [v3 renderingMode]);
  v7 = _ISDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ISGraphicSymbolDescriptor descriptorFromGraphicIconConfiguration:v4];
  }

  return v4;
}

- (BOOL)placeholder
{
  v5 = [(IFGraphicSymbolDescriptor *)self symbolColors];
  if (v5)
  {
    v2 = [(IFGraphicSymbolDescriptor *)self symbolColors];
    if ([v2 count])
    {
      LOBYTE(v6) = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v7 = [(IFGraphicSymbolDescriptor *)self enclosureColors];
  if (v7)
  {
    v3 = [(IFGraphicSymbolDescriptor *)self enclosureColors];
    if ([v3 count] || -[IFGraphicSymbolDescriptor renderingMode](self, "renderingMode"))
    {
      LOBYTE(v6) = 1;
LABEL_8:

      goto LABEL_11;
    }
  }

  else if ([(IFGraphicSymbolDescriptor *)self renderingMode])
  {
    LOBYTE(v6) = 1;
    goto LABEL_11;
  }

  v9 = [(IFGraphicSymbolDescriptor *)self name];
  if (v9)
  {
    v10 = v9;
    v11 = [(IFGraphicSymbolDescriptor *)self name];
    v6 = [v11 isEqual:0x1F1A4EC20] ^ 1;

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    if (v7)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v6 ^ 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IFGraphicSymbolDescriptor *)self name];
  [(IFGraphicSymbolDescriptor *)self size];
  v7 = v6;
  [(IFGraphicSymbolDescriptor *)self size];
  v9 = v8;
  [(IFSymbolImageDescriptor *)self scale];
  v11 = [v3 stringWithFormat:@"<%@ %p> %@ - (%0.2f, %0.2f)@%.0fx", v4, self, v5, v7, v9, v10];

  return v11;
}

+ (void)descriptorFromGraphicSymbolRecipe:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Attempting to make descriptor for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)descriptorFromGraphicSymbolRecipe:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  _os_log_debug_impl(&dword_1A77B8000, v1, OS_LOG_TYPE_DEBUG, "Updated recipe found for %@ => %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)descriptorFromGraphicSymbolRecipe:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_1A77B8000, v2, v3, "Created %@ from graphic variant dictionary %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)descriptorFromGraphicIconConfiguration:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_1A77B8000, v2, v3, "Created %@ from graphic icon configuration %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end