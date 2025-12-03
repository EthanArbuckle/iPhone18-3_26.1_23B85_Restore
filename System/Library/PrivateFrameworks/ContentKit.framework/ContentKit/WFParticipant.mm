@interface WFParticipant
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToParticipant:(id)participant;
- (WFParticipant)initWithEKParticipant:(id)participant;
- (WFParticipant)initWithURL:(id)l name:(id)name emailAddress:(id)address status:(int64_t)status role:(int64_t)role type:(int64_t)type sourceIdentifier:(id)identifier isManaged:(BOOL)self0 isCurrentUser:(BOOL)self1 contactPredicate:(id)self2;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFParticipant

- (id)wfSerializedRepresentation
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(WFParticipant *)self URL];

  if (v4)
  {
    v5 = [(WFParticipant *)self URL];
    absoluteString = [v5 absoluteString];
    [v3 setObject:absoluteString forKey:@"URL"];
  }

  name = [(WFParticipant *)self name];

  if (name)
  {
    name2 = [(WFParticipant *)self name];
    [v3 setObject:name2 forKey:@"name"];
  }

  emailAddress = [(WFParticipant *)self emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [(WFParticipant *)self emailAddress];
    [v3 setObject:emailAddress2 forKey:@"emailAddress"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFParticipant status](self, "status")}];
  [v3 setObject:v11 forKey:@"participantStatus"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFParticipant role](self, "role")}];
  [v3 setObject:v12 forKey:@"participantRole"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFParticipant type](self, "type")}];
  [v3 setObject:v13 forKey:@"participantType"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFParticipant isCurrentUser](self, "isCurrentUser")}];
  [v3 setObject:v14 forKey:@"isCurrentUser"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFParticipant isManaged](self, "isManaged")}];
  [v3 setObject:v15 forKey:@"isManaged"];

  sourceIdentifier = [(WFParticipant *)self sourceIdentifier];

  if (sourceIdentifier)
  {
    sourceIdentifier2 = [(WFParticipant *)self sourceIdentifier];
    [v3 setObject:sourceIdentifier2 forKey:@"sourceIdentifier"];
  }

  v20 = @"link.contentkit.ekparticipant";
  v21[0] = v3;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v18;
}

- (BOOL)isEquivalentToParticipant:(id)participant
{
  participantCopy = participant;
  if (participantCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFParticipant *)self URL];
      v6 = [(WFParticipant *)participantCopy URL];
      if ([v5 isEqual:v6])
      {
        emailAddress = [(WFParticipant *)self emailAddress];
        emailAddress2 = [(WFParticipant *)participantCopy emailAddress];
        if ([emailAddress isEqualToString:emailAddress2])
        {
          isCurrentUser = [(WFParticipant *)self isCurrentUser];
          v10 = isCurrentUser ^ [(WFParticipant *)participantCopy isCurrentUser]^ 1;
        }

        else
        {
          LOBYTE(v10) = 0;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFParticipant *)self URL];
      v6 = [(WFParticipant *)equalCopy URL];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
          goto LABEL_47;
        }

        v13 = [v7 isEqual:v8];

        if (!v13)
        {
          LOBYTE(v10) = 0;
LABEL_48:

          goto LABEL_49;
        }
      }

      name = [(WFParticipant *)self name];
      name2 = [(WFParticipant *)equalCopy name];
      v12 = name;
      v16 = name2;
      v11 = v16;
      if (v12 == v16)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v17 = v16;
        v18 = v12;
        if (!v12 || !v16)
        {
          goto LABEL_46;
        }

        v19 = [v12 isEqualToString:v16];

        if (!v19)
        {
          LOBYTE(v10) = 0;
LABEL_47:

          goto LABEL_48;
        }
      }

      emailAddress = [(WFParticipant *)self emailAddress];
      emailAddress2 = [(WFParticipant *)equalCopy emailAddress];
      v18 = emailAddress;
      v22 = emailAddress2;
      v17 = v22;
      if (v18 == v22)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v23 = v22;
        v24 = v18;
        if (!v18 || !v22)
        {
          goto LABEL_45;
        }

        v10 = [v18 isEqualToString:v22];

        if (!v10)
        {
          goto LABEL_46;
        }
      }

      status = [(WFParticipant *)self status];
      if (status != [(WFParticipant *)equalCopy status]|| (v26 = [(WFParticipant *)self role], v26 != [(WFParticipant *)equalCopy role]) || (v27 = [(WFParticipant *)self type], v27 != [(WFParticipant *)equalCopy type]))
      {
        LOBYTE(v10) = 0;
LABEL_46:

        goto LABEL_47;
      }

      sourceIdentifier = [(WFParticipant *)self sourceIdentifier];
      sourceIdentifier2 = [(WFParticipant *)equalCopy sourceIdentifier];
      v30 = sourceIdentifier;
      v31 = sourceIdentifier2;
      v23 = v31;
      v32 = v30;
      v47 = v30;
      if (v30 == v31)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v33 = v31;
        if (!v32)
        {
          v34 = 0;
          goto LABEL_43;
        }

        v34 = v32;
        if (!v31)
        {
LABEL_43:
          v42 = v34;

          goto LABEL_44;
        }

        v35 = v32;
        LODWORD(v45) = [v32 isEqualToString:v31];

        if (!v45)
        {
LABEL_35:
          LOBYTE(v10) = 0;
LABEL_44:
          v24 = v47;
LABEL_45:
          v43 = v24;

          goto LABEL_46;
        }
      }

      isManaged = [(WFParticipant *)self isManaged];
      if (isManaged != [(WFParticipant *)equalCopy isManaged])
      {
        goto LABEL_35;
      }

      isCurrentUser = [(WFParticipant *)self isCurrentUser];
      if (isCurrentUser != [(WFParticipant *)equalCopy isCurrentUser])
      {
        goto LABEL_35;
      }

      contactPredicate = [(WFParticipant *)self contactPredicate];
      contactPredicate2 = [(WFParticipant *)equalCopy contactPredicate];
      v40 = contactPredicate;
      v41 = contactPredicate2;
      v46 = v41;
      if (v40 == v41)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v40 && v41)
        {
          LOBYTE(v10) = [v40 isEqual:v41];
        }
      }

      v33 = v46;
      v34 = v40;
      goto LABEL_43;
    }

    LOBYTE(v10) = 0;
  }

