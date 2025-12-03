@interface BRFileObjectID
+ (BRFileObjectID)fileObjectIDWithString:(id)string;
+ (id)newFromSqliteValue:(sqlite3_value *)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFileObjectID:(id)d;
- (BOOL)isFpfsItem;
- (BRFileObjectID)initWithCoder:(id)coder;
- (NSNumber)documentID;
- (NSNumber)folderID;
- (NSNumber)itemDBRowID;
- (NSString)asString;
- (unint64_t)rawID;
- (void)asString;
- (void)documentID;
- (void)encodeWithCoder:(id)coder;
- (void)folderID;
- (void)itemDBRowID;
@end

@implementation BRFileObjectID

+ (BRFileObjectID)fileObjectIDWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E6967250]])
  {
LABEL_2:
    v4 = [BRDbRowObjectID alloc];
    v5 = 0;
    v6 = 0;
LABEL_9:
    v12 = [(BRDbRowObjectID *)v4 initWithRowID:v5 type:v6];
    goto LABEL_10;
  }

  if ([stringCopy isEqualToString:*MEMORY[0x1E6967168]])
  {
    v4 = [BRDbRowObjectID alloc];
    v5 = 1;
    v6 = 1;
    goto LABEL_9;
  }

  if ([stringCopy length])
  {
    uTF8String = [stringCopy UTF8String];
    v8 = *uTF8String;
    if ((v8 - 97) <= 0x13)
    {
      if (((1 << (v8 - 97)) & 0x2821) != 0)
      {
        v9 = uTF8String;
        v10 = [BRFileObjectTypeConverter toBRFileObjectIDType:v8];
        v11 = strtoul(v9 + 1, 0, 16);
        v4 = [BRDbRowObjectID alloc];
        v5 = v11;
        v6 = v10;
        goto LABEL_9;
      }

      if (v8 == 116)
      {
        v16 = brc_bread_crumbs("+[BRFileObjectID fileObjectIDWithString:]", 161);
        v17 = brc_default_log(0, 0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          +[BRFileObjectID fileObjectIDWithString:];
        }

        goto LABEL_2;
      }
    }

    v14 = brc_bread_crumbs("+[BRFileObjectID fileObjectIDWithString:]", 164);
    v15 = brc_default_log(0, 0);
    if (!os_log_type_enabled(v15, 0x90u))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (stringCopy)
  {
    v14 = brc_bread_crumbs("+[BRFileObjectID fileObjectIDWithString:]", 175);
    v15 = brc_default_log(0, 0);
    if (!os_log_type_enabled(v15, 0x90u))
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    +[BRFileObjectID fileObjectIDWithString:];
    goto LABEL_22;
  }

LABEL_23:
  v12 = 0;
LABEL_10:

  return v12;
}

+ (id)newFromSqliteValue:(sqlite3_value *)value
{
  v3 = [MEMORY[0x1E696AEC0] newFromSqliteValue:value];
  v4 = [objc_opt_class() fileObjectIDWithString:v3];

  return v4;
}

- (NSNumber)folderID
{
  v2 = brc_bread_crumbs("[BRFileObjectID folderID]", 210);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRFileObjectID folderID];
  }

  return 0;
}

- (NSNumber)documentID
{
  v2 = brc_bread_crumbs("[BRFileObjectID documentID]", 216);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRFileObjectID documentID];
  }

  return 0;
}

- (NSNumber)itemDBRowID
{
  v2 = brc_bread_crumbs("[BRFileObjectID itemDBRowID]", 222);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRFileObjectID itemDBRowID];
  }

  return 0;
}

- (NSString)asString
{
  v2 = brc_bread_crumbs("[BRFileObjectID asString]", 229);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRFileObjectID asString];
  }

  return 0;
}

- (unint64_t)rawID
{
  v2 = brc_bread_crumbs("[BRFileObjectID rawID]", 235);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRFileObjectID asString];
  }

  return 0;
}

- (BOOL)isFpfsItem
{
  v2 = brc_bread_crumbs("[BRFileObjectID isFpfsItem]", 256);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRFileObjectID asString];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = brc_bread_crumbs("[BRFileObjectID encodeWithCoder:]", 279);
  v4 = brc_default_log(0, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_fault_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: implemented in subclass%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BRFileObjectID)initWithCoder:(id)coder
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BRFileObjectID initWithCoder:]", 284);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_fault_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: implemented in subclass%@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)isEqualToFileObjectID:(id)d
{
  dCopy = d;
  if (dCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    rawID = [dCopy rawID];
    v6 = rawID == [(BRFileObjectID *)self rawID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRFileObjectID *)self isEqualToFileObjectID:equalCopy];
  }

  return v5;
}

+ (void)fileObjectIDWithString:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: NSFileProviderRootContainerItemIdentifier should have special behavior while building fileObjectIDWithString%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)fileObjectIDWithString:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)folderID
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: asked the folderID of a document%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)documentID
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: asked the documentID of a folder%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)itemDBRowID
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: asked the item db rowid of an item which isn't in the client_items%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)asString
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: you should subclass%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end