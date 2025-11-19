@interface _CDInteractionAdvisorSettings
+ (id)extractContactIdentifiers:(id)a3;
+ (id)interactionAdvisorSettingsDefault;
- (_CDInteractionAdvisorSettings)init;
- (_CDInteractionAdvisorSettings)initWithCoder:(id)a3;
- (id)contactPredicate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)interactionPredicate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CDInteractionAdvisorSettings

- (_CDInteractionAdvisorSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = _CDInteractionAdvisorSettings;
  v5 = [(_CDInteractionAdvisorSettings *)&v60 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionDate"];
    interactionDate = v5->_interactionDate;
    v5->_interactionDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionTitle"];
    interactionTitle = v5->_interactionTitle;
    v5->_interactionTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionLocationUUID"];
    interactionLocationUUID = v5->_interactionLocationUUID;
    v5->_interactionLocationUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactPrefix"];
    contactPrefix = v5->_contactPrefix;
    v5->_contactPrefix = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"consumerIdentifier"];
    consumerIdentifier = v5->_consumerIdentifier;
    v5->_consumerIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callerBundleId"];
    callerBundleId = v5->_callerBundleId;
    v5->_callerBundleId = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"constrainDirections"];
    constrainDirections = v5->_constrainDirections;
    v5->_constrainDirections = v21;

    v23 = [v4 decodeObjectOfClasses:v20 forKey:@"constrainMechanisms"];
    constrainMechanisms = v5->_constrainMechanisms;
    v5->_constrainMechanisms = v23;

    v25 = [v4 decodeObjectOfClasses:v20 forKey:@"constrainPersonIdType"];
    constrainPersonIdType = v5->_constrainPersonIdType;
    v5->_constrainPersonIdType = v25;

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"constrainSenders"];
    constrainSenders = v5->_constrainSenders;
    v5->_constrainSenders = v31;

    v33 = [v4 decodeObjectOfClasses:v30 forKey:@"constrainRecipients"];
    constrainRecipients = v5->_constrainRecipients;
    v5->_constrainRecipients = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainPersonIds"];
    constrainPersonIds = v5->_constrainPersonIds;
    v5->_constrainPersonIds = v38;

    v40 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainKeywords"];
    constrainKeywords = v5->_constrainKeywords;
    v5->_constrainKeywords = v40;

    v42 = [v4 decodeObjectOfClasses:v37 forKey:@"seedIdentifiers"];
    seedIdentifiers = v5->_seedIdentifiers;
    v5->_seedIdentifiers = v42;

    v44 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainBundleIds"];
    constrainBundleIds = v5->_constrainBundleIds;
    v5->_constrainBundleIds = v44;

    v46 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainAccounts"];
    constrainAccounts = v5->_constrainAccounts;
    v5->_constrainAccounts = v46;

    v48 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainLocationUUIDs"];
    constrainLocationUUIDs = v5->_constrainLocationUUIDs;
    v5->_constrainLocationUUIDs = v48;

    v50 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainDomainIdentifiers"];
    constrainDomainIdentifiers = v5->_constrainDomainIdentifiers;
    v5->_constrainDomainIdentifiers = v50;

    v52 = [v4 decodeObjectOfClasses:v37 forKey:@"ignoreInteractionUUIDs"];
    ignoreInteractionUUIDs = v5->_ignoreInteractionUUIDs;
    v5->_ignoreInteractionUUIDs = v52;

    v54 = [v4 decodeObjectOfClasses:v37 forKey:@"ignoreContactIdentifiers"];
    ignoreContactIdentifiers = v5->_ignoreContactIdentifiers;
    v5->_ignoreContactIdentifiers = v54;

    v56 = [v4 decodeObjectOfClasses:v37 forKey:@"constrainIdentifiers"];
    constrainIdentifiers = v5->_constrainIdentifiers;
    v5->_constrainIdentifiers = v56;

    v5->_resultLimit = [v4 decodeInt64ForKey:@"resultLimit"];
    v5->_useFuture = [v4 decodeBoolForKey:@"useFutureInteractions"];
    v5->_aggregateByIdentifier = [v4 decodeBoolForKey:@"aggregateByIdentifier"];
    v5->_requireOutgoingInteraction = [v4 decodeBoolForKey:@"requireOutgoingInteraction"];
    v5->_constrainMaxRecipientCount = [v4 decodeInt64ForKey:@"constrainMaxRecipientCount"];
    v58 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  interactionDate = self->_interactionDate;
  v5 = a3;
  [v5 encodeObject:interactionDate forKey:@"interactionDate"];
  [v5 encodeObject:self->_interactionTitle forKey:@"interactionTitle"];
  [v5 encodeObject:self->_interactionLocationUUID forKey:@"interactionLocationUUID"];
  [v5 encodeObject:self->_contactPrefix forKey:@"contactPrefix"];
  [v5 encodeObject:self->_seedIdentifiers forKey:@"seedIdentifiers"];
  [v5 encodeObject:self->_constrainDirections forKey:@"constrainDirections"];
  [v5 encodeObject:self->_constrainMechanisms forKey:@"constrainMechanisms"];
  [v5 encodeObject:self->_constrainBundleIds forKey:@"constrainBundleIds"];
  [v5 encodeObject:self->_constrainAccounts forKey:@"constrainAccounts"];
  [v5 encodeObject:self->_constrainDomainIdentifiers forKey:@"constrainDomainIdentifiers"];
  [v5 encodeObject:self->_constrainSenders forKey:@"constrainSenders"];
  [v5 encodeObject:self->_constrainRecipients forKey:@"constrainRecipients"];
  [v5 encodeObject:self->_constrainKeywords forKey:@"constrainKeywords"];
  [v5 encodeObject:self->_constrainLocationUUIDs forKey:@"constrainLocationUUIDs"];
  [v5 encodeObject:self->_constrainIdentifiers forKey:@"constrainIdentifiers"];
  [v5 encodeObject:self->_constrainPersonIds forKey:@"constrainPersonIds"];
  [v5 encodeObject:self->_constrainPersonIdType forKey:@"constrainPersonIdType"];
  [v5 encodeInt64:self->_resultLimit forKey:@"resultLimit"];
  [v5 encodeObject:self->_ignoreContactIdentifiers forKey:@"ignoreContactIdentifiers"];
  [v5 encodeObject:self->_ignoreInteractionUUIDs forKey:@"ignoreInteractionUUIDs"];
  [v5 encodeBool:self->_useFuture forKey:@"useFutureInteractions"];
  [v5 encodeBool:self->_aggregateByIdentifier forKey:@"aggregateByIdentifier"];
  [v5 encodeBool:self->_requireOutgoingInteraction forKey:@"requireOutgoingInteraction"];
  [v5 encodeInt64:self->_constrainMaxRecipientCount forKey:@"constrainMaxRecipientCount"];
  [v5 encodeObject:self->_consumerIdentifier forKey:@"consumerIdentifier"];
  [v5 encodeObject:self->_callerBundleId forKey:@"callerBundleId"];
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
    v4 = [MEMORY[0x1E695DF00] date];
    interactionDate = v3->_interactionDate;
    v3->_interactionDate = v4;

    v3->_constrainMaxRecipientCount = -1;
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    callerBundleId = v3->_callerBundleId;
    v3->_callerBundleId = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  v5 = [(_CDInteractionAdvisorSettings *)self interactionDate];
  [v4 setInteractionDate:v5];

  v6 = [(_CDInteractionAdvisorSettings *)self interactionTitle];
  [v4 setInteractionTitle:v6];

  v7 = [(_CDInteractionAdvisorSettings *)self interactionLocationUUID];
  [v4 setInteractionLocationUUID:v7];

  v8 = [(_CDInteractionAdvisorSettings *)self contactPrefix];
  [v4 setContactPrefix:v8];

  v9 = [(_CDInteractionAdvisorSettings *)self seedIdentifiers];
  [v4 setSeedIdentifiers:v9];

  v10 = [(_CDInteractionAdvisorSettings *)self constrainDirections];
  [v4 setConstrainDirections:v10];

  v11 = [(_CDInteractionAdvisorSettings *)self constrainMechanisms];
  [v4 setConstrainMechanisms:v11];

  v12 = [(_CDInteractionAdvisorSettings *)self constrainBundleIds];
  [v4 setConstrainBundleIds:v12];

  v13 = [(_CDInteractionAdvisorSettings *)self constrainAccounts];
  [v4 setConstrainAccounts:v13];

  v14 = [(_CDInteractionAdvisorSettings *)self constrainDomainIdentifiers];
  [v4 setConstrainDomainIdentifiers:v14];

  v15 = [(_CDInteractionAdvisorSettings *)self constrainSenders];
  [v4 setConstrainSenders:v15];

  v16 = [(_CDInteractionAdvisorSettings *)self constrainRecipients];
  [v4 setConstrainRecipients:v16];

  v17 = [(_CDInteractionAdvisorSettings *)self constrainKeywords];
  [v4 setConstrainKeywords:v17];

  v18 = [(_CDInteractionAdvisorSettings *)self constrainLocationUUIDs];
  [v4 setConstrainLocationUUIDs:v18];

  [v4 setResultLimit:{-[_CDInteractionAdvisorSettings resultLimit](self, "resultLimit")}];
  v19 = [(_CDInteractionAdvisorSettings *)self constrainIdentifiers];
  [v4 setConstrainIdentifiers:v19];

  v20 = [(_CDInteractionAdvisorSettings *)self constrainPersonIds];
  [v4 setConstrainPersonIds:v20];

  v21 = [(_CDInteractionAdvisorSettings *)self constrainPersonIdType];
  [v4 setConstrainPersonIdType:v21];

  v22 = [(_CDInteractionAdvisorSettings *)self ignoreContactIdentifiers];
  [v4 setIgnoreContactIdentifiers:v22];

  v23 = [(_CDInteractionAdvisorSettings *)self ignoreInteractionUUIDs];
  [v4 setIgnoreInteractionUUIDs:v23];

  [v4 setUseFuture:{-[_CDInteractionAdvisorSettings useFuture](self, "useFuture")}];
  [v4 setAggregateByIdentifier:{-[_CDInteractionAdvisorSettings aggregateByIdentifier](self, "aggregateByIdentifier")}];
  [v4 setRequireOutgoingInteraction:{-[_CDInteractionAdvisorSettings requireOutgoingInteraction](self, "requireOutgoingInteraction")}];
  [v4 setConstrainMaxRecipientCount:{-[_CDInteractionAdvisorSettings constrainMaxRecipientCount](self, "constrainMaxRecipientCount")}];
  v24 = [(_CDInteractionAdvisorSettings *)self consumerIdentifier];
  [v4 setConsumerIdentifier:v24];

  v25 = [(_CDInteractionAdvisorSettings *)self callerBundleId];
  [v4 setCallerBundleId:v25];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"Settings { \n"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionAdvisorSettings resultLimit](self, "resultLimit")}];
  [v3 appendFormat:@"            resultLimit: %@\n", v4];

  v5 = [(_CDInteractionAdvisorSettings *)self interactionPredicate];
  [v3 appendFormat:@"              predicate: %@\n", v5];

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

