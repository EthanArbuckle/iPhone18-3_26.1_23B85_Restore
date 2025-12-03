@interface DTSysmonRecordEnumerator
- (DTSysmonRecordEnumerator)initWithHeartbeatTime:(unint64_t)time;
- (unint64_t)enumerateRecordsWithBlock:(id)block;
@end

@implementation DTSysmonRecordEnumerator

- (DTSysmonRecordEnumerator)initWithHeartbeatTime:(unint64_t)time
{
  v5.receiver = self;
  v5.super_class = DTSysmonRecordEnumerator;
  result = [(DTSysmonRecordEnumerator *)&v5 init];
  if (result)
  {
    result->_heartbeatTime = time;
  }

  return result;
}

- (unint64_t)enumerateRecordsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  samples = self->_samples;
  if (samples)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_247F7DDB8;
    v9[3] = &unk_278EF1AF0;
    v11 = &v12;
    v9[4] = self;
    v10 = blockCopy;
    [(NSArray *)samples enumerateObjectsUsingBlock:v9];

    heartbeatTime = v13[3];
  }

  else
  {
    heartbeatTime = self->_heartbeatTime;
    v15 = heartbeatTime;
  }

  _Block_object_dispose(&v12, 8);

  return heartbeatTime;
}

@end