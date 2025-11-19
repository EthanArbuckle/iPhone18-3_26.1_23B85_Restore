@interface HSIORSample
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSample:(id)a3;
- (HSIORSample)initWithIOReportSampleRef:(__CFDictionary *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HSIORSample

- (HSIORSample)initWithIOReportSampleRef:(__CFDictionary *)a3
{
  v11.receiver = self;
  v11.super_class = HSIORSample;
  v4 = [(HSIORSample *)&v11 init];
  if (v4)
  {
    v5 = [[HSIORChannelDescription alloc] initWithIOReportChannelRef:a3];
    channelDescription = v4->_channelDescription;
    v4->_channelDescription = v5;

    if (IOReportChannelGetFormat() == 1 && (IntegerValue = IOReportSimpleGetIntegerValue(), IntegerValue != 0x8000000000000000))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:IntegerValue];
    }

    else
    {
      v8 = 0;
    }

    count = v4->_count;
    v4->_count = v8;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HSIORSample *)self channelDescription];
  v6 = [v5 copy];
  [v4 setChannelDescription:v6];

  v7 = [(HSIORSample *)self count];
  v8 = [v7 copy];
  [v4 setCount:v8];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HSIORSample *)self channelDescription];
  v4 = [v3 hash];
  v5 = [(HSIORSample *)self count];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIORSample *)self isEqualToSample:v4];
  }

  return v5;
}

- (BOOL)isEqualToSample:(id)a3
{
  v4 = a3;
  v5 = [v4 channelDescription];
  v6 = [(HSIORSample *)self channelDescription];
  v7 = [v5 isEqualToChannelDescription:v6];

  v8 = [v4 count];
  if (!v8)
  {
    v6 = [(HSIORSample *)self count];
    if (!v6)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v4 count];
  v10 = [(HSIORSample *)self count];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v7 & v11;
}

@end