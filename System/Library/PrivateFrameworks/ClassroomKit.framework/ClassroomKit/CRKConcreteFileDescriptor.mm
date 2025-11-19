@interface CRKConcreteFileDescriptor
- (BOOL)changeFlags:(unsigned int)a3 error:(id *)a4;
- (BOOL)fetchFlags:(unsigned int *)a3 error:(id *)a4;
- (CRKConcreteFileDescriptor)initWithRawValue:(int)a3;
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

- (CRKConcreteFileDescriptor)initWithRawValue:(int)a3
{
  v3 = *&a3;
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
  v4 = [(CRKConcreteFileDescriptor *)self backingValue];

  if (!v4)
  {
    [(CRKConcreteFileDescriptor *)a2 rawValue];
  }

  v5 = [(CRKConcreteFileDescriptor *)self backingValue];
  v6 = [v5 intValue];

  return v6;
}

- (void)close
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 verboseDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Failed to close file descriptor. Error: %{public}@", &v5, 0xCu);
}

- (BOOL)fetchFlags:(unsigned int *)a3 error:(id *)a4
{
  v6 = fstat([(CRKConcreteFileDescriptor *)self rawValue:0], &v8);
  if (v6)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] crk_errorWithPOSIXCode:*__error()];
    }
  }

  else if (a3)
  {
    *a3 = v8.st_flags;
  }

  return v6 == 0;
}

- (BOOL)changeFlags:(unsigned int)a3 error:(id *)a4
{
  v5 = fchflags([(CRKConcreteFileDescriptor *)self rawValue], a3);
  v6 = v5;
  if (a4 && v5)
  {
    *a4 = [MEMORY[0x277CCA9B8] crk_errorWithPOSIXCode:*__error()];
  }

  return v6 == 0;
}

- (void)rawValue
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKConcreteFileDescriptor.m" lineNumber:45 description:@"Attempted to access raw value after closing file descriptor"];
}

@end