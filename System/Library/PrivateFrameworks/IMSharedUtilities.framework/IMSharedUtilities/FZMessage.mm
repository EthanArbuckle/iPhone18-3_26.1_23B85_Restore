@interface FZMessage
- (FZMessage)initWithCoder:(id)coder;
- (FZMessage)initWithIMRemoteObjectSerializedDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary;
@end

@implementation FZMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FZMessage;
  return [(IMMessageItem *)&v4 copyWithZone:zone];
}

- (FZMessage)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = FZMessage;
  return [(IMMessageItem *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = FZMessage;
  [(IMMessageItem *)&v3 encodeWithCoder:coder];
}

- (void)encodeWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  v3.receiver = self;
  v3.super_class = FZMessage;
  [(IMItem *)&v3 encodeWithIMRemoteObjectSerializedDictionary:dictionary];
}

- (FZMessage)initWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = FZMessage;
  return [(IMItem *)&v4 initWithIMRemoteObjectSerializedDictionary:dictionary];
}

@end