@interface MRGroupSessionEligibilityStatus
- (BOOL)isEqual:(id)a3;
- (MRGroupSessionEligibilityStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryDescription;
- (id)differenceFrom:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRGroupSessionEligibilityStatus

- (MRGroupSessionEligibilityStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRGroupSessionEligibilityStatus;
  v5 = [(MRGroupSessionEligibilityStatus *)&v9 init];
  if (v5)
  {
    -[MRGroupSessionEligibilityStatus setIsEligibleForHostingGroupSession:](v5, "setIsEligibleForHostingGroupSession:", [v4 decodeBoolForKey:@"ehgs"]);
    -[MRGroupSessionEligibilityStatus setIsEligibleForHostingGroupSessionExcludingAcknowledgements:](v5, "setIsEligibleForHostingGroupSessionExcludingAcknowledgements:", [v4 decodeBoolForKey:@"ehgsea"]);
    -[MRGroupSessionEligibilityStatus setIsEligibleForJoiningGroupSession:](v5, "setIsEligibleForJoiningGroupSession:", [v4 decodeBoolForKey:@"ejgS"]);
    -[MRGroupSessionEligibilityStatus setIsManateeEnabled:](v5, "setIsManateeEnabled:", [v4 decodeBoolForKey:@"mte"]);
    -[MRGroupSessionEligibilityStatus setIdsAccountIsValid:](v5, "setIdsAccountIsValid:", [v4 decodeBoolForKey:@"acv"]);
    -[MRGroupSessionEligibilityStatus setMediaAccountHostingState:](v5, "setMediaAccountHostingState:", [v4 decodeIntegerForKey:@"mhs"]);
    -[MRGroupSessionEligibilityStatus setMediaAccountJoiningState:](v5, "setMediaAccountJoiningState:", [v4 decodeIntegerForKey:@"mjs"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cmus"];
    [(MRGroupSessionEligibilityStatus *)v5 setCurrentMediaUserState:v6];

    v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mus"];
    [(MRGroupSessionEligibilityStatus *)v5 setMediaUserStates:v7];

    -[MRGroupSessionEligibilityStatus setRouteType:](v5, "setRouteType:", [v4 decodeIntegerForKey:@"rt"]);
    -[MRGroupSessionEligibilityStatus setRouteIsValidForHosting:](v5, "setRouteIsValidForHosting:", [v4 decodeBoolForKey:@"rvH"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSession](self forKey:{"isEligibleForHostingGroupSession"), @"ehgs"}];
  [v6 encodeBool:-[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSessionExcludingAcknowledgements](self forKey:{"isEligibleForHostingGroupSessionExcludingAcknowledgements"), @"ehgsea"}];
  [v6 encodeBool:-[MRGroupSessionEligibilityStatus isEligibleForJoiningGroupSession](self forKey:{"isEligibleForJoiningGroupSession"), @"ejgS"}];
  [v6 encodeBool:-[MRGroupSessionEligibilityStatus isManateeEnabled](self forKey:{"isManateeEnabled"), @"mte"}];
  [v6 encodeBool:-[MRGroupSessionEligibilityStatus idsAccountIsValid](self forKey:{"idsAccountIsValid"), @"acv"}];
  [v6 encodeInteger:-[MRGroupSessionEligibilityStatus mediaAccountHostingState](self forKey:{"mediaAccountHostingState"), @"mhs"}];
  [v6 encodeInteger:-[MRGroupSessionEligibilityStatus mediaAccountJoiningState](self forKey:{"mediaAccountJoiningState"), @"mjs"}];
  v4 = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  [v6 encodeObject:v4 forKey:@"cmus"];

  v5 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  [v6 encodeObject:v5 forKey:@"mus"];

  [v6 encodeInteger:-[MRGroupSessionEligibilityStatus routeType](self forKey:{"routeType"), @"rt"}];
  [v6 encodeBool:-[MRGroupSessionEligibilityStatus routeIsValidForHosting](self forKey:{"routeIsValidForHosting"), @"rvH"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MRGroupSessionEligibilityStatus);
  [(MRGroupSessionEligibilityStatus *)v4 setIsEligibleForHostingGroupSession:[(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSession]];
  [(MRGroupSessionEligibilityStatus *)v4 setIsEligibleForHostingGroupSessionExcludingAcknowledgements:[(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSessionExcludingAcknowledgements]];
  [(MRGroupSessionEligibilityStatus *)v4 setIsEligibleForJoiningGroupSession:[(MRGroupSessionEligibilityStatus *)self isEligibleForJoiningGroupSession]];
  [(MRGroupSessionEligibilityStatus *)v4 setIsManateeEnabled:[(MRGroupSessionEligibilityStatus *)self isManateeEnabled]];
  [(MRGroupSessionEligibilityStatus *)v4 setIdsAccountIsValid:[(MRGroupSessionEligibilityStatus *)self idsAccountIsValid]];
  [(MRGroupSessionEligibilityStatus *)v4 setMediaAccountHostingState:[(MRGroupSessionEligibilityStatus *)self mediaAccountHostingState]];
  [(MRGroupSessionEligibilityStatus *)v4 setMediaAccountJoiningState:[(MRGroupSessionEligibilityStatus *)self mediaAccountJoiningState]];
  v5 = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  v6 = [v5 copy];
  [(MRGroupSessionEligibilityStatus *)v4 setCurrentMediaUserState:v6];

  v7 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  v8 = [v7 copy];
  [(MRGroupSessionEligibilityStatus *)v4 setMediaUserStates:v8];

  [(MRGroupSessionEligibilityStatus *)v4 setRouteType:[(MRGroupSessionEligibilityStatus *)self routeType]];
  [(MRGroupSessionEligibilityStatus *)v4 setRouteIsValidForHosting:[(MRGroupSessionEligibilityStatus *)self routeIsValidForHosting]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v20 = 1;
    goto LABEL_19;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSession];
  if (v7 != [(MRGroupSessionEligibilityStatus *)v6 isEligibleForHostingGroupSession])
  {
    goto LABEL_15;
  }

  v8 = [(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSessionExcludingAcknowledgements];
  if (v8 != [(MRGroupSessionEligibilityStatus *)v6 isEligibleForHostingGroupSessionExcludingAcknowledgements])
  {
    goto LABEL_15;
  }

  v9 = [(MRGroupSessionEligibilityStatus *)self isEligibleForJoiningGroupSession];
  if (v9 != [(MRGroupSessionEligibilityStatus *)v6 isEligibleForJoiningGroupSession])
  {
    goto LABEL_15;
  }

  v10 = [(MRGroupSessionEligibilityStatus *)self isManateeEnabled];
  if (v10 != [(MRGroupSessionEligibilityStatus *)v6 isManateeEnabled])
  {
    goto LABEL_15;
  }

  v11 = [(MRGroupSessionEligibilityStatus *)self idsAccountIsValid];
  if (v11 != [(MRGroupSessionEligibilityStatus *)v6 idsAccountIsValid])
  {
    goto LABEL_15;
  }

  v12 = [(MRGroupSessionEligibilityStatus *)self mediaAccountHostingState]!= 0;
  if (v12 == ([(MRGroupSessionEligibilityStatus *)v6 mediaAccountHostingState]== 0))
  {
    goto LABEL_15;
  }

  v13 = [(MRGroupSessionEligibilityStatus *)self mediaAccountJoiningState]!= 0;
  if (v13 == ([(MRGroupSessionEligibilityStatus *)v6 mediaAccountJoiningState]== 0))
  {
    goto LABEL_15;
  }

  v14 = [(MRGroupSessionEligibilityStatus *)self routeType]!= 0;
  if (v14 == ([(MRGroupSessionEligibilityStatus *)v6 routeType]== 0))
  {
    goto LABEL_15;
  }

  v15 = [(MRGroupSessionEligibilityStatus *)self routeIsValidForHosting];
  if (v15 != [(MRGroupSessionEligibilityStatus *)v6 routeIsValidForHosting])
  {
    goto LABEL_15;
  }

  v16 = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  v17 = [(MRGroupSessionEligibilityStatus *)v6 currentMediaUserState];
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_21;
  }

  v19 = [v16 isEqual:v17];

  if (v19)
  {
LABEL_21:
    v22 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
    v23 = [(MRGroupSessionEligibilityStatus *)v6 mediaUserStates];
    if (v22 == v23)
    {
      v20 = 1;
    }

    else
    {
      v20 = [v22 isEqual:v23];
    }

    goto LABEL_16;
  }

LABEL_15:
  v20 = 0;
LABEL_16:

LABEL_19:
  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"eligibleForHosting=%d", -[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSession](self, "isEligibleForHostingGroupSession")];
  [v6 appendFormat:@", isEligibleForHostingGroupSessionExcludingAcknowledgements=%d", -[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSessionExcludingAcknowledgements](self, "isEligibleForHostingGroupSessionExcludingAcknowledgements")];
  [v6 appendFormat:@", eligibleForJoining=%d", -[MRGroupSessionEligibilityStatus isEligibleForJoiningGroupSession](self, "isEligibleForJoiningGroupSession")];
  [v6 appendFormat:@", manatee=%d", -[MRGroupSessionEligibilityStatus isManateeEnabled](self, "isManateeEnabled")];
  [v6 appendFormat:@", idsAccountValid=%d", -[MRGroupSessionEligibilityStatus idsAccountIsValid](self, "idsAccountIsValid")];
  v7 = MRGroupSessionMediaAccountHostingStateToString([(MRGroupSessionEligibilityStatus *)self mediaAccountHostingState]);
  [v6 appendFormat:@", mediaAccountHostingState=%@", v7];

  v8 = [(MRGroupSessionEligibilityStatus *)self mediaAccountJoiningState];
  if (v8 - 1 > 4)
  {
    v9 = @"Indeterminate";
  }

  else
  {
    v9 = off_1E76A1F20[v8 - 1];
  }

  [v6 appendFormat:@", mediaAccountJoiningState=%@", v9];
  [v6 appendFormat:@", routeType=%d", -[MRGroupSessionEligibilityStatus routeType](self, "routeType")];
  [v6 appendFormat:@", routeValidForHosting=%d", -[MRGroupSessionEligibilityStatus routeIsValidForHosting](self, "routeIsValidForHosting")];
  v10 = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  [v6 appendFormat:@", currentMediaUserState=%@", v10];

  v11 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
    [v6 appendFormat:@", mediaUserStates=%@", v13];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)dictionaryDescription
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSession](self, "isEligibleForHostingGroupSession")}];
  [v3 setObject:v4 forKeyedSubscript:@"isEligibleForHostingGroupSession"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSessionExcludingAcknowledgements](self, "isEligibleForHostingGroupSessionExcludingAcknowledgements")}];
  [v3 setObject:v5 forKeyedSubscript:@"isEligibleForHostingGroupSessionExcludingAcknowledgements"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus isEligibleForJoiningGroupSession](self, "isEligibleForJoiningGroupSession")}];
  [v3 setObject:v6 forKeyedSubscript:@"isEligibleForJoiningGroupSession"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus isManateeEnabled](self, "isManateeEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"isManateeEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus idsAccountIsValid](self, "idsAccountIsValid")}];
  [v3 setObject:v8 forKeyedSubscript:@"idsAccountIsValid"];

  v9 = MRGroupSessionMediaAccountHostingStateToString([(MRGroupSessionEligibilityStatus *)self mediaAccountHostingState]);
  [v3 setObject:v9 forKeyedSubscript:@"mediaAccountHostingState"];

  v10 = [(MRGroupSessionEligibilityStatus *)self mediaAccountJoiningState]- 1;
  if (v10 > 4)
  {
    v11 = @"Indeterminate";
  }

  else
  {
    v11 = off_1E76A1F20[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"mediaAccountJoiningState"];
  v12 = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  v13 = [v12 copy];
  [v3 setObject:v13 forKeyedSubscript:@"currentMediaUserState"];

  v14 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  v15 = [v14 copy];
  [v3 setObject:v15 forKeyedSubscript:@"mediaUserStates"];

  v16 = MRGroupSessionRouteTypeDescription([(MRGroupSessionEligibilityStatus *)self routeType]);
  [v3 setObject:v16 forKeyedSubscript:@"routeType"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus routeIsValidForHosting](self, "routeIsValidForHosting")}];
  [v3 setObject:v17 forKeyedSubscript:@"routeIsValidForHosting"];

  return v3;
}

