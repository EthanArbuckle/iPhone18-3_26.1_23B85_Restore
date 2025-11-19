@interface _KSControlFileController
- (BOOL)checkIfExists;
- (_KSControlFileController)initWithName:(id)a3 inDirectory:(id)a4;
- (id)description;
- (void)reset;
- (void)setContents:(id)a3;
@end

@implementation _KSControlFileController

- (_KSControlFileController)initWithName:(id)a3 inDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _KSControlFileController;
  v8 = [(_KSControlFileController *)&v15 init];
  if (v8)
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = [v6 stringByAppendingString:@".ctrl"];
    v11 = [v7 stringByAppendingPathComponent:v10];
    v12 = [v9 fileURLWithPath:v11];
    url = v8->_url;
    v8->_url = v12;
  }

  return v8;
}

- (BOOL)checkIfExists
{
  if (![(NSURL *)self->_url checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  url = self->_url;
  v8 = 0;
  v4 = [(NSURL *)url getResourceValue:&v8 forKey:*MEMORY[0x277CBE878] error:0];
  v5 = v8;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    [(_KSControlFileController *)self reset];
    v6 = 0;
  }

  return v6;
}

- (void)reset
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2557E2000, v2, v3, "%s  Failed to delete %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setContents:(id)a3
{
  v4 = a3;
  v5 = open([(NSURL *)self->_url fileSystemRepresentation], 1573, 384);
  if (v5 < 0)
  {
    v10 = KSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_KSControlFileController setContents:?];
    }
  }

  else
  {
    v6 = v5;
    if (v4)
    {
      write(v5, [v4 bytes], objc_msgSend(v4, "length"));
    }

    close(v6);
    url = self->_url;
    v8 = *MEMORY[0x277CBE878];
    v12 = 0;
    v9 = [(NSURL *)url setResourceValue:MEMORY[0x277CBEC38] forKey:v8 error:&v12];
    v10 = v12;
    if (!v9)
    {
      v11 = KSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_KSControlFileController setContents:?];
      }

      [(_KSControlFileController *)self reset];
    }
  }
}

- (id)description
{
  if (![(NSURL *)self->_url checkResourceIsReachableAndReturnError:0])
  {
    v8 = @"Absent";
    goto LABEL_12;
  }

  url = self->_url;
  v15 = 0;
  v4 = *MEMORY[0x277CBE878];
  v14 = 0;
  v5 = [(NSURL *)url getResourceValue:&v15 forKey:v4 error:&v14];
  v6 = v15;
  v7 = v14;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 BOOLValue])
      {
        v8 = @"Present";
      }

      else
      {
        v8 = @"Error: wrong tag value";
      }

      goto LABEL_11;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Error: bad tag '%@'", v6];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Error: not tagged (%@)", v7];
  }
  v8 = ;
LABEL_11:

LABEL_12:
  v9 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = _KSControlFileController;
  v10 = [(_KSControlFileController *)&v13 description];
  v11 = [v9 stringWithFormat:@"<%@ %@: %@>", v10, self->_url, v8];;

  return v11;
}

- (void)setContents:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v6[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v7 = v2;
  v8 = v3;
  _os_log_error_impl(&dword_2557E2000, v4, OS_LOG_TYPE_ERROR, "%s  Failed to mark %@ as non-backup: %@", v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setContents:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_2557E2000, v2, v3, "%s  Failed to create %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end