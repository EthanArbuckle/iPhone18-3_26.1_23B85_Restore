@interface DTTapStatusMemo
- (DTTapStatusMemo)initWithStatus:(unsigned int)a3 notice:(id)a4 info:(id)a5 timestamp:(unint64_t)a6;
@end

@implementation DTTapStatusMemo

- (DTTapStatusMemo)initWithStatus:(unsigned int)a3 notice:(id)a4 info:(id)a5 timestamp:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = DTTapStatusMemo;
  v13 = [(DTTapStatusMemo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    *(v13 + 3) = a3;
    objc_storeStrong(v13 + 3, a4);
    objc_storeStrong(&v14->_notice, a5);
    *&v14->_status = a6;
  }

  return v14;
}

@end