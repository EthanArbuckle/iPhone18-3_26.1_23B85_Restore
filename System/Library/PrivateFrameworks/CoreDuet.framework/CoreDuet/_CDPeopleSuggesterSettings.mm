@interface _CDPeopleSuggesterSettings
+ (id)defaultSettings;
- (_CDPeopleSuggesterSettings)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _CDPeopleSuggesterSettings

+ (id)defaultSettings
{
  v2 = objc_alloc_init(_CDPeopleSuggesterSettings);

  return v2;
}

- (_CDPeopleSuggesterSettings)init
{
  v10.receiver = self;
  v10.super_class = _CDPeopleSuggesterSettings;
  v2 = [(_CDPeopleSuggesterSettings *)&v10 init];
  if (v2)
  {
    v3 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
    resultLimit = [v3 resultLimit];
    constrainMechanisms = v2->_constrainMechanisms;
    v2->_maxNumberOfPeopleSuggested = resultLimit;
    v2->_constrainMechanisms = 0;

    constrainBundleIds = v2->_constrainBundleIds;
    v2->_constrainBundleIds = 0;

    constrainAccounts = v2->_constrainAccounts;
    v2->_constrainAccounts = 0;

    constrainDomainIdentifiers = v2->_constrainDomainIdentifiers;
    v2->_constrainDomainIdentifiers = 0;

    *&v2->_useFuture = 65793;
    v2->_constrainMaxRecipientCount = [v3 constrainMaxRecipientCount];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setMaxNumberOfPeopleSuggested:{-[_CDPeopleSuggesterSettings maxNumberOfPeopleSuggested](self, "maxNumberOfPeopleSuggested")}];
    constrainMechanisms = [(_CDPeopleSuggesterSettings *)self constrainMechanisms];
    [v4 setConstrainMechanisms:constrainMechanisms];

    constrainBundleIds = [(_CDPeopleSuggesterSettings *)self constrainBundleIds];
    [v4 setConstrainBundleIds:constrainBundleIds];

    constrainAccounts = [(_CDPeopleSuggesterSettings *)self constrainAccounts];
    [v4 setConstrainAccounts:constrainAccounts];

    constrainDomainIdentifiers = [(_CDPeopleSuggesterSettings *)self constrainDomainIdentifiers];
    [v4 setConstrainDomainIdentifiers:constrainDomainIdentifiers];

    constrainIdentifiers = [(_CDPeopleSuggesterSettings *)self constrainIdentifiers];
    [v4 setConstrainIdentifiers:constrainIdentifiers];

    constrainPersonIds = [(_CDPeopleSuggesterSettings *)self constrainPersonIds];
    [v4 setConstrainPersonIds:constrainPersonIds];

    constrainPersonIdType = [(_CDPeopleSuggesterSettings *)self constrainPersonIdType];
    [v4 setConstrainPersonIdType:constrainPersonIdType];

    [v4 setConstrainMaxRecipientCount:{-[_CDPeopleSuggesterSettings constrainMaxRecipientCount](self, "constrainMaxRecipientCount")}];
    [v4 setUseFuture:{-[_CDPeopleSuggesterSettings useFuture](self, "useFuture")}];
    [v4 setAggregateByIdentifier:{-[_CDPeopleSuggesterSettings aggregateByIdentifier](self, "aggregateByIdentifier")}];
    [v4 setRequireOutgoingInteraction:{-[_CDPeopleSuggesterSettings requireOutgoingInteraction](self, "requireOutgoingInteraction")}];
    [v4 setUseTitleToContrainKeywords:{-[_CDPeopleSuggesterSettings useTitleToContrainKeywords](self, "useTitleToContrainKeywords")}];
    ignoreContactIdentifiers = [(_CDPeopleSuggesterSettings *)self ignoreContactIdentifiers];
    [v4 setIgnoreContactIdentifiers:ignoreContactIdentifiers];

    [v4 setInferActiveInteractions:{-[_CDPeopleSuggesterSettings inferActiveInteractions](self, "inferActiveInteractions")}];
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"Settings {\n"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDPeopleSuggesterSettings maxNumberOfPeopleSuggested](self, "maxNumberOfPeopleSuggested")}];
  [v3 appendFormat:@"    maxNumberOfPeopleSuggested: %@\n", v4];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDPeopleSuggesterSettings useFuture](self, "useFuture")}];
  [v3 appendFormat:@"                     useFuture: %@\n", v5];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDPeopleSuggesterSettings aggregateByIdentifier](self, "aggregateByIdentifier")}];
  [v3 appendFormat:@"         aggregateByIdentifier: %@\n", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDPeopleSuggesterSettings requireOutgoingInteraction](self, "requireOutgoingInteraction")}];
  [v3 appendFormat:@"    requireOutgoingInteraction: %@\n", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDPeopleSuggesterSettings useTitleToContrainKeywords](self, "useTitleToContrainKeywords")}];
  [v3 appendFormat:@"    useTitleToContrainKeywords: %@\n", v8];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_CDPeopleSuggesterSettings inferActiveInteractions](self, "inferActiveInteractions")}];
  [v3 appendFormat:@"       inferActiveInteractions: %@\n", v9];

  constrainMechanisms = [(_CDPeopleSuggesterSettings *)self constrainMechanisms];
  [v3 appendFormat:@"           constrainMechanisms: %@\n", constrainMechanisms];

  constrainBundleIds = [(_CDPeopleSuggesterSettings *)self constrainBundleIds];
  [v3 appendFormat:@"            constrainBundleIds: %@\n", constrainBundleIds];

  constrainAccounts = [(_CDPeopleSuggesterSettings *)self constrainAccounts];
  [v3 appendFormat:@"             constrainAccounts: %@\n", constrainAccounts];

  constrainDomainIdentifiers = [(_CDPeopleSuggesterSettings *)self constrainDomainIdentifiers];
  [v3 appendFormat:@"    constrainDomainIdentifiers: %@\n", constrainDomainIdentifiers];

  constrainIdentifiers = [(_CDPeopleSuggesterSettings *)self constrainIdentifiers];
  [v3 appendFormat:@"          constrainIdentifiers: %@\n", constrainIdentifiers];

  constrainPersonIds = [(_CDPeopleSuggesterSettings *)self constrainPersonIds];
  [v3 appendFormat:@"            constrainPersonIds: %@\n", constrainPersonIds];

  constrainPersonIdType = [(_CDPeopleSuggesterSettings *)self constrainPersonIdType];
  [v3 appendFormat:@"         constrainPersonIdType: %@\n", constrainPersonIdType];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDPeopleSuggesterSettings constrainMaxRecipientCount](self, "constrainMaxRecipientCount")}];
  [v3 appendFormat:@"    constrainMaxRecipientCount: %@\n", v17];

  ignoreContactIdentifiers = [(_CDPeopleSuggesterSettings *)self ignoreContactIdentifiers];
  [v3 appendFormat:@"      ignoreContactIdentifiers: %@\n", ignoreContactIdentifiers];

  [v3 appendFormat:@"}\n"];

  return v3;
}

@end