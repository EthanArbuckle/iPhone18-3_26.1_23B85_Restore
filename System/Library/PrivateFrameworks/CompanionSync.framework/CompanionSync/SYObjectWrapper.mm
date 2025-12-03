@interface SYObjectWrapper
- (NSString)description;
- (SYObjectWrapper)initWithSYObject:(id)object type:(int64_t)type;
@end

@implementation SYObjectWrapper

- (SYObjectWrapper)initWithSYObject:(id)object type:(int64_t)type
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = SYObjectWrapper;
  v8 = [(SYObjectWrapper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedObject, object);
    v9->_type = type;
    v10 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = SYObjectWrapper;
  v4 = [(SYObjectWrapper *)&v9 description];
  objectIdentifier = [(SYObjectWrapper *)self objectIdentifier];
  sequencer = [(SYObjectWrapper *)self sequencer];
  v7 = [v3 initWithFormat:@"%@ (objectIdentifier: %@, sequencer: %@, changeType: %d, wrappedObject: %@)", v4, objectIdentifier, sequencer, -[SYObjectWrapper changeType](self, "changeType"), self->_wrappedObject];

  return v7;
}

@end