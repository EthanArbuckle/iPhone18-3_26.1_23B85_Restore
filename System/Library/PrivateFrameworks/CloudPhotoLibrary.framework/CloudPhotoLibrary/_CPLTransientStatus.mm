@interface _CPLTransientStatus
- (CPLRecordStatus)status;
- (_CPLTransientStatus)initWithRecord:(id)record generation:(unint64_t)generation date:(id)date;
@end

@implementation _CPLTransientStatus

- (CPLRecordStatus)status
{
  v2 = [[CPLRecordStatus alloc] initWithRecord:self->_record generation:self->_generation];

  return v2;
}

- (_CPLTransientStatus)initWithRecord:(id)record generation:(unint64_t)generation date:(id)date
{
  recordCopy = record;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = _CPLTransientStatus;
  v11 = [(_CPLTransientStatus *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, record);
    v12->_generation = generation;
    objc_storeStrong(&v12->_date, date);
  }

  return v12;
}

@end