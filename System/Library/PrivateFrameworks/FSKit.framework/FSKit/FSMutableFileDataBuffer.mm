@interface FSMutableFileDataBuffer
+ (id)dataWithCapacity:(unint64_t)a3;
+ (id)dataWithLength:(unint64_t)a3;
- (BOOL)ensureMappedMB:(unint64_t)a3;
- (FSMutableFileDataBuffer)initWithCapacity:(unint64_t)a3;
- (FSMutableFileDataBuffer)initWithCapacity:(unint64_t)a3 andLength:(unint64_t)a4;
- (FSMutableFileDataBuffer)initWithCoder:(id)a3;
- (id)initProxyFrom:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)mutableBytes;
- (void)withMutableBytes:(id)a3;
@end

@implementation FSMutableFileDataBuffer

- (FSMutableFileDataBuffer)initWithCapacity:(unint64_t)a3 andLength:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = FSMutableFileDataBuffer;
  v6 = [(FSMutableFileDataBuffer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    proxyOfBuffer = v6->_proxyOfBuffer;
    v6->_proxyOfBuffer = 0;

    v7->_internalCapacity = a3;
    v7->_length = a4;
    v9 = MEMORY[0x277D85F48];
    if (vm_allocate(*MEMORY[0x277D85F48], &v7->_vma, a3, -1778384895))
    {

      v7 = fskit_std_log();
      if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
      {
        [FSMutableFileDataBuffer initWithCapacity:andLength:];
      }

LABEL_12:

      return 0;
    }

    size = v7->_internalCapacity;
    if (mach_make_memory_entry_64(*v9, &size, v7->_vma, 4194371, &v7->_mp, 0))
    {

      v7 = fskit_std_log();
      if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
      {
        [FSMutableFileDataBuffer initWithCapacity:andLength:];
      }

      goto LABEL_12;
    }

    if (size < v7->_internalCapacity)
    {
      v10 = fskit_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(FSMutableFileDataBuffer *)&size initWithCapacity:v10 andLength:?];
      }

      goto LABEL_12;
    }
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_24A929000, a2, OS_LOG_TYPE_DEBUG, "FSFileDataBuffer: dealloc: error %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (id)dataWithLength:(unint64_t)a3
{
  v3 = [[FSMutableFileDataBuffer alloc] initWithLength:a3];

  return v3;
}

+ (id)dataWithCapacity:(unint64_t)a3
{
  v3 = [[FSMutableFileDataBuffer alloc] initWithCapacity:a3];

  return v3;
}

- (FSMutableFileDataBuffer)initWithCapacity:(unint64_t)a3
{
  v4 = [[FSMutableFileDataBuffer alloc] initWithCapacity:a3 andLength:0];

  return v4;
}

- (BOOL)ensureMappedMB:(unint64_t)a3
{
  address = a3;
  v4 = mach_vm_map(*MEMORY[0x277D85F48], &address, self->_internalCapacity, 0, 1, self->_mp, 0, 0, 67, 67, 2u);
  if (v4)
  {
    v5 = fskit_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FSMutableFileDataBuffer ensureMappedMB:];
    }
  }

  else
  {
    self->_vma = address;
  }

  return v4 == 0;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v6);
  }

  mp = self->_mp;
  v5 = xpc_mach_send_create();
  [v7 encodeInteger:self->_length forKey:@"FSKitBuff.len"];
  [v7 encodeXPCObject:v5 forKey:@"FSKitBuff.mp"];
  [v7 encodeInteger:self->_internalCapacity forKey:@"FSKitMBuff.cap"];
}

- (FSMutableFileDataBuffer)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FSMutableFileDataBuffer;
  v5 = [(FSMutableFileDataBuffer *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
      objc_exception_throw(v12);
    }

    v6 = [v4 decodeIntegerForKey:@"FSKitBuff.len"];
    v5->_internalCapacity = v6;
    v5->_length = v6;
    v7 = [v4 decodeXPCObjectOfType:MEMORY[0x277D864A0] forKey:@"FSKitBuff.mp"];
    v8 = [v4 decodeIntegerForKey:@"FSKitMBuff.cap"];
    v5->_internalCapacity = v8;
    if (v5->_length > v8)
    {
      v9 = fskit_std_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [FSMutableFileDataBuffer initWithCoder:];
      }

LABEL_11:

      v10 = 0;
      goto LABEL_12;
    }

    if (!v7)
    {
      v9 = fskit_std_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [FSMutableFileDataBuffer initWithCoder:];
      }

      goto LABEL_11;
    }

    v5->_mp = xpc_mach_send_copy_right();
  }

  v10 = v5;
LABEL_12:

  return v10;
}

- (void)mutableBytes
{
  if ([(FSMutableFileDataBuffer *)self ensureMapped])
  {
    return self->_vma;
  }

  else
  {
    return 0;
  }
}

- (void)withMutableBytes:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(FSMutableFileDataBuffer *)self mutableBytes]);
}

- (id)initProxyFrom:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = FSMutableFileDataBuffer;
  v6 = [(FSMutableFileDataBuffer *)&v8 init];
  if (v6)
  {
    v6->_internalCapacity = [v5 capacity];
    v6->_length = [v5 length];
    v6->_vma = [v5 vma];
    v6->_mp = [v5 mp];
    objc_storeStrong(&v6->_proxyOfBuffer, a3);
  }

  return v6;
}

- (void)initWithCapacity:andLength:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCapacity:andLength:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCapacity:(os_log_t)log andLength:.cold.3(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 136315650;
  v7 = "[FSMutableFileDataBuffer initWithCapacity:andLength:]";
  v8 = 2048;
  v9 = v3;
  v10 = 2048;
  v11 = v4;
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "%s: mach_make_memory_entry_64 gave us size %lu instead of %lu", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)ensureMappedMB:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end