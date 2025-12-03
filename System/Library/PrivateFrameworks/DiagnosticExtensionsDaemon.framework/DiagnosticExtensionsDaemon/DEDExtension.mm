@interface DEDExtension
+ (id)archivedClasses;
+ (id)extensionWithDEExtension:(id)extension;
+ (id)extensionWithDictionary:(id)dictionary;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serialize;
@end

@implementation DEDExtension

+ (id)extensionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v6 = stringIfNil(v5);
  [v4 setName:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v8 = stringIfNil(v7);
  [v4 setIdentifier:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"localizedConsentText"];
  [v4 setLocalizedConsentText:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"localizedCustomerConsentText"];
  [v4 setLocalizedCustomerConsentText:v10];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"localizedDataCollectedExplanation"];
  [v4 setLocalizedDataCollectedExplanation:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"localizedDataCollectedSummary"];
  [v4 setLocalizedDataCollectedSummary:v12];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"requiresDataClassBAccessToRun"];
  [v4 setRequiresDataClassBAccessToRun:{objc_msgSend(v13, "BOOLValue")}];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"dedExtensionIdentifier"];

  if (v14)
  {
    v15 = [DEDExtensionIdentifier alloc];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"dedExtensionIdentifier"];
    v17 = [(DEDExtensionIdentifier *)v15 initWithString:v16];
    [v4 setDedExtensionIdentifier:v17];
  }

  return v4;
}

+ (id)extensionWithDEExtension:(id)extension
{
  extensionCopy = extension;
  v4 = objc_opt_new();
  attachmentsName = [extensionCopy attachmentsName];
  v6 = stringIfNil(attachmentsName);
  [v4 setName:v6];

  identifier = [extensionCopy identifier];
  v8 = stringIfNil(identifier);
  [v4 setIdentifier:v8];

  requiresDataClassBAccessToRun = [extensionCopy requiresDataClassBAccessToRun];
  [v4 setRequiresDataClassBAccessToRun:requiresDataClassBAccessToRun];

  return v4;
}

- (id)serialize
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = @"name";
  name = [(DEDExtension *)self name];
  v4 = stringIfNil(name);
  v27[0] = v4;
  v26[1] = @"identifier";
  identifier = [(DEDExtension *)self identifier];
  v6 = stringIfNil(identifier);
  v27[1] = v6;
  v26[2] = @"dedExtensionIdentifier";
  dedExtensionIdentifier = [(DEDExtension *)self dedExtensionIdentifier];
  stringValue = [dedExtensionIdentifier stringValue];
  v9 = stringIfNil(stringValue);
  v27[2] = v9;
  v26[3] = @"requiresDataClassBAccessToRun";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDExtension requiresDataClassBAccessToRun](self, "requiresDataClassBAccessToRun")}];
  v27[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  localizedConsentText = [(DEDExtension *)self localizedConsentText];
  if (localizedConsentText || ([(DEDExtension *)self localizedCustomerConsentText], (localizedConsentText = objc_claimAutoreleasedReturnValue()) != 0) || ([(DEDExtension *)self localizedDataCollectedSummary], (localizedConsentText = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v13 = [v11 mutableCopy];
    localizedConsentText2 = [(DEDExtension *)self localizedConsentText];
    v15 = stringIfNil(localizedConsentText2);
    [v13 setObject:v15 forKeyedSubscript:@"localizedConsentText"];

    localizedCustomerConsentText = [(DEDExtension *)self localizedCustomerConsentText];
    v17 = stringIfNil(localizedCustomerConsentText);
    [v13 setObject:v17 forKeyedSubscript:@"localizedCustomerConsentText"];

    localizedDataCollectedExplanation = [(DEDExtension *)self localizedDataCollectedExplanation];
    v19 = stringIfNil(localizedDataCollectedExplanation);
    [v13 setObject:v19 forKeyedSubscript:@"localizedDataCollectedExplanation"];

    localizedDataCollectedSummary = [(DEDExtension *)self localizedDataCollectedSummary];
    v21 = stringIfNil(localizedDataCollectedSummary);
    [v13 setObject:v21 forKeyedSubscript:@"localizedDataCollectedSummary"];

    v22 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];

    goto LABEL_6;
  }

  localizedDataCollectedExplanation2 = [(DEDExtension *)self localizedDataCollectedExplanation];

  if (localizedDataCollectedExplanation2)
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
  serialize = [(DEDExtension *)self serialize];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, serialize];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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