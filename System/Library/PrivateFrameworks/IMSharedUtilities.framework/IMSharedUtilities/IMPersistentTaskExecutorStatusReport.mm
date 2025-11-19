@interface IMPersistentTaskExecutorStatusReport
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStatusReport:(id)a3;
- (IMPersistentTaskExecutorStatusReport)initWithCoder:(id)a3;
- (IMPersistentTaskExecutorStatusReport)initWithGroupName:(id)a3 lane:(unint64_t)a4 runResult:(int64_t)a5 status:(int64_t)a6 taskReports:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMPersistentTaskExecutorStatusReport

- (IMPersistentTaskExecutorStatusReport)initWithGroupName:(id)a3 lane:(unint64_t)a4 runResult:(int64_t)a5 status:(int64_t)a6 taskReports:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = IMPersistentTaskExecutorStatusReport;
  v15 = [(IMPersistentTaskExecutorStatusReport *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_groupName, a3);
    v16->_lane = a4;
    v16->_runResult = a5;
    v16->_status = a6;
    objc_storeStrong(&v16->_taskReports, a7);
  }

  return v16;
}

- (IMPersistentTaskExecutorStatusReport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"g"];
  v6 = [v4 decodeIntegerForKey:@"l"];
  v7 = [v4 decodeIntegerForKey:@"r"];
  v8 = [v4 decodeIntegerForKey:@"s"];
  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"t"];

  v10 = [(IMPersistentTaskExecutorStatusReport *)self initWithGroupName:v5 lane:v6 runResult:v7 status:v8 taskReports:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  groupName = self->_groupName;
  v5 = a3;
  [v5 encodeObject:groupName forKey:@"g"];
  [v5 encodeInteger:self->_lane forKey:@"l"];
  [v5 encodeInteger:self->_runResult forKey:@"r"];
  [v5 encodeInteger:self->_status forKey:@"s"];
  [v5 encodeObject:self->_taskReports forKey:@"t"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [IMPersistentTaskExecutorStatusReport alloc];
  groupName = self->_groupName;
  lane = self->_lane;
  runResult = self->_runResult;
  status = self->_status;
  v10 = [(NSArray *)self->_taskReports copyWithZone:a3];
  v11 = [(IMPersistentTaskExecutorStatusReport *)v5 initWithGroupName:groupName lane:lane runResult:runResult status:status taskReports:v10];

  return v11;
}

- (BOOL)isEqualToStatusReport:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_groupName isEqualToString:v4[1]]&& self->_lane == v4[2] && self->_runResult == v4[3] && self->_status == v4[4] && self->_taskReports == v4[5];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMPersistentTaskExecutorStatusReport *)self isEqualToStatusReport:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMPersistentTaskExecutorStatusReport *)self groupName];
  v5 = NSStringFromIMPersistentTaskLane([(IMPersistentTaskExecutorStatusReport *)self lane]);
  v6 = NSStringFromIMPersistentTaskRunResult([(IMPersistentTaskExecutorStatusReport *)self runResult]);
  v7 = NSStringFromIMPersistentTaskExecutorStatus([(IMPersistentTaskExecutorStatusReport *)self status]);
  v8 = [v3 stringWithFormat:@"<IMPersistentTaskExecutorStatusReport Group=%@ Lane=%@ RunResult=%@ Status=%@ />", v4, v5, v6, v7];

  return v8;
}

@end