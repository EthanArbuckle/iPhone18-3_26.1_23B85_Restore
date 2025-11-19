@interface IMPersistentTaskReport
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTaskReport:(id)a3;
- (IMPersistentTaskReport)initWithCoder:(id)a3;
- (IMPersistentTaskReport)initWithTaskFlag:(unint64_t)a3 lane:(unint64_t)a4 reason:(int64_t)a5;
- (id)_flagName;
- (id)_groupName;
- (id)_laneName;
- (id)_reasonName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMPersistentTaskReport

- (IMPersistentTaskReport)initWithTaskFlag:(unint64_t)a3 lane:(unint64_t)a4 reason:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = IMPersistentTaskReport;
  result = [(IMPersistentTaskReport *)&v9 init];
  if (result)
  {
    result->_flag = a3;
    result->_lane = a4;
    result->_reason = a5;
    result->_count = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  flag = self->_flag;
  v5 = a3;
  [v5 encodeInteger:flag forKey:@"flag"];
  [v5 encodeInteger:self->_lane forKey:@"lane"];
  [v5 encodeInteger:self->_reason forKey:@"report"];
  [v5 encodeInteger:self->_count forKey:@"count"];
}

- (IMPersistentTaskReport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[IMPersistentTaskReport initWithTaskFlag:lane:reason:](self, "initWithTaskFlag:lane:reason:", [v4 decodeIntegerForKey:@"flag"], objc_msgSend(v4, "decodeIntegerForKey:", @"lane"), objc_msgSend(v4, "decodeIntegerForKey:", @"report"));
  if (v5)
  {
    v5->_count = [v4 decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (BOOL)isEqualToTaskReport:(id)a3
{
  v4 = a3;
  v5 = *&self->_flag == *(v4 + 8) && self->_reason == *(v4 + 3) && self->_count == *(v4 + 4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMPersistentTaskReport *)self isEqualToTaskReport:v4];

  return v5;
}

- (id)_groupName
{
  v3 = sub_1A8628DF4();
  [(IMPersistentTaskReport *)self flag];

  return MEMORY[0x1EEE66B58](v3, sel_groupNameForFlag_);
}

- (id)_flagName
{
  v3 = sub_1A8628DF4();
  [(IMPersistentTaskReport *)self flag];

  return MEMORY[0x1EEE66B58](v3, sel_nameForFlag_);
}

- (id)_reasonName
{
  v3 = sub_1A8628DF4();
  [(IMPersistentTaskReport *)self reason];
  [(IMPersistentTaskReport *)self flag];

  return MEMORY[0x1EEE66B58](v3, sel_nameForReason_inFlag_);
}

- (id)_laneName
{
  v2 = [(IMPersistentTaskReport *)self lane];

  return NSStringFromIMPersistentTaskLane(v2);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMPersistentTaskReport *)self _groupName];
  v5 = [(IMPersistentTaskReport *)self _flagName];
  v6 = [(IMPersistentTaskReport *)self _laneName];
  v7 = [(IMPersistentTaskReport *)self _reasonName];
  v8 = [v3 stringWithFormat:@"<IMPersistentTaskReport Group=%@ Flag=%@ Lane=%@ Reason=%@ Count=%lu>", v4, v5, v6, v7, -[IMPersistentTaskReport count](self, "count")];

  return v8;
}

@end