@interface IMPersistentTaskExecutorStatusReport
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStatusReport:(id)report;
- (IMPersistentTaskExecutorStatusReport)initWithCoder:(id)coder;
- (IMPersistentTaskExecutorStatusReport)initWithGroupName:(id)name lane:(unint64_t)lane runResult:(int64_t)result status:(int64_t)status taskReports:(id)reports;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMPersistentTaskExecutorStatusReport

- (IMPersistentTaskExecutorStatusReport)initWithGroupName:(id)name lane:(unint64_t)lane runResult:(int64_t)result status:(int64_t)status taskReports:(id)reports
{
  nameCopy = name;
  reportsCopy = reports;
  v18.receiver = self;
  v18.super_class = IMPersistentTaskExecutorStatusReport;
  v15 = [(IMPersistentTaskExecutorStatusReport *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_groupName, name);
    v16->_lane = lane;
    v16->_runResult = result;
    v16->_status = status;
    objc_storeStrong(&v16->_taskReports, reports);
  }

  return v16;
}

- (IMPersistentTaskExecutorStatusReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"g"];
  v6 = [coderCopy decodeIntegerForKey:@"l"];
  v7 = [coderCopy decodeIntegerForKey:@"r"];
  v8 = [coderCopy decodeIntegerForKey:@"s"];
  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"t"];

  v10 = [(IMPersistentTaskExecutorStatusReport *)self initWithGroupName:v5 lane:v6 runResult:v7 status:v8 taskReports:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  groupName = self->_groupName;
  coderCopy = coder;
  [coderCopy encodeObject:groupName forKey:@"g"];
  [coderCopy encodeInteger:self->_lane forKey:@"l"];
  [coderCopy encodeInteger:self->_runResult forKey:@"r"];
  [coderCopy encodeInteger:self->_status forKey:@"s"];
  [coderCopy encodeObject:self->_taskReports forKey:@"t"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [IMPersistentTaskExecutorStatusReport alloc];
  groupName = self->_groupName;
  lane = self->_lane;
  runResult = self->_runResult;
  status = self->_status;
  v10 = [(NSArray *)self->_taskReports copyWithZone:zone];
  v11 = [(IMPersistentTaskExecutorStatusReport *)v5 initWithGroupName:groupName lane:lane runResult:runResult status:status taskReports:v10];

  return v11;
}

- (BOOL)isEqualToStatusReport:(id)report
{
  reportCopy = report;
  v5 = [(NSString *)self->_groupName isEqualToString:reportCopy[1]]&& self->_lane == reportCopy[2] && self->_runResult == reportCopy[3] && self->_status == reportCopy[4] && self->_taskReports == reportCopy[5];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMPersistentTaskExecutorStatusReport *)self isEqualToStatusReport:equalCopy];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  groupName = [(IMPersistentTaskExecutorStatusReport *)self groupName];
  v5 = NSStringFromIMPersistentTaskLane([(IMPersistentTaskExecutorStatusReport *)self lane]);
  v6 = NSStringFromIMPersistentTaskRunResult([(IMPersistentTaskExecutorStatusReport *)self runResult]);
  v7 = NSStringFromIMPersistentTaskExecutorStatus([(IMPersistentTaskExecutorStatusReport *)self status]);
  v8 = [v3 stringWithFormat:@"<IMPersistentTaskExecutorStatusReport Group=%@ Lane=%@ RunResult=%@ Status=%@ />", groupName, v5, v6, v7];

  return v8;
}

@end