@interface BMStream
- (id)pruner;
- (id)prunerForDevice:(id)device;
- (id)publisher;
- (id)publisherWithOptions:(id)options;
- (id)publisherWithUseCase:(id)case;
- (id)publisherWithUseCase:(id)case options:(id)options;
- (id)source;
@end

@implementation BMStream

- (id)source
{
  v4.receiver = self;
  v4.super_class = BMStream;
  source = [(BMStreamBase *)&v4 source];

  return source;
}

- (id)publisher
{
  v4.receiver = self;
  v4.super_class = BMStream;
  publisher = [(BMStreamBase *)&v4 publisher];

  return publisher;
}

- (id)pruner
{
  v4.receiver = self;
  v4.super_class = BMStream;
  pruner = [(BMStreamBase *)&v4 pruner];

  return pruner;
}

- (id)publisherWithUseCase:(id)case
{
  v5.receiver = self;
  v5.super_class = BMStream;
  v3 = [(BMStreamBase *)&v5 publisherWithUseCase:case];

  return v3;
}

- (id)publisherWithOptions:(id)options
{
  v5.receiver = self;
  v5.super_class = BMStream;
  v3 = [(BMStreamBase *)&v5 publisherWithOptions:options];

  return v3;
}

- (id)publisherWithUseCase:(id)case options:(id)options
{
  v6.receiver = self;
  v6.super_class = BMStream;
  v4 = [(BMStreamBase *)&v6 publisherWithUseCase:case options:options];

  return v4;
}

- (id)prunerForDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = BMStream;
  v3 = [(BMStreamBase *)&v5 prunerForDevice:device];

  return v3;
}

@end