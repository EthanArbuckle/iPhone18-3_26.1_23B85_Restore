@interface ULBGSystemTaskRequest
- (ULBGSystemTaskRequest)initWithIdentifier:(id)a3;
@end

@implementation ULBGSystemTaskRequest

- (ULBGSystemTaskRequest)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ULBGSystemTaskRequest;
  v5 = [(ULBGSystemTaskRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULBGSystemTaskRequest *)v5 setIdentifier:v4];
  }

  return v6;
}

@end