@interface MFBasicMessageDataSection
- (void)setData:(id)data;
@end

@implementation MFBasicMessageDataSection

- (void)setData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x1E69AD6B8]) initWithData:dataCopy];
  dataHolder = self->_dataHolder;
  self->_dataHolder = v4;
}

@end