LABEL_49:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WFParticipant *)self URL];
  v4 = [v3 hash];
  name = [(WFParticipant *)self name];
  v6 = [name hash] ^ v4;
  emailAddress = [(WFParticipant *)self emailAddress];
  v8 = [emailAddress hash];
  v9 = v6 ^ v8 ^ [(WFParticipant *)self status];
  role = [(WFParticipant *)self role];
  v11 = role ^ [(WFParticipant *)self type];
  sourceIdentifier = [(WFParticipant *)self sourceIdentifier];
  v13 = v11 ^ [sourceIdentifier hash];
  v14 = v9 ^ v13 ^ [(WFParticipant *)self isManaged];
  isCurrentUser = [(WFParticipant *)self isCurrentUser];
  contactPredicate = [(WFParticipant *)self contactPredicate];
  v17 = isCurrentUser ^ [contactPredicate hash];

  return v14 ^ v17;
}

- (WFParticipant)initWithEKParticipant:(id)participant
{
  participantCopy = participant;
  owner = [participantCopy owner];
  calendar = [owner calendar];

  isManaged = [calendar isManaged];
  v17 = [participantCopy URL];
  name = [participantCopy name];
  emailAddress = [participantCopy emailAddress];
  participantStatus = [participantCopy participantStatus];
  participantRole = [participantCopy participantRole];
  participantType = [participantCopy participantType];
  source = [calendar source];
  sourceIdentifier = [source sourceIdentifier];
  LOBYTE(owner) = [participantCopy isCurrentUser];
  contactPredicate = [participantCopy contactPredicate];

  BYTE1(v15) = owner;
  LOBYTE(v15) = isManaged;
  v13 = [(WFParticipant *)self initWithURL:v17 name:name emailAddress:emailAddress status:participantStatus role:participantRole type:participantType sourceIdentifier:sourceIdentifier isManaged:v15 isCurrentUser:contactPredicate contactPredicate:?];

  return v13;
}

- (WFParticipant)initWithURL:(id)l name:(id)name emailAddress:(id)address status:(int64_t)status role:(int64_t)role type:(int64_t)type sourceIdentifier:(id)identifier isManaged:(BOOL)self0 isCurrentUser:(BOOL)self1 contactPredicate:(id)self2
{
  lCopy = l;
  nameCopy = name;
  addressCopy = address;
  identifierCopy = identifier;
  predicateCopy = predicate;
  if (!lCopy)
  {
    obj = [MEMORY[0x277CCA890] currentHandler];
    [obj handleFailureInMethod:a2 object:self file:@"WFParticipant.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v36.receiver = self;
  v36.super_class = WFParticipant;
  v23 = [(WFParticipant *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_URL, l);
    v25 = [nameCopy copy];
    name = v24->_name;
    v24->_name = v25;

    v27 = [addressCopy copy];
    emailAddress = v24->_emailAddress;
    v24->_emailAddress = v27;

    v24->_status = status;
    v24->_role = role;
    v24->_type = type;
    v29 = [identifierCopy copy];
    sourceIdentifier = v24->_sourceIdentifier;
    v24->_sourceIdentifier = v29;

    v24->_managed = managed;
    v24->_currentUser = user;
    objc_storeStrong(&v24->_contactPredicate, predicate);
    v31 = v24;
  }

  return v24;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.ekparticipant"];

  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"URL"];
  v8 = [v6 URLWithString:v7];

  if (v8)
  {
    v9 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"name"];
    v10 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    selfCopy = self;
    v11 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"participantStatus"];
    integerValue = [v11 integerValue];

    v12 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"participantRole"];
    integerValue2 = [v12 integerValue];

    v14 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"participantType"];
    integerValue3 = [v14 integerValue];

    v16 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"isCurrentUser"];
    bOOLValue = [v16 BOOLValue];

    v18 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"isManaged"];
    bOOLValue2 = [v18 BOOLValue];

    v20 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    BYTE1(v23) = bOOLValue;
    LOBYTE(v23) = bOOLValue2;
    v21 = [[selfCopy alloc] initWithURL:v8 name:v9 emailAddress:v10 status:integerValue role:integerValue2 type:integerValue3 sourceIdentifier:v20 isManaged:v23 isCurrentUser:0 contactPredicate:?];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end