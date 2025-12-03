@interface UARPStandaloneCommandReplyRecord
- (UARPStandaloneCommandReplyRecord)initWithCoder:(id)coder;
- (UARPStandaloneCommandReplyRecord)initWithModelNumber:(id)number;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getResponseURLs;
- (void)addResponseURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPStandaloneCommandReplyRecord

- (UARPStandaloneCommandReplyRecord)initWithModelNumber:(id)number
{
  numberCopy = number;
  v11.receiver = self;
  v11.super_class = UARPStandaloneCommandReplyRecord;
  v5 = [(UARPStandaloneCommandReplyRecord *)&v11 init];
  if (v5)
  {
    v6 = [numberCopy copy];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v6;

    v8 = objc_opt_new();
    solicitedURLResponses = v5->_solicitedURLResponses;
    v5->_solicitedURLResponses = v8;
  }

  return v5;
}

- (void)addResponseURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_solicitedURLResponses addObject:lCopy];
  objc_sync_exit(selfCopy);
}

- (id)getResponseURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:selfCopy->_solicitedURLResponses];
  objc_sync_exit(selfCopy);

  return v3;
}

- (UARPStandaloneCommandReplyRecord)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = UARPStandaloneCommandReplyRecord;
  v5 = [(UARPStandaloneCommandReplyRecord *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"responseURLs"];
    solicitedURLResponses = v5->_solicitedURLResponses;
    v5->_solicitedURLResponses = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modelNumber = self->_modelNumber;
  coderCopy = coder;
  [coderCopy encodeObject:modelNumber forKey:@"modelNumber"];
  [coderCopy encodeObject:self->_solicitedURLResponses forKey:@"responseURLs"];
}

- (id)copyWithZone:(_NSZone *)zone
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