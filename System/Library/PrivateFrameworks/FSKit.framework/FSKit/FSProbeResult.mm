@interface FSProbeResult
+ (FSContainerIdentifier)cantReadContainerID;
+ (FSProbeResult)notRecognizedProbeResult;
+ (FSProbeResult)resultWithResult:(int64_t)a3 name:(id)a4 containerID:(id)a5;
+ (FSProbeResult)usableButLimitedProbeResult;
+ (id)recognizedProbeResultWithName:(id)a3 containerID:(id)a4;
+ (id)usableButLimitedProbeResultWithName:(id)a3 containerID:(id)a4;
+ (id)usableProbeResultWithName:(id)a3 containerID:(id)a4;
- (FSProbeResult)initWithCoder:(id)a3;
- (FSProbeResult)initWithResult:(int64_t)a3 name:(id)a4 containerID:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSProbeResult

- (FSProbeResult)initWithResult:(int64_t)a3 name:(id)a4 containerID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = FSProbeResult;
  v10 = [(FSProbeResult *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_result = a3;
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    containerID = v11->_containerID;
    v11->_containerID = v14;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v7);
  }

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_result];
  [v8 encodeObject:v4 forKey:@"FSProbeResult.Result"];

  name = self->_name;
  if (name)
  {
    [v8 encodeObject:name forKey:@"FSProbeResult.Name"];
  }

  containerID = self->_containerID;
  if (containerID)
  {
    [v8 encodeObject:containerID forKey:@"FSProbeResult.UUID"];
  }
}

- (FSProbeResult)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v10);
  }

  self->_result = [v4 decodeIntForKey:@"FSProbeResult.Result"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSProbeResult.Name"];
  name = self->_name;
  self->_name = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSProbeResult.UUID"];
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
  v2 = [[a1 alloc] initWithResult:0 name:0 containerID:0];

  return v2;
}

+ (id)recognizedProbeResultWithName:(id)a3 containerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithResult:1 name:v7 containerID:v6];

  return v8;
}

+ (FSProbeResult)usableButLimitedProbeResult
{
  v2 = [a1 alloc];
  v3 = +[FSProbeResult cantReadContainerID];
  v4 = [v2 initWithResult:2 name:&stru_285DEFA28 containerID:v3];

  return v4;
}

+ (id)usableButLimitedProbeResultWithName:(id)a3 containerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithResult:2 name:v7 containerID:v6];

  return v8;
}

+ (id)usableProbeResultWithName:(id)a3 containerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithResult:3 name:v7 containerID:v6];

  return v8;
}

+ (FSProbeResult)resultWithResult:(int64_t)a3 name:(id)a4 containerID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithResult:a3 name:v9 containerID:v8];

  return v10;
}

+ (FSContainerIdentifier)cantReadContainerID
{
  v2 = +[(FSEntityIdentifier *)FSContainerIdentifier];
  v3 = [(FSEntityIdentifier *)[FSContainerIdentifier alloc] initWithUUID:v2 qualifier:0x100000000000000];

  return v3;
}

@end