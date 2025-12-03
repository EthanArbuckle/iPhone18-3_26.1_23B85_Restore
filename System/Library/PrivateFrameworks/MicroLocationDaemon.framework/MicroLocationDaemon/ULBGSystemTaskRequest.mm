@interface ULBGSystemTaskRequest
- (ULBGSystemTaskRequest)initWithIdentifier:(id)identifier;
@end

@implementation ULBGSystemTaskRequest

- (ULBGSystemTaskRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = ULBGSystemTaskRequest;
  v5 = [(ULBGSystemTaskRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULBGSystemTaskRequest *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

@end