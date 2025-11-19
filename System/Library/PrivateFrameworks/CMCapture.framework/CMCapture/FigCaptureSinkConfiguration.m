@interface FigCaptureSinkConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureSinkConfiguration)initWithCoder:(id)a3;
- (FigCaptureSinkConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigCaptureSinkConfiguration

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(FigCaptureSinkConfiguration *)self sinkID];
  FigXPCMessageSetCFString();
  v4 = objc_opt_class();
  Name = class_getName(v4);
  xpc_dictionary_set_string(v3, "class", Name);
  xpc_dictionary_set_BOOL(v3, "deferredStartEnabled", [(FigCaptureSinkConfiguration *)self deferredStartEnabled]);
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (FigCaptureSinkConfiguration)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = FigCaptureSinkConfiguration;
    v4 = [(FigCaptureSinkConfiguration *)&v6 init];
    if (v4)
    {
      FigXPCMessageCopyCFString();
      v4->_deferredStartEnabled = xpc_dictionary_get_BOOL(a3, "deferredStartEnabled");
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (FigCaptureSinkConfiguration)initWithCoder:(id)a3
{
  v4 = [(FigCaptureSinkConfiguration *)self init];
  if (v4)
  {
    v4->_sinkID = [a3 decodeObjectOfClass:objc_opt_class() forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "sinkID")}];
    v4->_deferredStartEnabled = [a3 decodeBoolForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "deferredStartEnabled")}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_sinkID forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", "sinkID")}];
  deferredStartEnabled = self->_deferredStartEnabled;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"deferredStartEnabled"];

  [a3 encodeBool:deferredStartEnabled forKey:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSinkID:{-[FigCaptureSinkConfiguration sinkID](self, "sinkID")}];
  [v4 setDeferredStartEnabled:{-[FigCaptureSinkConfiguration deferredStartEnabled](self, "deferredStartEnabled")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11 = -[FigCaptureSinkConfiguration sinkType](self, "sinkType"), v11 == [a3 sinkType]))
    {
      v12 = [(FigCaptureSinkConfiguration *)self sinkID];
      if (v12 == [a3 sinkID] || (v13 = -[NSString isEqual:](-[FigCaptureSinkConfiguration sinkID](self, "sinkID"), "isEqual:", objc_msgSend(a3, "sinkID"))) != 0)
      {
        v14 = [(FigCaptureSinkConfiguration *)self deferredStartEnabled:v6];
        LOBYTE(v13) = v14 ^ [a3 deferredStartEnabled] ^ 1;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

@end