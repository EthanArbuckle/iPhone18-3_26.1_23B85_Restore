@interface DEDSeedingFilerToken
- (DEDSeedingFilerToken)initWithEntityID:(id)d type:(int64_t)type token:(id)token dsid:(id)dsid;
- (id)compiledEntityID;
@end

@implementation DEDSeedingFilerToken

- (DEDSeedingFilerToken)initWithEntityID:(id)d type:(int64_t)type token:(id)token dsid:(id)dsid
{
  dCopy = d;
  tokenCopy = token;
  dsidCopy = dsid;
  v21.receiver = self;
  v21.super_class = DEDSeedingFilerToken;
  v13 = [(DEDSeedingFilerToken *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    entityID = v13->_entityID;
    v13->_entityID = v14;

    v13->_submissionType = type;
    v16 = [tokenCopy copy];
    token = v13->_token;
    v13->_token = v16;

    v18 = [dsidCopy copy];
    dsid = v13->_dsid;
    v13->_dsid = v18;
  }

  return v13;
}

- (id)compiledEntityID
{
  v3 = MEMORY[0x277CCACA8];
  submissionType = [(DEDSeedingFilerToken *)self submissionType];
  v5 = "Unknown";
  if (submissionType == 2)
  {
    v5 = "FFU";
  }

  if (submissionType == 1)
  {
    v6 = "FR";
  }

  else
  {
    v6 = v5;
  }

  entityID = [(DEDSeedingFilerToken *)self entityID];
  v8 = [v3 stringWithFormat:@"%s:%@", v6, entityID];

  return v8;
}

@end