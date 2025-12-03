@interface CRKConcreteFileDescriptor
- (BOOL)changeFlags:(unsigned int)flags error:(id *)error;
- (BOOL)fetchFlags:(unsigned int *)flags error:(id *)error;
- (CRKConcreteFileDescriptor)initWithRawValue:(int)value;
- (int)rawValue;
- (void)close;
- (void)dealloc;
- (void)rawValue;
@end

@implementation CRKConcreteFileDescriptor

- (void)dealloc
{
  [(CRKConcreteFileDescriptor *)self close];
  v3.receiver = self;
  v3.super_class = CRKConcreteFileDescriptor;
  [(CRKConcreteFileDescriptor *)&v3 dealloc];
}

- (CRKConcreteFileDescriptor)initWithRawValue:(int)value
{
  v3 = *&value;
  v8.receiver = self;
  v8.super_class = CRKConcreteFileDescriptor;
  v4 = [(CRKConcreteFileDescriptor *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    backingValue = v4->_backingValue;
    v4->_backingValue = v5;
  }

  return v4;
}

- (int)rawValue
{
  backingValue = [(CRKConcreteFileDescriptor *)self backingValue];

  if (!backingValue)
  {
    [(CRKConcreteFileDescriptor *)a2 rawValue];
  }

  backingValue2 = [(CRKConcreteFileDescriptor *)self backingValue];
  intValue = [backingValue2 intValue];

  return intValue;
}

- (void)close
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  verboseDescription = [a2 verboseDescription];
  v5 = 138543362;
  v6 = verboseDescription;
  _os_log_error_impl(&dword_243550000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to close file descriptor. Error: %{public}@", &v5, 0xCu);
}

- (BOOL)fetchFlags:(unsigned int *)flags error:(id *)error
{
  v6 = fstat([(CRKConcreteFileDescriptor *)self rawValue:0], &v8);
  if (v6)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] crk_errorWithPOSIXCode:*__error()];
    }
  }

  else if (flags)
  {
    *flags = v8.st_flags;
  }

  return v6 == 0;
}

- (BOOL)changeFlags:(unsigned int)flags error:(id *)error
{
  v5 = fchflags([(CRKConcreteFileDescriptor *)self rawValue], flags);
  v6 = v5;
  if (error && v5)
  {
    *error = [MEMORY[0x277CCA9B8] crk_errorWithPOSIXCode:*__error()];
  }

  return v6 == 0;
}

- (void)rawValue
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"CRKConcreteFileDescriptor.m" lineNumber:45 description:@"Attempted to access raw value after closing file descriptor"];
}

@end