@interface IMPersistentTaskReport
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTaskReport:(id)report;
- (IMPersistentTaskReport)initWithCoder:(id)coder;
- (IMPersistentTaskReport)initWithTaskFlag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason;
- (id)_flagName;
- (id)_groupName;
- (id)_laneName;
- (id)_reasonName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMPersistentTaskReport

- (IMPersistentTaskReport)initWithTaskFlag:(unint64_t)flag lane:(unint64_t)lane reason:(int64_t)reason
{
  v9.receiver = self;
  v9.super_class = IMPersistentTaskReport;
  result = [(IMPersistentTaskReport *)&v9 init];
  if (result)
  {
    result->_flag = flag;
    result->_lane = lane;
    result->_reason = reason;
    result->_count = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  flag = self->_flag;
  coderCopy = coder;
  [coderCopy encodeInteger:flag forKey:@"flag"];
  [coderCopy encodeInteger:self->_lane forKey:@"lane"];
  [coderCopy encodeInteger:self->_reason forKey:@"report"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
}

- (IMPersistentTaskReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[IMPersistentTaskReport initWithTaskFlag:lane:reason:](self, "initWithTaskFlag:lane:reason:", [coderCopy decodeIntegerForKey:@"flag"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"lane"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"report"));
  if (v5)
  {
    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (BOOL)isEqualToTaskReport:(id)report
{
  reportCopy = report;
  v5 = *&self->_flag == *(reportCopy + 8) && self->_reason == *(reportCopy + 3) && self->_count == *(reportCopy + 4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMPersistentTaskReport *)self isEqualToTaskReport:equalCopy];

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
  lane = [(IMPersistentTaskReport *)self lane];

  return NSStringFromIMPersistentTaskLane(lane);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  _groupName = [(IMPersistentTaskReport *)self _groupName];
  _flagName = [(IMPersistentTaskReport *)self _flagName];
  _laneName = [(IMPersistentTaskReport *)self _laneName];
  _reasonName = [(IMPersistentTaskReport *)self _reasonName];
  v8 = [v3 stringWithFormat:@"<IMPersistentTaskReport Group=%@ Flag=%@ Lane=%@ Reason=%@ Count=%lu>", _groupName, _flagName, _laneName, _reasonName, -[IMPersistentTaskReport count](self, "count")];

  return v8;
}

@end