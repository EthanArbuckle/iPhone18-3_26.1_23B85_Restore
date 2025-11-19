@interface DEDExtension
+ (id)archivedClasses;
+ (id)extensionWithDEExtension:(id)a3;
+ (id)extensionWithDictionary:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serialize;
@end

@implementation DEDExtension

+ (id)extensionWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"name"];
  v6 = stringIfNil(v5);
  [v4 setName:v6];

  v7 = [v3 objectForKeyedSubscript:@"identifier"];
  v8 = stringIfNil(v7);
  [v4 setIdentifier:v8];

  v9 = [v3 objectForKeyedSubscript:@"localizedConsentText"];
  [v4 setLocalizedConsentText:v9];

  v10 = [v3 objectForKeyedSubscript:@"localizedCustomerConsentText"];
  [v4 setLocalizedCustomerConsentText:v10];

  v11 = [v3 objectForKeyedSubscript:@"localizedDataCollectedExplanation"];
  [v4 setLocalizedDataCollectedExplanation:v11];

  v12 = [v3 objectForKeyedSubscript:@"localizedDataCollectedSummary"];
  [v4 setLocalizedDataCollectedSummary:v12];

  v13 = [v3 objectForKeyedSubscript:@"requiresDataClassBAccessToRun"];
  [v4 setRequiresDataClassBAccessToRun:{objc_msgSend(v13, "BOOLValue")}];

  v14 = [v3 objectForKeyedSubscript:@"dedExtensionIdentifier"];

  if (v14)
  {
    v15 = [DEDExtensionIdentifier alloc];
    v16 = [v3 objectForKeyedSubscript:@"dedExtensionIdentifier"];
    v17 = [(DEDExtensionIdentifier *)v15 initWithString:v16];
    [v4 setDedExtensionIdentifier:v17];
  }

  return v4;
}

+ (id)extensionWithDEExtension:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 attachmentsName];
  v6 = stringIfNil(v5);
  [v4 setName:v6];

  v7 = [v3 identifier];
  v8 = stringIfNil(v7);
  [v4 setIdentifier:v8];

  v9 = [v3 requiresDataClassBAccessToRun];
  [v4 setRequiresDataClassBAccessToRun:v9];

  return v4;
}

- (id)serialize
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = @"name";
  v3 = [(DEDExtension *)self name];
  v4 = stringIfNil(v3);
  v27[0] = v4;
  v26[1] = @"identifier";
  v5 = [(DEDExtension *)self identifier];
  v6 = stringIfNil(v5);
  v27[1] = v6;
  v26[2] = @"dedExtensionIdentifier";
  v7 = [(DEDExtension *)self dedExtensionIdentifier];
  v8 = [v7 stringValue];
  v9 = stringIfNil(v8);
  v27[2] = v9;
  v26[3] = @"requiresDataClassBAccessToRun";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDExtension requiresDataClassBAccessToRun](self, "requiresDataClassBAccessToRun")}];
  v27[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v12 = [(DEDExtension *)self localizedConsentText];
  if (v12 || ([(DEDExtension *)self localizedCustomerConsentText], (v12 = objc_claimAutoreleasedReturnValue()) != 0) || ([(DEDExtension *)self localizedDataCollectedSummary], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v13 = [v11 mutableCopy];
    v14 = [(DEDExtension *)self localizedConsentText];
    v15 = stringIfNil(v14);
    [v13 setObject:v15 forKeyedSubscript:@"localizedConsentText"];

    v16 = [(DEDExtension *)self localizedCustomerConsentText];
    v17 = stringIfNil(v16);
    [v13 setObject:v17 forKeyedSubscript:@"localizedCustomerConsentText"];

    v18 = [(DEDExtension *)self localizedDataCollectedExplanation];
    v19 = stringIfNil(v18);
    [v13 setObject:v19 forKeyedSubscript:@"localizedDataCollectedExplanation"];

    v20 = [(DEDExtension *)self localizedDataCollectedSummary];
    v21 = stringIfNil(v20);
    [v13 setObject:v21 forKeyedSubscript:@"localizedDataCollectedSummary"];

    v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];

    goto LABEL_6;
  }

  v25 = [(DEDExtension *)self localizedDataCollectedExplanation];

  if (v25)
  {
    goto LABEL_5;
  }

  v22 = v11;
LABEL_6:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DEDExtension;
  v4 = [(DEDExtension *)&v8 description];
  v5 = [(DEDExtension *)self serialize];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[DEDExtension allocWithZone:?]];
  objc_storeStrong(&v4->_name, self->_name);
  objc_storeStrong(&v4->_identifier, self->_identifier);
  objc_storeStrong(&v4->_dedExtensionIdentifier, self->_dedExtensionIdentifier);
  v4->_requiresDataClassBAccessToRun = self->_requiresDataClassBAccessToRun;
  return v4;
}

+ (id)archivedClasses
{
  if (archivedClasses_onceToken_1 != -1)
  {
    +[DEDExtension archivedClasses];
  }

  v3 = archivedClasses__classes_0;

  return v3;
}

void __31__DEDExtension_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = +[DEDExtensionIdentifier archivedClasses];
  [v2 unionSet:v3];

  v4 = archivedClasses__classes_0;
  archivedClasses__classes_0 = v2;
}

@end