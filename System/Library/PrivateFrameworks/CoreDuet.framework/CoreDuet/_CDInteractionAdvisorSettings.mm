@interface _CDInteractionAdvisorSettings
+ (id)extractContactIdentifiers:(id)identifiers;
+ (id)interactionAdvisorSettingsDefault;
- (_CDInteractionAdvisorSettings)init;
- (_CDInteractionAdvisorSettings)initWithCoder:(id)coder;
- (id)contactPredicate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)interactionPredicate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDInteractionAdvisorSettings

- (_CDInteractionAdvisorSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v60.receiver = self;
  v60.super_class = _CDInteractionAdvisorSettings;
  v5 = [(_CDInteractionAdvisorSettings *)&v60 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionDate"];
    interactionDate = v5->_interactionDate;
    v5->_interactionDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionTitle"];
    interactionTitle = v5->_interactionTitle;
    v5->_interactionTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionLocationUUID"];
    interactionLocationUUID = v5->_interactionLocationUUID;
    v5->_interactionLocationUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactPrefix"];
    contactPrefix = v5->_contactPrefix;
    v5->_contactPrefix = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consumerIdentifier"];
    consumerIdentifier = v5->_consumerIdentifier;
    v5->_consumerIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callerBundleId"];
    callerBundleId = v5->_callerBundleId;
    v5->_callerBundleId = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"constrainDirections"];
    constrainDirections = v5->_constrainDirections;
    v5->_constrainDirections = v21;

    v23 = [coderCopy decodeObjectOfClasses:v20 forKey:@"constrainMechanisms"];
    constrainMechanisms = v5->_constrainMechanisms;
    v5->_constrainMechanisms = v23;

    v25 = [coderCopy decodeObjectOfClasses:v20 forKey:@"constrainPersonIdType"];
    constrainPersonIdType = v5->_constrainPersonIdType;
    v5->_constrainPersonIdType = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"constrainSenders"];
    constrainSenders = v5->_constrainSenders;
    v5->_constrainSenders = v31;

    v33 = [coderCopy decodeObjectOfClasses:v30 forKey:@"constrainRecipients"];
    constrainRecipients = v5->_constrainRecipients;
    v5->_constrainRecipients = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainPersonIds"];
    constrainPersonIds = v5->_constrainPersonIds;
    v5->_constrainPersonIds = v38;

    v40 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainKeywords"];
    constrainKeywords = v5->_constrainKeywords;
    v5->_constrainKeywords = v40;

    v42 = [coderCopy decodeObjectOfClasses:v37 forKey:@"seedIdentifiers"];
    seedIdentifiers = v5->_seedIdentifiers;
    v5->_seedIdentifiers = v42;

    v44 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainBundleIds"];
    constrainBundleIds = v5->_constrainBundleIds;
    v5->_constrainBundleIds = v44;

    v46 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainAccounts"];
    constrainAccounts = v5->_constrainAccounts;
    v5->_constrainAccounts = v46;

    v48 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainLocationUUIDs"];
    constrainLocationUUIDs = v5->_constrainLocationUUIDs;
    v5->_constrainLocationUUIDs = v48;

    v50 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainDomainIdentifiers"];
    constrainDomainIdentifiers = v5->_constrainDomainIdentifiers;
    v5->_constrainDomainIdentifiers = v50;

    v52 = [coderCopy decodeObjectOfClasses:v37 forKey:@"ignoreInteractionUUIDs"];
    ignoreInteractionUUIDs = v5->_ignoreInteractionUUIDs;
    v5->_ignoreInteractionUUIDs = v52;

    v54 = [coderCopy decodeObjectOfClasses:v37 forKey:@"ignoreContactIdentifiers"];
    ignoreContactIdentifiers = v5->_ignoreContactIdentifiers;
    v5->_ignoreContactIdentifiers = v54;

    v56 = [coderCopy decodeObjectOfClasses:v37 forKey:@"constrainIdentifiers"];
    constrainIdentifiers = v5->_constrainIdentifiers;
    v5->_constrainIdentifiers = v56;

    v5->_resultLimit = [coderCopy decodeInt64ForKey:@"resultLimit"];
    v5->_useFuture = [coderCopy decodeBoolForKey:@"useFutureInteractions"];
    v5->_aggregateByIdentifier = [coderCopy decodeBoolForKey:@"aggregateByIdentifier"];
    v5->_requireOutgoingInteraction = [coderCopy decodeBoolForKey:@"requireOutgoingInteraction"];
    v5->_constrainMaxRecipientCount = [coderCopy decodeInt64ForKey:@"constrainMaxRecipientCount"];
    v58 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  interactionDate = self->_interactionDate;
  coderCopy = coder;
  [coderCopy encodeObject:interactionDate forKey:@"interactionDate"];
  [coderCopy encodeObject:self->_interactionTitle forKey:@"interactionTitle"];
  [coderCopy encodeObject:self->_interactionLocationUUID forKey:@"interactionLocationUUID"];
  [coderCopy encodeObject:self->_contactPrefix forKey:@"contactPrefix"];
  [coderCopy encodeObject:self->_seedIdentifiers forKey:@"seedIdentifiers"];
  [coderCopy encodeObject:self->_constrainDirections forKey:@"constrainDirections"];
  [coderCopy encodeObject:self->_constrainMechanisms forKey:@"constrainMechanisms"];
  [coderCopy encodeObject:self->_constrainBundleIds forKey:@"constrainBundleIds"];
  [coderCopy encodeObject:self->_constrainAccounts forKey:@"constrainAccounts"];
  [coderCopy encodeObject:self->_constrainDomainIdentifiers forKey:@"constrainDomainIdentifiers"];
  [coderCopy encodeObject:self->_constrainSenders forKey:@"constrainSenders"];
  [coderCopy encodeObject:self->_constrainRecipients forKey:@"constrainRecipients"];
  [coderCopy encodeObject:self->_constrainKeywords forKey:@"constrainKeywords"];
  [coderCopy encodeObject:self->_constrainLocationUUIDs forKey:@"constrainLocationUUIDs"];
  [coderCopy encodeObject:self->_constrainIdentifiers forKey:@"constrainIdentifiers"];
  [coderCopy encodeObject:self->_constrainPersonIds forKey:@"constrainPersonIds"];
  [coderCopy encodeObject:self->_constrainPersonIdType forKey:@"constrainPersonIdType"];
  [coderCopy encodeInt64:self->_resultLimit forKey:@"resultLimit"];
  [coderCopy encodeObject:self->_ignoreContactIdentifiers forKey:@"ignoreContactIdentifiers"];
  [coderCopy encodeObject:self->_ignoreInteractionUUIDs forKey:@"ignoreInteractionUUIDs"];
  [coderCopy encodeBool:self->_useFuture forKey:@"useFutureInteractions"];
  [coderCopy encodeBool:self->_aggregateByIdentifier forKey:@"aggregateByIdentifier"];
  [coderCopy encodeBool:self->_requireOutgoingInteraction forKey:@"requireOutgoingInteraction"];
  [coderCopy encodeInt64:self->_constrainMaxRecipientCount forKey:@"constrainMaxRecipientCount"];
  [coderCopy encodeObject:self->_consumerIdentifier forKey:@"consumerIdentifier"];
  [coderCopy encodeObject:self->_callerBundleId forKey:@"callerBundleId"];
}

