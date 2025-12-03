@interface CATTaskMessageStart
- (CATTaskMessageStart)initWithCoder:(id)coder;
- (CATTaskMessageStart)initWithTaskUUID:(id)d request:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATTaskMessageStart

- (CATTaskMessageStart)initWithTaskUUID:(id)d request:(id)request
{
  dCopy = d;
  requestCopy = request;
  if (!requestCopy)
  {
    [CATTaskMessageStart initWithTaskUUID:a2 request:self];
  }

  v12.receiver = self;
  v12.super_class = CATTaskMessageStart;
  v9 = [(CATTaskMessage *)&v12 initWithTaskUUID:dCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
  }

  return v10;
}

- (CATTaskMessageStart)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CATTaskMessageStart;
  v5 = [(CATTaskMessage *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"request"];
    request = v5->_request;
    v5->_request = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CATTaskMessageStart;
  coderCopy = coder;
  [(CATTaskMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CATTaskMessageStart *)self request:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"request"];
}

- (void)initWithTaskUUID:(uint64_t)a1 request:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskMessageStart.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

- (void)initWithCoder:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24329F000, log, OS_LOG_TYPE_ERROR, "%@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end