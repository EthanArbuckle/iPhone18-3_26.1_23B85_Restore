@interface geo_reentrant_isolater
- (geo_reentrant_isolater)initWithName:(const char *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation geo_reentrant_isolater

- (void)dealloc
{
  name = self->_name;
  if (name)
  {
    free(name);
  }

  v4.receiver = self;
  v4.super_class = geo_reentrant_isolater;
  [(geo_reentrant_isolater *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p: %s>", v5, self, self->_name];

  return v6;
}

- (geo_reentrant_isolater)initWithName:(const char *)a3
{
  v7.receiver = self;
  v7.super_class = geo_reentrant_isolater;
  v4 = [(geo_reentrant_isolater *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_name = strndup(a3, 0x1EuLL);
    v5->_lock = 0;
  }

  return v5;
}

@end