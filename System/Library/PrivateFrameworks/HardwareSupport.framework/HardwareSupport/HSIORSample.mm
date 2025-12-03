@interface HSIORSample
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSample:(id)sample;
- (HSIORSample)initWithIOReportSampleRef:(__CFDictionary *)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HSIORSample

- (HSIORSample)initWithIOReportSampleRef:(__CFDictionary *)ref
{
  v11.receiver = self;
  v11.super_class = HSIORSample;
  v4 = [(HSIORSample *)&v11 init];
  if (v4)
  {
    v5 = [[HSIORChannelDescription alloc] initWithIOReportChannelRef:ref];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  channelDescription = [(HSIORSample *)self channelDescription];
  v6 = [channelDescription copy];
  [v4 setChannelDescription:v6];

  v7 = [(HSIORSample *)self count];
  v8 = [v7 copy];
  [v4 setCount:v8];

  return v4;
}

- (unint64_t)hash
{
  channelDescription = [(HSIORSample *)self channelDescription];
  v4 = [channelDescription hash];
  v5 = [(HSIORSample *)self count];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIORSample *)self isEqualToSample:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSample:(id)sample
{
  sampleCopy = sample;
  channelDescription = [sampleCopy channelDescription];
  channelDescription2 = [(HSIORSample *)self channelDescription];
  v7 = [channelDescription isEqualToChannelDescription:channelDescription2];

  v8 = [sampleCopy count];
  if (!v8)
  {
    channelDescription2 = [(HSIORSample *)self count];
    if (!channelDescription2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [sampleCopy count];
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