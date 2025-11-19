@interface CHSPlaceholderRequest
+ (id)new;
- (CHSPlaceholderRequest)init;
- (CHSPlaceholderRequest)initWithCoder:(id)a3;
- (CHSPlaceholderRequest)initWithMetrics:(id)a3 family:(int64_t)a4 fileHandle:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSPlaceholderRequest

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CHSPlaceholderRequest.m" lineNumber:16 description:@"use initWithMetrics:family:fileHandle:"];

  return 0;
}

- (CHSPlaceholderRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CHSPlaceholderRequest.m" lineNumber:21 description:@"use initWithMetrics:family:fileHandle:"];

  return 0;
}

- (CHSPlaceholderRequest)initWithMetrics:(id)a3 family:(int64_t)a4 fileHandle:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CHSPlaceholderRequest;
  v11 = [(CHSPlaceholderRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metrics, a3);
    v12->_family = a4;
    objc_storeStrong(&v12->_fileHandle, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_family forKey:@"_family"];
  [v4 encodeObject:self->_metrics forKey:@"_metrics"];
  [v4 encodeObject:self->_fileHandle forKey:@"_fileHandle"];
}

- (CHSPlaceholderRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_metrics"];
  v6 = [v4 decodeIntegerForKey:@"_family"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileHandle"];
  v8 = v7;
  v9 = 0;
  if (v5 && v7)
  {
    if (CHSWidgetFamilyIsValid(v6))
    {
      self = [(CHSPlaceholderRequest *)self initWithMetrics:v5 family:v6 fileHandle:v8];
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end