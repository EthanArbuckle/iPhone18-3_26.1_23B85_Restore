@interface CPLSimpleRecordView
- (CPLSimpleRecordView)initWithRecord:(id)a3;
@end

@implementation CPLSimpleRecordView

- (CPLSimpleRecordView)initWithRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPLSimpleRecordView;
  v6 = [(CPLSimpleRecordView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_synthesizedRecord, a3);
  }

  return v7;
}

@end