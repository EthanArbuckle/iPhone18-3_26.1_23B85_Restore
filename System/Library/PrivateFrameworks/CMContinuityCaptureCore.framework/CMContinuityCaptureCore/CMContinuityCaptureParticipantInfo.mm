@interface CMContinuityCaptureParticipantInfo
- (BOOL)isEqual:(id)equal;
- (CMContinuityCaptureParticipantInfo)initWithCoder:(id)coder;
- (CMContinuityCaptureParticipantInfo)initWithDictionary:(id)dictionary;
- (CMContinuityCaptureParticipantInfo)initWithMRParticipant:(id)participant;
- (CMContinuityCaptureParticipantInfo)initWithSocialProfileIdentifier:(id)identifier displayName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureParticipantInfo

- (CMContinuityCaptureParticipantInfo)initWithMRParticipant:(id)participant
{
  participantCopy = participant;
  identity = [participantCopy identity];
  identifier = [identity identifier];
  identity2 = [participantCopy identity];

  displayName = [identity2 displayName];
  v9 = [(CMContinuityCaptureParticipantInfo *)self initWithSocialProfileIdentifier:identifier displayName:displayName];

  return v9;
}

- (CMContinuityCaptureParticipantInfo)initWithSocialProfileIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = nameCopy;
  if (identifierCopy)
  {
    if (nameCopy)
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
    v11 = [identifierCopy copy];
    socialProfileIdentifier = v10->_socialProfileIdentifier;
    v10->_socialProfileIdentifier = v11;

    v13 = [v9 copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;
  }

  return v10;
}

- (CMContinuityCaptureParticipantInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"displayName"];
  v6 = [dictionaryCopy objectForKey:@"socialProfileIdentifier"];

  v7 = [(CMContinuityCaptureParticipantInfo *)self initWithSocialProfileIdentifier:v6 displayName:v5];
  return v7;
}

- (CMContinuityCaptureParticipantInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureParticipantInfo;
  v5 = [(CMContinuityCaptureParticipantInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"socialProfileIdentifier"];
    socialProfileIdentifier = v5->_socialProfileIdentifier;
    v5->_socialProfileIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  [coderCopy encodeObject:socialProfileIdentifier forKey:@"socialProfileIdentifier"];

  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  v6 = [socialProfileIdentifier copy];
  [v4 setSocialProfileIdentifier:v6];

  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
  v8 = [displayName copy];
  [v4 setDisplayName:v8];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(CMContinuityCaptureParticipantInfo *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
    displayName2 = [(CMContinuityCaptureParticipantInfo *)v5 displayName];
    if (displayName | displayName2 && ![displayName isEqual:displayName2])
    {
      v10 = 0;
    }

    else
    {
      socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
      socialProfileIdentifier2 = [(CMContinuityCaptureParticipantInfo *)v5 socialProfileIdentifier];
      if (socialProfileIdentifier | socialProfileIdentifier2)
      {
        v10 = [socialProfileIdentifier isEqual:socialProfileIdentifier2];
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
  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  v6 = [v3 initWithFormat:@"<CMContinuityCaptureParticipantInfo displayName:%@ socialProfileIdentifier:%@>", displayName, socialProfileIdentifier];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];

  if (socialProfileIdentifier)
  {
    socialProfileIdentifier2 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
    v6 = [socialProfileIdentifier2 copy];
    [v3 setObject:v6 forKeyedSubscript:@"socialProfileIdentifier"];
  }

  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(CMContinuityCaptureParticipantInfo *)self displayName];
    v9 = [displayName2 copy];
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