+ (id)interactionAdvisorSettingsDefault
{
  v2 = objc_alloc_init(_CDInteractionAdvisorSettings);

  return v2;
}

- (_CDInteractionAdvisorSettings)init
{
  v10.receiver = self;
  v10.super_class = _CDInteractionAdvisorSettings;
  v2 = [(_CDInteractionAdvisorSettings *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultLimit = 30;
    v2->_useFuture = 0;
    date = [MEMORY[0x1E695DF00] date];
    interactionDate = v3->_interactionDate;
    v3->_interactionDate = date;

    v3->_constrainMaxRecipientCount = -1;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    callerBundleId = v3->_callerBundleId;
    v3->_callerBundleId = bundleIdentifier;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  interactionDate = [(_CDInteractionAdvisorSettings *)self interactionDate];
  [v4 setInteractionDate:interactionDate];

  interactionTitle = [(_CDInteractionAdvisorSettings *)self interactionTitle];
  [v4 setInteractionTitle:interactionTitle];

  interactionLocationUUID = [(_CDInteractionAdvisorSettings *)self interactionLocationUUID];
  [v4 setInteractionLocationUUID:interactionLocationUUID];

  contactPrefix = [(_CDInteractionAdvisorSettings *)self contactPrefix];
  [v4 setContactPrefix:contactPrefix];

  seedIdentifiers = [(_CDInteractionAdvisorSettings *)self seedIdentifiers];
  [v4 setSeedIdentifiers:seedIdentifiers];

  constrainDirections = [(_CDInteractionAdvisorSettings *)self constrainDirections];
  [v4 setConstrainDirections:constrainDirections];

  constrainMechanisms = [(_CDInteractionAdvisorSettings *)self constrainMechanisms];
  [v4 setConstrainMechanisms:constrainMechanisms];

  constrainBundleIds = [(_CDInteractionAdvisorSettings *)self constrainBundleIds];
  [v4 setConstrainBundleIds:constrainBundleIds];

  constrainAccounts = [(_CDInteractionAdvisorSettings *)self constrainAccounts];
  [v4 setConstrainAccounts:constrainAccounts];

  constrainDomainIdentifiers = [(_CDInteractionAdvisorSettings *)self constrainDomainIdentifiers];
  [v4 setConstrainDomainIdentifiers:constrainDomainIdentifiers];

  constrainSenders = [(_CDInteractionAdvisorSettings *)self constrainSenders];
  [v4 setConstrainSenders:constrainSenders];

  constrainRecipients = [(_CDInteractionAdvisorSettings *)self constrainRecipients];
  [v4 setConstrainRecipients:constrainRecipients];

  constrainKeywords = [(_CDInteractionAdvisorSettings *)self constrainKeywords];
  [v4 setConstrainKeywords:constrainKeywords];

  constrainLocationUUIDs = [(_CDInteractionAdvisorSettings *)self constrainLocationUUIDs];
  [v4 setConstrainLocationUUIDs:constrainLocationUUIDs];

  [v4 setResultLimit:{-[_CDInteractionAdvisorSettings resultLimit](self, "resultLimit")}];
  constrainIdentifiers = [(_CDInteractionAdvisorSettings *)self constrainIdentifiers];
  [v4 setConstrainIdentifiers:constrainIdentifiers];

  constrainPersonIds = [(_CDInteractionAdvisorSettings *)self constrainPersonIds];
  [v4 setConstrainPersonIds:constrainPersonIds];

  constrainPersonIdType = [(_CDInteractionAdvisorSettings *)self constrainPersonIdType];
  [v4 setConstrainPersonIdType:constrainPersonIdType];

  ignoreContactIdentifiers = [(_CDInteractionAdvisorSettings *)self ignoreContactIdentifiers];
  [v4 setIgnoreContactIdentifiers:ignoreContactIdentifiers];

  ignoreInteractionUUIDs = [(_CDInteractionAdvisorSettings *)self ignoreInteractionUUIDs];
  [v4 setIgnoreInteractionUUIDs:ignoreInteractionUUIDs];

  [v4 setUseFuture:{-[_CDInteractionAdvisorSettings useFuture](self, "useFuture")}];
  [v4 setAggregateByIdentifier:{-[_CDInteractionAdvisorSettings aggregateByIdentifier](self, "aggregateByIdentifier")}];
  [v4 setRequireOutgoingInteraction:{-[_CDInteractionAdvisorSettings requireOutgoingInteraction](self, "requireOutgoingInteraction")}];
  [v4 setConstrainMaxRecipientCount:{-[_CDInteractionAdvisorSettings constrainMaxRecipientCount](self, "constrainMaxRecipientCount")}];
  consumerIdentifier = [(_CDInteractionAdvisorSettings *)self consumerIdentifier];
  [v4 setConsumerIdentifier:consumerIdentifier];

  callerBundleId = [(_CDInteractionAdvisorSettings *)self callerBundleId];
  [v4 setCallerBundleId:callerBundleId];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"Settings { \n"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionAdvisorSettings resultLimit](self, "resultLimit")}];
  [v3 appendFormat:@"            resultLimit: %@\n", v4];

  interactionPredicate = [(_CDInteractionAdvisorSettings *)self interactionPredicate];
  [v3 appendFormat:@"              predicate: %@\n", interactionPredicate];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_useFuture];
  [v3 appendFormat:@"              useFuture: %@\n", v6];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_aggregateByIdentifier];
  [v3 appendFormat:@"  aggregateByIdentifier: %@\n", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_requireOutgoingInteraction];
  [v3 appendFormat:@"  requireOutInteraction: %@\n", v8];

  if (self->_interactionDate)
  {
    [v3 appendFormat:@"                   date: %@\n", self->_interactionDate];
  }

  if (self->_interactionTitle)
  {
    [v3 appendFormat:@"                  title: %@\n", self->_interactionTitle];
  }

  if (self->_seedIdentifiers)
  {
    [v3 appendFormat:@"        seedIdentifiers: %@\n", self->_seedIdentifiers];
  }

  if (self->_interactionLocationUUID)
  {
    [v3 appendFormat:@"           locationUUID: %@\n", self->_interactionLocationUUID];
  }

  if (self->_constrainBundleIds)
  {
    [v3 appendFormat:@"              bundleIds: %@\n", self->_constrainBundleIds];
  }

  if (self->_contactPrefix)
  {
    [v3 appendFormat:@"          contactPrefix: %@\n", self->_contactPrefix];
  }

  if (self->_constrainSenders)
  {
    [v3 appendFormat:@"       constrainSenders: %@\n", self->_constrainSenders];
  }

  if (self->_constrainRecipients)
  {
    [v3 appendFormat:@"    constrainRecipients: %@\n", self->_constrainRecipients];
  }

  if (self->_constrainIdentifiers)
  {
    [v3 appendFormat:@"   constrainIdentifiers: %@\n", self->_constrainIdentifiers];
  }

  if (self->_constrainPersonIds)
  {
    [v3 appendFormat:@"     constrainPersonIds: %@\n", self->_constrainPersonIds];
  }

  if (self->_constrainPersonIdType)
  {
    [v3 appendFormat:@"  constrainPersonIdType: %@\n", self->_constrainPersonIdType];
  }

  if (self->_ignoreContactIdentifiers)
  {
    [v3 appendFormat:@"     ignoreIdentifiers: %@\n", self->_ignoreContactIdentifiers];
  }

  if (self->_constrainMaxRecipientCount != -1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 appendFormat:@"     maxRecipientCount: %@\n", v9];
  }

  if (self->_consumerIdentifier)
  {
    [v3 appendFormat:@"    consumerIdentifier: %@\n", self->_consumerIdentifier];
  }

  if (self->_callerBundleId)
  {
    [v3 appendFormat:@"        callerBundleId: %@\n", self->_callerBundleId];
  }

  [v3 appendFormat:@" }\n"];

  return v3;
}

