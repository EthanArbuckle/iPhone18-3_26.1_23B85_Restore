@interface OspreyConnectionHandle
- (OspreyConnectionHandle)initWithConnectionKey:(id)a3 willRelease:(id)a4;
- (void)dealloc;
@end

@implementation OspreyConnectionHandle

- (OspreyConnectionHandle)initWithConnectionKey:(id)a3 willRelease:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = OspreyConnectionHandle;
  v8 = [(OspreyConnectionHandle *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    connectionKey = v8->_connectionKey;
    v8->_connectionKey = v9;

    v11 = [v7 copy];
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