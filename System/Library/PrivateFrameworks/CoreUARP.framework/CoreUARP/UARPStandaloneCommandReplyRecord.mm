@interface UARPStandaloneCommandReplyRecord
- (UARPStandaloneCommandReplyRecord)initWithCoder:(id)a3;
- (UARPStandaloneCommandReplyRecord)initWithModelNumber:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getResponseURLs;
- (void)addResponseURL:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPStandaloneCommandReplyRecord

- (UARPStandaloneCommandReplyRecord)initWithModelNumber:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UARPStandaloneCommandReplyRecord;
  v5 = [(UARPStandaloneCommandReplyRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v6;

    v8 = objc_opt_new();
    solicitedURLResponses = v5->_solicitedURLResponses;
    v5->_solicitedURLResponses = v8;
  }

  return v5;
}

- (void)addResponseURL:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_solicitedURLResponses addObject:v5];
  objc_sync_exit(v4);
}

- (id)getResponseURLs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:v2->_solicitedURLResponses];
  objc_sync_exit(v2);

  return v3;
}

- (UARPStandaloneCommandReplyRecord)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = UARPStandaloneCommandReplyRecord;
  v5 = [(UARPStandaloneCommandReplyRecord *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"responseURLs"];
    solicitedURLResponses = v5->_solicitedURLResponses;
    v5->_solicitedURLResponses = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modelNumber = self->_modelNumber;
  v5 = a3;
  [v5 encodeObject:modelNumber forKey:@"modelNumber"];
  [v5 encodeObject:self->_solicitedURLResponses forKey:@"responseURLs"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UARPStandaloneCommandReplyRecord);
  v5 = [(NSString *)self->_modelNumber copy];
  modelNumber = v4->_modelNumber;
  v4->_modelNumber = v5;

  v7 = [(NSMutableArray *)self->_solicitedURLResponses copy];
  solicitedURLResponses = v4->_solicitedURLResponses;
  v4->_solicitedURLResponses = v7;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: modelNumber=%@ solicitedResponses=%@>", v5, self->_modelNumber, self->_solicitedURLResponses];

  return v6;
}

@end