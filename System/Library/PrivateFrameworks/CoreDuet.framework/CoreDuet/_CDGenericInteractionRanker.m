@interface _CDGenericInteractionRanker
+ (BOOL)isDateInWeekend:(id)a3;
- (BOOL)canRankContacts;
- (BOOL)contactIsAllowed:(id)a3;
- (_CDGenericInteractionRanker)init;
- (double)rankContact:(id)a3;
- (id)rankInteraction:(id)a3;
@end

@implementation _CDGenericInteractionRanker

- (_CDGenericInteractionRanker)init
{
  v6.receiver = self;
  v6.super_class = _CDGenericInteractionRanker;
  v2 = [(_CDGenericInteractionRanker *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [(_CDGenericInteractionRanker *)v2 setReferenceDate:v3];

    seedContacts = v2->_seedContacts;
    v2->_seedContacts = MEMORY[0x1E695E0F0];

    *&v2->_timeHalfLife = xmmword_19190ECF0;
    *&v2->_timeOfWeekHalfLife = xmmword_19190ED00;
    *&v2->_diffWeekPeriodWeight = xmmword_19190ED10;
    *&v2->_socialWeight = xmmword_19190ED20;
    *&v2->_keywordWeight = xmmword_19190ED30;
    v2->_requireAllSeedContacts = 0;
    v2->_rankAggregationMethod = 0;
    *&v2->_timeOfDayWeight = xmmword_19190ED10;
    *&v2->_c = xmmword_19190ED40;
  }

  return v2;
}

+ (BOOL)isDateInWeekend:(id)a3
{
  v3 = isDateInWeekend__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[_CDGenericInteractionRanker isDateInWeekend:];
  }

  v5 = [isDateInWeekend__calendar isDateInWeekend:v4];

  return v5;
}

- (id)rankInteraction:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v4 endDate];

  if (v6)
  {
    v7 = [v4 endDate];
    v8 = [v5 laterDate:v7];

    v5 = v8;
  }

  [(NSDate *)self->_referenceDate timeIntervalSinceDate:v5];
  v10 = v9;
  v11 = fmod(v9, 86400.0);
  if (v11 >= 86400.0 - v11)
  {
    v12 = 86400.0 - v11;
  }

  else
  {
    v12 = v11;
  }

  v13 = fmod(v10, 604800.0);
  if (v13 >= 604800.0 - v13)
  {
    v14 = 604800.0 - v13;
  }

  else
  {
    v14 = v13;
  }

  timeWeight = self->_timeWeight;
  v16 = v10 / self->_timeHalfLife;
  v17 = exp(-(v16 * v16));
  timeOfDayWeight = self->_timeOfDayWeight;
  v18 = v12 / self->_timeOfDayHalfLife;
  v69 = exp(-(v18 * v18));
  timeOfWeekWeight = self->_timeOfWeekWeight;
  v19 = v14 / self->_timeOfWeekHalfLife;
  v71 = exp(-(v19 * v19));
  v20 = 1.0;
  outgoingWeight = 1.0;
  if ([v4 direction])
  {
    outgoingWeight = self->_outgoingWeight;
  }

  if (self->_sameWeekPeriodWeight != self->_diffWeekPeriodWeight)
  {
    v22 = [objc_opt_class() isDateInWeekend:self->_referenceDate];
    v23 = [objc_opt_class() isDateInWeekend:v5];
    v24 = 136;
    if (v22 != v23)
    {
      v24 = 144;
    }

    v20 = *(&self->super.isa + v24);
  }

  seedContacts = self->_seedContacts;
  locationWeight = 1.0;
  v27 = 1.0;
  if (seedContacts && [(NSArray *)seedContacts count])
  {
    v66 = self;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v28 = self->_seedContacts;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v32 = *v78;
      while (1)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v78 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v77 + 1) + 8 * i);
          v35 = [v4 sender];
          if ([v35 mayRepresentSamePersonAs:v34])
          {
          }

          else
          {
            v36 = [v4 recipients];
            v37 = [_CDInteractionAdvisorUtils contact:v34 mayRepresentTheSamePersonAsOneOf:v36];

            if (!v37)
            {
              continue;
            }
          }

          ++v31;
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (!v30)
        {
          goto LABEL_30;
        }
      }
    }

    v31 = 0;
