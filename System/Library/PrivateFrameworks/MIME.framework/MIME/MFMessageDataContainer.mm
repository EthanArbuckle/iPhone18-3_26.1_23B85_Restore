@interface MFMessageDataContainer
- (MFMessageDataContainer)initWithData:(id)data;
- (MFMessageDataContainer)initWithData:(id)data partial:(BOOL)partial incomplete:(BOOL)incomplete;
@end

@implementation MFMessageDataContainer

- (MFMessageDataContainer)initWithData:(id)data partial:(BOOL)partial incomplete:(BOOL)incomplete
{
  result = [(MFMessageDataContainer *)self initWithData:data];
  if (result)
  {
    result->_partial = partial;
    result->_incomplete = incomplete;
  }

  return result;
}

- (MFMessageDataContainer)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = MFMessageDataContainer;
  v6 = [(MFMessageDataContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

@end