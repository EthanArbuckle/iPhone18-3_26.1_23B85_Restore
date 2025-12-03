@interface HDFHIRExtensionProcessor
+ (id)extensionsForURL:(id)l inJSONDictionary:(id)dictionary error:(id *)error;
- (HDFHIRExtensionProcessor)init;
- (HDFHIRExtensionProcessor)initWithResource:(id)resource;
- (id)findUnsupportedModifierExtensions:(id *)extensions;
- (int64_t)visitor:(id)visitor willVisitArray:(id)array;
@end

@implementation HDFHIRExtensionProcessor

- (HDFHIRExtensionProcessor)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDFHIRExtensionProcessor)initWithResource:(id)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = HDFHIRExtensionProcessor;
  v5 = [(HDFHIRExtensionProcessor *)&v9 init];
  if (v5)
  {
    v6 = [resourceCopy copy];
    resource = v5->_resource;
    v5->_resource = v6;
  }

  return v5;
}

+ (id)extensionsForURL:(id)l inJSONDictionary:(id)dictionary error:(id *)error
{
  lCopy = l;
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDFHIRExtensionProcessor extensionsForURL:a2 inJSONDictionary:self error:?];
  }

  v20 = 0;
  v11 = [dictionaryCopy hk_safeArrayIfExistsForKeyPath:@"extension" error:&v20];
  v12 = v20;
  v13 = v12;
  if (v11)
  {
    v14 = [HDFHIRExtensionElement FHIRExtensionElementsFromJSONExtensionObject:v11 error:error];
    if (v14)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __68__HDFHIRExtensionProcessor_extensionsForURL_inJSONDictionary_error___block_invoke;
      v18[3] = &unk_2796E2C10;
      v19 = lCopy;
      v15 = [v14 hk_filter:v18];
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v12)
  {
    if (error)
    {
      v16 = v12;
      v15 = 0;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

uint64_t __68__HDFHIRExtensionProcessor_extensionsForURL_inJSONDictionary_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URI];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)findUnsupportedModifierExtensions:(id *)extensions
{
  v5 = MEMORY[0x277CCD568];
  jSONObject = [(HDFHIRResourceObject *)self->_resource JSONObject];
  v7 = [v5 visitorWithJSONObject:jSONObject delegate:self error:extensions];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HDFHIRExtensionProcessor *)self setCollectingUnsupportedModifierExtensions:v8];

    [v7 traverseJSONObject];
    v9 = [(NSMutableArray *)self->_collectingUnsupportedModifierExtensions copy];
    [(HDFHIRExtensionProcessor *)self setCollectingUnsupportedModifierExtensions:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)visitor:(id)visitor willVisitArray:(id)array
{
  v42 = *MEMORY[0x277D85DE8];
  visitorCopy = visitor;
  arrayCopy = array;
  if (!self->_collectingUnsupportedModifierExtensions)
  {
    [HDFHIRExtensionProcessor visitor:a2 willVisitArray:self];
  }

  lastKeyPathComponent = [visitorCopy lastKeyPathComponent];
  v10 = [lastKeyPathComponent isEqualToString:@"modifierExtension"];

  if (v10)
  {
    v40 = 0;
    v11 = [HDFHIRExtensionElement FHIRExtensionElementsFromJSONExtensionObject:arrayCopy error:&v40];
    v12 = v40;
    v13 = v12;
    if (v11)
    {
      v31 = v12;
      v33 = arrayCopy;
      v34 = visitorCopy;
      allKeyPathComponents = [visitorCopy allKeyPathComponents];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v32 = v11;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v37;
        do
        {
          v19 = 0;
          do
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v36 + 1) + 8 * v19);
            if (([objc_opt_class() isSupportedModifierExtension:v20] & 1) == 0)
            {
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
              v22 = [v21 description];
              v23 = [allKeyPathComponents arrayByAddingObject:v22];

              v24 = [HDFHIRExtensionElementResult alloc];
              v25 = [v23 componentsJoinedByString:@"."];
              v26 = [(HDFHIRExtensionElementResult *)v24 initWithExtensionElement:v20 keyPath:v25 isModifierExtension:1];

              [(NSMutableArray *)self->_collectingUnsupportedModifierExtensions addObject:v26];
            }

            ++v17;
            ++v19;
          }

          while (v16 != v19);
          v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v16);
      }

      arrayCopy = v33;
      visitorCopy = v34;
      v13 = v31;
      v11 = v32;
    }

    else
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [HDFHIRExtensionProcessor visitor:v28 willVisitArray:?];
      }
    }

    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

@end