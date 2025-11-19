@interface CDMServiceGraphProtoBackedCommand
+ (Class)innerProtoType;
+ (id)innerProtoPropertyName;
- (CDMServiceGraphProtoBackedCommand)initWithCoder:(id)a3;
- (id)loggingRequestID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMServiceGraphProtoBackedCommand

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CDMServiceGraphProtoBackedCommand;
  v4 = a3;
  [(CDMServiceGraphCommand *)&v8 encodeWithCoder:v4];
  v5 = [objc_opt_class() innerProtoPropertyName];
  v6 = [(CDMServiceGraphProtoBackedCommand *)self valueForKey:v5];
  v7 = [v6 data];

  [v4 encodeObject:v7 forKey:@"innerProtoCodingKey"];
}

- (CDMServiceGraphProtoBackedCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDMServiceGraphProtoBackedCommand;
  v5 = [(CDMServiceGraphCommand *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [objc_opt_class() innerProtoType];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"innerProtoCodingKey"];
    v8 = [[v6 alloc] initWithData:v7];
    v9 = [objc_opt_class() innerProtoPropertyName];
    [(CDMServiceGraphProtoBackedCommand *)v5 setValue:v8 forKey:v9];
  }

  return v5;
}

- (id)loggingRequestID
{
  v3 = [objc_opt_class() innerProtoPropertyName];
  v4 = [(CDMServiceGraphProtoBackedCommand *)self valueForKey:v3];

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