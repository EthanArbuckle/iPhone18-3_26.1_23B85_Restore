@interface CPLTransferSpeedFormatter
- (CPLTransferSpeedFormatter)init;
- (id)stringForObjectValue:(id)a3;
@end

@implementation CPLTransferSpeedFormatter

- (id)stringForObjectValue:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(NSByteCountFormatter *)self->_byteCountFormatter stringForObjectValue:v5];

  v8 = [v6 initWithFormat:@"%@/s", v7];

  return v8;
}

- (CPLTransferSpeedFormatter)init
{
  v6.receiver = self;
  v6.super_class = CPLTransferSpeedFormatter;
  v2 = [(CPLTransferSpeedFormatter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    byteCountFormatter = v2->_byteCountFormatter;
    v2->_byteCountFormatter = v3;

    [(NSByteCountFormatter *)v2->_byteCountFormatter setCountStyle:3];
  }

  return v2;
}

@end