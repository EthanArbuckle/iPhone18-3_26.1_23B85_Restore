@interface CPLSimpleRecordView
- (CPLSimpleRecordView)initWithRecord:(id)record;
@end

@implementation CPLSimpleRecordView

- (CPLSimpleRecordView)initWithRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = CPLSimpleRecordView;
  v6 = [(CPLSimpleRecordView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_synthesizedRecord, record);
  }

  return v7;
}

@end