+ (id)extractContactIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
          v11 = [v10 identifier];
          [v4 addObject:v11];
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
  v3 = [MEMORY[0x1E695DF70] array];
  constrainMechanisms = self->_constrainMechanisms;
  if (constrainMechanisms && [(NSSet *)constrainMechanisms count])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", self->_constrainMechanisms];
    [v3 addObject:v5];
  }

  constrainDirections = self->_constrainDirections;
  if (constrainDirections && [(NSSet *)constrainDirections count])
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", self->_constrainDirections];
    [v3 addObject:v7];
  }

  constrainBundleIds = self->_constrainBundleIds;
  if (constrainBundleIds && [(NSSet *)constrainBundleIds count])
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", self->_constrainBundleIds];
    [v3 addObject:v9];
  }

  constrainAccounts = self->_constrainAccounts;
  if (constrainAccounts && [(NSSet *)constrainAccounts count])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(account IN %@)", self->_constrainAccounts];
    [v3 addObject:v11];
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
    [v3 addObject:v21];
  }

  constrainLocationUUIDs = self->_constrainLocationUUIDs;
  if (constrainLocationUUIDs && [(NSSet *)constrainLocationUUIDs count])
  {
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(locationUUID IN %@)", self->_constrainLocationUUIDs];
    [v3 addObject:v23];
  }

  constrainSenders = self->_constrainSenders;
  if (constrainSenders && [(NSSet *)constrainSenders count])
  {
    v25 = MEMORY[0x1E696AE18];
    v26 = [_CDInteractionAdvisorSettings extractContactIdentifiers:self->_constrainSenders];
    v27 = [v25 predicateWithFormat:@"(sender.identifier IN %@)", v26];
    [v3 addObject:v27];
  }

  constrainRecipients = self->_constrainRecipients;
  if (constrainRecipients && [(NSSet *)constrainRecipients count])
  {
    v29 = MEMORY[0x1E696AE18];
    v30 = [_CDInteractionAdvisorSettings extractContactIdentifiers:self->_constrainRecipients];
    v31 = [v29 predicateWithFormat:@"(ANY recipients.identifier IN %@)", v30];
    [v3 addObject:v31];
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
    [v3 addObject:v36];
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
    [v3 addObject:v41];
  }

  constrainKeywords = self->_constrainKeywords;
  if (constrainKeywords && [(NSSet *)constrainKeywords count])
  {
    v43 = MEMORY[0x1E696AE18];
    v44 = [(NSSet *)self->_constrainKeywords allObjects];
    v45 = [v43 predicateWithFormat:@"(ANY keywords.keyword IN %@)", v44];
    [v3 addObject:v45];
  }

  ignoreInteractionUUIDs = self->_ignoreInteractionUUIDs;
  if (ignoreInteractionUUIDs && [(NSSet *)ignoreInteractionUUIDs count])
  {
    v47 = MEMORY[0x1E696AE18];
    v48 = [(NSSet *)self->_ignoreInteractionUUIDs allObjects];
    v49 = [v47 predicateWithFormat:@"(NOT (uuid IN %@))", v48];
    [v3 addObject:v49];
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
    [v3 addObject:v58];
  }

  if ([v3 count])
  {
    [*(v13 + 2856) andPredicateWithSubpredicates:v3];
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