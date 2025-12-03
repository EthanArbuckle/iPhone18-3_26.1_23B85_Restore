@interface OspreyConnectionHandle
- (OspreyConnectionHandle)initWithConnectionKey:(id)key willRelease:(id)release;
- (void)dealloc;
@end

@implementation OspreyConnectionHandle

- (OspreyConnectionHandle)initWithConnectionKey:(id)key willRelease:(id)release
{
  keyCopy = key;
  releaseCopy = release;
  v14.receiver = self;
  v14.super_class = OspreyConnectionHandle;
  v8 = [(OspreyConnectionHandle *)&v14 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    connectionKey = v8->_connectionKey;
    v8->_connectionKey = v9;

    v11 = [releaseCopy copy];
    willRelease = v8->_willRelease;
    v8->_willRelease = v11;
  }

  return v8;
}

- (void)dealloc
{
  willRelease = self->_willRelease;
  if (willRelease)
  {
    willRelease[2](willRelease, self);
  }

  v4.receiver = self;
  v4.super_class = OspreyConnectionHandle;
  [(OspreyConnectionHandle *)&v4 dealloc];
}

@end