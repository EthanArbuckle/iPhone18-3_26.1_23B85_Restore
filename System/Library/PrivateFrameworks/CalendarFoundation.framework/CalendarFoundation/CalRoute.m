@interface CalRoute
- (CalRoute)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalRoute

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  v7 = [(CalRoute *)self route];
  [v6 appendFormat:@"\n\troute: %@", v7];

  [(CalRoute *)self duration];
  [v6 appendFormat:@"\n\tduration: %f", v8];
  v9 = [(CalRoute *)self start];
  [v6 appendFormat:@"\n\tstart: %@", v9];

  v10 = [(CalRoute *)self end];
  [v6 appendFormat:@"\n\tend: %@", v10];

  return v6;
}

- (CalRoute)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CalRoute;
  v5 = [(CalRoute *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"start"];
    v7 = [v6 copy];
    start = v5->_start;
    v5->_start = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"end"];
    v10 = [v9 copy];
    end = v5->_end;
    v5->_end = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"route"];
    v13 = [v12 copy];
    route = v5->_route;
    v5->_route = v13;

    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CalRoute *)self start];
  [v7 encodeObject:v4 forKey:@"start"];

  v5 = [(CalRoute *)self end];
  [v7 encodeObject:v5 forKey:@"end"];

  v6 = [(CalRoute *)self route];
  [v7 encodeObject:v6 forKey:@"route"];

  [(CalRoute *)self duration];
  [v7 encodeDouble:@"duration" forKey:?];
}

@end