@interface DEDSeedingFilerToken
- (DEDSeedingFilerToken)initWithEntityID:(id)a3 type:(int64_t)a4 token:(id)a5 dsid:(id)a6;
- (id)compiledEntityID;
@end

@implementation DEDSeedingFilerToken

- (DEDSeedingFilerToken)initWithEntityID:(id)a3 type:(int64_t)a4 token:(id)a5 dsid:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = DEDSeedingFilerToken;
  v13 = [(DEDSeedingFilerToken *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    entityID = v13->_entityID;
    v13->_entityID = v14;

    v13->_submissionType = a4;
    v16 = [v11 copy];
    token = v13->_token;
    v13->_token = v16;

    v18 = [v12 copy];
    dsid = v13->_dsid;
    v13->_dsid = v18;
  }

  return v13;
}

- (id)compiledEntityID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DEDSeedingFilerToken *)self submissionType];
  v5 = "Unknown";
  if (v4 == 2)
  {
    v5 = "FFU";
  }

  if (v4 == 1)
  {
    v6 = "FR";
  }

  else
  {
    v6 = v5;
  }

  v7 = [(DEDSeedingFilerToken *)self entityID];
  v8 = [v3 stringWithFormat:@"%s:%@", v6, v7];

  return v8;
}

@end