@interface CHSPlaceholderRequest
+ (id)new;
- (CHSPlaceholderRequest)init;
- (CHSPlaceholderRequest)initWithCoder:(id)coder;
- (CHSPlaceholderRequest)initWithMetrics:(id)metrics family:(int64_t)family fileHandle:(id)handle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSPlaceholderRequest

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSPlaceholderRequest.m" lineNumber:16 description:@"use initWithMetrics:family:fileHandle:"];

  return 0;
}

- (CHSPlaceholderRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSPlaceholderRequest.m" lineNumber:21 description:@"use initWithMetrics:family:fileHandle:"];

  return 0;
}

- (CHSPlaceholderRequest)initWithMetrics:(id)metrics family:(int64_t)family fileHandle:(id)handle
{
  metricsCopy = metrics;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = CHSPlaceholderRequest;
  v11 = [(CHSPlaceholderRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metrics, metrics);
    v12->_family = family;
    objc_storeStrong(&v12->_fileHandle, handle);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_family forKey:@"_family"];
  [coderCopy encodeObject:self->_metrics forKey:@"_metrics"];
  [coderCopy encodeObject:self->_fileHandle forKey:@"_fileHandle"];
}

- (CHSPlaceholderRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metrics"];
  v6 = [coderCopy decodeIntegerForKey:@"_family"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fileHandle"];
  v8 = v7;
  selfCopy = 0;
  if (v5 && v7)
  {
    if (CHSWidgetFamilyIsValid(v6))
    {
      self = [(CHSPlaceholderRequest *)self initWithMetrics:v5 family:v6 fileHandle:v8];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end