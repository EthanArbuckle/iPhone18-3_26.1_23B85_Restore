@interface RTSourceCoreRoutineLearnedLocation
- (BOOL)isEqual:(id)a3;
- (RTSourceCoreRoutineLearnedLocation)initWithCoder:(id)a3;
- (RTSourceCoreRoutineLearnedLocation)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceCoreRoutineLearnedLocation

- (RTSourceCoreRoutineLearnedLocation)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineLearnedLocation;
  v5 = [(RTSourceCoreRoutineLearnedLocation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (RTSourceCoreRoutineLearnedLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineLearnedLocation;
  v5 = [(RTSourceCoreRoutine *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = RTSourceCoreRoutineLearnedLocation;
  v4 = a3;
  [(RTSourceCoreRoutine *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"identifier", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;

  return [v4 initWithIdentifier:identifier];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RTSourceCoreRoutineLearnedLocation;
  if ([(RTSource *)&v12 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourceCoreRoutineLearnedLocation *)self identifier];
    if (v7 || ([v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourceCoreRoutineLearnedLocation *)self identifier];
      v9 = [v6 identifier];
      v10 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = RTSourceCoreRoutineLearnedLocation;
  v3 = [(RTSource *)&v7 hash];
  v4 = [(RTSourceCoreRoutineLearnedLocation *)self identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end