- (id)differenceFrom:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRGroupSessionEligibilityStatus *)self dictionaryDescription];
  v6 = [v4 dictionaryDescription];
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v5 allKeys];
  v9 = [v6 allKeys];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];
  v11 = [v7 setWithArray:v10];

  v12 = objc_opt_new();
  v13 = v12;
  if (self)
  {
    if (v4)
    {
      v29 = v4;
      v30 = v12;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v11;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      v17 = *v32;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v5 objectForKeyedSubscript:v19];
          v21 = [v6 objectForKeyedSubscript:v19];
          if (v20 != v21)
          {
            v22 = [v20 isEqual:v21];

            if (v22)
            {
              continue;
            }

            v23 = MEMORY[0x1E69B1470];
            v20 = [v6 objectForKeyedSubscript:v19];
            v21 = [v5 objectForKeyedSubscript:v19];
            v24 = [v23 pairWithFirst:v20 second:v21];
            [v30 setObject:v24 forKeyedSubscript:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (!v16)
        {
LABEL_14:

          v13 = v30;
          v25 = [v30 description];
          v11 = v28;
          v4 = v29;
          goto LABEL_17;
        }
      }
    }

    v25 = @"Changed from nil";
  }

  else
  {
    v25 = @"Changed to nil";
  }

LABEL_17:

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

@end