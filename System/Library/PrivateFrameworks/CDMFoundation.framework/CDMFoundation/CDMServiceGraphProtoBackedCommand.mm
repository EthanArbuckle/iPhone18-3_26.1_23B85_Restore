@interface CDMServiceGraphProtoBackedCommand
+ (Class)innerProtoType;
+ (id)innerProtoPropertyName;
- (CDMServiceGraphProtoBackedCommand)initWithCoder:(id)coder;
- (id)loggingRequestID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMServiceGraphProtoBackedCommand

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CDMServiceGraphProtoBackedCommand;
  coderCopy = coder;
  [(CDMServiceGraphCommand *)&v8 encodeWithCoder:coderCopy];
  innerProtoPropertyName = [objc_opt_class() innerProtoPropertyName];
  v6 = [(CDMServiceGraphProtoBackedCommand *)self valueForKey:innerProtoPropertyName];
  data = [v6 data];

  [coderCopy encodeObject:data forKey:@"innerProtoCodingKey"];
}

- (CDMServiceGraphProtoBackedCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CDMServiceGraphProtoBackedCommand;
  v5 = [(CDMServiceGraphCommand *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    innerProtoType = [objc_opt_class() innerProtoType];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"innerProtoCodingKey"];
    v8 = [[innerProtoType alloc] initWithData:v7];
    innerProtoPropertyName = [objc_opt_class() innerProtoPropertyName];
    [(CDMServiceGraphProtoBackedCommand *)v5 setValue:v8 forKey:innerProtoPropertyName];
  }

  return v5;
}

- (id)loggingRequestID
{
  innerProtoPropertyName = [objc_opt_class() innerProtoPropertyName];
  v4 = [(CDMServiceGraphProtoBackedCommand *)self valueForKey:innerProtoPropertyName];

  if (objc_opt_respondsToSelector())
  {
    v5 = @"requestId";
LABEL_7:
    v6 = [v4 valueForKey:v5];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = @"requestID";
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = @"nluRequestId";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)innerProtoPropertyName
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

+ (Class)innerProtoType
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

@end