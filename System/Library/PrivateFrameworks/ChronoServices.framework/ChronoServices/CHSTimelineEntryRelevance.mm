@interface CHSTimelineEntryRelevance
- (BOOL)isEqual:(id)equal;
- (CHSTimelineEntryRelevance)initWithCoder:(id)coder;
- (CHSTimelineEntryRelevance)initWithDate:(id)date;
- (CHSTimelineEntryRelevance)initWithDate:(id)date score:(double)score duration:(double)duration;
- (CHSTimelineEntryRelevance)initWithTimelineEntryRelevance:(id)relevance;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSTimelineEntryRelevance

- (CHSTimelineEntryRelevance)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = CHSTimelineEntryRelevance;
  v6 = [(CHSTimelineEntryRelevance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
    v7->_hasRelevance = 0;
    v7->_score = 0.0;
    v7->_duration = 0.0;
  }

  return v7;
}

- (CHSTimelineEntryRelevance)initWithDate:(id)date score:(double)score duration:(double)duration
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = CHSTimelineEntryRelevance;
  v10 = [(CHSTimelineEntryRelevance *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_date, date);
    v11->_hasRelevance = 1;
    v11->_score = score;
    v11->_duration = duration;
  }

  return v11;
}

- (CHSTimelineEntryRelevance)initWithTimelineEntryRelevance:(id)relevance
{
  relevanceCopy = relevance;
  v8.receiver = self;
  v8.super_class = CHSTimelineEntryRelevance;
  v5 = [(CHSTimelineEntryRelevance *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_date, relevanceCopy[2]);
    v6->_hasRelevance = *(relevanceCopy + 8);
    *&v6->_score = relevanceCopy[3];
    *&v6->_duration = relevanceCopy[4];
  }

  return v6;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_date];
  v5 = [builder appendBool:self->_hasRelevance];
  v6 = [builder appendDouble:self->_score];
  v7 = [builder appendDouble:self->_duration];
  v8 = [builder hash];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  date = self->_date;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__CHSTimelineEntryRelevance_isEqual___block_invoke;
  v28[3] = &unk_1E7453078;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendObject:date counterpart:v28];
  hasRelevance = self->_hasRelevance;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__CHSTimelineEntryRelevance_isEqual___block_invoke_2;
  v26[3] = &unk_1E7452FB0;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:hasRelevance counterpart:v26];
  if (self->_hasRelevance)
  {
    score = self->_score;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __37__CHSTimelineEntryRelevance_isEqual___block_invoke_3;
    v24[3] = &unk_1E74530A0;
    v13 = v10;
    v25 = v13;
    v14 = [v5 appendDouble:v24 counterpart:score];
    duration = self->_duration;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __37__CHSTimelineEntryRelevance_isEqual___block_invoke_4;
    v22 = &unk_1E74530A0;
    v23 = v13;
    v16 = [v5 appendDouble:&v19 counterpart:duration];
  }

  v17 = [v5 isEqual];

  return v17;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_date withName:@"date"];
  v5 = [v3 appendBool:self->_hasRelevance withName:@"hasRelevance"];
  if (self->_hasRelevance)
  {
    v6 = [v3 appendFloat:@"score" withName:self->_score];
    v7 = [v3 appendTimeInterval:@"duration" withName:0 decomposeUnits:self->_duration];
  }

  build = [v3 build];

  return build;
}

- (CHSTimelineEntryRelevance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CHSTimelineEntryRelevance;
  v5 = [(CHSTimelineEntryRelevance *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v6;

    v5->_hasRelevance = [coderCopy decodeBoolForKey:@"hasRelevance"];
    [coderCopy decodeDoubleForKey:@"score"];
    v5->_score = v8;
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_date forKey:@"date"];
  [coderCopy encodeBool:self->_hasRelevance forKey:@"hasRelevance"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
}

@end