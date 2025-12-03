@interface MTLGPUDebugBufferErrorLog
- (MTLGPUDebugBufferErrorLog)init;
- (id)description;
- (void)dealloc;
@end

@implementation MTLGPUDebugBufferErrorLog

- (MTLGPUDebugBufferErrorLog)init
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugBufferErrorLog;
  result = [(MTLGPUDebugBufferErrorLog *)&v3 init];
  result->_specifiedUsage = 128;
  return result;
}

- (id)description
{
  if (self->_addressSpace == 3)
  {
    label = 0;
  }

  else
  {
    buffer = self->_buffer;
    if (buffer && (v5 = [(MTLBuffer *)buffer label], buffer = self->_buffer, v5))
    {
      label = [(MTLBuffer *)buffer label];
    }

    else if (buffer)
    {
      label = @"<unnamed>";
    }

    else
    {
      label = @"<nil>";
    }
  }

  v6 = self->_buffer;
  if (!v6)
  {
    goto LABEL_24;
  }

  specifiedUsage = self->_specifiedUsage;
  v8 = @"Unknown";
  if (specifiedUsage <= 1)
  {
    v10 = @"Read Only";
    if (specifiedUsage != 1)
    {
      v10 = @"Unknown";
    }

    if (specifiedUsage)
    {
      v8 = v10;
    }

    else
    {
      v8 = @"No";
    }

    goto LABEL_22;
  }

  if (specifiedUsage == 2)
  {
    v8 = @"Write Only";
    goto LABEL_22;
  }

  if (specifiedUsage == 3)
  {
    v8 = @"Read Write";
    goto LABEL_22;
  }

  if (specifiedUsage != 128)
  {
LABEL_22:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, length:%llu, resident:%@", label, -[MTLBuffer length](v6, "length"), v8];
    goto LABEL_23;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, length:%llu", label, -[MTLBuffer length](v6, "length"), v21];
LABEL_23:
  label = v9;
LABEL_24:
  v11 = MEMORY[0x277CCACA8];
  addressSpace = self->_addressSpace;
  operation = self->_operation;
  v14 = MTLGPUOperationString();
  offset = self->_offset;
  functionDescription = [(MTLGPUDebugGPULog *)self functionDescription];
  v17 = [(MTLArgument *)self->_argument formattedDescription:4];
  if (label)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer: %@", label];
  }

  else
  {
    v18 = &stru_2841C04D0;
  }

  if (!v17)
  {
    v17 = &stru_2841C04D0;
  }

  if (addressSpace == 1)
  {
    v19 = @"device";
  }

  else
  {
    v19 = @"threadgroup";
  }

  return [v11 stringWithFormat:@"Invalid %@ %@ at offset %llu, executing %@ %@\n%@\n%@\n", v19, v14, offset, functionDescription, v17, v18, -[MTLGPUDebugGPULog locationDescription](self, "locationDescription")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugBufferErrorLog;
  [(MTLGPUDebugGPULog *)&v3 dealloc];
}

@end