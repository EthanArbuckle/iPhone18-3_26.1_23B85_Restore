@interface SYObjectWrapper
- (NSString)description;
- (SYObjectWrapper)initWithSYObject:(id)a3 type:(int64_t)a4;
@end

@implementation SYObjectWrapper

- (SYObjectWrapper)initWithSYObject:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SYObjectWrapper;
  v8 = [(SYObjectWrapper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedObject, a3);
    v9->_type = a4;
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
  v5 = [(SYObjectWrapper *)self objectIdentifier];
  v6 = [(SYObjectWrapper *)self sequencer];
  v7 = [v3 initWithFormat:@"%@ (objectIdentifier: %@, sequencer: %@, changeType: %d, wrappedObject: %@)", v4, v5, v6, -[SYObjectWrapper changeType](self, "changeType"), self->_wrappedObject];

  return v7;
}

@end