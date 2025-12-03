@interface MRGroupSessionEligibilityStatus
- (BOOL)isEqual:(id)equal;
- (MRGroupSessionEligibilityStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryDescription;
- (id)differenceFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRGroupSessionEligibilityStatus

- (MRGroupSessionEligibilityStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MRGroupSessionEligibilityStatus;
  v5 = [(MRGroupSessionEligibilityStatus *)&v9 init];
  if (v5)
  {
    -[MRGroupSessionEligibilityStatus setIsEligibleForHostingGroupSession:](v5, "setIsEligibleForHostingGroupSession:", [coderCopy decodeBoolForKey:@"ehgs"]);
    -[MRGroupSessionEligibilityStatus setIsEligibleForHostingGroupSessionExcludingAcknowledgements:](v5, "setIsEligibleForHostingGroupSessionExcludingAcknowledgements:", [coderCopy decodeBoolForKey:@"ehgsea"]);
    -[MRGroupSessionEligibilityStatus setIsEligibleForJoiningGroupSession:](v5, "setIsEligibleForJoiningGroupSession:", [coderCopy decodeBoolForKey:@"ejgS"]);
    -[MRGroupSessionEligibilityStatus setIsManateeEnabled:](v5, "setIsManateeEnabled:", [coderCopy decodeBoolForKey:@"mte"]);
    -[MRGroupSessionEligibilityStatus setIdsAccountIsValid:](v5, "setIdsAccountIsValid:", [coderCopy decodeBoolForKey:@"acv"]);
    -[MRGroupSessionEligibilityStatus setMediaAccountHostingState:](v5, "setMediaAccountHostingState:", [coderCopy decodeIntegerForKey:@"mhs"]);
    -[MRGroupSessionEligibilityStatus setMediaAccountJoiningState:](v5, "setMediaAccountJoiningState:", [coderCopy decodeIntegerForKey:@"mjs"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cmus"];
    [(MRGroupSessionEligibilityStatus *)v5 setCurrentMediaUserState:v6];

    v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"mus"];
    [(MRGroupSessionEligibilityStatus *)v5 setMediaUserStates:v7];

    -[MRGroupSessionEligibilityStatus setRouteType:](v5, "setRouteType:", [coderCopy decodeIntegerForKey:@"rt"]);
    -[MRGroupSessionEligibilityStatus setRouteIsValidForHosting:](v5, "setRouteIsValidForHosting:", [coderCopy decodeBoolForKey:@"rvH"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSession](self forKey:{"isEligibleForHostingGroupSession"), @"ehgs"}];
  [coderCopy encodeBool:-[MRGroupSessionEligibilityStatus isEligibleForHostingGroupSessionExcludingAcknowledgements](self forKey:{"isEligibleForHostingGroupSessionExcludingAcknowledgements"), @"ehgsea"}];
  [coderCopy encodeBool:-[MRGroupSessionEligibilityStatus isEligibleForJoiningGroupSession](self forKey:{"isEligibleForJoiningGroupSession"), @"ejgS"}];
  [coderCopy encodeBool:-[MRGroupSessionEligibilityStatus isManateeEnabled](self forKey:{"isManateeEnabled"), @"mte"}];
  [coderCopy encodeBool:-[MRGroupSessionEligibilityStatus idsAccountIsValid](self forKey:{"idsAccountIsValid"), @"acv"}];
  [coderCopy encodeInteger:-[MRGroupSessionEligibilityStatus mediaAccountHostingState](self forKey:{"mediaAccountHostingState"), @"mhs"}];
  [coderCopy encodeInteger:-[MRGroupSessionEligibilityStatus mediaAccountJoiningState](self forKey:{"mediaAccountJoiningState"), @"mjs"}];
  currentMediaUserState = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  [coderCopy encodeObject:currentMediaUserState forKey:@"cmus"];

  mediaUserStates = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  [coderCopy encodeObject:mediaUserStates forKey:@"mus"];

  [coderCopy encodeInteger:-[MRGroupSessionEligibilityStatus routeType](self forKey:{"routeType"), @"rt"}];
  [coderCopy encodeBool:-[MRGroupSessionEligibilityStatus routeIsValidForHosting](self forKey:{"routeIsValidForHosting"), @"rvH"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MRGroupSessionEligibilityStatus);
  [(MRGroupSessionEligibilityStatus *)v4 setIsEligibleForHostingGroupSession:[(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSession]];
  [(MRGroupSessionEligibilityStatus *)v4 setIsEligibleForHostingGroupSessionExcludingAcknowledgements:[(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSessionExcludingAcknowledgements]];
  [(MRGroupSessionEligibilityStatus *)v4 setIsEligibleForJoiningGroupSession:[(MRGroupSessionEligibilityStatus *)self isEligibleForJoiningGroupSession]];
  [(MRGroupSessionEligibilityStatus *)v4 setIsManateeEnabled:[(MRGroupSessionEligibilityStatus *)self isManateeEnabled]];
  [(MRGroupSessionEligibilityStatus *)v4 setIdsAccountIsValid:[(MRGroupSessionEligibilityStatus *)self idsAccountIsValid]];
  [(MRGroupSessionEligibilityStatus *)v4 setMediaAccountHostingState:[(MRGroupSessionEligibilityStatus *)self mediaAccountHostingState]];
  [(MRGroupSessionEligibilityStatus *)v4 setMediaAccountJoiningState:[(MRGroupSessionEligibilityStatus *)self mediaAccountJoiningState]];
  currentMediaUserState = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  v6 = [currentMediaUserState copy];
  [(MRGroupSessionEligibilityStatus *)v4 setCurrentMediaUserState:v6];

  mediaUserStates = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  v8 = [mediaUserStates copy];
  [(MRGroupSessionEligibilityStatus *)v4 setMediaUserStates:v8];

  [(MRGroupSessionEligibilityStatus *)v4 setRouteType:[(MRGroupSessionEligibilityStatus *)self routeType]];
  [(MRGroupSessionEligibilityStatus *)v4 setRouteIsValidForHosting:[(MRGroupSessionEligibilityStatus *)self routeIsValidForHosting]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v20 = 1;
    goto LABEL_19;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  isEligibleForHostingGroupSession = [(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSession];
  if (isEligibleForHostingGroupSession != [(MRGroupSessionEligibilityStatus *)v6 isEligibleForHostingGroupSession])
  {
    goto LABEL_15;
  }

  isEligibleForHostingGroupSessionExcludingAcknowledgements = [(MRGroupSessionEligibilityStatus *)self isEligibleForHostingGroupSessionExcludingAcknowledgements];
  if (isEligibleForHostingGroupSessionExcludingAcknowledgements != [(MRGroupSessionEligibilityStatus *)v6 isEligibleForHostingGroupSessionExcludingAcknowledgements])
  {
    goto LABEL_15;
  }

  isEligibleForJoiningGroupSession = [(MRGroupSessionEligibilityStatus *)self isEligibleForJoiningGroupSession];
  if (isEligibleForJoiningGroupSession != [(MRGroupSessionEligibilityStatus *)v6 isEligibleForJoiningGroupSession])
  {
    goto LABEL_15;
  }

  isManateeEnabled = [(MRGroupSessionEligibilityStatus *)self isManateeEnabled];
  if (isManateeEnabled != [(MRGroupSessionEligibilityStatus *)v6 isManateeEnabled])
  {
    goto LABEL_15;
  }

  idsAccountIsValid = [(MRGroupSessionEligibilityStatus *)self idsAccountIsValid];
  if (idsAccountIsValid != [(MRGroupSessionEligibilityStatus *)v6 idsAccountIsValid])
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

  routeIsValidForHosting = [(MRGroupSessionEligibilityStatus *)self routeIsValidForHosting];
  if (routeIsValidForHosting != [(MRGroupSessionEligibilityStatus *)v6 routeIsValidForHosting])
  {
    goto LABEL_15;
  }

  currentMediaUserState = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  currentMediaUserState2 = [(MRGroupSessionEligibilityStatus *)v6 currentMediaUserState];
  v18 = currentMediaUserState2;
  if (currentMediaUserState == currentMediaUserState2)
  {

    goto LABEL_21;
  }

  v19 = [currentMediaUserState isEqual:currentMediaUserState2];

  if (v19)
  {
LABEL_21:
    mediaUserStates = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
    mediaUserStates2 = [(MRGroupSessionEligibilityStatus *)v6 mediaUserStates];
    if (mediaUserStates == mediaUserStates2)
    {
      v20 = 1;
    }

    else
    {
      v20 = [mediaUserStates isEqual:mediaUserStates2];
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

  mediaAccountJoiningState = [(MRGroupSessionEligibilityStatus *)self mediaAccountJoiningState];
  if (mediaAccountJoiningState - 1 > 4)
  {
    v9 = @"Indeterminate";
  }

  else
  {
    v9 = off_1E76A1F20[mediaAccountJoiningState - 1];
  }

  [v6 appendFormat:@", mediaAccountJoiningState=%@", v9];
  [v6 appendFormat:@", routeType=%d", -[MRGroupSessionEligibilityStatus routeType](self, "routeType")];
  [v6 appendFormat:@", routeValidForHosting=%d", -[MRGroupSessionEligibilityStatus routeIsValidForHosting](self, "routeIsValidForHosting")];
  currentMediaUserState = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  [v6 appendFormat:@", currentMediaUserState=%@", currentMediaUserState];

  mediaUserStates = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  v12 = [mediaUserStates count];

  if (v12 >= 2)
  {
    mediaUserStates2 = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
    [v6 appendFormat:@", mediaUserStates=%@", mediaUserStates2];
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
  currentMediaUserState = [(MRGroupSessionEligibilityStatus *)self currentMediaUserState];
  v13 = [currentMediaUserState copy];
  [v3 setObject:v13 forKeyedSubscript:@"currentMediaUserState"];

  mediaUserStates = [(MRGroupSessionEligibilityStatus *)self mediaUserStates];
  v15 = [mediaUserStates copy];
  [v3 setObject:v15 forKeyedSubscript:@"mediaUserStates"];

  v16 = MRGroupSessionRouteTypeDescription([(MRGroupSessionEligibilityStatus *)self routeType]);
  [v3 setObject:v16 forKeyedSubscript:@"routeType"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRGroupSessionEligibilityStatus routeIsValidForHosting](self, "routeIsValidForHosting")}];
  [v3 setObject:v17 forKeyedSubscript:@"routeIsValidForHosting"];

  return v3;
}

- (id)differenceFrom:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  dictionaryDescription = [(MRGroupSessionEligibilityStatus *)self dictionaryDescription];
  dictionaryDescription2 = [fromCopy dictionaryDescription];
  v7 = MEMORY[0x1E695DFD8];
  allKeys = [dictionaryDescription allKeys];
  allKeys2 = [dictionaryDescription2 allKeys];
  v10 = [allKeys arrayByAddingObjectsFromArray:allKeys2];
  v11 = [v7 setWithArray:v10];

  v12 = objc_opt_new();
  v13 = v12;
  if (self)
  {
    if (fromCopy)
    {
      v29 = fromCopy;
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
          v20 = [dictionaryDescription objectForKeyedSubscript:v19];
          v21 = [dictionaryDescription2 objectForKeyedSubscript:v19];
          if (v20 != v21)
          {
            v22 = [v20 isEqual:v21];

            if (v22)
            {
              continue;
            }

            v23 = MEMORY[0x1E69B1470];
            v20 = [dictionaryDescription2 objectForKeyedSubscript:v19];
            v21 = [dictionaryDescription objectForKeyedSubscript:v19];
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
          fromCopy = v29;
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