@interface FSProbeResult
+ (FSContainerIdentifier)cantReadContainerID;
+ (FSProbeResult)notRecognizedProbeResult;
+ (FSProbeResult)resultWithResult:(int64_t)result name:(id)name containerID:(id)d;
+ (FSProbeResult)usableButLimitedProbeResult;
+ (id)recognizedProbeResultWithName:(id)name containerID:(id)d;
+ (id)usableButLimitedProbeResultWithName:(id)name containerID:(id)d;
+ (id)usableProbeResultWithName:(id)name containerID:(id)d;
- (FSProbeResult)initWithCoder:(id)coder;
- (FSProbeResult)initWithResult:(int64_t)result name:(id)name containerID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSProbeResult

- (FSProbeResult)initWithResult:(int64_t)result name:(id)name containerID:(id)d
{
  nameCopy = name;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = FSProbeResult;
  v10 = [(FSProbeResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_result = result;
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [dCopy copy];
    containerID = v11->_containerID;
    v11->_containerID = v14;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_result];
  [coderCopy encodeObject:v4 forKey:@"FSProbeResult.Result"];

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"FSProbeResult.Name"];
  }

  containerID = self->_containerID;
  if (containerID)
  {
    [coderCopy encodeObject:containerID forKey:@"FSProbeResult.UUID"];
  }
}

- (FSProbeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v10);
  }

  self->_result = [coderCopy decodeIntForKey:@"FSProbeResult.Result"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSProbeResult.Name"];
  name = self->_name;
  self->_name = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSProbeResult.UUID"];
  containerID = self->_containerID;
  self->_containerID = v7;

  return self;
}

- (id)description
{
  v3 = self->_result - 1;
  if (v3 > 2)
  {
    v4 = @"NotRecognized";
  }

  else
  {
    v4 = off_278FED490[v3];
  }

  if (self->_name)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" name '%@'", self->_name];
  }

  else
  {
    v5 = &stru_285DEFA28;
  }

  if (self->_containerID)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" container %@", self->_containerID];
  }

  else
  {
    v6 = &stru_285DEFA28;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"FSProbeResult %@%@%@", v4, v5, v6];

  return v7;
}

+ (FSProbeResult)notRecognizedProbeResult
{
  v2 = [[self alloc] initWithResult:0 name:0 containerID:0];

  return v2;
}

+ (id)recognizedProbeResultWithName:(id)name containerID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v8 = [[self alloc] initWithResult:1 name:nameCopy containerID:dCopy];

  return v8;
}

+ (FSProbeResult)usableButLimitedProbeResult
{
  v2 = [self alloc];
  v3 = +[FSProbeResult cantReadContainerID];
  v4 = [v2 initWithResult:2 name:&stru_285DEFA28 containerID:v3];

  return v4;
}

+ (id)usableButLimitedProbeResultWithName:(id)name containerID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v8 = [[self alloc] initWithResult:2 name:nameCopy containerID:dCopy];

  return v8;
}

+ (id)usableProbeResultWithName:(id)name containerID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v8 = [[self alloc] initWithResult:3 name:nameCopy containerID:dCopy];

  return v8;
}

+ (FSProbeResult)resultWithResult:(int64_t)result name:(id)name containerID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v10 = [[self alloc] initWithResult:result name:nameCopy containerID:dCopy];

  return v10;
}

+ (FSContainerIdentifier)cantReadContainerID
{
  v2 = +[(FSEntityIdentifier *)FSContainerIdentifier];
  v3 = [(FSEntityIdentifier *)[FSContainerIdentifier alloc] initWithUUID:v2 qualifier:0x100000000000000];

  return v3;
}

@end