@interface WFParticipant
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToParticipant:(id)a3;
- (WFParticipant)initWithEKParticipant:(id)a3;
- (WFParticipant)initWithURL:(id)a3 name:(id)a4 emailAddress:(id)a5 status:(int64_t)a6 role:(int64_t)a7 type:(int64_t)a8 sourceIdentifier:(id)a9 isManaged:(BOOL)a10 isCurrentUser:(BOOL)a11 contactPredicate:(id)a12;
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
    v6 = [v5 absoluteString];
    [v3 setObject:v6 forKey:@"URL"];
  }

  v7 = [(WFParticipant *)self name];

  if (v7)
  {
    v8 = [(WFParticipant *)self name];
    [v3 setObject:v8 forKey:@"name"];
  }

  v9 = [(WFParticipant *)self emailAddress];

  if (v9)
  {
    v10 = [(WFParticipant *)self emailAddress];
    [v3 setObject:v10 forKey:@"emailAddress"];
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

  v16 = [(WFParticipant *)self sourceIdentifier];

  if (v16)
  {
    v17 = [(WFParticipant *)self sourceIdentifier];
    [v3 setObject:v17 forKey:@"sourceIdentifier"];
  }

  v20 = @"link.contentkit.ekparticipant";
  v21[0] = v3;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v18;
}

- (BOOL)isEquivalentToParticipant:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFParticipant *)self URL];
      v6 = [(WFParticipant *)v4 URL];
      if ([v5 isEqual:v6])
      {
        v7 = [(WFParticipant *)self emailAddress];
        v8 = [(WFParticipant *)v4 emailAddress];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(WFParticipant *)self isCurrentUser];
          v10 = v9 ^ [(WFParticipant *)v4 isCurrentUser]^ 1;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFParticipant *)self URL];
      v6 = [(WFParticipant *)v4 URL];
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

      v14 = [(WFParticipant *)self name];
      v15 = [(WFParticipant *)v4 name];
      v12 = v14;
      v16 = v15;
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

      v20 = [(WFParticipant *)self emailAddress];
      v21 = [(WFParticipant *)v4 emailAddress];
      v18 = v20;
      v22 = v21;
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

      v25 = [(WFParticipant *)self status];
      if (v25 != [(WFParticipant *)v4 status]|| (v26 = [(WFParticipant *)self role], v26 != [(WFParticipant *)v4 role]) || (v27 = [(WFParticipant *)self type], v27 != [(WFParticipant *)v4 type]))
      {
        LOBYTE(v10) = 0;
LABEL_46:

        goto LABEL_47;
      }

      v28 = [(WFParticipant *)self sourceIdentifier];
      v29 = [(WFParticipant *)v4 sourceIdentifier];
      v30 = v28;
      v31 = v29;
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

      v36 = [(WFParticipant *)self isManaged];
      if (v36 != [(WFParticipant *)v4 isManaged])
      {
        goto LABEL_35;
      }

      v37 = [(WFParticipant *)self isCurrentUser];
      if (v37 != [(WFParticipant *)v4 isCurrentUser])
      {
        goto LABEL_35;
      }

      v38 = [(WFParticipant *)self contactPredicate];
      v39 = [(WFParticipant *)v4 contactPredicate];
      v40 = v38;
      v41 = v39;
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
  v5 = [(WFParticipant *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFParticipant *)self emailAddress];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(WFParticipant *)self status];
  v10 = [(WFParticipant *)self role];
  v11 = v10 ^ [(WFParticipant *)self type];
  v12 = [(WFParticipant *)self sourceIdentifier];
  v13 = v11 ^ [v12 hash];
  v14 = v9 ^ v13 ^ [(WFParticipant *)self isManaged];
  v15 = [(WFParticipant *)self isCurrentUser];
  v16 = [(WFParticipant *)self contactPredicate];
  v17 = v15 ^ [v16 hash];

  return v14 ^ v17;
}

- (WFParticipant)initWithEKParticipant:(id)a3
{
  v3 = a3;
  v4 = [v3 owner];
  v5 = [v4 calendar];

  v18 = [v5 isManaged];
  v17 = [v3 URL];
  v6 = [v3 name];
  v7 = [v3 emailAddress];
  v16 = [v3 participantStatus];
  v8 = [v3 participantRole];
  v9 = [v3 participantType];
  v10 = [v5 source];
  v11 = [v10 sourceIdentifier];
  LOBYTE(v4) = [v3 isCurrentUser];
  v12 = [v3 contactPredicate];

  BYTE1(v15) = v4;
  LOBYTE(v15) = v18;
  v13 = [(WFParticipant *)self initWithURL:v17 name:v6 emailAddress:v7 status:v16 role:v8 type:v9 sourceIdentifier:v11 isManaged:v15 isCurrentUser:v12 contactPredicate:?];

  return v13;
}

- (WFParticipant)initWithURL:(id)a3 name:(id)a4 emailAddress:(id)a5 status:(int64_t)a6 role:(int64_t)a7 type:(int64_t)a8 sourceIdentifier:(id)a9 isManaged:(BOOL)a10 isCurrentUser:(BOOL)a11 contactPredicate:(id)a12
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a9;
  v35 = a12;
  if (!v19)
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
    objc_storeStrong(&v23->_URL, a3);
    v25 = [v20 copy];
    name = v24->_name;
    v24->_name = v25;

    v27 = [v21 copy];
    emailAddress = v24->_emailAddress;
    v24->_emailAddress = v27;

    v24->_status = a6;
    v24->_role = a7;
    v24->_type = a8;
    v29 = [v22 copy];
    sourceIdentifier = v24->_sourceIdentifier;
    v24->_sourceIdentifier = v29;

    v24->_managed = a10;
    v24->_currentUser = a11;
    objc_storeStrong(&v24->_contactPredicate, a12);
    v31 = v24;
  }

  return v24;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.ekparticipant"];

  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"URL"];
  v8 = [v6 URLWithString:v7];

  if (v8)
  {
    v9 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"name"];
    v10 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    v25 = a1;
    v11 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"participantStatus"];
    v24 = [v11 integerValue];

    v12 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"participantRole"];
    v13 = [v12 integerValue];

    v14 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"participantType"];
    v15 = [v14 integerValue];

    v16 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"isCurrentUser"];
    v17 = [v16 BOOLValue];

    v18 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"isManaged"];
    v19 = [v18 BOOLValue];

    v20 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    BYTE1(v23) = v17;
    LOBYTE(v23) = v19;
    v21 = [[v25 alloc] initWithURL:v8 name:v9 emailAddress:v10 status:v24 role:v13 type:v15 sourceIdentifier:v20 isManaged:v23 isCurrentUser:0 contactPredicate:?];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end