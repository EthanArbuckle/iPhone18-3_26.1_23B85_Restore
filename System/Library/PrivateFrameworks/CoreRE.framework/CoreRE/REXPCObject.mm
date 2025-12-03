@interface REXPCObject
- (REXPCObject)init;
- (REXPCObject)initWithCoder:(id)coder;
- (REXPCObject)initWithObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REXPCObject

- (REXPCObject)init
{
  v3.receiver = self;
  v3.super_class = REXPCObject;
  return [(REXPCObject *)&v3 init];
}

- (REXPCObject)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = REXPCObject;
  v6 = [(REXPCObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (REXPCObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = REXPCObject;
  v5 = [(REXPCObject *)&v12 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = @"REXPCObject requires an NSXPCCoder";
LABEL_8:
    v10 = objectDecodeError(&v9->isa);
    [coderCopy failWithError:v10];

    v8 = 0;
    goto LABEL_9;
  }

  v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"object"];
  if (!v6)
  {
    v9 = @"REXPCObject failed to load";
    goto LABEL_8;
  }

  object = v5->_object;
  v5->_object = v6;

LABEL_5:
  v8 = v5;
LABEL_9:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [coderCopy encodeXPCObject:self->_object forKey:@"object"];
  }

  else
  {
    v4 = objectDecodeError(&cfstr_RexpcobjectReq.isa);
    [coderCopy failWithError:v4];
  }
}

@end