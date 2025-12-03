@interface RTSourceCoreRoutineLearnedLocation
- (BOOL)isEqual:(id)equal;
- (RTSourceCoreRoutineLearnedLocation)initWithCoder:(id)coder;
- (RTSourceCoreRoutineLearnedLocation)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceCoreRoutineLearnedLocation

- (RTSourceCoreRoutineLearnedLocation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineLearnedLocation;
  v5 = [(RTSourceCoreRoutineLearnedLocation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (RTSourceCoreRoutineLearnedLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RTSourceCoreRoutineLearnedLocation;
  v5 = [(RTSourceCoreRoutine *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTSourceCoreRoutineLearnedLocation;
  coderCopy = coder;
  [(RTSourceCoreRoutine *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"identifier", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;

  return [v4 initWithIdentifier:identifier];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = RTSourceCoreRoutineLearnedLocation;
  if ([(RTSource *)&v12 isEqual:equalCopy])
  {
    v6 = equalCopy;
    identifier = [(RTSourceCoreRoutineLearnedLocation *)self identifier];
    if (identifier || ([v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(RTSourceCoreRoutineLearnedLocation *)self identifier];
      identifier3 = [v6 identifier];
      v10 = [identifier2 isEqual:identifier3];

      if (identifier)
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
  identifier = [(RTSourceCoreRoutineLearnedLocation *)self identifier];
  v5 = [identifier hash];

  return v5 ^ v3;
}

@end