LABEL_30:

    self = v66;
    if (v66->_requireAllSeedContacts && [(NSArray *)v66->_seedContacts count]> v31)
    {
      v38 = 0;
      goto LABEL_67;
    }

    v27 = v66->_socialWeight * v31;
  }

  v67 = outgoingWeight;
  v68 = v12;
  if (self->_referenceLocationUUID && ([v4 locationUUID], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = v39;
    v41 = [v4 locationUUID];
    v42 = [v41 isEqualToString:self->_referenceLocationUUID];

    if (v42)
    {
      locationWeight = self->_locationWeight;
      v42 = 1;
    }
  }

  else
  {
    v42 = 0;
  }

  referenceKeywords = self->_referenceKeywords;
  v44 = 1.0;
  if (referenceKeywords && -[NSSet count](referenceKeywords, "count") && ([v4 keywords], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "count"), v45, v46))
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v47 = [v4 keywords];
    v48 = [v47 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = v20;
      v51 = 0;
      v52 = *v74;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v74 != v52)
          {
            objc_enumerationMutation(v47);
          }

          v51 += [(NSSet *)self->_referenceKeywords containsObject:*(*(&v73 + 1) + 8 * j), v66];
        }

        v49 = [v47 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v49);

      if (v51)
      {
        v54 = 0;
        v44 = self->_keywordWeight * v51;
        goto LABEL_53;
      }
    }

    else
    {
      v50 = v20;
    }
  }

  else
  {
    v50 = v20;
  }

  v54 = 1;
LABEL_53:
  v55 = timeWeight * v17;
  v56 = timeOfDayWeight * v69;
  v57 = locationWeight * v44;
  c = self->_c;
  v59 = [MEMORY[0x1E695DFA8] set];
  v60 = v59;
  if (fabs(v10) <= 7200.0 && v55 > 0.0)
  {
    [v59 addObject:&unk_1F05EE8E0];
  }

  v61 = v27 * v57;
  if (v68 <= 7200.0 && v56 > 0.0)
  {
    [v60 addObject:{&unk_1F05EE8F8, v68}];
  }

  v62 = self->_seedContacts;
  if (v62 && [(NSArray *)v62 count])
  {
    [v60 addObject:&unk_1F05EE910];
  }

  v63 = v55 + v56 + timeOfWeekWeight * v71 + c;
  if (v42)
  {
    [v60 addObject:&unk_1F05EE928];
  }

  if ((v54 & 1) == 0)
  {
    [v60 addObject:&unk_1F05EE940];
  }

  v38 = objc_opt_new();
  [v38 setScore:v63 * (v50 * (v67 * v61))];
  [v38 setReasons:v60];

LABEL_67:
  v64 = *MEMORY[0x1E69E9840];

  return v38;
}

- (BOOL)canRankContacts
{
  referenceKeywords = self->_referenceKeywords;
  if (referenceKeywords && [(NSSet *)referenceKeywords count])
  {
    LOBYTE(contactPrefix) = 1;
  }

  else
  {
    contactPrefix = self->_contactPrefix;
    if (contactPrefix)
    {
      LOBYTE(contactPrefix) = [(NSString *)contactPrefix length]!= 0;
    }
  }

  return contactPrefix;
}

- (double)rankContact:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  contactPrefix = self->_contactPrefix;
  if (!contactPrefix || !-[NSString length](contactPrefix, "length") || (v6 = 0.0, [v4 mayContainPrefix:self->_contactPrefix]))
  {
    v6 = 1.0;
    if (self->_referenceKeywords)
    {
      v7 = [v4 displayName];

      if (v7)
      {
        v8 = [v4 displayName];
        v9 = [v8 lowercaseString];
        v10 = [v9 componentsSeparatedByString:@" "];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v20;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v14 += [(NSSet *)self->_referenceKeywords containsObject:*(*(&v19 + 1) + 8 * i), v19];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v13);

          if (v14 < 1)
          {
            v6 = 1.0;
          }

          else
          {
            v6 = self->_contactNameKeywordMatchWeight * v14;
          }
        }

        else
        {
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)contactIsAllowed:(id)a3
{
  v4 = a3;
  v5 = v4;
  allowedPersonIdType = self->_allowedPersonIdType;
  if (allowedPersonIdType)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "personIdType")}];
    v8 = [(NSSet *)allowedPersonIdType containsObject:v7];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  allowedIdentifiers = self->_allowedIdentifiers;
  if (allowedIdentifiers && ([v5 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSSet containsObject:](allowedIdentifiers, "containsObject:", v10), v10, !v11))
  {
LABEL_7:
    v14 = 0;
  }

  else
  {
    allowedPersonIds = self->_allowedPersonIds;
    if (allowedPersonIds)
    {
      v13 = [v5 personId];
      v14 = [(NSSet *)allowedPersonIds containsObject:v13];
    }

    else
    {
      v14 = 1;
    }
  }

  return v14 & 1;
}

@end