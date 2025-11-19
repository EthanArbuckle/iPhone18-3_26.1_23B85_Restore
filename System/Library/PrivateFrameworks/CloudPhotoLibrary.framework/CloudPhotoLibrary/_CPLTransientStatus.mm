@interface _CPLTransientStatus
- (CPLRecordStatus)status;
- (_CPLTransientStatus)initWithRecord:(id)a3 generation:(unint64_t)a4 date:(id)a5;
@end

@implementation _CPLTransientStatus

- (CPLRecordStatus)status
{
  v2 = [[CPLRecordStatus alloc] initWithRecord:self->_record generation:self->_generation];

  return v2;
}

- (_CPLTransientStatus)initWithRecord:(id)a3 generation:(unint64_t)a4 date:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _CPLTransientStatus;
  v11 = [(_CPLTransientStatus *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_record, a3);
    v12->_generation = a4;
    objc_storeStrong(&v12->_date, a5);
  }

  return v12;
}

@end