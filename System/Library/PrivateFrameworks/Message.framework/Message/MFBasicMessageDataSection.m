@interface MFBasicMessageDataSection
- (void)setData:(id)a3;
@end

@implementation MFBasicMessageDataSection

- (void)setData:(id)a3
{
  v6 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69AD6B8]) initWithData:v6];
  dataHolder = self->_dataHolder;
  self->_dataHolder = v4;
}

@end