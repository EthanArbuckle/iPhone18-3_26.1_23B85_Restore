@interface CalRoute
- (CalRoute)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CalRoute

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  route = [(CalRoute *)self route];
  [v6 appendFormat:@"\n\troute: %@", route];

  [(CalRoute *)self duration];
  [v6 appendFormat:@"\n\tduration: %f", v8];
  start = [(CalRoute *)self start];
  [v6 appendFormat:@"\n\tstart: %@", start];

  v10 = [(CalRoute *)self end];
  [v6 appendFormat:@"\n\tend: %@", v10];

  return v6;
}

- (CalRoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CalRoute;
  v5 = [(CalRoute *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start"];
    v7 = [v6 copy];
    start = v5->_start;
    v5->_start = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"end"];
    v10 = [v9 copy];
    end = v5->_end;
    v5->_end = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"route"];
    v13 = [v12 copy];
    route = v5->_route;
    v5->_route = v13;

    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  start = [(CalRoute *)self start];
  [coderCopy encodeObject:start forKey:@"start"];

  v5 = [(CalRoute *)self end];
  [coderCopy encodeObject:v5 forKey:@"end"];

  route = [(CalRoute *)self route];
  [coderCopy encodeObject:route forKey:@"route"];

  [(CalRoute *)self duration];
  [coderCopy encodeDouble:@"duration" forKey:?];
}

@end