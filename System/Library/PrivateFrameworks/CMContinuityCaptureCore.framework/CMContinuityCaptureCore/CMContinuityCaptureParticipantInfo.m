@interface CMContinuityCaptureParticipantInfo
- (BOOL)isEqual:(id)a3;
- (CMContinuityCaptureParticipantInfo)initWithCoder:(id)a3;
- (CMContinuityCaptureParticipantInfo)initWithDictionary:(id)a3;
- (CMContinuityCaptureParticipantInfo)initWithMRParticipant:(id)a3;
- (CMContinuityCaptureParticipantInfo)initWithSocialProfileIdentifier:(id)a3 displayName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMContinuityCaptureParticipantInfo

- (CMContinuityCaptureParticipantInfo)initWithMRParticipant:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  v6 = [v5 identifier];
  v7 = [v4 identity];

  v8 = [v7 displayName];
  v9 = [(CMContinuityCaptureParticipantInfo *)self initWithSocialProfileIdentifier:v6 displayName:v8];

  return v9;
}

- (CMContinuityCaptureParticipantInfo)initWithSocialProfileIdentifier:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CMContinuityCaptureParticipantInfo initWithSocialProfileIdentifier:a2 displayName:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CMContinuityCaptureParticipantInfo initWithSocialProfileIdentifier:a2 displayName:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureParticipantInfo;
  v10 = [(CMContinuityCaptureParticipantInfo *)&v16 init];
  if (v10)
  {
    v11 = [v7 copy];
    socialProfileIdentifier = v10->_socialProfileIdentifier;
    v10->_socialProfileIdentifier = v11;

    v13 = [v9 copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;
  }

  return v10;
}

- (CMContinuityCaptureParticipantInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"displayName"];
  v6 = [v4 objectForKey:@"socialProfileIdentifier"];

  v7 = [(CMContinuityCaptureParticipantInfo *)self initWithSocialProfileIdentifier:v6 displayName:v5];
  return v7;
}

- (CMContinuityCaptureParticipantInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureParticipantInfo;
  v5 = [(CMContinuityCaptureParticipantInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"socialProfileIdentifier"];
    socialProfileIdentifier = v5->_socialProfileIdentifier;
    v5->_socialProfileIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  [v4 encodeObject:v5 forKey:@"socialProfileIdentifier"];

  v6 = [(CMContinuityCaptureParticipantInfo *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  v6 = [v5 copy];
  [v4 setSocialProfileIdentifier:v6];

  v7 = [(CMContinuityCaptureParticipantInfo *)self displayName];
  v8 = [v7 copy];
  [v4 setDisplayName:v8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if ([(CMContinuityCaptureParticipantInfo *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(CMContinuityCaptureParticipantInfo *)self displayName];
    v7 = [(CMContinuityCaptureParticipantInfo *)v5 displayName];
    if (v6 | v7 && ![v6 isEqual:v7])
    {
      v10 = 0;
    }

    else
    {
      v8 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
      v9 = [(CMContinuityCaptureParticipantInfo *)v5 socialProfileIdentifier];
      if (v8 | v9)
      {
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(CMContinuityCaptureParticipantInfo *)self displayName];
  v5 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  v6 = [v3 initWithFormat:@"<CMContinuityCaptureParticipantInfo displayName:%@ socialProfileIdentifier:%@>", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];

  if (v4)
  {
    v5 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"socialProfileIdentifier"];
  }

  v7 = [(CMContinuityCaptureParticipantInfo *)self displayName];

  if (v7)
  {
    v8 = [(CMContinuityCaptureParticipantInfo *)self displayName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"displayName"];
  }

  return v3;
}

- (void)initWithSocialProfileIdentifier:(uint64_t)a1 displayName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CMContinuityCaptureParticipantInfo.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"socialProfileIdentifier"}];
}

- (void)initWithSocialProfileIdentifier:(uint64_t)a1 displayName:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CMContinuityCaptureParticipantInfo.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"displayName"}];
}

@end