+ (id)extractContactIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier = [v10 identifier];
          [v4 addObject:identifier];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:{v10, v14}];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)interactionPredicate
{
  v70 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  constrainMechanisms = self->_constrainMechanisms;
  if (constrainMechanisms && [(NSSet *)constrainMechanisms count])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", self->_constrainMechanisms];
    [array addObject:v5];
  }

  constrainDirections = self->_constrainDirections;
  if (constrainDirections && [(NSSet *)constrainDirections count])
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", self->_constrainDirections];
    [array addObject:v7];
  }

  constrainBundleIds = self->_constrainBundleIds;
  if (constrainBundleIds && [(NSSet *)constrainBundleIds count])
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", self->_constrainBundleIds];
    [array addObject:v9];
  }

  constrainAccounts = self->_constrainAccounts;
  if (constrainAccounts && [(NSSet *)constrainAccounts count])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(account IN %@)", self->_constrainAccounts];
    [array addObject:v11];
  }

  constrainDomainIdentifiers = self->_constrainDomainIdentifiers;
  v13 = 0x1E696A000;
  if (constrainDomainIdentifiers && [(NSSet *)constrainDomainIdentifiers count])
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSSet count](self->_constrainDomainIdentifiers, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v15 = self->_constrainDomainIdentifiers;
    v16 = [(NSSet *)v15 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v63;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier BEGINSWITH %@)", *(*(&v62 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [(NSSet *)v15 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v17);
    }

    v13 = 0x1E696A000uLL;
    v21 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v14];
    [array addObject:v21];
  }

  constrainLocationUUIDs = self->_constrainLocationUUIDs;
  if (constrainLocationUUIDs && [(NSSet *)constrainLocationUUIDs count])
  {
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(locationUUID IN %@)", self->_constrainLocationUUIDs];
    [array addObject:v23];
  }

  constrainSenders = self->_constrainSenders;
  if (constrainSenders && [(NSSet *)constrainSenders count])
  {
    v25 = MEMORY[0x1E696AE18];
    v26 = [_CDInteractionAdvisorSettings extractContactIdentifiers:self->_constrainSenders];
    v27 = [v25 predicateWithFormat:@"(sender.identifier IN %@)", v26];
    [array addObject:v27];
  }

  constrainRecipients = self->_constrainRecipients;
  if (constrainRecipients && [(NSSet *)constrainRecipients count])
  {
    v29 = MEMORY[0x1E696AE18];
    v30 = [_CDInteractionAdvisorSettings extractContactIdentifiers:self->_constrainRecipients];
    v31 = [v29 predicateWithFormat:@"(ANY recipients.identifier IN %@)", v30];
    [array addObject:v31];
  }

  if ([(NSSet *)self->_constrainPersonIds count])
  {
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(sender.personId IN %@)", self->_constrainPersonIds];
    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ANY recipients.personId IN %@)", self->_constrainPersonIds];
    v34 = *(v13 + 2856);
    v68[0] = v32;
    v68[1] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    v36 = [v34 orPredicateWithSubpredicates:v35];
    [array addObject:v36];
  }

  if ([(NSSet *)self->_constrainPersonIdType count])
  {
    v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(sender.personIdType IN %@)", self->_constrainPersonIdType];
    v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ANY recipients.personIdType IN %@)", self->_constrainPersonIdType];
    v39 = *(v13 + 2856);
    v67[0] = v37;
    v67[1] = v38;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v41 = [v39 orPredicateWithSubpredicates:v40];
    [array addObject:v41];
  }

  constrainKeywords = self->_constrainKeywords;
  if (constrainKeywords && [(NSSet *)constrainKeywords count])
  {
    v43 = MEMORY[0x1E696AE18];
    allObjects = [(NSSet *)self->_constrainKeywords allObjects];
    v45 = [v43 predicateWithFormat:@"(ANY keywords.keyword IN %@)", allObjects];
    [array addObject:v45];
  }

  ignoreInteractionUUIDs = self->_ignoreInteractionUUIDs;
  if (ignoreInteractionUUIDs && [(NSSet *)ignoreInteractionUUIDs count])
  {
    v47 = MEMORY[0x1E696AE18];
    allObjects2 = [(NSSet *)self->_ignoreInteractionUUIDs allObjects];
    v49 = [v47 predicateWithFormat:@"(NOT (uuid IN %@))", allObjects2];
    [array addObject:v49];
  }

  if (self->_constrainMaxRecipientCount >= 1)
  {
    v50 = MEMORY[0x1E696AE18];
    v51 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v52 = [v50 predicateWithFormat:@"(recipientCount != nil AND recipientCount <= %@)", v51];

    v53 = MEMORY[0x1E696AE18];
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:self->_constrainMaxRecipientCount];
    v55 = [v53 predicateWithFormat:@"(recipientCount == nil AND recipients.@count <= %@)", v54];

    v56 = *(v13 + 2856);
    v66[0] = v52;
    v66[1] = v55;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v58 = [v56 orPredicateWithSubpredicates:v57];
    [array addObject:v58];
  }

  if ([array count])
  {
    [*(v13 + 2856) andPredicateWithSubpredicates:array];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v59 = ;

  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)contactPredicate
{
  v12[3] = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_contactPrefix length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", self->_contactPrefix];
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(identifier BEGINSWITH[cd] %@)", self->_contactPrefix];
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(displayName BEGINSWITH[cd] %@)", self->_contactPrefix];
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(displayName CONTAINS[cd] %@)", v3];
    v7 = MEMORY[0x1E696AB28];
    v12[0] = v4;
    v12[1] = v5;
    v12[2] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v9 = [v7 orPredicateWithSubpredicates:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end