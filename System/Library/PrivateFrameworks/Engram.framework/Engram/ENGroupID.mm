@interface ENGroupID
- (BOOL)compare:(id)compare withResult:(int64_t *)result error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (ENGroupID)initWithCoder:(id)coder;
- (ENGroupID)initWithDataRepresentation:(id)representation;
- (ENGroupID)initWithStableGroupID:(id)d generation:(int)generation;
- (NSData)dataRepresentation;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENGroupID

- (ENGroupID)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = +[ENStableGroupID stableGroupIDLength];
  if ([representationCopy length] == v5 + 4)
  {
    v6 = [representationCopy subdataWithRange:{0, v5}];
    v7 = [representationCopy subdataWithRange:{v5, 4}];
    v8 = [[ENStableGroupID alloc] initWithDataRepresentation:v6];
    if (v8)
    {
      v11 = -1431655766;
      [v7 getBytes:&v11 length:4];
      self = [(ENGroupID *)self initWithStableGroupID:v8 generation:v11];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    v6 = +[ENLog groupID];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_24A059538(representationCopy, v6);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ENGroupID)initWithStableGroupID:(id)d generation:(int)generation
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ENGroupID;
  v8 = [(ENGroupID *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stableGroupID, d);
    v9->_generation = generation;
  }

  return v9;
}

- (ENGroupID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENGroupIDStableGroupID"];
  v6 = [coderCopy decodeInt32ForKey:@"kENGroupIDGeneration"];

  v7 = [(ENGroupID *)self initWithStableGroupID:v5 generation:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stableGroupID = [(ENGroupID *)self stableGroupID];
  [coderCopy encodeObject:stableGroupID forKey:@"kENGroupIDStableGroupID"];

  [coderCopy encodeInt32:-[ENGroupID generation](self forKey:{"generation"), @"kENGroupIDGeneration"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    stableGroupID = [(ENGroupID *)self stableGroupID];
    stableGroupID2 = [v5 stableGroupID];
    if ([stableGroupID isEqual:stableGroupID2])
    {
      generation = [(ENGroupID *)self generation];
      v9 = generation == [v5 generation];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  generation = [(ENGroupID *)self generation];
  stableGroupID = [(ENGroupID *)self stableGroupID];
  v5 = [stableGroupID hash] + 23 * generation;

  return v5 + 8993;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  stableGroupID = [(ENGroupID *)self stableGroupID];
  v6 = [v3 stringWithFormat:@"<%@: %p stableGroupID: %@ generation: %d>", v4, self, stableGroupID, -[ENGroupID generation](self, "generation")];

  return v6;
}

- (NSData)dataRepresentation
{
  stableGroupID = [(ENGroupID *)self stableGroupID];
  _mutableDataRepresentation = [stableGroupID _mutableDataRepresentation];
  v5 = [_mutableDataRepresentation mutableCopy];

  [v5 appendBytes:&self->_generation length:4];

  return v5;
}

- (BOOL)compare:(id)compare withResult:(int64_t *)result error:(id *)error
{
  compareCopy = compare;
  stableGroupID = [(ENGroupID *)self stableGroupID];
  stableGroupID2 = [compareCopy stableGroupID];
  v11 = [stableGroupID isEqual:stableGroupID2];

  if (v11)
  {
    generation = [compareCopy generation];
    generation2 = [(ENGroupID *)self generation];
    generation3 = [compareCopy generation];
    generation4 = [(ENGroupID *)self generation];
    if (result)
    {
      if (generation <= generation2)
      {
        v16 = 0;
      }

      else
      {
        v16 = -1;
      }

      if (generation3 < generation4)
      {
        v16 = 1;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:ENGroupIDErrorDomain code:-1000 userInfo:0];
    }

    if (result)
    {
      v16 = 0;
LABEL_13:
      *result = v16;
    }
  }

  return v11;
}

@end