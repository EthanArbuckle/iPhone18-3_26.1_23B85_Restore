@interface BMStream
- (id)pruner;
- (id)prunerForDevice:(id)a3;
- (id)publisher;
- (id)publisherWithOptions:(id)a3;
- (id)publisherWithUseCase:(id)a3;
- (id)publisherWithUseCase:(id)a3 options:(id)a4;
- (id)source;
@end

@implementation BMStream

- (id)source
{
  v4.receiver = self;
  v4.super_class = BMStream;
  v2 = [(BMStreamBase *)&v4 source];

  return v2;
}

- (id)publisher
{
  v4.receiver = self;
  v4.super_class = BMStream;
  v2 = [(BMStreamBase *)&v4 publisher];

  return v2;
}

- (id)pruner
{
  v4.receiver = self;
  v4.super_class = BMStream;
  v2 = [(BMStreamBase *)&v4 pruner];

  return v2;
}

- (id)publisherWithUseCase:(id)a3
{
  v5.receiver = self;
  v5.super_class = BMStream;
  v3 = [(BMStreamBase *)&v5 publisherWithUseCase:a3];

  return v3;
}

- (id)publisherWithOptions:(id)a3
{
  v5.receiver = self;
  v5.super_class = BMStream;
  v3 = [(BMStreamBase *)&v5 publisherWithOptions:a3];

  return v3;
}

- (id)publisherWithUseCase:(id)a3 options:(id)a4
{
  v6.receiver = self;
  v6.super_class = BMStream;
  v4 = [(BMStreamBase *)&v6 publisherWithUseCase:a3 options:a4];

  return v4;
}

- (id)prunerForDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = BMStream;
  v3 = [(BMStreamBase *)&v5 prunerForDevice:a3];

  return v3;
}

@end